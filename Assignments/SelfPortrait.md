## Self Portrait With Processing
### Week 1 | Fiona Lin

For our first project with Processing, we were asked to create a self-portrait through coding. I began the project with a bit of apprehension, as I'm not very confident with activities such as coding, and I realized through the practical lessons on Processing that it would be really difficult to achieve something that actually looked realistic and like myself. In the end, I decided to just play around freely in Processing without putting too much emphasis on creating a well-developed or "proper" work of art, and instead focus on familiarizing myself with the program itself. 

For the actual development of my self portrait, I began by setting up the active system in order for me to locate the coordinates I needed. Using the code for the triangle that we worked with in class as a reference, I made edits to the parameters to make a setup that I felt comfortable starting with. 

The section of code we were given in class was as follows: 

```
void setup() {
  size (500, 500);
}

int triangleTopLeftX = 0;

void draw() {

  background(10, 255, 255);

  // use mouseX and mouseY to draw a small circle
  circle (mouseX, mouseY, 30);
  println("mouse coordinates = " + mouseX +"," + mouseY);
  ```
  
  which I then edited for a clean white background and a smaller cursor indicator:
  
  ``` 
void setup() {
  size (500, 500);
}

void draw() {

  background (256, 256, 256);

  // coordinate plotting circle
  circle (mouseX, mouseY, 10);
  println("mouse coordinates = " + mouseX +"," + mouseY);
  ```
  
In order to actually create my self-portrait, I worked mainly with basic shapes while consulting the reference page on the Processing website. In addition, for the colors I used, I searched up rgb values for skin tones and for colors so that I could plug in the shade I wanted for my image. 

After much trial and error, my code ended up looking like this:

```
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
```

In particular, I had a lot of trouble with the radian values used for the hair. I originally wanted to use two arc function half circles in order to create my side part, but I had a lot of trouble determining the radian value of the start and end points I wanted to use, and instead decided to use just a regular half circle and add a triangular cutout to indicate the hair shape instead. 
  


