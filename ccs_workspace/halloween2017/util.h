/*
 * util.h
 *
 *  Created on: Oct 17, 2017
 *      Author: George
 */

#ifndef UTIL_H_
#define UTIL_H_

void delay_ms(uint16_t ms);
void send_frame(uint16_t fr);
void send_digit(uint8_t digit, uint8_t tube);
void all_off();
uint16_t ten_pow(uint8_t i);

#endif /* UTIL_H_ */
