#include <xc.h>

int main()
{
	TRISB=0x00;
	
	while(1)
	{
		PORTB=0x00;	
		for(unsigned int i = 0; i < 8; i++)
		{
			PORTB=PORTB|(1<<i);
			for(unsigned int i = 0; i < 50000; i++);
			for(unsigned int i = 0; i < 50000; i++)	;
			PORTB=PORTB&~(1<<i);			
		}
		for(unsigned int i = 0; i < 50000; i++);
		for(unsigned int i = 0; i < 50000; i++)	;
        }
}
