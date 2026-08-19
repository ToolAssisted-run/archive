> **Imported**
> This run was originally published at https://tasvideos.org/6350M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%TOC%%

!! Introduction

This submission improves on [5327M] by 2134 frames (~35.5 seconds).

I was satisfied with the result of my previous movie and thought no further improvements could be made without considerable effort. However, [https://tasvideos.org/Users/Profile/Sand|Sand] mentioned I was [https://tasvideos.org/Forum/Posts/522668|forgetting to optimize] the end-of-level score tallying into consideration. Even though he was right, I still didn't feel that justified entering a multi-month-long project once again -- not unless some other big discoveries appeared.

__AND OH BOY DID THEY APPEAR!!!!!111one__

!! Software + Hardware

! Rom Information

* Name: Arkanoid (USA)
* ROM: Arkanoid (U) [!].nes
* SHA1: 230FC31D2C2EB20E78711C82574F29F28117EBA3
* MD5: 0CCC1A2FE5214354C3FD75A6C81550CC

! Emulator

* EmuHawk 2.9.1 (Core: NESHawk)

! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://github.com/SergioMartin86/QuickerArkBot|QuickerArkBot]
* Platform: 
** 2 x AMD Epyc 7742 (128 cores, 256 threads) + 384Gb RAM
** Exploration Rate: 1.5 Mstates/s 

!! Encodes

! Raw Input Movie

If you find the entertainment inputs too distracting, you can enjoy the following encode of my first draft that keeps the paddle static and only adds precise inputs to solve the levels.

[module:youtube|v=nf74n_ItWIc]

Here you can find the corresponding [https://tasvideos.org/UserFiles/Info/638715906598957576|movie file].

! Comparison Movie

The following movie compares our solution to [5327M]

[module:youtube|v=4cmNDQzolAM]

You can see this new movie improvements on all stages. That is, except for stage 28, where the same frame solution is achieved but presumably a 'lag' effect makes it finish one frame slower.

!! Improvements

Here is a list of ground-breaking improvements in this movie:

! Consideration for End-Of-Stage Score Tallying
Took Sand's comment into account and added this factor into the bot to not finish exploration as soon as the last block break, but rather as soon as the tally ends. A simple optimization that saved a bunch of frames on those levels with plenty of silver blocks (huge uncounted score pikes).

! Chef_Stef

Perhaps the most important drawback of my previous movie was the decision to go solo and not recruit the help of [https://tasvideos.org/Users/Profile/Chef_Stef|Chef_Stef] who probably knows most about this game. As soon as I reached to him on Discord, he was extremely generous with his time and sharing his technical knowledge. He went as far as making [https://github.com/sbroger/arkbot|Arkbot], his own bespoke Arkanoid emulator and brute forcer public on github for me to analyze. 

We spent some time discussing the idea of a new movie (including all of other the improvements you'll read next) and we even had a call to polish some of those points. I am very grateful for his help; this movie wouldn't have been possible without it.

! Arkbot's Core Emulator

Arkbot contains a core emulator that perfectly reproduces the game's logic without the need of a NES emulator. Just by using it, the emulation time went from several milliseconds to practically nothing. Furthermore, thanks to it being open source, I was able to to create [https://github.com/SergioMartin86/QuickerArkBot|QuickerArkBot], a state-reduced variant that allowed me to fit many more states in memory.

! Use of Arkanoid controller. 

During last year, I don't remember exactly why I decided to test how was it to play the game with [https://www.nesdev.org/wiki/Arkanoid_controller|Arkanoid's special controller] using BizHawk. Since I didn't know you could bind the mouse to play with it, I started fooling around with manually inputting the potentiometer coordinates into TAStudio.

It took me a few seconds to realize... you can put ANY value into it and the paddle will go there immediately. This means that the game can be played with an infinite-speed paddle. The impact of this realization on botting is tremendous, as you can imagine.

! Precise Decision Points

In my previous mode I had, at every node of the exploration tree, three options: "Left", "Right", and "Stay". You can imagine this very quickly exploded into an infinity of combinations that I had to tame with some heuristics.

Now, however, each node has a single option: "Stay". This keeps the exploration tree from growing out, until there is a decision point. These points are frames where the paddle's position has en effect. 

Fortunately, these decision points happen very seldom and therefore it takes a lot of frames to full bring the exploration tree to fill my server's memory.

Decision points are:

* A ball is low enough to be within the paddle reach. At this frame we decide between placing the paddle at one of the points that launch the ball in any of the 8 possible directions, or bring the paddle to the other side of the screen to not impact the ball now. 

* RNG events, as detailed below:

! Full RNG Management

Thanks to Chef_Stef and the Arkbot I learned all the secrets about RNG manipulation in this game. These are the only events whose result depend on RNG:

* Powerup Type (when you destroy a special tile)
* Gate from which the new enemy will appear (left/right)
* Enemy movement (when he hits a tile, left/right)

All these events will draw from the same RNG generator that takes as inputs several things, but crucially: (a) the current score's hundredth's value, and (b) the current position of the paddle.

The fact that score dictated the result was tragic because it meant that, to find a global optimum, you cannot just stitch each of the stage's optima together. You've got to consider what scores you start with and end for a total of 100 combinations. 

HOWEVER, since we are using the Arkanoid controller, we have 160 ways to affect RNG arbitrarily. With this in mind, I developed an [https://github.com/SergioMartin86/QuickerArkBot/blob/bc48c9725e8dedb8db5ba08166dc117cfb4e5579/source/new/core/source/GameOperations.h#L433|RNG manipulation logic] that looked ahead and told me exactly which paddle positions returned the RNG value I needed for each event.

As a result of this optimization, we can be sure that reaching each stage optima will bring us the global optimum.

!! Entertainment inputs

After finishing the first draft of the movie, I felt the movie was missing some 'spice'. So I decided to develop an 'entertainment' algorithm that allows me to create some cool effects while checking that none of the additional inputs caused the solution to desync. I hope you like the effects I came up with!
