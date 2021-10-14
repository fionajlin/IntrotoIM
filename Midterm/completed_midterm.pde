//choose your own adventure game describing Circle's pursuit of love with Square - does Circle get a happy ending? 
//it's up to the player to make sure that happens!

//set up sound library + sound of page flipping
import processing.sound.*;
SoundFile flippage;

////set up state variable
int currentpage;

//game text font setup
PFont gamefont;
PFont decofont; //for reactions in frame - deco for decorative = emotes

//set up window image
PImage window;


//title card text
String title = "Circle and Square: A Simple Love Story";
String proceed = "[Space] to Proceed";

//restart text
String restart = "Restart? [R]";

//exposition text
String exposition = "Circle has had a huge crush on Square for the longest time. Today, Circle has decided it is time to finally confess.";


//choice 1 text
String choice1 = "The school bell rings. Circle is feeling a little nervous, and decides to consult some friends. Who should Circle talk to?";
String choice1L = "Talk to Triangle. [F]";
String choice1R = "Talk to Rectangle. [J]";

//choice 1 Left - triangle + bad end
String badend4 = "Triangle: Circle, you should really reconsider this. Square is so popular, and what'll you do if you get rejected? It's better to just stay quiet until you're sure.";
String noconfidence = "Convinced by Triangle, Circle loses all confidence. Circle decides not to confess, and to pine from afar forever.";

//choice 1 Right - rectangle
String choice1rect = "Rectangle: You should totally go for it! Don't worry so much.";

//choice 2 text
String choice2 = "With Rectangle's encouragement, Circle starts to feel better, but isn't completely convinced. What should Circle do?";
String choice2L = "Leave immediately to go confess. [F]";
String choice2R = "Ask for more advice. [J]";

//choice 2 Left = leave immediately
String choice2leave = "Circle thanks Rectangle and decides to leave immediately to look for Square.";

//choice 2 Right = ask for advice + bad end
String badend3 = "Circle feels insecure and asks Rectangle for more advice. Rectangle is super enthusiasitc about helping a friend, and immediately begins babbling.";
String needadvice = "As the minutes tick by, Circle realizes that Square must have already left the school. Circle lost the chance to get Square alone and confess.";

//choice 3 text
String choice3 = "Circle leaves the classroom, but Square is nowhere in sight. Where should Circle begin looking?";
String choice3L = "Go left. [F]";
String choice3R = "Go right. [J]";

//choice 3 left = go left + bad end
String badend2 = "Circle rushes down the hallway to the left, but ends up searching without success. Looking out the window, Circle happens to notice as Square leaves the school premises.";
String lostway = "Circle took too long searching through the school. Circle can only watch as Square leaves, too far away to catch up to. Circle lost the chance to talk to Square.";

//choice 3 right = go right
String choice3right = "Circle rushes down the hallway to the right, and ends up catching up to Square just in time. Circle call out to Square, who stops and turns to talk.";

//choice 4 text
String choice4 = "Despite Circle's initial determination, when faced with Square all of those feelings drain away for nervousness. How should Circle approach the confession?";
String choice4L = "Hurry and just shout it out loud. [F]";
String choice4R = "Calm down and muster up enough courage. [J]";

//choice 4 left - shout out
String goodend = "Circle decides to just abandon all shame and shout it out.";
String goodendcircle = "Circle: Square, I've had a crush on you for such a long time, please go out with me!";
String goodendnarration = "Square gasps in surprise, but begins to blush and smile.";
String goodendsquare = "Square: I've actually had a crush on you for a long time too. I'd be happy to go out with you!";
String happyending = "Circle and Square achieved their happy ending.";
String thankyou = "Thank you for playing!";

//choice 4 right - muster courage
String badend1 = "Circle stays silent for several moments, trying to calm down and gain enough courage to confess. Right as Circle prepares to speak, Triangle shows up.";
String triangleinterrupt = "Guys, what are you still doing here? School's long over. Let's all walk home together!";
String interruption = "Triangle calls out to the pair and interjects into their conversation. The moment passes, and Triangle continues to chatter away. There's no way Circle can confess now.";

//set up canvas + image, sound, font links + redirect to title page
void setup() {
  //currentpage = 0;
  background (0);
  size (800, 600);

  window = loadImage ("windows.png");

  flippage = new SoundFile (this, "pageflip.wav");

  gamefont = createFont ("Courier", 30);
  decofont = createFont ("Arial", 60);

  titlecard();
}

void draw () {
}

//split different routes using space, f, and j keys for proceeding and choices + set up system where program checks which state/page it is currently on with booleans
void keyReleased() {
  if (currentpage == 0 && key == ' ') {
    expositionpage();
  } else if (currentpage == 1 && key == ' ') {
    choice1();
  } else if (currentpage == 2 && key == 'f') {
    choice1L();
  } else if (currentpage == 3 && key == ' ') {
    noconfidence ();
  } else if (currentpage == 2 && key == 'j') {
    choice1R();
  } else if (currentpage == 4 && key == ' ') {
    choice2();
  } else if (currentpage == 5 && key == 'f') {
    choice2L();
  } else if (currentpage == 5 && key == 'j') {
    choice2R();
  } else if (currentpage == 7 && key == ' ') {
    needadvice();
  } else if (currentpage == 6 && key == ' ') {
    choice3();
  } else if (currentpage == 8 && key == 'f') {
    choice3L();
  } else if (currentpage == 8 && key == 'j') {
    choice3R();
  } else if (currentpage == 9 && key == ' ') {
    lostway();
  } else if (currentpage == 10 && key == ' ') {
    choice4();
  } else if (currentpage == 11 && key == 'f') {
    choice4L();
  } else if (currentpage == 11 && key == 'j') {
    choice4R();
  } else if (currentpage == 12 && key == ' ') {
    goodending();
  } else if (currentpage == 13 && key == ' ') {
    thankyou();
  } else if (currentpage == 14 && key == ' ') {
    interruption();
  } else if (key == 'r') {
    restart();
  }
}

// display title card text and elements
void titlecard () {
  currentpage = 0;
  background (0);
  textAlign (CENTER);
  textFont (gamefont);
  text (title, 400, 200);

  textSize(20);
  textAlign (CENTER);
  textFont (gamefont);
  text (proceed, 400, 250);

  circle (400, 500, 400);
}

// display exposition text and elements
void expositionpage () {
  currentpage = 1;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (exposition, 50, 50, 700, 200);

  textFont (decofont);
  text ("!", 550, 280);
  circle (400, 400, 300);
}

void choice1 () {
  currentpage = 2;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice1, 50, 50, 700, 200);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice1L, 10, 270, 300, 400);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice1R, 500, 270, 270, 450);
}

void choice1L () {

  currentpage = 3;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (badend4, 50, 30, 700, 200);

  textFont (decofont);
  text (":/", 520, 300);
  triangle (400, 250, 200, 550, 600, 550);
}

// display bad end resulting from choosing to talk to triangle
void noconfidence () {

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (noconfidence, 50, 50, 700, 200);
  
  text (restart, 50, 530, 700, 300);
  
  textFont (decofont);
  text (":(", 550, 280);
  circle (400, 370, 300);

}

void choice1R () {
  currentpage = 4;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice1rect, 50, 50, 700, 200);
  rect (270, 170, 250, 550);
  textFont (decofont);
  text ("! :D", 600, 190);
}

void choice2 () {
  currentpage = 5;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice2, 50, 50, 700, 200);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice2L, 10, 270, 300, 400);


  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice2R, 500, 270, 270, 450);
}

void choice2L () {
  currentpage = 6;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice2leave, 50, 50, 700, 200);

  rect(270, 200, 220, 600);
  fill (0);
  circle(290, 400, 20);
}

void choice2R () {
  currentpage = 7;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (badend3, 50, 50, 700, 200);

  textFont (decofont);
  text (":/", 300, 300);
  circle (200, 440, 250);

  textFont (decofont);
  text ("!!!", 470, 300);
  rect (520, 270, 200, 300);
}

// display bad end resulting from choosing to talk to rectangle and then asking for extra advice
void needadvice () {

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (needadvice, 50, 30, 700, 200);

  text (restart, 50, 530, 700, 300);

  textFont (decofont);
  text ("...", 320, 270);
  circle (200, 370, 250);

  textFont (decofont);
  text ("!!!", 470, 290);
  rect (520, 230, 170, 280);
}

void choice3 () {
  currentpage = 8;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice3, 50, 50, 700, 200);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice3L, 10, 270, 300, 400);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice3R, 500, 270, 270, 450);
}

void choice3L () {
  currentpage = 9;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (badend2, 50, 50, 700, 200);

  image(window, 250, 250, 300, 300);
}

// display bad end resulting from choosing to talk to rectangle and leaving but choosing to go left
void lostway () {

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (lostway, 50, 50, 700, 200);

  text (restart, 50, 550, 700, 300);
   
  textFont (decofont);
  text (":(", 550, 300);
  circle (400, 400, 250);
}

void choice3R () {
  currentpage = 10;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice3right, 50, 50, 700, 200);

  textFont (decofont);
  text ("!!!", 300, 330);
  circle (200, 450, 250);

  textFont (decofont);
  text ("?", 470, 330);
  square (520, 350, 230);
}

void choice4 () {
  currentpage = 11;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice4, 50, 50, 700, 200);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice4L, 10, 270, 300, 400);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (choice4R, 500, 270, 270, 450);
}

void choice4L () {
  currentpage = 12;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (goodend, 50, 50, 700, 200);
  text (goodendcircle, 50, 140, 700, 400);

  textFont (decofont);
  text ("!!...<3", 600, 310);
  circle (400, 420, 310);
}

// displays good end from talking to rectangle, leaving immediately, searching right, and then confessing without hesitation
void goodending () {
  currentpage = 13;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (goodendnarration, 50, 50, 700, 200);
  text (goodendsquare, 50, 150, 700, 400);

  textFont (decofont);
  text ("<3", 570, 310);
  square (250, 300, 250);
}

//displays ending screen for circle and square plus a thank you message to the player
void thankyou () {

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (happyending, 50, 50, 700, 200);
  text (thankyou, 50, 530, 700, 300);

  textFont (decofont);
  text ("<3", 380, 250);
  circle (230, 370, 250);

  square (450, 250, 230);
}

void choice4R () {
  currentpage = 14;

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (badend1, 50, 50, 700, 200);

  textFont (decofont);
  text ("... ... ...", 600, 310);
  circle (400, 420, 300);
}

// displays bad end from talking to rectangle, leaving immediately, searching right, but hesitating before confessing to muster up courage
void interruption () {

  flippage.play();

  background (0);

  fill (255);
  textAlign (CENTER);
  textFont (gamefont);
  text (interruption, 50, 50, 700, 300);

  text (restart, 50, 550, 700, 300);
   
  textFont (decofont);
  text (":(", 550, 300);
  circle (400, 400, 250);
}

//restart function that brings program back to title card
void restart () {

  flippage.play();

  titlecard();
}
