> **Imported**
> This run was originally published at https://tasvideos.org/6795M and entered this archive as a voluntary
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
* Primary goal: fastest completion, any%
* Takes intentional damage and deaths

!! About this TAS
I saw in the forum that a big dialogue skip wasn't used in [2702S] because of not knowing at the time how to replicate it. After my experience with Bart vs the World, which shares the movement mechanics with this game, I wanted to see if I could update the vs the Space Mutants TAS by including this skip.

On a high level, there are three big time saves in this submission, several "medium" time saves (= visibly different approaches) and many minor improvements (movement optimizations etc). The three big time saves to look out for are:
* Skipping the statue dialogue in the first level, ~300f saved
* Shortcut to get past the big Krusty head inside the circus tent in level 3 (instead of jumping around it), 150f saved
* An additional death abuse in level 5, ~200f saved

!! Game mechanics
See the game resource page for this game.

!! Stage by stage comments
There are many minor movement optimizations throughout and will not be commented on. I will focus on improvements over deign's TAS that are visible in real-time.

! Level 1
* There are several other purple objects in this level, but they all seem considerably slower. The overall route is therefore the same as in deign's TAS.
* Got the statue dialogue skip. Because of this skip, I was one coin short (coins are needed for the balloon mini-game in level 3) and had to introduce a little slowdown after the skateboard section to compensate for the missing coin.

! Level 2
* A handful of frames lost to manipulate the encounters with Professor Skinner and Ms. Botz.
* Instead of collecting the football helmet after the second Principal Skinner encounter, I collected the first hat on the next floor instead.
* Manipulated Ms. Botz to be as close to the left as possible for the final hit to trigger the end of the level sooner.

! Level 3
* 12f lost to manipulate the Itchy and Skratchy door mini-game
* Shortcut used to jump past the big Krusty head inside the circus tent, instead of jumping around it
* Because of getting through the level faster, special care had to be taken to make enough "random" balloons appear before reaching the boss (done by trying to shoot balloons as early as possible)

! Level 4
* Faster method to cross the crocodile pond (by building up speed in advance)
* Faster method of grabbing the first toy gun by jumping from the lower branch, instead of jumping from the upper one
* Bouncing off the alien-infected museum guard to faster reach the last exit sign

! Level 5
* This level can be a bit over-whelming at first glance (see e.g. vgmaps for the layout). Bart can only carry 4 rods at a time before he needs to hand them over to Marge or return them himself to the reactor. On a high level, there are 4 "natural" sets of rods. The "left", the "center-left", the "center-right" and the "right" sets. Given the various constraints, I couldn't find any reasonable alternatives for these sets. However, the order in collecting the sets is not entirely obvious. Deign's TAS collected them in the aforementioned order. I tried a bit to play around with collecting the sets in different orders with the hope of e.g. reducing the waiting time for elevators, but I was unable to find a faster route than the one deign used.
* Both Maggie and one of the Marge encounters had to be manipulated by delays
* Big time save by introducing a death abuse while collecting the "center-left" set (on floor 5)
* Took damage in different locations than in the previous TAS

!! Credits
'deign' for creating a solid baseline TAS of this game that proved very useful for comparisons
