/*
Name        : ISAA KAZI
Date        : 28/5/2023
*/

#include "main.h"

int wait = 0, i = 0;

int main()
{
    init_config();
    unsigned char key, temp;

    while (1)
    {
        // Taking input from the read_digital_keyboard function;
        temp = read_digital_keyboard();
	
	// If temp is not equal to 15 then exceute the if-statement
        if (temp != 0x0F)
        {
            // Make wait and i equal to 0
            wait = i = 0;
            
            // IF temp is equal to 14 and 13 then make PORTB 0
            if (temp == 0x0E || temp == 0x0D)
            {
                PORTB = 0x00;
            }
            // If temp is equal to 0x0B then make PORTB 0xAA
            else if (temp == 0x0B)
            {
                PORTB = 0xAA;
            }
            // If temp is equal to 0x07 then make PORTB 0x0F
            else if (temp == 0x07)
            {
                PORTB = 0x0F;
            }

	    // assign temp in key.
            key = temp;
        }

        if (key == 0x0D)
        {
            pattern_2();
        }
        else if (key == 0x0B)
        {
            pattern_3();
        }
        else if (key == 0x07)
        {
            pattern_4();
        }
        else
        {
            pattern_1();
        }
    }
}

// Defination of init_config function
void init_config()
{
    TRISB = 0X00;
    PORTB = 0X00;
    TRISC = 0x0F;
    PORTC = PORTC & 0x0F;
}
