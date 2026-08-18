> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/5557M and entered this archive as a voluntary
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

Galaga goes pew pew

! Category Choice

Category Rules:
* Beat all 8 different challenges with perfect score

Although the game is unlimited, it is divided into 4-stage loops. The last stage of every loop is a so-called 'Challenging Stage'. There seems to be only 8 types of challenging stages, after which the game provides no new content. The author of this [https://gamefaqs.gamespot.com/arcade/583972-galaga/faqs/63395|FAQ] is the only source I came up that provides this information. 

On the other hand, the [https://gamefaqs.gamespot.com/arcade/583972-galaga/faqs/53020|achievement guide] for the Xbox 360 port of this game gives it's last achievement at stage 30, which more or less confirms there is not much more after 8 loops. However, I haven't played this port so I cannot confirm.

I added the perfect score condition because, although it is faster to end the challenging stages with an imperfect result (<40 enemies killed, prompting a faster score tally), I believe this would go against the nature of this game and the audience would not appreciate it. 

The previous submission, [5260S], was rejected mainly for being [https://tasvideos.org/userfiles/info/34410851165250242|suboptimal]. However, it was also rejected for the choice of category. In their [https://tasvideos.org/5260S|judgement], Noxxa stated that a movie for this game should at least contain the 8 challenging stages. My submission seeks to address this requirement.

! Previous Work

Compared to the previous submission, [5260S], this movie improves the first loop by 255 frames:

[module:Youtube|hidelink|v=OH-wQ0UpkmQ]

! Strategy

I ran the bot to find the fastest way to beat each loop, so RNG manipulation is done within each loop independently. For some stages the bot found that the optimal way to beat them is to let one or two enemies through. It seems if you kill enough of them, the ones that pass through will just flee, which is faster than having to kill them.

Reading the FAQs, it seems it is possible to let yourself be captured and then rescued for double firepower. The whole process is just to slow to justify any extra frames saved from being able to double shoot. That is, at least for the 8-challenge category. If we played ad infinitum, then probably it'd be the best decision.

After running the bot for each loop, I did a manual pass to remove shots that the bot added but didn't land. I also added small celebrations after each loop and then reajusted the ship's position and RNG value by pressing L+R a certain number of times.


!! Software + Hardware

! Rom Information

* Rom: Galaga - Demons of Death [[U]]
* SHA1:87E536B900DB2976E6B3BD682A4D7ED88AC19DCD
* MD5:52485AD0D6AACA08BE2C1BD4C855A080
* RAM Map: https://tasvideos.org/UserFiles/Info/638255591598916414

! Emulator

* EmuHawk 2.9.0 (Core: NESHawk)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: QuickNES
* Platform: 'The Jaffanator' - AMD Ryzen Threadripper 3990X (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.3M States/s)
* Solution manually resynced to the NESHawk core

! Encoder Info

Please consider using this [https://tasvideos.org/UserFiles/Info/638255629190226038|movie] for encoding, as it contains extra inputs for entertainment purposes.
