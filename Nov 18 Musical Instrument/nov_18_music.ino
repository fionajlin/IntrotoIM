#include "pitches.h"

//define the pins on arduino that I'm using
const int buzzer = 5;
const int ldrPin = A2;
const int redswitch = 12;

// music notes for original twinkle twinkle
int twinkletwinkle[] = { // melody array referring to <pitch.h>
  NOTE_C4, NOTE_C4, NOTE_G4, NOTE_G4, NOTE_A4, NOTE_A4, NOTE_G4,
  NOTE_F4, NOTE_F4, NOTE_E4, NOTE_E4, NOTE_D4, NOTE_D4, NOTE_C4
};

int twinklelength[] = { // note durations according to music theory (quarter note, half note).
  4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 4, 4, 4, 2
};

//music notes for twinkle twinkle one octave lower
int lowtwinkle[] = { // melody array referring to <pitch.h>
  NOTE_C3, NOTE_C3, NOTE_G3, NOTE_G3, NOTE_A3, NOTE_A3, NOTE_G3,
  NOTE_F3, NOTE_F3, NOTE_E3, NOTE_E3, NOTE_D3, NOTE_D3, NOTE_C3
};

int lowtwinklelength[] = { // note durations according to music theory (quarter note, half note).
  4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 4, 4, 4, 2
};

void setup() {
  Serial.begin(9600);
  pinMode (buzzer, OUTPUT);
}

void loop() {

  int switchValue = digitalRead(redswitch); //reads the switch output

  if (switchValue == HIGH) {
    int ldrValue = analogRead(ldrPin); //reads the light sensor output

    //constrains the light readings between 100 and 600 (slightly widened range of the consistent readings in this project's environment)
    ldrValue = constrain(ldrValue, 100, 600);
    ldrValue = map(ldrValue, 100, 600, 0, 255); //mapped these values to the minimum and maximum values of the LEDs

    if (ldrValue > 150) {
      for (int note = 0; note < sizeof(twinkletwinkle) / sizeof(twinkletwinkle[0]); note++) {
        int duration = 1000 / twinklelength[note]; // note duration = one sec (1000 ms) divided by type of note
        tone(buzzer, twinkletwinkle[note], duration); // play notes

        int pause = duration * 1.30; //length of pause = duration of note + 30%
        delay(pause); // delay notes to distinguish them
        noTone (buzzer); //stop melody
      }
    }
   else if (ldrValue < 150) {
      for (int note = 0; note < sizeof(lowtwinkle) / sizeof(lowtwinkle[0]); note++) {
        int duration = 1000 / lowtwinklelength[note]; // note duration = one sec (1000 ms) divided by type of note
        tone(buzzer, lowtwinkle[note], duration); // play notes

        int pause = duration * 1.30; //length of pause = duration of note + 30%
        delay(pause); // delay notes to distinguish them
        noTone (buzzer); //stop melody
      }
    }
  }
  
}
