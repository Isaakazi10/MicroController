#ifndef MAIN_H
#define MAIN_H

#include <xc.h>

// defining MACROs
#define MAX_SSD_CNT 4

#define ZERO 0xE7
#define ONE 0x21
#define TWO 0xCB
#define THREE 0x6B
#define FOUR 0x2D
#define FIVE 0x6E
#define SIX 0xEE
#define SEVEN 0x23
#define EIGHT 0xEF
#define NINE 0x6F

#define DZERO 0xF7
#define DONE 0x31
#define DTWO 0xDB
#define DTHREE 0x7B
#define DFOUR 0x3D
#define DFIVE 0x7E
#define DSIX 0xFE
#define DSEVEN 0x33
#define DEIGHT 0xFF
#define DNINE 0x7F

#define DOT 0x10
#define BLANK 0x00

#define UNDERSCORE 0x40

// Function used in this program.
void init_ssd_config();
void display(unsigned char *data);
void init_timer1();

#endif