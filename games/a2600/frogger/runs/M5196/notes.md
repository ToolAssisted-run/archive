> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/5196M and entered this archive as a voluntary
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

This movie obsoletes [3542M]. There, Alyosha discovered that delaying the start by 2 frames, you get dealt a better hand on the first stages. But he also mentions that probably an exhaustive bot-based method might find a better solution for the overall game. Here it is.

!! Software + Hardware

! Rom Information

Rom: Frogger (1982) (Parker Bros)
* SHA1: E859B935A36494F3C4B4BF5547392600FB9C96F0
* MD5: 081E2C114C9C20B61ACF25FC95C71BF4

! Emulator

* EmuHawk 2.8.0 (Core: Atari2600Hawk)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://stella-emu.github.io/|Stella] - Disabled TIA
* Platform: 'The Jaffanator' - AMD Ryzen Threadripper 3990X (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 0.7M States/s)


!! Comparison Movie

[module:Youtube|hidelink|v=XQy1o0JYRZQ]

!! Timing Table

%%SRC_EMBED
                       Old                     New                    Diff
  Stage      Initial         Total       Initial     Total       Stage     Total
   Boot            0          441             0       441           0       0
    1            441          424           441       424           0       0
Transition       865          436           865       436           0       0
    2           1301          506          1301       404        -102       -102
Transition      1807          436          1705       436           0       0
    3           2243          352          2141       444          92       92
Transition      2595          436          2585       436           0       0
    4           3031          588          3021       382        -206       -206
Transition      3619          436          3403       436           0       0
    5           4055          642          3839       430        -212       -212
Transition      4697          436          4269       436           0       0
    6           5133          536          4705       372        -164       -164
Movie End       5669                       5077                             -592

%%END_EMBED


⸤⸤⸤⸤((⸤⸤This is my anticipated April's fools submission. It's a serious movie tho. Where's the joke? I spent around 50 hours adapting the Stella emulator to run with my bot. Atari 2600 emulation is extremely complicated due to the interaction between the different chips, especially the TIA. I am so tired of this, I wanna go back to NES.⸥⸥))⸥⸥⸥⸥
