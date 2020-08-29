/*	Name: Martin Xu
	Section: 1
	Side: B
	Date: 5/24/19

	Port bits/Digital I/O: P3.6 and P3.7
		(for example: 1.0,1.1)

	File name: hw4.c
	Description: Basic template for Homework 4
		This program uses two digital inputs
*/

//-----------------------------------------------------------------------------
// Header Files
//-----------------------------------------------------------------------------

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);	// digial port initialization 
void Check_Inputs(void);	// output after first character press

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
//
// edit sbit commands as appropriate to your assignment

__sbit __at 0xB6 pin6; //port 3.6
__sbit __at 0xB7 pin7; //port 3.7


//***************
void main(void)  		// 
{
	Sys_Init();      	// System Initialization
	putchar(' ');    
	Port_Init();		// port initialization function
	while(1)
	{
		printf("Press a key to check which buttons are pushed \r\n");
		getchar();
		Check_Inputs();
	}
}

//***************
// configure P2MDOUT or P3MDOUT
//
void Port_Init(void)
{
	P3MDOUT &= 0x3F; //pins 6 and 7 open drain
	P3 |= ~0x3F; //set pins 6 and 7 to high impedance
}

//***************
// edit the arguments to the if/else if statements, as needed
// use sbit labels to output digital signals after first character press
//
void Check_Inputs(void)
{
	if (pin6 == 0 && pin7 == 0)			// both buttons pushed
	{
		printf("Both buttons pushed \r\n");
	}
	else if (pin6 == 0 || pin7 == 0)		// one button pushed
	{
		printf("One button pushed \r\n");
	}
	else if (pin6 == 1 && pin7 == 1)		// no buttons pushed
	{
		printf("No buttons pushed \r\n");
	}

}
