import processing.serial.*;   //import Serial from Arduino

//setup for serial communication
Serial myPort;
boolean arduinoisReady = false;

int currentstate; //state variable
boolean flag;

//game text font setup
PFont gamefont;

//title card text
String title = "Read My Mind: A Color Guessing Game";
String proceed = "[Space] to Proceed";

//win text
String win = "Congratulations! You have won.";
String restart = "[R] to Play Again";

//set up colors
color colvalue = color(255);
int mycolor;
color randomcolor;

//set up color array for randomization
color[] coloroption = {#FF0000, #008000, #0000FF};

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

  delay(1000);                      // give some time to Arduino to set up
  
  titlescreen();
}

void draw() {
  
  if (arduinoisReady == true) {    // handshaking
    myPort.write(1+"\n");
    arduinoisReady =false;
  }
  else if (flag == true){
    gameonce();
    
  }
}

void serialEvent(Serial myPort) {
  String colorstring = myPort.readStringUntil('\n');    // read from Arduino
  colorstring = trim(colorstring);  // trims empty spaces
  if (colorstring != null) {
    mycolor = int(colorstring);                            // color

    arduinoisReady = true;  // ready to receive new value
  }
}

// associates the information indicating each button on arduino with a color
void colorpicker() {

  if (mycolor == 1) {            // chooses red
    colvalue = color(#FF0000);
  }
  if (mycolor == 2) {            // chooses green
    colvalue = color(#008000);
  }
  if (mycolor == 3) {            // chooses blue
    colvalue = color(#0000FF);
  }
}

void mouseClicked(){
    flag = true;
    background (0);
    currentstate = 1;
}

void keyReleased() {
  if (currentstate == 1 && key == ' '){ 
    for (int i = 0; i < coloroption.length; i++) { //this makes it run multiple times
      randomcolor = coloroption [(int) random(coloroption.length)];
      rect(width/2, 0, width/2, height);
      fill (randomcolor);
      currentstate = 2;
    }
    }
  else if (key == 'r'){
    titlescreen ();
  }   
  else if (currentstate == 2 && key == ' '){
    comparison();
  }
}

void gameonce () {
  colorpicker();                 // generate color value based on info from Arduino
  fill(colvalue);                       // draw with the color value
  rect(0, 0, width/2, height);
}

void titlescreen (){
  currentstate = 0;
  
  background (0);
  textAlign (CENTER);
  textFont (gamefont);
  text (title, 150, 200, 700, 800);
}

void comparison (){
  if (colvalue == randomcolor){
    winscreen();
  }
}

void winscreen (){
  background (colvalue);
  textAlign (CENTER);
  textFont (gamefont);
  text (win, 150, 200, 700, 800);
  
}
