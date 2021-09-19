//define a class for the rectangles i'm using
class Rectangles {
  float xval, yval, xsize, ysize; //float variables for each of the values
  color rectcolor; //rectangle fill
  color linecolor; //outline color

  Rectangles (float _xsize, float _ysize) {
    // _ is used to set temporary variable
    xsize = _xsize;
    ysize = _ysize;
    //set location limits
    xval = random (0, 650);
    yval = random (0, 650);

    //randomizes colors
    rectcolor = color (random (1, 255), random (1, 255), random (1, 255), random (100, 256));
    linecolor = color (random (0, 256));
  }


  void makerects() { //function that makes the square
    rect (xval, yval, xsize, ysize);
    fill (rectcolor);
    stroke (linecolor);
    strokeWeight (1);
  }
}

//define class to make circles
class Rounds {

  float xpos, ypos, ewidth, eheight;
  //float variables for x & y coordinates, ellipse width & height
  color roundcolor; //ellipse fill
  color outcolor; //outline color

  Rounds (float _ewidth, float _eheight) {
    // _ is used to set temporary variable - ewidth and eheight for ellipse width/height
    ewidth = _ewidth;
    eheight = _eheight;
    //set location limits
    xpos = random (0, width);
    ypos = random (0, height);

    //randomizes colors
    roundcolor = color (random (0, 256));
    outcolor = color (random (0, 256), random (0, 256), random (0, 256));
  }

  void drawrounds () {
    ellipse (xpos, ypos, ewidth, eheight);
    fill (roundcolor);
    stroke (outcolor);
    strokeWeight (2);
  }
}

//set array for the rectangles i'm using
Rectangles[] rectarray = new Rectangles[100];

//set array for the circles i'm using
Rounds[] roundarray = new Rounds[10];

void setup() {
  size (700, 700);
  background (256, 256, 256);

  for (int i=0; i < roundarray.length; i++) {
    roundarray[i] = new Rounds (random (100, 300), random (100, 300));
    roundarray[i].drawrounds ();
  }

  for (int i=0; i < rectarray.length; i++) {
    rectarray[i] = new Rectangles (random (5, 100), random (5, 100));
    rectarray[i].makerects ();
  }

}
