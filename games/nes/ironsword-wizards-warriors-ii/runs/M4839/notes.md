> **Imported**
> This run was originally published at https://tasvideos.org/4839M and entered this archive as a voluntary
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

IronSword is a charming action/adventure game that I wish I had played when I was younger. Instead, here I am, shaving 5.2 seconds out of its last stage. This movie was a [https://tasvideos.org/Forum/Topics/23490?CurrentPage=1&Highlight=516083#516083|challenge/consignment] by Alyosha, who thought it would be a good idea to apply a bot to the infamous last boss fight in this game.

The final boss fight consists of 4 floting element heads that come and go on a 2D plane, attacking the protagonist. It is particularly difficult to optimize manually, given the butterfly effect-like every decision you make has. I ran the bot on an exceptionally large exploration database while constraining the hero to stay put (he cannot run). And it did find a better solution.

This movie contains only changes to the aforementioned fight (for a longer description of the rest of the game, see [2777M], and its 315 frame faster solution introduces a seemingly new concept: multi-fire. So it seems you can hack the game into firing multiple times before the previous projectiles leave the screen (if this was known but not used, disregard this paragraph).

! Comparison Movie

[module:Youtube|v=fRZ5ak_xN5g]

!! Software + Hardware

! Rom Information

* Name: Ironsword - Wizards and Warriors 2 (U)
* SHA1: 03130F8464B3F4418427BF124EB15FBAEB86E09D
* MD5:  CD28188CA6B0A4D1E7C34FA47285BEC9

! Emulator

* EmuHawk 2.8.0 (Core: NesHawk)

Manually resynchronized from a EmuHawk 2.8.0 + QuickNES movie.

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffar|Jaffar]
* Routing Core: QuickNES
* Platforms: 
** AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.1M States/s)
** 2 x AMD EPYC 7742 Processor (128 cores, 256 threads) + 512Gb RAM (Average Exploration Performance: 2.2M States/s)

! Q&A

Q: Why not bot the rest of the game?
A: While the bot has achieved success on many 1.5D games (Castlevania, Ninja Gaiden, PoP), where the hero mainly traverses the level horizontally and ocassionaly jumps on a platform, this game is proper 2D. This means that the paths here can have dominant X, Y or diagonal directions. This makes the exploration space much bigger. Although I believe it could be still successful in saving a bunch more frames, it would be a months-long project and I'd like to take a break from juggernaut projects for now (burnout). 

Q: Can the final fight be improved?
A: Yes, of course. I had to cripple the hero into not being able to run in order to avoid him from pursuing one of the heads and falling to oblivion. If anyone wants to manually optimize this fight making use of the multi-shot and being able to run, then there's a real chance to improve it. But then again, in 5/10 years I believe we'll have powerful enough systems to approach a pretty much perfect solution.

! Acknowledgements

Thanks Alyosha for the fun challenge, I look forward to new ones.

Thanks to the authors of the previous movie: Aglar, Randil, Alyosha, rchokler, Samsara. Yours are the giant shoulders on which this movie stands.
