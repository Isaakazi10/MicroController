/*
Name        : ISAA KAZI
Date        : 20/5/2023
*/

#include "main.h"

// Initializing the variables in this programs
static unsigned char data[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, UNDERSCORE, UNDERSCORE};
static unsigned char ssd[MAX_SSD_CNT];
static unsigned char Flag = 1;
static unsigned char temp, tem;

int main()
{
    // Calling of init_ssd_config function
    init_ssd_config();

    unsigned int count = 200, i = 0;
    unsigned int temp, key = 0x0E;

    // While 1
    while (1)
    {
        // Getting keys.
        temp = read_digital_keyboard();

        if (temp != 0x0F)
        {
            if (temp == 0x0B && Flag == 1)
            {
                tem = key;
                Flag = 0;
            }
            else if (temp == 0x0B && Flag == 0)
            {
                Flag = 1;
            }

            key = temp;
        }

        if (key == 0x0B && Flag == 1)
        {
            key = tem;
        }

        // If count is equal to 0 make i++ and count is equal to 10
        if (--count == 0 && key == 0x0E)
        {
            i++;
            count = 200;
        }
        else if (count == 0 && key == 0x0D)
        {
            i--;
            count = 200;
        }
        else if (count == 0)
        {
            count = 200;
        }

        if (key == 0x0E || key == 0x0D)
        {
            ssd[0] = data[i % 12];
            ssd[1] = data[(i + 1) % 12];
            ssd[2] = data[(i + 2) % 12];
            ssd[3] = data[(i + 3) % 12];
        }
        // Calling display function.
        display(ssd);
    }
}

void init_ssd_config()
{
    /* Setting PORTB as output for DATA LINES*/
    TRISD = 0x00;

    // Settng SSD Enable lines as OUTPUT
    TRISA = TRISA & 0xF0;

    PORTA = PORTA & 0xF0;
}
