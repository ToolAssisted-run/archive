> **Imported**
> This run was originally published at https://tasvideos.org/4812M and entered this archive as a voluntary
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

Ninja Gaiden is a game that invites you to go full violence: you get a sword, you get weapons, you break things, you kill enemies. However, it is also possible to beat the game without harming anything but the end-of-stage bosses. Even the final boss --the Demon-- can be treated nicely, only killing it by hitting its heart, and not his head, tail or shrimps. 

This movie accomplishes all of the above and it does so at maximum speed. The result is a highly RNG and physics-manipulated movie that optimizes global routing and local movements in attempts to save every possible frame until the very end.

! Authorship

The authors of this movie are listed in the order of how many saved frames they contributed. Although this is, in some cases, an approximation, the submitters believe it reflects pretty well their respective contributions. Some of the authors are credited in absentia.

! Category Rules

The authors define the pacifist category as follows:
* No Enemies, except for bosses, shall be damaged
* No Scenery shall be damaged
* No Projectiles shall be damaged
* Demon head, tail, and all its 'shrimps' shall remain untouched.

Note: the first version of this movie was made under a stricter rule, where the button B cannot be pressed (except for Up+B which is innocuous) during non-boss stages. This rule had to be discarded when resyncing to BizHawk, as pressing B was the only way to fix some occurrences of NES's DPCM glitch.

! Story Time

This movie has story that is almost a [https://tasvideos.org/Forum/Posts/322989|decade long]:

%%QUOTE feos

Around 2011 I saw sinister1’s RTA attempts at NG1 “pacifist” and got inspired, and [https://tasvideos.org/Forum/Posts/291708|started supporting] this category on the forums. In 2012 out of boredom I started TASing it, but wasn’t sure if I’m interested enough to keep going.

jprofit22 and Marx helped me which made me finish the first [https://tasvideos.org/Forum/Posts/338600|complete test run]. While working on redoing that, I started reverse-engineering the problematic aspects of the game which resulted in scripts on [GameResources/NES/NinjaGaiden].

[https://tasvideos.org/Forum/Posts/372105|MESHUGGAH joined] and quickly became the god of the category, I was unable to improve his times anymore, so I just kept debugging.

I discovered one of the most important aspects of the game for this category: how you can delay spawns by moving back and forth at certain spots, completely despawning some enemies if you want. It affected the behavior of random enemies, which in “pacifist” is critically important to manipulate, and you can even clip through enemies and projectiles without taking damage.

MESHUGGAH kept grinding for a couple years and made his [https://tasvideos.org/UserFiles/Info/32548221835839746|full test run] which was 1169 frames faster than mine.

After redoing things even harder and saving 68 frames over that [https://tasvideos.org/Userfiles/Info/33669363111907735|up to 6-1], MESHUGGAH decided to [https://tasvideos.org/Forum/Posts/440628|significantly change the rules of the category] but hasn’t released any WIPs since then.

Since I was unable to contribute in any way anymore, I just kept waiting for him to get inspired to work on it again, but it ended up not happening. And then [4751M] happened. And I thought it was my chance to see this thing finally done, and I was right!!!

%%QUOTE_END

The story concludes in July 2022 as follows:

%%QUOTE eien86
My work on this category started shortly after Scum and I were done with the any% variant, having improved that one by a single frame. feos had asked me if I was planning to do the pacifist run, pointing me to the unfinished work by MESHUGGAH. It seemed like a good choice because I had all the knowledge for NG1 already and the bot ready to go. Little did I know that pacifist is a whole different monster. I can divide this adventure in two stages:

At first, I assumed I could just re-do the entire movie, only using the MESHUGGAH's movie as reference. After a week of painful progress, winning and losing many frames to RNG and enemy manipulation, I ended up on stage 3-1 15 frames ahead (see: https://tasvideos.org/UserFiles/Info/637933728969148329). This is where my progress came to a halt. After two days of work, I could not make 3-1 work without losing all 15 frames. At this point I decided that I was tackling this project wrong, and decided to pursue another strategy.

The second stage consisted of me figuring out that my job was to finish the previous work, not to create something anew. After this realization, the project became fun again and I could dedicate my efforts to completing the last few stages without pressure. Even then, I managed to find many (supposed) improvements to the way these stages were solved. What I'm proud of the most, is the fact that I totally squeezed the Ninja HP stock (a precious resource), ending Stage 6 with only 1 HP left. This strategy could have backfired, but in the end avoiding death saved a ton of frames compared to previous attempts.

This is by no means a perfect movie. Its main goal is to represent a highly optimized NesHawk-resynced baseline for future attempts. I am 99.9% convinced that many more frames can be saved without too much effort (other than resyncing). So this movie is an invitation to both old and new players to hone their TASing skills and see if they can beat my execution of 6-1 onwards, or MESHUGGAH and company's execution, 6-1 backwards.
%%QUOTE_END

The current work starts from the WIP [https://tasvideos.org/UserFiles/Info/33669363111907735|movie] from September 2016, and improves it on the following aspects:
* It was resync from FCEUX to QuickNES prior to re-routing
* Found a faster kill on Stage 5's boss
* Re-planning, and re-optimizing all stages from 6-1 onwards
* Re-worked Demon kill, where Ryu clips inside it and damages only the Demon's heart.
* Work on entertainment factor, including Train Mode in 4-2, post stage 5 and 6 boss kills
* A final resync from QuickNES to NesHawk for increased emulation accuracy. 

!! Emulation

! Rom Information

* Name: Ninja Gaiden (U) [!]
* SHA1: CA513F841D75EFEB33BB8099FB02BEEB39F6BB9C
* MD5: 0C2CCCDA6BA6CAB7BEDE0FF05E7F6852

! Emulator

* EmuHawk 2.8.0 (Core: NesHawk)

Resynchronized from the initially submitted [EmuHawk 2.8.0 + QuickNES] movie, using Scumtron's DPCM glitch detection tool, available [https://tasvideos.org/Forum/Topics/246?CurrentPage=4&Highlight=509658#509658|here].

! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffar|Jaffar]
* Routing Core: QuickNES (Average Exploration Performance: 1.6M States/s)
* Platform: AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM

!! Timing

The game is structured into acts representing the story arcs in the game with bosses at the end; stages, the different playable parts of an act, and; substages, the division of a stage into multiple NES vertically stacked 'screens' to allow for the illusion of verticality within a given stage. The nomenclature goes as follows: III-2a, represents act 3, stage 2, substage a. Timing is structured as follows:

* Substage timing starts from the very first frame where Ryu is playable (typically 2 frames before he appears on screen)
* Substage transitions happen when the substage number (0x006E) changes.
* Stage transitions happen when game mode* (0x002D) has a non-zero value. Alternatively, the preserved value of the A register at the start of the NMI routine that happily serves this purpose quite well. 
* Act transitions happen when a Boss HP (0x0066) equals 0.

Since there is no preceding movie, we compare our movie against use a combination of MESHUGGAH's et al. best work in progress files:
* We ignore the first frame difference, since this is attributed to using different emulators
* For Acts I-V, we use their last [https://tasvideos.org/UserFiles/Info/637933728969148329|partial WIP]
* For Act VI, we use their previous [https://tasvideos.org/UserFiles/Info/32548221835839746|full WIP]

This is not an ideal comparison, but gives the best impression of the improvements made in this work.

%%SRC_EMBED
                                          New            Old           Diff
   Stage                                Initial  Total Initial Total   Stage     Total
    Boot                                   0      173     0    174      -1         0
     I            1            a          173    2028    174   2028      0         0
             Transition                  2201     277   2202   277       0         0
                  2            a         2478     198   2479   198       0         0
 Transition                              2676     740   2677   740       0         0
     II           1            a         3416     973   3417   973       0         0
                           Transition    4389     23    4390    23       0         0
                               b         4412     814   4413   814       0         0
                           Transition    5226     22    5227    22       0         0
                               c         5248     97    5249    97       0         0
                           Transition    5345     22    5346    22       0         0
                               d         5367     604   5368   604       0         0
             Transition                  5971     277   5972   277       0         0
                  2            a         6248     652   6249   652       0         0
                           Transition    6900     22    6901    22       0         0
                               b         6922     614   6923   614       0         0
                           Transition    7536     52    7537    52       0         0
                               c         7588    1396   7589   1396      0         0
             Transition                  8984     277   8985   277       0         0
                  3            a         9261     191   9262   191       0         0
 Transition                              9452     741   9453   741       0         0
    III           1            a         10193   1353   10194  1353      0         0
             Transition                  11546    278   11547  278       0         0
                  2            a         11824   2066   11825  2066      0         0
             Transition                  13890    277   13891  277       0         0
                  3            a         14167    93    14168   93       0         0
 Transition                              14260    744   14261  744       0         0
     IV           1            a         15004   1484   15005  1484      0         0
                           Transition    16488    23    16489   23       0         0
                               b         16511    75    16512   75       0         0
                           Transition    16586    22    16587   22       0         0
                               c         16608    408   16609  408       0         0
             Transition                  17016    161   17017  161       0         0
                  2            a         17177   2024   17178  2024      0         0
             Transition                  19201    277   19202  277       0         0
                  3            a         19478    118   19479  118       0         0
                           Transition    19596    22    19597   22       0         0
                               b         19618    622   19619  622       0         0
                           Transition    20240    22    20241   22       0         0
                               c         20262    789   20263  789       0         0
                           Transition    21051    22    21052   22       0         0
                               d         21073    572   21074  572       0         0
             Transition                  21645    277   21646  277       0         0
                  4            a         21922    39    21923   39       0         0
 Transition                              21961    747   21962  747       0         0
     V            1            a         22708   2053   22709  2053      0         0
             Transition                  24761    278   24762  278       0         0
                  2            a         25039    459   25040  459       0         0
                           Transition    25498    22    25499   22       0         0
                               b         25520    465   25521  465       0         0
                           Transition    25985    622   25986  622       0         0
                               c         26607   -113   26608  -113      0         0
                           Transition    26494    22    26495   22       0         0
                               d         26516    516   26517  516       0         0
             Transition                  27032    277   27033  277       0         0
                  3            a         27309    411   27310  411       0         0
                           Transition    27720    23    27721   23       0         0
                               b         27743    462   27744  462       0         0
                           Transition    28205    23    28206   23       0         0
                               c         28228    427   28229  427       0         0
                           Transition    28655    23    28656   23       0         0
                               d         28678    463   28679  463       0         0
                           Transition    29141    23    29142   23       0         0
                               e         29164    219   29165  219       0         0
                           Transition    29383    22    29384   22       0         0
                               f         29405    204   29406  204       0         0
                           Transition    29609    22    29610   22       0         0
                               g         29631    235   29632  235       0         0
             Transition                  29866    157   29867  157       0         0
                  4            a         30023    189   30024  204      -15       -15
 Transition                              30212    741   30228  738      +3        -12
     VI           1            a         30953   1434   30966  1366     +68       +56 
             Transition                  32387    277   32332  277       0        +56 
                  2            a         32664   1054   32609  1040     +14       +70 
                           Transition    33718    22    33649   22       0        +70 
                               b         33740    629   33671  704      -75        -5 
                           Transition    34369    23    34375   22      +1         -4 
                               c         34392    75    34397  306     -231       -235
                           Transition    34467    22    34703   22       0        -235
                               d         34489    465   34725  491      -26       -261
                           Transition    34954    23    35216   23       0        -261
                               e         34977    602   35239  612      -10       -271
             Transition                  35579    277   35851  277       0        -271
                  3            a         35856    437   36128  457      -20       -291
                           Transition    36293    22    36585   22       0        -291
                               b         36315    133   36607  133       0        -291
                           Transition    36448    23    36740   23       0        -291
                               c         36471   1333   36763  1345     -12       -303
                           Transition    37804    22    38108   22       0        -303
                               d         37826    793   38130  837      -44       -347
                           Transition    38619    158   38967  152      +6        -341
                  4            a         38777    82    39119   82       0        -341
                           Transition    38859    744   39201  747      -3        -344
                               b         39603    103   39948  102      +1        -343
             Transition                  39706    744   40050  744       0        -343
                  5            a         40450    230   40794                         
    End                                  40680                                        
%%END_EMBED

You can watch a side-by-side encode of the table above here:

[module:Youtube|v=rnKT-9eGxnI]

!! Technical Aspects

! Tricks and Glitches

This category is fundamentally different from any%. In particular, it uses the following techniques extensively, which are seldom employed in the any% movie:

* Enemy Spawn Delay (ESD) trick: This one consists of pressing L/R alternatively just before an enemy appears. By doing this, the screen keeps scrolling, but the procedure that checks whether an enemy/item must appear is not checked. Therefore, one can use this to 'delay' an enemy spawn by a few pixels/subpixels. However, if done for enough frames, it is possible to outright prevent the appearance of said enemy. This technique allows clearing up the path out of hard-blocking enemies, without having to kill them.

* RNG Manipulation: The game contains a global timer which keeps advancing through stages. This means that delaying pressing S during a cutscene can make it possible to start the next stage with a more favorable RNG.

* Enemy Slot Manipulation: The game allows for having a maximum of 8 concurrent enemies on screen. When a new enemy spawns, most of its attributes are reset to its proper values. However, some values are not refreshed, leading to some crazy effects like [https://www.twitch.tv/videos/1497514873|Joecurr's pre-kill]. Another value that is not refreshed is the enemy's X subpixel, which is then inherited from the previous enemy to the new enemy occupying the same slot. By altering the order in which enemies spawn or de-spawn, it is possible to assign new enemies a favorable X subpixel. This is a crucial aspect in many skips in this movie and any future movies in this category.

! Acts I-V (excluding boss) Breakdown

For resources about how these acts were resolved, I suggest reading the following resources:

* User file [https://tasvideos.org/UserFiles/Game/175|history] for Ninja Gaiden. Look for comments on files by MESHUGGAH, with the 'pacifisting' keyword.
* Ninja Gaiden [https://tasvideos.org/Forum/Topics/242|forum thread]. 
* Ninja Gaiden [https://tasvideos.org/GameResources/NES/NinjaGaiden|game resources].

The submitted movie differs from the WIP, in that the Act V boss is killed 15 frames faster, by not waiting for a new jump cycle.

! Act VI Breakdown

This act requires a detailed HP-usage routing. Ryu starts with 16 HP which is lost every time you get hit. Different enemies/projectiles remove different amounts of HP. Most enemies remove 1 HP, but birds in particular remove 3 HP (this is unfortunate because bird-skips are very useful).

Instead of planning HP usage, the previous WIP contained a purposeful death in VI-2c to replenish it. This loses a couple hundred frames. Instead, my approach was to save as much HP from the beginning (VI-1a) where I lost around 60 frames compared to the WIP. It turns out that this strategy paid off since I was able to get most skips without needing to abuse death. 

!! Future work

This movie is pretty much a baseline for future TASers wanting to improve this category. Anyone aiming to do that should choose one of three approaches:

* Start from the beginning, using the improved [https://tasvideos.org/UserFiles/Info/637933728969148329|movie] as a starting point. The difficulties to face here is that of resyncing 4-1 onwards. This is by no means an easy task, as the amount of work is maximized. However, this approach is the one with the most potential reward. You will need to use Scumtron's [https://tasvideos.org/userfiles/info/637923955744472700|bird manipulation tool] to solve 5-1.

* Start from the ending backwards. This approach will seek to improve on my contributions (eien86). Although I used a bot to refine the execution, there is surely a lot of potential in routing the global strategy and HP management. This is possibly the easiest way to find an improvement and publish an obsoleting movie.

* Starting from 6-1 backwards. This approach will seek to improve MESHUGGAH et al. execution on the latter stages. Any frame found here would have a moderate amount of resyncing work, for the latter stages.

!! Acknowledgements and Attributions

* MESHUGGAH, feos, Marx, jprofit22: The original work until stage 5's boss.
* eien86: Stage 5's boss onwards. Reused some parts of the original work.
* Scumtron: For being the one constant contributor to this movie throughout the years.
* The entire Ninja Gaiden speedrunning community: who give their support and are always ready to help and contribute.

!! Encoding Info

! Encoder Movie

[https://tasvideos.org/UserFiles/Info/637936734131933976]

The re-record count should be the sum of this movie's and the previous [https://tasvideos.org/UserFiles/Info/33669363111907735|WIP].

! Suggested Thumbnails

[https://i.imgur.com/dmrGjOG.png]

[https://i.imgur.com/5e5TzND.png]
<- feos’s favorite

[https://i.imgur.com/K4FNaQG.png]
<- eien86's favorite
