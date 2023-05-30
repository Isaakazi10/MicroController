#include "main.h"

int pattern_2()
{
    int wait = 0, i = 0;
    PORTB = 0x00;

    while (i != -1)
    {
        if (wait++ && (wait == 30000))
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
                    continue;
                }
            }
            i++;
            wait = 0;
        }
    }
}
