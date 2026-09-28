> **Imported**
> This run was originally published at https://tasvideos.org/4416M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! Game Description (By obishawn)
The game is loosely based on the movie.  They are both set on Fury 161 at the prison, there are aliens running around, and Ripley is bald.  As far as similarities go, that's about it.
Unlike the movie, Ripley actually has weapons, there are many, many more aliens roaming around, and you, as Ripley, have to fulfill certain objectives before moving on to the next stage.  Long story short, if you are looking for plot consistency for the over all story, do not rely on this game.
At certain points in a stage, you will find a computer terminal from which you can choose from different objectives before you can move on to the next stage. The layout of the walk-through will be divided by stages, then those will be divided by each mission objective in each stage. -Description by obishawn


!!! TAS Commentary
The link below is a Twich Stream of the TAS with commentary from Aran;Jaeger (Chat), Worsel, and DrD2k9.
https://www.twitch.tv/videos/904242739


!!! TAS Details
This is a highly optimized version of Alien 3 that is roughly 33 minutes faster than the current WR by Media Pool, which has been added below for reference. Media Pool's run is certainly good...but there are some mistakes that are very clear to bring up. Below is a list of things found that are unoptimized parts, from most to least:


* Routing
* Order of tasks within a mission
* Mission order

!!! WR Speedrun (For Comparison)
[module:youtube|v=eEZ5euedkBQ]	


!!! Goals
* Any%
* Takes damage to save time
* Exploits movement mechanics


!!! Tools Used
* lsnes rr2-B23 Emulator
* Ram Watch (Ripley's Position, flame fuel level)
* Lua Scripting (used for logging stats and hitbox display)


!!! Addresses Discovered
* 0x14ce: Ripley's Position (Horizontal)
* 0x14d0:Ripley's Position (Vertical)
* 0x15d4: Bullet Packs
* 0x15d2: Bullets
* 0x96:	Door Transition
* 0x15e2: Flame Fule Unit Level
* 0x15e4: Flame Fuel Units
* 0x15da: Grenades
* 0x15dc: Grenade Packs
* 0x7e1868 - 0x7e17e6: Alien HP Ranges, in steps of 50, that hold status for each random assignment


!!! Tricks and Techniques
* Ladder Boosting: There is a certain proximity, where pressing up or down will "snap" you to a near-by ladder. When performed at the furthest point possible, it is capable of cutting 6 frames. The same can also done to push Ripley away from a ladder, when you are at the closest point to the center. In passing a ladder for forward progress, this can cut a total of 12 frames (in normal cases)
	
* Rapid Ammo Switching: There is a cool-down between grenade shots that keep you from shooting them rapidly. The cool-down can be canceled by firing regular bullets. When doing so, you can fire multiple grenades within 18 frames. This becomes very useful in destroying aliens very quickly.
	
* Enemy iFrames: A problem that I didn't recognize, early in the making of this TAS, was noticing that ammo was being wasted without any affect. Every shot successful shot causes an alien to have about 6 frames of invulnerability. Once I determine this, enemy kills were more efficient and ammo was preserved to keep movement from stopping. I addition, this helped to make better routing choices to prevent extra ammo collection.
	
* RNG: This is the most horrendous game I have ever seen for RNG manipulation. The two techniques that are possible for changing RNG, are shooting bullets or frame delays (which wasn't used). Oddly enough, I never found enough support for changing RNG by shooting flames or firing grenades. Most notably, shooting ammo before entering another room was probably the best RNG alteration...due to the room changing dramatically, rather than to manipulating immediate issues.
	
* Moving Platforms: Originally, I thought that these objects moved with a static pattern, on entry of a room, but it turned out that they are activated within proximity. This became useful for manipulating their patterns to get the fastest pattern possible. Some cases still proved to be difficult and were not changeable, but most areas had something to gain by playing with proximity.

* Jumping: All jumps, that fall as high as Ripley reaches, will endure a 4 frames of "Stun" before being able to move. If Ripley jumps up to a higher platform, this effect will not occur.

* Welding: When repairing a junction box or pipe, Ripley has to squat. Coming out of the squat position, takes time. One exploit is to jump out of that position, which can be observed in almost every situation through the game.


!!! Special Thanks
This TAS would not be as optimized, if it hadn't been for the genius effort of Aran;Jaeger (EternisedDragon). His determination in solving game problems has helped many people, and especially this TAS. Little did I know, ED was studying this game and was intending to TAS it eventually. After he discovered my attention to this TAS, he shared all his knowledge. To my surprise, he confirmed all the mechanical movements that I found. What made the difference, was his knowledge on producing maps and discovering the difficult memory addresses that eluded me. There is no way to truly know how much his efforts contributed to the reduction of time, but I can say that it was significant. Thank you ED!!
