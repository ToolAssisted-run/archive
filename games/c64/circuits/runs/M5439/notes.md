> **Imported**
> This run was originally published at https://tasvideos.org/5439M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Circuits (Compute's Gazette)
The world's security computer has gone haywire. In "Circuits," your job is to shut it down. Armed with a remote-access terminal, you must infiltrate the main circuit boards and cut off the power supply.

But this won't be easy. You can't just turn the computer off — it's too well protected for that. Instead, you must manually switch a series of circuits so that pulses of electricity are directed to critical power points.

The article for this game can be found on page 24 of  [https://archive.org/details/1989-12-computegazette/page/n23/mode/2up|Issue 78 (December 1989)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 19th TAS from this series.

I really was excited when I first received this magazine. The problem though...I had no clue how to play this. Additionally, it was very difficult and I never got far. Taking that long time to type it in, I really wasted my effort. Now, I have returned to it 34 years later to conquer it!

Now that I've finalized this TAS, I completely understand the game. It is now one of the most fascinating games I've ever seen from the magazine series.

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
*[8361S|Race Ace]
*[8379S|Quolerus]
*[8385S|Trap]
*[8407S|Maze-Mania]
*[8410S|Balloon Blitz]
*[8416S|Bowling Champ]

!!Special Documentary
I have created a small video to show how the game, being published with a bug, can be corrected with a POKE statement...which is now allowed by our rules. In this video, I demonstrate how the game normally works, so that you can see why it was a mistake, on Eric Haines part, that keeps the game from being completed as intended.
[module:youtube|v=0C1GUGJR1O4]

The details, used to correct Circuit #5, was applying a POKE statement after the game has loaded. This statement basically removes a floating pyramid that couldn't be reached by the exist pathways. 

;POKE 6437, 0

The game was so hard, I doubt that anyone was able to get to the end to discover this problem. If they did, they probably didn't have enough time to analyze the situation to discover the issue that I ran into. If this was discovered, Compute's Gazette would have published a fix; however, the life of the magazine was about to end...and so was any fix that subscribers could have received.

!!Game Ending and Difficulty
This is a looping game. As stated in the article, there are 5 circuits...after-which, the game cycles back around to the first circuit again. Each repeat, adds a new pulse. The maximum pulses that can exist on the circuit, are 8. So, I choose to start this on the hardest difficulty and complete one loop.

!!Effort In TASing
This is one of the most intense games I've TASed, from this series. This game has no RNG, thus leaving routing as the only choice of strategy. In this game, there are a few items that help to accomplish the completion of each level. They are as follows:
*Shunts: Allow for the redirection of pulses.
*Bridges: A two-way device that can allow pulses to travel in either a horizontal or vertical configuration. Pulse that try to traverse this bridge, when not configured for passage, will cause a circuit crash.
*Transporters: Special nodes that allow re-emergence of pulse to other parts of the circuit board. The color of the transporter will indicate where it will be delivered.
*Integrated Chips: These are nothing more than hidden redirection of pulses. A player must learn how these devices operate, so that they can be taken advantage of.
*Safeties: These are special abilities to help escape unavoidable trouble. Once activated, they will allow a few seconds of invulnerability as pulses encounter these dangerous situations.

The goal of the game is to eradicate the power nodes, seen as pyramids. Each pyramid requires three hits, by the traveling pulses, before they can be destroyed.

!!Human Comparison
I'm surprised that I couldn't find anything. This is probably because most people didn't know how to play this game or even beat it.

!!Special Thanks
*[user:feos]: For listening to my concerns and agreeing to change the rules to allow such special cases.
*[user:DrD2k9]: For the initial conversations that prompted me to take my concern to the TAS Videos community.
