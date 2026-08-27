> **Imported**
> This run was originally published at https://tasvideos.org/6412M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

''You've been seeing more X4 speed but with X. It is Zero's turn this time, it has been a while!''

This is a 1245 frame (20.77 seconds) improvement over [2032M|Bernka's Zero TAS], which is pretty significant as Bernka's TAS is well-optimized in many ways. Most improvements came from new boss order, better strategies, and more optimizations.

Note: While this run's time may seem slower than Bernka's, it is due to emulator change, as BizHawk produces way more lag frames and has longer waiting times than PSXjin.

Zero has the ability to kill some bosses fast with SDC (Saber Dash Cancel), but will cause 5 frame pauses when most attacks hit an enemy, so it's usually faster to dodge enemies than kill them.
[module:Youtube|v=sPY7iJFiQFM]
[https://mega.nz/file/XlcSGTbQ#y3r4cboAtq5NFKBMsJnlTKbBtRqYVSUYBUd4SkEjczY|Download HD encode (MKV, 434 MB)]%%%
[https://www.youtube.com/watch?v=BQlg51flhvY|Slash Beast Area 2 Comparison]%%%
[https://www.youtube.com/watch?v=mKBvfrX4YT0|Frost Walrus Area 1 Comparison]%%%
[https://www.youtube.com/watch?v=hS51B6aJrt0|Storm Owl Area 2 Comparison]%%%
[https://www.youtube.com/watch?v=htcamgjcvyc|Every Boss Fight Comparison]

! Game objectives
* Aims for the fastest time with Zero
* Takes damage to save time
* Heavy luck manipulation
* Skips last animation for earlier credits

!!Boss Order Change
Old boss order (by Atma & FractalFusion and Bernka):%%%Magma Dragoon -> Jet Stingray -> Cyber Peacock -> Frost Walrus -> Split Mushroom -> Web Spider -> Slash Beast -> Storm Owl

New boss order:%%%Jet Stingray -> Magma Dragoon -> Slash Beast -> Frost Walrus -> Cyber Peacock -> Storm Owl -> Split Mushroom -> Web Spider

* Jet Stingray is killed first, so Zero can use Air Dash in Magma Dragoon area 2 and save 8 frames.
* Slash Beast is killed early, so Zero can use Shippuuga (dash attack) and save 18 frames. Due to train framerules, virtually no time is lost even without Air Circling Slash, and I saved the 128 framerule in Slash Beast area 2.
* Storm Owl is killed before Split Mushroom, because normal midair slash is faster in Storm Owl and mid-boss fight. A total of 146 frames are saved in area 2 of Storm Owl (not entirely due to boss order change). Special thanks to ROS绝尘 (a Chinese player), who told me that it's faster to kill Storm Owl mid-boss with normal midair slash, so I tested Storm Owl stages first thanks to his advice.

!!Table of Improvements
||Stage||Time save (frames)||Time save not including "READY"||Comments||
|Sky Lagoon Area 1|2|2||
|Sky Lagoon Area 2|6|6|Time save in Eregion boss fight: 1|
|Marine Base Area 1|0|0||
|Marine Base Area 2|9|9|Time save in Jet Stingray boss fight: 9|
|Volcano Area 1|26|24||
|Volcano Area 2|16|8|Time save in Magma Dragoon boss fight: 0|
|Military Train Area 1|0|0|No time difference because of the train framerule|
|Military Train Area 2|140|140|Time save in Slash Beast boss fight: 9%%%The train's 128 framerule is saved.|
|Snow Base Area 1|129|121|Time save in Eyezard mid-boss fight: 72|
|Snow Base Area 2|59|55|Time save in Frost Walrus boss fight: 20|
|Cyber Space Area 1|76|76||
|Cyber Space Area 2|45|37|Time save in Cyber Peacock boss fight: 0|
|Air Force Area 1|9|7||
|Air Force Area 2|146|136|Time save in Generaid Core mid-boss fight: 62%%%Time save in Storm Owl boss fight: 75|
|Bio Laboratory Area 1|76|60|Time save in Tentoroid mid-boss fight: 17|
|Bio Laboratory Area 2|18|8|Time save in Split Mushroom boss fight: 0|
|Jungle Area 1|39|23||
|Jungle Area 2|69|53|Time save in Web Spider boss fight: 36|
|Space Port|41|51|Time save in Colonel boss fight: 9%%%The only stage where I lose time in "READY" (because of average RNG).|
|Final Weapon Stage 1|63|61|Time save in Iris boss fight: 60|
|Final Weapon Stage 2|18|16|Time save in General boss fight: 0|
|Final Weapon Stage 3|199|195|Time save in each boss fight%%%Web Spider: 34%%%Cyber Peacock: -6%%%Jet Stingray: 21%%%Split Mushroom: 51%%%Slash Beast: 15%%%Frost Walrus: 0%%%Storm Owl: 74%%%Magma Dragoon: 0%%%Cyber Peacock is 6 frames slower because Zero got hurt twice less, in order to save more frames in Split Mushroom refight.|
|Final Weapon Stage 4|43|43|Time save in Phantom Sigma boss fight: 8%%%Time save in Earth Sigma & Gunner Sigma boss fight: 17|
|Pauses in Stage Select & Dialogues|16 (at least)|16 (at least)|Thanks to M3 for discovering a faster boss selecting method.|
|Total|1245|1147||

! About RNG Manipulation and Lag Reduction
A great amount of RNG manipulation has been used, often to reduce the lag during the "READY" animation.

For example, the RNG changes when Zero jumps, and it will change dramatically when Zero does the ice attack or the fire attack. So in this TAS, most of the time Zero doing the ice attack is to manipulate RNG.

! Suggested screenshot (frame #45511):
[https://i.ibb.co/pzhvMLM/MMX4-Zero-TAS45511.png]

! McBobX's comments
First off, I'm very happy that I have been part of this project. Since my old [5299S|"Zero 100%"] submission, I have always been wanting to participate in a Mega Man X4 project, as it is one of my favorite games of all time. HappyLee offered me this opportunity and guess what, he was above my expectations. His ability to find extra small details I'm not aware of was always surprising and exciting too. I'm glad I worked with a TAS Legend.

! HappyLee's comments
I'm honored to work with McBobX on this project. I had no X4 Zero TAS experience when I started the project in 2024. McBobX is more experienced in Mega Man TASing than I am.

I did every input, and found most of the improvements myself. McBobX helped me examine everything along the way. His help with DG-42L (Slash Beast mid-boss) fight was crucial, because back then I was losing hope about saving the train framerule in that stage, and his method inspired me a lot.

Special thanks to [user:Bernka], Atma & FractalFusion for their previous work on X4 Zero TAS. I grew up watching their TASes, always admired them, and now I've become a top X4 TASer myself.

This could be my last Mega Man X4 long project. I'm planning to update my "X, no items" in the future.

Hope you enjoy watching this run. Feel free to leave comments. If anyone finds an improvement one day, please let me know, and maybe we'll work on it together.
