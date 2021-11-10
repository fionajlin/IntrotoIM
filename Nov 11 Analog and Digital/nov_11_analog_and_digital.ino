//define the pins on arduino that I'm using
const int bluePin = 5;
const int ldrPin = A0;
const int redPin = 6;
const int redswitch = 12;


void setup() {
  Serial.begin(9600);
}

void loop() {

  int switchValue = digitalRead(redswitch); //reads the switch output

  if (switchValue == LOW) {
    int redldrValue = analogRead(ldrPin); //reads the light sensor output
    
      redldrValue = constrain(redldrValue, 100, 600); //constrains the light readings between 100 and 600 (slightly widened range of the consistent readings in this project's environment)
      redldrValue = map(redldrValue, 100, 600, 255, 0); //mapped these values to the minimum and maximum values of the LEDs
      analogWrite (redPin, redldrValue);
      
int blueldrValue = analogRead(ldrPin);
       blueldrValue = constrain(blueldrValue, 300, 600); //constrained  a bit further in order to narrow margin of error in which the LED would light despite being in relative dark
      blueldrValue = map(blueldrValue, 300, 600, 0, 255); //mapped inverse to the red LED so one would go off as the other came on
      analogWrite (bluePin, blueldrValue);

  }
   else if (switchValue == HIGH) { //the switch would invert the neutral state of the project where the bue LED is lit while waiting for light sensor manipulation
      digitalWrite (redPin, 100);
      digitalWrite (bluePin, 0);
    }
}
