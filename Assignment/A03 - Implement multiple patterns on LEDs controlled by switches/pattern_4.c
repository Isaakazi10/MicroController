#include "main.h"

extern int wait, i;
void pattern_4()
{
    // Delay for loop
    for (int i = 0; i < 28000; i++)
        ;

    // Compliment PORTB
    PORTB = ~PORTB;

    // Delay for loop
    for (int i = 0; i < 28000; i++)
        ;
}
