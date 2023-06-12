/*
Name        : ISAA KAZI
Date        : 20/5/2023
*/

#include "main.h"

// Initializing the variables in this programs
static unsigned char data[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE};
static unsigned char ssd[MAX_SSD_CNT];

int main()
{
    // Calling of init_ssd_config function
    init_ssd_config();

    unsigned int count = 0, i = 0, key = 0, wait = 0;

    // While 1
    while (1)
    {
        key = read_digital_keyboard(LEVEL);

        if (key == 0x0E)
        {
            wait++;
            if (wait == 200)
            {
                count = 0;
            }
        }
        else if (wait < 200 && wait != 0)
        {
            count++;
            wait = 0;
        }
        else
            wait = 0;

        // Assigning ssd array values of data array in groups of 4.
        ssd[3] = data[count % 10];
        ssd[2] = data[count % 100 / 10];
        ssd[1] = data[count % 1000 / 100];
        ssd[0] = data[count % 10000 / 1000];

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
