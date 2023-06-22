/*
Name        : ISAA KAZI
Date        : 14/6/2023
*/

#include "main.h"

// Initializing the variables in this programs
static unsigned char data[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE};
static unsigned char ssd[MAX_SSD_CNT];

// Variable used in this program.
unsigned int count = 0, i = 0, key = 0, wait = 0, delay = 0;

int main()
{
    // Calling of init_config function
    init_config();

    // While 1
    while (1)
    {
        if (delay++ == 120)
        {
            if (count++ == 9999)
            {
                count = 0;
            }
            delay = 0;
        }

        key = read_digital_keyboard(LEVEL);

        if (key == 0x0D)
        {
            for (int i = 0; i < 2; i++)
            {
                write_internal_eeprom(i, *((char *)&count + i));
            }
        }
        else if (key == 0x0E)
        {
            count = 0;
        }

        // Assigning ssd array values of data array in groups of 4.
        ssd[0] = data[count % 10000 / 1000];
        ssd[1] = data[count % 1000 / 100];
        ssd[2] = data[count % 100 / 10];
        ssd[3] = data[count % 10];

        // Calling display function.
        display(ssd);
    }
}

void init_config(void)
{
    init_ssd_config();
}

void init_ssd_config()
{
    /* Setting PORTB as output for DATA LINES*/
    TRISD = 0x00;

    // Settng SSD Enable lines as OUTPUT
    TRISA = TRISA & 0xF0;

    PORTA = PORTA & 0xF0;

    for (int i = 0; i < 2; i++)
    {
        *((char *)&count + i) = read_internal_eeprom(i);
    }
}
