#include "main.h"

char read_digital_keyboard()
{
    // Making a static variable and assigning 1 to it.
    static unsigned char once = 1;

    // If PRTC is not equal to 0x0F and once is 1 then return PORTC and make once 0
    if (((PORTC & 0x0F) != 0x0F) && (once))
    {
        once = 0;
        return PORTC & 0x0F;
    }
    // If PORTC is equal to 0x0F make once 1
    else if ((PORTC & 0x0F) == 0x0F)
    {
        once = 1;
    }

    // Return 0x0F
    return 0x0F;
}
