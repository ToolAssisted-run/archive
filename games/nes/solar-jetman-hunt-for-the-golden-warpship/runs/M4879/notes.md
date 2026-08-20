> **Imported**
> This run was originally published at https://tasvideos.org/4879M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Introduction

The Golden Warpship is the most powerful spacecraft in the "good side's" fleet. But aliens have abducted the spaceship and scattered its parts on 12 planets throughout the galaxy.

It's now Solar Jetman's task to recover the parts and then confront the evil alien mastermind behind this plot. On each planet, the task consists of first finding enough fuel cells for the mothership to ensure a safe trip to the next planet with a golden warpship part. Fuel cells are found by exploring the often huge planet interiors and are then either directly brought back to the mothership, or teleported back to the mothership by delivering fuel cells to "small wormholes".

Once enough fuel cells have been collected, the aliens graciously open up the access to the secret room on the planet containing the golden warpship part (referred to as "large wormhole" in the game). Rinse and repeat until the warpship has been fully assembled.

An alternative way of making progress is to use hidden warps to skip planets ahead. It requires some imagination to understand how the warpship can be assembled without the parts from the planets that were skipped. The acute observer might also wonder how the bonus planet 13 fits into this equation. The game however does not concern itself with such insignificant details and simply hands the player any parts from planets that were skipped (and conveniently places one of the parts on planet 13).

Once assembled, it's time for an autoscroller (with absolutely dreadful controls), at the end of which the boss fight awaits. Apparently, the aliens took such a beating as to never recover. This game didn't get any sequels.

! Objectives

* Aims for shortest movie (no time-entertainment trade-offs)
* Heavy luck manipulation
* Uses warps

! Story

Already when [2533M] was made, it was known that despawning the top eye of the final boss was possible to do during the autoscroller (see the [https://tasvideos.org/Forum/Posts/326181|original discussion]). However, the game mechanics for this are complex and no method was developed for triggering this event. Because of the difficulties reproducing this glitch, the previous TAS was submitted and published without including it. Since a TAS makes short work of the final boss, the time saved from despawning the top eye is relatively small. It was still a fairly glaring omission and it was nagging in the back of the head of at least one person on this earth.

About 5 years after the previous TAS was published (so in 2019), ‘ktwo' accidentally got a second warp to appear in planet 1 during console attempts. The regular and intended warp on planet 1 leads to planet 7, but this second warp turned out to lead to planet 8. The "double-warp" was reproduced a handful of times and even recorded on emu and shared in the [https://tasvideos.org/Forum/Posts/488269|forum thread]. The discussion that ensued did not completely conclude on what was going on, but it was obvious that warping from planet 1 to 8 would save several minutes over the published TAS. It was also clear that it was a very low-probability event. Again, at least one person in the world very much wanted to see a TAS that used all known time savers in this game.

I (‘ktwo', and yes, it's me who cared about this TAS all the way back since 2014) knew that before work on a new TAS could begin, either a better understanding and methods for how to produce these two tricks would be needed, or throw some kind of bot at them. "Manual" trial-and-error TASing seemed to have too low chance of success to even bother trying. In 2022, I took notice of TASer [https://tasvideos.org/HomePages/eien86|eien86], who published several TASes based on a bot he created, [https://github.com/SergioMartin86/jaffar|Jaffar]. To see if I finally could get peace of mind and give this game an updated TAS, I decided to reach out and explain my predicament. Before long, Jaffar was put to work and soon started to produce interesting results. However, I was still almost in disbelief when eien86 shared an optimized runthrough of planet 1 that produced the elusive “double-warp”. After years of biding my time, the door to Solar Jetman had finally been opened!


!! Software + Hardware

! Rom Information

* Name: Solar Jetman: Hunt for the Golden Warpship
* SHA1: CAA4D1AB710BD766F8505EF24F5702DAC6E988AF
* MD5: 45757BDF0D1A0E9DE8F9590FB692DA55

! Emulator

* EmuHawk 2.8.0 (Core: NesHawk)

! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffar|Jaffar]
* Routing Core: QuickNES - Save states manually transplanted from a Bizhawk state.
* Platform 1: AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.0M States/s)
* Platform 2: 2 x AMD EPYC 7742 Processor (128 cores, 256 threads) + 1024Gb RAM (Average Exploration Performance: 1.75M States/s)

!! Timing

! Comparison Movie

Below is a comparison movie between [2533M] and the current submission.

[module:Youtube|v=5BE50vI2aYY]

! Criteria

For a more precise comparison with the previous movie and future work, we use the following addresses for timing:

%%SRC_EMBED
0x005D - Game Timer
0x003B - Current Planet Indicator (Value 0 equals Planet 1)
0x004C - (2 bytes) Screen Scroll X
%%END_EMBED

And the following criteria:

* Boot. All the frames from power-up until the start of the first planet. 
* Planet. Solving a planet starts as soon as both the (Game Timer) is reset to zero and the player takes control of the ship. 
* Transition / Shop. A transition starts as soon as the player escapes a planet, which happens as soon as the (Current Planet Indicator) increases by one or the lag frames start. Shopping happens at even numbered planets and is considered also a transition, but it is indicated as 'Shop'.
* Autoscroller. Is the stage that starts after planet 12 is finished. Same criteria for a normal planet's start apply here.
* Boss Fight. A special case is considered for the boss fight, which is useful to evaluate any future improvements on this section. We arbitrarily design the start of the fight to the point of the Autoscroller at which the (Screen Scroll X) equals 6645.
* Movie End. This movie's end time is taken at the frame of the last input. 

! Time Table

In the following table we use the criteria above to compare the timing of our movie against the currently published TAS.

%%SRC_EMBED
                      New                 Old                  Diff
         Stage   Initial     Total   Initial      Total      Stage      Total
          Boot          0       176         0        177         -1         -1
      Planet 1        176       711       177        715         -4         -5
    Transition        887         0       892         77        -77        -81
      Planet 7        887         0       969      15313     -15313     -15394
          Shop        887       398     16282       1106       -708     -16102
      Planet 8       1285      1445     17388       1455        -10     -16112
    Transition       2730        78     18843         78          0     -16112
     Planet 13       2808     13964     18921      12438      +1526     -14586
    Transition      16772      1242     31359        923       +319     -14267
     Planet 12      18014     19378     32282      17714      +1664     -12603
    Transition      37392       274     49996        274          0     -12603
  Autoscroller      37666      8053     50270       8053          0     -12603
    Boss Fight      45719       265     58323        371       -106     -12709
     Movie End      45984               58694                           -12710
%%END_EMBED

!! Level-by-level comments

Please note that this game has a [https://tasvideos.org/GameResources/NES/SolarJetman|game resource] page on the site that describes some of the game mechanics in more detail.

Planets 8, 13 and 12 and finally most of the autoscroller (after planet 12) were manually TASed by ‘ktwo'. Producing the “double-warp” on planet 1, the beginning of the autoscroller (to despawn the top eye of the last boss) and part of the final boss fight were botted by eien86.

! Planet 1

(eien86:) This was the start of the whole new adventure; a make or break moment just at the beginning of this project. At this point, ktwo wasn't sure whether the bot could help at all, but decided to give me a chance. He gave me links to two movies (1) the currently published TAS, where this planet is played to perfection but warps into planet 7, and; (2) a manually recorded movie where a warp into planet 8 is demonstrated but had a lot of detours and was around a minute slower. 

The fact that the planet-8-warp movie was slow was not due to ktwo's lack of ability (on the contrary, he's a talented speedrunner himself), but because it was the only instance in which he was able to attain such a warp. The question at this point was: is there a way to obtain this warp without any detours? 

So then my work on this TAS started with the usual tasks: finding all relevant RAM variables, understanding the game mechanics, scripting and calibrating the bot, troubleshooting, etc. After some analysis and discussion with ktwo, I reached the conclusion that the most likely precursor of the warp was the fact that new objects of type 0x0A (warp circles) were created. 

After programming the bot to find routes that maximized the count of such objects, it was a matter of starting the engines. And indeed, not long after starting, the bot was able to find both (1) a way to activate the planet-8-warp, and; (2) how to make it move towards the ship for a quicker warp. This was one of the best moments of my TASing life. 

We still don't know exactly why the warps are activated, but it was pretty much to do with shooting at the correct times. Hitting certain objects at given frames, the game glitches the object types and gives you a wrong warp. However, I'm still not convinced this is a glitch. I have the suspicion this is some kind of easter egg or debug mechanism that was not correctly taken out of the game. Regardless, it worked like a charm.

! Planet 8

For the shop discussion, see comments for planet 13. Planet 8 is just a quick transport to the warp and was therefore assumed to already be optimized. But by making a detour to tether a crystal and then use it to speed up from the tethering mechanics (see the game resource page for information about movement speeds), 10 frames were saved.

! Planet 13

Planet 13 is a bonus planet and can only be reached by warp from planet 8. Upon completing this planet, you go to planet 12, the last one of the game.

There was a shop before planet 8 (there is a shop before each even-numbered planet). Since planet 8 was just a short transport to another warp, it didn't require any ship upgrades. However, planet 13 has so strong gravity that some kind of ship upgrade is needed. The two upgrades that help dealing with gravity are "double-strength boosters" and "anti-gravity". The boosters help with acceleration and just simply overcoming gravity and tethering objects around. Anti-gravity shuts off gravity, but doesn't improve acceleration or the default boosters' poor performance when tethering objects. Anti-gravity also opens up the opportunity for using the tethering speed-up in vertical sections. As a bonus, anti-gravity saves around 5 seconds by quicker shop menuing. 

Both of these items cost 1000 credits, which coincidentally is the money the player is awarded at the start of the game. The preferred choice between boosters and anti-gravity is not immediately apparent. It turned out the boosters were the better choice by far, but a movie attempting the start of planet 13 with anti-gravity has been uploaded in the [https://tasvideos.org/UserFiles/Info/637973177167900920|user files] for reference.

The general route of planet 13 hasn't undergone any major changes. Other than in specific sections, comparison with the previous TAS is difficult though, since it had collected enough money on planet 7 to buy an upgraded pod that could tether "small wormholes" (the blinking things the fuel cells are delivered at). With the standard pod, you need to follow the already established route that both older TASes and real-time speedrunners have used. When possible, tether speed-ups were used, including a fairly big detour at the bottom of the planet to collect a crystal to set up for a long section of tethered speed-up to the large wormhole.

! Planet 12

In the shop before planet 12, we bought one anti-gravity and one double-strength booster. There are several interesting weapons and ship upgrades to discover in a casual playthrough, but with the money available in this TAS, there really aren't any other alternatives that provide the same benefits.

The next question is when to use the anti-gravity. It's already been well established long ago that the fastest route through planet 12 includes destroying the pod in the far NE of the planet and teleport back to the mothership. However, destroying the pod means any temporary pod upgrades will also be lost. Since we have two boosters, losing one of them is no problem. But with only one anti-gravity upgrade, it can only be used either for the first half of planet 12 or for the second half. FatRatKnight's TAS had more money available (from playing through planet 7) and could afford two anti-gravity for planet 12. The benefits from anti-gravity in the different sections could therefore be estimated fairly well and pointed in favor of using it for the second half of the planet. The decision was clear enough that TASing both options was not deemed necessary.

A small detour to collect a crystal was made before the first fuel cell. This detour was more than made up for by being able to use the crystal for tether speed-up. There are two other objects that could have potentially been used instead of the crystal. One is located up and to the left of the mothership, but a quick look at a planet map makes it easy to dismiss this option as being too far out of the way. The other option is shortly before turning left and starting the climb towards the first fuel cell. This one is closer timewise, but was tested and turned out to be clearly slower than the crystal.

The second fuel cell looks like it could have been left below the small wormhole and delivered at the same time as the third fuel cell instead of being delivered directly on the first pass of the small wormhole. The idea would then be to allow for taking a straighter path towards the third fuel cell. However, this was tested and found to be slightly slower. The reason being the tether mechanics work against this idea. When starting to tether an object, it will be tethered at a much more vertical angle than what "everyday logic" would suggest. This means the second fuel cell would have to be left quite far to the right below the small wormhole to successfully deliver both fuel cells, one after the other. Moving far enough right before descending towards the third fuel cell ultimately resulted in a slower solution than delivering the fuel cells separately.

Even a casual observer might note that connecting with the third fuel cell looked nonoptimal. It's correct that it could have been tethered away quicker, but the method used ensured the right tethering movements on the way to the small wormhole for an overall faster solution.

Right after delivering the fourth fuel cell, the pod's fuel meter (not related in any way to the fuel cells that are collected for the mothership!) had been carefully set up to be one thrust away from being exhausted (from a starting state of 0xE000/57344...), which resulted in destroying the pod. When the pod is destroyed, Solar Jetman exits in his spacesuit and in this state he can use small wormholes to teleport back to the mothership.

For the next part, we finally get to play around with anti-gravity while navigating the rest of the planet and then the maze to the large wormhole. Along the way, a small detour was made to collect yet another crystal (another, slower, option exists and was tested and [https://tasvideos.org/UserFiles/Info/638008229162818595|documented] for reference). The tether mechanics were then used for both horizontal and vertical speed-ups, but also to help brake more quickly around some corners.

In the large wormhole, we work the warpship part to move in a very deliberate way that results in speeding us up horizontally, while also pushing us down enough through the tunnel to avoid crashing into the ceiling. There are other options for how to tether the warpship part (some that are initially faster), but they were discarded because of not providing any possibility to avoid the ceiling in the tunnel.

! Autoscroller

(eien86:) Way back, ktwo [https://tasvideos.org/Forum/Posts/326181|published] that it is possible to despawn the top-most eye by doing some precise movements during this part. This glitch has the potential of saving around a 1/5 of the time required in the boss fight. 

Since we didn't know exactly what triggered the glitch, or whether it was possible to make other eyes disappear, I programmed the criteria for eye disappearance into the bot, i.e., how many values between 0x0460 - 0x0464 turned into zero, each meaning the status of each of the 5 eyes. After some testing we came to two conclusions: (1) only eye 0 (topmost) can be made to disappear, and; (2) this can be achieved in the first 300 frames of the autoscroller. 

Since the autoscroller always takes the same time to complete, there was nothing left to do after triggering the eye glitch but to add entertainment movements here, which is what ktwo did.

! Boss
As described on the game resource page, the initial opening sequence seems to be set (but slight variations have been observed), while subsequent eye openings can be manipulated via RNG. Since the top-most eye was despawned, we used a slightly different order to shoot the eyes in than FatRatKnight. The general pattern was TASed by ktwo and then the last 100 frames were 'polished' by the bot saving a dozen more frames or so by bringing the ship to be as close as technically possible to the eyes.

!! Future Work

(eien86:) Normally, I would say that a better bot exploration would achieve a better result, but in this case I'm pretty happy with its performance. I'm also very impressed by ktwo's solution of the interim planet, so unless another glitch is found, or some way to farm money before the shop in planet 8 is discovered, this is in my eyes a perfect movie.

(ktwo:) The x- and y-speed in this game are independent of each other. So moving from A to B without any obstacles in the way is straight-forward. However, every single corner is a battle of sub-pixels and getting out on the other side with as high speed as possible. There are several parameters involved that make this very challenging to perfect. Sometimes even the general concept for how to negotiate a corner can be difficult to find. As a result, sub-pixels are bled in almost every direction change. Not all of them count though. When delivering a fuel cell to a small wormhole, the game places the pod in a grid of 8x8 pixels, depending on its initial position. Lost sub-pixels are therefore reset every time a fuel cell is delivered.

This TAS builds on the work of previous TASes, uses all tricks and timesavers currently known to us and the route is executed as well as we believe we reasonably could. There is still most likely room for improvement by grinding the execution of every corner into perfection and extending the search for manipulating the speed boosts from tethering objects as efficiently as possible. The bugs/glitches/physical oddities already known also suggest that more things could be found in the future if more players took an interest in the game. But I guess the same could be said about many non-popular games in the same tier as Solar Jetman?

!! Acknowledgements and Attributions

* FatRatKnight: Author of the previous TAS. Even though comparisons were sometimes difficult to make due to different upgrades being available in the two TASes, it was still very helpful in showing clever ways of solving certain sections. The level of execution in the published TAS was also an inspiration to strive towards when working on this improvement. Also a huge thanks for documenting so much of the progress and findings in this game as it made our work a lot smoother. We hope that our submission is a worthy successor and not simply an improvement because of including glitches that were not obtainable when FatRatKnight worked on this game.
