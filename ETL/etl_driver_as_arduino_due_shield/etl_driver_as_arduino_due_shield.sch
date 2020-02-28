EESchema Schematic File Version 4
EELAYER 30 0
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
L Amplifier_Operational:CA3140 U1
U 1 1 5E5911B3
P 5200 3750
F 0 "U1" H 5544 3796 50  0000 L CNN
F 1 "CA3140" H 5544 3705 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5100 3650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/ca31/ca3140-a.pdf" H 5200 3750 50  0001 C CNN
	1    5200 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5E591700
P 4200 4350
F 0 "RV1" H 4130 4396 50  0000 R CNN
F 1 "1k" H 4130 4305 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H3,8_Horizontal" H 4200 4350 50  0001 C CNN
F 3 "~" H 4200 4350 50  0001 C CNN
	1    4200 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5E591D42
P 4150 3100
F 0 "R1" H 4209 3146 50  0000 L CNN
F 1 "330" H 4209 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4150 3100 50  0001 C CNN
F 3 "~" H 4150 3100 50  0001 C CNN
	1    4150 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5E5922EA
P 4500 2550
F 0 "J1" H 4392 2225 50  0000 C CNN
F 1 "from Arduino" H 4392 2316 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4500 2550 50  0001 C CNN
F 3 "~" H 4500 2550 50  0001 C CNN
	1    4500 2550
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5E5926B5
P 6750 4050
F 0 "R2" V 6554 4050 50  0000 C CNN
F 1 "1k" V 6645 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6750 4050 50  0001 C CNN
F 3 "~" H 6750 4050 50  0001 C CNN
	1    6750 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5E592A1B
P 7050 5150
F 0 "R3" H 7109 5196 50  0000 L CNN
F 1 "10" H 7109 5105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7050 5150 50  0001 C CNN
F 3 "~" H 7050 5150 50  0001 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5E592D90
P 7250 5150
F 0 "R4" H 7309 5196 50  0000 L CNN
F 1 "10" H 7309 5105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7250 5150 50  0001 C CNN
F 3 "~" H 7250 5150 50  0001 C CNN
	1    7250 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5E592F50
P 6500 2950
F 0 "J2" H 6528 2926 50  0000 L CNN
F 1 "12V power" H 6528 2835 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6500 2950 50  0001 C CNN
F 3 "~" H 6500 2950 50  0001 C CNN
	1    6500 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5E59330F
P 8000 4300
F 0 "J3" H 8028 4276 50  0000 L CNN
F 1 "to_ETL" H 8028 4185 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8000 4300 50  0001 C CNN
F 3 "~" H 8000 4300 50  0001 C CNN
	1    8000 4300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BD441 Q1
U 1 1 5E5938C9
P 7100 4500
F 0 "Q1" H 7292 4546 50  0000 L CNN
F 1 "BD441" H 7292 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 7300 4425 50  0001 L CIN
F 3 "http://www.cdil.com/datasheets/bd433_42.pdf" H 7100 4500 50  0001 L CNN
	1    7100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4050 6900 4050
Wire Wire Line
	6900 4050 6900 4500
Wire Wire Line
	5500 3750 6050 3750
Wire Wire Line
	6050 3750 6050 4050
Wire Wire Line
	6050 4050 6650 4050
$Comp
L power:GND #PWR04
U 1 1 5E59A4AD
P 6100 3100
F 0 "#PWR04" H 6100 2850 50  0001 C CNN
F 1 "GND" H 6105 2927 50  0000 C CNN
F 2 "" H 6100 3100 50  0001 C CNN
F 3 "" H 6100 3100 50  0001 C CNN
	1    6100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3100 6100 3050
Wire Wire Line
	6100 3050 6300 3050
$Comp
L power:+12V #PWR03
U 1 1 5E59BDD0
P 6100 2800
F 0 "#PWR03" H 6100 2650 50  0001 C CNN
F 1 "+12V" H 6115 2973 50  0000 C CNN
F 2 "" H 6100 2800 50  0001 C CNN
F 3 "" H 6100 2800 50  0001 C CNN
	1    6100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2800 6100 2950
Wire Wire Line
	6100 2950 6300 2950
$Comp
L power:GND #PWR01
U 1 1 5E59CE04
P 4050 2450
F 0 "#PWR01" H 4050 2200 50  0001 C CNN
F 1 "GND" H 4055 2277 50  0000 C CNN
F 2 "" H 4050 2450 50  0001 C CNN
F 3 "" H 4050 2450 50  0001 C CNN
	1    4050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2450 4300 2450
Wire Wire Line
	4150 3000 4150 2550
Wire Wire Line
	4150 2550 4300 2550
Wire Wire Line
	4150 3200 4150 4100
Wire Wire Line
	4150 4100 4200 4100
Wire Wire Line
	4200 4100 4200 4200
NoConn ~ 5200 3450
NoConn ~ 5300 3450
NoConn ~ 5200 4050
$Comp
L power:+12V #PWR02
U 1 1 5E59EF92
P 5100 3300
F 0 "#PWR02" H 5100 3150 50  0001 C CNN
F 1 "+12V" H 5115 3473 50  0000 C CNN
F 2 "" H 5100 3300 50  0001 C CNN
F 3 "" H 5100 3300 50  0001 C CNN
	1    5100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3300 5100 3450
Wire Wire Line
	4350 4350 4450 4350
Wire Wire Line
	4450 4350 4450 3650
Wire Wire Line
	4450 3650 4900 3650
Wire Wire Line
	7200 4700 4900 4700
Wire Wire Line
	4900 4700 4900 3850
Wire Wire Line
	7200 4300 7500 4300
Wire Wire Line
	7500 4300 7500 4400
Wire Wire Line
	7500 4400 7800 4400
Wire Wire Line
	7200 4700 7200 4900
Wire Wire Line
	7200 4900 7050 4900
Wire Wire Line
	7050 4900 7050 5050
Connection ~ 7200 4700
Wire Wire Line
	7200 4900 7250 4900
Wire Wire Line
	7250 4900 7250 5050
Connection ~ 7200 4900
$Comp
L power:+12V #PWR06
U 1 1 5E5AAAAD
P 7600 4150
F 0 "#PWR06" H 7600 4000 50  0001 C CNN
F 1 "+12V" H 7615 4323 50  0000 C CNN
F 2 "" H 7600 4150 50  0001 C CNN
F 3 "" H 7600 4150 50  0001 C CNN
	1    7600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4150 7600 4300
Wire Wire Line
	7600 4300 7800 4300
Wire Wire Line
	7050 5250 7050 5400
Wire Wire Line
	7050 5400 7150 5400
Wire Wire Line
	7250 5400 7250 5250
$Comp
L power:GND #PWR05
U 1 1 5E5ABD5F
P 7150 5400
F 0 "#PWR05" H 7150 5150 50  0001 C CNN
F 1 "GND" H 7155 5227 50  0000 C CNN
F 2 "" H 7150 5400 50  0001 C CNN
F 3 "" H 7150 5400 50  0001 C CNN
	1    7150 5400
	1    0    0    -1  
$EndComp
Connection ~ 7150 5400
Wire Wire Line
	7150 5400 7250 5400
$Comp
L power:GND #PWR07
U 1 1 5E5B4DEB
P 3850 4600
F 0 "#PWR07" H 3850 4350 50  0001 C CNN
F 1 "GND" H 3855 4427 50  0000 C CNN
F 2 "" H 3850 4600 50  0001 C CNN
F 3 "" H 3850 4600 50  0001 C CNN
	1    3850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4500 3850 4500
Wire Wire Line
	3850 4500 3850 4600
$Comp
L power:GND #PWR0101
U 1 1 5E5B623F
P 5100 4150
F 0 "#PWR0101" H 5100 3900 50  0001 C CNN
F 1 "GND" H 5105 3977 50  0000 C CNN
F 2 "" H 5100 4150 50  0001 C CNN
F 3 "" H 5100 4150 50  0001 C CNN
	1    5100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4050 5100 4150
$EndSCHEMATC
