## Generative Text

### Week 4 | Fiona Lin | due September 30th

Our assignment this week was to create a work using generative text or data visualization. I had a bit of trouble with coming up with an idea for this project, because I wasn't quite sure what qualified as generative text, and I didn't really have a partcular data set I wanted to work with. I ended up deciding to tackle the generative text aspect, since I believe it'll come in handy for later projects, and chose to make something that would display text when interacted with as the "generative" element. 

When thinking about interaction and text, one of the first ideas that popped into my head was about socialization. I began thinking deeper about socialization as something that prompts a response, which relates back to some of our earlier readings and discussions. As such, I decided to work with one of the most basic forms of socializations - greetings. I decided to start by displayng "hello," which is one of the most basic forms of greeting, and then chose to incorporate a generative aspect with the responses. I looked up a list of common greetings and wrote them into a string array, then randomized the output so that a different response was generated in each instance. Then, I added the mouseClicked() function so that responses would only register as a result of interaction, much like how greetings prompt us to act in some way (whether by speech or otherwise). 

Initially, I planned for the greetings and responses to occur simultaneously with each click, but I ended up finding that there was a little too much going on, and it also became difficult to differentiate the sections from each other since "hello" is utilized in both instances. I also didn't want to split up the sections in a really orderly way, as I felt like that detracted from the overall representation I was aiming for. In particular, I was thinking about how socialization can be an overwhleming experience and come from a variety of different people, so I ended up choosing to have each iteration of response be in a different font and placed in random locations to emulate the influx of greetings that occur in our daily life. 

In the end, this is one iteration of what I ended up with:

![](https://github.com/fionajlin/IntrotoIM/blob/main/Sept%2029%20Generative%20Text/media/generative%20text.png)

While working, I had troubele figuring out exactly how to work with different fonts, and particularly how to have my program randomize fonts. I ended up searching this question, and found a reference in one 
[Processing forum post](https://forum.processing.org/two/discussion/5343/how-can-i-set-the-font-to-random-by-using-the-pfont-mode) that was really helpful and solved my issues. Beyond that forum, I also consulted the [Processing font reference page](https://processing.org/reference/createFont_.html) as well as the [Processing mouse clicked reference page](https://processing.org/reference/mouseClicked_.html) in order to make sure everything was functioning correctly.

Overall, I found this project to be a good exercise in figuring how text works and practicing customizing the ways in which I use text, which I believe will be useful later on in thinking about our midterm projects as well. 

