/*
 * 	main.c
 *
 */
 
#include "game_startup.h"
//#include "plant.xbm"
//#include "backGround.xbm"
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

GEOMETRY square_geometry =
{
	16, 
	5, 
	5,
	{
	{0,0}, {1,0}, {2,0}, {3,0}, {4,0},
	{0,1}, 						{4,1},
	{0,2}, 						{4,2},
	{0,3}, 						{4,3},
	{0,4}, {1,4}, {2,4}, {3,4}, {4,4},
	}
};
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
GEOMETRY padd_geometry=
{
	40, 
	20,2,	
	{
		{0,0},{1,0},{2,0},{3,0},{4,0},{5,0},{6,0},{7,0},{8,0},{9,0},{10,0},{11,0},{12,0},{13,0},{14,0},{15,0},{16,0},{17,0},{18,0},{19,0},
		{0,1},{1,1},{2,1},{3,1},{4,1},{5,1},{6,1},{7,1},{8,1},{9,1},{10,1},{11,1},{12,1},{13,1},{14,1},{15,1},{16,1},{17,1},{18,1},{19,1},
	}
};

static OBJECT square_1 =
{
	&square_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

static OBJECT square_2 =
{
	&square_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

static OBJECT square_3 =
{
	&square_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

static OBJECT square_4 =
{
	&square_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

static OBJECT square_5 =
{
	&square_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

static OBJECT square_6 =
{
	&square_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};
static OBJECT square_7 =
{
	&square_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

static OBJECT square_8 =
{
	&square_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

static OBJECT square_9 =
{
	&square_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};
static OBJECT ball=
{
	&ball_geometry,
	-3,3,
	40,45,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

static OBJECT padd=
{
	&padd_geometry,
	0,0,
	50,55,
	draw_object,
	clear_object,
	move_padd,
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

/*
static sprite ship =
{
	&ship_geo,
	0, 0,
	0, 0,
	ship_width,
	ship_height,
	ship_bits,
	draw_sprite,
	clear_sprite,
	move_sprite,
	set_sprite_speed
};



static sprite plant =
{
	0, 0,
	50, 50,
	plant_width,
	plant_height,
	plant_bits,
	draw_sprite,
	clear_sprite,
	move_sprite,
	set_sprite_speed
};
*/

int main(int argc, char **argv)
{
	init_spel();
	POBJECT ppadd=&padd;
	POBJECT pball = &ball;
	POBJECT sq_1 = &square_1;
	POBJECT sq_2 = &square_2;
	POBJECT sq_3 = &square_3;
	POBJECT sq_4 = &square_4;
	POBJECT sq_5 = &square_5;
	POBJECT sq_6 = &square_6;
	POBJECT sq_7 = &square_7;
	POBJECT sq_8 = &square_8;
	POBJECT sq_9 = &square_9;
	POBJECT arr[] = {sq_1, sq_2, sq_3, sq_4, sq_5, sq_6, sq_7, sq_8, sq_9};
	
	graphic_init();
#ifndef	SIMULATOR
	graphic_clear_screen();
#endif
	int test = (sizeof(arr) / sizeof(arr[0]));
	int x = 0;
	int i = 0;
	for (; i <= (test-1); i++, x += 10){
//				if(x > 64)
					
				arr[i]->set_speed(arr[i], x, 0);
				arr[i]->move(arr[i]);
				arr[i]->set_speed(arr[i], 0, 0);
//				arr[i]->draw(arr[i]);
	}
//	graphic_draw_screen();
	while(1){
		clear_backBuffer();
		pball->move(pball);
//		delay_milli(20);
		ppadd->move(ppadd);
		padd_studs(pball,ppadd);
//		p->move(p);
		for (int f = 0; f <= (test-1); f++){
				arr[f]->draw(arr[f]);
//				if(x > 64)
//					x = x-65;
		}
		
//		sq_1->draw(sq_1);
//		sq_2->draw(sq_2);
//		sq_3->draw(sq_3);
//		Pship->move_sp(Pship);
		graphic_draw_screen();
		//delay_milli(40); //25 fps
		graphic_clear_screen();
	}}
