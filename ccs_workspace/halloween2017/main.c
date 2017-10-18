#include "msp430fr2111.h"
#include "driverlib.h"
#include <stdint.h>
#include <stdlib.h>

// Here's our Halloween setup:

#define NLE_PIN BIT0
#define CLK_PIN BIT1
#define TX_PIN  BIT3
#define KEY_PIN BIT4

#define L_IN BIT0
#define L_OUT BIT1

/*
 * Here's our Halloween setup:
 *
 * 1.0 > NLE
 * 1.1 > CLK
 * 1.3 > TX
 * 1.4 < KEY
 * 2.0 > L_IN  (to relay)
 * 2.1 > L_OUT (to relay)
 *
 * And for the shift register:
 *
 * out_1: A+_3
 * out_2: A+_2
 * out_3: A+_1
 * [...]
 * out_7 : 1
 * out_8 : 2
 * out_9 : 3
 * out_10: 4
 * out_11: 5
 * out_12: 6
 * out_13: 7
 * out_14: 8
 * out_15: 9
 * out_16: 0
 *
 */

volatile uint8_t f_second = 0;
volatile uint8_t bulb=0;
volatile uint16_t disp_num = 0;
volatile uint8_t second_parts = 0;

#define CLOCK_SPEED_KHZ 1000

void delay_ms(uint16_t ms) {
    while (ms--)
        __delay_cycles(CLOCK_SPEED_KHZ);
}

void send_frame(uint16_t fr) {
    for (int i=0; i<16; i++) {
        // Set the output:
        if (fr & (1 << (15-i)))
            P1OUT |= TX_PIN;
        else
            P1OUT &= ~TX_PIN;
//        __delay_cycles(CLOCK_SPEED_KHZ/500);
        // Pulse the clock:
        P1OUT |= CLK_PIN;
//        __delay_cycles(CLOCK_SPEED_KHZ/500);
        P1OUT &= ~CLK_PIN;
    }
    P1OUT &= ~NLE_PIN; // NLE is asserted low
//    __delay_cycles(CLOCK_SPEED_KHZ/500);
    P1OUT |= NLE_PIN; // back to idle high
//    __delay_cycles(CLOCK_SPEED_KHZ/500);
}

void send_digit(uint8_t digit, uint8_t tube) {
    uint16_t fr = 0b1111111111000000;
    fr |= (1 << tube);
    if (digit)
        fr &= ~(0x0001 << (5+digit));
    else
        fr &= ~(0x0001 << 15);
    send_frame(fr);
}

uint16_t ten_pow(uint8_t i) {
    switch(i) {
    case 0:
        return 1;
    case 1:
        return 10;
    case 2:
        return 100;
    case 3:
        return 1000;
    default:
        return 0;
    }
}

void main(void)
{
    //Stop watchdog timer
    WDTCTL = WDTPW | WDTHOLD;
    /*
     * Disable the GPIO power-on default high-impedance mode to activate
     * previously configured port settings
     */
    PM5CTL0 &= ~LOCKLPM5;

    // Setup clocks:
    // Default: MCLK and SMCLK using DCOCLKDIV at 1 MHz
    //          ACLK uses REFO (~32k)
    // This is fine.

    // NLE, CLK, TX are outputs:
    P1DIR |= NLE_PIN | CLK_PIN | TX_PIN;
    P1DIR &= ~KEY_PIN; // KEY is an input, external pull-whatever.

    // L_IN and L_OUT are outputs:
    P2DIR |= L_IN + L_OUT;

    // NLE and KEY are GPIO: (0b00)
    P1SEL1 &= ~(NLE_PIN | KEY_PIN);
    P1SEL0 &= ~(NLE_PIN | KEY_PIN);
    P1OUT |= NLE_PIN; // NLE is idle high.

    // L_IN and L_OUT are GPIO, low:
    P2SEL1 &= ~(L_IN + L_OUT);
    P2SEL0 &= ~(L_IN + L_OUT);
    P1OUT &= ~(L_IN + L_OUT);

    // CLK and TX
    P1SEL1 &= ~(CLK_PIN | TX_PIN);
    P1SEL0 &= ~(CLK_PIN | TX_PIN);

    P1OUT &= ~(CLK_PIN | TX_PIN);

    Timer_B_initUpModeParam param = {0};
    param.captureCompareInterruptEnable_CCR0_CCIE = TIMER_B_CCIE_CCR0_INTERRUPT_DISABLE;
    param.clockSource = TIMER_B_CLOCKSOURCE_ACLK;
    param.clockSourceDivider = TIMER_B_CLOCKSOURCE_DIVIDER_1;
    param.startTimer = true;
    param.timerClear = TIMER_B_DO_CLEAR;
    param.timerInterruptEnable_TBIE = TIMER_B_TBIE_INTERRUPT_ENABLE; // TBIFG in TBxIV
    param.timerPeriod = 32767 / 200; // 200 Hz

    Timer_B_initUpMode(TIMER_B0_BASE, &param);

    __bis_SR_register(LPM0_bits + GIE);

    while (1) {
        if (f_second) {
            f_second = 0;

            disp_num = (disp_num+1) % 1000;
            P2OUT ^= L_IN;
            P2OUT |= L_OUT;
        }
    }


    // Old code:
    /*


    // CLK and TX are primary peripherals (0b01) - UCA0.
    P1SEL1 &= ~(CLK_PIN | TX_PIN);
    P2SEL0 |= CLK_PIN | TX_PIN;

    // Terminate unused pins to outputs:
    P1DIR |= BIT2|BIT5|BIT6|BIT7;
    P2DIR |= BIT0|BIT1|BIT6|BIT7;


    // We'll set up in SPI master mode, with only MOSI and CLK in use.
    UCA0CTLW0 |= UCSWRST__ENABLE; // shut down for a mo (enable rst)

    UCA0CTLW0 = UCCKPH_1 | UCCKPL__LOW | UCMSB_1 | UC7BIT__8BIT |
            UCMST__MASTER | UCMODE_0 | UCSYNC__SYNC |
            UCSSEL__SMCLK | UCSWRST__ENABLE;

    // Max frequency for HV509 is 500 kHz. Let's divide SMCLK, which is 1 MHz,
    //  by 4, just for some headroom, to get us to 250 kHz.
    UCA0BRW = 4;

    // Disable interrupts.
    UCA0IE = 0;

    // Take us out of reset to enable the SPI.
    UCA0CTLW0 &= ~UCSWRST;

    // Hang on a sec...
    __delay_cycles(10000);

    // Send zeros...
    UCA0TXBUF = 0x00;
    while (!(UCA0IFG & UCTXIFG));
    UCA0TXBUF = 0x00;
    while (!(UCA0IFG & UCTXIFG));

    // 16 zeroes sent.
    // Pulse nLE to clock it in.
    P1OUT &= ~NLE_PIN; // NLE is asserted low
    __delay_cycles(10);
    P1OUT |= NLE_PIN; // back to idle high

    while (1);
    */
}

#pragma vector=TIMER0_B1_VECTOR
__interrupt void TIMERB0_ISR(void)
{
    if (TB0IV | TBIFG) {
        send_digit((disp_num % ten_pow(bulb+1)) / ten_pow(bulb), bulb);
        bulb = (bulb+1)%3;
        second_parts++;
        if (second_parts == 200) {
            second_parts = 0;
            f_second = 1;
            __bic_SR_register_on_exit(LPM0_bits);
        }
    }
}
