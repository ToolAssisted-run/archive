> **Imported**
> This run was originally published at https://tasvideos.org/5473M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Introduction

Saint Seiya is a Japanese manga first aired as anime in 1986. The anime was an unlikely success outside Japan, in many countries in Europe, but especially Latin America, where it became a cult series. Saint Seiya: Ougon Densetsu is the first official Saint Seiya game for the Famicom, which encompasses the Galactic wars, Silver saints, and Sanctuary sagas. 

Funnily enough, the Sanctuary saga had not been published (neither anime nor manga, though not sure about the latter) by the time the game was produced. Therefore, the authors of the game could only use the Gold saints that had been disclosed at that point and had to improvise a possible ending to the Sanctuary saga (with the misterious Shadow pope, what a joke!)

I discovered this game later in life and played it in an emulator. I hated it. I don't know what it is, perhaps the repetitiveness, the bad mechanics, or the flickering screens, but I always got migraines after playing it. TASing it, though, was more fun, although I got a migraine nevertheless.

In general, this is a bit of a better game than its sequel. It still includes poor yet better RPG mechanics and some travelling and talking around. What makes this game (or, rather, version) interesting is a curious glitch in the character stats screen that can be exploited in a number of ways to become immortal, full of energy, and even skip fights. For a change, this is a fully manually routed TAS and no bot was used during its making.

! Previous Work

There is a single submission from 17 years ago: [1114S] that finished the game in 38:32. Although this one was cancelled, it would have resulted in a rejection due to suboptimality (the author chose to include the introduction sequence...). 

On the other hand, there was a [https://tasvideos.org/UserFiles/Info/638138340325557642|user file] by [https://tasvideos.org/Users/Profile/TaoTao|TaoTao] that provided a new spin to the character info menu glitch. While previously the glitch was believed to only give you experience. I discovered it can also give you infinite Cosmo and HP. However, TaoTao went further and discovered that this glitch can also be used to manipulate parts of the section of memory that stores which battles have been won. He showed that it was possible to skip [https://www.nicovideo.jp/watch/sm41898240|Shun's battle] and theorized other 3 battles could be skipped. It turns out, he was right.

! Strategy

The star of the show in this TAS is the character stat menu. In this menu, you can choose to increase your stats by pressing 'A' and using Experience points (Exp), or; decrease them by pressing 'B', and "regaining" that exp. This mechanics is what we seek to exploit in the menu glitch. The glitch is an oversight by the programmers in which, by pressing Up+L or Up+R while the cursor is in the 'Exit' option, the cursor will glitch out and go to option indexes that are not the ones in the actual menu. These out of bound options represents positions in memory you are NOT supposed to overwrite and include (but perhaps not limited to):

%%SRC_EMBED
Index -> Value
27  -> Shaina Batlle Off/On
50  -> Shun Batlle Off/On
51  -> Shaina Batlle Off/On
58  -> HP (Damage) 2nd Byte (x256)
81  -> Whale Moses Battle Off/On
83  -> Exp 2nd Byte (x256)
93  -> Shaina Batlle Off/On
106 -> Cosmo 2nd Byte (x256)
117 -> Taurus Aldebaran Batlle Off/On
118 -> Shaina Batlle Off/On
%%END_EMBED

When you press 'B' on one of these options (most of them are 'zero') it will try to decrease it, overflowing it to 255. For character stats like HP, Exp, and Cosmos, this means that you gain +65280 all of the sudden (effectively infinite). For the Battle options, this means that these values will become negative, meaning you've already beat them (hence, skipping them).

In the TAS, I have two passes of the menu glitch. The first, at the very beginning, where I get infinite exp and increase the stats to make the first few fights much faster. Here it is also important to toggle Shun's battle off since we will not execute the glitch again before that fight. Toggling off the battle for Whale Moses is in 'the way' of increasing experience, so I set that up here too.

The second execution of the glitch happens right before the fight against the Black Dragon, before we run out of Cosmo. In this pass, I set off the other two fights (Shaina and Aldebaran, later in the game) and maximize Cosmo and HP. The reason I didn't maximize these before is that interactions with Athena and Miho will reset your cosmo back to normal, no matter what value you set up for it. So this exploit needs to be postponed.

The rest of the TAS just flows trying to squeeze every possible frame out of movement and fights. The end of the movie is the last possible interaction with the game before it restarts. Shout out to the author of this [https://strategywiki.org/wiki/Saint_Seiya:_Ougon_Densetsu/Walkthrough#Orphanage|walkthrough] that guided me through the frustratingly labyrinthine routing of this game.

!! Software + Hardware

! Rom Information

* Rom: Saint Seiya - Ougon Densetsu (J) [!]
* RAM Map: https://tasvideos.org/UserFiles/Info/638263037511246661
* SHA1: EEB560ADE82C5C322CD515176E9E9B6F
*  MD5: 3842A654804620141BFBF3E148E0CF02

! Emulator

* EmuHawk 2.9.0 (Core: NESHawk)

! Skipless Variant

If you'd like to watch a 2-minute slower variant of this TAS where I do not use the battle skip glitch, you can find it here.

[module:youtube|v=yL9e58qCQm0]

You can find the movie [https://tasvideos.org/UserFiles/Info/638263060010049694|here]

---------------------

__Notes on version 2:__

[https://tasvideos.org/Users/Profile/TaoTao|TaoTao] brought to my attention some optimizations that I missed:

* Gauge filling can be done faster by quickly tapping A, instead of keeping it pressed
* Golden Cloth Seiya can be obtained if filling all gauges -- this allowed all fights (except for the last one) to be one shot, saving a bunch of time.
* Taser [https://www.youtube.com/@Mini4Rider|Mini4Rider] had produced a glitchless TAS video ([https://www.youtube.com/watch?v=SFjCCHZqjt4|part1], [https://www.youtube.com/watch?v=B1UJHlnK9_w|part2]) with much better routing (especially in the caves section). I re-routed my run based on theirs.

I took the chance to make some other optimizations of my own:

* General movement refinement (e.g., inertia management for quickly turnaround after a fight/dialogue)
* Faster secondnd menu pass, since I do the infinite health trick on the first menu pass. Doing this is faster, since we don't have to manipulate the index so much.
* Better lag management
