## Self Portrait With Processing
### Week 1 | Fiona Lin

For our first project with Processing, we were asked to create a self-portrait through coding. I began the project with a bit of apprehension, as I'm not very confident with activities such as coding, and I realized through the practical lessons on Processing that it would be really difficult to achieve something that actually looked realistic and like myself. In the end, I decided to just play around freely in Processing without putting too much emphasis on creating a well-developed or "proper" work of art, and instead focus on familiarizing myself with the program itself. 

For the actual development of my self portrait, I began by setting up the active system in order for me to locate the coordinates I needed. Using the code for the triangle that we worked with in class as a reference, I made edits to the parameters to make a setup that I felt comfortable starting with. 

The section of code and the resulting image we were given in class was as follows: 

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
  ![](IntroToIM/media/classcode.png)
  
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


