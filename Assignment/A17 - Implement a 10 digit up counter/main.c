#include <xc.h>
#include "clcd.h"

static void init_config(void)
{
    init_clcd();
}

char t[11] = "0000000000\0";

void main(void)
{
    init_config();

    while (1)
    {
        clcd_print("Counter Down", LINE1(0));

        clcd_print(t, LINE2(0));

        if (t[9]++ - 48 == 9)
        {
            t[9] = '0';

            if (t[8]++ - 48 == 9)
            {
                t[8] = '0';

                if (t[7]++ - 48 == 9)
                {
                    t[7] = '0';

                    if (t[6]++ - 48 == 9)
                    {
                        t[6] = '0';

                        if (t[5]++ - 48 == 9)
                        {
                            t[5] = '0';

                            if (t[4]++ - 48 == 9)
                            {
                                t[4] = '0';

                                if (t[3]++ - 48 == 9)
                                {
                                    t[3] = '0';

                                    if (t[2]++ - 48 == 9)
                                    {
                                        t[2] = '0';

                                        if (t[1]++ - 48 == 9)
                                        {
                                            t[1] = '0';

                                            if (t[0]++ - 48 == 9)
                                            {
                                                t[0] = '0';
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
