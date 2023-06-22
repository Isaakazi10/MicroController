#ifndef MAIN_H
#define MAIN_H

#include <xc.h>

#define LEVEL 0
#define EDGE 1

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

#define DOT 0x10
#define BLANK 0x00

#define UNDERSCORE 0x40

// For temp
#define DEG 0x0F
#define C 0xC6

// Function used in this program.
void init_config(void);
void init_ssd_config();
void display(unsigned char *data);

#endif
