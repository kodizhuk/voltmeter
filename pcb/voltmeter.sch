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
L power:GND #PWR0101
U 1 1 63A15000
P 5100 5650
F 0 "#PWR0101" H 5100 5400 50  0001 C CNN
F 1 "GND" H 5105 5477 50  0000 C CNN
F 2 "" H 5100 5650 50  0001 C CNN
F 3 "" H 5100 5650 50  0001 C CNN
	1    5100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5500 5100 5550
Wire Wire Line
	5300 5500 5300 5550
Wire Wire Line
	5300 5550 5100 5550
Connection ~ 5100 5550
Wire Wire Line
	5100 5550 5100 5650
$Comp
L Device:R R1
U 1 1 63A159F8
P 3700 2600
F 0 "R1" H 3770 2646 50  0000 L CNN
F 1 "10k" H 3770 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3630 2600 50  0001 C CNN
F 3 "~" H 3700 2600 50  0001 C CNN
	1    3700 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 63A16FDA
P 3700 2800
F 0 "#PWR0102" H 3700 2550 50  0001 C CNN
F 1 "GND" H 3705 2627 50  0000 C CNN
F 2 "" H 3700 2800 50  0001 C CNN
F 3 "" H 3700 2800 50  0001 C CNN
	1    3700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2800 3700 2750
$Comp
L power:GND #PWR03
U 1 1 63A17E35
P 5350 2150
F 0 "#PWR03" H 5350 1900 50  0001 C CNN
F 1 "GND" H 5355 1977 50  0000 C CNN
F 2 "" H 5350 2150 50  0001 C CNN
F 3 "" H 5350 2150 50  0001 C CNN
	1    5350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2150 5350 2100
Wire Wire Line
	5350 2100 5500 2100
Wire Wire Line
	5500 2100 5500 2400
Text Label 3950 2450 0    50   ~ 0
RESET
$Comp
L Device:C C2
U 1 1 63A1AF93
P 4650 1550
F 0 "C2" H 4765 1596 50  0000 L CNN
F 1 "1uF" H 4765 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4688 1400 50  0001 C CNN
F 3 "~" H 4650 1550 50  0001 C CNN
	1    4650 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 63A1B6DF
P 4650 1750
F 0 "#PWR02" H 4650 1500 50  0001 C CNN
F 1 "GND" H 4655 1577 50  0000 C CNN
F 2 "" H 4650 1750 50  0001 C CNN
F 3 "" H 4650 1750 50  0001 C CNN
	1    4650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1700 4650 1750
Wire Wire Line
	4650 1400 5000 1400
Wire Wire Line
	5000 1400 5000 2400
Wire Wire Line
	5100 2400 5100 1400
Wire Wire Line
	5100 1400 5000 1400
Connection ~ 5000 1400
Text Label 4700 1400 0    50   ~ 0
VBAT3V
$Comp
L Device:L L1
U 1 1 63A1CBF0
P 5450 1650
F 0 "L1" V 5640 1650 50  0000 C CNN
F 1 "2.2uH" V 5549 1650 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5450 1650 50  0001 C CNN
F 3 "~" H 5450 1650 50  0001 C CNN
	1    5450 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 63A200AD
P 6400 3900
F 0 "#PWR04" H 6400 3650 50  0001 C CNN
F 1 "GND" H 6405 3727 50  0000 C CNN
F 2 "" H 6400 3900 50  0001 C CNN
F 3 "" H 6400 3900 50  0001 C CNN
	1    6400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3400 6250 3400
Wire Wire Line
	5950 3300 6550 3300
$Comp
L MyComponents:SP410281N U2
U 1 1 63A2E38F
P 2550 3500
F 0 "U2" H 1750 4050 50  0000 C CNN
F 1 "SP410281N" H 1950 3950 50  0000 C CNN
F 2 "MyComponents:7_seg_0.28in_display" H 1750 4150 50  0001 C CNN
F 3 "https://www.rcscomponents.kiev.ua/datasheets/GNT-2831Ax-Bx.pdf" H 1750 4150 50  0001 C CNN
	1    2550 3500
	1    0    0    -1  
$EndComp
$Comp
L MyComponents:SP410281N U3
U 1 1 63A32AE3
P 2550 4600
F 0 "U3" H 1750 5150 50  0000 C CNN
F 1 "SP410281N" H 1950 5050 50  0000 C CNN
F 2 "MyComponents:7_seg_0.28in_display" H 1750 5250 50  0001 C CNN
F 3 "https://www.rcscomponents.kiev.ua/datasheets/GNT-2831Ax-Bx.pdf" H 1750 5250 50  0001 C CNN
	1    2550 4600
	1    0    0    -1  
$EndComp
Entry Wire Line
	1300 1800 1400 1900
Entry Wire Line
	1300 3200 1400 3300
Entry Wire Line
	1300 3300 1400 3400
Entry Wire Line
	1300 3400 1400 3500
Entry Wire Line
	1300 3500 1400 3600
Entry Wire Line
	1300 3600 1400 3700
Entry Wire Line
	1300 3700 1400 3800
Entry Wire Line
	1300 3800 1400 3900
Wire Wire Line
	1400 3300 1600 3300
Wire Wire Line
	1600 3400 1400 3400
Wire Wire Line
	1600 3500 1400 3500
Wire Wire Line
	1600 3600 1400 3600
Wire Wire Line
	1400 3700 1600 3700
Wire Wire Line
	1600 3800 1400 3800
Wire Wire Line
	1400 3900 1600 3900
Text Label 1400 3200 0    50   ~ 0
a
Text Label 1400 3300 0    50   ~ 0
b
Text Label 1400 3400 0    50   ~ 0
c
Text Label 1400 3500 0    50   ~ 0
d
Text Label 1400 3600 0    50   ~ 0
e
Text Label 1400 3700 0    50   ~ 0
f
Text Label 1400 3800 0    50   ~ 0
g
Text Label 1400 3900 0    50   ~ 0
dp
Entry Wire Line
	1300 4200 1400 4300
Entry Wire Line
	1300 4300 1400 4400
Entry Wire Line
	1300 4400 1400 4500
Entry Wire Line
	1300 4500 1400 4600
Entry Wire Line
	1300 4600 1400 4700
Entry Wire Line
	1300 4700 1400 4800
Entry Wire Line
	1300 4800 1400 4900
Entry Wire Line
	1300 4900 1400 5000
Wire Wire Line
	1400 4300 1600 4300
Wire Wire Line
	1400 4400 1600 4400
Wire Wire Line
	1400 4500 1600 4500
Wire Wire Line
	1400 4600 1600 4600
Wire Wire Line
	1400 4700 1600 4700
Wire Wire Line
	1400 4800 1600 4800
Wire Wire Line
	1400 4900 1600 4900
Wire Wire Line
	1400 5000 1600 5000
Text Label 1400 4300 0    50   ~ 0
a
Text Label 1400 4400 0    50   ~ 0
b
Text Label 1400 4500 0    50   ~ 0
c
Text Label 1400 4600 0    50   ~ 0
d
Text Label 1400 4700 0    50   ~ 0
e
Text Label 1400 4800 0    50   ~ 0
f
Text Label 1400 4900 0    50   ~ 0
g
Text Label 1400 5000 0    50   ~ 0
dp
Wire Wire Line
	3400 3700 3500 3700
Wire Wire Line
	3400 3800 3500 3800
Wire Wire Line
	3400 3900 3500 3900
Text Label 3500 3700 0    50   ~ 0
dig1
Text Label 3500 3800 0    50   ~ 0
dig2
Text Label 3500 3900 0    50   ~ 0
dig3
Wire Wire Line
	3400 4800 3500 4800
Wire Wire Line
	3400 4900 3500 4900
Wire Wire Line
	3400 5000 3500 5000
Text Label 3500 4800 0    50   ~ 0
dig4
Text Label 3500 4900 0    50   ~ 0
dig5
Text Label 3500 5000 0    50   ~ 0
dig6
Wire Wire Line
	1650 1900 1400 1900
Wire Wire Line
	1650 2000 1400 2000
Wire Wire Line
	1650 2100 1400 2100
Wire Wire Line
	1650 2200 1400 2200
Wire Wire Line
	1650 2450 1400 2450
Wire Wire Line
	1650 2550 1400 2550
Text Label 1450 2000 0    50   ~ 0
a
Text Label 1450 2200 0    50   ~ 0
b
Text Label 1450 2450 0    50   ~ 0
c
Text Label 1450 2650 0    50   ~ 0
d
Text Label 1450 2750 0    50   ~ 0
e
Text Label 1450 2100 0    50   ~ 0
f
$Comp
L Device:R_Pack04 RN1
U 1 1 63A6BE3B
P 1850 2100
F 0 "RN1" V 1433 2100 50  0000 C CNN
F 1 "R_Pack04" V 1524 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Concave_4x0603" V 2125 2100 50  0001 C CNN
F 3 "~" H 1850 2100 50  0001 C CNN
	1    1850 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 63A6FFD5
P 1850 2650
F 0 "RN2" V 1550 2450 50  0000 C CNN
F 1 "R_Pack04" V 1550 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Concave_4x0603" V 2125 2650 50  0001 C CNN
F 3 "~" H 1850 2650 50  0001 C CNN
	1    1850 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 2650 1400 2650
Wire Wire Line
	1650 2750 1400 2750
Text Label 1450 1900 0    50   ~ 0
g
Text Label 1450 2550 0    50   ~ 0
dp
Entry Wire Line
	1300 1900 1400 2000
Entry Wire Line
	1300 2000 1400 2100
Entry Wire Line
	1300 2100 1400 2200
Entry Wire Line
	1300 2350 1400 2450
Entry Wire Line
	1300 2450 1400 2550
Entry Wire Line
	1300 2550 1400 2650
Entry Wire Line
	1300 2650 1400 2750
Entry Wire Line
	1300 3100 1400 3200
Wire Wire Line
	1400 3200 1600 3200
Wire Wire Line
	2050 1900 2350 1900
Wire Wire Line
	2050 2000 2350 2000
Wire Wire Line
	2050 2100 2350 2100
Wire Wire Line
	2050 2200 2350 2200
Text Label 2350 2000 0    50   ~ 0
seg_a
Text Label 2350 2200 0    50   ~ 0
seg_b
Text Label 2350 2450 0    50   ~ 0
seg_c
Text Label 2350 2650 0    50   ~ 0
seg_d
Wire Wire Line
	2050 2450 2350 2450
Wire Wire Line
	2050 2550 2350 2550
Wire Wire Line
	2050 2650 2350 2650
Wire Wire Line
	2050 2750 2350 2750
Text Label 2350 2750 0    50   ~ 0
seg_e
Text Label 2350 2100 0    50   ~ 0
seg_f
Text Label 2350 1900 0    50   ~ 0
seg_g
Text Label 2350 2550 0    50   ~ 0
seg_dp
Text Label 4150 4550 0    50   ~ 0
seg_a
Text Label 4150 4750 0    50   ~ 0
seg_b
Text Label 4150 4350 0    50   ~ 0
seg_c
Text Label 4150 4950 0    50   ~ 0
seg_d
Text Label 4150 4850 0    50   ~ 0
seg_e
Text Label 4150 4450 0    50   ~ 0
seg_g
Text Label 4150 5050 0    50   ~ 0
seg_dp
Wire Wire Line
	4150 4550 4400 4550
Wire Wire Line
	4150 4750 4400 4750
Wire Wire Line
	4150 4350 4400 4350
Wire Wire Line
	4150 4950 4400 4950
Wire Wire Line
	4150 4850 4400 4850
Wire Wire Line
	4150 4450 4400 4450
Wire Wire Line
	4150 5050 4400 5050
Text Label 4150 4000 0    50   ~ 0
dig2
Text Label 4150 3900 0    50   ~ 0
dig3
Text Label 4150 4200 0    50   ~ 0
dig4
Text Label 4150 3250 0    50   ~ 0
dig5
Text Label 4150 3450 0    50   ~ 0
dig6
Wire Wire Line
	4150 3900 4400 3900
Wire Wire Line
	4150 4200 4400 4200
Wire Wire Line
	4150 3250 4400 3250
Wire Wire Line
	4150 3450 4400 3450
Wire Wire Line
	4150 4000 4400 4000
Wire Wire Line
	3750 3150 4400 3150
$Comp
L Device:R R3
U 1 1 63AC9B6C
P 7350 2500
F 0 "R3" H 7420 2546 50  0000 L CNN
F 1 "R" H 7420 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7280 2500 50  0001 C CNN
F 3 "~" H 7350 2500 50  0001 C CNN
	1    7350 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 63AC9D34
P 7350 2900
F 0 "R4" H 7420 2946 50  0000 L CNN
F 1 "R" H 7420 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7280 2900 50  0001 C CNN
F 3 "~" H 7350 2900 50  0001 C CNN
	1    7350 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 63ACC8E2
P 7350 3150
F 0 "#PWR0103" H 7350 2900 50  0001 C CNN
F 1 "GND" H 7355 2977 50  0000 C CNN
F 2 "" H 7350 3150 50  0001 C CNN
F 3 "" H 7350 3150 50  0001 C CNN
	1    7350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3150 7350 3050
Wire Wire Line
	7350 2650 7350 2700
Text Label 8200 2700 0    50   ~ 0
adc_voltage
Wire Wire Line
	7500 2700 7350 2700
Connection ~ 7350 2700
Wire Wire Line
	7350 2700 7350 2750
$Comp
L Device:R R5
U 1 1 63ADC08B
P 8050 2500
F 0 "R5" H 8120 2546 50  0000 L CNN
F 1 "R" H 8120 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7980 2500 50  0001 C CNN
F 3 "~" H 8050 2500 50  0001 C CNN
	1    8050 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 63ADC091
P 8050 2900
F 0 "R6" H 8120 2946 50  0000 L CNN
F 1 "R" H 8120 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7980 2900 50  0001 C CNN
F 3 "~" H 8050 2900 50  0001 C CNN
	1    8050 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 63ADC097
P 8050 3150
F 0 "#PWR0104" H 8050 2900 50  0001 C CNN
F 1 "GND" H 8055 2977 50  0000 C CNN
F 2 "" H 8050 3150 50  0001 C CNN
F 3 "" H 8050 3150 50  0001 C CNN
	1    8050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3150 8050 3050
Wire Wire Line
	8050 2650 8050 2700
Text Label 7500 2700 0    50   ~ 0
adc_current
Wire Wire Line
	8200 2700 8050 2700
Connection ~ 8050 2700
Wire Wire Line
	8050 2700 8050 2750
$Comp
L Device:R R7
U 1 1 63ADFB5C
P 8750 2500
F 0 "R7" H 8820 2546 50  0000 L CNN
F 1 "R" H 8820 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8680 2500 50  0001 C CNN
F 3 "~" H 8750 2500 50  0001 C CNN
	1    8750 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 63ADFB62
P 8750 2900
F 0 "R8" H 8820 2946 50  0000 L CNN
F 1 "R" H 8820 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8680 2900 50  0001 C CNN
F 3 "~" H 8750 2900 50  0001 C CNN
	1    8750 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 63ADFB68
P 8750 3150
F 0 "#PWR0105" H 8750 2900 50  0001 C CNN
F 1 "GND" H 8755 2977 50  0000 C CNN
F 2 "" H 8750 3150 50  0001 C CNN
F 3 "" H 8750 3150 50  0001 C CNN
	1    8750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3150 8750 3050
Wire Wire Line
	8750 2650 8750 2700
Text Label 8900 2700 0    50   ~ 0
adc_current_set
Wire Wire Line
	8900 2700 8750 2700
Connection ~ 8750 2700
Wire Wire Line
	8750 2700 8750 2750
Wire Wire Line
	7050 1750 8750 1750
Wire Wire Line
	8750 1750 8750 2350
Wire Wire Line
	7050 1850 8050 1850
Wire Wire Line
	8050 1850 8050 2350
Wire Wire Line
	7050 1950 7350 1950
Wire Wire Line
	7350 1950 7350 2350
$Comp
L power:GND #PWR0106
U 1 1 63AF6295
P 7150 2150
F 0 "#PWR0106" H 7150 1900 50  0001 C CNN
F 1 "GND" H 7155 1977 50  0000 C CNN
F 2 "" H 7150 2150 50  0001 C CNN
F 3 "" H 7150 2150 50  0001 C CNN
	1    7150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2050 7150 2050
Wire Wire Line
	7150 2050 7150 2150
Text Label 3900 3050 0    50   ~ 0
adc_voltage
Text Label 3900 3350 0    50   ~ 0
adc_current
Wire Wire Line
	4400 3050 3900 3050
Wire Wire Line
	4400 3350 3900 3350
Text Label 4100 2800 0    50   ~ 0
SWCLK
Text Label 4100 2900 0    50   ~ 0
SWDIO
Text Label 4150 5350 0    50   ~ 0
P3_0
Wire Wire Line
	4100 2800 4400 2800
Wire Wire Line
	4100 2900 4400 2900
Wire Wire Line
	4150 5350 4400 5350
$Comp
L power:GND #PWR06
U 1 1 63B47A31
P 6150 3050
F 0 "#PWR06" H 6150 2800 50  0001 C CNN
F 1 "GND" H 6155 2877 50  0000 C CNN
F 2 "" H 6150 3050 50  0001 C CNN
F 3 "" H 6150 3050 50  0001 C CNN
	1    6150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3100 6050 3100
Wire Wire Line
	6050 3100 6050 3050
Wire Wire Line
	6050 3050 6150 3050
Text Notes 4350 6050 0    50   ~ 0
DC-DC configuration: Buck (step-down) mode to 1.8V\n
$Comp
L Device:C C3
U 1 1 63B4CB50
P 6050 2400
F 0 "C3" H 6165 2446 50  0000 L CNN
F 1 "1uF" H 6165 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6088 2250 50  0001 C CNN
F 3 "~" H 6050 2400 50  0001 C CNN
	1    6050 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 63B51100
P 6050 2600
F 0 "#PWR05" H 6050 2350 50  0001 C CNN
F 1 "GND" H 6055 2427 50  0000 C CNN
F 2 "" H 6050 2600 50  0001 C CNN
F 3 "" H 6050 2600 50  0001 C CNN
	1    6050 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2600 6050 2550
$Comp
L Device:C C1
U 1 1 63B5CC39
P 6050 1800
F 0 "C1" H 6165 1846 50  0000 L CNN
F 1 "1uF" H 6165 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6088 1650 50  0001 C CNN
F 3 "~" H 6050 1800 50  0001 C CNN
	1    6050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 63B5CC3F
P 6050 2000
F 0 "#PWR01" H 6050 1750 50  0001 C CNN
F 1 "GND" H 6055 1827 50  0000 C CNN
F 2 "" H 6050 2000 50  0001 C CNN
F 3 "" H 6050 2000 50  0001 C CNN
	1    6050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2000 6050 1950
Wire Wire Line
	5250 1650 5300 1650
Wire Wire Line
	5250 1650 5250 2400
Connection ~ 5600 1650
Text Label 5800 1650 0    50   ~ 0
VDCDC
Wire Wire Line
	5600 1650 5600 2400
Wire Wire Line
	6050 2250 5700 2250
Wire Wire Line
	5700 2250 5700 2400
Wire Wire Line
	5600 1650 6050 1650
Text Label 5700 2250 0    50   ~ 0
VDCDC
$Comp
L MyComponents:DA14585_QFN40 U1
U 1 1 63A131F7
P 5100 2850
F 0 "U1" H 5050 1350 50  0000 C CNN
F 1 "DA14585_QFN40" H 5300 1250 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-40-1EP_5x5mm_P0.4mm_EP3.8x3.8mm" H 5300 -250 50  0001 C CNN
F 3 "https://www.renesas.com/eu/en/document/dst/da14585-datasheet?language=en&r=1600291" H 5000 1700 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2650 3950 2650
Wire Wire Line
	3950 2650 3950 2450
Wire Wire Line
	3950 2450 3700 2450
$Comp
L Regulator_Linear:HT75xx-1-SOT89 U4
U 1 1 63C034A2
P 2150 1150
F 0 "U4" H 2150 1517 50  0000 C CNN
F 1 "MST53XXB-SOT89" H 2150 1426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 2150 1475 50  0001 C CIN
F 3 "https://datasheet.lcsc.com/lcsc/1811151230_MST-MST5330BTE_C324580.pdf" H 2150 1250 50  0001 C CNN
	1    2150 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 63C04E12
P 2150 1450
F 0 "#PWR010" H 2150 1200 50  0001 C CNN
F 1 "GND" H 2155 1277 50  0000 C CNN
F 2 "" H 2150 1450 50  0001 C CNN
F 3 "" H 2150 1450 50  0001 C CNN
	1    2150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1450 2150 1350
Text Label 2650 1050 0    50   ~ 0
VBAT3V
Wire Wire Line
	2450 1050 2550 1050
Wire Wire Line
	1850 1050 1650 1050
$Comp
L power:+15V #PWR08
U 1 1 63C11AC6
P 1450 1050
F 0 "#PWR08" H 1450 900 50  0001 C CNN
F 1 "+15V" H 1465 1223 50  0000 C CNN
F 2 "" H 1450 1050 50  0001 C CNN
F 3 "" H 1450 1050 50  0001 C CNN
	1    1450 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 63C1280E
P 1650 1250
F 0 "C4" H 1765 1296 50  0000 L CNN
F 1 "1uF" H 1765 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1688 1100 50  0001 C CNN
F 3 "~" H 1650 1250 50  0001 C CNN
	1    1650 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 63C12D52
P 2550 1250
F 0 "C5" H 2665 1296 50  0000 L CNN
F 1 "10uF" H 2665 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2588 1100 50  0001 C CNN
F 3 "~" H 2550 1250 50  0001 C CNN
	1    2550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1100 2550 1050
Connection ~ 2550 1050
Wire Wire Line
	2550 1050 2650 1050
Wire Wire Line
	1650 1100 1650 1050
Connection ~ 1650 1050
Wire Wire Line
	1650 1050 1450 1050
$Comp
L power:GND #PWR09
U 1 1 63C1BF44
P 1650 1450
F 0 "#PWR09" H 1650 1200 50  0001 C CNN
F 1 "GND" H 1655 1277 50  0000 C CNN
F 2 "" H 1650 1450 50  0001 C CNN
F 3 "" H 1650 1450 50  0001 C CNN
	1    1650 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 63C1C228
P 2550 1450
F 0 "#PWR011" H 2550 1200 50  0001 C CNN
F 1 "GND" H 2555 1277 50  0000 C CNN
F 2 "" H 2550 1450 50  0001 C CNN
F 3 "" H 2550 1450 50  0001 C CNN
	1    2550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1450 2550 1400
Wire Wire Line
	1650 1450 1650 1400
$Comp
L Device:C C6
U 1 1 63C31B5C
P 7150 2900
F 0 "C6" H 6900 2900 50  0000 L CNN
F 1 "0.1uF" H 6900 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7188 2750 50  0001 C CNN
F 3 "~" H 7150 2900 50  0001 C CNN
	1    7150 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 63C33587
P 7850 2900
F 0 "C7" H 7650 2950 50  0000 L CNN
F 1 "0.1uF" H 7600 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7888 2750 50  0001 C CNN
F 3 "~" H 7850 2900 50  0001 C CNN
	1    7850 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 63C33AC4
P 8550 2900
F 0 "C8" H 8350 2950 50  0000 L CNN
F 1 "0.1uF" H 8300 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8588 2750 50  0001 C CNN
F 3 "~" H 8550 2900 50  0001 C CNN
	1    8550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2700 8550 2700
Wire Wire Line
	8550 2700 8550 2750
Wire Wire Line
	8050 2700 7850 2700
Wire Wire Line
	7850 2700 7850 2750
Wire Wire Line
	7350 2700 7150 2700
Wire Wire Line
	7150 2700 7150 2750
Wire Wire Line
	7150 3050 7350 3050
Connection ~ 7350 3050
Wire Wire Line
	7850 3050 8050 3050
Connection ~ 8050 3050
Wire Wire Line
	8550 3050 8750 3050
Connection ~ 8750 3050
Text Label 3750 3150 0    50   ~ 0
adc_current_set
Text Label 4150 4100 0    50   ~ 0
dig1
Wire Wire Line
	4400 4100 4150 4100
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 63C90F48
P 6850 1850
F 0 "J1" H 6958 2231 50  0000 C CNN
F 1 "Conn" H 6958 2140 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 6850 1850 50  0001 C CNN
F 3 "~" H 6850 1850 50  0001 C CNN
	1    6850 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1650 7200 1650
Wire Wire Line
	7200 1650 7200 1600
Wire Wire Line
	4150 4650 4400 4650
Text Label 4150 4650 0    50   ~ 0
seg_f
$Comp
L power:+15V #PWR0107
U 1 1 63A4C538
P 7200 1600
F 0 "#PWR0107" H 7200 1450 50  0001 C CNN
F 1 "+15V" H 7215 1773 50  0000 C CNN
F 2 "" H 7200 1600 50  0001 C CNN
F 3 "" H 7200 1600 50  0001 C CNN
	1    7200 1600
	1    0    0    -1  
$EndComp
Text Notes 7100 1750 0    50   ~ 0
5V max value
Text Notes 7500 1850 0    50   ~ 0
52V max value
$Comp
L Device:Crystal_GND24 Y1
U 1 1 63B75922
P 6400 3600
F 0 "Y1" H 6594 3646 50  0000 L CNN
F 1 "Crystal_GND24" H 6594 3555 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 6400 3600 50  0001 C CNN
F 3 "~" H 6400 3600 50  0001 C CNN
	1    6400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3400 6250 3600
Wire Wire Line
	6550 3300 6550 3600
Wire Wire Line
	6400 3900 6400 3800
$Comp
L power:GND #PWR0108
U 1 1 63B87994
P 6650 3250
F 0 "#PWR0108" H 6650 3000 50  0001 C CNN
F 1 "GND" H 6655 3077 50  0000 C CNN
F 2 "" H 6650 3250 50  0001 C CNN
F 3 "" H 6650 3250 50  0001 C CNN
	1    6650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3400 6400 3200
Wire Wire Line
	6400 3200 6650 3200
Wire Wire Line
	6650 3200 6650 3250
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 63D62EE2
P 3650 1800
F 0 "J2" H 3758 2181 50  0000 C CNN
F 1 "Conn" H 3758 2090 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3650 1800 50  0001 C CNN
F 3 "~" H 3650 1800 50  0001 C CNN
	1    3650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1700 4100 1700
Wire Wire Line
	3850 1800 4100 1800
Wire Wire Line
	3850 1900 4100 1900
Wire Wire Line
	3850 2000 4100 2000
Text Label 4100 1800 0    50   ~ 0
SWCLK
Text Label 4100 1900 0    50   ~ 0
SWDIO
$Comp
L power:GND #PWR07
U 1 1 63DA0C8A
P 4100 2000
F 0 "#PWR07" H 4100 1750 50  0001 C CNN
F 1 "GND" H 4105 1827 50  0000 C CNN
F 2 "" H 4100 2000 50  0001 C CNN
F 3 "" H 4100 2000 50  0001 C CNN
	1    4100 2000
	1    0    0    -1  
$EndComp
Text Label 4100 1700 0    50   ~ 0
VBAT3V
Wire Bus Line
	1300 1800 1300 5000
$EndSCHEMATC
