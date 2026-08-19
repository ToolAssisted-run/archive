> **Imported**
> This run was originally published at https://tasvideos.org/4893M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Introduction

Ninja Gaiden 2 is the sequel to that ninja game where you have to run fast and kill everything to win. In this case, you also need to run fast and kill everything to win.

This movie was started by Scumtron a while ago, saving 70 frames compared to the currently published movie. The work has continued by eien86, using a bot to analyze all stages of the game to find 4 additional saved frames (plus one [https://tasvideos.org/Forum/Topics/23356#FalseFrames|false frame]). 

!! Software + Hardware

! Rom Information

* Name: Ninja Gaiden II: The Dark Sword of Chaos (USA)
* SHA1: 951A19474A1D9C2984F3D966FBC41C0F0360105E
* MD5: 2EC92E60E033B4D8AA5CAA6B1F7838B5

! Emulator

* EmuHawk 2.8.0 (Core: NesHawk)

Resynchronized from the initially submitted [EmuHawk 2.7.0 + QuickNES] movie by eien86, using Scumtron's DPCM glitch detection tool, available [https://tasvideos.org/Forum/Topics/246?CurrentPage=4&Highlight=509658#509658|here].

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffar|Jaffar]
* Routing Core: QuickNES
* Platforms: 
** AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.4M States/s)
** 2 x AMD EPYC 7742 Processor (128 cores, 256 threads) + 512Gb RAM (Average Exploration Performance: 2.7M States/s)

!! Comparison Movie

Here is a per-level comparison between this movie and the currently published TAS:

[module:Youtube|v=yeq9V9gzvic]

!! Timing

! Criteria

We use the following addresses for timing:

%%SRC_EMBED
0x01FE - Game Mode
0x007E - Current Stage
0x0081 - Boss HP
0x04C0 - Final Boss Head Status
%%END_EMBED

And the following criteria:

* Boot: Starting game sequence, including boot, pressing Start, and transitions.
* Stage #: Starting when (Game Mode) == 68
* Transition: After a normal stage, transition starts when (Game Mode) == 147, or; during a boss fight, when (Boss HP) == 0
* Head Dead: Happens when the last boss' death is defeated (Final Boss Head Status) == 16
* Movie End: The frame of the last button press

! Time Table

Here is a time table comparing frame timing between this movie and the [https://tasvideos.org/4581M| published TAS]:

%%SRC_EMBED
             New               Old              Diff
Stage      Initial   Total   Initial   Total    Stage  Total
Boot       0       141      0        141      0        0
0          141     1675     141      1675     0        0
Transition 1816    21       1816     21       0        0
1          1837    121      1837     121      0        0
Transition 1958    21       1958     21       0        0
2          1979    279      1979     279      0        0
Transition 2258    200      2258     200      0        0
3          2458    136      2458     138      -2       -2
Transition 2594    380      2596     380      0        -2
4          2974    1982     2976     1982     0        -2
Transition 4956    68       4958     68       0        -2
5          5024    871      5026     871      0        -2
Transition 5895    21       5897     21       0        -2
6          5916    986      5918     987      -1       -3
Transition 6902    20       6905     20       0        -3
7          6922    278      6925     304      -26      -29
Transition 7200    200      7229     200      0        -29
8          7400    91       7429     94       -3       -32
Transition 7491    380      7523     380      0        -32
9          7871    1994     7903     1997     -3       -35
Transition 9865    68       9900     68       0        -35
10         9933    441      9968     442      -1       -36
Transition 10374   20       10410    20       0        -36
11         10394   464      10430    464      0        -36
Transition 10858   21       10894    21       0        -36
12         10879   466      10915    467      -1       -37
Transition 11345   20       11382    20       0        -37
13         11365   476      11402    478      -2       -39
Transition 11841   21       11880    21       0        -39
14         11862   317      11901    318      -1       -40
Transition 12179   68       12219    68       0        -40
15         12247   117      12287    121      -4       -44
Transition 12364   380      12408    380      0        -44
16         12744   996      12788    1004     -8       -52
Transition 13740   21       13792    21       0        -52
17         13761   194      13813    194      0        -52
Transition 13955   21       14007    21       0        -52
18         13976   1134     14028    1135     -1       -53
Transition 15110   68       15163    68       0        -53
19         15178   771      15231    773      -2       -55
Transition 15949   20       16004    20       0        -55
20         15969   455      16024    457      -2       -57
Transition 16424   21       16481    21       0        -57
21         16445   1143     16502    1145     -2       -59
Transition 17588   200      17647    200      0        -59
22         17788   97       17847    98       -1       -60
Transition 17885   380      17945    380      0        -60
23         18265   440      18325    440      0        -60
Transition 18705   68       18765    68       0        -60
24         18773   752      18833    752      0        -60
Transition 19525   21       19585    21       0        -60
25         19546   419      19606    419      0        -60
Transition 19965   75       20025    75       0        -60
26         20040   1158     20100    1158     0        -60
Transition 21198   21       21258    21       0        -60
27         21219   122      21279    122      0        -60
Transition 21341   21       21401    21       0        -60
28         21362   1136     21422    1136     0        -60
Transition 22498   163      22558    163      0        -60
29         22661   77       22721    77       0        -60
Transition 22738   380      22798    380      0        -60
30         23118   620      23178    620      0        -60
Transition 23738   21       23798    21       0        -60
31         23759   88       23819    88       0        -60
Transition 23847   21       23907    21       0        -60
32         23868   1142     23928    1142     0        -60
Transition 25010   74       25070    74       0        -60
33         25084   979      25144    979      0        -60
Transition 26063   200      26123    200      0        -60
34         26263   284      26323    286      -2       -62
Transition 26547   380      26609    380      0        -62
35         26927   772      26989    772      0        -62
Transition 27699   21       27761    21       0        -62
36         27720   112      27782    112      0        -62
Transition 27832   21       27894    21       0        -62
37         27853   601      27915    601      0        -62
Transition 28454   21       28516    21       0        -62
38         28475   69       28537    69       0        -62
Transition 28544   20       28606    20       0        -62
39         28564   430      28626    430      0        -62
Transition 28994   74       29056    74       0        -62
40         29068   830      29130    841      -11      -73
Transition 29898   21       29971    21       0        -73
41         29919   74       29992    74       0        -73
Transition 29993   21       30066    21       0        -73
42         30014   782      30087    783      -1       -74
Transition 30796   21       30870    21       0        -74
43         30817   151      30891    151      0        -74
Transition 30968   21       31042    21       0        -74
44         30989   490      31063    490      0        -74
Transition 31479   162      31553    162      0        -74
45         31641   122      31715    122      0        -74
Transition 31763   467      31837    467      0        -74
46         32230   104      32304    104      0        -74
Transition 32334   468      32408    468      0        -74
47         32802   55       32876    55       0        -74
Head Dead  32857   225      32931    225      0        -74
Movie End  33082            33156                      -74
%%END_EMBED


!! Credits

* Scumtron: Biggest contributor to this movies' saved frames and routing.
* eien86: Added the last 4 frames (plus one false frame), did the resync, the timing, the comparison movie, and wrote these notes
* Previous Authors: J.Y, Aiqiyou, Xipo, Samsara, Josh the FunkDOC, and stx-Vile for their collective contribution to this TAS over the years
* Ninja Gaiden 2 Discord Community who supported this and previous efforts
