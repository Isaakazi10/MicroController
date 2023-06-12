/*
Name        : ISAA KAZI
Date        : 20/5/2023
*/

// Libary for PIC microcontroller
#include <xc.h>

// Prototype of init_config
void init_config(void);

int main(void)
{
	// Calling of init_config function
	init_config();

	// Initialization of variables
	int wait = 0, i = 0;

	// While 1
	while (1)
	{
		// If wait is equal to 30000 (Using delay) and increament wait
		if (wait++ && (wait == 30000))
		{
			// If i is less than 8 Switch ON ith LED
			if (i++ < 8)
			{
				PORTB = PORTB | (1 << i);
			}
			// If i is greater than 8 and  less than 16 Switch OFF ith LED
			else if ((i >= 8) && (i < 16))
			{
				PORTB = PORTB & ~(1 << (i % 8));
			}
			// If i is greater than 16 and  less than 24 Switch ON (7 - ith) LED
			else if ((i >= 16) && (i < 24))
			{
				PORTB = PORTB | (1 << (7 - (i % 8)));
			}
			// If i is greater than 24 and  less than 32 Switch OFF (7 - ith) LED
			else if ((i >= 24) && (i < 32))
			{
				PORTB = PORTB & ~(1 << (7 - (i % 8)));

				// If i is equal to 31 then make i equal to 0.
				if (i == 31)
				{
					i = 0;
				}
			}

			// Make wait to 0.
			wait = 0;
		}
	}
}

// init_config defination
void init_config(void)
{
	TRISB = 0X00;
	PORTB = 0X00;
}
