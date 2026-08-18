> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/5231M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Introduction

This is my third attempt at producing an acceptable TAS for NES Pac-Man.

A few days ago I submitted a movie [8149S] that solves a single level of Pac-Man, under the impression it was the fastest route. I was wrong since [https://tasvideos.org/HomePages/Randil|Randil] had already produced a much [https://tasvideos.org/Forum/Topics/5431?CurrentPage=2&Highlight=158406#158406|faster movie] with a better route. Then I took that route and transcribe the pellet order into JaffarPlus to solve the level by having a reward function (r) with the following shape:

r = #PelletsInPathEatenInOrder * 1000.0 - distanceToNextPellet

The PelletsInPathEatenInOrder rewards the bot for every pellet eaten in the optimal path, and not for any other pellet which is out of order in the optimal route. distanceToNextPellet is the manhattan distance from the center of pacman and the position of the next pellet in the route. The result was a movie that's 20 frames faster. 

The movie described above was submitted in [8152S] and received, just like the first one, feedback regarding its unacceptability. This was because, although the game has no ending, the movie solved only a part of all what the game can offer. Indeed, playing more levels (forgot how many) will bring a set of new challenges as both the Pac-Man and ghosts get faster and the effect of magic pellets get shorter (a metaphor for developing drug tolerance?).  Not only does the difficulty ramp up, but also the bonus items change. The last item -- a key, of all things in God's good earth -- repeats indefinitely.

The movie hereby attached incorporates the exact inputs of the previous one, but plays further. And it does so as fast as computerly possible until the very last noticeable change in the game happens: all keys are shown in the screen. And then it beats that level. Nothing new remains to discover, except of course, an eventual score overflow.

I hope this movie now has more chances to be accepted. I am in favor of adding Randil as co-author, if they and the judge considers it fair, since I based the overall route on his previous work.

!! Comparison Movie

The movie below shows the difference for the first level only between the movie by Randil and mine.

[module:youtube|v=YnDaJjp2su8]

!! Software + Hardware

! Rom Information

Rom: Pac-Man (Tengen)
* headerless rom hash: SHA1:A34E68372082513209A795786C8EEA493CC2CD14
* headerless rom hash:  MD5:C4AE6CC4E981A8316429572409018DC8
* PRG (8KB) + CHR hash: SHA1:96C8879B8F0C70803A5F7754D53F8BD60F016163
* PRG (8KB) + CHR hash:  MD5:E6EE06910B926DB6A19F1F1C3A3EB21D

! Emulator

* EmuHawk 2.8.0 (Core: NesHawk)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: QuickNES
* Platform: 'The Jaffanator' - AMD Ryzen Threadripper 3990X (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.35M States/s)

Re-record count is 53472478070
