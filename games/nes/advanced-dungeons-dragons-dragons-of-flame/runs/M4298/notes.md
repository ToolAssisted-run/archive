> **Imported**
> This run was originally published at https://tasvideos.org/4298M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Dragons of Flame is the sequel that was promised in the credits of the infamous "AD&D: Heroes of the Lance". While the game was better received than its predecessor, it was still limited to a Famicom release on Nintendo systems. The game follows the party from HotL after they recovered the discs of Mishakal, until they slay the 'Dragon Highlord of the North', Lord Verminaard. The gameplay can best be described as a (very) poor man's version of Zelda II for the NES.
 
!! Game objectives
* Emulator used: Bizhawk 2.3.1
* Primary objective: speed
* Takes damage and uses death abuse to save time

!! Game mechanics
I haven't found any TAS-exclusive tricks. Everything of relevance for the game mechanics that I'm aware of is described in the [https://kb.speeddemosarchive.com/ADnD:_Dragons_of_Flame/Game_Mechanics_and_Techniques|SDA speedrun guide].

!! Route
The routes through the two overhead sections are fairly easy to see by studying the maps on https://nobusuma256.com/html/kouryaku/adddof/adddof.html . The game then continues with two dungeons with multiple paths. The route taken is indicated by red arrows in the [https://kb.speeddemosarchive.com/ADnD:_Dragons_of_Flame/Any%25#First_dungeon_.28Secret_Path.29|first] and [https://kb.speeddemosarchive.com/ADnD:_Dragons_of_Flame/Any%25#Second_dungeon_.28Pax_Tharkas.29|second] dungeon maps. 

For reference, the slower [=userfiles/info/65918463871025314|yellow] and [=userfiles/info/65918463871025314|violet] routes have been uploaded in the user files. The blue route doesn't work because of too many strong enemies along the path and has therefore not been pursued.

Finally, the health management is important to consider for achieving a low time. A [https://docs.google.com/spreadsheets/d/1l_-wXx-6KWpzaozSEFw-u9T60hrrpYO9V24ShaWBNHM/|spreadsheet] was used to find the best places to take damage.

!! Stage by stage comments
! Overworld, part 1 - The road to Pax Tharkas
* Every movement in the overworld moves the character 16 pixels in either direction. Each movement introduces a few random lag frames. I haven't found any pattern in how many lag frames a given movement will produce.
* The enemies in the overworld home in on the player on average, making it difficult to avoid them, even in a TAS setting. I stopped for one frame in two different places to prevent enemy spawns. If someone invested more time into this game, I believe a script could be written to test the many different movement possibilities and find inputs to reduce stops and random lag.

! Overworld, part 2 - Finding the entrance to the secret path
* Same general comments as above. I stopped twice for one frame to prevent an enemy spawn.

! Dungeon, part 1 and 2 - The secret path and Pax Tharkas
* The dungeons appear to be completely consistent. I did a few iterations because of reroutings and the movie synched every time.

! Bosses - Ember and Verminaard
* The normal method to defeat Ember is to use magic missiles three times. However, it turns out it can be damaged by other attacks as well. When it lowers its head, a high sword attack will damage the dragon. The second time, the sword attack was timed to inflict a double-hit, which was just enough to kill it. The time gain of mixing sword attacks and magic missilies over simply using three magic missiles is just a handful of frames though.
* Verminaard teleports to either the left or the right side of the screen after each hit. The new spawn location only depends on the player's x-position and is therefore easy to manipulate.

!! Possible improvements
I believe the biggest time save left on the table is the route through the overworld sections. There are too many combinations to try by hand, so a script would have to be written to more systematically calculate or test if stop frames can be avoided and if random lag can be reduced. I doubt we're talking about more than a handful of frames though. The problem with writing such a script is that empirical testing would take a long time, while calculating the RNG for upcoming input isn't possible with today's knowledge. Since the global counter in $79, which provides entropy to the RNG-calculation, continues to run during lag frames, getting knowledge of what determines the number of lag frames during a movement would be required first.
