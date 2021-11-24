
const int ldrpin = A1;

void setup() {
  // initialize the serial communication - 9600 bits/sec
  Serial.begin(9600);
}

void loop() {
 int lightvalue = analogRead(ldrpin);
 
 //constrain ldr readings to general range of min max light in room
 lightvalue = constrain (lightvalue, 90, 700); 
      Serial.println(lightvalue);
      delay (2);
}
