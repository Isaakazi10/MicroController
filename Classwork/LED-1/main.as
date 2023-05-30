subtitle "Microchip MPLAB XC8 C Compiler v2.41 (Free license) build 20230208172133 Og9 "

pagewidth 120

	opt flic

	processor	18F4580
include "/opt/microchip/xc8/v2.41/pic/include/proc/18f4580.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 54 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "/opt/microchip/xc8/v2.41/pic/include/proc/pic18f4580.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNROOT	_main
	global	_PORTB
_PORTB	set	0xF81
	global	_TRISB
_TRISB	set	0xF93
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"main.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
??_main:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	main@i
main@i:	; 2 bytes @ 0x0
	ds   2
	global	main@i_32
main@i_32:	; 2 bytes @ 0x2
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      4       4
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0      60
;!                                              0 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMRAM           5F      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMRAM              5F      4       4       1        4.2%
;!STACK                0      0       0       2        0.0%
;!DATA                 0      0       0       3        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBIGSFRh          6C      0       0      16        0.0%
;!BITBIGSFRlh         11      0       0      17        0.0%
;!BITBIGSFRll        281      0       0      18        0.0%
;!ABS                  0      0       0      19        0.0%
;!BIGRAM             5FF      0       0      20        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_3             0      0       0     200        0.0%
;!SFR_3                0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 3 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMRAM] unsigned int 
;;  i               2    0[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    8[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	3
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	3
	
_main:
;incstack = 0
	callstack 31
	line	5
	
l761:
	movlw	low(0)
	movwf	((c:3987))^0f00h,c	;volatile
	line	6
	
l763:
	setf	((c:3969))^0f00h,c	;volatile
	line	7
	movlw	high(01h)
	movwf	((c:main@i+1))^00h,c
	movlw	low(01h)
	movwf	((c:main@i))^00h,c
	
l769:
	infsnz	((c:main@i))^00h,c
	incf	((c:main@i+1))^00h,c
	
l771:
		movlw	80
	subwf	 ((c:main@i))^00h,c,w
	movlw	195
	subwfb	((c:main@i+1))^00h,c,w
	btfss	status,0
	goto	u11
	goto	u10

u11:
	goto	l769
u10:
	line	8
	
l773:
	movlw	high(01h)
	movwf	((c:main@i_32+1))^00h,c
	movlw	low(01h)
	movwf	((c:main@i_32))^00h,c
	
l779:
	infsnz	((c:main@i_32))^00h,c
	incf	((c:main@i_32+1))^00h,c
	
l781:
		movlw	80
	subwf	 ((c:main@i_32))^00h,c,w
	movlw	195
	subwfb	((c:main@i_32+1))^00h,c,w
	btfss	status,0
	goto	u21
	goto	u20

u21:
	goto	l779
u20:
	line	9
	
l13:
	global	start
	goto	start
	callstack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
