#include <xc.h>
#include "clcd.h"

static void init_config(void)
{
    init_clcd();
}

char t[11] = "9999999999\0";

void main(void)
{
    init_config();

    while (1)
    {
        clcd_print("Counter Down", LINE1(0));

        clcd_print(t, LINE2(0));

        if (t[9]-- - 48 == 0)
        {
            t[9] = '9';

            if (t[8]-- - 48 == 0)
            {
                t[8] = '9';

                if (t[7]-- - 48 == 0)
                {
                    t[7] = '9';

                    if (t[6]-- - 48 == 0)
                    {
                        t[6] = '9';

                        if (t[5]-- - 48 == 0)
                        {
                            t[5] = '9';

                            if (t[4]-- - 48 == 0)
                            {
                                t[4] = '9';

                                if (t[3]-- - 48 == 0)
                                {
                                    t[3] = '9';

                                    if (t[2]-- - 48 == 0)
                                    {
                                        t[2] = '9';

                                        if (t[1]-- - 48 == 0)
                                        {
                                            t[1] = '9';

                                            if (t[0]-- - 48 == 0)
                                            {
                                                t[0] = '9';
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
