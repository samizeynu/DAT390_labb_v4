#include "startup.h"


void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}


void main (void){
	/*
	keyb_init();
	while(1)
	{
		char c = keyb();
		out7seg (c);
	}
	
	ascii_init();
	char *s;
	char test1[] = "Alfanumerisk ";
	char test2[] = " Display - test ";
	
	
	ascii_init();
	ascii_gotoxy(1,1);
	s = test1;
	
	while(*s)
		ascii_write_char(*s++);
	
	ascii_gotoxy(1,2);
	s =  test2;
	
	while(*s)
		ascii_write_char(*s++);
	*/
	graphic_init();
	
	unsigned int i;
	
	#ifndef SIMULATOR
		graphic_clear_screen();
	#endif
	
	for(i = 1; i < 128; i++){
		pixel(i, 10, 1);
	}
	for(i = 1; i < 64; i++){
			pixel(10, i, 1);
	}
	delay_milli(5);
	for(i = 1; i < 128; i++){
		pixel(i, 10, 0);
	}
		for(i = 1; i < 64; i++){
			pixel(10, i, 0);
	}
	
 	return 0;
}