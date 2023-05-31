#include "main.h"

extern int wait, i;

void pattern_1()
{
    if (wait++ && (wait == 20000))
    {
        if (i < 8)
        {
            PORTB = PORTB | (1 << i);
        }
        else if ((i >= 8) && (i < 16))
        {
            PORTB = PORTB & ~(1 << (i % 8));
        }
        else if ((i >= 16) && (i < 24))
        {
            PORTB = PORTB | (1 << (7 - (i % 8)));
        }
        else if ((i >= 24) && (i < 32))
        {
            PORTB = PORTB & ~(1 << (7 - (i % 8)));
            if (i == 31)
            {
                i = -1;
            }
        }
        i++;
        wait = 0;
    }
}
