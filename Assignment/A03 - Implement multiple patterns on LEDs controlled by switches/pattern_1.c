#include "main.h"

extern int wait, i;

void pattern_1()
{
    // If wait is not equal to 20000 then exceute the if-statement
    if (wait++ && (wait == 20000))
    {
        // If i is less than 8 Switch ON ith LED
        if (i < 8)
        {
            PORTB = PORTB | (1 << i);
        }
        // If i is greater than 8 and  less than 16 Switch OFF ith LED
        else if ((i >= 8) && (i < 16))
        {
            PORTB = PORTB & ~(1 << (i % 8));
        }
        // If i is greater than 16 and  less than 24 Switch ON (7 - ith) LED
        else if ((i >= 16) && (i < 24))
        {
            PORTB = PORTB | (1 << (7 - (i % 8)));
        }
        // If i is greater than 24 and  less than 32 Switch OFF (7 - ith) LED
        else if ((i >= 24) && (i < 32))
        {
            PORTB = PORTB & ~(1 << (7 - (i % 8)));
            // If i is equal to 31 then make i equal to -1.
            if (i == 31)
            {
                i = -1;
            }
        }
        // Increament i and make wait equal to 0
        i++;
        wait = 0;
    }
}
