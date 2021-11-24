const int blueLED = 6;
const int ldrpin = A1;

const int flashDuration = 100; // milliseconds
unsigned long turnedLEDOnAt = 0;

void setup() {
  Serial.begin(9600);

  // begin communication
  Serial.println("0");

  pinMode(blueLED, OUTPUT);
}

void loop() {
  
  while (Serial.available()) {
    int valueFromProcessing = Serial.parseInt();

    // Only proceed if we have the end of line
    if (Serial.read() == '\n') {

      if (valueFromProcessing == 1) {
        //  turn on LED
        digitalWrite(blueLED, HIGH);
        // and note the time
        turnedLEDOnAt = millis();
      }

      // send light value to Processing, ready for next
      Serial.println(analogRead(ldrpin)); 
    }
  }

  if (millis() - turnedLEDOnAt >= flashDuration) {
    // turn off LED
    digitalWrite(blueLED, LOW);
  }
}
