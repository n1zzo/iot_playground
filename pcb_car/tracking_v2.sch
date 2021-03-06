EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:L293D
LIBS:wemos
LIBS:gy-521
LIBS:tracking_v2-cache
EELAYER 25 0
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
NoConn ~ 5685 5065
NoConn ~ 5785 5065
NoConn ~ 6185 4065
$Comp
L GY-521 U3
U 1 1 5B033AEE
P 4805 3225
F 0 "U3" H 4905 3575 60  0000 C CNN
F 1 "GY-521" H 5005 3675 60  0000 C CNN
F 2 "GY-521:GY-521" H 4805 3225 60  0001 C CNN
F 3 "" H 4805 3225 60  0000 C CNN
	1    4805 3225
	0    -1   -1   0   
$EndComp
NoConn ~ 4905 2675
NoConn ~ 4705 3775
NoConn ~ 4805 3775
NoConn ~ 4905 3775
NoConn ~ 5185 4065
NoConn ~ 5285 4065
NoConn ~ 5185 5065
NoConn ~ 5285 5065
NoConn ~ 5385 5065
Text GLabel 4105 2300 2    60   Input ~ 0
BATT
$Comp
L GND #PWR01
U 1 1 5B034743
P 3945 1570
F 0 "#PWR01" H 3945 1320 50  0001 C CNN
F 1 "GND" H 3945 1420 50  0000 C CNN
F 2 "" H 3945 1570 50  0001 C CNN
F 3 "" H 3945 1570 50  0001 C CNN
	1    3945 1570
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5B0347E5
P 5770 1570
F 0 "#PWR02" H 5770 1320 50  0001 C CNN
F 1 "GND" H 5770 1420 50  0000 C CNN
F 2 "" H 5770 1570 50  0001 C CNN
F 3 "" H 5770 1570 50  0001 C CNN
	1    5770 1570
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x02 J6
U 1 1 5B034C51
P 5805 1840
F 0 "J6" H 5805 1940 50  0000 C CNN
F 1 "Conn_01x02" H 5805 1640 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5805 1840 50  0001 C CNN
F 3 "" H 5805 1840 50  0001 C CNN
	1    5805 1840
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x02 J3
U 1 1 5B034DEC
P 3635 1585
F 0 "J3" H 3635 1685 50  0000 C CNN
F 1 "Conn_01x02" H 3635 1385 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3635 1585 50  0001 C CNN
F 3 "" H 3635 1585 50  0001 C CNN
	1    3635 1585
	1    0    0    -1  
$EndComp
$Comp
L L293D U1
U 1 1 5B03538E
P -6415 13260
F 0 "U1" H -6365 13310 60  0000 C CNN
F 1 "L293D" H 2915 19610 60  0000 C CNN
F 2 "L293D:DIL16" H -6415 13260 60  0001 C CNN
F 3 "" H -6415 13260 60  0001 C CNN
	1    -6415 13260
	1    0    0    -1  
$EndComp
Text GLabel 3485 5410 1    60   Input ~ 0
5V
$Comp
L GND #PWR03
U 1 1 5B036409
P 1885 6160
F 0 "#PWR03" H 1885 5910 50  0001 C CNN
F 1 "GND" H 1885 6010 50  0000 C CNN
F 2 "" H 1885 6160 50  0001 C CNN
F 3 "" H 1885 6160 50  0001 C CNN
	1    1885 6160
	0    1    1    0   
$EndComp
Text GLabel 1935 6610 3    60   Input ~ 0
BATT
$Comp
L Conn_01x02 J4
U 1 1 5B036CAE
P 3885 6095
F 0 "J4" H 3885 6195 50  0000 C CNN
F 1 "Conn_01x02" H 3885 5895 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3885 6095 50  0001 C CNN
F 3 "" H 3885 6095 50  0001 C CNN
	1    3885 6095
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x02 J2
U 1 1 5B03776A
P 1420 5965
F 0 "J2" H 1420 6065 50  0000 C CNN
F 1 "Conn_01x02" H 1420 5765 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1420 5965 50  0001 C CNN
F 3 "" H 1420 5965 50  0001 C CNN
	1    1420 5965
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 5B037C12
P 1370 1315
F 0 "J1" H 1370 1415 50  0000 C CNN
F 1 "Conn_01x02" H 1370 1115 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1370 1315 50  0001 C CNN
F 3 "" H 1370 1315 50  0001 C CNN
	1    1370 1315
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5B037D79
P 1270 1030
F 0 "#PWR04" H 1270 780 50  0001 C CNN
F 1 "GND" H 1270 880 50  0000 C CNN
F 2 "" H 1270 1030 50  0001 C CNN
F 3 "" H 1270 1030 50  0001 C CNN
	1    1270 1030
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5B0382B4
P 5585 5335
F 0 "D2" H 5585 5435 50  0000 C CNN
F 1 "LED" H 5585 5235 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 5585 5335 50  0001 C CNN
F 3 "" H 5585 5335 50  0001 C CNN
	1    5585 5335
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 5B038425
P 5585 5720
F 0 "R9" V 5665 5720 50  0000 C CNN
F 1 "R" V 5585 5720 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5515 5720 50  0001 C CNN
F 3 "" H 5585 5720 50  0001 C CNN
	1    5585 5720
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5B03857F
P 5585 5930
F 0 "#PWR05" H 5585 5680 50  0001 C CNN
F 1 "GND" H 5585 5780 50  0000 C CNN
F 2 "" H 5585 5930 50  0001 C CNN
F 3 "" H 5585 5930 50  0001 C CNN
	1    5585 5930
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5B0395AC
P 6785 3945
F 0 "#PWR06" H 6785 3695 50  0001 C CNN
F 1 "GND" H 6785 3795 50  0000 C CNN
F 2 "" H 6785 3945 50  0001 C CNN
F 3 "" H 6785 3945 50  0001 C CNN
	1    6785 3945
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x03 J9
U 1 1 5B03965C
P 9050 1390
F 0 "J9" H 9050 1590 50  0000 C CNN
F 1 "Conn_01x03" H 9050 1190 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9050 1390 50  0001 C CNN
F 3 "" H 9050 1390 50  0001 C CNN
	1    9050 1390
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J8
U 1 1 5B03974B
P 9045 2270
F 0 "J8" H 9045 2470 50  0000 C CNN
F 1 "Conn_01x03" H 9045 2070 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9045 2270 50  0001 C CNN
F 3 "" H 9045 2270 50  0001 C CNN
	1    9045 2270
	1    0    0    -1  
$EndComp
Text GLabel 9475 1115 2    60   Input ~ 0
3V3
Wire Wire Line
	5405 3225 5405 3775
Wire Wire Line
	5405 3775 5085 3775
Wire Wire Line
	5085 3775 5085 4065
Wire Wire Line
	4705 2675 4705 2455
Wire Wire Line
	4705 2455 5485 2455
Wire Wire Line
	5485 2455 5485 4065
Wire Wire Line
	5585 4065 5585 2610
Wire Wire Line
	5585 2610 4805 2610
Wire Wire Line
	4805 2610 4805 2675
Wire Wire Line
	5650 1120 5605 1120
Wire Wire Line
	5650 780  5650 1120
Wire Wire Line
	4105 1720 4025 1720
Wire Wire Line
	4025 1720 4025 1570
Wire Wire Line
	3945 1570 4105 1570
Connection ~ 4025 1570
Wire Wire Line
	5605 1720 5720 1720
Wire Wire Line
	5720 1720 5720 1570
Wire Wire Line
	5605 1570 5770 1570
Connection ~ 5720 1570
Wire Wire Line
	5605 1870 5605 1965
Wire Wire Line
	5605 1965 6005 1965
Wire Wire Line
	6005 1420 5605 1420
Wire Wire Line
	4105 1420 3435 1420
Wire Wire Line
	3435 1420 3435 1585
Wire Wire Line
	4105 1870 3435 1870
Wire Wire Line
	3435 1870 3435 1685
Wire Wire Line
	3485 5410 3485 5560
Wire Wire Line
	3485 6010 3560 6010
Wire Wire Line
	3560 6010 3560 6160
Wire Wire Line
	3485 6160 3610 6160
Connection ~ 3560 6160
Wire Wire Line
	1985 6010 1915 6010
Wire Wire Line
	1915 6010 1915 6160
Wire Wire Line
	1885 6160 1985 6160
Connection ~ 1915 6160
Wire Wire Line
	1985 6610 1935 6610
Wire Wire Line
	1985 5860 1220 5860
Wire Wire Line
	1220 5860 1220 5965
Wire Wire Line
	1220 6065 1220 6310
Wire Wire Line
	1220 6310 1985 6310
Wire Wire Line
	1270 1030 1270 1115
Wire Wire Line
	1370 1115 1370 1055
Wire Wire Line
	5585 5065 5585 5185
Wire Wire Line
	5585 5485 5585 5570
Wire Wire Line
	5585 5870 5585 5930
Connection ~ 4995 5065
Wire Wire Line
	6785 3945 6785 4065
Wire Wire Line
	8850 1290 8850 1115
Wire Wire Line
	8850 1115 9475 1115
Wire Wire Line
	9365 2035 8845 2035
Wire Wire Line
	8845 2035 8845 2170
Connection ~ 9365 1115
Wire Wire Line
	8845 2370 8700 2370
Wire Wire Line
	8700 1490 8850 1490
$Comp
L GND #PWR07
U 1 1 5B03A069
P 8700 2450
F 0 "#PWR07" H 8700 2200 50  0001 C CNN
F 1 "GND" H 8700 2300 50  0000 C CNN
F 2 "" H 8700 2450 50  0001 C CNN
F 3 "" H 8700 2450 50  0001 C CNN
	1    8700 2450
	1    0    0    -1  
$EndComp
NoConn ~ 5685 4065
NoConn ~ 5785 4065
NoConn ~ 5385 4065
NoConn ~ 6985 4065
Wire Wire Line
	1555 1055 1555 1815
Wire Wire Line
	1555 1715 1455 1715
$Comp
L LED D1
U 1 1 5B03ABE4
P 1305 1715
F 0 "D1" H 1305 1815 50  0000 C CNN
F 1 "LED" H 1305 1615 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1305 1715 50  0001 C CNN
F 3 "" H 1305 1715 50  0001 C CNN
	1    1305 1715
	1    0    0    -1  
$EndComp
Wire Wire Line
	1155 1715 900  1715
Wire Wire Line
	900  1715 900  1635
$Comp
L R R1
U 1 1 5B03AD74
P 900 1485
F 0 "R1" V 980 1485 50  0000 C CNN
F 1 "R" V 900 1485 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 830 1485 50  0001 C CNN
F 3 "" H 900 1485 50  0001 C CNN
	1    900  1485
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1335 900  1060
Wire Wire Line
	900  1060 1270 1060
Connection ~ 1270 1060
$Comp
L Conn_01x20_Female J7
U 1 1 5B03D2A3
P 6085 4265
F 0 "J7" H 6085 5265 50  0000 C CNN
F 1 "Conn_01x20_Female" H 6085 3165 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x20_Pitch2.54mm" H 6085 4265 50  0001 C CNN
F 3 "" H 6085 4265 50  0001 C CNN
	1    6085 4265
	0    1    1    0   
$EndComp
$Comp
L L293D U2
U 1 1 5B03F194
P -4295 8820
F 0 "U2" H -4245 8870 60  0000 C CNN
F 1 "L293D" H 4565 16775 60  0000 C CNN
F 2 "L293D:DIL16" H -4295 8820 60  0001 C CNN
F 3 "" H -4295 8820 60  0001 C CNN
	1    -4295 8820
	1    0    0    -1  
$EndComp
Wire Wire Line
	5085 3960 4640 3960
Wire Wire Line
	4640 3960 4640 4015
Connection ~ 5085 3960
$Comp
L GND #PWR08
U 1 1 5B041156
P 4640 4015
F 0 "#PWR08" H 4640 3765 50  0001 C CNN
F 1 "GND" H 4640 3865 50  0000 C CNN
F 2 "" H 4640 4015 50  0001 C CNN
F 3 "" H 4640 4015 50  0001 C CNN
	1    4640 4015
	1    0    0    -1  
$EndComp
Connection ~ 1555 1715
$Comp
L C C1
U 1 1 5B03EFAB
P 1555 1965
F 0 "C1" H 1580 2065 50  0000 L CNN
F 1 "C" H 1580 1865 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1593 1815 50  0001 C CNN
F 3 "" H 1555 1965 50  0001 C CNN
	1    1555 1965
	1    0    0    -1  
$EndComp
Wire Wire Line
	1555 2115 1555 2180
$Comp
L GND #PWR09
U 1 1 5B03F14D
P 1555 2180
F 0 "#PWR09" H 1555 1930 50  0001 C CNN
F 1 "GND" H 1555 2030 50  0000 C CNN
F 2 "" H 1555 2180 50  0001 C CNN
F 3 "" H 1555 2180 50  0001 C CNN
	1    1555 2180
	1    0    0    -1  
$EndComp
Wire Wire Line
	1370 1055 1670 1055
Connection ~ 1555 1055
Text GLabel 1670 1055 2    60   Input ~ 0
BATT
Wire Wire Line
	4995 5060 4995 5180
$Comp
L SW_Push SW1
U 1 1 5B0483E9
P 4995 5380
F 0 "SW1" H 5045 5480 50  0000 L CNN
F 1 "SW_Push" H 4995 5320 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVPBF" H 4995 5580 50  0001 C CNN
F 3 "" H 4995 5580 50  0001 C CNN
	1    4995 5380
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4995 5580 4995 5660
$Comp
L R R8
U 1 1 5B0485D5
P 4995 5810
F 0 "R8" V 5075 5810 50  0000 C CNN
F 1 "R" V 4995 5810 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4925 5810 50  0001 C CNN
F 3 "" H 4995 5810 50  0001 C CNN
	1    4995 5810
	1    0    0    -1  
$EndComp
Wire Wire Line
	4995 5960 4995 6010
$Comp
L GND #PWR010
U 1 1 5B048877
P 4995 6010
F 0 "#PWR010" H 4995 5760 50  0001 C CNN
F 1 "GND" H 4995 5860 50  0000 C CNN
F 2 "" H 4995 6010 50  0001 C CNN
F 3 "" H 4995 6010 50  0001 C CNN
	1    4995 6010
	1    0    0    -1  
$EndComp
Wire Wire Line
	5485 5065 5485 5240
Wire Wire Line
	5485 5240 5220 5240
Wire Wire Line
	5220 5240 5220 5620
Wire Wire Line
	5220 5620 4995 5620
Connection ~ 4995 5620
Wire Wire Line
	6005 1965 6005 1840
Wire Wire Line
	6005 1740 6005 1420
Wire Wire Line
	5885 4065 5885 3965
Wire Wire Line
	5985 3665 5985 4065
Wire Wire Line
	6085 4065 6085 3970
Wire Wire Line
	6285 4065 6285 3970
Wire Wire Line
	6385 3670 6385 4065
Wire Wire Line
	6485 4065 6485 3970
Wire Wire Line
	6585 3670 6585 4065
Wire Wire Line
	6685 4065 6685 3970
Wire Wire Line
	6885 4065 6885 3990
Wire Wire Line
	6885 3990 6995 3990
Wire Wire Line
	6995 3990 6995 3900
Text GLabel 6485 3970 1    60   Input ~ 0
IN2_B
Text GLabel 5885 3965 1    60   Input ~ 0
EN1_B
Text GLabel 6085 3970 1    60   Input ~ 0
IN3_B
Text GLabel 6285 3970 1    60   Input ~ 0
3V3
Text GLabel 6385 3670 1    60   Input ~ 0
IN4_B
Text GLabel 5985 3665 1    60   Input ~ 0
EN2_B
Text GLabel 6585 3670 1    60   Input ~ 0
IN1_B
Text GLabel 6685 3970 1    60   Input ~ 0
DATA1
Text GLabel 6995 3900 1    60   Input ~ 0
DATA2
Wire Wire Line
	3395 2020 4105 2020
Wire Wire Line
	3375 1270 4105 1270
Wire Wire Line
	4105 1120 4010 1120
Wire Wire Line
	5605 1270 6250 1270
Wire Wire Line
	5605 2020 5630 2020
Wire Wire Line
	5630 2020 5630 2065
Wire Wire Line
	5630 2065 6250 2065
Wire Wire Line
	5605 2170 5605 2210
Wire Wire Line
	5605 2210 5745 2210
Text GLabel 5745 2210 2    60   Input ~ 0
EN2_B
Text GLabel 6250 2065 2    60   Input ~ 0
IN3_B
Text GLabel 6250 1270 2    60   Input ~ 0
IN4_B
Text GLabel 3395 2020 0    60   Input ~ 0
IN2_B
Text GLabel 3375 1270 0    60   Input ~ 0
IN1_B
Text GLabel 4010 1120 0    60   Input ~ 0
EN1_B
Wire Wire Line
	9365 1115 9365 2035
Wire Wire Line
	8700 2370 8700 2450
Wire Wire Line
	8700 1490 8700 1540
$Comp
L GND #PWR011
U 1 1 5B04DDDB
P 8700 1540
F 0 "#PWR011" H 8700 1290 50  0001 C CNN
F 1 "GND" H 8700 1390 50  0000 C CNN
F 2 "" H 8700 1540 50  0001 C CNN
F 3 "" H 8700 1540 50  0001 C CNN
	1    8700 1540
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1390 8750 1390
Text GLabel 8750 1390 0    60   Input ~ 0
DATA1
Wire Wire Line
	8845 2270 8755 2270
Text GLabel 8755 2270 0    60   Input ~ 0
DATA2
$Comp
L R R4
U 1 1 5B04F4C7
P 4080 795
F 0 "R4" V 4160 795 50  0000 C CNN
F 1 "R" V 4080 795 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4010 795 50  0001 C CNN
F 3 "" H 4080 795 50  0001 C CNN
	1    4080 795 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4080 645  4080 570 
$Comp
L GND #PWR012
U 1 1 5B04F60A
P 4080 570
F 0 "#PWR012" H 4080 320 50  0001 C CNN
F 1 "GND" H 4080 420 50  0000 C CNN
F 2 "" H 4080 570 50  0001 C CNN
F 3 "" H 4080 570 50  0001 C CNN
	1    4080 570 
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 5B0501E5
P 5710 2400
F 0 "R10" V 5790 2400 50  0000 C CNN
F 1 "R" V 5710 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5640 2400 50  0001 C CNN
F 3 "" H 5710 2400 50  0001 C CNN
	1    5710 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5710 2550 5710 2655
$Comp
L GND #PWR013
U 1 1 5B0503F8
P 5710 2655
F 0 "#PWR013" H 5710 2405 50  0001 C CNN
F 1 "GND" H 5710 2505 50  0000 C CNN
F 2 "" H 5710 2655 50  0001 C CNN
F 3 "" H 5710 2655 50  0001 C CNN
	1    5710 2655
	0    1    1    0   
$EndComp
Wire Wire Line
	5885 5065 5885 5150
Wire Wire Line
	5985 5065 5985 5430
Wire Wire Line
	6085 5065 6085 5150
Wire Wire Line
	6185 5065 6185 5425
Wire Wire Line
	6285 5065 6285 5155
Wire Wire Line
	6385 5065 6385 5425
Wire Wire Line
	6485 5065 6485 5165
Wire Wire Line
	6585 5065 6585 5340
$Comp
L GND #PWR014
U 1 1 5B052D8A
P 6585 5340
F 0 "#PWR014" H 6585 5090 50  0001 C CNN
F 1 "GND" H 6585 5190 50  0000 C CNN
F 2 "" H 6585 5340 50  0001 C CNN
F 3 "" H 6585 5340 50  0001 C CNN
	1    6585 5340
	1    0    0    -1  
$EndComp
Text GLabel 6485 5165 3    60   Input ~ 0
5V
Wire Wire Line
	4105 2170 4105 2300
Text GLabel 5650 780  2    60   Input ~ 0
5V
Wire Wire Line
	5650 910  5595 910 
Connection ~ 5650 910 
$Comp
L C C2
U 1 1 5B054107
P 5445 910
F 0 "C2" H 5470 1010 50  0000 L CNN
F 1 "C" H 5470 810 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5483 760 50  0001 C CNN
F 3 "" H 5445 910 50  0001 C CNN
	1    5445 910 
	0    1    1    0   
$EndComp
Wire Wire Line
	5295 910  5245 910 
$Comp
L GND #PWR015
U 1 1 5B054309
P 5245 910
F 0 "#PWR015" H 5245 660 50  0001 C CNN
F 1 "GND" H 5245 760 50  0000 C CNN
F 2 "" H 5245 910 50  0001 C CNN
F 3 "" H 5245 910 50  0001 C CNN
	1    5245 910 
	0    1    1    0   
$EndComp
Text GLabel 6385 5425 3    60   Input ~ 0
EN2_A
Text GLabel 6285 5155 3    60   Input ~ 0
IN3_A
Text GLabel 6185 5425 3    60   Input ~ 0
IN4_A
Text GLabel 6085 5150 3    60   Input ~ 0
IN2_A
Text GLabel 5985 5430 3    60   Input ~ 0
IN1_A
Text GLabel 5885 5150 3    60   Input ~ 0
EN1_A
$Comp
L GND #PWR016
U 1 1 5B0559FD
P 3610 6160
F 0 "#PWR016" H 3610 5910 50  0001 C CNN
F 1 "GND" H 3610 6010 50  0000 C CNN
F 2 "" H 3610 6160 50  0001 C CNN
F 3 "" H 3610 6160 50  0001 C CNN
	1    3610 6160
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3485 5860 4085 5860
Wire Wire Line
	4085 5860 4085 5995
Wire Wire Line
	4085 6095 4085 6310
Wire Wire Line
	4085 6310 3485 6310
Wire Wire Line
	1985 5560 1880 5560
Text GLabel 1880 5560 0    60   Input ~ 0
EN1_A
Wire Wire Line
	1275 5710 1985 5710
Text GLabel 1275 5710 0    60   Input ~ 0
IN1_A
Wire Wire Line
	1965 5435 1965 5560
$Comp
L R R2
U 1 1 5B056857
P 1965 5285
F 0 "R2" V 2045 5285 50  0000 C CNN
F 1 "R" V 1965 5285 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1895 5285 50  0001 C CNN
F 3 "" H 1965 5285 50  0001 C CNN
	1    1965 5285
	1    0    0    -1  
$EndComp
Wire Wire Line
	1965 5135 1965 5100
$Comp
L GND #PWR017
U 1 1 5B056B60
P 1965 5100
F 0 "#PWR017" H 1965 4850 50  0001 C CNN
F 1 "GND" H 1965 4950 50  0000 C CNN
F 2 "" H 1965 5100 50  0001 C CNN
F 3 "" H 1965 5100 50  0001 C CNN
	1    1965 5100
	-1   0    0    1   
$EndComp
Text GLabel 1310 6460 0    60   Input ~ 0
IN2_A
Wire Wire Line
	3485 5710 3945 5710
Text GLabel 3945 5710 2    60   Input ~ 0
IN4_A
$Comp
L R R6
U 1 1 5B058343
P 3530 6840
F 0 "R6" V 3610 6840 50  0000 C CNN
F 1 "R" V 3530 6840 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3460 6840 50  0001 C CNN
F 3 "" H 3530 6840 50  0001 C CNN
	1    3530 6840
	-1   0    0    1   
$EndComp
Wire Wire Line
	3530 6990 3530 7025
$Comp
L GND #PWR018
U 1 1 5B05857D
P 3530 7025
F 0 "#PWR018" H 3530 6775 50  0001 C CNN
F 1 "GND" H 3530 6875 50  0000 C CNN
F 2 "" H 3530 7025 50  0001 C CNN
F 3 "" H 3530 7025 50  0001 C CNN
	1    3530 7025
	1    0    0    -1  
$EndComp
Wire Wire Line
	3485 6610 3600 6610
Text GLabel 3600 6610 2    60   Input ~ 0
EN2_A
Wire Wire Line
	3485 6460 4160 6460
Text GLabel 4160 6460 2    60   Input ~ 0
IN3_A
$Comp
L Conn_01x16_Female J5
U 1 1 5B053A6F
P 5785 4865
F 0 "J5" H 5785 5665 50  0000 C CNN
F 1 "Conn_01x16_Female" H 5785 3965 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x16_Pitch2.54mm" H 5785 4865 50  0001 C CNN
F 3 "" H 5785 4865 50  0001 C CNN
	1    5785 4865
	0    -1   -1   0   
$EndComp
Text GLabel 4205 3225 0    60   Input ~ 0
3v3_gyro
Text GLabel 4750 5060 0    60   Input ~ 0
3v3_gyro
Wire Wire Line
	4750 5060 4995 5065
Wire Wire Line
	4995 5065 5085 5065
Wire Wire Line
	4080 945  4080 1120
Connection ~ 4080 1120
Wire Wire Line
	5710 2250 5710 2210
Connection ~ 5710 2210
Wire Wire Line
	1310 6460 1985 6460
Connection ~ 1965 5560
Wire Wire Line
	3530 6690 3530 6610
Connection ~ 3530 6610
$EndSCHEMATC
