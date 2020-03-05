   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"main.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/main.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c ****  * 	main.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c ****  
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** #include "game_startup.h"
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //#include "plant.xbm"
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //#include "backGround.xbm"
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** #include "ship.xbm"
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** void startup ( void )
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  26              		.loc 1 14 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** __asm volatile(
  31              		.loc 1 15 0
  32              		.syntax divided
  33              	@ 15 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/main.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	" MOV SP,R0\n"
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	" BL main\n"				/* call main */
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	"_exit: B .\n"				/* never return */
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	) ;
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** }
  40              		.loc 1 21 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.data
  48              		.align	2
  51              	ship_bits:
  52 0000 00       		.byte	0
  53 0001 01       		.byte	1
  54 0002 00       		.byte	0
  55 0003 00       		.byte	0
  56 0004 01       		.byte	1
  57 0005 00       		.byte	0
  58 0006 C0       		.byte	-64
  59 0007 07       		.byte	7
  60 0008 00       		.byte	0
  61 0009 60       		.byte	96
  62 000a 0C       		.byte	12
  63 000b 00       		.byte	0
  64 000c 20       		.byte	32
  65 000d 08       		.byte	8
  66 000e 00       		.byte	0
  67 000f 20       		.byte	32
  68 0010 08       		.byte	8
  69 0011 00       		.byte	0
  70 0012 30       		.byte	48
  71 0013 18       		.byte	24
  72 0014 00       		.byte	0
  73 0015 18       		.byte	24
  74 0016 30       		.byte	48
  75 0017 00       		.byte	0
  76 0018 08       		.byte	8
  77 0019 20       		.byte	32
  78 001a 00       		.byte	0
  79 001b 08       		.byte	8
  80 001c 20       		.byte	32
  81 001d 00       		.byte	0
  82 001e 0C       		.byte	12
  83 001f 60       		.byte	96
  84 0020 00       		.byte	0
  85 0021 44       		.byte	68
  86 0022 44       		.byte	68
  87 0023 00       		.byte	0
  88 0024 F4       		.byte	-12
  89 0025 5F       		.byte	95
  90 0026 00       		.byte	0
  91 0027 1C       		.byte	28
  92 0028 70       		.byte	112
  93 0029 00       		.byte	0
  94 002a 08       		.byte	8
  95 002b 20       		.byte	32
  96 002c 00       		.byte	0
  97 002d 00       		.byte	0
  98 002e 00       		.byte	0
  99 002f 00       		.byte	0
 100 0030 00       		.byte	0
 101 0031 00       		.byte	0
 102 0032 00       		.byte	0
 103 0033 00       		.byte	0
 104 0034 00       		.byte	0
 105 0035 00       		.byte	0
 106 0036 00       		.byte	0
 107 0037 00       		.byte	0
 108 0038 00       		.byte	0
 109 0039 00       		.byte	0
 110 003a 00       		.byte	0
 111 003b 00       		.byte	0
 112              		.global	square_geometry
 113              		.align	2
 116              	square_geometry:
 117 003c 10000000 		.word	16
 118 0040 05000000 		.word	5
 119 0044 05000000 		.word	5
 120 0048 00       		.byte	0
 121 0049 00       		.byte	0
 122 004a 01       		.byte	1
 123 004b 00       		.byte	0
 124 004c 02       		.byte	2
 125 004d 00       		.byte	0
 126 004e 03       		.byte	3
 127 004f 00       		.byte	0
 128 0050 04       		.byte	4
 129 0051 00       		.byte	0
 130 0052 00       		.byte	0
 131 0053 01       		.byte	1
 132 0054 04       		.byte	4
 133 0055 01       		.byte	1
 134 0056 00       		.byte	0
 135 0057 02       		.byte	2
 136 0058 04       		.byte	4
 137 0059 02       		.byte	2
 138 005a 00       		.byte	0
 139 005b 03       		.byte	3
 140 005c 04       		.byte	4
 141 005d 03       		.byte	3
 142 005e 00       		.byte	0
 143 005f 04       		.byte	4
 144 0060 01       		.byte	1
 145 0061 04       		.byte	4
 146 0062 02       		.byte	2
 147 0063 04       		.byte	4
 148 0064 03       		.byte	3
 149 0065 04       		.byte	4
 150 0066 04       		.byte	4
 151 0067 04       		.byte	4
 152 0068 00000000 		.space	8
 152      00000000 
 153              		.global	ball_geometry
 154              		.align	2
 157              	ball_geometry:
 158 0070 0C000000 		.word	12
 159 0074 04000000 		.word	4
 160 0078 04000000 		.word	4
 161 007c 00       		.byte	0
 162 007d 01       		.byte	1
 163 007e 00       		.byte	0
 164 007f 02       		.byte	2
 165 0080 01       		.byte	1
 166 0081 00       		.byte	0
 167 0082 01       		.byte	1
 168 0083 01       		.byte	1
 169 0084 01       		.byte	1
 170 0085 02       		.byte	2
 171 0086 01       		.byte	1
 172 0087 03       		.byte	3
 173 0088 02       		.byte	2
 174 0089 00       		.byte	0
 175 008a 02       		.byte	2
 176 008b 01       		.byte	1
 177 008c 02       		.byte	2
 178 008d 02       		.byte	2
 179 008e 02       		.byte	2
 180 008f 03       		.byte	3
 181 0090 03       		.byte	3
 182 0091 01       		.byte	1
 183 0092 03       		.byte	3
 184 0093 02       		.byte	2
 185 0094 00000000 		.space	16
 185      00000000 
 185      00000000 
 185      00000000 
 186              		.global	padd_geometry
 187              		.align	2
 190              	padd_geometry:
 191 00a4 28000000 		.word	40
 192 00a8 14000000 		.word	20
 193 00ac 02000000 		.word	2
 194 00b0 00       		.byte	0
 195 00b1 00       		.byte	0
 196 00b2 01       		.byte	1
 197 00b3 00       		.byte	0
 198 00b4 02       		.byte	2
 199 00b5 00       		.byte	0
 200 00b6 03       		.byte	3
 201 00b7 00       		.byte	0
 202 00b8 04       		.byte	4
 203 00b9 00       		.byte	0
 204 00ba 05       		.byte	5
 205 00bb 00       		.byte	0
 206 00bc 06       		.byte	6
 207 00bd 00       		.byte	0
 208 00be 07       		.byte	7
 209 00bf 00       		.byte	0
 210 00c0 08       		.byte	8
 211 00c1 00       		.byte	0
 212 00c2 09       		.byte	9
 213 00c3 00       		.byte	0
 214 00c4 0A       		.byte	10
 215 00c5 00       		.byte	0
 216 00c6 0B       		.byte	11
 217 00c7 00       		.byte	0
 218 00c8 0C       		.byte	12
 219 00c9 00       		.byte	0
 220 00ca 0D       		.byte	13
 221 00cb 00       		.byte	0
 222 00cc 0E       		.byte	14
 223 00cd 00       		.byte	0
 224 00ce 0F       		.byte	15
 225 00cf 00       		.byte	0
 226 00d0 10       		.byte	16
 227 00d1 00       		.byte	0
 228 00d2 11       		.byte	17
 229 00d3 00       		.byte	0
 230 00d4 12       		.byte	18
 231 00d5 00       		.byte	0
 232 00d6 13       		.byte	19
 233 00d7 00       		.byte	0
 234              		.align	2
 237              	square_1:
 238 00d8 00000000 		.word	square_geometry
 239 00dc 00000000 		.word	0
 240 00e0 00000000 		.word	0
 241 00e4 01000000 		.word	1
 242 00e8 01000000 		.word	1
 243 00ec 00000000 		.word	draw_object
 244 00f0 00000000 		.word	clear_object
 245 00f4 00000000 		.word	move_object
 246 00f8 00000000 		.word	set_object_speed
 247              		.align	2
 250              	square_2:
 251 00fc 00000000 		.word	square_geometry
 252 0100 00000000 		.word	0
 253 0104 00000000 		.word	0
 254 0108 01000000 		.word	1
 255 010c 01000000 		.word	1
 256 0110 00000000 		.word	draw_object
 257 0114 00000000 		.word	clear_object
 258 0118 00000000 		.word	move_object
 259 011c 00000000 		.word	set_object_speed
 260              		.align	2
 263              	square_3:
 264 0120 00000000 		.word	square_geometry
 265 0124 00000000 		.word	0
 266 0128 00000000 		.word	0
 267 012c 01000000 		.word	1
 268 0130 01000000 		.word	1
 269 0134 00000000 		.word	draw_object
 270 0138 00000000 		.word	clear_object
 271 013c 00000000 		.word	move_object
 272 0140 00000000 		.word	set_object_speed
 273              		.align	2
 276              	square_4:
 277 0144 00000000 		.word	square_geometry
 278 0148 00000000 		.word	0
 279 014c 00000000 		.word	0
 280 0150 01000000 		.word	1
 281 0154 01000000 		.word	1
 282 0158 00000000 		.word	draw_object
 283 015c 00000000 		.word	clear_object
 284 0160 00000000 		.word	move_object
 285 0164 00000000 		.word	set_object_speed
 286              		.align	2
 289              	square_5:
 290 0168 00000000 		.word	square_geometry
 291 016c 00000000 		.word	0
 292 0170 00000000 		.word	0
 293 0174 01000000 		.word	1
 294 0178 01000000 		.word	1
 295 017c 00000000 		.word	draw_object
 296 0180 00000000 		.word	clear_object
 297 0184 00000000 		.word	move_object
 298 0188 00000000 		.word	set_object_speed
 299              		.align	2
 302              	square_6:
 303 018c 00000000 		.word	square_geometry
 304 0190 00000000 		.word	0
 305 0194 00000000 		.word	0
 306 0198 01000000 		.word	1
 307 019c 01000000 		.word	1
 308 01a0 00000000 		.word	draw_object
 309 01a4 00000000 		.word	clear_object
 310 01a8 00000000 		.word	move_object
 311 01ac 00000000 		.word	set_object_speed
 312              		.align	2
 315              	square_7:
 316 01b0 00000000 		.word	square_geometry
 317 01b4 00000000 		.word	0
 318 01b8 00000000 		.word	0
 319 01bc 01000000 		.word	1
 320 01c0 01000000 		.word	1
 321 01c4 00000000 		.word	draw_object
 322 01c8 00000000 		.word	clear_object
 323 01cc 00000000 		.word	move_object
 324 01d0 00000000 		.word	set_object_speed
 325              		.align	2
 328              	square_8:
 329 01d4 00000000 		.word	square_geometry
 330 01d8 00000000 		.word	0
 331 01dc 00000000 		.word	0
 332 01e0 01000000 		.word	1
 333 01e4 01000000 		.word	1
 334 01e8 00000000 		.word	draw_object
 335 01ec 00000000 		.word	clear_object
 336 01f0 00000000 		.word	move_object
 337 01f4 00000000 		.word	set_object_speed
 338              		.align	2
 341              	square_9:
 342 01f8 00000000 		.word	square_geometry
 343 01fc 00000000 		.word	0
 344 0200 00000000 		.word	0
 345 0204 01000000 		.word	1
 346 0208 01000000 		.word	1
 347 020c 00000000 		.word	draw_object
 348 0210 00000000 		.word	clear_object
 349 0214 00000000 		.word	move_object
 350 0218 00000000 		.word	set_object_speed
 351              		.align	2
 354              	ball:
 355 021c 00000000 		.word	ball_geometry
 356 0220 FDFFFFFF 		.word	-3
 357 0224 03000000 		.word	3
 358 0228 28000000 		.word	40
 359 022c 2D000000 		.word	45
 360 0230 00000000 		.word	draw_object
 361 0234 00000000 		.word	clear_object
 362 0238 00000000 		.word	move_object
 363 023c 00000000 		.word	set_object_speed
 364              		.align	2
 367              	padd:
 368 0240 00000000 		.word	padd_geometry
 369 0244 00000000 		.word	0
 370 0248 00000000 		.word	0
 371 024c 32000000 		.word	50
 372 0250 37000000 		.word	55
 373 0254 00000000 		.word	draw_object
 374 0258 00000000 		.word	clear_object
 375 025c 00000000 		.word	move_padd
 376 0260 00000000 		.word	set_object_speed
 377              		.section	.rodata
 378              		.align	2
 379              	.LC0:
 380 0000 57656C63 		.ascii	"Welcome \000"
 380      6F6D6520 
 380      00
 381 0009 000000   		.align	2
 382              	.LC2:
 383 000c 746F2074 		.ascii	"to the game!\000"
 383      68652067 
 383      616D6521 
 383      00
 384              		.text
 385              		.align	1
 386              		.global	ascii_message
 387              		.syntax unified
 388              		.code	16
 389              		.thumb_func
 390              		.fpu softvfp
 392              	ascii_message:
 393              	.LFB1:
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** GEOMETRY square_geometry =
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	16, 
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	5, 
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	5,
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	{
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	{0,0}, {1,0}, {2,0}, {3,0}, {4,0},
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	{0,1}, 						{4,1},
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	{0,2}, 						{4,2},
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	{0,3}, 						{4,3},
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	{0,4}, {1,4}, {2,4}, {3,4}, {4,4},
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	}
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** GEOMETRY ball_geometry=
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	12, //tot pix
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	4,	//bredd
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	4,	//längd
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	{
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		{0,1},{0,2},
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		{1,0},{1,1},{1,2},{1,3},
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		{2,0},{2,1},{2,2},{2,3},
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		{3,1},{3,2},
  46:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	}
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
  48:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** GEOMETRY padd_geometry=
  49:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  50:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	40, 
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	20,2,	
  52:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	{
  53:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		{0,0},{1,0},{2,0},{3,0},{4,0},{5,0},{6,0},{7,0},{8,0},{9,0},{10,0},{11,0},{12,0},{13,0},{14,0},{1
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		{0,1},{1,1},{2,1},{3,1},{4,1},{5,1},{6,1},{7,1},{8,1},{9,1},{10,1},{11,1},{12,1},{13,1},{14,1},{1
  55:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	}
  56:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
  57:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT square_1 =
  59:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  60:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0,0,
  62:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	1,1,
  63:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
  64:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
  65:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_object,
  66:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
  67:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
  68:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  69:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT square_2 =
  70:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  71:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
  72:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0,0,
  73:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	1,1,
  74:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
  75:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
  76:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_object,
  77:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
  78:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
  79:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  80:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT square_3 =
  81:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  82:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
  83:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0,0,
  84:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	1,1,
  85:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
  86:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
  87:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_object,
  88:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
  89:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
  90:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  91:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT square_4 =
  92:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  93:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
  94:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0,0,
  95:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	1,1,
  96:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
  97:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
  98:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_object,
  99:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 100:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
 101:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 102:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT square_5 =
 103:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 104:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
 105:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0,0,
 106:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	1,1,
 107:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
 108:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
 109:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_object,
 110:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 111:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
 112:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 113:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT square_6 =
 114:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 115:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
 116:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0,0,
 117:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	1,1,
 118:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
 119:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
 120:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_object,
 121:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 122:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
 123:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT square_7 =
 124:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 125:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
 126:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0,0,
 127:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	1,1,
 128:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
 129:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
 130:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_object,
 131:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 132:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
 133:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 134:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT square_8 =
 135:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 136:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
 137:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0,0,
 138:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	1,1,
 139:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
 140:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
 141:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_object,
 142:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 143:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
 144:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 145:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT square_9 =
 146:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 147:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
 148:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0,0,
 149:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	1,1,
 150:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
 151:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
 152:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_object,
 153:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 154:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
 155:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT ball=
 156:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 157:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&ball_geometry,
 158:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	-3,3,
 159:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	40,45,
 160:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
 161:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
 162:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_object,
 163:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 164:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
 165:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 166:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT padd=
 167:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 168:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&padd_geometry,
 169:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0,0,
 170:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	50,55,
 171:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
 172:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
 173:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_padd,
 174:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 175:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
 176:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 177:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** void ascii_message(){
 394              		.loc 1 177 0
 395              		.cfi_startproc
 396              		@ args = 0, pretend = 0, frame = 32
 397              		@ frame_needed = 1, uses_anonymous_args = 0
 398 0000 B0B5     		push	{r4, r5, r7, lr}
 399              		.cfi_def_cfa_offset 16
 400              		.cfi_offset 4, -16
 401              		.cfi_offset 5, -12
 402              		.cfi_offset 7, -8
 403              		.cfi_offset 14, -4
 404 0002 88B0     		sub	sp, sp, #32
 405              		.cfi_def_cfa_offset 48
 406 0004 00AF     		add	r7, sp, #0
 407              		.cfi_def_cfa_register 7
 178:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	char *s;
 179:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	char test1[] = "Welcome ";
 408              		.loc 1 179 0
 409 0006 1024     		movs	r4, #16
 410 0008 3B19     		adds	r3, r7, r4
 411 000a 194A     		ldr	r2, .L7
 412 000c 03CA     		ldmia	r2!, {r0, r1}
 413 000e 03C3     		stmia	r3!, {r0, r1}
 414 0010 1278     		ldrb	r2, [r2]
 415 0012 1A70     		strb	r2, [r3]
 180:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	char test2[] = "to the game!";
 416              		.loc 1 180 0
 417 0014 3B00     		movs	r3, r7
 418 0016 174A     		ldr	r2, .L7+4
 419 0018 23CA     		ldmia	r2!, {r0, r1, r5}
 420 001a 23C3     		stmia	r3!, {r0, r1, r5}
 421 001c 1278     		ldrb	r2, [r2]
 422 001e 1A70     		strb	r2, [r3]
 181:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	ascii_gotoxy(1,1);
 423              		.loc 1 181 0
 424 0020 0121     		movs	r1, #1
 425 0022 0120     		movs	r0, #1
 426 0024 FFF7FEFF 		bl	ascii_gotoxy
 182:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	s = test1;
 427              		.loc 1 182 0
 428 0028 3B19     		adds	r3, r7, r4
 429 002a FB61     		str	r3, [r7, #28]
 183:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	while (*s){
 430              		.loc 1 183 0
 431 002c 06E0     		b	.L3
 432              	.L4:
 184:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		ascii_write_char(*s++); // ascii_write_char
 433              		.loc 1 184 0
 434 002e FB69     		ldr	r3, [r7, #28]
 435 0030 5A1C     		adds	r2, r3, #1
 436 0032 FA61     		str	r2, [r7, #28]
 437 0034 1B78     		ldrb	r3, [r3]
 438 0036 1800     		movs	r0, r3
 439 0038 FFF7FEFF 		bl	ascii_write_char
 440              	.L3:
 183:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	while (*s){
 441              		.loc 1 183 0
 442 003c FB69     		ldr	r3, [r7, #28]
 443 003e 1B78     		ldrb	r3, [r3]
 444 0040 002B     		cmp	r3, #0
 445 0042 F4D1     		bne	.L4
 185:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	}
 186:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	ascii_gotoxy(1,2);
 446              		.loc 1 186 0
 447 0044 0221     		movs	r1, #2
 448 0046 0120     		movs	r0, #1
 449 0048 FFF7FEFF 		bl	ascii_gotoxy
 187:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	s = test2;
 450              		.loc 1 187 0
 451 004c 3B00     		movs	r3, r7
 452 004e FB61     		str	r3, [r7, #28]
 188:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	while (*s){
 453              		.loc 1 188 0
 454 0050 06E0     		b	.L5
 455              	.L6:
 189:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		ascii_write_char(*s++); // ascii_write_char
 456              		.loc 1 189 0
 457 0052 FB69     		ldr	r3, [r7, #28]
 458 0054 5A1C     		adds	r2, r3, #1
 459 0056 FA61     		str	r2, [r7, #28]
 460 0058 1B78     		ldrb	r3, [r3]
 461 005a 1800     		movs	r0, r3
 462 005c FFF7FEFF 		bl	ascii_write_char
 463              	.L5:
 188:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	while (*s){
 464              		.loc 1 188 0
 465 0060 FB69     		ldr	r3, [r7, #28]
 466 0062 1B78     		ldrb	r3, [r3]
 467 0064 002B     		cmp	r3, #0
 468 0066 F4D1     		bne	.L6
 190:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	}
 191:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** }
 469              		.loc 1 191 0
 470 0068 C046     		nop
 471 006a BD46     		mov	sp, r7
 472 006c 08B0     		add	sp, sp, #32
 473              		@ sp needed
 474 006e B0BD     		pop	{r4, r5, r7, pc}
 475              	.L8:
 476              		.align	2
 477              	.L7:
 478 0070 00000000 		.word	.LC0
 479 0074 0C000000 		.word	.LC2
 480              		.cfi_endproc
 481              	.LFE1:
 483              		.align	1
 484              		.global	init_spel
 485              		.syntax unified
 486              		.code	16
 487              		.thumb_func
 488              		.fpu softvfp
 490              	init_spel:
 491              	.LFB2:
 192:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 193:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** void init_spel(){
 492              		.loc 1 193 0
 493              		.cfi_startproc
 494              		@ args = 0, pretend = 0, frame = 0
 495              		@ frame_needed = 1, uses_anonymous_args = 0
 496 0078 80B5     		push	{r7, lr}
 497              		.cfi_def_cfa_offset 8
 498              		.cfi_offset 7, -8
 499              		.cfi_offset 14, -4
 500 007a 00AF     		add	r7, sp, #0
 501              		.cfi_def_cfa_register 7
 194:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	GPIO_MODER_E = 0x55555555;
 502              		.loc 1 194 0
 503 007c 034B     		ldr	r3, .L10
 504 007e 044A     		ldr	r2, .L10+4
 505 0080 1A60     		str	r2, [r3]
 195:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	ascii_init();
 506              		.loc 1 195 0
 507 0082 FFF7FEFF 		bl	ascii_init
 196:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	//ascii_message();
 197:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** }
 508              		.loc 1 197 0
 509 0086 C046     		nop
 510 0088 BD46     		mov	sp, r7
 511              		@ sp needed
 512 008a 80BD     		pop	{r7, pc}
 513              	.L11:
 514              		.align	2
 515              	.L10:
 516 008c 00100240 		.word	1073876992
 517 0090 55555555 		.word	1431655765
 518              		.cfi_endproc
 519              	.LFE2:
 521              		.align	1
 522              		.global	main
 523              		.syntax unified
 524              		.code	16
 525              		.thumb_func
 526              		.fpu softvfp
 528              	main:
 529              	.LFB3:
 198:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 199:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** /*
 200:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static sprite ship =
 201:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 202:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&ship_geo,
 203:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0, 0,
 204:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0, 0,
 205:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	ship_width,
 206:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	ship_height,
 207:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	ship_bits,
 208:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_sprite,
 209:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_sprite,
 210:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_sprite,
 211:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_sprite_speed
 212:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
 213:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 214:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 215:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 216:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static sprite plant =
 217:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 218:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	0, 0,
 219:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	50, 50,
 220:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	plant_width,
 221:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	plant_height,
 222:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	plant_bits,
 223:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_sprite,
 224:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_sprite,
 225:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_sprite,
 226:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_sprite_speed
 227:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
 228:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** */
 229:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 230:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** int main(int argc, char **argv)
 231:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 530              		.loc 1 231 0
 531              		.cfi_startproc
 532              		@ args = 0, pretend = 0, frame = 104
 533              		@ frame_needed = 1, uses_anonymous_args = 0
 534 0094 90B5     		push	{r4, r7, lr}
 535              		.cfi_def_cfa_offset 12
 536              		.cfi_offset 4, -12
 537              		.cfi_offset 7, -8
 538              		.cfi_offset 14, -4
 539 0096 9BB0     		sub	sp, sp, #108
 540              		.cfi_def_cfa_offset 120
 541 0098 00AF     		add	r7, sp, #0
 542              		.cfi_def_cfa_register 7
 543 009a 7860     		str	r0, [r7, #4]
 544 009c 3960     		str	r1, [r7]
 232:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	init_spel();
 545              		.loc 1 232 0
 546 009e FFF7FEFF 		bl	init_spel
 233:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT ppadd=&padd;
 547              		.loc 1 233 0
 548 00a2 4E4B     		ldr	r3, .L18
 549 00a4 BB65     		str	r3, [r7, #88]
 234:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT pball = &ball;
 550              		.loc 1 234 0
 551 00a6 4E4B     		ldr	r3, .L18+4
 552 00a8 7B65     		str	r3, [r7, #84]
 235:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_1 = &square_1;
 553              		.loc 1 235 0
 554 00aa 4E4B     		ldr	r3, .L18+8
 555 00ac 3B65     		str	r3, [r7, #80]
 236:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_2 = &square_2;
 556              		.loc 1 236 0
 557 00ae 4E4B     		ldr	r3, .L18+12
 558 00b0 FB64     		str	r3, [r7, #76]
 237:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_3 = &square_3;
 559              		.loc 1 237 0
 560 00b2 4E4B     		ldr	r3, .L18+16
 561 00b4 BB64     		str	r3, [r7, #72]
 238:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_4 = &square_4;
 562              		.loc 1 238 0
 563 00b6 4E4B     		ldr	r3, .L18+20
 564 00b8 7B64     		str	r3, [r7, #68]
 239:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_5 = &square_5;
 565              		.loc 1 239 0
 566 00ba 4E4B     		ldr	r3, .L18+24
 567 00bc 3B64     		str	r3, [r7, #64]
 240:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_6 = &square_6;
 568              		.loc 1 240 0
 569 00be 4E4B     		ldr	r3, .L18+28
 570 00c0 FB63     		str	r3, [r7, #60]
 241:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_7 = &square_7;
 571              		.loc 1 241 0
 572 00c2 4E4B     		ldr	r3, .L18+32
 573 00c4 BB63     		str	r3, [r7, #56]
 242:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_8 = &square_8;
 574              		.loc 1 242 0
 575 00c6 4E4B     		ldr	r3, .L18+36
 576 00c8 7B63     		str	r3, [r7, #52]
 243:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_9 = &square_9;
 577              		.loc 1 243 0
 578 00ca 4E4B     		ldr	r3, .L18+40
 579 00cc 3B63     		str	r3, [r7, #48]
 244:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT arr[] = {sq_1, sq_2, sq_3, sq_4, sq_5, sq_6, sq_7, sq_8, sq_9};
 580              		.loc 1 244 0
 581 00ce 0821     		movs	r1, #8
 582 00d0 7B18     		adds	r3, r7, r1
 583 00d2 3A6D     		ldr	r2, [r7, #80]
 584 00d4 1A60     		str	r2, [r3]
 585 00d6 7B18     		adds	r3, r7, r1
 586 00d8 FA6C     		ldr	r2, [r7, #76]
 587 00da 5A60     		str	r2, [r3, #4]
 588 00dc 7B18     		adds	r3, r7, r1
 589 00de BA6C     		ldr	r2, [r7, #72]
 590 00e0 9A60     		str	r2, [r3, #8]
 591 00e2 7B18     		adds	r3, r7, r1
 592 00e4 7A6C     		ldr	r2, [r7, #68]
 593 00e6 DA60     		str	r2, [r3, #12]
 594 00e8 7B18     		adds	r3, r7, r1
 595 00ea 3A6C     		ldr	r2, [r7, #64]
 596 00ec 1A61     		str	r2, [r3, #16]
 597 00ee 7B18     		adds	r3, r7, r1
 598 00f0 FA6B     		ldr	r2, [r7, #60]
 599 00f2 5A61     		str	r2, [r3, #20]
 600 00f4 7B18     		adds	r3, r7, r1
 601 00f6 BA6B     		ldr	r2, [r7, #56]
 602 00f8 9A61     		str	r2, [r3, #24]
 603 00fa 7B18     		adds	r3, r7, r1
 604 00fc 7A6B     		ldr	r2, [r7, #52]
 605 00fe DA61     		str	r2, [r3, #28]
 606 0100 7B18     		adds	r3, r7, r1
 607 0102 3A6B     		ldr	r2, [r7, #48]
 608 0104 1A62     		str	r2, [r3, #32]
 245:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	
 246:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	graphic_init();
 609              		.loc 1 246 0
 610 0106 FFF7FEFF 		bl	graphic_init
 247:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** #ifndef	SIMULATOR
 248:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	graphic_clear_screen();
 249:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** #endif
 250:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	int test = (sizeof(arr) / sizeof(arr[0]));
 611              		.loc 1 250 0
 612 010a 0923     		movs	r3, #9
 613 010c FB62     		str	r3, [r7, #44]
 251:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	int x = 0;
 614              		.loc 1 251 0
 615 010e 0023     		movs	r3, #0
 616 0110 7B66     		str	r3, [r7, #100]
 252:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	int i = 0;
 617              		.loc 1 252 0
 618 0112 0023     		movs	r3, #0
 619 0114 3B66     		str	r3, [r7, #96]
 253:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	for (; i <= (test-1); i++, x += 10){
 620              		.loc 1 253 0
 621 0116 2DE0     		b	.L13
 622              	.L14:
 254:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //				if(x > 64)
 255:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 					
 256:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 				arr[i]->set_speed(arr[i], x, 0);
 623              		.loc 1 256 0 discriminator 2
 624 0118 0821     		movs	r1, #8
 625 011a 7B18     		adds	r3, r7, r1
 626 011c 3A6E     		ldr	r2, [r7, #96]
 627 011e 9200     		lsls	r2, r2, #2
 628 0120 D358     		ldr	r3, [r2, r3]
 629 0122 1B6A     		ldr	r3, [r3, #32]
 630 0124 0C00     		movs	r4, r1
 631 0126 7A18     		adds	r2, r7, r1
 632 0128 396E     		ldr	r1, [r7, #96]
 633 012a 8900     		lsls	r1, r1, #2
 634 012c 8858     		ldr	r0, [r1, r2]
 635 012e 796E     		ldr	r1, [r7, #100]
 636 0130 0022     		movs	r2, #0
 637 0132 9847     		blx	r3
 638              	.LVL0:
 257:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 				arr[i]->move(arr[i]);
 639              		.loc 1 257 0 discriminator 2
 640 0134 2100     		movs	r1, r4
 641 0136 7B18     		adds	r3, r7, r1
 642 0138 3A6E     		ldr	r2, [r7, #96]
 643 013a 9200     		lsls	r2, r2, #2
 644 013c D358     		ldr	r3, [r2, r3]
 645 013e DB69     		ldr	r3, [r3, #28]
 646 0140 0C00     		movs	r4, r1
 647 0142 7A18     		adds	r2, r7, r1
 648 0144 396E     		ldr	r1, [r7, #96]
 649 0146 8900     		lsls	r1, r1, #2
 650 0148 8A58     		ldr	r2, [r1, r2]
 651 014a 1000     		movs	r0, r2
 652 014c 9847     		blx	r3
 653              	.LVL1:
 258:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 				arr[i]->set_speed(arr[i], 0, 0);
 654              		.loc 1 258 0 discriminator 2
 655 014e 2100     		movs	r1, r4
 656 0150 7B18     		adds	r3, r7, r1
 657 0152 3A6E     		ldr	r2, [r7, #96]
 658 0154 9200     		lsls	r2, r2, #2
 659 0156 D358     		ldr	r3, [r2, r3]
 660 0158 1B6A     		ldr	r3, [r3, #32]
 661 015a 7A18     		adds	r2, r7, r1
 662 015c 396E     		ldr	r1, [r7, #96]
 663 015e 8900     		lsls	r1, r1, #2
 664 0160 8858     		ldr	r0, [r1, r2]
 665 0162 0022     		movs	r2, #0
 666 0164 0021     		movs	r1, #0
 667 0166 9847     		blx	r3
 668              	.LVL2:
 253:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //				if(x > 64)
 669              		.loc 1 253 0 discriminator 2
 670 0168 3B6E     		ldr	r3, [r7, #96]
 671 016a 0133     		adds	r3, r3, #1
 672 016c 3B66     		str	r3, [r7, #96]
 673 016e 7B6E     		ldr	r3, [r7, #100]
 674 0170 0A33     		adds	r3, r3, #10
 675 0172 7B66     		str	r3, [r7, #100]
 676              	.L13:
 253:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //				if(x > 64)
 677              		.loc 1 253 0 is_stmt 0 discriminator 1
 678 0174 FB6A     		ldr	r3, [r7, #44]
 679 0176 013B     		subs	r3, r3, #1
 680 0178 3A6E     		ldr	r2, [r7, #96]
 681 017a 9A42     		cmp	r2, r3
 682 017c CCDD     		ble	.L14
 683              	.L17:
 259:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //				arr[i]->draw(arr[i]);
 260:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	}
 261:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //	graphic_draw_screen();
 262:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	while(1){
 263:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		clear_backBuffer();
 684              		.loc 1 263 0 is_stmt 1
 685 017e FFF7FEFF 		bl	clear_backBuffer
 264:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		pball->move(pball);
 686              		.loc 1 264 0
 687 0182 7B6D     		ldr	r3, [r7, #84]
 688 0184 DB69     		ldr	r3, [r3, #28]
 689 0186 7A6D     		ldr	r2, [r7, #84]
 690 0188 1000     		movs	r0, r2
 691 018a 9847     		blx	r3
 692              	.LVL3:
 265:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //		delay_milli(20);
 266:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		ppadd->move(ppadd);
 693              		.loc 1 266 0
 694 018c BB6D     		ldr	r3, [r7, #88]
 695 018e DB69     		ldr	r3, [r3, #28]
 696 0190 BA6D     		ldr	r2, [r7, #88]
 697 0192 1000     		movs	r0, r2
 698 0194 9847     		blx	r3
 699              	.LVL4:
 267:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		padd_studs(pball,ppadd);
 700              		.loc 1 267 0
 701 0196 BA6D     		ldr	r2, [r7, #88]
 702 0198 7B6D     		ldr	r3, [r7, #84]
 703 019a 1100     		movs	r1, r2
 704 019c 1800     		movs	r0, r3
 705 019e FFF7FEFF 		bl	padd_studs
 706              	.LBB2:
 268:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //		p->move(p);
 269:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		for (int f = 0; f <= (test-1); f++){
 707              		.loc 1 269 0
 708 01a2 0023     		movs	r3, #0
 709 01a4 FB65     		str	r3, [r7, #92]
 710 01a6 0EE0     		b	.L15
 711              	.L16:
 270:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 				arr[f]->draw(arr[f]);
 712              		.loc 1 270 0 discriminator 3
 713 01a8 0821     		movs	r1, #8
 714 01aa 7B18     		adds	r3, r7, r1
 715 01ac FA6D     		ldr	r2, [r7, #92]
 716 01ae 9200     		lsls	r2, r2, #2
 717 01b0 D358     		ldr	r3, [r2, r3]
 718 01b2 5B69     		ldr	r3, [r3, #20]
 719 01b4 7A18     		adds	r2, r7, r1
 720 01b6 F96D     		ldr	r1, [r7, #92]
 721 01b8 8900     		lsls	r1, r1, #2
 722 01ba 8A58     		ldr	r2, [r1, r2]
 723 01bc 1000     		movs	r0, r2
 724 01be 9847     		blx	r3
 725              	.LVL5:
 269:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 				arr[f]->draw(arr[f]);
 726              		.loc 1 269 0 discriminator 3
 727 01c0 FB6D     		ldr	r3, [r7, #92]
 728 01c2 0133     		adds	r3, r3, #1
 729 01c4 FB65     		str	r3, [r7, #92]
 730              	.L15:
 269:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 				arr[f]->draw(arr[f]);
 731              		.loc 1 269 0 is_stmt 0 discriminator 1
 732 01c6 FB6A     		ldr	r3, [r7, #44]
 733 01c8 013B     		subs	r3, r3, #1
 734 01ca FA6D     		ldr	r2, [r7, #92]
 735 01cc 9A42     		cmp	r2, r3
 736 01ce EBDD     		ble	.L16
 737              	.LBE2:
 271:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //				if(x > 64)
 272:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //					x = x-65;
 273:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		}
 274:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		
 275:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //		sq_1->draw(sq_1);
 276:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //		sq_2->draw(sq_2);
 277:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //		sq_3->draw(sq_3);
 278:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //		Pship->move_sp(Pship);
 279:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		graphic_draw_screen();
 738              		.loc 1 279 0 is_stmt 1
 739 01d0 FFF7FEFF 		bl	graphic_draw_screen
 280:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		//delay_milli(40); //25 fps
 281:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		graphic_clear_screen();
 740              		.loc 1 281 0
 741 01d4 FFF7FEFF 		bl	graphic_clear_screen
 263:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		pball->move(pball);
 742              		.loc 1 263 0
 743 01d8 D1E7     		b	.L17
 744              	.L19:
 745 01da C046     		.align	2
 746              	.L18:
 747 01dc 40020000 		.word	padd
 748 01e0 1C020000 		.word	ball
 749 01e4 D8000000 		.word	square_1
 750 01e8 FC000000 		.word	square_2
 751 01ec 20010000 		.word	square_3
 752 01f0 44010000 		.word	square_4
 753 01f4 68010000 		.word	square_5
 754 01f8 8C010000 		.word	square_6
 755 01fc B0010000 		.word	square_7
 756 0200 D4010000 		.word	square_8
 757 0204 F8010000 		.word	square_9
 758              		.cfi_endproc
 759              	.LFE3:
 761              	.Letext0:
 762              		.file 2 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/game_startup.h"
 763              		.file 3 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/ship.xbm"
