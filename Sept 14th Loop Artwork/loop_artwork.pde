void setup () {
  size (500, 500);
  background (0);
}

void draw () {
  drawcir ();
  drawellipse ();
  drawrects ();
  frameRate (5);
}

void drawellipse () {
  int cxpos = 0;

  while (cxpos < width) {
    noFill ();
    ellipse (cxpos, 50, 100, 80);
    cxpos = cxpos + 20;
    stroke (random (0, 255), random (0, 255), random (0, 255));
  }

  for (int xpos = 0; xpos < width; xpos = xpos + 15) {
    noStroke ();
    ellipse (xpos, 160, 150, 120);
    fill (random (0, 255), random (0, 255), random (0, 255), random (0, 100));
  }
}

void drawrects () {

  int rxpos = 0;

  while (rxpos < width) {
    noFill ();
    rect (rxpos, 130, 60, 40);
    rxpos = rxpos + 10;
    stroke (random (0, 255), random (0, 255), random (0, 255));
  }
  for (int xpos = 0; xpos < width; xpos = xpos + 15) {
    noStroke ();
    rect (xpos, 230, 70, 100);
    fill (random (0, 255), random (0, 255), random (0, 255), random (0, 255));
  }
}

void drawcir () {
  for (int xcir = 0; xcir < width; xcir = xcir +30) {
    for (int ycir = 350; ycir < height; ycir = ycir + 40) {
      circle (xcir, ycir, 50);
      fill (random (0, 255), random (0, 255), random (0, 255), random (0, 100));
    }
  }
}
