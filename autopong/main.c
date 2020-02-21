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

//STRUCTS
typedef struct tPoint{
	unsigned char x;
	unsigned char y;
} POINT;

#define MAX_POINTS 20

typedef struct tGeometry{
	int numpoints;
	int sizex;
	int sizey;
	POINT px [MAX_POINTS];
} GEOMETRY, *PGEOMETRY;

GEOMETRY ball_geometry = {12,
						  4, 4, 
						 { {0,1}, {0,2}, {1,0}, {1,1}, {1,2}, {1,3}, {2,0}, {2,1}, {2,2}, {2,3}, {3,1}, {3,2} } };
 
typedef struct tObj{
	PGEOMETRY geo;
	int dirx,diry;
	int posx,posy;
	void(*draw)(struct tObj *);
	void(*clear)(struct tObj *);
	void(*move)(struct tObj *);
	void(*set_speed)(struct tObj *, int, int);
} OBJECT,*POBJECT;
 
void set_object_speed(POBJECT o, int speedx, int speedy);
void draw_object(POBJECT o);
void clear_object(POBJECT o);
void move_object(POBJECT o);

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
 
void set_object_speed(POBJECT o, int speedx, int speedy){
	o->dirx = speedx;
	o->diry = speedy;
}	
 
void draw_object(POBJECT o){
	for(int i= 0; i<= o->geo->numpoints; i++){
		pixel(o->posx + o->geo->px[i].x, o->posy + o->geo->px[i].y, 1);
	}
}

void clear_object(POBJECT o){
	for(int i= 0; i<= o->geo->numpoints; i++){
		pixel(o->posx + o->geo->px[i].x, o->posy + o->geo->px[i].y, 0);
	}
}
 
void move_object(POBJECT o){
	o->clear(o);
	
	if(o->posx < 1)
		o->set_speed(o, o->dirx*(-1), o->diry);
	
	if(o->posx > 128)
		o->set_speed(o, -o->dirx, o->diry);
		
	if(o->posy < 1)
		o->set_speed(o, o->dirx, -o->diry);
		
	if(o->posy > 64)
		o->set_speed(o, o->dirx, -o->diry);
	
	o->posx = o->posx + o->dirx;
	o->posy = o->posy + o->diry;
	o->draw(o);
}

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

