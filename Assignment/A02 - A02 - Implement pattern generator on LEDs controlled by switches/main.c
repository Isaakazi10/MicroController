/*
Name        : ISAA KAZI
Date        : 20/5/2023
*/

#include "main.h"

// Globla Initialization of variables
int wait = 0, i = 0;

int main(void)
{
    // Calling of init_config function
    init_config();
    int temp, key = 0;

    // While 1
    while (1)
    {
        // Callinf read_digital_keyboard function and store its output in temp.
        temp = read_digital_keyboard();

        // If temp is not equal to 0F enter the condition
        if (temp != 0x0F)
        {
            // store temp in key
            key = temp;
        }

        // If key is equal ro 0 then run pattern_1() function else pattern_2() function.
        if (key == 0)
        {
            pattern_1();
        }
        else
        {
            pattern_2();
        }
    }
}

// init_config defination
void init_config(void)
{
    TRISB = 0X00;
    PORTB = 0X00;

    TRISC = 0x01;
}
