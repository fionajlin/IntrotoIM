import processing.serial.*;

Serial arduinoport; //define the port receiving serial info
float lightinfo = 0; //info on light value coming from arduino

void setup () {
  size(500, 400);

  arduinoport = new Serial(this, Serial.list()[2], 9600);

  //protection so that info is complete before starting
  arduinoport.bufferUntil('\n');
}

void draw () {
  background(0);

  circle(lightinfo, 200, 50);
  fill(255, 255, 255);
}

void serialEvent (Serial arduinoport) {

  String arduinovalues = arduinoport.readStringUntil('\n'); //stores each number character together until it reaches the end of line with /n

  if (arduinovalues != null) { //check that string isn't empty
    //take out non-printing characters
    arduinovalues = trim(arduinovalues);
    // convert the characters to float = numeric
    lightinfo = float(arduinovalues);
    // map to the width of the sketch using the constrained values from arduino
    lightinfo = map(lightinfo, 90, 700, 0, 500);
    println(lightinfo);
  }
}
