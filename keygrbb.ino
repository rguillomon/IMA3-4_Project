#include <Keyboard.h>

#include <Wire.h>
#include "Adafruit_MPR121.h"

#include <string.h>
#define ti 20

#include<SD.h>

#ifndef _BV
#define _BV(bit) (1 << (bit)) 
#endif

// You can have up to 4 on one i2c bus but one is enough for testing!
Adafruit_MPR121 cap = Adafruit_MPR121();

// Keeps track of the last pins touched
// so we know when buttons are 'released'
uint16_t lasttouched = 0;
uint16_t currtouched = 0;
int tab[]={3,7,15,2,6,14,1,5,9,0,4,8};
File fichier;
String filename="texte.txt";
char c;


void Printstr(String msg){
  Serial.println(msg);
}

void keyboardprint ( String texte ){
  int i = 0;
  while (texte[i]!='\0'){
    if(texte[i]=='@'){
      Keyboard.write('"');
    }
    else if(texte[i]=='"'){
      Keyboard.write('@');
    }
    else if(texte[i]=='\\'){
      Keyboard.press(KEY_RIGHT_ALT);
      Keyboard.press(92);
    }
    else {
      Keyboard.write(texte[i]);
      }
    delay(ti);
    Keyboard.releaseAll();
    i++;
    }
  }

void setup() {
  //keyboard out
   pinMode(2, INPUT_PULLUP); 
  Keyboard.begin();

  //Serial
  Serial.begin(9600);
  while (!Serial) { // needed to keep leonardo/micro from starting too fast!
    delay(10);
  }

  //SD
  while(! SD.begin(4)){
    delay(1000);
  }
  Serial.println("SD OK");

  //File
  while( !(fichier=SD.open(filename,FILE_WRITE)) ){
    delay(1000);
  }
  Serial.println("file OK");
  
  //keyboard in
  Serial.println("Adafruit MPR121 Capacitive Touch sensor test"); 
  
  // Default address is 0x5A, if tied to 3.3V its 0x5B
  // If tied to SDA its 0x5C and if SCL then 0x5D
  if (!cap.begin(0x5A)) {
    Serial.println("MPR121 not found, check wiring?");
    while (1);
  }
  Serial.println("MPR121 found!");
}















void loop() {
  // Get the currently touched pads
  currtouched = cap.touched();
  /*
  //effacement de la mémoire
  if ((currtouched & _BV(2)) && !(lasttouched & _BV(2)) ) {
    Serial.println("D");
    //effacer ce qui est présent dans la carte SD
    }*/
  //récupération des entrées
  if ((currtouched & _BV(5)) && !(lasttouched & _BV(5))) {
    Serial.println("R");
    fichier.seek(0);
    while((c=fichier.read())!=-1){
      Keyboard.write(c);
    }
  }
 
  
  for (uint8_t i=0; i<12; i++) {
    // it if *is* touched and *wasnt* touched before, alert!
    if ((currtouched & _BV(i)) && !(lasttouched & _BV(i)) ) {
      Serial.print(tab[i]); Serial.println(" touched");
      c=('0'+tab[i]);
      Keyboard.press(c);
    }
    // if it *was* touched and now *isnt*, alert!
    if (!(currtouched & _BV(i)) && (lasttouched & _BV(i)) ) {
      Serial.print(tab[i]); Serial.println(" released");
      c=('0'+tab[i]);
      Keyboard.release(c);
    }
    if(i==1 || i==5)i++;
  }

  // reset our state
  lasttouched = currtouched;

  // comment out this line for detailed data from the sensor!
  return;
  
  // debugging info, what
  Serial.print("\t\t\t\t\t\t\t\t\t\t\t\t\t 0x"); Serial.println(cap.touched(), HEX);
  Serial.print("Filt: ");
  for (uint8_t i=0; i<12; i++) {
    Serial.print(cap.filteredData(i)); Serial.print("\t");
  }
  Serial.println();
  Serial.print("Base: ");
  for (uint8_t i=0; i<12; i++) {
    Serial.print(cap.baselineData(i)); Serial.print("\t");
  }
  Serial.println();
  
  // put a delay so it isn't overwhelming
  delay(100);
}


//   >v<   <v>
