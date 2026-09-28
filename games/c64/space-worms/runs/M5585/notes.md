> **Imported**
> This run was originally published at https://tasvideos.org/5585M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Space Worms (Compute's Gazette)
Some rather unusual and deadly aliens are coming, and it's up to you to stop them.

"Space Worms" is a hypnotic shoot-'em-up game for the Commodore 64. Flying in a triangular space ship, your job is to shoot down a series of wormlike aliens while avoiding contact with their writhing bodies. If you touch a space worm, one of your five ships is destroyed. 

The article for this game can be found on page 24 of [https://archive.org/details/1989-04-computegazette/page/n25/mode/2up|Compute's Gazette Issue 70 (April 1989)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 33rd TAS from this series.

Here is another game that I remember, in my childhood, that I anxiously typed in and played. It was a hard game to play, but this one kept me coming back more often than others. No sound...but that was ok, the parallax scrolling was nice though. Certainly not one of my favorites, but I was glad to add it to my collection.

Previous Compute's Gazette submissions include (In order of submission):
|1|[4449M|Astro-Panic!]|2|[4805M|Royal Rescue]|
|3|[5046M|Miami Ice]|4|[5179M|Chopper 1]|
|5|[5235M|Spike]|6|[5314M|Heat Seeker]|
|7|[5317M|Omicron]|8|[5320M|Alien Armada]|
|9|[5319M|Star Dragon]|10|[5326M|White Water]|
|11|[8332S|Space Gallery]|12|[8340S|Bagdad]|
|13|[8361S|Race Ace]|14|[8379S|Quolerus]|
|15|[8385S|Trap]|16|[8407S|Maze-Mania]|
|17|[8410S|Balloon Blitz]|18|[8416S|Bowling Champ]|
|19|[8418S|Circuits]|20|[8421S|Going Up?]|
|21|[8433S|Space Dock]|22|[8450S|Saloon Shootout]|
|23|[8451S|Sno-Cat]|24|[8455S|Queens' Quarrel]|
|25|[8458S|Stronghold]|26|[8472S|Lincoln Green]|
|27|[8480S|Disc Blitz]|28|[8485S|SuperSprite|]|
|29|[8538S|Dunk]|30|[8579S|Basketball Sam & Ed]|
|31|[8580S|Bee Zone]|32|[8583S|Q-Bird]|

!!Game Difficulty and Ending
There is no level selection, so this game has to be played all the way through until it maxes out its difficulty. I had to do some experiments to confirm this, but I have proved that the article is correct...when it state that Levels 5, 10, and 20 increase the length of the space worm. So in this run, I stop after beating the last worm on 20. To be clear, the article's definition of "Length" is the space that it takes up on the screen, and not the count of body parts that exist.

To confirm the level, address 0x764D can be monitored and altered. Please note, that this one byte is serving two different values. The lower nibble of this byte is the level, while the higher nibble has some unknown use.

!!Effort In TASing
I started TASing this game at the end of May 2023. It may look simple, but I quickly found out that optimization was a little tricky on getting each screens' pattern to show up for the fastest kill that I could manage. It didn't always work well, since the control over the next round's "Space Worm" was rather hard to manipulate. So you will notice that I didn't hold the "Fire Button" down to produce constant shooting...as I need to shoot a specific shot, right before the next round to make changes to an up coming "Space Worm".

!!Human Comparison
I think this video does a decent job at demonstrating the ability of a human to wipe out the space worms, even though the player didn't get very far into the game.

[module:youtube|v=qwZr4ZE-8-E]
