import processing.serial.*;
Serial port;

void setup() {
size (500, 300);


port = new Serial(this, Serial.list()[2], 9600);
port.clear();

}

void draw() {

background (0);

// using mouse position for a coordinate circle to create values
circle (250, mouseY, 20);

println(mouseY);

port.write(constrain(mouseY, 0, 255)); //constrain mouse values from 0 to 255, which matches LED brightness
}
