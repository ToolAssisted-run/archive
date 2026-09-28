> **Imported**
> This run was originally published at https://tasvideos.org/5774M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!The Viper (Compute's Gazette)
This is a fast, furious, hungry snake. It races about, devouring its favorite food-asterisks!. And the more it eats, the bigger it gets. Since snakes have a hard time growing wider, the Viper simply gets longer. Since the Viper has such sharp, venomous teeth, it must not in its haste accidentally run into its own lengthening body. To make things especially interesting, the Viper must maneuver through a maze with electric walls. One false move means certain doom.

The article for this game can be found on page 42 of [https://archive.org/details/1983-08-computegazette/page/n43/mode/2up|Compute's Gazette Issue 2 (August 1983)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 46th TAS from this series. Additionally, a YouTuber responded to my publication of "Sky Diver". The statement was a response to someone asking "Why?". Basically..."It also sets up the competition that allows us to see what is possible in a game".  So this is what I also agree with, with an extra of completing a "Compute's Gazette" library.

One other note. I was resistant to TASing this game, until I found that it had an "Machine Language" routine inserted into it to help the game run super fast. This suddendly made this game more appealing for me to tackle.

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
|33|[8597S|Space Worms]|34|[8599S|Powerball]|
|35|[8604S|Castle Dungeon]|36|[8613S|Pool]|
|37|[8620S|Snake Pit]|38|[8644S|RADs]|
|39|[8649S|Spy Defense]|40|[8658S|The Forbidden Crypt]|
|41|[8684S|Cosmic Combat]|42|[8686S|Canyon Cruiser]|
|43|[8706S|Cell Runner]|44|[8742S|Sky Diver]|
|45|[8743S|Snake Escape]|

!!Game Difficulty and Ending
The difficulty is set in two different settings. One...you must select the speed that your wish to operate at. The second one is having the choice of a maze to navigate through. By selecting the "Hard" maze, we can go for the most points possible, since the calculate for determining score is below:

No Maze:
(Number of Asterisks Eaten) X (1) X (Speed Selection)

Easy Maze:
(Number of Asterisks Eaten) X (2) X (Speed Selection)

Hard Maze:
(Number of Asterisks Eaten) X (5) X (Speed Selection)

In this run, I choose the "Hard" maze, since it helps me to get the most points in a quicker manner.

!!Effort In TASing
This game started off looking easy, and I quickly realized that it was quite difficult. In fact, the version that I'm submitting here was my best effort of many times through. I tried multiple run-throughs with different concepts and only one come through.

There was a few things I found out about this run:
*You cannot play this game on speed 20. I had to reduce it to 19, since 20 was impossible for a TAS to control. Its almost like it didn't have any throttling to allow control.
*You cannot get a continuing growing snake. There is a programming error where the snake's length breaks an 8 bit value and crashed the ML (Machine Language) routine being used to help make the game run super fast. So the maximum score that can be achieved is 11970.
*RNG is controlled by the B.A.S.I.C. written part of the game. This means that we will see each asterisk come up in an expected place; however, there is a way to control RNG in a small way. If you don't want an asterisk to show up in a place, you can put your snake in the pathway of it. In this case, the BASIC routine will just go to the next location...which is not directly controllable by any RNG manipulation.
*After the snake length address hits 127, it will continuing growing in length. The length is not really increasing, but is a programming error in how to keep the length the same. Increasing the value past that point, it will break away and leave the original snake on the screen. It starts over with a 2 block length and you get to do it all over again...until it hits 256. This value breaks the ML routine, keeping the score from increasing.

Here is a version that proves that you cannot go any further, after the last asterisk is collected in this submission. https://tasvideos.org/UserFiles/Info/638370934146385855
!!Human Comparison
[module:youtube|v=HGkkqeetqEE?t=30]

!!Special Thanks
Thanks to [user:DrD2k9] for the talk over the way this game responded. For each surprising thing it threw at me, we had a discussion over it. Basically, he has the same problem as I do...I hate not figuring out why something happened.
