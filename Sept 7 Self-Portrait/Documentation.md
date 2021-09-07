## Self Portrait With Processing
### Week 1 | Fiona Lin | due Sept 7th

For our first project with Processing, we were asked to create a self-portrait through coding. I began the project with a bit of apprehension, as I'm not very confident with activities such as coding, and I realized through the practical lessons on Processing that it would be really difficult to achieve something that actually looked realistic and like myself. In the end, I decided to just play around freely in Processing without putting too much emphasis on creating a well-developed or "proper" work of art, and instead focus on familiarizing myself with the program itself. 

For the actual development of my self portrait, I began by setting up the active system in order for me to locate the coordinates I needed. Using the code for the triangle that we worked with in class as a reference, I made edits to the parameters to make a setup that I felt comfortable starting with. 

The section of code and the corresponding result we were given in class was as follows: 

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
  
  ![classcode](https://github.com/fionajlin/IntrotoIM/blob/main/Sept%207%20Self-Portrait/media/classcode.png)
  
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
  
  ![cleanplot](https://github.com/fionajlin/IntrotoIM/blob/main/Sept%207%20Self-Portrait/media/cleanplot.png)
  
In order to actually create my self-portrait, I worked mainly with basic shapes while consulting the [reference page](https://processing.org/reference/#shape) on the Processing website. In addition, for the colors I used, I searched up rgb values for skin tones and for colors so that I could plug in the shade I wanted for my image. 

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

This resulted in my self portrait (the small circle in the top left is my cursor!): 

![selfportrait](https://github.com/fionajlin/IntrotoIM/blob/main/Sept%207%20Self-Portrait/media/selfportrait.png)

In particular, I had a lot of trouble with the radian values used for the hair. I originally wanted to use two arc function half circles in order to mimic how I part my hair, but I had a lot of trouble determining the radian value of the start and end points I wanted to use. At one point I attempted to convert to radians using degrees instead, but it was a little unsatisfactory to me due to the diffficulty of determining exactly what value the angles I was looking for were. In the end, I went back to using radians and instead decided to use just a regular half circle with a triangular cutout to indicate the hair shape. I liked how the hair came out in the end and thought it fit the overall style of my image, so I was pretty happy with the method I chose.

One other minor issue I faced was that it was a little difficult to line up my coordinates completely evenly, especially because the midpoint of the circle I used to plot my coordinates sometimes did not align completely with where I thought my mouse was pointing to. Although this issue made things just the slightest bit out of line, I didn't mind it that much as any inequalities or crookedness was fixed with a little bit of trial and error in the input values I used to code my shapes. 

Overall, I enjoyed this project and thought it was a very good way to familiarize myself with the basic features of Processing. Furthermore, I'm actually quite proud of how my self-portrait came out, considering that I had little to no coding experience before this, so I was satisfied for the most part. 
  
