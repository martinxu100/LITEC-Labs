/* Name: Martin Xu, Daniel Alegria, Ankur Singh
Section: 1
Date: 6/4/19
File name: Lab2
Description: Various modes of LED-based games
*/

#include <c8051_SDCC.h>
#include <stdio.h>
#include <stdlib.h>

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);
void Timer_Init(void);
void Interrupt_Init(void);
void Timer0_ISR(void) __interrupt 1;
void ADC_Init(void);
unsigned char read_AD_input(unsigned char pin_number);
void Mode_1(void);
void Mode_2(void);
void Mode_3(void);
void Mode_3_Run(void);
void randLED(void);
void turnOff(void);
void debounce(void);

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
__sbit __at 0xA0 SS0;     //top switch
__sbit __at 0xA1 LED3;     //left LED
__sbit __at 0xA2 PB3;     //left button
__sbit __at 0xA3 PB2;     //bottom button
__sbit __at 0xA5 SS1;     //bottom switch
__sbit __at 0xB0 PB1;     //right button
__sbit __at 0xB1 PB0;     //top button
__sbit __at 0xB2 LED2;     //bottom LED
__sbit __at 0xB3 BILED1; //green when on
__sbit __at 0xB4 BILED2; //red when on
__sbit __at    0xB5 LED1;     //right LED
__sbit __at 0xB6 LED0;     //top LED
__sbit __at 0x91 POT;

unsigned int counts;
unsigned char ad_result;
unsigned int blink_time;
unsigned int blink_counts;
unsigned int player1press;
unsigned int player2press;
unsigned int Mode2Rounds;
unsigned int instant_lose;
unsigned int startLED;
unsigned int player1turn;
unsigned int player1blink;
unsigned int player2blink;
unsigned int Mode3Rounds;
unsigned int debounce_time;

//***************
void main(void)
{
    Sys_Init();
    putchar(' ');
    Port_Init();
    Interrupt_Init();
    Timer_Init();
    ADC_Init();
    TR0 = 1;

    while (1)
    {
        if (SS0 == 1 && SS1 ==1)
        {
            if (PB0 == 0)
            {
                turnOff();
            }
        }
        if (SS0 == 0 && SS1 == 1)
        {
            if (PB0 == 0)
            {
                Mode_1();
            }
        }

        if (SS0 == 1 && SS1 == 0)
        {
            if (PB0 == 0)
            {
                Mode_2();
            }
        }

        if (SS0 == 0 && SS1 == 0)
        {
            if (PB0 == 0)
            {
                Mode_3();
            }
        }
    }
}

//***************
void Mode_1(void)
{
    turnOff();

    //Sequence 1
    ad_result = read_AD_input(1);                    //read the A/D value on P1.1, results in between 0 and 255
    blink_time = ((ad_result * 3) + 250);             //convert A/D value to between 250 and 1000 ms
    blink_counts = blink_time * .3375;                //convert ms to overflows

    counts = 0;
    LED0 = 0;                                        //turn on top LED
    while (counts < blink_counts);                    //wait until set time
    LED0 = 1;                                        //turn off top LED

    counts = 0;
    LED1 = 0;                                        //turn on right LED
    while (counts < blink_counts);                    //wait until set time
    LED1 = 1;                                        //turn off right LED

    counts = 0;
    LED2 = 0;                                        //turn on bottom LED
    while (counts < blink_counts);                    //wait until set time
    LED2 = 1;                                        //turn off bottom LED

    counts = 0;
    LED3 = 0;                                        //turn on left LED
    while (counts < blink_counts);                    //wait until set time
    LED3 = 1;                                        //turn off left LED

    counts = 0;
    LED0 = 0;                                        //turn on top LED
    while (counts < blink_counts);                    //wait until set time
    LED0 = 1;                                        //turn off top LED

    counts = 0;
    LED3 = 0;                                        //turn on left LED
    while (counts < blink_counts);                    //wait until set time
    LED3 = 1;                                        //turn off left LED

    counts = 0;
    LED2 = 0;                                        //turn on bottom LED
    while (counts < blink_counts);                    //wait until set time
    LED2 = 1;                                        //turn off bottom LED

    counts = 0;
    LED1 = 0;                                        //turn on right LED
    while (counts < blink_counts);                    //wait until set time
    LED1 = 1;                                        //turn off right LED

    // Sequence 2
    ad_result = read_AD_input(1);                    //read the A/D value on P1.1, results in between 0 and 255
    blink_time = ((ad_result * 3) + 250);             //convert A/D value to seconds
    blink_counts = blink_time * .3375;                //convert blink seconds to counts

    counts = 0;
    LED0 = 0;                                        //turn on top LED
    while (counts < blink_counts);                    //wait until set time
    LED0 = 1;                                        //turn off top LED

    counts = 0;
    LED2 = 0;                                        //turn on bottom LED
    while (counts < blink_counts);                    //wait until set time
    LED2 = 1;                                        //turn off bottom LED

    counts = 0;
    LED3 = 0;                                        //turn on left LED
    while (counts < blink_counts);                    //wait until set time
    LED3 = 1;                                        //turn off left LED

    counts = 0;
    LED1 = 0;                                        //turn on right LED
    while (counts < blink_counts);                    //wait until set time
    LED1 = 1;                                        //turn off right LED

    counts = 0;
    LED3 = 0;                                        //turn on left LED
    while (counts < blink_counts);                    //wait until set time
    LED3 = 1;                                        //turn off left LED

    counts = 0;
    LED2 = 0;                                        //turn on bottom LED
    while (counts < blink_counts);                    //wait until set time
    LED2 = 1;                                        //turn off bottom LED

    counts = 0;
    LED0 = 0;                                        //turn on top LED
    while (counts < blink_counts);                    //wait until set time
    LED0 = 1;                                        //turn off top LED

    // Sequence 3
    ad_result = read_AD_input(1);                    //read the A/D value on P1.1, results in between 0 and 255
    blink_time = ((ad_result * 3) + 250);             //convert A/D value to seconds
    blink_counts = blink_time * .3375;                //convert blink seconds to counts
    
    counts = 0;
    LED3 = 0;                                        //turn on left LED
    while (counts < blink_counts);                    //wait until set time
    LED3 = 1;                                        //turn off left LED

    counts = 0;
    LED1 = 0;                                        //turn on right LED
    while (counts < blink_counts);                    //wait until set time
    LED1 = 1;                                        //turn off right LED

    counts = 0;
    LED3 = 0;                                        //turn on left LED
    while (counts < blink_counts);                    //wait until set time
    LED3 = 1;                                        //turn off left LED

    counts = 0;
    LED1 = 0;                                        //turn on right LED
    while (counts < blink_counts);                    //wait until set time
    LED1 = 1;                                        //turn off right LED
}

//***************
void Mode_2(void)
{
    turnOff();
    Mode2Rounds = 0;        //reset number rounds played
    player1press = 0;        //reset player scores
    player2press = 0;
    instant_lose = 0;

    while (Mode2Rounds < 3)
    {
        ad_result = read_AD_input(1);            //read the A/D value on P1.1, results in between 0 and 255
        blink_time = ((ad_result * 16) + 1000); //convert A/D value to between 1000 and 5000 ms
        blink_counts = blink_time * .3375;        //convert ms to overflows

        counts = 0;                                //reset counter/timer
        LED3 = 0;                                //turn on left LED
        while (counts < blink_counts)            //length of one player turn
        {
            if (PB3 == 0)                       //if left PB pushed while left LED is on
            {
                debounce();
                while (PB3 == 0);
                debounce();
                player1press++;                    //increment player 1 score
            }

            if (PB1 == 0)                        //if player 2 presses during player 1 turn
            {
                instant_lose = 2;
                goto instantlose2;
            }
        }
        LED3 = 1;

        counts = 0;                                //reset counter
        LED1 = 0;
        while (counts < blink_counts)
        {
            if (PB1 == 0)
            {
                debounce();
                while (PB1 == 0);
                debounce();
                player2press++;                    //increment player 2 score
    
            }
            if (PB3 == 0)
            {
                instant_lose = 1;
                goto instantlose1;
            }
        }
        LED1 = 1;

        Mode2Rounds++;
    }

    printf("Player 1 presses: %d \r\n", player1press);
    printf("Player 2 presses: %d \r\n", player2press);

    if (player1press > player2press)
    {
        BILED1 = 0;        //turn BILED green
        BILED2 = 1;
        printf("Player 1 wins! \r\n");
    }
    else if (player2press > player1press)
    {
        BILED1 = 1;        //turn BILED red
        BILED2 = 0;
        printf("Player 2 wins! \r\n");
    }
    else
    {
        printf("Tie! \r\n");
    }

    instantlose2:
    if (instant_lose == 2)
    {
        printf("Player 1 wins because Player 2 went during the wrong turn. \r\n");
        BILED1 = 0;        //turn BILED green
        BILED2 = 1;
    }
    return;

    instantlose1:
    if (instant_lose == 1)
    {
        printf("Player 2 wins because Player 1 went during the wrong turn. \r\n");
        BILED1 = 1;        //turn BILED red
        BILED2 = 0;
    }
}



//***************
void Mode_3(void)
{
    turnOff();
    Mode3Rounds = 0;
    ad_result = read_AD_input(1);            //read the A/D value on P1.1, results in between 0 and 255
    blink_time = ((ad_result * 3) + 250);     //convert A/D value to between 250 and 1000 ms
    blink_counts = blink_time * .3375;        //convert ms to overflows
    player1turn = 1;
    player1blink = 0;
    player2blink = 0;
    Mode3Rounds = 0;

    Mode_3_Run();

    printf("Player 1 misses: %d \r\n", player1blink);
    printf("Player 2 misses: %d \r\n", player2blink);

    if (player1blink < player2blink)
    {
        BILED1 = 0;
        BILED2 = 1;
        printf("Player 1 wins! \r\n");
    }
    else if (player1blink > player2blink)
    {
        BILED1 = 1;
        BILED2 = 0;
        printf("Player 2 wins! \r\n");
    }
    else
    {
        printf("Tie! \r\n");
    }
}


void randLED(void)
{
    startLED = (rand() % 4);
}


void Mode_3_Run(void)
{
    playerturn:
    if (player1turn == 1)                    //clockwise **********
    {
        randLED();

        while (startLED == 0 && Mode3Rounds < 5)
        {
            counts = 0;
            turnOff();
            LED0 = 0;                                        //turn on top LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED1 = 0;                                        //turn on right LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED2 = 0;                                        //turn on bottom LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED3 = 0;                                        //turn on left LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }
        }

        while (startLED == 1 && Mode3Rounds < 5)
        {
            counts = 0;
            turnOff();
            LED1 = 0;                                        //turn on right LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED2 = 0;                                        //turn on bottom LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED3 = 0;                                        //turn on left LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED0 = 0;                                        //turn on top LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }
        }

        while (startLED == 2 && Mode3Rounds < 5)
        {
            counts = 0;
            turnOff();
            LED2 = 0;                                        //turn on bottom LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED3 = 0;                                        //turn on left LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED0 = 0;                                        //turn on top LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED1 = 0;                                        //turn on right LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }
        }

        while (startLED == 3 && Mode3Rounds < 5)
        {
            counts = 0;
            turnOff();
            LED3 = 0;                                        //turn on left LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED0 = 0;                                        //turn on top LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED1 = 0;                                        //turn on right LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }

            counts = 0;
            turnOff();
            LED2 = 0;                                        //turn on bottom LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
            {
                debounce();
                player1turn = 0;
                goto playerturn;
            }
            else
            {
                player1blink++;
            }
        }
    }

    while (player1turn == 0)                //counterclockwise **********
    {
        randLED();

        while (startLED == 0)
        {
            counts = 0;
            turnOff();
            LED0 = 0;                                        //turn on top LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }

            counts = 0;
            turnOff();
            LED3 = 0;                                        //turn on left LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }
            
            counts = 0;
            turnOff();
            LED2 = 0;                                        //turn on bottom LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }

            counts = 0;
            turnOff();
            LED1 = 0;                                        //turn on right LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }
        }

        while (startLED == 1)
        {
                counts = 0;
            turnOff();
            LED1 = 0;                                        //turn on right LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }

            counts = 0;
            turnOff();
            LED0 = 0;                                        //turn on top LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }

            counts = 0;
            turnOff();
            LED3 = 0;                                        //turn on left LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }
            
            counts = 0;
            turnOff();
            LED2 = 0;                                        //turn on bottom LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }
        }

        while (startLED == 2)
        {
            counts = 0;
            turnOff();
            LED2 = 0;                                        //turn on bottom LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }

            counts = 0;
            turnOff();
            LED1 = 0;                                        //turn on right LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }

            counts = 0;
            turnOff();
            LED0 = 0;                                        //turn on top LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }

            counts = 0;
            turnOff();
            LED3 = 0;                                        //turn on left LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }
        }

        while (startLED == 3)
        {
            counts = 0;
            turnOff();
            LED3 = 0;                                        //turn on left LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }
            
            counts = 0;
            turnOff();
            LED2 = 0;                                        //turn on bottom LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }

            counts = 0;
            turnOff();
            LED1 = 0;                                        //turn on right LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }

            counts = 0;
            turnOff();
            LED0 = 0;                                        //turn on top LED
            while (counts < blink_counts);                    //wait until set time
            if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
            {
                debounce();
                player1turn = 1;
                Mode3Rounds++;
                goto playerturn;
            }
            else
            {
                player2blink++;
            }
        }
    }
}


//***************
void turnOff(void)
{
    LED0 = 1;
    LED1 = 1;
    LED2 = 1;
    LED3 = 1;
    BILED1 = 1;
    BILED2 = 1;
}

void debounce(void)
{
    debounce_time = counts + 6.75;    //set 20 ms debounce time
    while (counts < debounce_time);    //debounce
}

//***************
void Port_Init(void)
{
    P1MDIN &= ~0x02;    // Set P1.1 for analog input
    P1MDOUT &= ~0x02;    // Set P1.1 to open drain
    P1 |= 0x02;            // Send logic 1 to input pin P1.1

     P2MDOUT &= 0xD2;
    P2MDOUT |= 0x02;
    P2 |= ~0xD2;

    P3MDOUT &= 0xFC;
    P3MDOUT |= 0x7C;
    P3 |= ~0xFC;
}

void Interrupt_Init(void)
{
    IE |= 0x82;     //enable Timer0 Interrupt request
}

void Timer_Init(void)
{
    CKCON |= 0x08; //Timer0 uses SYSCLK as source
    TMOD &= 0xF0;  //clear the 4 least significant bits
    TMOD |= 0x01;  //Timer0 in mode 1, 16 bit
    TR0 = 0;        //stop Timer0
    TMR0 = 0;        //clear high & low byte of T0
}

void Timer0_ISR(void) __interrupt 1
{
    counts++;
}

void ADC_Init(void)
{
    REF0CN = 0x03;  //set VREF to internal pin not external
    ADC1CN = 0x80;  //set ADC1 to active
    ADC1CF |= 0x01; //set gain to 1
}

unsigned char read_AD_input(unsigned char n)
{
    AMX1SL = n;                       //sets pin P1.n as analog input for ADC1
    ADC1CN &= ~0x20;                  //clears conversion flag
    ADC1CN |= 0x10;                  //initiate A/D conversion
    while ((ADC1CN & 0x20) == 0x00); //waits until the control register says conversion is complete
    return ADC1;                         //outputs conversion's value
}