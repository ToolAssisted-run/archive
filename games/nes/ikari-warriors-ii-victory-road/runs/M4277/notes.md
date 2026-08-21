> **Imported**
> This run was originally published at https://tasvideos.org/4277M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives
* Emulator used: Bizhawk 2.3.1
* Primary objective: speed
* Takes damage to save time 

!! Background
This is one of those games that will likely never see much activity or get much love. Like its predecessor, it has many shortcomings. Once you understand the game, I'm of the opinion that there is some fun to be had with it though (at least for a while). In 2014, I made a console speedrun of the game. While I expected a TAS to look very similar, I've still been interested to see how it would turn out. It took 6 years for me to get around to it though.


!! Game mechanics
I haven't found any TAS-exclusive tricks. Everything of relevance for the game mechanics that I'm aware of is described here:
https://kb.speeddemosarchive.com/Ikari_Warriors_2/Game_Mechanics

!! Routing
When this game was still "pristine territory", it offered an enjoyable routing exercise. The game expands on the first Ikari Warriors game, by including more weapon upgrades and each stage now ends with a boss. There are several routing options that initially make sense and needed to be tested. The number of options is however still fairly limited. Once they had been explored, the fastest route was quite easy to identify. The same route still applies to the TAS.

!! Lag
The first Ikari Warriors game ran at 15 fps. In the second game, it was bumped up to 20 fps. Cranking up the speed like this didn't come without drawbacks though. While the first game was lag-free, there is a bit of lag in the second game. Not a lot, but a few lag frames are unavoidable in some of the more crowded areas.

!! Stage by stage comments

! Level 1
* The section right before the "Armor power" was activated (making you invincible) contains quite a bit of lag. By cleaning the area from enemies as much as possible, you can somewhat reduce this.
* The end of level tunnels contain either weapon upgrades or enemies. The content depends on if you have odd or even hearts in the inventory. Not all enemies matter for this, but it's easy enough to pick the right amount without losing time.

! Level 2
* No lag in this level.
* By dealing damage to the boss on the same frame it appears, you can insta-kill it. This trick works on all bosses, but is limited by the lightning special weapons available in the game.

! Level 3
* The first part outside the ruins has a bit of lag.
* There are two potential routes through the ruins. In the console speedruns, the left path is chosen (at least until now), as it's less risky. It's been known that going through on the right side is faster though. I tried both with TAS inputs and the right side was around one second faster.
* Two unavoidable hits were taken.
* The boss can only be killed by first destroying the shield (insta-killing works as well).

! Level 4
* No lag in this level.

! Level 5
* No lag in this level.
* The remaining hit points were used to get through the flying section without having to camp out on the right side, like it's done in RTA. Since you can only shoot and toss grenades straight ahead when flying, the options for getting through without taking damage were limited.
* There is a freeze-period, during which you can't move, when activating the "Armor power" at the second-to-last boss. The freeze period depends on when you activate it. Ideally, you would like to fly in as close as possible to the boss, but that resulted in unacceptably long freeze times (based on several iterations of the run). To minimize the freeze time, a bit more walking was done.
* The last boss is killed in the same way as the second one.

!! Possible improvements
* The lag in level 1 and 3 was not trivial to try and minimize, so it's possible a few frames could be improved there.
* The freeze period against the second to last boss is not understood and was dealt with ad hoc. A deeper understanding could potentially allow for more flying and less walking, by manipulating the freeze period to stay at a minimum.
* There is one additional health to play around with. The best candidate I found for spending it was to avoid tossing the grenade at frame 21070 and tank a hit instead. That would almost make it to the exit one movement frame earlier (3 frames), but would also generate one more lag frame.
