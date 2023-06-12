#include "main.h"

extern int wait, i;

void pattern_2()
{
    // If wait is not equal to 10000 then exceute the if-statement
    if (wait++ && (wait == 10000))
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
            // If i is equal to 15 then make i equal to -1.
            if (i == 15)
            {
                i = -1;
            }
        }
        // Increament i and make wait equal to 0
        i++;
        wait = 0;
    }
}
