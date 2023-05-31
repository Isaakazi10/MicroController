#include "main.h"

extern int wait, i;

void pattern_2()
{
    if (wait++ && (wait == 10000))
    {
        if (i < 8)
        {
            PORTB = PORTB | (1 << i);
        }
        else if ((i >= 8) && (i < 16))
        {
            PORTB = PORTB & ~(1 << (i % 8));
            if (i == 15)
            {
                i = -1;
            }
        }
        i++;
        wait = 0;
    }
}
