> **Imported**
> This run was originally published at https://tasvideos.org/5366M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Puffle Launch is the biggest minigame Club Penguin made; this version was released by itself on Disney LOL. This movie completes the 36 levels as fast as possible.
 
!! Game files

* cp_pufflelaunch.swf - MD5: 1bfa8ce0761ad65f3682e51bef2a7f70
* menus.swf - MD5: 29c1ce35198539866bb4de7e43d1b714

I downloaded all files that were hosted on the site but I'm not sure if the others are necessary:

[https://i.imgur.com/PJWAqaN.png]

!! Comments

I've been running Puffle Launch since 2019 as my main speed-game. PASRC got the ball rolling on TASing it last year. I was very keen to TAS the game but encountered some oddities with movement that I couldn't figure out, which put me off it for a while. Eventually I started TASing individual levels again and then put this together.

This game has an unlockable time trials mode, which makes it an obvious target for speedrunning. The challenge is to beat all levels in a combined best time of under 18 minutes, which is considered one of the most difficult stamps in Club Penguin. This TAS has an in-game time of __8 minutes 43 seconds__. The sum of all unassisted records is 9:50, and the full-game unassisted run is 15:22.

PASRC initially TASed the first 18 levels, and then I made various improvements and finished off the other levels.

!! Movement

Early on I discovered that repeatedly tapping an arrow key, rather than holding it, gives very slightly better speed. This saves frames all over the place, and occasionally enables new techniques. The oddity that put me off TASing this for a long time was [https://www.twitch.tv/videos/1523493016|this], where I inexplicably saved 2 frames on a very short section which I couldn't replicate. I still don't understand the physics and movement in this game nearly as much as I'd like to. Still, the results are quite good.

!! Levels

In time trials mode, all times are rounded (9.46 becomes 9, 9.5 becomes 10). As such, several of the RTA times are upper bounds as the exact decimal isn't known. The encode is on a modded version that shows in-game time with decimals (syncs the same).

||Level||RTA||TAS||Diff||
|	1	|	4.33	|	4.33	|	0	|
|	2	|	4.21	|	4.21	|	0	|
|	3	|	9	|	8.96	|	0.04	|
|	4	|	12.46	|	12.08	|	0.38	|
|	5	|	4.46	|	4.38	|	0.08	|
|	6	|	10.46	|	10.42	|	0.04	|
|	7	|	8.46	|	8.29	|	0.17	|
|	8	|	8.33	|	8.29	|	0.04	|
|	9	|	9	|	8.92	|	0.08	|
|	10	|	22.88	|	22.29	|	0.59	|
|	11	|	9.88	|	9.71	|	0.17	|
|	12	|	29.46	|	25.5	|	3.96	|
|	13	|	8.38	|	8.33	|	0.05	|
|	14	|	10.46	|	10	|	0.46	|
|	15	|	6.5	|	6.46	|	0.04	|
|	16	|	9.46	|	8.79	|	0.67	|
|	17	|	7.5	|	7.42	|	0.08	|
|	18	|	16.38	|	15.71	|	0.67	|
|	19	|	54.46	|	48.25	|	6.21	|
|	20	|	21.46	|	20.54	|	0.92	|
|	21	|	21.96	|	20.63	|	1.33	|
|	22	|	17.46	|	16.58	|	0.88	|
|	23	|	13.46	|	12.29	|	1.17	|
|	24	|	31.46	|	21.21	|	10.25	|
|	25	|	3.75	|	3.71	|	0.04	|
|	26	|	5.42	|	5.25	|	0.17	|
|	27	|	6.21	|	6.17	|	0.04	|
|	28	|	11	|	10.92	|	0.08	|
|	29	|	6.75	|	6.75	|	0	|
|	30	|	12.88	|	12.67	|	0.21	|
|	31	|	10.33	|	10.25	|	0.08	|
|	32	|	10.42	|	10.38	|	0.04	|
|	33	|	22.46	|	20.54	|	1.92	|
|	34	|	27.46	|	22.92	|	4.54	|
|	35	|	13.17	|	13.13	|	0.04	|
|	36	|	116.46	|	78.13	|	38.33	|

! Notable levels
* 4: The first significant use of tapping out of the green cannon.
* 5: This was the first level to see an improvement from tapping. It was stuck at 4.5 RTA for a very long time, and this was the key to a 4.
* 10: The piano at the end of the level moves back and forth on a cycle and limits the possibility of any improvement, otherwise a 21 would definitely be possible.
* 11: This uses a strategy that was found accidentally by [https://www.youtube.com/watch?v=5d1FoA3YDnI&t=210s|Joshua Kanai]. The triple bounce on the balloon is so precise that I was never able to replicate it in real time. It ultimately appears to only saves a few frames.
* 12: The first boss level. The TAS can hit the crab repeatedly with no breaks.
* 15: Extremely simple level, but 6.46 requires a level of mashing that hasn't been done in real time yet.
* 19: Notoriously difficult level with a lot of blind bounces. The small time saves from hitting the edge of balloons adds up throughout for quite a large save.
* 20: Tapping near the start saves around 2 seconds, as without it the anvil bounce would just barely miss the cannon.
* 21: The path from the slingshot to the cannon can vary a lot and this seems to be the best one possible. I did make it to the cannon 1 frame faster, but the fan cycle was worse. The balloon bounces at the end are quite precise and save around half a second over RTA.
* 22: Intentionally lost time towards the start because of the anvil cycles at the end. The precise anvil bounces in that short section save almost a second over RTA.
* 23: Eventually found the cactus->balloon->cactus bounce to save around 0.7.
* 24: Normally this level is completely unpredictable due to the spinning anvil. There's a slight difference between this version and the Club Penguin version in the starting position of the puffle.
* 25-32 are quite unremarkable, couldn't find any significant improvements.
* 33: Initially had a 21.29 with a clip through the gravity box. I eventually found this to be faster, but some other box clip could be faster still as it's hard to get one even in TAS.
* 34: Lots of precise box jumps to save a lot of time over RTA. Quite a fun one.
* 36: This has the most significant version difference with the plants in phase 1 of the boss fight. They should be surrounding the crab to make it harder to hit. This level definitely has some room for improvement, despite being the biggest time save in the run.

!! PASRC's comments

I started this TAS back in April 2022, but it's finally complete now. Halfway through making this TAS, Randomno discovered the mashing technique. This meant many of the stages I completed needed to be TASed again with this new technique. Fortunately, it was very easy to replace the input from a stage with a new version. There were no desyncs we had to worry about, including across different libTAS and ruffle versions. I'm very glad that Randomno was able to finish the TAS I started.

!! Conclusion

I've been up for many hours fiddling with encode and I'm not sure what to say at this point. Really happy to finish this. Puffle Launch 100% will be my "ultimate project". <insert joke about ruffle/puffle similarity here>
