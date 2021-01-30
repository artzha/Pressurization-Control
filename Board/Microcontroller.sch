EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 25
Title "Pressurization Board Series 1"
Date "2020-08-17"
Rev "Rev A"
Comp "Michigan Aeronautical Science Association (MASA)"
Comment1 "Josh Azrin & Arthur Zhang"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2375 1800 2    50   Input ~ 0
SPI1_SCK
Text GLabel 1625 1900 2    50   Input ~ 0
SPI1_MISO
Text GLabel 2375 2000 2    50   Input ~ 0
SPI1_MOSI
Text Notes 550  3500 0    123  ~ 25
Programming Header\n
$Comp
L pressurization_series1-rescue:Conn_02x03_Counter_Clockwise-Connector_Generic J1
U 1 1 5E5320E3
P 2025 4250
F 0 "J1" H 2075 4567 50  0000 C CNN
F 1 "Conn_02x03_Counter_Clockwise" H 2075 4476 50  0000 C CNN
F 2 "KiCad:PinHeader_2x03_P2.54mm_Vertical" H 2025 4250 50  0001 C CNN
F 3 "~" H 2025 4250 50  0001 C CNN
	1    2025 4250
	1    0    0    -1  
$EndComp
Text GLabel 2425 4150 2    50   Input ~ 0
SW0
Text GLabel 1675 4150 0    50   Input ~ 0
SWDIO
Text GLabel 1675 4250 0    50   Input ~ 0
SWCLK
Text GLabel 1675 4350 0    50   Input ~ 0
NRST
Wire Wire Line
	1675 4150 1825 4150
Wire Wire Line
	1825 4250 1675 4250
Wire Wire Line
	1675 4350 1825 4350
Wire Wire Line
	2325 4150 2425 4150
Wire Wire Line
	2325 4250 2775 4250
Wire Wire Line
	2775 4250 2775 4000
Wire Wire Line
	2325 4350 2575 4350
Wire Wire Line
	2575 4350 2575 4450
$Comp
L pressurization_series1-rescue:GND-power #PWR019
U 1 1 5E53A4AC
P 2575 4450
F 0 "#PWR019" H 2575 4200 50  0001 C CNN
F 1 "GND" H 2580 4277 50  0000 C CNN
F 2 "" H 2575 4450 50  0001 C CNN
F 3 "" H 2575 4450 50  0001 C CNN
	1    2575 4450
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C11
U 1 1 5E616E7B
P 7825 6000
F 0 "C11" H 7940 6046 50  0000 L CNN
F 1 "100n" H 7900 5925 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 7863 5850 50  0001 C CNN
F 3 "~" H 7825 6000 50  0001 C CNN
	1    7825 6000
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C12
U 1 1 5E617F70
P 8175 6000
F 0 "C12" H 8290 6046 50  0000 L CNN
F 1 "100n" H 8250 5925 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 8213 5850 50  0001 C CNN
F 3 "~" H 8175 6000 50  0001 C CNN
	1    8175 6000
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C13
U 1 1 5E61C3E9
P 8525 6000
F 0 "C13" H 8640 6046 50  0000 L CNN
F 1 "100n" H 8600 5925 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 8563 5850 50  0001 C CNN
F 3 "~" H 8525 6000 50  0001 C CNN
	1    8525 6000
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C14
U 1 1 5E61C3EF
P 8875 6000
F 0 "C14" H 8990 6046 50  0000 L CNN
F 1 "100n" H 8975 5925 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 8913 5850 50  0001 C CNN
F 3 "~" H 8875 6000 50  0001 C CNN
	1    8875 6000
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C16
U 1 1 5E61ECE7
P 9225 6000
F 0 "C16" H 9340 6046 50  0000 L CNN
F 1 "100n" H 9300 5925 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 9263 5850 50  0001 C CNN
F 3 "~" H 9225 6000 50  0001 C CNN
	1    9225 6000
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C17
U 1 1 5E61ECED
P 9575 6000
F 0 "C17" H 9690 6046 50  0000 L CNN
F 1 "10u" H 9650 5925 50  0000 L CNN
F 2 "KiCad:C_0805_2012Metric" H 9613 5850 50  0001 C CNN
F 3 "~" H 9575 6000 50  0001 C CNN
	1    9575 6000
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C18
U 1 1 5E620F83
P 9925 6000
F 0 "C18" H 10040 6046 50  0000 L CNN
F 1 "10u" H 10000 5925 50  0000 L CNN
F 2 "KiCad:C_0805_2012Metric" H 9963 5850 50  0001 C CNN
F 3 "~" H 9925 6000 50  0001 C CNN
	1    9925 6000
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C19
U 1 1 5E620F89
P 10275 6000
F 0 "C19" H 10390 6046 50  0000 L CNN
F 1 "10u" H 10350 5925 50  0000 L CNN
F 2 "KiCad:C_0805_2012Metric" H 10313 5850 50  0001 C CNN
F 3 "~" H 10275 6000 50  0001 C CNN
	1    10275 6000
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C10
U 1 1 5E624C8A
P 7475 6000
F 0 "C10" H 7590 6046 50  0000 L CNN
F 1 "100n" H 7525 5925 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 7513 5850 50  0001 C CNN
F 3 "~" H 7475 6000 50  0001 C CNN
	1    7475 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 5850 7825 5850
Connection ~ 7825 5850
Wire Wire Line
	7825 5850 8175 5850
Connection ~ 8175 5850
Wire Wire Line
	8175 5850 8525 5850
Connection ~ 8525 5850
Wire Wire Line
	8525 5850 8875 5850
Connection ~ 8875 5850
Connection ~ 9225 5850
Wire Wire Line
	9225 5850 9575 5850
Connection ~ 9575 5850
Wire Wire Line
	9575 5850 9925 5850
Connection ~ 9925 5850
Wire Wire Line
	9925 5850 10275 5850
Wire Wire Line
	10275 6150 9925 6150
Connection ~ 7825 6150
Wire Wire Line
	7825 6150 7475 6150
Connection ~ 8175 6150
Wire Wire Line
	8175 6150 7825 6150
Connection ~ 8525 6150
Wire Wire Line
	8525 6150 8175 6150
Connection ~ 8875 6150
Wire Wire Line
	8875 6150 8525 6150
Connection ~ 9225 6150
Wire Wire Line
	9225 6150 9075 6150
Connection ~ 9575 6150
Wire Wire Line
	9575 6150 9225 6150
Connection ~ 9925 6150
Wire Wire Line
	9925 6150 9575 6150
Wire Wire Line
	9075 6150 9075 6300
Connection ~ 9075 6150
Wire Wire Line
	9075 6150 8875 6150
$Comp
L pressurization_series1-rescue:GND-power #PWR027
U 1 1 5E630D54
P 9075 6300
F 0 "#PWR027" H 9075 6050 50  0001 C CNN
F 1 "GND" H 9080 6127 50  0000 C CNN
F 2 "" H 9075 6300 50  0001 C CNN
F 3 "" H 9075 6300 50  0001 C CNN
	1    9075 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8875 5850 9075 5850
Wire Wire Line
	9075 5800 9075 5850
Connection ~ 9075 5850
Wire Wire Line
	9075 5850 9225 5850
Wire Wire Line
	9275 4175 9175 4175
Wire Wire Line
	9175 4175 9175 4275
Connection ~ 9175 4175
Text GLabel 8925 4175 0    50   Input ~ 0
NRST
Wire Wire Line
	8925 4175 9175 4175
$Comp
L pressurization_series1-rescue:C-Device C15
U 1 1 5E65A900
P 9175 4425
F 0 "C15" H 9290 4471 50  0000 L CNN
F 1 "100n" H 9290 4380 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 9213 4275 50  0001 C CNN
F 3 "~" H 9175 4425 50  0001 C CNN
	1    9175 4425
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:R-Device R21
U 1 1 5E65BE21
P 9275 3825
F 0 "R21" H 9345 3871 50  0000 L CNN
F 1 "1k" V 9275 3775 50  0000 L CNN
F 2 "KiCad:R_0603_1608Metric" V 9205 3825 50  0001 C CNN
F 3 "~" H 9275 3825 50  0001 C CNN
	1    9275 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	9275 3975 9275 4175
Wire Wire Line
	9275 3675 9275 3625
Wire Wire Line
	9175 4575 9175 4675
$Comp
L pressurization_series1-rescue:GND-power #PWR028
U 1 1 5E6696F3
P 9175 4675
F 0 "#PWR028" H 9175 4425 50  0001 C CNN
F 1 "GND" H 9180 4502 50  0000 C CNN
F 2 "" H 9175 4675 50  0001 C CNN
F 3 "" H 9175 4675 50  0001 C CNN
	1    9175 4675
	1    0    0    -1  
$EndComp
Text GLabel 1625 2100 2    50   Input ~ 0
mtr3_pwm0
Text GLabel 1625 2200 2    50   Input ~ 0
mtr3_pwm1
Text GLabel 7025 1300 2    50   Input ~ 0
LED0
Text GLabel 7025 1400 2    50   Input ~ 0
LED1
Text GLabel 4500 3875 2    50   Input ~ 0
SPI1_SCK
Text GLabel 4500 4150 2    50   Input ~ 0
SPI1_MISO
Text GLabel 4500 4425 2    50   Input ~ 0
SPI1_MOSI
Text GLabel 1625 2600 2    50   Input ~ 0
SWDIO
Text GLabel 1625 2700 2    50   Input ~ 0
SWCLK
Text GLabel 4575 1700 2    50   Input ~ 0
SW0
Text GLabel 1625 2300 2    50   Input ~ 0
mtr3_pwm2
Text GLabel 7025 1900 2    50   Input ~ 0
mtr2_pwm0
Text GLabel 7025 2000 2    50   Input ~ 0
mtr2_pwm1
Text GLabel 7025 2100 2    50   Input ~ 0
mtr2_pwm2
Text GLabel 7025 2200 2    50   Input ~ 0
mtr0_inB0
Text GLabel 1625 2400 2    50   Input ~ 0
mtr0_inB1
Text GLabel 8425 2300 2    50   Input ~ 0
mtr2_in1
Text GLabel 8425 2200 2    50   Input ~ 0
mtr2_in0
Text GLabel 7025 2500 2    50   Input ~ 0
mtr3_in0
Text GLabel 8425 1400 2    50   Input ~ 0
mtr3_in2
Text GLabel 1625 1600 2    50   Input ~ 0
adc0_cs
Text GLabel 9925 1500 2    50   Input ~ 0
en_vlv8
Text GLabel 4575 1400 2    49   Input ~ 0
adc1_cs
Text GLabel 4575 2000 2    50   Input ~ 0
USART1_TX
Text GLabel 4575 2100 2    50   Input ~ 0
USART1_RX
Text GLabel 5325 2600 2    50   Input ~ 0
SPI2_SCK
Text GLabel 5325 2800 2    50   Input ~ 0
SPI2_MOSI
Text GLabel 4575 2700 2    50   Input ~ 0
SPI2_MISO
Wire Wire Line
	5325 2800 5275 2800
Text GLabel 8425 2100 2    50   Input ~ 0
FLASH_CS
Text GLabel 5600 3875 2    50   Input ~ 0
SPI2_SCK
Text GLabel 5600 4150 2    50   Input ~ 0
SPI2_MISO
Text GLabel 5600 4425 2    50   Input ~ 0
SPI2_MOSI
Text GLabel 8425 1800 2    50   Input ~ 0
USART2_TX
Text GLabel 8425 1900 2    50   Input ~ 0
USART2_RX
Text GLabel 7025 1500 2    50   Input ~ 0
LED2
Text GLabel 7025 1600 2    50   Input ~ 0
LED3
Text GLabel 8425 2500 2    50   Input ~ 0
e_digSens0A
Text GLabel 8425 2600 2    50   Input ~ 0
e_digSens0B
Text GLabel 4575 2500 2    50   Input ~ 0
SD_CS
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR021
U 1 1 5EB0D57F
P 2775 4000
F 0 "#PWR021" H 2775 3850 50  0001 C CNN
F 1 "+3.3V" H 2790 4173 50  0000 C CNN
F 2 "" H 2775 4000 50  0001 C CNN
F 3 "" H 2775 4000 50  0001 C CNN
	1    2775 4000
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR026
U 1 1 5EB211D3
P 9075 5800
F 0 "#PWR026" H 9075 5650 50  0001 C CNN
F 1 "+3.3V" H 9090 5973 50  0000 C CNN
F 2 "" H 9075 5800 50  0001 C CNN
F 3 "" H 9075 5800 50  0001 C CNN
	1    9075 5800
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR029
U 1 1 5EB2A4B8
P 9275 3625
F 0 "#PWR029" H 9275 3475 50  0001 C CNN
F 1 "+3.3V" H 9290 3798 50  0000 C CNN
F 2 "" H 9275 3625 50  0001 C CNN
F 3 "" H 9275 3625 50  0001 C CNN
	1    9275 3625
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:GND-power #PWR030
U 1 1 5E66819F
P 10750 4775
F 0 "#PWR030" H 10750 4525 50  0001 C CNN
F 1 "GND" V 10755 4647 50  0000 R CNN
F 2 "" H 10750 4775 50  0001 C CNN
F 3 "" H 10750 4775 50  0001 C CNN
	1    10750 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4525 10750 4525
Wire Wire Line
	10300 4175 10300 4325
$Comp
L pressurization_series1:SMD-BUTTON(4P-5.2X5.2X1.5MM-SKQGAKE010) SW?
U 1 1 5EB3FA6F
P 9950 4425
AR Path="/5EB3FA6F" Ref="SW?"  Part="1" 
AR Path="/5E49E9B7/5EB3FA6F" Ref="SW1"  Part="1" 
F 0 "SW1" H 9950 4792 50  0000 C CNN
F 1 "SMD-BUTTON" H 9950 4701 50  0000 C CNN
F 2 "libs:SW4-SMD-5.2X5.2X1.5MM" H 9950 4425 50  0001 L BNN
F 3 "" H 9950 4425 50  0001 C CNN
	1    9950 4425
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 4525 10750 4675
Wire Wire Line
	9600 4325 9600 4175
Wire Wire Line
	9600 4175 10300 4175
Wire Wire Line
	9600 4525 9600 4675
Wire Wire Line
	9600 4675 10750 4675
Connection ~ 10750 4675
Wire Wire Line
	10750 4675 10750 4775
$Comp
L pressurization_series1-rescue:R-Device R13
U 1 1 5EB4D439
P 2175 1800
F 0 "R13" V 2100 1800 50  0000 C CNN
F 1 "Rt" V 2175 1800 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 2105 1800 50  0001 C CNN
F 3 "~" H 2175 1800 50  0001 C CNN
	1    2175 1800
	0    1    1    0   
$EndComp
$Comp
L pressurization_series1-rescue:R-Device R15
U 1 1 5EB628E1
P 5125 2600
F 0 "R15" V 5050 2600 50  0000 C CNN
F 1 "Rt" V 5125 2600 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 5055 2600 50  0001 C CNN
F 3 "~" H 5125 2600 50  0001 C CNN
	1    5125 2600
	0    1    1    0   
$EndComp
$Comp
L pressurization_series1-rescue:R-Device R16
U 1 1 5EB6C68F
P 5125 2800
F 0 "R16" V 5050 2800 50  0000 C CNN
F 1 "Rt" V 5125 2800 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 5055 2800 50  0001 C CNN
F 3 "~" H 5125 2800 50  0001 C CNN
	1    5125 2800
	0    1    1    0   
$EndComp
Text Notes 2275 2825 0    50   ~ 0
Details on Rt resistors \n(spi line termination resistors).\nPlace close to source.\nResistance Rt determined \nfrom layout/testing.\nTotal series ressitance, \nincluding trace resistance,\nof spi line should = about 50 ohms
Text GLabel 7025 2300 2    50   Input ~ 0
mtr0_inA0
Text GLabel 7025 2400 2    50   Input ~ 0
mtr0_inA1
Text GLabel 8425 1500 2    50   Input ~ 0
mtr1_inA0
Text GLabel 8425 1600 2    50   Input ~ 0
mtr1_inA1
Text GLabel 7025 1700 2    50   Input ~ 0
adc0_cnvst
Text GLabel 1625 1700 2    50   Input ~ 0
adc0_eoc
Text GLabel 7025 1800 2    50   Input ~ 0
adc1_eoc
Text GLabel 4575 1500 2    50   Input ~ 0
adc1_cnvst
Text GLabel 4575 1600 2    50   Input ~ 0
adc2_cs
$Comp
L pressurization_series1-rescue:TestPoint-Connector TP1
U 1 1 5EBBD651
P 4425 3875
F 0 "TP1" V 4620 3947 50  0000 C CNN
F 1 "TestPoint" V 4529 3947 50  0000 C CNN
F 2 "libs:TestPoint-EC3" H 4625 3875 50  0001 C CNN
F 3 "~" H 4625 3875 50  0001 C CNN
	1    4425 3875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4425 3875 4500 3875
$Comp
L pressurization_series1-rescue:TestPoint-Connector TP2
U 1 1 5EBC8ECC
P 4425 4150
F 0 "TP2" V 4620 4222 50  0000 C CNN
F 1 "TestPoint" V 4529 4222 50  0000 C CNN
F 2 "libs:TestPoint-EC3" H 4625 4150 50  0001 C CNN
F 3 "~" H 4625 4150 50  0001 C CNN
	1    4425 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4425 4150 4500 4150
$Comp
L pressurization_series1-rescue:TestPoint-Connector TP3
U 1 1 5EBD379C
P 4425 4425
F 0 "TP3" V 4620 4497 50  0000 C CNN
F 1 "TestPoint" V 4529 4497 50  0000 C CNN
F 2 "libs:TestPoint-EC3" H 4625 4425 50  0001 C CNN
F 3 "~" H 4625 4425 50  0001 C CNN
	1    4425 4425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4425 4425 4500 4425
$Comp
L pressurization_series1-rescue:TestPoint-Connector TP4
U 1 1 5EBDE50E
P 5525 3875
F 0 "TP4" V 5720 3947 50  0000 C CNN
F 1 "TestPoint" V 5629 3947 50  0000 C CNN
F 2 "libs:TestPoint-EC3" H 5725 3875 50  0001 C CNN
F 3 "~" H 5725 3875 50  0001 C CNN
	1    5525 3875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5525 3875 5600 3875
$Comp
L pressurization_series1-rescue:TestPoint-Connector TP5
U 1 1 5EBE929D
P 5525 4150
F 0 "TP5" V 5720 4222 50  0000 C CNN
F 1 "TestPoint" V 5629 4222 50  0000 C CNN
F 2 "libs:TestPoint-EC3" H 5725 4150 50  0001 C CNN
F 3 "~" H 5725 4150 50  0001 C CNN
	1    5525 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5525 4150 5600 4150
$Comp
L pressurization_series1-rescue:TestPoint-Connector TP6
U 1 1 5EBF4380
P 5525 4425
F 0 "TP6" V 5720 4497 50  0000 C CNN
F 1 "TestPoint" V 5629 4497 50  0000 C CNN
F 2 "libs:TestPoint-EC3" H 5725 4425 50  0001 C CNN
F 3 "~" H 5725 4425 50  0001 C CNN
	1    5525 4425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5525 4425 5600 4425
Text GLabel 9925 1800 2    50   Input ~ 0
en_vlv5
Text GLabel 9925 1700 2    50   Input ~ 0
en_vlv6
Text GLabel 9925 1600 2    50   Input ~ 0
en_vlv7
Text GLabel 7025 2600 2    50   Input ~ 0
en_vlv3
Text GLabel 7025 2700 2    50   Input ~ 0
en_vlv2
Text GLabel 7025 2800 2    50   Input ~ 0
en_vlv1
Text GLabel 9925 1400 2    50   Input ~ 0
en_vlv0
$Comp
L pressurization_series1-rescue:GND-power #PWR?
U 1 1 5ED9A5C1
P 6500 7300
AR Path="/5E49E7E9/5ED9A5C1" Ref="#PWR?"  Part="1" 
AR Path="/5E49E9B7/5ED9A5C1" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 6500 7050 50  0001 C CNN
F 1 "GND" H 6505 7127 50  0000 C CNN
F 2 "" H 6500 7300 50  0001 C CNN
F 3 "" H 6500 7300 50  0001 C CNN
	1    6500 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 7225 6500 7300
Connection ~ 6500 7225
Wire Wire Line
	6500 6825 6500 7225
Connection ~ 6500 6825
$Comp
L pressurization_series1-rescue:LED-Device D?
U 1 1 5ED9A5B7
P 6150 6825
AR Path="/5E49E7E9/5ED9A5B7" Ref="D?"  Part="1" 
AR Path="/5E49E9B7/5ED9A5B7" Ref="D3"  Part="1" 
F 0 "D3" H 6150 6700 50  0000 C CNN
F 1 "LED" H 6150 6950 50  0000 C CNN
F 2 "KiCad:LED_0603_1608Metric" H 6150 6825 50  0001 C CNN
F 3 "~" H 6150 6825 50  0001 C CNN
	1    6150 6825
	-1   0    0    1   
$EndComp
$Comp
L pressurization_series1-rescue:R-Device R?
U 1 1 5ED9A5B1
P 5850 7225
AR Path="/5E49E7E9/5ED9A5B1" Ref="R?"  Part="1" 
AR Path="/5E49E9B7/5ED9A5B1" Ref="R20"  Part="1" 
F 0 "R20" V 5750 7225 50  0000 C CNN
F 1 "220" V 5850 7225 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 5780 7225 50  0001 C CNN
F 3 "~" H 5850 7225 50  0001 C CNN
	1    5850 7225
	0    1    1    0   
$EndComp
$Comp
L pressurization_series1-rescue:R-Device R?
U 1 1 5ED9A5AB
P 5850 6825
AR Path="/5E49E7E9/5ED9A5AB" Ref="R?"  Part="1" 
AR Path="/5E49E9B7/5ED9A5AB" Ref="R19"  Part="1" 
F 0 "R19" V 5750 6825 50  0000 C CNN
F 1 "220" V 5850 6825 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 5780 6825 50  0001 C CNN
F 3 "~" H 5850 6825 50  0001 C CNN
	1    5850 6825
	0    1    1    0   
$EndComp
Text GLabel 5500 7225 0    50   Input ~ 0
LED3
Text GLabel 5500 6825 0    50   Input ~ 0
LED2
Wire Wire Line
	5500 7225 5700 7225
Wire Wire Line
	5500 6825 5700 6825
Wire Wire Line
	6300 7225 6500 7225
Wire Wire Line
	6300 6825 6500 6825
$Comp
L pressurization_series1-rescue:LED-Device D?
U 1 1 5ED9A59F
P 6150 7225
AR Path="/5E49E7E9/5ED9A59F" Ref="D?"  Part="1" 
AR Path="/5E49E9B7/5ED9A59F" Ref="D4"  Part="1" 
F 0 "D4" H 6150 7100 50  0000 C CNN
F 1 "LED" H 6150 7350 50  0000 C CNN
F 2 "KiCad:LED_0603_1608Metric" H 6150 7225 50  0001 C CNN
F 3 "~" H 6150 7225 50  0001 C CNN
	1    6150 7225
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 6450 6500 6825
$Comp
L pressurization_series1-rescue:LED-Device D?
U 1 1 5ED9A598
P 6150 6050
AR Path="/5E49E7E9/5ED9A598" Ref="D?"  Part="1" 
AR Path="/5E49E9B7/5ED9A598" Ref="D1"  Part="1" 
F 0 "D1" H 6150 5925 50  0000 C CNN
F 1 "LED" H 6150 6175 50  0000 C CNN
F 2 "KiCad:LED_0603_1608Metric" H 6150 6050 50  0001 C CNN
F 3 "~" H 6150 6050 50  0001 C CNN
	1    6150 6050
	-1   0    0    1   
$EndComp
$Comp
L pressurization_series1-rescue:R-Device R?
U 1 1 5ED9A592
P 5850 6450
AR Path="/5E49E7E9/5ED9A592" Ref="R?"  Part="1" 
AR Path="/5E49E9B7/5ED9A592" Ref="R18"  Part="1" 
F 0 "R18" V 5750 6450 50  0000 C CNN
F 1 "220" V 5850 6450 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 5780 6450 50  0001 C CNN
F 3 "~" H 5850 6450 50  0001 C CNN
	1    5850 6450
	0    1    1    0   
$EndComp
$Comp
L pressurization_series1-rescue:R-Device R?
U 1 1 5ED9A58C
P 5850 6050
AR Path="/5E49E7E9/5ED9A58C" Ref="R?"  Part="1" 
AR Path="/5E49E9B7/5ED9A58C" Ref="R17"  Part="1" 
F 0 "R17" V 5750 6050 50  0000 C CNN
F 1 "220" V 5850 6050 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 5780 6050 50  0001 C CNN
F 3 "~" H 5850 6050 50  0001 C CNN
	1    5850 6050
	0    1    1    0   
$EndComp
Text GLabel 5500 6450 0    50   Input ~ 0
LED1
Text GLabel 5500 6050 0    50   Input ~ 0
LED0
Connection ~ 6500 6450
Wire Wire Line
	5500 6450 5700 6450
Wire Wire Line
	5500 6050 5700 6050
Wire Wire Line
	6500 6050 6500 6450
Wire Wire Line
	6300 6450 6500 6450
Wire Wire Line
	6300 6050 6500 6050
$Comp
L pressurization_series1-rescue:LED-Device D?
U 1 1 5ED9A57C
P 6150 6450
AR Path="/5E49E7E9/5ED9A57C" Ref="D?"  Part="1" 
AR Path="/5E49E9B7/5ED9A57C" Ref="D2"  Part="1" 
F 0 "D2" H 6150 6325 50  0000 C CNN
F 1 "LED" H 6150 6575 50  0000 C CNN
F 2 "KiCad:LED_0603_1608Metric" H 6150 6450 50  0001 C CNN
F 3 "~" H 6150 6450 50  0001 C CNN
	1    6150 6450
	-1   0    0    1   
$EndComp
Text Notes 1050 6525 0    50   ~ 0
100n capacitor should \nbe placed as close \nto the oscillator \nas possible to \nreduce interferences.
Text GLabel 8425 1300 2    50   Input ~ 0
mtr3_in1
Text GLabel 9925 2000 2    50   Input ~ 0
adc2_eoc
Text GLabel 9925 2100 2    50   Input ~ 0
adc2_cnvst
Text GLabel 10725 2500 2    50   Input ~ 0
SPI4_SCK
Text GLabel 9925 2600 2    50   Input ~ 0
SPI4_MISO
$Comp
L pressurization_series1-rescue:R-Device R22
U 1 1 5EC0D408
P 10500 2500
F 0 "R22" V 10425 2500 50  0000 C CNN
F 1 "Rt" V 10500 2500 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 10430 2500 50  0001 C CNN
F 3 "~" H 10500 2500 50  0001 C CNN
	1    10500 2500
	0    1    1    0   
$EndComp
Text GLabel 6575 3875 2    50   Input ~ 0
SPI4_SCK
Text GLabel 6575 4150 2    50   Input ~ 0
SPI4_MISO
$Comp
L pressurization_series1-rescue:TestPoint-Connector TP7
U 1 1 5EC22CA2
P 6500 3875
F 0 "TP7" V 6695 3947 50  0000 C CNN
F 1 "TestPoint" V 6604 3947 50  0000 C CNN
F 2 "libs:TestPoint-EC3" H 6700 3875 50  0001 C CNN
F 3 "~" H 6700 3875 50  0001 C CNN
	1    6500 3875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 3875 6575 3875
$Comp
L pressurization_series1-rescue:TestPoint-Connector TP8
U 1 1 5EC22CA9
P 6500 4150
F 0 "TP8" V 6695 4222 50  0000 C CNN
F 1 "TestPoint" V 6604 4222 50  0000 C CNN
F 2 "libs:TestPoint-EC3" H 6700 4150 50  0001 C CNN
F 3 "~" H 6700 4150 50  0001 C CNN
	1    6500 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 4150 6575 4150
Text Notes 4300 4875 0    50   ~ 0
SPI3 is not used due to micro pin conflicts\n
Text GLabel 9925 2200 2    50   Input ~ 0
tc0_cs
Text GLabel 9925 2300 2    50   Input ~ 0
tc1_cs
Text GLabel 9925 2400 2    50   Input ~ 0
tc2_cs
Text GLabel 9925 2800 2    50   Input ~ 0
tc3_cs
Text GLabel 4575 2400 2    50   Input ~ 0
tc4_cs
Text GLabel 8425 1700 2    50   Input ~ 0
mtr1_inB0
Text GLabel 8425 2000 2    50   Input ~ 0
mtr1_inB1
Text GLabel 9925 1300 2    50   Input ~ 0
GPIO_1
Text GLabel 1625 2500 2    50   Input ~ 0
GPIO_2
Text Notes 6275 4925 0    50   ~ 0
Because SPI4 runs in \nhalf duplex slave mode,\nSPI4_MOSI is not needed.\nIt is pinned out for debugging \nwithout a termination resistor.\n
Wire Wire Line
	5275 2600 5325 2600
Wire Wire Line
	9275 4175 9600 4175
Connection ~ 9275 4175
Connection ~ 9600 4175
Text Notes 550  5575 0    123  ~ 25
Oscillator & Micro Power\n\n
Text Notes 7650 3500 0    123  ~ 25
Reset Button
Text Notes 3825 3500 0    123  ~ 25
SPI Test Points\n
Text Notes 9375 5725 0    50   ~ 0
Capacitors should be placed \nas close to the microcontroller \nas possible to reduce interferences
Text Notes 7025 5350 0    123  ~ 25
Capacitors\n
Text Notes 4950 5375 0    123  ~ 25
Micro LEDs\n
Text GLabel 1625 1500 2    50   Input ~ 0
e_digSens1C
Text GLabel 1625 1400 2    50   Input ~ 0
e_digSens1B
Text GLabel 1625 1300 2    50   Input ~ 0
e_digSens1A
Wire Wire Line
	1550 1300 1625 1300
Wire Wire Line
	1625 1400 1550 1400
Wire Wire Line
	1550 1500 1625 1500
Wire Wire Line
	1625 1600 1550 1600
Wire Wire Line
	1625 1700 1550 1700
Wire Wire Line
	1625 1900 1550 1900
Wire Wire Line
	1550 2300 1625 2300
Wire Wire Line
	1550 2200 1625 2200
Wire Wire Line
	1550 2100 1625 2100
Wire Wire Line
	1550 2400 1625 2400
Wire Wire Line
	1625 2500 1550 2500
Wire Wire Line
	1550 2600 1625 2600
Wire Wire Line
	1625 2700 1550 2700
Wire Wire Line
	1625 2800 1550 2800
$Comp
L pressurization_series1:STM32F446VET6 U1
U 1 1 5EC19A73
P 1550 1300
F 0 "U1" H 1158 1563 49  0000 C CNN
F 1 "STM32F446VET6" H 1158 1473 49  0000 C CNN
F 2 "libs:STM32F446VET6" H 700 350 49  0001 C CNN
F 3 "" H 700 350 49  0001 C CNN
	1    1550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1300 8425 1300
Wire Wire Line
	8425 1400 8350 1400
Wire Wire Line
	8350 1500 8425 1500
Wire Wire Line
	8425 1600 8350 1600
Wire Wire Line
	8425 1800 8350 1800
Wire Wire Line
	8425 1700 8350 1700
Wire Wire Line
	8425 1900 8350 1900
Wire Wire Line
	8425 2000 8350 2000
Wire Wire Line
	8350 2300 8425 2300
Wire Wire Line
	8350 2200 8425 2200
Wire Wire Line
	8350 2100 8425 2100
Wire Wire Line
	8350 2400 8425 2400
Wire Wire Line
	8425 2500 8350 2500
Wire Wire Line
	6950 1800 7025 1800
Wire Wire Line
	4575 1500 4500 1500
Wire Wire Line
	4500 1600 4575 1600
Wire Wire Line
	4575 1700 4500 1700
Wire Wire Line
	4575 1900 4500 1900
Wire Wire Line
	4575 1800 4500 1800
Wire Wire Line
	4575 2000 4500 2000
Wire Wire Line
	4575 2100 4500 2100
Wire Wire Line
	4500 2300 4575 2300
Wire Wire Line
	4500 2200 4575 2200
Wire Wire Line
	4500 2500 4575 2500
Wire Wire Line
	4500 2700 4575 2700
Wire Wire Line
	9850 1300 9925 1300
Wire Wire Line
	9925 1400 9850 1400
Wire Wire Line
	6950 2800 7025 2800
Wire Wire Line
	7025 2700 6950 2700
Wire Wire Line
	7025 2600 6950 2600
Wire Wire Line
	9925 1800 9850 1800
Wire Wire Line
	9925 2000 9850 2000
Wire Wire Line
	9850 2300 9925 2300
Wire Wire Line
	9850 2200 9925 2200
Wire Wire Line
	9850 2100 9925 2100
Wire Wire Line
	9850 2600 9925 2600
Wire Wire Line
	9925 2800 9850 2800
Wire Wire Line
	4575 2400 4500 2400
Wire Wire Line
	6950 1300 7025 1300
Wire Wire Line
	7025 1400 6950 1400
Wire Wire Line
	6950 1500 7025 1500
Wire Wire Line
	7025 1600 6950 1600
Wire Wire Line
	4575 1400 4500 1400
Wire Wire Line
	7025 1700 6950 1700
Wire Wire Line
	7025 1900 6950 1900
Wire Wire Line
	7025 2000 6950 2000
Wire Wire Line
	6950 2300 7025 2300
Wire Wire Line
	6950 2200 7025 2200
Wire Wire Line
	6950 2100 7025 2100
Wire Wire Line
	6950 2400 7025 2400
Wire Wire Line
	7025 2500 6950 2500
Wire Wire Line
	9850 1700 9925 1700
Wire Wire Line
	9925 1600 9850 1600
Wire Wire Line
	2025 1800 1550 1800
Wire Wire Line
	2325 1800 2375 1800
$Comp
L pressurization_series1-rescue:R-Device R14
U 1 1 5EF1B704
P 2175 2000
F 0 "R14" V 2100 2000 50  0000 C CNN
F 1 "Rt" V 2175 2000 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 2105 2000 50  0001 C CNN
F 3 "~" H 2175 2000 50  0001 C CNN
	1    2175 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2025 2000 1550 2000
Wire Wire Line
	2325 2000 2375 2000
Wire Wire Line
	4975 2600 4500 2600
Wire Wire Line
	4500 2800 4975 2800
Wire Wire Line
	10725 2500 10650 2500
Text GLabel 8425 2400 2    50   Input ~ 0
mtr2_in2
Wire Wire Line
	9925 1500 9850 1500
$Comp
L pressurization_series1-rescue:GND-power #PWR?
U 1 1 5F523100
P 2675 7325
AR Path="/5E49E9B7/5F4EFB51/5F523100" Ref="#PWR?"  Part="1" 
AR Path="/5E49E9B7/5F523100" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 2675 7075 50  0001 C CNN
F 1 "GND" H 2675 7175 50  0000 C CNN
F 2 "" H 2675 7325 50  0001 C CNN
F 3 "" H 2675 7325 50  0001 C CNN
	1    2675 7325
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR?
U 1 1 5F523106
P 2150 5800
AR Path="/5E49E9B7/5F4EFB51/5F523106" Ref="#PWR?"  Part="1" 
AR Path="/5E49E9B7/5F523106" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 2150 5650 50  0001 C CNN
F 1 "+3.3V" H 2150 5940 50  0000 C CNN
F 2 "" H 2150 5800 50  0001 C CNN
F 3 "" H 2150 5800 50  0001 C CNN
	1    2150 5800
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:GND-power #PWR?
U 1 1 5F52310C
P 1975 6300
AR Path="/5E49E9B7/5F4EFB51/5F52310C" Ref="#PWR?"  Part="1" 
AR Path="/5E49E9B7/5F52310C" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 1975 6050 50  0001 C CNN
F 1 "GND" H 1975 6150 50  0000 C CNN
F 2 "" H 1975 6300 50  0001 C CNN
F 3 "" H 1975 6300 50  0001 C CNN
	1    1975 6300
	1    0    0    -1  
$EndComp
Text GLabel 2675 6275 0    49   Input ~ 0
NRST
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR?
U 1 1 5F523113
P 4100 5775
AR Path="/5E49E9B7/5F4EFB51/5F523113" Ref="#PWR?"  Part="1" 
AR Path="/5E49E9B7/5F523113" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 4100 5625 50  0001 C CNN
F 1 "+3.3V" H 4100 5915 50  0000 C CNN
F 2 "" H 4100 5775 50  0001 C CNN
F 3 "" H 4100 5775 50  0001 C CNN
	1    4100 5775
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1:OSCILLATOR U?
U 1 1 5F523119
P 1850 7025
AR Path="/5E49E9B7/5F4EFB51/5F523119" Ref="U?"  Part="1" 
AR Path="/5E49E9B7/5F523119" Ref="U2"  Part="1" 
F 0 "U2" H 1850 7275 118 0000 C CNN
F 1 "DSC6001CI2A-016.0000T" H 1900 6775 39  0000 C CNN
F 2 "KiCad:Oscillator_SMD_EuroQuartz_XO32-4Pin_3.2x2.5mm" H 1850 7025 118 0001 C CNN
F 3 "" H 1850 7025 118 0001 C CNN
	1    1850 7025
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR?
U 1 1 5F52311F
P 1375 6900
AR Path="/5E49E9B7/5F4EFB51/5F52311F" Ref="#PWR?"  Part="1" 
AR Path="/5E49E9B7/5F52311F" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 1375 6750 50  0001 C CNN
F 1 "+3.3V" H 1375 7040 50  0000 C CNN
F 2 "" H 1375 6900 50  0001 C CNN
F 3 "" H 1375 6900 50  0001 C CNN
	1    1375 6900
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP?
U 1 1 5F523125
P 1050 6950
AR Path="/5E49E9B7/5F4EFB51/5F523125" Ref="JP?"  Part="1" 
AR Path="/5E49E9B7/5F523125" Ref="JP13"  Part="1" 
F 0 "JP13" H 1050 7100 50  0000 C CNN
F 1 "Jumper" H 1050 6870 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" H 1050 6950 50  0001 C CNN
F 3 "" H 1050 6950 50  0001 C CNN
	1    1050 6950
	0    1    1    0   
$EndComp
$Comp
L pressurization_series1-rescue:GND-power #PWR?
U 1 1 5F52312B
P 1050 7325
AR Path="/5E49E9B7/5F4EFB51/5F52312B" Ref="#PWR?"  Part="1" 
AR Path="/5E49E9B7/5F52312B" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 1050 7075 50  0001 C CNN
F 1 "GND" H 1050 7175 50  0000 C CNN
F 2 "" H 1050 7325 50  0001 C CNN
F 3 "" H 1050 7325 50  0001 C CNN
	1    1050 7325
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C?
U 1 1 5F523137
P 4100 7050
AR Path="/5E49E9B7/5F4EFB51/5F523137" Ref="C?"  Part="1" 
AR Path="/5E49E9B7/5F523137" Ref="C8"  Part="1" 
F 0 "C8" H 4125 7150 50  0000 L CNN
F 1 "2u2" H 4125 6950 50  0000 L CNN
F 2 "KiCad:C_0805_2012Metric" H 4138 6900 50  0001 C CNN
F 3 "" H 4100 7050 50  0001 C CNN
	1    4100 7050
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:GND-power #PWR?
U 1 1 5F52313D
P 4400 7275
AR Path="/5E49E9B7/5F4EFB51/5F52313D" Ref="#PWR?"  Part="1" 
AR Path="/5E49E9B7/5F52313D" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 4400 7025 50  0001 C CNN
F 1 "GND" H 4400 7125 50  0000 C CNN
F 2 "" H 4400 7275 50  0001 C CNN
F 3 "" H 4400 7275 50  0001 C CNN
	1    4400 7275
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C?
U 1 1 5F523143
P 2475 6875
AR Path="/5E49E9B7/5F4EFB51/5F523143" Ref="C?"  Part="1" 
AR Path="/5E49E9B7/5F523143" Ref="C7"  Part="1" 
F 0 "C7" H 2500 6975 50  0000 L CNN
F 1 "100n" H 2500 6775 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 2513 6725 50  0001 C CNN
F 3 "" H 2475 6875 50  0001 C CNN
	1    2475 6875
	-1   0    0    1   
$EndComp
Text Label 2425 6475 0    60   ~ 0
uC_clk
Wire Wire Line
	2250 6975 2250 6475
Wire Wire Line
	2250 6475 2750 6475
Wire Wire Line
	2250 7075 2475 7075
Wire Wire Line
	2500 7075 2500 7250
Wire Wire Line
	2500 7250 2675 7250
Wire Wire Line
	1375 7075 1450 7075
Wire Wire Line
	1375 6900 1375 6975
Wire Wire Line
	1375 6975 1450 6975
Connection ~ 1375 6975
Wire Wire Line
	2750 6375 2125 6375
Wire Wire Line
	2125 6375 2125 6650
Wire Wire Line
	2125 6650 1050 6650
Wire Wire Line
	1050 7250 1050 7325
Wire Wire Line
	4000 6825 4100 6825
Wire Wire Line
	4100 6825 4100 6900
Wire Wire Line
	2475 7025 2475 7075
Connection ~ 2475 7075
Wire Wire Line
	2475 6725 2325 6725
Wire Wire Line
	2325 6725 2325 6025
Connection ~ 2325 6025
Wire Wire Line
	2150 5800 2150 6025
Wire Wire Line
	2150 6025 2325 6025
Wire Wire Line
	1975 6300 1975 6175
Wire Wire Line
	1975 6175 2750 6175
Wire Wire Line
	2675 7250 2675 7325
Wire Wire Line
	1375 6975 1375 7075
Wire Wire Line
	2475 7075 2500 7075
Wire Wire Line
	2325 6025 2750 6025
NoConn ~ 2750 5925
Wire Wire Line
	4100 5775 4100 5925
$Comp
L pressurization_series1:STM32F446VET6 U?
U 6 1 5F523173
P 3400 6375
AR Path="/5E49E9B7/5F4EFB51/5F523173" Ref="U?"  Part="6" 
AR Path="/5E49E9B7/5F523173" Ref="U1"  Part="6" 
F 0 "U1" H 3375 7088 49  0000 C CNN
F 1 "STM32F446VET6" H 3375 6998 49  0000 C CNN
F 2 "libs:STM32F446VET6" H 2550 5425 49  0001 C CNN
F 3 "" H 2550 5425 49  0001 C CNN
	6    3400 6375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7175 2675 7175
Wire Wire Line
	2675 7175 2675 7250
Connection ~ 2675 7250
Wire Wire Line
	2750 7075 2675 7075
Wire Wire Line
	2675 7075 2675 7175
Connection ~ 2675 7175
Wire Wire Line
	2750 6975 2675 6975
Wire Wire Line
	2675 6975 2675 7075
Connection ~ 2675 7075
Wire Wire Line
	2750 6875 2675 6875
Wire Wire Line
	2675 6875 2675 6975
Connection ~ 2675 6975
Wire Wire Line
	2750 6775 2675 6775
Wire Wire Line
	2675 6775 2675 6875
Connection ~ 2675 6875
Wire Wire Line
	2750 6625 2675 6625
Wire Wire Line
	2675 6625 2675 6775
Connection ~ 2675 6775
Wire Wire Line
	4000 5925 4100 5925
Wire Wire Line
	4000 6025 4100 6025
Wire Wire Line
	4100 6025 4100 5925
Connection ~ 4100 5925
Wire Wire Line
	4000 6125 4100 6125
Connection ~ 4100 6025
Wire Wire Line
	4000 6225 4100 6225
Wire Wire Line
	4100 6025 4100 6125
Connection ~ 4100 6125
Wire Wire Line
	4100 6125 4100 6225
Wire Wire Line
	4000 6325 4100 6325
Wire Wire Line
	4100 6325 4100 6225
Connection ~ 4100 6225
Wire Wire Line
	4000 6425 4100 6425
Wire Wire Line
	4100 6425 4100 6325
Connection ~ 4100 6325
Wire Wire Line
	4000 6575 4100 6575
Wire Wire Line
	4100 6575 4100 6425
Connection ~ 4100 6425
$Comp
L pressurization_series1-rescue:C-Device C?
U 1 1 5F754D96
P 4400 7050
AR Path="/5E49E9B7/5F4EFB51/5F754D96" Ref="C?"  Part="1" 
AR Path="/5E49E9B7/5F754D96" Ref="C9"  Part="1" 
F 0 "C9" H 4425 7150 50  0000 L CNN
F 1 "2u2" H 4425 6950 50  0000 L CNN
F 2 "KiCad:C_0805_2012Metric" H 4438 6900 50  0001 C CNN
F 3 "" H 4400 7050 50  0001 C CNN
	1    4400 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6725 4400 6900
Wire Wire Line
	4000 6725 4400 6725
Wire Wire Line
	4400 7200 4400 7275
Wire Wire Line
	4100 7200 4100 7275
$Comp
L pressurization_series1-rescue:GND-power #PWR?
U 1 1 5F7EC3E6
P 4100 7275
AR Path="/5E49E9B7/5F4EFB51/5F7EC3E6" Ref="#PWR?"  Part="1" 
AR Path="/5E49E9B7/5F7EC3E6" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 4100 7025 50  0001 C CNN
F 1 "GND" H 4100 7125 50  0000 C CNN
F 2 "" H 4100 7275 50  0001 C CNN
F 3 "" H 4100 7275 50  0001 C CNN
	1    4100 7275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6275 2675 6275
Wire Wire Line
	9850 2500 10350 2500
Wire Notes Line
	475  5100 11200 5100
Wire Notes Line
	4900 7800 4900 5100
Wire Notes Line
	6975 6525 6975 5100
Text Notes 575  800  0    157  ~ 31
Microcontroller\n
Wire Notes Line
	3750 5100 3750 3250
Wire Notes Line
	475  3250 11225 3250
Wire Notes Line
	7600 5075 7600 3250
Wire Wire Line
	8350 2600 8425 2600
Wire Wire Line
	9850 2400 9925 2400
Text GLabel 8425 2700 2    50   Input ~ 0
e_digSens0C
Wire Wire Line
	8350 2700 8425 2700
Text Notes 625  875  0    50   ~ 0
Broken into blocks for readability
$Comp
L pressurization_series1:STM32F446VET6 U?
U 2 1 5EB95E5F
P 4500 1400
AR Path="/5EB95E5F" Ref="U?"  Part="2" 
AR Path="/5E49E9B7/5EB95E5F" Ref="U1"  Part="2" 
F 0 "U1" H 4133 1663 49  0000 C CNN
F 1 "STM32F446VET6" H 4133 1573 49  0000 C CNN
F 2 "libs:STM32F446VET6" H 3650 450 49  0001 C CNN
F 3 "" H 3650 450 49  0001 C CNN
	2    4500 1400
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1:STM32F446VET6 U?
U 3 1 5EBDCFE4
P 6950 1300
AR Path="/5EBDCFE4" Ref="U?"  Part="3" 
AR Path="/5E49E9B7/5EBDCFE4" Ref="U1"  Part="3" 
F 0 "U1" H 6483 1563 49  0000 C CNN
F 1 "STM32F446VET6" H 6483 1473 49  0000 C CNN
F 2 "libs:STM32F446VET6" H 6100 350 49  0001 C CNN
F 3 "" H 6100 350 49  0001 C CNN
	3    6950 1300
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1:STM32F446VET6 U?
U 4 1 5EBF2366
P 8350 1300
AR Path="/5EBF2366" Ref="U?"  Part="4" 
AR Path="/5E49E9B7/5EBF2366" Ref="U1"  Part="4" 
F 0 "U1" H 8058 1563 49  0000 C CNN
F 1 "STM32F446VET6" H 8058 1473 49  0000 C CNN
F 2 "libs:STM32F446VET6" H 7500 350 49  0001 C CNN
F 3 "" H 7500 350 49  0001 C CNN
	4    8350 1300
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1:STM32F446VET6 U?
U 5 1 5EC0704C
P 9850 1300
AR Path="/5EC0704C" Ref="U?"  Part="5" 
AR Path="/5E49E9B7/5EC0704C" Ref="U1"  Part="5" 
F 0 "U1" H 9558 1563 49  0000 C CNN
F 1 "STM32F446VET6" H 9558 1473 49  0000 C CNN
F 2 "libs:STM32F446VET6" H 9000 350 49  0001 C CNN
F 3 "" H 9000 350 49  0001 C CNN
	5    9850 1300
	1    0    0    -1  
$EndComp
Text Notes 550  3750 0    118  ~ 24
J Link
Text GLabel 9925 2700 2    50   Input ~ 0
SPI4_MOSI
Wire Wire Line
	9850 2700 9925 2700
Text GLabel 6575 4425 2    50   Input ~ 0
SPI4_MOSI
$Comp
L pressurization_series1-rescue:TestPoint-Connector TP49
U 1 1 5EE7B16B
P 6500 4425
F 0 "TP49" V 6695 4497 50  0000 C CNN
F 1 "TestPoint" V 6604 4497 50  0000 C CNN
F 2 "libs:TestPoint-EC3" H 6700 4425 50  0001 C CNN
F 3 "~" H 6700 4425 50  0001 C CNN
	1    6500 4425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 4425 6575 4425
Wire Wire Line
	9925 1900 9850 1900
Text GLabel 9925 1900 2    50   Input ~ 0
en_vlv4
NoConn ~ 8350 2800
Text GLabel 1625 2800 2    50   Input ~ 0
GPIO_0
Text GLabel 4575 1800 2    50   Input ~ 0
mtr1_pwmA
Text GLabel 4575 1900 2    50   Input ~ 0
mtr1_pwmB
Text GLabel 4575 2200 2    50   Input ~ 0
mtr0_pwmA
Text GLabel 4575 2300 2    50   Input ~ 0
mtr0_pwmB
$EndSCHEMATC
