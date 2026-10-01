Prince of Persia SNES time attack with warp glitch usage after a very long time (a few people will catch it) of waiting and patience.

!__Alternative encode__ (no glitched graphics and added some post-input bonus)

[module:youtube|v=A7Pl-c-nwj0]

!!__Game objectives__

* Emulator used: BizHawk 2.4 (BSNES core)

* Aims for in-game time instead of real time

* Corrupts the game via major skip glitch, skipping 15 levels just in the first minute of gameplay

* Uses a game restart sequence - Select/Pause Menu, exit the game and reset the first level via Main Menu from Title Screen. Also, the alternative encode uses an actual reset for safety reasons.

* Takes intentional damage to die and saves time - the death isn’t totally noticeable at first but it is done on Level 17 while touching the exit in order to prevent a softlock at the start of Level 20 - it will be explained later.


Prince of Persia is a very known game since the 90s for many reasons, such as the gameplay, level design, the mission to save the Princess within an hour while the SNES game doubles the duration due to additional levels (20 vs 13 levels - if you account for the final section after defeating Jaffar). In TASVideos we’ve seen many runs of the full game over the years, but how about breaking the gameplay?

Not actually related to this submitted port, but the first time the game was able to be broken was the Game Boy Color port, abusing the collision function through “left-facing wall” so the player gains access to an unique “glitch” room with myriad exit triggers, skipping most of the game by traveling a few rooms or just doing it in the very first room if available.

There’s a (now obsoleted) TAS of this game done back from 2014, before being obsoleted with an improved and [6387M|published run] 11 years later.

[module:youtube|v=yAxdhthSrgg]

Another port gained a benefit: for years it was known the PC Engine CD version has a glitch that allows Prince to enter the closed exit doors by going to the Pause Menu, select Game End option then the screen fades out for some seconds in addition to disabling the door collision for some reason. 60% of the game can be skipped because the exit is located not far from the beginning location.

Seeing great potential, I TASed this port back from 2017, submitted and received [3523M|publication].

[module:youtube|v=TP7KhaSHats]

By the time of the publication, only two POP1 ports and the SNES port (this one is a separate case because Titus and total mess) of the second game were able to show the true potential. But Challenger, what’s about the “warp glitch” you’re supposed to explain? Here’s:


!!__Page 1: Mission Start - The Exit/Corruption Glitch__

This isn’t just a glitch: it requires a long writeup because this discovery happened a long time ago but the research didn’t actually start until 2018. Before going to the point, here’s a brief explanation how it works:

Selecting Game End from the pause menu runs one more frame before the quit takes effect. Perform it on the last frame before a room transition and that extra frame is spent loading and drawing the next room into a half-torn-down state. In that state the loose-rubble objects render from stale pointers as a cloud of garbage at an arbitrary screen position. If the player’s position intersects that cloud during the single frame it exists, a write lands somewhere in game state — the current level, the health byte, the sprite table pointer, the cheat flags. 

In some Level 1 rooms, the rubble/cloud can be useful to set up warp to different levels or corrupt Prince sprites in many different and unusual ways nobody would ever expect after all. 


!__The "warp glitch" project__

Unlike the any% and Training mode runs, this TAS plays the USA version instead of the JP version because this glitch doesn’t work properly there. For the other side, the other version deserves a brand new objective to the player, adventuring through blind/glitched rooms once the glitch becomes successful.

This glitch was originally tested in the JP version in addition to a [Forum/Posts/440092|small TAS] posted by mintlody in Nicovideo website back from 2014: the strategy requires glitching both the game and the player three times using the available hole from the first room then jumping to Level 20, the latest one. However, for some weird reason the author went to show the generated password before leaving Level 1 for good then input that password from the Continue main menu to access the actual destination.

Then the Level 20 is played normally and reaches the ending sequence. In 2018 MESHUGGAH replicated the run but unfortunately by the time the player attempts the 3rd corruption, the glitch fails so bad that the game won’t achieve “the miracle”. 

However, everything would change thanks to this submission, using the US version: https://tasvideos.org/6057S

Initially thought the requirement was supposed to be glitching into the first level then resetting the game, it was later figured out that the Exit glitch can be used [Forum/Posts/473349|to warp from Level 1 to Level 8], leading to the cancellation of the US movie above, which plays the entire game using the Kill ability gaining around 2 minutes of gameplay over the any% run at the time of the discovery.

Creating a warp glitch run wouldn’t be an easy task because the corruption glitch should be studied first: warping may allow the player to complete the rest of the game, probably add an unintended softlock, game crash or even adding nasty bugs? Well, initial testing was successful enough to confirm greenlit in addition to initial slowdowns and a bug with the clock timer displaying constantly while playing the game - fortunately the annoying problem can be fixed by Save+Quit then Continue from Title Menu once you complete the current Level you’ve warped, as the game actually thinks you’re still in the first level.

The initial testing lacked actual interest and motivation to TAS until… near the end of 2018, user Akuma joined TASVideos with breakthrough information about this glitch, opening doors to the start of the journey - one of his reveals include some information about a Level 12 warp that he was able to achieve from Level 1 (only twice) and shared the only photo evidence he saved, showing new unusual stuff never seen before such as the game displaying a Menu upside down, the player being a guard sprite and having some extra health:

[https://i.imgur.com/yQFBesM.jpg]

However, the nature of the corruption glitch is something still mysterious even years later.

!!__Part 2: The Mechanism - One frame of overshoot, and a collision that should not exist__

Selecting Game End from the pause menu returns the player to the main menu. But the game runs one more frame before the quit takes effect. Select Game End on the last frame before a room transition, and that extra frame is spent loading and drawing the next room into a partially torn-down game state. Akuma named that state Level Zero. 

Most of the time nothing is noticed: Level Zero usually looks like whatever was being played. But the room load runs against stale pointers, and one object in particular is drawn from garbage — the loose rubble left behind by a fallen floor panel. In Level Zero it renders as a cloud of pixelated junk at some arbitrary place on screen. 

The trigger is a collision test between two things that should never meet. 

|FRAME n-1|Player is one frame short of a room boundary — climbing, falling, or running off the edge.|
|FRAME n|Pause menu → GAME END selected. The quit is queued, not executed.|
||FRAME n+1||LEVEL ZERO. The next room loads into a torn-down state. Rubble draws from garbage. The player's position is tested against it.|
|FRAME n+2|The quit executes. Main menu, level restart, Konami logo — or a warp.|

(Konami logo is unavoidable in the international versions while the Japanese version has a completely different logo by another company called Masaya)


Akuma reduced the entire system to two variables: where is the player, and where is the rubble cloud. Because it is a collision, the input space is continuous rather than discrete. Approach speed, sub-pixel offset, which side of a hole the player drops down, whether they climbed or fell, whether they clipped the wall on the way — each shifts the player a pixel or two inside that frame, and lands on a different byte. 

This is why the same trick has dozens of distinct outcomes, and why his instructions read like superstition — “do a full run off the ledge, then turn and jump, rather than pressing jump at the edge” — when they are in fact position specifications written by someone with no way to measure position.

!__It is not really about holes__

His own correction, late in the game thread: a hole is merely a convenient way to be mid-transition next to rubble. Any screen transition works if a rubble cloud happens to land nearby — there are plain running exits on Level 3 and Level 6 that trigger it too. Climbing and falling dominate the recipes only because they park the player on the boundary reliably. 

!!__Part 3: Why it resisted reproduction - The corruption accumulates, and almost nothing clears it__

This is the single most important structural fact in the thread, and the reason many attempts by experienced TASers stalled before Akuma arrived. A glitch does not produce an outcome. It produces a state change, and the next glitch’s outcome is a function of the accumulated state. Akuma calls the non-warping ones buffer glitches: their entire purpose is to condition the machine so that the glitch after them lands somewhere useful instead of freezing. 

!__STATE SURVIVES__

* Returning to the main menu

* Restarting the level

* The company logo sequence

* A soft reset (console Reset button)

* A hard crash / freeze

!__STATE IS CLEARED__

* A cold boot — power off, power on 


!__The reproduction trap__

In 2018 MESHUGGAH rebuilt a Japanese runner’s warp frame by frame from video and could not reproduce it. The inputs were identical; the machine was not. Akuma diagnosed it correctly and early: “EVERYTHING has an impact on these combinations, including things which happened before the video started, even before an earlier freeze. The only way to confirm a pattern for sure is to do a HARD power reset and clear all memory.”

Two practical consequences follow. First, a recipe is valid only from a cold boot — comparing two attempts is meaningless unless both start from power-on. Second, every step in a recipe is load-bearing, including the steps that appear to do nothing. Several of his routes open with “walk into the guard’s room and leave again”, which produces no visible effect whatsoever and is mandatory: without it, the following step freezes the machine. 

The only stability oracle anyone ever found is acoustic. When footsteps and other sound effects become distorted or fall silent, a freeze is imminent — usually within seconds, occasionally after minutes of play. Akuma reports exactly one exception in six years of research done after all. There is no known state predicate behind this; the sound is a symptom of some other corruption, and nobody has identified which. 

!!__Part 4: Vocabulary - The terms Akuma invented, without which the thread is unreadable__

Akuma had no technical language available to him, so he built his own. It is more precise than it first appears, and every recipe in the thread is written in it:


||TERM||MEANING|
|Single / Quadruple Up #2|The notation for one glitch. Up or Down is the direction of travel through the transition. #2 is the site — Level 1’s glitch sites are numbered 1 to 5. Single or Quadruple is how many times the player cycled in and out of the hole beforehand; the repetition changes the resulting state.|
|Buffer glitch|A step that warps nowhere and shows nothing. It reconditions state so that a later step survives instead of freezing. Never optional.|
|Level Zero|The torn-down state entered during the overshoot frame. Sometimes playable: a clone of Level 1 in which the timer is frozen, the player already holds the sword, and drawing it warps out instantly.|
|Level Zero²|Level Zero entered from within Level Zero. Rubble clouds persist on screen rather than vanishing after one frame, and can be walked into deliberately. This is the closest thing to a debugger anyone in the thread ever obtained.|
|Split position|The sprite and the true position land in different rooms. Colliding with anything while split is fatal; grabbing a ledge merges them.|
|Gate Thief #1 / #2 / #3 / Fat|Four distinct sprite-table corruptions whose animation frames give the player a degenerate collision box, so that a fully closed gate can be run or jumped straight through. They differ in how the player must approach a gate, and the difference is worth minutes over a full run.|
|Kill Button|A warp side effect that enables the developers’ instant-defeat button (X) and the debug menu. Both become reachable afterwards by button code, with no password ever typed — which is what makes the category legal.|
|Invincibility #0 / #1 / #2|Not invincibility at all. See the next section: it is a corrupted health byte.|
|Clock Bug|A post-warp state in which the clock misbehaves and the game generates continuous lag, costing seconds across later levels. It cannot be cleared directly — only by altering an earlier step in the recipe, or by restarting a level.|
|Logo Reset|Some warps set the “Jaffar is defeated” flag. Exiting a level then jumps to the Konami logo instead of the main menu, a tax of roughly 30 seconds. It is not a console reset, so it stays inside the rules; it is cleared by dying.|
|Special Start|Gate Thief sprites have a wide falling collision box and are killed by the gate at the entrance to Level 1, which makes the level unenterable. A specific exit pose on the previous level shifts the sub-pixel start position just enough to miss it.|
|Time unit|The in-game clock’s quantum: 7.08333 per second. All of his per-level records are quoted in these, decoded from the password shown at the end of a level rather than read off the on-screen clock.|


!__Corruption Targets - What the glitch is demonstrably writing to__

||TARGET||OBSERVED BEHAVIOUR|
|Current level|Warps to levels 0, 4, 6, the level 6 checkpoint, 7, 8, 12, 16 and the level 16 checkpoint have all been observed. Level 12 was seen twice by Akuma, however, due to laborious research after the level 16 warp discovery, by the time of the writing the actual reproduction steps are still a mystery.|
|Health byte|Set to 175 or 255. Akuma proved in 2023 that “invincibility” is simply a large health value: fatal hits — spikes, blades, crushers, fire, falls of three storeys or more — each do exactly 100 damage, ordinary hits do 1, and the visible meter tops out at 15. So 175 survives one fatal hit and 255 survives two.|
|Sprite table base|Re-points the player’s animation frames at other sprite sets — guards, skeletons, the sword lying on the ground, even the Japanese publisher’s intro horse. This changes the collision box, which is the entire source of the gate skips.|
|Cheat / debug flags|Kill Button and the debug menu are enabled together. The tell is oblique but reliable: the audio option flips from Stereo to Mono on the first warp whenever the flags are set.|
|Jaffar defeated|Flipped to 1 by certain warps, which produces the Logo Reset. Cleared by dying.|
|Game clock|Each glitch decrements the remaining time. One documented four-step route steps down 36 → 34 → 26 → 24 minutes, arriving at Level 8 with 23:44 on the clock. Sometimes the clock is instead corrupted into the lag-producing Clock Bug.|
|Settings block|Button configuration, audio mode and the best-times table are all scrambled as collateral. The best-times table filled with nonsense values is the clearest evidence that the write lands in a contiguous settings region.|
|PPU registers|Levels shrouded in darkness, menus and text rendered vertically mirrored, and in one case an outright change of screen resolution — a background-mode register was written.|
|Audio state|Distorted or silent sound effects are a reliable predictor that the machine will freeze. This is the field’s only stability oracle, and its cause has never been established.|

The Invincibility glitch is not used in this run but here’s some videos for some fun:

* The earliest footage/evidence video:

[module:youtube|v=6_ll_lp6IFM]

* Warping from [https://www.youtube.com/watch?v=6e5IHklNtq8|Level 1 to Level 6 checkpoint] (stable warp setup).

* Level 8 warp while initially exploring a mysterious “Level Zero” which will be explained later:

[module:youtube|v=IJT7iqndUSU]

* A [https://www.youtube.com/watch?v=Wco2cB4kUGc|full game run] with the Invincibility enabled around 5:33 of the video through inside Level 8.

And two screenshots made by Akuma’s own illustration how the game should have displayed the actual increased massive amount of health, mentioned before:

[https://i.imgur.com/jsXSm9z.jpeg]

[https://i.imgur.com/Ee16Wgg.jpeg]

!!__Part 5: Geography - The five sites in Level 1__

Akuma numbered the glitch sites in the order a player reaches them while descending and then working leftwards through Level 1. They are described unambiguously across several posts, though some inconsistencies may confuse some information at first. Here’s the map showing most of the entire Level, replicating the map previously used in the thread:

[https://i.imgur.com/m8FCV2E.png]


||SITE||WHERE||WHAT IT TENDS TO PRODUCE| 
|#1|Starting room|Warps to Level 7 or Level 8. Climbing down tends towards 7, falling to the right towards 8. Also the entry point to Level Zero².|
|#2|Second room|The workhorse. Most buffer glitches live here. Associated with Level 6 and with Level Zero.|
|—|Second guard’s room|Not a site. Akuma initially numbered it “#3” and then corrected himself: merely entering the room applies a state modifier. Exiting during the transition only saves frames.|
|#4|Pit with a loose panel, below the skeleton and potion room|Warps to Level 4. Also the source of the heaviest sprite scrambling and of the mirrored-menu corruptions.|
|#5|Room with three loose panels|Associated with Level 8. Also, a Level 4 Warp is possible there but the chances are very rare. In addition, both sightings of the Level 12 warp came from here.|

!Not exactly necessary for the summary but here’s two more locations:

|#6|Eighth room|Warps to Level 4 (and Level 8) if done correctly with the rubble then select Game end while climbing up.|
|#?|Fourth room|The hole produces some bugs, however no warp level has been found there.|

__TODO: document the aforementioned warps adding videos.__

!__Region matters__

All of this is the USA version. Akuma tested the Japanese release extensively and obtained two sprite scrambles and no warps whatsoever. Earlier reports had claimed the opposite — that the glitch was Japan-only — which appears to have been a misreading. Any systematic search should target USA. 

!!__Part 6: Level Zero - The state you can walk around in__

Normally Level Zero exists for one frame. Under the right accumulated state it becomes persistent and playable, and this is where most of Akuma’s understanding came from — it lets him look at the corrupted state at leisure instead of inferring it from a single frame.

* The player begins inside the wall. Moving left runs into the end of the room and is fatal; moving right steps out onto the floor and normal rules resume. Once out, there is no going back in.

* The clock is frozen, so the level can be explored indefinitely.

* The player already holds the sword. Drawing it warps out immediately — as does picking up the second sword lying on the floor. Since Kill Button is enabled by the same warp, guards can be dealt with without ever drawing.

* It is a clone of Level 1, so all five glitch sites are present and still function.

* Completing it through the exit door leads into Level 1 proper, still corrupted; the cut scene before Level 2 clears the visual corruption.

[https://i.imgur.com/A3KENVM.jpg]

The starting position in playable Level Zero, annotated by Akuma himself. The player stands inside the wall: left runs into the end of the room and is fatal, right steps out onto the floor. This is also the clearest picture anyone has of a split position — the sprite is drawn in one place while the true position is somewhere else entirely 

!__Level Zero²__

Entering Level Zero from within Level Zero produces what he labelled Level Zero². Its distinguishing property is the important one: the garbage rubble clouds stay on screen instead of existing for a single frame. They can be approached, avoided, or jumped into deliberately, and each interaction produces a different result — an instant warp, a colour change, a wrong-room graphical corruption, or a crash.

This is as close as the thread ever comes to a controlled experiment. Everything else in years of work was a one-frame collision that could not be observed, only inferred from what happened afterwards. The fastest known setup for the gate-skipping sprite runs through Level Zero² and reaches it in about 50 seconds.

!!__Part 7: Field Evidence - What the corruption looks like__

A representative sample. The first two are emulator captures by Challenger; the rest are Akuma’s photographs of a CRT, which is how almost all of this research was recorded.

[https://i.imgur.com/UkX4zfX.png]

(The menu, mirrored. The pause menu and the clock window rendered upside down and back to front — including the GAME END entry that causes all of this. A PPU register was written.)


[https://i.imgur.com/0pVY2y0.png]

(The dark level. Video corruption that leaves only the player, guards, bottles and torches visible. Several of Akuma’s fastest routes are played blind because avoiding this costs time.)


[https://i.imgur.com/qzlUcmH.jpg]

(Proof of a checkpoint warp. CLEAR TIME reads dashes because the level was never started from its beginning, and the meter shows seven bottles rather than three.)


[https://i.imgur.com/gPhLPQN.jpg]

(Graphics corruption, before and after. The princess cut scene with the sprite data half destroyed, beside the same scene intact.)


[https://i.imgur.com/lEr0mRr.jpg]

A clean warp to the Level 6 checkpoint that raised the health meter to fifteen bottles — the visible half of a health byte set to 255. No graphical corruption and no distorted sound: a stable warp, the kind a run can actually be built on. 


!!__Part 8: The Route Plan - Five glitches, and 25 minutes saved__

The first three glitches happen in Level 1 and take about as long as playing Levels 1 and 2 normally would. Everything after the fifth is ordinary play.

__1 - Visit the classic guard’s room, and exit.__

Produces nothing visible. Without it, step 2 freezes the machine. It is not necessary to exit inside the guard’s room — merely being seen there is enough; exiting on the transition only saves a few frames.

__2 - Glitch in the 6th room.__

Scrambles the sprite table into a specific pattern that will react favourably four steps later. The screen filling with junk immediately afterwards is the tell that Level 4 is going to be played in the dark.

__3 - Glitch in the 8th room — warp to Level 4.__

Levels 2 and 3 are never played. Play Level 4 through, blind.

__4 - Level 5, third room: drop into the rubble you have just created.__

Because of step 2, this does not warp. It re-scrambles the sprite table into Fat Gate Thief, the gate-skipping sprite set. It costs a Logo Reset of roughly 30 seconds, and buys back more than two minutes across the endgame.

__5 - The same place again — warp to the Level 16 checkpoint.__

Play 16 through 20 as a Gate Thief, running and jumping through closed gates. Done.

Here’s the first WR run made with this idea in mind seven years ago by Akuma:

[module:youtube|v=25hqxoTIqz0]


A later refinement replaced the opening with a Level Zero² setup reached in about 50 seconds.

!!__Development of the run__

Another [https://www.youtube.com/watch?v=3lXbznuUiIY|Fat Guard WR] by the same player.

* __Step 1:__ In 2021, with the Fat Thief Glitch routing already optimized in real-time by Akuma, I started the journey replicating his most recent record (posted some lines above) at the time while adding further gameplay optimizations found in the middle of this work.

* __Step 2:__ The Gate Thief #1 whose setup normally requires adding extra time than the other step to prevent an annoying problem at the start of the first level… An unexpected easy solution was found by myself, allowing the game to use the same level 4 warp and once reaching the next level, the reset plan isn't required anymore with the cost of massive slowdown when you warp to level 16 checkpoint.

With the new strategies working well, Akuma broke another real-time record:

[module:youtube|v=SQTwqZvdBiA]

* __Step 3:__ Gate Thief research still continues by discovering [https://www.youtube.com/watch?v=HC7D79xYrDk|faster] and [https://www.youtube.com/watch?v=v68OWzKtBv8|even shorter] setups, in addition to a [https://www.youtube.com/watch?v=GUkPEZv4Zkc|wall clip glitch] which has become quite useful for most sprite corruptions and…

* __Step 4:__ Out of nowhere, during extra testing into Level Zero 2, a completely new level 16 warp is discovered, though it gives a Guard sprite who doesn't have the “powerful magic” but the clip glitch keeps effective from the start of the warped destination until the end of the game:

[module:youtube|v=WupaZgiVQgY]

First WR [https://www.youtube.com/watch?v=v8-rVTD412A|release] with the new Level 16 Warp implemented and the general route being a success, a while later, and also the current WR since 2023:

[module:youtube|v=IyJRVmnGUnM]

!At last, time to comment about the actual TAS:

!!__Level 1__

* First of all, you need to visit a room where a guard is present before restarting to the beginning then perform the corruption glitch for a good reason, mentioned earlier in my writeup.

* Next, corrupt the game between the second and third rooms by using the Pause Menu + Game End command while Prince is climbing up, warping him into Level Zero instead.

* By taking advantage of the mess inside the wall, return to the second room by grabbing the ledge in a precise positioning and repeat the same previous step again, this time allowing him to gain control as soon as you just hold Up+Left directions to jump since the setup controls are scrambled due to the result of glitching the game even further.

* If Level Zero is possible, why not Level Zero²? This is the key opportunity to jump downwards directly to the point where the game for some reason decides to send him to the beginning of Level 16 - what a huge achievement! 


!!__Level 16__

* The warp was a success, however, everything now is a mess: glitched graphics, unusual sprites, no messages are “visible” and two important things you obtain as a consequence - the Kill ability and a somewhat messed up collision hitbox into the player - Gate Thief glitch time!

* If you are familiar with the known route, this time there’s a shortcut located two floors above the second room: climb up, kill the guard with the new ability in the next floor then reach another higher room. There’s a tight wall which allows the Gate Thief to clip within the collision: crouch down as soon as you start doing the glitch because there’s no safe floor after this wall, jump to grab a ledge and some seconds are gained over the normal route even with Kill usage into another guard who is now absent in the new route.

* After the Potion Warp section, goodbye switch buttons and action Boss fight.


!!__Level 17__

* Once starting this level, you can fix the glitched graphics and remove “Jaffar dead” status by dying into the spikes then exiting the game (the Jaffar issue will cause the game to load the unavoidable Konami logo instead) and selecting Continue in the Main Menu thanks to the available password already written up when you complete the previous level.

* Even with glitched Prince sprite, the objective of this level is still straightforward with the same dangerous traps you must dodge by crouching down three times and repeat it for two more rooms.

* Like the 2023 any% run, the Select Menu before the fight starts works well, giving us a better pattern for the falling skulls while you go to the last room immediately. Using the Kill ability is quite easy but because of the aforementioned Jaffar status issue, the fight skip is still effective one more time: when you lose the last remaining health unit, Prince is pushed back enough to touch the exit and this is the only instance where you can die, fix the issue and complete the level at the same time, without the need to reset.

* This skip already present in both 2016 and 2023 any% runs surprisingly is more effective than dying in the first room then resetting the level by select+exit game+continue idea, being a few seconds faster although the game will remain in the dark for more time.


!!__Level 18__

* Although the gate thief glitch is quite useful, this level still requires a lot of time to reach the exit, with the first half following the same usual route after avoiding some traps and skipping the gate in the fourth room.

* Fun fact: There’s a checkpoint location in the middle of Level 3 that can be triggered by visiting that room by taking advantage of Prince’s messed hitbox then die to respawn in the actual new location. Level 18 could have benefited at the very left of the third floor but unfortunately there’s a critical problem: the checkpoint location is located one floor above and trying to get through the wall results in an instant death because there’s no room available outside the intended ones.

* One of these gates skipped is just the one located before the boss fight, gaining a great amount of time by not climbing up some rooms just to activate the switch. Also another Knight killed instantly after the boss battle ready jingle plays out.


!!__Level 19__

* Wall clip to save a little time in the second room.

* Gate Thief allows skipping most of the entire level by going to the top floor then going directly to the left by clipping another small wall and skipping another gate in the room before the long corridor to the Boss Rush.

* The Boss Rush section is self-explanatory.


!!__Level 20__

* Straightforward as usual, but this time Jaffar loses again not only due to Kill ability usage but also skipping the second cycle completely.

* This ability is actually used slightly after the fight starts because I need to do a running jump first (the player loses gameplay control if Jaffar is killed sooner) to save time when getting out of the arena after the victory.

* Pressing the left button just close to the very left to the “finish line” has the fastest individual room completion time. Also, end input is done by waiting until the latest frame possible by taking advantage of the Pause Menu if you’re aiming for in-game time: the timer actually starts running in this level after the battle is over. It seems I forgot to mention this detail even 10 years later, but hey this is better late than never - This idea is also implemented in the current any% run and lasts longer than the obsoleted 2016 any% run because I was unaware how the clock timer works in this game - and units not actually seen without using RAM Watch.


Enjoy the ending sequence and the epilogue now readable in English!

The Prince and all enemies sprites (shown there) remain glitched during the demo presentations from the ending sequence and as a bonus, the Kill button is actually usable (except a few sequences) there! It may cause some gameplay desyncs but the game still advances to the next scene without problem at all.


!!__Other comments__

!__The Opening - What several years never established__

The thread contains no disassembly, no memory map and no instruction trace. Every result in it was obtained by guessing at approach spacing and watching what happened. That leaves a set of specific, tractable questions open. Unfortunately I won’t attempt any further warp glitch discovery than the major Level 16 warp because the game is very very unpredictable and there’s a small chance to find a peculiar different stuff and likely not remember how to do the exact steps without frustrating a lot. Meanwhile…


__What is the write?__

Which routine draws the rubble during the overshoot frame, which pointer is stale, and what address the collision handler ends up writing to. A single trace of that one frame answers this, and turns every recipe in the thread from a ritual into a formula. 


__Is Level 12 reachable on demand?__

Akuma hit it twice, in December 2018, with no record of how. He never repeated it. A warp to 12 or beyond that also preserves a gate-skipping sprite would beat the current route outright.


__Is there a Level 20 warp?__

He speculated about one and never found it. Nothing in the mechanism forbids it — the destination is a byte like any other.


__What actually predicts a freeze?__

“The audio sounds wrong” is a symptom, not a predicate. Knowing the real one converts blind trial and error into a search with a validity check attached.


__How large is the reachable set?__

The trigger is a continuous position test with a small number of discrete outcomes. Nobody has ever enumerated it. Every documented outcome in six years was stumbled into. 


!Special thanks to 

__eien86__ for helping me to organize most of the entire game thread and trim down a lot of information since the research was quite a mess after all.

Despite all the giant amount of information written in the thread for around six years, __Akuma__ did 80% of the research by transforming the game into an actual broken one thanks to the USA version, since the game was previously using the JP version for years because the Intro is skippable at the beginning rather than waiting over 20 seconds to access the Title Screen.

Without his breakthrough, this category wouldn't have reached this further result that became possible with dedication and patience.

In case of a future new TAS to this game, a new category/objective would be pretty interesting: beating the entire game (it allows several minutes of advantage) using the Gate Thief glitch - the Guard sprite is bad, however, better sprites are a better option :)
