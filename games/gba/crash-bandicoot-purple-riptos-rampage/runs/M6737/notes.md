> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6737M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Almost 10 years after [https://www.youtube.com/watch?v=c4_lP3oHPSE|Pull's first WIP of this game], and a bit more than 8 years after [Forum/Posts/454814|my 104% TAS] (that I never tried to publish here for reasons that I will get into later), TASVideos finally gets its first ever official Crash Purple submission! 

!! Software & hardware

* Emulator used: BizHawk 2.10 (with the “Tool-assistend Speedruns” profile and no further changes to the settings)
* SHA1 ROM checksum: 6BC7E3D8DB8A56447532A6DC8D065CEC243ABCB9
* GBA Bios checksum: 300C20DF6731A33952DED8C436F7F186D25D3492 (this seems to not match the hash from the [Bizhawk/Firmwares] page, although I only have the gbabios.rom in my Firmware folder. Not sure what’s going on here)

!! Game objectives

* Objective of the run is to reach the credits as fast as possible.
* Time: The final necessary input happens on frame 129811 (at 59.7275006 fps that’s a time of 36:13.387)
* Re-record count: 21858

!! About the game

Crash Bandicoot: Fusion (or Crash Bandicoot Purple: Ripto's Rampage, as the US-version is called) is structured just like most PS1 Crash games and the earlier Crash handheld games: There are five hub worlds in which one has to play levels and collect crystals to unlock a boss which guards the portal to the next world. The difference is that the levels with crystals do not feature any traditional platforming, but they are all minigames of various kinds; in this sense this game is closer to Crash Bash than to Crash XS & N-Tranced. Yet, there is some non-trivial platforming happening in the overworld as well as in the additional bonus levels (which contain no crystal but only a gem). These gems are to some degree mandatory: in order to beat the game, in addition to the 25 crystals one also has to collect all the gems up to the fourth boss (by breaking all boxes in a level). The reason for this is a gem barrier between the fourth boss and the portal to the fifth world which can only be opened if the player has collected all 20 out of 20 gems available until that point. As of now, there is no known way to clip through or get around this barrier in any way, which is why we have to beat this game the intended way; but that of course doesn’t mean that we can’t have some fun along the way.

! Game version

I created this TAS on the Japanese version of the game (''Kurasshu Bandikū Adobansu: Waku Waku Tomodachi Daisakusen!'') because it has by far the least amount of textboxes that have to be skipped. According to [https://www.speedrun.com/crashfusion/guides/e1u1d|this comparison] by [user:PeteThePlayer], an Any% run of the Japanese version features 76 textboxes, while the second-fastest language, Italian, has 99 textboxes. As far as I know this is the only difference between the versions in terms of gameplay, so from a rough estimate choosing this version should save around 46 frames over the others (one frame of letting go of A, and one frame for pressing A again).

! Movement

Before diving into the types of minigames present in Crash Fusion it is probably best to go over some basic gameplay mechanics. This game’s platforming consists of moving left/right, jumping, double-jumping, spinning, and ducking. Notably, there is no sliding, no crawling, and no glitched movement (e.g., no glitch high/low jumps). However, jumping and spinning can be combined into a spin jump which can cut some height from bouncing on crates. In terms of speed, however, these extra moves are almost always slower:

* For horizontal movement, jumping & spin-jumping loses 1 frame, double-jumping loses either 1 or 2 frames, and spinning loses 2 frames compared to just running. Notably, this remains true even if slopes of any kind are involved, and getting damaged does not influence this either. Hence, optimizing overworld movement for the largest part is about jumping as little as possible, sometimes by taking damage instead.
* Vertical movement is a bit more involved: while spinning during falling does not change the ''vertical'' speed at all, one way to speed up sufficiently long falls is by jumping at the start. This may seem paradoxical at first, but is due to the fact that falling from jumping gives a larger falling speed than just walking off the edge. For example, in the very first bonus level (Freefallin’) Crash falls for around 12 seconds if he jumps off the first platform, but around 14 seconds if he walks off the first platform.

It should be noted that spinning does have a timesaving effect: it temporarily enlarges Crash’s hitbox so he can reach portals faster. This is why I’m spinning in front of the end portal of each bonus level, as well as into every screen transition within a world. I am not sure to what extent this cancels the timeloss from spinning while moving (i.e., whether it is the start or the end of the spin where the 2 frames are lost; I suspect it’s a mix of both), but what I can say is that spinning into portals and triggers almost always saves 2 frames when starting the spin on the correct frame.

! Other tech

Staying in the overworld for a moment, there is a technique known as “menu warping” which refers to quitting out to the story-mode screen and going back in to spawn in at the last checkpoint. Admittedly, this is a bad name because there is no actual warping going on, but that’s the name that stuck in the community (something like “save+quit” would be more accurate here). In any case, this tech is useful because the game saves immediately once a level has been finished and unloaded. What this means in practice is that one can exit out of the game right after any level without losing the newly acquired crystal. Doing so skips an animation where Crash throws the crystal up into the air (notably, no such animation is present after the bonus levels where you can only get a gem), and this also works after every boss because there, Crash shows off a trading card which is this game’s optional collectible—but because our aim is to complete the game as fast as possible, these cards are of no concern to us. In total, these animation skips result in a timesave of around 60 frames for __each of the 25 crystals__, as well as around 40 frames for __each of the four bosses__ (the animation after the fifth boss does not count because it happens after the run ends). Even in RTA runs with average menuing and mashing, this saves around half a second per crystal, or around 12 seconds total. On top of the direct timesave from skipping this animation, a secondary effect of this tech is that you always have one Aku Aku mask after each level because the game’s default Aku Aku value on restarting the game is 1. Hence this also makes for a handful of saved frames over the course of the whole run from damage abusing to cut some jumps.

! Money

Wumpa fruits do not act as a way to gain extra lives in this game—because there is no life counter—but rather they are a currency. More precisely, one needs wumpas

* to unlock levels,
* to unlock barriers in the overworld which block later parts (this is distinct from the crystal barriers before each boss),
* and for the shops. There are 9 shops in this game, and their main purpose is to either buy or play for trading cards.

Wumpas can be collected in the overworld and in the levels as usual, but they can also be gambled for in some of these aforementioned shops, like the spinning wheel shops, the crate shuffle shops, and the mystery shops. The reason I bring this up in so much detail is that the wumpa route is already tight in RTA runs (the current world record has only 3 wumpas left after unlocking the last regular level), and in a TAS things are a lot worse because in many places one can exchange wumpas for speed. To put some numbers to that, in the first rough and unoptimized instance of this TAS I tried to implement all the known strats while getting all the wumpas that do not lose time. I ended up being a whopping 68 wumpas short when trying to unlock the last level, i.e., I had 7 wumpas instead of the 75 I need to unlock the level. Hence there were two ways to amend this:

* Enter the one shop on the way where one can gamble for wumpas—the spinning wheel shop in world 2—and get a sufficient amount of wumpa there. This takes around 7 to 8 seconds, depending on the shop RNG.
* Alternatively, gain back 68 wumpas in the levels by sacrificing strats of at most 7-8s. When I did a level-by-level analysis the best I could get in ~8s was 51 wumpas which is not even close to matching option 1.

Thus I opted for visiting the spinning wheel shop in world 2, and I made the money route work perfectly, i.e., when unlocking the final regular level I have 0 wumpas to spare. All of this just as an explanation as to why I visit a shop in an Any% run, because this may seem unnecessary at first glance. More details on how this shop’s mechanics and how it can be manipulated can be found in the stage by stage comments down below.

! RNG

Speaking of shops and manipulating RNG, let me quickly explain how this game simulates and handles randomness. Conveniently, the first four bytes in the Combined WRAM domain ({{0x000000}} through {{0x000003}}) contain this game’s RNG value. As was standard for games at that time, the updateRNG function updates this value according to the formula __newRNG = currentRNG * key + offset__ (mod 2^32 to not overflow the address). Here, ''key'' and ''offset'' are numbers hardcoded in the ROM, i.e., the key is at address {{0x000238}} (hex value 41C64E6D, little endian), and the offset is at address {{0x000234}} (hex value 00003039, little endian) in the ROM domain. While the exact values are of no concern to us, what we do need to know what ''updates'' the RNG value:

* From what I know—outside of minigames—the updateRNG function is only called by very few things: the Aku Aku animation completing (once every 8 frames), Crash’s idle animation completing (once every ~310 frames), and collecting a trading card that is hidden in the overworld. Notably, none of Crash’s moves call this function so the only thing we can do to influence this part of the RNG update process is to take damage and lose the Aku Aku mask on a certain frame to essentially “freeze” the RNG value.
* The second way the RNG value is changed is by setting it to whatever value is stored in {{0x00F718}} in Combined WRAM (essentially a frame counter minus cutscenes). This happens on world transitions, entering a level or boss, loading into the world again (e.g., by exiting a level/shop, death, save+quit), and after pressing A in a shop (to start the shop minigame). This whole process is the reason why optimizing the run is so painful: changing earlier parts of the run (e.g., by finding faster overworld movement) makes for a smaller value in {{0x00F718}} and thus completely changes the RNG value and the associated “random” behavior.

When discussing the types of minigames after the next section and in the stage by stage comments, we will get back to how and where the game uses this RNG value to “randomize” things, but the takeaway message for now is that there are two main ways we can influence the RNG: 1. Take damage at specific times. 2. Enter levels at specific times, e.g., by adding a few frames of delay before entering a level to get an overall faster outcome.

----

!! The old TAS

As explained at the start, although this is the first Fusion submission to this site, this is not the first effort at creating a TAS of this game. In late 2015, Pull started an Any% TAS of the US-version of this game ([Forum/Posts/418010|shared on this site by Spikestuff shortly after]). Two years later [Forum/Posts/454814|I made a TAS of the completionist category] ([https://www.speedrun.com/crashfusion?h=104&x=xn2y7z2o|“104%”]), the goal of which is to obtain all 25 crystals, 25 gems and all 120 trading cards you can get with a single cartridge. Back then I was a fresh runner of said category and my reason for making a TAS was that I was curious how much the world record—which was 1h37m12s at the time—could be lowered if all the shop RNG could be eliminated. Notably, this was my first ever attempt at creating a TAS and there were many things I was unaware of. First and foremost, from what I recall I wasn’t even aware of Pull’s WIP until a few weeks before I shared my efforts on the forums, but by that time I was so far into the TAS that I didn’t care to go back to implement his strats or further optimize things (as explained in the RNG section this was too much work because I would’ve had to re-do almost the entire project). And even without Pull’s first efforts, as [Forum/Posts/454822|ThunderAxe31 rightfully pointed out] I had failed to consider even basic questions of optimization, which is why I, ultimately, never turned that old project into an official submission.

Since then, much has happened. New strats and skips have been found to the point where I decided to give this whole thing another go, but this time the Any% category would suffice. The first big difference between this and the old TAS is not just the version difference in Bizhawk (1.12.2, resp. 2.0.0 back then vs. 2.10 now), but rather the Bizhawk core: Pull as well as I had used the since-retired VBA-Next core which, as it turns out, introduced a lot of additional/inaccurate lag frames in certain levels compared to the now standard mGBA core; I will point out difference in lagframes whenever appropriate in the stage-by-stage comments below. (footnote: as seen in my old forum post I was made aware of the different cores only once I was done with the TAS, and switching cores would have meant to re-do the entire thing which I was not willing to do). All of this is to say two things:

1. This time around, I had one full and one partial TAS to compare to/as a basis for TAS-exclusive strats, and I made sure to save time compared to both of them on every single segment. What did help in this whole comparison is that—except for the fifth world and the shops—the 104% and the Any% route are mostly identical, so comparing strats and framecounts to the old TAS was straightforward.

2. In addition to that last point, I had [UserFiles/Info/638914725256906416|my old .bk2 file] as well as [UserFiles/Info/638914542456053468|Pull’s .bk2 file of his WIP] (which contains even a few levels in world 2 that are not present in his WIP video, and which he shared in May 2017), so mimicking strats was easier than just trying things based off a video. And because of the aforementioned overlap between Any% and 104%, for many levels I could take my old inputs as a basis for further optimization, which simplified things significantly. This is why some of the autoscrollers, e.g., the sheep levels, look identical to the old 104% TAS. Some autoscrollers I was able to optimize or make more entertaining/less boring to watch, but there do exist levels where I found my old efforts to be good enough.

To give a lower bound on the difference between my old TAS and this submission: had I instead decided to make an Any% TAS in 2018, then this new one would be ''at least'' 4558 frames faster (as mentioned in point 2, this comes from comparing all segments and levels where the Any% and the 104% route coincide), realistically the difference is even larger. As explained in the “Other tech” section, the majority of this timesave comes from the animation skips, and a non-trivial portion comes from the switch to the mGBA core. The remaining timesave/differences are of course detailed in the “Stage by stage comments” section.

----

!! The minigames

Before finally diving into the TAS itself, I would like to explain the different types of minigames featured in this game, resp. what to look out for when optimizing them, etc. These are comments and strategies that apply to __every__ level of that type; more specific comments are given in the “Stage by stage comments” section down below, but this will serve as a “hub” to avoid repeating explanations later on.

One general thing to note is that the first time you play a minigame from a certain category (e.g., the first bear level or the first jetpack level) the game shows textboxes which explain the minigame’s controls. These can be skipped at all once by pressing Start, hence why the first frame of many minigames consists of a “Start”-press. The exception to this are the bonus levels which show one single textbox ''every time'', which can be skipped with either “A” or “Start”. Another thing to note is that, much like in the overworld, Crash starts every single minigame with an Aku Aku mask which in some levels adds an interesting extra aspect of optimization through damage boosting.

* __Bear levels:__ An homage to the polar levels from Crash 2: you ride on Polar’s back (now through a 2D level) and your only moves are dashing and jumping. Unlike in the PS1 game, this dashing can be done indefinitely by holding the left or right shoulder button. Dashing is faster than dash-jumping (by at least 10 frames), which is in turn faster than jumping without dashing (i.e., while running normally). Hence the rule of thumb for these levels in terms of optimization is to cut jumps short whenever possible, e.g., by jumping onto an uphill slope, not jumping from a downhill slope, bonking on a ceiling, etc. or by avoiding jumps altogether. This necessitates optimizing every single jump, unless the jump is trivial (e.g., from flat ground to flat ground with no slope in sight). The other components are finding which gaps Crash can dash over, and to decide where to damage boost to save a jump. Luckily, the answer to the latter question was quite obvious every time, and for the jump optimization my process was the following: 1. For a given non-trivial jump, determine the frame window where a jump is safely possible while meeting all the requirements (e.g., not dying, having to break a box, etc.). 2. Find a point shortly after that jump which can serve as a reference for how much distance Crash has traveled. For a first rough estimate this can be a box breaking or a wumpa being collected, but ultimately I had to take some consistent point of some texture and go by the number of pixels still/already visible on screen.
* __Sheep levels:__ Because this game is a [https://en.wikipedia.org/wiki/Crash_Bandicoot_Purple_and_Spyro_Orange|cross-over with the Spyro franchise] the devs decided that not just Spyro, but also Crash has to be bloodthirsty and massacre these poor sheep. The gameplay is simple: stop the sheep from running into the nitro crates behind you by shooting them with your rocket launcher. In Plants vs. Zombies-style, this happens in a fixed number of lanes which Crash has to move between in a discrete manner, i.e., a single “Down” press moves Crash from his current lane to the one below him, and neither staying nor shooting “between” lanes is possible. In terms of speedrunning, there are only two things to look out for here: make sure that at no point there are too many sheep on screen (to avoid lag), and kill the final sheep and make the crystal appear as quickly as possible. Everything else is just about showing off. Also note that, unlike in other types of levels, it does not matter which lane Crash is in at the end of the level (before the crystal appears) because he is always teleported to the middle for the final animation.
* __Tank levels:__ These levels are among the more interesting to optimize. As the name says, Crash is in a tank and has to get to the exit portal, and if he wants the gem he has to break all boxes hidden throughout the level. The available controls are: driving the tank forwards/backwards (up/down), turning the tank (left/right), shooting (A), and turning just the cabin Crash sits in (left/right shoulder button). This cabin-turning is very useful to load/unload objects and entities because it significantly changes the camera and thus what is (almost) on screen. Now the complexity these controls introduce is two-fold: first, you cannot turn the tank while moving (i.e., turning means to stop driving forward, and you can only continue driving forward once you end the turn) but you ''can'' turn the cabin while moving in any way. The strategy for going fast turns out to be as follows: take the shortest path whenever possible, unless there are crates that cannot be broken while following this shortest path. If you have to leave the shortest path, make sure to keep these detours as short as possible, e.g., by minimizing the shot time by turning the tank cabin so the corresponding crate loads in as early as possible etc. Again more details on what this means in practice are given in the “Stage by stage comments” down below, but one more general tech to mention is that for unknown reasons, if you hold the left shoulder button while going through crates, the box collision is ignored (this is easily done RTA, nothing else to it). Notably, this is true __only__ for crates (i.e., this does not work on walls, enemies, projectiles, explosions, the end portal, etc.). This was already done by Pull in his first WIP and while it doesn't really save time, it is funny to show off which is why I also included it whenever there was a nitro crate on my direct path.
* __Chopper levels:__ The next autoscroller. Crash controls a mini-chopper which has to eliminate enemies falling from the sky before they destroy him or his chopper. The only controls are moving the chopper up/down, and shooting a laser (A). Unlike the sheep levels, there are no fixed lanes, and shooting can be buffered by holding A (this is my RTA strat because it makes for consistent strats). However, after shooting there is a cooldown of 30 frames before the next shot can happen, regardless of whether A is held or pressed at the perfect time. Because the enemies are falling in a fixed pattern, there are only two sources of timesave: 1. Destroy the last enemy as fast as possible. 2. Do not end the level too far from the crystal: There seems to be a threshold (which is surprisingly high up) where if you're at least that close to the crystal when killing the last enemy, the level will always end at the same time—but if you're further away than that you will lose time because of the increased flight distance between the chopper and the crystal.
* __Water levels:__ My archnemesis. This is without a doubt the most difficult level to optimize because of its movement complexity. This may come as a surprise because the controls are deceptively simple: like in Crash 2 you ride down a river on a hovercraft which can only turn (left/right) and boost (A). As with the bear levels, boosting can be done indefinitely by holding down A so you should always boost. Now the aforementioned complexity comes from the fact that while you ''can'' turn while boosting, that __only__ changes Crash’s orientation but __not__ the direction he’s going in during the ''current'' boost. Instead, this new orientation becomes Crash’s new direction only once you stop the boost and start a new one (i.e., by letting go of “A” for one frame). This “turning while boosting” is called drifting, and it’s very difficult to save time with RTA because the boosts there are usually quite short (the RTA strat is to instead do short boosts and to discretely adjust the direction between boosts which is of course slow). Now with this in mind let me explain why this complicates optimization so much. There are two parts of optimizing a level like this: deciding on a route, and then following that route as quickly as possible. The second part is as simple as for any other level (e.g., the tank ones): just play around with different frame timings on when to stop the boost, how far to turn, etc. and find the earliest possible configuration where “things work out”. The problem really is finding the fastest route, because—unlike with the tank level—the whole shortest-path doesn’t really work because of all the crates you have to break, and even without the crates all the obstacles, enemies, and whirlpools (which slow you down and pull you in, thus changing our trajectory) make for a highly complex level environment. All of this introduces a lot of variety regarding routes, thus making for an enormous search/optimization space with some non-trivial solutions, also because your decisions now influence how fast you can go one or two seconds from your current position (i.e., there is a delay between cause and effect). To make this more explicit let me give an example. Consider the water level in world 2 (from frame 41906). Between crates 3 and 4 you have to decide how wide a turn to take around the ice obstacle. Your first instinct may be to drift such that the traveled distance  towards crate 4 is minimized. However, [https://youtu.be/7RbDyp5ZTRQ?t=698|doing so leaves you in a position where] the best possible angle for the following boost is suboptimal (drifting for one more frame before crate 4 makes you bonk because the whirlpool pulls you to the right). If, instead, you drift a bit more after box 3 and take a wider turn (as done in the present TAS), you can get a better angle when boosting off crate 4 and get a better position to go around the ice guarding crate 5. To put some numbers to it, while both routes break crate 4 after 196 frames (when counting from first input), at box 5 the current TAS is 13 frames faster than the old version I mentioned; and let’s not start with how this influences how the angles you can get subsequently influence how well you can take care of boxes 6 and 7. (Note that the boost timings in these two routes until crate 4 are the same, this is just about how far to drift, i.e., just a single movement component.) I hope this illustrates why these are the levels I played around in and tried different routes the most, and why I believe that—despite my best efforts—these types of levels have the most potential timesave hidden in them, behind “global” routes that at first glance look like they’d likely be slower.
* __Jetpack levels:__ After that whole water level thing we’re back to something simple. Crash flies through a level and the only button that does anything is the A button: holding A makes Crash rise by giving him a constant upwards acceleration, and not pressing A makes Crash fall. This turns out to only influence the vertical, but not the (constant) horizontal speed, thus making this an autoscroller. There are, however, ways to make this entertaining. First of all, if you press A every second frame Crash turns out to fly in a straight line. This is in contrast to the parabolic curve you follow in RTA runs. But these A-turbo inputs do not only make for a weird way to move and glitch out the sound when breaking boxes, they also allow Crash to clip through downwards-pointing ceiling slopes (first done on frame 62900), and even some walls (frame 64050). Again, to be clear, this does not save any time but should increase the entertainment value of these levels. 
* __Pinball levels:__ The most fun to play around with and optimize along with the tank levels. However, they are also influenced by RNG (in a very subtle way) and thus they are the reason why optimizing earlier parts of the TAS means you’ll most likely have to re-do all subsequent pinball levels. The premise of these levels is simple: in Space-Invaders style you have to kill all enemies on screen with a ball. As for controls you can give the ball a kick (A), activate a magnet to keep the ball close (B), move (left/right), and move faster (hold left/right shoulder button while moving. This only works if the magnet is inactive). Both the magnet and the kick are on a 60-frame cooldown after they have been used. As for enemies, there are the lab assistant and the green rhynoc (no special function), the blue rhynoc (gives an extra ball upon death), and the orange rhynoc (has a shield so they can only be killed from the side or from behind. In terms of strategy, unsurprisingly, whenever there is a blue rhynoc on screen the goal is to kill him as quickly as possible to get the extra ball. Now what makes these levels so fun to optimize is a glitch called the “frame-perfect hyper boost”: when you hold a ball, if you press A on the frame right after you let go of B this will [https://www.youtube.com/watch?v=05PYoPcgcHU|exceptionally accelerate the ball]. While this can be and has been done numerous times RTA, the problem is that due to the large ball speed controlling/keeping the ball in the level is absurdly difficult, and if the ball does not reach the back wall but deflects off an enemy, there is a chance that it will go right through Crash, no matter your position. Therefore this glitch does not only save multiple seconds over RTA in every single phase of the minigame, it is also incredibly satisfying and cool to watch being executed and used perfectly. At this point you may ask how randomness plays a role in this minigame: after all, the ball physics are deterministic and so is the movement of the enemies. Indeed, the RNG’s influence here is so subtle that it took quite some investigating to understand what is going on. Already back in 2017 I realized that shifting the entire TAS by just a few frames breaks the pinball levels—more specifically the behavior of the hyperboosts changed—but I never knew why. This time around, however, I knew much more about how the game determines and handles RNG and I was able to confirm two things: 1. The updateRNG function is called when you hold the ball with the magnet, once every 7 frames per ball you hold because that's how long the green magnet animation takes (and also once whenever a ball touches Crash’s vehicle when not kicking or using the magnet). This told me that the magnet is likely where the game wants to make something seem random. 2. When comparing two versions of my TAS frame-by-frame while focussing on the magnet, I noticed something I call “wiggle”: while you retrieve or hold the ball by holding B, every 7 frames the ball “wiggles around”—probably to visualize the magnet’s effect on the ball—and the direction the ball is facing is slightly different every cycle. Thus, depending on the RNG, pressing A to hyperboost may slightly change what direction the ball is being kicked in, and because of the enormous ball speed this leads to a vast change in outcome. The boost amplifies this wiggle effect to the point where I was not able to reproduce some shots/routes that worked in earlier versions of the TAS (more on this below) because of the different RNG value. Now a final thing to note is that—like in the chopper levels—there seems to be a threshold where if you're at least this close to the crystal, the level will always end at the same time; but if you're further away than that you will lose time because of the increased distance Crash has to travel to grab the crystal.
* __Bat levels:__ The final level type (first appearing at the end of world 3) is also the most boring one. The premise is that Crash is traversing a horizontal level on the back of a bat, and in addition to freely moving in all 4 directions he can shoot a rocket (A) and shoot a bomb (B). By holding A for long enough, you can shoot three rockets at once, and by holding B, you can shoot a special bomb which does not explode upon impact but travels along the ground (unless it hits lava or an enemy). I ended up using only the basic versions of the weapons because in my experience the triple rocket introduces extra lag, especially when hitting multiple targets at once. Now the reason this level is so boring to play is not just that it’s an autoscroller, the problem is that the fixed camera rolling speed is incredibly slow. There is nothing to optimize here in terms of speed and—unlike with the jetpack levels—there also no known glitches present here. Thus the only way to make these levels interesting is to introduce as many near misses (i.e., Crash almost getting hit or dying or only barely breaking a box) as possible.
* __Bonus levels:__ The previous 8 level types are where all the game’s crystals can be found. However, because some of them (sheep, chopper, pinball) do not feature any boxes they also do not house any clear gems, so in order to have 5 crystals ''and 5 gems'' in every world the devs had to introduce some platforming bonus levels where the extra gems could be collected. (footnote: there are also the Crunch bonus levels which feature a weightlift minigame, but there one can only win a trading card so we can ignore those). There are two types of platforming bonus levels: the freefall level where Crash has to traverse a vertical level while breaking all boxes, and standard horizontal levels (Crate Smash & Crate Step) that have to be completed before the time runs out. Because the latter levels have an in-game timer, they also [https://www.speedrun.com/crashfusion/levels|have their own level leaderboard over at speedrun.com]—already back when I created the 104% TAS so I had strats to play around with and times to match or, ideally, beat. 

----

!! Stage by stage comments

Finally, let us get into the actual TAS and what I found, the improvements over old iterations, things to note at each stage, etc. The segment/subsection structure here will be about the levels as well as the overworld platforming to get from one level to the next (unless this movement is trivial in which case I’ll omit the corresponding section). This choice is based on the [https://docs.google.com/spreadsheets/d/1eQLWBWaJXMaqn2gf-xZweqXLNPUVL0l14C-xpGOtiRw/edit?gid=0#gid=0|spreadsheet I maintained throughout the different iterations/versions of this TAS], and this is what these stage comments will be based on, but because said spreadsheet was not made with presenting it in mind—and also for the sake of posterity—I will summarize all the relevant info and noteworthy points in this section.

! To Freefallin'

There are three optimizations I was able to make compared to the old TAS which resulted in a timesave of 13 frames (this does ''not'' include the fewer textboxes in the intro cutscene from playing on the Japanese version). First, I damage boosted through the first enemy to save a frame, then a later jump towards the arrow crate allowed for a tighter left-turn (8 frames), and finally walking on the moving platform just before the first bonus level to add its momentum to Crash’s speed saved another 4 frames.

! Freefallin' (World 1, first bonus level)

This level has been done 122 frames faster than in the old TAS. Almost all of that comes from jumping from the initial platform as early as possible; as explained in the “Movement” section, this makes for a greater falling speed which, because of the fall being so long, leads to a rather large timesave. Then the goal is to keep the fall as long as possible, which in this case is the whole level because all boxes can be broken during the fall by spinning them. Also as mentioned previously, because spinning does not influence the falling speed this level is largely an autoscroller; the constant left-right wiggle as well as the minimized numbers of spins are just for show. The only thing to look out for is 1. to collect the gem as soon as it spawns (I also tried different routes at the end but they turned out to be the same speed because the gem is the bottleneck). 2. spin into the end portal to save 2 additional frames. 

! To Grin and Bear it

I was able to cut one jump compared to the old TAS. Interestingly, this segment now matches Pull’s WIP in terms of time, although he took a different route with four jumps (instead of two jumps like my TAS). This hints at a part of the game I still do not understand—elaborated on in the “Other open questions” section at the end of the submission comments—which is that as long as the level portal is loaded in at the same time, differences of a few frames seem to be absorbed into the next level’s loading time (or something along those lines). What I mean by this is that it can and regularly did happen that I got to a portal one or two frames earlier, but I lost that time again either because I had to wait longer to unlock the level, or because it took longer before I could actually enter the level, thus resulting in no effective time difference. The implications for this level are that one can gain four more wumpa on this segment without losing time in case this is needed for the wumpa route.

! Grin and Bear it (World 1, bear level)

On this level I managed to save 43 frames (36 frames compared to Pull’s WIP). Of those 43, 39 frames are due to cutting two jumps and instead running over the respective gaps: once right after box 10, and then right after box 16. While dashing the gap after box 16 seems to always work (but it looks like it really shouldn’t, which is why I assume it was missed in the old TAS), the one after box 10 is inconsistent in the sense that—depending on where you land close to box 7—Polar’s dash animation may start too early when approaching the gap so the dash does not clear it. To put some numbers to that, if Polar’s jump on frame 3753 instead happens on frame 3752, he falls down the gap in question. Next,  for the damage boost I chose the nitro crate (box 14) because that saves a long downhill slope jump and, more importantly, because it is the only nitro crate in the level it saves jumping into the nitro switch crate at the end of the level; hence this damage boost effectively cuts two jumps. The final thing to note is that the other 4 frames of timesave come from the frame-perfect jump onto the platform at frame 4511.

! Crate Smash (World 1, second bonus level)

Before talking about the saved frames, I should address the fact that this level, at first glance, ''may'' look slower than the old TAS and even the RTA ILs: I finish the level with 8.84s left on the clock while the RTA WR is 8.94s, and I even managed to get a [https://www.youtube.com/watch?v=3eYkRtaNwwY|TAS’d 8.98s IGT]. This difference comes from the 8.84s breaking the final time crate in a different way/later than done in ILs, which, however, turns out to save 1 frame RTA because it cuts one ground jump. As for the timesave, this level is 5 frames faster than the old TAS: in addition to spinning into the end portal, I also managed to save 2 spins during platforming. I want to mention that I did try a bunch of different lizard jump timings to cut the jump into box 8 short, but I found no change in overall time.

! To Sheep Stampede

Saved 12 frames over the old TAS, and 3 frames over Pull’s WIP. Two of those frames come from spinning into the trigger which loads in the second half of the world, and one of them is due to the damage boost on the spear trap. The remaining difference of 9 frames comes from implementing Pull’s faster movement on the Piranha plant (to get to the upper layer): take a slightly wider turn to not land on the platform with zero momentum (as my old TAS did).

! Sheep Stampede (World 1, sheep level)

As explained previously, this is an autoscroller and the only thing that matters in terms of speed is to shoot the last sheep as early as possible. Yet I saved 6 lag frames compared to my old TAS (while matching Pull’s WIP); these occurred around shooting the first sheep, but because I did not change the inputs my guess is that the VBA-Next core introduced this lag because of the many sprites on screen. Anyway, in the current TAS there are no lag frames in this level, so this should be the fastest possible completion.

! To Tanks for the Memories

The movement from Pull’s WIP on the arrow crate before the next level portal is faster by 3 frames, but these frames are again lost on loading the level, i.e., while the portal can be opened 3 frames earlier, both routes can enter the level no sooner than frame 11820. See the “Other open questions” subsection at the bottom of my comments for more detail. In any case, I decided to keep my route because it ultimately matches Pull’s segment time (when focusing only on the movement, that is, when excluding the 58 frames of timesave from the crystal animation cancel). Also, I tried an even wider turn on said arrow crate but that turned out to be a lot slower.

! Tanks for the Memories (World 1, tank level)

62 saved frames compared to the old TAS as well as Pull’s WIP. Of that, 22 are saved lag frames (likely due to the switch to the mGBA core), but the rest should be optimizing the route and taking the direct path whenever possible. It may seem slower to run into the end portal at that angle, but because the tank’s hitbox is a rectangle, at this angle the tank’s corner touches the portal the fastest (while also collecting the crystal, of course). The only other thing to note is that the shot at frame 13103 breaks box 12 because the cabin is oriented such that the box is not too far off-screen so it stays loaded until the box breaks. This way I did not have to steer the tank as close to the box as the old TAS did, resulting in a shorter path.

! To Chopper Stopper

No timesave beyond the crystal animation cancel. I just want to mention that there is nothing to the piranha plant kill at frame 14112, all you have to do is run into it (this is done also in RTA runs).

! Chopper Stopper (World 1, chopper level)

I saved 19 frames compared to the old TAS—and matched Pull’s WIP—by ending the level closer to the crystal and not staying all the way at the top (recall the corresponding passage from the “Minigames” section). Also for entertainment purposes I added some more clutch bullet dodges, but other than these two things the inputs remained largely the same.

! To Crashin' Down the River

I found the bottom path after “Chopper Stopper” to be 1 frame slower than the top path, because on the top path there’s a mask which allows to damage boost through both enemies. Other than that, while my movement to get up to the arrow crate is 1 frame slower than Pull’s WIP (but still 10 frames faster than my old TAS), this timeloss is absorbed into the loading time, i.e., even if I paste his inputs for that particular part into my TAS I still start the water level on frame 17132. Thus, as before, I decided to keep my inputs.

! Crashin' Down the River (World 1, water level)

The water levels are without a doubt the levels where the VBA-Next core introduced a lot of inaccurate lag frames: while in my old TAS there are 136 lag frames present in this level (and even 140 in Pull’s WIP), in the current TAS this level has only 4 lag frames. So factoring out this core difference, I played around with different routes to take (recall from the corresponding passage from the “Minigames” section that this is not at all a straightforward process) and I managed to find one which—after factoring out lag—is 42 frames faster than my old TAS / 23 frames faster than Pull’s WIP. The only thing worth sharing here that comes to mind is that, from playing around, I found that taking more boost breaks—which loses one boost frame and some re-acceleration frames every time—and adjusting the hovercraft’s direction more seems to be faster if it sufficiently reduces the traversed distance. This is another argument for the fact that the feasible optimization space for water levels is magnitudes bigger than for any other level, simply because the “obvious” route to pursue is often not the fastest one.

! Spyro (World 1, boss)

This boss is the first point of the run where RNG manipulation really comes into play. The fastest possible inputs one can make to end the fight is to throw two molotov cocktails and break the opposite platform as quickly as possible. However, Spyro’s movement is determined by the RNG value so it is not guaranteed that he’s on said platform at the time of its destruction, which is what ends the fight. Recall from the “RNG” section that right before starting the level, the RNG value is set to the value from the game-internal “frame counter” ({{0x00F718}} in Combined WRAM). What this means is that the only way to influence the RNG in this fight and to manipulate Spyro’s movement is to change when to skip the final textbox of the cutscene right before the fight (this happens on frame 18392, and the RNG value is set on frame 18397 with value 4353 HEX = 17235 DEC). With this in mind there are three different approaches to minimize the time this fight takes:

* Add delay frames right after loading back into the world after the water level, so you start the fight on a frame where throwing molotov cocktails as quickly as possible (without Crash moving) kills Spyro. Footnote: at first glance this may be equivalent to adding delay frames between the second-to-last and the last A press before starting the fight (frames 18390 and 18392, respectively). However, that is slower because it introduces more lag/loading frames right after that last A press. What I ''think'' happens here is that because the last part of the cutscene plays out for longer, more objects get loaded, which in turn means it takes longer for them to be deloaded again.
* Start the fight as quickly as possible and delay throwing the second molotov until Spyro is on the platform opposite of Crash’s initial position.
* Start the fight as quickly as possible and destroy the platform Spyro will be on at that time as quickly as possible.

The situation from the first option occurs only after adding 11 delay frames (Spyro fight ends on frame 18532), the second option ends the fight on frame 18535, and the third option turns out to be the fastest one (fight ends on frame 18530): with the RNG of the fastest boss start it suffices to destroy the platform left of the “original” one, which necessitated only a minimal amount of movement before throwing the first molotov.

! To Crash and Burn

This is where having the .bk2 file of Pull’s WIP became the most useful because he had started working on this part after uploading his WIP video. In there he had found a way to jump onto the first arrow crate (in world 2) from the left side. I wasn’t aware of this strat before, and after some testing I can say it’s doable RTA, but certainly not trivial. In any case this saved another 33 frames over my route which—combined with the animation skips and less dialogue from using the Japanese version—adds up to being 135 frames faster than the old TAS for going from the end of the Spyro fight to Crash and Burn.

! Crash and Burn (World 2, jetpack level)

No timesave because autoscroller as discussed in the “Minigame” section. All I can add here is that I didn’t do any ceiling clips yet because I felt like doing them in all three levels would take away from their entertainment value; instead I thought it may be more fun to first watch the level be traversed normally (minus the “flying in a straight line” thing), and only in the second and third jetpack level does clipping enter the picture for a bigger pay-off.

! Spinning wheel shop

As discussed in the “Money” section it is overall fastest to enter the spinning wheel shop in world 2. We have to net gain at least ~65 wumpas here so we have enough wumpas to unlock all the levels (instead of skipping the shop and having to take many time-consuming detours for additional wumpas). Factoring in that spinning the wheel in this shop costs 15 wumpas, we need the jackpot to be at least ~80 wumpas. Before comparing our options let me quickly explain how the spinning wheel minigame works. There are always four outcomes corresponding to differently colored segments on the wheel: wumpa jackpot (red), wumpa consolation prize (blue), trading card (purple), and nothing (green). The exact amounts of wumpas or cards one can win depend of course on the specific spinning wheel shop one is in, but in the world 2 shop the jackpot ranges between 26 and 99 wumpas, and the consolation prize cannot exceed 20 wumpas (the exact amounts depends on the RNG value). Thus we have to aim for the red segments. In terms of mechanics, to the right of the wheel is a power meter which determines how far the wheel gets spun. This power meter is discretized and increases in power every 4 frames, i.e., pressing A on the first, second, third, or fourth frame spins the wheel with the power meter at 0 bars, then on frame 5 through 8 the wheel is spun at power bar level one, etc. (the outcome doesn’t depend on which of these four frames A is pressed on). Importantly, the more the power meter is filled, the longer it takes until the wheel comes to a halt and the minigame ends; hence we should aim at a configuration where 1. the jackpot is a sufficient amount of wumpas, and 2. we get that jackpot with an empty (or at least as weak as possible) power meter. For the first point—much like the Spyro fight—the only way we have to influence the RNG here is to adjust the frame on which we start the minigame (and as with the Spyro fight, adding delay frames before entering the shop is faster than adding delay frames right before starting the minigame as the latter introduces additional lag/loading frames needed to deload objects). This leaves us with a handful of feasible scenarios:

* Delay entering the shop until a spin with empty power meter gives a jackpot of at least 80 wumpas. This first works when entering the shop (B press) on frame 25918 (32 delay frames), in which case movement after the shop resumes on frame 26329.
* Delay entering the shop until a spin with power meter 1 gives a jackpot of at least 80 wumpas. This first works when entering the shop on frame 25894 (8 delay frames), in which case movement after the shop resumes on frame 26339.
* Delay entering the shop until a spin with power meter 2 gives a jackpot of at least 80 wumpas. This first works when entering the shop on frame 25889 (3 delay frames), in which case movement after the shop resumes on frame 26367.

Thus for our particular scenario it is fastest to wait for around half a second before entering the shop and then spin at 0 power/get out of the shop at the fastest possible speed.

! Crate Step (World 2, first bonus level)

I was not able to improve on the old TAS (which was the same speed as the WIP), and the one saved frame comes from a VBA-Next caused lag frame.

! To Crate Smash

Since the old days a new strat has been found: because you have to walk by the level “Polar Express” twice, it is faster to unlock that level on the first go and only enter it on the second go. This cuts the usual waiting time of ~50 frames between unlocking a level and being able to actually enter it, because on the second go we can enter the level instantly. Other than that the route here is straightforward, although I was able to cut some jumps which resulted in saving 3 frames (admittedly, one of those frames comes is a loading frame right before Crate Smash).

! Crate Smash (World 2, second bonus level)

Through optimizing the movement in the first third I saved 0.11s off the in-game timer and, more importantly, 11 frames compared to the old 104% TAS (2 of which were again VBA-Next related lag frames).

! To Polar Express

This segment is not comparable to the old efforts because the 104 TAS had to collect an overworld trading card along the way. However, I did manage to implement a tighter turn on the arrow crate at frame 30965, likely resulting in a timesave of 6 frames over the old movement there; and the damage boost right before entering the level cut another jump and thus saved a frame.

! Polar Express (World 2, bear level)

Things worth noting in this level are the running (i.e., non-dash) jump at frame 31956, which saves 8 frames over doing a dashed jump because the latter would get stuck on the next platform, thus resulting in more air time without covering more distance. Also the fastest damage boost I found was the nitro crate at the end (box 32, frame 34545) because that would be a long downhill jump (maximal air time). Unlike in the bear level of world 1, this damage boost does ''not'' skip having to activate the nitro switch crate at the end because there is more than one nitro crate in the level. Note, however, that both these strats were already present in the old TAS and are common practice in RTA runs. What I did, however, was to go through and optimize every single jump (as described in the “Minigames” section) which resulted in a timesave of 6 frames over my old TAS, and 2 frames over Pull’s WIP.

! To Sheep Patrol

At this point I should note that Pull’s WIP stops before it reaches the second half of world 2, so from here on I can only compare strats and timesave to my old 104 TAS. Anyway, in addition to the crystal animation cancel I managed to save 1 frame from damage boosting, as well as 29 frames compared to the old arrow crate movement right before the W2 sheep portal (frame 36043 onwards). Admittedly, given how straightforward this strat is this says less about this route and more about how unoptimized my old TAS was. I will add that the very first version of my new TAS was one frame faster here, which upon investigation was due to one less lag/loading frame right after pressing Start to skip the crystal animation cancel, and I have no idea how these tiny fluctuations in loading time even happen.

! Sheep Patrol (World 2, sheep level)

Same inputs and same time as before, nothing to add.

! To Blizzard Ball

I managed to find a faster route down to the bottom layer of the overworld where the next level is located. Instead of walking off and falling down on the left side, falling down the right side and threading the needle in the second layer with a double jump leads to a much larger falling speed, resulting in 19 frames of timesave. I tried the same thing on the left side because the distance is slightly shorter, but the best I got was losing 24 frames over the right-side route. The reason for this is a subtle but crucial gameplay mechanic: if Crash’s jump bonks on a ceiling he cannot turn this into a double jump anymore because it gets treated as a fall from walking off a platform. Thus the reason the right-side route works is that the ground there is ever so slightly lower than the ground on the left side so the first jump does not bonk and one can turn this jump into a double jump which lands Crash safely on the ice at the bottom. I also tried to make the double jump work when started on the initial first platform (i.e., where the sheep level is), but to no avail.

! Blizzard Ball (World 2, pinball level)

As explained in the “Minigames” section, the pinball wiggle RNG combined with the absurd speeds of hyperboosts make strats in this type of minigame most difficult to reproduce when starting the minigame on a different frame. What this means in practice is that the fastest possible routes I was able to find ''for this particular RNG value'' were:

* 1 frame slower than the [https://youtu.be/uNHFcYEzdT8|fastest known phase 1] ([UserFiles/Info/638914669877687303|here] is the corresponding input file which this phase is a part of)
* 4 frames slower than the [https://youtu.be/OZmfDjcVn_8|fastest known phase 2] ([UserFiles/Info/638914669890546865|here] is the corresponding input file which this phase is a part of)
* 15 frames slower than the [https://youtu.be/0F11xJ0vDw4|fastest known phase 3] ([UserFiles/Info/638914540210510720|here] is the corresponding input file which this phase is a part of)

I want to stress that I tried for so long to somehow make these strats work on the current RNG value, but I only managed to get so close for all of them (and adding delay frames to try again with different starting frames would simply have been infeasible). Especially the way the three enemies on the left are killed in the fastest known phase 3 seems to be so particular that I never even got close to getting both balls to move in that direction again. Still, to compare what I did manage to achieve in the three phases: compared to the old 104 TAS I saved 44 frames in phase 1, 95 frames in phase 2, and 37 frames in phase (i.e., 176 frames combined). The reason for these substantial timesaves was a shift in how I approached these levels: back in the day I tried to kill as many enemies as possible with the first shot, but it turns out to be much quicker to get the ball back as fast as possible and thus start the first hyperboost as quickly as possible.

! To Frigid Waters

In addition to the crystal animation skip I managed to save 3 frames over the 104 TAS on better timing regarding the enemy jump up to the middle layer and subsequent movement (frame 41420 onwards).

! Frigid Waters (World 2, water level)

Of the 123 frames I managed to save over the old TAS, 97 were VBA-Next core-based lag frames, resulting in a true timesave of 26 frames (that can be attributed to the different route I took through the level). Otherwise, all the comments from the “Minigame” section and the “Crashin' Down the River (World 1, water level)” section apply here, as well.

! To Tiny

This is another part where no direct comparison to the old TAS is possible because there I had to take the top path to get to a weightlift minigame as well as a shop. What I can point out, however, is the seemingly weird way to kill the two enemies on my way. While I don’t know the game’s logic behind this interaction, it’s actually very easy to do RTA: simply jump right before you’d run into the enemy. This doesn’t save any time—a jump always loses a frame after all—but it’s funny to show off. Also note the damage boost at the final enemy which saves a frame.

! Tiny (World 2 boss)

Saved 11 frames over the 104 TAS, 3 of which are due to the Japanese version (less textboxes). The remaining 8 frames are true timesave that come from making Tiny rotate as little as possible at the start and, more importantly, keep Tiny in place between phases (which the old TAS didn’t pay attention to). The underlying gameplay mechanic here is that the first thing Tiny does is lock in, i.e., he rotates to align his cannon with Crash’s latest position. Only then does the actual attack phase start. Thus there are two things to pay attention to in this fight: 1. Make Tiny move as little as possible. 2. Hit him as early as possible. For this second point, I managed to save two frames by slightly adjusting the angle of Crash’s cabin which allowed an earlier shot to hit Tiny one frame sooner, twice. Everything in-between is just showing off, as usual. Also note the unloaded texture (pink pixels) on the right side (at frame 45539 onwards); of course this doesn’t save time but is funny to see. I suspect that the game did not think that after ending the fight the tank could move that quickly to the other end of the arena and because the fight is over that part of the level doesn’t get loaded in properly.

! To Tankin' over the world

I managed to save 14 frames on the movement from the start of world 3 to entering the first level therein. This time the damage boost right before the level saves two frames because it cuts a spin, and the remaining 12 frames are due to better arrow crate movement (frame 47149).

! Tankin' over the world (World 3, tank level)

Disregarding once again the incredible difference in lag frames (14 lag frames in the present TAS vs. 229 lag frames in the 104 TAS), through taking more direct paths and camera manipulation I managed to gain a whopping 173 frames of “true” timesave. This is mainly due to the fact that in the old TAS I didn’t really take tight routes/shortest paths but mostly eyeballed things. Here are some things worth pointing out:

* The nitro crate at 48700 does not break only because I am holding the left shoulder button for 5 frames (which, as you may recall, for some reason disables checking box collision). Admittedly, at frames 49342 and 51212 this happens in a way more obvious manner.
* Around frame 49600, in RTA I would have to make a 180° turn to go back the way I came. In TAS, however, we can simply drive the tank backwards for the rest of the level because the fact that left and right, confusingly, are swapped in this case does not have any consequences in the realm of TAS.
* A very subtle camera manip happens at frame 49822: without the “l” press there, only one of the two boxes breaks.
* Two damage boosts cut waiting times throughout the level. This is easily affordable because in addition to the mask we always have at the start, there are two Aku Aku crates throughout the level—and this does not introduce any lag frames.

Finally, I want to mention that in the [UserFiles/Info/638914669890546865|first iteration of this TAS] I completed this level 7 frames faster, but with the __exact same inputs__? The only difference I noticed is that the fastest version of the level has 15 lag frames while the final version only has 14 lag frames; and yet, I lose 7 frames somewhere (8 frames if you account for the fact that there’s one ''less'' lag frame). What I’m sure of is that this somehow relates to the different RNG value when starting the level—simply because that’s the only thing that changes, and because this is known to cause problems in the pinball levels, as well—but I have no idea how this could relate to timesave and timeloss. The only idea I had was that certain animations play out differently based on RNG, but I don’t see how that could affect speed in any way. Even after watching the two versions side by side I don’t know what’s going on, so I eventually decided to take the 7 frames of timeloss and leave this as an open question.

! To In hot water

Not much to mention here other than the fact that I optimized the elevator jump (frame 52577) but the game counteracted the small timesave I got out of this with longer load times for the next level.

! In hot water (World 3, water level)

Unless I have miscounted, out of the 522 frames I saved on this level, 484 (!) are VBA-Next related lag frames (current TAS: 40 lag frames, old TAS: 524 lag frames). Hence the new route I found/took through this level is “only” 38 frames faster.

! Crate Step (World 3, bonus level)

The old TAS had 27 lag frames in this level (the new one has none). On top of that I managed to save 2 frames on actual movement compared to the old TAS, and two additional frames by spinning into the end portal. Overall, that’s a 0.07s improvement on the in-game timer.
 
! To Chop' til you drop

The only thing worth mentioning here is the damage boost right before the level portal which saved not one but two frames because the invincibility frames were long enough to get us through both fire traps, thus saving two jumps.

''Edit:'' Only after finalizing this submission have I realized that one can maximize the time spent on the platform right before the level (frame 56530) to boost Crash's momentum as much as possible, like with the platform before the very first bonus level at the start of the run. From what I found, this would allow to enter "Chop' til you drop" 6 frames faster. However, because changing this would mean I'd have to re-do a non-trivial part of the TAS (pinball, bosses with RNG) I'll unfortunately have to take the timeloss.

! Chop' til you drop (World 3, chopper level)

The inputs are the same as in the old TAS ''except'' for the down inputs at frame 58546. These ensure that the chopper is past the threshold (recall the “Minigames” section) which minimizes the time it takes to collect the crystal. Overall this results in a timesave of 19 frames over the old TAS.

! To Rocket power

While this is another segment where a direct comparison to the old TAS is not possible (because of two overworld cards I had to pick up back then), one thing I did implement is the damage boost right before the level, resulting in another saved frame. 

! Rocket power (World 3, jetpack level)

No time difference compared to the old TAS, and I only slightly changed the three out-of-bounds sections that I already showed off back then; I was able to do so because I had some wumpa to spare because of the large jackpot I won in the world 2 spinning wheel shop. Fun fact: if the ascent on frame 64110 starts one frame later, Crash falls off the map and softlocks because as soon as Crash leaves the screen the A input is not processed anymore and Crash falls off screen indefinitely at constant horizontal speed. (To be fair it’s not a “real” softlock because you can still press Start and quit out of the level.) I did also leave the game in this pseudo-softlocked state for 300,000 frames and all that happened was that Crash’s icon at the bottom looped around and re-appeared every ~40,000 frames, most likely because Crash’s x-coordinate overflows at some point.

! To Bat attack

I tried to optimize the arrow crate jump at frame 65885, but no matter what I couldn’t enter the level faster than frame 66059 (i.e., as before, all timesave gets compensated for by longer load times). So the only timesave here are 55 frames of crystal animation skip.

! Bat attack (World 3, bat level)

All 7 lag frames from the old TAS are gone, which is also the only timesave because this level is an autoscroller. I did, however, invest a bit of time into making the route more entertaining by introducing more close calls and things that ''look'' like they should hit Crash. One notable example of such a close call is the nitro crate around frame 69720 which I managed to break on the last possible frame by means of taking damage (recall that there is no nitro switch crate in this level so all boxes have to be broken actively in order to get the gem). Also when approaching nitro boxes from the left you can break them by flying into them and then going left as soon as possible (as done, e.g., on frames 70220 or 71740). Anyway, this hopefully compensates, at least in part, for how boring this level usually is to play.

! Nina (World 3 boss)

This boss fight is really just a bear level on a timer, i.e., if you don’t dash enough or jump too often Nina will catch up to you and kill you, and the goal is to get to the end of the level before that happens. This way of losing shouldn’t matter to us because we want to traverse the level as quickly as any other bear level—or so one would think. Mechanically speaking, the fight ends once Nina hits a certain trigger at the end, so what really matters for optimizing this fight is to make ''her'' move as quickly as possible. Hence what we really have to do is to ensure that her distance to Crash does not fall below a certain threshold because then she would switch into her slower movement mode (probably a mechanic to accommodate the less experienced players). We are always well beyond that threshold ''except for'' the jump around frame 75407, meaning all jumps ''except for this one'' are optimized as in any other bear level (i.e., minimize air time, or cut the jump altogether as around frame 75790). In fact, you may have already noticed that the jump at frame 75407 could happen earlier—as early as frame 75399 to be precise—but jumping at that earliest point would make the fight end __5 frames slower__. Here is the full analysis:

||Jump on frame…||Fight cannot end earlier than frame…||
|75399|77380|
|75400 – 74504|77378|
|75405 – 75406|77376|
|75407 – 75410|77375|
|75411 – 75413|77376|
|75414 – 75417|77375|
|75418 – 75421|77376|

What I think happens here is that on the jump frames where the fight ends after frame 77375, either at the start of the jump or mid-air Nina is so close to Crash that she goes into her slow movement mode for just the shortest time, resulting in an overall timeloss.

! To Sheep shuttle

Factoring out the fewer text boxes, I saved one frame by damage boosting through the first goat.

! Sheep shuttle (World 4, sheep level)

Same inputs and time as before, nothing to add.

! To Freefallin'

Not comparable because the 104 TAS has to get an overworld card here. By holding right and damage boosting I could cut all jumps except for the necessary one to get onto the next bonus level platform.

! Freefallin' (World 4, first bonus level)

Unlike in the Freefallin’ level in world 1, here it is faster to run off the platform because the falling distance to the first crate is too short for a jump at the start to save time. Also I do a spin-jump off the first box to cut the jump short so I can spin the box to the left of it faster. I tried the same on the two TNT crates (boxes 7 and 8, frame 83445), but the distance between them is too large: while it is possible to spin jump the first TNT and get to the second TNT to spin it without dying, Crash then is too far from the middle arrow crate and cannot get to it in time. Hence the fastest way I found here was to jump off the right TNT and then continue as usual by spinning everything. Other than that the only thing to look out for is to collect the gem as soon as it spawns and as far right as possible (because spinning does not influence falling speed). To be clear, all of these strats were already present in the 104 TAS. One more thing to mention is that spinning into the end portal didn’t save time here; the only reason for this I can think of is that the portal hitbox is slightly curved, so because Crash has to jump to get the gem that is already enough to reach the portal quicker? All I know is that I was not able to save any time over the 104 TAS here, no matter what I tried.

! Up, up, and away (World 4, jetpack level)

As before there is no timesave to be found in the jetpack levels; I did, however, again invest some time into showing off more close encounters to hopefully make this level more entertaining to watch.

! To Crate smash

The only thing to note here is that I managed to cut one jump by timing the double jump at 92864 to not land on the lower, but directly on the higher portion of the following platform.

! Crate smash (World 4, second bonus level)

On top of the 50 core-related lag frames—54 in the old TAS, 4 in this one—I saved 2 frames throughout the level (which led to a final IGT of 17.19s compared to 17.14s in the old TAS): jumping into the enemy at frame 93483 instead of spinning him, and spinning into the level end portal.

! To Castle chaos

From what I found, there is no difference between walking off and jumping off the platform right after the bonus; this falling distance seems to be exactly the point where jump falling is about to overtake standard falling. In the end I did opt for a jump because that made for a close encounter with the platform on the right while falling, and it also gets us an extra wumpa for free. The big timesave here, however, are 19 frames from maximizing the time spent on the platform (frame 95211). Because that platform moves in the same direction as Crash does, that effectively increases his movement speed, thus resulting in these 19 frames of timesave.

! Castle chaos (World 4, pinball level)

Thanks to the previously mentioned approach (i.e., get the ball back as fast as possible to start the first hyperboost as quickly as possible) I saved 43 frames in phase 1, 63 frames in phase 2, and 118 frames in phase (i.e., 224 frames combined) compared to the old 104 TAS. Unlike in the world 2 pinball level “Blizzard Ball”, the three phases seen here are the fastest I ever did them because the different RNG values throughout the different iterations turned out to only be beneficial, as they often allowed for different, faster routes.

! To Bats in the belfry

While this segment is not directly comparable due to an overworld card the 104 TAS has to get, I could implement a strat that has been found not too long after the old TAS was made. It turns out that a precise double jump around frame 97000 gets you up to the next platform directly, thus skipping the detour. With a bit of practice this jump is consistently doable RTA, and it saves [https://www.youtube.com/watch?v=-MPZ9rQLixI|a bit over 4 seconds to all other known methods]; from a rough comparison with the 104 TAS this jump saved me 251 frames.

! Bats in the belfry (World 4, bat level)

The two lag frames from the old TAS are gone. The only difference to the old TAS is more clutch movement and more close calls.

! To Tanks' R Us

The 104 TAS has to take a detour to reach a shop so no direct comparison here. The thing to optimize in this segment is the fall around frame 103350. The fastest route I found is one which, surprisingly, bonks on the arrow crate and—even more surprisingly—does not damage boost. Whenever I damage boosted the enemy on frame 103074 and saved a frame, I could not avoid also getting damaged by the spike trap and dying on frame 103550. Also I have no idea why the bonk saves time, all I know is that if I take a wider turn to avoid the bonk Crash unlocks the portal at the same time, but can only enter it 2 frames later than the current bonk route.

! Tanks' R Us (World 4, tank level)

To nobody’s surprise, again, a lot of lag frames have vanished compared to the 104 TAS (395 lag frames there vs. 73 lag frames now equals a difference of 322 frames). This leads to a true timesave of 91 frames, most of it from optimizing for a more direct path. Other things to note are a different route from frame 104573 onwards. Taking the bottom route is faster because of a box constraint: if crate 4 (destroyed on frame 105178) would not exist, then the top path may be faster, but like this the top route has to drive quite far down to get that box, thus making it slower overall. Also starting to turn the cabin already on frame 106285 loads in the electric fence early so by the time Crash gets there I don’t have to stop and wait for it. 

! Ripto (World 4 boss)

The second and last boss where RNG manipulation plays a major role. This fight is essentially a bat level with three phases. In each phase you have to wait for—and then hit—a bat which is not translucent; only then does Ripto rid himself of his shield and Crash can damage him. However, whether a bat is translucent or not depends entirely on the RNG value upon spawning. Now because we start this fight with a mask we have access to both major ways of manipulating the RNG value: 1. Start the fight on a different frame (earliest frame is 108167), and 2. lose the Aku Aku mask on a specific frame to freeze the RNG value and make the remaining first bats vulnerable. Note that—unlike with the Spyro boss fight from world 1—here it does not matter whether one adds delay frames after the previous level or whether to add delay frames right before the fight-starting A press; both are equivalent because the latter method does not introduce any additional loading frames for some reason. I opted for this latter method because it looks cleaner than standing still in the overworld for 3 frames. In any case, the earliest frame where I got perfect RNG to work (i.e., the first bat on each phase was vulnerable) was frame 108170:

* Start on 108167: The first bat is translucent so there is very little time to lose the Aku Aku mask and freeze the RNG. And nothing I tried made the first bat vulnerable.
* Start on 108168: The first bat was vulnerable right away, but no matter when I damaged myself after it spawned, the first bat in the ''second'' phase always stayed translucent.
* Start on 108169: Same as frame 108167.
* Start on 108170: The first bat in phase one ''and'' two were already vulnerable, and I found a frame at the end of the second phase where freezing the RNG value (by getting damaged) made the first bat on phase 3 vulnerable as well.

Two more optimizations to mention: 1. The first bat on the second phase can be already hit (by using a bomb) when it spawns behind Ripto’s shield. Notably, this does not work on the third phase because Gulp(?) is in the way and blocks the bomb. 2. Hitting Ripto with bombs is faster than hitting him with rockets (by 1-2 frames each time) for unknown reasons. Combining all of this led to a timesave of 106 frames over the old TAS. 

! To Bat to the future

One year after the TAS I found a [https://www.youtube.com/watch?v=RmEQTsN6r1Q|~15 second shortcut using the arrow crate next to the world 5 shop]. The reason this saves so much time is that casually, to get to “Bat to the future” one has to go around the entire overworld once, and then go around a second time because the final boss is right above “Bat to the future”—so this shortcut effectively skips one entire tour through world 5. This is easily the most difficult trick in RTA runs (my consistency with it is around 30%). In any case, this skip is one of the reasons why almost no segment after this can be directly compared to the 104 TAS because it completely changes the level order (the other reason is that, unlike the 104 TAS, we don’t have to get any gems anymore so most remaining levels with boxes will be vastly different).

! Bat to the future (World 5, bat level)

The 7 lag frames from the old TAS are gone. Also I implemented a lot more close calls, and I also got all boxes instead of one. Part of the reason is that we need almost all the wumpas we can get to have enough money for unlocking the final regular level, and the other reason is that I thought it would be funny to end the level with 39 out of 40 boxes, thus only missing the gem by one crate. My first idea was to get the boxes and skip the gem, but the corridor at the end is too narrow so crystal and gem cannot be avoided, and ending an Any% run with 21 gems instead of the required 20 looked odd to me.

! Crash at the controls (World 5, chopper level)

Apparently the 104 TAS ended the level above the threshold, so moving a bit down after the last shot gives a timesave of 23 frames.

! To Bear with me

The lower path is faster because less jumps are needed. The reason this route works is once again weird enemy-jump collision (frame 119544) which allows us to hold left all the way to the next level. 

! Bear with me (World 5, bear level)

Same pixel method as before for optimizing the jumps in this level, recall the “Minigames” section.

! To Tech deflect

For the arrow crate right after the level, I found a double jump timing which ever so slightly clips into the crate, thus starting the crate jump earlier (the bonk is unavoidable then, but overall I found this to be the fastest way to get up here). Also I added three delay frames right before entering “Tech deflect” (i.e., the first frame the level could be entered is 123730 and I enter on 123733) to get better RNG in the next level.

! Tech deflect (World 5, pinball level)

The first two phases are the fastest I have ever done them (without the delay frames before the level I couldn’t get the first phase to work as it did here), and only on the third phase did I lose 8 frames compared to the [https://youtu.be/8NnOYSjV9o4|fastest one ever] ([UserFiles/Info/638914540210510720|here] is the corresponding input file which this phase is a part of). Anyway, I saved 64 frames in phase 1, 57 frames in phase 2, and 103 frames in phase (i.e., 224 frames combined) compared to the old 104 TAS.

! To Tank you come again

Perfect wumpa route! No wumpas left upon unlocking the level.

! Tank you come again (World 5, tank level)

All that’s going on here is taking the shortest path because we can ignore all boxes. The only thing to mention is that by driving through the nitro crate at frame 126161, in the true “Any% spirit” I finish the level with 0/18 boxes and only the crystal.

! Cortex & Ripto (World 5 boss)

In this fight Crash has to destroy Cortex & Ripto’s space robot in three phases (funnily enough in a vehicle that hasn’t come up in this game so far, flying the glider freely and shooting lasers from it is exclusive to Spyro Fusion). This fight has an in-game timer and, famously, it cannot end faster than 48.23s, [https://www.speedrun.com/crashfusion?h=Space_Chase-Beat_the_Minigame&x=l_owo77j96-z27g3z20|as nicely demonstrated by the currently 16-way tie on the IL leaderboard]. However, this does not mean that there is no optimization to be done here: while the in-game timer accurately tracks the time (from what I can tell) it obviously cannot take lag frames into account, and the lag frames in this fight behave rather weirdly. As an example, if the final laser shot (frame 129513) happens one frame later, this introduces two lag frames (129517 & 129522) for no discernable reason. I played around with different timings—especially for phase 3 because that’s where all the remaining lag frames are—and the least amount I was able to get was 18 lag frames (compared to the 115 in the original TAS, although some of those—but certainly not all of them—were due to the different core). To give another example: the final three shots currently happen on frames 129505, 129509, and 129513. Although these shots can instead happen as early as frames 129494, 129497 and 129500, respectively, but introduces 6 additional lag frames and does not change the in-game timer, resulting in the fight being 6 frames slower. Anyway, with Cortex and Ripto defeated we get some final textboxes (the last one on frame 129811) before the credits start playing (after that I hold A to scroll through the credits faster, but this is not necessary). ''Fin.''

----

!! Final comments

! RTA timing

As per the [https://www.speedrun.com/crashfusion?h=Any&rules=game&x=7wk6vqd|rules on speedrun.com], (RTA) “timing starts as soon as "New Game" is selected and ends once Ripto and Cortex are off-screen after defeating them in "Space Chase", thus triggering the ending sequence.” For this TAS means that 823 is the RTA starting frame, and 129738 is the ending frame, resulting in an RTA time of 128915 frames, which at 59.7275006 FPS results in a final time of __35:58.386__.

! Possible improvements

* There is most likely still time to be saved on the water levels. However, as thoroughly explained throughout these submission comments, the vastness of the route search space and the cause-effect complexity makes hunting for faster global routes most challenging. As such, I am happy with the route optimizations that I ended up finding and I’ll gladly leave this for the future.
* It is probably possible to save some more frames in the pinball levels via RNG manipulation (adding delay frames before the level) to make better routes work. As you may remember, I lost 20 frames in the world 2 pinball level (Blizzard ball) and 8 frames in the world 5 pinball level (Tech deflect) when comparing to the fastest-ever done phases of these minigames. As with the previous point, this would be a substantial undertaking because finding the fastest route for a phase on a given RNG value takes quite some time, and one would have to repeat this process for ''every single added delay frame''.
* There are a handful of lag frames that one might be able to optimize away (water and tank levels, as well as final boss), but what you saw here was the best I was able to do.
* ''Edit:'' There are 6 frames to be saved on the way to Chop' til you drop from maximizing the time spent on the platform right before the level portal (recall the corresponding section comments).

! Open questions

* I do not understand how the level portal load times work. As first described in the stage-by-stage comments for “To Grin and Bear it”, sometimes differences of a few frames are absorbed into the next level’s loading time (or something along those lines), and sometimes a change on the previous level (or even before) allowed me to enter a portal one or two frames faster than before. To me, these shifts seemed random in that I did not notice a pattern; figuring this out ''may'' allow saving a frame on level entries here and there.
* A similar thing applies to loading frames: sometimes, one loading frame “randomly” got added or taken away although inputs of the level in question had not changed (but something before that level had). Examples of this can be found, e.g., in the “To Sheep Patrol” subsection, or in [UserFiles/Info/638914540210510720|this old iteration] where the segment between the last level and Cortex & Ripto was one frame faster only for no obvious reason.
* I will admit that I do not fully understand when a double jump loses 2 frames instead of the usual one. What I wrote in the “Movement” section is true to the best of my understanding, but there were some instances when jumping did not behave as I expected it to (in terms of speed when, e.g., jumping off an enemy/a jump crate). Recall also the “To Grin and Bear it” subsection.
* For some levels there is likely hidden RNG stuff going on. The biggest and also most puzzling example here is the world 3 tank level (“Tankin' over the world”) where simply shifting everything (but the inputs within the level staying the same) cost me 7 frames—and this difference is not explained by loading frames.

! Finally, thanks to

* Pull for the first WIP TAS of this game which contained a handful of faster movement that I was able to implement this time around,
* [user:PeteThePlayer] for the previously mentioned language comparison spreadsheet and for his outstanding speedrun.com moderator activities,
* [user:CDRomatron] for starting the [https://docs.google.com/document/d/1cxWRRJaXxzIIRltD109Q9QZt6wJ4uo8B5OXx-HhCqsA/edit?tab=t.0#heading=h.th3ttx1z5hr6|Sprash GBA knowledge base] all the way back in 2018, where we also collected everything we know about Crash Fusion,
* RayCarrot for creating and sharing a [https://raym.app/maps_r1/|level viewer] for many GBA games, including Crash and Spyro fusion. This inspired me to look into and find a better route through the world 4 tank level,
* 7eraser7 for the moral support throughout this project!
