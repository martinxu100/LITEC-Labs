#include <c8051_SDCC.h>
#include <stdio.h>
#include <stdlib.h>
#include <i2c.h>
//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init (void);
void PCA_Init (void);
void Interrupt_Init (void);
void XBR0_Init();
void SMB_Init(void);
void Set_DrivePulsewidth (void);
void PCA_ISR (void) __interrupt 9;
void ReadRanger (void);

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
unsigned int DrivePW_Neutral = 2765;	//1.5 ms
unsigned int DrivePW_Min = 2028; 		//1.1 ms
unsigned int DrivePW_Max = 3502;		//1.9 ms
unsigned int DrivePW;
unsigned int counts;
unsigned int ranger_count;
unsigned int new_range;
unsigned int range;
unsigned char data_array[2];
unsigned char input_data[0] = {0x51};	//setting to get range back in cm
signed int error;
unsigned int desired_distance;
unsigned int actual_distance;
unsigned int temp_servo_pw;
signed int k;
__sbit __at 0xB6 drive_switch;

//-----------------------------------------------------------------------------
// Main Function
//-----------------------------------------------------------------------------
void main(void)
{
    // initialize board
    Sys_Init();
    putchar(' ');
    Port_Init();
    XBR0_Init();
    PCA_Init();
    Interrupt_Init();
	SMB_Init();

    //print beginning message
    
	// set the PCA output to a neutral setting and wait 1 second
    DrivePW = DrivePW_Neutral;
	counts = 0;
	while (counts <= 50);

    while(1)
	{
		if (drive_switch)
		{
			DrivePW = DrivePW_Neutral;
			PCA0CP2 = 0xFFFF - DrivePW;
		}

		if (!drive_switch)
		{
			if (new_range) 									// enough overflows for a new range
			{
				ReadRanger();
				i2c_write_data(0xE0, 0, input_data, 1);		//start ping to get range back in inches
				new_range = 0;
	        	Set_DrivePulsewidth();						//control drive motor
				printf ("distance = %u, pulsewidth = %u \r\n", actual_distance, DrivePW);
			}
		}
	}
}

//-----------------------------------------------------------------------------
void Set_DrivePulsewidth()
{
	desired_distance = 45;
	error = desired_distance - actual_distance;
	k = -21;
	temp_servo_pw = k*error + DrivePW_Neutral;

	if (DrivePW > DrivePW_Max)			//check if greater than pulsewidth maximum
		{
			DrivePW = DrivePW_Max;		//set PW to the maximum value
		}
	else
		{
			DrivePW = temp_servo_pw;
		}

	if (DrivePW < DrivePW_Min)			//check if greater than pulsewidth maximum
		{
			DrivePW = DrivePW_Min;		//set PW to the maximum value
		}
	else
		{
			DrivePW = temp_servo_pw;
		}

    PCA0CP2 = 0xFFFF - DrivePW;
}

//-----------------------------------------------------------------------------
// Port_Init
//-----------------------------------------------------------------------------
// Set up ports for input and output
void Port_Init()
{
	P1MDOUT = 0x02;
	P0MDOUT &= 0xFC;
	P3MDOUT &= 0xBF; 		//Drive slide switch
	P3 = ~0xBF;
}

//-----------------------------------------------------------------------------
// XBR0_Init
//-----------------------------------------------------------------------------
// Set up the crossbar
void XBR0_Init()
{
	XBR0 = 0x27;
}

//-----------------------------------------------------------------------------
// PCA_Init
//-----------------------------------------------------------------------------
// Set up Programmable Counter Array
void PCA_Init(void)
{
	PCA0MD = 0x81;		//SYSCLK/12
	PCA0CPM2 = 0xC2;	//CCM2 in 16 bit compare mode
	PCA0CN = 0x40; 		//enable PCA counter
}

//-----------------------------------------------------------------------------
// Interrupt_Init
//-----------------------------------------------------------------------------
// Set up the PCA overflow interrupts
void Interrupt_Init()
{
	EA = 1;			//enable global interrupts
	EIE1 = 0x08;	//enable PCA interrupt
}

//-----------------------------------------------------------------------------
// PCA_ISR
//-----------------------------------------------------------------------------
// Interrupt Service Routine for Programmable Counter Array Overflow Interrupt
void PCA_ISR (void) __interrupt 9
{
	counts++;
	ranger_count++;
	PCA0 = 28672;			//20ms start value
	CF = 0;
	PCA0CN &= 0x40;

	if (ranger_count == 4)	//80ms wait
	{
		new_range = 1;
		ranger_count = 0;
	}
}

//-----------------------------------------------------------------------------
// SMB_Init
//-----------------------------------------------------------------------------

void SMB_Init(void)
{
	SMB0CR=0x93; 	/* set SCL to 100KHz (actual freq ~ 94,594Hz)*/
	ENSMB=1; 		/* bit 6 of SMB0CN, enable the SMBus */
}

void ReadRanger(void)
{
	unsigned char addr = 0xE0; 										//address 0xE0 is the ultrasonic ranger
	i2c_read_data(addr, 2, data_array, 2);							//read register 2 and 3, echo 1
	actual_distance = (((unsigned int)data_array[0] << 8) | data_array[1]);	//concatenate
}