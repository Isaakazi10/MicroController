/*
Name        : ISAA KAZI
Date        : 14/6/2023
*/

#include "main.h"
#include "adc.h"

// Initializing the variables in this programs
static unsigned char data[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, DEG, C};
static unsigned char ssd[MAX_SSD_CNT];

// Variable used in this program.
unsigned int temp = 0, wait = 0, delay = 0;

int main()
{
    // Calling of init_config function
    init_config();

    // While 1
    while (1)
    {
        if (wait++ == 50)
        {
            temp = read_adc(CHANNEL6);

            temp = (temp * 500) / 1024;

            // Assigning ssd array values of data array in groups of 4.
            ssd[0] = data[temp % 100 / 10];
            ssd[1] = data[temp % 10];
            ssd[2] = data[10];
            ssd[3] = data[11];

            wait = 0;
        }

        // Calling display function.
        display(ssd);
    }
}

void init_config(void)
{
    init_ssd_config();
    init_adc();
}

void init_ssd_config()
{
    /* Setting PORTB as output for DATA LINES*/
    TRISD = 0x00;

    // Settng SSD Enable lines as OUTPUT
    TRISA = TRISA & 0xF0;

    PORTA = PORTA & 0xF0;
}
