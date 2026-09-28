> **Imported**
> This run was originally published at https://tasvideos.org/6850M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Flags (Compute's Gazette)
Flags are used to represent all the nations of the world. Each one is unique in its appearance. Some have stripes, some have many colors, and some even have symbols on them. But for most of us, they all have one thing in common: They're easily confused with one another. Flags is a one- or two-player educational game that will help you learn to identify the flags from many countries.

The article for this game can be found on page 45 of [https://archive.org/details/1990-01-computegazette/page/44/mode/2up|Compute's Gazette Issue 79 (may 1990)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 102nd TAS from this series. 

Although I clearly remember buying this magazine from Reid-A-Book, in Anderson SC, Flags was not a memory. Why? [4805M|Royal Rescue], which was labeled as an "Editor's Choice", took the prize. It was such a good game that I never looked back at this one. Flag, on the other hand, is not all that exciting, as it just doesn't have the power to compete with today's titles. I suspect it was a hit with young kids who just loved having something in front of them to do.

!!Game Difficulty and Ending
There is no difficulty selection; however, this games has a clear and definite ending....where you are notified of your victory.

!!Details for the Judge
There are some details that might raise some questions to this submission, so here are the points that I would look out for...if I were judging.

*On the 6th flag, the Timer immediately drops from 15 to 14 seconds. This was an irritating problem that I finally got a good answer for. The game's article, along with the code, can be found on page 45 of the magazine. My first assumption was that the timer register was being used, perhaps triggering when the value cycled back to zero, marking the passage of one second. But to my surprise, that wasn’t the case. The answer was in line 670, where the variable "TM" was being reset after it exceeded a value of 5. This variable was incrementing by one on each cycle, and due to the slow nature of BASIC, six increments roughly equaled one second. Once I figured this out, I realized that TM wasn’t being reset when a new flag was displayed; it only reset during each count down from 15 to 0. Since this was a TAS, I was able to prevent the code from executing a second time. By the 6th flag, line 670's "IF" statement triggered the reset of TM. This issue only happens once during the game, since you're only required to answer 10 flags. If there were 12 flags in the questionnaire, then you would have seen it once more on the 12th flag.

*The usage of RND. In this run, I didn't use RND to alter the seed of RNG, before the game was started. Why? It didn't yield all that many different results. My goal was to try and eliminate as many non-default answers to prevent moving the cursor for choosing the right flag. This, of course, would have eliminated a few frames on each round.

*The Commodore’s architecture allows for input buffering, but due to how this game is coded, this wasn’t possible here. After answering the last flag, the TAS time ends, and the game coasts through the rest, eventually informing you of your victory.

*The Chosen category could have been "maximum score", if a solution to the 6th flag timer issue existed. Since there is no solution, an any% run is the only logical choice....as a maximum score run would be no different.

!!Effort In TASing (Not BOTed)
Only two simple points were considered:
*Play the game to find out what the flag is, and then reproduce the results.
*Trim frames to find the earliest point the inputs would work.

!!Human Comparison
None to be found.
