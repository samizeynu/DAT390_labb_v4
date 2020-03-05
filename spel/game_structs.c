#include "game_startup.h"
#include <math.h>
//#include "plant.xbm"

void set_object_speed(POBJECT o, int speedx, int speedy){
	o->dirx = speedx;
	o->diry = speedy;
}	

void set_sprite_speed (PSPRITE s, int sp_speedx, int sp_speedy){
	s->dirx_sp = sp_speedx;
	s->diry_sp = sp_speedy;
}
 
void draw_object(POBJECT o){
	for(int i= 0; i<= o->geo->numpoints; i++){
		pixel(o->posx + o->geo->px[i].x, o->posy + o->geo->px[i].y);
	}
}

void draw_sprite(sprite *s, int x, int y) {
	int i,j,k, width_in_bytes;
	if (s->width % 8 == 0)
		width_in_bytes = s->width / 8;
	else
		width_in_bytes = s->width / 8 + 1;
	for (i = 0; i < s->height; i++){
		for (j = 0; j < width_in_bytes; j++) {
			unsigned char byte = s->data[i * width_in_bytes + j];
			for (k =0; k < 8; k++) {
				for(int h = 0; h <= s->geo->numpoints; h++){
					if (byte & (1 << k))
						pixel(8 * j + k + s->geo->px[i].x + 1, i + s->geo->px[i].y + 1);
				}
			}
		}
	}
}


void clear_object(POBJECT o){
	for(int i= 0; i<= o->geo->numpoints; i++){
		 pixel(o->posx + o->geo->px[i].x, o->posy + o->geo->px[i].y);
	}
}

void clear_sprite(PSPRITE s){
	
}

void move_object(POBJECT o){
//	o->clear(o);
	
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

void move_sprite(PSPRITE s){
	if(s->posx_sp < 1)
		s->set_speed_sp(s, s->dirx_sp*(-1), s->diry_sp);
	
	if(s->posx_sp > 128)
		s->set_speed_sp(s, -s->dirx_sp, s->diry_sp);
		
	if(s->posy_sp < 1)
		s->set_speed_sp(s, s->dirx_sp, -s->diry_sp);
		
	if(s->posy_sp > 64)
		s->set_speed_sp(s, s->dirx_sp, -s->diry_sp);
	
//	s->data = plant_bits; explosion?

	s->posx_sp += s->dirx_sp;
	s->posy_sp += s->diry_sp;
	s->draw_sp(s, s->posx_sp, s->posy_sp);
}

void move_padd(POBJECT this)
{
//	this->clear(this);
	/*undivika padden går över vänster kanten*/
	if(this->posx<1)
	{
		
		if(this->dirx < 0)
			this->set_speed(this, 0, 0);
		else
			this->set_speed(this, this->dirx, this->diry);
	}
	/*undivika padden går över höger kanten*/
	if((this->posx + this->geo->sizex) > 128)
	{
		if(this->dirx > -1)
			this->set_speed(this, 0, 0);
		else
			this->set_speed(this,this->dirx, this->diry);
	}
	if(this->posy<1)
		this->set_speed(this, this->dirx,-this->diry);
		
	if((this->posy + this->geo->sizey)>64)
		this->set_speed(this, this->dirx, this->diry);
		
	this->posx=this->posx + this->dirx;
	this->posy =this->posy + this->diry;
	this->draw(this);
}

void padd_studs(POBJECT this, POBJECT ppadd)
{
	if(((this->posy + this->geo->sizey)>=ppadd->posy))
	{
		if((this->posx + this->geo->sizex >= ppadd->posx) && (this->posx <= (ppadd->posx+ppadd->geo->sizex)))
		{
			this->set_speed(this, this->dirx, -this->diry);
		}
	}
}
