/*
 * 	main.c
 *
 */
 
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

GEOMETRY ball_geometry = {12,
 4, 4, 
 { {0,1}, {0,2}, {1,0}, {1,1}, {1,2}, {1,3}, {2,0}, {2,1}, {2,2}, {2,3}, {3,1}, {3,2} } };
 
 static OBJECT ball =
{
	&ball_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

int main(int argc, char **argv)
{
	POBJECT p = &ball;
	graphic_init();
	
	#ifndef SIMULATOR
		graphic_clear_screen();
	#endif
	
	p->set_speed(p, 4, 1);
	while(1){
		p->move(p);
		//delay_milli(40); //25 fps
	}
}
