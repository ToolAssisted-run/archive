> **Imported**
> This run was originally published at https://tasvideos.org/7312M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

The beginning of a 2D life of crime.

%%TOC%%

!! Introduction

This game needs no introduction. It gave many of us milennials in the late 90s one of the first free roaming experience of how it feels to be a criminal. Even in 2D, the feeling of being able to wreak havoc while fleeing the police was exhilarating. Almost 30 years later, I come back with a vengeance.

The game consists of 3 cities, each offering 2 chapters, for a total of 6 chapters. Each chapter is an independent adventure with different sets of missions and money target to reach before you can complete it. Each chapter operates completely independently from each other and their initial RNG is fixed. This makes me decide to split this TAS into each chapter (a la DOOM). The benefits of this are manifold: I can chop the work in discrete pieces that make me feel I am making progress. Also, if an improvement is found to any of the chapters, it can be implemented without having to re-do all the rest.

This movie attacks the first chapter: Liberty City I: Gangsta Bang. I started (and finished) the work earlier this year, after finishing some fixes to Bizhawk's DOSBox-X core that allowed playing CD audio tracks. This is an absolute must since GTA1 is one of those games distributed with a mixed-mode CD where the soundtrack is included in raw (normal CD audio) tracks. You could even listen to the songs on your household CD player!

The goal of this movie is to achieve 100%, as specified in the [https://www.speedrun.com/gta1?h=100&x=l9kvmokg|RTA rules]. That involves: finishing all 11 missions, getting all 7 secrets, and exiting the city. The secrets are achieved by picking up "Kill Frenzy" boxes, which don't need to be completed to count.

I based my route on [https://www.speedrun.com/users/Tarakan3000|Tarakan3000]'s [https://www.speedrun.com/gta1/runs/mr4o1x4z|RTA WR] of the same category. This route is extremely optimized for quickly jumping from a mission to the next and picking up Kill frenzies on the way. Nevertheless, I had to make some adjustments. Specifically:

* The mission where you need to pick up the train was routed with the RTA timing in mind. The train works as a frame rule, arriving at certain fixed times, every ~90 seconds. So I found myself arriving too early if I followed Tarakan's route. So I had to move it to later, where I could pick it up on time. This took a LOT of trial and error.

* Based on the route change, I had to alter the pickup order of some of the kill frenzies.
* Other adjustments had to do with the fact that I can maneuver bikes much faster and in tighter corridors than what is humanly possible.

This game was really complicated to TAS and required many re-dos. Mainly because of its many bugs which, if you are not paying attention, may cause a finished mission not to count, or even softlock completely. If you are planning to obsolete this movie, be careful and press F6 (pause) constantly to check whether the last movie you finished counted.

!! Comparison Movie

Here's a comparison video between this run and the current RTA WR. Unfortunately, due to the changes in route, I cannot do a faithful mission-by-mission comparison. Instead, I could only do that for the first few where the routes didn't differ, and from then on until the end.

[module:youtube|v=vfR8qVjwpEM]

!! Acknowledgements

I'd like to thank the entire GTA speedrunning community who helped and encouraged me while making this movie. Especially Tarakan4000 who engineered the current route, Tezur0, and Molotok who kept giving me advice on certain parts of the game. 

!! Software + Hardware

! Emulator
* EmuHawk 2.11.1 (Core: DOSBox-X)

! ROM
[http://redump.org/disc/30124/]

! Reproduction Steps:
# Make a .hdd image file with Windows 95 installed, according to the instructions in [Bizhawk/DOSBox]
# Run the following installation movie, using the following .xml and .conf files.
#** [UserFiles/Info/639132572058653642]
#** [UserFiles/Info/639132572507307476]
#** [UserFiles/Info/639132572975439962]
#* Replace the paths inside the .xml file with wherever you placed the relevant files.
#* The .conf file also sets the amount of RAM to a minimum to reduce pressure on savestate memory usage and performance during TASing. (not recommended in hindsight, better do what I did for my [10255S|GTA2 movies])
#* The resulting {{installed.hdd}} file should have SHA1 hash of 6b45e1041bd60028f7f98e6a61a0cdc87ed84de7 ({{certutil -hashfile installed.hdd SHA1}})
# Run the submitted movie with the following .xml file
#* [UserFiles/Info/639132575641284777]
