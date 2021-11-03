const int bookswitch = A2;
const int redled = 12;
const int blueled = 13;

void setup() {
  // put your setup code here, to run once:
  pinMode(LED_BUILTIN, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int bookcurrent = digitalRead(bookswitch);

  if (bookcurrent == HIGH) {
    digitalWrite(redled, HIGH);
    digitalWrite (blueled, LOW);
  }
  else if (bookcurrent == LOW) {
    digitalWrite (redled, LOW);
    digitalWrite (blueled, HIGH);
    delay (500);
    digitalWrite (blueled, LOW);
    delay (500);
  }
}
