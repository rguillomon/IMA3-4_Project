#define OSX 0
#define WINDOWS 1
#define UBUNTU 2
#define ti 20

#include "Keyboard.h"
#include <string.h>

// change this to match your platform:
int platform = WINDOWS;

void setup() {
  // make pin 2 an input and turn on the pull-up resistor so it goes high unless
  // connected to ground:
  pinMode(2, INPUT_PULLUP);
  Keyboard.begin();
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

void loop() {
  while (digitalRead(2) == HIGH) {
    // do nothing until pin 2 goes low
    delay(500);
  }
  delay(1000);

  switch (platform) {
    case OSX:
      Keyboard.press(KEY_LEFT_GUI);
      // Shift-Q logs out:
      Keyboard.press(KEY_LEFT_SHIFT);
      Keyboard.press('Q');
      delay(100);
      Keyboard.releaseAll();
      // enter:
      Keyboard.write(KEY_RETURN);
      break;
    case WINDOWS:
      // ouvertur power shell
      Keyboard.write(KEY_LEFT_GUI);      
      delay(ti);
      keyboardprint("powershell");
      Keyboard.write(KEY_RETURN);
      delay(1000);
      keyboardprint("Invoke-WebRequest -Uri ");
      keyboardprint("\"https://www.mediacollege.com/audio/tone/files/440Hz_44100Hz_16bit_30sec.mp3\"");
      keyboardprint(" -OutFile \"./mp3.mp3\"");
      Keyboard.write(KEY_RETURN);
      delay(1000);
      keyboardprint(".\\mp3.mp3");
      Keyboard.write(KEY_RETURN);
      break;
    case UBUNTU:
      // CTRL-ALT-DEL:
      Keyboard.press(KEY_LEFT_CTRL);
      Keyboard.press(KEY_LEFT_ALT);
      Keyboard.press(KEY_DELETE);
      delay(1000);
      Keyboard.releaseAll();
      // Enter to confirm logout:
      Keyboard.write(KEY_RETURN);
      break;
  }

  // do nothing:
  while (true);
}
