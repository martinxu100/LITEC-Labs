/*	Names: Martin Xu
	Section: 1
	Side: B
	Date: 5/28/19

	Size of counter: 13bit (indicated your assigned counter size, delete the others)

	Trigger: SYSCLK (indicate your assigned trigger, delete the other)

	File name: hw5.c
	Description: Basic template for Homework 5
		This program waits 3 seconds after a keyboard input and then prints the
  		number of overflows that occurred.
*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Timer_Init(void);     // Initialize Timer 0 
void Interrupt_Init(void); //Initialize interrupts
void Timer0_ISR(void) __interrupt 1;

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------

unsigned char input;
long counts;    	//replace xxxxx with the variable type, uncomment as well


//***************
void main(void)
{
	Sys_Init();      // System Initialization
	putchar(' ');    
	Interrupt_Init();
	Timer_Init();    // Initialize Timer 0 

    while (1) /* the following loop waits until a key is pressed on the
			     keyboard and prints the number of overflows that occur
				 in two time intervals */
    {
		printf("Hit any key on the keyboard to start \r\n");
		input = getchar();

		// add code to clear the high and low byte of Timer0 and start Timer0
		TL0 = 0;
		TH0 = 0;
		TR0 = 1;
		
		counts = 0;
		// add code for a 2.5 second delay
		while (counts < 6750);

		printf("2.5 seconds have passed. \r\n");  	//print that the time has elapsed

		printf("Number of overflows = %1d. \r\n", counts);	// print number of overflows using count variable
				
		counts = 0;
		// add code for a 3 second delay
		while (counts < 8100);

		printf("3 seconds have passed. \r\n");  	//print that the time has elapsed

		printf("Number of overflows = %1d. \r\n", counts);	// print number of overflows using count variable
		
    }
}

//***************

void Interrupt_Init(void)
{
	ET0 = 1;      // enable Timer0 Interrupt request using sbit variable 
	IE |= 0x80;       // enable global interrupts using bit masking
}
//***************
void Timer_Init(void)
{
	
	CKCON |= 0x08;  // Timer0 uses SYSCLK or SYSCLK/12
	TMOD &= 0xF0;   // clear the 4 least significant bits
	TMOD |= 0x00;   // Timer0 mode setting
	TR0 = 0;         // Stop Timer0
	TL0 = 0;         // Clear low byte of register T0
	TH0 = 0;         // Clear high byte of register T0

}


//***************
void Timer0_ISR(void) __interrupt 1
{
	counts ++;
}

