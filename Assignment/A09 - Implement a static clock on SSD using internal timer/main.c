/*
Name        : ISAA KAZI
Date        : 22/5/2023
*/

#include "main.h"

// Initializing the variables in this programs
static unsigned char data[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE};
static unsigned char ddata[] = {DZERO, DONE, DTWO, DTHREE, DFOUR, DFIVE, DSIX, DSEVEN, DEIGHT, DNINE};
static unsigned char ssd[MAX_SSD_CNT];

unsigned int flag = 1, time = 0;

int main()
{
    // Calling of init_ssd_config function
    init_ssd_config();

    unsigned int count = 10, i = 1, j1 = 2, j2 = 2, k = 0, l = 0;

    // While 1
    while (1)
    {
        // Assigning ssd array values of data array in groups of 4.
        ssd[0] = data[i];
        ssd[2] = data[k];
        ssd[3] = data[l];

        if (flag == 1)
        {
            ssd[1] = data[j1];
        }
        else
        {
            ssd[1] = ddata[j2];
        }

        // Calling display function.
        display(ssd);

        if (time % 480 == 0)
        {
            l++;
        }

        if (flag == 1)
        {
            if (l == 10)
            {
                if (k++ == 5)
                {
                    j2++;
                    if (j1++ == 9)
                    {
                        j1 = 0;
                        i++;
                    }

                    if (i == 2 && j1 == 3)
                    {
                        j1 = 0;
                    }

                    k = 0;
                }

                l = 0;
            }
        }
        else
        {
            if (j2 == 9)
            {
                j2 = 0;
            }
            if (i == 2 && j2 == 3)
            {
                i = 0;
                j2 = 0;
            }
        }
        time++;
    }
}

void init_ssd_config()
{
    /* Setting PORTB as output for DATA LINES*/
    TRISD = 0x00;
    PORTD = 0x00;

    // Settng SSD Enable lines as OUTPUT
    TRISA = TRISA & 0xF0;
    PORTA = PORTA & 0xF0;

    ADCON1 = 0X0F;
    init_timer1();
}

void init_timer1()
{
    GIE = 1;
    PEIE = 1;
    TMR1IE = 1;
    TMR1IF = 0;

    TMR1ON = 1;
    T1CONbits.RD16 = 1;
    TMR1CS = 0;
    T1OSCEN = 0;
    TMR1 = 3036;
}

// Timer for each 30 sec
void interrupt isr()
{
    static unsigned int count = 0, sec = 2;
    if (TMR1IF)
    {
        TMR1 = TMR1 + 3038;
        if (count++ == 40)
        {
            if (sec % 2)
            {
                flag = 1;
            }
            else
            {
                flag = 0;
            }
            sec++;
            count = 0;
        }
        TMR1IF = 0;
    }
}
