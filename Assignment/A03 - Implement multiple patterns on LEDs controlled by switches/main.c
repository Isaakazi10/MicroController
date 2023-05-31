/*
Name        : ISAA KAZI
Date        : 20/5/2023
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

        if (temp != 0x0F)
        {
            wait = i = 0;
            if (temp == 0x0E || temp == 0x0D)
            {
                PORTB = 0x00;
            }
            else if (temp == 0x0B)
            {
                PORTB = 0xAA;
            }
            else if (temp == 0x07)
            {
                PORTB = 0x0F;
            }

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

void init_config()
{
    TRISB = 0X00;
    PORTB = 0X00;
    TRISC = 0x0F;
    PORTC = PORTC & 0x0F;
}
