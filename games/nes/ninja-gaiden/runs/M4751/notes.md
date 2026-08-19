> **Imported**
> This run was originally published at https://tasvideos.org/4751M and entered this archive as a voluntary
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
 
Once again, after 6 long years, we manage to find a way to beat Ninja Gaiden faster than the previous movie by... ONE frame. The key to this improvement was the combination of (1) years of community-accrued knowledge of this game and its emulation, (2) breadth-first bot-driven exploration by eien86, (3) the development of an ad-hoc tool by Scumtron, that simulates how player movement and the fractional x position they spawn with affects bird position over time. We recommend reading the submission notes and comments from the previous [https://tasvideos.org/3223M|movie(s)] for an in-depth description.

Although this movie saves only a single frame, it contains considerable changes to the route and entertainment-only parts to make for a noticeably different watching experience. The changes in route contain false frames: time saves in earlier stages which were later lost due to waiting for a favorable global RNG timer. These frames convey potential time saves and were therefore kept in the movie in hopes we will find a way to overcome their limitations. The only true frame saved was achieved by brute force optimized changes in routine stage 5, as explained later.

The project was conducted in two stages. The first one (by eien86, from mid May to mid June) consisted of a full-re run of the current strats by the breadth first bot. The second stage (by Scumtron, from mid to end of June) consisted of creating the bird simulator and making numerous local improvements to the run. Although I (eien86) knew the game as a casual speedrun viewer, I had to learn the game mechanics in detail. Thankfully, Scumtron was always there to contribute with his in-depth knowledge of the game and to provide help in re-planning the route.

!! Emulation

! Rom Information

* Name: Ninja Gaiden (U) [!]
* SHA1: CA513F841D75EFEB33BB8099FB02BEEB39F6BB9C
* MD5: 0C2CCCDA6BA6CAB7BEDE0FF05E7F6852

! Emulator

* EmuHawk 2.8.0 (Core: NesHawk)

Resynchronized from the initially submitted [EmuHawk 2.7.0 + QuickNES] movie, using Scumtron's DPCM glitch detection tool, available [https://tasvideos.org/Forum/Topics/246?CurrentPage=4&Highlight=509658#509658|here].

! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffar|Jaffar] (new version in development)
* Routing Core: QuickNES (Average Exploration Performance: 1.6M States/s)
* Platform: AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM

! Bird Simulator

* [https://tasvideos.org/UserFiles/Info/637923955744472700|It simulates birds]

[https://i.ibb.co/DtKjKL1/birdsim.png]

Birds accelerate towards Ryu at 1/16th of a pixel per frame and inherit the low byte of their position from the last enemy to use the slot they spawn in. These two things alone wouldn't make them terribly difficult to manipulate, but the fact that enemy routines are skipped every 16 pixels the screen is scrolled adds enough complexity that the effort of making an external tool finally seemed worth it. This tool helped in finding a two frame faster solution to 4-2, greatly assisted in almost matching the old solution to 5-1, and generally helped rule out possibilites for other improvements in various stages.

!! Timing

Here we show the timing of the new TAS and compare it with the older TAS. The game is structured into acts representing the story arcs in the game with bosses at the end; stages, the different playable parts of an act, and; substages, the division of a stage into multiple NES vertically stacked 'screens' to allow for the illusion of verticality within a given stage. The nomenclature goes as follows: III-2a, represents act 3, stage 2, substage a. Timing is structured as follows:

* Substage timing starts from the very first frame where Ryu is playable (typically 2 frames before he appears on screen)
* Substage transitions happen when substage number (0x006E) changes.
* Stage transitions happen when game mode* (0x002D) has a non-zero value. Alternatively, the preserved value of the A register at the start of the NMI routine that happily serves this purpose quite well.
* Act transitions happen when a Boss HP (0x0066) equals 0.

%%SRC_EMBED
                                               New             Old          Diff
    Stage                                   Initial  Total Initial  Total  Stage  Total
     Boot                                         0     173       0    174     -1      0*
      I              1              a           173    2016     174   2016      0      0
                 Transition                    2189     277    2190    277      0      0
                     2              a          2466      88    2467     88      0      0
  Transition                                   2554     747    2555    747      0      0
      II             1              a          3301     970    3302    970      0      0
                                Transition     4271      23    4272     23      0      0
                                    b          4294     786    4295    786      0      0
                                Transition     5080      22    5081     22      0      0
                                    c          5102      97    5103     97      0      0
                                Transition     5199      23    5200     23      0      0
                                    d          5222     603    5223    603      0      0
                 Transition                    5825     277    5826    277      0      0
                     2              a          6102     621    6103    622     -1     -1
                                Transition     6723      22    6725     22      0     -1
                                    b          6745     608    6747    610     -2     -3
                                Transition     7353      22    7357     22      0     -3
                                    c          7375    1345    7379   1345      0     -3
                 Transition                    8720     277    8724    277      0     -3
                     3              a          8997      82    9001     82      0     -3
  Transition                                   9079     749    9083    748     +1     -2
     III             1              a          9828    1327    9831   1322     +5     +3
                 Transition                   11155     278   11153    277     +1     +4
                     2              a         11433    2029   11430   2031     -2     +2
                 Transition                   13462     277   13461    277      0     +2
                     3              a         13739      85   13738     89     -4     -2
  Transition                                  13824     744   13827    744      0     -2
      IV             1              a         14568    1441   14571   1441      0     -2
                                Transition    16009      23   16012     23      0     -2
                                    b         16032      75   16035     75      0     -2
                                Transition    16107      22   16110     22      0     -2
                                    c         16129     392   16132    392      0     -2
                 Transition                   16521     160   16524    160      0     -2
                     2              a         16681    2000   16684   2002     -2     -4
                 Transition                   18681     277   18686    277      0     -4
                     3              a         18958     118   18963    118      0     -4
                                Transition    19076      22   19081     22      0     -4
                                    b         19098     613   19103    613      0     -4
                                Transition    19711      23   19716     23      0     -4
                                    c         19734     763   19739    763      0     -4
                                Transition    20497      23   20502     23      0     -4
                                    d         20520     555   20525    555      0     -4
                 Transition                   21075     277   21080    277      0     -4
                     4              a         21352      24   21357     24      0     -4
  Transition                                  21376     748   21381    748      0     -4
      V              1              a         22124    2025   22129   2025      0     -4
                 Transition                   24149     277   24154    277      0     -4
                     2              a         24426     448   24431    449     -1     -5
                                Transition    24874      22   24880     22      0     -5
                                    b         24896     465   24902    465      0     -5
                                Transition    25361      23   25367     23      0     -5
                                    c         25384     434   25390    434      0     -5
                                Transition    25818      22   25824     22      0     -5
                                    d         25840     490   25846    490      0     -5
                 Transition                   26330     277   26336    277      0     -5
                     3              a         26607     406   26613    406      0     -5
                                Transition    27013      23   27019     23      0     -5
                                    b         27036     449   27042    448     +1     -4
                                Transition    27485      23   27490     23      0     -4
                                    c         27508     413   27513    413      0     -4
                                Transition    27921      23   27926     23      0     -4
                                    d         27944     450   27949    450      0     -4
                                Transition    28394      23   28399     23      0     -4
                                    e         28417     212   28422    210     +2     -2
                                Transition    28629      23   28632     23      0     -2
                                    f         28652     192   28655    192      0     -2
                                Transition    28844      22   28847     21     +1     -1
                                    g         28866     236   28868    236      0     -1
                 Transition                   29102     157   29104    157      0     -1
                     4              a         29259      55   29261     55      0     -1
  Transition                                  29314     748   29316    748      0     -1
      VI             1              a         30062    1298   30064   1298      0     -1
                 Transition                   31360     277   31362    277      0     -1
                     2              a         31637     936   31639    936      0     -1
                                Transition    32573      22   32575     22      0     -1
                                    b         32595     575   32597    575      0     -1
                                Transition    33170      23   33172     23      0     -1
                                    c         33193      75   33195     75      0     -1
                                Transition    33268      22   33270     22      0     -1
                                    d         33290     422   33292    422      0     -1
                                Transition    33712      23   33714     23      0     -1
                                    e         33735     548   33737    548      0     -1
                 Transition                   34283     277   34285    277      0     -1
                     3              a         34560     430   34562    430      0     -1
                                Transition    34990      22   34992     22      0     -1
                                    b         35012     133   35014    133      0     -1
                                Transition    35145      23   35147     23      0     -1
                                    c         35168    1269   35170   1269      0     -1
                                Transition    36437      22   36439     22      0     -1
                                    d         36459     661   36461    661      0     -1
                                Transition    37120     157   37122    157      0     -1
                     4              a         37277      62   37279     62      0     -1
                                Transition    37339     747   37341    747      0     -1
                                    b         38086     102   38088    102      0     -1
                 Transition                   38188     745   38190    744      0     -1
                     5              a         38932     151   38934    152      0     -1
     End                                      39084           39086

%%END_EMBED

(*) We ignore the single frame difference in boot-up between the different emulators, as these do not represent improvements in gameplay.

!! Act Breakdown

! Act I

Stage I-1 was largely unchanged, except for the introduction of slide walk, a pure entertainment gimmick. This boss fight remained the same, except the post-kill entertainment movements were changed.

! Act II

Here a change in route was proposed by Scumtron and Bumbledon where the spin slash (a.k.a. Bzzzt) weapon is used instead of the windmill (a.k.a Swag) star. This results in a frame saved from not stopping to throw the star in Stage II-2.

[https://i.ibb.co/HYzjPYj/ng1.png]

This route was known years ago, but then dismissed because in the end it resulted in a false frame, due to the tosser in Act III. In this TAS, however, we took it this time in hopes we would save enough frames to make the global timer work in the end (spoiler: it didn't).

At the end of Stage II-2b, the bot found a 2-frame faster way to climb the column. At this point, the new TAS is 3 frames faster than the old one.
Scum: It's a shame that there aren't more places with a ladder adjacent to a barrier block like this, though if that were the case then perhaps somebody would have found this before the bot came along.

[https://i.ibb.co/hm9vXv6/ng2.png]

The boss fight remained largely unchanged, except for entertainment only movements.

! Act III

This act contains many changes between the two movies. Through extensive botting, we found out that the fastest way to kill the end boss is to use the firewheel: 4 frames faster than windmill star, used in the old TAS. Therefore we use the throwing ninja star to get the firewheel in III-1a:

[https://i.ibb.co/TB4YqSf/ng3.png]

The boss fight itself is 4 frames faster, but getting the firewheel costs time.
Throwing 3 ninja stars loses 3 frames, and the fact that ninja power remains 16, which modulo 5 is 1, means that 1 ninpo will remain at the end of the level, which loses 3 frames. Instead, we throw 5 stars and wait an additional frame to get the the tosser to cooperate. The 3 star option looks cleaner, but we needed those extra 3 frames to be during gameplay, not during the score tally, or the act IV boss would leave an extra second on the clock and cost another 3 frames. The tosser in stage III-2a acts as a gatekeeper, only allowing certain global timer values to be ones with good skips. Additionally, the old TAS loses one frame pre-shooting the windmill star before entering the boss fight (for a free pre-hit). Additionally, the firewheel route permits the rare alignment of spawn iterator, enemy subpixel, and ninja position that saves a frame by jumping over the guy at the end of the level.

[https://i.ibb.co/C1PzgWN/ng4.png]

At the end of all these changes, the new TAS ends up with a 2 frame advantage.

! Act IV

Here we implemented Ninja Gaiden's hidden secret: *Train mode*. It activates whenever Ryu is in tracks.

Scum: Through the BirdSim I found that if the boosting bird inherited a subpixel of five or six sixteenths then the extra frames lost manipulating it weren't necessary, saving 2 frames. I also determined that turning around (needed to deal with the pursuing green ninja, costs 2 frames) after the bird's first pass and before its second pass was required to get it to meet Ryu in the right spot. That rules out the alternative of turning around when landing on the mine cart before the bridge, which would only cost 1 frame.

This boss fight remained the same. Post boss kill entertainment movements were changed.

! Act V

Stage 5-1 contains a tosser whose ending projectile position determines the path of the bird we use to skip parts throughout the level. Only a few global timer values give the correct value, so we needed to either give up those four frames won before to get the same timer as the old TAS or find an alternative. The use of the bird simulator was crucial in finding a way to exit the stage with some of the locally saved frames. In the end all it took was giving up half a pixel in the wall climb after the first boost and giving the bird an xsub of eight sixteenths to leave 5-1 without losing a frame. Unfortunately that half-pixel was enough to affect the timing of a bat spawn, requiring an extra special attack which meant losing 1 frame later on.

Stage 5-2 contains the only true frame saved. By not grabbing the 10 ninpo in the middle, it is possible to end half a pixel to the left, allowing us to end the level one frame faster:

[https://i.ibb.co/DwbRxh0/ng5.png]

The problem remains, however, that now we have 10 fewer ninpo and we need to save two spin slash uses. The first spin slash was saved by the bot, which discovered a way to finish V-2c as fast as the old movie, but also taking +5 ninpo at the end. 

[https://i.ibb.co/rcgQz9z/ng6.png]

The remaining 5 ninpo was saved, as suggested by Scumtron, by not killing the last two enemies in stage V-3f. 

[https://i.ibb.co/6gbhhgq/ng7.png]

The boss fight was unaltered, except for the entertainment movements at the end.

! Act VI

The tosser in VI-1 uses a bad pattern when arriving with -2 frames here, and we had to lose one frame beforehand to get the good pattern. Otherwise, the only difference in the last act was the need to adjust some use of ninpo due to the difference in enemy patterns due to arriving one frame faster. However, overall everything remained the same, except for some entertainment movement.

!! Future Work

The fact that only one frame save persisted after so much work speaks volumes to the level of global and local optimization this movie has had throughout the years. We tried our best to bring all local saves towards the end of the game, but the sheer presence of randomness in the tossers, made this very difficult.

! False Frames

As shown above, we found a bunch of false frames. These represent local optimization opportunities that should be considered by anyone wanting to improve this movie. How to fit these in a global plan that keeps those savings will be key to further improvements.

! Pre-Kill

Joecurr discovered a way to pre-kill enemies or projectiles as soon as they spawn (see this [https://www.twitch.tv/videos/1497514873|video]). This can be done by throwing a special attack timed to kill an enemy on the frame it exits the screen (or, in some cases, a sword attack as an enemy exits the top of the screen). This triggers the 'death' bit which isn't cleared because the explosion animation is not played. Therefore, the next enemy that uses the same slot will instantly die. We haven't found a use for this in a TAS yet, but could serve in the future to fix enemy patterns and fit the false frames.

! Knuckle's Skywalk Glitch

This is a  bug where a projectile shooting enemy is manipulated to enable sky walking. See the [https://www.youtube.com/watch?v=rIMaGYevbhk|video]

!! Acknowledgements and Attributions

The bulk of this TAS work was done by the authors. We have received support from the Ninja Gaiden speedrunning community, especially Bumbledon and Joecurr, and blacksquall. It seems like a great coincidence that we finished the first version of this TAS the same day Arcus and TheRetroRunner got their PBs (11:35 and 11:34, respectively. GGS!).

!! Suggested Thumbnails

10506
13768
39057
