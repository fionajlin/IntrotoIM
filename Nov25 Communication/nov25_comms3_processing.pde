

// Bounce a ball, and each time the ball hits the floor
// flash an LED on Arduino. Whenver Arduino receives a message,
// read an analog port and send it to Processing, to blow the
// ball to the left or right.
// Demonstrates adding serial communication to an existing project.

// Based on 
// https://github.com/aaronsherwood/introduction_interactive_media/blob/master/processingExamples/gravityExamples/gravityWind/gravityWind.pde
// by Aaron Sherwood

PVector velocity;
PVector gravity;
PVector position;
PVector acceleration;
PVector wind;
float drag = 0.99;
float mass = 50;
float hDampening;

import processing.serial.*;
Serial port;
boolean arduinoready = false;
float ldrvalue;

void setup() {
  size(640, 360);
  noFill();

  position = new PVector(width/2, 0);
  velocity = new PVector(0, 0);
  acceleration = new PVector(0, 0);
  gravity = new PVector(0, 0.3*mass);
  wind = new PVector(0, 0);
  hDampening=map(mass, 15, 80, .98, .96);

  port = new Serial(this, Serial.list()[2], 9600);
  port.clear();
  port.bufferUntil('\n');

  // Opening the serial port will cause Arduino to reset,
  // so wait a bit to allow Arduino to finish
  // so that we don't miss the first bounce
  delay (2000);
}

void draw() {
  background(255);
  if (!keyPressed) {

    // In the original version wind is only applied when keys
    // are pressed, but we need wind to work always
    //wind.x=0;
    velocity.x*=hDampening;
  }
  applyForce(wind);
  applyForce(gravity);
  velocity.add(acceleration);
  velocity.mult(drag);
  position.add(velocity);
  acceleration.mult(0);

  // Note that the mass is also the radius
  ellipse(position.x, position.y, mass, mass);

  // Did we hit the floor?
  if (position.y > height-mass/2) {

    // change direction to bounce, also loose some energy
    // (dampning) so we the bounce is a little less each time
    velocity.y *= -0.9;  

    // prevent sinking beneath the floor
    position.y = height-mass/2;

    // Send message to Arduio
    if (arduinoready) {
      port.write(1 + "\n"); // could be any value
      arduinoready = false;
    }
  }
  wind();
}

void applyForce(PVector force) {
  // Newton's 2nd law: F = M * A
  // or A = F / M
  PVector f = PVector.div(force, mass);
  acceleration.add(f);
}

void wind() {
  if (ldrvalue > 300) {
    wind.x=-1;
  }
  if (ldrvalue <= 300) {
    wind.x=1;
  }
}

void serialEvent(Serial myPort) {
  String arduinovalues = myPort.readStringUntil('\n');

  // Always check to make sure the string isn't empty
  if (arduinovalues != null) { 
    // trim off any whitespace:
    arduinovalues = trim(arduinovalues);
    // convert to a float
    ldrvalue = float(arduinovalues);
    println("received from Arduino: " + ldrvalue);
    // Finally, map it to sensible values for wind
    wind.x = map(ldrvalue, 90, 700, -5, 5);
    arduinoready = true;
  }
}
