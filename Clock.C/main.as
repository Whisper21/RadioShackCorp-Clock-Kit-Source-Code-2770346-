	global	?___awdiv
	global	?___awmod
	global	ISR@cnt1
	global	ISR@cnt2
	global	ISR@timming_cnt
	global	ISR@x
	global	_ANSEL
	global	_CM1CON0
	global	_CM2CON0
	global	_INTCONbits
	global	_ISR
	signat	_ISR,89
	FNCALL	_ISR,_clock_increase
	FNCALL	_ISR,_detect_key
	FNCALL	_ISR,_flash_digital
	global	_OPTION_REG
	global	_OSCCON
	global	_PORTA
	global	_PORTB
	global	_PORTC
	global	_TMR0
	global	_TRISA
	global	_TRISB
	global	_TRISC
	global	_WPUB
	global	__CFG_BOREN$OFF
__CFG_BOREN$OFF	equ	0
	global	__CFG_CP$OFF
__CFG_CP$OFF	equ	0
	global	__CFG_CPD$OFF
__CFG_CPD$OFF	equ	0
	global	__CFG_FCMEN$OFF
__CFG_FCMEN$OFF	equ	0
	global	__CFG_FOSC$INTRCIO
__CFG_FOSC$INTRCIO	equ	0
	global	__CFG_IESO$OFF
__CFG_IESO$OFF	equ	0
	global	__CFG_MCLRE$ON
__CFG_MCLRE$ON	equ	0
	global	__CFG_PWRTE$ON
__CFG_PWRTE$ON	equ	0
	global	__CFG_WDTE$OFF
__CFG_WDTE$OFF	equ	0
	global	___awdiv
	signat	___awdiv,8314
	global	___awdiv@counter
	global	___awdiv@dividend
	global	___awdiv@divisor
	global	___awdiv@quotient
	global	___awdiv@sign
	global	___awmod
	signat	___awmod,8314
	global	___awmod@counter
	global	___awmod@dividend
	global	___awmod@divisor
	global	___awmod@sign
	global	___latbits
___latbits	equ	1
	global	__end_of_ISR
	global	__end_of___awdiv
	global	__end_of___awmod
	global	__end_of__initialization
	global	__end_of__stringtab
	global	__end_of_clock_increase
	global	__end_of_detect_key
	global	__end_of_flash_digital
	global	__end_of_main
	global	__end_of_seg_tab
	global	__initialization
	global	__pbssBANK0
	global	__pbssCOMMON
	global	__pcstackBANK0
	global	__pcstackCOMMON
	global	__pdataBANK0
	global	__pdataCOMMON
	global	__pidataBANK0
	global	__pidataCOMMON
	global	__pintentry
	global	__pmaintext
	global	__pstrings
	global	__ptext1
	global	__ptext2
	global	__ptext3
	global	__ptext4
	global	__ptext5
	global	__ptext6
	global	__size_of_ISR
__size_of_ISR	equ	__end_of_ISR-_ISR
	global	__size_of___awdiv
__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	global	__size_of___awmod
__size_of___awmod	equ	__end_of___awmod-___awmod
	global	__size_of_clock_increase
__size_of_clock_increase	equ	__end_of_clock_increase-_clock_increase
	global	__size_of_detect_key
__size_of_detect_key	equ	__end_of_detect_key-_detect_key
	global	__size_of_flash_digital
__size_of_flash_digital	equ	__end_of_flash_digital-_flash_digital
	global	__size_of_main
__size_of_main	equ	__end_of_main-_main
	global	__stringbase
	global	__stringtab
	global	_clock_increase
	signat	_clock_increase,89
	global	_detect_key
	signat	_detect_key,89
	global	_digital
	global	_flash_digital
	signat	_flash_digital,89
	FNCALL	_flash_digital,___awdiv
	FNCALL	_flash_digital,___awmod
	global	_flash_dots
	global	_hours
	global	_isPowerSaveMode
	global	_key_delay_time
	global	_key_value
	global	_main
	signat	_main,89
	FNROOT	_main
	global	_minutes
	global	_no_key_time
	global	_power_save_timeout
	global	_seconds
	global	_seg_tab
	global	_show_dots
	global	_sysstate
	global	btemp
	global	clear_ram0
	global	detect_key@counter
	global	detect_key@key
	global	detect_key@keystate
	global	end_of_initialization
	global	flash_digital@counter
	global	flash_digital@curseg
	global	flash_digital@show_dots
	global	interrupt_function
	global	intlevel1
	FNROOT	intlevel1
	FNCALL	intlevel1,_ISR
	global	ltemp
	global	ltemp0
	global	ltemp1
	global	ltemp2
	global	ltemp3
	global	saved_w
	global	start
	global	start_initialization
	global	ttemp
	global	ttemp0
	global	ttemp1
	global	ttemp2
	global	ttemp3
	global	ttemp4
	global	wtemp
	global	wtemp0
	global	wtemp1
	global	wtemp2
	global	wtemp3
	global	wtemp4
	global	wtemp5
	global	wtemp6
	processor	16F690
	opt	pw 120
	opt	lm
	psect	idataCOMMON,global,class=CODE,delta=2
	psect	idataBANK0,global,class=CODE,delta=2
	psect	strings,global,class=STRING,delta=2
	psect	cinit,global,class=CODE,merge=1,delta=2
	psect	bssCOMMON,global,class=COMMON,space=1
	psect	dataCOMMON,global,class=COMMON,space=1
	psect	bssBANK0,global,class=BANK0,space=1
	psect	dataBANK0,global,class=BANK0,space=1
	psect	clrtext,global,class=CODE,delta=2
	psect	cstackCOMMON,global,class=COMMON,space=1
	psect	cstackBANK0,global,class=BANK0,space=1
	psect	maintext,global,class=CODE,split=1,delta=2
	psect	text1,local,class=CODE,merge=1,delta=2
	psect	intentry,global,class=CODE,delta=2
	psect	text2,local,class=CODE,merge=1,delta=2
	psect	text3,local,class=CODE,merge=1,delta=2
	psect	text4,local,class=CODE,merge=1,delta=2
	psect	text5,local,class=CODE,merge=1,delta=2
	psect	text6,local,class=CODE,merge=1,delta=2
	dabs	1,0x7E,2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic16f690.h"
	line	51
	;# 
	line	57
	;# 
	line	63
	;# 
	line	69
	;# 
	line	156
	;# 
	line	162
	;# 
	line	211
	;# 
	line	249
	;# 
	line	310
	;# 
	line	316
	;# 
	line	377
	;# 
	line	446
	;# 
	line	484
	;# 
	line	490
	;# 
	line	496
	;# 
	line	502
	;# 
	line	572
	;# 
	line	578
	;# 
	line	648
	;# 
	line	654
	;# 
	line	723
	;# 
	line	729
	;# 
	line	735
	;# 
	line	741
	;# 
	line	822
	;# 
	line	883
	;# 
	line	889
	;# 
	line	895
	;# 
	line	964
	;# 
	line	1045
	;# 
	line	1051
	;# 
	line	1145
	;# 
	line	1214
	;# 
	line	1263
	;# 
	line	1301
	;# 
	line	1362
	;# 
	line	1431
	;# 
	line	1469
	;# 
	line	1507
	;# 
	line	1571
	;# 
	line	1622
	;# 
	line	1628
	;# 
	line	1634
	;# 
	line	1639
	;# 
	line	1755
	;# 
	line	1923
	;# 
	line	1928
	;# 
	line	2076
	;# 
	line	2081
	;# 
	line	2249
	;# 
	line	2301
	;# 
	line	2371
	;# 
	line	2432
	;# 
	line	2493
	;# 
	line	2544
	;# 
	line	2550
	;# 
	line	2591
	;# 
	line	2596
	;# 
	line	2602
	;# 
	line	2608
	;# 
	line	2614
	;# 
	line	2620
	;# 
	line	2667
	;# 
	line	2705
	;# 
	line	2774
	;# 
	line	2838
	;# 
	line	2902
	;# 
	line	2940
	;# 
	line	3001
	;# 
	line	3038
	;# 
	line	3082
	;# 
	line	3088
	;# 
	line	3131
	;# 

	psect	idataCOMMON
__pidataCOMMON:	
	opt stack 0
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	31

;initializer for _hours
	retlw	1

	psect	idataBANK0
__pidataBANK0:	
	opt stack 0
	line	24

;initializer for _key_delay_time
	retlw	200
	line	20

;initializer for _show_dots
	retlw	1
	line	127

;initializer for flash_digital@show_dots
	retlw	1

	psect	strings
__pstrings:	
	opt stack 0
stringtab:	
__stringtab:	
	opt stack 0
stringcode:	
;	String table - string pointers are 1 byte each

stringdir:	
	movlw	high stringdir
	movwf	10
	movf	4,w
	incf	4,f
	addwf	2,f
__stringbase:	
	opt stack 0
	retlw	0
__end_of__stringtab:	
	opt stack 0
	line	18
_seg_tab:	
	opt stack 0
	retlw	192
	retlw	249
	retlw	164
	retlw	176
	retlw	153
	retlw	146
	retlw	130
	retlw	248
	retlw	128
	retlw	144
__end_of_seg_tab:	
	opt stack 0
_INTCONbits	set	11
_PORTA	set	5
_PORTB	set	6
_PORTC	set	7
_TMR0	set	1
_OPTION_REG	set	129
_OSCCON	set	143
_TRISA	set	133
_TRISB	set	134
_TRISC	set	135
_ANSEL	set	286
_CM1CON0	set	281
_CM2CON0	set	282
_WPUB	set	277

; #config settings


	psect	cinit
	file	"main.as"
	line	328
start_initialization:	
	opt stack 0
	line	331
__initialization:	
	opt stack 0
	line	422

; Initialize objects allocated to BANK0
	fcall	__pidataBANK0	;fetch initializer
	line	423
	movwf	__pdataBANK0& (0+127)
	line	424
	fcall	__pidataBANK0+1	;fetch initializer
	line	425
	movwf	(__pdataBANK0+1)& (0+127)
	line	426
	fcall	__pidataBANK0+2	;fetch initializer
	line	427
	movwf	(__pdataBANK0+2)& (0+127)
	line	431

; Initialize objects allocated to COMMON
	fcall	__pidataCOMMON	;fetch initializer
	line	432
	movwf	__pdataCOMMON& (0+127)
	line	451

; Clear objects allocated to BANK0
	bcf	3,7	;select IRP bank0
	line	452
	movlw	low __pbssBANK0
	line	453
	movwf	4
	line	454
	movlw	low (__pbssBANK0+23)
	line	455
	fcall	clear_ram0
	line	458

; Clear objects allocated to COMMON
	clrf	__pbssCOMMON& (0+127)
	line	464
end_of_initialization:	
;End of C runtime variable initialization code

	opt stack 0
	line	465
__end_of__initialization:	
	opt stack 0
	line	466
	clrf	3
	line	467
	ljmp	_main	;jump to C main() function

	psect	bssCOMMON
	line	334
__pbssCOMMON:	
	opt stack 0
	line	335
_key_value:	
	opt stack 0
	line	336
	ds	1

	psect	dataCOMMON
	line	340
__pdataCOMMON:	
	opt stack 0
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	31
_hours:	
	opt stack 0
	ds	1

	psect	bssBANK0
__pbssBANK0:	
	opt stack 0
_digital:	
	opt stack 0
	ds	4
ISR@timming_cnt:	
	opt stack 0
	ds	2
_no_key_time:	
	opt stack 0
	ds	2
_power_save_timeout:	
	opt stack 0
	ds	2
flash_digital@counter:	
	opt stack 0
	ds	2
ISR@cnt1:	
	opt stack 0
	ds	1
ISR@cnt2:	
	opt stack 0
	ds	1
ISR@x:	
	opt stack 0
	ds	1
_flash_dots:	
	opt stack 0
	ds	1
_isPowerSaveMode:	
	opt stack 0
	ds	1
_minutes:	
	opt stack 0
	ds	1
_seconds:	
	opt stack 0
	ds	1
_sysstate:	
	opt stack 0
	ds	1
detect_key@counter:	
	opt stack 0
	ds	1
detect_key@keystate:	
	opt stack 0
	ds	1
flash_digital@curseg:	
	opt stack 0
	ds	1

	psect	dataBANK0
__pdataBANK0:	
	opt stack 0
	line	24
_key_delay_time:	
	opt stack 0
	ds	1
	line	20
_show_dots:	
	opt stack 0
	ds	1
	line	127
flash_digital@show_dots:	
	opt stack 0
	ds	1

	psect	clrtext
	file	"main.as"
	line	438
clear_ram0:	
;	Called with FSR containing the base address, and
;	W with the last address+1

	opt stack 0
	line	439
	clrwdt	;clear the watchdog before getting into this loop
	line	440
clrloop0:	
	line	441
	clrf	0	;clear RAM location pointed to by FSR
	line	442
	incf	4,f	;increment pointer
	line	443
	xorwf	4,w	;XOR with final address
	line	444
	btfsc	3,2	;have we reached the end yet?
	line	445
	retlw	0	;all done for this memory range, return
	line	446
	xorwf	4,w	;XOR again to restore value
	line	447
	goto	clrloop0	;do the next byte

	psect	cstackCOMMON
	line	470
__pcstackCOMMON:	
	opt stack 0
	line	471
?_main:	
	line	472
?_flash_digital:	
; 1 bytes @ 0x0

	line	473
?_clock_increase:	
; 1 bytes @ 0x0

	line	474
??_clock_increase:	
; 1 bytes @ 0x0

	line	475
?_detect_key:	
; 1 bytes @ 0x0

	line	476
??_detect_key:	
; 1 bytes @ 0x0

	line	477
?_ISR:	
; 1 bytes @ 0x0

	line	479
?___awdiv:	
; 1 bytes @ 0x0

	opt stack 0
	line	481
?___awmod:	
; 2 bytes @ 0x0

	opt stack 0
	line	483
___awdiv@divisor:	
; 2 bytes @ 0x0

	opt stack 0
	line	485
___awmod@divisor:	
; 2 bytes @ 0x0

	opt stack 0
	line	486

; 2 bytes @ 0x0
	ds	1
	line	488
detect_key@key:	
	opt stack 0
	line	489

; 1 bytes @ 0x1
	ds	1
	line	491
___awdiv@dividend:	
	opt stack 0
	line	493
___awmod@dividend:	
; 2 bytes @ 0x2

	opt stack 0
	line	494

; 2 bytes @ 0x2
	ds	2
	line	495
??___awdiv:	
	line	496
??___awmod:	
; 1 bytes @ 0x4

	line	497

; 1 bytes @ 0x4
	ds	1
	line	499
___awdiv@counter:	
	opt stack 0
	line	501
___awmod@counter:	
; 1 bytes @ 0x5

	opt stack 0
	line	502

; 1 bytes @ 0x5
	ds	1
	line	504
___awdiv@sign:	
	opt stack 0
	line	506
___awmod@sign:	
; 1 bytes @ 0x6

	opt stack 0
	line	507

; 1 bytes @ 0x6
	ds	1
	line	509
___awdiv@quotient:	
	opt stack 0
	line	510

; 2 bytes @ 0x7
	ds	2
	line	511
??_flash_digital:	
	line	512

; 1 bytes @ 0x9
	ds	3

	psect	cstackBANK0
	line	515
__pcstackBANK0:	
	opt stack 0
	line	516
??_ISR:	
	line	517

; 1 bytes @ 0x0
	ds	5
	line	518
??_main:	
	line	519

; 1 bytes @ 0x5
	ds	1

	psect	maintext
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	36
__pmaintext:	
;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;
;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
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

	opt stack 0

;psect for function _main

_main:	
	opt stack 5
	line	41

;main.c: 41: OSCCON = 0b01110000;

;incstack = 0
; Regs used in _main: [wreg+status,2+status,0]
	movlw	112
	bsf	3,5	;RP0=1, select bank1
	bcf	3,6	;RP1=0, select bank1
	movwf	15	;volatile
	line	46

;main.c: 46: OPTION_REG=0b00000011;

;main.c: 42: while((OSCCON & (1<<2) == 0));
	movlw	3
	movwf	1	;volatile
	line	53

;main.c: 53: TMR0 = 256 - 125;
	movlw	131
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	movwf	1	;volatile
	line	54

;main.c: 54: INTCONbits.GIE=1;
	bsf	11,7	;volatile
	line	55

;main.c: 55: INTCONbits.T0IE=1;
	bsf	11,5	;volatile
	line	56

;main.c: 56: INTCONbits.T0IF=0;
	bcf	11,2	;volatile
	line	59

;main.c: 59: ANSEL = 0;
	bcf	3,5	;RP0=0, select bank2
	bsf	3,6	;RP1=1, select bank2
	clrf	30	;volatile
	line	60

;main.c: 60: CM1CON0 = 0;
	clrf	25	;volatile
	line	61

;main.c: 61: CM2CON0 = 0;
	clrf	26	;volatile
	line	64

;main.c: 64: TRISA |= ((1<<2) | (1<<3));
	movlw	12
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	movwf	??_main
	movf	??_main,w
	bsf	3,5	;RP0=1, select bank1
	bcf	3,6	;RP1=0, select bank1
	iorwf	5,f	;volatile
	line	65

;main.c: 65: TRISA &=~ ((1<<0) | (1<<1) | (1<<4) | (1<<5));
	movlw	204
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	movwf	??_main
	movf	??_main,w
	bsf	3,5	;RP0=1, select bank1
	bcf	3,6	;RP1=0, select bank1
	andwf	5,f	;volatile
	line	66

;main.c: 66: TRISC = 0x00;
	clrf	7	;volatile
	line	67

;main.c: 67: PORTA &= ~((1<<0) | (1<<1) | (1<<4) | (1<<5));
	movlw	204
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	movwf	??_main
	movf	??_main,w
	andwf	5,f	;volatile
	line	68

;main.c: 68: PORTC = 0xFF;
	movlw	255
	movwf	7	;volatile
	line	69

;main.c: 69: TRISB |= (1<<7);
	bsf	3,5	;RP0=1, select bank1
	bcf	3,6	;RP1=0, select bank1
	bsf	6,7	;volatile
	line	70

;main.c: 70: WPUB |= (1<<7);
	bcf	3,5	;RP0=0, select bank2
	bsf	3,6	;RP1=1, select bank2
	bsf	21,7	;volatile
	line	73
l60:	
;main.c: 73: while(1)

	line	75

;main.c: 74: {
;main.c: 75: if(sysstate == NormalMode)
	bcf	3,6	;RP1=0, select bank0
	movf	_sysstate,w
	btfss	3,2
	goto	l1192
	line	77

;main.c: 76: {
;main.c: 77: if(key_value == 1)
	decf	_key_value,w	;volatile
	btfss	3,2
	goto	l1184
	line	79

;main.c: 78: {
;main.c: 79: key_value = 0;
	clrf	_key_value	;volatile
	line	82
l1184:	

;main.c: 81: }
;main.c: 82: if(key_value == 2)
	movlw	2
	xorwf	_key_value,w	;volatile
	btfss	3,2
	goto	l1212
	line	84

;main.c: 83: {
;main.c: 84: sysstate = Setting;
	clrf	_sysstate
	incf	_sysstate,f
	line	85

;main.c: 85: flash_dots = 1;
	movlw	1
	movwf	??_main
	movf	??_main,w
	movwf	_flash_dots	;volatile
	line	86
l64:	
;main.c: 86: while((PORTA & (1<<2)) == 0);

	btfss	5,2	;volatile
	goto	l64
	line	87

;main.c: 87: key_value = 0;
	clrf	_key_value	;volatile
	line	89

;main.c: 88: }
;main.c: 89: }
	goto	l1212
	line	92
l1192:	

;main.c: 90: else
;main.c: 91: {
;main.c: 92: if((key_value == 1) || (key_value == 2))
	decf	_key_value,w	;volatile
	btfsc	3,2
	goto	l1196
	movlw	2
	xorwf	_key_value,w	;volatile
	btfss	3,2
	goto	l68
	line	94
l1196:	

;main.c: 93: {
;main.c: 94: key_value = 0;
	clrf	_key_value	;volatile
	line	97

;main.c: 97: minutes++;
	movlw	1
	movwf	??_main
	movf	??_main,w
	addwf	_minutes,f	;volatile
	line	98

;main.c: 98: if(minutes == 60)
	movlw	60
	xorwf	_minutes,w	;volatile
	btfss	3,2
	goto	l68
	line	100

;main.c: 99: {
;main.c: 100: minutes = 0;
	clrf	_minutes	;volatile
	line	101

;main.c: 101: hours++;
	movlw	1
	movwf	??_main
	movf	??_main,w
	addwf	_hours,f	;volatile
	line	102

;main.c: 102: if(hours == 13)
	movlw	13
	xorwf	_hours,w	;volatile
	btfss	3,2
	goto	l68
	line	104

;main.c: 103: {
;main.c: 104: hours = 1;
	movlw	1
	movwf	??_main
	movf	??_main,w
	movwf	_hours	;volatile
	line	107
l68:	
	line	109

;main.c: 105: }
;main.c: 106: }
;main.c: 107: }
;main.c: 109: if(no_key_time > 500)
	movlw	1
	subwf	_no_key_time+1,w	;volatile
	movlw	245
	btfsc	3,2
	subwf	_no_key_time,w	;volatile
	btfss	3,0
	goto	l1212
	line	111

;main.c: 110: {
;main.c: 111: sysstate = NormalMode;
	clrf	_sysstate
	line	112

;main.c: 112: flash_dots = 0;
	clrf	_flash_dots	;volatile
	line	116
l1212:	

;main.c: 113: }
;main.c: 114: }
;main.c: 116: if((isPowerSaveMode == 1) && ((PORTB & (1<<7)) == 0))
	decf	_isPowerSaveMode,w	;volatile
	btfsc	3,2
	btfsc	6,7	;volatile
	goto	l60
	line	118

;main.c: 117: {
;main.c: 118: isPowerSaveMode = 0;
	clrf	_isPowerSaveMode	;volatile
	line	119

;main.c: 119: power_save_timeout = 0;
	clrf	_power_save_timeout	;volatile
	clrf	_power_save_timeout+1	;volatile
	line	73
	goto	l60
	line	122
__end_of_main:	
	opt stack 0

	psect	text1
	line	289
__ptext1:	
;; *************** function _ISR *****************
;; Defined at:
;;		line 289 in file "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
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

	opt stack 0

;psect for function _ISR

_ISR:	
	opt stack 5
	line	295

;main.c: 291: static char cnt1 = 0, cnt2 = 0;
;main.c: 292: static int timming_cnt = 0;
;main.c: 293: static char x = 0;
;main.c: 295: if (INTCONbits.T0IF)
	btfss	11,2	;volatile
	goto	i1l156
	line	297

;main.c: 296: {
;main.c: 297: INTCONbits.T0IF = 0;
	bcf	11,2	;volatile
	line	298

;main.c: 298: TMR0 = 256 - 125;
	movlw	131
	movwf	1	;volatile
	line	300

;main.c: 300: if(x == 0)
	movf	ISR@x,w
	btfss	3,2
	goto	i1l1228
	line	302

;main.c: 301: {
;main.c: 302: PORTB |= (1<<7);
	bsf	6,7	;volatile
	line	303

;main.c: 303: x = 1;
	clrf	ISR@x
	incf	ISR@x,f
	line	304

;main.c: 304: }
	goto	i1l1232
	line	307
i1l1228:	

;main.c: 305: else
;main.c: 306: {
;main.c: 307: PORTB &= ~(1<<7);
	movlw	127
	movwf	??_ISR
	movf	??_ISR,w
	andwf	6,f	;volatile
	line	308

;main.c: 308: x = 0;
	clrf	ISR@x
	line	311
i1l1232:	

;main.c: 309: }
;main.c: 311: cnt1++;
	movlw	1
	movwf	??_ISR
	movf	??_ISR,w
	addwf	ISR@cnt1,f
	line	312

;main.c: 312: if (cnt1 >= 5)
	movlw	5
	subwf	ISR@cnt1,w
	btfss	3,0
	goto	i1l1240
	line	314

;main.c: 313: {
;main.c: 314: cnt1 = 0;
	clrf	ISR@cnt1
	line	315

;main.c: 315: flash_digital();
	fcall	_flash_digital
	line	318
i1l1240:	

;main.c: 316: }
;main.c: 318: cnt2++;
	movlw	1
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	movwf	??_ISR
	movf	??_ISR,w
	addwf	ISR@cnt2,f
	line	319

;main.c: 319: if (cnt2 >= 10)
	movlw	10
	subwf	ISR@cnt2,w
	btfss	3,0
	goto	i1l1248
	line	321

;main.c: 320: {
;main.c: 321: cnt2 = 0;
	clrf	ISR@cnt2
	line	322

;main.c: 322: detect_key();
	fcall	_detect_key
	line	326
i1l1248:	

;main.c: 323: }
;main.c: 326: timming_cnt++;
	movlw	1
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	addwf	ISR@timming_cnt,f
	btfsc	3,0
	incf	ISR@timming_cnt+1,f
	movlw	0
	addwf	ISR@timming_cnt+1,f
	line	327

;main.c: 327: if(timming_cnt >= 1000)
	movf	ISR@timming_cnt+1,w
	xorlw	128
	movwf	127
	movlw	131
	subwf	127,w
	btfss	3,2
	goto	u109_25
	movlw	232
	subwf	ISR@timming_cnt,w
u109_25:	
	btfss	3,0
	goto	i1l1256
	line	329

;main.c: 328: {
;main.c: 329: timming_cnt = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	clrf	ISR@timming_cnt
	clrf	ISR@timming_cnt+1
	line	330

;main.c: 330: clock_increase();
	fcall	_clock_increase
	line	333
i1l1256:	

;main.c: 331: }
;main.c: 333: if(power_save_timeout < 3000)
	movlw	11
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	subwf	_power_save_timeout+1,w	;volatile
	movlw	184
	btfsc	3,2
	subwf	_power_save_timeout,w	;volatile
	btfsc	3,0
	goto	i1l1260
	line	335

;main.c: 334: {
;main.c: 335: power_save_timeout++;
	movlw	1
	addwf	_power_save_timeout,f	;volatile
	btfsc	3,0
	incf	_power_save_timeout+1,f	;volatile
	movlw	0
	addwf	_power_save_timeout+1,f	;volatile
	line	336

;main.c: 336: }
	goto	i1l156
	line	337
i1l1260:	

;main.c: 337: else if((sysstate == NormalMode) && ((PORTB & (1<<7)) != 0))
	movf	_sysstate,w
	btfsc	3,2
	btfss	6,7	;volatile
	goto	i1l156
	line	339

;main.c: 338: {
;main.c: 339: isPowerSaveMode = 1;
	movlw	1
	movwf	??_ISR
	movf	??_ISR,w
	movwf	_isPowerSaveMode	;volatile
	line	340

;main.c: 340: power_save_timeout = 0;
	clrf	_power_save_timeout	;volatile
	clrf	_power_save_timeout+1	;volatile
	line	343
i1l156:	
	movf	??_ISR+4,w
	movwf	127
	movf	??_ISR+3,w
	movwf	10
	movf	??_ISR+2,w
	movwf	4
	swapf	(??_ISR+1)^0,w
	movwf	3
	swapf	126,f
	swapf	126,w
	retfie
__end_of_ISR:	
	opt stack 0

	psect	intentry
	line	289
__pintentry:	
;incstack = 0
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]

	opt stack 5
interrupt_function:	
	opt stack 5
saved_w	set	btemp
	movwf	btemp
	swapf	3,w
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	movwf	??_ISR+1
	movf	4,w
	movwf	??_ISR+2
	movf	10,w
	movwf	??_ISR+3
	movf	btemp+1,w
	movwf	??_ISR+4
	ljmp	_ISR

	psect	text2
	line	125
__ptext2:	
;; *************** function _flash_digital *****************
;; Defined at:
;;		line 125 in file "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
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

	opt stack 0

;psect for function _flash_digital

_flash_digital:	
	opt stack 5
	line	131

;main.c: 127: static char curseg = 0;
;main.c: 128: static char show_dots = 1;
;main.c: 129: static int counter = 0;
;main.c: 131: digital[3] = hours / 10;

;incstack = 0
; Regs used in _flash_digital: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movlw	10
	movwf	___awdiv@divisor
	movlw	0
	movwf	___awdiv@divisor+1
	movf	_hours,w	;volatile
	movwf	??_flash_digital
	clrf	??_flash_digital+1
	movf	??_flash_digital,w
	movwf	___awdiv@dividend
	movf	??_flash_digital+1,w
	movwf	___awdiv@dividend+1
	fcall	___awdiv
	movf	?___awdiv,w
	movwf	??_flash_digital+2
	movf	??_flash_digital+2,w
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	movwf	_digital+3	;volatile
	line	132

;main.c: 132: digital[2] = hours % 10;
	movlw	10
	movwf	___awmod@divisor
	movlw	0
	movwf	___awmod@divisor+1
	movf	_hours,w	;volatile
	movwf	??_flash_digital
	clrf	??_flash_digital+1
	movf	??_flash_digital,w
	movwf	___awmod@dividend
	movf	??_flash_digital+1,w
	movwf	___awmod@dividend+1
	fcall	___awmod
	movf	?___awmod,w
	movwf	??_flash_digital+2
	movf	??_flash_digital+2,w
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	movwf	_digital+2	;volatile
	line	133

;main.c: 133: digital[1] = minutes / 10;
	movlw	10
	movwf	___awdiv@divisor
	movlw	0
	movwf	___awdiv@divisor+1
	movf	_minutes,w	;volatile
	movwf	??_flash_digital
	clrf	??_flash_digital+1
	movf	??_flash_digital,w
	movwf	___awdiv@dividend
	movf	??_flash_digital+1,w
	movwf	___awdiv@dividend+1
	fcall	___awdiv
	movf	?___awdiv,w
	movwf	??_flash_digital+2
	movf	??_flash_digital+2,w
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	movwf	_digital+1	;volatile
	line	134

;main.c: 134: digital[0] = minutes % 10;
	movlw	10
	movwf	___awmod@divisor
	movlw	0
	movwf	___awmod@divisor+1
	movf	_minutes,w	;volatile
	movwf	??_flash_digital
	clrf	??_flash_digital+1
	movf	??_flash_digital,w
	movwf	___awmod@dividend
	movf	??_flash_digital+1,w
	movwf	___awmod@dividend+1
	fcall	___awmod
	movf	?___awmod,w
	movwf	??_flash_digital+2
	movf	??_flash_digital+2,w
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	movwf	_digital	;volatile
	line	137

;main.c: 137: if(flash_dots != 0)
	movf	_flash_dots,w	;volatile
	btfsc	3,2
	goto	i1l1040
	line	139

;main.c: 138: {
;main.c: 139: counter++;
	movlw	1
	addwf	flash_digital@counter,f
	btfsc	3,0
	incf	flash_digital@counter+1,f
	movlw	0
	addwf	flash_digital@counter+1,f
	line	140

;main.c: 140: if(counter == 100)
	movlw	100
	xorwf	flash_digital@counter,w
	iorwf	flash_digital@counter+1,w
	btfsc	3,2
	line	142

;main.c: 141: {
;main.c: 142: show_dots = 0;
	clrf	flash_digital@show_dots
	line	144

;main.c: 143: }
;main.c: 144: if(counter == 200)
	movlw	200
	xorwf	flash_digital@counter,w
	iorwf	flash_digital@counter+1,w
	btfss	3,2
	goto	i1l1044
	line	152
i1l1040:	
;main.c: 148: }
;main.c: 149: }

;main.c: 147: show_dots = 1;

;main.c: 145: {
;main.c: 146: counter = 0;


;main.c: 150: else
;main.c: 151: {
;main.c: 152: counter = 0;
	clrf	flash_digital@counter
	clrf	flash_digital@counter+1
	line	153

;main.c: 153: show_dots = 1;
	clrf	flash_digital@show_dots
	incf	flash_digital@show_dots,f
	line	156
i1l1044:	

;main.c: 154: }
;main.c: 156: PORTA &= ~((1<<0) | (1<<1) | (1<<4) | (1<<5));
	movlw	204
	movwf	??_flash_digital
	movf	??_flash_digital,w
	andwf	5,f	;volatile
	line	158

;main.c: 158: if(isPowerSaveMode == 0)
	movf	_isPowerSaveMode,w	;volatile
	btfsc	3,2
	goto	i1l1076
	goto	i1l1078
	line	163
i1l1050:	
;main.c: 161: {
;main.c: 162: case 0:

;main.c: 159: {
;main.c: 160: switch (curseg)


;main.c: 163: if(show_dots != 0) PORTC = seg_tab[digital[0]] & ~(1<<7);
	movf	flash_digital@show_dots,w
	btfsc	3,2
	goto	i1l1054
	movf	_digital,w
	addlw	low ((_seg_tab-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
	andlw	127
	goto	L1
	line	164
i1l1054:	

;main.c: 164: else PORTC = seg_tab[digital[0]];
	movf	_digital,w
	addlw	low ((_seg_tab-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
L1:	
	movwf	7	;volatile
	line	165

;main.c: 165: PORTA |= (1<<0);
	bsf	5,0	;volatile
	line	166

;main.c: 166: break;
	goto	i1l1078
	line	168
i1l1058:	
;main.c: 167: case 1:


;main.c: 168: if(show_dots != 0) PORTC = seg_tab[digital[1]] & ~(1<<7);
	movf	flash_digital@show_dots,w
	btfsc	3,2
	goto	i1l1062
	movf	_digital+1,w	;volatile
	addlw	low ((_seg_tab-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
	andlw	127
	goto	L2
	line	169
i1l1062:	

;main.c: 169: else PORTC = seg_tab[digital[1]];
	movf	_digital+1,w	;volatile
	addlw	low ((_seg_tab-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
L2:	
	movwf	7	;volatile
	line	170

;main.c: 170: PORTA |= (1<<1);
	bsf	5,1	;volatile
	line	171

;main.c: 171: break;
	goto	i1l1078
	line	173
i1l1066:	
;main.c: 172: case 2:


;main.c: 173: PORTC = seg_tab[digital[2]];
	movf	_digital+2,w	;volatile
	addlw	low ((_seg_tab-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
	movwf	7	;volatile
	line	174

;main.c: 174: PORTA |= (1<<4);
	bsf	5,4	;volatile
	line	175

;main.c: 175: break;
	goto	i1l1078
	line	177
i1l1070:	
;main.c: 176: case 3:


;main.c: 177: PORTC = seg_tab[digital[3]];
	movf	_digital+3,w	;volatile
	addlw	low ((_seg_tab-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
	movwf	7	;volatile
	line	178

;main.c: 178: PORTA |= (1<<5);
	bsf	5,5	;volatile
	line	182

;main.c: 182: }

;main.c: 181: break;

;main.c: 180: default:

;main.c: 179: break;
	goto	i1l1078
	line	160
i1l1076:	
	movf	flash_digital@curseg,w

; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           15     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte
	xorlw	0	; case 0
	btfsc	3,2
	goto	i1l1050
	xorlw	1	; case 1
	btfsc	3,2
	goto	i1l1058
	xorlw	3	; case 2
	btfsc	3,2
	goto	i1l1066
	xorlw	1	; case 3
	btfsc	3,2
	goto	i1l1070
	goto	i1l1078
	line	185
i1l1078:	

;main.c: 183: }
;main.c: 185: if(++curseg == 4)
	movlw	1
	movwf	??_flash_digital
	movf	??_flash_digital,w
	addwf	flash_digital@curseg,f
	movlw	4
	xorwf	flash_digital@curseg,w
	btfss	3,2
	return
	line	186

;main.c: 186: curseg = 0;
	clrf	flash_digital@curseg
	return
	line	187
__end_of_flash_digital:	
	opt stack 0

	psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\awmod.c"
	line	6
__ptext3:	
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

	opt stack 0

;psect for function ___awmod

___awmod:	
	opt stack 5
	line	13

;incstack = 0
; Regs used in ___awmod: [wreg+status,2+status,0]
	clrf	___awmod@sign
	line	14
	btfss	___awmod@dividend+1,7
	goto	i1l994
	line	15
	comf	___awmod@dividend,f
	comf	___awmod@dividend+1,f
	incf	___awmod@dividend,f
	btfsc	3,2
	incf	___awmod@dividend+1,f
	line	16
	clrf	___awmod@sign
	incf	___awmod@sign,f
	line	18
i1l994:	
	btfss	___awmod@divisor+1,7
	goto	i1l998
	line	19
	comf	___awmod@divisor,f
	comf	___awmod@divisor+1,f
	incf	___awmod@divisor,f
	btfsc	3,2
	incf	___awmod@divisor+1,f
	line	20
i1l998:	
	movf	___awmod@divisor,w
	iorwf	___awmod@divisor+1,w
	btfsc	3,2
	goto	i1l1016
	line	21
	clrf	___awmod@counter
	incf	___awmod@counter,f
	line	22
i1l1006:	
	btfsc	___awmod@divisor+1,7
	goto	i1l1008
	line	23
	movlw	1
u70_25:	
	bcf	3,0
	rlf	___awmod@divisor,f
	rlf	___awmod@divisor+1,f
	addlw	-1
	btfss	3,2
	goto	u70_25
	line	24
	movlw	1
	movwf	??___awmod
	movf	??___awmod,w
	addwf	___awmod@counter,f
	line	22
	goto	i1l1006
	line	27
i1l1008:	
	movf	___awmod@divisor+1,w
	subwf	___awmod@dividend+1,w
	btfss	3,2
	goto	u72_25
	movf	___awmod@divisor,w
	subwf	___awmod@dividend,w
u72_25:	
	btfss	3,0
	goto	i1l1012
	line	28
	movf	___awmod@divisor,w
	subwf	___awmod@dividend,f
	movf	___awmod@divisor+1,w
	btfss	3,0
	decf	___awmod@dividend+1,f
	subwf	___awmod@dividend+1,f
	line	29
i1l1012:	
	movlw	1
u73_25:	
	bcf	3,0
	rrf	___awmod@divisor+1,f
	rrf	___awmod@divisor,f
	addlw	-1
	btfss	3,2
	goto	u73_25
	line	30
	movlw	1
	subwf	___awmod@counter,f
	btfss	3,2
	goto	i1l1008
	line	32
i1l1016:	
	movf	___awmod@sign,w
	btfsc	3,2
	goto	i1l1020
	line	33
	comf	___awmod@dividend,f
	comf	___awmod@dividend+1,f
	incf	___awmod@dividend,f
	btfsc	3,2
	incf	___awmod@dividend+1,f
	line	34
i1l1020:	
	movf	___awmod@dividend+1,w
	movwf	?___awmod+1
	movf	___awmod@dividend,w
	movwf	?___awmod
	return
	line	35
__end_of___awmod:	
	opt stack 0

	psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\awdiv.c"
	line	6
__ptext4:	
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

	opt stack 0

;psect for function ___awdiv

___awdiv:	
	opt stack 5
	line	14

;incstack = 0
; Regs used in ___awdiv: [wreg+status,2+status,0]
	clrf	___awdiv@sign
	line	15
	btfss	___awdiv@divisor+1,7
	goto	i1l950
	line	16
	comf	___awdiv@divisor,f
	comf	___awdiv@divisor+1,f
	incf	___awdiv@divisor,f
	btfsc	3,2
	incf	___awdiv@divisor+1,f
	line	17
	clrf	___awdiv@sign
	incf	___awdiv@sign,f
	line	19
i1l950:	
	btfss	___awdiv@dividend+1,7
	goto	i1l956
	line	20
	comf	___awdiv@dividend,f
	comf	___awdiv@dividend+1,f
	incf	___awdiv@dividend,f
	btfsc	3,2
	incf	___awdiv@dividend+1,f
	line	21
	movlw	1
	movwf	??___awdiv
	movf	??___awdiv,w
	xorwf	___awdiv@sign,f
	line	23
i1l956:	
	clrf	___awdiv@quotient
	clrf	___awdiv@quotient+1
	line	24
	movf	___awdiv@divisor,w
	iorwf	___awdiv@divisor+1,w
	btfsc	3,2
	goto	i1l978
	line	25
	clrf	___awdiv@counter
	incf	___awdiv@counter,f
	line	26
i1l966:	
	btfsc	___awdiv@divisor+1,7
	goto	i1l968
	line	27
	movlw	1
u60_25:	
	bcf	3,0
	rlf	___awdiv@divisor,f
	rlf	___awdiv@divisor+1,f
	addlw	-1
	btfss	3,2
	goto	u60_25
	line	28
	movlw	1
	movwf	??___awdiv
	movf	??___awdiv,w
	addwf	___awdiv@counter,f
	line	26
	goto	i1l966
	line	31
i1l968:	
	movlw	1
u62_25:	
	bcf	3,0
	rlf	___awdiv@quotient,f
	rlf	___awdiv@quotient+1,f
	addlw	-1
	btfss	3,2
	goto	u62_25
	line	32
	movf	___awdiv@divisor+1,w
	subwf	___awdiv@dividend+1,w
	btfss	3,2
	goto	u63_25
	movf	___awdiv@divisor,w
	subwf	___awdiv@dividend,w
u63_25:	
	btfss	3,0
	goto	i1l974
	line	33
	movf	___awdiv@divisor,w
	subwf	___awdiv@dividend,f
	movf	___awdiv@divisor+1,w
	btfss	3,0
	decf	___awdiv@dividend+1,f
	subwf	___awdiv@dividend+1,f
	line	34
	bsf	___awdiv@quotient,0
	line	36
i1l974:	
	movlw	1
u64_25:	
	bcf	3,0
	rrf	___awdiv@divisor+1,f
	rrf	___awdiv@divisor,f
	addlw	-1
	btfss	3,2
	goto	u64_25
	line	37
	movlw	1
	subwf	___awdiv@counter,f
	btfss	3,2
	goto	i1l968
	line	39
i1l978:	
	movf	___awdiv@sign,w
	btfsc	3,2
	goto	i1l982
	line	40
	comf	___awdiv@quotient,f
	comf	___awdiv@quotient+1,f
	incf	___awdiv@quotient,f
	btfsc	3,2
	incf	___awdiv@quotient+1,f
	line	41
i1l982:	
	movf	___awdiv@quotient+1,w
	movwf	?___awdiv+1
	movf	___awdiv@quotient,w
	movwf	?___awdiv
	return
	line	42
__end_of___awdiv:	
	opt stack 0

	psect	text5
	file	"C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
	line	210
__ptext5:	
;; *************** function _detect_key *****************
;; Defined at:
;;		line 210 in file "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
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

	opt stack 0

;psect for function _detect_key

_detect_key:	
	opt stack 6
	line	216

;main.c: 212: static char keystate = 0;
;main.c: 213: static char counter = 0;
;main.c: 214: char key;
;main.c: 216: if (key_value != 0)

;incstack = 0
; Regs used in _detect_key: [wreg-fsr0h+status,2+status,0]
	movf	_key_value,w	;volatile
	btfss	3,2
	return
	line	221

;main.c: 219: }
;main.c: 221: key = PORTA & (1<<2);

;main.c: 217: {
;main.c: 218: return;
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	movf	5,w	;volatile
	andlw	4
	movwf	??_detect_key
	movf	??_detect_key,w
	movwf	detect_key@key
	line	223

;main.c: 223: if(key != 0)
	movf	detect_key@key,w
	btfsc	3,2
	goto	i1l1110
	line	225

;main.c: 224: {
;main.c: 225: if(no_key_time < 520) no_key_time++;
	movlw	2
	subwf	_no_key_time+1,w	;volatile
	movlw	8
	btfsc	3,2
	subwf	_no_key_time,w	;volatile
	btfsc	3,0
	goto	i1l1148
	movlw	1
	addwf	_no_key_time,f	;volatile
	btfsc	3,0
	incf	_no_key_time+1,f	;volatile
	movlw	0
	addwf	_no_key_time+1,f	;volatile
	line	226

;main.c: 226: }
	goto	i1l1148
	line	229
i1l1110:	

;main.c: 227: else
;main.c: 228: {
;main.c: 229: no_key_time = 0;
	clrf	_no_key_time	;volatile
	clrf	_no_key_time+1	;volatile
	line	232

;main.c: 230: }
;main.c: 232: switch (keystate)
	goto	i1l1148
	line	235
i1l1112:	
;main.c: 233: {
;main.c: 234: case 0:


;main.c: 235: if (key == 0)
	movf	detect_key@key,w
	btfss	3,2
	return
	line	237

;main.c: 236: {
;main.c: 237: keystate = 1;
	clrf	detect_key@keystate
	incf	detect_key@keystate,f
	line	239

;main.c: 238: }
;main.c: 239: break;
	return
	line	241
i1l1116:	
;main.c: 240: case 1:


;main.c: 241: if (key == 0)
	movf	detect_key@key,w
	btfss	3,2
	goto	i1l1124
	line	243

;main.c: 242: {
;main.c: 243: keystate = 2;
	movlw	2
	movwf	??_detect_key
	movf	??_detect_key,w
	movwf	detect_key@keystate
	line	244

;main.c: 244: key_value = 1;
	movlw	1
	movwf	??_detect_key
	movf	??_detect_key,w
	movwf	_key_value	;volatile
	line	245

;main.c: 245: isPowerSaveMode = 0;
	clrf	_isPowerSaveMode	;volatile
	line	246

;main.c: 246: power_save_timeout = 0;
	clrf	_power_save_timeout	;volatile
	clrf	_power_save_timeout+1	;volatile
	line	247

;main.c: 247: }
	return
	line	250
i1l1124:	

;main.c: 248: else
;main.c: 249: {
;main.c: 250: keystate = 0;
	clrf	detect_key@keystate
	line	252

;main.c: 251: }
;main.c: 252: break;
	return
	line	254
i1l1126:	
;main.c: 253: case 2:


;main.c: 254: if (key == 0)
	movf	detect_key@key,w
	btfss	3,2
	goto	i1l1138
	line	256

;main.c: 255: {
;main.c: 256: if(counter < key_delay_time)
	movf	_key_delay_time,w	;volatile
	subwf	detect_key@counter,w
	btfsc	3,0
	goto	i1l1132
	line	258

;main.c: 257: {
;main.c: 258: counter++;
	movlw	1
	movwf	??_detect_key
	movf	??_detect_key,w
	addwf	detect_key@counter,f
	line	259

;main.c: 259: }
	return
	line	262
i1l1132:	

;main.c: 260: else
;main.c: 261: {
;main.c: 262: key_value = 2;
	movlw	2
	movwf	??_detect_key
	movf	??_detect_key,w
	movwf	_key_value	;volatile
	line	263

;main.c: 263: isPowerSaveMode = 0;
	clrf	_isPowerSaveMode	;volatile
	line	264

;main.c: 264: power_save_timeout = 0;
	clrf	_power_save_timeout	;volatile
	clrf	_power_save_timeout+1	;volatile
	line	266

;main.c: 265: }
;main.c: 266: }
	return
	line	269
i1l1138:	

;main.c: 267: else
;main.c: 268: {
;main.c: 269: keystate = 3;
	movlw	3
	movwf	??_detect_key
	movf	??_detect_key,w
	movwf	detect_key@keystate
	line	271

;main.c: 270: }
;main.c: 271: break;
	return
	line	273
i1l1140:	
;main.c: 272: case 3:


;main.c: 273: if (key != 0)
	movf	detect_key@key,w
	btfsc	3,2
	goto	i1l1144
	line	275

;main.c: 274: {
;main.c: 275: keystate = 0;
	clrf	detect_key@keystate
	line	276

;main.c: 276: counter = 0;
	clrf	detect_key@counter
	line	277

;main.c: 277: }
	return
	line	280
i1l1144:	

;main.c: 278: else
;main.c: 279: {
;main.c: 280: keystate = 2;
	movlw	2
	movwf	??_detect_key
	movf	??_detect_key,w
	movwf	detect_key@keystate
	line	285

;main.c: 285: }

;main.c: 284: break;

;main.c: 283: default:

;main.c: 281: }
;main.c: 282: break;
	return
	line	232
i1l1148:	
	movf	detect_key@keystate,w

; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           15     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte
	xorlw	0	; case 0
	btfsc	3,2
	goto	i1l1112
	xorlw	1	; case 1
	btfsc	3,2
	goto	i1l1116
	xorlw	3	; case 2
	btfsc	3,2
	goto	i1l1126
	xorlw	1	; case 3
	btfsc	3,2
	goto	i1l1140
	goto	i1l117
	line	286
i1l117:	
	return
__end_of_detect_key:	
	opt stack 0

	psect	text6
	line	190
__ptext6:	
;; *************** function _clock_increase *****************
;; Defined at:
;;		line 190 in file "C:\Users\Mike\Downloads\2770346_Clock_Kit_Source_Code\Clock.X\main.c"
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

	opt stack 0

;psect for function _clock_increase

_clock_increase:	
	opt stack 6
	line	192

;main.c: 192: seconds++;

;incstack = 0
; Regs used in _clock_increase: [wreg+status,2+status,0]
	movlw	1
	movwf	??_clock_increase
	movf	??_clock_increase,w
	bcf	3,5	;RP0=0, select bank0
	bcf	3,6	;RP1=0, select bank0
	addwf	_seconds,f	;volatile
	line	193

;main.c: 193: if(seconds == 60)
	movlw	60
	xorwf	_seconds,w	;volatile
	btfss	3,2
	return
	line	195

;main.c: 194: {
;main.c: 195: seconds = 0;
	clrf	_seconds	;volatile
	line	196

;main.c: 196: minutes++;
	movlw	1
	movwf	??_clock_increase
	movf	??_clock_increase,w
	addwf	_minutes,f	;volatile
	line	197

;main.c: 197: if(minutes == 60)
	movlw	60
	xorwf	_minutes,w	;volatile
	btfss	3,2
	return
	line	199

;main.c: 198: {
;main.c: 199: minutes = 0;
	clrf	_minutes	;volatile
	line	200

;main.c: 200: hours++;
	movlw	1
	movwf	??_clock_increase
	movf	??_clock_increase,w
	addwf	_hours,f	;volatile
	line	201

;main.c: 201: if(hours == 13)
	movlw	13
	xorwf	_hours,w	;volatile
	btfss	3,2
	return
	line	203

;main.c: 202: {
;main.c: 203: hours = 1;
	movlw	1
	movwf	??_clock_increase
	movf	??_clock_increase,w
	movwf	_hours	;volatile
	line	205
	return
	line	207
__end_of_clock_increase:	
	opt stack 0
btemp	set	126	;btemp
wtemp	set	126
wtemp0	set	126
wtemp1	set	128
wtemp2	set	130
wtemp3	set	132
wtemp4	set	134
wtemp5	set	136
wtemp6	set	127
ttemp	set	126
ttemp0	set	126
ttemp1	set	129
ttemp2	set	132
ttemp3	set	135
ttemp4	set	127
ltemp	set	126
ltemp0	set	126
ltemp1	set	130
ltemp2	set	134
ltemp3	set	128

;!
;!Data Sizes:
;!    Strings     0
;!    Constant    10
;!    Data        4
;!    BSS         24
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80      6      32
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
;! (1) _ISR                                                  5     5      0    1131
;!                                              0 BANK0      5     5      0
;!                     _clock_increase
;!                         _detect_key
;!                      _flash_digital
;! ---------------------------------------------------------------------------------
;! (2) _flash_digital                                        3     3      0    1020
;!                                              9 COMMON     3     3      0
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4     508
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     512
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
;!BANK0               50      6      20       3       40.0%
;!BITBANK0            50      0       0       9        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      C       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      2E      10        0.0%
;!ABS                  0      0      2E       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%
