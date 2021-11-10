## Analog and Digital Outputs in LED Manipulation

### Fiona Lin | due November 11th

For this project, we were tasked with getting information from one analog sensor and one digital sensor and using that information to control two LED lights. When I was initially drafting my project, I decided that I didn't want to limit the sensor and LEDs to a one-to-one relationship, as I felt that using one sensor for one LED would somewhat limit my options. Instead, I wanted to combine the two sensors in order to create conditions under which the LED lights would come on and go off. 

To start with, I consulted the class lecture notes to draw up a schematic which I then followed to build my circuit. I initially had a few difficulties with getting both my switch and my LDR sensor to work at the same time (they both worked properly individually when I tested them with digitalreadserial and analogreadserial), but after removing and replacing wires a couple of times and testing my sensors each time, I realized that I had the circuit built correctly the first time, and that part of my code (the variable name) had been typed incorrectly instead. 

![] (https://github.com/fionajlin/IntrotoIM/blob/main/Nov%2011%20Analog%20and%20Digital/media/nov11%20schematic.jpg)

In terms of the actual wiring of my project, I wanted to keep the circuit relatively tidy, so I went to the IM Lab to pick up a couple of shorter wires. I managed to find a set of colored wires, but I didn't manage to find any short black wires I could use for ground, so in this project I decided to substitute the black wire with a purple wire instead, which I consider to still be rather intuitive. 

![] (https://github.com/fionajlin/IntrotoIM/blob/main/Nov%2011%20Analog%20and%20Digital/media/side_view.jpg)

![] (https://github.com/fionajlin/IntrotoIM/blob/main/Nov%2011%20Analog%20and%20Digital/media/top_view.jpg)

After I built my circuit and got both of my sensors working, I began coding the actual sensors and the ways in which they control the two LEDs. I wanted to work with the simple idea of the light fading in and out, which we first explored in class. Although this idea seemed rather simple at first, I decided I wanted the two LEDs to work in an inverted manner - in other words, when the red light came on, I wanted the blue light to go off. In order to achieve the fade effect, I first checked the general light reading in the room I was working with, then constrained my ldr readings within a reasonable range and mapped that onto the range of brightness that the LED provided, except where the red light was mapped from 255 to 0, the blue light was mapped from 0 to 255 to achieve an opposite effect. This completed the analog control section of the assignment.

Then, to complete the digital control of the LEDs, I set up a simple code with the switch where when the switch returned 0, the circuit would default to the analog control, while when the switch returned 1 (meaning it was pressed) the LEDs would follow digital control and light up in an opposite way from the analog setting's default state, In other words, when the switch was 0 and the circuit was in analog resting state, only the blue light would be on, but when the switch was pressed and thus read 1, the circuit would swap to digital control and the red light would come on instead. 

When coding, one error I ran into was that my code would not upload to my arduino board, and a compiling error message would pop up. I consulted several different forums such as [arduino support](https://support.arduino.cc/hc/en-us/articles/360016955139-Error-exit-status-1) and [stack overflow](https://stackoverflow.com/questions/37361201/how-to-solve-error-compiling-an-arduino-sketch) which told me to install libraries in order to solve the issue. I thought that was rather strange, as my code didn't seem to need any libraries, so I did a little more reading in the discussion and also looked deeper into the error message, and eventually found that I had simply typed in the incorrect variable when I was trying to read my analog sensor. 

Overall, I found this project to be pretty interesting while being a little challenging. It helped me familiarize myself with drawing and building slightly more complex circuits, and I found myself feeling more comfortable with the code used as I tested different things in order to debug my project as well. 

[Here](https://github.com/fionajlin/IntrotoIM/blob/main/Nov%2011%20Analog%20and%20Digital/media/video.mov) is a short video of my project put in action. 
