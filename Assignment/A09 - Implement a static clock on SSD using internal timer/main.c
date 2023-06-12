/*
Name        : ISAA KAZI
Date        : 20/5/2023
*/

#include "main.h"

// Initializing the variables in this programs
static unsigned char data[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, UNDERSCORE, UNDERSCORE};
static unsigned char ssd[MAX_SSD_CNT];

int main()
{
    // Calling of init_ssd_config function
    init_ssd_config();

    unsigned int count = 10, i = 0;

    // While 1
    while (1)
    {
        // If count is equal to 0 make i++ and count is equal to 10
        if (count-- == 0)
        {
            i++;
            count = 10;
        }

        // Assigning ssd array values of data array in groups of 4.
        ssd[0] = data[];
        ssd[1] = data[];
        ssd[2] = data[];
        ssd[3] = data[];

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
