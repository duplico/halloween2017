#include "msp430fr2100.h"
#include "driverlib.h"
#include <stdint.h>

// Here's our Halloween setup:

#define NLE_PIN BIT0
#define CLK_PIN BIT1
#define TX_PIN  BIT3
#define KEY_PIN BIT4

/*
 * Here's our Halloween setup:
 *
 * 1.0 > NLE
 * 1.1 > CLK
 * 1.3 > TX
 * 1.4 < KEY
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

void send_frame(uint16_t fr) {
    for (int i=0; i<16; i++) {
        // Set the output:
        if (fr & (1 << (15-i)))
            P1OUT |= TX_PIN;
        else
            P1OUT &= ~TX_PIN;
        __delay_cycles(100);
        // Pulse the clock:
        P1OUT |= CLK_PIN;
        __delay_cycles(100);
        P1OUT &= ~CLK_PIN;
    }
    P1OUT &= ~NLE_PIN; // NLE is asserted low
    __delay_cycles(100);
    P1OUT |= NLE_PIN; // back to idle high
    __delay_cycles(100);
}

void send_digit(uint8_t digit, uint8_t tube) {
    uint16_t fr = 0b1111111111000000;
    fr |= (1 << tube);
    fr |= 0b111;
    if (digit)
        fr &= ~(0x0001 << (5+digit));
    else
        fr &= ~(0x0001 << 15);
    send_frame(fr);
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

    // NLE, CLK, TX are outputs:
    P1DIR |= NLE_PIN | CLK_PIN | TX_PIN;
    P1DIR &= ~KEY_PIN; // KEY is an input, external pull-whatever.

    // NLE and KEY are GPIO: (0b00)
    P1SEL1 &= ~(NLE_PIN | KEY_PIN);
    P1SEL0 &= ~(NLE_PIN | KEY_PIN);
    P1OUT |= NLE_PIN; // NLE is idle high.

    // We will temporarily bit-bang.

    // CLK and TX
    P1SEL1 &= ~(CLK_PIN | TX_PIN);
    P1SEL0 &= ~(CLK_PIN | TX_PIN);

    P1OUT &= ~(CLK_PIN | TX_PIN);

    uint8_t dig=0;
    while (1) {
        send_digit(dig, 2);
        dig = (dig+1) % 10;
        __delay_cycles(1000000);
    }

    // Old code:
    /*


    // CLK and TX are primary peripherals (0b01) - UCA0.
    P1SEL1 &= ~(CLK_PIN | TX_PIN);
    P2SEL0 |= CLK_PIN | TX_PIN;

    // Terminate unused pins to outputs:
    P1DIR |= BIT2|BIT5|BIT6|BIT7;
    P2DIR |= BIT0|BIT1|BIT6|BIT7;

    // Setup clocks:
    // Default: MCLK and SMCLK using DCOCLKDIV at 1 MHz
    //          ACLK uses REFO (~32k)
    // This is fine.

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
