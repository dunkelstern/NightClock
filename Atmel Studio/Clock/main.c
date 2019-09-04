/*
 * Uhr.c
 *
 * Created: 26/08/2019 01:12:36
 * Author : dark
 */ 

#ifndef F_CPU
#error Define CPU clock speed
#endif

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "tinyI2C.h"

typedef enum {
	MODE_CLOCK,
	MODE_PROGRAMMING
} ClockMode;

// time
volatile uint8_t hours = 0x99;	// BCD
volatile uint8_t minutes = 0;	// BCD
volatile uint8_t seconds = 0;	// BCD

// setup mode or clock mode
volatile ClockMode mode = MODE_CLOCK;

// digit display
volatile uint8_t blink = 255; // which digit blinks, set to > 3 for none
volatile uint8_t bright = 16; // current brightness of display
volatile uint8_t current_digit = 0; // which digit we are updating currently
volatile uint8_t digit_timer = 0;   // timing for the current digit, each digit is repeated 16 times until we switch to the next one

volatile uint8_t iter = 0;		// every time we switch to the next digit we increment this one, used for debouncing buttons
volatile uint16_t frame = 0;	// every time we updated all 4 digits we increment this, used for fade out effect

#define REFRESH_RATE 60			// how often we refresh all digits per second

static inline void display_number(uint8_t number) {
	// clear segment number
	PORTD &= ~0x78;
	
	// update segment number
	PORTD |= \
		  ((number & 0x01) << 3) \
		+ ((number & 0x02) << 4) \
		+ ((number & 0x04) << 4) \
		+ ((number & 0x08) << 1);
}

static inline void activate_digit(uint8_t digit) {
	// clear address
	PORTB &= ~0x03;
	
	// update address
	PORTD &= ~0x01;
	PORTB |= ((digit & 0x01) << 1) + ((digit & 0x02) >> 1);
}

static inline void start_clock() {
	// enable clock out
	if (!i2c_start(0x51, true)) { minutes = 7; i2c_stop(); return; }
	if (!i2c_write(0x0d))		{ minutes = 8; i2c_stop(); return; }
	if (!i2c_write(0x83))		{ minutes = 9; i2c_stop(); return; }
	i2c_stop();
}

static inline void load_time() {
	// startup sequence
	if (!i2c_start(0x51, true)) { minutes = 1; i2c_stop(); return; }
	if (!i2c_write(0x00))		{ minutes = 2; i2c_stop(); return; }
	if (!i2c_write(0x00))		{ minutes = 3; i2c_stop(); return; }
	i2c_stop();
		
	// read time
	if (!i2c_start(0x51, false)) { minutes = 4; i2c_stop(); return; }
	i2c_read(false); // control register at 0x01
	seconds = i2c_read(false) & 0x7f;
	minutes = i2c_read(false) & 0x7f;
	hours = i2c_read(true) & 0x3f;
	i2c_stop();
}

static inline void save_time() {
	// save time to rtc
	i2c_start(0x51, true);
	i2c_write(0x02);
	i2c_write(seconds);
	i2c_write(minutes);
	i2c_write(hours);
	i2c_stop();
}

static inline void handle_buttons(uint8_t left_down, uint8_t right_down) {
	if (left_down == 15) {
		// long press left -> mode switch
		if (mode == MODE_CLOCK) {
			blink = 0;
			mode = MODE_PROGRAMMING;
			bright = 16;
		} else {
			blink = 255;
			seconds = 0;
			save_time();
			mode = MODE_CLOCK;
		}
	} else if ((left_down > 1) && ((PINB & 0x08) > 0)) {
		// short press left -> fade up or next digit in programming mode
		if (mode == MODE_PROGRAMMING) {
			blink++;
			if (blink > 3) {
				blink = 0;
			}
		} else {
			frame = 0;
			bright = 16;
		}
	}
	if ((right_down > 15) && ((PINB & 0x10) > 0)) {
		// long press right, currently no function
	} else if ((right_down > 1) && ((PINB & 0x10) > 0)) {
		// short press right -> fade up or increment if in programming mode
		if (mode == MODE_PROGRAMMING) {
			switch (blink) {
				case 0:
					minutes += 0x01;
					if ((minutes & 0x0f) > 0x09) {
						minutes &= 0xf0;
					}
					break;
				case 1:
					minutes += 0x10;
					if ((minutes & 0xf0) > 0x50) {
						minutes &= 0x0f;
					}
					break;
				case 2:
					hours += 0x01;
					if ((hours & 0x0f) > 0x09) {
						hours &= 0xf0;
					}
					break;
				case 3:
					hours += 0x10;
					if (hours > 0x24) {
						hours &= 0x0f;
					}
					break;
			}
		} else {
			frame = 0;
			bright = 16;
		}
	}
}

static inline void carry_time() {
	// BCD adjust time variables and carry seconds up the chain
	
	// seconds least significant digit
	if ((seconds & 0x0f) > 0x09) {
		seconds += 0x06;
	}
	
	// seconds overflow
	if (seconds > 0x59) {
		if (mode == MODE_CLOCK) {
			minutes++;
		}
		seconds = 0;
	}
	
	// if we are in programming mode do not touch the time
	if (mode != MODE_CLOCK) {
		return;
	}

	// minutes least significant digit
	if ((minutes & 0x0f) > 0x09) {
		minutes += 0x06;
	}
	
	// minutes overflow
	if (minutes > 0x59) {
		hours++;
		minutes = 0;
	}
		
	// hours least significant digit
	if ((hours & 0x0f) > 0x09) {
		hours += 0x06;
	}
	
	// hours overflow
	if (hours > 0x23) {
		hours = 0;
	}
}

int main(void) {
	uint8_t left_down = 0;
	uint8_t right_down = 0;
	
	DDRB = 0xe7;
	DDRD = 0xfb;
	
	// pullups for PORTB 3 and 4
	PORTB = 0x18;

	// enable rising edge interrupt on INT0
	MCUCR = (1 << ISC01) | (1 << ISC00);
	GIMSK |= (1 << INT0);

	sei();

	// setup i2c
	i2c_init();
	
	// setup rtc
	load_time();
	start_clock();
	
	// setup timer for display refresh
	OCR1A = F_CPU / (REFRESH_RATE * 4) / 16;	// count up to here
	TCCR1A = 0x00;	// CTC mode
	TCCR1B = (1 << WGM12) | (1 << CS10); // CTC Mode, clk, start timer
	TIFR |= (1 << OCF1A);
	TIMSK |= (1 << OCIE1A);
	
	uint16_t old_frame = 0;
    while (1) {
		// if seconds are invalid BCD, adjust and carry
		if ((seconds & 0x0f) > 0x09) {
			carry_time();
		}
		
		if (iter == (REFRESH_RATE / 5)) {		
			iter = 0;
			// check if we have to do something with the buttons
			if  (left_down || right_down) {
				handle_buttons(left_down, right_down);
			}
			
			// update button down times or reset
			left_down = (PINB & 0x08) ? 0 : left_down + 1;
			right_down = (PINB & 0x10) ? 0 : right_down + 1;
		}	

		// wait for 2 seconds until fading out again
		if ((frame >= REFRESH_RATE * 2) && (frame != old_frame)) {
			old_frame = frame;
			
			if ((mode == MODE_CLOCK) && (bright > 2) && (frame % 10 == 0)) {
				// if we are not at minimum fade a little more
				bright -= 1;
			} else if ((mode == MODE_CLOCK) && (bright == 2)) {
				// at minimum, reset frame counter
				frame = 0;
			}
		}
    }
}

ISR(TIMER1_COMPA_vect) {
	TCNT1 = 0; // reset timer
	uint8_t value = 0x0a;

	// turn on the digit if we are below the set brightness
	if (digit_timer < bright) {
		// check if we should blink the digit
		if (((blink == current_digit) && (seconds & 0x01)) || (blink != current_digit)) {
			PORTB |= (1 << PINB2);
		} else {
			PORTB &= ~(1 << PINB2);
		}
	} else {
		// turn off for brigthness effect
		PORTB &= ~(1 << PINB2);
	}
	
	// switch to next digit after 16 iterations
	if (digit_timer > 16) {
		digit_timer = 0;

		current_digit++;
		if (current_digit > 3) {
			// digit wrap, frame complete
			current_digit = 0;
			frame++;
		}
		
		// fetch current digit from time variables
		switch (current_digit) {
			case 0:
				value = minutes & 0x0f;
				break;
			case 1:
				value = (minutes & 0xf0) >> 4;
				break;
			case 2:
				value = hours & 0x0f;
				break;
			case 3:
				value = (hours & 0xf0) >> 4;
				if ((value == 0) && (blink != 3)) {
					value = 10;
				}
				break;
		}
		
		// display the new number
		display_number(value);
		activate_digit(current_digit);
		iter++;
	}
	
	digit_timer++;
}

ISR(INT0_vect) {
	// interrupt will be called by external rtc
	seconds++;
}