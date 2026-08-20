> **Imported**
> This run was originally published at https://tasvideos.org/7243M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

[https://doomwiki.org/wiki/Hacx|HacX] is a commercial Doom II total conversation, released in 1997. It features new enemies, textures, weapons etc., and consists of 22 maps. This TAS reaches the logical ending (21 maps), because, after the ending intermission screen, the "The Darkness" map starts where the player dies in the empty dark room with nothing to do.%%%
It can be downloaded from [https://www.doomworld.com/idgames/themes/hacx/hacx12|idgames] or [https://dsdarchive.com/wads/hacx12|dsdarchive].

HacX 1.2 is the final official version of the game, released by one of the original game developers, Rich Johnston (Nostromo). The development (patching and adaptations) is [https://www.doomworld.com/forum/topic/158006-hacx-v13d-vanilla-dos-binary-included-release-candidate/|picked up] by fans.

Note: Despite HacX 1.2 being an IWAD, that is, the standalone game data playable without idSoftware original game's data it's based on, Doom 2 is still used as a IWAD due to a mistake in the HacX data which, in case of using the secret exit on Map 15, skips Map 31 and sends you to Map 16 instead.

!! Game objectives

* Emulator used: XDRE 2.20 (based on PrBoom+ 2.5.1.4)
* Doom goal: UV-Speed (complete each map as fast as possible on Ultra-Violence difficulty). In the case of HacX, this might be interpreted as "I am immortal-Speed"
* Contains speed/entertainment tradeoffs
* Takes damage to save time
* Aims on in-game time instead of real time
* Heavy luck manipulation

!! Comments

! Demo playback
* Make a shortcut of dsda-doom.exe or prboom-plus.exe
* Open the Properties of the shortcut
* Insert commands at the end of its Target field, so it would look similar to that:
> D:\dsda-doom-0.25.3\dsda-doom.exe -iwad doom2.wad -file HACX12.WAD -playdemo hacx12allx2012.lmp

! Time table

Map    Time%%%
01  	  1:04.29%%% 
02      0:50.06%%% 
03      1:34.86%%% 
04      1:29.14%%% 
05      0:19.29%%% 
06      1:12.51%%% 
07      1:01.17%%% 
08      2:17.83%%% 
09      0:19.23%%% 
10      2:03.20%%% 
11      0:53.09%%% 
12      1:01.31%%% 
13      0:31.83%%% 
14      1:03.23%%% 
15      0:48:91%%% 
31      0:11.83%%% 
16      0:00.03%%% 
17      0:33.06%%% 
18      0:13.91%%% 
19      0:40.57%%% 
20      2:11.31%%% 

! General comments

I tried to make the TAS smooth, so there are a lot of slow turns (at best, TL10 or TR10 per a tic), but there are a few exceptions. Therefore, the run isn't superfast.

Originally I planned to make a hybrid UV-Speed TAS using both slow motion and XDRE, depending on my mood of a day. That's how I made maps 1-9.%%%
Then my bachelor stuff forced me to stop TASing HacX and, to tell you the truth, I didn't feel like continuing my work after I had done with the university and wanted to submit it as it is. 

Eventually, I held my breath and reflected upon everything around me. I made a lot of unfinished Doom TASes, but the live goes on and more other stuff has to be dealt with, so I decided to finish something and my choice fell back on HacX.%%%
I was experienced in TASing then I used to be, so maps 10-20 were done in XDRE 2.20, excepting non time-based events, like waiting for a lift.

! Tricks and glitches

Check the game resources of [/GameResources/DoomEngine/Doom|Doom] for more info. This TAS uses linedef skipping, 32-unit glide, zero-presses, wallrunning and rocket jumping.

!! Stage by stage comments

! Map 1: GenEmp Corp

Map 1 features two time-savers, which are two regular switches hidden behind key-required switches. They both are placed on appropriate sides and are 16 units away from doors, so you can stick to them and activate the needed switches, saving a lot of time.

The first factory room might be improvable. I think it's a little faster to get upstairs using a lift rather than a slow platform, like I did.

BTW, I managed to activate the linedef 1949 without falling down to the area with a switch. Another ~7 secs off.

Caught a bad RNG in the final room. All the monsters were trying to block my way to the exit.

Enemies are much healthier than in original Doom and they require at least one good Tazer (shotgun) shot to be dead. Even though, the pistol shots 2 bullets at a time, it's really difficult to get 30 damage for 2+ times in a row. 


! Map 2: Tunnel Town

In terms of regular speedrunning, this is a nightmare map. There are plenty of monsters blocking your way through the whole map. In terms of TASing however, this map is easy since you can manipulate monsters' actions to some extent.

The only problem was to pick the fastest route after the first switch. I took the middle one, despite the fact it's more crowded. The lowest one features 2 north walls to perform wallrunning, but the overall route is still longer. The highest one is longer too, because of the switch placement.
Othen than that, it's a pretty straightforward map.

The last section can be improved by ~1 sec if I would make the mancubus (thing 87) die on the appropriate spot and wouldn't take 2 torpedoes (thing 403, 404).

A half of the map was made in slow-motion. Anyway, I tried to keep the footage smooth.


! Map 3: Lava Annex

At the beginning of the map, I managed to perform a 32-unit glide between 2 lowering columns. I think it's the best moment in the entire map because then I realized how the difficulty grows. 

There are 19 android robots hidden in closets outside the map and, if I shot or punched somebody, they would wake up and eventually invade the hallway with a Supercharge (Cenotrophexine), which would slow me down on my way back to the exit. So I had to play in pacifist for a while.

As soon as I came down and crossed the linedef that blocks sound, I utilized my Uzi to clean the way. The hallway is diagonal and it's impossible to bypass the buzzers (satellites). Cryogun (Super Shotgun) also came in handy.

Later, it was utilized again to prevent them from blocking my way to the cave with the red keycard. Managed to cut the route by lifting down the first step that would block the way I came in.

All the remaining lifts were very long. I decided to kill some enemies and take some ammo. I could run for an extra Cenotrophexine while the lift (sector 314) was moving down, but refused. Perhaps, I would lose time.

My way back featured no resistance.


! Map 4: Alcatraz

That was a long map, despite being short. I've lost a piece of progress where I reached the first prison room, but, as a result, I managed to save 1 sec. Also, I hate these stairs with low ceilings becuase they stop you if your velocity is "too high". 

The map also features a lot of speedrun tricks, such as wallrunning, momentum preservation and a zero press, but it also features a lot of waiting for lifts to do their sluggish job. So, I had to do some killing. That's why I got so high kill ration at the end.

The most original trick here is activating the lift (sector 251) before the door opens. The responsible linedef 1553 is exactly 16 units away from the door.


! Map 5: Cyber Circus

That switch on the top of the tower was really easy. I didn't even use brute force to press it. The evil eye on a moving stick next to the exit area helped me gain momentum.

I thought I would have trouble with ICEs because I was completely defenseless while moving up. Looks like their lash-out attack doesn't ignore the height for some reason.


! Map 6: Digi-Ota

Japanese section was miserable. A lot of potential time savers, but no switches can be zero-pressed. As a result, I used a regular route without anything special. Still, I'm satisfied with wallrunnings. I've learnt how to perform them faster. Nevertheless, the most effecient way is to use brute-force, but I can't say how many tics can be saved if we pick one of my wallruns of a solid wall (not a fence).

Also, I discovered that crossing a linedef with "Floor Start Moving Up and Down" action at a specific tic may lead to a different result: it can start either moving up or moving down.

BTW, I think it's possible to save some time if you make a phage monster open the red door from the other side (see Doom 2 Map 27 speedrun). But, unlike Arch-Viles that mess around, phages often try to approach you and they always go into the short-range attack animation when you're close enough.

Managed to perform a linedef skip (linedef 1294) on the way to the blue keycard.


! Map 7: The Great Wall

Managed to save about 20 secs by gaining momentum and performing a rocket jump of a flying buzzer next the lift. Even though, I was wearing a blue armor, I was hardly teared by those androids (robots) and almost ran out of HP. Fortunately, it wasn't a big problem since there were medkits and a cenotrophexine on my way.

I think some tics can be saved, if you perform a wallrun of linedef 1324 after you grab the red keycard.

The office section was ambiguous in terms of speed tactics. At first, I tried to clean the way using my UZI, but some targets stayed alive and eventually blocked my pass. So, I had to redo those 10 secs, but used a rocket launcher instead. I killed more enemies with it, but I also made a trap for myself because, when I killed a thug (thing 295), the rocket splashed moved a monitor and lamp away from the table and it blocked my way to the first switch.

I'm proud of monster manipulations. Especially, with the monstruct (thing 322) that opened the door for me.


! Map 8: Garden of Delight

Oh my God! It's the most prolonged map in the whole WAD and it has the highest altitude variation. They probably desired to put as many locations in the WAD as possible.

This map has no shortcuts, unfortunately. That means - more messing around and waiting!
In order to get out of the garden, you must lift down 2 walls that block your path and activate 2 switches to open the exit door and lift down the barrier.

The garden isn't delightful at all! At least, I didn't spend much time on it. Not as much as on the dungeon section! The lift part took 30 seconds, damn it!!! Couldn't they make it a little faster? Just a little!

The rest of the map is as boring as the first part: just running from point A to point B. I'm not pleased with this map!


! Map 9: Hidden Fortess

What a fresh breath after that terrible dungegarden. With the help of a terminatrix (girl), I managed to skip a major part of the map.

At the very beginning, I tried to perform a glide between two trees. Even though it's 32 map units beetween their hitboxes, they are objects, not the walls. That means, you must prepare you position beforehand, else you will slide left of right. I don't know how to perform a squeeze glide with run-strafing, so I did it with straight running. 

Terminatrix' close-combat kiss (look at her lips) attack throws you in the air by 55 units high, which is pretty enough to jump on a small wall like that one.

The blue key is required to open the exit door. It's low enough, so you can grab it by falling from platform nearby.


! Map 10: Anarchist Dream

What kind of grass does such an anarchist smoke? It's beyond my knowledge, but I'm sure he had some grave problems! I hate this level design and these tasteless textures.

The first giant room made me upset because I didn't manage to perform a potential timesaver: a jump from one platform to another along the linedef 165, but the height difference didn't let me do that. This made me stop TASing this WAD literally for a half a year.

Eventually I revisited HacX and took the regular route for that room, and for everything else.

I skipped the first two hallways that basically simplify the walkthrough of the next two ones. 


! Map 11: Notus us!

"Notus us"... More like "Nos cognovi quod erit tibi defuit"!

All the switches are well-covered and they blocked the only door which could be opened by enemy from the other side. Oh!

So, basically, it was yet another map without any shortcuts.

Killed a Mechamaniac because the elevator can't go any faster, and I have plenty of ammo.


! Map 12: Gothic Gauntlet

The old TAS managed to call the lift down (sector 66) remotely and I still don't understand how they did that! 

Otherwise, nothing special here. Unfortunately, one major timesaver isn't used. Read "Possible improvements" section for more info!


! Map 13: The Sewers

A terminatrix was used to get on the top of the main platform.

This map disappointed me because the mapper made the bridge arch too low to make another 2 terminatrixes stay on that bridge. Kicking my butt across the rock behind which the red key is placed. That would save 6-7 secs.


! Map 14: Trode Wars

This map is one of which I hate. I don't know which weapon to use: the SSG or the BFG. The hitboxes of these lost soul replacements are really huge - 96x96 length units, so it's very difficult to run past them.
The SSG was the right choice because later I still had to use my BFG to clean the way.

Manipulating damage on ICEs guarding switches wasn't a big problem. Their hitboxes are big as well, so I had no choice but to wait for their death animation to finish before I could proceed.


! Map 15: Twilight of Enk's

Finally a map where timesavers actually work. Performing a 32-unit glide lets you skip the whole red key section. 

Also I'm very happy with a terminatrix kick that throws me up just enough to get a body armor (megashpere).

I admit, the BFG usage wasn't that good here. I should have used it in the yellow key section. Still, I don't think I've lost much time. 
After my last BFG shot, the lost soul (thing 246) standing by the narrow passage just turned around and flew away, so I could run through. I didn't expect that, but it was the main reason why I kept BFG for later.

Additional glide by the exit saves 3 secs - you don't need to run to the switch nearby to lower the gate.


! Map 31: Desiccant Room

I couldn't pick an optimal route to grab the blue keycard because they all suck!

1) North - North - East - East - East - East : the furthest robot (thing 89) blocks me for sure and I can't do anything with it. If I sure, the nearest one will turn around and block my way as well.

2) East - East - North - North - East - East : the same as above, but the culprit is now thing 88. It's the slowest route.

3) North - East - East - North  - East - East : no problems with robots, but the movement is still slow despite 5 wallruns. I picked this route, but I got the same timing (5.03 secs) as in route #1.

I think a BFG shot would be the best solution. Then route #1 is the best choice. 

Also, this is like the only part in the game where I performed a wallrun of a double-sided unpegged wall (linedef 387) which allows you to turn around without loosing 2x momentum.


! Map 16: Protean Cybex

The map was supposed to be a typical running around with a switch sequence which eventually lifts up the exit switch in next to your spawn point.

Fortunately, the height difference is ignored when it comes to doors and switches, so you can exit the map on the first possible tic.


! Map 17: River of Blood

The sound propogation is pretty wide at the beginning which let me move the thugs out of my way.

Additional BFG shot to kill the thugs in that small room with a gun switch would save 1-2 secs.

There is a potential zero press on the linedef 1221, but neither me nor JCD managed to perform it, so another ~7 secs could be saved.


! Map 18: Bizarro

Pretty straightforward and short map. I thought about a terminatrix to kick me across the exit bar, but basic running from point A to point B is still faster. 


! Map 19: The War Rooms

Yet another map with pointless running around just to take more player's time like it's entertaining.

Still, I discovered a small rocket jump skip. I didn't expect I would find anything interesting.


! Map 20: Intruder Alert!

This is the most shameful and lazy final map that I've ever seen in Doom wads. Level design and textures just suck! 

You need to spend a lot of time waiting and there are a lot of space to run around. I could play in pacifist. But I decided to shoot some monsters for the trouble I went through.

Nothing special. I spent 1 minute 50 secs on waiting.

This is the end - just infinite dying sequence that repeats over and over.

!! Other comments

! Possible improvements

* Map 12: at the beginning, perform a switch press (linedef 2900) from below, just after you call the first platform (sector 44) to lift down. You will save 15 secs!%%%I discovered that by the end of the TAS, thanks to 4shockblast's speedrun. However, I suspected the posibility of this press, but my inefficient tests didn't give any results, so I picked a regular route. Would be cool if someone could edit my TAS and resync maps 12-14. 
* Map 13: take the cell pack (thing 177) for more BFG usage on maps 14 and 15. You won't win much time (maybe, a 2-3 secs), but it's still a thing.
