#include "main.h"

char read_digital_keyboard(void)
{
    // Making a static variable and assigning 1 to it.
    static unsigned char once = 1;
    static unsigned char ret = 1;

    if (((PORTC & 0x0F) != 0x0F) && (once))
    {
        once = 0;
        ret = !ret;
        return ret;
    }
    else if ((PORTC & 0x0F) == 0x0F)
    {
        once = 1;
    }
    return 0x0F;
}
