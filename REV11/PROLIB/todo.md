TODO:

Init for the ATMEGA32U4 

desired features :


- communication via USB (bootloader)
- serial console
- is it possible to show the eeprom as USB drive to upload pixelimages ??

- battery monitoring

- powersaving modes 
- gyro dependent sleep mode with adjustable timeout (if the lamp rests it dims after say 30 seconds and goes to powerdown after a minute)
- lock (override) button (disables gyro dependent sleep mode)
- powerdown mode (wakeup with external hardware interrupt (BUTTON1))

- spi eeprom communication (external and internal) for storage of settings images etc. (#include <EEPROM.h>)

- i2c libs  #include <Wire.h>

- gyro libs 

- WS2812 lib #include <WS2812.h>

- integrate oled #include <U8g2lib.h>

- temperatur control of the matrix (NTC)

- display of MIMU temperature data (IMU)

PIN RELATIONS: 


pin  : arduino pin : device connected

pin1  : PE6 : single switch / switch 1 / powerdown and wakeup / active low / INT6

pin8  : CS : ext flash spi bus

pin9  : SCK : ext flash spi / isp header

pin10 : MOSI : ext flash spi / isp header

pin11 : MISO : ext flash spi / isp header

pin13 : RESET :  isp header


pin12 : PB7 (OC0A) : power leds (75 % duty cycle MAX) you can very quickly overdrive and destroy the leds if burning at full power !!!!!!!!!! / POWER 

pin18 : SCL : i2c bus / oled SSD1306 / LSM6DS3(TR) gyro

pin19 : SDA : i2c bus / oled SSD1306 / LSM6DS3(TR) gyro

pin20 : PD2 : gyro interrupt 1 (LSM6DS3 INT1)

pin21 : PD3 : 3V3 regulator enable pin / active high / POWER

pin22 : PD5 : Matrix power switch / active high / POWER


pin25 : PD4 : status led 1 / green / active high

pin26 : PD6 : status led 2 / yellow / active high

pin27 : PD7 : status led 3 / red / active high

pin28 : PB4 : status led 4 / blue / pink / active high

pin29 : PB5 (OC1A) : matrix signal / pwm

pin30 : PB6 : frame(button) leds / active high

pin31 : PC6 : rockerswitch / switch 2 / down / active low

pin32 : PC7 : rockerswitch / switch 3 / push / active low

pin33 : PE2 : rockerswitch / switch 4 / up / active low

pin36 : PF7 : TDI / jtag interface

pin37 : PF6 : TDO / jtag interface

pin38 : PF5 : TMS / jtag interface

pin39 : PF6 : TCK / jtag interface

pin41 : PF0 (ADC0) : NTC / power led temperature sensor / analog




mtc / eof
