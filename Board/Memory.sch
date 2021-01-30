EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 18 25
Title "Pressurization Board Series 1"
Date "2020-08-17"
Rev "Rev A"
Comp "Michigan Aeronautical Science Association (MASA)"
Comment1 "Josh Azrin & Arthur Zhang"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1500 2175 0    50   Input ~ 0
FLASH_CS
Text GLabel 1500 2275 0    50   Input ~ 0
SPI2_MISO
Text GLabel 2450 2375 2    50   Input ~ 0
SPI2_SCK
Text GLabel 3150 2475 2    50   Input ~ 0
SPI2_MOSI
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR0275
U 1 1 5EB59C7A
P 2550 2075
AR Path="/5EAFC85D/5EB59C7A" Ref="#PWR0275"  Part="1" 
AR Path="/5ECADAF7/5EB59C7A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0275" H 2550 1925 50  0001 C CNN
F 1 "+3.3V" H 2565 2248 50  0000 C CNN
F 2 "" H 2550 2075 50  0001 C CNN
F 3 "" H 2550 2075 50  0001 C CNN
	1    2550 2075
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR0273
U 1 1 5EB5A53C
P 875 2250
AR Path="/5EAFC85D/5EB5A53C" Ref="#PWR0273"  Part="1" 
AR Path="/5ECADAF7/5EB5A53C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0273" H 875 2100 50  0001 C CNN
F 1 "+3.3V" H 890 2423 50  0000 C CNN
F 2 "" H 875 2250 50  0001 C CNN
F 3 "" H 875 2250 50  0001 C CNN
	1    875  2250
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:GND-power #PWR0274
U 1 1 5EB5AC43
P 1275 2575
AR Path="/5EAFC85D/5EB5AC43" Ref="#PWR0274"  Part="1" 
AR Path="/5ECADAF7/5EB5AC43" Ref="#PWR?"  Part="1" 
F 0 "#PWR0274" H 1275 2325 50  0001 C CNN
F 1 "GND" H 1280 2402 50  0000 C CNN
F 2 "" H 1275 2575 50  0001 C CNN
F 3 "" H 1275 2575 50  0001 C CNN
	1    1275 2575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	875  2250 875  2375
Wire Wire Line
	875  2375 1550 2375
Wire Wire Line
	1550 2475 1275 2475
Wire Wire Line
	1275 2475 1275 2575
Wire Wire Line
	3100 2475 3150 2475
Wire Wire Line
	2450 2375 2400 2375
Wire Wire Line
	2400 2175 2550 2175
Wire Wire Line
	2550 2175 2550 2075
Wire Wire Line
	2550 2175 2550 2275
Wire Wire Line
	2550 2275 2400 2275
Connection ~ 2550 2175
Wire Wire Line
	1500 2275 1550 2275
Wire Wire Line
	1500 2175 1550 2175
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR0276
U 1 1 5EB5C6F0
P 3900 1850
AR Path="/5EAFC85D/5EB5C6F0" Ref="#PWR0276"  Part="1" 
AR Path="/5ECADAF7/5EB5C6F0" Ref="#PWR?"  Part="1" 
F 0 "#PWR0276" H 3900 1700 50  0001 C CNN
F 1 "+3.3V" H 3915 2023 50  0000 C CNN
F 2 "" H 3900 1850 50  0001 C CNN
F 3 "" H 3900 1850 50  0001 C CNN
	1    3900 1850
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:C-Device C79
U 1 1 5EB5CC74
P 3900 2175
AR Path="/5EAFC85D/5EB5CC74" Ref="C79"  Part="1" 
AR Path="/5ECADAF7/5EB5CC74" Ref="C?"  Part="1" 
F 0 "C79" H 4015 2221 50  0000 L CNN
F 1 "100n" H 4015 2130 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 3938 2025 50  0001 C CNN
F 3 "~" H 3900 2175 50  0001 C CNN
	1    3900 2175
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:GND-power #PWR0277
U 1 1 5EB5D57C
P 3900 2475
AR Path="/5EAFC85D/5EB5D57C" Ref="#PWR0277"  Part="1" 
AR Path="/5ECADAF7/5EB5D57C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0277" H 3900 2225 50  0001 C CNN
F 1 "GND" H 3905 2302 50  0000 C CNN
F 2 "" H 3900 2475 50  0001 C CNN
F 3 "" H 3900 2475 50  0001 C CNN
	1    3900 2475
	-1   0    0    -1  
$EndComp
Text Notes 1800 1750 0    79   ~ 0
Flash\n
Text GLabel 6950 1725 0    50   Input ~ 0
SPI2_SCK
Text GLabel 6425 1525 0    50   Input ~ 0
SPI2_MOSI
Wire Wire Line
	6475 1525 6425 1525
Text GLabel 6950 1925 0    50   Input ~ 0
SPI2_MISO
Text GLabel 7025 1425 0    50   Input ~ 0
SD_CS
Wire Wire Line
	7025 1425 7075 1425
NoConn ~ 7075 2025
NoConn ~ 7075 1325
Text Notes 5700 4425 0    50   ~ 0
SD card pin mappings used above are standard \nwith SPI communications for most SD card readers\n\nJumpers are for pins that need to be tested for what state high/low corresponds to\n\nWP- Write Protect cannot be left floating, \nconnection to gnd allows write\nCOMMON- If there's a card, CD will be connected to COM, \notherwise they are disconnected\nCD- Card detected pin\nSHIELD- connected to socket, usually tied to ground
$Comp
L pressurization_series1-rescue:C-Device C80
U 1 1 5EAC8DC3
P 5275 2425
AR Path="/5EAFC85D/5EAC8DC3" Ref="C80"  Part="1" 
AR Path="/5ECADAF7/5EAC8DC3" Ref="C?"  Part="1" 
F 0 "C80" H 5390 2471 50  0000 L CNN
F 1 "100n" H 5390 2380 50  0000 L CNN
F 2 "KiCad:C_0603_1608Metric" H 5313 2275 50  0001 C CNN
F 3 "~" H 5275 2425 50  0001 C CNN
	1    5275 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2325 3900 2475
Wire Wire Line
	3900 1850 3900 2025
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR0279
U 1 1 5EB2B98E
P 5825 1450
AR Path="/5EAFC85D/5EB2B98E" Ref="#PWR0279"  Part="1" 
AR Path="/5ECADAF7/5EB2B98E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0279" H 5825 1300 50  0001 C CNN
F 1 "+3.3V" H 5840 1623 50  0000 C CNN
F 2 "" H 5825 1450 50  0001 C CNN
F 3 "" H 5825 1450 50  0001 C CNN
	1    5825 1450
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP21
U 1 1 5EB1457E
P 6200 2075
AR Path="/5EAFC85D/5EB1457E" Ref="JP21"  Part="1" 
AR Path="/5ECADAF7/5EB1457E" Ref="JP?"  Part="1" 
F 0 "JP21" H 6200 2339 50  0000 C CNN
F 1 "Jumper" H 6200 2248 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" H 6200 2075 50  0001 C CNN
F 3 "~" H 6200 2075 50  0001 C CNN
	1    6200 2075
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP22
U 1 1 5EB14D4C
P 6200 2425
AR Path="/5EAFC85D/5EB14D4C" Ref="JP22"  Part="1" 
AR Path="/5ECADAF7/5EB14D4C" Ref="JP?"  Part="1" 
F 0 "JP22" H 6200 2689 50  0000 C CNN
F 1 "Jumper" H 6200 2598 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" H 6200 2425 50  0001 C CNN
F 3 "~" H 6200 2425 50  0001 C CNN
	1    6200 2425
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP23
U 1 1 5EB14FDA
P 6200 2775
AR Path="/5EAFC85D/5EB14FDA" Ref="JP23"  Part="1" 
AR Path="/5ECADAF7/5EB14FDA" Ref="JP?"  Part="1" 
F 0 "JP23" H 6200 3039 50  0000 C CNN
F 1 "Jumper" H 6200 2948 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" H 6200 2775 50  0001 C CNN
F 3 "~" H 6200 2775 50  0001 C CNN
	1    6200 2775
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:Jumper-Device JP24
U 1 1 5EB1B820
P 6200 3125
AR Path="/5EAFC85D/5EB1B820" Ref="JP24"  Part="1" 
AR Path="/5ECADAF7/5EB1B820" Ref="JP?"  Part="1" 
F 0 "JP24" H 6200 3389 50  0000 C CNN
F 1 "Jumper" H 6200 3298 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" H 6200 3125 50  0001 C CNN
F 3 "~" H 6200 3125 50  0001 C CNN
	1    6200 3125
	1    0    0    -1  
$EndComp
Text Notes 800  900  0    123  ~ 25
Memmory
$Comp
L pressurization_series1:503182-1852 J3
U 1 1 5EBB9271
P 7275 1925
F 0 "J3" H 7805 1971 50  0000 L CNN
F 1 "503182-1852" H 7805 1880 50  0000 L CNN
F 2 "MOLEX_503182-1852" H 7275 1925 50  0001 L BNN
F 3 "Molex" H 7275 1925 50  0001 L BNN
	1    7275 1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	5825 1450 5825 1625
Wire Wire Line
	6950 1725 7075 1725
Wire Wire Line
	6950 1925 7075 1925
Wire Wire Line
	7075 1825 7000 1825
Wire Wire Line
	7000 1825 7000 2525
Wire Wire Line
	7075 2525 7000 2525
Connection ~ 7000 2525
Wire Wire Line
	7000 2525 7000 2700
$Comp
L pressurization_series1-rescue:GND-power #PWR0280
U 1 1 5EBD74A7
P 7000 2700
AR Path="/5EAFC85D/5EBD74A7" Ref="#PWR0280"  Part="1" 
AR Path="/5ECADAF7/5EBD74A7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0280" H 7000 2450 50  0001 C CNN
F 1 "GND" H 7005 2527 50  0000 C CNN
F 2 "" H 7000 2700 50  0001 C CNN
F 3 "" H 7000 2700 50  0001 C CNN
	1    7000 2700
	-1   0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:GND-power #PWR0278
U 1 1 5EBF7AAD
P 5750 3225
AR Path="/5EAFC85D/5EBF7AAD" Ref="#PWR0278"  Part="1" 
AR Path="/5ECADAF7/5EBF7AAD" Ref="#PWR?"  Part="1" 
F 0 "#PWR0278" H 5750 2975 50  0001 C CNN
F 1 "GND" H 5755 3052 50  0000 C CNN
F 2 "" H 5750 3225 50  0001 C CNN
F 3 "" H 5750 3225 50  0001 C CNN
	1    5750 3225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 3125 5750 3125
Wire Wire Line
	5750 3125 5750 3225
Wire Wire Line
	5900 2425 5750 2425
Wire Wire Line
	5750 2425 5750 3125
Connection ~ 5750 3125
Wire Wire Line
	5900 2775 5825 2775
Wire Wire Line
	5825 2775 5825 2075
Wire Wire Line
	5900 2075 5825 2075
Connection ~ 5825 2075
Wire Wire Line
	5825 2075 5825 1625
Wire Wire Line
	5825 1625 7075 1625
Connection ~ 5825 1625
Wire Wire Line
	6500 2075 6675 2075
Wire Wire Line
	6675 2075 6675 2225
Wire Wire Line
	6675 2225 7075 2225
Wire Wire Line
	6675 2225 6675 2425
Wire Wire Line
	6675 2425 6500 2425
Connection ~ 6675 2225
Wire Wire Line
	7075 2325 6775 2325
Wire Wire Line
	6775 2325 6775 2775
Wire Wire Line
	6775 2775 6500 2775
Wire Wire Line
	6775 2775 6775 3125
Wire Wire Line
	6775 3125 6500 3125
Connection ~ 6775 2775
Text Notes 7250 1125 0    79   ~ 0
SD Card
$Comp
L pressurization_series1-rescue:+3.3V-power #PWR0302
U 1 1 5F0D1920
P 5275 2100
AR Path="/5EAFC85D/5F0D1920" Ref="#PWR0302"  Part="1" 
AR Path="/5ECADAF7/5F0D1920" Ref="#PWR?"  Part="1" 
F 0 "#PWR0302" H 5275 1950 50  0001 C CNN
F 1 "+3.3V" H 5290 2273 50  0000 C CNN
F 2 "" H 5275 2100 50  0001 C CNN
F 3 "" H 5275 2100 50  0001 C CNN
	1    5275 2100
	1    0    0    -1  
$EndComp
$Comp
L pressurization_series1-rescue:GND-power #PWR0303
U 1 1 5F0D1926
P 5275 2725
AR Path="/5EAFC85D/5F0D1926" Ref="#PWR0303"  Part="1" 
AR Path="/5ECADAF7/5F0D1926" Ref="#PWR?"  Part="1" 
F 0 "#PWR0303" H 5275 2475 50  0001 C CNN
F 1 "GND" H 5280 2552 50  0000 C CNN
F 2 "" H 5275 2725 50  0001 C CNN
F 3 "" H 5275 2725 50  0001 C CNN
	1    5275 2725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5275 2575 5275 2725
Wire Wire Line
	5275 2100 5275 2275
$Comp
L pressurization_series1-rescue:TestPoint-Connector TP46
U 1 1 5EDF1D5D
P 1450 3550
F 0 "TP46" V 1404 3738 50  0000 L CNN
F 1 "TestPoint" V 1495 3738 50  0000 L CNN
F 2 "libs:TestPoint-EC3" H 1650 3550 50  0001 C CNN
F 3 "~" H 1650 3550 50  0001 C CNN
	1    1450 3550
	0    1    1    0   
$EndComp
Text GLabel 1350 3550 0    50   Input ~ 0
FLASH_CS
Wire Wire Line
	1450 3550 1350 3550
$Comp
L pressurization_series1-rescue:TestPoint-Connector TP48
U 1 1 5EDF79A5
P 1450 3925
F 0 "TP48" V 1404 4113 50  0000 L CNN
F 1 "TestPoint" V 1495 4113 50  0000 L CNN
F 2 "libs:TestPoint-EC3" H 1650 3925 50  0001 C CNN
F 3 "~" H 1650 3925 50  0001 C CNN
	1    1450 3925
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 3925 1350 3925
Text GLabel 1350 3925 0    50   Input ~ 0
SD_CS
$Comp
L pressurization_series1-rescue:R-Device R120
U 1 1 5F133F21
P 2950 2475
F 0 "R120" V 2743 2475 50  0000 C CNN
F 1 "Rt" V 2834 2475 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 2880 2475 50  0001 C CNN
F 3 "~" H 2950 2475 50  0001 C CNN
	1    2950 2475
	0    1    1    0   
$EndComp
$Comp
L pressurization_series1:W25N01GVZEIG U31
U 1 1 5EABA52C
P 1750 2075
AR Path="/5EAFC85D/5EABA52C" Ref="U31"  Part="1" 
AR Path="/5ECADAF7/5EABA52C" Ref="U?"  Part="1" 
AR Path="/5EABA52C" Ref="U?"  Part="1" 
F 0 "U31" H 1975 2262 60  0000 C CNN
F 1 "W25N01GVZEIG" H 1975 2156 60  0000 C CNN
F 2 "libs:SON127P800X600X80-9N" H 1750 2025 60  0001 C CNN
F 3 "" H 1750 2025 60  0001 C CNN
	1    1750 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2475 2800 2475
$Comp
L pressurization_series1-rescue:R-Device R121
U 1 1 5F13E2BE
P 6625 1525
F 0 "R121" V 6418 1525 50  0000 C CNN
F 1 "Rt" V 6509 1525 50  0000 C CNN
F 2 "KiCad:R_0603_1608Metric" V 6555 1525 50  0001 C CNN
F 3 "~" H 6625 1525 50  0001 C CNN
	1    6625 1525
	0    1    1    0   
$EndComp
Wire Wire Line
	6775 1525 7075 1525
Text Notes 3550 3750 0    50   ~ 0
No EEPROM
$EndSCHEMATC
