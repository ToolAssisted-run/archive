> **Imported**
> This run was originally published at https://tasvideos.org/5587M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Castle Dungeon (Compute's Gazette)
Your quest is to find three bombs, hidden throughout the castle's rooms and corridors. They were placed by an evil wizard who is trying to destroy the castle.

The article for this game can be found on page 52 of [https://archive.org/details/1984-06-computegazette/page/n55/mode/2up|Compute's Gazette Issue 12 (June 1984)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 35th TAS from this series.

This was one of the earlier games that I had experienced. The article's presentation was very interesting to me, and I ventured into typing it in. I enjoyed playing it quite a bit. Even today, I have checked out its code and thought of trying to re-write parts of it to speed up the slow configuration of the layout.

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

!!Game Difficulty and Ending
This game has no selection of difficulty, but the ending is absolute and clear. The task is simple...find the three bombs and the game is over.

!!Effort In TASing
After having gone through a number of B.A.S.I.C. written games, I have discovered a number of strategies to help force the RNG to my liking. Even though this technique helps out tremendously, the placement of the items are still cannot be controlled to produce exact locations of items. So, since this game is very short, I have ran multiple scenarios and ran across a situation that allowed for me to get the bombs without searching for keys, jumping over pits, or having to fight the blind guardians...all within the shortest route that I found. So in essence, this is a "seeded RNG" run that was applied after the loading of the game to minimize the longevity of the "Load" command....where it was buffered to be faster. It does not alter the game code at all.

That command is
;RND(-15) (seen on the screen as ?R/(-15)

!!Human Comparison
The only run that I could find, besides the VIC-20 version.
[module:youtube|v=Hjzu2UiSBGY]
