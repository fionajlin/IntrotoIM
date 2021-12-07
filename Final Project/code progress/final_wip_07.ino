
// input from colored buttons
const int redpin = 10;
const int greenpin = 8;
//const int buttonGreen = 9;

int color;

void setup() {
  Serial.begin(9600);

  pinMode(10, INPUT);
  pinMode(8, INPUT);
//  pinMode(9, INPUT);
}

void loop() {
  
  // read values from three colored buttons
  int choosered = digitalRead(redpin);
  int choosegreen = digitalRead(greenpin);
//  int chooseblue = digitalRead(bluepin);

  if (choosered == HIGH) {     // if red button is pressed
    color = 1;                // color value is set to 1
  }
  if (choosegreen == HIGH) {  // if yellow button is pressed
    color = 2;                // color value is set to 2
  }
//  if (chooseblue == HIGH) {   // if green button is pressed
//    color = 3;                // color value is set to 3
//  }


  Serial.println(String(color));
  delay(50);
}
