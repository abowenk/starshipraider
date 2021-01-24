EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 9800 1350 900  550 
U 5FFD7EA9
F0 "USB" 50
F1 "usb.sch" 50
F2 "SDA" I L 9800 1400 50 
F3 "SCL" I L 9800 1500 50 
F4 "INT_N" I L 9800 1600 50 
F5 "+3V3" I L 9800 1800 50 
F6 "+7V" I R 10700 1400 50 
F7 "-7V" I R 10700 1500 50 
F8 "VBUS" I R 10700 1700 50 
$EndSheet
$Comp
L Regulator_Linear:AP2112K-3.3 U101
U 1 1 6000A65E
P 1700 1050
F 0 "U101" H 1700 1392 50  0000 C CNN
F 1 "AP2112K-3.3" H 1700 1301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1700 1375 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 1700 1150 50  0001 C CNN
F 4 "AP2112K-3.3TRG1DICT-ND" H 1700 1050 50  0001 C CNN "DPN"
	1    1700 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 950  1300 950 
Text Label 750  800  2    50   ~ 0
VBUS
Wire Wire Line
	1400 1050 1300 1050
Wire Wire Line
	1300 1050 1300 950 
Connection ~ 1300 950 
Wire Wire Line
	750  800  750  950 
Wire Wire Line
	750  950  950  950 
Wire Wire Line
	1700 1350 1700 1450
$Comp
L power:GND #PWR0101
U 1 1 6000B8FB
P 1700 1450
F 0 "#PWR0101" H 1700 1200 50  0001 C CNN
F 1 "GND" H 1705 1277 50  0000 C CNN
F 2 "" H 1700 1450 50  0001 C CNN
F 3 "" H 1700 1450 50  0001 C CNN
	1    1700 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 950  2200 950 
$Comp
L power:+3V3 #PWR0102
U 1 1 6000BE93
P 2250 800
F 0 "#PWR0102" H 2250 650 50  0001 C CNN
F 1 "+3V3" H 2265 973 50  0000 C CNN
F 2 "" H 2250 800 50  0001 C CNN
F 3 "" H 2250 800 50  0001 C CNN
	1    2250 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 800  2250 950 
$Comp
L Device:C_Small C103
U 1 1 6000C565
P 950 1150
F 0 "C103" H 1042 1196 50  0000 L CNN
F 1 "0u1" H 1042 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 950 1150 50  0001 C CNN
F 3 "~" H 950 1150 50  0001 C CNN
F 4 "1276-1006-1-ND" H 950 1150 50  0001 C CNN "DPN"
	1    950  1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  950  950  1050
Connection ~ 950  950 
Wire Wire Line
	950  950  1300 950 
$Comp
L power:GND #PWR0103
U 1 1 6000CA33
P 950 1350
F 0 "#PWR0103" H 950 1100 50  0001 C CNN
F 1 "GND" H 955 1177 50  0000 C CNN
F 2 "" H 950 1350 50  0001 C CNN
F 3 "" H 950 1350 50  0001 C CNN
	1    950  1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1250 950  1350
$Comp
L Device:C_Small C107
U 1 1 6000CF9E
P 2200 1150
F 0 "C107" H 2292 1196 50  0000 L CNN
F 1 "0u1" H 2292 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2200 1150 50  0001 C CNN
F 3 "~" H 2200 1150 50  0001 C CNN
F 4 "1276-1006-1-ND" H 2200 1150 50  0001 C CNN "DPN"
	1    2200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 950  2200 1050
Connection ~ 2200 950 
Wire Wire Line
	2200 950  2250 950 
$Comp
L power:GND #PWR0104
U 1 1 6000D5A3
P 2200 1350
F 0 "#PWR0104" H 2200 1100 50  0001 C CNN
F 1 "GND" H 2205 1177 50  0000 C CNN
F 2 "" H 2200 1350 50  0001 C CNN
F 3 "" H 2200 1350 50  0001 C CNN
	1    2200 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1250 2200 1350
Wire Notes Line
	550  550  2450 550 
Wire Notes Line
	2450 550  2450 1700
Wire Notes Line
	2450 1700 550  1700
Wire Notes Line
	550  1700 550  550 
Wire Wire Line
	2300 2500 2300 2350
$Comp
L power:+3V3 #PWR0105
U 1 1 600116B2
P 2300 2350
F 0 "#PWR0105" H 2300 2200 50  0001 C CNN
F 1 "+3V3" H 2315 2523 50  0000 C CNN
F 2 "" H 2300 2350 50  0001 C CNN
F 3 "" H 2300 2350 50  0001 C CNN
	1    2300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4000 2000 4350
$Comp
L power:GND #PWR0106
U 1 1 6001243A
P 2000 4350
F 0 "#PWR0106" H 2000 4100 50  0001 C CNN
F 1 "GND" H 2005 4177 50  0000 C CNN
F 2 "" H 2000 4350 50  0001 C CNN
F 3 "" H 2000 4350 50  0001 C CNN
	1    2000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2700 1600 2700
Wire Wire Line
	1500 2700 1500 2450
NoConn ~ 1700 3100
NoConn ~ 1700 3200
$Comp
L Device:LED D101
U 1 1 6001573C
P 4700 3900
F 0 "D101" V 4739 3782 50  0000 R CNN
F 1 "LED" V 4648 3782 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4700 3900 50  0001 C CNN
F 3 "~" H 4700 3900 50  0001 C CNN
F 4 "160-1446-1-ND" H 4700 3900 50  0001 C CNN "DPN"
	1    4700 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D102
U 1 1 60015963
P 5050 3900
F 0 "D102" V 5089 3782 50  0000 R CNN
F 1 "LED" V 4998 3782 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5050 3900 50  0001 C CNN
F 3 "~" H 5050 3900 50  0001 C CNN
F 4 "160-1446-1-ND" H 5050 3900 50  0001 C CNN "DPN"
	1    5050 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D103
U 1 1 60015CF1
P 5400 3900
F 0 "D103" V 5439 3782 50  0000 R CNN
F 1 "LED" V 5348 3782 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5400 3900 50  0001 C CNN
F 3 "~" H 5400 3900 50  0001 C CNN
F 4 "160-1446-1-ND" H 5400 3900 50  0001 C CNN "DPN"
	1    5400 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D104
U 1 1 600160D1
P 5750 3900
F 0 "D104" V 5789 3782 50  0000 R CNN
F 1 "LED" V 5698 3782 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5750 3900 50  0001 C CNN
F 3 "~" H 5750 3900 50  0001 C CNN
F 4 "160-1446-1-ND" H 5750 3900 50  0001 C CNN "DPN"
	1    5750 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R102
U 1 1 60017CD6
P 4700 4350
F 0 "R102" H 4770 4396 50  0000 L CNN
F 1 "1k" H 4770 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4630 4350 50  0001 C CNN
F 3 "~" H 4700 4350 50  0001 C CNN
F 4 "311-1KLDCT-ND" H 4700 4350 50  0001 C CNN "DPN"
	1    4700 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R103
U 1 1 60017F66
P 5050 4350
F 0 "R103" H 5120 4396 50  0000 L CNN
F 1 "1k" H 5120 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 4350 50  0001 C CNN
F 3 "~" H 5050 4350 50  0001 C CNN
F 4 "311-1KLDCT-ND" H 5050 4350 50  0001 C CNN "DPN"
	1    5050 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R104
U 1 1 6001818F
P 5400 4350
F 0 "R104" H 5470 4396 50  0000 L CNN
F 1 "1k" H 5470 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5330 4350 50  0001 C CNN
F 3 "~" H 5400 4350 50  0001 C CNN
F 4 "311-1KLDCT-ND" H 5400 4350 50  0001 C CNN "DPN"
	1    5400 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R105
U 1 1 60019082
P 5750 4350
F 0 "R105" H 5820 4396 50  0000 L CNN
F 1 "1k" H 5820 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5680 4350 50  0001 C CNN
F 3 "~" H 5750 4350 50  0001 C CNN
F 4 "311-1KLDCT-ND" H 5750 4350 50  0001 C CNN "DPN"
	1    5750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4050 5750 4200
Wire Wire Line
	5400 4050 5400 4200
Wire Wire Line
	5050 4050 5050 4200
Wire Wire Line
	4700 4050 4700 4200
Wire Wire Line
	4700 4500 4700 4650
Wire Wire Line
	5050 4500 5050 4650
Wire Wire Line
	5400 4500 5400 4650
Wire Wire Line
	5750 4500 5750 4650
$Comp
L power:GND #PWR0107
U 1 1 6001E5AD
P 4700 4650
F 0 "#PWR0107" H 4700 4400 50  0001 C CNN
F 1 "GND" H 4705 4477 50  0000 C CNN
F 2 "" H 4700 4650 50  0001 C CNN
F 3 "" H 4700 4650 50  0001 C CNN
	1    4700 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 6001E917
P 5050 4650
F 0 "#PWR0108" H 5050 4400 50  0001 C CNN
F 1 "GND" H 5055 4477 50  0000 C CNN
F 2 "" H 5050 4650 50  0001 C CNN
F 3 "" H 5050 4650 50  0001 C CNN
	1    5050 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6001EB32
P 5400 4650
F 0 "#PWR0109" H 5400 4400 50  0001 C CNN
F 1 "GND" H 5405 4477 50  0000 C CNN
F 2 "" H 5400 4650 50  0001 C CNN
F 3 "" H 5400 4650 50  0001 C CNN
	1    5400 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 6001EDB4
P 5750 4650
F 0 "#PWR0110" H 5750 4400 50  0001 C CNN
F 1 "GND" H 5755 4477 50  0000 C CNN
F 2 "" H 5750 4650 50  0001 C CNN
F 3 "" H 5750 4650 50  0001 C CNN
	1    5750 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R101
U 1 1 60020318
P 1500 2300
F 0 "R101" H 1570 2346 50  0000 L CNN
F 1 "10k" H 1570 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1430 2300 50  0001 C CNN
F 3 "~" H 1500 2300 50  0001 C CNN
F 4 "311-10KLDCT-ND" H 1500 2300 50  0001 C CNN "DPN"
	1    1500 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0111
U 1 1 60020652
P 1500 2050
F 0 "#PWR0111" H 1500 1900 50  0001 C CNN
F 1 "+3V3" H 1515 2223 50  0000 C CNN
F 2 "" H 1500 2050 50  0001 C CNN
F 3 "" H 1500 2050 50  0001 C CNN
	1    1500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2050 1500 2150
Wire Wire Line
	1500 2700 1250 2700
Connection ~ 1500 2700
$Comp
L Switch:SW_Push SW101
U 1 1 60021D33
P 1050 2700
F 0 "SW101" H 1050 2985 50  0000 C CNN
F 1 "SW_Push" H 1050 2894 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 1050 2900 50  0001 C CNN
F 3 "~" H 1050 2900 50  0001 C CNN
F 4 "SW415-ND" H 1050 2700 50  0001 C CNN "DPN"
	1    1050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2700 700  2700
Wire Wire Line
	700  2700 700  2800
$Comp
L power:GND #PWR0112
U 1 1 60022CFF
P 700 2800
F 0 "#PWR0112" H 700 2550 50  0001 C CNN
F 1 "GND" H 705 2627 50  0000 C CNN
F 2 "" H 700 2800 50  0001 C CNN
F 3 "" H 700 2800 50  0001 C CNN
	1    700  2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J102
U 1 1 600254AD
P 4700 6300
F 0 "J102" H 4256 6346 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 4256 6255 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 4700 6300 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 4350 5050 50  0001 C CNN
F 4 "SAM8795-ND" H 4700 6300 50  0001 C CNN "DPN"
	1    4700 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4700 6900 4800 6900
Wire Wire Line
	4800 6900 4800 7050
Connection ~ 4800 6900
$Comp
L power:GND #PWR0114
U 1 1 6002B067
P 4800 7050
F 0 "#PWR0114" H 4800 6800 50  0001 C CNN
F 1 "GND" H 4805 6877 50  0000 C CNN
F 2 "" H 4800 7050 50  0001 C CNN
F 3 "" H 4800 7050 50  0001 C CNN
	1    4800 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 6002C01F
P 4700 5600
F 0 "#PWR0115" H 4700 5450 50  0001 C CNN
F 1 "+3V3" H 4715 5773 50  0000 C CNN
F 2 "" H 4700 5600 50  0001 C CNN
F 3 "" H 4700 5600 50  0001 C CNN
	1    4700 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5600 4700 5700
Text Label 1500 2700 2    50   ~ 0
NRST
Text Label 3950 6000 2    50   ~ 0
NRST
Wire Wire Line
	3950 6000 4200 6000
NoConn ~ 4200 6500
NoConn ~ 4200 6400
Text Label 3950 6300 2    50   ~ 0
SWDIO
Text Label 3950 6200 2    50   ~ 0
SWCLK
Wire Wire Line
	4200 6200 3950 6200
Wire Wire Line
	4200 6300 3950 6300
$Comp
L Device:C_Small C101
U 1 1 600397DF
P 850 5750
F 0 "C101" H 942 5796 50  0000 L CNN
F 1 "0u1" H 942 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 850 5750 50  0001 C CNN
F 3 "~" H 850 5750 50  0001 C CNN
F 4 "1276-1006-1-ND" H 850 5750 50  0001 C CNN "DPN"
	1    850  5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C104
U 1 1 6003A6C6
P 1200 5750
F 0 "C104" H 1292 5796 50  0000 L CNN
F 1 "0u1" H 1292 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1200 5750 50  0001 C CNN
F 3 "~" H 1200 5750 50  0001 C CNN
F 4 "1276-1006-1-ND" H 1200 5750 50  0001 C CNN "DPN"
	1    1200 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C106
U 1 1 6003ABA6
P 1550 5750
F 0 "C106" H 1642 5796 50  0000 L CNN
F 1 "4u7" H 1642 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1550 5750 50  0001 C CNN
F 3 "~" H 1550 5750 50  0001 C CNN
F 4 "1276-1244-1-ND" H 1550 5750 50  0001 C CNN "DPN"
	1    1550 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C102
U 1 1 6003B215
P 850 6550
F 0 "C102" H 942 6596 50  0000 L CNN
F 1 "10n" H 942 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 850 6550 50  0001 C CNN
F 3 "~" H 850 6550 50  0001 C CNN
F 4 "1276-1009-1-ND" H 850 6550 50  0001 C CNN "DPN"
	1    850  6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C105
U 1 1 6003BA16
P 1200 6550
F 0 "C105" H 1292 6596 50  0000 L CNN
F 1 "1u" H 1292 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1200 6550 50  0001 C CNN
F 3 "~" H 1200 6550 50  0001 C CNN
F 4 "1276-1102-1-ND" H 1200 6550 50  0001 C CNN "DPN"
	1    1200 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5650 1200 5650
Connection ~ 1200 5650
Wire Wire Line
	1200 5650 850  5650
Wire Wire Line
	850  5650 850  5550
Connection ~ 850  5650
$Comp
L power:+3V3 #PWR0116
U 1 1 6003E242
P 850 5550
F 0 "#PWR0116" H 850 5400 50  0001 C CNN
F 1 "+3V3" H 865 5723 50  0000 C CNN
F 2 "" H 850 5550 50  0001 C CNN
F 3 "" H 850 5550 50  0001 C CNN
	1    850  5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5850 1200 5850
Connection ~ 1200 5850
Wire Wire Line
	1200 5850 1550 5850
Wire Wire Line
	1550 6000 1550 5850
Connection ~ 1550 5850
$Comp
L power:GND #PWR0117
U 1 1 60040337
P 1550 6000
F 0 "#PWR0117" H 1550 5750 50  0001 C CNN
F 1 "GND" H 1555 5827 50  0000 C CNN
F 2 "" H 1550 6000 50  0001 C CNN
F 3 "" H 1550 6000 50  0001 C CNN
	1    1550 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6450 850  6450
Wire Wire Line
	850  6450 850  6350
Connection ~ 850  6450
$Comp
L power:+3V3 #PWR0118
U 1 1 600424AF
P 850 6350
F 0 "#PWR0118" H 850 6200 50  0001 C CNN
F 1 "+3V3" H 865 6523 50  0000 C CNN
F 2 "" H 850 6350 50  0001 C CNN
F 3 "" H 850 6350 50  0001 C CNN
	1    850  6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6650 1200 6650
Wire Wire Line
	1200 6650 1200 6800
Connection ~ 1200 6650
$Comp
L power:GND #PWR0119
U 1 1 600449A7
P 1200 6800
F 0 "#PWR0119" H 1200 6550 50  0001 C CNN
F 1 "GND" H 1205 6627 50  0000 C CNN
F 2 "" H 1200 6800 50  0001 C CNN
F 3 "" H 1200 6800 50  0001 C CNN
	1    1200 6800
	1    0    0    -1  
$EndComp
Text Label 3050 3500 0    50   ~ 0
I2C1_SCL
Text Label 3050 3600 0    50   ~ 0
I2C1_SDA
Text Label 3050 3400 0    50   ~ 0
FUSB_INT
Wire Wire Line
	9800 1800 9600 1800
$Comp
L power:+3V3 #PWR0120
U 1 1 60056713
P 9600 1800
F 0 "#PWR0120" H 9600 1650 50  0001 C CNN
F 1 "+3V3" V 9615 1928 50  0000 L CNN
F 2 "" H 9600 1800 50  0001 C CNN
F 3 "" H 9600 1800 50  0001 C CNN
	1    9600 1800
	0    -1   -1   0   
$EndComp
Text Label 8750 1400 2    50   ~ 0
I2C1_SCL
Text Label 8750 1500 2    50   ~ 0
I2C1_SDA
Text Label 8750 1600 2    50   ~ 0
FUSB_INT
Wire Wire Line
	10700 1400 10900 1400
Wire Wire Line
	10700 1500 10900 1500
Text Label 10900 1400 0    50   ~ 0
+7V
Text Label 10900 1500 0    50   ~ 0
-7V
$Comp
L Device:R R106
U 1 1 6007F710
P 8950 1000
F 0 "R106" H 9020 1046 50  0000 L CNN
F 1 "10k" H 9020 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8880 1000 50  0001 C CNN
F 3 "~" H 8950 1000 50  0001 C CNN
F 4 "311-10KLDCT-ND" H 8950 1000 50  0001 C CNN "DPN"
	1    8950 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R113
U 1 1 6007FB90
P 9200 1000
F 0 "R113" H 9270 1046 50  0000 L CNN
F 1 "10k" H 9270 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9130 1000 50  0001 C CNN
F 3 "~" H 9200 1000 50  0001 C CNN
F 4 "311-10KLDCT-ND" H 9200 1000 50  0001 C CNN "DPN"
	1    9200 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R114
U 1 1 6007FE9E
P 9450 1000
F 0 "R114" H 9520 1046 50  0000 L CNN
F 1 "10k" H 9520 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9380 1000 50  0001 C CNN
F 3 "~" H 9450 1000 50  0001 C CNN
F 4 "311-10KLDCT-ND" H 9450 1000 50  0001 C CNN "DPN"
	1    9450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1400 8950 1400
Wire Wire Line
	8750 1500 9200 1500
Wire Wire Line
	8750 1600 9450 1600
Wire Wire Line
	8950 1150 8950 1400
Connection ~ 8950 1400
Wire Wire Line
	8950 1400 9800 1400
Wire Wire Line
	9200 1150 9200 1500
Connection ~ 9200 1500
Wire Wire Line
	9200 1500 9800 1500
Wire Wire Line
	9450 1150 9450 1600
Connection ~ 9450 1600
Wire Wire Line
	9450 1600 9800 1600
Wire Wire Line
	8950 850  8950 750 
Wire Wire Line
	9200 850  9200 750 
Wire Wire Line
	9450 850  9450 750 
$Comp
L power:+3V3 #PWR0121
U 1 1 6008D841
P 8950 750
F 0 "#PWR0121" H 8950 600 50  0001 C CNN
F 1 "+3V3" H 8965 923 50  0000 C CNN
F 2 "" H 8950 750 50  0001 C CNN
F 3 "" H 8950 750 50  0001 C CNN
	1    8950 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0122
U 1 1 6008E93C
P 9200 750
F 0 "#PWR0122" H 9200 600 50  0001 C CNN
F 1 "+3V3" H 9215 923 50  0000 C CNN
F 2 "" H 9200 750 50  0001 C CNN
F 3 "" H 9200 750 50  0001 C CNN
	1    9200 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0123
U 1 1 6008EDD8
P 9450 750
F 0 "#PWR0123" H 9450 600 50  0001 C CNN
F 1 "+3V3" H 9465 923 50  0000 C CNN
F 2 "" H 9450 750 50  0001 C CNN
F 3 "" H 9450 750 50  0001 C CNN
	1    9450 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2700 5750 3750
Wire Wire Line
	5400 2800 5400 3750
Wire Wire Line
	5050 2900 5050 3750
Wire Wire Line
	4700 3000 4700 3750
$Comp
L Amplifier_Operational:LM358 U104
U 1 1 600A9F28
P 9900 4250
F 0 "U104" H 9900 4617 50  0000 C CNN
F 1 "LM358" H 9900 4526 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9900 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 9900 4250 50  0001 C CNN
F 4 "LM358DR2GOSCT-ND" H 9900 4250 50  0001 C CNN "DPN"
	1    9900 4250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U104
U 2 1 600AB51B
P 9950 5450
F 0 "U104" H 9950 5817 50  0000 C CNN
F 1 "LM358" H 9950 5726 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9950 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 9950 5450 50  0001 C CNN
F 4 "LM358DR2GOSCT-ND" H 9950 5450 50  0001 C CNN "DPN"
	2    9950 5450
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U104
U 3 1 600AC57D
P 8450 4150
F 0 "U104" H 8408 4196 50  0000 L CNN
F 1 "LM358" H 8408 4105 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8450 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 8450 4150 50  0001 C CNN
F 4 "LM358DR2GOSCT-ND" H 8450 4150 50  0001 C CNN "DPN"
	3    8450 4150
	1    0    0    -1  
$EndComp
Text Label 8350 3700 0    50   ~ 0
+7V
Wire Wire Line
	8350 3700 8350 3850
Text Label 8350 4600 0    50   ~ 0
-7V
Wire Wire Line
	8350 4600 8350 4450
$Comp
L Device:R R108
U 1 1 600B8E73
P 9100 3950
F 0 "R108" H 9170 3996 50  0000 L CNN
F 1 "10k" H 9170 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9030 3950 50  0001 C CNN
F 3 "~" H 9100 3950 50  0001 C CNN
F 4 "311-10KLDCT-ND" H 9100 3950 50  0001 C CNN "DPN"
	1    9100 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R109
U 1 1 600B999F
P 9100 4350
F 0 "R109" H 9170 4396 50  0000 L CNN
F 1 "10k" H 9170 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9030 4350 50  0001 C CNN
F 3 "~" H 9100 4350 50  0001 C CNN
F 4 "311-10KLDCT-ND" H 9100 4350 50  0001 C CNN "DPN"
	1    9100 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R107
U 1 1 600BAC03
P 9100 3550
F 0 "R107" H 9170 3596 50  0000 L CNN
F 1 "10k" H 9170 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9030 3550 50  0001 C CNN
F 3 "~" H 9100 3550 50  0001 C CNN
F 4 "311-10KLDCT-ND" H 9100 3550 50  0001 C CNN "DPN"
	1    9100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4150 9100 4150
Wire Wire Line
	9100 4150 9100 4200
Wire Wire Line
	9100 4100 9100 4150
Connection ~ 9100 4150
Wire Wire Line
	9100 3700 9100 3800
Wire Wire Line
	9100 4500 9100 4600
$Comp
L power:GND #PWR0124
U 1 1 600D1CDD
P 9100 4600
F 0 "#PWR0124" H 9100 4350 50  0001 C CNN
F 1 "GND" H 9105 4427 50  0000 C CNN
F 2 "" H 9100 4600 50  0001 C CNN
F 3 "" H 9100 4600 50  0001 C CNN
	1    9100 4600
	1    0    0    -1  
$EndComp
Text Label 9100 3300 0    50   ~ 0
+7V
Wire Wire Line
	9100 3300 9100 3400
Wire Wire Line
	9600 4350 9500 4350
Wire Wire Line
	9500 4350 9500 4550
Wire Wire Line
	9500 4550 10300 4550
Wire Wire Line
	10300 4550 10300 4250
Wire Wire Line
	10300 4250 10200 4250
Wire Wire Line
	10300 4250 10550 4250
Connection ~ 10300 4250
Text Label 10550 4250 0    50   ~ 0
+7V_SENSE
$Comp
L Device:R R111
U 1 1 6014A147
P 9100 5750
F 0 "R111" H 9170 5796 50  0000 L CNN
F 1 "10k" H 9170 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9030 5750 50  0001 C CNN
F 3 "~" H 9100 5750 50  0001 C CNN
F 4 "311-10KLDCT-ND" H 9100 5750 50  0001 C CNN "DPN"
	1    9100 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R112
U 1 1 6014A14D
P 9100 6150
F 0 "R112" H 9170 6196 50  0000 L CNN
F 1 "10k" H 9170 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9030 6150 50  0001 C CNN
F 3 "~" H 9100 6150 50  0001 C CNN
F 4 "311-10KLDCT-ND" H 9100 6150 50  0001 C CNN "DPN"
	1    9100 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R110
U 1 1 6014A153
P 9100 5350
F 0 "R110" H 9170 5396 50  0000 L CNN
F 1 "10k" H 9170 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9030 5350 50  0001 C CNN
F 3 "~" H 9100 5350 50  0001 C CNN
F 4 "311-10KLDCT-ND" H 9100 5350 50  0001 C CNN "DPN"
	1    9100 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 6300 9100 6400
$Comp
L power:GND #PWR0125
U 1 1 60160931
P 8700 5200
F 0 "#PWR0125" H 8700 4950 50  0001 C CNN
F 1 "GND" H 8705 5027 50  0000 C CNN
F 2 "" H 8700 5200 50  0001 C CNN
F 3 "" H 8700 5200 50  0001 C CNN
	1    8700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5200 9100 5050
Wire Wire Line
	9100 5050 8700 5050
Wire Wire Line
	8700 5050 8700 5200
Text Label 9100 6400 0    50   ~ 0
-7V
Wire Wire Line
	9100 5900 9100 6000
Wire Wire Line
	9500 5350 9500 4950
Wire Wire Line
	9500 4950 10400 4950
Wire Wire Line
	10400 4950 10400 5450
Wire Wire Line
	10400 5450 10250 5450
Wire Wire Line
	9500 5350 9650 5350
Wire Wire Line
	10400 5450 10650 5450
Connection ~ 10400 5450
Text Label 10650 5450 0    50   ~ 0
-7V_SENSE
Text Label 3050 3100 0    50   ~ 0
+7V_SENSE
Text Label 3050 3200 0    50   ~ 0
-7V_SENSE
Wire Notes Line
	550  1750 550  5000
Wire Notes Line
	550  5000 6050 5000
Wire Notes Line
	6050 5000 6050 1750
Wire Notes Line
	6050 1750 550  1750
Wire Wire Line
	9100 5500 9100 5550
Wire Wire Line
	9100 5550 9650 5550
Connection ~ 9100 5550
Wire Wire Line
	9100 5550 9100 5600
Wire Notes Line
	11150 3200 11150 6450
Wire Notes Line
	11150 6450 8250 6450
Wire Notes Line
	8250 6450 8250 3200
Wire Notes Line
	8250 3200 11150 3200
Text Notes 900  5600 0    50   ~ 0
Digital Decoupling\n
Text Notes 900  6400 0    50   ~ 0
Analog Decoupling\n
Text Label 3050 2700 0    50   ~ 0
USRLED1
Text Label 3050 2800 0    50   ~ 0
USRLED2
Text Label 3050 2900 0    50   ~ 0
USRLED3
Text Label 3050 3000 0    50   ~ 0
USRLED4
$Comp
L Connector:Conn_01x02_Male J103
U 1 1 60011DAD
P 6650 2400
F 0 "J103" H 6758 2581 50  0000 C CNN
F 1 "Conn_01x02_Male" H 6758 2490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6650 2400 50  0001 C CNN
F 3 "~" H 6650 2400 50  0001 C CNN
	1    6650 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J104
U 1 1 600160E2
P 7750 2400
F 0 "J104" H 7858 2581 50  0000 C CNN
F 1 "Conn_01x02_Male" H 7858 2490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7750 2400 50  0001 C CNN
F 3 "~" H 7750 2400 50  0001 C CNN
	1    7750 2400
	1    0    0    -1  
$EndComp
Text Label 3800 1050 0    50   ~ 0
VBUS
Text Label 8150 2400 0    50   ~ 0
-7V
Wire Wire Line
	7950 2400 8150 2400
Wire Wire Line
	7050 2400 6850 2400
Wire Wire Line
	6850 2500 7050 2500
Wire Wire Line
	7050 2500 7050 2650
Wire Wire Line
	7950 2500 8150 2500
Wire Wire Line
	8150 2500 8150 2650
$Comp
L power:GND #PWR0126
U 1 1 60025F25
P 8150 2650
F 0 "#PWR0126" H 8150 2400 50  0001 C CNN
F 1 "GND" H 8155 2477 50  0000 C CNN
F 2 "" H 8150 2650 50  0001 C CNN
F 3 "" H 8150 2650 50  0001 C CNN
	1    8150 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 6002636B
P 7050 2650
F 0 "#PWR0127" H 7050 2400 50  0001 C CNN
F 1 "GND" H 7055 2477 50  0000 C CNN
F 2 "" H 7050 2650 50  0001 C CNN
F 3 "" H 7050 2650 50  0001 C CNN
	1    7050 2650
	1    0    0    -1  
$EndComp
Text Notes 6350 2100 0    50   ~ 0
Connectors are here so I can try loading the power lines\nover the USB cable to check resistance.
$Comp
L Connector:Conn_01x02_Male J101
U 1 1 6003B594
P 3200 1050
F 0 "J101" H 3308 1231 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3308 1140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3200 1050 50  0001 C CNN
F 3 "~" H 3200 1050 50  0001 C CNN
	1    3200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1050 3800 1050
$Comp
L power:GND #PWR0128
U 1 1 60043EDA
P 3600 1300
F 0 "#PWR0128" H 3600 1050 50  0001 C CNN
F 1 "GND" H 3605 1127 50  0000 C CNN
F 2 "" H 3600 1300 50  0001 C CNN
F 3 "" H 3600 1300 50  0001 C CNN
	1    3600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1150 3600 1150
Wire Wire Line
	3600 1150 3600 1300
Text Label 7050 2400 0    50   ~ 0
+7V
$Comp
L MCU_ST_STM32F0:STM32F042F6Px U103
U 1 1 60065842
P 2200 3200
F 0 "U103" H 2200 2311 50  0000 C CNN
F 1 "STM32F042F6Px" H 2200 2220 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 1700 2500 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00105814.pdf" H 2200 3200 50  0001 C CNN
F 4 "497-17344-ND" H 2200 3200 50  0001 C CNN "DPN"
	1    2200 3200
	1    0    0    -1  
$EndComp
Connection ~ 1600 2700
Wire Wire Line
	1600 2700 1500 2700
Wire Wire Line
	2100 2500 2300 2500
Wire Wire Line
	2800 3500 3050 3500
Wire Wire Line
	2800 3600 3050 3600
Wire Wire Line
	2800 3400 3050 3400
Wire Wire Line
	2800 2700 5750 2700
Wire Wire Line
	2800 2800 5400 2800
Wire Wire Line
	2800 2900 5050 2900
Wire Wire Line
	2800 3000 4700 3000
Wire Wire Line
	2800 3100 3050 3100
Wire Wire Line
	2800 3200 3050 3200
Wire Wire Line
	2000 2500 2100 2500
Connection ~ 2100 2500
Wire Wire Line
	2800 3700 3050 3700
Wire Wire Line
	2800 3800 3050 3800
Text Label 3050 3700 0    50   ~ 0
SWDIO
Text Label 3050 3800 0    50   ~ 0
SWCLK
NoConn ~ 1600 3400
NoConn ~ 1600 3500
NoConn ~ 1600 3700
NoConn ~ 1600 3800
Wire Wire Line
	10700 1700 10900 1700
Text Label 10900 1700 0    50   ~ 0
VBUS
$EndSCHEMATC