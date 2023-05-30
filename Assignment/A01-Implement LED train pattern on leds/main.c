/*
Name        : ISAA KAZI
Date        : 20/5/2023
*/

#include <xc.h>

void init_config();

int main()
{
	init_config();
	int wait = 0, i = 0;

	while (1)
	{
		if (wait++ && (wait == 30000))
		{

			if (i++ < 8)
			{
				PORTB = PORTB | (1 << i);
			}
			else if ((i >= 8) && (i < 16))
			{
				PORTB = PORTB & ~(1 << (i % 8));
			}
			else if ((i >= 16) && (i < 24))
			{
				PORTB = PORTB | (1 << (7 - (i % 8)));
			}
			else if ((i >= 24) && (i < 32))
			{
				PORTB = PORTB & ~(1 << (7 - (i % 8)));
				if (i == 31)
				{
					i = 0;
				}
			}
			wait = 0;
		}
	}
}

void init_config()
{
	TRISB = 0X00;
	PORTB = 0X00;
}
