#include <c8051_SDCC.h>
#include <stdio.h>
#include <stdlib.h>
#include <i2c.h>
#include <math.h>
//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init (void);
void PCA_Init (void);
void Interrupt_Init (void);
void XBR0_Init();
void SMB_Init(void);
void Set_DrivePulsewidth(void);
unsigned char read_AD_input(unsigned char n);
void ADC_Init(void);
void PCA_ISR (void) __interrupt 9;
void ReadRanger(void);
void ReadCompass(void);
void errHeading(void);
void getGain(void);
void getHeading(void);
void setAngle(void);
void errHeading1(void);
void errHeading2(void);
void errHeading3(void);
void printData(void);

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
//Ranger
unsigned char dr_input_data[0] = {0x51};	//setting to get range back in cm
unsigned int distance;
unsigned char ranger_count;
unsigned char new_range;

//Compass and Steering
unsigned int PW_CENTER = 2765; 				//Steering initialization
unsigned int PW_MAX = 3502;					//
unsigned int PW_MIN = 2028;					//
unsigned int PW;
unsigned int counts = 0;					//count variables
unsigned char h_count;						//
unsigned char printcounts;					//
signed int heading;							//current heading
unsigned int new_heading;					//returns if a new heading is gathered
unsigned int desired_heading = 0;			//heading desired by user input
signed int error;							//steering error
signed int pk = 0;							//steering multiplier
signed int dk = 0;
signed int temp_pw;							//intermediary between current pulsewidth and input + equations to determine new pulsewidth

signed int angle = 0;

__sbit __at 0xB0 DS0;						//sbit labels
__sbit __at 0xB1 DS1;
__sbit __at 0xB2 DS2;
__sbit __at 0xB3 DS3;
__sbit __at 0xB4 DS4;
__sbit __at 0xB5 DS5;
__sbit __at 0xB6 DS6;
__sbit __at 0xB7 DS7;
__sbit __at 0x93 BAT;


//-----------------------------------------------------------------------------
// Main Function
//-----------------------------------------------------------------------------
void main(void)
{
    //initialize board
    Sys_Init();
    putchar(' ');
    Port_Init();
    XBR0_Init();
    PCA_Init();
    Interrupt_Init();
	SMB_Init();
	ADC_Init();
	CR = 1;

	while(1)
	{
		if (DS0)		//switch 1 is off
		{
			//get inputs
			getGain();
			getHeading();

			//calibrate side fan angle
			setAngle();

			if (DS7 == 1)		//if switch 8 is on
			{
				angle = 1200;
			}
			else if (DS7 == 0)	//if switch 8 is off
			{
				angle = -1200;
			}
		}

		else if (!DS0)	//switch 1 is on
		{
			ReadRanger();
			ReadCompass();

			counts = 0;
			while (counts <= 1000)
			{
				ReadRanger();
				ReadCompass();
				errHeading1();
				printData();
			}

			while (counts <= 2000)
			{
				ReadRanger();
				ReadCompass();
				errHeading1();
				printData();
			}

			while (counts <= 3000)
			{
				ReadRanger();
				ReadCompass();
				errHeading3();
				printData();
			}
		}	
	}
}


//-----------------------------------------------------------------------------
// Set Side Fan Angle
//-----------------------------------------------------------------------------
void setAngle(void)		//calibrate side fan angle, CEX1
{
}


//-----------------------------------------------------------------------------
// Ranger
//-----------------------------------------------------------------------------
void ReadRanger(void)
{
	if (new_range)
	{
		unsigned char addr = 0xE0; 												//address 0xE0 is the ultrasonic ranger
		unsigned char dr_data_array[2];
		i2c_read_data(addr, 2, dr_data_array, 2);								//read register 2 and 3, echo 1
		distance = (((unsigned int)dr_data_array[0] << 8) | dr_data_array[1]);	//concatenate
	}

	i2c_write_data(0xE0, 0, dr_input_data, 1);		//start ping to get range back in cm
	new_range = 0;
}

//-----------------------------------------------------------------------------
// Compass and Steering
//-----------------------------------------------------------------------------
void ReadCompass(void)
{
	if (new_heading)	
	{
		unsigned char addr = 0xC0;							//the address of the sensor, 0xC0 for the compass
		unsigned char Data[2];								//Data is an array with a length of 2
		i2c_read_data(addr, 2, Data, 2);					//read two byte, starting at reg 2
		heading =(((unsigned int)Data[0] << 8) | Data[1]);	//combine the two values
	}
}

void errHeading1(void)		//all 3 fans, CEX0, CEX2, CEX3
{
	error = desired_heading - heading;		
	if(error > 1800) 								//fixes issue when desired and actual heading are very far away from each other
	{													
		error -= 3600;
	}
	else if(error < -1800) 
	{
		error += 3600;
	}

	//insert equations

	PW = temp_pw;									//saves the equation value as the current pulsewidth
	PCA0CPL0 = 0xFFFF - PW;
	PCA0CPH0 = (0xFFFF - PW) >> 8;
	new_heading = 0;
}

void errHeading2(void)		//side fans, CEX2. CEX3
{
	error = desired_heading - heading;		
	if(error > 1800) 								//fixes issue when desired and actual heading are very far away from each other
	{													
		error -= 3600;
	}
	else if(error < -1800) 
	{
		error += 3600;
	}

	//insert equations

	PW = temp_pw;									//saves the equation value as the current pulsewidth
	PCA0CPL0 = 0xFFFF - PW;
	PCA0CPH0 = (0xFFFF - PW) >> 8;
	new_heading = 0;
}

void errHeading3(void)		//rudder fan, CEX0
{
	error = desired_heading - heading;		
	if(error > 1800) 								//fixes issue when desired and actual heading are very far away from each other
	{													
		error -= 3600;
	}
	else if(error < -1800) 
	{
		error += 3600;
	}

	//insert equations

	PW = temp_pw;									//saves the equation value as the current pulsewidth
	PCA0CPL0 = 0xFFFF - PW;
	PCA0CPH0 = (0xFFFF - PW) >> 8;
	new_heading = 0;
}

//-----------------------------------------------------------------------------
// Get Inputs
//-----------------------------------------------------------------------------
void getGain(void) 
{
	lcd_clear();								//clears lcd screen
	lcd_print("Input Proportional Gain: \r");		//gets input of desired drive gain from keypad and saves to variable
	pk = kpd_input(1);
	printf("Proportional Gain: %d \r\n", pk);
	printcounts = 0;
	while(printcounts < 100);
	lcd_clear(); 						

	lcd_print("Input Derivative Gain: \r");		//gets input of steering from keypad and saves to variable
	dk = kpd_input(1);
	printf("Derivative Gain: %d \r\n", dk);
	printcounts = 0;
	while(printcounts < 100);
	lcd_clear();
}

void getHeading(void)
{
	lcd_clear();									//gets desired heading
	lcd_print("Input Heading: \r");
	desired_heading = kpd_input(1);
	printf("Desired Heading: %d \r\n", desired_heading);
	printcounts = 0;
	while(printcounts < 100);
	lcd_clear();
}


//-----------------------------------------------------------------------------
// Print Data
//-----------------------------------------------------------------------------
void printData(void)								//prints necessary values
{
	printf("Desired Heading   Actual Heading   Ranger Reading   Heading Angle Adjustment   Thrust Pulsewidth   Battery Voltage \r\n");
	printf("%8.3d,   %8.3d,   %8.3d,   %8.3d,   %8.3d,   %8.3d \r\n\n", desired_heading, heading, distance, error, PW, BAT);
}
//-----------------------------------------------------------------------------
// Init
//-----------------------------------------------------------------------------
// Set up ports for input and output
void Port_Init()
{
	P0MDOUT &= 0x02;
	P1MDOUT &= ~0x08;
	P1MDIN |= 0x08;
	P1 = 0x08;
	P3MDOUT &= 0x00;
	P3 = 0xFF;
}

// XBR0_Init
// Set up the crossbar
void XBR0_Init()
{
	XBR0 = 0x25;
}

// PCA_Init
// Set up Programmable Counter Array
void PCA_Init(void)
{
	PCA0MD = 0x81;	
	PCA0CPM0 = 0xC2;	//SYSCLK/12
	PCA0CPM1 = 0xC2;	//CCM2 in 16 bit compare mode
	PCA0CPM2 = 0xC2;
	PCA0CPM3 = 0xC2;
	PCA0CN = 0x40; 		//enable PCA counter
}

// Interrupt_Init
// Set up the PCA overflow interrupts
void Interrupt_Init()
{
	EA = 1;			//enable global interrupts
	EIE1 = 0x08;	//enable PCA interrupt
}

// PCA_ISR
// Interrupt Service Routine for Programmable Counter Array Overflow Interrupt
void PCA_ISR (void) __interrupt 9
{
	counts++;
	ranger_count++;
	h_count++;
	printcounts++;
	PCA0 = 28672;			//20ms start value
	CF = 0;
	PCA0CN &= 0x40;


	if (ranger_count == 4)	//80ms wait
	{
		new_range = 1;
		ranger_count = 0;
	}

	if (h_count == 3) 		//60ms wait
	{
		new_heading = 1;
		h_count = 0;
	}
}

// SMB_Init
void SMB_Init(void)
{
	SMB0CR=0x93; 	/* set SCL to 100KHz (actual freq ~ 94,594Hz)*/
	ENSMB=1; 		/* bit 6 of SMB0CN, enable the SMBus */
}

//ADC_Init
void ADC_Init(void)
{
	
	REF0CN = 0x03;  //set VREF to internal pin not external
	ADC1CN = 0x80;  //set ADC1 to active
	ADC1CF |= 0x01; //set gain to 1
}

unsigned char read_AD_input(unsigned char n)
{
	AMX1SL = n; 			 		 //sets pin P1.n as analog input for ADC1
	ADC1CN &= ~0x20; 				 //clears conversion flag
	ADC1CN |= 0x10; 				 //initiate A/D conversion
	while ((ADC1CN & 0x20) == 0x00); //waits until the control register says conversion is complete
	return ADC1; 				   	 //outputs conversion's value
}
