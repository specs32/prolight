/* 
 * File: test_blink.c
 * Description: Toggels pins and pullups
 */

#define F_CPU 8000000UL

#include <avr/io.h>
#include <util/delay.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>
#include <math.h>
#include <time.h>
#include <avr/eeprom.h>

#include <ws2812/ws2812.h>

#include <arduino/Arduino.h>


const int REGPWR = PD6;              // 3v3 POWER SUPPLY
const int MATPWR = PC6;           // Matrix power supply

const int BUTTON = PE6;            // define INT button pin
const int BUTTON_DOWN = PE2;          // define the other button pin 
const int BUTTON_PUSH = PC7;          // define the other button pin 
const int BUTTON_UP = PC6;          // define the other button pin 

const int WHITELED = PB7;                // PowerLED PWM control.

const int RED = PB4;               // Battery Indicator Pin
const int YELLOW = PD7;            // Battery Indicator Pin
const int GREEN = PD6;            // Battery Indicator Pin
const int PINK = PD4;             // Battery Indicator Pin
const int BUTTONLED = PB0;             // Battery Indicator Pin


const int PIXELCount = 63;
const int outputPin = PD5;
 
WS2812 PIXEL(PIXELCount); 
cRGB value;



int AcX,AcY,AcZ,Tmp,GyX,GyY,GyZ;
int bounceTime = 50;              // define button debounce
int holdTime = 250;               // define button hold time
int doubleTime = 500;             // define button doubleclick time
int lastReading = 1;            // button read value
int hold = 0;                     // button hold value
int single = 0;                   // button single press value
long onTime = 0;                  // button read ontime
long lastSwitchTime = 0;          // button switchtime value
long steps = 0;                  // value for smooth fading
int lightMode = 0;                // set lightmode value
int lightState = 0;                // set lightstate value








// calculate temp in °C from ntc (just to make the values clearer(for me))
double Thermistor(int RawADC) {
  double Temp;
  Temp = log(10000.0*((1024.0/RawADC-1))); 
  Temp = 1 / (0.001129148 + (0.000234125 + (0.0000000876741 * Temp * Temp ))* Temp );
  Temp = Temp - 273.15;          
  return Temp;
  }


//  check supply voltage
long readVcc() {
  ADMUX = _BV(REFS0) | _BV(MUX4) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
  delay(4);                           // Wait for Vref to settle
  ADCSRA |= _BV(ADSC);                // Start conversion
  while (bit_is_set(ADCSRA,ADSC));    // measuring
  uint8_t low  = ADCL;                // must read ADCL first - it then locks ADCH  
  uint8_t high = ADCH;                // unlocks both
  long result = (high<<8) | low;
  result = 1225300L / result;         // Calculate Vcc <--- ADJUST since it can be 10 % off (default 1.23V) 
  return result;                      // Vcc in millivolts
}





int main (void) {

// enable 3v3 supply    
  
   DDRD |= (1 << REGPWR);
	PORTD |= (1 << REGPWR);

  // matrix power supply  

   DDRC |= (1 << MATPWR);
	PORTC |= (1 << MATPWR);
  


  
   // buttons

	DDRE &= ~(1 << BUTTON);
	DDRE &= ~(1 << BUTTON_DOWN);
	DDRC &= ~(1 << BUTTON_UP);
	DDRC &= ~(1 << BUTTON_PUSH);   

	PORTE |= (1 << BUTTON);
	PORTE |= (1 << BUTTON_DOWN);
	PORTC |= (1 << BUTTON_UP);
	PORTC |= (1 << BUTTON_PUSH);


  // stat STATclear()
   DDRB |= (1 << RED);
   DDRD |= (1 << YELLOW);
   DDRD |= (1 << GREEN);
   DDRD |= (1 << PINK);
   DDRD |= (1 << BUTTONLED);

	PORTB |= (1 << RED);
	PORTD |= (1 << YELLOW);
	PORTD |= (1 << GREEN);
	PORTD |= (1 << PINK);
	PORTD |= (1 << BUTTONLED);


  
  // pocketsun


 // ws2812_light


   
   while(1) {  // MAIN LOOP STARTS


// Button routine INPUT_PULLUP activated !!!! BUTTON IS INVERS LOW == PRESSED

int reading = BUTTON;

//button first pressed
  if (reading == 0 && lastReading == 1) {
    onTime = millis();
  }

//button held
  if (reading == 0 && lastReading == 0) {
    if ((millis() - onTime) > holdTime) {

  // DO SOMETHING WHILE HOLDING


      hold = 1;
    }
  }

// button released (is it ?)

  if (reading == 1 && lastReading == 0) {
    if (((millis() - onTime) > bounceTime) && hold != 1) {
      onRelease();
    }

    if (hold == 1) {

    // DO SOMETHING if released after hold, restore normal operation

                                   

    hold = 0;
    }   
  }
  
  lastReading = reading;
  
  if (single == 1 && (millis() - lastSwitchTime) > doubleTime) {

// DO SOMETHING button single click (set matrix brightness)




    single = 0;
  }

//BUTTON ROUTINE END




//onrelease button





   return 0;
}
}