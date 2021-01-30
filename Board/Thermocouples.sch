EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 19 25
Title "Pressurization Board Series 1"
Date "2020-08-17"
Rev "Rev A"
Comp "Michigan Aeronautical Science Association (MASA)"
Comment1 "Josh Azrin & Arthur Zhang"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2675 2750 2750 2750
Text GLabel 2750 2750 2    50   Input ~ 0
tc0_cs
Text GLabel 3125 2550 2    50   Input ~ 0
SPI4_MISO
$Comp
L pressurization_series1-rescue:R-Device R?
U 1 1 5ECBD3FC
P 2900 2550
AR Path="/5E49E9B7/5ECBD3FC" Ref="R?"  Part="1" 
AR Path="/5E63996E/5ECBD3FC" Ref="R?"  Part="1" 
AR Path="/5ECADAF7/5ECBD3FC" Ref="R153"  Part="1" 
F 0 "R153" V 2975 2550 50  0000 C CNN
F 1 "Rt" V 2900 2550 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 2830 2550 50  0001 C CNN
F 3 "~" H 2900 2550 50  0001 C CNN
	1    2900 2550
	0    1    1    0   
$EndComp
Text GLabel 2750 2450 2    50   Input ~ 0
SPI4_SCK
Wire Wire Line
	3050 2550 3125 2550
Text Notes 2950 2675 0    50   ~ 0
Termination resistor
$Comp
L pressurization_series1-rescue:MAX31855KASA-Sensor_Temperature U32
U 1 1 5EB63D29
P 2275 2650
F 0 "U32" H 1900 3100 50  0000 C CNN
F 1 "MAX31855KASA" H 1875 3025 50  0000 C CNN
F 2 "KiCad:SOIC-8_3.9x4.9mm_P1.27mm" H 3275 2300 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 2275 2650 50  0001 C CNN
	1    2275 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 2550 1800 2550
Wire Wire Line
	1875 2750 1800 2750
Text GLabel 1800 2550 0    50   Input ~ 0
tc0+
Text GLabel 1800 2750 0    50   Input ~ 0
tc0-
Wire Wire Line
	2750 2450 2675 2450
Wire Wire Line
	2750 2550 2675 2550
Wire Wire Line
	2275 3050 2275 3125
$Comp
L pressurization_series1-rescue:GND-power #PWR0282
U 1 1 5F17FD54
P 2275 3125
F 0 "#PWR0282" H 2275 2875 50  0001 C CNN
F 1 "GND" H 2280 2952 50  0000 C CNN
F 2 "" H 2275 3125 50  0001 C CNN
F 3 "" H 2275 3125 50  0001 C CNN
	1    2275 3125
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR0281
U 1 1 5F1805DC
P 2275 1525
F 0 "#PWR0281" H 2275 1375 50  0001 C CNN
F 1 "+3.3V" H 2290 1698 50  0000 C CNN
F 2 "" H 2275 1525 50  0001 C CNN
F 3 "" H 2275 1525 50  0001 C CNN
	1    2275 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5750 5725 5750
Text GLabel 5725 5750 2    50   Input ~ 0
tc3_cs
Text GLabel 6100 5550 2    50   Input ~ 0
SPI4_MISO
$Comp
L pressurization_series1-rescue:R-Device R?
U 1 1 5F18D271
P 5875 5550
AR Path="/5E49E9B7/5F18D271" Ref="R?"  Part="1" 
AR Path="/5E63996E/5F18D271" Ref="R?"  Part="1" 
AR Path="/5ECADAF7/5F18D271" Ref="R155"  Part="1" 
F 0 "R155" V 5950 5550 50  0000 C CNN
F 1 "Rt" V 5875 5550 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 5805 5550 50  0001 C CNN
F 3 "~" H 5875 5550 50  0001 C CNN
	1    5875 5550
	0    1    1    0   
$EndComp
Text GLabel 5725 5450 2    50   Input ~ 0
SPI4_SCK
Wire Wire Line
	6025 5550 6100 5550
Text Notes 5925 5675 0    50   ~ 0
Termination resistor
$Comp
L pressurization_series1-rescue:MAX31855KASA-Sensor_Temperature U34
U 1 1 5F18D27A
P 5250 5650
F 0 "U34" H 4875 6100 50  0000 C CNN
F 1 "MAX31855KASA" H 4850 6025 50  0000 C CNN
F 2 "KiCad:SOIC-8_3.9x4.9mm_P1.27mm" H 6250 5300 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 5250 5650 50  0001 C CNN
	1    5250 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5550 4775 5550
Wire Wire Line
	4850 5750 4775 5750
Text GLabel 4775 5550 0    50   Input ~ 0
tc3+
Text GLabel 4775 5750 0    50   Input ~ 0
tc3-
Wire Wire Line
	5725 5450 5650 5450
Wire Wire Line
	5725 5550 5650 5550
Wire Wire Line
	5250 6050 5250 6125
$Comp
L pressurization_series1-rescue:GND-power #PWR0288
U 1 1 5F18D288
P 5250 6125
F 0 "#PWR0288" H 5250 5875 50  0001 C CNN
F 1 "GND" H 5255 5952 50  0000 C CNN
F 2 "" H 5250 6125 50  0001 C CNN
F 3 "" H 5250 6125 50  0001 C CNN
	1    5250 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 5750 2750 5750
Text GLabel 2750 5750 2    50   Input ~ 0
tc1_cs
Text GLabel 3125 5550 2    50   Input ~ 0
SPI4_MISO
$Comp
L pressurization_series1-rescue:R-Device R?
U 1 1 5F191C3B
P 2900 5550
AR Path="/5E49E9B7/5F191C3B" Ref="R?"  Part="1" 
AR Path="/5E63996E/5F191C3B" Ref="R?"  Part="1" 
AR Path="/5ECADAF7/5F191C3B" Ref="R154"  Part="1" 
F 0 "R154" V 2975 5550 50  0000 C CNN
F 1 "Rt" V 2900 5550 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 2830 5550 50  0001 C CNN
F 3 "~" H 2900 5550 50  0001 C CNN
	1    2900 5550
	0    1    1    0   
$EndComp
Text GLabel 2750 5450 2    50   Input ~ 0
SPI4_SCK
Wire Wire Line
	3050 5550 3125 5550
Text Notes 2950 5675 0    50   ~ 0
Termination resistor
$Comp
L pressurization_series1-rescue:MAX31855KASA-Sensor_Temperature U33
U 1 1 5F191C44
P 2275 5650
F 0 "U33" H 1900 6100 50  0000 C CNN
F 1 "MAX31855KASA" H 1875 6025 50  0000 C CNN
F 2 "KiCad:SOIC-8_3.9x4.9mm_P1.27mm" H 3275 5300 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 2275 5650 50  0001 C CNN
	1    2275 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 5550 1800 5550
Wire Wire Line
	1875 5750 1800 5750
Text GLabel 1800 5550 0    50   Input ~ 0
tc1+
Text GLabel 1800 5750 0    50   Input ~ 0
tc1-
Wire Wire Line
	2750 5450 2675 5450
Wire Wire Line
	2750 5550 2675 5550
Wire Wire Line
	2275 6050 2275 6125
$Comp
L pressurization_series1-rescue:GND-power #PWR0284
U 1 1 5F191C52
P 2275 6125
F 0 "#PWR0284" H 2275 5875 50  0001 C CNN
F 1 "GND" H 2280 5952 50  0000 C CNN
F 2 "" H 2275 6125 50  0001 C CNN
F 3 "" H 2275 6125 50  0001 C CNN
	1    2275 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2750 8725 2750
Text GLabel 8725 2750 2    50   Input ~ 0
tc4_cs
Text GLabel 9100 2550 2    50   Input ~ 0
SPI4_MISO
$Comp
L pressurization_series1-rescue:R-Device R?
U 1 1 5F193C0E
P 8875 2550
AR Path="/5E49E9B7/5F193C0E" Ref="R?"  Part="1" 
AR Path="/5E63996E/5F193C0E" Ref="R?"  Part="1" 
AR Path="/5ECADAF7/5F193C0E" Ref="R157"  Part="1" 
F 0 "R157" V 8950 2550 50  0000 C CNN
F 1 "Rt" V 8875 2550 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 8805 2550 50  0001 C CNN
F 3 "~" H 8875 2550 50  0001 C CNN
	1    8875 2550
	0    1    1    0   
$EndComp
Text GLabel 8725 2450 2    50   Input ~ 0
SPI4_SCK
Wire Wire Line
	9025 2550 9100 2550
Text Notes 8925 2675 0    50   ~ 0
Termination resistor
$Comp
L pressurization_series1-rescue:MAX31855KASA-Sensor_Temperature U36
U 1 1 5F193C17
P 8250 2650
F 0 "U36" H 7875 3100 50  0000 C CNN
F 1 "MAX31855KASA" H 7850 3025 50  0000 C CNN
F 2 "KiCad:SOIC-8_3.9x4.9mm_P1.27mm" H 9250 2300 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 8250 2650 50  0001 C CNN
	1    8250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2550 7775 2550
Wire Wire Line
	7850 2750 7775 2750
Text GLabel 7775 2550 0    50   Input ~ 0
tc4+
Text GLabel 7775 2750 0    50   Input ~ 0
tc4-
Wire Wire Line
	8725 2450 8650 2450
Wire Wire Line
	8725 2550 8650 2550
Wire Wire Line
	8250 3050 8250 3125
$Comp
L pressurization_series1-rescue:GND-power #PWR0294
U 1 1 5F193C25
P 8250 3125
F 0 "#PWR0294" H 8250 2875 50  0001 C CNN
F 1 "GND" H 8255 2952 50  0000 C CNN
F 2 "" H 8250 3125 50  0001 C CNN
F 3 "" H 8250 3125 50  0001 C CNN
	1    8250 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 2750 5750 2750
Text GLabel 5750 2750 2    50   Input ~ 0
tc2_cs
Text GLabel 6125 2550 2    50   Input ~ 0
SPI4_MISO
$Comp
L pressurization_series1-rescue:R-Device R?
U 1 1 5F19A5EF
P 5900 2550
AR Path="/5E49E9B7/5F19A5EF" Ref="R?"  Part="1" 
AR Path="/5E63996E/5F19A5EF" Ref="R?"  Part="1" 
AR Path="/5ECADAF7/5F19A5EF" Ref="R156"  Part="1" 
F 0 "R156" V 5975 2550 50  0000 C CNN
F 1 "Rt" V 5900 2550 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 5830 2550 50  0001 C CNN
F 3 "~" H 5900 2550 50  0001 C CNN
	1    5900 2550
	0    1    1    0   
$EndComp
Text GLabel 5750 2450 2    50   Input ~ 0
SPI4_SCK
Wire Wire Line
	6050 2550 6125 2550
Text Notes 5950 2675 0    50   ~ 0
Termination resistor
$Comp
L pressurization_series1-rescue:MAX31855KASA-Sensor_Temperature U35
U 1 1 5F19A5F8
P 5275 2650
F 0 "U35" H 4900 3100 50  0000 C CNN
F 1 "MAX31855KASA" H 4875 3025 50  0000 C CNN
F 2 "KiCad:SOIC-8_3.9x4.9mm_P1.27mm" H 6275 2300 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 5275 2650 50  0001 C CNN
	1    5275 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4875 2550 4800 2550
Wire Wire Line
	4875 2750 4800 2750
Text GLabel 4800 2550 0    50   Input ~ 0
tc2+
Text GLabel 4800 2750 0    50   Input ~ 0
tc2-
Wire Wire Line
	5750 2450 5675 2450
Wire Wire Line
	5750 2550 5675 2550
Wire Wire Line
	5275 3050 5275 3125
$Comp
L pressurization_series1-rescue:GND-power #PWR0290
U 1 1 5F19A606
P 5275 3125
F 0 "#PWR0290" H 5275 2875 50  0001 C CNN
F 1 "GND" H 5280 2952 50  0000 C CNN
F 2 "" H 5275 3125 50  0001 C CNN
F 3 "" H 5275 3125 50  0001 C CNN
	1    5275 3125
	1    0    0    -1  
$EndComp
Text Notes 800  825  0    123  ~ 25
Thermocouples
$Comp
L pressurization_series1-rescue:C-Device C81
U 1 1 6067EF8C
P 2700 1875
F 0 "C81" H 2815 1921 50  0000 L CNN
F 1 "100n" H 2815 1830 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 2738 1725 50  0001 C CNN
F 3 "~" H 2700 1875 50  0001 C CNN
	1    2700 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2025 2700 2100
$Comp
L pressurization_series1-rescue:GND-power #PWR0285
U 1 1 60682E5A
P 2700 2100
F 0 "#PWR0285" H 2700 1850 50  0001 C CNN
F 1 "GND" H 2705 1927 50  0000 C CNN
F 2 "" H 2700 2100 50  0001 C CNN
F 3 "" H 2700 2100 50  0001 C CNN
	1    2700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 2250 2275 1625
Wire Wire Line
	2275 1625 2700 1625
Wire Wire Line
	2700 1625 2700 1725
Connection ~ 2275 1625
Wire Wire Line
	2275 1625 2275 1525
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR0287
U 1 1 60699ADB
P 5250 4525
F 0 "#PWR0287" H 5250 4375 50  0001 C CNN
F 1 "+3.3V" H 5265 4698 50  0000 C CNN
F 2 "" H 5250 4525 50  0001 C CNN
F 3 "" H 5250 4525 50  0001 C CNN
	1    5250 4525
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C83
U 1 1 60699AE1
P 5675 4875
F 0 "C83" H 5790 4921 50  0000 L CNN
F 1 "100n" H 5790 4830 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 5713 4725 50  0001 C CNN
F 3 "~" H 5675 4875 50  0001 C CNN
	1    5675 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 5025 5675 5100
$Comp
L pressurization_series1-rescue:GND-power #PWR0291
U 1 1 60699AE8
P 5675 5100
F 0 "#PWR0291" H 5675 4850 50  0001 C CNN
F 1 "GND" H 5680 4927 50  0000 C CNN
F 2 "" H 5675 5100 50  0001 C CNN
F 3 "" H 5675 5100 50  0001 C CNN
	1    5675 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5250 5250 4625
Wire Wire Line
	5250 4625 5675 4625
Wire Wire Line
	5675 4625 5675 4725
Connection ~ 5250 4625
Wire Wire Line
	5250 4625 5250 4525
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR0293
U 1 1 6069CA00
P 8250 1525
F 0 "#PWR0293" H 8250 1375 50  0001 C CNN
F 1 "+3.3V" H 8265 1698 50  0000 C CNN
F 2 "" H 8250 1525 50  0001 C CNN
F 3 "" H 8250 1525 50  0001 C CNN
	1    8250 1525
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C85
U 1 1 6069CA06
P 8675 1875
F 0 "C85" H 8790 1921 50  0000 L CNN
F 1 "100n" H 8790 1830 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 8713 1725 50  0001 C CNN
F 3 "~" H 8675 1875 50  0001 C CNN
	1    8675 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	8675 2025 8675 2100
$Comp
L pressurization_series1-rescue:GND-power #PWR0295
U 1 1 6069CA0D
P 8675 2100
F 0 "#PWR0295" H 8675 1850 50  0001 C CNN
F 1 "GND" H 8680 1927 50  0000 C CNN
F 2 "" H 8675 2100 50  0001 C CNN
F 3 "" H 8675 2100 50  0001 C CNN
	1    8675 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2250 8250 1625
Wire Wire Line
	8250 1625 8675 1625
Wire Wire Line
	8675 1625 8675 1725
Connection ~ 8250 1625
Wire Wire Line
	8250 1625 8250 1525
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR0283
U 1 1 6069EC98
P 2275 4525
F 0 "#PWR0283" H 2275 4375 50  0001 C CNN
F 1 "+3.3V" H 2290 4698 50  0000 C CNN
F 2 "" H 2275 4525 50  0001 C CNN
F 3 "" H 2275 4525 50  0001 C CNN
	1    2275 4525
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C82
U 1 1 6069EC9E
P 2700 4875
F 0 "C82" H 2815 4921 50  0000 L CNN
F 1 "100n" H 2815 4830 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 2738 4725 50  0001 C CNN
F 3 "~" H 2700 4875 50  0001 C CNN
	1    2700 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5025 2700 5100
$Comp
L pressurization_series1-rescue:GND-power #PWR0286
U 1 1 6069ECA5
P 2700 5100
F 0 "#PWR0286" H 2700 4850 50  0001 C CNN
F 1 "GND" H 2705 4927 50  0000 C CNN
F 2 "" H 2700 5100 50  0001 C CNN
F 3 "" H 2700 5100 50  0001 C CNN
	1    2700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 5250 2275 4625
Wire Wire Line
	2275 4625 2700 4625
Wire Wire Line
	2700 4625 2700 4725
Connection ~ 2275 4625
Wire Wire Line
	2275 4625 2275 4525
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR0289
U 1 1 606A1203
P 5275 1525
F 0 "#PWR0289" H 5275 1375 50  0001 C CNN
F 1 "+3.3V" H 5290 1698 50  0000 C CNN
F 2 "" H 5275 1525 50  0001 C CNN
F 3 "" H 5275 1525 50  0001 C CNN
	1    5275 1525
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C84
U 1 1 606A1209
P 5700 1875
F 0 "C84" H 5815 1921 50  0000 L CNN
F 1 "100n" H 5815 1830 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 5738 1725 50  0001 C CNN
F 3 "~" H 5700 1875 50  0001 C CNN
	1    5700 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2025 5700 2100
$Comp
L pressurization_series1-rescue:GND-power #PWR0292
U 1 1 606A1210
P 5700 2100
F 0 "#PWR0292" H 5700 1850 50  0001 C CNN
F 1 "GND" H 5705 1927 50  0000 C CNN
F 2 "" H 5700 2100 50  0001 C CNN
F 3 "" H 5700 2100 50  0001 C CNN
	1    5700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 2250 5275 1625
Wire Wire Line
	5275 1625 5700 1625
Wire Wire Line
	5700 1625 5700 1725
Connection ~ 5275 1625
Wire Wire Line
	5275 1625 5275 1525
$EndSCHEMATC
