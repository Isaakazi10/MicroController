#include "main.h"

char read_digital_keyboard()
{
    static unsigned char once = 1;

    if (((PORTC & 0x0F) != 0x0F) && (once))
    {
        once = 0;
        return PORTC & 0x0F;
    }
    
    return 0x0f;

}
