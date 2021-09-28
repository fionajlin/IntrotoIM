//types of text
String greeting = "hello";
String[] responses = new String[]{
  "Hi", "Hello", "How are you?", "How's it going?", "Good morning", "Good afternoon",
  "Good evening", "Greetings", "Howdy", "Hey", "How goes it?", "Are you doing well?",
  "How's life?", "What's up?", "G'day", "What's new?", "How are things?", "Yo!"};

//set up fonts
PFont responsefont;
PFont greetingfont;

//set up default response in array;
int responsetype = 1;

void setup() {
  size (800, 800);
  background (0);
}

void draw() {
  frameRate (3);
  fill(random(256), random(256), random(256));
  // for "hello" greeting:
  greetingfont = createFont ("Helvetica", 200);
  textFont (greetingfont);
  text (greeting, 0, 750);
}

void mouseClicked() {
  noStroke();
  //for responses: set up system to randomize font using an array of fonts
  String[] fontlist = PFont.list();
  int fontindex = int(random(fontlist.length));
  //selects font from the index of fonts created, randomizes size
  responsefont = createFont(fontlist[fontindex], random(10, 100));

  //make translucent at varying opacity
  fill(255, 255, 255, random (20, 200));

  textFont(responsefont);
  //randomize the response from array as well as location
  text(responses[responsetype], random (width), random (height));
  responsetype = int(random(responses.length));
}
