> **Imported**
> This run was originally published at https://tasvideos.org/6302M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Scorpion II (Compute's Gazette)
Scorpion II is a card game that has similarities to "Solitaire". Unlike many other forms of that game...all the cards are dealt, leaving no deck to deal with. With this version, there are five cards face-down in the center of the top row, three in the second, one in the third, and none in the fourth. Afterwards, the remaining cards dealt...will repeat the same pattern again, minus the last row.

The article for this game can be found on page 46 of [https://archive.org/details/1988-10-computegazette/page/n47/mode/2up|Compute's Gazette Issue 64 (October 1988)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 87th TAS from this series. 

This is a magazine that I can't forget. The game that caught my attention, was [5726M]...which I TASed at the end of 2023. Because of that game, I really didn't have interest in the other ones...as the names didn't appeal to me, nor did playing a computerized version of a card game. My thoughts were..."It looks boring". Woah! I was WRONG! This is a game that I missed out on, and now I'm enjoying it...especially the journey of TASing it

!!Game Difficulty and Ending
There is no difficulty setting. The ending is clear, as you will see all the cards collected at the bottom...only to be followed up by a "jingle". Then it goes back to the main menu.

!!Effort In TASing (BOTed)
Once I realized how this game operated, I immediately thought of BOTing. Only this time, I was going to port the operation of the game over to a C# application as I did with [6148M]. This would dramatically speed up the process and give me a more optimized game. The problem...is that I have to find the right seed, in order for this to stand. So, below is the process on how I approached this version:

*Find the best RNG Seed.
This process took a bit of time to figure out, as I had to experiment on which layouts would yield the fastest times. I had originally thought of collecting up a large amount of "Card Layouts" and BOTIng each one...but the process of BOTing all of them would have taken a super long time (Maybe a few years?). So, I decided to scan for the best layouts; however, what would that look like? Well, I quickly discovered that it was necessary to have all the "Aces" available for quick picking. So I wrote a lua script to get the responses from the emulator until I got a few scenarios I wanted.
To get this lua script working, I had to find the locations where these cards were being generated. The layout can be found in the following addresses:

;0xcfc1 - 0xcff4 (Cards are in reversed order, from how they are dealt on the screen)

*Find the best playing route.
Here is where most of my time was spent. When I started building out the C# code, I started to realize how much detail was needed to make this happen. After about 1 month of coding, I finally figured out a method that helped me to get a reasonably optimized solution for one layout in about 24 to 36 hours. This time was dramatically reduced by capping the amount of possibilities generated, once I realized that a full run was taking more time than I could wait. If I had to guess, it probably would have taken weeks to get the results. At this point of my BOTing, I hadn't fully figured out a good method for a true "Multi-Threaded" environment. You might wonder, how come I have a multi-BOTed solution for [4637M], [4547M], and [5775M]. Well, they were done differently where I ran multiple emulator instances, with affinity set. One of the instances was a controlling master, while the other were slave driven. Each instance was given an assignment that others were not. When one had success, it communicated back to force the master to re-sync all the instances with the new findings...only to start over again.

The end result of this process, was a set of instruction on what card to move. Because it takes time to move the "hand", I added in calculations to help me identify the frame count of each move. it's not always perfect, but it relatively helped me to narrow down the fastest one.

*Apply the moves
Here is the easiest part of the entire process. I took "card moves" and translated them to inputs. By doing so, I had to focus on controlling the "Selection Hand" with precision to minimize movement waste.

!!TASing comparison (My best human effort vs BOTing)
[module:youtube|v=viNSlnOAfp0]

!!Human Comparison
[module:youtube|v=KKMJa9xFeoQ]
