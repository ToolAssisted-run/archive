> **Imported**
> This run was originally published at https://tasvideos.org/4827M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This is a Atari 2600 homebrew. It was nominated for an award for the 3rd Annual Atari Homebrew Awards.

[https://vhzcgames.com/imagenes/capturasperil.png]
 
Game information can be viewed at https://vhzcgames.com/peril.php

!! Game objectives

* Emulator used: BizHawk 2.8
* Aims for fastest completion.

!! Comments
In this game we are a helicopter which will crash if we touch anything, even the walls. We have to beat every level and get to the final boss and defeat him to beat the game.


!! Other comments
* This game handles collisions on the basis of Sprite dimensions, not the hitboxes...
* If we press L+R or U+D, then we will be moving at the same place.
* Some stages have thunder lightning in them, which can be passed couple of frames before it actually disappears because, some spaces are present between the lightning because of the irregularity of lines. (this is the best I could explain...)

* [https://tasvideos.org/UserFiles/Info/637938232648007424|Some RAM Address I've found so far]

* [https://vhzcgames.com/peril.php|Game developer's website linking to digital version]

I thank Nymx for helping me out in giving remarkable improvements in the Movie starting from a better start in room 1 and, room 2, room, room 14, room 32, 2nd Mini Boss, and the Final Boss. 

Nymx can give a better explanation of the improvements

!!Improvements
When MrTASer approached me, about Peril, I (nymx) became quickly interested...especially when he asked if I could share in finding any cuts.

To start off, this game was very well done and I'm really surprised to see something like this on the Atari 2600. Second, MrTASer provided a really good set of inputs, as he made a very good showing in his efforts. At first, I was having trouble finding anything...but after running through this game multiple times, I started to notice mechanics to exploit and began finding cuts.

Because I was annoyed at a frame rule issue, I kept going back and trying to find more cuts. Eventually, I found more movement optimizations from playing with the helicopters collision detection. I'm not sure about other Atari 2600 games, but these sprites act in the same manner as the C64, where collision is against pixels and not the box of the sprite container. Because of this, and a funky movement the helicopter exhibits when turning, I was able to sneak around some corners faster because of the propellers being smaller.
Below, is a list of stages that I was able to improve
||Stage||Area Frames Saved||Total Frames Saved||Notes||
|Stage 1|25|12|Was able to squeeze between the moving block and wall. Previously, MrTASer was going around it. I wasn't able at first...but discovered that turning at the right frame helped me to slip through. So its possible that its a frame perfect maneuver.|
|Stage 4|19|44|Because collision detection works with pixels from two objects exist in the same coordinates, I was able to take advantage of a smaller helicopter blade from a maneuver that causes it to move before it turns, I was able to get the one frame necessary to avoid the 3rd moving obstacle
|Stage 5|1|45||
|Stage 15|15|60|This is a mini-boss (??), where it seemingly responds differently when shot at different times. (Maybe RNG, but not very apparent). When I notice the difference in responses, I then realized a "one" round kill was possible, whereas MrTASer has to back up slightly to continue shooting again.|
|Stage 16|1|61||
|Stage 20|1|62||
|Stage 26|1|63||
|Stage 31|8|71|This mini-boss behaved in the same manner. When shot at different frames, it behaves differently. So I eventually was able to find a quick shooting pattern and cut time off. Plus, I was able to back up slightly, at some places, to give me a head start on escaping.|
|Stage 32|-6|65|The transition between Stage 31 & 32 was affected, by what may be a frame rule. I was never able to recover the 7 lost, which wasn't during game play. There are some screens, where your escape can cause you to loose time...but this wasn't one of them.|
|Stage 33|3|68|This was an interesting discovery. It appears that when the mini-boss gets hit, collision detection is avoided on the helicopter. I'm 50% sure about this, but nevertheless...I was able to shoot earlier by moving downwards more, shooting later, and starting my forward movement 3 frames faster.|
|Stage 37|1|69||
|Stage 39|1|70|Interesting enough. this is where I took advantage of my helicopter, facing away from an the vanishing walls, and turning the opposite direction to have a head start.|
|Stage 40|1|71||
|Stage 43|1|72||
|Stage 45|81|155|Final Boss...the only trick I changed up, was staying in the middle. MrTASer ended up on the outside of the boss and spent time chasing it. Because the movement pattern was essentially a "V", it was better suited to remain in the center of the screen and shoot as much as possible.|

!!Thanks MrTASer
I appreciate MrTASer reaching out to me on this project. This was a fun little run, that gave me a challenge.
