import processing.serial.*;   //import Serial from Arduino

//setup for serial communication
Serial myPort;
boolean arduinoisReady = false;

//verification statements
boolean colorchosen = false;
boolean colorgenerated = false;
boolean start;

int currentstate = 0; //state variable


//game text font setup
PFont gamefont;

//title card text
String title = "Read My Mind: A Color Guessing Game";
String proceed = "[Space] to Proceed";

//win text
String win = "Congratulations! You have won.";
String restart = "[R] to Play Again";

//set up colors
color acolvalue = color(255);
int mycolor;
color pcolvalue;

//set up color array for randomization
int[] coloroption = {1, 2, 3};
int randomcolor;

void setup() {
  // create canvas
  size(1000, 1000);
  background(255);

  //set up stylistic elements
  gamefont = createFont ("Helvetica", 70);

  // prepare to read information from Arduino
  String port = Serial.list()[2];
  myPort = new Serial(this, port, 9600);
  myPort.clear();
  myPort.bufferUntil('\n');

  delay(1000);     // give some time to Arduino to set up
}

void draw() {
  
  frameRate (50);
//println ("state is " + currentstate);
  if (arduinoisReady == true) {    // handshaking
    myPort.write(1+"\n");
    arduinoisReady =false;
  } else if (currentstate == 0) { //title
    background (0);
    pushMatrix();
    textAlign (CENTER);
    textFont (gamefont);
    fill(255);
    text (title, 150, 200, 700, 800);
    popMatrix();
  } else if (currentstate == 1) { //player chooses
   background(0);
    colorpickera();                 // generate color value based on info from Arduino
    fill(acolvalue);                       // draw with the color value
    rect(0, 0, width/2, height);
    colorchosen = true;
  } else if (currentstate == 2) { //processing generates
    randomcolor = coloroption [(int) random(coloroption.length)];
    colorpickerp();
    fill (pcolvalue);
    rect(width/2, 0, width/2, height);
  } else if (currentstate == 3) { //win screen
    background (acolvalue);
    textAlign (CENTER);
    textFont (gamefont);
    fill(255);
    text (win, 150, 200, 700, 800);
  } else if (currentstate == 4) {//lose
    background (0);
    textAlign (CENTER);
    textFont (gamefont);
    fill (255);
    text (restart, 150, 200, 700, 800);
  }else if (currentstate == 5){
    println (mycolor, randomcolor);
    if (mycolor == randomcolor){
      delay (1000);
      currentstate = 3;
    } else {
      delay (1000);
      currentstate = 4;
  }
}
}

void serialEvent(Serial myPort) {
  String colorstring = myPort.readStringUntil('\n');    // read from Arduino
  colorstring = trim(colorstring);
  // trims empty spaces
 // println(colorstring);
  if (colorstring != null) {
    mycolor = int(colorstring);                            // color

    arduinoisReady = true;  // ready to receive new value
  }
}

// associates the information indicating each button on arduino with a color
void colorpickera() { //picks color through arduino

  if (mycolor == 1) {            // chooses red
    acolvalue = color(#FF0000);
  }
  if (mycolor == 2) {            // chooses green
    acolvalue = color(#008000);
  }
  if (mycolor == 3) {            // chooses blue
    acolvalue = color(#0000FF);
  }
}

void colorpickerp() { //picks color through processing

  if (randomcolor == 1) {            // chooses red
    pcolvalue = color(#FF0000);
  }
  if (randomcolor == 2) {            // chooses green
    pcolvalue = color(#008000);
  }
  if (randomcolor == 3) {            // chooses blue
    pcolvalue = color(#0000FF);
  }
}


void keyReleased() {
  if (currentstate == 0 && key == ' ') {
    currentstate = 1; //player chooses
  } else if (currentstate == 1 && colorchosen == true && key == ' ') {
    currentstate = 2; //generating
  } else if (currentstate == 2 && key == ' ') {
     currentstate = 5;
     
    //if (mycolor == randomcolor) { //comparison
    //  currentstate = 3; //win
    //} else {
    //  currentstate = 4; //lose
    //}
  }
  else if (key == 'r') {
    currentstate = 0; //restart
    acolvalue = color(255);
    mycolor = 0;
    randomcolor = 0;
    pcolvalue = color (255);
  }
}
