/*	Name: Martin Xu
	Section: 1
	Side: B
	Date: 5/31/19

	Gain: 2
	Port pin: 1.6

	File name: hw7.c
	Description: Prints input voltage and ADC conversion information

*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void ADC_Init(void);
void Port_Init(void);
unsigned char read_AD_input(unsigned char pin_number);



//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------

unsigned char AD_value;
unsigned char input;

//***************
void main(void)
{
	Sys_Init();      // System Initialization
	putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
	Port_Init(); 
	ADC_Init();
	printf("Start \r\n");
    while (1) 
    {
		printf("enter key to read A/D input \r\n");
		input = getchar();

		// add code necessary to complete the homework

		
		AD_value = read_AD_input (7);			//calls conversion function
		input = ((AD_value / 255.)*2400.);		//computes related voltage

		printf("A/D value: %d. \r\n", AD_value);	// print statement as required by homework
		printf("Input voltage: %d mV. \r\n", input);	// print statement as required by homework

    }
}


//
// add the initialization code needed for the ADC1
//
void ADC_Init(void)
{
	REF0CN = 0x03;		//set VREF to internal pin
	ADC1CN = 0x80;		//set ADC1 to active
	ADC1CF |= 0x02;		//set gain to 2

}
//
// function that completes an A/D conversion
//
unsigned char read_AD_input(unsigned char pin_number)
{
	AMX1SL = pin_number;				//sets pin as analog input
	ADC1CN &= ~0x20;					//clears conversion flag
	ADC1CN |= 0x10;						//checks if conversion is in progress or not
	while ((ADC1CN & 0x20) == 0x00);	//waits until control register says conversion is complete
	return ADC1;						//output conversion value
}

//
// add Port initialization code
//
void Port_Init(void)
{
	P1MDIN &= 0xBF;		//set input pin to open drain
	P1 |= ~0xBF;		//set input pin to high impedance
}

