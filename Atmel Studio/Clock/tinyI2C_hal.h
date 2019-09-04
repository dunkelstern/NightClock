#ifndef F_CPU
#error Define CPU clock speed
#endif

#include <avr/io.h>
#include <util/delay.h>

#ifdef TWI_FAST_MODE                 // TWI FAST mode timing limits. SCL = 100-400kHz
#define DELAY_T2TWI (_delay_us(2))   // >1.3us
#define DELAY_T4TWI (_delay_us(1))   // >0.6us
#else                                // TWI STANDARD mode timing limits. SCL <= 100kHz
#define DELAY_T2TWI (_delay_us(5))   // >4.7us
#define DELAY_T4TWI (_delay_us(4))   // >4.0us
#endif

#define TWI_NACK_BIT 0 // Bit position for (N)ACK bit.

// Device dependant defines

#if defined(__AVR_AT90Mega169__) | defined(__AVR_ATmega169__) | \
defined(__AVR_AT90Mega165__) | defined(__AVR_ATmega165__) | \
defined(__AVR_ATmega325__) | defined(__AVR_ATmega3250__) | \
defined(__AVR_ATmega645__) | defined(__AVR_ATmega6450__) | \
defined(__AVR_ATmega329__) | defined(__AVR_ATmega3290__) | \
defined(__AVR_ATmega649__) | defined(__AVR_ATmega6490__)
#define DDR_USI             DDRE
#define PORT_USI            PORTE
#define PIN_USI             PINE
#define PORT_USI_SDA        PORTE5
#define PORT_USI_SCL        PORTE4
#define PIN_USI_SDA         PINE5
#define PIN_USI_SCL         PINE4
#endif

#if defined(__AVR_ATtiny25__) | defined(__AVR_ATtiny45__) | defined(__AVR_ATtiny85__) | \
defined(__AVR_AT90Tiny26__) | defined(__AVR_ATtiny26__)
#define DDR_USI             DDRB
#define PORT_USI            PORTB
#define PIN_USI             PINB
#define PORT_USI_SDA        PORTB0
#define PORT_USI_SCL        PORTB2
#define PIN_USI_SDA         PINB0
#define PIN_USI_SCL         PINB2
#endif

#if defined(__AVR_AT90Tiny2313__) | defined(__AVR_ATtiny2313__)
#define DDR_USI             DDRB
#define PORT_USI            PORTB
#define PIN_USI             PINB
#define PORT_USI_SDA        PORTB5
#define PORT_USI_SCL        PORTB7
#define PIN_USI_SDA         PINB5
#define PIN_USI_SCL         PINB7
#endif
