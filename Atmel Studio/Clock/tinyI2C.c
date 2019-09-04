#include "tinyI2C.h"
#include "tinyI2C_hal.h"

// Status
I2C_Status i2c_status;

#define WAIT_FOR_SCL while (!(PIN_USI & (1 << PIN_USI_SCL)))

static uint8_t i2c_transfer(uint8_t num_bits) {
	if (num_bits == 8) {
		USISR = 1<<USISIF | 1<<USIOIF | 1<<USIPF | 1<<USIDC | 0x0<<USICNT0;
	} else {
		USISR = 1<<USISIF | 1<<USIOIF | 1<<USIPF | 1<<USIDC | 0xE<<USICNT0;
	}
	
	// Prepare clocking.
	uint8_t icr =	0 << USISIE | 0 << USIOIE |					// Interrupts disabled
					1 << USIWM1 | 0 << USIWM0 |					// Set USI in Two-wire mode.
					1 << USICS1 | 0 << USICS0 | 1 << USICLK |	// Software clock strobe as source.
					1 << USITC;									// Toggle Clock Port.
	do {
		DELAY_T2TWI;
		USICR = icr;	// Generate positive SCL edge.
		WAIT_FOR_SCL;
		DELAY_T4TWI;
		USICR = icr;	// Generate negative SCL edge.
	} while (!(USISR & (1 << USIOIF))); // Check for transfer complete.

	DELAY_T2TWI;
	uint8_t data = USIDR;			// Read out data.
	USIDR = 0xFF;					// Release SDA.
	DDR_USI |= (1 << PIN_USI_SDA);	// Enable SDA as output.

	return data;
}

void i2c_init() {
	PORT_USI |= 1 << PIN_USI_SDA;   // Enable pullup on SDA.
	PORT_USI |= 1 << PIN_USI_SCL;	// Enable pullup on SCL.

	DDR_USI |= 1 << PIN_USI_SCL;	// Enable SCL as output.
	DDR_USI |= 1 << PIN_USI_SDA;	// Enable SDA as output.

	USIDR = 0xFF;                   // Preload data register with "released level" data.
	
	USICR = 0 << USISIE | 0 << USIOIE |					// Disable Interrupts.
			1 << USIWM1 | 0 << USIWM0 |					// Set USI in Two-wire mode.
			1 << USICS1 | 0 << USICS0 | 1 << USICLK |	// Software strobe as counter clock source
			0 << USITC;
	
	// clear flags an reset counter
	USISR = 1 << USISIF | 1 << USIOIF |
			1 << USIPF | 1 << USIDC |
			0x0 << USICNT0;
	
	// status is now idle
	i2c_status = I2C_Idle;
}

bool i2c_start(uint8_t address, bool write) {
	// Release SCL to ensure that (repeated) Start can be performed
	PORT_USI |= 1 << PIN_USI_SCL;              // Release SCL.
	WAIT_FOR_SCL;
#ifdef TWI_FAST_MODE
	DELAY_T4TWI;
#else
	DELAY_T2TWI;
#endif

	// Generate Start Condition
	PORT_USI &= ~(1 << PIN_USI_SDA);	// Force SDA LOW.
	DELAY_T4TWI;
  
	PORT_USI &= ~(1 << PIN_USI_SCL);	// Pull SCL LOW.
	PORT_USI |= 1 << PIN_USI_SDA;		// Release SDA.

	if (!(USISR & (1 << USISIF))) {
		i2c_status = I2C_StartConditionFailed;
		return false;
	}

	// Write address
	PORT_USI &= ~(1 << PIN_USI_SCL);			// Pull SCL LOW.
	USIDR = (address << 1) | (write ? 0 : 1);	// Setup data.
	i2c_transfer(8);							// Send 8 bits on bus.

	// Clock and verify (N)ACK from slave
	DDR_USI &= ~(1 << PIN_USI_SDA);		// Enable SDA as input.
	if (i2c_transfer(1) & (1 << TWI_NACK_BIT)) {
		i2c_status = I2C_NoAckForAddress;
		return false;	// No ACK
	}

	i2c_status = I2C_Started;
	return true;	// Start successfully completed
}

void i2c_stop() {
	PORT_USI &= ~(1 << PIN_USI_SDA);			// Pull SDA low.
	PORT_USI |= 1 << PIN_USI_SCL;				// Release SCL.
	WAIT_FOR_SCL;
	DELAY_T4TWI;
	PORT_USI |= 1 << PIN_USI_SDA;				// Release SDA.
	DELAY_T2TWI;
	
	// status is now idle
	i2c_status = I2C_Idle;
}

bool i2c_write(uint8_t data) {
	// Write a byte
	PORT_USI &= ~(1 << PIN_USI_SCL);	// Pull SCL LOW.
	USIDR = data;						// Setup data.
	i2c_transfer(8);

	// Clock and verify (N)ACK from slave
	DDR_USI &= ~(1 << PIN_USI_SDA);		// Enable SDA as input.
	if (i2c_transfer(1) & (1 << TWI_NACK_BIT)) {
		i2c_status = I2C_NoAckForData;
		return false;
	}

	return true;
}

uint8_t i2c_read(bool last_byte) {
	// Read a byte
	DDR_USI &= ~(1 << PIN_USI_SDA); // Enable SDA as input.
	uint8_t data = i2c_transfer(8);

	// Prepare to generate ACK (or NACK in case of End Of Transmission)
	if (last_byte) {
		USIDR = 0xFF;
	} else {
		USIDR = 0x00;
	}
	i2c_transfer(1);	// Generate ACK/NACK.
	
	return data;
}
