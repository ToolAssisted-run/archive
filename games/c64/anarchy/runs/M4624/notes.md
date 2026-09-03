> **Imported**
> This run was originally published at https://tasvideos.org/4624M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Game Details
Anarchy is a puzzle/shooter combo. You run along the passageways of the warehouses shooting blocks (the rebels' supplies), which you can only do from a distance. In the meantime, enemy droids are chasing you. There are 2 types of enemy droids, one which you can shoot and stun temporarily and one which is invulnerable. Both of these chase you around, with the later being faster and more dangerous. Shoot all blocks in a level and then find the exit. In later levels there are yellow blocks, which once shot materialize in different places, thus creating new passageways.
Finding which route to take is half the story in Anarchy, the other half being a creepy feeling of claustrophobia as enemy droids are after you and time is running out.

!!!Human Comparison
[module:youtube|v=dgxbbK0J8cE]
This was the fastest RTA run that I could find. This runner did decently, but you can tell it was a race against time to complete the harder levels.

!!!Tools
*BizHawk 2.7.0
*Two Lua Scripts (Map Creations, Brute-forcing RNG)
*Excel Spreadsheet (Calculation for generating map block addresses)

!!!Effort in TASing
Because of the intensity I've been through with work and recent TASing projects, I was hoping that Anarchy would have been an easier game to complete. Well, my resistance to running through this quickly turned into another item to complicate my life.%%%
As I started working on this game, I kept discovering small optimizations; thus, starting over at the beginning again. I eventually got frustrated with the "Yellow Block" levels, which I spent a few weeks trying to study the code and memory addresses of the maps. The results were well worth it. I ended up with a lua script for creating maps, an excel spread sheet (to calculate block locations for brute forcing Yellow Block RNG), and a lua script for brute forcing the spawning of the "Yellow Block" locations. Upon creating these new tools...the speed at which I could TAS this game increased significantly.
This game presents 16 unique levels. Once complete...it loops around back to the first round again. Since I'm playing this on hardest difficult (fastest acceleration, as the game calls it), the difficult doesn't increase; however, copying the inputs over to repeat this process would eventually fail, due to enemies crossing in your path from RNG differences.

!!!Strategies
Most of this game can be summed up with finding the fastest route possible. This can be complicated a bit by the movement of enemies, which also abide by RNG. Changing RNG is like most other C64 games that use the kernel instruction to get a random value. This value can be changed by pressing any key, pressing the fire button, or moving in a direction...not to mention leaving blank inputs. How this happens, is that the kernel instruction grabs the last digit of the "tick" value, which the aforementioned interrupts will cause the tick value to be different.
On the side of difficulty, the levels that have "Yellow Blocks" are the most complicated and time consuming on producing the locations that allow for the fastest route. It is not always possible to get the solution you are looking for, because RNG can repeat the same cycle of spawning over and over. Breaking this cycle means you would have to perform other actions to get it into other repeatable predictions...IE, clearing away blocks or changing RNG a number of frames before the area you are brute forcing...sorta of a frame rule, but not really.
By using the maps I created, I was able to generate addresses for my lua script to scan. It basically ran, until it found a change on any addresses that work for my plans.


!!!UPDATE NOTES
While watching the original submission, I (DrD2k9) had a curiosity on movement in one part of the run and briefly discussed it with NYMX.  While my original thought wasn't possible, it did get me interested enough in the game to dig deeper into possible improvements.  After looking more closely at the first couple Areas, I found some improvements and thus NYMX and I decided to rework this run.

Over the course of redoing the run, we saved a total of 1235 frames through a combination of the following:
1) More efficient movement/box attacks
2) Better Routing in a few places
3) Variations in RNG manipulation which allowed for differences in routing (mostly with the yellow block stages)

We made improvements in every stage.  There were no stages that were longer than the previous run.

Most of my input was regarding movement/route improvements with only minor impact to RNG for manipulating enemies.  NYMX and his BOT were the powerhouses behind the RNG manipulations necessary for nearly all the yellow block manipulations.

Here's a quick breakdown of the improvements:
||Stage||Notes||Area Frames Saved||Total Frames Saved||
|Game Start|We were able to start a frame earlier than in the original run|1|1|
|Area 1	|Movement/Route Improvements |12	|13|
|Area 2	|Movement/Route Improvements |37	|50|
|Area 3	|Movement/Route Improvements |103 |153|
|Area 4	|Movement/Route Improvements |61	|214|
|Area 5	|Movement/Route Improvements |26	|240|
|Area 6	|Movement/Route Improvements, Yellow Block RNG Variations |26	|266|
|Area 7	|Movement/Route Improvements |50	|316|
|Area 8	|Movement/Route Improvements |3	|319|
|Area 9 	|Movement/Route Improvements, Yellow Block RNG Variations|156 |475|
|Area 10	|Movement/Route Improvements, Yellow Block RNG Variations |73	|548|
|Area 11	|Movement/Route Improvements, Yellow Block RNG Variations |197 |745|
|Area 12	|Movement/Route Improvements |102 |847|
|Area 13	|Movement/Route Improvements |42	|889|
|Area 14	|Movement/Route Improvements, Yellow Block RNG Variations |103 |992|
|Area 15	|Movement/Route Improvements, Yellow Block RNG Variations|207 |1199|
|Area 16	|Movement/Route Improvements, Yellow Block RNG Variations|36	|1235|

Due to the immense impact of RNG on the later stages with Yellow Blocks, it is completely possible that this run could be beaten. %%% 
__However__, any improvements in the run would require another complete redo of the TAS due to RNG changes.
