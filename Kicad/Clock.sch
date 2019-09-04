EESchema Schematic File Version 4
LIBS:Uhr-cache
EELAYER 29 0
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
L 74xx:74LS138 U6
U 1 1 5D5F2D1C
P 6350 4800
F 0 "U6" H 6450 5300 50  0000 C CNN
F 1 "74LS138" H 6300 4750 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6350 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 6350 4800 50  0001 C CNN
	1    6350 4800
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny2313-20SU U7
U 1 1 5D5F4378
P 2150 5450
F 0 "U7" H 2300 6550 50  0000 C CNN
F 1 "ATtiny2313-20SU" H 2050 4850 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 2150 5450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-2543-AVR-ATtiny2313_Datasheet.pdf" H 2150 5450 50  0001 C CNN
	1    2150 5450
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSC02-123 U3
U 1 1 5D5F5582
P 1900 1600
F 0 "U3" H 1900 2175 50  0000 C CNN
F 1 "KCSC02-123" H 1900 2176 50  0001 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 1900 1000 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSC02-123(Ver.10A).pdf" H 1400 2075 50  0001 L CNN
	1    1900 1600
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSC02-123 U4
U 1 1 5D5F6C6F
P 3350 1600
F 0 "U4" H 3350 2175 50  0000 C CNN
F 1 "KCSC02-123" H 3350 2176 50  0001 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 3350 1000 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSC02-123(Ver.10A).pdf" H 2850 2075 50  0001 L CNN
	1    3350 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D5FAADD
P 4300 1300
F 0 "D1" V 4339 1183 50  0000 R CNN
F 1 "LED" V 4248 1183 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4300 1300 50  0001 C CNN
F 3 "~" H 4300 1300 50  0001 C CNN
	1    4300 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5D5FC0CB
P 4300 1750
F 0 "D2" V 4339 1633 50  0000 R CNN
F 1 "LED" V 4248 1633 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4300 1750 50  0001 C CNN
F 3 "~" H 4300 1750 50  0001 C CNN
	1    4300 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5D5FCBB0
P 4300 900
F 0 "#PWR01" H 4300 750 50  0001 C CNN
F 1 "+5V" H 4315 1073 50  0000 C CNN
F 2 "" H 4300 900 50  0001 C CNN
F 3 "" H 4300 900 50  0001 C CNN
	1    4300 900 
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSC02-123 U1
U 1 1 5D607614
P 5750 1550
F 0 "U1" H 5750 2125 50  0000 C CNN
F 1 "KCSC02-123" H 5750 2126 50  0001 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 5750 950 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSC02-123(Ver.10A).pdf" H 5250 2025 50  0001 L CNN
	1    5750 1550
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSC02-123 U2
U 1 1 5D60761E
P 7200 1550
F 0 "U2" H 7200 2125 50  0000 C CNN
F 1 "KCSC02-123" H 7200 2126 50  0001 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 7200 950 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSC02-123(Ver.10A).pdf" H 6700 2025 50  0001 L CNN
	1    7200 1550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC848 Q5
U 1 1 5D61CBD3
P 4800 2800
F 0 "Q5" H 4991 2846 50  0000 L CNN
F 1 "BC848" H 4991 2755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 5000 2725 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 4800 2800 50  0001 L CNN
	1    4800 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D620397
P 4350 2800
F 0 "R2" V 4350 2800 50  0000 C CNN
F 1 "1k" V 4450 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4280 2800 50  0001 C CNN
F 3 "~" H 4350 2800 50  0001 C CNN
	1    4350 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 1900 2300 1900
$Comp
L Device:R R1
U 1 1 5D62E0B8
P 4300 2250
F 0 "R1" H 4370 2296 50  0000 L CNN
F 1 "120" H 4370 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4230 2250 50  0001 C CNN
F 3 "~" H 4300 2250 50  0001 C CNN
	1    4300 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1900 3750 1900
Wire Wire Line
	6050 1850 6200 1850
Wire Wire Line
	7500 1850 7650 1850
Wire Wire Line
	1600 1300 1500 1300
Wire Wire Line
	1600 1400 1500 1400
Wire Wire Line
	1600 1500 1500 1500
Wire Wire Line
	1600 1600 1500 1600
Wire Wire Line
	1600 1700 1500 1700
Wire Wire Line
	1600 1800 1500 1800
Wire Wire Line
	1600 1900 1500 1900
Wire Wire Line
	3050 1300 2950 1300
Wire Wire Line
	3050 1400 2950 1400
Wire Wire Line
	3050 1500 2950 1500
Wire Wire Line
	3050 1600 2950 1600
Wire Wire Line
	3050 1700 2950 1700
Wire Wire Line
	3050 1800 2950 1800
Wire Wire Line
	3050 1900 2950 1900
Wire Wire Line
	5450 1250 5350 1250
Wire Wire Line
	5450 1350 5350 1350
Wire Wire Line
	5450 1450 5350 1450
Wire Wire Line
	5450 1550 5350 1550
Wire Wire Line
	5450 1650 5350 1650
Wire Wire Line
	5450 1750 5350 1750
Wire Wire Line
	5450 1850 5350 1850
Wire Wire Line
	6900 1250 6800 1250
Wire Wire Line
	6900 1350 6800 1350
Wire Wire Line
	6900 1450 6800 1450
Wire Wire Line
	6900 1550 6800 1550
Wire Wire Line
	6900 1650 6800 1650
Wire Wire Line
	6900 1750 6800 1750
Wire Wire Line
	6900 1850 6800 1850
Wire Wire Line
	4300 2400 4300 2550
Wire Wire Line
	4300 2550 4900 2550
Wire Wire Line
	4900 2550 4900 2600
Wire Wire Line
	4500 2800 4600 2800
$Comp
L power:GND #PWR08
U 1 1 5D69D184
P 4900 3100
F 0 "#PWR08" H 4900 2850 50  0001 C CNN
F 1 "GND" H 4905 2927 50  0000 C CNN
F 2 "" H 4900 3100 50  0001 C CNN
F 3 "" H 4900 3100 50  0001 C CNN
	1    4900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3000 4900 3100
Text Label 1550 1300 2    50   ~ 0
a
Text Label 1550 1400 2    50   ~ 0
b
Text Label 1550 1500 2    50   ~ 0
c
Text Label 1550 1600 2    50   ~ 0
d
Text Label 1550 1700 2    50   ~ 0
e
Text Label 1550 1800 2    50   ~ 0
f
Text Label 1550 1900 2    50   ~ 0
g
Text Label 3000 1300 2    50   ~ 0
a
Text Label 5400 1250 2    50   ~ 0
a
Text Label 6850 1250 2    50   ~ 0
a
Text Label 3000 1400 2    50   ~ 0
b
Text Label 5400 1350 2    50   ~ 0
b
Text Label 6850 1350 2    50   ~ 0
b
Text Label 3000 1500 2    50   ~ 0
c
Text Label 5400 1450 2    50   ~ 0
c
Text Label 6850 1450 2    50   ~ 0
c
Text Label 3000 1600 2    50   ~ 0
d
Text Label 5400 1550 2    50   ~ 0
d
Text Label 6850 1550 2    50   ~ 0
d
Text Label 3000 1700 2    50   ~ 0
e
Text Label 5400 1650 2    50   ~ 0
e
Text Label 6850 1650 2    50   ~ 0
e
Text Label 3000 1800 2    50   ~ 0
f
Text Label 5400 1750 2    50   ~ 0
f
Text Label 6850 1750 2    50   ~ 0
f
Text Label 3000 1900 2    50   ~ 0
g
Text Label 5400 1850 2    50   ~ 0
g
Text Label 6850 1850 2    50   ~ 0
g
Text Label 5250 4500 2    50   ~ 0
a
Text Label 5250 4600 2    50   ~ 0
b
Text Label 5250 4700 2    50   ~ 0
c
Text Label 5250 4800 2    50   ~ 0
d
Text Label 5250 4900 2    50   ~ 0
e
Text Label 5250 5000 2    50   ~ 0
f
Text Label 5250 5100 2    50   ~ 0
g
Entry Wire Line
	5300 4500 5400 4600
Entry Wire Line
	5300 4600 5400 4700
Entry Wire Line
	5300 4700 5400 4800
Entry Wire Line
	5300 4800 5400 4900
Entry Wire Line
	5300 4900 5400 5000
Entry Wire Line
	5300 5000 5400 5100
Entry Wire Line
	5300 5100 5400 5200
Entry Wire Line
	1400 1200 1500 1300
Entry Wire Line
	1400 1300 1500 1400
Entry Wire Line
	1400 1400 1500 1500
Entry Wire Line
	1400 1500 1500 1600
Entry Wire Line
	1400 1600 1500 1700
Entry Wire Line
	1400 1700 1500 1800
Entry Wire Line
	1400 1800 1500 1900
Entry Wire Line
	2850 1200 2950 1300
Entry Wire Line
	2850 1300 2950 1400
Entry Wire Line
	2850 1400 2950 1500
Entry Wire Line
	2850 1500 2950 1600
Entry Wire Line
	2850 1600 2950 1700
Entry Wire Line
	2850 1700 2950 1800
Entry Wire Line
	2850 1800 2950 1900
Entry Wire Line
	5250 1150 5350 1250
Entry Wire Line
	5250 1250 5350 1350
Entry Wire Line
	5250 1350 5350 1450
Entry Wire Line
	5250 1450 5350 1550
Entry Wire Line
	5250 1550 5350 1650
Entry Wire Line
	5250 1650 5350 1750
Entry Wire Line
	5250 1750 5350 1850
Entry Wire Line
	6700 1150 6800 1250
Entry Wire Line
	6700 1250 6800 1350
Entry Wire Line
	6700 1450 6800 1550
Entry Wire Line
	6700 1350 6800 1450
Entry Wire Line
	6700 1550 6800 1650
Entry Wire Line
	6700 1650 6800 1750
Entry Wire Line
	6700 1750 6800 1850
Wire Bus Line
	1400 3850 2850 3850
Connection ~ 5250 3850
Connection ~ 2850 3850
Wire Bus Line
	2850 3850 5250 3850
Wire Bus Line
	6700 3850 5400 3850
$Comp
L Device:R R3
U 1 1 5D6ED0AB
P 1250 4350
F 0 "R3" H 1180 4304 50  0000 R CNN
F 1 "10k" H 1180 4395 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1180 4350 50  0001 C CNN
F 3 "~" H 1250 4350 50  0001 C CNN
	1    1250 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 4650 1450 4650
Wire Wire Line
	1250 4650 1250 4500
Wire Wire Line
	1250 4200 1250 4150
Wire Wire Line
	1250 4150 2150 4150
Wire Wire Line
	2150 4150 2150 4350
$Comp
L power:+5V #PWR011
U 1 1 5D6F4B1B
P 1250 4150
F 0 "#PWR011" H 1250 4000 50  0001 C CNN
F 1 "+5V" H 1265 4323 50  0000 C CNN
F 2 "" H 1250 4150 50  0001 C CNN
F 3 "" H 1250 4150 50  0001 C CNN
	1    1250 4150
	1    0    0    -1  
$EndComp
Connection ~ 1250 4150
$Comp
L power:GND #PWR016
U 1 1 5D6F5821
P 2150 6650
F 0 "#PWR016" H 2150 6400 50  0001 C CNN
F 1 "GND" H 2155 6477 50  0000 C CNN
F 2 "" H 2150 6650 50  0001 C CNN
F 3 "" H 2150 6650 50  0001 C CNN
	1    2150 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6550 2150 6600
Wire Wire Line
	2150 4150 3450 4150
Wire Wire Line
	4350 4150 4350 4200
Connection ~ 2150 4150
Wire Wire Line
	6350 4150 6350 4200
Connection ~ 4350 4150
$Comp
L power:GND #PWR012
U 1 1 5D700849
P 4800 5200
F 0 "#PWR012" H 4800 4950 50  0001 C CNN
F 1 "GND" H 4805 5027 50  0000 C CNN
F 2 "" H 4800 5200 50  0001 C CNN
F 3 "" H 4800 5200 50  0001 C CNN
	1    4800 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D700F1C
P 6350 5600
F 0 "#PWR013" H 6350 5350 50  0001 C CNN
F 1 "GND" H 6355 5427 50  0000 C CNN
F 2 "" H 6350 5600 50  0001 C CNN
F 3 "" H 6350 5600 50  0001 C CNN
	1    6350 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5D7012EB
P 6250 7150
F 0 "#PWR017" H 6250 6900 50  0001 C CNN
F 1 "GND" H 6255 6977 50  0000 C CNN
F 2 "" H 6250 7150 50  0001 C CNN
F 3 "" H 6250 7150 50  0001 C CNN
	1    6250 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5500 6350 5600
Wire Wire Line
	5650 7000 6250 7000
Wire Wire Line
	6250 7000 6250 7150
$Comp
L power:+5V #PWR015
U 1 1 5D70C735
P 6000 6100
F 0 "#PWR015" H 6000 5950 50  0001 C CNN
F 1 "+5V" H 6015 6273 50  0000 C CNN
F 2 "" H 6000 6100 50  0001 C CNN
F 3 "" H 6000 6100 50  0001 C CNN
	1    6000 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5150 3350 5150
Wire Wire Line
	3750 5150 3750 7000
Wire Wire Line
	3750 7000 4100 7000
$Comp
L Device:R R14
U 1 1 5D722FC6
P 5850 6800
F 0 "R14" V 5850 6800 50  0000 C CNN
F 1 "10k" V 5966 6800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5780 6800 50  0001 C CNN
F 3 "~" H 5850 6800 50  0001 C CNN
	1    5850 6800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 6800 5700 6800
$Comp
L Switch:SW_Push SW2
U 1 1 5D753D4F
P 9100 3300
F 0 "SW2" H 9100 3585 50  0001 C CNN
F 1 "Prgm" H 9100 3250 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 9100 3500 50  0001 C CNN
F 3 "~" H 9100 3500 50  0001 C CNN
	1    9100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5050 2850 5050
Wire Wire Line
	2750 4950 2850 4950
Wire Wire Line
	2750 5850 2950 5850
Text Label 2850 5850 0    50   ~ 0
d0
Text Label 2850 6050 0    50   ~ 0
d1
Text Label 2850 6150 0    50   ~ 0
d2
Text Label 2850 5950 0    50   ~ 0
d3
$Comp
L Switch:SW_Push SW1
U 1 1 5D752AEA
P 9100 2950
F 0 "SW1" H 9100 3235 50  0001 C CNN
F 1 "Inc" H 9100 2900 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 9100 3150 50  0001 C CNN
F 3 "~" H 9100 3150 50  0001 C CNN
	1    9100 2950
	1    0    0    -1  
$EndComp
Text Label 3850 4500 2    50   ~ 0
d0
Text Label 3850 4700 2    50   ~ 0
d2
Text Label 3850 4800 2    50   ~ 0
d3
Wire Wire Line
	3850 4500 3750 4500
Wire Wire Line
	3850 4600 3750 4600
Wire Wire Line
	3850 4800 3750 4800
Entry Wire Line
	2950 4650 3050 4550
Entry Wire Line
	2950 4750 3050 4650
Entry Wire Line
	2950 5850 3050 5950
Entry Wire Line
	2950 5950 3050 6050
Entry Wire Line
	3650 4600 3750 4500
Entry Wire Line
	3650 4700 3750 4600
Entry Wire Line
	3650 4800 3750 4700
Entry Wire Line
	3650 4900 3750 4800
Wire Bus Line
	3650 5850 3050 5850
Entry Wire Line
	5550 4700 5650 4600
Entry Wire Line
	5550 4600 5650 4500
Text Label 5700 4500 0    50   ~ 0
a0
Text Label 5700 4600 0    50   ~ 0
a1
Entry Wire Line
	2950 6150 3050 6250
Text Label 2850 4750 0    50   ~ 0
a0
Text Label 2850 4650 0    50   ~ 0
a1
Wire Wire Line
	5850 5100 5700 5100
Wire Wire Line
	5700 5100 5700 5200
Wire Wire Line
	5700 5200 5850 5200
Wire Wire Line
	6350 5500 5700 5500
Wire Wire Line
	5700 5500 5700 5200
Connection ~ 6350 5500
Connection ~ 5700 5200
Wire Wire Line
	5650 4500 5850 4500
Wire Wire Line
	5650 4600 5850 4600
Wire Wire Line
	5850 5000 5800 5000
Wire Wire Line
	4350 4150 6350 4150
Wire Wire Line
	5800 5000 5800 4250
Wire Wire Line
	2950 4650 2750 4650
$Comp
L Device:R R6
U 1 1 5DAC4B01
P 5050 4500
F 0 "R6" V 5050 4500 50  0000 C CNN
F 1 "150" V 4934 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4980 4500 50  0001 C CNN
F 3 "~" H 5050 4500 50  0001 C CNN
	1    5050 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5DAC5411
P 5050 4600
F 0 "R7" V 5050 4600 50  0000 C CNN
F 1 "150" V 4934 4600 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4980 4600 50  0001 C CNN
F 3 "~" H 5050 4600 50  0001 C CNN
	1    5050 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5DAC5556
P 5050 4700
F 0 "R8" V 5050 4700 50  0000 C CNN
F 1 "150" V 4934 4700 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4980 4700 50  0001 C CNN
F 3 "~" H 5050 4700 50  0001 C CNN
	1    5050 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5DAC56E0
P 5050 4800
F 0 "R9" V 5050 4800 50  0000 C CNN
F 1 "150" V 4934 4800 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4980 4800 50  0001 C CNN
F 3 "~" H 5050 4800 50  0001 C CNN
	1    5050 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5DAC5874
P 5050 4900
F 0 "R10" V 5050 4900 50  0000 C CNN
F 1 "150" V 4934 4900 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4980 4900 50  0001 C CNN
F 3 "~" H 5050 4900 50  0001 C CNN
	1    5050 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5DAC59DE
P 5050 5000
F 0 "R11" V 5050 5000 50  0000 C CNN
F 1 "150" V 4934 5000 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4980 5000 50  0001 C CNN
F 3 "~" H 5050 5000 50  0001 C CNN
	1    5050 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5DAC5BAA
P 5050 5100
F 0 "R12" V 5050 5100 50  0000 C CNN
F 1 "160" V 4934 5100 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4980 5100 50  0001 C CNN
F 3 "~" H 5050 5100 50  0001 C CNN
	1    5050 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 4500 4900 4500
Wire Wire Line
	4850 4600 4900 4600
Wire Wire Line
	4850 4700 4900 4700
Wire Wire Line
	4850 4800 4900 4800
Wire Wire Line
	4850 4900 4900 4900
Wire Wire Line
	4850 5000 4900 5000
Wire Wire Line
	4850 5100 4900 5100
Wire Wire Line
	5200 4500 5300 4500
Wire Wire Line
	5300 4600 5200 4600
Wire Wire Line
	5200 4700 5300 4700
Wire Wire Line
	5300 4800 5200 4800
Wire Wire Line
	5200 4900 5300 4900
Wire Wire Line
	5300 5000 5200 5000
Wire Wire Line
	5200 5100 5300 5100
Connection ~ 5400 3850
Wire Bus Line
	5400 3850 5250 3850
Wire Wire Line
	3750 4700 3850 4700
Text Label 3850 4600 2    50   ~ 0
d1
Wire Wire Line
	4300 900  4300 1150
Wire Wire Line
	4300 1900 4300 2100
Wire Wire Line
	4300 1450 4300 1600
Text Label 5800 4250 2    50   ~ 0
PWM
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 5DC80628
P 850 7100
F 0 "J1" H 900 7550 50  0000 R CNN
F 1 "AVR-ISP-6" H 1350 6750 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" V 600 7150 50  0001 C CNN
F 3 " ~" H -425 6550 50  0001 C CNN
	1    850  7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4150 1100 4150
Wire Wire Line
	750  4150 750  6600
$Comp
L power:GND #PWR018
U 1 1 5DC9BD2A
P 750 7600
F 0 "#PWR018" H 750 7350 50  0001 C CNN
F 1 "GND" H 755 7427 50  0000 C CNN
F 2 "" H 750 7600 50  0001 C CNN
F 3 "" H 750 7600 50  0001 C CNN
	1    750  7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  7500 750  7600
Wire Wire Line
	3250 5250 3250 6900
Wire Wire Line
	3250 6900 1250 6900
Wire Wire Line
	3350 5150 3350 7000
Wire Wire Line
	3350 7000 1250 7000
Connection ~ 3350 5150
Wire Wire Line
	3350 5150 3750 5150
Wire Wire Line
	1250 7200 1450 7200
Wire Wire Line
	1450 7200 1450 4650
Connection ~ 1450 4650
Wire Wire Line
	1450 4650 1250 4650
Wire Wire Line
	3450 7100 1250 7100
Wire Wire Line
	3550 6800 4150 6800
Wire Wire Line
	3450 5350 3450 7100
Connection ~ 3450 7100
Wire Wire Line
	3850 7100 3850 6900
Wire Wire Line
	3850 6900 4000 6900
$Comp
L Device:Battery_Cell BT1
U 1 1 5DE8DADB
P 10350 5250
F 0 "BT1" H 10468 5346 50  0000 L CNN
F 1 "Battery_Cell" H 10468 5255 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1058_1x2032" V 10350 5310 50  0001 C CNN
F 3 "~" V 10350 5310 50  0001 C CNN
	1    10350 5250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC848 Q6
U 1 1 5DE906EC
P 9700 4350
F 0 "Q6" H 9891 4396 50  0000 L CNN
F 1 "BC848C" H 9891 4305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 9900 4275 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 9700 4350 50  0001 L CNN
	1    9700 4350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC858 Q7
U 1 1 5DE9153A
P 9700 5250
F 0 "Q7" H 9891 5296 50  0000 L CNN
F 1 "BC858A" H 9891 5205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 9900 5175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 9700 5250 50  0001 L CNN
	1    9700 5250
	1    0    0    1   
$EndComp
Text GLabel 6500 5850 2    50   Input ~ 0
BAT_BACKUP
$Comp
L RV-8564-C2:RV-8564-C2 U8
U 1 1 5D5FE0C0
P 4900 6850
F 0 "U8" H 4900 7300 50  0000 C CNN
F 1 "RV-8564-C2" H 4900 6600 50  0000 C CNN
F 2 "Package_SO:SSOP-10_3.9x4.9mm_P1.00mm" H 4900 6850 50  0001 C CNN
F 3 "" H 4900 6850 50  0001 C CNN
	1    4900 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6700 3850 6700
Wire Wire Line
	3850 6700 3850 5850
Text GLabel 2850 4950 2    50   Input ~ 0
PRGM_BTN
Text GLabel 2850 5050 2    50   Input ~ 0
INC_BTN
Text GLabel 8850 5600 0    50   Input ~ 0
BAT_BACKUP
Text GLabel 8750 2950 0    50   Input ~ 0
INC_BTN
Text GLabel 8750 3300 0    50   Input ~ 0
PRGM_BTN
Wire Wire Line
	8750 2950 8900 2950
Wire Wire Line
	8750 3300 8900 3300
Wire Wire Line
	9300 2950 9400 2950
Wire Wire Line
	9400 2950 9400 3300
Wire Wire Line
	9300 3300 9400 3300
Connection ~ 9400 3300
Wire Wire Line
	9400 3300 9400 3500
$Comp
L power:GND #PWR02
U 1 1 5DF2A3D3
P 9400 3500
F 0 "#PWR02" H 9400 3250 50  0001 C CNN
F 1 "GND" H 9405 3327 50  0000 C CNN
F 2 "" H 9400 3500 50  0001 C CNN
F 3 "" H 9400 3500 50  0001 C CNN
	1    9400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5050 9800 4950
Wire Wire Line
	9800 4950 10350 4950
Wire Wire Line
	10350 4950 10350 5050
Wire Wire Line
	9800 5450 9800 5600
Wire Wire Line
	9800 5600 9200 5600
Wire Wire Line
	9800 4550 9800 4800
Wire Wire Line
	9800 4800 9200 4800
Wire Wire Line
	9200 4800 9200 5600
Wire Wire Line
	8850 5600 9200 5600
Connection ~ 9200 5600
Wire Wire Line
	10350 5350 10350 6100
$Comp
L power:GND #PWR014
U 1 1 5DF6BAC6
P 10350 6200
F 0 "#PWR014" H 10350 5950 50  0001 C CNN
F 1 "GND" H 10355 6027 50  0000 C CNN
F 2 "" H 10350 6200 50  0001 C CNN
F 3 "" H 10350 6200 50  0001 C CNN
	1    10350 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5DF76C2B
P 9800 3950
F 0 "#PWR010" H 9800 3800 50  0001 C CNN
F 1 "+5V" H 9815 4123 50  0000 C CNN
F 2 "" H 9800 3950 50  0001 C CNN
F 3 "" H 9800 3950 50  0001 C CNN
	1    9800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5250 9350 5250
Wire Wire Line
	9350 5250 9350 4350
Wire Wire Line
	9350 4350 9500 4350
$Comp
L Device:R R4
U 1 1 5DF8D7C2
P 9100 4350
F 0 "R4" V 9100 4350 50  0000 C CNN
F 1 "1k" V 9200 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9030 4350 50  0001 C CNN
F 3 "~" H 9100 4350 50  0001 C CNN
	1    9100 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 4350 9350 4350
Connection ~ 9350 4350
$Comp
L Device:R R13
U 1 1 5DFAFEBE
P 9350 5850
F 0 "R13" H 9450 5900 50  0000 C CNN
F 1 "100k" H 9500 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9280 5850 50  0001 C CNN
F 3 "~" H 9350 5850 50  0001 C CNN
	1    9350 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5250 9350 5700
Connection ~ 9350 5250
Wire Wire Line
	9350 6000 9350 6100
Wire Wire Line
	9350 6100 10350 6100
Connection ~ 10350 6100
Wire Wire Line
	10350 6100 10350 6200
$Comp
L Device:CP C1
U 1 1 5E03EF6E
P 9450 1800
F 0 "C1" H 9568 1846 50  0000 L CNN
F 1 "4.7uF" H 9568 1755 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.7" H 9488 1650 50  0001 C CNN
F 3 "~" H 9450 1800 50  0001 C CNN
	1    9450 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E040611
P 1100 5500
F 0 "C2" H 1215 5546 50  0000 L CNN
F 1 "100nF" H 1215 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1138 5350 50  0001 C CNN
F 3 "~" H 1100 5500 50  0001 C CNN
	1    1100 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E041E8C
P 6250 6600
F 0 "C3" H 6365 6646 50  0000 L CNN
F 1 "100nF" H 6365 6555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6288 6450 50  0001 C CNN
F 3 "~" H 6250 6600 50  0001 C CNN
	1    6250 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5400 4350 5400
$Comp
L Device:R R5
U 1 1 5E04EA25
P 3450 4500
F 0 "R5" H 3600 4550 50  0000 C CNN
F 1 "10k" H 3600 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3380 4500 50  0001 C CNN
F 3 "~" H 3450 4500 50  0001 C CNN
	1    3450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4900 3450 4650
Wire Wire Line
	3450 4350 3450 4150
Connection ~ 3450 4150
Wire Wire Line
	3450 4150 4350 4150
$Comp
L power:+5V #PWR07
U 1 1 5E09907A
P 9450 1400
F 0 "#PWR07" H 9450 1250 50  0001 C CNN
F 1 "+5V" H 9465 1573 50  0000 C CNN
F 2 "" H 9450 1400 50  0001 C CNN
F 3 "" H 9450 1400 50  0001 C CNN
	1    9450 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E09983C
P 9450 2250
F 0 "#PWR09" H 9450 2000 50  0001 C CNN
F 1 "GND" H 9455 2077 50  0000 C CNN
F 2 "" H 9450 2250 50  0001 C CNN
F 3 "" H 9450 2250 50  0001 C CNN
	1    9450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5350 1100 4150
Connection ~ 1100 4150
Wire Wire Line
	1100 4150 750  4150
Wire Wire Line
	1100 5650 1100 6600
Wire Wire Line
	1100 6600 2150 6600
Connection ~ 2150 6600
Wire Wire Line
	2150 6600 2150 6650
Wire Wire Line
	3850 5850 6250 5850
Wire Wire Line
	6250 5850 6250 6450
Wire Wire Line
	6250 7000 6250 6750
Connection ~ 6250 7000
$Comp
L Connector:USB_B_Micro J2
U 1 1 5E1A7088
P 10350 1700
F 0 "J2" H 10120 1689 50  0000 R CNN
F 1 "USB_B_Micro" H 10120 1598 50  0000 R CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 10500 1650 50  0001 C CNN
F 3 "~" H 10500 1650 50  0001 C CNN
	1    10350 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9450 1950 9450 2200
Wire Wire Line
	9450 1400 9450 1500
Connection ~ 9450 1500
Wire Wire Line
	9450 1500 9450 1650
Wire Wire Line
	10350 2100 10350 2200
Connection ~ 9450 2200
Wire Wire Line
	9450 2200 9450 2250
Wire Wire Line
	10350 2200 10450 2200
Wire Wire Line
	10450 2200 10450 2100
Connection ~ 10350 2200
Wire Wire Line
	10050 1500 9450 1500
Wire Wire Line
	10350 2200 9450 2200
Wire Wire Line
	2750 6050 2950 6050
Wire Wire Line
	2750 5950 2950 5950
Entry Wire Line
	2950 6050 3050 6150
Wire Wire Line
	2750 4750 2950 4750
Text Label 2250 1900 0    50   ~ 0
l0
Text Label 3700 1900 0    50   ~ 0
l1
Text Label 6100 1850 0    50   ~ 0
l2
Text Label 7550 1850 0    50   ~ 0
l3
Entry Wire Line
	2300 1900 2400 2000
Entry Wire Line
	3750 1900 3850 2000
Entry Wire Line
	6200 1850 6300 1950
Entry Wire Line
	7650 1850 7750 1950
Wire Bus Line
	2400 2000 2400 3600
Wire Bus Line
	2400 3600 3850 3600
Wire Bus Line
	7750 3600 7750 1950
Wire Bus Line
	3850 2000 3850 3600
Connection ~ 3850 3600
Wire Bus Line
	3850 3600 6300 3600
Wire Bus Line
	6300 1950 6300 3600
Connection ~ 6300 3600
Wire Bus Line
	6300 3600 7050 3600
Wire Wire Line
	6850 4500 6950 4500
Wire Wire Line
	6850 4600 6950 4600
Wire Wire Line
	6850 4700 6950 4700
Wire Wire Line
	6850 4800 6950 4800
Text Label 6850 4800 0    50   ~ 0
l0
Text Label 6850 4700 0    50   ~ 0
l1
Text Label 6850 4600 0    50   ~ 0
l2
Text Label 6850 4500 0    50   ~ 0
l3
Entry Wire Line
	6950 4500 7050 4600
Entry Wire Line
	6950 4600 7050 4700
Entry Wire Line
	6950 4700 7050 4800
Entry Wire Line
	6950 4800 7050 4900
Connection ~ 7050 3600
Wire Bus Line
	7050 3600 7750 3600
Wire Wire Line
	2750 5350 3450 5350
Wire Bus Line
	3050 5450 5550 5450
Wire Wire Line
	3250 5250 2750 5250
Wire Wire Line
	3300 4850 3300 4250
Wire Wire Line
	2750 4850 3300 4850
Wire Wire Line
	3300 4250 5800 4250
Wire Wire Line
	2750 6150 2950 6150
Wire Wire Line
	3550 6800 3550 5750
Wire Wire Line
	2750 5750 3550 5750
Wire Wire Line
	3300 4250 3300 2800
Connection ~ 3300 4250
Wire Wire Line
	3300 2800 4200 2800
$Comp
L Device:R R15
U 1 1 5D6CE5BD
P 4000 6400
F 0 "R15" H 3900 6450 50  0000 C CNN
F 1 "4.7k" H 3850 6350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3930 6400 50  0001 C CNN
F 3 "~" H 4000 6400 50  0001 C CNN
	1    4000 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5850 6500 5850
Connection ~ 6250 5850
$Comp
L Device:R R16
U 1 1 5D6DB707
P 4100 6400
F 0 "R16" H 4250 6450 50  0000 C CNN
F 1 "4.7k" H 4250 6350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4030 6400 50  0001 C CNN
F 3 "~" H 4100 6400 50  0001 C CNN
	1    4100 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6550 4000 6900
Connection ~ 4000 6900
Wire Wire Line
	4000 6900 4150 6900
Wire Wire Line
	4100 6550 4100 7000
Connection ~ 4100 7000
Wire Wire Line
	4100 7000 4150 7000
Wire Wire Line
	6000 6100 6000 6150
Wire Wire Line
	6000 6150 4100 6150
Wire Wire Line
	4000 6150 4000 6250
Connection ~ 6000 6150
Wire Wire Line
	6000 6150 6000 6800
Wire Wire Line
	4100 6150 4100 6250
Connection ~ 4100 6150
Wire Wire Line
	4100 6150 4000 6150
Wire Wire Line
	3450 7100 3850 7100
$Comp
L Device:CP C4
U 1 1 5D907C52
P 10650 4950
F 0 "C4" H 10768 4996 50  0000 L CNN
F 1 "1F" H 10768 4905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D14.0mm_P5.00mm" H 10688 4800 50  0001 C CNN
F 3 "~" H 10650 4950 50  0001 C CNN
	1    10650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 4000 10650 4800
Wire Wire Line
	10650 5100 10650 6100
Wire Wire Line
	10650 6100 10350 6100
Text Notes 10750 4300 0    50   ~ 0
Optional
Wire Wire Line
	9800 3950 9800 4000
$Comp
L Device:D D3
U 1 1 5D931E8B
P 10250 4000
F 0 "D3" H 10250 3876 50  0000 C CNN
F 1 "D" H 10250 3875 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 10250 4000 50  0001 C CNN
F 3 "~" H 10250 4000 50  0001 C CNN
	1    10250 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9800 4000 10100 4000
Connection ~ 9800 4000
Wire Wire Line
	9800 4000 9800 4150
Wire Wire Line
	10400 4000 10650 4000
Wire Wire Line
	9800 4800 10650 4800
Connection ~ 9800 4800
Connection ~ 10650 4800
Wire Notes Line
	10100 3700 10100 5050
Wire Notes Line
	10100 5050 11100 5050
Wire Notes Line
	11100 5050 11100 3700
Wire Notes Line
	11100 3700 10100 3700
Wire Wire Line
	5700 4700 5850 4700
Wire Wire Line
	3850 5000 3850 5100
Wire Wire Line
	3850 5100 3850 5400
Connection ~ 3850 5100
$Comp
L 4xxx:4543 U5
U 1 1 5D5ECE57
P 4350 4800
F 0 "U5" H 4450 5300 50  0000 C CNN
F 1 "4543" H 4350 4800 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4350 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4543b.pdf" H 4350 4800 50  0001 C CNN
	1    4350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5200 4700 5200
Wire Wire Line
	4700 5200 4700 5400
Wire Wire Line
	4700 5400 4350 5400
Connection ~ 4350 5400
Wire Wire Line
	5700 4700 5700 5100
Connection ~ 5700 5100
Wire Wire Line
	9800 4000 8750 4000
Wire Wire Line
	8750 4000 8750 4350
Wire Wire Line
	8750 4350 8950 4350
Wire Bus Line
	3050 4550 3050 5450
Wire Bus Line
	5550 4600 5550 5450
Wire Wire Line
	3450 4900 3850 4900
Wire Bus Line
	3050 5850 3050 6250
Wire Bus Line
	7050 3600 7050 4900
Wire Bus Line
	3650 4600 3650 5850
Wire Bus Line
	5400 3850 5400 5200
Wire Bus Line
	1400 1200 1400 3850
Wire Bus Line
	2850 1200 2850 3850
Wire Bus Line
	5250 1150 5250 3850
Wire Bus Line
	6700 1150 6700 3850
$EndSCHEMATC
