> **Imported**
> This run was originally published at https://tasvideos.org/3877M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives
* Emulator used: Bizhawk 1.13.1
* Primary objective: speed
* Uses fastest version: JP
* Uses fastest difficulty: Hero (hardest difficulty)

!! Improvements
While this TAS uses a different version than [5990S], it's an objective improvement on top of the time saved from the version differences. The improvements can be summarized as follows:
* Frequent manipulation of spawning/de-spawning enemies to allow for less waiting time.
* Route improvements (further detailed in the stage-by-stage comments below).
* Ending the first three bonus stages by jumping into the pits instead of walking into them.
* Reduction of the timing of the black screens between levels.

!! About the choice of version and difficulty setting
There are two versions of this game, NA (released under the name "Castelian") and JP (with a ROM going under the name "Kyoro-Chan Land"), and there are two difficulty settings, "Novice" (easy, default) and "Hero" (hard).

! Version
* The JP-version is less laggy. It's difficult to say how big the difference is, but a ballpark guess from my side would be in the range 35-40 seconds over the course of a run.
* The JP-version has a different sprite for the main character.
* On hero difficulty, the NA-version forces you to wait a little over a second for a molecule enemy to move out of the way at the beginning of the first tower. In the JP-version, you can avoid the molecule by getting out of the way with an elevator. The only explanation I can think of is that it's caused by minor hitbox differences between the two main character sprites.
* There is a password system in the JP-version. This has no consequence in a speedrun though.

I decided to go with the JP-version because it's faster. However, I'm also of the opinion that the bird main character looks pretty chill and generally awesome, while the toad character in the NA-version is imo pretty bland and non-descriptive. So that's an added bonus when going with the JP-version.

! Difficulty
* The molecule enemies move twice as fast on hero difficulty. This saves time in some places and loses time in other places compared to novice difficulty. Overall, it favors playing on hero by a few seconds.
* The in-game timer ticks down every 15 game frames (= 45 frames + random lag frames) on hero and every 20 game frames (= 60 frames + random lag frames) on novice. Since the timer is converted into points at the end of each tower, this favors hero difficulty by a few seconds over the course of a run (3 frames saved per avoided tick on the timer).
* Extra lives are awarded every 5.000 points on Novice and every 10.000 points on Hero. Unless this has an impact on the lag generation, it has no consequence for a speedrun though.

Since hero difficulty was easily the faster of the two and also the hardest difficulty, it was an easy choice which difficulty to submit. However, for study purposes of RTA-strategies, I also made a TAS on novice. It was 11 seconds slower and is available here: [userfiles/info/51935530865733165]

!! Game mechanics
! Useful RAM-addresses
12A/122 - x/y of the main character%%%
125/12B - x/y of enemy #1%%%
126/12C - x/y of enemy #2%%%
127/12D - x/y of enemy #3%%%
128/12E - x/y of enemy #4%%%
164 - molecule timer

The coordinate system for the main character is different from the ones for the enemies, but this has no other effect than being a slight inconvenience from a practical point-of-view.

! Enemy behavior
The game can only store four enemies in memory at the same time (including the molecule). When an enemy goes below the screen, it gets de-spawned (exception being the molecule, which is not de-spawned when scrolled off screen) and a new enemy can take its place when the screen has scrolled sufficiently in the vertical direction to reach its spawn point. The enemies always spawn in the same order and their spawn locations and movements are predictable with one exception. There is some variation to the initial movement of some of the destroyable ball enemies. This means there is little RNG in this game (unless you count the many unpredictable lag frames). However, there are still plenty of opportunities for manipulating enemy positions by spawning/de-spawning enemies at the most favorable times.

! Lag
Without a detailed analysis of the game code, the amount of lag is very unpredictable. While such an analysis would without a doubt help to further reduce the time, I deemed that to be beyond the scope of what I wanted to do with this game.

The time of the countdown and splash screens between levels can vary by a considerable amount of time, so most of the time spent on lag reduction was invested in trial-and-error efforts to reduce the time between levels.

! Level countdowns
There are three countdowns after each level and each tick of countdown costs 3 frames (or more if random lag is added). The first one, the timer, is self-explanatory. The other two are:
* Technique - Starts at 100 and is reduced by 2 for every hit. There are two forced hits to complete the game (in towers 3 and 4). One could imagine taking hits in some other places to reach levels below. However, they're far from saving time with the current knowledge.
* Extras - Starts at 0. 5 is always added upon level completion and 2 is added for every destroyed enemy. With the current route, the only optional enemy to destroy is at the end of tower 7. Destroying that enemy reduces more lag than what the additional countdown and the time to shoot a bullet cost.

!! Stage by stage comments
There are many seemingly random stops or unprovoqued jumps (or lack thereof) in the movie. They are either to reduce lag or to manipulate spawning/de-spawning. Below, I'm not going to detail every time such actions are taken, but focus on the main improvements over the previous TAS.
! Tower 1
* Frame 991 - Skipping the molecule in this place is only possible on the JP-version.
* 1119 - Turning around on the elevator before activating helped to reduce lag. This technique is used frequently throughout the run, where it ended up saving time, but will not be mentioned again.
* 2329 - Enemy spawning/de-spawning manipulations throughout the level set up for the two enemies to bounce off of each other.
* 2 in-game seconds saved over the previous run.

! Tower 2
* 6876 - Enemy manipulations allowed for passing below this enemy without waiting.
* 4 in-game seconds saved over the previous run.

! Tower 3
* 1 in-game second saved over the previous run.

! Tower 4
* 15649 - By manipulating the y-position of the molecule, a back and forth on the elevator was avoided.
* 17400-18155 - Improved routing.
* 19416 - I'm quite displeased with this waiting time, but I couldn't come up with a way to avoid or further reduce it.
* 19948 - Manipulation of the enemies and molecule timer to speed up the overall waiting time for getting hit by the molecule later on.
* 5 in-game seconds saved over the previous run.

! Tower 5
* 23974 - Turning around on the elevator before activating it delays the enemy spawn above, resulting in less waiting time during the loop that follows.
* 27477 - Several enemy manipulations from this point on reduce the waiting times in the remainder of this level.
* 5 in-game seconds saved over the previous run.

! Tower 6
* 35258 - A very annoying forced wait here. You can almost make the jump without waiting, but not quite. Despite some effort, I wasn't able to find a way to manipulate the enemies into a better position.
* 1 in-game second saved over the previous run.

! Tower 7
* 1 in-game second saved over the previous run.

! Tower 8
* The molecules near the end often get in the way and enemies need to start getting manipulated almost from the beginning of the level to prevent this.
* 1 in-game second saved over the previous run.

!! Credits
I used DrD2k9's previous submission as comparison in a few places.
