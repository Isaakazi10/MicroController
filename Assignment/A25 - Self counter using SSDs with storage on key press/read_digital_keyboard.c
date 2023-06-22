#include "main.h"

char read_digital_keyboard(unsigned char detection)
{
    // Making a static variable and assigning 1 to it.
    static unsigned char once = 1;

    if (detection == 1)
    {
        if (((PORTC & 0x0F) != 0x0F) && (once))
        {
            once = 0;
            return PORTC & 0x0F;
        }
        else if ((PORTC & 0x0F) == 0x0F)
        {
            once = 1;
        }
        return 0x0F;
    }
    else if (detection == 0)
    {
        return PORTC & 0x0F;
    }
}