#include "main.h"

// extern variables
extern wait, i;

// Defination of pattern_1 function
int pattern_2(void)
{
    if (wait++ && (wait == 20000))
    {
        // If i is less than 8 Switch ON 7-ith LED
        if (i < 8)
        {
            PORTB = PORTB | (1 << (7 - i));
        }

        // If i is greater than 8 Switch OFF 7 - ith LED
        if (i >= 8)
        {
            PORTB = PORTB & ~(1 << (7 - (i % 8)));
        }

        // If i is equal to 15 make i to 0.
        if (i++ == 15)
        {
            i = 0;
        }
        wait = 0;
    }
}