
const int bluePin = 5;
const int ldrPin = A0;
const int redPin = 6;
const int redswitch = 12;

int cutoff = 300;

void setup() {
  Serial.begin(9600);
}

void loop() {

  int switchValue = digitalRead(redswitch);

  if (switchValue == LOW) {
    int redldrValue = analogRead(ldrPin);
    
      redldrValue = constrain(redldrValue, 100, 600);
      redldrValue = map(redldrValue, 100, 600, 255, 0);
      analogWrite (redPin, redldrValue);
      
int blueldrValue = analogRead(ldrPin);
       blueldrValue = constrain(blueldrValue, 300, 600);
      blueldrValue = map(blueldrValue, 300, 600, 0, 255);
      analogWrite (bluePin, blueldrValue);

  }
   else if (switchValue == HIGH) {
      analogWrite (redPin, 100);
      analogWrite (bluePin, 0);
    }
}
