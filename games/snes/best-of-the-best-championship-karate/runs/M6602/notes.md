> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6602M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

See [9704S] for an introduction to TASing this game.

In this movie, the goal is to fight all possible battles. This includes all regular trophies + the special tournament. Here, the only complication is the "Ranking" system, which prevents you from fighting higher ranked opponents until/unless you reach a certain money value and skillset. You advance these quite a lot during the first fights and tournament, but reaching the last two fights you do need to use the "training" option to push those skills enough to be allowed to fight them.

In the training mode you have 3 activities:
* Resistance. This involves fighting a sparring opponent. The game counts the number of hits you made against those received. If the difference exceeds a certain value (e.g., 8) you get 1% more. Later in the game, you need a difference of 16 hits. I configured my bot to do this and bail out (pressing select) as soon as the last possible percentage is gained.
* Strength: You need to hit a kicking bag as hard as possible by tapping B frequently. I do this manually by pressing B each active frame.
* Reflexes: You need to hit a pole with 3 randomly extending arms. When you hit these arms as they extend, a variable increases. In the highest skills, you need 4 hits per percentage increase. Here I configure the bot to maximize hits as fast as possible and bailing out as soon as the goal is achieved.

You can only successfully train once per fight, so I intertwined fights and training sessions. Therefore, I train as little enough to enable the last fight and get the 100% ending.

!! Software + Hardware
! Rom Information

* Name: Best of the Best - Championship Karate (USA)
* File: Best of the Best - Championship Karate (U).smc
* SHA1:01A1CB3E4EA1714C145FF06A0826D6DF0ED36A06
* MD5:3E1AFA72971094777D9733289C9043B6


! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://github.com/SergioMartin86/quickerSnes9x|QuickerSnes9x]
* Platform: 
** 2 x AMD Epyc 7763 (128 cores, 256 threads) + 512Gb RAM
