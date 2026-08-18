> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6865M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

If you ever wanted to see plants being watered in a quantum superposition state, then this is the TAS for you!

%%TOC%%

!! Software & hardware

* Emulator used: BizHawk 2.11 (with the “Tool-assisted Speedruns” profile)
* ROM SHA-1: 852BB00B96C1D2780AD19C02D52D5704
* Core: MelonDS
* Firmware SHA-1: EDE9ADD041614EAA232059C63D8613B83FE4E954

And [https://i.postimg.cc/HW2VNZjd/image.png|here is an image] showcasing my MelonDS Sync Settings. Most notably, “Touch Interpolation” has been turned off and initial time is set to 1/1/2010 00:02:28 AM.

!! Game objectives

* Objective of the run is to reach the credits after the final dialogue sequence as fast as possible
* Re-record count: 12217 (of those: 6776 from v1 & testing all languages)
* raw encode:
[module:Youtube|v=xmb3qo-PPSo|w=1280|h=720]

!! About the game

Emma at the Farm is a 2007 adventure game for the Nintendo DS where players must help Emma to carry out several tasks on a farm and meet various types of farm animal characters. Aside from skipping a lot of dialogue, the game consists of 16 farming-themed minigames which all come with their own optimization challenge in the context of a TAS.

As for my history with this game: Back in 2013 I found and played the [https://web.archive.org/web/20251112133142/https://www.ebay.de/itm/375812781094|PC version of this game], and in 2015 when I became a speedrunner & I was looking for games to run, I found that this game has a DS port which I then [https://www.speedrun.com/emma_at_the_farm/runs/0znk9j8z|gave a shot]. This is also how this game ended up on my [HomePages/toca|to-TAS list], because it is one of the few non-PC games I ever ran.

!! Game version

As explained in the [Forum/Posts/538822|forum post I made about the game], there are three versions of this game: two EU versions (which I’ll call “West” & “North”) and one US version. The only notable difference between these three ROMs that I’m aware of are the languages you can select in the options menu: the EU West ROM features English, French, German, Italian, Spanish, Portuguese, and Dutch, the EU North ROM has the languages English, German, Danish, Swedish, Finnish, and Norwegian, and the US ROM you can play in English, French, and Spanish. This is relevant for RTA runs because characters load in one frame at a time, so the version which has the least dialogue is to be preferred there.

What I did in preparation for this project was to make a TAS of each language (which wasn’t too much of a hassle because minigames synced almost always across languages), and what I [https://www.speedrun.com/emma_at_the_farm/guides/qqk2a|found was that] ([Userfiles/info/638985732403673004|backup]) the dialogue in Norwegian is fastest, followed by Danish (+1.9s) and English (+6.0s).

Now if you have already watched the encode you may have noticed that I did not TAS the English instead of the Norwegian version. This was a conscious decision because the majority of this game is dialogue, hence TASing a different language would take away from the entertainment value quite significantly. From what I understand this should be in line with the site’s policy that [MovieRules#UseTheCorrectVersionOfAGame|“regional differences such as text and cutscene length are completely discounted when considering improvements”].

!! Memory addresses, RAM watch, scripts

RAM investigation and trace logs were incredibly important when optimizing this game, especially for the minigames. I created a [UserFiles/Info/638989088066298079|RAM watch file] with the most important addresses, yet I want to talk about some of them in more detail. Note that all RAM addresses here are to be found in the Main RAM domain.

! Dialogue skip address

The game signifies that a dialogue can be skipped by means of a green button in the top-right corner of the touch window. This button is connected to the RAM address {{0x2E528C}} in the EU west, resp. {{0x2E596C}} in the EU North version in the sense that it switches from 1 to 0 as soon as this button appears. However, interestingly, the dialogue can always be skipped exactly 2 frames before this value changes (that is, the dialogue can be skipped by pressing where the button will be 2 frames before it loads in).

Based on this knowledge I wrote a [UserFiles/Info/638985730044673794|Lua script] which, starting from TAStudio branch 2, searches for the next time this value switches & then writes a touch input 2 frames before said value switch. This saved me a lot of time because I didn’t have to place and adjust that input for each of the 235 dialogue skip buttons in (the English version of) this game.

! RNG

The 4-byte address {{0x08E874}} holds this game’s RNG value. As was standard for games at that time, the updateRNG function updates this value according to the formula
 newRNG = currentRNG * key + offset (mod 2⸢⸢32⸣⸣ to not overflow the address)
Here, ''key'' and ''offset'' are the hard-coded numbers: {{0x41C64E6D}} and {{0x00003039}}, respectively, which was [https://web.archive.org/web/20250917195756/https://en.wikipedia.org/wiki/Linear_congruential_generator#Parameters_in_common_use|the C99 standard at the time]. Whenever this value is updated during a frame, the updateRNG function is almost always called multiple times (which I believe to be related to animations of characters on the touch screen⸢⸢1⸣⸣), but during dialogue this value seems to be frozen—which should be the reason why syncing minigames across languages worked so well during language testing.

Another important thing to know about RNG is how it is initialized. I quickly found out that shortly after the game starts—more precisely, on frame 12—the RNG value is set based on the initial time of the DS⸢⸢2⸣⸣. 
When discussing the minigames in the stage by stage comments, we will get back to how & where the game uses RNG to “randomize” things, but the takeaway message for now is that there are two main ways we can manipulate the RNG: 1. change the system time in the melonDS sync settings, 2. delay starting a minigame by a number of frames.

----

((((1: [https://docs.google.com/spreadsheets/d/1ONsbmq_v6olLlD4JqgZ3gRA_H4pgB3k93rpd5Z5-tdk/edit?gid=1817221177#gid=1817221177|Here] is an overview of how often the game advanced RNG each frame for the first ~6000 frames))))

((((2: What I ''think'' happens when the game initializes RNG is that it takes the number of seconds since 2000-01-01 12:00:00 AM, adds to it the fixed value 343803, and then stores that number at the RNG address. What I do know for sure is that for every second I increase the system time by, the initial RNG value increases by 1, as well.))))

!! Stage by stage comments

To put things into chronological order, I made a [UserFiles/Info/638985505041617979|first TAS] to familiarize myself with the inner working of the game, then I did the aforementioned language comparison, and only then did I TAS v2 where I properly optimized all the minigames. The reason I bring this up is two-fold:

# I created a [https://docs.google.com/spreadsheets/d/1hoMlloIudufN_o3w0RUS4u1wFfG8vZJkiwt32VI-1RA/edit?gid=0#gid=0|comparison spreadsheet] between v1 and v2 to see by how much I improved & to ensure I didn’t lose time anywhere without realizing.
# After finishing v1 I identified a number of things to optimize and posted about them [Forum/Topics/26720|on the forum]. Interestingly enough, all the points I wrote about turned out to be correct and I managed to save time on all of them. Still, for some more context it may be interesting to read what was on my mind after v1 of the TAS.

In any case, the main point of the minigame comments down below is not just to list how much time I saved on each one in v2, but rather to explain how the minigames work and how to optimize them on more of a game-code level. If you just want a tl;dr: __v2 ended up 798 frames faster than v1__.

! Minigame 1: Collect the eggs

In this minigame you have to use the touchscreen to clear the hay and collect the eggs hidden underneath. The obvious thing to optimize here is to minimize the time/touch inputs to uncover the egg. However, in v1 I encountered something strange: the third egg was already uncovered, that is, I did not have to clear any hay and could instead collect the egg right away. The problem was that (a) this glitch was not known about and (b) I was not able to replicate this for any of the other eggs.

Although I still do not 100% understand this egg glitch, from what I can tell it has to do with how fast the previous egg is uncovered, i.e., the only change to the inputs that led to the glitch not being triggered was to uncover the egg more slowly (none of delaying collection/collecting slower/selecting the next nest later seemed to matter). Luckily, in v2 I got & kept the glitch for the entire minigame, which saves ~35 frames per egg leading to a total of 197 saved frames compared to v1 of the TAS. My best guess as for why this was so finicky in v1 was that touch interpolation being on slowed the hay clearing part down too much.

! Minigame 2: Catch the eggs

This minigame is very simple: catch 10 falling eggs with your basket. My first hunch after v1 was that maybe you can manipulate RNG to make the eggs appear on screen faster, which turned out to be true. More precisely, two things in this minigame are influenced by RNG: where the next egg spawns ({{0x2687AC}}), and how long the delay before the next egg spawn is ({{0x2687A8}}). The first part, interestingly, does not matter for optimization purposes as the egg always spawns at the same height so the falling time is always 95 frames⸢⸢3⸣⸣.

For the second part, I managed to reverse-engineer how the current RNG value is turned into the egg spawn delay:
 updateRNG(rng)
 delay = 60 + 15 * ( (rng >> 16) & 0x7FFF ) % 2
so, basically, if the fourth byte of the new RNG value is odd, then the delay is 75 frames, and if it is even, then the delay is 60 frames. Based on this I wrote [UserFiles/Info/638989149801544186|a Lua script] to find out which date & time (RNG seed) gives me the perfect RNG, i.e., which seed would give me 60 frames of delay for all of the 9 instances where I have to wait for an egg in this minigame. I collected the results in [https://docs.google.com/spreadsheets/d/1ONsbmq_v6olLlD4JqgZ3gRA_H4pgB3k93rpd5Z5-tdk/edit?gid=1370580279#gid=1370580279|this spreadsheet], and luckily, they turned out to be accurate. And this is how I saved 90 frames in this minigame compared to v1 of the TAS.

----

((((3: For the sake of completeness, the formula for which chicken lays the next egg is))))
 (((( updateRNG(rng) ))))
 (((( ( (rng >> 16) & 0x7FFF ) % 4 + 1 ))))
((((that is, update the RNG, take the fourth byte mod 4, and add 1. The exception to this is the first egg, which always spawns on the far left. Also there is a hidden “no duplicate” rule, so if the next chicken would be the same as the previous one, repeat the above process until that’s not that case anymore. Without this knowledge I couldn’t have written {UserFiles/Info/638989149801544186|the script] which associated egg delay times to the different DS times/initial seeds.))))

! Minigame 3: Call the donkey

Not much to say about this one, all you need is constant microphone activity. While there is an occasional “Wait for him to lift his head, he’s grazing” type-of-message, I did not find any way to save time by stopping the microphone input.

! Minigame 4: Collect the hay

From what I can tell the hay as well as the other objects are always in the same place & RNG does not play a role here. Nevertheless I saved one frame compared to v1 because moving non-hay objects can happen a frame before the scene switches.

! Minigame 5: Escape the maze

A simple maze minigame where you have to get to the exit without getting caught by the rabbit wearing a fox mask. There are two things to say about this one. First, given how simple this maze is, it is pretty obvious which path to take, that is, which path to the exit has the least amount of vertical movement.

Second, the speed is constant as it is hardcoded: 1 pixel per frame (more precisely: 2 pixels every 2 frames). Thus the only thing to optimize here is to make turns around corners happen as early as possible, but the game does that automatically as long as the carrot is positioned correctly. That second part was not that difficult once I had found the RAM addresses for the rabbit’s x- ({{0x268BE0}}) and y-coordinate ({{0x268C1C}}). Overall, optimizing the turns saved me 2 frames.

! Minigame 6: Pick the dandelions

In this game you have to pick and blow three dandelions. The blowing part is quite simple as it's just continuous microphone inputs (much like in the donkey minigame).

The picking-phase is a bit more intricate. On the one hand, I could not pick any of the flowers with less than 4 frames of inputs despite quite some testing, that is, no 2- or 3-frame picking movement separated the plant from its roots. I concluded that these four frames are likely a hardcoded rule. On the other hand—and for unknown reasons—the order in which you pick the dandelions seems to matter (cf. [https://docs.google.com/spreadsheets/d/1hoMlloIudufN_o3w0RUS4u1wFfG8vZJkiwt32VI-1RA/edit?gid=1130626264#gid=1130626264|this spreadsheet]). So this together with touch interpolation being off saved my 19 frames over v1.

! Minigame 7: Milk the cow

To optimize this minigame I had to again dive into some trace logs to understand the mechanics behind the bucket filling up. First, how much the bucket is filled is stored in {{0x268CAC}}, and the minigame ends as soon as that value is larger than 560. If you’re currently in the middle of pulling/holding one of the teats, the bucket fills at a hardcoded rate of 6 (value of {{0x0979AC}} plus one) per frame. Hence the fastest the actual milking can be done is 560/6 (rounded up) = 94 frames.

With all this in mind, the fastest I was able to fill the bucket was 96 frames, and the strat to do so was to switch from left to right teat and back. The first and the third switch can be done seamlessly, but the switch in the middle needs a break of two frames (18972 & 18973). The reason for this is that the game has a “guardrail” where if you milk too fast, you get a forced dialogue break where the game lets you know that you have to wait before continuing to milk. As I did not find a way to cut these two final frames to the theoretical maximum, I decided to move on and take the 5 frames I saved compared to v1.

! Minigame 8: Match the sounds

This is another simple minigame to optimize: just make the touch inputs happen as early as possible. Not much to say here.

! Minigame 9: Feed the animals

Another minigame where if you blink you’ll miss it. You get four types of food and you have to drag and drop it onto the correct animal. The optimization is again straightforward, yet I saved one frame compared to v1 due to touch interpolation being off (in v1 I needed an extra frame to move the potatoes).

! Minigame 10: Catch the piglets

Here you have to catch three piglets by tapping them and following their movement (where you put the stylus seems to not matter, it seems to really be a binary “touch/no touch” situation). What I already found in v1 is that it is fastest to first lead the pig at the bottom, then the one in the middle, and then the top one. What was still on my to-do list, however, was to try different tap/touch release times because these change the piglets' trajectories. Even though the bottom piglet is dealt with first (because it is the farthest from the trough) it still reaches the trough last, hence it is the optimization bottleneck. So I checked all different touch and release times to find the one where the piglet’s position addresses are optimized. This saved me 2 frames over v1.

! Minigame 11: Gather the sheep

At first glance this minigame is very simple: once a sheep is close enough to the enclosure, use the microphone to get them to move there. At first I thought that the spawn times were decided by RNG and had to be manipulated, but from what I can tell these are fixed. What is RNG, however, is the vertical position at which the sheep spawn in. When the level gets loaded the RNG gets advanced 12 times; the [https://docs.google.com/spreadsheets/d/1hoMlloIudufN_o3w0RUS4u1wFfG8vZJkiwt32VI-1RA/edit?gid=2147044156#gid=2147044156|first, third, and fifth] update call determine the initial y-position of the first, second, and third sheep respectively. The formula here is
 updateRNG(rng)
 offset = ( (rng >> 16) & 0x7FFF ) % 3
 position = 344 - 20*offset
Admittedly, I got lucky here in that the aforementioned 2:28AM seed also gave me the best position (i.e., highest on the screen) for the third sheep. Also I, of course, tested different times for when to use the microphone but I found that calling the sheep as early as the game lets you for a successful gathering is fastest. Overall, this RNG manipulation saved me 50 frames over v1 of the TAS.

! Minigame 12: Identify the produce

All you have to do here is tap the image of the vegetable or fruit that your dog Pickles asks you to identify. The optimization is again straightforward: just make the tap happen as early as possible.

! Minigame 13: Water the garden

In this minigame you have to water the garden while repeatedly filling the watering can. The fill level of the watering can is stored at {{0x2962F8}}, and it goes up to 301 at a rate of 1 per frame at which point the scene switches back to the garden where the actual watering happens. Once the fill value went down to 5 the game stops the watering and forces you to go back to the tap.

The watering progress of the three vegetables is stored at {{0x269348}} (lettuce), {{0x26934C}} (pumpkin), and {{0x269350}} (cucumber). This progress value also increases at 1 per frame. A field counts as watered if its progress value is larger than 250 at which point the game, usually, brings up the dialogue “You have already watered there Emma!” and makes the watering stop. This is problematic because it forces you into a ~2s cooldown, and only after that can you start watering again.

After I completed v1 of the TAS I wrote on the forum that the game’s logic for this minigame seems to be quite rigid, that is, from my basic testing I was not yet able to break the order of operations (e.g., cutting the watering short or skipping the forced cooldown). However, with this advanced understanding of the mechanics I found that this cooldown—or rather the check that happens at progress value 251—for some reason does not happen if the water fill was already at 250 before the current watering cycle began. What this means is that you can get all three plant progress values to 250, let go of the watering can for 1 frame, and then pour that final droplet onto all vegetables to skip all three of those cooldown messages. Skipping these textboxes is the single largest timesave I found in the whole run, as it let me finish this minigame 334 (!) frames faster than v1.

Also I should mention that the “can flickering”/”quantum superposition watering” does not lose any time. The way the game tracks increases of the progress value is:

# Is the watering can aiming at one of the three vegetables?
# If so, is the can already in a watering state? If not, tilt the can a bit more.
# If yes: add 1 to the progress value of the targeted vegetable & decrease the fill value by 1

What this means is that switching vegetables between frames by instantaneously moving the watering can somewhere else neither loses time nor results in any additional checks.

! Minigame 14: Collect the apples

In this minigame there are two trees that you have to shake and collect the apples from. Interestingly, it does not matter how much you shake the tree, all that matters is that you shake the tree ''at the correct time''. The reason for this is a cooldown mechanic the developers implemented (tracked at address {{0x26A414}}): after an apple falls and touches the ground, the aforementioned address takes a value of 30 and decreases at the rate of 1 per frame (i.e., a 30-frame cooldown). Only once this value is zero the next apple can start falling down by shaking the tree—although you can start shaking as soon as this cooldown is at 3, because by the time the shake is registered the cooldown is at 0 and the apple falls.

For the falling part, each of the apples falls 80 units per frame until it reaches ~{{0x16C0}}. This is relevant because the initial height of the apples is randomized. At first glance, this is not a problem because these heights seem to be initialized when the minigame starts, so testing different starting seeds and reading out the memory to see when the sum of apple heights are minimal should be possible. However, the second tree is re-initialized once the first tree has been harvested. Hence the only reliable way to manipulate RNG would be to reverse-engineer how the game turns the RNG value into the apple positions. The problem is that, unlike all other RNG-related functions, this one seems a lot more convoluted. Even after staring at trace logs for entirely too long I still don’t understand what’s going on here.

As such, the best I could do was to just shift the start of the minigame by one frame at a time & see how fast I can beat it, then repeat. The reason this is not optimal is that I’m not trying all RNG values that I could theoretically have access to because the RNG increments per frame are most often larger than 1, so I’m missing a lot of RNG values “in-between” which I can only hit by adding delay frames earlier into the run. Anyway here is a table of all frames that I’ve tested:

%%TAB Minimize tab%%

%%TAB Table of all tested frames%%
||Starting frame||Ending frame||
|33374 (earliest)|34519|
|33375|34535|
|33376|34546|
|33377|34534|
|33378|34568|
|33379|34527|
|33380|34526|
|33381|34525|
|__33382__|__34513__|
|33383|34521|
|33384|34542|
|33385|34567|
|33386|34524|
|33387|34534|
|33388|34530|
|33389|34570|
|33390|34564|
|33391|34559|
|33392|34547|
|33393|34527|
|33394|34530|
|33395|34539|
|33396|34540|
|33397|34603|
|33398|34560|
|33399|34554|
|33400|34565|
|33401|34552|
|33402|34568|
|33403|34584|
|33404|34585|
|33405|34576|
%%TAB_END%%

From this you see that adding 8 delay frames makes the minigame end 14 frames faster, resulting in an overall timesave of 6 frames compared to starting the minigame right away. Moreover, the apple RNG in v1 of the TAS was terrible which is why this minigame was 69 frames faster this time around (and subtracting the 8 delay frames from that results in an overall timesave of 61 frames compared to v1).

! Minigame 15: Pick the tomatoes

Another simple minigame. You just have to pick 4, and then 6 ripe tomatoes. All I have to say here is that I saved 2 frames compared to v1 from touch interpolation being off.

! Minigame 16: Repair the scarecrow

The final minigame; here we have to dress a scarecrow to drive the birds away. The way this works is that on the left there is a clothing menu with a fixed list of items: 

* Pants
* Jacket
* Hat
* Shoes
* Pants
* Jacket
* Head
* Gloves
* Pants
* Jacket
* Head
* Rake

You maneuver through this menu using up and down arrows on the touchscreen, and this list wraps around (so moving “Up” on the first item gets you to the last item on this list, and vice versa). Now the goal is to place one of each kind of item on the scarecrow, but you have to do so in a specific order:

* Jacket and head can always be placed
* Hat can be placed once the head is on
* Pants and gloves can be placed once the jacket is on
* Rake can be placed once the gloves are on
* Shoes can be placed once the pants are on

After placing a new item on the scarecrow, the game jumps to the element below the current one in the aforementioned list.

Now with all these rules in mind, the way to optimize this minigame is to minimize the number of menu switches/up & down presses. I did so by means of [UserFiles/Info/638990495453061812|a Lua script] which goes through all possible configurations (order of item lists to put on), checks whether it is a valid solution (every item has been used once, none of the order constraints are violated), and finally calculates the minimum number of required up/down presses.

The list of all solutions can be found in [https://docs.google.com/spreadsheets/d/1hoMlloIudufN_o3w0RUS4u1wFfG8vZJkiwt32VI-1RA/edit?gid=880712868#gid=880712868|this spreadsheet], but the tl;dr is that there are 2268 viable solutions/paths, and the smallest number of menu changes is 7. This is great news because in v1 of the TAS I eyeballed a solution with 10 moves, which results in a timesave of 6 frames (''3 less moves * (1 touch frame + 1 release frame)'').

----

!! Final comments

! RTA timing

As per the [https://www.speedrun.com/emma_at_the_farm?h=Any-Easy&rules=game&x=wdmzj0o2-onvv2mnm.013pykl5|rules on speedrun.com], RTA time starts "on the screen with Emma's first dialog and ends as soon as the credits roll". For this TAS means that frame 781 is the RTA starting point, and frame 42439 is the end, resulting in an RTA time of [module:frames|amount=41658].

! Possible improvements

The only improvement that comes to mind is minigame 14. As explained [10040S#Minigame14CollectTheApples|there], one can save at least 8 frames here (likely more) but that requires understanding the relation between the RNG value and the apples’ y-coordinates: only then could you write a script that checks thousands of initial RNG seeds/DS system times to find one which leads to the lowest-possible hanging apples.

However, this comes with its own problems: this seed would have to satisfy multiple constraints as it would also have to be optimal for the other minigames, and it may be that having so many constraints makes a perfect seed so rare that it would take way too long to find it/test every single one of them. As such, I’ll leave this as an open problem for future TASes of this game.

! Suggested screenshot

Personally, I am a fan of frame 36278 (the scarecrow)

[https://i.postimg.cc/cCfBD1hj/image.png]

and frame 25896 (the most cursed animal face in this game in my opinion)

[https://i.postimg.cc/mgn1HfNH/image.png]

but of course I’m fine with any other screenshot as well!
