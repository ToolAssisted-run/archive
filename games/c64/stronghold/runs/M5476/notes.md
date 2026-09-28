> **Imported**
> This run was originally published at https://tasvideos.org/5476M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Stronghold (Compute's Gazette)
Nine of your best men are suddenly trapped by an enemy attack, using force fields. Your only hope is to find a way to deactivate them. But the pursing enemy forces don't have a perfect plan, as they have laid out security consoles, that grant access to these variant force fields. The only problem...is that they are hard to find, in the winding maze-like caves. Its up to you, to locate these console for the necessary security clearness . But watch out! Aliens are all around and have come to take you down, as they exert their authority over your mining operation. The stronghold of the enemy has risen, and you must prevail! - NYMX (I had to come up with something, since I can't find an article. LOL)

The article for this game can be found on page G-25 of [https://archive.org/details/1991-04-compute-magazine/page/n113/mode/2up|Compute! Issue 128 (April 1991)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 25th TAS from this series.

Here is an awesome game that I never knew anything about. Every since the cancellation of the magazine series, Compute! decided to let the Gazette continue alongside the parent series. Eventually, they would start disk only issues...eliminating the need for typing in any programs published that month. I never knew about this disk series, and I'm saddened by this...as I would have loved it when this game came by. It is amazing!!

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
*[8418S|Circuits]
*[8421S|Going Up?]
*[8433S|Space Dock]
*[8450S|Saloon Shootout]
*[8451S|Sno-Cat]
*[8455S|Queens' Quarrel]

!!Game Ending
Once you have rescued all nine prisoners, returning to the starting point will end the game with confirmation screen.

!!Map Creation
I am so glad that I took the time to create a map of this game, as it helped out tremendously in understanding what I was able to do in this game. Most obviously, is my routing and where I could apply the tricks that I have learned in it.

[https://cdn.discordapp.com/attachments/555565815987175424/1129518626974744626/Stronghold.png]

!!Effort In TASing
I have been TASing this game for about 8-10 hours a days. When I started, I didn't realize what I was about to get in to. My original attempt, which was finished and about to be submitted, was played out as the game was intended. No glitches, but utilizing deaths to help navigate the caverns a bit quicker. As I searched for more frames, I ran into a strange occurrence and saw my ship clip a platform. I was asking myself, "Why did that happen?". After continuing, I started to see more of this...because I was doing all that I can to cut more time. Eventually, I saw a number of things that was happening that led to me finding a way to clip and pass through walls...thus glitching the game out in a number of places.

Here are some details that I discovered on how this glitch works:

!Clipping Glitch
*Sprite Collision must be triggered. This happens when any sprite is touching another object.
**Aliens floating around inside the wall.
**Platforms that have functionality. (IE. Security Console, Save Platforms)
**Firing shots into the wall
**Can be done a lot easier going downwards, as upwards has it own problems to overcome.
***Upward movement needs to have an functional object, embed within the wall
***Need to have a wall that can be shot, as you enter going up. (This is not so easy to do or find, thus resorting to an alternative method, described below)
*Screen Transitions
**Almost acts like a "Pause", where there is a moment that the code stops detection on objects
**Must be done on the edge of the screen, going back and forward to prevent collision detect, as you move in a desired direction
**Can be used in combination with normal wall clipping to help speed up the process.

!!Previous Encode
This is the encode that I was about to use for this submission, until I discovered this major glitch
[module:youtube|v=p_aFIo7WcrA]

!!Human Comparison
This video does an alright job showing the normal game play, but you'll see that the gamer is squeamish about moving around and touching Security Console and Save Stations. Also appears to be the first time through, since navigating this large map is very confusing at first.

[module:youtube|v=G16MlzpCP_c]
