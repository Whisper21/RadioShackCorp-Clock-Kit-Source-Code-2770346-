# RadioShackCorp-Clock-Kit-Source-Code-2770346-
This repository has the modified source code to add 24 hr format, timing tweak, and mm:ss / hh:mm display.

/*H**********************************************************************
* FILENAME :        main.c             DESIGN REF: RS-2770346
*
* DESCRIPTION :
*       Radio Shack Clock using a 4 digit seven segment display
*       Based on the 2770346_Clock_Kit_Source_Code
*  
* 
* Micro Controller:
*       PIC 16F690I/P      
*
* Compiler:
*       XC8 v1.38 (free mode) 
*
* IDE:
*       MPLAB v8.92
*
* Programmer: 
*       MPLAB ICD 2 Puck
*
* Changes
* NOTES :
*       Added functions:
*       Software Rev
*                1. 24 hour format display 
*                2. HH:MM <---> MM:SS display choice
*       No Hardware Modification
*
*       
*
* AUTHOR :    Radio Shack        START DATE :     Jan 2016
*
* 
*
* REV NO  VERSION DATE    WHO               DETAIL
* A.01  A.01.04 21Dec16   Mike Manteo      Added 2 functions noted above
*
* 
*
*H*/

Output HEX file included.

This addresses the timing tweak and adds the the two features noted above.
No hardware changes! A 32.768KHz crystal would be ideal.

The RC timer components will have enough variance with in their spec to warrant married firmware.
My values and effects are noted in the comments of the source code. This may work for some folks.

Two weeks running, I have lost just 2 seconds with this unit.


The jumper still blanks the display when removed.

The Single button interface has these properties now:

1) single quick push toggles from hh:mm <---> mm:ss.
2) push and hold will force the display to hh:mm  and allow time setting denoted by blinking colon.

One can sync this clock by applying power when reference time reaches 59 seconds.

manteo
