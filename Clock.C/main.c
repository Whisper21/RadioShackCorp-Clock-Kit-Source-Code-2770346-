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
* 
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

#include <xc.h>                                         //PIC hardware mapping
#define _XTAL_FREQ 8000000                              //Used by the XC8 delay_ms(x) macro
//so Fosc is 8MHz

#define KEY_SHORT_TIME 200
#define POWERSAVE_TIMEOUT 3000

//CONFIGURATION word
//FOSC<2:0>: 100 = INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
__PROG_CONFIG(1, 0x00E4);  //0b0000 0000 1110 0100 page201
__EEPROM_DATA(0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88); // version and timing trim

void flash_digital(void);//7-segment LED digital display update
void detect_key(void);//detect user key
void clock_increase(void);//clock update
void lamp_test(void);//lamp test

//display variables:
const char seg_tab[10] = {0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90};//for common anode segment
volatile char digital[4];//data to be display on every segments
volatile char show_dots = 1;//the flag represent if show the dots, 0: hide, 1: show
volatile char flash_dots = 0;//if flash the dots, 0: do not flash, 1: flash dots
//key variables:
volatile char key_value = 0;//0: no key, 1:single key, 2:continuous key
volatile char key_delay_time = KEY_SHORT_TIME;
volatile unsigned int no_key_time = 0;//the time represent that how much time since release the key
//system variables:
enum SysState{NormalMode, Setting};
enum SysState sysstate = NormalMode;//System State Mechine,
volatile char isPowerSaveMode = 0;//0: normal working, 1: power save mode
volatile unsigned int power_save_timeout = 0;
volatile char hours = 0, minutes = 0, seconds = 0;//hours, minutes and seconds to be display
volatile char mhsm = 0; // added state toggle for HH:MM <---> MM:SS




void main(void)
{
    //System Clock Configuration
    //IRCF<2:0>: 111 = 8MHz
    //SCS: 0 = Clock source defined by FOSC<2:0> of the CONFIG register
    OSCCON = 0b01110000;//page50

    while((OSCCON & (1<<2) == 0));//wait for HFINTOSC stable

    //timer0 clock is Fosc / 4 = 8MHz / 4 = 2MHz
    //after config OPTION_REG, TMR rate is 2MHz / 16 = 125kHz due to PS<2:0> = 011
    OPTION_REG=0b00000011; // Pull-ups on PORTA/PORTB are enabled
                           // Interrupt on falling edge of INT pin
                           // Internal instruction cycle clock (FOSC/4)
                           // Increment on high-to-low transition on T0CKI pin
                           // Prescaler is assigned to the Timer0 module
                           // PS<2:0>: Prescaler Rate Select bits: 011 1:16
    //set flow rate: 125kHz / 125 = 1kHz
    TMR0 = 256 - 125; //reset timer counter
    INTCONbits.GIE=1; // Enable Global interrupt
    INTCONbits.T0IE=1; // Enable Timer0 interrupts
    INTCONbits.T0IF=0; // Clear the interrupt flag bit of timer 0



    ANSEL   = 0;            // Initialize A/D ports off
    CM1CON0 = 0;            // Initialize Comparator 1 off
    CM2CON0 = 0;            // Initialize Comparator 2 off

    //GPIO configuration
    TRISA |= ((1<<2) | (1<<3));                         //configure RA2/3 as input
    TRISA &=~ ((1<<0) | (1<<1) | (1<<4) | (1<<5));      //configure RA0/1/4/5 as output
    TRISC = 0x00;                                       //configure RC as output
    PORTA &= ~((1<<0) | (1<<1) | (1<<4) | (1<<5));      //no segment on
    PORTC = 0xFF;
    TRISB |= (1<<7);                                    //configure RB7 as input
    WPUB |= (1<<7);                                     //enable RB7 internal pull up

 

    //loop
    while(1)
    {
        if(sysstate == NormalMode)//Idle State
        {
            if(key_value == 1)
            {
                key_value = 0;
                mhsm = !mhsm; // short button press toggles HH:MM or MM:SS
                //no action
            }
            if(key_value == 2)//continuous key
            { 
                sysstate = Setting;//switch to setting mode
                flash_dots = 1;//begin to flash dots
                while((PORTA & (1<<2)) == 0);
                key_value = 0;
            }
        }
        else//Setting State`
        {
            if((key_value == 1) || (key_value == 2))
            {   
                mhsm = 0; // Set the display back to HH:MM
                key_value = 0;
                //clock_increase();
                //the key will increase minutes
                minutes++;
                if(minutes == 60)
                {
                    minutes = 0;
                    hours++;
                    if(hours == 24)
                    {
                        hours = 0;
                    }
                }
            }
           
            if(no_key_time > 500)
            {
                sysstate = NormalMode;//return to Idle mode after half a second
                flash_dots = 0;
            }
        }
        
        if((isPowerSaveMode == 1) && ((PORTB & (1<<7)) == 0))//return to normal mode when RB7 goes to 0
        {
            isPowerSaveMode = 0;//enter normal mode
            power_save_timeout = 0;
        }
    }
}



//7-segment LED digital display update 5ms
void flash_digital(void)
{
    static char curseg = 0;//which segment to flash
    static char show_dots = 1;//the flag represent if show the dots, 0: hide, 1: show
    static int counter = 0;

if (mhsm == 0)
{
    digital[3] = hours / 10;
    digital[2] = hours % 10;
    digital[1] = minutes / 10;
    digital[0] = minutes % 10;
}
else
{
    digital[3] = minutes / 10;
    digital[2] = minutes % 10;
    digital[1] = seconds / 10;
    digital[0] = seconds % 10;
}
    
    if(flash_dots != 0)//flash dots
    {
        counter++;
        if(counter == 100)
        {
            show_dots = 0;
        }
        if(counter == 200)
        {
            counter = 0;
            show_dots = 1;
        }
    }
    else//do not flash dots
    {
        counter = 0;
        show_dots = 1;
    }

    PORTA &= ~((1<<0) | (1<<1) | (1<<4) | (1<<5));//shut all segments first

    if(isPowerSaveMode == 0)//normal display
    {
        switch (curseg)//light up the specified one
        {
            case 0:
                if(show_dots != 0) PORTC = seg_tab[digital[0]] & ~(1<<7);//data to be displayed
                else PORTC = seg_tab[digital[0]];//data to be displayed
                PORTA |= (1<<0);//light up one segment
                break;
            case 1:
                if(show_dots != 0) PORTC = seg_tab[digital[1]] & ~(1<<7);//data to be displayed
                else PORTC = seg_tab[digital[1]];//data to be displayed
                PORTA |= (1<<1);//light up one segment
                break;
            case 2:
                PORTC = seg_tab[digital[2]];//data to be displayed
                PORTA |= (1<<4);//light up one segment
                break;
            case 3:
                PORTC = seg_tab[digital[3]];//data to be displayed
                PORTA |= (1<<5);//light up one segment
                break;
            default:
                break;
        }
    }
    
    if(++curseg == 4)
        curseg = 0;
}

//clock update
void clock_increase(void)
{
    seconds++;
    if(seconds == 60)
    {
        seconds = 0;
        minutes++;
        if(minutes == 60)
        {
            minutes = 0;
            hours++;
            if(hours == 24)
            {
                hours = 0;
            }
        }
    }
}

//detect user key 10ms
void detect_key(void)
{
    static char keystate = 0;
    static char counter = 0;
    char key;

    if (key_value != 0)
    {
        return;
    }

    key = PORTA & (1<<2);

    if(key != 0)//no key pressed
    {
        if(no_key_time < 520) no_key_time++;
    }
    else
    {
        no_key_time = 0;//clear the counter
    }
    
    switch (keystate)
    {
        case 0:
            if (key == 0)//first press
            {
                keystate = 1;
               
            }
            break;
        case 1:
            if (key == 0)//press confirmed
            {
                keystate = 2;
                key_value = 1;//generate a single key flag
                isPowerSaveMode = 0;//enter normal mode
                power_save_timeout = 0;
            }
            else//press jitter
            {
                keystate = 0;//back to idle
            }
            break;
        case 2:
            if (key == 0)//keep pressing
            {
                if(counter < key_delay_time)//wait for a moment
                {
                    counter++;
                }
                else
                {
                    key_value = 2;//generate a continuous key
                    isPowerSaveMode = 0;//enter normal mode
                    power_save_timeout = 0;
                }
            }
            else//first released
            {
                keystate = 3;
            }
            break;
        case 3:
            if (key != 0)//release confirmed
            {
                keystate = 0;
                counter = 0;
            }
            else//released jitter
            {
                keystate = 2;//back to last state
            }
            break;
        default:
            break;
    }
}

//timer0 overflow interrupt
void interrupt ISR(void)
{
    static char cnt1 = 0, cnt2 = 0;
    static int timming_cnt = 0;
    static char x = 0;

    if (INTCONbits.T0IF)//confirm it is the timer0 overflow interrupt
    {
        INTCONbits.T0IF = 0;//MUST clear interrupt flag by software
        TMR0 = 256 - 125; //reset timer counter

        if(x == 0)
        {
            PORTB |= (1<<7);
            x = 1;
        }
        else
        {
            PORTB &= ~(1<<7);
            x = 0;
        }

        cnt1++;
        if (cnt1 >= 5)
        {
            cnt1 = 0;
            flash_digital();
        }

        cnt2++;
        if (cnt2 >= 10)
        {
            cnt2 = 0;       
            detect_key();//key check periodically
        }

        // clock counter
        timming_cnt++;

// timing trim should be hard coded and be determined by the particular RC profile each batch exhibits

        if(timming_cnt >= 956)  // this should be the timing tweak for 1 second 1000
        {                       // 1000 is slow 20 mins 24hrs. original 
                                // 925 is darn fast.
                                // 945 is fast 10 mins 24 hrs.
                                // 960 is slow. 4 mins 24 hrs.
                                // 957 is slow. 1 min 24 hrs.
                                // 32.768kHz external clock crystal would be ideal and cheap.
                                
            timming_cnt = 0;
            clock_increase();
        }

        if(power_save_timeout < POWERSAVE_TIMEOUT)
        {
            power_save_timeout++;
        }
        else if((sysstate == NormalMode) && ((PORTB & (1<<7)) != 0))
        {
            isPowerSaveMode = 1;//enter power save mode
            power_save_timeout = 0;
        }
    }
}
