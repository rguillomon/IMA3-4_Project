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
LIBS:lm3670
LIBS:mx25r6435f-sop
LIBS:clavier-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATXMEGA16A4U-AU U?
U 1 1 5E14C77C
P 4700 3600
F 0 "U?" H 3950 4800 50  0000 L BNN
F 1 "ATXMEGA16A4U-AU" H 5050 2350 50  0000 L BNN
F 2 "TQFP44" H 4700 3600 50  0001 C CIN
F 3 "" H 4700 3600 50  0001 C CNN
	1    4700 3600
	1    0    0    -1  
$EndComp
$Comp
L USB_A J?
U 1 1 5E14CAB0
P 2650 4500
F 0 "J?" H 2450 4950 50  0000 L CNN
F 1 "USB_A" H 2450 4850 50  0000 L CNN
F 2 "" H 2800 4450 50  0001 C CNN
F 3 "" H 2800 4450 50  0001 C CNN
	1    2650 4500
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR?
U 1 1 5E14DDF9
P 4750 4900
F 0 "#PWR?" H 4750 4650 50  0001 C CNN
F 1 "GNDREF" H 4750 4750 50  0000 C CNN
F 2 "" H 4750 4900 50  0001 C CNN
F 3 "" H 4750 4900 50  0001 C CNN
	1    4750 4900
	1    0    0    -1  
$EndComp
Text GLabel 4700 2150 1    60   Output ~ 0
VCC
$Comp
L LM3670 U?
U 1 1 5E14E048
P 2800 3150
F 0 "U?" H 2800 3150 60  0000 C CNN
F 1 "LM3670" H 2800 3150 60  0000 C CNN
F 2 "" H 2800 3150 60  0001 C CNN
F 3 "" H 2800 3150 60  0001 C CNN
	1    2800 3150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5E14E10B
P 2800 3650
F 0 "C?" H 2810 3720 50  0000 L CNN
F 1 "C_Small" H 2810 3570 50  0000 L CNN
F 2 "" H 2800 3650 50  0001 C CNN
F 3 "" H 2800 3650 50  0001 C CNN
	1    2800 3650
	1    0    0    -1  
$EndComp
$Comp
L L_Small L?
U 1 1 5E14E2A2
P 2700 2750
F 0 "L?" H 2730 2790 50  0000 L CNN
F 1 "L_Small" H 2730 2710 50  0000 L CNN
F 2 "" H 2700 2750 50  0001 C CNN
F 3 "" H 2700 2750 50  0001 C CNN
	1    2700 2750
	0    -1   -1   0   
$EndComp
Text GLabel 3000 2550 1    60   Input ~ 0
VCC
$Comp
L C_Small C?
U 1 1 5E14E3E8
P 3100 2650
F 0 "C?" H 3110 2720 50  0000 L CNN
F 1 "C_Small" H 3110 2570 50  0000 L CNN
F 2 "" H 3100 2650 50  0001 C CNN
F 3 "" H 3100 2650 50  0001 C CNN
	1    3100 2650
	0    -1   -1   0   
$EndComp
$Comp
L GNDREF #PWR?
U 1 1 5E14E4DA
P 3200 2650
F 0 "#PWR?" H 3200 2400 50  0001 C CNN
F 1 "GNDREF" H 3200 2500 50  0000 C CNN
F 2 "" H 3200 2650 50  0001 C CNN
F 3 "" H 3200 2650 50  0001 C CNN
	1    3200 2650
	0    -1   -1   0   
$EndComp
$Comp
L MX25R6435F-SOP U?
U 1 1 5E1504AF
P 6650 4500
F 0 "U?" V 6200 4500 60  0000 C CNN
F 1 "MX25R6435F-SOP" V 6100 4500 60  0000 C CNN
F 2 "" H 7000 4500 60  0001 C CNN
F 3 "" H 7000 4500 60  0001 C CNN
	1    6650 4500
	0    1    1    0   
$EndComp
$Comp
L GNDREF #PWR?
U 1 1 5E150615
P 5950 4950
F 0 "#PWR?" H 5950 4700 50  0001 C CNN
F 1 "GNDREF" H 5950 4800 50  0000 C CNN
F 2 "" H 5950 4950 50  0001 C CNN
F 3 "" H 5950 4950 50  0001 C CNN
	1    5950 4950
	1    0    0    -1  
$EndComp
Text GLabel 7350 4050 2    60   Output ~ 0
VCC
Entry Wire Line
	6000 2600 6100 2500
Entry Wire Line
	6000 2700 6100 2600
Entry Wire Line
	6000 2800 6100 2700
Entry Wire Line
	6000 2900 6100 2800
Entry Wire Line
	6000 3000 6100 2900
Entry Wire Line
	6000 3100 6100 3000
Entry Wire Line
	6000 3200 6100 3100
Entry Wire Line
	6000 3300 6100 3200
Entry Wire Line
	5650 2150 5750 2050
Entry Wire Line
	5700 2150 5800 2050
Entry Wire Line
	5750 2150 5850 2050
Entry Wire Line
	5800 2150 5900 2050
Entry Wire Line
	5850 2150 5950 2050
Entry Wire Line
	5900 2150 6000 2050
Entry Wire Line
	5950 2150 6050 2050
Entry Wire Line
	6000 2150 6100 2050
Entry Wire Line
	5800 3450 5900 3550
Entry Wire Line
	5800 3550 5900 3650
Entry Wire Line
	5800 3650 5900 3750
Entry Wire Line
	5800 3750 5900 3850
Entry Wire Line
	5800 3900 5900 4000
Entry Wire Line
	5800 4000 5900 4100
Entry Wire Line
	5800 4100 5900 4200
Entry Wire Line
	5800 4200 5900 4300
Entry Wire Line
	3500 4300 3600 4400
Entry Wire Line
	3500 4200 3600 4300
Entry Wire Line
	3500 4100 3600 4200
Entry Wire Line
	3500 4000 3600 4100
Entry Wire Line
	3500 3900 3600 4000
Entry Wire Line
	3500 3800 3600 3900
Entry Wire Line
	3500 3650 3600 3750
Entry Wire Line
	3500 3550 3600 3650
Entry Wire Line
	3500 3450 3600 3550
Entry Wire Line
	3500 3350 3600 3450
Entry Bus Bus
	6250 2050 6350 2150
Entry Bus Bus
	6250 2250 6350 2150
Entry Wire Line
	6450 2150 6550 2050
Entry Wire Line
	6500 2150 6600 2050
Entry Wire Line
	6550 2150 6650 2050
Entry Wire Line
	6600 2150 6700 2050
Entry Wire Line
	6650 2150 6750 2050
Entry Wire Line
	6700 2150 6800 2050
Entry Wire Line
	6750 2150 6850 2050
Entry Wire Line
	6800 2150 6900 2050
Entry Wire Line
	6850 2150 6950 2050
Entry Wire Line
	6900 2150 7000 2050
Entry Wire Line
	6950 2150 7050 2050
Entry Wire Line
	7000 2150 7100 2050
Entry Wire Line
	7050 2150 7150 2050
Entry Wire Line
	7100 2150 7200 2050
Entry Wire Line
	7150 2150 7250 2050
Entry Wire Line
	7200 2150 7300 2050
Entry Wire Line
	7250 2150 7350 2050
Entry Wire Line
	7300 2150 7400 2050
$Comp
L GNDREF #PWR?
U 1 1 5E1535E8
P 2600 4900
F 0 "#PWR?" H 2600 4650 50  0001 C CNN
F 1 "GNDREF" H 2600 4750 50  0000 C CNN
F 2 "" H 2600 4900 50  0001 C CNN
F 3 "" H 2600 4900 50  0001 C CNN
	1    2600 4900
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR?
U 1 1 5E1539B6
P 2800 3550
F 0 "#PWR?" H 2800 3300 50  0001 C CNN
F 1 "GNDREF" H 2800 3400 50  0000 C CNN
F 2 "" H 2800 3550 50  0001 C CNN
F 3 "" H 2800 3550 50  0001 C CNN
	1    2800 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 4900 4650 4900
Wire Wire Line
	4650 4900 4750 4900
Wire Wire Line
	4750 4900 4850 4900
Connection ~ 4650 4900
Connection ~ 4750 4900
Wire Wire Line
	4600 2300 4700 2300
Wire Wire Line
	4700 2300 4800 2300
Wire Wire Line
	4800 2300 5000 2300
Connection ~ 4700 2300
Connection ~ 4800 2300
Wire Wire Line
	4700 2300 4700 2150
Wire Wire Line
	2800 3550 2800 3550
Wire Wire Line
	2600 2750 2550 2750
Wire Wire Line
	2800 2750 3000 2750
Wire Wire Line
	3000 2750 3050 2750
Wire Wire Line
	3000 2550 3000 2650
Wire Wire Line
	3000 2650 3000 2750
Connection ~ 3000 2750
Connection ~ 3000 2650
Wire Wire Line
	5950 4050 6000 4050
Wire Wire Line
	6000 4050 6000 4950
Wire Wire Line
	6000 4950 5950 4950
Wire Wire Line
	5900 4500 5600 4500
Wire Wire Line
	5600 4600 5850 5400
Wire Wire Line
	5850 5400 7450 5400
Wire Wire Line
	7450 5400 7450 4650
Wire Wire Line
	7450 4650 7350 4650
Wire Wire Line
	7350 4950 7350 5350
Wire Wire Line
	7350 5350 5900 5350
Wire Wire Line
	5900 5350 5600 4400
Wire Wire Line
	5600 2600 6000 2600
Wire Wire Line
	5600 2700 6000 2700
Wire Wire Line
	5600 2800 6000 2800
Wire Wire Line
	5600 2900 6000 2900
Wire Wire Line
	5600 3000 6000 3000
Wire Wire Line
	5600 3100 6000 3100
Wire Wire Line
	5600 3200 6000 3200
Wire Wire Line
	5600 3300 6000 3300
Wire Bus Line
	6100 2150 6100 2500
Wire Bus Line
	6100 2500 6100 2600
Wire Bus Line
	6100 2600 6100 2700
Wire Bus Line
	6100 2700 6100 2800
Wire Bus Line
	6100 2800 6100 2900
Wire Bus Line
	6100 2900 6100 3000
Wire Bus Line
	6100 3000 6100 3100
Wire Bus Line
	6100 3100 6100 3200
Wire Bus Line
	5600 2150 5650 2150
Wire Bus Line
	5650 2150 5700 2150
Wire Bus Line
	5700 2150 5750 2150
Wire Bus Line
	5750 2150 5800 2150
Wire Bus Line
	5800 2150 5850 2150
Wire Bus Line
	5850 2150 5900 2150
Wire Bus Line
	5900 2150 5950 2150
Wire Bus Line
	5950 2150 6000 2150
Wire Bus Line
	6000 2150 6100 2150
Wire Wire Line
	5800 2050 5800 2000
Wire Wire Line
	5900 2050 5900 2000
Wire Wire Line
	6000 2050 6000 2000
Wire Wire Line
	6100 2050 6100 2000
Wire Wire Line
	5600 4200 5800 4200
Wire Wire Line
	5600 4100 5800 4100
Wire Wire Line
	5600 4000 5800 4000
Wire Wire Line
	5600 3900 5800 3900
Wire Wire Line
	5600 3750 5800 3750
Wire Wire Line
	5600 3650 5800 3650
Wire Wire Line
	5600 3550 5800 3550
Wire Wire Line
	5600 3450 5800 3450
Wire Bus Line
	5900 3550 5900 3650
Wire Bus Line
	5900 3650 5900 3750
Wire Bus Line
	5900 3750 5900 3850
Wire Bus Line
	5900 3850 5900 4000
Wire Bus Line
	5900 4000 5900 4100
Wire Bus Line
	5900 4100 5900 4200
Wire Bus Line
	5900 4200 5900 4300
Wire Wire Line
	3800 4400 3600 4400
Wire Wire Line
	3800 4300 3600 4300
Wire Wire Line
	3800 4200 3600 4200
Wire Wire Line
	3800 4100 3600 4100
Wire Wire Line
	3800 4000 3600 4000
Wire Wire Line
	3800 3900 3600 3900
Wire Wire Line
	3800 3750 3600 3750
Wire Wire Line
	3800 3650 3600 3650
Wire Wire Line
	3800 3550 3600 3550
Wire Wire Line
	3800 3450 3600 3450
Wire Bus Line
	3500 1750 3500 3350
Wire Bus Line
	3500 3350 3500 3450
Wire Bus Line
	3500 3450 3500 3550
Wire Bus Line
	3500 3550 3500 3650
Wire Bus Line
	3500 3650 3500 3800
Wire Bus Line
	3500 3800 3500 3900
Wire Bus Line
	3500 3900 3500 4000
Wire Bus Line
	3500 4000 3500 4100
Wire Bus Line
	3500 4100 3500 4200
Wire Bus Line
	3500 4200 3500 4300
Wire Bus Line
	3500 1750 6250 1750
Wire Wire Line
	6600 2050 6600 2000
Wire Wire Line
	6700 2050 6700 2000
Wire Wire Line
	6800 2050 6800 2000
Wire Wire Line
	6900 2050 6900 2000
Wire Wire Line
	7000 2050 7000 2000
Wire Wire Line
	7100 2050 7100 2000
Wire Wire Line
	7200 2050 7200 2000
Wire Wire Line
	7300 2050 7300 2000
Wire Wire Line
	7400 2050 7400 2000
Wire Bus Line
	6350 2150 6450 2150
Wire Bus Line
	6450 2150 6500 2150
Wire Bus Line
	6500 2150 6550 2150
Wire Bus Line
	6550 2150 6600 2150
Wire Bus Line
	6600 2150 6650 2150
Wire Bus Line
	6650 2150 6700 2150
Wire Bus Line
	6700 2150 6750 2150
Wire Bus Line
	6750 2150 6800 2150
Wire Bus Line
	6800 2150 6850 2150
Wire Bus Line
	6850 2150 6900 2150
Wire Bus Line
	6900 2150 6950 2150
Wire Bus Line
	6950 2150 7000 2150
Wire Bus Line
	7000 2150 7050 2150
Wire Bus Line
	7050 2150 7100 2150
Wire Bus Line
	7100 2150 7150 2150
Wire Bus Line
	7150 2150 7200 2150
Wire Bus Line
	7200 2150 7250 2150
Wire Bus Line
	7250 2150 7300 2150
Wire Bus Line
	6250 1750 6250 2050
Wire Wire Line
	3800 4500 2950 4500
Wire Wire Line
	3800 4600 2950 4600
Wire Wire Line
	2550 4900 2650 4900
Wire Wire Line
	3050 3850 3050 3550
Wire Wire Line
	2550 3850 2800 3850
Wire Wire Line
	2800 3850 2950 3850
Wire Wire Line
	2950 3850 3050 3850
Wire Wire Line
	2550 3550 2550 3850
Connection ~ 2800 3850
Wire Wire Line
	2950 4300 2950 3850
Connection ~ 2950 3850
Wire Wire Line
	2800 3750 2800 3850
Wire Wire Line
	5900 4500 5950 4350
Wire Bus Line
	6250 2250 6250 3550
Wire Bus Line
	6250 3550 5900 3550
$EndSCHEMATC
