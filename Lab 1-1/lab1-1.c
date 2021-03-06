/*  Name: Martin Xu
    Section: 1
    Date: 5/23/19
    File name: Lab 1-1
    Program description: Digital I/O
*/
/*
  This program is incomplete. Part of the code is provided as an example. You 
  need to modify the code, adding code to satisfy the stated requirements. Blank 
  lines have also been provided at some locations, indicating an incomplete line.
*/
#include <c8051_SDCC.h> // include files. This file is available online on LMS
#include <stdio.h>

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);  // Initialize ports for input and output
void Set_outputs(void);// function to set output bits

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
__sbit __at 0xB6 LED0; // LED0, associated with Port 3, Pin 6
__sbit __at 0xB3 BILED1; // BILED1, associated with Port 3, Pin 3
__sbit __at 0xB4 BILED2; // BILED2, associated with Port 3, Pin 4
__sbit __at 0xB7 BZ; // Buzzer, associated with Port 3, Pin 7
__sbit __at 0xA0 SS;   // Slide switch, associated with Port 2, Pin 0
__sbit __at 0xB0 PB1;  // Push button 1, associated with Port 3, Pin 0
__sbit __at 0xB1 PB2; // Push button 2, associated with Port 3, Pin 1


//***************
// Main program

void main(void)
{
    Sys_Init();        // System Initialization
    putchar(' ');      // the quote fonts may not copy correctly into SiLabs IDE
    Port_Init();       // Initialize ports 2 and 3 

    while (1)          // infinite loop 
    {
        // main program manages the function calls

        Set_outputs();
    }
}


//***************
/* Port_Init - Initializes Ports 2 and 3 in the desired modes for input and output */

void Port_Init(void)
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



//***************
// Set outputs:
//    The following code is incomplete, lighting an LED depending 
//    on the state of the slide switch.



void Set_outputs(void)
{
    if (SS == 1)        // if Slide Switch is off
    {
		LED0 = 1;     // turn off LED, BiLED red, and buzzer
		BILED2 = 1;
		BZ = 1;
        BILED1 = 0;   // BiLED is green 
        printf("\r Slide switch is off, BiLED is green. \n");
	}
    else            // if Slide Switch is on
	{
		LED0 = 1;    // turn everything off, no pushbuttons are pushed
		BILED1 = 1;
		BILED2 = 1;
		BZ = 1;
		if (PB1 == 0 && PB2 == 1)	// if only pushbutton 1 is pushed
		{
			LED0 = 1;
			BILED1 = 1;
			BILED2 = 1;
			BZ = 0; 	// Buzzer is on
			printf("\r Slide switch is on, only Pushbutton 1 is pushed. Buzzer is on. \n");
		}
		if (PB1 == 1 &&	 PB2 == 0)	// if only pushbutton 2 is pushed
		{
			LED0 = 0; 	// LED is on
			BILED1 = 1;
			BILED2 = 1;
			BZ = 1;
			printf("\r Slide switch is on, only Pushbutton 2 is pushed. LED is on. \n");
		}
		if (PB1 == 0 && PB2 == 0)	// if both pushbuttons are pushed
		{
			LED0 = 1;
			BILED1 = 1;
			BILED2 = 0; 	// BiLED is red
			BZ = 1;
			printf("\r Slide switch is on, both Pushbuttons are pushed. BiLED is red. \n");
		} 
	 }
}

