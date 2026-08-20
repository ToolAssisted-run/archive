> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6371M and entered this archive as a voluntary
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

See [9499S] for a detailed explanation.

This movie goes for the "frictionless" category, where the friction factor is set to zero, making it a fun challenge. In terms of botting, the lack of friction made it easier. The reason is that the possible outcomes of any given shot are much more limited -- typically all balls except for one or two go into the pockets. Therefore, the exploration blows out much slowlier than otherwise.

Contrary to the any% movie, it is faster here to sink the cue ball into the pocket to reduce the score rate. There is no other way to reduce the rate since, given the nature of frictionless, at least one ball needs to enter a pocket (or the game enters an infinite loop)

To prevent infinite loops or very long sequences, I use a hash function to detect repetitions. Funnily enough, there are finite shorts that can reach almost half a million frames before stopping. Crazy.

Again, it's my privilege to bring obsoletion to this 15 year movie.

!! Comparison Video

This movie beats[1500M] by almost 5 minutes.

The old movie is able to finish certain stages faster because the initial conditions carried on from the previous stage has an effect on the best possible solution. Also emulation differences make it so that executing a shot under the same conditions (angle, position, power, power increase/decrease direction) would result in different outcomes. 

[module:youtube|v=VKV3WhnoFDk]

!! Software + Hardware

! Rom Information

* Name: Lunar Ball
* ROM: Lunar Ball (J) [!].nes
* SHA1: AA5C574A4743991A3523DFD78A39D782BEDE262A
* MD5: 26F1B77980A216767EA63C41397476E5

! Emulator
* EmuHawk 2.10 (Core: QuickerNES)

Note on accuracy: this game is very sensitive to a correct timing emulation. A console-reproducible solution won't be possible unless using a highly-accurate emulator like NesHawk. However, since 1500M was made with an emulator that's arguably less accurate than the one I'm using, I think we're taking a step forward on that regard. 

Ideally, I would be able to use NesHawk or Mesen as routing core. However, using those will be so comparatively slow that I will have to take several months to even come close to the quality of this solution. So in this case I valued solution quality to accuracy.

! Routing Bot
* Bot: [https://github.com/SergioMartin86/LunarBot|LunarBot]
* Routing Core: [https://github.com/SergioMartin86/QuickerNES|QuickerNES]
* Platform: 
** 2 x AMD Epyc 7763 (128 cores, 256 threads) + 512Gb RAM
** Exploration Rate: ~8k shots/s
