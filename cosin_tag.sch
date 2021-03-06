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
LIBS:cosin_tag-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Cosin Tag"
Date "2016-06-15"
Rev "1.0"
Comp "CCC-CH"
Comment1 "KiCad Workshop CoSin 2016"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Q_NMOS_GSD Q1
U 1 1 570B0385
P 2200 2100
F 0 "Q1" H 2500 2150 50  0000 R CNN
F 1 "2N7002" H 2700 2000 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2400 2200 50  0001 C CNN
F 3 "" H 2200 2100 50  0000 C CNN
	1    2200 2100
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 570B043F
P 7100 5650
F 0 "BT1" H 7200 5700 50  0000 L CNN
F 1 "3V" H 7200 5600 50  0000 L CNN
F 2 "nametag:CR2032" V 7100 5690 50  0001 C CNN
F 3 "" V 7100 5690 50  0000 C CNN
	1    7100 5650
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 570B0551
P 6300 5650
F 0 "C2" H 6325 5750 50  0000 L CNN
F 1 "100n" H 6325 5550 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 6338 5500 50  0001 C CNN
F 3 "" H 6300 5650 50  0000 C CNN
	1    6300 5650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 570B0DB6
P 6300 5300
F 0 "#PWR01" H 6300 5150 50  0001 C CNN
F 1 "VCC" H 6300 5450 50  0000 C CNN
F 2 "" H 6300 5300 50  0000 C CNN
F 3 "" H 6300 5300 50  0000 C CNN
	1    6300 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 570B118B
P 6300 6000
F 0 "#PWR02" H 6300 5750 50  0001 C CNN
F 1 "GND" H 6300 5850 50  0000 C CNN
F 2 "" H 6300 6000 50  0000 C CNN
F 3 "" H 6300 6000 50  0000 C CNN
	1    6300 6000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 570B12DA
P 7100 5400
F 0 "#PWR03" H 7100 5250 50  0001 C CNN
F 1 "VCC" H 7100 5550 50  0000 C CNN
F 2 "" H 7100 5400 50  0000 C CNN
F 3 "" H 7100 5400 50  0000 C CNN
	1    7100 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 570B138E
P 7100 5900
F 0 "#PWR04" H 7100 5650 50  0001 C CNN
F 1 "GND" H 7100 5750 50  0000 C CNN
F 2 "" H 7100 5900 50  0000 C CNN
F 3 "" H 7100 5900 50  0000 C CNN
	1    7100 5900
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P1
U 1 1 570B1B1B
P 2100 6750
F 0 "P1" H 2100 6950 50  0000 C CNN
F 1 "ISP" H 2100 6550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 2100 5550 50  0001 C CNN
F 3 "" H 2100 5550 50  0000 C CNN
	1    2100 6750
	-1   0    0    -1  
$EndComp
Text Label 1750 6650 2    60   ~ 0
MOSI
Text Label 2350 6650 0    60   ~ 0
MISO
Text Label 2350 6750 0    60   ~ 0
SCK
Text Label 2350 6850 0    60   ~ 0
~RESET
Text Label 3400 5900 2    60   ~ 0
~RESET
$Comp
L R R6
U 1 1 570B1DB6
P 3700 5150
F 0 "R6" V 3780 5150 50  0000 C CNN
F 1 "100k" V 3700 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3630 5150 50  0001 C CNN
F 3 "" H 3700 5150 50  0000 C CNN
	1    3700 5150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 570B223D
P 3700 4900
F 0 "#PWR05" H 3700 4750 50  0001 C CNN
F 1 "VCC" H 3700 5050 50  0000 C CNN
F 2 "" H 3700 4900 50  0000 C CNN
F 3 "" H 3700 4900 50  0000 C CNN
	1    3700 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 570B36D8
P 1850 6950
F 0 "#PWR06" H 1850 6700 50  0001 C CNN
F 1 "GND" H 1850 6800 50  0000 C CNN
F 2 "" H 1850 6950 50  0000 C CNN
F 3 "" H 1850 6950 50  0000 C CNN
	1    1850 6950
	-1   0    0    -1  
$EndComp
Text Label 3400 5700 2    60   ~ 0
DIGIT0
Text Label 3400 5800 2    60   ~ 0
DIGIT1
Text Label 3400 5600 2    60   ~ 0
DIGIT2
Text Label 3400 5400 2    60   ~ 0
DIGIT3
Text Label 3400 5500 2    60   ~ 0
DIGIT4
$Comp
L LED D1
U 1 1 570BAE53
P 3000 1700
F 0 "D1" H 3000 1800 50  0000 C CNN
F 1 "LED" H 3000 1600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3000 1700 50  0001 C CNN
F 3 "" H 3000 1700 50  0000 C CNN
	1    3000 1700
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 570BAE59
P 3300 1700
F 0 "D2" H 3300 1800 50  0000 C CNN
F 1 "LED" H 3300 1600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3300 1700 50  0001 C CNN
F 3 "" H 3300 1700 50  0000 C CNN
	1    3300 1700
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 570BAE5F
P 3600 1700
F 0 "D3" H 3600 1800 50  0000 C CNN
F 1 "LED" H 3600 1600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3600 1700 50  0001 C CNN
F 3 "" H 3600 1700 50  0000 C CNN
	1    3600 1700
	0    -1   -1   0   
$EndComp
$Comp
L LED D4
U 1 1 570BAE65
P 3900 1700
F 0 "D4" H 3900 1800 50  0000 C CNN
F 1 "LED" H 3900 1600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3900 1700 50  0001 C CNN
F 3 "" H 3900 1700 50  0000 C CNN
	1    3900 1700
	0    -1   -1   0   
$EndComp
$Comp
L LED D5
U 1 1 570BAE6B
P 4200 1700
F 0 "D5" H 4200 1800 50  0000 C CNN
F 1 "LED" H 4200 1600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4200 1700 50  0001 C CNN
F 3 "" H 4200 1700 50  0000 C CNN
	1    4200 1700
	0    -1   -1   0   
$EndComp
$Comp
L LED D6
U 1 1 570BAE71
P 4500 1700
F 0 "D6" H 4500 1800 50  0000 C CNN
F 1 "LED" H 4500 1600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4500 1700 50  0001 C CNN
F 3 "" H 4500 1700 50  0000 C CNN
	1    4500 1700
	0    -1   -1   0   
$EndComp
$Comp
L LED D7
U 1 1 570BAE77
P 4800 1700
F 0 "D7" H 4800 1800 50  0000 C CNN
F 1 "LED" H 4800 1600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4800 1700 50  0001 C CNN
F 3 "" H 4800 1700 50  0000 C CNN
	1    4800 1700
	0    -1   -1   0   
$EndComp
$Comp
L LED D8
U 1 1 570BAE7D
P 5100 1700
F 0 "D8" H 5100 1800 50  0000 C CNN
F 1 "LED" H 5100 1600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5100 1700 50  0001 C CNN
F 3 "" H 5100 1700 50  0000 C CNN
	1    5100 1700
	0    -1   -1   0   
$EndComp
$Comp
L LED D9
U 1 1 570BAE83
P 5400 1700
F 0 "D9" H 5400 1800 50  0000 C CNN
F 1 "LED" H 5400 1600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5400 1700 50  0001 C CNN
F 3 "" H 5400 1700 50  0000 C CNN
	1    5400 1700
	0    -1   -1   0   
$EndComp
$Comp
L LED D10
U 1 1 570BAE89
P 5700 1700
F 0 "D10" H 5700 1800 50  0000 C CNN
F 1 "LED" H 5700 1600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5700 1700 50  0001 C CNN
F 3 "" H 5700 1700 50  0000 C CNN
	1    5700 1700
	0    -1   -1   0   
$EndComp
$Comp
L Q_NMOS_GSD Q2
U 1 1 570BDC43
P 2200 2700
F 0 "Q2" H 2500 2750 50  0000 R CNN
F 1 "2N7002" H 2700 2600 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2400 2800 50  0001 C CNN
F 3 "" H 2200 2700 50  0000 C CNN
	1    2200 2700
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q3
U 1 1 570BDDC4
P 2200 3300
F 0 "Q3" H 2500 3350 50  0000 R CNN
F 1 "2N7002" H 2700 3200 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2400 3400 50  0001 C CNN
F 3 "" H 2200 3300 50  0000 C CNN
	1    2200 3300
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q4
U 1 1 570BDF42
P 2200 3900
F 0 "Q4" H 2500 3950 50  0000 R CNN
F 1 "2N7002" H 2700 3800 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2400 4000 50  0001 C CNN
F 3 "" H 2200 3900 50  0000 C CNN
	1    2200 3900
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q5
U 1 1 570BE0BF
P 2200 4500
F 0 "Q5" H 2500 4550 50  0000 R CNN
F 1 "2N7002" H 2700 4400 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2400 4600 50  0001 C CNN
F 3 "" H 2200 4500 50  0000 C CNN
	1    2200 4500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 570BF227
P 6100 1300
F 0 "R1" V 6180 1300 50  0000 C CNN
F 1 "10" V 6100 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6030 1300 50  0001 C CNN
F 3 "" H 6100 1300 50  0000 C CNN
	1    6100 1300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 570BFAFA
P 6100 1100
F 0 "#PWR07" H 6100 950 50  0001 C CNN
F 1 "VCC" H 6100 1250 50  0000 C CNN
F 2 "" H 6100 1100 50  0000 C CNN
F 3 "" H 6100 1100 50  0000 C CNN
	1    6100 1100
	1    0    0    -1  
$EndComp
$Comp
L LED D21
U 1 1 570C12F4
P 3000 2300
F 0 "D21" H 3000 2400 50  0000 C CNN
F 1 "LED" H 3000 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3000 2300 50  0001 C CNN
F 3 "" H 3000 2300 50  0000 C CNN
	1    3000 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D22
U 1 1 570C12FA
P 3300 2300
F 0 "D22" H 3300 2400 50  0000 C CNN
F 1 "LED" H 3300 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3300 2300 50  0001 C CNN
F 3 "" H 3300 2300 50  0000 C CNN
	1    3300 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D23
U 1 1 570C1300
P 3600 2300
F 0 "D23" H 3600 2400 50  0000 C CNN
F 1 "LED" H 3600 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3600 2300 50  0001 C CNN
F 3 "" H 3600 2300 50  0000 C CNN
	1    3600 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D24
U 1 1 570C1306
P 3900 2300
F 0 "D24" H 3900 2400 50  0000 C CNN
F 1 "LED" H 3900 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3900 2300 50  0001 C CNN
F 3 "" H 3900 2300 50  0000 C CNN
	1    3900 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D25
U 1 1 570C130C
P 4200 2300
F 0 "D25" H 4200 2400 50  0000 C CNN
F 1 "LED" H 4200 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4200 2300 50  0001 C CNN
F 3 "" H 4200 2300 50  0000 C CNN
	1    4200 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D26
U 1 1 570C1312
P 4500 2300
F 0 "D26" H 4500 2400 50  0000 C CNN
F 1 "LED" H 4500 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4500 2300 50  0001 C CNN
F 3 "" H 4500 2300 50  0000 C CNN
	1    4500 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D27
U 1 1 570C1318
P 4800 2300
F 0 "D27" H 4800 2400 50  0000 C CNN
F 1 "LED" H 4800 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4800 2300 50  0001 C CNN
F 3 "" H 4800 2300 50  0000 C CNN
	1    4800 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D28
U 1 1 570C131E
P 5100 2300
F 0 "D28" H 5100 2400 50  0000 C CNN
F 1 "LED" H 5100 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5100 2300 50  0001 C CNN
F 3 "" H 5100 2300 50  0000 C CNN
	1    5100 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D29
U 1 1 570C1324
P 5400 2300
F 0 "D29" H 5400 2400 50  0000 C CNN
F 1 "LED" H 5400 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5400 2300 50  0001 C CNN
F 3 "" H 5400 2300 50  0000 C CNN
	1    5400 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D30
U 1 1 570C132A
P 5700 2300
F 0 "D30" H 5700 2400 50  0000 C CNN
F 1 "LED" H 5700 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5700 2300 50  0001 C CNN
F 3 "" H 5700 2300 50  0000 C CNN
	1    5700 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D31
U 1 1 570C1330
P 6000 2300
F 0 "D31" H 6000 2400 50  0000 C CNN
F 1 "LED" H 6000 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 6000 2300 50  0001 C CNN
F 3 "" H 6000 2300 50  0000 C CNN
	1    6000 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D32
U 1 1 570C1336
P 6300 2300
F 0 "D32" H 6300 2400 50  0000 C CNN
F 1 "LED" H 6300 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 6300 2300 50  0001 C CNN
F 3 "" H 6300 2300 50  0000 C CNN
	1    6300 2300
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 570C1382
P 6550 1900
F 0 "R2" V 6630 1900 50  0000 C CNN
F 1 "8.2" V 6550 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6480 1900 50  0001 C CNN
F 3 "" H 6550 1900 50  0000 C CNN
	1    6550 1900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 570C1388
P 6550 1700
F 0 "#PWR08" H 6550 1550 50  0001 C CNN
F 1 "VCC" H 6550 1850 50  0000 C CNN
F 2 "" H 6550 1700 50  0000 C CNN
F 3 "" H 6550 1700 50  0000 C CNN
	1    6550 1700
	1    0    0    -1  
$EndComp
$Comp
L LED D41
U 1 1 570C1B0E
P 3000 2900
F 0 "D41" H 3000 3000 50  0000 C CNN
F 1 "LED" H 3000 2800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3000 2900 50  0001 C CNN
F 3 "" H 3000 2900 50  0000 C CNN
	1    3000 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D42
U 1 1 570C1B14
P 3300 2900
F 0 "D42" H 3300 3000 50  0000 C CNN
F 1 "LED" H 3300 2800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3300 2900 50  0001 C CNN
F 3 "" H 3300 2900 50  0000 C CNN
	1    3300 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D43
U 1 1 570C1B1A
P 3600 2900
F 0 "D43" H 3600 3000 50  0000 C CNN
F 1 "LED" H 3600 2800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3600 2900 50  0001 C CNN
F 3 "" H 3600 2900 50  0000 C CNN
	1    3600 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D44
U 1 1 570C1B20
P 3900 2900
F 0 "D44" H 3900 3000 50  0000 C CNN
F 1 "LED" H 3900 2800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3900 2900 50  0001 C CNN
F 3 "" H 3900 2900 50  0000 C CNN
	1    3900 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D45
U 1 1 570C1B26
P 4200 2900
F 0 "D45" H 4200 3000 50  0000 C CNN
F 1 "LED" H 4200 2800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4200 2900 50  0001 C CNN
F 3 "" H 4200 2900 50  0000 C CNN
	1    4200 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D46
U 1 1 570C1B2C
P 4500 2900
F 0 "D46" H 4500 3000 50  0000 C CNN
F 1 "LED" H 4500 2800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4500 2900 50  0001 C CNN
F 3 "" H 4500 2900 50  0000 C CNN
	1    4500 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D47
U 1 1 570C1B32
P 4800 2900
F 0 "D47" H 4800 3000 50  0000 C CNN
F 1 "LED" H 4800 2800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4800 2900 50  0001 C CNN
F 3 "" H 4800 2900 50  0000 C CNN
	1    4800 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D48
U 1 1 570C1B38
P 5100 2900
F 0 "D48" H 5100 3000 50  0000 C CNN
F 1 "LED" H 5100 2800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5100 2900 50  0001 C CNN
F 3 "" H 5100 2900 50  0000 C CNN
	1    5100 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D49
U 1 1 570C1B3E
P 5400 2900
F 0 "D49" H 5400 3000 50  0000 C CNN
F 1 "LED" H 5400 2800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5400 2900 50  0001 C CNN
F 3 "" H 5400 2900 50  0000 C CNN
	1    5400 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D50
U 1 1 570C1B44
P 5700 2900
F 0 "D50" H 5700 3000 50  0000 C CNN
F 1 "LED" H 5700 2800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5700 2900 50  0001 C CNN
F 3 "" H 5700 2900 50  0000 C CNN
	1    5700 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D51
U 1 1 570C1B4A
P 6000 2900
F 0 "D51" H 6000 3000 50  0000 C CNN
F 1 "LED" H 6000 2800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 6000 2900 50  0001 C CNN
F 3 "" H 6000 2900 50  0000 C CNN
	1    6000 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 570C1B9C
P 6700 2500
F 0 "R3" V 6780 2500 50  0000 C CNN
F 1 "10" V 6700 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6630 2500 50  0001 C CNN
F 3 "" H 6700 2500 50  0000 C CNN
	1    6700 2500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 570C1BA2
P 6700 2300
F 0 "#PWR09" H 6700 2150 50  0001 C CNN
F 1 "VCC" H 6700 2450 50  0000 C CNN
F 2 "" H 6700 2300 50  0000 C CNN
F 3 "" H 6700 2300 50  0000 C CNN
	1    6700 2300
	1    0    0    -1  
$EndComp
$Comp
L LED D61
U 1 1 570C1BBC
P 3000 3500
F 0 "D61" H 3000 3600 50  0000 C CNN
F 1 "LED" H 3000 3400 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3000 3500 50  0001 C CNN
F 3 "" H 3000 3500 50  0000 C CNN
	1    3000 3500
	0    -1   -1   0   
$EndComp
$Comp
L LED D62
U 1 1 570C1BC2
P 3300 3500
F 0 "D62" H 3300 3600 50  0000 C CNN
F 1 "LED" H 3300 3400 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3300 3500 50  0001 C CNN
F 3 "" H 3300 3500 50  0000 C CNN
	1    3300 3500
	0    -1   -1   0   
$EndComp
$Comp
L LED D63
U 1 1 570C1BC8
P 3600 3500
F 0 "D63" H 3600 3600 50  0000 C CNN
F 1 "LED" H 3600 3400 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3600 3500 50  0001 C CNN
F 3 "" H 3600 3500 50  0000 C CNN
	1    3600 3500
	0    -1   -1   0   
$EndComp
$Comp
L LED D64
U 1 1 570C1BCE
P 3900 3500
F 0 "D64" H 3900 3600 50  0000 C CNN
F 1 "LED" H 3900 3400 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3900 3500 50  0001 C CNN
F 3 "" H 3900 3500 50  0000 C CNN
	1    3900 3500
	0    -1   -1   0   
$EndComp
$Comp
L LED D65
U 1 1 570C1BD4
P 4200 3500
F 0 "D65" H 4200 3600 50  0000 C CNN
F 1 "LED" H 4200 3400 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4200 3500 50  0001 C CNN
F 3 "" H 4200 3500 50  0000 C CNN
	1    4200 3500
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 570C1C4A
P 6300 3100
F 0 "R4" V 6380 3100 50  0000 C CNN
F 1 "24" V 6300 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6230 3100 50  0001 C CNN
F 3 "" H 6300 3100 50  0000 C CNN
	1    6300 3100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 570C1C50
P 6300 2900
F 0 "#PWR010" H 6300 2750 50  0001 C CNN
F 1 "VCC" H 6300 3050 50  0000 C CNN
F 2 "" H 6300 2900 50  0000 C CNN
F 3 "" H 6300 2900 50  0000 C CNN
	1    6300 2900
	1    0    0    -1  
$EndComp
$Comp
L LED D81
U 1 1 570C20FC
P 3000 4100
F 0 "D81" H 3000 4200 50  0000 C CNN
F 1 "LED" H 3000 4000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3000 4100 50  0001 C CNN
F 3 "" H 3000 4100 50  0000 C CNN
	1    3000 4100
	0    -1   -1   0   
$EndComp
$Comp
L LED D82
U 1 1 570C2102
P 3300 4100
F 0 "D82" H 3300 4200 50  0000 C CNN
F 1 "LED" H 3300 4000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3300 4100 50  0001 C CNN
F 3 "" H 3300 4100 50  0000 C CNN
	1    3300 4100
	0    -1   -1   0   
$EndComp
$Comp
L LED D83
U 1 1 570C2108
P 3600 4100
F 0 "D83" H 3600 4200 50  0000 C CNN
F 1 "LED" H 3600 4000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3600 4100 50  0001 C CNN
F 3 "" H 3600 4100 50  0000 C CNN
	1    3600 4100
	0    -1   -1   0   
$EndComp
$Comp
L LED D84
U 1 1 570C210E
P 3900 4100
F 0 "D84" H 3900 4200 50  0000 C CNN
F 1 "LED" H 3900 4000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3900 4100 50  0001 C CNN
F 3 "" H 3900 4100 50  0000 C CNN
	1    3900 4100
	0    -1   -1   0   
$EndComp
$Comp
L LED D85
U 1 1 570C2114
P 4200 4100
F 0 "D85" H 4200 4200 50  0000 C CNN
F 1 "LED" H 4200 4000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4200 4100 50  0001 C CNN
F 3 "" H 4200 4100 50  0000 C CNN
	1    4200 4100
	0    -1   -1   0   
$EndComp
$Comp
L LED D86
U 1 1 570C211A
P 4500 4100
F 0 "D86" H 4500 4200 50  0000 C CNN
F 1 "LED" H 4500 4000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4500 4100 50  0001 C CNN
F 3 "" H 4500 4100 50  0000 C CNN
	1    4500 4100
	0    -1   -1   0   
$EndComp
$Comp
L LED D87
U 1 1 570C2120
P 4800 4100
F 0 "D87" H 4800 4200 50  0000 C CNN
F 1 "LED" H 4800 4000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4800 4100 50  0001 C CNN
F 3 "" H 4800 4100 50  0000 C CNN
	1    4800 4100
	0    -1   -1   0   
$EndComp
$Comp
L LED D88
U 1 1 570C2126
P 5100 4100
F 0 "D88" H 5100 4200 50  0000 C CNN
F 1 "LED" H 5100 4000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5100 4100 50  0001 C CNN
F 3 "" H 5100 4100 50  0000 C CNN
	1    5100 4100
	0    -1   -1   0   
$EndComp
$Comp
L LED D89
U 1 1 570C212C
P 5400 4100
F 0 "D89" H 5400 4200 50  0000 C CNN
F 1 "LED" H 5400 4000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5400 4100 50  0001 C CNN
F 3 "" H 5400 4100 50  0000 C CNN
	1    5400 4100
	0    -1   -1   0   
$EndComp
$Comp
L LED D90
U 1 1 570C2132
P 5700 4100
F 0 "D90" H 5700 4200 50  0000 C CNN
F 1 "LED" H 5700 4000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5700 4100 50  0001 C CNN
F 3 "" H 5700 4100 50  0000 C CNN
	1    5700 4100
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 570C218A
P 6300 3700
F 0 "R5" V 6380 3700 50  0000 C CNN
F 1 "10" V 6300 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6230 3700 50  0001 C CNN
F 3 "" H 6300 3700 50  0000 C CNN
	1    6300 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 570C2299
P 6300 3550
F 0 "#PWR011" H 6300 3400 50  0001 C CNN
F 1 "VCC" H 6300 3700 50  0000 C CNN
F 2 "" H 6300 3550 50  0000 C CNN
F 3 "" H 6300 3550 50  0000 C CNN
	1    6300 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 570C3954
P 2300 4700
F 0 "#PWR012" H 2300 4450 50  0001 C CNN
F 1 "GND" H 2300 4550 50  0000 C CNN
F 2 "" H 2300 4700 50  0000 C CNN
F 3 "" H 2300 4700 50  0000 C CNN
	1    2300 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 570C884E
P 2300 4100
F 0 "#PWR013" H 2300 3850 50  0001 C CNN
F 1 "GND" H 2300 3950 50  0000 C CNN
F 2 "" H 2300 4100 50  0000 C CNN
F 3 "" H 2300 4100 50  0000 C CNN
	1    2300 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 570C89C4
P 2300 3500
F 0 "#PWR014" H 2300 3250 50  0001 C CNN
F 1 "GND" H 2300 3350 50  0000 C CNN
F 2 "" H 2300 3500 50  0000 C CNN
F 3 "" H 2300 3500 50  0000 C CNN
	1    2300 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 570C8CAF
P 2300 2900
F 0 "#PWR015" H 2300 2650 50  0001 C CNN
F 1 "GND" H 2300 2750 50  0000 C CNN
F 2 "" H 2300 2900 50  0000 C CNN
F 3 "" H 2300 2900 50  0000 C CNN
	1    2300 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 570C95B5
P 2300 2300
F 0 "#PWR016" H 2300 2050 50  0001 C CNN
F 1 "GND" H 2300 2150 50  0000 C CNN
F 2 "" H 2300 2300 50  0000 C CNN
F 3 "" H 2300 2300 50  0000 C CNN
	1    2300 2300
	1    0    0    -1  
$EndComp
Text Label 2000 2100 2    60   ~ 0
DIGIT0
Text Label 2000 2700 2    60   ~ 0
DIGIT1
Text Label 2000 3300 2    60   ~ 0
DIGIT2
Text Label 2000 3900 2    60   ~ 0
DIGIT3
Text Label 2000 4500 2    60   ~ 0
DIGIT4
$Comp
L JUMPER JP1
U 1 1 570BE7E4
P 2700 5900
F 0 "JP1" H 2700 6050 50  0000 C CNN
F 1 "RESET" H 2700 5820 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQP0" H 2700 5900 50  0001 C CNN
F 3 "" H 2700 5900 50  0000 C CNN
	1    2700 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5900 7100 5800
Wire Wire Line
	7100 5500 7100 5400
Wire Wire Line
	3700 4900 3700 5000
Wire Wire Line
	1850 6950 1850 6850
Wire Wire Line
	6300 5800 6300 6000
Connection ~ 6300 5900
Wire Wire Line
	3700 5300 3700 5900
Wire Wire Line
	3000 5900 4300 5900
Connection ~ 3700 5900
Wire Wire Line
	3400 5400 4300 5400
Wire Wire Line
	3400 5500 4300 5500
Wire Wire Line
	3400 5600 4300 5600
Wire Wire Line
	3400 5700 4300 5700
Wire Wire Line
	3400 5800 4300 5800
Connection ~ 4000 5600
Connection ~ 4100 5500
Connection ~ 4200 5400
Wire Wire Line
	2300 1900 5700 1900
Wire Wire Line
	3300 1900 5400 1900
Connection ~ 3000 1900
Connection ~ 3300 1900
Connection ~ 3600 1900
Connection ~ 3900 1900
Connection ~ 4200 1900
Connection ~ 4500 1900
Connection ~ 4800 1900
Connection ~ 5100 1900
Connection ~ 5400 1900
Wire Wire Line
	3000 1500 6100 1500
Wire Wire Line
	6100 1150 6100 1100
Connection ~ 5700 1500
Connection ~ 5400 1500
Connection ~ 5100 1500
Connection ~ 4800 1500
Connection ~ 4500 1500
Connection ~ 4200 1500
Connection ~ 3900 1500
Connection ~ 3600 1500
Connection ~ 3300 1500
Wire Wire Line
	2300 2500 6300 2500
Connection ~ 3000 2500
Connection ~ 3300 2500
Connection ~ 3600 2500
Connection ~ 3900 2500
Connection ~ 4200 2500
Connection ~ 4500 2500
Connection ~ 4800 2500
Connection ~ 5100 2500
Connection ~ 5400 2500
Connection ~ 5700 2500
Connection ~ 6000 2500
Wire Wire Line
	3000 2100 6550 2100
Wire Wire Line
	6550 1750 6550 1700
Connection ~ 6300 2100
Connection ~ 6000 2100
Connection ~ 5700 2100
Connection ~ 5400 2100
Connection ~ 5100 2100
Connection ~ 4800 2100
Connection ~ 4500 2100
Connection ~ 4200 2100
Connection ~ 3900 2100
Connection ~ 3600 2100
Connection ~ 3300 2100
Connection ~ 3000 3100
Connection ~ 3300 3100
Connection ~ 3600 3100
Connection ~ 3900 3100
Connection ~ 4200 3100
Connection ~ 4500 3100
Connection ~ 4800 3100
Connection ~ 5100 3100
Connection ~ 5400 3100
Connection ~ 5700 3100
Wire Wire Line
	6700 2350 6700 2300
Connection ~ 6000 2700
Connection ~ 5700 2700
Connection ~ 5400 2700
Connection ~ 5100 2700
Connection ~ 4800 2700
Connection ~ 4500 2700
Connection ~ 4200 2700
Connection ~ 3900 2700
Connection ~ 3600 2700
Connection ~ 3300 2700
Connection ~ 3000 3700
Connection ~ 3300 3700
Connection ~ 3600 3700
Connection ~ 3900 3700
Wire Wire Line
	6300 2950 6300 2900
Connection ~ 4200 3300
Connection ~ 3900 3300
Connection ~ 3600 3300
Connection ~ 3300 3300
Connection ~ 3000 4300
Connection ~ 3300 4300
Connection ~ 3600 4300
Connection ~ 3900 4300
Connection ~ 4200 4300
Connection ~ 4500 4300
Connection ~ 4800 4300
Connection ~ 5100 4300
Connection ~ 5400 4300
Connection ~ 5700 4300
Connection ~ 6000 3900
Connection ~ 5700 3900
Connection ~ 5400 3900
Connection ~ 5100 3900
Connection ~ 4800 3900
Connection ~ 4500 3900
Connection ~ 4200 3900
Connection ~ 3900 3900
Connection ~ 3600 3900
Connection ~ 3300 3900
Wire Wire Line
	4200 6300 1750 6300
Wire Wire Line
	1750 6300 1750 6750
Wire Wire Line
	4100 6650 2350 6650
Wire Wire Line
	4000 6750 2350 6750
Connection ~ 3900 5900
Wire Wire Line
	4200 5400 4200 6300
Wire Wire Line
	4100 5500 4100 6650
Wire Wire Line
	4000 5600 4000 6750
$Comp
L GND #PWR017
U 1 1 574F602F
P 2350 6000
F 0 "#PWR017" H 2350 5750 50  0001 C CNN
F 1 "GND" H 2350 5850 50  0000 C CNN
F 2 "" H 2350 6000 50  0000 C CNN
F 3 "" H 2350 6000 50  0000 C CNN
	1    2350 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5900 3900 6850
Wire Wire Line
	3900 6850 2350 6850
Wire Wire Line
	2350 6000 2350 5900
Wire Wire Line
	2350 5900 2400 5900
Text Notes 7450 5700 0    60   ~ 0
Coincell battery holder\nCR2032
Wire Wire Line
	6300 5300 6300 5500
Connection ~ 6300 5400
$Comp
L ATTINY13-SS IC1
U 1 1 57553A6D
P 5300 5650
F 0 "IC1" H 4500 6050 50  0000 C CNN
F 1 "ATTINY13-SS" H 5950 5250 50  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 5900 5650 50  0001 C CIN
F 3 "" H 4500 6000 50  0000 C CNN
	1    5300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6750 1850 6750
$Comp
L VCC #PWR018
U 1 1 5757BCC2
P 1850 6550
F 0 "#PWR018" H 1850 6400 50  0001 C CNN
F 1 "VCC" H 1850 6700 50  0000 C CNN
F 2 "" H 1850 6550 50  0000 C CNN
F 3 "" H 1850 6550 50  0000 C CNN
	1    1850 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6650 1850 6550
Wire Wire Line
	6100 1500 6100 1450
Wire Wire Line
	6550 2100 6550 2050
Wire Wire Line
	6700 2700 6700 2650
Wire Wire Line
	3000 2700 6700 2700
Wire Wire Line
	2300 3100 6000 3100
Wire Wire Line
	2300 3700 4200 3700
Wire Wire Line
	3000 3300 6300 3300
Wire Wire Line
	6300 3300 6300 3250
Wire Wire Line
	6300 3900 6300 3850
Wire Wire Line
	3000 3900 6300 3900
Wire Wire Line
	2300 4300 6000 4300
$Comp
L LED D91
U 1 1 570C2138
P 6000 4100
F 0 "D91" H 6000 4200 50  0000 C CNN
F 1 "LED" H 6000 4000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 6000 4100 50  0001 C CNN
F 3 "" H 6000 4100 50  0000 C CNN
	1    6000 4100
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
