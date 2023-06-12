/*
Name        : ISAA KAZI
Date        : 08/06/2023
*/

// Prototype of init_config
void init_config(void);

int main(void)
{
	// Calling of init_config function
	init_config();

	// While 1
	while (1)
	{
		;
	}
}

// init_config defination
void init_config(void)
{
	TRISB = 0X00;
	PORTB = 0X00;
}

void init_timer0(void)
{
	/*
	 * Setting instruction cycle clock (Fosc / 4) as the source of
	 * timer0
	 */
	T0CS = 0;
	TMR0ON = 1;

	TMR0 = 6;

	/* Clearing timer0 overflow interrupt flag bit */
	TMR0IF = 0;

	/* Enabling timer0 overflow interrupt */
	TMR0IE = 1;
}