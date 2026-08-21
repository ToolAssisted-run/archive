> **Imported**
> This run was originally published at https://tasvideos.org/6763M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives

* Emulator used: Bizhawk 2.10
* Primary objective: speed

!! Game mechanics
See the game resource page for this game. There are however several aspects of the game mechanics that could be worth investigating for cutting off additional time.

There is a 4f framerule for starting and ending a stage.

!! Stage by stage comments

! China
Junk - It's also possible to jump-climb up along the mast, but it's clearly faster in a TAS to collect Bartman and fly to the exit.

Great wall - Vertical movements and jumps slow Bart down. Jumps more so than vertical movement. There are some additional vertical inputs to counter random lag and a jump to avoid a Krusty head (costs countdown time at the end of the world), but it shouldn't matter because of the level framerule.

Boss - Excellent boss pattern and a good ammo drop. I've done this fight several times through multiple TAS iterations and this is the best fight I've seen.

! North pole
Ice cave - 8f delay introduced before the start of this level to get an acceptable seed to work with. I have yet to see a stalactite pattern that allowed for running straight through it. Based on having done several iterations of this level, I would this was an acceptable seed, but still overall a bad level because of the forced initial delay.

Frozen river - There is some depth to the ice flow mechanics that is not yet described. From what I've seen, the time difference between "good" ice flow movements and "bad" is only a few frames though, so it's not worth delaying the start of the level because of the 4f framerule. Overall, I think this was acceptable. And for this particular TAS, it anyways doesn't matter because of the boss fight coming right after

Boss - Very good boss pattern (= the boss retreated back very quickly in the 1st cycle). Since the time it takes for the boss to retreat directly depends on the global timer, any time save before this level would have to be considerable for it to save any time (smaller time saves will only result in a corresponding waiting time at this boss).

! Egypt
Great pyramid - No comments

Valley of the kings - This level normally contains several tornadoes, but they seem to be despawned by bunny-jumping across the level.

Sphinx - No comments

Boss - While there is randomness to this boss, it seems like it's always possible in TAS conditions to get a perfect fight.

! Hollywood
Soundstage 1 - This is the first level where random lag is really a problem. Spawning enemies above or below cause a lot of it, but lag will be generated even when trying to do as small jumps as possible. The enemy placement in this level is also a bit unfriendly for a fast completion, requiring intentional slowdown and even taking damage once.

Soundstage 2 - The mausoleum (?) isn't as bad as the pirate ship, but still generates a bit of random lag. While some of it can be avoided, there is still quite a bit left. The movement in some sections is even intentionally slowed down to reduce lag in order to save time overall.

Boss - As far as I can tell, this is a perfect boss fight. Because of the additional RNG manipulation possibilities in this world (see the game resources), this is however to be expected.

!! Potential improvements
Other than the usual disclaimer about the possibility of lag reduction, movement optimization and "unknown unknowns", there are a few additional points that are worth mentioning:
* It's possible to clip into some of the walls. See the user files and discussion in the forum. At first glance, this looks like it could result in significant shortcuts. However, Bart always seems to get stuck on the level geometry and There is currently no known use for this. The game mechanics behind haven't been described yet, so it's possible further investigation could reveal potential exploits though.
* There are several aspects of the game mechanics that are of interest for TASing that are currently undescribed. See the game resource page for the current status.

!! Credits
* 'Randomno' pointed out a faster way to grab the Bartman icon in the first level, leading to a 24f save
* 'deign' for finding a way in the Bart vs Space Mutants TAS to manipulate Bart's speed to 0x26E sub-pixels/f (the "normal" max speed is 0x260).
