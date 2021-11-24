## Communication Between Processing and Arduino
### Fiona Lin | due November 25th

For this week's projects, we worked on getting Arduino and Processing to communicate with each other, and using serial information from Arduino to control elements within Processing.

Our first exercise was to use a sensor in Arduino to control the horizontal movement of a circle in Processing. I followed along with the recorded lecture in which we discussed communication, and consulted the examples provided in the lecture as well as in files such as AnalogReadSerial. I decided to use an LDR sensor, since I thought it would be fun to control the movement with light, and also because we already went over the potentiometer in the lecture. I drew a simple schematic and then built the circuit based off of it. 

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov25%20Communication/media/Nov25_Comm1_Schematic_.jpg)

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov25%20Communication/media/nov25%20comms1.jpg)

I think because I had a lot of references and instructions to follow along with, coding this step was relatively straightforward for me, and I could understand concepts that would otherwise be kind of confusing pretty well. 

I noticed while testing my code, however, that I would sometimes forget that both programs use the same serial port. There were instances when I had the serial monitor open in Arduino to check that the sensor was working and then tried to run the Processing code at the same time, to which I got an error along the lines of "serial port is busy." After it happened a couple of times at different points of testing both codes, I finally remembered to close the monitor or stop the Processing sketch before making adjustments. 

The main issue I had was that at one point, my Processing seemed to stop working. When I clicked RUN, nothing would happen, and there would be random long strings of text printed in the bottom window but no error message. I initially thought it was an error with my code, so I checked it over again and found a place where I mistyped a name, but when I tried to run it again, nothing happened at all. I then thought it might be because the file wasn't saved, so I tried to do that, but 
the saving notice would pop up at the bottom, but not complete no matter how long I left it for. I tested it in several different files before eventually just
copying my code into a github page temporarily and closing down Processing so I could restart the program. Once I did that and pasted my code back in, everything worked as intended, so perhaps it was just a temporary software issue. 
