/*
Name        : ISAA KAZI
Date        : 14/6/2023
*/

#include "main.h"
#include "adc.h"
#include "clcd.h"

// Variable used in this program.
unsigned int temp = 0, wait = 0, delay = 0;

int main()
{
    // Calling of init_config function
    init_config();

    // While 1
    while (1)
    {
        char tens;
        char once;

        temp = read_adc(CHANNEL6);

        tens = (((temp * 500) / 1024) / 10) + 48;
        once = (((temp * 500) / 1024) % 10) + 48;

        clcd_putch(tens, LINE1(0));
        clcd_putch(once, LINE1(1));
    }
}

void init_config(void)
{
    init_adc();
    init_clcd();
}