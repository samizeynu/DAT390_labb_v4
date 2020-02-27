

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

//#define USBDM
#define SIMULATOR

//GPIO D
#define GPIO_BASE_D 0x40020C00
#define GPIO_MODER_D (*((volatile unsigned int*)(GPIO_BASE_D)))
#define GPIO_MODER_LOW_D (*((volatile unsigned short*)(GPIO_BASE_D)))
#define GPIO_MODER_HIGH_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x02)))
#define GPIO_OTYPER_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x04)))
#define GPIO_PUPDR_D (*((volatile unsigned int*)(GPIO_BASE_D + 0x0C)))
#define GPIO_IDR_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x10)))
#define GPIO_IDR_D_LOW (*((volatile unsigned char*)(GPIO_BASE_D + 0x10)))
#define GPIO_IDR_D_HIGH (*((volatile unsigned char*)(GPIO_BASE_D + 0x11)))
#define GPIO_ODR_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x14)))
#define GPIO_ODR_D_LOW (*((volatile unsigned char*)(GPIO_BASE_D + 0x14)))
#define GPIO_ODR_D_HIGH (*((volatile unsigned char*)(GPIO_BASE_D + 0x15)))
 
//GPIO E
#define GPIO_BASE_E 0x40021000
#define GPIO_MODER_E (*((volatile unsigned int*)(GPIO_BASE_E)))
#define GPIO_MODER_LOW_E (*((volatile unsigned short*)(GPIO_BASE_E)))
#define GPIO_MODER_HIGH_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x02)))
#define GPIO_OTYPER_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x04)))
#define GPIO_PUPDR_E (*((volatile unsigned int*)(GPIO_BASE_E + 0x0C)))
#define GPIO_IDR_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x10)))
#define GPIO_IDR_E_LOW (*((volatile unsigned char*)(GPIO_BASE_E + 0x10)))
#define GPIO_IDR_E_HIGH (*((volatile unsigned char*)(GPIO_BASE_E + 0x11)))
#define GPIO_ODR_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x14)))
#define GPIO_ODR_E_LOW (*((volatile unsigned char*)(GPIO_BASE_E + 0x14)))
#define GPIO_ODR_E_HIGH (*((volatile unsigned char*)(GPIO_BASE_E + 0x15)))

//SYSTICK
#define STK_BASE 0xE000E010
#define STK_CTRL (*((volatile unsigned int*)(STK_BASE)))
#define STK_LOAD (*((volatile unsigned int*)(STK_BASE + 0x04)))
#define STK_VAL (*((volatile unsigned int*)(STK_BASE + 0x08)))

//CONTROL BITS ASCII
#define B_E			0x40 
#define B_SELECT 	4		//graphic display - this bit should be zero!
#define B_RW 		2
#define B_RS 		1

//CONTROL BITS GRAPHIC
#define B_CS1		0x08
#define B_CS2		0x10
#define B_RESET		0x20

//COMMAND BITS GRAPHIC
#define LCD_ON			0x3F
#define LCD_OFF			0x3E
#define LCD_SET_ADD		0x40
#define LCD_SET_PAGE	0xB8
#define LCD_DISP_START	0xC0				
#define LCD_BUSY		0x80

//TYPEDEFS
typedef unsigned char uint8_t;


//KEYBOARD FUNCTIONS
void out7seg (unsigned char c);
void keybActivate(unsigned int row);
int keybGetCol(void);
unsigned char keyb(void);


//DELAY FUNCTIONS

void delay_250ns(void);
void delay_micro(unsigned int us);
void delay_milli(unsigned int ms);
void delay_500ns(void);


//ASCII DISPLAY FUNCTIONS

void ascii_ctrl_bit_set(unsigned char);						//Adresserar displayen och ettställer de bitar som är 1 i x
void ascii_ctrl_bit_clear(unsigned char);					//Adresserar displayen och nollställer de bitar som är 1 i x
void ascii_write_controller (unsigned char byte);
unsigned char ascii_read_controller (void);
void ascii_write_command(unsigned char command);
void ascii_write_data(unsigned char data);
unsigned char ascii_read_status(void);
unsigned char ascii_read_data(void);
void ascii_command (unsigned char command);
void ascii_write_char (unsigned char character);
void ascii_gotoxy(int x,int y);


//GRAPHIC DISPLAY

static void select_controller(uint8_t controller);
void graphic_ctrl_bit_set(uint8_t x);
void graphic_ctrl_bit_clear(uint8_t x);
static void graphic_wait_ready(void);
unsigned char graphic_read(unsigned char);
void graphic_write(unsigned char value, unsigned char controller);
void graphic_write_command(uint8_t command, uint8_t controller);
void graphic_write_data(uint8_t data, uint8_t controller);
void graphic_clear_screen(void);
void pixel (unsigned int x, unsigned int y);

//void pixel_old_version (unsigned int x, unsigned int y, unsigned int set);

//GENERAL FUNCTIONS
//void init_app();
void keyb_init(void);
void ascii_init(void);
void graphic_init(void);


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
