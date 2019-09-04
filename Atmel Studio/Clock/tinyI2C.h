#ifndef __tinyi2c_included
#define __tinyi2c_included

#include <stdint.h>
#include <stdbool.h>

// define TWI_FAST_MODE to 1 in your build settings if you want the 400KHz clock speed

typedef enum {
	I2C_Idle					= 0,
	I2C_Started					= 1,
	I2C_StartConditionFailed	= 2,
	I2C_NoAckForAddress			= 3,
	I2C_NoAckForData			= 4
} I2C_Status;

extern I2C_Status i2c_status;

// Initialize I2C via USI
void i2c_init();

// start transfer with address
bool i2c_start(uint8_t address, bool write);

// send restart condition and continue
#define i2c_restart i2c_start

// send stop condition
void i2c_stop();


// write a byte to the bus (you have to call start/restart first)
bool i2c_write(uint8_t data);

// read a byte (you have to call start/restart first)
uint8_t i2c_read(bool last_byte);

#endif /* __tinyi2c_included */