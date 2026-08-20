> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/5327M and entered this archive as a voluntary
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

This movie improves 905 frames (15 seconds) off award-winning [3943M]

!! Software + Hardware

! Rom Information

Rom: Arkanoid (U) [!]
* SHA1: 230FC31D2C2EB20E78711C82574F29F28117EBA3
* MD5: 0CCC1A2FE5214354C3FD75A6C81550CC

! Emulator

* EmuHawk 2.9.0 (Core: NESHawk)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: QuickNES
* Platform: 'The Jaffanator' - AMD Ryzen Threadripper 3990X (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.2M States/s)

!! Comparison Movie & Timing

[module:Youtube|hidelink|v=bh9iXkW2Fzk]

%%SRC_EMBED
               Old           New          Diff
   Round     Initial Total Initial Total  Stage  Total
    Boot          0    566      0    566      0      0
     1          566    989    566    975    -14    -14
 Transition    1555    296   1541    296      0      0
     2         1851    826   1837    822     -4     -4
 Transition    2677    296   2659    296      0      0
     3         2973    605   2955    591    -14    -14
 Transition    3578    296   3546    296      0      0
     4         3874    759   3842    720    -39    -39
 Transition    4633    296   4562    296      0      0
     5         4929   1027   4858    956    -71    -71
 Transition    5956    296   5814    296      0      0
     6         6252    489   6110    489      0      0
 Transition    6741    296   6599    296      0      0
     7         7037    622   6895    605    -17    -17
 Transition    7659    296   7500    296      0      0
     8         7955    249   7796    266     17     17
 Transition    8204    296   8062    296      0      0
     9         8500    508   8358    508      0      0
 Transition    9008    296   8866    296      0      0
     10        9304    697   9162    697      0      0
 Transition   10001    296   9859    296      0      0
     11       10297   1478  10155   1463    -15    -15
 Transition   11775    296  11618    296      0      0
     12       12071    625  11914    625      0      0
 Transition   12696    296  12539    296      0      0
     13       12992    475  12835    461    -14    -14
 Transition   13467    296  13296    296      0      0
     14       13763    747  13592    747      0      0
 Transition   14510    296  14339    296      0      0
     15       14806   1353  14635   1223   -130   -130
 Transition   16159    296  15858    296      0      0
     16       16455    579  16154    551    -28    -28
 Transition   17034    296  16705    296      0      0
     17       17330    694  17001    657    -37    -37
 Transition   18024    296  17658    296      0      0
     18       18320    626  17954    545    -81    -81
 Transition   18946    296  18499    296      0      0
     19       19242    671  18795    624    -47    -47
 Transition   19913    296  19419    296      0      0
     20       20209    521  19715    521      0      0
 Transition   20730    296  20236    296      0      0
     21       21026    444  20532    444      0      0
 Transition   21470    296  20976    296      0      0
     22       21766    536  21272    536      0      0
 Transition   22302    296  21808    296      0      0
     23       22598   1266  22104   1292     26     26
 Transition   23864    296  23396    296      0      0
     24       24160    892  23692    883     -9     -9
 Transition   25052    296  24575    296      0      0
     25       25348   1181  24871   1104    -77    -77
 Transition   26529    296  25975    296      0      0
     26       26825    732  26271    732      0      0
 Transition   27557    296  27003    296      0      0
     27       27853   1457  27299   1404    -53    -53
 Transition   29310    296  28703    296      0      0
     28       29606    772  28999    726    -46    -46
 Transition   30378    296  29725    296      0      0
     29       30674   1448  30021   1268   -180   -180
 Transition   32122    296  31289    296      0      0
     30       32418   1259  31585   1221    -38    -38
 Transition   33677    296  32806    296      0      0
     31       33973   1013  33102   1013      0      0
 Transition   34986    296  34115    296      0      0
     32       35282    764  34411    748    -16    -16
 Transition   36046    296  35159    296      0      0
     33       36342   1113  35455   1113      0      0
 Transition   37455    296  36568    296      0      0
     34       37751    703  36864    703      0      0
 Transition   38454    296  37567    296      0      0
     35       38750    612  37863    604     -8     -8
 Transition   39362    296  38467    296      0      0
     36       39658    678  38763    668    -10    -10
 Last Input   40336     85  39431     76     -9   -905
 Boss Dies    40421         39507                 -914
%%END_EMBED

!! Explanation

I have a lot of respect for the incredible work that both Chef Stef (and Baxter) did in the previous movies. We all took very different routes and improved on each other. Not much can be added to their detailed explanations, except to talk about what I did differently.

Although I use a bot, I take different approach than Chef Stef:

* They built a C-based reverse engineered version of the game, yielding enourmous speedups compared to a using a lua on top of bizhawk. My approach, simply compiling my bot against quickNES (C++) is a bit less sophisticated, but by no means slow. The fact that it took them a year of execution on a 6-core machine but took me a month to do this one on a 64-core machine gives an idea of the relative performances.

* They built a decision tree based on the 8 possible angles a ball can take, I went full brute, allowing any x position for the paddle when a ball is in the 'hittable' layer. To compensate for the impossibly large exploration space, I pruned the action space to either pressing "L" or "R" -- standing still was not an option. This paid off pretty nicely, I must say.

The main difficulty during making this movie was the bonus score screen. After finishing some levels, you get 'punished' with extra score -- I believe this has to do with the amount of enemies you killed, but so far haven't been able to decode it (nor did I spend much time to research it either).

!! Future Work

Before starting this project I tried to get in contact with Chef Stef via DM (and Discord). I had no luck, but also didn't try any further. This is the thing: their approach to this game and mine are not entirely mutually exclusive; if we were to join forces in the future, we could even be talking about optimality here.

So here it is: Chef Stef, if you are reading this, HMU and let's kill this game once and for all.

! Re-Record Count

The re-record (load state, change input, advance state) count of this movie is: 2,529,914,332,046. I'd like to ask for this value be properly represented in the publication. I'll keep the execution logs for a while if someone wants to check them out.
