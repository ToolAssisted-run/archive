> **Imported**
> This run was originally published at https://tasvideos.org/6690M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%TOC%%

!! Background
I (ktwo) thought the previous submission for this game would be my last. But I started doing real-time attempts earlier this year and eventually came up with a few improvements that also translated to the TAS. As I continued playing this game, more and more improvement ideas trickled in and several of them also turned out to lead to time saves.

!! Category Rules

* Primary objective: Speed
* Uses deaths and takes intentional damage to save time
* Uses U+D and L+R inputs

!! Comparison Movie

[module:youtube|v=3k6R98wwkfc]

!! Game mechanics
https://kb.speeddemosarchive.com/Beetlejuice_(NES)/Game_Mechanics_and_Techniques .

!! Level-by-level comments
I'll mainly focus on what has changed since [5272M] in the comments below, but not going into single frame optimizations.

! Town
* The very first screen now has a death warp. There are a few more death warp candidates later on as well, but overall this is the only one that saves time.
* Minor improvement from better screen scrolling near the exit door in the house. This was found by 'eien86' when trying to bot this section of the game.

! Storm drains
* Minor improvement at the first cavern monster when taking the hit
* Improvement around the second cavern monster so Beetlejuice could drop down directly to the correct position in front of the shop
* It's worth noting that the free umbrella scares around the first cavern monster appear based on the global counter ($3BB). Any improvement before this point will just result in a corresponding wait here. An improvement would have to be of at least 52f to hit the earlier "frame window". It's definitely possible to get faster beetle farming in the town level and there might be the odd frame to save from working the sub-pixels somewhere. However, this isn't going to be even close to 52f. For that, something completely new would have to be found.

! Overhead section
* A new screen warp in the second room with three of Delia's art pieces (reddish background), worth 64f. This one should honestly have been found before.

! Graveyard
* New route around the two frogs near the start of the level (the previous TAS damage-boosted off the second one)
* New route through the tower

! Afterlife
* Minor route change when collecting the first ticket (#4).
* Route change after collecting ticket #2 by directly jumping up to the upper platform with a scorpion enemy
* In the previous TAS, two death abuses were used in this level. However, because of the new death in the very first screen of the game, a second death this time would have resulted in a continue screen and an additional 45f lost. A different route for collecting ticket #5 was therefore used (it's the one on the far right side of the level, after ticket #2). This is normally slower than the route with the second death abuse, but faster in this case because it avoids the continue screen.

! Co-authorship
ktwo did the manual TASing of this movie. eien86 supported with botting in the house and finding a RNG-seed that produced very good beetle farming. The latter did unfortunately not make it in the final movie because of findings later on that required the beetle farming to be re-done.


!! Software + Hardware

! Rom Information

* Name: Beetlejuice
* ROM: Beetlejuice (U) [!].nes
* SHA1: E62A1EEB5B88C4B812858C741907F6FE51765E56
* MD5: 36F9C268D5152085C914EB732392848E

! Emulator

* EmuHawk 2.9.1 (Core: NESHawk)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: QuickerNES
* Platform: 
** 2 x AMD Epyc 7763 (128 cores, 256 threads) + 512Gb RAM
** Exploration Rate: 2.3 Mstates/s
