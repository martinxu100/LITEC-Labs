/*  Names: Martin Xu
    Section: 1
    Date: 5/28/19
    File name: Lab 1-2
    Description: Timer Overflow Interrupts
*/
/*
  This program demonstrates the use of T0 interrupts. The code will count the
  number of T0 timer overflows that occur while a slide switch is in the ON position.
*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>
#include <stdlib.h>

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);      // Initialize ports for input and output
void Timer_Init(void);     // Initialize Timer 0 
void Interrupt_Init(void); //Initialize interrupts
void Timer0_ISR(void) __interrupt 1;
unsigned char random(void);

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
__sbit __at 0xB6 LED0; // LED0, associated with Port 3, Pin 6
__sbit __at 0xB5 LED1; // LED1, associated with Port 3, Pin 5
__sbit __at 0xB3 BILED1; // BILED1, associated with Port 3, Pin 3, Green
__sbit __at 0xB4 BILED2; // BILED2, associated with Port 3, Pin 4, Red
__sbit __at 0xB7 BZ; // Buzzer, associated with Port 3, Pin 7
__sbit __at 0xA0 SS;   // Slide switch, associated with Port 2, Pin 0
__sbit __at 0xB0 PB1;  // Push button 1, associated with Port 3, Pin 0
__sbit __at 0xB1 PB2; // Push button 2, associated with Port 3, Pin 1

unsigned int Counts = 0;
unsigned int old;
unsigned int randomnum;
unsigned int correct;
unsigned int turns = 0;
unsigned int correctresponse = 0;

//***************
void main(void)
{
    Sys_Init();      // System Initialization
    Port_Init();     // Initialize ports 2 and 3 
    Interrupt_Init();
    Timer_Init();    // Initialize Timer 0 

    putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
    printf("Start\r\n");

    while (1) /* the following loop prints the number of overflows that occur
                while the pushbutton is pressed, the BILED is lit while the
                button is pressed */
    {
        BILED1 = 1;  // Turn OFF the BILED
        BILED2 = 1;
		LED0 = 1;
		LED1 = 1;

        while (SS == 0) // while SS0 is ON (high)
		{
			while (turns <=10)
			{
       			TR0 = 1;     // Timer 0 enabled
				Counts = 0;
        		randomnum = rand()%3;
				while (randomnum == old && turns != 0)
				{
					randomnum = rand()%3;
				}

				if (randomnum == 0)
				{
					LED0 = 0;
					LED1 = 1;
				}

				if (randomnum == 1)
				{
					LED0 = 1;
					LED1 = 0;
				}

				if (randomnum == 2)
				{
					LED0 = 0;
					LED1 = 0;
				}
		
				while (Counts < 337);

				if (randomnum == 0 && PB1 == 0 && PB2 == 1)
				{
					 correct = 1;
				}

				if (randomnum == 0 && PB1 == 0 && PB2 == 1)
				{
					 correct = 1;
				}

				if (randomnum == 1 && PB1 == 1 && PB2 == 0)
				{
					 correct = 1;
				}

				if (randomnum == 2 && PB1 == 0 && PB2 == 0)
				{
					 correct = 1;
				}

				if (correct == 1)
				{
					BILED1 = 0;
					BILED2 = 1;
					correctresponse++;
				}
				else
				{
					BILED1 = 1;
					BILED2 = 0;
				}	
			
				turns++;
				old = randomnum;
			}

			printf("Number of correct responses: %d", correctresponse);

		}


    }
}

//***************
void Port_Init(void)
    // use Port configuration from Lab 1-1
    // adding the output bit for LED1
{
    // Port 3
  P3MDOUT |= 0xD8; // set Port 3 output pins to push-pull mode
  P3MDOUT &= 0xFC; // set Port 3 input pins to open drain mode
  P3 = ~0xFC; // set Port 3 input pins to high impedance state

    // Port 2
    // configure Port 2
  P2MDOUT &= 0xFE; // set Port 2 input pin to open drain mode
  P2 = ~0xFE; // set Port 2 input pin to high impedance state
}


void Interrupt_Init(void)
{
    IE |= 0x82;      // enable Timer0 Interrupt request (by masking)
}
//***************
void Timer_Init(void)
{
    CKCON |= 0x08;  // Timer0 uses SYSCLK as source
    TMOD &= 0xF0;   // clear the 4 least significant bits
    TMOD |= 0x01;   // Timer0 in mode 1
    TR0 = 0;           // Stop Timer0
    TMR0 = 0;           // Clear high & low byte of T0

}


//***************
void Timer0_ISR(void) __interrupt 1
{
// add interrupt code here, in this lab, the code will increment the 
// global variable 'counts'
	Counts++;
}

/******************************************************************************/
/*
  This function demonstrates how to obtain a random integer between 0 and 1 in
  C. You may modify and use this code to get a random integer between 0 and N.
*/

/*return a random integer number between 0 and 1*/
unsigned char random(void)
{
    return (rand()%3);  // rand returns a random number between 0 and 32767.
                        // the mod operation (%) returns the remainder of 
                        // dividing this value by 2 and returns the result,
                        // a value of either 0 or 1.
}
