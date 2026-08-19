> **Imported**
> This run was originally published at https://tasvideos.org/6725M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%TOC%%
(notes by eien86)
!! Background
This project started 2 years ago, when Alyosha reached to me via PM. He had applied a [https://www.speedrun.com/metroid_nes/guides/6z4lg|new trick] taken from a tutorial made by speedrunner CHX42. This trick involves an intricate door trick to reach the Kraid fight faster than in the current TAS. This new route alone saved 293 frames.

At that point, Alyosha asked me if I could use [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus] to re-align the climb after that fight. The main problems were RNG and lag manipulation. These two aspects go hand in hand and can quickly lead to a loss of frames, enough to negate any savings from the new trick.

I tried for weeks, but eventually failed to be of any help. The bot was still in its infancy, lacking all the advanced techniques and optimizations I ended developing throughout my most recent work. Added to that, the workstation I had back then wasn't powerful enough to properly hold the immense exploration space this game imposes. With the promise of resuming the effort later on, I put the project in pause.

Well, a couple months ago I decided to revisit it again. This time I was pleased to see the new techniques actually helped to conduct the climb towards a decent solution. After a few more weeks of work, I was even able to beat the current TAS' climb by a few frames. What followed were a flurry of weeks working on this non-stop. 

Literally 24hs a day with either the bot running, or me fixing parameters, the TAS would advance at a painfully slow pace. During the process I was able -- and forced -- to learn the many small details and secrets of manipulating RNG and lag this game requires. These were indispensable to lead the bot to a good conclusion -- otherwise it would be lead to many false savings and dead ends.

The most important factor of making this possible was using the current solution as guideline for the bot. I instructed the bot to follow it religiously and, whenever possible, save a frame or two. The result was a back-and-forth of winning and losing frames against the current TAS. For this reason, [https://tasvideos.org/Users/Profile/The8bitbeast|The8bitbeast] is included as co-author.

Regarding emulator choice, I went for QuickerNES because it is the core I use for botting. Originally, I was able to resync the original TAS from BizHawk 2.2.1 to BizHawk 2.10 for NESHawk and QuickerNES cores by fixing the Start presses at the beginning and adjusting for a couple lag frames here and there. A reverse sync from QuickerNES to NESHawk of this submission might be possible, although strangely enough I had to add several more lag frames duplicates to get to the top of the climb. I'll let the experts analyze sync/console repro.

The current solution, which I am uploading now, reaches the very last fight at a dead tie with the current TAS, only to lose a few frames towards the end. I plan to attack this section again once my new workstation is assembled, but for the time being I am more than happy and relieved to submit this and go on with my other long-postponed projects.

!! Category Rules

* Primary objective: Speed
* Uses deaths and takes intentional damage to save time

!! Comparison Movie

[module:youtube|v=kUgPfYkDmr8]

!! Software + Hardware

! Rom Information

* Name: Metroid
* ROM: Metroid (U) (PRG0) [!].nes
* SHA1: ECF39EC5A33E6A6F832F03E8FFC61C5D53F4F90B
* MD5: D77C8053168DA14B360BF5CAECCC5964

! Emulator

* EmuHawk 2.10 (Core: QuickerNES)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: QuickerNES
* Platform: 
** 2 x AMD Epyc 7763 (128 cores, 256 threads) + 512Gb RAM
** Exploration Rate: 2.1 Mstates/s
