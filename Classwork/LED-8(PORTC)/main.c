#include <xc.h>

int main()
{
	TRISB = 0x00;
	PORTB = 0x00;
	TRISC = 0x02;
	while (1)
	{
		if (RC1 == 0)
		{
			PORTB = ~PORTB;
			for (unsigned int i = 0; i < 50000; i++)
				;
			for (unsigned int i = 0; i < 50000; i++)
				;
		}
	}
}
