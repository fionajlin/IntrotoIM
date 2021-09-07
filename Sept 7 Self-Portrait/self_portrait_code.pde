// Active mode

void setup() {
  size (500, 500);
}

void draw() {

  background (256, 256, 256);

  // coordinate plotting circle
  circle (mouseX, mouseY, 10);
  println("mouse coordinates = " + mouseX +"," + mouseY);

  noStroke();

  // hair base
  fill (0);
  rect (142, 170, 210, 170);

  //head
  fill (255, 224, 196);
  circle (247, 172, 200);

  //left eye
  fill (0);
  circle (202, 203, 30);
  fill (256, 256, 256);
  circle (209, 197, 10);

  //right eye
  fill (0);
  circle (290, 203, 30);
  fill (256, 256, 256);
  circle (297, 197, 10);

  //mouth
  noFill ();
  stroke (0, 0, 0);
  strokeWeight (2);
  arc (247, 237, 35, 15, 0, PI);

  noStroke ();

  //hair
  fill (0);
  arc (247, 172, 210, 240, PI, TWO_PI);
  fill (255, 224, 196);
  triangle (286, 141, 250, 173, 309, 173);


  //neck
  fill (255, 224, 196);
  rect (230, 268, 32, 26);

  //shirt
  fill (115, 194, 251);
  rect (192, 293, 112, 128, 20);

  //neckline
  fill (255, 224, 196);
  triangle (230, 293, 262, 293, 247, 318);
}
