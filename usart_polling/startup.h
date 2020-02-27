

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

//INTERRUPT REGISTERS
#define SYSCFG_BASE		0x40013800	
#define SYSCFG_EXTICR1	(*((unsigned int*)(SYSCFG_BASE + 0x8)))
#define SYSCFG_EXTICR2	(*((unsigned int*)(SYSCFG_BASE + 0xC)))
#define EXTI_BASE	0x40013C00
#define EXTI_IMR	(*((unsigned int*)(EXTI_BASE)))
#define EXTI_FTSR	(*((unsigned int*)(EXTI_BASE + 0xC)))
#define EXTI_RTSR	(*((unsigned int*)(EXTI_BASE + 0x8)))
#define EXTI_PR		(*((unsigned int*)(EXTI_BASE + 0x14)))
#define SCB_VTOR (*(volatile unsigned int *) 0xE000ED08)
#define NVIC_BASE	0xE000E100
#define NVIC_ISER0	(*((unsigned int*)(NVIC_BASE)))


//INTERRUPT BITS AND VECTORS
#define EXTI3_IRQVEC ((void (**) (void)) 0x2001C064)
#define EXTI2_IRQVEC ((void (**) (void)) 0x2001C060)
#define EXTI1_IRQVEC ((void (**) (void)) 0x2001C05C)

#define NVIC_EXTI3_BPOS	(1<<9)
#define NVIC_EXTI2_BPOS (1<<8)
#define NVIC_EXTI1_BPOS (1<<7)

#define	EXTI3_BPOS	(1<<3)
#define	EXTI2_BPOS	(1<<2)
#define	EXTI1_BPOS	(1<<1)


//USART BITS
#define	BIT_TXE		(1<<7)	//Transmit data register empty : 0:busy - 1:ready
#define BIT_RXNE	(1<<5)	//Receive data register not empty: 0:no content - 1:content available
#define BIT_ORE		(1<<3)	//Overrun error: 0:no lost data - 1:fel
#define BIT_NF		(1<<2)	//Noise detection: 0: no noise
#define	BIT_FE		(1<<1)	//Framing error: 0: no error
#define	BIT_PE		(1<<0)	//Parity error: 0: no error
#define	USART_ERROR_FLAGS	(BIT_ORE | BIT_NF | BIT_FE | BIT_PE)

#define BIT_UE	(1<<13)
#define	BIT_TE	(1<<3)
#define	BIT_RE	(1<<2)


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
void pixel (unsigned int x, unsigned int y, unsigned int set);

//GENERAL FUNCTIONS
//void init_app();
void keyb_init(void);
void ascii_init(void);
void graphic_init(void);


//STRUCTS

typedef struct tag_usart{
	volatile unsigned short sr;				//status register
	volatile unsigned short unused0;
	volatile unsigned short dr;				//data register
	volatile unsigned short unused1;
	volatile unsigned short brr;			//baudrate register
	volatile unsigned short unused2;
	volatile unsigned short cr1;			//control register
	volatile unsigned short unused3;
	volatile unsigned short cr2;			//control register
	volatile unsigned short unused4;
	volatile unsigned short cr3;			//control register
	volatile unsigned short unused5;
	volatile unsigned short gtpr;			//guard time and prescaler
} USART;

#define USART1	((USART *) 0x40011000)


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
 
//void set_object_speed(POBJECT o, int speedx, int speedy);
//void draw_object(POBJECT o);
//void clear_object(POBJECT o);
//void move_object(POBJECT o);
/*
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
*/
