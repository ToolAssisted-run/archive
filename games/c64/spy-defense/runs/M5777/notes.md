> **Imported**
> This run was originally published at https://tasvideos.org/5777M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Spy Defense (Compute's Gazette)
If shoot-'em-up arcade games are you weakness, this exciting action game will provide you with a challenge that will make you come back again and again.

Fighting aliens is a dangerous job, as we've all seen in the movies. For some reason, aliens always have an incredible variety of weapons at their disposal: death rays, regenerating tails that detach to soar like rockets toward their enemies; or perhaps toxic, sulfuric breath. It's a wonder the humans ever win. But this time, we have your, the official Spy Defender, to help humankind.

The article for this game can be found on page 24 of [https://archive.org/details/1988-04-computegazette/page/n25/mode/2up|Compute's Gazette Issue 58 (April 1988)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 39th TAS from this series.

Here is another one that I never typed in. I deeply regret not ever having this magazine. It turned out to be one of the greats. Now, I'm so glad that I have gotten to experience this one...as it is truly a classic shooter with extras that separate it in a unique category.

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

!!Game Difficulty and Ending
This game doesn't have a difficulty setting, but it can be classified as complete upon finishing the 8 the level...as it doesn't increase in difficulty or demonstrate any new content afterwards. This information can be verified in the article text on [https://archive.org/details/1988-04-computegazette/page/n25/mode/2up|page 25]. At the completion of Pit 8, a congratulation screen is presented.

!!Effort In TASing
The idea of optimization is certainly a different animal in this game. Below are some key details about my efforts:
*RNG: This game doesn't have RNG, in a normal sense. Its one of those variables where movement and the de-spawning of enemies can change where and when more enemies will spawn.
*Each level, has a different holding capacity of "Pieces" used to build the bridge. During the creation of this bridge, it is helpful to force the "Black" satellite to spawn on a side that helps to collect it quickly. That way, you can continue to drop more pieces...without delay. If you own a number of pieces that can complete the bridge, you must race to the bottom so that you can get the "Spy" to start walking across quickly. While getting this refill of pieces, you must continue shooting enemies so that the "Black" satellite will spawn faster. Because you have to wait for it, you can remain up higher to battle the enemies until the last few pieces can be filled in.
*Getting multiple enemies to spawn in the same location. Doing so, speeds up the process of getting the "Black" satellite faster.
*The last "Pit". Once you have filled in all the bridge pieces, there is no reason to continue with inputs. So after that last piece has dropped...the inputs are finished. This cuts a large number of seconds...as it coasts to the end where a congratulation screen is given.

!!Human Comparison
Here is another comparison video of an 8-bit community member, NebulusLabyrinth79.

[module:youtube|v=5H0GjnkbYGo]

!!! UPDATE
Initially, after I (DrD2k9) figured out a way to improve the first stage (through a combination of strategy change and RNG manipulation), we thought it would be easy, quick, and worthwhile to redo the run.  It was definitely worthwhile, but quick and easy it was not.  After a few months of work, we've finally completed the redo of the run.  Below is a breakdown of the changes from the original submission to the current version.  Frame Numbers are based on the first bridge piece drop of the stage.%%%
|| PIT # || OLD FRAME || NEW FRAME || DIFFERENCE || FRAMES SAVED/LOST ||
| 1 | 922 | 922 | 0 | 96 |
| 2 | 2077 | 1981 | 96 | 72 |
| 3 | 2948 | 2780 | 168 | 78 |
| 4 | 3930 | 3684 | 246 | 219 |
| 5 | 5040 | 4575 | 465 | -50 |
| 6 | 6235 | 5820 | 415 | 148 |
| 7 | 7546 | 6983 | 563 | 173 |
| 8 | 8877 | 8141 | 736 | 92 |
| Final Input | 9354 | 8526 | 828 |

__Total Savings 828 frames__

As can be seen, on most stages we gained a significant number of frames, but on Pit 5 we lost 50 frames compared to the original.  We both tried multiple times to improve Pit 5 further, but we were simply unable to do so.  We aren't happy with the loss, but are satisfied with the overall improvement through the run (and frankly we're sick of looking at this game).

This brings up randomization.  RNG can be manipulated by altering inputs of both the active player (Joystick Port 2) and of the inactive player (Joystick port 1).  This was heavily used to control enemy and satellite spawn points.  Unfortunately, the highly variable RNG also makes it impossible to determine if a round is truly optimal or not.

Because of the nature of the RNG, I fully believe this run may be improvable.  However, a change at any point in the run would necessitate completely redoing everything thereafter.  And as we saw with Pit 5 above, the subsequent RNG may actually make some stages slower.

All that said, I'm satisfied with the run as it stands.
