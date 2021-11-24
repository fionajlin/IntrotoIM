
const int blueled = 6;

void setup() {
  Serial.begin(9600);

  //indicate ready to begin communication
  Serial.println("0");

  pinMode(blueled, OUTPUT);
}

void loop() {

  if (Serial.available()) {
    int processingval = Serial.read(); //define value as info received

    int brightness = map(processingval, 255, 0, 0, 255);
    //map values into brightness according to orientation of mouse up and down
    analogWrite(blueled, brightness); //change brightness
  }
}
