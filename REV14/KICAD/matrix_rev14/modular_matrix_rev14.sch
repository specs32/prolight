EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:Altera
LIBS:ESD_Protection
LIBS:LEM
LIBS:Lattice
LIBS:Oscillators
LIBS:Power_Management
LIBS:RFSolutions
LIBS:Worldsemi
LIBS:Xicor
LIBS:Zilog
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:ir
LIBS:leds
LIBS:linear
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm32
LIBS:stm8
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:wiznet
LIBS:xilinx
LIBS:zetex
LIBS:nicos-parts
LIBS:modular_matrix_rev11-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
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
L device:C C1
U 1 1 59B2E39A
P 3405 1450
F 0 "C1" V 3320 1540 50  0000 L CNN
F 1 "100nF" V 3330 1170 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3443 1300 50  0001 C CNN
F 3 "" H 3405 1450 50  0001 C CNN
	1    3405 1450
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U1
U 1 1 59B2E72F
P 3400 1665
F 0 "U1" H 3400 1505 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 3405 1430 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 3400 1665 60  0001 C CNN
F 3 "" H 3400 1665 60  0001 C CNN
	1    3400 1665
	1    0    0    -1  
$EndComp
Text GLabel 2885 1715 0    60   Input ~ 0
GND
Text GLabel 3850 1615 2    60   Input ~ 0
VCC
Wire Wire Line
	3555 1450 3850 1450
Wire Wire Line
	3850 1450 3850 1615
Wire Wire Line
	2950 1715 2885 1715
Wire Wire Line
	3255 1450 2885 1450
Wire Wire Line
	2885 1450 2885 1715
$Comp
L device:C C2
U 1 1 59B2EA82
P 5070 1450
F 0 "C2" V 4985 1540 50  0000 L CNN
F 1 "100nF" V 4995 1170 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5108 1300 50  0001 C CNN
F 3 "" H 5070 1450 50  0001 C CNN
	1    5070 1450
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U2
U 1 1 59B2EA88
P 5065 1665
F 0 "U2" H 5065 1505 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 5070 1430 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 5065 1665 60  0001 C CNN
F 3 "" H 5065 1665 60  0001 C CNN
	1    5065 1665
	1    0    0    -1  
$EndComp
Text GLabel 4550 1715 0    60   Input ~ 0
GND
Text GLabel 5515 1615 2    60   Input ~ 0
VCC
Wire Wire Line
	5220 1450 5515 1450
Wire Wire Line
	5515 1450 5515 1615
Wire Wire Line
	4615 1715 4550 1715
Wire Wire Line
	4920 1450 4550 1450
Wire Wire Line
	4550 1450 4550 1715
Wire Wire Line
	4615 1615 4245 1615
Wire Wire Line
	4245 1615 4245 1715
Wire Wire Line
	4245 1715 3850 1715
$Comp
L device:C C3
U 1 1 59B2EE3F
P 6735 1450
F 0 "C3" V 6650 1540 50  0000 L CNN
F 1 "100nF" V 6660 1170 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6773 1300 50  0001 C CNN
F 3 "" H 6735 1450 50  0001 C CNN
	1    6735 1450
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U3
U 1 1 59B2EE45
P 6730 1665
F 0 "U3" H 6730 1505 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 6735 1430 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 6730 1665 60  0001 C CNN
F 3 "" H 6730 1665 60  0001 C CNN
	1    6730 1665
	1    0    0    -1  
$EndComp
Text GLabel 6215 1715 0    60   Input ~ 0
GND
Text GLabel 7180 1615 2    60   Input ~ 0
VCC
Wire Wire Line
	6885 1450 7180 1450
Wire Wire Line
	7180 1450 7180 1615
Wire Wire Line
	6280 1715 6215 1715
Wire Wire Line
	6585 1450 6215 1450
Wire Wire Line
	6215 1450 6215 1715
Wire Wire Line
	6280 1615 5910 1615
Wire Wire Line
	5910 1615 5910 1715
Wire Wire Line
	5910 1715 5515 1715
$Comp
L device:C C4
U 1 1 59B2F171
P 8400 1450
F 0 "C4" V 8315 1540 50  0000 L CNN
F 1 "100nF" V 8325 1170 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8438 1300 50  0001 C CNN
F 3 "" H 8400 1450 50  0001 C CNN
	1    8400 1450
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U4
U 1 1 59B2F177
P 8395 1665
F 0 "U4" H 8395 1505 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 8400 1430 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 8395 1665 60  0001 C CNN
F 3 "" H 8395 1665 60  0001 C CNN
	1    8395 1665
	1    0    0    -1  
$EndComp
Text GLabel 7880 1715 0    60   Input ~ 0
GND
Text GLabel 8845 1615 2    60   Input ~ 0
VCC
Wire Wire Line
	8550 1450 8845 1450
Wire Wire Line
	8845 1450 8845 1615
Wire Wire Line
	7945 1715 7880 1715
Wire Wire Line
	8250 1450 7880 1450
Wire Wire Line
	7880 1450 7880 1715
Wire Wire Line
	7945 1615 7575 1615
Wire Wire Line
	7575 1615 7575 1715
Wire Wire Line
	7575 1715 7180 1715
$Comp
L device:C C5
U 1 1 59B2F187
P 10065 1450
F 0 "C5" V 9980 1540 50  0000 L CNN
F 1 "100nF" V 9990 1170 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10103 1300 50  0001 C CNN
F 3 "" H 10065 1450 50  0001 C CNN
	1    10065 1450
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U5
U 1 1 59B2F18D
P 10060 1665
F 0 "U5" H 10060 1505 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 10065 1430 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 10060 1665 60  0001 C CNN
F 3 "" H 10060 1665 60  0001 C CNN
	1    10060 1665
	1    0    0    -1  
$EndComp
Text GLabel 9545 1715 0    60   Input ~ 0
GND
Text GLabel 10510 1615 2    60   Input ~ 0
VCC
Wire Wire Line
	10215 1450 10510 1450
Wire Wire Line
	10510 1450 10510 1615
Wire Wire Line
	9610 1715 9545 1715
Wire Wire Line
	9915 1450 9545 1450
Wire Wire Line
	9545 1450 9545 1715
Wire Wire Line
	9610 1615 9240 1615
Wire Wire Line
	9240 1615 9240 1715
Wire Wire Line
	9240 1715 8845 1715
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U6
U 1 1 59B30377
P 11725 1665
F 0 "U6" H 11725 1505 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 11730 1430 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 11725 1665 60  0001 C CNN
F 3 "" H 11725 1665 60  0001 C CNN
	1    11725 1665
	1    0    0    -1  
$EndComp
Text GLabel 11210 1715 0    60   Input ~ 0
GND
Text GLabel 12175 1615 2    60   Input ~ 0
VCC
Wire Wire Line
	11880 1450 12175 1450
Wire Wire Line
	12175 1450 12175 1615
Wire Wire Line
	11275 1715 11210 1715
Wire Wire Line
	11580 1450 11210 1450
Wire Wire Line
	11210 1450 11210 1715
Wire Wire Line
	11275 1615 10905 1615
Wire Wire Line
	10905 1615 10905 1715
Wire Wire Line
	10905 1715 10510 1715
$Comp
L device:C C7
U 1 1 59B31BB0
P 3405 2205
F 0 "C7" V 3320 2295 50  0000 L CNN
F 1 "100nF" V 3330 1925 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3443 2055 50  0001 C CNN
F 3 "" H 3405 2205 50  0001 C CNN
	1    3405 2205
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U7
U 1 1 59B31BB6
P 3400 2420
F 0 "U7" H 3400 2260 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 3405 2185 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 3400 2420 60  0001 C CNN
F 3 "" H 3400 2420 60  0001 C CNN
	1    3400 2420
	1    0    0    -1  
$EndComp
Text GLabel 2885 2470 0    60   Input ~ 0
GND
Text GLabel 3850 2370 2    60   Input ~ 0
VCC
Wire Wire Line
	3555 2205 3850 2205
Wire Wire Line
	3850 2205 3850 2370
Wire Wire Line
	2950 2470 2885 2470
Wire Wire Line
	3255 2205 2885 2205
Wire Wire Line
	2885 2205 2885 2470
$Comp
L device:C C8
U 1 1 59B31BC3
P 5070 2205
F 0 "C8" V 4985 2295 50  0000 L CNN
F 1 "100nF" V 4995 1925 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5108 2055 50  0001 C CNN
F 3 "" H 5070 2205 50  0001 C CNN
	1    5070 2205
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U8
U 1 1 59B31BC9
P 5065 2420
F 0 "U8" H 5065 2260 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 5070 2185 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 5065 2420 60  0001 C CNN
F 3 "" H 5065 2420 60  0001 C CNN
	1    5065 2420
	1    0    0    -1  
$EndComp
Text GLabel 4550 2470 0    60   Input ~ 0
GND
Text GLabel 5515 2370 2    60   Input ~ 0
VCC
Wire Wire Line
	5220 2205 5515 2205
Wire Wire Line
	5515 2205 5515 2370
Wire Wire Line
	4615 2470 4550 2470
Wire Wire Line
	4920 2205 4550 2205
Wire Wire Line
	4550 2205 4550 2470
Wire Wire Line
	4615 2370 4245 2370
Wire Wire Line
	4245 2370 4245 2470
Wire Wire Line
	4245 2470 3850 2470
$Comp
L device:C C9
U 1 1 59B31BD9
P 6735 2205
F 0 "C9" V 6650 2295 50  0000 L CNN
F 1 "100nF" V 6660 1925 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6773 2055 50  0001 C CNN
F 3 "" H 6735 2205 50  0001 C CNN
	1    6735 2205
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U9
U 1 1 59B31BDF
P 6730 2420
F 0 "U9" H 6730 2260 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 6735 2185 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 6730 2420 60  0001 C CNN
F 3 "" H 6730 2420 60  0001 C CNN
	1    6730 2420
	1    0    0    -1  
$EndComp
Text GLabel 6215 2470 0    60   Input ~ 0
GND
Text GLabel 7180 2370 2    60   Input ~ 0
VCC
Wire Wire Line
	6885 2205 7180 2205
Wire Wire Line
	7180 2205 7180 2370
Wire Wire Line
	6280 2470 6215 2470
Wire Wire Line
	6585 2205 6215 2205
Wire Wire Line
	6215 2205 6215 2470
Wire Wire Line
	6280 2370 5910 2370
Wire Wire Line
	5910 2370 5910 2470
Wire Wire Line
	5910 2470 5515 2470
$Comp
L device:C C10
U 1 1 59B31BEF
P 8400 2205
F 0 "C10" V 8315 2295 50  0000 L CNN
F 1 "100nF" V 8325 1925 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8438 2055 50  0001 C CNN
F 3 "" H 8400 2205 50  0001 C CNN
	1    8400 2205
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U10
U 1 1 59B31BF5
P 8395 2420
F 0 "U10" H 8395 2260 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 8400 2185 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 8395 2420 60  0001 C CNN
F 3 "" H 8395 2420 60  0001 C CNN
	1    8395 2420
	1    0    0    -1  
$EndComp
Text GLabel 7880 2470 0    60   Input ~ 0
GND
Text GLabel 8845 2370 2    60   Input ~ 0
VCC
Wire Wire Line
	8550 2205 8845 2205
Wire Wire Line
	8845 2205 8845 2370
Wire Wire Line
	7945 2470 7880 2470
Wire Wire Line
	8250 2205 7880 2205
Wire Wire Line
	7880 2205 7880 2470
Wire Wire Line
	7945 2370 7575 2370
Wire Wire Line
	7575 2370 7575 2470
Wire Wire Line
	7575 2470 7180 2470
$Comp
L device:C C11
U 1 1 59B31C05
P 10065 2205
F 0 "C11" V 9980 2295 50  0000 L CNN
F 1 "100nF" V 9990 1925 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10103 2055 50  0001 C CNN
F 3 "" H 10065 2205 50  0001 C CNN
	1    10065 2205
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U11
U 1 1 59B31C0B
P 10060 2420
F 0 "U11" H 10060 2260 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 10065 2185 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 10060 2420 60  0001 C CNN
F 3 "" H 10060 2420 60  0001 C CNN
	1    10060 2420
	1    0    0    -1  
$EndComp
Text GLabel 9545 2470 0    60   Input ~ 0
GND
Text GLabel 10510 2370 2    60   Input ~ 0
VCC
Wire Wire Line
	10215 2205 10510 2205
Wire Wire Line
	10510 2205 10510 2370
Wire Wire Line
	9610 2470 9545 2470
Wire Wire Line
	9915 2205 9545 2205
Wire Wire Line
	9545 2205 9545 2470
Wire Wire Line
	9610 2370 9240 2370
Wire Wire Line
	9240 2370 9240 2470
Wire Wire Line
	9240 2470 8845 2470
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U12
U 1 1 59B31C21
P 11725 2420
F 0 "U12" H 11725 2260 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 11730 2185 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 11725 2420 60  0001 C CNN
F 3 "" H 11725 2420 60  0001 C CNN
	1    11725 2420
	1    0    0    -1  
$EndComp
Text GLabel 11210 2470 0    60   Input ~ 0
GND
Text GLabel 12175 2370 2    60   Input ~ 0
VCC
Wire Wire Line
	11880 2205 12175 2205
Wire Wire Line
	12175 2205 12175 2370
Wire Wire Line
	11275 2470 11210 2470
Wire Wire Line
	11580 2205 11210 2205
Wire Wire Line
	11210 2205 11210 2470
Wire Wire Line
	11275 2370 10905 2370
Wire Wire Line
	10905 2370 10905 2470
Wire Wire Line
	10905 2470 10510 2470
$Comp
L device:C C13
U 1 1 59B32459
P 3480 3050
F 0 "C13" V 3395 3140 50  0000 L CNN
F 1 "100nF" V 3405 2770 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3518 2900 50  0001 C CNN
F 3 "" H 3480 3050 50  0001 C CNN
	1    3480 3050
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U13
U 1 1 59B3245F
P 3475 3265
F 0 "U13" H 3475 3105 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 3480 3030 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 3475 3265 60  0001 C CNN
F 3 "" H 3475 3265 60  0001 C CNN
	1    3475 3265
	1    0    0    -1  
$EndComp
Text GLabel 2960 3315 0    60   Input ~ 0
GND
Text GLabel 3925 3215 2    60   Input ~ 0
VCC
Wire Wire Line
	3630 3050 3925 3050
Wire Wire Line
	3925 3050 3925 3215
Wire Wire Line
	3025 3315 2960 3315
Wire Wire Line
	3330 3050 2960 3050
Wire Wire Line
	2960 3050 2960 3315
$Comp
L device:C C14
U 1 1 59B3246C
P 5145 3050
F 0 "C14" V 5060 3140 50  0000 L CNN
F 1 "100nF" V 5070 2770 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5183 2900 50  0001 C CNN
F 3 "" H 5145 3050 50  0001 C CNN
	1    5145 3050
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U14
U 1 1 59B32472
P 5140 3265
F 0 "U14" H 5140 3105 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 5145 3030 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 5140 3265 60  0001 C CNN
F 3 "" H 5140 3265 60  0001 C CNN
	1    5140 3265
	1    0    0    -1  
$EndComp
Text GLabel 4625 3315 0    60   Input ~ 0
GND
Text GLabel 5590 3215 2    60   Input ~ 0
VCC
Wire Wire Line
	5295 3050 5590 3050
Wire Wire Line
	5590 3050 5590 3215
Wire Wire Line
	4690 3315 4625 3315
Wire Wire Line
	4995 3050 4625 3050
Wire Wire Line
	4625 3050 4625 3315
Wire Wire Line
	4690 3215 4320 3215
Wire Wire Line
	4320 3215 4320 3315
Wire Wire Line
	4320 3315 3925 3315
$Comp
L device:C C15
U 1 1 59B32482
P 6810 3050
F 0 "C15" V 6725 3140 50  0000 L CNN
F 1 "100nF" V 6735 2770 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6848 2900 50  0001 C CNN
F 3 "" H 6810 3050 50  0001 C CNN
	1    6810 3050
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U15
U 1 1 59B32488
P 6805 3265
F 0 "U15" H 6805 3105 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 6810 3030 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 6805 3265 60  0001 C CNN
F 3 "" H 6805 3265 60  0001 C CNN
	1    6805 3265
	1    0    0    -1  
$EndComp
Text GLabel 6290 3315 0    60   Input ~ 0
GND
Text GLabel 7255 3215 2    60   Input ~ 0
VCC
Wire Wire Line
	6960 3050 7255 3050
Wire Wire Line
	7255 3050 7255 3215
Wire Wire Line
	6355 3315 6290 3315
Wire Wire Line
	6660 3050 6290 3050
Wire Wire Line
	6290 3050 6290 3315
Wire Wire Line
	6355 3215 5985 3215
Wire Wire Line
	5985 3215 5985 3315
Wire Wire Line
	5985 3315 5590 3315
$Comp
L device:C C16
U 1 1 59B32498
P 8475 3050
F 0 "C16" V 8390 3140 50  0000 L CNN
F 1 "100nF" V 8400 2770 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8513 2900 50  0001 C CNN
F 3 "" H 8475 3050 50  0001 C CNN
	1    8475 3050
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U16
U 1 1 59B3249E
P 8470 3265
F 0 "U16" H 8470 3105 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 8475 3030 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 8470 3265 60  0001 C CNN
F 3 "" H 8470 3265 60  0001 C CNN
	1    8470 3265
	1    0    0    -1  
$EndComp
Text GLabel 7955 3315 0    60   Input ~ 0
GND
Text GLabel 8920 3215 2    60   Input ~ 0
VCC
Wire Wire Line
	8625 3050 8920 3050
Wire Wire Line
	8920 3050 8920 3215
Wire Wire Line
	8020 3315 7955 3315
Wire Wire Line
	8325 3050 7955 3050
Wire Wire Line
	7955 3050 7955 3315
Wire Wire Line
	8020 3215 7650 3215
Wire Wire Line
	7650 3215 7650 3315
Wire Wire Line
	7650 3315 7255 3315
$Comp
L device:C C17
U 1 1 59B324AE
P 10140 3050
F 0 "C17" V 10055 3140 50  0000 L CNN
F 1 "100nF" V 10065 2770 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10178 2900 50  0001 C CNN
F 3 "" H 10140 3050 50  0001 C CNN
	1    10140 3050
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U17
U 1 1 59B324B4
P 10135 3265
F 0 "U17" H 10135 3105 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 10140 3030 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 10135 3265 60  0001 C CNN
F 3 "" H 10135 3265 60  0001 C CNN
	1    10135 3265
	1    0    0    -1  
$EndComp
Text GLabel 9620 3315 0    60   Input ~ 0
GND
Text GLabel 10585 3215 2    60   Input ~ 0
VCC
Wire Wire Line
	10290 3050 10585 3050
Wire Wire Line
	10585 3050 10585 3215
Wire Wire Line
	9685 3315 9620 3315
Wire Wire Line
	9990 3050 9620 3050
Wire Wire Line
	9620 3050 9620 3315
Wire Wire Line
	9685 3215 9315 3215
Wire Wire Line
	9315 3215 9315 3315
Wire Wire Line
	9315 3315 8920 3315
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U18
U 1 1 59B324CA
P 11800 3265
F 0 "U18" H 11800 3105 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 11805 3030 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 11800 3265 60  0001 C CNN
F 3 "" H 11800 3265 60  0001 C CNN
	1    11800 3265
	1    0    0    -1  
$EndComp
Text GLabel 11285 3315 0    60   Input ~ 0
GND
Text GLabel 12250 3215 2    60   Input ~ 0
VCC
Wire Wire Line
	11955 3050 12250 3050
Wire Wire Line
	12250 3050 12250 3215
Wire Wire Line
	11350 3315 11285 3315
Wire Wire Line
	11655 3050 11285 3050
Wire Wire Line
	11285 3050 11285 3315
Wire Wire Line
	11350 3215 10980 3215
Wire Wire Line
	10980 3215 10980 3315
Wire Wire Line
	10980 3315 10585 3315
$Comp
L device:C C19
U 1 1 59B324DA
P 3480 3805
F 0 "C19" V 3395 3895 50  0000 L CNN
F 1 "100nF" V 3405 3525 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3518 3655 50  0001 C CNN
F 3 "" H 3480 3805 50  0001 C CNN
	1    3480 3805
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U19
U 1 1 59B324E0
P 3475 4020
F 0 "U19" H 3475 3860 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 3480 3785 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 3475 4020 60  0001 C CNN
F 3 "" H 3475 4020 60  0001 C CNN
	1    3475 4020
	1    0    0    -1  
$EndComp
Text GLabel 2960 4070 0    60   Input ~ 0
GND
Text GLabel 3925 3970 2    60   Input ~ 0
VCC
Wire Wire Line
	3630 3805 3925 3805
Wire Wire Line
	3925 3805 3925 3970
Wire Wire Line
	3025 4070 2960 4070
Wire Wire Line
	3330 3805 2960 3805
Wire Wire Line
	2960 3805 2960 4070
$Comp
L device:C C20
U 1 1 59B324ED
P 5145 3805
F 0 "C20" V 5060 3895 50  0000 L CNN
F 1 "100nF" V 5070 3525 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5183 3655 50  0001 C CNN
F 3 "" H 5145 3805 50  0001 C CNN
	1    5145 3805
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U20
U 1 1 59B324F3
P 5140 4020
F 0 "U20" H 5140 3860 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 5145 3785 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 5140 4020 60  0001 C CNN
F 3 "" H 5140 4020 60  0001 C CNN
	1    5140 4020
	1    0    0    -1  
$EndComp
Text GLabel 4625 4070 0    60   Input ~ 0
GND
Text GLabel 5590 3970 2    60   Input ~ 0
VCC
Wire Wire Line
	5295 3805 5590 3805
Wire Wire Line
	5590 3805 5590 3970
Wire Wire Line
	4690 4070 4625 4070
Wire Wire Line
	4995 3805 4625 3805
Wire Wire Line
	4625 3805 4625 4070
Wire Wire Line
	4690 3970 4320 3970
Wire Wire Line
	4320 3970 4320 4070
Wire Wire Line
	4320 4070 3925 4070
$Comp
L device:C C21
U 1 1 59B32503
P 6810 3805
F 0 "C21" V 6725 3895 50  0000 L CNN
F 1 "100nF" V 6735 3525 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6848 3655 50  0001 C CNN
F 3 "" H 6810 3805 50  0001 C CNN
	1    6810 3805
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U21
U 1 1 59B32509
P 6805 4020
F 0 "U21" H 6805 3860 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 6810 3785 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 6805 4020 60  0001 C CNN
F 3 "" H 6805 4020 60  0001 C CNN
	1    6805 4020
	1    0    0    -1  
$EndComp
Text GLabel 6290 4070 0    60   Input ~ 0
GND
Text GLabel 7255 3970 2    60   Input ~ 0
VCC
Wire Wire Line
	6960 3805 7255 3805
Wire Wire Line
	7255 3805 7255 3970
Wire Wire Line
	6355 4070 6290 4070
Wire Wire Line
	6660 3805 6290 3805
Wire Wire Line
	6290 3805 6290 4070
Wire Wire Line
	6355 3970 5985 3970
Wire Wire Line
	5985 3970 5985 4070
Wire Wire Line
	5985 4070 5590 4070
$Comp
L device:C C22
U 1 1 59B32519
P 8475 3805
F 0 "C22" V 8390 3895 50  0000 L CNN
F 1 "100nF" V 8400 3525 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8513 3655 50  0001 C CNN
F 3 "" H 8475 3805 50  0001 C CNN
	1    8475 3805
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U22
U 1 1 59B3251F
P 8470 4020
F 0 "U22" H 8470 3860 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 8475 3785 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 8470 4020 60  0001 C CNN
F 3 "" H 8470 4020 60  0001 C CNN
	1    8470 4020
	1    0    0    -1  
$EndComp
Text GLabel 7955 4070 0    60   Input ~ 0
GND
Text GLabel 8920 3970 2    60   Input ~ 0
VCC
Wire Wire Line
	8625 3805 8920 3805
Wire Wire Line
	8920 3805 8920 3970
Wire Wire Line
	8020 4070 7955 4070
Wire Wire Line
	8325 3805 7955 3805
Wire Wire Line
	7955 3805 7955 4070
Wire Wire Line
	8020 3970 7650 3970
Wire Wire Line
	7650 3970 7650 4070
Wire Wire Line
	7650 4070 7255 4070
$Comp
L device:C C23
U 1 1 59B3252F
P 10140 3805
F 0 "C23" V 10055 3895 50  0000 L CNN
F 1 "100nF" V 10065 3525 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10178 3655 50  0001 C CNN
F 3 "" H 10140 3805 50  0001 C CNN
	1    10140 3805
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U23
U 1 1 59B32535
P 10135 4020
F 0 "U23" H 10135 3860 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 10140 3785 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 10135 4020 60  0001 C CNN
F 3 "" H 10135 4020 60  0001 C CNN
	1    10135 4020
	1    0    0    -1  
$EndComp
Text GLabel 9620 4070 0    60   Input ~ 0
GND
Text GLabel 10585 3970 2    60   Input ~ 0
VCC
Wire Wire Line
	10290 3805 10585 3805
Wire Wire Line
	10585 3805 10585 3970
Wire Wire Line
	9685 4070 9620 4070
Wire Wire Line
	9990 3805 9620 3805
Wire Wire Line
	9620 3805 9620 4070
Wire Wire Line
	9685 3970 9315 3970
Wire Wire Line
	9315 3970 9315 4070
Wire Wire Line
	9315 4070 8920 4070
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U24
U 1 1 59B3254B
P 11800 4020
F 0 "U24" H 11800 3860 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 11805 3785 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 11800 4020 60  0001 C CNN
F 3 "" H 11800 4020 60  0001 C CNN
	1    11800 4020
	1    0    0    -1  
$EndComp
Text GLabel 11285 4070 0    60   Input ~ 0
GND
Text GLabel 12250 3970 2    60   Input ~ 0
VCC
Wire Wire Line
	11955 3805 12250 3805
Wire Wire Line
	12250 3805 12250 3970
Wire Wire Line
	11350 4070 11285 4070
Wire Wire Line
	11655 3805 11285 3805
Wire Wire Line
	11285 3805 11285 4070
Wire Wire Line
	11350 3970 10980 3970
Wire Wire Line
	10980 3970 10980 4070
Wire Wire Line
	10980 4070 10585 4070
$Comp
L device:C C25
U 1 1 59B32DFB
P 3485 4650
F 0 "C25" V 3400 4740 50  0000 L CNN
F 1 "100nF" V 3410 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3523 4500 50  0001 C CNN
F 3 "" H 3485 4650 50  0001 C CNN
	1    3485 4650
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U25
U 1 1 59B32E01
P 3480 4865
F 0 "U25" H 3480 4705 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 3485 4630 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 3480 4865 60  0001 C CNN
F 3 "" H 3480 4865 60  0001 C CNN
	1    3480 4865
	1    0    0    -1  
$EndComp
Text GLabel 2965 4915 0    60   Input ~ 0
GND
Text GLabel 3930 4815 2    60   Input ~ 0
VCC
Wire Wire Line
	3635 4650 3930 4650
Wire Wire Line
	3930 4650 3930 4815
Wire Wire Line
	3030 4915 2965 4915
Wire Wire Line
	3335 4650 2965 4650
Wire Wire Line
	2965 4650 2965 4915
$Comp
L device:C C26
U 1 1 59B32E0E
P 5150 4650
F 0 "C26" V 5065 4740 50  0000 L CNN
F 1 "100nF" V 5075 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5188 4500 50  0001 C CNN
F 3 "" H 5150 4650 50  0001 C CNN
	1    5150 4650
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U26
U 1 1 59B32E14
P 5145 4865
F 0 "U26" H 5145 4705 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 5150 4630 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 5145 4865 60  0001 C CNN
F 3 "" H 5145 4865 60  0001 C CNN
	1    5145 4865
	1    0    0    -1  
$EndComp
Text GLabel 4630 4915 0    60   Input ~ 0
GND
Text GLabel 5595 4815 2    60   Input ~ 0
VCC
Wire Wire Line
	5300 4650 5595 4650
Wire Wire Line
	5595 4650 5595 4815
Wire Wire Line
	4695 4915 4630 4915
Wire Wire Line
	5000 4650 4630 4650
Wire Wire Line
	4630 4650 4630 4915
Wire Wire Line
	4695 4815 4325 4815
Wire Wire Line
	4325 4815 4325 4915
Wire Wire Line
	4325 4915 3930 4915
$Comp
L device:C C27
U 1 1 59B32E24
P 6815 4650
F 0 "C27" V 6730 4740 50  0000 L CNN
F 1 "100nF" V 6740 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6853 4500 50  0001 C CNN
F 3 "" H 6815 4650 50  0001 C CNN
	1    6815 4650
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U27
U 1 1 59B32E2A
P 6810 4865
F 0 "U27" H 6810 4705 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 6815 4630 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 6810 4865 60  0001 C CNN
F 3 "" H 6810 4865 60  0001 C CNN
	1    6810 4865
	1    0    0    -1  
$EndComp
Text GLabel 6295 4915 0    60   Input ~ 0
GND
Text GLabel 7260 4815 2    60   Input ~ 0
VCC
Wire Wire Line
	6965 4650 7260 4650
Wire Wire Line
	7260 4650 7260 4815
Wire Wire Line
	6360 4915 6295 4915
Wire Wire Line
	6665 4650 6295 4650
Wire Wire Line
	6295 4650 6295 4915
Wire Wire Line
	6360 4815 5990 4815
Wire Wire Line
	5990 4815 5990 4915
Wire Wire Line
	5990 4915 5595 4915
$Comp
L device:C C28
U 1 1 59B32E3A
P 8480 4650
F 0 "C28" V 8395 4740 50  0000 L CNN
F 1 "100nF" V 8405 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8518 4500 50  0001 C CNN
F 3 "" H 8480 4650 50  0001 C CNN
	1    8480 4650
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U28
U 1 1 59B32E40
P 8475 4865
F 0 "U28" H 8475 4705 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 8480 4630 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 8475 4865 60  0001 C CNN
F 3 "" H 8475 4865 60  0001 C CNN
	1    8475 4865
	1    0    0    -1  
$EndComp
Text GLabel 7960 4915 0    60   Input ~ 0
GND
Text GLabel 8925 4815 2    60   Input ~ 0
VCC
Wire Wire Line
	8630 4650 8925 4650
Wire Wire Line
	8925 4650 8925 4815
Wire Wire Line
	8025 4915 7960 4915
Wire Wire Line
	8330 4650 7960 4650
Wire Wire Line
	7960 4650 7960 4915
Wire Wire Line
	8025 4815 7655 4815
Wire Wire Line
	7655 4815 7655 4915
Wire Wire Line
	7655 4915 7260 4915
$Comp
L device:C C29
U 1 1 59B32E50
P 10145 4650
F 0 "C29" V 10060 4740 50  0000 L CNN
F 1 "100nF" V 10070 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10183 4500 50  0001 C CNN
F 3 "" H 10145 4650 50  0001 C CNN
	1    10145 4650
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U29
U 1 1 59B32E56
P 10140 4865
F 0 "U29" H 10140 4705 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 10145 4630 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 10140 4865 60  0001 C CNN
F 3 "" H 10140 4865 60  0001 C CNN
	1    10140 4865
	1    0    0    -1  
$EndComp
Text GLabel 9625 4915 0    60   Input ~ 0
GND
Text GLabel 10590 4815 2    60   Input ~ 0
VCC
Wire Wire Line
	10295 4650 10590 4650
Wire Wire Line
	10590 4650 10590 4815
Wire Wire Line
	9690 4915 9625 4915
Wire Wire Line
	9995 4650 9625 4650
Wire Wire Line
	9625 4650 9625 4915
Wire Wire Line
	9690 4815 9320 4815
Wire Wire Line
	9320 4815 9320 4915
Wire Wire Line
	9320 4915 8925 4915
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U30
U 1 1 59B32E6C
P 11805 4865
F 0 "U30" H 11805 4705 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 11810 4630 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 11805 4865 60  0001 C CNN
F 3 "" H 11805 4865 60  0001 C CNN
	1    11805 4865
	1    0    0    -1  
$EndComp
Text GLabel 11290 4915 0    60   Input ~ 0
GND
Text GLabel 12255 4815 2    60   Input ~ 0
VCC
Wire Wire Line
	11960 4650 12255 4650
Wire Wire Line
	12255 4650 12255 4815
Wire Wire Line
	11355 4915 11290 4915
Wire Wire Line
	11660 4650 11290 4650
Wire Wire Line
	11290 4650 11290 4915
Wire Wire Line
	11355 4815 10985 4815
Wire Wire Line
	10985 4815 10985 4915
Wire Wire Line
	10985 4915 10590 4915
$Comp
L device:C C31
U 1 1 59B32E7C
P 3485 5405
F 0 "C31" V 3400 5495 50  0000 L CNN
F 1 "100nF" V 3410 5125 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3523 5255 50  0001 C CNN
F 3 "" H 3485 5405 50  0001 C CNN
	1    3485 5405
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U31
U 1 1 59B32E82
P 3480 5620
F 0 "U31" H 3480 5460 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 3485 5385 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 3480 5620 60  0001 C CNN
F 3 "" H 3480 5620 60  0001 C CNN
	1    3480 5620
	1    0    0    -1  
$EndComp
Text GLabel 2965 5670 0    60   Input ~ 0
GND
Text GLabel 3930 5570 2    60   Input ~ 0
VCC
Wire Wire Line
	3635 5405 3930 5405
Wire Wire Line
	3930 5405 3930 5570
Wire Wire Line
	3030 5670 2965 5670
Wire Wire Line
	3335 5405 2965 5405
Wire Wire Line
	2965 5405 2965 5670
$Comp
L device:C C32
U 1 1 59B32E8F
P 5150 5405
F 0 "C32" V 5065 5495 50  0000 L CNN
F 1 "100nF" V 5075 5125 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5188 5255 50  0001 C CNN
F 3 "" H 5150 5405 50  0001 C CNN
	1    5150 5405
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U32
U 1 1 59B32E95
P 5145 5620
F 0 "U32" H 5145 5460 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 5150 5385 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 5145 5620 60  0001 C CNN
F 3 "" H 5145 5620 60  0001 C CNN
	1    5145 5620
	1    0    0    -1  
$EndComp
Text GLabel 4630 5670 0    60   Input ~ 0
GND
Text GLabel 5595 5570 2    60   Input ~ 0
VCC
Wire Wire Line
	5300 5405 5595 5405
Wire Wire Line
	5595 5405 5595 5570
Wire Wire Line
	4695 5670 4630 5670
Wire Wire Line
	5000 5405 4630 5405
Wire Wire Line
	4630 5405 4630 5670
Wire Wire Line
	4695 5570 4325 5570
Wire Wire Line
	4325 5570 4325 5670
Wire Wire Line
	4325 5670 3930 5670
$Comp
L device:C C33
U 1 1 59B32EA5
P 6815 5405
F 0 "C33" V 6730 5495 50  0000 L CNN
F 1 "100nF" V 6740 5125 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6853 5255 50  0001 C CNN
F 3 "" H 6815 5405 50  0001 C CNN
	1    6815 5405
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U33
U 1 1 59B32EAB
P 6810 5620
F 0 "U33" H 6810 5460 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 6815 5385 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 6810 5620 60  0001 C CNN
F 3 "" H 6810 5620 60  0001 C CNN
	1    6810 5620
	1    0    0    -1  
$EndComp
Text GLabel 6295 5670 0    60   Input ~ 0
GND
Text GLabel 7260 5570 2    60   Input ~ 0
VCC
Wire Wire Line
	6965 5405 7260 5405
Wire Wire Line
	7260 5405 7260 5570
Wire Wire Line
	6360 5670 6295 5670
Wire Wire Line
	6665 5405 6295 5405
Wire Wire Line
	6295 5405 6295 5670
Wire Wire Line
	6360 5570 5990 5570
Wire Wire Line
	5990 5570 5990 5670
Wire Wire Line
	5990 5670 5595 5670
$Comp
L device:C C34
U 1 1 59B32EBB
P 8480 5405
F 0 "C34" V 8395 5495 50  0000 L CNN
F 1 "100nF" V 8405 5125 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8518 5255 50  0001 C CNN
F 3 "" H 8480 5405 50  0001 C CNN
	1    8480 5405
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U34
U 1 1 59B32EC1
P 8475 5620
F 0 "U34" H 8475 5460 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 8480 5385 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 8475 5620 60  0001 C CNN
F 3 "" H 8475 5620 60  0001 C CNN
	1    8475 5620
	1    0    0    -1  
$EndComp
Text GLabel 7960 5670 0    60   Input ~ 0
GND
Text GLabel 8925 5570 2    60   Input ~ 0
VCC
Wire Wire Line
	8630 5405 8925 5405
Wire Wire Line
	8925 5405 8925 5570
Wire Wire Line
	8025 5670 7960 5670
Wire Wire Line
	8330 5405 7960 5405
Wire Wire Line
	7960 5405 7960 5670
Wire Wire Line
	8025 5570 7655 5570
Wire Wire Line
	7655 5570 7655 5670
Wire Wire Line
	7655 5670 7260 5670
$Comp
L device:C C35
U 1 1 59B32ED1
P 10145 5405
F 0 "C35" V 10060 5495 50  0000 L CNN
F 1 "100nF" V 10070 5125 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10183 5255 50  0001 C CNN
F 3 "" H 10145 5405 50  0001 C CNN
	1    10145 5405
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U35
U 1 1 59B32ED7
P 10140 5620
F 0 "U35" H 10140 5460 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 10145 5385 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 10140 5620 60  0001 C CNN
F 3 "" H 10140 5620 60  0001 C CNN
	1    10140 5620
	1    0    0    -1  
$EndComp
Text GLabel 9625 5670 0    60   Input ~ 0
GND
Text GLabel 10590 5570 2    60   Input ~ 0
VCC
Wire Wire Line
	10295 5405 10590 5405
Wire Wire Line
	10590 5405 10590 5570
Wire Wire Line
	9690 5670 9625 5670
Wire Wire Line
	9995 5405 9625 5405
Wire Wire Line
	9625 5405 9625 5670
Wire Wire Line
	9690 5570 9320 5570
Wire Wire Line
	9320 5570 9320 5670
Wire Wire Line
	9320 5670 8925 5670
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U36
U 1 1 59B32EED
P 11805 5620
F 0 "U36" H 11805 5460 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 11810 5385 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 11805 5620 60  0001 C CNN
F 3 "" H 11805 5620 60  0001 C CNN
	1    11805 5620
	1    0    0    -1  
$EndComp
Text GLabel 11290 5670 0    60   Input ~ 0
GND
Text GLabel 12255 5570 2    60   Input ~ 0
VCC
Wire Wire Line
	11960 5405 12255 5405
Wire Wire Line
	12255 5405 12255 5570
Wire Wire Line
	11355 5670 11290 5670
Wire Wire Line
	11660 5405 11290 5405
Wire Wire Line
	11290 5405 11290 5670
Wire Wire Line
	11355 5570 10985 5570
Wire Wire Line
	10985 5570 10985 5670
Wire Wire Line
	10985 5670 10590 5670
$Comp
L device:C C37
U 1 1 59B32EFD
P 3560 6250
F 0 "C37" V 3475 6340 50  0000 L CNN
F 1 "100nF" V 3485 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3598 6100 50  0001 C CNN
F 3 "" H 3560 6250 50  0001 C CNN
	1    3560 6250
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U37
U 1 1 59B32F03
P 3555 6465
F 0 "U37" H 3555 6305 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 3560 6230 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 3555 6465 60  0001 C CNN
F 3 "" H 3555 6465 60  0001 C CNN
	1    3555 6465
	1    0    0    -1  
$EndComp
Text GLabel 3040 6515 0    60   Input ~ 0
GND
Text GLabel 4005 6415 2    60   Input ~ 0
VCC
Wire Wire Line
	3710 6250 4005 6250
Wire Wire Line
	4005 6250 4005 6415
Wire Wire Line
	3105 6515 3040 6515
Wire Wire Line
	3410 6250 3040 6250
Wire Wire Line
	3040 6250 3040 6515
$Comp
L device:C C38
U 1 1 59B32F10
P 5225 6250
F 0 "C38" V 5140 6340 50  0000 L CNN
F 1 "100nF" V 5150 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5263 6100 50  0001 C CNN
F 3 "" H 5225 6250 50  0001 C CNN
	1    5225 6250
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U38
U 1 1 59B32F16
P 5220 6465
F 0 "U38" H 5220 6305 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 5225 6230 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 5220 6465 60  0001 C CNN
F 3 "" H 5220 6465 60  0001 C CNN
	1    5220 6465
	1    0    0    -1  
$EndComp
Text GLabel 4705 6515 0    60   Input ~ 0
GND
Text GLabel 5670 6415 2    60   Input ~ 0
VCC
Wire Wire Line
	5375 6250 5670 6250
Wire Wire Line
	5670 6250 5670 6415
Wire Wire Line
	4770 6515 4705 6515
Wire Wire Line
	5075 6250 4705 6250
Wire Wire Line
	4705 6250 4705 6515
Wire Wire Line
	4770 6415 4400 6415
Wire Wire Line
	4400 6415 4400 6515
Wire Wire Line
	4400 6515 4005 6515
$Comp
L device:C C39
U 1 1 59B32F26
P 6890 6250
F 0 "C39" V 6805 6340 50  0000 L CNN
F 1 "100nF" V 6815 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6928 6100 50  0001 C CNN
F 3 "" H 6890 6250 50  0001 C CNN
	1    6890 6250
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U39
U 1 1 59B32F2C
P 6885 6465
F 0 "U39" H 6885 6305 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 6890 6230 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 6885 6465 60  0001 C CNN
F 3 "" H 6885 6465 60  0001 C CNN
	1    6885 6465
	1    0    0    -1  
$EndComp
Text GLabel 6370 6515 0    60   Input ~ 0
GND
Text GLabel 7335 6415 2    60   Input ~ 0
VCC
Wire Wire Line
	7040 6250 7335 6250
Wire Wire Line
	7335 6250 7335 6415
Wire Wire Line
	6435 6515 6370 6515
Wire Wire Line
	6740 6250 6370 6250
Wire Wire Line
	6370 6250 6370 6515
Wire Wire Line
	6435 6415 6065 6415
Wire Wire Line
	6065 6415 6065 6515
Wire Wire Line
	6065 6515 5670 6515
$Comp
L device:C C40
U 1 1 59B32F3C
P 8555 6250
F 0 "C40" V 8470 6340 50  0000 L CNN
F 1 "100nF" V 8480 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8593 6100 50  0001 C CNN
F 3 "" H 8555 6250 50  0001 C CNN
	1    8555 6250
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U40
U 1 1 59B32F42
P 8550 6465
F 0 "U40" H 8550 6305 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 8555 6230 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 8550 6465 60  0001 C CNN
F 3 "" H 8550 6465 60  0001 C CNN
	1    8550 6465
	1    0    0    -1  
$EndComp
Text GLabel 8035 6515 0    60   Input ~ 0
GND
Text GLabel 9000 6415 2    60   Input ~ 0
VCC
Wire Wire Line
	8705 6250 9000 6250
Wire Wire Line
	9000 6250 9000 6415
Wire Wire Line
	8100 6515 8035 6515
Wire Wire Line
	8405 6250 8035 6250
Wire Wire Line
	8035 6250 8035 6515
Wire Wire Line
	8100 6415 7730 6415
Wire Wire Line
	7730 6415 7730 6515
Wire Wire Line
	7730 6515 7335 6515
$Comp
L device:C C41
U 1 1 59B32F52
P 10220 6250
F 0 "C41" V 10135 6340 50  0000 L CNN
F 1 "100nF" V 10145 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10258 6100 50  0001 C CNN
F 3 "" H 10220 6250 50  0001 C CNN
	1    10220 6250
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U41
U 1 1 59B32F58
P 10215 6465
F 0 "U41" H 10215 6305 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 10220 6230 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 10215 6465 60  0001 C CNN
F 3 "" H 10215 6465 60  0001 C CNN
	1    10215 6465
	1    0    0    -1  
$EndComp
Text GLabel 9700 6515 0    60   Input ~ 0
GND
Text GLabel 10665 6415 2    60   Input ~ 0
VCC
Wire Wire Line
	10370 6250 10665 6250
Wire Wire Line
	10665 6250 10665 6415
Wire Wire Line
	9765 6515 9700 6515
Wire Wire Line
	10070 6250 9700 6250
Wire Wire Line
	9700 6250 9700 6515
Wire Wire Line
	9765 6415 9395 6415
Wire Wire Line
	9395 6415 9395 6515
Wire Wire Line
	9395 6515 9000 6515
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U42
U 1 1 59B32F6E
P 11880 6465
F 0 "U42" H 11880 6305 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 11885 6230 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 11880 6465 60  0001 C CNN
F 3 "" H 11880 6465 60  0001 C CNN
	1    11880 6465
	1    0    0    -1  
$EndComp
Text GLabel 11365 6515 0    60   Input ~ 0
GND
Text GLabel 12330 6415 2    60   Input ~ 0
VCC
Wire Wire Line
	12035 6250 12330 6250
Wire Wire Line
	12330 6250 12330 6415
Wire Wire Line
	11430 6515 11365 6515
Wire Wire Line
	11735 6250 11365 6250
Wire Wire Line
	11365 6250 11365 6515
Wire Wire Line
	11430 6415 11060 6415
Wire Wire Line
	11060 6415 11060 6515
Wire Wire Line
	11060 6515 10665 6515
$Comp
L device:C C43
U 1 1 59B32F7E
P 3560 7005
F 0 "C43" V 3475 7095 50  0000 L CNN
F 1 "100nF" V 3485 6725 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3598 6855 50  0001 C CNN
F 3 "" H 3560 7005 50  0001 C CNN
	1    3560 7005
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U43
U 1 1 59B32F84
P 3555 7220
F 0 "U43" H 3555 7060 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 3560 6985 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 3555 7220 60  0001 C CNN
F 3 "" H 3555 7220 60  0001 C CNN
	1    3555 7220
	1    0    0    -1  
$EndComp
Text GLabel 3040 7270 0    60   Input ~ 0
GND
Text GLabel 4005 7170 2    60   Input ~ 0
VCC
Wire Wire Line
	3710 7005 4005 7005
Wire Wire Line
	4005 7005 4005 7170
Wire Wire Line
	3105 7270 3040 7270
Wire Wire Line
	3410 7005 3040 7005
Wire Wire Line
	3040 7005 3040 7270
$Comp
L device:C C44
U 1 1 59B32F91
P 5225 7005
F 0 "C44" V 5140 7095 50  0000 L CNN
F 1 "100nF" V 5150 6725 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5263 6855 50  0001 C CNN
F 3 "" H 5225 7005 50  0001 C CNN
	1    5225 7005
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U44
U 1 1 59B32F97
P 5220 7220
F 0 "U44" H 5220 7060 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 5225 6985 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 5220 7220 60  0001 C CNN
F 3 "" H 5220 7220 60  0001 C CNN
	1    5220 7220
	1    0    0    -1  
$EndComp
Text GLabel 4705 7270 0    60   Input ~ 0
GND
Text GLabel 5670 7170 2    60   Input ~ 0
VCC
Wire Wire Line
	5375 7005 5670 7005
Wire Wire Line
	5670 7005 5670 7170
Wire Wire Line
	4770 7270 4705 7270
Wire Wire Line
	5075 7005 4705 7005
Wire Wire Line
	4705 7005 4705 7270
Wire Wire Line
	4770 7170 4400 7170
Wire Wire Line
	4400 7170 4400 7270
Wire Wire Line
	4400 7270 4005 7270
$Comp
L device:C C45
U 1 1 59B32FA7
P 6890 7005
F 0 "C45" V 6805 7095 50  0000 L CNN
F 1 "100nF" V 6815 6725 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6928 6855 50  0001 C CNN
F 3 "" H 6890 7005 50  0001 C CNN
	1    6890 7005
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U45
U 1 1 59B32FAD
P 6885 7220
F 0 "U45" H 6885 7060 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 6890 6985 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 6885 7220 60  0001 C CNN
F 3 "" H 6885 7220 60  0001 C CNN
	1    6885 7220
	1    0    0    -1  
$EndComp
Text GLabel 6370 7270 0    60   Input ~ 0
GND
Text GLabel 7335 7170 2    60   Input ~ 0
VCC
Wire Wire Line
	7040 7005 7335 7005
Wire Wire Line
	7335 7005 7335 7170
Wire Wire Line
	6435 7270 6370 7270
Wire Wire Line
	6740 7005 6370 7005
Wire Wire Line
	6370 7005 6370 7270
Wire Wire Line
	6435 7170 6065 7170
Wire Wire Line
	6065 7170 6065 7270
Wire Wire Line
	6065 7270 5670 7270
$Comp
L device:C C46
U 1 1 59B32FBD
P 8555 7005
F 0 "C46" V 8470 7095 50  0000 L CNN
F 1 "100nF" V 8480 6725 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8593 6855 50  0001 C CNN
F 3 "" H 8555 7005 50  0001 C CNN
	1    8555 7005
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U46
U 1 1 59B32FC3
P 8550 7220
F 0 "U46" H 8550 7060 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 8555 6985 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 8550 7220 60  0001 C CNN
F 3 "" H 8550 7220 60  0001 C CNN
	1    8550 7220
	1    0    0    -1  
$EndComp
Text GLabel 8035 7270 0    60   Input ~ 0
GND
Text GLabel 9000 7170 2    60   Input ~ 0
VCC
Wire Wire Line
	8705 7005 9000 7005
Wire Wire Line
	9000 7005 9000 7170
Wire Wire Line
	8100 7270 8035 7270
Wire Wire Line
	8405 7005 8035 7005
Wire Wire Line
	8035 7005 8035 7270
Wire Wire Line
	8100 7170 7730 7170
Wire Wire Line
	7730 7170 7730 7270
Wire Wire Line
	7730 7270 7335 7270
$Comp
L device:C C47
U 1 1 59B32FD3
P 10220 7005
F 0 "C47" V 10135 7095 50  0000 L CNN
F 1 "100nF" V 10145 6725 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10258 6855 50  0001 C CNN
F 3 "" H 10220 7005 50  0001 C CNN
	1    10220 7005
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U47
U 1 1 59B32FD9
P 10215 7220
F 0 "U47" H 10215 7060 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 10220 6985 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 10215 7220 60  0001 C CNN
F 3 "" H 10215 7220 60  0001 C CNN
	1    10215 7220
	1    0    0    -1  
$EndComp
Text GLabel 9700 7270 0    60   Input ~ 0
GND
Text GLabel 10665 7170 2    60   Input ~ 0
VCC
Wire Wire Line
	10370 7005 10665 7005
Wire Wire Line
	10665 7005 10665 7170
Wire Wire Line
	9765 7270 9700 7270
Wire Wire Line
	10070 7005 9700 7005
Wire Wire Line
	9700 7005 9700 7270
Wire Wire Line
	9765 7170 9395 7170
Wire Wire Line
	9395 7170 9395 7270
Wire Wire Line
	9395 7270 9000 7270
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U48
U 1 1 59B32FEF
P 11880 7220
F 0 "U48" H 11880 7060 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 11885 6985 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 11880 7220 60  0001 C CNN
F 3 "" H 11880 7220 60  0001 C CNN
	1    11880 7220
	1    0    0    -1  
$EndComp
Text GLabel 11365 7270 0    60   Input ~ 0
GND
Text GLabel 12330 7170 2    60   Input ~ 0
VCC
Wire Wire Line
	12035 7005 12330 7005
Wire Wire Line
	12330 7005 12330 7170
Wire Wire Line
	11430 7270 11365 7270
Wire Wire Line
	11735 7005 11365 7005
Wire Wire Line
	11365 7005 11365 7270
Wire Wire Line
	11430 7170 11060 7170
Wire Wire Line
	11060 7170 11060 7270
Wire Wire Line
	11060 7270 10665 7270
Wire Wire Line
	12175 1715 12240 1715
Wire Wire Line
	12240 1715 12240 2015
Wire Wire Line
	12175 2470 12225 2470
Wire Wire Line
	12225 2470 12225 2815
Wire Wire Line
	12250 3315 12345 3315
Wire Wire Line
	12345 3315 12345 3620
Wire Wire Line
	12250 4070 12340 4070
Wire Wire Line
	12340 4070 12340 4360
Wire Wire Line
	12255 4915 12355 4915
Wire Wire Line
	12355 4915 12355 5210
Wire Wire Line
	12255 5670 12400 5670
Wire Wire Line
	12400 5670 12400 6015
Wire Wire Line
	12330 6515 12475 6515
Wire Wire Line
	12475 6515 12475 6830
Text GLabel 7320 10155 2    60   Input ~ 0
VCC
Text GLabel 8245 10145 2    60   Input ~ 0
PWM_1
Text GLabel 6295 10150 2    60   Input ~ 0
OC1A
Text GLabel 3445 8920 2    60   Input ~ 0
PWM_1
Text GLabel 3510 9220 2    60   Input ~ 0
VCC
Connection ~ 2930 9220
Connection ~ 2185 9220
Connection ~ 1460 9220
Connection ~ 2930 8920
Connection ~ 2185 8920
Connection ~ 1460 8920
$Comp
L device:C C24
U 1 1 5A204F7A
P 3415 825
F 0 "C24" V 3330 915 50  0000 L CNN
F 1 "100nF" V 3340 545 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3453 675 50  0001 C CNN
F 3 "" H 3415 825 50  0001 C CNN
	1    3415 825 
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U52
U 1 1 5A204F80
P 3410 1040
F 0 "U52" H 3410 880 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 3415 805 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 3410 1040 60  0001 C CNN
F 3 "" H 3410 1040 60  0001 C CNN
	1    3410 1040
	1    0    0    -1  
$EndComp
Text GLabel 2895 1090 0    60   Input ~ 0
GND
Text GLabel 3860 990  2    60   Input ~ 0
VCC
Wire Wire Line
	3565 825  3860 825 
Wire Wire Line
	3860 825  3860 990 
Wire Wire Line
	2960 1090 2895 1090
Wire Wire Line
	3265 825  2895 825 
Wire Wire Line
	2895 825  2895 1090
$Comp
L device:C C30
U 1 1 5A204F8D
P 5080 825
F 0 "C30" V 4995 915 50  0000 L CNN
F 1 "100nF" V 5005 545 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5118 675 50  0001 C CNN
F 3 "" H 5080 825 50  0001 C CNN
	1    5080 825 
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U53
U 1 1 5A204F93
P 5075 1040
F 0 "U53" H 5075 880 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 5080 805 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 5075 1040 60  0001 C CNN
F 3 "" H 5075 1040 60  0001 C CNN
	1    5075 1040
	1    0    0    -1  
$EndComp
Text GLabel 4560 1090 0    60   Input ~ 0
GND
Text GLabel 5525 990  2    60   Input ~ 0
VCC
Wire Wire Line
	5230 825  5525 825 
Wire Wire Line
	5525 825  5525 990 
Wire Wire Line
	4625 1090 4560 1090
Wire Wire Line
	4930 825  4560 825 
Wire Wire Line
	4560 825  4560 1090
Wire Wire Line
	4625 990  4255 990 
Wire Wire Line
	4255 990  4255 1090
Wire Wire Line
	4255 1090 3860 1090
$Comp
L device:C C36
U 1 1 5A204FA3
P 6745 825
F 0 "C36" V 6660 915 50  0000 L CNN
F 1 "100nF" V 6670 545 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6783 675 50  0001 C CNN
F 3 "" H 6745 825 50  0001 C CNN
	1    6745 825 
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U54
U 1 1 5A204FA9
P 6740 1040
F 0 "U54" H 6740 880 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 6745 805 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 6740 1040 60  0001 C CNN
F 3 "" H 6740 1040 60  0001 C CNN
	1    6740 1040
	1    0    0    -1  
$EndComp
Text GLabel 6225 1090 0    60   Input ~ 0
GND
Text GLabel 7190 990  2    60   Input ~ 0
VCC
Wire Wire Line
	6895 825  7190 825 
Wire Wire Line
	7190 825  7190 990 
Wire Wire Line
	6290 1090 6225 1090
Wire Wire Line
	6595 825  6225 825 
Wire Wire Line
	6225 825  6225 1090
Wire Wire Line
	6290 990  5920 990 
Wire Wire Line
	5920 990  5920 1090
Wire Wire Line
	5920 1090 5525 1090
$Comp
L device:C C42
U 1 1 5A204FB9
P 8410 825
F 0 "C42" V 8325 915 50  0000 L CNN
F 1 "100nF" V 8335 545 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8448 675 50  0001 C CNN
F 3 "" H 8410 825 50  0001 C CNN
	1    8410 825 
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U55
U 1 1 5A204FBF
P 8405 1040
F 0 "U55" H 8405 880 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 8410 805 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 8405 1040 60  0001 C CNN
F 3 "" H 8405 1040 60  0001 C CNN
	1    8405 1040
	1    0    0    -1  
$EndComp
Text GLabel 7890 1090 0    60   Input ~ 0
GND
Text GLabel 8855 990  2    60   Input ~ 0
VCC
Wire Wire Line
	8560 825  8855 825 
Wire Wire Line
	8855 825  8855 990 
Wire Wire Line
	7955 1090 7890 1090
Wire Wire Line
	8260 825  7890 825 
Wire Wire Line
	7890 825  7890 1090
Wire Wire Line
	7955 990  7585 990 
Wire Wire Line
	7585 990  7585 1090
Wire Wire Line
	7585 1090 7190 1090
$Comp
L device:C C48
U 1 1 5A204FCF
P 10075 825
F 0 "C48" V 9990 915 50  0000 L CNN
F 1 "100nF" V 10000 545 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10113 675 50  0001 C CNN
F 3 "" H 10075 825 50  0001 C CNN
	1    10075 825 
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U56
U 1 1 5A204FD5
P 10070 1040
F 0 "U56" H 10070 880 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 10075 805 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 10070 1040 60  0001 C CNN
F 3 "" H 10070 1040 60  0001 C CNN
	1    10070 1040
	1    0    0    -1  
$EndComp
Text GLabel 9555 1090 0    60   Input ~ 0
GND
Text GLabel 10520 990  2    60   Input ~ 0
VCC
Wire Wire Line
	10225 825  10520 825 
Wire Wire Line
	10520 825  10520 990 
Wire Wire Line
	9620 1090 9555 1090
Wire Wire Line
	9925 825  9555 825 
Wire Wire Line
	9555 825  9555 1090
Wire Wire Line
	9620 990  9250 990 
Wire Wire Line
	9250 990  9250 1090
Wire Wire Line
	9250 1090 8855 1090
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U57
U 1 1 5A204FE5
P 11735 1040
F 0 "U57" H 11735 880 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 11740 805 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 11735 1040 60  0001 C CNN
F 3 "" H 11735 1040 60  0001 C CNN
	1    11735 1040
	1    0    0    -1  
$EndComp
Text GLabel 11220 1090 0    60   Input ~ 0
GND
Text GLabel 12185 990  2    60   Input ~ 0
VCC
Wire Wire Line
	11890 825  12185 825 
Wire Wire Line
	12185 825  12185 990 
Wire Wire Line
	11285 1090 11220 1090
Wire Wire Line
	11590 825  11220 825 
Wire Wire Line
	11220 825  11220 1090
Wire Wire Line
	11285 990  10915 990 
Wire Wire Line
	10915 990  10915 1090
Wire Wire Line
	10915 1090 10520 1090
Text GLabel 12330 7270 2    60   Input ~ 0
OC1A
Wire Wire Line
	12185 1280 12185 1090
Text GLabel 7340 8580 2    60   Input ~ 0
GND
$Comp
L modular_matrix_rev10-rescue:Mounting_Hole_PAD-RESCUE-modular_matrix_rev10 MK1
U 1 1 5A2554E4
P 7220 10155
F 0 "MK1" V 7220 10380 50  0000 C CNN
F 1 "VCC" V 7345 10210 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 7220 10155 50  0001 C CNN
F 3 "" H 7220 10155 50  0001 C CNN
	1    7220 10155
	0    -1   -1   0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:Mounting_Hole_PAD-RESCUE-modular_matrix_rev10 MK4
U 1 1 5A25610B
P 8145 10145
F 0 "MK4" V 8145 10370 50  0000 C CNN
F 1 "PWM_1" V 8270 10200 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 8145 10145 50  0001 C CNN
F 3 "" H 8145 10145 50  0001 C CNN
	1    8145 10145
	0    -1   -1   0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:Mounting_Hole_PAD-RESCUE-modular_matrix_rev10 MK2
U 1 1 5A2565A6
P 6195 10150
F 0 "MK2" V 6195 10375 50  0000 C CNN
F 1 "OC1A" V 6320 10205 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 6195 10150 50  0001 C CNN
F 3 "" H 6195 10150 50  0001 C CNN
	1    6195 10150
	0    -1   -1   0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:Mounting_Hole_PAD-RESCUE-modular_matrix_rev10 MK3
U 1 1 5A257269
P 7240 8580
F 0 "MK3" V 7240 8805 50  0000 C CNN
F 1 "GND" V 7365 8635 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 7240 8580 50  0001 C CNN
F 3 "" H 7240 8580 50  0001 C CNN
	1    7240 8580
	0    -1   -1   0   
$EndComp
Text GLabel 8300 8580 2    60   Input ~ 0
GND
$Comp
L modular_matrix_rev10-rescue:Mounting_Hole_PAD-RESCUE-modular_matrix_rev10 MK5
U 1 1 5A2603F4
P 8200 8580
F 0 "MK5" V 8200 8805 50  0000 C CNN
F 1 "GND" V 8325 8635 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 8200 8580 50  0001 C CNN
F 3 "" H 8200 8580 50  0001 C CNN
	1    8200 8580
	0    -1   -1   0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:Mounting_Hole_PAD-RESCUE-modular_matrix_rev10 MK6
U 1 1 5A261022
P 6230 8590
F 0 "MK6" V 6230 8815 50  0000 C CNN
F 1 "VCC_OPT" V 6355 8645 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 6230 8590 50  0001 C CNN
F 3 "" H 6230 8590 50  0001 C CNN
	1    6230 8590
	0    -1   -1   0   
$EndComp
Text GLabel 6330 8590 2    60   Input ~ 0
VCC
$Comp
L device:C C50
U 1 1 5A2854CE
P 1675 1460
F 0 "C50" V 1590 1550 50  0000 L CNN
F 1 "100nF" V 1600 1180 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1713 1310 50  0001 C CNN
F 3 "" H 1675 1460 50  0001 C CNN
	1    1675 1460
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U59
U 1 1 5A2854D4
P 1670 1675
F 0 "U59" H 1670 1515 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 1675 1440 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 1670 1675 60  0001 C CNN
F 3 "" H 1670 1675 60  0001 C CNN
	1    1670 1675
	1    0    0    -1  
$EndComp
Text GLabel 1155 1725 0    60   Input ~ 0
GND
Text GLabel 2120 1625 2    60   Input ~ 0
VCC
Wire Wire Line
	1825 1460 2120 1460
Wire Wire Line
	2120 1460 2120 1625
Wire Wire Line
	1220 1725 1155 1725
Wire Wire Line
	1525 1460 1155 1460
Wire Wire Line
	1155 1460 1155 1725
Wire Wire Line
	2515 1725 2120 1725
$Comp
L device:C C51
U 1 1 5A2854E2
P 1675 2215
F 0 "C51" V 1590 2305 50  0000 L CNN
F 1 "100nF" V 1600 1935 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1713 2065 50  0001 C CNN
F 3 "" H 1675 2215 50  0001 C CNN
	1    1675 2215
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U60
U 1 1 5A2854E8
P 1670 2430
F 0 "U60" H 1670 2270 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 1675 2195 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 1670 2430 60  0001 C CNN
F 3 "" H 1670 2430 60  0001 C CNN
	1    1670 2430
	1    0    0    -1  
$EndComp
Text GLabel 1155 2480 0    60   Input ~ 0
GND
Text GLabel 2120 2380 2    60   Input ~ 0
VCC
Wire Wire Line
	1825 2215 2120 2215
Wire Wire Line
	2120 2215 2120 2380
Wire Wire Line
	1220 2480 1155 2480
Wire Wire Line
	1525 2215 1155 2215
Wire Wire Line
	1155 2215 1155 2480
Wire Wire Line
	2515 2480 2120 2480
$Comp
L device:C C52
U 1 1 5A2854F6
P 1750 3060
F 0 "C52" V 1665 3150 50  0000 L CNN
F 1 "100nF" V 1675 2780 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1788 2910 50  0001 C CNN
F 3 "" H 1750 3060 50  0001 C CNN
	1    1750 3060
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U61
U 1 1 5A2854FC
P 1745 3275
F 0 "U61" H 1745 3115 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 1750 3040 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 1745 3275 60  0001 C CNN
F 3 "" H 1745 3275 60  0001 C CNN
	1    1745 3275
	1    0    0    -1  
$EndComp
Text GLabel 1230 3325 0    60   Input ~ 0
GND
Text GLabel 2195 3225 2    60   Input ~ 0
VCC
Wire Wire Line
	1900 3060 2195 3060
Wire Wire Line
	2195 3060 2195 3225
Wire Wire Line
	1295 3325 1230 3325
Wire Wire Line
	1600 3060 1230 3060
Wire Wire Line
	1230 3060 1230 3325
Wire Wire Line
	2590 3325 2195 3325
$Comp
L device:C C53
U 1 1 5A28550A
P 1750 3815
F 0 "C53" V 1665 3905 50  0000 L CNN
F 1 "100nF" V 1675 3535 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1788 3665 50  0001 C CNN
F 3 "" H 1750 3815 50  0001 C CNN
	1    1750 3815
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U62
U 1 1 5A285510
P 1745 4030
F 0 "U62" H 1745 3870 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 1750 3795 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 1745 4030 60  0001 C CNN
F 3 "" H 1745 4030 60  0001 C CNN
	1    1745 4030
	1    0    0    -1  
$EndComp
Text GLabel 1230 4080 0    60   Input ~ 0
GND
Text GLabel 2195 3980 2    60   Input ~ 0
VCC
Wire Wire Line
	1900 3815 2195 3815
Wire Wire Line
	2195 3815 2195 3980
Wire Wire Line
	1295 4080 1230 4080
Wire Wire Line
	1600 3815 1230 3815
Wire Wire Line
	1230 3815 1230 4080
Wire Wire Line
	2590 4080 2195 4080
$Comp
L device:C C54
U 1 1 5A28551E
P 1755 4660
F 0 "C54" V 1670 4750 50  0000 L CNN
F 1 "100nF" V 1680 4380 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1793 4510 50  0001 C CNN
F 3 "" H 1755 4660 50  0001 C CNN
	1    1755 4660
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U63
U 1 1 5A285524
P 1750 4875
F 0 "U63" H 1750 4715 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 1755 4640 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 1750 4875 60  0001 C CNN
F 3 "" H 1750 4875 60  0001 C CNN
	1    1750 4875
	1    0    0    -1  
$EndComp
Text GLabel 1235 4925 0    60   Input ~ 0
GND
Text GLabel 2200 4825 2    60   Input ~ 0
VCC
Wire Wire Line
	1905 4660 2200 4660
Wire Wire Line
	2200 4660 2200 4825
Wire Wire Line
	1300 4925 1235 4925
Wire Wire Line
	1605 4660 1235 4660
Wire Wire Line
	1235 4660 1235 4925
Wire Wire Line
	2595 4925 2200 4925
$Comp
L device:C C55
U 1 1 5A285532
P 1755 5415
F 0 "C55" V 1670 5505 50  0000 L CNN
F 1 "100nF" V 1680 5135 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1793 5265 50  0001 C CNN
F 3 "" H 1755 5415 50  0001 C CNN
	1    1755 5415
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U64
U 1 1 5A285538
P 1750 5630
F 0 "U64" H 1750 5470 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 1755 5395 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 1750 5630 60  0001 C CNN
F 3 "" H 1750 5630 60  0001 C CNN
	1    1750 5630
	1    0    0    -1  
$EndComp
Text GLabel 1235 5680 0    60   Input ~ 0
GND
Text GLabel 2200 5580 2    60   Input ~ 0
VCC
Wire Wire Line
	1905 5415 2200 5415
Wire Wire Line
	2200 5415 2200 5580
Wire Wire Line
	1300 5680 1235 5680
Wire Wire Line
	1605 5415 1235 5415
Wire Wire Line
	1235 5415 1235 5680
Wire Wire Line
	2595 5680 2200 5680
$Comp
L device:C C56
U 1 1 5A285546
P 1830 6260
F 0 "C56" V 1745 6350 50  0000 L CNN
F 1 "100nF" V 1755 5980 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1868 6110 50  0001 C CNN
F 3 "" H 1830 6260 50  0001 C CNN
	1    1830 6260
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U65
U 1 1 5A28554C
P 1825 6475
F 0 "U65" H 1825 6315 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 1830 6240 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 1825 6475 60  0001 C CNN
F 3 "" H 1825 6475 60  0001 C CNN
	1    1825 6475
	1    0    0    -1  
$EndComp
Text GLabel 1310 6525 0    60   Input ~ 0
GND
Text GLabel 2275 6425 2    60   Input ~ 0
VCC
Wire Wire Line
	1980 6260 2275 6260
Wire Wire Line
	2275 6260 2275 6425
Wire Wire Line
	1375 6525 1310 6525
Wire Wire Line
	1680 6260 1310 6260
Wire Wire Line
	1310 6260 1310 6525
Wire Wire Line
	2670 6525 2275 6525
$Comp
L device:C C57
U 1 1 5A28555A
P 1830 7015
F 0 "C57" V 1745 7105 50  0000 L CNN
F 1 "100nF" V 1755 6735 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1868 6865 50  0001 C CNN
F 3 "" H 1830 7015 50  0001 C CNN
	1    1830 7015
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U66
U 1 1 5A285560
P 1825 7230
F 0 "U66" H 1825 7070 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 1830 6995 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 1825 7230 60  0001 C CNN
F 3 "" H 1825 7230 60  0001 C CNN
	1    1825 7230
	1    0    0    -1  
$EndComp
Text GLabel 1310 7280 0    60   Input ~ 0
GND
Text GLabel 2275 7180 2    60   Input ~ 0
VCC
Wire Wire Line
	1980 7015 2275 7015
Wire Wire Line
	2275 7015 2275 7180
Wire Wire Line
	1375 7280 1310 7280
Wire Wire Line
	1680 7015 1310 7015
Wire Wire Line
	1310 7015 1310 7280
Wire Wire Line
	2670 7280 2275 7280
Wire Wire Line
	1220 2015 1220 2380
Wire Wire Line
	1295 2815 1295 3225
Wire Wire Line
	1295 3620 1295 3980
Wire Wire Line
	1300 4360 1300 4825
Wire Wire Line
	1300 5210 1300 5580
Wire Wire Line
	1375 6015 1375 6425
Wire Wire Line
	1375 6830 1375 7180
NoConn ~ 1230 650 
$Comp
L device:C C49
U 1 1 5A28557D
P 1685 835
F 0 "C49" V 1600 925 50  0000 L CNN
F 1 "100nF" V 1610 555 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1723 685 50  0001 C CNN
F 3 "" H 1685 835 50  0001 C CNN
	1    1685 835 
	0    1    1    0   
$EndComp
$Comp
L modular_matrix_rev10-rescue:RGB_ws2812_3535-RESCUE-modular_SMALL_rgb_neopixel_matrix-RESCUE-modular_matrix_rev10 U58
U 1 1 5A285583
P 1680 1050
F 0 "U58" H 1680 890 60  0000 C CNN
F 1 "RGB_ws2812_3535" H 1685 815 60  0000 C CNN
F 2 "lt_foots:SK6812_3535" H 1680 1050 60  0001 C CNN
F 3 "" H 1680 1050 60  0001 C CNN
	1    1680 1050
	1    0    0    -1  
$EndComp
Text GLabel 1165 1100 0    60   Input ~ 0
GND
Text GLabel 2130 1000 2    60   Input ~ 0
VCC
Wire Wire Line
	1835 835  2130 835 
Wire Wire Line
	2130 835  2130 1000
Wire Wire Line
	1230 1100 1165 1100
Wire Wire Line
	1535 835  1165 835 
Wire Wire Line
	1165 835  1165 1100
Wire Wire Line
	2525 1100 2130 1100
Wire Wire Line
	1230 650  1230 1000
Wire Wire Line
	1220 1280 1220 1625
Wire Wire Line
	2525 1100 2525 990 
Wire Wire Line
	2525 990  2960 990 
Wire Wire Line
	2515 1725 2515 1615
Wire Wire Line
	2515 1615 2950 1615
Wire Wire Line
	2515 2480 2515 2370
Wire Wire Line
	2515 2370 2950 2370
Wire Wire Line
	2590 3325 2590 3215
Wire Wire Line
	2590 3215 3025 3215
Wire Wire Line
	2590 4080 2590 3970
Wire Wire Line
	2590 3970 3025 3970
Wire Wire Line
	2595 4925 2595 4815
Wire Wire Line
	2595 4815 3030 4815
Wire Wire Line
	2595 5680 2595 5570
Wire Wire Line
	2595 5570 3030 5570
Wire Wire Line
	2670 6525 2670 6415
Wire Wire Line
	2670 6415 3105 6415
Wire Wire Line
	2670 7280 2670 7170
Wire Wire Line
	2670 7170 3105 7170
Wire Wire Line
	12475 6830 1375 6830
Wire Wire Line
	12400 6015 1375 6015
Wire Wire Line
	12355 5210 1300 5210
Wire Wire Line
	12340 4360 1300 4360
Wire Wire Line
	12345 3620 1295 3620
Wire Wire Line
	12225 2815 1295 2815
Wire Wire Line
	12240 2015 1220 2015
Wire Wire Line
	12185 1280 1220 1280
$Comp
L Conn_01x02_Male J1
U 1 1 5A761D2A
P 5245 9120
F 0 "J1" H 5245 9220 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5085 8970 50  0000 C CNN
F 2 "Pin_Header_Straight_1x02_Pitch2.00mm" H 5245 9120 50  0001 C CNN
F 3 "" H 5245 9120 50  0001 C CNN
	1    5245 9120
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A761F98
P 5795 9165
F 0 "R1" V 5875 9165 50  0000 C CNN
F 1 "10KΩ NTC" V 5695 9180 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5725 9165 50  0001 C CNN
F 3 "" H 5795 9165 50  0001 C CNN
	1    5795 9165
	1    0    0    -1  
$EndComp
Wire Wire Line
	5795 9015 5795 8915
Wire Wire Line
	5795 8915 5445 8915
Wire Wire Line
	5445 8915 5445 9120
Wire Wire Line
	5795 9315 5795 9415
Wire Wire Line
	5795 9415 5445 9415
Wire Wire Line
	5445 9415 5445 9220
$Comp
L LED_PAD D3
U 1 1 5A789ED7
P 2930 9070
F 0 "D3" V 2860 9200 50  0000 C CNN
F 1 "LED_oslon_ssl80" V 2740 9110 50  0000 C CNN
F 2 "lt_foots:LED_osram_oslon_ssl_powerled" H 2930 9070 50  0001 C CNN
F 3 "" H 2930 9070 50  0000 C CNN
	1    2930 9070
	0    1    1    0   
$EndComp
$Comp
L LED_PAD D2
U 1 1 5A78B0E4
P 2185 9070
F 0 "D2" V 2125 9205 50  0000 C CNN
F 1 "LED_oslon_ssl80" V 2005 9130 50  0000 C CNN
F 2 "lt_foots:LED_osram_oslon_ssl_powerled" H 2185 9070 50  0001 C CNN
F 3 "" H 2185 9070 50  0000 C CNN
	1    2185 9070
	0    1    1    0   
$EndComp
$Comp
L LED_PAD D1
U 1 1 5A78B4B3
P 1460 9070
F 0 "D1" V 1395 9200 50  0000 C CNN
F 1 "LED_oslon_ssl80" V 1285 9125 50  0000 C CNN
F 2 "lt_foots:LED_osram_oslon_ssl_powerled" H 1460 9070 50  0001 C CNN
F 3 "" H 1460 9070 50  0000 C CNN
	1    1460 9070
	0    1    1    0   
$EndComp
NoConn ~ 2730 9070
NoConn ~ 1260 9070
NoConn ~ 1985 9070
Wire Wire Line
	1460 8920 3445 8920
Wire Wire Line
	1460 9220 3510 9220
$EndSCHEMATC
