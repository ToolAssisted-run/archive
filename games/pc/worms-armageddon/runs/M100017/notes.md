%%TOC%%

!! Introduction

An absolute classic of the late 90's. I used to play this for hours against my siblings and friends, with some epic battles and nail-biting endings. I also had a lot of fun playing the single-player mode, featuring several modes: quick match against the CPU, and three campaign types: missions, skills training, and deathmatch.

This movie targets the missions campaign. It contains 33 missions, each with varying goals (e.g., kill AI worms, grab a weapon box, destroy weapon box) and difficulty. Beating a mission grants you access to the next one. You get a gold medal if you beat it in your first try. However, if you fail it, then some missions become easier (e.g., you get more weapons) but you can only get a silver or bronze medal. In some cases, it is faster to quickly fail a mission to get the silver/bronze handicaps. However, I personally dislike the idea of failing to get an easier path, so I decided early on to go for the "all golds" objective.

From the very beginning of this effort, the [https://worms2d.info/|2D Worms community] helped and supported me greatly. Since this game allows you to create a new team and name the worms therein, I decided to give them the names of some of those community members, and then some of my favorite TASers (all of whom gave me permission to use their names). Unfortunately, the last two worms are never used in the missions, but nevertheless, this is an homage to them.

The game code, long abandoned by the original developers, has been given to [https://worms2d.info/People/Deadcode|Deadcode], a prolific community member with technical skills to maintain the code. Since then, he has implemented many quality of life improvements, including the ability of saving replays, and a TASing tool to create replays frame-by-frame. 

I based my solutions GREATLY on well-established [https://worms2d.info/Mission_records#Round_Time|"round-time" community records]. In the table you will see two categories: "Unassisted speedruns" and "Tool-Assisted speedruns". The former refers to replays from individual-level RTA records, and; the latter, refers to TAS-based replays. Naturally, the tool assisted times are faster than the RTA ones.

This movie places itself in the middle between the RTA and TAS records. The reason is that Deadcode's tool allows for precise 50fps inputs, including repeated actions that can't be replicated natively. Using Bizhawk+Win98, however, some frames are skipped for (probably) emulation reasons, where I cannot possibly get 50fps. I tried many configurations, but couldn't succeed. The image below shows the three approaches to speedrunning this game, and the current running times for each.

[https://i.ibb.co/FktxmVmW/tastoolanalysis.png]

This effort took me many many many hours and re-records, with some moments where I didn't think it was even possible. Nevertheless, I ended up succeeding and even got three new TAS WR that improved even the TASes produced with Deadcode's tool! 

!! Atlas Encode

The native encode suffers from some drawbacks: it's 1024x768, there are long loading times, there's screen tearing, and the camera sometimes misses the action (to follow the current worm actions). For somebody wanting to watch this in HQ, with full map view, and without any waiting, here's an encode.
[module:youtube|v=xjhEk9Yem9I]

I was able to do this by extracting the replays out of Bizhawk by exporting the HDD and opening it with 7z. I then took the replay files out of there and played them natively in my PC with a higher resolution, while recording it with OBS.

!! Acknowledgements

I'd like to thank the 2D worms speedrunning community for their encouragement, help and feedback. I wouldn't have been able to finish this without their help. Special shoutouts to: Mablak, RuffledBricks, TobyTrigger,  Mr. Tophat, charles, korydex, Deadcode, FoxHound.

!! Software + Hardware
! Emulator

* EmuHawk 2.11.1 (Core: DOSBox-X)

! ROM

[http://redump.org/disc/58276/]

! Reproduction Steps:

* 1) Make a .hdd image file with Windows 98 installed, according to the instructions in [Bizhawk/DOSBox]
* 2) Download the Worms Armageddon [https://worms2d.info/Updates_(Worms_Armageddon)|Update 3.8.1]
* 3) [EmulatorResources/PCem#UsingPreInstalledVersion|Create an .ISO file] with the patch within as the only file.
* 4) Download the [UserFiles/Info/639146062986654763|DOSBox configuration file] I used to run the game.
* 5) Download the [UserFiles/Info/639146062440622216|installation XML file]. Replace the paths as required
* 6) Download the [UserFiles/Info/639146063750495350|installation movie]
* 7) Load the XML file as ROM and run the installation movie. Export the hard disk at the end of the movie.
* 8) Download the movie's [UserFiles/Info/639146063750495350|XML file], replace the paths as required, and load it as ROM
* 9) Download the submission movie and play it.

! Q&A

Charles from the Worms 2D community asked me a series of questions. Maybe they will address some that may come from this community, so I'm including the Q&A here.

%%QUOTE

> setup - if you'd like to use the original soundbank, pick the "English" soundbank, or figure out how to change locale/region to United Kingdom, instead of United States (latter will also affect the enemy)

Lol, had no idae

> setup - Worms 7 and 8 never appear in any of the missions, you can get away with not naming them, unless you're doing that for entertainment/shoutouts

Yeah, these are just shoutouts to some of my favourite TASers

> setup - if file manipulating is allowed before the TAS, you can modify the team file WG.WGT to customize the team beforehand OR make a new language file where you can override worm names on setup. there's even an external program for editing the team file. might save some frames idk

I didn't know this was possible, but still prefer to have them typed, as it is part of the shoutout. TASers nowadays don't care much non-gameplay lost frames, if it brings some entertaining/meaning

> general - try to use fadeskips, hit ALT+F4 during the fadeout to black to exit out of the game earlier

I tried this. It ALT+F4 doesn't have an effect if you don't play windowed, which is not the idea of the TAS

> #3 - have you considered the frame perfect variant of the RTA strategy? there is one for silver, and one for gold. unless your AI manipulations are faster

I haven't tried another strat. Maybe this could have resulted in an improvement

> #5 - use Skip Go right after you collect the crate, this'll start the ending sequence quicker. this might apply for every mission where collecting a crate is the win condition

Shame I missed this one. I did apply it on one of the last missions, after RuffledBricks told me about it

> #6 - brilliant rope knock there, also done with RB, so poetic :D

his sacrifice won't be forgotten :)

> #7 - yea, girder placement... refer to the venn diagram

Yep

> #11 - THE 1ST TURN MINE MANIP LMAO THAT'S A NEW ONE

I took this idea from the tool-assisted movie, so not my idea :P but here I demonstrate it is humanly possible :)

> #13 - is there any chance of making Worm 2 stay alive while not being targeted by the Enemy, skipping one drowning animation?

I am pretty sure there is (I did spend a lot of time trying) but RNG manip is really REALLY hard. To have a single shot at a possible different outcome, sometimes I needed to re-do a very complicated section all over again

> #14 - what's with the second explosion sound after the enemy dies?

Lol, I wondered the same back then! I have NO idea. I thought maybe the weapon box, but checked and it's still there. We will never know...

> #18 - goofy cursor movement on that 1st napalm there, unless there's some actual explanation behind this. also +style points for surviving, RTA usually makes a draw here

Yeah, this one could have been faster (less goofy), but positioning the mouse exactly where needs to be isn't easy because I needed to account for the game scrolling. Also there some waiting to ensure the flame's RNG goes as required. 

> #25 - i remember Deadcode has made a nasty TAS involving skipping to end timing early, but this is framecount we're talking here, including stuff between inputs, including the next mission etc., so different timing rules, a different solution

I only seen his framecount-targetting solution, it was outlandishly well executed. I opted to go for RTA-friendly one, but I wasn't able to replicate the 3s+3s grenade solution, instead going for 3s+4s.

> #26 - ayy, finally someone used a cow in this mission, nice :D

Moo!! (shame they didn't give you a 2+ herd, otherwise the mission could have ended one turn ealier)

> #32 - what's with the halt on the 2nd turn there? rng manipulation? also consider using Scroll Lock + mouse movement to manually move the camera to action

the wait is pure RNG manip, so that the clusters go exactly up, pushing the worm to the other. Couldn't make this one work any earlier. The camera was an issue: if you try to correct it after executing the inputs, you may introduce desyncs. So I had to choose between focusing the camera and seeing what my own worm is doing. Doing this blind is almost impossible :/

> #33 - bruh that ending LMAO

Haha! I had something much MUCH crazier planned for this. Since in TASing we count the last input, I wanted to leave the worm just there and wait however many minutes until the turns passed and the box appeared, automatically grabbing it. But no, it seems you need to actively perform an action to grab a box, even if it fell on your head and it's your turn. So I opted simply for jumping into the abyss :P
%%QUOTE_END
