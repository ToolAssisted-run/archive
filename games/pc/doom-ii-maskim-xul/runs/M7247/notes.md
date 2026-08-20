> **Imported**
> This run was originally published at https://tasvideos.org/7247M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Pre-Scriptum: here is the [https://www.youtube.com/playlist?list=PL3V0eG1j-1vLhfEu_wpDLX66eUafWIcSA|playlist] where each map TAS is recorded individually.

[https://doomwiki.org/wiki/Maskim_Xul|Maskim Xul] is a custom short Doom wad, which consists of 3 playable maps. Map 4 is an epilogue map, which cannot be finished. This partial conversation uses a full set of Boom features. New enemies, new weapons, even a randomized item, which mechanic I haven't seen used anywhere else! %%%
It can be downloaded from [https://www.doomworld.com/idgames/levels/doom2/Ports/m-o/maskimxul|idgames] or [https://dsdarchive.com/wads/maskimxul|dsdarchive]. Also, feel free to read the official release [https://www.doomworld.com/forum/topic/97780-maskim-xul-what-the-heck-what-is-this-doing-on-the-front-page/|thread] on DoomWorld.%%%

!! Game objectives

* Emulators used: XDRE 2.20 (based on PrBoom+ 2.5.1.4), PrBoom+ 2.5.1.4 (rare slow motion sections)
* Doom goal: UV-Max (complete each map as fast as possible on Ultra-Violence difficulty. All the enemies must be killed and all secrets must be revealed)
* Contains speed/entertainment tradeoffs
* Takes damage to save time
* Aims on in-game time instead of real time
* Heavy luck manipulation

!! Comments

! Demo playback
* Make a shortcut of dsda-doom.exe or prboom-plus.exe
* Open the Properties of the shortcut
* Insert commands at the end of its Target field, so it would look similar to that:
> D:\dsda-doom-0.25.3\dsda-doom.exe -iwad doom2.wad -file MaskimXul.wad -playdemo mxulallmx1813.lmp

! Tricks and glitches

Check the game resources of [/GameResources/DoomEngine/Doom|Doom] for more info. This TAS uses linedef skipping and wallrunning.

! Map completion timings
* Map 01: 0:55
* Map 02: 10:53
* Map 03: 6:25

!!! Stage by stage comments

!! Map 1: Edin Na Zu!

This map is just a warm-up for a player to get prepared for a maze adventure (a.k.a. Map 2). Technically, it's not an appropriate map for UV-Max since there is no ammo and the turrets can't be destroyed, but I wanted to complete the WAD using a single demo file. I love the way how Obsidian uses silent teleports to bypass Doom's lack of true multi-leveling.

I'm think it's possible to bypass linedefs 2244 and 2250, and get the final room quicker, but regardless of my tries, my dummy gets telefragged and I die. So I had to run around and "deactivate" the laser gate to get the lift.

The map was made in XDRE 2.20. Not perfect, I wasn't trying that much. Just wanted to make a smooth walkthrough.

!! Map 2: Maskim Xul

This was the most confusing map I've ever TASed, despite being my first Boom map for UV-Max category. I tested it and watched Soccerer's [https://www.youtube.com/watch?v=TEy1r3EembI&pp=ygUbZG9vbSBtYXNraW0geHVsIHdhbGt0aHJvdWdo|walkthrough] so many times, I didn't even manage to plan everything from the beginning like all normal TASers do, because there are so many sequences of linedef actions with their own occurrence terms it's barely possible to predict everything. Most rooms are altitudinal which makes it impossible to read them without 3D visual mode. In short, the route isn't perfect, but knowing myself, I could do even more mistakes. Looks like, I'm more experienced now.

The map has a lot of intersection rooms everybody faces at least several times along the way to the exit. So I tried to leave regular monsters for later to kill them with a more powerful weapon. And there is not much space to mess around, so it takes almost no time to find them. Nothing much to comment, just running around from one point to another and killing monsters.

The best route resonance was made when I skipped the second secret switch (linedef 13916, tag 99) and visited it by the end of the map (see route mistake #3). I couldn't predict well how faster I would complete the map, but if I entered a secret teleport (linedef 21906), I wouldn't have to run past the last mini-boss (thing 380) to the room behind the red skull doors. On the other hand, I would spend some time waiting for monsters to spawn after I activate the main switch (linedef 9739). Maybe 10 secs off, or 5, or 0, or maybe I've chosen a faster route... Who knows!

! Route mistakes:
# Attacked ground imps with weak pistols after the first bell breaking instead of leaving them for later.
# Spent a lot of time attacking Greater acolytes (things 510, 951 and 635) in the yard with the red skull doors (linedefs 5224, 5042) instead of killing them all with a single book usage.
# Didn't activate the second secret switch (linedef 13916, tag 99) after I grabbed the blue crystal key. See description above.
# Didn't deal enough damage to Hell Knight (thing 101) beforehand to kill him later with a single Hand of afrit's (rocket launcher) projectile + forgot to kill him on the way to the blue skull door (linedef 6525) when killing acolytes and 2 cacodemons within the circle with tag 65.
# Didn't kill the last Satyr in the secret room (sector 4227).
# Grabbed unnecessary bullets and shells.
# Failed to trigger a secret (sector 4227) when activating the appropriate switch because it's so small. 

!! Map 3: Uggae

This map isn't as entertaining as Map 2 since I keep all the weapons with me. Hence, I abused the book everywhere possible. To tell you the truth, I didn't feel like doing Map 3 from a pistol start. I admit, I picked a complex WAD for TASing this time and I desired to finish it by any means and never revisit it again. 

The section with opening doors and flying lost souls featured some entertainment. I used every weak weapon to kill lost souls while my voodoo doll was crossing the linedefs outside the map. A half of the souls died immediately due to my inappropriate location behind walls, but I didn't want to redo it to kill more souls myself.


Enemy spawning is the most horrible part of the whole WAD!!! The acolyte's dementia (thing 299) made me drop a jackbomb at his spawn point. Thank God it didn't disappear as usual and did its job on the first try. 

I was so optimistic about health management of using the book after Map 2, but most cases on Map 3 provide much less variety for manipulation, probably because of fewer monster closets outside the map. You're very likely to lose a big portion of health if you kill all the enemies on the screen at any angle.

Even worth, that Shoggoth (the big mouth monster) here is more saved than on Map 2, so I had to spend 2 blasts on it and ended up having 8 hp and no armor! Well, at least I managed to get to the arch-vile section without losing time.


I found a potential zero-press trick in the arch-vile section: the linedef 12255, which would open the last secret quicker. For some reason, I failed to execute it. Probably, the linedef 11711 acts like an extra wall which prevents the player from doing a zero-press by any means.
Not to mention, PrBoom+ and XDRE just can't lift such complex WADs as Maskim Xul. Each demo fast-forward takes like 10 seconds to perform. If there were more maps in the WAD, I wouldn't try to record them all in a single Doom replay.

! Final Boss section

The final boss section is too prolonged, actually. In order to feet into UV-Max category, you must kill all the monsters that were initially spawned on the map. Maybe in the up-to-date DSDA-Doom the monsters spawned by the Icon of Sin mechanic are counted towards the total number of monsters, but this TAS was made before DSDA-Doom was released.

Guess, what's the matter? As soon as I trigger the final boss, one of my voodoo dolls starts its looooooooooooooooooong joooooouuuuuurney... I've never thought these conveyors move things so slowly. %%%
To sum up, it takes ~ 3 minutes 28 seconds for that doll to slide across the whole closet (sectors 2366, 2371, 2114) and cross the last linedef that lets the final 4 Lords of Heresy (Barons of Hell) teleport to me. Such UV-Max rules =(

I was trying to make up a comedy acting, like I scared at first and was trying to run away from that nightmare, but then I got curious about a random sphere, got a berserk and my fear had gone away. But I watched my actions, and my passion passed away. I don't leave in this acting and I'm out of ideas how to express my emotions realistically without 3D view (to shake my head) and messages. Maybe, someone will like it and find it entertaining.

The ending can be improved by at least 2 secs if you finish the boss earlier. I don't feel like doing that! Formally, I killed all the monsters that were initially spawned on the map.


I don't like that section, to be honest. I included another demo [UserFiles/Info/639150592000117215|file] where I just kill the final boss quickly without a major loss of dynamism. 100% kills isn't true there.

!! Other comments

! Jackbombs

I would utilize them better, but sometimes they just disappear and deal no damage.

! Grimoire Excidium (the book of ancient BFG powers)

This book is much more powerful then BFG 9000 and it's very misterious. I think it has 80 invicible rays and each trace has only 1 ray (since individual pinkies can survive a blast), but without any projectiles. I think there IS a projectile, but it's range distance is zero (like a punch), and the rays spread up and deal damage at the same tic because, when I turn around, I deal no damage at all. When the screen is full of strong enemies, you can deal ~4500 damage.
Your drained health from each usage can be manipulated by the damage you deal. I think your total damage of all the rays is used as additional value in a formula for a random number generator which counts a piece of health meter you're gonna lose. My luckiest sacrifice was 4% of health with a blue armor on and worst one was 40%, so range is probably 8-80 HP with a step of 4 (8,12,16,...,72,76,80).

! Outro
Finally, it's all over! Map 2 heads the list of my TASed maps I'm satisfied with. Neither concerns Map 3. The only thing I'm satisfied about it is, it's finally done.

!! Special thanks to:
* [https://www.doomworld.com/profile/13443-obsidian/|Obsidian] - for creating this odd and beautiful WAD. During my TAS progress, I faced a lot of annoying things and had to remake various sections to fix my speedrun mistakes. And still, I'm not angry with him. Who would have thought there would be such a crazy guy who would speedrun a WAD like that? His art caught my attention and arose the spirit in me to build this TAS!
* Soccerer - for his decent 100% walkthrough of Maskim Xul. 
* Everybody else - for watching and reading this. I doubt people read such notes.
