## Unusual Switch

### Fiona Lin | due November 4th

For our first assignment using Arduino, we were tasked with creating an unusual switch for a circuit. I took inspiration from one of those interactive children's pop-up books and chose to make a notebook the base for my switch. My idea was fairly simple - when the notebook was closed and the covers touched, the switch would activate and the current would pass through, turning the red light on. In order to achieve this, I drew a simple schematic following one of the simple switch schematics in our lecture notes, and then modified it to use exposed wires rather than a button. 

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov%204%20Switch/media/switch%20schematic.jpg)

In order to create my actual switch, I utilized the two exposed ends of the extra wires as the "broken" link in the circuit. I took inspiration from Sonny and Injoo, who posted their assignments on Discord, and chose to use aluminum foil to help my system work a bit more smoothly. I wrapped the two pieces of exposed wire in aluminum foil to form a litte paddle of sorts, then taped one pandle to each side of the notebook cover, aligning them to ensure that they would touch once the notebook was closed. 

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov%204%20Switch/media/switch_foil.jpg)

Like this, my simple but unconventional switch was completed. I then coded a simple program that turned a red LED on whenever the switch was activated (the notebook was closed). I ran into some difficulties, however, in making sure that my code was working properly, as sometimes the LED would flicker a bit or not turn on when I expected it to. In order to check if the program was running properly, I decided to add a blue LED to my circuit and code that to flash whenever the circuit is not connected, or in other words, the notebook is open and the switch is off. The code worked perfectly, and the blue LED would begin to flash whenever I disconnected certain wires or adjusted the foil, letting me know that the program was fine. 

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov%204%20Switch/media/switch_red_light.jpg)

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov%204%20Switch/media/switch_blue_light.jpg)

I then noticed that as opposed to the blue LED, my red LED was really dim when lit up. I'm not sure if the LED itself was just like that, as even when I swapped for a different red LED, the light still remained rather dim. I then wondered if it was an issue with the wires, so I tried changing some of the wires that I hooked up to the red LED, but the light remained unchanged. I'm not sure exactly why the blue LED was so much brighter, but since both lights lit up properly when they were supposed to, I concluded that the circuit was working properly. 

Attached [here](https://github.com/fionajlin/IntrotoIM/blob/main/Nov%204%20Switch/media/arduino%20switch%20vid.mov) is a video demonstrating how my circuit works!

Overall, I thought this project was a fun way to get more accustomed to building my own circuits and familiarizign myself with the concepts involved with switches. I think that by putting these ideas into use, I got to better understand how the circuit functions and how I should modify my code in order to test whether different aspects of my project was working.
