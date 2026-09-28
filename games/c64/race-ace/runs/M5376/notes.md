> **Imported**
> This run was originally published at https://tasvideos.org/5376M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Race Ace (Compute's Gazette)
Put on your crash helmet, pull on your driving gloves, and strap yourself in—you're about to compete against the clock in grueling, cross-country road race. To win, you must weave your red racecar through traffic in all kinds of road conditions. The sooner you finish, the more points you're awarded.

In Race Ace, the course begins on a winding, tree-bordered country road. From there, you move to hot, arid desert where many a car has met its fate among the cactuses. Following another jaunt through the countryside, you enter a long, dark mountain tunnel. Once inside, your headlights turn on automatically, but it's still difficult to see. As you exit the tunnel, the bright sunshine and green grass are a welcome sight, but watch out because the course soon takes you through the frozen north.

The article for this game can be found on page 45 of Issue 83 (May 1990): https://archive.org/details/1990-05-computegazette/page/n45/mode/2up

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 13th TAS from this series.

I don't think I ever had this magazine, until years later...when I finally found someone on the internet that was selling their collection. I wish I had though...the game was labeled with "Editor's Choice". 

Previous Compute's Gazette submissions include (In order of submission):
*[4449M|Astro-Panic!]
*[4805M|Royal Rescue]
*[5046M|Miami Ice]
*[5179M|Chopper 1]
*[5235M|Spike]
*[5314M|Heat Seeker]
*[5317M|Omicron]
*[5320M|Alien Armada]
*[5319M|Star Dragon]
*[5326M|White Water]
*[8332S|Space Gallery]
*[8340S|Bagdad]

!!Tools Used
*BizHawk 2.9
*Lua: Used for BOTing
**BOT: Splotch (A unique concept that I use only on the C64)
**Game Related Calculations
***Scanning for the sprite collision detection address of $D01E for when sprite 1 collides with anything.
***Scanning for the end of the race.

!!Game Ending
This game has a racecourse that is seven "legs" long. Upon finishing the last leg, the game pauses to tally the score against any remaining time left over. Afterwards, it starts back over again.

To understand the ending better, we must first realize the differences and similarities of the first and second loops. During the first loop, you start off slow and have to accelerate up to the max speed of 120 mph. On the second loop, the speed is already maxed out...meaning that it will be faster. No game speed increases occur, nor difficulty. The only thing that changes, is that time is a bit less, as outlined in the article. Since this is a TAS, we can drive perfectly around all obstacles and still make in before the clock expires. So this means each race is the same length.

Because of these details, all unique content is demonstrated during the first 7 legs of the race.

!!Effort In TASing
On the surface, this game looks trivial...and it mostly is. After determining the ending point, I realized that the possibility of ending input early was going to be fruitful for a better TAS time. 

The car's speed is controlled by pressing "Up" on the joystick. Once speed has been maxed out, it is no longer necessary to hold it...as it will continue until something impedes forward progress. This was a perfect situation to have, and led me to writing a derivative of my BOT, that I call Splotch. After determining a few specifics, my BOT ran for a while and the results were shocking! Roughly 12 seconds were chopped off, before the crossing of the finish line! So this makes the ending far from trivial, as RNG was manipulated as such to surpass any expectation of early inputs that I could have hoped for.

!!Human Comparison
This player produced a decent video that demonstrates the game very well, showing the difficulty of human reactions.
[module:youtube|v=uenN-JIOcsM]
