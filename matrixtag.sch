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
LIBS:nametag
LIBS:matrixtag-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "LED Name Tag"
Date "2016-06-23"
Rev "2"
Comp "Chaostreff Basel"
Comment1 "KiCad Workshop CoSin 2016"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Q_NMOS_GSD Q1
U 1 1 570B0385
P 2450 2750
F 0 "Q1" H 2750 2800 50  0000 R CNN
F 1 "2N7002" H 3100 2700 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2650 2850 50  0001 C CNN
F 3 "" H 2450 2750 50  0000 C CNN
	1    2450 2750
	0    1    1    0   
$EndComp
$Comp
L Battery BT1
U 1 1 570B043F
P 9650 4850
F 0 "BT1" H 9750 4900 50  0000 L CNN
F 1 "3V" H 9750 4800 50  0000 L CNN
F 2 "nametag:CR2032" V 9650 4890 50  0001 C CNN
F 3 "" V 9650 4890 50  0000 C CNN
	1    9650 4850
	1    0    0    -1  
$EndComp
$Comp
L ATTINY4313-S U1
U 1 1 570B04BA
P 7750 2250
F 0 "U1" H 6600 1350 50  0000 C CNN
F 1 "ATTINY4313-S" H 8700 1350 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-20_7.5x12.8mm_Pitch1.27mm" H 7750 2250 50  0001 C CIN
F 3 "" H 7750 2250 50  0000 C CNN
	1    7750 2250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 570B0551
P 8000 1050
F 0 "C1" H 8025 1150 50  0000 L CNN
F 1 "100n" H 8025 950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8038 900 50  0001 C CNN
F 3 "" H 8000 1050 50  0000 C CNN
	1    8000 1050
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 570B05B8
P 2150 1250
F 0 "R1" V 2230 1250 50  0000 C CNN
F 1 "47" V 2150 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 1250 50  0001 C CNN
F 3 "" H 2150 1250 50  0000 C CNN
	1    2150 1250
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR01
U 1 1 570B0DB6
P 7750 950
F 0 "#PWR01" H 7750 800 50  0001 C CNN
F 1 "VCC" H 7750 1100 50  0000 C CNN
F 2 "" H 7750 950 50  0000 C CNN
F 3 "" H 7750 950 50  0000 C CNN
	1    7750 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 570B0DF4
P 7750 3250
F 0 "#PWR02" H 7750 3000 50  0001 C CNN
F 1 "GND" H 7750 3100 50  0000 C CNN
F 2 "" H 7750 3250 50  0000 C CNN
F 3 "" H 7750 3250 50  0000 C CNN
	1    7750 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 570B118B
P 8250 1050
F 0 "#PWR03" H 8250 800 50  0001 C CNN
F 1 "GND" H 8250 900 50  0000 C CNN
F 2 "" H 8250 1050 50  0000 C CNN
F 3 "" H 8250 1050 50  0000 C CNN
	1    8250 1050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 570B12DA
P 9650 4600
F 0 "#PWR04" H 9650 4450 50  0001 C CNN
F 1 "VCC" H 9650 4750 50  0000 C CNN
F 2 "" H 9650 4600 50  0000 C CNN
F 3 "" H 9650 4600 50  0000 C CNN
	1    9650 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 570B138E
P 9650 5100
F 0 "#PWR05" H 9650 4850 50  0001 C CNN
F 1 "GND" H 9650 4950 50  0000 C CNN
F 2 "" H 9650 5100 50  0000 C CNN
F 3 "" H 9650 5100 50  0000 C CNN
	1    9650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5100 9650 5000
Wire Wire Line
	9650 4700 9650 4600
Wire Wire Line
	8250 1050 8150 1050
Connection ~ 7750 1050
Wire Wire Line
	7750 950  7750 1150
Wire Wire Line
	7850 1050 7750 1050
$Comp
L CONN_02X03 P1
U 1 1 570B1B1B
P 6300 4900
F 0 "P1" H 6300 5100 50  0000 C CNN
F 1 "ISP" H 6300 4700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 6300 3700 50  0001 C CNN
F 3 "" H 6300 3700 50  0000 C CNN
	1    6300 4900
	1    0    0    -1  
$EndComp
Text Label 6550 4900 0    60   ~ 0
MOSI
Text Label 6050 4800 2    60   ~ 0
MISO
Text Label 6050 4900 2    60   ~ 0
SCK
Text Label 6050 5000 2    60   ~ 0
~RESET
Text Label 6200 1450 2    60   ~ 0
~RESET
$Comp
L R R3
U 1 1 570B1DB6
P 6300 1200
F 0 "R3" V 6380 1200 50  0000 C CNN
F 1 "100k" V 6300 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6230 1200 50  0001 C CNN
F 3 "" H 6300 1200 50  0000 C CNN
	1    6300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1450 6400 1450
Wire Wire Line
	6300 1350 6300 1450
Connection ~ 6300 1450
$Comp
L VCC #PWR06
U 1 1 570B223D
P 6300 950
F 0 "#PWR06" H 6300 800 50  0001 C CNN
F 1 "VCC" H 6300 1100 50  0000 C CNN
F 2 "" H 6300 950 50  0000 C CNN
F 3 "" H 6300 950 50  0000 C CNN
	1    6300 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 950  6300 1050
$Comp
L GND #PWR07
U 1 1 570B36D8
P 6550 5100
F 0 "#PWR07" H 6550 4850 50  0001 C CNN
F 1 "GND" H 6550 4950 50  0000 C CNN
F 2 "" H 6550 5100 50  0000 C CNN
F 3 "" H 6550 5100 50  0000 C CNN
	1    6550 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5100 6550 5000
Text Label 1900 1950 2    60   ~ 0
ROW1
Text Label 1900 1850 2    60   ~ 0
ROW2
Text Label 1900 1750 2    60   ~ 0
ROW3
Text Label 1900 1650 2    60   ~ 0
ROW4
Text Label 1900 1550 2    60   ~ 0
ROW5
Text Label 1900 1450 2    60   ~ 0
ROW6
Text Label 1900 1350 2    60   ~ 0
ROW7
Text Label 1900 1250 2    60   ~ 0
ROW8
Text Label 2150 2550 2    60   ~ 0
COL1
Text Label 2150 2950 2    60   ~ 0
COL2
Text Label 2150 3350 2    60   ~ 0
COL3
Text Label 2150 3750 2    60   ~ 0
COL4
Text Label 2150 4150 2    60   ~ 0
COL5
Text Label 2150 4550 2    60   ~ 0
COL6
Text Label 2150 4950 2    60   ~ 0
COL7
Text Label 2150 5350 2    60   ~ 0
COL8
$Comp
L Q_NMOS_GSD Q2
U 1 1 570D026F
P 2550 3150
F 0 "Q2" H 2850 3200 50  0000 R CNN
F 1 "2N7002" H 3200 3100 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2750 3250 50  0001 C CNN
F 3 "" H 2550 3150 50  0000 C CNN
	1    2550 3150
	0    1    1    0   
$EndComp
$Comp
L Q_NMOS_GSD Q3
U 1 1 570D02BE
P 2650 3550
F 0 "Q3" H 2950 3600 50  0000 R CNN
F 1 "2N7002" H 3300 3500 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2850 3650 50  0001 C CNN
F 3 "" H 2650 3550 50  0000 C CNN
	1    2650 3550
	0    1    1    0   
$EndComp
$Comp
L Q_NMOS_GSD Q4
U 1 1 570D0306
P 2750 3950
F 0 "Q4" H 3050 4000 50  0000 R CNN
F 1 "2N7002" H 3400 3900 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2950 4050 50  0001 C CNN
F 3 "" H 2750 3950 50  0000 C CNN
	1    2750 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1250 2300 1250
Wire Wire Line
	2000 1250 1900 1250
$Comp
L R R2
U 1 1 570D0DA6
P 2150 1350
F 0 "R2" V 2230 1350 50  0000 C CNN
F 1 "47" V 2150 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 1350 50  0001 C CNN
F 3 "" H 2150 1350 50  0000 C CNN
	1    2150 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1350 2300 1350
Wire Wire Line
	2000 1350 1900 1350
$Comp
L R R4
U 1 1 570D0DDA
P 2150 1450
F 0 "R4" V 2230 1450 50  0000 C CNN
F 1 "47" V 2150 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 1450 50  0001 C CNN
F 3 "" H 2150 1450 50  0000 C CNN
	1    2150 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1450 2300 1450
Wire Wire Line
	2000 1450 1900 1450
$Comp
L R R5
U 1 1 570D0DE2
P 2150 1550
F 0 "R5" V 2230 1550 50  0000 C CNN
F 1 "47" V 2150 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 1550 50  0001 C CNN
F 3 "" H 2150 1550 50  0000 C CNN
	1    2150 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1550 2300 1550
Wire Wire Line
	2000 1550 1900 1550
$Comp
L R R6
U 1 1 570D0E7C
P 2150 1650
F 0 "R6" V 2230 1650 50  0000 C CNN
F 1 "47" V 2150 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 1650 50  0001 C CNN
F 3 "" H 2150 1650 50  0000 C CNN
	1    2150 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1650 2300 1650
Wire Wire Line
	2000 1650 1900 1650
$Comp
L R R7
U 1 1 570D0E84
P 2150 1750
F 0 "R7" V 2230 1750 50  0000 C CNN
F 1 "47" V 2150 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 1750 50  0001 C CNN
F 3 "" H 2150 1750 50  0000 C CNN
	1    2150 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1750 2300 1750
Wire Wire Line
	2000 1750 1900 1750
$Comp
L R R8
U 1 1 570D0E8C
P 2150 1850
F 0 "R8" V 2230 1850 50  0000 C CNN
F 1 "47" V 2150 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 1850 50  0001 C CNN
F 3 "" H 2150 1850 50  0000 C CNN
	1    2150 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1850 2300 1850
Wire Wire Line
	2000 1850 1900 1850
$Comp
L R R9
U 1 1 570D0E94
P 2150 1950
F 0 "R9" V 2230 1950 50  0000 C CNN
F 1 "47" V 2150 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 1950 50  0001 C CNN
F 3 "" H 2150 1950 50  0000 C CNN
	1    2150 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1950 2300 1950
Wire Wire Line
	2000 1950 1900 1950
$Comp
L Q_NMOS_GSD Q5
U 1 1 570D2DA0
P 2850 4350
F 0 "Q5" H 3150 4400 50  0000 R CNN
F 1 "2N7002" H 3500 4300 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3050 4450 50  0001 C CNN
F 3 "" H 2850 4350 50  0000 C CNN
	1    2850 4350
	0    1    1    0   
$EndComp
$Comp
L Q_NMOS_GSD Q6
U 1 1 570D2DA6
P 2950 4750
F 0 "Q6" H 3250 4800 50  0000 R CNN
F 1 "2N7002" H 3600 4700 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3150 4850 50  0001 C CNN
F 3 "" H 2950 4750 50  0000 C CNN
	1    2950 4750
	0    1    1    0   
$EndComp
$Comp
L Q_NMOS_GSD Q7
U 1 1 570D2DAC
P 3050 5150
F 0 "Q7" H 3350 5200 50  0000 R CNN
F 1 "2N7002" H 3700 5100 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3250 5250 50  0001 C CNN
F 3 "" H 3050 5150 50  0000 C CNN
	1    3050 5150
	0    1    1    0   
$EndComp
$Comp
L Q_NMOS_GSD Q8
U 1 1 570D2DB2
P 3150 5550
F 0 "Q8" H 3450 5600 50  0000 R CNN
F 1 "2N7002" H 3800 5500 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3350 5650 50  0001 C CNN
F 3 "" H 3150 5550 50  0000 C CNN
	1    3150 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 2500 2650 2850
Wire Wire Line
	2850 2500 2850 3250
Wire Wire Line
	3050 2500 3050 3650
Wire Wire Line
	3250 2500 3250 4050
Wire Wire Line
	3450 2500 3450 4450
Wire Wire Line
	3650 2500 3650 4850
Wire Wire Line
	3850 2500 3850 5250
Wire Wire Line
	4050 5650 4050 2500
Wire Wire Line
	2250 2850 2250 5650
Wire Wire Line
	2250 5650 2950 5650
Wire Wire Line
	2850 5250 2850 5650
Connection ~ 2850 5650
Wire Wire Line
	2750 4850 2750 5650
Connection ~ 2750 5650
Wire Wire Line
	2650 4450 2650 5650
Connection ~ 2650 5650
Wire Wire Line
	2550 4050 2550 5650
Connection ~ 2550 5650
Wire Wire Line
	2450 3650 2450 5650
Connection ~ 2450 5650
Wire Wire Line
	2350 3250 2350 5650
Connection ~ 2350 5650
$Comp
L GND #PWR08
U 1 1 570D3F3B
P 2250 5650
F 0 "#PWR08" H 2250 5400 50  0001 C CNN
F 1 "GND" H 2250 5500 50  0000 C CNN
F 2 "" H 2250 5650 50  0000 C CNN
F 3 "" H 2250 5650 50  0000 C CNN
	1    2250 5650
	1    0    0    -1  
$EndComp
Connection ~ 2250 5650
Wire Wire Line
	3150 5350 2150 5350
Wire Wire Line
	3050 4950 2150 4950
Wire Wire Line
	2950 4550 2150 4550
Wire Wire Line
	2850 4150 2150 4150
Wire Wire Line
	2750 3750 2150 3750
Wire Wire Line
	2650 3350 2150 3350
Wire Wire Line
	2550 2950 2150 2950
Wire Wire Line
	2450 2550 2150 2550
Text Label 9100 1450 0    60   ~ 0
COL1
Text Label 9100 1650 0    60   ~ 0
COL2
Text Label 9100 1850 0    60   ~ 0
COL3
Text Label 10000 2050 0    60   ~ 0
COL4
Text Label 9100 2850 0    60   ~ 0
COL5
Text Label 9100 2650 0    60   ~ 0
COL6
Text Label 6400 1950 2    60   ~ 0
COL7
Text Label 9100 2450 0    60   ~ 0
COL8
Text Label 9100 1550 0    60   ~ 0
ROW1
Text Label 9100 1750 0    60   ~ 0
ROW2
Text Label 10000 1950 0    60   ~ 0
ROW3
Text Label 10000 2150 0    60   ~ 0
ROW4
Text Label 9100 2750 0    60   ~ 0
ROW5
Text Label 9100 2550 0    60   ~ 0
ROW6
Text Label 6400 1750 2    60   ~ 0
ROW7
Text Label 9100 2350 0    60   ~ 0
ROW8
Text Label 9700 2250 3    60   ~ 0
MISO
Text Label 9600 2250 3    60   ~ 0
MOSI
Text Label 9800 2250 3    60   ~ 0
SCK
Wire Wire Line
	9100 1950 10000 1950
Wire Wire Line
	9100 2050 10000 2050
Wire Wire Line
	9100 2150 10000 2150
Wire Wire Line
	9600 2250 9600 1950
Connection ~ 9600 1950
Wire Wire Line
	9700 2250 9700 2050
Connection ~ 9700 2050
Wire Wire Line
	9800 2250 9800 2150
Connection ~ 9800 2150
$Comp
L SW_PUSH SW1
U 1 1 570D8D62
P 8100 4900
F 0 "SW1" H 8250 5010 50  0000 C CNN
F 1 "RESET" H 8100 4820 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_SMALL" H 8100 4900 50  0001 C CNN
F 3 "" H 8100 4900 50  0000 C CNN
	1    8100 4900
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 570D8DE2
P 8350 4900
F 0 "C2" H 8375 5000 50  0000 L CNN
F 1 "10n" H 8375 4800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8388 4750 50  0001 C CNN
F 3 "" H 8350 4900 50  0000 C CNN
	1    8350 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 570D948E
P 8100 5200
F 0 "#PWR09" H 8100 4950 50  0001 C CNN
F 1 "GND" H 8100 5050 50  0000 C CNN
F 2 "" H 8100 5200 50  0000 C CNN
F 3 "" H 8100 5200 50  0000 C CNN
	1    8100 5200
	1    0    0    -1  
$EndComp
Text Label 8100 4500 1    60   ~ 0
~RESET
Wire Wire Line
	8100 4600 8350 4600
Wire Wire Line
	8350 4600 8350 4750
Wire Wire Line
	8100 4500 8100 4600
Connection ~ 8100 4600
Connection ~ 8100 5200
Wire Wire Line
	8100 5200 8350 5200
Wire Wire Line
	8350 5200 8350 5050
$Comp
L VCC #PWR010
U 1 1 575C24E3
P 6550 4700
F 0 "#PWR010" H 6550 4550 50  0001 C CNN
F 1 "VCC" H 6550 4850 50  0000 C CNN
F 2 "" H 6550 4700 50  0000 C CNN
F 3 "" H 6550 4700 50  0000 C CNN
	1    6550 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4700 6550 4800
$Comp
L CSM-88261EG DS1
U 1 1 575C3C86
P 3400 1700
F 0 "DS1" H 2700 1050 60  0000 C CNN
F 1 "CSM-88261EG" H 3850 1050 60  0000 C CNN
F 2 "nametag:CSM-88261" H 4850 2000 60  0001 C CNN
F 3 "" H 4850 2000 60  0000 C CNN
	1    3400 1700
	1    0    0    1   
$EndComp
Wire Wire Line
	2850 3250 2750 3250
Wire Wire Line
	3050 3650 2850 3650
Wire Wire Line
	3250 4050 2950 4050
Wire Wire Line
	3450 4450 3050 4450
Wire Wire Line
	3650 4850 3150 4850
Wire Wire Line
	3850 5250 3250 5250
Wire Wire Line
	3350 5650 4050 5650
$EndSCHEMATC
