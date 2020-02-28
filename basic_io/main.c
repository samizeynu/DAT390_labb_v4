#include "game_startup.h"

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

void main(void)
{
	app_init();
	while(1)
	{
		char c = keyb();
		out7seg (c);
	}
	
}