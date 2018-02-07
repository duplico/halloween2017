/*
 * util.c
 *
 *  Created on: Oct 17, 2017
 *      Author: George
 */


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
