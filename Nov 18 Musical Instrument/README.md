## Musical Instrument

### Fiona Lin | due November 18th

For this week's assignment, we were tasked with making a "musical instrument" with the piezo buzzer and some type of analog sensor. I decided I wanted to use the LDR sensor (photoresistor) as I enjoy seeing how the difference in light changes the result you get. I then drew up a simple schematic for my circuit. My original schematic was actually incorrect, so I then consulted my classmate Anushka's schematic and re-drew it as below:

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov%2018%20Musical%20Instrument/media/nov%2018%20edit%20schematic.jpg)

Once I had my circuit built, I tested the switch with DigitalReadSerial and the photoresistor with AnalogReadSerial just to make sure everything was functioning correctly, and also to get a sense of how the light readings varied in the environment I was working with. I used these values to constrain my sensor values later on. 

![](https://github.com/fionajlin/IntrotoIM/blob/main/Nov%2018%20Musical%20Instrument/media/nov%2018%20music.jpg)

From there, I began to work on my code. First, I began with writing a read for my switch and setting up an if statement, as I knew I wanted the song to start only after I triggered it. 

I knew that I wanted to work with a simple melody, so I decided to use the song Twinkle Twinkle Little Star, Which I believe everyone is familiar with. I consulted the pitches.h library in writing my code for the song, and also used my musical knowledge (I used to learn piano) to facilitate coding the notes since I was already familiar with C4 as the notation for middle C and also knew the theory behind note durations. As such, the actual loading of the song as well as each note's duration into an array went relatively quickly. For the remainder of the code, I consulted the toneMelody example to understand how the delays should work, and ended up with a song that flowed pretty smoothly. 

Then, in order to incorporate my photoresistor, I decided to code the song in two octaves, which would play depending on the amount of light that the ldr sensor received. I copied the code I had already written for the original Twinkle Twinkle, and lowered the notes by one octave (so using C3 rather than C4 as the base). Because I was working in relatively low light already, I decided it would be easier to work with the lower end of the light readings, instead of needing a flashlight to work on the higher end. As such, I constrained my sensor values between 100 and 600 (which was the general range of reading in the room). Then, in order to differentiate between the two octaves, I set an if statement with a more than or less than 300, which I felt reasonably represented the manipulation of light on the sensor. 

Overall, I thought this was a fun project, and I found it really satisfying to hear my song flow properly once complete! I think this project in particular went relatively smoothly for me since I was already more familiar with the switch and the ldr sensor, so all I really needed to do was consult the lecture notes and also the toneMelody example to make sure that the piezo buzzer was working properly. 

Here is a [video](https://github.com/fionajlin/IntrotoIM/blob/main/Nov%2018%20Musical%20Instrument/media/nov18%20music%20vid.mov) of my circuit playing the song!
