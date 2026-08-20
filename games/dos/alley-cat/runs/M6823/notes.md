> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6823M and entered this archive as a voluntary
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

This is one of the very first big hits for IBM PCs. I loved playing it as a kid, even though it gets mega difficult very quickly. 

Here, I start already at the highest starting difficulty available and play all available rooms (mini-games), getting to the highest final difficulty in the meantime. That means there is nothing else of the game to discover.

For an introduction to the game itself and its difficulty scheme, this [https://en.wikipedia.org/wiki/Alley_Cat_(video_game)|Wikipedia] article is an excellent resource. Interestingly, this game requires no operating system, as it runs straight as a bootable disk. I guess DOS would be a close approximation though, but still not entirely correct.

I actually TASed this game 3 times. I was going to submit the first, but it desynced (I had developed it with a dev version). This was fortunate though, since after trying again (and again) I found many optimizations to route and execution.

Enjoy!

!! Strategy

! Alley 1
The alley stages require you to get into an apartment through any of the windows that open to throw things at you. To reach the window, you need to step onto a trash can and into the fence. If you linger for too long in the alley, a feral dog will hunt you down and take a life from you.

Here I run from the very first frame, which preserves momentum, then manipulate RNG (either by waiting a few frames or injecting inputs) to have a topmost window opened. This manipulation is necessary to fall back onto the drying cloth lines after beating a room. This allows you to go back into another window immediately without falling onto the alley.

I also manipulate RNG to get all different rooms and in the order I need them to. Every time you beat a room and meet Felicia, the difficulty level will increase, so it is crucial to select the rooms you enter with care, with the most complex first.

! Room 1: Dog Room

I pick this room first, since it is the longest by far and the easiest difficulty reduces the number of dogs, reduces their reaction speed, and allows for faster drinking. Regardless of the difficulty level, the broom will not bother you while you're drinking.

! Back in the Alley

For every single alley part from now on, I manipulate RNG to fall into a piece of clothing and then go back to an upper window.

! Bonus Stage

I take the quickest path to Felicia (the topmost cat), regardless of whether I get the present (doubles score) or not. I abuse momentum preservation by running against the cherub walls and jumping to the other side.

! Room 2: Big Cheese

Here I manipulated RNG and looked for the best route to get all 4 mice as soon as possible. I think this solution is pretty much close to optimal

! Room 3: Bird

Here I very quickly topple the bird cage. However, the cage won't fall until the dog exits the screen, so a bit of waiting is warranted. As soon as the bird is out, I catch it. I am pretty happy about how this one went.

! Room 4: Fish Bowl

This stage has the same number of fish, regardless of the difficulty. The only thing that changes is the number of electric eels that, with good TASing, are no problem at all. I performed a pretty optimal route with the shape of an "U".

! Room 5: The Spider Room

This room needs to be the last (highest difficulty) since the solution is trivial. It is possible to drop all three vases extremely quickly, regardless of the spider being extremely fast.

! Final alley

Here I didn't care about having a window on the top. Just went for the first that opened.

! Final Bonus

I reach the final floor as soon as possible and just wait for Felicia to meet me to optimize the last input.

!! Software + Hardware

! Emulator
* EmuHawk 2.11 (Core: DOSBox-x)

! ROM
https://www.goodolddays.net/en/diskimages/?id=134
