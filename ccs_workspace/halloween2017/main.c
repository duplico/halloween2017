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

#define MAX_BRIGHTNESS 5
#define CLOCK_SPEED_KHZ 1000
#define SCAN_SPEED_HZ 600

#define DECR_UNITS 20 // 20ths of seconds

volatile uint8_t f_decrement = 0;
volatile uint8_t f_flicker_tick = 0;

volatile uint8_t bulb=0;
volatile uint16_t disp_num = 0;
volatile uint16_t second_parts = 0;
volatile uint16_t flicker_parts = SCAN_SPEED_HZ;
uint8_t brightness = MAX_BRIGHTNESS/2;
uint8_t decrement_rate = 3*DECR_UNITS;

uint32_t clock = 0;

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

void all_off() {
    send_frame(0b1111111111000000);
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

void init_clocks() {
    // Setup clocks:
    // Default: MCLK and SMCLK using DCOCLKDIV at 1 MHz
    //          ACLK uses REFO (~32k)
    // This is fine.
}

void init_timer()
{
    Timer_B_initUpModeParam param = { 0 };
    param.captureCompareInterruptEnable_CCR0_CCIE =
            TIMER_B_CCIE_CCR0_INTERRUPT_DISABLE;
    param.clockSource = TIMER_B_CLOCKSOURCE_ACLK;
    param.clockSourceDivider = TIMER_B_CLOCKSOURCE_DIVIDER_1;
    param.startTimer = true;
    param.timerClear = TIMER_B_DO_CLEAR;
    param.timerInterruptEnable_TBIE = TIMER_B_TBIE_INTERRUPT_ENABLE;
    param.timerPeriod = 32767 / SCAN_SPEED_HZ;

    Timer_B_initUpMode(TIMER_B0_BASE, &param);
}

void init_gpio() {
    // NLE, CLK, TX are outputs:
    P1DIR |= NLE_PIN | CLK_PIN | TX_PIN;
    // KEY is an input:
    P1DIR &= ~KEY_PIN;

    // L_IN and L_OUT are outputs:
    P2DIR |= L_IN + L_OUT;

    // NLE and KEY are GPIO: (0b00)
    P1SEL1 &= ~(NLE_PIN | KEY_PIN);
    P1SEL0 &= ~(NLE_PIN | KEY_PIN);
    P1OUT |= NLE_PIN; // NLE is idle high.

    // LEDs:
    // L_IN and L_OUT are GPIO, low:
    P2SEL1 &= ~(L_IN + L_OUT);
    P2SEL0 &= ~(L_IN + L_OUT);
    P1OUT &= ~(L_IN + L_OUT);
}

void init_serial() {
    // We are just bit-banging, so...
    // CLK and TX
    P1SEL1 &= ~(CLK_PIN | TX_PIN);
    P1SEL0 &= ~(CLK_PIN | TX_PIN);

    P1OUT &= ~(CLK_PIN | TX_PIN);
}

void init() {
    /*
     * Disable the GPIO power-on default high-impedance mode to activate
     * previously configured port settings
     */
    PM5CTL0 &= ~LOCKLPM5;

    init_clocks();
    init_gpio();
    init_serial();
    init_timer();
}

void main(void)
{
    //Stop watchdog timer
    WDTCTL = WDTPW | WDTHOLD;

    init();

    __bis_SR_register(LPM0_bits + GIE);

    while (1) {

        if (f_flicker_tick) {
            f_flicker_tick = 0;

            // Randomly increase or decrease brightness.
            uint8_t dir = rand() % 3;
            switch(dir) {
            case 0:
                brightness--;
                break;
            case 1:
                brightness++;
                break;
            case 2:
                if (!disp_num)
                    brightness = 0;
            }

            // Keep within valid bounds:
            if (!brightness && disp_num)
                brightness = 1;
            else if (brightness > MAX_BRIGHTNESS)
                brightness = MAX_BRIGHTNESS;

            if (P1IN & KEY_PIN)
                brightness = MAX_BRIGHTNESS;

            // Pick next time to flicker, 0.25s - 0.075s
            flicker_parts = SCAN_SPEED_HZ/4 + (rand()%(SCAN_SPEED_HZ/2));
        }

        if (f_decrement) {
            f_decrement = 0;

            if (P1IN & KEY_PIN && disp_num < 999) {
                // the key is ON, so we are CHARGING!
                disp_num++;
                P2OUT |= L_IN;
                P2OUT ^= L_OUT;
                decrement_rate = 1;
            } else {
                // Discharging:
                if (disp_num) {
                    disp_num = (disp_num+999) % 1000;
                    P2OUT |= L_IN;
                    P2OUT &= ~L_OUT;
                    decrement_rate = 1 + rand() % (DECR_UNITS * 10);
                } else {
                    P2OUT &= ~L_IN;
                    P2OUT ^= L_OUT;
                    decrement_rate = DECR_UNITS/2;
                }
            }
        }
    }
}

#pragma vector=TIMER0_B1_VECTOR
__interrupt void TIMERB0_ISR(void)
{
    if (TB0IV | TBIFG) {

        if (second_parts % MAX_BRIGHTNESS < MAX_BRIGHTNESS-brightness) {
            // we should be OFF.
            all_off();
        } else {
            // We do a scan.
            send_digit((disp_num % ten_pow(bulb+1)) / ten_pow(bulb), bulb);
            bulb++;
            if (bulb == 3) bulb = 0;
        }

        second_parts++;
        if (second_parts == SCAN_SPEED_HZ*decrement_rate/DECR_UNITS) {
            second_parts = 0;
            f_decrement = 1;
            __bic_SR_register_on_exit(LPM0_bits);
        }

        if (!flicker_parts--) {
            f_flicker_tick = 1;
            if (disp_num)
                P2OUT |= L_OUT;
        }

        __bic_SR_register_on_exit(LPM0_bits);
    }
}
