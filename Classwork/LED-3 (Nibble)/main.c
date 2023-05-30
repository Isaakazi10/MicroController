#include <xc.h>

int main()
{
	TRISB=0x00;
	PORTB=0x0F;
	while(1)
	{
		PORTB=~PORTB;
		for(unsigned int i = 0; i < 50000; i++);
		for(unsigned int i = 0; i < 50000; i++)	;
        }
}
