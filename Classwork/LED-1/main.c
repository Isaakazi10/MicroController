#include <xc.h>

int main()
{
	TRISB=0x00;
	PORTB=0xff;
	for(unsigned int i = 1; i< 50000;i++);
	for(unsigned int i = 1; i< 50000;i++);
}
