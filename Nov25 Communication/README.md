## Communication Between Processing and Arduino
### Fiona Lin | due November 25th

For this week's projects, we worked on getting Arduino and Processing to communicate with each other, and using serial information from Arduino to control elements within Processing. I based all of my code off of the code that was discussed in our lecture recordings, and adjusted them to fit the sensors I was using. 

Our first exercise was to use a sensor in Arduino to control the horizontal movement of a circle in Processing. I followed along with the recorded lecture in which we discussed communication, and consulted the examples provided in the lecture as well as in files such as AnalogReadSerial. I decided to use an LDR sensor, since I thought it would be fun to control the movement with light, and also because we already went over the potentiometer in the lecture. I drew a simple schematic and then built the circuit based off of it. 

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov25%20Communication/media/Nov25_Comm1_Schematic_.jpg)

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov25%20Communication/media/nov25%20comms1.jpg)

I think because I had a lot of references and instructions to follow along with, coding this step was relatively straightforward for me, and I could understand concepts that would otherwise be kind of confusing pretty well. 

I noticed while testing my code, however, that I would sometimes forget that both programs use the same serial port. There were instances when I had the serial monitor open in Arduino to check that the sensor was working and then tried to run the Processing code at the same time, to which I got an error along the lines of "serial port is busy." After it happened a couple of times at different points of testing both codes, I finally remembered to close the monitor or stop the Processing sketch before making adjustments. 

The main issue I had was that at one point, my Processing seemed to stop working. When I clicked RUN, nothing would happen, and there would be random long strings of text printed in the bottom window but no error message. I initially thought it was an error with my code, so I checked it over again and found a place where I mistyped a name, but when I tried to run it again, nothing happened at all. I then thought it might be because the file wasn't saved, so I tried to do that, but 
the saving notice would pop up at the bottom, but not complete no matter how long I left it for. I tested it in several different files before eventually just
copying my code into a github page temporarily and closing down Processing so I could restart the program. Once I did that and pasted my code back in, everything worked as intended, so perhaps it was just a temporary software issue. 

For the second part of my assignment, I decided to use mouse position as a slider to control LED brightness. In order to begin this project, I first drew up a schematic for it, then built my circuit accordingly. I left the ldr pin from the first part of the assignment in as well, since I would be using it later for the third part and didn't want to build and rebuild my circuit.

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov25%20Communication/media/Nov25_Comm2_Schematic.jpg)
![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov25%20Communication/media/nov25_comms2.jpg)

In terms of my code, I chose to utilize only mouseY as the value for brightness, so I fixed the position of my slider with an assigned x value. I had to consult the lecture notes as well as the recording a couple times as well, as I couldn't quite figure out if the communication I was getting was correct. I ran into an issue where the LED light would jump back to brightness once I crossed the value 255 on my Processing sketch, which I resolved by constraining the values between 0 and 255 on processing to match the LED's brightness limitations. Although this solved the issue of the LED coming back on, I still don't really understand why the problem occurred in the first place. While working on this code, I also consulted [this Arduino page](https://www.arduino.cc/en/Tutorial/BuiltInExamples/Dimmer) to make sure that I was setting up my communication between the programs correctly. 

For the third part of the assignment, we were tasked with using the gravity wind example provided and controlling the wind with a sensor of some kind. I decided to stick with the ldr pin, as I already had the circuit built, so I drew up a schematic to make sure everything connected properly. 

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov25%20Communication/media/Nov25_Comm3_Schematic.jpg)
![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov25%20Communication/media/nov25_comms2.jpg)

For my code, I consulted the example provided as well as the code discussed in class, and modified it to suit the ldr pin that I was using. In order to control the wind, I set up a cutoff point for the light values with which I would control wind direction. I settled on 300, as that was around middle of the values for the lighting conditions I was working with, so for values greater than 350 the wind blew right, and for values less than or equal to 300, the wind blew left. 

You can find videos of my projects in action attached [here (Comms part 1)](https://github.com/fionajlin/IntrotoIM/blob/main/Nov25%20Communication/media/nov25%20comms1%20vid.mov) and [here (Comms part 2)](https://github.com/fionajlin/IntrotoIM/blob/main/Nov25%20Communication/media/nov25%20comms2%20vid.MOV) and [here (Comms part 3)](https://github.com/fionajlin/IntrotoIM/blob/main/Nov25%20Communication/media/nov25%20comms%203%20vid.mov).
