> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6599M and entered this archive as a voluntary
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

Another unorthodox championship fighting game with a steep learning curve. Here, the goal is to go up in rankings until you get invited to a special (underground) tournament where you fight increasingly difficult opponents. The final one, "the warrior", is a very strong, unknockoutable fighter. Upon beating him, you get the "best of the best" screen, which is the goal of this movie.

Between fights, you are able to train and improve your character to gain strength, speed, and endurance. In this movie, however, I forego this activity and try to kick and punch my way up while being as weak as a new player.

Instead of traditionals like Street Fighter, the pad buttons (except for left and right) do not refer to the direction to move, but a specific kickboxing technique. In total you can use a selection of 20 customizable techniques per fight.

I started TASing this game manually, but quickly realized that, although I could find a win eventually, progress (and the movie itself) was painstakingly slow. Then I realized I could use [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus] to brute force all possible moves until the opponent is kaputt.

And so I did. The bot discovered ways to quickly and effectively disarm opponents, finding critical countermoves and bashing their skulls in record time. This allowed me to beat a single top-10  fighter in the rankings mode to get immediately invited to the tournament. 

The rest is violence.

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
