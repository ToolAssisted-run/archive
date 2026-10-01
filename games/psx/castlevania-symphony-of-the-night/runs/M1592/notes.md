> **Imported**
> This run was originally published at https://tasvideos.org/1592M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%%Through glitches and things, I always win, 'Cause I am the wind

%%%
!! Summary
* Collect All Relics (((( (28) ))))
* Best Ending (((( (1847 Rooms) ))))
* Abuses Programming Errors
* Corrupt Map Save Data
* Uses Game Reset Sequence
* Takes Damage To Save Time
* Manipulates Luck
* Colors Dracula and Animate Load Screens
* UnOfficial Encodes [#1]
* Download Package [#2]
* Emulator used: {{__[EmulatorResources/PCSX|PCSX-RR]__}} (((( (1.2) )))) 
* ''RealTime:__57:20__''   ''GameTime:__54:43__(last input)''   ''Frames:__206436__''   ''Re-records:__84859 __''
----

%%%
! Movie Goal's

%%%The 2 main objectives of this movie are to obtain the best ending, and collect all relics (items).
%%%It took me a while to decide myself on the goals of the movie, the main reason i sticked to those is i wanted to use as many glitches as possible.

%%%There is no souls, dds or glyphs in sotn, instead there is 28 relics granting various abilities to alucard (note there is 30 on jap version, but those 2 extra are recycled familliar cards)
%%%Collecting all relics is pretty much the same than collecting all items in super metroid, i think its a classic goal among tases now and should not be a problem.
%%%There is also HP/Heart max up, those function alike the missile tank, im not sure of the exact number of those "upgrade" in the game.
%%%The reason i did not try to acquire all max up is because of a glitch that would let respawn them as many time as you want (can go up to 9999HP), i didnt saw the interrest to farm those just to get the same ammount you could acquire in the castles.
%%%Like for metroid half the items are not used in the run, alltho the others are essential for either glitching or simply move swiftly.

%%%The best ending requires you to explore 1847 rooms (196%) at least, this is determined by the room counter directly.
%%%Like for others castlevania and unlike metroid, the game reffer to % for the map completion and not items, the official maximum is 1890 rooms (200.6%), to calculate % divide rooms by 9,52.
%%%The map screen show the official rooms (squares) in blue, grey mean unexplored (after you buy the extra map at librarian), and white rooms are the glitched/oob rooms.
%%%The only exception are the 2 blue rooms and save point in entrance, those are not official but still can be explored by glitching, and show up as regular rooms on the map, this increase the max map to 201.2% (without white rooms).
%%%Many places in the game have "outside" boundarys way larger than inside walls, the most noticable exemple is the staircase in chapel, layer design are square or rectangle, but not shaped like a staircase, as such it mean the real size of the room is twice or three time more than what it look like on map, exiting the wall boundary and fully exploring this place is rewarding many extra rooms.
%%%The game doesnt care what kind of rooms you explored when you enter the final boss, whether they was only blue or mixed with some white ones, you just need to have 1847+ on the counter for the best ending to occur.

%%%I think those 2 goals have a good synergy, if i want just to get the best ending, ill end up crossing all rooms where there are relics, and if i just want all relics, i will still explore a good chunk of the castle.
%%%Having all relics doesnt influct on the ending, but i felt only the best ending would not fit well as a primary goal, for a "100%" kind of movie.
%%%Arguably i could have just go for all relics, even if the ending differences are very small, i did choosed to go also for the best ending.
%%%My main intention was to make the exploration entertaining by using various glitches to exit boundarys, and quickly gain rooms.
%%%By corrupting the map, i was also able to make any backtrack rewarding more rooms, as just the map does reset and not the room counter.
%%%The direct result is that going twice in the same place register twice the rooms, in a "normal" exploration, many place on the map are redundant, you need to use often the teleporter to go back and forth, and end up crossing several times the same room without the counter increasing.

%%%A last word for dirty sram, i took it from [1275M|Richter TAS] who made it from [1246M|zggzdydp's any%], im doing that for having a savegame with "clear" status on it.
%%%If i dont have that memory card, the librarian will not sell mana prisms, making the run considerably slower/sloppier overall (this was tested).
%%%The reason im not using the [1363M|current any%] to build the memcard is that its too tedious to get to dracula in that movie (you need to interrupt, save, then kill boss).
----

%%%
! Improvements

%%%On the route matter, the obvious improvement would be to be able to corrupt the room count, i was able to get all stats, the kill counter ect... to their max, but the room counter did resist me.
%%%Once we find how to corrupt the room count, then we can simply go for relics, and use the last save room near dracula to "boost" the counter and activate the good ending.
%%%This would shorten the run by half or more, most probably, some lua guru around could maybe help the matter, to test all corruption possibilities (its determistic behavior).
%%%
%%%For the technical level of the movie, well, its not exactly perfect, here are some flaw i can list:
*In the early begin at alchemy laboratory, i farm some extra rooms, they may be not so revelant after all, given the higher speed rate you get later on.
*It may be possible to obtain mana refill from the stop screen while i use shield rod in the chapel to get accross the statue (then get sword card without waiting for mana).
*Obtaining 6 fire boomrangs on the way to chapel, and using high jump for reaching sword card wasnt faster, due to the candle you can bounce on (giving good height), but jumping before using boomrangs may be faster.(see next)
*While using fire boomrangs to make a high jump at central clock room, im not jumping first, klmz founded its possible to do so, this would chope some frames with the bat flying upward since i would end up in higher position.
*After olrox, to get inside shiftline (todo:link to tricks page) after ET, i use the wolf then revert back to alucard, later on in the run (keep) i found out you can move forward and push backward+jump to enter the shiftline, approx 100-150 frames to save here by not turning into wolf.

*still more to explain, give it some time :p


[http://arukado.free.fr/TAS/SOTN/100P.png|alt=Recap Map|title=Recap Map]


%%%
----

%%%
! Download Package(([2]))
A {{__[https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/arukado-tas/SOTN-100P_1.0.7z|Download Package]__}} for this movie is available, it contain:
* This submission input file, and ram watch in pcsx format.
* A lua script, featuring various ram values overlay (( (mp, speeds ect...) )).

%%%
! Official Encodes(([1]))
%%TAB Youtube%%
[module:youtube|v=ps9xNM5i-Vw]
%%TAB Archive.org Files%%
* Download Links
** [http://www.archive.org/download/ArukadosPsxCastlevaniaSymphonyOfTheNightallRelicsBestEndingIn/castlevaniasotn-tas-allrelicsbestending-arukado.mp4|MP4]
** [http://www.archive.org/download/ArukadosPsxCastlevaniaSymphonyOfTheNightallRelicsBestEndingIn/castlevaniasotn-tas-allrelicsbestending-arukado.mkv|MKV]
%%TAB_END%%


! Closing

This movie is not perfect, and could be better, yet i hope youll enjoy it, and for a first step for the 100% category i believe it could have been worse.
%%%I also want to thanks everybody that helped to contribute to this movie, directly or not, feedback for wip ect... (too many to be cited directly) and i hope youll enjoy! :p
%%%PS: this page is best viewed on the [2767S|site] rather than forum
