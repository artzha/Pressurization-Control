EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 25
Title "Pressurization Board Series 1"
Date "2020-08-17"
Rev "Rev A"
Comp "Michigan Aeronautical Science Association (MASA)"
Comment1 "Josh Azrin & Arthur Zhang"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5500 3825 2    50   Input ~ 0
e_pt1
Text GLabel 5500 3950 2    50   Input ~ 0
e_pt0
Wire Wire Line
	2000 2925 1900 2925
Wire Wire Line
	2000 2625 1700 2625
Wire Wire Line
	1700 2225 1700 2625
Connection ~ 1700 2625
Wire Wire Line
	1700 2625 1700 3225
Wire Wire Line
	2000 3225 1700 3225
Wire Wire Line
	1900 3525 2000 3525
Connection ~ 1900 2925
$Comp
L pressurization_series1-rescue:Jumper-Device JP1
U 1 1 5E9A4E7B
P 2300 2625
F 0 "JP1" H 2300 2575 50  0000 C CNN
F 1 "Jumper" H 2300 2798 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 2625 50  0001 C CNN
F 3 "~" H 2300 2625 50  0001 C CNN
	1    2300 2625
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP2
U 1 1 5E9B441E
P 2300 2925
F 0 "JP2" H 2300 2875 50  0000 C CNN
F 1 "Jumper" H 2300 3098 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 2925 50  0001 C CNN
F 3 "~" H 2300 2925 50  0001 C CNN
	1    2300 2925
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP3
U 1 1 5E9B4A8B
P 2300 3225
F 0 "JP3" H 2300 3175 50  0000 C CNN
F 1 "Jumper" H 2300 3398 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 3225 50  0001 C CNN
F 3 "~" H 2300 3225 50  0001 C CNN
	1    2300 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2625 2700 2625
Wire Wire Line
	2600 2925 2700 2925
Wire Wire Line
	2600 3225 2700 3225
Wire Wire Line
	2600 3525 2700 3525
Wire Wire Line
	2000 4100 1900 4100
Wire Wire Line
	2000 3800 1700 3800
Connection ~ 1700 3800
Wire Wire Line
	1700 3800 1700 4400
Wire Wire Line
	2000 4400 1700 4400
Wire Wire Line
	1900 4700 2000 4700
Connection ~ 1900 4100
$Comp
L pressurization_series1-rescue:Jumper-Device JP5
U 1 1 5E9BD049
P 2300 3800
F 0 "JP5" H 2300 3750 50  0000 C CNN
F 1 "Jumper" H 2300 3973 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 3800 50  0001 C CNN
F 3 "~" H 2300 3800 50  0001 C CNN
	1    2300 3800
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP6
U 1 1 5E9BD04F
P 2300 4100
F 0 "JP6" H 2300 4050 50  0000 C CNN
F 1 "Jumper" H 2300 4273 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 4100 50  0001 C CNN
F 3 "~" H 2300 4100 50  0001 C CNN
	1    2300 4100
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP7
U 1 1 5E9BD055
P 2300 4400
F 0 "JP7" H 2300 4350 50  0000 C CNN
F 1 "Jumper" H 2300 4573 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 4400 50  0001 C CNN
F 3 "~" H 2300 4400 50  0001 C CNN
	1    2300 4400
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP8
U 1 1 5E9BD05B
P 2300 4700
F 0 "JP8" H 2300 4650 50  0000 C CNN
F 1 "Jumper" H 2300 4873 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 4700 50  0001 C CNN
F 3 "~" H 2300 4700 50  0001 C CNN
	1    2300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3800 2700 3800
Wire Wire Line
	2600 4100 2700 4100
Wire Wire Line
	2600 4400 2700 4400
Wire Wire Line
	2600 4700 2700 4700
Wire Wire Line
	1900 2925 1900 3525
Connection ~ 1900 3525
Wire Wire Line
	1900 3525 1900 4100
Wire Wire Line
	1700 3225 1700 3800
Connection ~ 1700 3225
Wire Wire Line
	2000 5300 1900 5300
Wire Wire Line
	2000 5000 1700 5000
Connection ~ 1700 5000
Wire Wire Line
	1700 5000 1700 5600
Wire Wire Line
	2000 5600 1700 5600
Wire Wire Line
	1900 5300 1900 5900
Wire Wire Line
	1900 5900 2000 5900
Connection ~ 1900 5300
$Comp
L pressurization_series1-rescue:Jumper-Device JP9
U 1 1 5E9C1C03
P 2300 5000
F 0 "JP9" H 2300 4950 50  0000 C CNN
F 1 "Jumper" H 2300 5173 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 5000 50  0001 C CNN
F 3 "~" H 2300 5000 50  0001 C CNN
	1    2300 5000
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP10
U 1 1 5E9C1C09
P 2300 5300
F 0 "JP10" H 2300 5250 50  0000 C CNN
F 1 "Jumper" H 2300 5473 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 5300 50  0001 C CNN
F 3 "~" H 2300 5300 50  0001 C CNN
	1    2300 5300
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP11
U 1 1 5E9C1C0F
P 2300 5600
F 0 "JP11" H 2300 5550 50  0000 C CNN
F 1 "Jumper" H 2300 5773 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 5600 50  0001 C CNN
F 3 "~" H 2300 5600 50  0001 C CNN
	1    2300 5600
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP12
U 1 1 5E9C1C15
P 2300 5900
F 0 "JP12" H 2300 5850 50  0000 C CNN
F 1 "Jumper" H 2300 6073 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 5900 50  0001 C CNN
F 3 "~" H 2300 5900 50  0001 C CNN
	1    2300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5000 2700 5000
Wire Wire Line
	2600 5300 2700 5300
Wire Wire Line
	2600 5600 2700 5600
Wire Wire Line
	2600 5900 2700 5900
Wire Wire Line
	1900 4100 1900 4700
Wire Wire Line
	1700 4400 1700 5000
Connection ~ 1700 4400
Connection ~ 1900 4700
Wire Wire Line
	1900 4700 1900 5300
$Sheet
S 4575 3250 825  775 
U 5E67E090
F0 "Filter_Block" 50
F1 "Filter_block.sch" 50
F2 "in1" I L 4575 3825 50 
F3 "in0" I L 4575 3950 50 
F4 "out1" I R 5400 3825 50 
F5 "out0" I R 5400 3950 50 
F6 "in2" I L 4575 3700 50 
F7 "in3" I L 4575 3575 50 
F8 "in4" I L 4575 3450 50 
F9 "in5" I L 4575 3325 50 
F10 "out2" I R 5400 3700 50 
F11 "out3" I R 5400 3575 50 
F12 "out4" I R 5400 3450 50 
F13 "out5" I R 5400 3325 50 
$EndSheet
Text GLabel 5500 3575 2    50   Input ~ 0
e_pt3
Text GLabel 5500 3700 2    50   Input ~ 0
e_pt2
Text GLabel 5500 3325 2    50   Input ~ 0
e_pt5
Text GLabel 5500 3450 2    50   Input ~ 0
e_pt4
Text GLabel 2700 2625 2    50   Input ~ 0
pt0p
Text GLabel 2700 2925 2    50   Input ~ 0
pt0p
Text GLabel 2700 3225 2    50   Input ~ 0
pt1p
Text GLabel 2700 3525 2    50   Input ~ 0
pt1p
$Comp
L pressurization_series1-rescue:Jumper-Device JP4
U 1 1 5E9B5020
P 2300 3525
F 0 "JP4" H 2300 3475 50  0000 C CNN
F 1 "Jumper" H 2300 3698 50  0001 C CNN
F 2 "KiCad:R_0603_1608Metric" H 2300 3525 50  0001 C CNN
F 3 "~" H 2300 3525 50  0001 C CNN
	1    2300 3525
	1    0    0    -1  
$EndComp
Text GLabel 2700 3800 2    50   Input ~ 0
pt2p
Text GLabel 2700 4100 2    50   Input ~ 0
pt2p
Text GLabel 2700 4400 2    50   Input ~ 0
pt3p
Text GLabel 2700 4700 2    50   Input ~ 0
pt3p
Text GLabel 2700 5000 2    50   Input ~ 0
pt4p
Text GLabel 2700 5300 2    50   Input ~ 0
pt4p
Text GLabel 2700 5600 2    50   Input ~ 0
pt5p
Text GLabel 2700 5900 2    50   Input ~ 0
pt5p
Text GLabel 4475 3325 0    50   Input ~ 0
pt5s
Text GLabel 4475 3450 0    50   Input ~ 0
pt4s
Text GLabel 4475 3575 0    50   Input ~ 0
pt3s
Text GLabel 4475 3700 0    50   Input ~ 0
pt2s
Text GLabel 4475 3825 0    50   Input ~ 0
pt1s
Text GLabel 4475 3950 0    50   Input ~ 0
pt0s
Text Notes 1650 1850 0    50   ~ 0
Pts can be powered be either 5v or 12v\n
Text Notes 4575 3100 0    50   ~ 0
Anti aliasing filters
$Comp
L pressurization_series1-rescue:+5V-power #PWR01
U 1 1 5EB84AAB
P 1700 2225
F 0 "#PWR01" H 1700 2075 50  0001 C CNN
F 1 "+5V" H 1715 2398 50  0000 C CNN
F 2 "" H 1700 2225 50  0001 C CNN
F 3 "" H 1700 2225 50  0001 C CNN
	1    1700 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 3325 4475 3325
Wire Wire Line
	4575 3450 4475 3450
Wire Wire Line
	4575 3575 4475 3575
Wire Wire Line
	4575 3700 4475 3700
Wire Wire Line
	4575 3825 4475 3825
Wire Wire Line
	4575 3950 4475 3950
Wire Wire Line
	5500 3325 5400 3325
Wire Wire Line
	5500 3450 5400 3450
Wire Wire Line
	5500 3575 5400 3575
Wire Wire Line
	5500 3700 5400 3700
Wire Wire Line
	5500 3825 5400 3825
Wire Wire Line
	5500 3950 5400 3950
Text Notes 650  825  0    123  ~ 25
Pressure Transducers
$Comp
L pressurization_series1-rescue:+12C-power #PWR02
U 1 1 5EBF480A
P 1900 2200
F 0 "#PWR02" H 1900 2050 50  0001 C CNN
F 1 "+12C" H 1915 2373 50  0000 C CNN
F 2 "" H 1900 2200 50  0001 C CNN
F 3 "" H 1900 2200 50  0001 C CNN
	1    1900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2200 1900 2925
Text Notes 4550 4600 0    50   ~ 0
Note: Cutoff frequency of filter should be\nhalf the sampling frequnecy minus some margin.\nNeed to sample at twice the measured frequency (Nyquist).\nADCs sampled at 200HZ in the past,\nso 80-90 HZ cutoff would be good. 
Text Notes 4550 5725 0    50   ~ 0
FILTER RC SELECTION:\nfor 5v pressure transducers \nR1 = 3kohm\nR2 = 5.6kohm\nC = 1uF\n\nThis filter yeilds:\nFc = 81.47 Hz\nGain = 0.65 (FSO adc input = 3.26V)\n\nsee this sheet for calculations:\nhttps://docs.google.com/spreadsheets/d/15WcBS81j1mEnTeu4w-lgx77W5PSOBOaJVBM6bfbJjco/edit#gid=0
$EndSCHEMATC
