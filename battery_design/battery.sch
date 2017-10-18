EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:logo
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:halloween
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Halloween 2017 Battery"
Date "2017-10-11"
Rev "rA"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Battery_Cell BT?
U 1 1 59DEEC74
P 3900 3700
F 0 "BT?" H 4000 3800 50  0000 L CNN
F 1 "Battery_Cell" H 4000 3700 50  0000 L CNN
F 2 "" V 3900 3760 50  0001 C CNN
F 3 "" V 3900 3760 50  0001 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW?
U 1 1 59DEEEFC
P 4600 2650
F 0 "SW?" H 4600 2775 50  0000 C CNN
F 1 "KEY" H 4600 2550 50  0000 C CNN
F 2 "" H 4600 2650 50  0001 C CNN
F 3 "" H 4600 2650 50  0001 C CNN
	1    4600 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2350 3900 3500
Wire Wire Line
	3900 2650 4400 2650
$Comp
L R R?
U 1 1 59DEEF51
P 4950 3400
F 0 "R?" V 5030 3400 50  0000 C CNN
F 1 "R" V 4950 3400 50  0000 C CNN
F 2 "" V 4880 3400 50  0001 C CNN
F 3 "" H 4950 3400 50  0001 C CNN
	1    4950 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 3800 3900 3900
Wire Wire Line
	3650 3900 4800 3900
Wire Wire Line
	4800 3900 4800 3400
Wire Wire Line
	4800 2650 5100 2650
Wire Wire Line
	5100 2650 5100 4100
$Comp
L SY-3W-K K?
U 1 1 59DEF095
P 6700 2900
F 0 "K?" H 7550 2550 60  0000 C CNN
F 1 "SY-3W-K" H 7550 2450 60  0000 C CNN
F 2 "" H 6700 2900 60  0001 C CNN
F 3 "" H 6700 2900 60  0001 C CNN
	1    6700 2900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59DEF0E4
P 5700 2950
F 0 "R?" V 5780 2950 50  0000 C CNN
F 1 "R" V 5700 2950 50  0000 C CNN
F 2 "" V 5630 2950 50  0001 C CNN
F 3 "" H 5700 2950 50  0001 C CNN
	1    5700 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 2300 5850 3500
Wire Wire Line
	5850 2300 6250 2300
Wire Wire Line
	5850 3500 6250 3500
Connection ~ 5850 2950
Wire Wire Line
	3900 2350 5550 2350
Wire Wire Line
	5550 2350 5550 2950
Connection ~ 3900 2650
Wire Wire Line
	5100 3400 5550 3400
Wire Wire Line
	5550 3400 5550 3650
Wire Wire Line
	5550 3650 6900 3650
Wire Wire Line
	6900 3650 6900 3500
Wire Wire Line
	6900 2300 6900 2100
Wire Wire Line
	6900 2100 3650 2100
Wire Wire Line
	3650 2100 3650 3900
Connection ~ 3900 3900
$Comp
L LED D?
U 1 1 59DEF1D0
P 8400 3650
F 0 "D?" H 8400 3750 50  0000 C CNN
F 1 "LED" H 8400 3550 50  0000 C CNN
F 2 "" H 8400 3650 50  0001 C CNN
F 3 "" H 8400 3650 50  0001 C CNN
	1    8400 3650
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 59DEF36F
P 8400 2100
F 0 "D?" H 8400 2200 50  0000 C CNN
F 1 "LED" H 8400 2000 50  0000 C CNN
F 2 "" H 8400 2100 50  0001 C CNN
F 3 "" H 8400 2100 50  0001 C CNN
	1    8400 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 2300 8250 2300
Wire Wire Line
	8250 2300 8250 2100
Wire Wire Line
	7200 3500 8250 3500
Wire Wire Line
	8250 3500 8250 3650
Wire Wire Line
	8550 2100 8550 3650
Wire Wire Line
	6250 2100 6250 1800
Wire Wire Line
	6250 1800 8800 1800
Wire Wire Line
	8800 1800 8800 2700
Wire Wire Line
	8800 2700 8550 2700
Connection ~ 8550 2700
Connection ~ 6250 2100
$Comp
L CONN_01X03 J?
U 1 1 59DEF63A
P 2750 3000
F 0 "J?" H 2750 3200 50  0000 C CNN
F 1 "CONN_01X03" V 2850 3000 50  0000 C CNN
F 2 "" H 2750 3000 50  0001 C CNN
F 3 "" H 2750 3000 50  0001 C CNN
	1    2750 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 2900 3650 2900
Connection ~ 3650 2900
Wire Wire Line
	2950 3000 3900 3000
Connection ~ 3900 3000
Wire Wire Line
	5100 4100 3350 4100
Wire Wire Line
	3350 4100 3350 3100
Wire Wire Line
	3350 3100 2950 3100
Connection ~ 5100 3400
$EndSCHEMATC
