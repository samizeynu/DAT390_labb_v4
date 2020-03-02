/*
 * 	main.c
 *
 */
 
#include "game_startup.h"
#include "plant.xbm"
#include "backGround.xbm"
#include "ship.xbm"


void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

typedef struct
{
unsigned char width;
unsigned char height;
unsigned char* data;
//void(*move)(struct sprite *);
//void(*set_speed)(struct tObj *, int, int);
} sprite;

static void load_sprite(sprite* s, unsigned char* data, int width, int height)
{
s->width = width;
s->height = height;
s->data = data;
}

void draw_sprite(sprite* s, int x, int y, int set) {
int i,j,k, width_in_bytes;
if (s->width % 8 == 0)
width_in_bytes = s->width / 8;
else
width_in_bytes = s->width / 8 + 1;
for (i = 0; i < s->height; i++)
for (j = 0; j < width_in_bytes; j++) {
unsigned char byte = s->data[i * width_in_bytes + j];
for (k =0; k < 8; k++) {
if (byte & (1 << k))
pixel(8 * j + k + x + 1, i + y + 1);
}
}
}

GEOMETRY ball_geometry=
{
	12, //tot pix
	4,	//bredd
	4,	//längd
	{
		{0,1},{0,2},
		{1,0},{1,1},{1,2},{1,3},
		{2,0},{2,1},{2,2},{2,3},
		{3,1},{3,2},
	}
};

static OBJECT ball=
{
	&ball_geometry,
	-3,3,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

void ascii_message(){
	char *s;
	char test1[] = "Welcome ";
	char test2[] = "to the game!";
	ascii_gotoxy(1,1);
	s = test1;
	while (*s){
		ascii_write_char(*s++); // ascii_write_char
	}
	ascii_gotoxy(1,2);
	s = test2;
	while (*s){
		ascii_write_char(*s++); // ascii_write_char
	}
}

void init_spel(){
	GPIO_MODER_E = 0x55555555;
	ascii_init();
	//ascii_message();
}


int main(int argc, char **argv)
{
	init_spel();
	POBJECT p = &ball;
	sprite* plant;
	sprite* backGround;
	sprite* ship;
	graphic_init();
#ifndef	SIMULATOR
	graphic_clear_screen();
#endif
	
	load_sprite(plant, plant_bits, plant_width, plant_height);
	load_sprite(ship, ship_bits, ship_width, ship_height);
	
//	plant->set_speed(plant, 5, 10); //assa
	p->set_speed(p, 12, 20);
	while(1){
		clear_backBuffer();
		p->move(p);
		draw_sprite(plant, 50, 50, 1);
		draw_sprite(ship, 40, 20, 1);
//		plant->move(plant);
		graphic_draw_screen();
		//delay_milli(40); //25 fps
		graphic_clear_screen();
	}
}
