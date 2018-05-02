// latest GPL 
//
// neopixel matrix, LSM6DS3 Gyro, atmega 32u4 @ internal 8MHz
//
//
#include <Arduino.h>
#include <util/delay.h>
#include <avr/io.h>
#include <avr/sleep.h>
#include <avr/power.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <math.h>
#include <time.h>
#include <Wire.h>
#include <WS2812.h>

#include "SparkFunLSM6DS3.h" // gyro


const int REGPWR = 1;              // 3v3 POWER SUPPLY PD3
const int MATPWR = 30;           // Matrix power supply 

const int BUTTON = 7;            // define INT button pinPE6
const int BUTTON_UP = 5;          // define the other button pin PC6
const int BUTTON_PUSH = 13;          // define the other button pin PC7
const int BUTTON_DOWN = 31;          // define the other button pin PE2

const int WHITELED = 11;                // PowerLED PWM control. (OC1C // OC0A // PB7)

const int RED = 8;               // Battery Indicator PinPB4
const int YELLOW = 6;            // Battery Indicator PinPD7
const int GREEN = 12;            // Battery Indicator PinPD6
const int PINK = 4;             // Battery Indicator PinPD4
const int BUTTONLED = 10;             // Battery Indicator PinPB6

int up_lastReading = HIGH;            // button read value
long up_onTime = 0;                  // button read ontime
long up_lastSwitchTime = 0;          // button switchtime value
int up_hold = 0;                     // button hold value
int up_single = 0;                   // button single press value

int push_lastReading = HIGH;            // button read value
long push_onTime = 0;                  // button read ontime
long push_lastSwitchTime = 0;          // button switchtime value
int push_hold = 0;                     // button hold value
int push_single = 0;                   // button single press value

int down_lastReading = HIGH;            // button read value
long down_onTime = 0;                  // button read ontime
long down_lastSwitchTime = 0;          // button switchtime value
int down_hold = 0;                     // button hold value
int down_single = 0;                   // button single press value


int lastReading = HIGH;            // button read value
long onTime = 0;                  // button read ontime
long lastSwitchTime = 0;          // button switchtime value
int hold = 0;                     // button hold value
int single = 0;                   // button single press value

const int bounceTime = 50;              // define button debounce
const int holdTime = 250;               // define button hold time
const int doubleTime = 500;             // define button doubleclick time

int lightState = 0;                // set lightstate value


int xlastReading = HIGH;            // button read value
int xhold = 0;                     // button hold value
int xsingle = 0;                   // button single press value
long xonTime = 0;                  // button read ontime
long xlastSwitchTime = 0;          // button switchtime value

int XLEDstate = 0;               // WHITELED off 
int xpreviousLEDstate = 0;       // previous ledstate 

LSM6DS3 myIMU( I2C_MODE, 0x6A );  //I2C device address 0x6A

#define PIXELCount 63
#define outputPin 9

WS2812 PIXEL(PIXELCount); 
cRGB value;

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

  ADMUX = _BV(REFS0)  | _BV(MUX4) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);

  delay(4);                           // Wait for Vref to settle
  ADCSRA |= _BV(ADSC);                // Start conversion
  while (bit_is_set(ADCSRA,ADSC));    // measuring

  uint8_t low  = ADCL;                // must read ADCL first - it then locks ADCH  
  uint8_t high = ADCH;                // unlocks both

  long result = (high<<8) | low;

  result = 1100000L / result;         // Calculate Vcc <--- ADJUST since it can be 10 % off (default 1.23V) 

  return result;                      // Vcc in millivolts
}

void setup() {


  //Serial.begin(9600);  // for debugging

//define PIN Modes


// 3v3 regulator
  pinMode(REGPWR, OUTPUT);
  digitalWrite(REGPWR, HIGH);        // enable 

// matrix power mosfet
  pinMode(MATPWR, OUTPUT);
  digitalWrite(MATPWR, HIGH);  // enable
  
  

  // buttons
  pinMode(BUTTON, INPUT_PULLUP);
  pinMode(BUTTON_UP, INPUT_PULLUP);
  pinMode(BUTTON_DOWN, INPUT_PULLUP);
  pinMode(BUTTON_PUSH, INPUT_PULLUP);
  
  

// status leds
  pinMode(RED, OUTPUT);
  pinMode(YELLOW, OUTPUT);
  pinMode(GREEN, OUTPUT);
  pinMode(PINK, OUTPUT);
  pinMode(BUTTONLED, OUTPUT);

  digitalWrite(BUTTONLED, HIGH);  // enable


// pocketsun
  pinMode(WHITELED, OUTPUT);    // 
  analogWrite(WHITELED, 0);  // start value

// FastPWM @ 32kHz for the WHITELED (OC1C)
 TCCR1A = _BV(COM1C1) | _BV(WGM10) | _BV(WGM12); 
 TCCR1B = _BV(CS00) ;



// ws2812_light
 PIXEL.setOutput(outputPin);  
 PIXEL.setColorOrderGRB(); // for sk6812

// Gyro
 myIMU.begin();



}




// start main loop 
void loop() {

// TEMP CHECK 

  ADMUX = _BV(REFS0) |_BV(REFS1);
  int val;                
  double temp;            
  val=analogRead(0);      
  temp=Thermistor(val); 

//Serial.print(" temp = "); 
//Serial.println(temp);
//delay(500);

// 

while(temp > 50){ // TODO: change Matrix layout for NTC... REV11 does not work, not enough thermal coupling !!
 
    digitalWrite(RED, 1);
    delay(50);
    digitalWrite(RED, 0);
    delay(50);

    analogWrite(WHITELED, 10); // WHITELED LOWEST SETTING (dont leeave user in total darkness)
    

    // doublecheck
    ADMUX = _BV(REFS0) |_BV(REFS1); // reinitialize admux !!
    int val;                
    double temp;            
    val=analogRead(0);      
    temp=Thermistor(val); 
    
    //Serial.print("LEDSIDE NTC (triggered and rechecked) : ");
    //Serial.println(temp);
    
    // if temperatur falls below 40°C go to some higher brightness ...

    if (temp < 30){


    analogWrite(WHITELED, XLEDstate); // give brightness back to where it was.



    break;  // and exit the loop
    }
} 
// TEMP CHECK end

// Button UP routine 

int up_reading = digitalRead(BUTTON_UP);

//button first pressed
  if (up_reading == LOW && up_lastReading == HIGH) {
    up_onTime = millis();
  }

//button held !
  if (up_reading == LOW && up_lastReading == LOW) {
    if ((millis() - up_onTime) > holdTime) {

// 
// do something when held                               
//  VOLTCHECK();


      up_hold = 1;
    }
  }

// button released (is it ?)

  if (up_reading == HIGH && up_lastReading == LOW) {
    if (((millis() - up_onTime) > bounceTime) && up_hold != 1) {
      onUPRelease();
    }

    if (up_hold == 1) {

    // if released after hold, restore normal operation

    up_hold = 0;
    }   
  }
  
  up_lastReading = up_reading;
  
  if (up_single == 1 && (millis() - up_lastSwitchTime) > doubleTime) {

// button single click (set matrix brightness)

    WHITELEDSTATE_UP();

    up_single = 0;
  }

// Button UP END


// Button PUSH routine 

int push_reading = digitalRead(BUTTON_PUSH);

//button first pressed
  if (push_reading == LOW && push_lastReading == HIGH) {
    push_onTime = millis();
  }

//button held !
  if (push_reading == LOW && push_lastReading == LOW) {
    if ((millis() - push_onTime) > holdTime) {

// 
// do something when held
BATCHECK();

      push_hold = 1;
    }
  }

// button released (is it ?)

  if (push_reading == HIGH && push_lastReading == LOW) {
    if (((millis() - push_onTime) > bounceTime) && push_hold != 1) {
      onPUSHRelease();
    }

    if (push_hold == 1) {

    // if released after hold, restore normal operation
    blank();
    
    push_hold = 0;
    }   
  }
  
  push_lastReading = push_reading;
  
  if (push_single == 1 && (millis() - push_lastSwitchTime) > doubleTime) {

// button single click (set matrix brightness)

    LEDSTATE();

    push_single = 0;
  }

// BUTTON push END !


// Button DOWN routine 

int down_reading = digitalRead(BUTTON_DOWN);

//button first pressed
  if (down_reading == LOW && down_lastReading == HIGH) {
    down_onTime = millis();
  }

//button held !
  if (down_reading == LOW && down_lastReading == LOW) {
    if ((millis() - down_onTime) > holdTime) {

// do something 
LEVELS();

      down_hold = 1;
    }
  }

// button released (is it ?)

  if (down_reading == HIGH && down_lastReading == LOW) {
    if (((millis() - down_onTime) > bounceTime) && down_hold != 1) {
      onDOWNRelease();
    }

    if (down_hold == 1) {
    // if released after hold, restore normal operation
    // do something

    down_hold = 0;
    }   
  }
  
  down_lastReading = down_reading;
  
  if (down_single == 1 && (millis() - down_lastSwitchTime) > doubleTime) {

// button single click 

    WHITELEDSTATE_DOWN();

    down_single = 0;
  }


// INT BUTTON routine

int xreading = digitalRead(BUTTON);

//button first pressed
  if (xreading == LOW && xlastReading == HIGH) {
    xonTime = millis();
  }

//button held 
  if (xreading == LOW && xlastReading == LOW) {
    if ((millis() - xonTime) > holdTime) {

  // do something
  // prepare powerdown
  bedtime();
  
      xhold = 1;
    }
  }

// button released (is it ?)

  if (xreading == HIGH && xlastReading == LOW) {
    if (((millis() - xonTime) > bounceTime) && xhold != 1) {
      xonRelease();
    }

    if (xhold == 1) {
    // if released after hold... 
    // powerdown now !

    sleepNow();
    
    xhold = 0;
    }   
  }
  
  xlastReading = xreading;
  
  if (xsingle == 1 && (millis() - xlastSwitchTime) > doubleTime) {

  // button single click (set brightness MATRIX)
  // do something

  

  
  xsingle = 0;
  }
}


// MAINLOOP END
// MAINLOOP END
// MAINLOOP END


//onDOWNRelease button function

void onDOWNRelease() {

// was it not a single click ?

  if ((millis() - down_lastSwitchTime) >= doubleTime) {
    down_single = 1;
    down_lastSwitchTime = millis();
    return;
  }  

// was it a double click ?

  if ((millis() - down_lastSwitchTime) < doubleTime) {

// do something
//
      down_single = 0;
      down_lastSwitchTime = millis();
  }  
}


//onPUSHRelease button function

void onPUSHRelease() {

// was it not a single click ?

  if ((millis() - push_lastSwitchTime) >= doubleTime) {
    push_single = 1;
    push_lastSwitchTime = millis();
    return;
  }  

// was it a double click ?

  if ((millis() - push_lastSwitchTime) < doubleTime) {

// do something
//

      push_single = 0;
      push_lastSwitchTime = millis();
  }  
}


//onUPRelease button function

void onUPRelease() {

// was it not a single click ?

  if ((millis() - up_lastSwitchTime) >= doubleTime) {
    up_single = 1;
    up_lastSwitchTime = millis();
    return;
  }  

// was it a double click ?

  if ((millis() - up_lastSwitchTime) < doubleTime) {


// do something
//

      up_single = 0;
      up_lastSwitchTime = millis();
  }  
}


// Xonrelease button function (POWERSAVE)
void xonRelease() {

// was it not a single click ?

  if ((millis() - xlastSwitchTime) >= doubleTime) {
    xsingle = 1;
    xlastSwitchTime = millis();
    return;
  }  

// was it a double click ?

  if ((millis() - xlastSwitchTime) < doubleTime) {

//      do something
      XLEDstate = 0;
      analogWrite(WHITELED, 200);
      delay(2000);
      digitalWrite(WHITELED, LOW);
      
      xsingle = 0;
      xlastSwitchTime = millis();
  }  
}


// Main LEDs matrix brightness function
void LEDSTATE() {
  
  digitalWrite(MATPWR, HIGH); // enable matrix power supply
  
  lightState = lightState + 1;

    if (lightState == 5){
      lightState = 1;
      }
    
    if (lightState == 1){
      // OFF
      for(uint16_t i=0; i<PIXELCount; i++) {
      value.b = 0; 
      value.g = 0; 
      value.r = 0; 
      PIXEL.set_crgb_at(i, value); // Set value at LED found at index 0
      }
    PIXEL.sync();
    
    } else if (lightState == 2) {
      // LOW
      for(uint16_t i=0; i<PIXELCount; i++) {
      value.b = 16; 
      value.g = 16; 
      value.r = 20; // RGB Value -> Green Only
      PIXEL.set_crgb_at(i, value); // Set value at LED found at index 0
      }
    PIXEL.sync();

    } else if (lightState == 3) {
      // MEDIUM
      for(uint16_t i=0; i<PIXELCount; i++) {
      value.b = 64; 
      value.g = 64; 
      value.r = 72; // RGB Value -> Green Only
      PIXEL.set_crgb_at(i, value); // Set value at LED found at index 0
      }
    PIXEL.sync();
    }

    else if (lightState == 4){
      // HIGH
      for(uint16_t i=0; i<PIXELCount; i++) {
      value.b = 250; 
      value.g = 250; 
      value.r = 250; // RGB Value -> Green Only
      PIXEL.set_crgb_at(i, value); // Set value at LED found at index 0
      }  
    PIXEL.sync();
    }
}




void WHITELEDSTATE_UP(){


    if (XLEDstate >= 150){
      XLEDstate = 150;
      
  
      analogWrite(WHITELED, XLEDstate);
//      Serial.println(XLEDstate);
//      Serial.println("up state 255");
      

    } else {
      
      XLEDstate = XLEDstate + 25;  
 
      analogWrite(WHITELED, XLEDstate);
//      Serial.println(XLEDstate);
//      Serial.println("up state less than 255");
   
 }
}


void WHITELEDSTATE_DOWN(){


    if (XLEDstate <= 26){
    
      XLEDstate = 0;
      analogWrite(WHITELED, XLEDstate);
//      Serial.println(XLEDstate);
//      Serial.println("down state zero");
    
    } else {
      
      XLEDstate = XLEDstate - 25;
      analogWrite(WHITELED, XLEDstate);
//      Serial.println(XLEDstate);
//      Serial.println("down state above zero");
    }
 }



//clear status leds
void STATclear(){

    // statusleds
    digitalWrite (RED,LOW);
    digitalWrite (YELLOW,LOW);
    digitalWrite (GREEN,LOW);
    digitalWrite (PINK,LOW);    
  }


//blank Matrix, status and whiteled
void blank(){
      
    //matrix
    for(uint16_t i=0; i<PIXELCount; i++) {
    value.b = 0; 
    value.g = 0; 
    value.r = 0; 
    PIXEL.set_crgb_at(i, value); 
    }
    PIXEL.sync(); 

    // statusleds
    STATclear();

    // whiteled
    digitalWrite(WHITELED, LOW);
}

void readaccel(){
  
  int accelx = (myIMU.readFloatAccelX(), 4);
  int accely = (myIMU.readFloatAccelY(), 4);
  int accelz = (myIMU.readFloatAccelZ(), 4);

}

void readgyro(){
      
  int gyrox = (myIMU.readFloatGyroX(), 4);
  int gyroy = (myIMU.readFloatGyroY(), 4);
  int gyroz = (myIMU.readFloatGyroZ(), 4);

}

void readtemp(){
  
  int tempc = (myIMU.readTempC(), 4);
  int tempf = (myIMU.readTempF(), 4);
  
}


void BATCHECK(){


blank(); // its important to kill all big lights that drag voltage !
//digitalWrite (GREEN,1);

uint16_t  mv = readVcc();

      
//      Serial.print("mv : ");
//      Serial.println(mv);

// lipo max 4200 mV lipo min 2700 mV  (diff 1500 mV)
// seven pixels for the gauge ... 1500 / 7 ~ 200 mV per pixel
// low to high pixels colored red to green
// so mv - 2700 is what we have to deal with
// actual max lipo charge voltage (tp4056) 4.12 Volt so we use 2600 instead of 2700


 int ma = ((mv - 2600) / 200) ;


  

     for (uint16_t i=0; i<ma; i++) {
        for (uint16_t x = 0; x < 3*ma ;x++) {
          
          if (x<=8){
            
            value.b = 0; 
            x++;
            value.g = x*2;
            x++;
            value.r = 30;
            PIXEL.set_crgb_at(i, value);
            i++; 
            
          }else if (x<=15){
            
            value.b = 0; 
            x++;
            value.g = 30+x;
            x++;
            value.r = 30-x;
            PIXEL.set_crgb_at(i, value);
            i++; 
            
            }else{

            value.b = x/2; 
            x++;
            value.g = 30;
            x++;
            value.r = 0;
            PIXEL.set_crgb_at(i, value);
            i++; 
            }
        }  
      }

      PIXEL.sync(); 
}


void bedtime(){

    blank(); // blank all status leds and play a little animation
    
    digitalWrite (RED,1);
    digitalWrite (YELLOW,1);
    digitalWrite (GREEN,1);
    digitalWrite (PINK,1);
    delay(1000);
    
    digitalWrite (PINK,0);
    delay(700);
    digitalWrite (GREEN,0);
    delay(550);
    digitalWrite (YELLOW,0);
    delay(350);
    digitalWrite (RED,0);
    digitalWrite (BUTTONLED, 0);
    delay(1000);

    
  }

void sleepNow() {
/*
  power_adc_disable();
  power_usart0_disable();
  power_spi_disable();
  power_twi_disable();
  power_timer0_disable();
  power_timer1_disable();
  power_timer2_disable();
  power_timer3_disable();
  power_usart0_disable();
  power_usart1_disable();
  power_usb_disable();  // turn off USB transceiver
  USBCON |= (1 << FRZCLK);   // Freeze the USB Clock
  PLLCSR &= ~(1 << PLLE);  // Disable the USB Clock (PPL)
  USBCON &= ~(1 << USBE);  // Disable the USB
*/

    digitalWrite (REGPWR,LOW);      //turn off regulator
    digitalWrite (MATPWR,LOW);      //turn off matrix mosfet
    digitalWrite(WHITELED, LOW);  //turn off whiteled

    
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);    // sleep mode is set here
    sleep_enable();                         // enables the sleep bit in the mcucr register
    attachInterrupt(4,wakeUpNow, LOW);      // use interrupt 6 (see hoodloader pins_arduino.h)
    sleep_mode();                           // here the device is actually put to sleep!!
    
    // THE PROGRAM CONTINUES FROM HERE AFTER WAKING UP
    sleep_disable();                        // first thing after waking from sleep: disable sleep...
    detachInterrupt(4);      
}

void wakeUpNow() {

  // execute code here after wake-up before returning to the loop() function
  // timers and code using timers (serial.print and more...) will not work here.
  // we don't really need to execute any special functions here, since we
  // just want the thing to wake up

  digitalWrite(BUTTONLED, HIGH);    // enable 
  digitalWrite (REGPWR,HIGH);       //turn on regulator
  digitalWrite (MATPWR,HIGH);       //turn on matrix mosfet


  //TWI-Nutzung nach Power-Save
  //Problem: Nach dem Aufwachen aus dem Power-Save-Mode funktioniert das I2C/TWI-Interface nicht richtig. Abhilfe: Zurücksetzen des TWI-Registers im entsprechenden Interrupt.
  TWCR &= ~((1 << TWSTO) | (1 << TWEN));
  TWCR |= (1 << TWEN);



}

/*
void VOLTCHECK(){
  blank();   
  delay(20);
  int  mv = readVcc();
  u8g2.clearBuffer();  
  u8g2.setFont(u8g2_font_logisoso16_tf);    
  u8g2.print(mv);
  u8g2.sendBuffer();

}
*/



void LEVELS(){
  
  blank();

  myIMU.begin();                    // init Gyro

  while(true){
      
//  int16_t temp;
  int16_t accelx;
  int16_t accely;
  int16_t accelz;
   
  //Acelerometer axis X
  myIMU.readRegisterInt16(&accelx, LSM6DS3_ACC_GYRO_OUTX_L_XL);
  
//  Serial.print(" X = ");
//  Serial.println(accelx);  
  
  //Acelerometer axis Y 
  myIMU.readRegisterInt16(&accely, LSM6DS3_ACC_GYRO_OUTY_L_XL);
  
//  Serial.print(" Y = ");
//  Serial.println(accely);
  
  //Acelerometer axis Z  
  myIMU.readRegisterInt16(&accelz, LSM6DS3_ACC_GYRO_OUTZ_L_XL);
  
//  Serial.print(" Z = ");  
//  Serial.println(accelz);

  
  for(uint16_t i=0; i<7 ; i++) {
        for (uint16_t x = 0; x < 20 ; x++) {
        
       
        value.b =abs(accelx/100); 
        x++;
        value.g = 0; 
        x++;
        value.r = 0;
        x++;
        PIXEL.set_crgb_at(i, value);      
        }
      }  

  
  for(uint16_t i=14; i<21 ; i++) {
        for (uint16_t x = 0; x < 20 ; x++) {
        
       
        value.b =0; 
        x++;
        value.g =abs(accely/100); 
        x++;
        value.r = 0;
        x++;
        PIXEL.set_crgb_at(i, value);      
        }
      }  

  for(uint16_t i=28; i<35 ; i++) {
        for (uint16_t x = 0; x < 20 ; x++) {
        
       
        value.b = 0; 
        x++;
        value.g = 0; 
        x++;
        value.r =abs(accelz/100);
        x++;
        PIXEL.set_crgb_at(i, value);      
        }
      }  
  PIXEL.sync();

  int kitkat = digitalRead(BUTTON);
  if (kitkat == LOW){
    blank();
    break;
    }

  }
}

// end of file



