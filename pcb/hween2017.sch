EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:halloween
LIBS:hween2017-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Nixie Halloween Prop"
Date "2017-10-19"
Rev "RC2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MSP430FR2100IPW U2
U 1 1 59CD45F3
P 6050 2200
F 0 "U2" H 6050 2200 60  0000 C CNN
F 1 "MSP430FR2100IPW" H 6100 2300 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 6050 2200 60  0001 C CNN
F 3 "" H 6050 2200 60  0001 C CNN
	1    6050 2200
	1    0    0    -1  
$EndComp
$Comp
L HV509 U1
U 1 1 59CD4CF3
P 2400 3000
F 0 "U1" H 2500 3550 60  0000 C CNN
F 1 "HV509" H 2500 3700 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-32-1EP_5x5mm_Pitch0.5mm" H 2550 3700 60  0001 C CNN
F 3 "" H 2550 3700 60  0001 C CNN
	1    2400 3000
	1    0    0    -1  
$EndComp
$Comp
L IF-12 XV1
U 1 1 59CD4F09
P 5150 3950
F 0 "XV1" H 5550 4200 60  0000 C CNN
F 1 "IF-12" H 5150 4350 60  0000 C CNN
F 2 "halloween:IF12" H 5150 3950 60  0001 C CNN
F 3 "" H 5150 3950 60  0001 C CNN
	1    5150 3950
	1    0    0    -1  
$EndComp
$Comp
L IF-12 XV2
U 1 1 59CD4F46
P 6300 3950
F 0 "XV2" H 6700 4200 60  0000 C CNN
F 1 "IF-12" H 6300 4350 60  0000 C CNN
F 2 "halloween:IF12" H 6300 3950 60  0001 C CNN
F 3 "" H 6300 3950 60  0001 C CNN
	1    6300 3950
	1    0    0    -1  
$EndComp
$Comp
L IF-12 XV3
U 1 1 59CD4F8D
P 7500 3950
F 0 "XV3" H 7900 4200 60  0000 C CNN
F 1 "IF-12" H 7500 4350 60  0000 C CNN
F 2 "halloween:IF12" H 7500 3950 60  0001 C CNN
F 3 "" H 7500 3950 60  0001 C CNN
	1    7500 3950
	1    0    0    -1  
$EndComp
$Comp
L NCH8200HV PS1
U 1 1 59CD53DF
P 7900 2750
F 0 "PS1" H 7900 2950 60  0000 C CNN
F 1 "NCH8200HV" H 7900 2850 60  0000 C CNN
F 2 "halloween:NCH8200HV" H 7900 2750 60  0001 C CNN
F 3 "" H 7900 2750 60  0001 C CNN
	1    7900 2750
	1    0    0    -1  
$EndComp
NoConn ~ 4650 4850
NoConn ~ 5800 4850
NoConn ~ 7000 4850
Text Label 1200 2400 2    60   ~ 0
if_0
Text Label 1200 2500 2    60   ~ 0
if_9
Text Label 1200 2600 2    60   ~ 0
if_8
Text Label 1200 2700 2    60   ~ 0
if_7
Text Label 2200 3750 3    60   ~ 0
if_6
Text Label 2300 3750 3    60   ~ 0
if_5
Text Label 2400 3750 3    60   ~ 0
if_4
Text Label 2500 3750 3    60   ~ 0
if_3
Text Label 2600 3750 3    60   ~ 0
if_2
Text Label 2700 3750 3    60   ~ 0
if_1
Text Label 4650 3850 2    60   ~ 0
if_0
Text Label 4650 3950 2    60   ~ 0
if_9
Text Label 4650 4050 2    60   ~ 0
if_8
Text Label 4650 4150 2    60   ~ 0
if_7
Text Label 4650 4250 2    60   ~ 0
if_6
Text Label 4650 4350 2    60   ~ 0
if_5
Text Label 4650 4450 2    60   ~ 0
if_4
Text Label 4650 4550 2    60   ~ 0
if_3
Text Label 4650 4650 2    60   ~ 0
if_2
Text Label 4650 4750 2    60   ~ 0
if_1
Text Label 5800 4750 2    60   ~ 0
if_1
Text Label 5800 4650 2    60   ~ 0
if_2
Text Label 5800 4550 2    60   ~ 0
if_3
Text Label 5800 4450 2    60   ~ 0
if_4
Text Label 5800 4350 2    60   ~ 0
if_5
Text Label 5800 4250 2    60   ~ 0
if_6
Text Label 5800 4150 2    60   ~ 0
if_7
Text Label 5800 4050 2    60   ~ 0
if_8
Text Label 5800 3950 2    60   ~ 0
if_9
Text Label 5800 3850 2    60   ~ 0
if_0
Text Label 7000 3850 2    60   ~ 0
if_0
Text Label 7000 3950 2    60   ~ 0
if_9
Text Label 7000 4050 2    60   ~ 0
if_8
Text Label 7000 4150 2    60   ~ 0
if_7
Text Label 7000 4250 2    60   ~ 0
if_6
Text Label 7000 4350 2    60   ~ 0
if_5
Text Label 7000 4450 2    60   ~ 0
if_4
Text Label 7000 4550 2    60   ~ 0
if_3
Text Label 7000 4650 2    60   ~ 0
if_2
Text Label 7000 4750 2    60   ~ 0
if_1
Entry Wire Line
	900  2300 1000 2400
Entry Wire Line
	900  2400 1000 2500
Entry Wire Line
	900  2500 1000 2600
Entry Wire Line
	900  2600 1000 2700
Entry Wire Line
	2200 3950 2300 4050
Entry Wire Line
	2300 3950 2400 4050
Entry Wire Line
	2400 3950 2500 4050
Entry Wire Line
	2500 3950 2600 4050
Entry Wire Line
	2600 3950 2700 4050
Entry Wire Line
	2700 3950 2800 4050
Entry Wire Line
	4300 3750 4400 3850
Entry Wire Line
	4300 3850 4400 3950
Entry Wire Line
	4300 3950 4400 4050
Entry Wire Line
	4300 4050 4400 4150
Entry Wire Line
	4300 4150 4400 4250
Entry Wire Line
	4300 4250 4400 4350
Entry Wire Line
	4300 4350 4400 4450
Entry Wire Line
	4300 4450 4400 4550
Entry Wire Line
	4300 4550 4400 4650
Entry Wire Line
	4300 4650 4400 4750
Entry Wire Line
	5500 3750 5600 3850
Entry Wire Line
	5500 3850 5600 3950
Entry Wire Line
	5500 3950 5600 4050
Entry Wire Line
	5500 4050 5600 4150
Entry Wire Line
	5500 4150 5600 4250
Entry Wire Line
	5500 4250 5600 4350
Entry Wire Line
	5500 4350 5600 4450
Entry Wire Line
	5500 4450 5600 4550
Entry Wire Line
	5500 4550 5600 4650
Entry Wire Line
	5500 4650 5600 4750
Entry Wire Line
	6750 3750 6850 3850
Entry Wire Line
	6750 3850 6850 3950
Entry Wire Line
	6750 3950 6850 4050
Entry Wire Line
	6750 4050 6850 4150
Entry Wire Line
	6750 4150 6850 4250
Entry Wire Line
	6750 4250 6850 4350
Entry Wire Line
	6750 4350 6850 4450
Entry Wire Line
	6750 4450 6850 4550
Entry Wire Line
	6750 4550 6850 4650
Entry Wire Line
	6750 4650 6850 4750
$Comp
L R R3
U 1 1 59CD6B0B
P 4500 3550
F 0 "R3" V 4580 3550 50  0000 C CNN
F 1 "20 k" V 4500 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 3550 50  0001 C CNN
F 3 "" H 4500 3550 50  0001 C CNN
	1    4500 3550
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 59CD6B7A
P 4500 3350
F 0 "R2" V 4580 3350 50  0000 C CNN
F 1 "20 k" V 4500 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 3350 50  0001 C CNN
F 3 "" H 4500 3350 50  0001 C CNN
	1    4500 3350
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 59CD6BC9
P 4500 3150
F 0 "R1" V 4580 3150 50  0000 C CNN
F 1 "20 k" V 4500 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 3150 50  0001 C CNN
F 3 "" H 4500 3150 50  0001 C CNN
	1    4500 3150
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR01
U 1 1 59CD701A
P 3500 2100
F 0 "#PWR01" H 3500 1850 50  0001 C CNN
F 1 "Earth" H 3500 1950 50  0001 C CNN
F 2 "" H 3500 2100 50  0001 C CNN
F 3 "" H 3500 2100 50  0001 C CNN
	1    3500 2100
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR02
U 1 1 59CD704A
P 1500 2200
F 0 "#PWR02" H 1500 1950 50  0001 C CNN
F 1 "Earth" H 1500 2050 50  0001 C CNN
F 2 "" H 1500 2200 50  0001 C CNN
F 3 "" H 1500 2200 50  0001 C CNN
	1    1500 2200
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR03
U 1 1 59CD709B
P 7500 3050
F 0 "#PWR03" H 7500 2800 50  0001 C CNN
F 1 "Earth" H 7500 2900 50  0001 C CNN
F 2 "" H 7500 3050 50  0001 C CNN
F 3 "" H 7500 3050 50  0001 C CNN
	1    7500 3050
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR04
U 1 1 59CD70EC
P 8350 3150
F 0 "#PWR04" H 8350 2900 50  0001 C CNN
F 1 "Earth" H 8350 3000 50  0001 C CNN
F 2 "" H 8350 3150 50  0001 C CNN
F 3 "" H 8350 3150 50  0001 C CNN
	1    8350 3150
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR05
U 1 1 59CD7167
P 9200 2150
F 0 "#PWR05" H 9200 1900 50  0001 C CNN
F 1 "Earth" H 9200 2000 50  0001 C CNN
F 2 "" H 9200 2150 50  0001 C CNN
F 3 "" H 9200 2150 50  0001 C CNN
	1    9200 2150
	0    1    1    0   
$EndComp
Text GLabel 9200 1950 0    60   Input ~ 0
VBAT
Text GLabel 7350 2850 0    60   Input ~ 0
VBAT
Text GLabel 8500 2950 2    60   Input ~ 0
VPP
$Comp
L D D1
U 1 1 59CD784F
P 7900 2200
F 0 "D1" H 7900 2300 50  0000 C CNN
F 1 "D" H 7900 2100 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 7900 2200 50  0001 C CNN
F 3 "" H 7900 2200 50  0001 C CNN
	1    7900 2200
	-1   0    0    1   
$EndComp
NoConn ~ 2200 1450
Text GLabel 2600 1450 1    60   Input ~ 0
VBAT
Text GLabel 3500 2200 2    60   Input ~ 0
VPP
Text GLabel 1500 2100 0    60   Input ~ 0
VBAT
NoConn ~ 1500 2300
NoConn ~ 2800 3400
NoConn ~ 2900 3400
NoConn ~ 3500 2700
Text GLabel 2500 1450 1    60   Input ~ 0
VBAT
$Comp
L C_Small C2
U 1 1 59CD811C
P 4700 2250
F 0 "C2" H 4710 2320 50  0000 L CNN
F 1 "100 nF" H 4710 2170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4700 2250 50  0001 C CNN
F 3 "" H 4700 2250 50  0001 C CNN
	1    4700 2250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 59CD816B
P 4450 2250
F 0 "C1" H 4460 2320 50  0000 L CNN
F 1 "1 uF" H 4460 2170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4450 2250 50  0001 C CNN
F 3 "" H 4450 2250 50  0001 C CNN
	1    4450 2250
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR06
U 1 1 59CD8686
P 4600 2500
F 0 "#PWR06" H 4600 2250 50  0001 C CNN
F 1 "Earth" H 4600 2350 50  0001 C CNN
F 2 "" H 4600 2500 50  0001 C CNN
F 3 "" H 4600 2500 50  0001 C CNN
	1    4600 2500
	1    0    0    -1  
$EndComp
Text GLabel 4250 2050 1    60   Input ~ 0
VBAT
Text GLabel 5050 2100 0    60   Input ~ 0
RST
Text GLabel 5050 2000 0    60   Input ~ 0
TEST
Text GLabel 8750 4900 0    60   Input ~ 0
TEST
Text GLabel 8750 4400 0    60   Input ~ 0
RST
Text GLabel 9050 3850 1    60   Input ~ 0
VBAT
$Comp
L C_Small C3
U 1 1 59CD87C7
P 9050 4550
F 0 "C3" H 9060 4620 50  0000 L CNN
F 1 "1 nF" H 9060 4470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9050 4550 50  0001 C CNN
F 3 "" H 9050 4550 50  0001 C CNN
	1    9050 4550
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR07
U 1 1 59CD89A5
P 9050 4750
F 0 "#PWR07" H 9050 4500 50  0001 C CNN
F 1 "Earth" H 9050 4600 50  0001 C CNN
F 2 "" H 9050 4750 50  0001 C CNN
F 3 "" H 9050 4750 50  0001 C CNN
	1    9050 4750
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59CD8A26
P 9050 4200
F 0 "R4" V 9130 4200 50  0000 C CNN
F 1 "47 k" V 9050 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8980 4200 50  0001 C CNN
F 3 "" H 9050 4200 50  0001 C CNN
	1    9050 4200
	1    0    0    -1  
$EndComp
Text GLabel 7100 2000 2    60   Input ~ 0
KEY
Text GLabel 9200 1750 0    60   Input ~ 0
KEY
$Comp
L Conn_01x04 J2
U 1 1 59CDCAD1
P 10100 4350
F 0 "J2" H 10100 4550 50  0000 C CNN
F 1 "JTAG" H 10100 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 10100 4350 50  0001 C CNN
F 3 "" H 10100 4350 50  0001 C CNN
	1    10100 4350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J1
U 1 1 59CDCCD0
P 10050 1950
F 0 "J1" H 10050 2150 50  0000 C CNN
F 1 "BATTERY" H 10050 1750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 10050 1950 50  0001 C CNN
F 3 "" H 10050 1950 50  0001 C CNN
	1    10050 1950
	1    0    0    -1  
$EndComp
NoConn ~ 5050 2400
NoConn ~ 5050 2500
NoConn ~ 7100 2300
NoConn ~ 7100 2200
NoConn ~ 7100 2100
NoConn ~ 7100 1800
$Comp
L D D6
U 1 1 59DE6335
P 2200 3550
F 0 "D6" H 2200 3650 50  0000 C CNN
F 1 "D" H 2200 3450 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 2200 3550 50  0001 C CNN
F 3 "" H 2200 3550 50  0001 C CNN
	1    2200 3550
	0    1    1    0   
$EndComp
$Comp
L D D7
U 1 1 59DE63A2
P 2300 3550
F 0 "D7" H 2300 3650 50  0000 C CNN
F 1 "D" H 2300 3450 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 2300 3550 50  0001 C CNN
F 3 "" H 2300 3550 50  0001 C CNN
	1    2300 3550
	0    1    1    0   
$EndComp
$Comp
L D D11
U 1 1 59DE63F4
P 2700 3550
F 0 "D11" H 2700 3650 50  0000 C CNN
F 1 "D" H 2700 3450 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 2700 3550 50  0001 C CNN
F 3 "" H 2700 3550 50  0001 C CNN
	1    2700 3550
	0    1    1    0   
$EndComp
$Comp
L D D8
U 1 1 59DE6455
P 2400 3550
F 0 "D8" H 2400 3650 50  0000 C CNN
F 1 "D" H 2400 3450 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 2400 3550 50  0001 C CNN
F 3 "" H 2400 3550 50  0001 C CNN
	1    2400 3550
	0    1    1    0   
$EndComp
$Comp
L D D9
U 1 1 59DE64B5
P 2500 3550
F 0 "D9" H 2500 3650 50  0000 C CNN
F 1 "D" H 2500 3450 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 2500 3550 50  0001 C CNN
F 3 "" H 2500 3550 50  0001 C CNN
	1    2500 3550
	0    1    1    0   
$EndComp
$Comp
L D D10
U 1 1 59DE6514
P 2600 3550
F 0 "D10" H 2600 3650 50  0000 C CNN
F 1 "D" H 2600 3450 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 2600 3550 50  0001 C CNN
F 3 "" H 2600 3550 50  0001 C CNN
	1    2600 3550
	0    1    1    0   
$EndComp
$Comp
L D D2
U 1 1 59DE6768
P 1350 2400
F 0 "D2" H 1350 2500 50  0000 C CNN
F 1 "D" H 1350 2300 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 1350 2400 50  0001 C CNN
F 3 "" H 1350 2400 50  0001 C CNN
	1    1350 2400
	-1   0    0    1   
$EndComp
$Comp
L D D3
U 1 1 59DE67D8
P 1350 2500
F 0 "D3" H 1350 2600 50  0000 C CNN
F 1 "D" H 1350 2400 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 1350 2500 50  0001 C CNN
F 3 "" H 1350 2500 50  0001 C CNN
	1    1350 2500
	-1   0    0    1   
$EndComp
$Comp
L D D4
U 1 1 59DE683B
P 1350 2600
F 0 "D4" H 1350 2700 50  0000 C CNN
F 1 "D" H 1350 2500 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 1350 2600 50  0001 C CNN
F 3 "" H 1350 2600 50  0001 C CNN
	1    1350 2600
	-1   0    0    1   
$EndComp
$Comp
L D D5
U 1 1 59DE68A3
P 1350 2700
F 0 "D5" H 1350 2800 50  0000 C CNN
F 1 "D" H 1350 2600 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 1350 2700 50  0001 C CNN
F 3 "" H 1350 2700 50  0001 C CNN
	1    1350 2700
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 59DE79F6
P 9850 3000
F 0 "R6" V 9930 3000 50  0000 C CNN
F 1 "1 M" V 9850 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9780 3000 50  0001 C CNN
F 3 "" H 9850 3000 50  0001 C CNN
	1    9850 3000
	1    0    0    -1  
$EndComp
Text GLabel 9850 2850 1    60   Input ~ 0
VPP
$Comp
L Earth #PWR08
U 1 1 59DE7B2D
P 9850 3150
F 0 "#PWR08" H 9850 2900 50  0001 C CNN
F 1 "Earth" H 9850 3000 50  0001 C CNN
F 2 "" H 9850 3150 50  0001 C CNN
F 3 "" H 9850 3150 50  0001 C CNN
	1    9850 3150
	1    0    0    -1  
$EndComp
$Comp
L SY-3W-K K1
U 1 1 59DE7664
P 2450 6600
F 0 "K1" H 3300 6250 60  0000 C CNN
F 1 "SY-3W-K" H 3300 6150 60  0000 C CNN
F 2 "halloween:Fujitsu_Relay_SY-3W-K_SPDT_12.5x7.4" H 2450 6600 60  0001 C CNN
F 3 "" H 2450 6600 60  0001 C CNN
	1    2450 6600
	1    0    0    -1  
$EndComp
$Comp
L LED D12
U 1 1 59DE7D3F
P 3750 6400
F 0 "D12" H 3750 6500 50  0000 C CNN
F 1 "LED" H 3750 6300 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3750 6400 50  0001 C CNN
F 3 "" H 3750 6400 50  0001 C CNN
	1    3750 6400
	-1   0    0    1   
$EndComp
$Comp
L LED D13
U 1 1 59DE7E6C
P 3750 6750
F 0 "D13" H 3750 6850 50  0000 C CNN
F 1 "LED" H 3750 6650 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3750 6750 50  0001 C CNN
F 3 "" H 3750 6750 50  0001 C CNN
	1    3750 6750
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 59DE8E72
P 4450 6600
F 0 "R5" V 4530 6600 50  0000 C CNN
F 1 "1 k" V 4450 6600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4380 6600 50  0001 C CNN
F 3 "" H 4450 6600 50  0001 C CNN
	1    4450 6600
	0    1    1    0   
$EndComp
$Comp
L SY-3W-K K2
U 1 1 59DE962D
P 5400 6100
F 0 "K2" H 6250 5750 60  0000 C CNN
F 1 "SY-3W-K" H 6250 5650 60  0000 C CNN
F 2 "halloween:Fujitsu_Relay_SY-3W-K_SPDT_12.5x7.4" H 5400 6100 60  0001 C CNN
F 3 "" H 5400 6100 60  0001 C CNN
	1    5400 6100
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR09
U 1 1 59DE9EE4
P 6000 5650
F 0 "#PWR09" H 6000 5400 50  0001 C CNN
F 1 "Earth" H 6000 5500 50  0001 C CNN
F 2 "" H 6000 5650 50  0001 C CNN
F 3 "" H 6000 5650 50  0001 C CNN
	1    6000 5650
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR010
U 1 1 59DEA10F
P 4800 5650
F 0 "#PWR010" H 4800 5400 50  0001 C CNN
F 1 "Earth" H 4800 5500 50  0001 C CNN
F 2 "" H 4800 5650 50  0001 C CNN
F 3 "" H 4800 5650 50  0001 C CNN
	1    4800 5650
	0    1    1    0   
$EndComp
NoConn ~ 6000 6600
$Comp
L Earth #PWR011
U 1 1 59DEA408
P 4800 6300
F 0 "#PWR011" H 4800 6050 50  0001 C CNN
F 1 "Earth" H 4800 6150 50  0001 C CNN
F 2 "" H 4800 6300 50  0001 C CNN
F 3 "" H 4800 6300 50  0001 C CNN
	1    4800 6300
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR012
U 1 1 59DEA4DD
P 2650 7200
F 0 "#PWR012" H 2650 6950 50  0001 C CNN
F 1 "Earth" H 2650 7050 50  0001 C CNN
F 2 "" H 2650 7200 50  0001 C CNN
F 3 "" H 2650 7200 50  0001 C CNN
	1    2650 7200
	1    0    0    -1  
$EndComp
Text GLabel 2000 6000 1    60   Input ~ 0
VBAT
Text GLabel 2000 7200 3    60   Input ~ 0
VBAT
Wire Wire Line
	4050 3550 4050 2600
Wire Wire Line
	4650 3750 4650 3550
Wire Bus Line
	6750 5150 3250 5150
Wire Wire Line
	5700 3350 5700 3750
Wire Wire Line
	5700 3750 5800 3750
Wire Wire Line
	4650 4750 4400 4750
Wire Wire Line
	4650 3850 4400 3850
Wire Wire Line
	4650 3950 4400 3950
Wire Wire Line
	4650 4050 4400 4050
Wire Wire Line
	4650 4150 4400 4150
Wire Wire Line
	4650 4250 4400 4250
Wire Wire Line
	4650 4350 4400 4350
Wire Wire Line
	4650 4450 4400 4450
Wire Wire Line
	4650 4550 4400 4550
Wire Wire Line
	4650 4650 4400 4650
Wire Bus Line
	4300 3750 4300 5150
Wire Wire Line
	2200 3700 2200 3950
Wire Wire Line
	2300 3700 2300 3950
Wire Wire Line
	2400 3700 2400 3950
Wire Wire Line
	2500 3700 2500 3950
Wire Wire Line
	2600 3700 2600 3950
Wire Wire Line
	2700 3700 2700 3950
Wire Wire Line
	7000 4750 6850 4750
Wire Wire Line
	7000 4650 6850 4650
Wire Wire Line
	7000 4550 6850 4550
Wire Wire Line
	7000 4450 6850 4450
Wire Wire Line
	7000 4350 6850 4350
Wire Wire Line
	7000 4250 6850 4250
Wire Wire Line
	7000 4150 6850 4150
Wire Wire Line
	7000 4050 6850 4050
Wire Wire Line
	7000 3950 6850 3950
Wire Wire Line
	7000 3850 6850 3850
Wire Wire Line
	5800 3850 5600 3850
Wire Wire Line
	5800 3950 5600 3950
Wire Wire Line
	5800 4050 5600 4050
Wire Wire Line
	5800 4150 5600 4150
Wire Wire Line
	5800 4250 5600 4250
Wire Wire Line
	5800 4350 5600 4350
Wire Wire Line
	5800 4450 5600 4450
Wire Wire Line
	5800 4550 5600 4550
Wire Wire Line
	5800 4650 5600 4650
Wire Wire Line
	5800 4750 5600 4750
Wire Bus Line
	5500 3750 5500 5150
Wire Bus Line
	6750 3750 6750 5150
Wire Wire Line
	4350 3550 4050 3550
Wire Wire Line
	4350 3350 4150 3350
Wire Wire Line
	4150 3350 4150 2500
Wire Wire Line
	7000 3750 7000 3150
Wire Wire Line
	7000 3150 4650 3150
Wire Wire Line
	4350 3150 4250 3150
Wire Wire Line
	4250 3150 4250 2400
Wire Wire Line
	7350 2850 7500 2850
Wire Wire Line
	8350 2950 8500 2950
Connection ~ 7450 2850
Connection ~ 8400 2950
Wire Wire Line
	7450 2850 7450 2200
Wire Wire Line
	7450 2200 7750 2200
Wire Wire Line
	8400 2950 8400 2200
Wire Wire Line
	8400 2200 8050 2200
Wire Wire Line
	5050 1800 4700 1800
Wire Wire Line
	4700 1800 4700 1200
Wire Wire Line
	4700 1200 2700 1200
Wire Wire Line
	2700 1200 2700 1450
Wire Wire Line
	5050 1900 4600 1900
Wire Wire Line
	4600 1900 4600 1100
Wire Wire Line
	4600 1100 2400 1100
Wire Wire Line
	2400 1100 2400 1450
Wire Wire Line
	7100 1900 7300 1900
Wire Wire Line
	7300 1900 7300 1000
Wire Wire Line
	7300 1000 2900 1000
Wire Wire Line
	2900 1000 2900 1450
Wire Wire Line
	5050 2200 4850 2200
Wire Wire Line
	4850 2200 4850 2150
Wire Wire Line
	4850 2150 4250 2150
Connection ~ 4700 2150
Wire Wire Line
	5050 2300 5000 2300
Wire Wire Line
	5000 2300 5000 2400
Wire Wire Line
	5000 2400 4450 2400
Wire Wire Line
	4700 2400 4700 2350
Wire Wire Line
	4450 2400 4450 2350
Connection ~ 4700 2400
Wire Wire Line
	4250 2150 4250 2050
Connection ~ 4450 2150
Wire Wire Line
	4600 2400 4600 2500
Connection ~ 4600 2400
Wire Wire Line
	8750 4400 9650 4400
Wire Wire Line
	9050 4350 9050 4450
Connection ~ 9050 4400
Wire Wire Line
	8750 4900 9750 4900
Wire Wire Line
	9050 3850 9050 4050
Wire Wire Line
	9050 3950 9650 3950
Connection ~ 9050 3950
Wire Wire Line
	9050 4650 9050 4750
Wire Wire Line
	9050 4700 9650 4700
Connection ~ 9050 4700
Wire Wire Line
	9200 1750 9600 1750
Wire Wire Line
	9600 1750 9600 1850
Wire Wire Line
	9600 1850 9850 1850
Wire Wire Line
	9200 1950 9850 1950
Wire Wire Line
	9200 2150 9600 2150
Wire Wire Line
	9600 2150 9600 2050
Wire Wire Line
	9600 2050 9850 2050
Wire Wire Line
	9650 3950 9650 4250
Wire Wire Line
	9650 4250 9900 4250
Wire Wire Line
	9650 4400 9650 4350
Wire Wire Line
	9650 4350 9900 4350
Wire Wire Line
	9650 4700 9650 4450
Wire Wire Line
	9650 4450 9900 4450
Wire Wire Line
	9750 4900 9750 4550
Wire Wire Line
	9750 4550 9900 4550
Wire Wire Line
	4650 3350 5700 3350
Wire Wire Line
	4050 2600 3500 2600
Wire Wire Line
	4150 2500 3500 2500
Wire Wire Line
	4250 2400 3500 2400
Wire Wire Line
	1200 2400 1000 2400
Wire Wire Line
	1200 2500 1000 2500
Wire Wire Line
	1200 2600 1000 2600
Wire Wire Line
	1200 2700 1000 2700
Wire Bus Line
	3250 5150 3250 4050
Wire Bus Line
	3250 4050 900  4050
Wire Bus Line
	900  4050 900  2300
Wire Wire Line
	3900 6400 4100 6400
Wire Wire Line
	4100 6400 4100 6750
Wire Wire Line
	4100 6600 4300 6600
Wire Wire Line
	4100 6750 3900 6750
Connection ~ 4100 6600
Wire Wire Line
	4600 6600 4800 6600
Wire Wire Line
	2950 6000 3600 6000
Wire Wire Line
	3600 6000 3600 6400
Wire Wire Line
	2950 7200 3600 7200
Wire Wire Line
	3600 7200 3600 6750
Text GLabel 7100 2400 2    60   Input ~ 0
L_IN
Text GLabel 7100 2500 2    60   Input ~ 0
L_OUT
Text GLabel 6000 6300 2    60   Input ~ 0
L_OUT
Text GLabel 2650 6000 1    60   Input ~ 0
L_IN
Text Notes 6400 7000 0    60   ~ 0
VBAT @ 3.6V nominal
Text Notes 6400 7100 0    60   ~ 0
VPP @ 170V
Text Notes 6300 6900 0    60   ~ 12
Notes
Text Notes 6400 7200 0    60   ~ 0
<20k series resistor recommended for daylight viewing
$EndSCHEMATC
