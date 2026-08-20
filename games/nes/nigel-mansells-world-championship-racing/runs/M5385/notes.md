> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/5385M and entered this archive as a voluntary
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

Nigel Mansell's World Championship Racing is an ok-ish Formula 1 racing game for the NES. The game has some quirks, like Nigel Mansell himself teaching you how to play the game. I owned this game as a kid and I always wondered how it would be to finally beat it. Here it is, a manually routed, automatically (bot) driven solution of this game. This is my longest movie so far! I know this might be a monotonous one, but I did it for the nostalgia factor more than anything.

! Choice of Category

Early on I decided that I wanted to win all races. Of course, for an any% movie the end game could be reached by forfeiting all races. Similarly, the championship could be attained by manipulating RNG to minimize the championship score of the runner-up, winning a minimal amount of races and forfeiting the rest. I found these alternatives to be pathetic and painful to watch. Therefore I wanted to pursue a 100%, where we win all races decisively and gloriously. The judge must decide if '100%' applies here, given we skip the qualification sessions. Perhaps a 'perfectScore%' or 'winAllRaces%' category more closely relates to this choice.

! Strategy

Regarding car setup, I chose the aero setting that yielded better botted results. This choice did not affect max speed (seems like a programming faux pas, since in real F1 higher spoiler inclination adds grip but does limit max speed). Since wear tire is the most important factor in the pit stop strategy, I also configured the bot to take curves minimizing tire wear at all times. In some races I was able to pursue a single stop strategy. In the others, I distributed laps to allow the use of soft tires whenever possible.


!! Software + Hardware

! Rom Information

* Rom:  Nigel Mansell's World Championship Challenge (U) [!]
* SHA1: D32CCAFB8B336BFCB0666DBD60B1364CF226C3FC
* MD5:  EEF24952A8552ED36EFA4B17CADB6C20

! Emulator

* EmuHawk 2.8.0 (Core: QuickNES)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: QuickNES
* Platform: 'The Jaffanator' - AMD Ryzen Threadripper 3990X (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.2M States/s)

!! Timing

%%SRC_EMBED
                              Frame              Tire Strategy
    Round        Circuit     Initial    Total
     Boot                       0        572
      1        South Africa    572      19574    Hard -> Hard
  Transition                  20146      98
      2           Mexico      20244     20491        Hard
  Transition                  40735      99
      3           Brazil      40834     21017    Hard -> Soft
  Transition                  61851      102
      4           Spain       61953     18328    Hard -> Soft
  Transition                  80281      99
      5         San Marino    80380     19486    Hard -> Soft
  Transition                  99866      106
      6           Monaco      99972     17376    Hard -> Soft
  Transition                  117348     84
      7           Canada      117432    18341    Hard -> Soft
  Transition                  135773     99
      8           France      135872    17801    Hard -> Soft
  Transition                  153673     99
      9       Great Britain   153772    17541    Hard -> Soft
  Transition                  171313     98
      10         Germany      171411    17391    Hard -> Soft
  Transition                  188802     98
      11         Hungary      188900    19069    Hard -> Soft
  Transition                  207969     99
      12         Belgium      208068    19419    Hard -> Soft
  Transition                  227487     99
      13          Italy       227586    18270    Hard -> Soft
  Transition                  245856     99
      14         Portugal     245955    18010    Hard -> Soft
  Transition                  263965     98
      15          Japan       264063    17859    Hard -> Soft
  Transition                  281922     99
      16        Australia     282021    14543        Hard
  Transition                  296564     24
  Last Input                  296588
%%END_EMBED
