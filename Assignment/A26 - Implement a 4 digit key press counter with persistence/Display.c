#include "main.h"

void display(unsigned char *data)
{
    // Runnig loop till i is 3.
    for (unsigned char i = 0; i < MAX_SSD_CNT; i++)
    {
        // Assigning data[i] in PORTD
        PORTD = data[i];
        // Switching ON the specific segment
        PORTA = (PORTA & 0xF0) | (0x01 << i);

        // Delay for loop
        for (int wait = 0; wait < 500; wait++)
            ;
    }
}