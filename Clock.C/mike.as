opt subtitle "Microchip Technology Omniscient Code Generator v1.38 (Free mode) build 201607010351"

opt pagewidth 120

	opt lm

	processor	16F690
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
INDF equ 00h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
TMR0 equ 01h ;# 
# 63 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PCL equ 02h ;# 
# 69 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
STATUS equ 03h ;# 
# 156 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
FSR equ 04h ;# 
# 162 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PORTA equ 05h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PORTB equ 06h ;# 
# 249 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PORTC equ 07h ;# 
# 310 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PCLATH equ 0Ah ;# 
# 316 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
INTCON equ 0Bh ;# 
# 377 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PIR1 equ 0Ch ;# 
# 446 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PIR2 equ 0Dh ;# 
# 484 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
TMR1 equ 0Eh ;# 
# 490 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
TMR1L equ 0Eh ;# 
# 496 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
TMR1H equ 0Fh ;# 
# 502 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
T1CON equ 010h ;# 
# 572 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
TMR2 equ 011h ;# 
# 578 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
T2CON equ 012h ;# 
# 648 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
SSPBUF equ 013h ;# 
# 654 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
SSPCON equ 014h ;# 
# 723 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
CCPR equ 015h ;# 
# 729 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
CCPR1L equ 015h ;# 
# 735 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
CCPR1H equ 016h ;# 
# 741 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
CCP1CON equ 017h ;# 
# 822 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
RCSTA equ 018h ;# 
# 883 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
TXREG equ 019h ;# 
# 889 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
RCREG equ 01Ah ;# 
# 895 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PWM1CON equ 01Ch ;# 
# 964 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
ECCPAS equ 01Dh ;# 
# 1045 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
ADRESH equ 01Eh ;# 
# 1051 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
ADCON0 equ 01Fh ;# 
# 1145 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
OPTION_REG equ 081h ;# 
# 1214 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
TRISA equ 085h ;# 
# 1263 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
TRISB equ 086h ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
TRISC equ 087h ;# 
# 1362 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PIE1 equ 08Ch ;# 
# 1431 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PIE2 equ 08Dh ;# 
# 1469 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PCON equ 08Eh ;# 
# 1507 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
OSCCON equ 08Fh ;# 
# 1571 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
OSCTUNE equ 090h ;# 
# 1622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PR2 equ 092h ;# 
# 1628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
SSPADD equ 093h ;# 
# 1634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
SSPMSK equ 093h ;# 
# 1639 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
MSK equ 093h ;# 
# 1755 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
SSPSTAT equ 094h ;# 
# 1923 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
WPUA equ 095h ;# 
# 1928 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
WPU equ 095h ;# 
# 2076 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
IOCA equ 096h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
IOC equ 096h ;# 
# 2249 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
WDTCON equ 097h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
TXSTA equ 098h ;# 
# 2371 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
SPBRG equ 099h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
SPBRGH equ 09Ah ;# 
# 2493 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
BAUDCTL equ 09Bh ;# 
# 2544 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
ADRESL equ 09Eh ;# 
# 2550 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
ADCON1 equ 09Fh ;# 
# 2591 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
EEDAT equ 010Ch ;# 
# 2596 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
EEDATA equ 010Ch ;# 
# 2602 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
EEADR equ 010Dh ;# 
# 2608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
EEDATH equ 010Eh ;# 
# 2614 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
EEADRH equ 010Fh ;# 
# 2620 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
WPUB equ 0115h ;# 
# 2667 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
IOCB equ 0116h ;# 
# 2705 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
VRCON equ 0118h ;# 
# 2774 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
CM1CON0 equ 0119h ;# 
# 2838 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
CM2CON0 equ 011Ah ;# 
# 2902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
CM2CON1 equ 011Bh ;# 
# 2940 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
ANSEL equ 011Eh ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
ANSELH equ 011Fh ;# 
# 3038 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
EECON1 equ 018Ch ;# 
# 3082 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
EECON2 equ 018Dh ;# 
# 3088 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
PSTRCON equ 019Dh ;# 
# 3131 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
SRCON equ 019Eh ;# 
# 52 "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
psect eeprom_data,class=EEDATA,delta=2,space=3,noexec ;# 
# 52 "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
db 0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88 ;# 
	FNROOT	_main
	FNCALL	_ISR,_clock_increase
	FNCALL	_ISR,_detect_key
	FNCALL	_ISR,_flash_digital
	FNCALL	_flash_digital,___awdiv
	FNCALL	_flash_digital,___awmod
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_key_delay_time
	global	_show_dots
	global	flash_digital@show_dots
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	66

;initializer for _key_delay_time
	retlw	0C8h
	line	62

;initializer for _show_dots
	retlw	01h
	line	178

;initializer for flash_digital@show_dots
	retlw	01h
	global	_seg_tab
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	60
_seg_tab:
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	099h
	retlw	092h
	retlw	082h
	retlw	0F8h
	retlw	080h
	retlw	090h
	global __end_of_seg_tab
__end_of_seg_tab:
	global	_seg_tab
	global	_key_value
	global	_minutes
	global	_digital
	global	ISR@timming_cnt
	global	_no_key_time
	global	_power_save_timeout
	global	flash_digital@counter
	global	ISR@cnt1
	global	ISR@cnt2
	global	ISR@x
	global	_flash_dots
	global	_hours
	global	_isPowerSaveMode
	global	_mhsm
	global	_seconds
	global	_sysstate
	global	detect_key@counter
	global	detect_key@keystate
	global	flash_digital@curseg
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_TMR0
_TMR0	set	0x1
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_OSCCON
_OSCCON	set	0x8F
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_ANSEL
_ANSEL	set	0x11E
	global	_CM1CON0
_CM1CON0	set	0x119
	global	_CM2CON0
_CM2CON0	set	0x11A
	global	_WPUB
_WPUB	set	0x115
; #config settings
global __CFG_FOSC$INTRCIO
__CFG_FOSC$INTRCIO equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
	file	"mike.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_key_value:
       ds      1

_minutes:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_digital:
       ds      4

ISR@timming_cnt:
       ds      2

_no_key_time:
       ds      2

_power_save_timeout:
       ds      2

flash_digital@counter:
       ds      2

ISR@cnt1:
       ds      1

ISR@cnt2:
       ds      1

ISR@x:
       ds      1

_flash_dots:
       ds      1

_hours:
       ds      1

_isPowerSaveMode:
       ds      1

_mhsm:
       ds      1

_seconds:
       ds      1

_sysstate:
       ds      1

detect_key@counter:
       ds      1

detect_key@keystate:
       ds      1

flash_digital@curseg:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	66
_key_delay_time:
       ds      1

psect	dataBANK0
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	62
_show_dots:
       ds      1

psect	dataBANK0
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	178
flash_digital@show_dots:
       ds      1

	file	"mike.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+018h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_main:	; 1 bytes @ 0x0
?_flash_digital:	; 1 bytes @ 0x0
?_clock_increase:	; 1 bytes @ 0x0
??_clock_increase:	; 1 bytes @ 0x0
?_detect_key:	; 1 bytes @ 0x0
??_detect_key:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	detect_key@key
detect_key@key:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
??___awdiv:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
??_flash_digital:	; 1 bytes @ 0x9
	ds	3
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_ISR:	; 1 bytes @ 0x0
	ds	5
??_main:	; 1 bytes @ 0x5
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    10
;!    Data        3
;!    BSS         26
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80      6      33
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_flash_digital
;!    _flash_digital->___awdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0       0
;!                                              5 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _ISR                                                  5     5      0    1555
;!                                              0 BANK0      5     5      0
;!                     _clock_increase
;!                         _detect_key
;!                      _flash_digital
;! ---------------------------------------------------------------------------------
;! (2) _flash_digital                                        3     3      0    1444
;!                                              9 COMMON     3     3      0
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4     720
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     724
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! (2) _detect_key                                           2     2      0     111
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _clock_increase                                       1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _ISR (ROOT)
;!   _clock_increase
;!   _detect_key
;!   _flash_digital
;!     ___awdiv
;!     ___awmod
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               50      0       0       7        0.0%
;!BITBANK2            50      0       0       6        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       5        0.0%
;!BITBANK1            50      0       0       4        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      6      21       3       41.3%
;!BITBANK0            50      0       0       9        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      C       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      2F      10        0.0%
;!ABS                  0      0      2F       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 79 in file "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	79
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	79
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0]
	line	84
	
l1166:	
;main.c: 84: OSCCON = 0b01110000;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	86
;main.c: 86: while((OSCCON & (1<<2) == 0));
	goto	l1168
	
l60:	
	goto	l1168
	
l59:	
	goto	l1168
	
l61:	
	line	90
	
l1168:	
;main.c: 90: OPTION_REG=0b00000011;
	movlw	low(03h)
	movwf	(129)^080h	;volatile
	line	97
;main.c: 97: TMR0 = 256 - 125;
	movlw	low(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	98
	
l1170:	
;main.c: 98: INTCONbits.GIE=1;
	bsf	(11),7	;volatile
	line	99
	
l1172:	
;main.c: 99: INTCONbits.T0IE=1;
	bsf	(11),5	;volatile
	line	100
	
l1174:	
;main.c: 100: INTCONbits.T0IF=0;
	bcf	(11),2	;volatile
	line	104
	
l1176:	
;main.c: 104: ANSEL = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	105
	
l1178:	
;main.c: 105: CM1CON0 = 0;
	clrf	(281)^0100h	;volatile
	line	106
	
l1180:	
;main.c: 106: CM2CON0 = 0;
	clrf	(282)^0100h	;volatile
	line	109
	
l1182:	
;main.c: 109: TRISA |= ((1<<2) | (1<<3));
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(133)^080h,f	;volatile
	line	110
	
l1184:	
;main.c: 110: TRISA &=~ ((1<<0) | (1<<1) | (1<<4) | (1<<5));
	movlw	low(0CCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	line	111
	
l1186:	
;main.c: 111: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	112
	
l1188:	
;main.c: 112: PORTA &= ~((1<<0) | (1<<1) | (1<<4) | (1<<5));
	movlw	low(0CCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	andwf	(5),f	;volatile
	line	113
	
l1190:	
;main.c: 113: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	114
	
l1192:	
;main.c: 114: TRISB |= (1<<7);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(134)^080h+(7/8),(7)&7	;volatile
	line	115
	
l1194:	
;main.c: 115: WPUB |= (1<<7);
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(277)^0100h+(7/8),(7)&7	;volatile
	line	120
;main.c: 120: while(1)
	
l62:	
	line	122
;main.c: 121: {
;main.c: 122: if(sysstate == NormalMode)
	bcf	status, 6	;RP1=0, select bank0
	movf	((_sysstate)),w
	btfss	status,2
	goto	u981
	goto	u980
u981:
	goto	l1210
u980:
	line	124
	
l1196:	
;main.c: 123: {
;main.c: 124: if(key_value == 1)
		decf	((_key_value)),w	;volatile
	btfss	status,2
	goto	u991
	goto	u990
u991:
	goto	l1202
u990:
	line	126
	
l1198:	
;main.c: 125: {
;main.c: 126: key_value = 0;
	clrf	(_key_value)	;volatile
	line	127
	
l1200:	
;main.c: 127: mhsm = !mhsm;
	movf	((_mhsm)),w	;volatile
	btfsc	status,2
	goto	u1001
	goto	u1000
u1001:
	movlw	1
	goto	u1010
u1000:
	movlw	0
u1010:
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mhsm)	;volatile
	goto	l1202
	line	129
	
l64:	
	line	130
	
l1202:	
;main.c: 129: }
;main.c: 130: if(key_value == 2)
		movlw	2
	xorwf	((_key_value)),w	;volatile
	btfss	status,2
	goto	u1021
	goto	u1020
u1021:
	goto	l1232
u1020:
	line	132
	
l1204:	
;main.c: 131: {
;main.c: 132: sysstate = Setting;
	clrf	(_sysstate)
	incf	(_sysstate),f
	line	133
	
l1206:	
;main.c: 133: flash_dots = 1;
	movlw	low(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_flash_dots)	;volatile
	line	134
;main.c: 134: while((PORTA & (1<<2)) == 0);
	goto	l66
	
l67:	
	
l66:	
	btfss	(5),(2)&7	;volatile
	goto	u1031
	goto	u1030
u1031:
	goto	l66
u1030:
	goto	l1208
	
l68:	
	line	135
	
l1208:	
;main.c: 135: key_value = 0;
	clrf	(_key_value)	;volatile
	goto	l1232
	line	136
	
l65:	
	line	137
;main.c: 136: }
;main.c: 137: }
	goto	l1232
	line	138
	
l63:	
	line	140
	
l1210:	
;main.c: 138: else
;main.c: 139: {
;main.c: 140: if((key_value == 1) || (key_value == 2))
		decf	((_key_value)),w	;volatile
	btfsc	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l1214
u1040:
	
l1212:	
		movlw	2
	xorwf	((_key_value)),w	;volatile
	btfss	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l1228
u1050:
	goto	l1214
	
l72:	
	line	142
	
l1214:	
;main.c: 141: {
;main.c: 142: mhsm = 0;
	clrf	(_mhsm)	;volatile
	line	143
;main.c: 143: key_value = 0;
	clrf	(_key_value)	;volatile
	line	146
	
l1216:	
;main.c: 146: minutes++;
	movlw	low(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_minutes),f	;volatile
	line	147
	
l1218:	
;main.c: 147: if(minutes == 60)
		movlw	60
	xorwf	((_minutes)),w	;volatile
	btfss	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l1228
u1060:
	line	149
	
l1220:	
;main.c: 148: {
;main.c: 149: minutes = 0;
	clrf	(_minutes)	;volatile
	line	150
	
l1222:	
;main.c: 150: hours++;
	movlw	low(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_hours),f	;volatile
	line	151
	
l1224:	
;main.c: 151: if(hours == 24)
		movlw	24
	xorwf	((_hours)),w	;volatile
	btfss	status,2
	goto	u1071
	goto	u1070
u1071:
	goto	l1228
u1070:
	line	153
	
l1226:	
;main.c: 152: {
;main.c: 153: hours = 0;
	clrf	(_hours)	;volatile
	goto	l1228
	line	154
	
l74:	
	goto	l1228
	line	155
	
l73:	
	goto	l1228
	line	156
	
l70:	
	line	158
	
l1228:	
;main.c: 154: }
;main.c: 155: }
;main.c: 156: }
;main.c: 158: if(no_key_time > 500)
	movlw	01h
	subwf	(_no_key_time+1),w	;volatile
	movlw	0F5h
	skipnz
	subwf	(_no_key_time),w	;volatile
	skipc
	goto	u1081
	goto	u1080
u1081:
	goto	l1232
u1080:
	line	160
	
l1230:	
;main.c: 159: {
;main.c: 160: sysstate = NormalMode;
	clrf	(_sysstate)
	line	161
;main.c: 161: flash_dots = 0;
	clrf	(_flash_dots)	;volatile
	goto	l1232
	line	162
	
l75:	
	goto	l1232
	line	163
	
l69:	
	line	165
	
l1232:	
;main.c: 162: }
;main.c: 163: }
;main.c: 165: if((isPowerSaveMode == 1) && ((PORTB & (1<<7)) == 0))
		decf	((_isPowerSaveMode)),w	;volatile
	btfss	status,2
	goto	u1091
	goto	u1090
u1091:
	goto	l62
u1090:
	
l1234:	
	btfsc	(6),(7)&7	;volatile
	goto	u1101
	goto	u1100
u1101:
	goto	l62
u1100:
	line	167
	
l1236:	
;main.c: 166: {
;main.c: 167: isPowerSaveMode = 0;
	clrf	(_isPowerSaveMode)	;volatile
	line	168
;main.c: 168: power_save_timeout = 0;
	clrf	(_power_save_timeout)	;volatile
	clrf	(_power_save_timeout+1)	;volatile
	goto	l62
	line	169
	
l76:	
	goto	l62
	line	170
	
l77:	
	line	120
	goto	l62
	
l78:	
	line	171
	
l79:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 350 in file "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       5       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_clock_increase
;;		_detect_key
;;		_flash_digital
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	350
global __ptext1
__ptext1:	;psect for function _ISR
psect	text1
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	350
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 5
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text1
	line	356
	
i1l1238:	
;main.c: 352: static char cnt1 = 0, cnt2 = 0;
;main.c: 353: static int timming_cnt = 0;
;main.c: 354: static char x = 0;
;main.c: 356: if (INTCONbits.T0IF)
	btfss	(11),2	;volatile
	goto	u111_21
	goto	u111_20
u111_21:
	goto	i1l160
u111_20:
	line	358
	
i1l1240:	
;main.c: 357: {
;main.c: 358: INTCONbits.T0IF = 0;
	bcf	(11),2	;volatile
	line	359
	
i1l1242:	
;main.c: 359: TMR0 = 256 - 125;
	movlw	low(083h)
	movwf	(1)	;volatile
	line	361
	
i1l1244:	
;main.c: 361: if(x == 0)
	movf	((ISR@x)),w
	btfss	status,2
	goto	u112_21
	goto	u112_20
u112_21:
	goto	i1l1248
u112_20:
	line	363
	
i1l1246:	
;main.c: 362: {
;main.c: 363: PORTB |= (1<<7);
	bsf	(6)+(7/8),(7)&7	;volatile
	line	364
;main.c: 364: x = 1;
	clrf	(ISR@x)
	incf	(ISR@x),f
	line	365
;main.c: 365: }
	goto	i1l1252
	line	366
	
i1l152:	
	line	368
	
i1l1248:	
;main.c: 366: else
;main.c: 367: {
;main.c: 368: PORTB &= ~(1<<7);
	movlw	low(07Fh)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	andwf	(6),f	;volatile
	line	369
	
i1l1250:	
;main.c: 369: x = 0;
	clrf	(ISR@x)
	goto	i1l1252
	line	370
	
i1l153:	
	line	372
	
i1l1252:	
;main.c: 370: }
;main.c: 372: cnt1++;
	movlw	low(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(ISR@cnt1),f
	line	373
	
i1l1254:	
;main.c: 373: if (cnt1 >= 5)
	movlw	low(05h)
	subwf	(ISR@cnt1),w
	skipc
	goto	u113_21
	goto	u113_20
u113_21:
	goto	i1l1260
u113_20:
	line	375
	
i1l1256:	
;main.c: 374: {
;main.c: 375: cnt1 = 0;
	clrf	(ISR@cnt1)
	line	376
	
i1l1258:	
;main.c: 376: flash_digital();
	fcall	_flash_digital
	goto	i1l1260
	line	377
	
i1l154:	
	line	379
	
i1l1260:	
;main.c: 377: }
;main.c: 379: cnt2++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(ISR@cnt2),f
	line	380
	
i1l1262:	
;main.c: 380: if (cnt2 >= 10)
	movlw	low(0Ah)
	subwf	(ISR@cnt2),w
	skipc
	goto	u114_21
	goto	u114_20
u114_21:
	goto	i1l1268
u114_20:
	line	382
	
i1l1264:	
;main.c: 381: {
;main.c: 382: cnt2 = 0;
	clrf	(ISR@cnt2)
	line	383
	
i1l1266:	
;main.c: 383: detect_key();
	fcall	_detect_key
	goto	i1l1268
	line	384
	
i1l155:	
	line	387
	
i1l1268:	
;main.c: 384: }
;main.c: 387: timming_cnt++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(ISR@timming_cnt),f
	skipnc
	incf	(ISR@timming_cnt+1),f
	movlw	0
	addwf	(ISR@timming_cnt+1),f
	line	391
	
i1l1270:	
;main.c: 391: if(timming_cnt >= 956)
	movf	(ISR@timming_cnt+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(03h)^80h
	subwf	btemp+1,w
	skipz
	goto	u115_25
	movlw	0BCh
	subwf	(ISR@timming_cnt),w
u115_25:

	skipc
	goto	u115_21
	goto	u115_20
u115_21:
	goto	i1l1276
u115_20:
	line	399
	
i1l1272:	
;main.c: 392: {
;main.c: 399: timming_cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ISR@timming_cnt)
	clrf	(ISR@timming_cnt+1)
	line	400
	
i1l1274:	
;main.c: 400: clock_increase();
	fcall	_clock_increase
	goto	i1l1276
	line	401
	
i1l156:	
	line	403
	
i1l1276:	
;main.c: 401: }
;main.c: 403: if(power_save_timeout < 3000)
	movlw	0Bh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_power_save_timeout+1),w	;volatile
	movlw	0B8h
	skipnz
	subwf	(_power_save_timeout),w	;volatile
	skipnc
	goto	u116_21
	goto	u116_20
u116_21:
	goto	i1l1280
u116_20:
	line	405
	
i1l1278:	
;main.c: 404: {
;main.c: 405: power_save_timeout++;
	movlw	01h
	addwf	(_power_save_timeout),f	;volatile
	skipnc
	incf	(_power_save_timeout+1),f	;volatile
	movlw	0
	addwf	(_power_save_timeout+1),f	;volatile
	line	406
;main.c: 406: }
	goto	i1l160
	line	407
	
i1l157:	
	
i1l1280:	
;main.c: 407: else if((sysstate == NormalMode) && ((PORTB & (1<<7)) != 0))
	movf	((_sysstate)),w
	btfss	status,2
	goto	u117_21
	goto	u117_20
u117_21:
	goto	i1l160
u117_20:
	
i1l1282:	
	btfss	(6),(7)&7	;volatile
	goto	u118_21
	goto	u118_20
u118_21:
	goto	i1l160
u118_20:
	line	409
	
i1l1284:	
;main.c: 408: {
;main.c: 409: isPowerSaveMode = 1;
	movlw	low(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_isPowerSaveMode)	;volatile
	line	410
	
i1l1286:	
;main.c: 410: power_save_timeout = 0;
	clrf	(_power_save_timeout)	;volatile
	clrf	(_power_save_timeout+1)	;volatile
	goto	i1l160
	line	411
	
i1l159:	
	goto	i1l160
	line	412
	
i1l158:	
	goto	i1l160
	
i1l151:	
	line	413
	
i1l160:	
	movf	(??_ISR+4),w
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
	global	_flash_digital

;; *************** function _flash_digital *****************
;; Defined at:
;;		line 176 in file "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	176
global __ptext2
__ptext2:	;psect for function _flash_digital
psect	text2
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	176
	global	__size_of_flash_digital
	__size_of_flash_digital	equ	__end_of_flash_digital-_flash_digital
	
_flash_digital:	
;incstack = 0
	opt	stack 5
; Regs used in _flash_digital: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	182
	
i1l1036:	
;main.c: 178: static char curseg = 0;
;main.c: 179: static char show_dots = 1;
;main.c: 180: static int counter = 0;
;main.c: 182: if (mhsm == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_mhsm)),w	;volatile
	btfss	status,2
	goto	u79_21
	goto	u79_20
u79_21:
	goto	i1l1040
u79_20:
	line	184
	
i1l1038:	
;main.c: 183: {
;main.c: 184: digital[3] = hours / 10;
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_hours),w	;volatile
	movwf	(??_flash_digital+0)+0
	clrf	(??_flash_digital+0)+0+1
	movf	0+(??_flash_digital+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_flash_digital+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(??_flash_digital+2)+0
	movf	(??_flash_digital+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_digital)+03h	;volatile
	line	185
;main.c: 185: digital[2] = hours % 10;
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_hours),w	;volatile
	movwf	(??_flash_digital+0)+0
	clrf	(??_flash_digital+0)+0+1
	movf	0+(??_flash_digital+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_flash_digital+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(??_flash_digital+2)+0
	movf	(??_flash_digital+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_digital)+02h	;volatile
	line	186
;main.c: 186: digital[1] = minutes / 10;
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_minutes),w	;volatile
	movwf	(??_flash_digital+0)+0
	clrf	(??_flash_digital+0)+0+1
	movf	0+(??_flash_digital+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_flash_digital+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(??_flash_digital+2)+0
	movf	(??_flash_digital+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_digital)+01h	;volatile
	line	187
;main.c: 187: digital[0] = minutes % 10;
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_minutes),w	;volatile
	movwf	(??_flash_digital+0)+0
	clrf	(??_flash_digital+0)+0+1
	movf	0+(??_flash_digital+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_flash_digital+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(??_flash_digital+2)+0
	movf	(??_flash_digital+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_digital)	;volatile
	line	188
;main.c: 188: }
	goto	i1l1042
	line	189
	
i1l88:	
	line	191
	
i1l1040:	
;main.c: 189: else
;main.c: 190: {
;main.c: 191: digital[3] = minutes / 10;
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_minutes),w	;volatile
	movwf	(??_flash_digital+0)+0
	clrf	(??_flash_digital+0)+0+1
	movf	0+(??_flash_digital+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_flash_digital+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(??_flash_digital+2)+0
	movf	(??_flash_digital+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_digital)+03h	;volatile
	line	192
;main.c: 192: digital[2] = minutes % 10;
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_minutes),w	;volatile
	movwf	(??_flash_digital+0)+0
	clrf	(??_flash_digital+0)+0+1
	movf	0+(??_flash_digital+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_flash_digital+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(??_flash_digital+2)+0
	movf	(??_flash_digital+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_digital)+02h	;volatile
	line	193
;main.c: 193: digital[1] = seconds / 10;
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_seconds),w	;volatile
	movwf	(??_flash_digital+0)+0
	clrf	(??_flash_digital+0)+0+1
	movf	0+(??_flash_digital+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_flash_digital+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(??_flash_digital+2)+0
	movf	(??_flash_digital+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_digital)+01h	;volatile
	line	194
;main.c: 194: digital[0] = seconds % 10;
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_seconds),w	;volatile
	movwf	(??_flash_digital+0)+0
	clrf	(??_flash_digital+0)+0+1
	movf	0+(??_flash_digital+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_flash_digital+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(??_flash_digital+2)+0
	movf	(??_flash_digital+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_digital)	;volatile
	goto	i1l1042
	line	195
	
i1l89:	
	line	197
	
i1l1042:	
;main.c: 195: }
;main.c: 197: if(flash_dots != 0)
	movf	((_flash_dots)),w	;volatile
	btfsc	status,2
	goto	u80_21
	goto	u80_20
u80_21:
	goto	i1l1056
u80_20:
	line	199
	
i1l1044:	
;main.c: 198: {
;main.c: 199: counter++;
	movlw	01h
	addwf	(flash_digital@counter),f
	skipnc
	incf	(flash_digital@counter+1),f
	movlw	0
	addwf	(flash_digital@counter+1),f
	line	200
	
i1l1046:	
;main.c: 200: if(counter == 100)
		movlw	100
	xorwf	((flash_digital@counter)),w
iorwf	((flash_digital@counter+1)),w
	btfss	status,2
	goto	u81_21
	goto	u81_20
u81_21:
	goto	i1l1050
u81_20:
	line	202
	
i1l1048:	
;main.c: 201: {
;main.c: 202: show_dots = 0;
	clrf	(flash_digital@show_dots)
	goto	i1l1050
	line	203
	
i1l91:	
	line	204
	
i1l1050:	
;main.c: 203: }
;main.c: 204: if(counter == 200)
		movlw	200
	xorwf	((flash_digital@counter)),w
iorwf	((flash_digital@counter+1)),w
	btfss	status,2
	goto	u82_21
	goto	u82_20
u82_21:
	goto	i1l1060
u82_20:
	line	206
	
i1l1052:	
;main.c: 205: {
;main.c: 206: counter = 0;
	clrf	(flash_digital@counter)
	clrf	(flash_digital@counter+1)
	line	207
	
i1l1054:	
;main.c: 207: show_dots = 1;
	clrf	(flash_digital@show_dots)
	incf	(flash_digital@show_dots),f
	goto	i1l1060
	line	208
	
i1l92:	
	line	209
;main.c: 208: }
;main.c: 209: }
	goto	i1l1060
	line	210
	
i1l90:	
	line	212
	
i1l1056:	
;main.c: 210: else
;main.c: 211: {
;main.c: 212: counter = 0;
	clrf	(flash_digital@counter)
	clrf	(flash_digital@counter+1)
	line	213
	
i1l1058:	
;main.c: 213: show_dots = 1;
	clrf	(flash_digital@show_dots)
	incf	(flash_digital@show_dots),f
	goto	i1l1060
	line	214
	
i1l93:	
	line	216
	
i1l1060:	
;main.c: 214: }
;main.c: 216: PORTA &= ~((1<<0) | (1<<1) | (1<<4) | (1<<5));
	movlw	low(0CCh)
	movwf	(??_flash_digital+0)+0
	movf	(??_flash_digital+0)+0,w
	andwf	(5),f	;volatile
	line	218
	
i1l1062:	
;main.c: 218: if(isPowerSaveMode == 0)
	movf	((_isPowerSaveMode)),w	;volatile
	btfss	status,2
	goto	u83_21
	goto	u83_20
u83_21:
	goto	i1l1094
u83_20:
	goto	i1l1092
	line	220
	
i1l1064:	
;main.c: 219: {
;main.c: 220: switch (curseg)
	goto	i1l1092
	line	222
;main.c: 221: {
;main.c: 222: case 0:
	
i1l96:	
	line	223
	
i1l1066:	
;main.c: 223: if(show_dots != 0) PORTC = seg_tab[digital[0]] & ~(1<<7);
	movf	((flash_digital@show_dots)),w
	btfsc	status,2
	goto	u84_21
	goto	u84_20
u84_21:
	goto	i1l1070
u84_20:
	
i1l1068:	
	movf	(_digital),w
	addlw	low((((_seg_tab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	07Fh
	movwf	(7)	;volatile
	goto	i1l1072
	line	224
	
i1l97:	
	
i1l1070:	
;main.c: 224: else PORTC = seg_tab[digital[0]];
	movf	(_digital),w
	addlw	low((((_seg_tab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(7)	;volatile
	goto	i1l1072
	
i1l98:	
	line	225
	
i1l1072:	
;main.c: 225: PORTA |= (1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	226
;main.c: 226: break;
	goto	i1l1094
	line	227
;main.c: 227: case 1:
	
i1l100:	
	line	228
	
i1l1074:	
;main.c: 228: if(show_dots != 0) PORTC = seg_tab[digital[1]] & ~(1<<7);
	movf	((flash_digital@show_dots)),w
	btfsc	status,2
	goto	u85_21
	goto	u85_20
u85_21:
	goto	i1l1078
u85_20:
	
i1l1076:	
	movf	0+(_digital)+01h,w	;volatile
	addlw	low((((_seg_tab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	07Fh
	movwf	(7)	;volatile
	goto	i1l1080
	line	229
	
i1l101:	
	
i1l1078:	
;main.c: 229: else PORTC = seg_tab[digital[1]];
	movf	0+(_digital)+01h,w	;volatile
	addlw	low((((_seg_tab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(7)	;volatile
	goto	i1l1080
	
i1l102:	
	line	230
	
i1l1080:	
;main.c: 230: PORTA |= (1<<1);
	bsf	(5)+(1/8),(1)&7	;volatile
	line	231
;main.c: 231: break;
	goto	i1l1094
	line	232
;main.c: 232: case 2:
	
i1l103:	
	line	233
	
i1l1082:	
;main.c: 233: PORTC = seg_tab[digital[2]];
	movf	0+(_digital)+02h,w	;volatile
	addlw	low((((_seg_tab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(7)	;volatile
	line	234
	
i1l1084:	
;main.c: 234: PORTA |= (1<<4);
	bsf	(5)+(4/8),(4)&7	;volatile
	line	235
;main.c: 235: break;
	goto	i1l1094
	line	236
;main.c: 236: case 3:
	
i1l104:	
	line	237
	
i1l1086:	
;main.c: 237: PORTC = seg_tab[digital[3]];
	movf	0+(_digital)+03h,w	;volatile
	addlw	low((((_seg_tab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(7)	;volatile
	line	238
	
i1l1088:	
;main.c: 238: PORTA |= (1<<5);
	bsf	(5)+(5/8),(5)&7	;volatile
	line	239
;main.c: 239: break;
	goto	i1l1094
	line	240
;main.c: 240: default:
	
i1l105:	
	line	241
;main.c: 241: break;
	goto	i1l1094
	line	242
	
i1l1090:	
;main.c: 242: }
	goto	i1l1094
	line	220
	
i1l95:	
	
i1l1092:	
	movf	(flash_digital@curseg),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           15     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l1066
	xorlw	1^0	; case 1
	skipnz
	goto	i1l1074
	xorlw	2^1	; case 2
	skipnz
	goto	i1l1082
	xorlw	3^2	; case 3
	skipnz
	goto	i1l1086
	goto	i1l1094
	opt asmopt_on

	line	242
	
i1l99:	
	goto	i1l1094
	line	243
	
i1l94:	
	line	245
	
i1l1094:	
;main.c: 243: }
;main.c: 245: if(++curseg == 4)
	movlw	low(01h)
	movwf	(??_flash_digital+0)+0
	movf	(??_flash_digital+0)+0,w
	addwf	(flash_digital@curseg),f
		movlw	4
	xorwf	(((flash_digital@curseg))),w
	btfss	status,2
	goto	u86_21
	goto	u86_20
u86_21:
	goto	i1l107
u86_20:
	line	246
	
i1l1096:	
;main.c: 246: curseg = 0;
	clrf	(flash_digital@curseg)
	goto	i1l107
	
i1l106:	
	line	247
	
i1l107:	
	return
	opt stack 0
GLOBAL	__end_of_flash_digital
	__end_of_flash_digital:
	signat	_flash_digital,89
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_flash_digital
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\awmod.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___awmod
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
i1l998:	
	clrf	(___awmod@sign)
	line	14
	
i1l1000:	
	btfss	(___awmod@dividend+1),7
	goto	u70_21
	goto	u70_20
u70_21:
	goto	i1l1006
u70_20:
	line	15
	
i1l1002:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
i1l1004:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	i1l1006
	line	17
	
i1l379:	
	line	18
	
i1l1006:	
	btfss	(___awmod@divisor+1),7
	goto	u71_21
	goto	u71_20
u71_21:
	goto	i1l1010
u71_20:
	line	19
	
i1l1008:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	i1l1010
	
i1l380:	
	line	20
	
i1l1010:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u72_21
	goto	u72_20
u72_21:
	goto	i1l1028
u72_20:
	line	21
	
i1l1012:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	i1l1018
	
i1l383:	
	line	23
	
i1l1014:	
	movlw	01h
	
u73_25:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u73_25
	line	24
	
i1l1016:	
	movlw	low(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	i1l1018
	line	25
	
i1l382:	
	line	22
	
i1l1018:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u74_21
	goto	u74_20
u74_21:
	goto	i1l1014
u74_20:
	goto	i1l1020
	
i1l384:	
	goto	i1l1020
	line	26
	
i1l385:	
	line	27
	
i1l1020:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u75_25
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u75_25:
	skipc
	goto	u75_21
	goto	u75_20
u75_21:
	goto	i1l1024
u75_20:
	line	28
	
i1l1022:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	i1l1024
	
i1l386:	
	line	29
	
i1l1024:	
	movlw	01h
	
u76_25:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u76_25
	line	30
	
i1l1026:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u77_21
	goto	u77_20
u77_21:
	goto	i1l1020
u77_20:
	goto	i1l1028
	
i1l387:	
	goto	i1l1028
	line	31
	
i1l381:	
	line	32
	
i1l1028:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u78_21
	goto	u78_20
u78_21:
	goto	i1l1032
u78_20:
	line	33
	
i1l1030:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	i1l1032
	
i1l388:	
	line	34
	
i1l1032:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	goto	i1l389
	
i1l1034:	
	line	35
	
i1l389:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_flash_digital
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\awdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___awdiv
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
i1l954:	
	clrf	(___awdiv@sign)
	line	15
	
i1l956:	
	btfss	(___awdiv@divisor+1),7
	goto	u60_21
	goto	u60_20
u60_21:
	goto	i1l962
u60_20:
	line	16
	
i1l958:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
i1l960:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	i1l962
	line	18
	
i1l366:	
	line	19
	
i1l962:	
	btfss	(___awdiv@dividend+1),7
	goto	u61_21
	goto	u61_20
u61_21:
	goto	i1l968
u61_20:
	line	20
	
i1l964:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
i1l966:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	i1l968
	line	22
	
i1l367:	
	line	23
	
i1l968:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
i1l970:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u62_21
	goto	u62_20
u62_21:
	goto	i1l990
u62_20:
	line	25
	
i1l972:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	i1l978
	
i1l370:	
	line	27
	
i1l974:	
	movlw	01h
	
u63_25:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u63_25
	line	28
	
i1l976:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	i1l978
	line	29
	
i1l369:	
	line	26
	
i1l978:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u64_21
	goto	u64_20
u64_21:
	goto	i1l974
u64_20:
	goto	i1l980
	
i1l371:	
	goto	i1l980
	line	30
	
i1l372:	
	line	31
	
i1l980:	
	movlw	01h
	
u65_25:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u65_25
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u66_25
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u66_25:
	skipc
	goto	u66_21
	goto	u66_20
u66_21:
	goto	i1l986
u66_20:
	line	33
	
i1l982:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
i1l984:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	i1l986
	line	35
	
i1l373:	
	line	36
	
i1l986:	
	movlw	01h
	
u67_25:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u67_25
	line	37
	
i1l988:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u68_21
	goto	u68_20
u68_21:
	goto	i1l980
u68_20:
	goto	i1l990
	
i1l374:	
	goto	i1l990
	line	38
	
i1l368:	
	line	39
	
i1l990:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u69_21
	goto	u69_20
u69_21:
	goto	i1l994
u69_20:
	line	40
	
i1l992:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	i1l994
	
i1l375:	
	line	41
	
i1l994:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	goto	i1l376
	
i1l996:	
	line	42
	
i1l376:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_detect_key

;; *************** function _detect_key *****************
;; Defined at:
;;		line 270 in file "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	270
global __ptext5
__ptext5:	;psect for function _detect_key
psect	text5
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	270
	global	__size_of_detect_key
	__size_of_detect_key	equ	__end_of_detect_key-_detect_key
	
_detect_key:	
;incstack = 0
	opt	stack 6
; Regs used in _detect_key: [wreg-fsr0h+status,2+status,0]
	line	276
	
i1l1114:	
;main.c: 272: static char keystate = 0;
;main.c: 273: static char counter = 0;
;main.c: 274: char key;
;main.c: 276: if (key_value != 0)
	movf	((_key_value)),w	;volatile
	btfsc	status,2
	goto	u90_21
	goto	u90_20
u90_21:
	goto	i1l1118
u90_20:
	goto	i1l121
	line	278
	
i1l1116:	
;main.c: 277: {
;main.c: 278: return;
	goto	i1l121
	line	279
	
i1l120:	
	line	281
	
i1l1118:	
;main.c: 279: }
;main.c: 281: key = PORTA & (1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	andlw	04h
	movwf	(??_detect_key+0)+0
	movf	(??_detect_key+0)+0,w
	movwf	(detect_key@key)
	line	283
	
i1l1120:	
;main.c: 283: if(key != 0)
	movf	((detect_key@key)),w
	btfsc	status,2
	goto	u91_21
	goto	u91_20
u91_21:
	goto	i1l1126
u91_20:
	line	285
	
i1l1122:	
;main.c: 284: {
;main.c: 285: if(no_key_time < 520) no_key_time++;
	movlw	02h
	subwf	(_no_key_time+1),w	;volatile
	movlw	08h
	skipnz
	subwf	(_no_key_time),w	;volatile
	skipnc
	goto	u92_21
	goto	u92_20
u92_21:
	goto	i1l1164
u92_20:
	
i1l1124:	
	movlw	01h
	addwf	(_no_key_time),f	;volatile
	skipnc
	incf	(_no_key_time+1),f	;volatile
	movlw	0
	addwf	(_no_key_time+1),f	;volatile
	goto	i1l1164
	
i1l123:	
	line	286
;main.c: 286: }
	goto	i1l1164
	line	287
	
i1l122:	
	line	289
	
i1l1126:	
;main.c: 287: else
;main.c: 288: {
;main.c: 289: no_key_time = 0;
	clrf	(_no_key_time)	;volatile
	clrf	(_no_key_time+1)	;volatile
	goto	i1l1164
	line	290
	
i1l124:	
	line	292
;main.c: 290: }
;main.c: 292: switch (keystate)
	goto	i1l1164
	line	294
;main.c: 293: {
;main.c: 294: case 0:
	
i1l126:	
	line	295
	
i1l1128:	
;main.c: 295: if (key == 0)
	movf	((detect_key@key)),w
	btfss	status,2
	goto	u93_21
	goto	u93_20
u93_21:
	goto	i1l121
u93_20:
	line	297
	
i1l1130:	
;main.c: 296: {
;main.c: 297: keystate = 1;
	clrf	(detect_key@keystate)
	incf	(detect_key@keystate),f
	goto	i1l121
	line	299
	
i1l127:	
	line	300
;main.c: 299: }
;main.c: 300: break;
	goto	i1l121
	line	301
;main.c: 301: case 1:
	
i1l129:	
	line	302
	
i1l1132:	
;main.c: 302: if (key == 0)
	movf	((detect_key@key)),w
	btfss	status,2
	goto	u94_21
	goto	u94_20
u94_21:
	goto	i1l1140
u94_20:
	line	304
	
i1l1134:	
;main.c: 303: {
;main.c: 304: keystate = 2;
	movlw	low(02h)
	movwf	(??_detect_key+0)+0
	movf	(??_detect_key+0)+0,w
	movwf	(detect_key@keystate)
	line	305
;main.c: 305: key_value = 1;
	movlw	low(01h)
	movwf	(??_detect_key+0)+0
	movf	(??_detect_key+0)+0,w
	movwf	(_key_value)	;volatile
	line	306
	
i1l1136:	
;main.c: 306: isPowerSaveMode = 0;
	clrf	(_isPowerSaveMode)	;volatile
	line	307
	
i1l1138:	
;main.c: 307: power_save_timeout = 0;
	clrf	(_power_save_timeout)	;volatile
	clrf	(_power_save_timeout+1)	;volatile
	line	308
;main.c: 308: }
	goto	i1l121
	line	309
	
i1l130:	
	line	311
	
i1l1140:	
;main.c: 309: else
;main.c: 310: {
;main.c: 311: keystate = 0;
	clrf	(detect_key@keystate)
	goto	i1l121
	line	312
	
i1l131:	
	line	313
;main.c: 312: }
;main.c: 313: break;
	goto	i1l121
	line	314
;main.c: 314: case 2:
	
i1l132:	
	line	315
	
i1l1142:	
;main.c: 315: if (key == 0)
	movf	((detect_key@key)),w
	btfss	status,2
	goto	u95_21
	goto	u95_20
u95_21:
	goto	i1l1154
u95_20:
	line	317
	
i1l1144:	
;main.c: 316: {
;main.c: 317: if(counter < key_delay_time)
	movf	(_key_delay_time),w	;volatile
	subwf	(detect_key@counter),w
	skipnc
	goto	u96_21
	goto	u96_20
u96_21:
	goto	i1l1148
u96_20:
	line	319
	
i1l1146:	
;main.c: 318: {
;main.c: 319: counter++;
	movlw	low(01h)
	movwf	(??_detect_key+0)+0
	movf	(??_detect_key+0)+0,w
	addwf	(detect_key@counter),f
	line	320
;main.c: 320: }
	goto	i1l121
	line	321
	
i1l134:	
	line	323
	
i1l1148:	
;main.c: 321: else
;main.c: 322: {
;main.c: 323: key_value = 2;
	movlw	low(02h)
	movwf	(??_detect_key+0)+0
	movf	(??_detect_key+0)+0,w
	movwf	(_key_value)	;volatile
	line	324
	
i1l1150:	
;main.c: 324: isPowerSaveMode = 0;
	clrf	(_isPowerSaveMode)	;volatile
	line	325
	
i1l1152:	
;main.c: 325: power_save_timeout = 0;
	clrf	(_power_save_timeout)	;volatile
	clrf	(_power_save_timeout+1)	;volatile
	goto	i1l121
	line	326
	
i1l135:	
	line	327
;main.c: 326: }
;main.c: 327: }
	goto	i1l121
	line	328
	
i1l133:	
	line	330
	
i1l1154:	
;main.c: 328: else
;main.c: 329: {
;main.c: 330: keystate = 3;
	movlw	low(03h)
	movwf	(??_detect_key+0)+0
	movf	(??_detect_key+0)+0,w
	movwf	(detect_key@keystate)
	goto	i1l121
	line	331
	
i1l136:	
	line	332
;main.c: 331: }
;main.c: 332: break;
	goto	i1l121
	line	333
;main.c: 333: case 3:
	
i1l137:	
	line	334
	
i1l1156:	
;main.c: 334: if (key != 0)
	movf	((detect_key@key)),w
	btfsc	status,2
	goto	u97_21
	goto	u97_20
u97_21:
	goto	i1l1160
u97_20:
	line	336
	
i1l1158:	
;main.c: 335: {
;main.c: 336: keystate = 0;
	clrf	(detect_key@keystate)
	line	337
;main.c: 337: counter = 0;
	clrf	(detect_key@counter)
	line	338
;main.c: 338: }
	goto	i1l121
	line	339
	
i1l138:	
	line	341
	
i1l1160:	
;main.c: 339: else
;main.c: 340: {
;main.c: 341: keystate = 2;
	movlw	low(02h)
	movwf	(??_detect_key+0)+0
	movf	(??_detect_key+0)+0,w
	movwf	(detect_key@keystate)
	goto	i1l121
	line	342
	
i1l139:	
	line	343
;main.c: 342: }
;main.c: 343: break;
	goto	i1l121
	line	344
;main.c: 344: default:
	
i1l140:	
	line	345
;main.c: 345: break;
	goto	i1l121
	line	346
	
i1l1162:	
;main.c: 346: }
	goto	i1l121
	line	292
	
i1l125:	
	
i1l1164:	
	movf	(detect_key@keystate),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           15     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l1128
	xorlw	1^0	; case 1
	skipnz
	goto	i1l1132
	xorlw	2^1	; case 2
	skipnz
	goto	i1l1142
	xorlw	3^2	; case 3
	skipnz
	goto	i1l1156
	goto	i1l121
	opt asmopt_on

	line	346
	
i1l128:	
	line	347
	
i1l121:	
	return
	opt stack 0
GLOBAL	__end_of_detect_key
	__end_of_detect_key:
	signat	_detect_key,89
	global	_clock_increase

;; *************** function _clock_increase *****************
;; Defined at:
;;		line 250 in file "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	250
global __ptext6
__ptext6:	;psect for function _clock_increase
psect	text6
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	250
	global	__size_of_clock_increase
	__size_of_clock_increase	equ	__end_of_clock_increase-_clock_increase
	
_clock_increase:	
;incstack = 0
	opt	stack 6
; Regs used in _clock_increase: [wreg+status,2+status,0]
	line	252
	
i1l1098:	
;main.c: 252: seconds++;
	movlw	low(01h)
	movwf	(??_clock_increase+0)+0
	movf	(??_clock_increase+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_seconds),f	;volatile
	line	253
;main.c: 253: if(seconds == 60)
		movlw	60
	xorwf	((_seconds)),w	;volatile
	btfss	status,2
	goto	u87_21
	goto	u87_20
u87_21:
	goto	i1l113
u87_20:
	line	255
	
i1l1100:	
;main.c: 254: {
;main.c: 255: seconds = 0;
	clrf	(_seconds)	;volatile
	line	256
	
i1l1102:	
;main.c: 256: minutes++;
	movlw	low(01h)
	movwf	(??_clock_increase+0)+0
	movf	(??_clock_increase+0)+0,w
	addwf	(_minutes),f	;volatile
	line	257
	
i1l1104:	
;main.c: 257: if(minutes == 60)
		movlw	60
	xorwf	((_minutes)),w	;volatile
	btfss	status,2
	goto	u88_21
	goto	u88_20
u88_21:
	goto	i1l113
u88_20:
	line	259
	
i1l1106:	
;main.c: 258: {
;main.c: 259: minutes = 0;
	clrf	(_minutes)	;volatile
	line	260
	
i1l1108:	
;main.c: 260: hours++;
	movlw	low(01h)
	movwf	(??_clock_increase+0)+0
	movf	(??_clock_increase+0)+0,w
	addwf	(_hours),f	;volatile
	line	261
	
i1l1110:	
;main.c: 261: if(hours == 24)
		movlw	24
	xorwf	((_hours)),w	;volatile
	btfss	status,2
	goto	u89_21
	goto	u89_20
u89_21:
	goto	i1l113
u89_20:
	line	263
	
i1l1112:	
;main.c: 262: {
;main.c: 263: hours = 0;
	clrf	(_hours)	;volatile
	goto	i1l113
	line	264
	
i1l112:	
	goto	i1l113
	line	265
	
i1l111:	
	goto	i1l113
	line	266
	
i1l110:	
	line	267
	
i1l113:	
	return
	opt stack 0
GLOBAL	__end_of_clock_increase
	__end_of_clock_increase:
	signat	_clock_increase,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
