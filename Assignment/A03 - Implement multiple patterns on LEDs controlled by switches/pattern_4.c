#include "main.h"

int pattern_3()
{
    PORTB = 0x0F;
    PORTB = ~PORTB;
}
