
// input from colored buttons
const int redpin = 7;
const int greenpin = 8;
const int bluepin = 9;
const int yellowpin = 10;
const int purplepin = 11;

int color;

void setup() {
  Serial.begin(9600);

pinMode (7,INPUT);
  pinMode(8, INPUT);
  pinMode(9, INPUT);
  pinMode(10, INPUT);
  pinMode(11, INPUT);
}

void loop() {
  
  // read values from three colored buttons
  int choosered = digitalRead(redpin);
  int choosegreen = digitalRead(greenpin);
  int chooseblue = digitalRead(bluepin);
    int chooseyellow = digitalRead(yellowpin);
    int choosepurple = digitalRead(purplepin);

  if (choosered == HIGH) {     // if red button is pressed
    color = 1;   
    Serial.println(String(color));// color value is set to 1
  }
  else if (choosegreen == HIGH) {  // if green button is pressed
    color = 2;        // color value is set to 2
    Serial.println(String(color));
  }
  else if (chooseblue == HIGH) {   // if blue button is pressed
    color = 3;                // color value is set to 3
Serial.println(String(color));
  }
    else if (chooseyellow == HIGH) {   // if yellow button is pressed
    color = 4;                // color value is set to 4
Serial.println(String(color));
    }
    else if (choosepurple == HIGH) {   // if purple button is pressed
    color = 5;                // color value is set to 5
Serial.println(String(color));
    }

  delay(50);
}
