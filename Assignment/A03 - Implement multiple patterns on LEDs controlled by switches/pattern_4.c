#include "main.h"

extern int wait, i;
void pattern_4()
{
    for (int i = 0; i < 28000; i++)
        ;
    PORTB = ~PORTB;
    for (int i = 0; i < 28000; i++)
        ;
}
