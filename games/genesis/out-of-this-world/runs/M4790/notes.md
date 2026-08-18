> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/4790M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%TOC%%

!! Introduction
 
Another World (a.k.a. Out of this World) is an adventure game designed and coded by Eric Chahi. It features Lester, a young scientist and Ferrari owner that, after a failed experiment, ends up in an Alien planet where everything tries to kill him. This is one of my first childhood experiences with a game that 'feels like a movie' and was my favourite for a long time. My first choice of a platform was MS-DOS but the emulation is not mature enough for me to use the exploration bot. Between the alternatives, the Genesis and SNES ports, I chose the former because it plays and loads so much faster than the latter (Sega does what Nintendon't). 

This movie builds on many of the tricks found in the SNES [https://tasvideos.org/2682M|movie], but adds new tricks of its own: 
* Overall movement and fight optimizations: Using a bot, we refined the movement and fight sequences overall, compared to the SNES version.
* Moving Charge: the game is designed in a way such that you can only build gun power while you are statically standing or crouching. However we found a way to move while doing this. This allows us to overlap the time spent moving and charging into one, saving a lot of time in many sections (see below).
[https://i.ibb.co/Lg8s4W5/Another-World-E-2022-07-07-12-04-41.png]
* Lag Reduction: there is a frame of lag per game frame introduced for every moving object (alien, gun shot, falling debris, enemy, etc). In this movie we made every attempt to reduce the number of lag frames.


A total of 3 weeks were spent on this project, mostly on exploring the RAM map, finding level-specific triggers, route strategizing, scripting each level, running the bot, and performing manual adjustments to the movie.


!! Emulation

! Rom Information

* Name: Another World (E) [!]
* SHA1: 9D98D6817B3E3651837BB2692F7A2A60A608C055
* MD5:  8CC928EDF09159401618E273028216EA

! Emulator

* EmuHawk 2.8.0 (Core: Genplus-gx)

! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffar|Jaffar] (new version in development)
* Routing Core: Genplus-gx (Average Exploration Performance: 0.6M States/s)
* Platform: AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM


!! Timing

%%SRC_EMBED
    Stage      Initial  Total
     Boot         0      770
     Pool        770     241
  Outdoors I    1011     2025
     Cage       3036     2803
     Jail       5839     3531
    Vents       9370     1144
 Outdoors II    10514    1568
    Caves       12082    5309
  Barracks I    17391    4554
 Barracks II    21945    4380
     Tank       26325    1690
   Final I      28015    1364
   Final II     29379    3186
  Last Input    32565
%%END_EMBED

!! Stage Breakdown

! Pool

Here a faster swim speed was achieved by not only holding Up, but also intermittently hitting A and L/R. This is a common pattern during the entire game where interrupting the current animation achieves a higher movement speed. In this case, a higher swim speed.

! Outdoors

Here, as stated in the SNES version's notes, a faster run speed is achieved by not simply bunny hopping, but also performing small 'sprints' in the middle. This accelerates de overall movement. A skip was attempted here by jumping over the 'DOG' when it stumbles into the ground. However, the game does not trigger a transition to the next act if you don't use the vine to skip it, and therefore was not used in this movie.

! Cage

Similar to the SNES movie, we achieve the fastest cage-break cycle by falling into the guard before he shoots. 

! Jail

A few tricks were used here.

* A faster gun pickup was achieved without the need of crouching/standing up by hitting Down while performing another movement.
* Similar to the SNES version, a tri-door skip was used by maintaining a bunny hoping pace
* Moving charge was used to charge the gun while running towards the breakable door. This is an improvement over the SNES movie.
* To reduce frame lag, we wait for the doors to be decoded in the elevator room where fewer actors exist.

! Vents

Nothing new here except that the movement was optimized, as some of the rolling animations were precisely interrupted for maximum speed.

! Outdoors II

Here Moving Charge was used but only for entertainment purposes since it did not achieve any speedups. The enemy in the bridge is shot from up close to reduce lag frames.

! Caves

This level was extensively optimized for movement speed. Moving Charge was used thrice, which represents a big time save compared to the SNES movie:
* One for the pool wall
* One for the water wall (all charging is made from the previous room to reduce lag)
* One for the door/wall before the next level

Another optimization compared to the SNES movie was shooting the hanging vines only once (when going to the pool), instead of twice (when coming back too).

! Barracks I

Here the overall same strategy and tricks were used, compared to the SNES variant. Here we use used of the Moving Charge trick to accelerate the first shield creation.

! Barracks II

Overall the same strategy as the SNES movie, except for the following optimizations:

* The second fight (after grabbing the carp) is slighlty optimized to reduce lag and start running faster.
* Moving Charge was used to accelerate the destruction of the ball throwing guard's door
* Moving Charge was to used to insta-kill the last guard for a much faster fight compared to the SNES movie

! Tank

This section was completely brute-forced. Turns out one can press one button per frame, and ALSO advance one position horizontally AND one position Vertically. The bot found a way to hit all required buttons, one per frame, for a lightining-fast eject.

! Final I

Here the same strategy is used as in the SNES movie. A curious detail: this first part can be ended faster if you allow your alien friend to die. He will come back to life in the next section, but unfortunately the game ending trigger will not work. A shame, it would have been very cool.

! Final II

Nothing special here, just air-tight execution.

!! Future Work

There is space for optimizations. A better positioning after the water push (in Caves) could be achieved. I also think I could get a better Final I when/if get my hands on a more powerful computer sometime. I do not think new tricks could be found, but you never know!

!! Suggested Thumbnails

26977
16407
