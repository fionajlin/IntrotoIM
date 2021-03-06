## Refined Final Project Idea

After a bit more consideration on my project, I've decided to work with the guessing game idea, where the player will try to match the program's randomized color selection. 

In order for this system to work, I think I'll work with four or five color options that the player and the program can choose from. The Arduino aspect of the program will then function as the way for the player to choose the color they would like to bet on, which will then send a corresponding signal to Processing in order to display the player's choice as well as the program's randomized choice simultaneously. The Processing aspect of the project will handle the display of the game itself, with the title screen, possibly a countdown of some sort, and the color display with half of the sketch being the player's choice and half of the sketch being the program's choice. If the two are the same, Processing will then display a win screen, and if they are different, it will prompt the player to restart. 

![](https://github.com/fionajlin/IntrotoIM/blob/main/Final%20Project/media/IM%20final%20sketch.jpg)

I think the part that I currently have most questions about is the timing of the game, where if I want to work with a timed game, the player should have a certain
amount of time before the program forcibly moves to displaying the colors, but I'm not quite sure how to make sure that the randomized color is not displayed before that time is up or the player has locked in their choice. It's most likely that the solution is simpler than I think, so I believe once I actually have my circuit built and can begin coding and testing, I'll have more specific questions as well as ways to consult forums online. 


### Dec 07 Update:
- Color picking mechanism is working
- Title Card added

Issues: 

- Random generator does not trigger when space key is pressed a second time - remains black (bg)
      -- random generator worked when title card was not implemented - perhaps the use of state variable caused interference in registering pressed key sequence?
- Have not been able to figure out how to identify whether left side and right side are the same color
      -- idea was to use the hexcode and boolean, but not sure how to identify the individual hexcodes separatele, as well as where to place the if statement to verify similarity
      
### Dec 8 Update:

- Visited IM Lab to consult Jack on my code
- Re-structured my state machine, moved all of the construction to draw function, used keyReleased only to move in between states
- Fixed minor issues with color and background

### Dec 10 Update:
- Re-structured my color system - moved to use if statements for both in order to cross check the input as an integer, rather than using if statements for the serial and an array for the randomization


### Dec 13 Update:

Troubleshooting at IM Lab with Jack - fixed issues with color continuation, text color, verification of same color, delay, state movement, inconsistent win and lose screens

New issue: implemented two extra color options and buttons, win and lose screen returned to being inconsistent --> can't figure out why, as this issue had cropped up earlier but seemed to be resolved when I was discussing the code with Jack

User testing video :
![](https://github.com/fionajlin/IntrotoIM/blob/main/Final%20Project/media/final%20project%20testing.mov)
