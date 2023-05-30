/*
Name        : ISAA KAZI
Date        : 20/5/2023
*/

#include "main.h"

int main()
{
    init_config();
    unsigned char key, temp;

    while (1)
    {
        temp = read_digital_keyboard();

        if (temp != 0x0F)
        {
            key = temp;
        }

        if (key == 0x0E)
        {
            pattern_1();
        }
        else if (key == 0x0D)
        {
            pattern_2();
        }
        else if (key == 0x0B)
        {
            pattern_3;
        }
        else if (key == 0x07)
        {
            patter_4;
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
