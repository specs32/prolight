TODO:

Init for the ATMEGA32U4 

desired features :


- communication via USB (bootloader)  (done ! / modified HOODLOADER2)
- serial console (done !)
- is it possible to show the eeprom as USB drive to upload pixelimages ??

- battery monitoring  (done !)

- powersaving modes  (done !)
- gyro dependent sleep mode with adjustable timeout (if the lamp rests it dims after say 30 seconds and goes to powerdown after a minute)
- lock (override) button (disables gyro dependent sleep mode)
- powerdown mode (wakeup with external hardware interrupt (BUTTON1)) (done !)

- spi eeprom communication (external and internal) for storage of settings images etc. (#include <EEPROM.h>)

- i2c libs  #include <Wire.h>  (done !)

- gyro libs  (done ! / sparkfun lsm6)

- WS2812 lib #include <WS2812.h>  (done !)

- integrate oled #include <U8g2lib.h> (sort of works)

- temperatur control of the matrix (NTC) (matrix is rebuild but not reordered) 

- display of MIMU temperature data (IMU)  (done !)

PIN RELATIONS: (check pins_aruduino.h in modified hoodloader2)


pin  : AVR pin : device connected

pin1  : PE6 : single switch / switch 1 / powerdown and wakeup / active low / INT6

pin8  : CS : ext flash spi bus

pin9  : SCK : ext flash spi / isp header
pin10 : MOSI : ext flash spi / isp header
pin11 : MISO : ext flash spi / isp header
pin13 : RESET :  isp header


pin12 : PB7 (OC1C) : power leds (75 % duty cycle MAX) you can very quickly overdrive and destroy the leds if burning at full power !!!!!!!!!! / POWER 

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

pin31 : PC6 : switch 2 / active low
pin32 : PC7 : switch 3 / active low

// pin33 : PE2 : rockerswitch / switch 4 / up / active low   (removed !)

pin36 : PF7 : TDI / jtag interface
pin37 : PF6 : TDO / jtag interface
pin38 : PF5 : TMS / jtag interface
pin39 : PF6 : TCK / jtag interface

pin41 : PF0 (ADC0) : NTC / power led temperature sensor / analog

(updated  3. mai 2018)

___





