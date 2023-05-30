#include "main.h"

int pattern_3()
{
    PORTB = 0xAA;
    PORTB = ~PORTB;
}
