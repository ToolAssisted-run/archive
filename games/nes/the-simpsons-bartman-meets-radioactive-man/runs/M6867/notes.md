> **Imported**
> This run was originally published at https://tasvideos.org/6867M and entered this archive as a voluntary
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

!! Background
With this one, it felt like I really took one for the team. It was honestly frustrating at times to TAS this game. Lots of annoying random lag, global timers creating long frame rules and game mechanics and level layouts that often felt contrary to speed. I'm still glad to hereby conclude the Bart games for the NES with this submission. 

!! Stage by stage comments

! 1-1: Junkyard

This level is completed by going to the limbo zone. By collecting all items inside the limbo zone, you warp to the next level. It's however only barely a shortcut. [=userfiles/info/638993592771323115] completes 1-1 normally and is 72f slower. The time difference is big enough that I haven't tried to fully optimize the normal solution. However, it's at the same time small enough that it wouldn't take more than a relatively small finding for it to contest with the limbo zone route. It's therefore worth to keep in mind if anyone ever decides to work on this game again.

! 1-4: Swamp hag's hideaway

There is a 64f frame rule for the dropping poop (?)  in this level. This submission manages to catch the frame rule by the smallest possible margin. It would surprise me if that much time could be saved by minor optimizations. So unless a new time save is found, this submission should be optimized up to this point (not taking into account random lag, which is very difficult to know for sure how much can be eliminated).

The poop pattern was controlled by manipulating the RNG in the previous level. It's not trivial to figure out the optimal seed and I won't rule out the possibility of there potentially could be faster patterns, but this was the best out the ones I tried and also worked with the 2-1 exit manipulation.

! 2-1: The sea bed

The end of this level was manipulated to produce one of the exits that doesn't require letting go of holding right. The manipulation came from 1-3 (together with the poop pattern in 1-4).

! 2-3: The inner wall

The limbo zone in this level was skipped. It's right before the regular exit, so obviously much slower than completing the level normally.

! 2-6: Dr Crab's lair

Dr Crab's jumps depend on Bartman's position and can therefore fairly easily be manipulated by moving around Bartman. However, the mini-crab movements depend entirely on RNG, which unfortunately isn't possible to manipulate before this level (without time losses). As a result, I took damage twice.

! 3-1: The sunken volcano

The regular exit is far to the right. The limbo zone is in the opposite direction, but quite obviously the much faster option.

! 3-2: The underground city

This level is normally a gate maze, but a well-timed jump allows Bartman to reach the exit earlier than intended. The global timer didn't add up at the end and the exit icon had therefore to be manipulated to be on screen by pausing-unpausing.

! 3-3: Lava man's lava pit

The fight fortunately started on a good seed, but pausing-unpausing was used once to manipulate the best pattern for Lava man.

! 4-1: Brain-O

The first pause-unpause at the start of the fight was used to manipulate Radioactive man to turn around sooner.
