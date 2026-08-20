> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6970M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Here is my TAS of the second and final installment of the [https://www.speedrun.com/series/emma|Emma series]. I dedicate this TAS to [user:ikuyo] given [Forum/Posts/540147|how much she liked] my TAS of [6865M|Emma at the Farm].

%%TOC%%

!! Software & hardware

* Emulator used: BizHawk 2.11 (with the “Tool-assisted Speedruns” profile)
* ROM SHA-1: AECD3699740DA27D9AD2347AE9D39D15412C217B
* Core: MelonDS
* Firmware SHA-1: EDE9ADD041614EAA232059C63D8613B83FE4E954

Regarding my MelonDS Sync Settings: Notably, “Touch Interpolation” has been turned off and initial time is set to {{01.01.2010 00:03:50}}.

!! Game objectives

* Objective of the run is to reach the credits after the final dialogue sequence as fast as possible
* Re-record count: 62627

!! About the game

Emma in the Mountains is a 2008 adventure game for the Nintendo DS. In this game, Emma grows concerned about the groundhogs because they haven’t come out of hibernation yet. She sets out to investigate with Andy and her dog Pickles. In principle the game has two difficulty settings: “Average” and “Hard”. However, the hard difficulty is only unlocked once the game has been beaten on the Average difficulty. Aside from skipping a lot of dialogue, the game consists of 16 winter- and nature-themed minigames which all come with their own optimization challenge in the context of a TAS.

!! Game version

There are two versions of this game: EU and US. The only notable difference between these three ROMs that I’m aware of are the languages you can select in the options menu: the EU ROM features English, French, German, Italian, Spanish, Portuguese, and Dutch & the US ROM you can play in English, French, and Spanish. This is relevant for RTA runs because letters load in one frame at a time, so the version which has the least dialogue is to be preferred there.

What I did in preparation for this project was to make a TAS of each language, and what I [https://www.speedrun.com/emma_in_the_mountains/guides/8au0l|found was that] ([Userfiles/info/639052777859251475|backup]) the dialogue in English is fastest, followed by Spanish (+0.5s) and Dutch (+3.9s).

!! Memory addresses, RAM watch, scripts

RAM investigation and trace logs were incredibly important when optimizing this game, especially for the minigames. I created a [UserFiles/Info/639052778928436942|RAM watch file] with the most important addresses, yet I will talk about some of them in more detail later on. Note that, unless stated otherwise, all RAM addresses mentioned in these notes are to be found in the Main RAM domain.

! Dialogue skip address

The game signifies that a dialogue can be skipped by means of an orange-brown button in the top-right corner of the touch window. This button is connected to the RAM address {{0x2FE728}} (1-byte) in the sense that it switches from 1 to 0 as soon as this button appears. However, interestingly, the dialogue can always be skipped exactly 2 frames before this value changes (that is, the dialogue can be skipped by pressing where the button will be 2 frames before it loads in). Beware that this address changes at times when in a minigame. Based on this knowledge I wrote a [UserFiles/Info/639052781204473571|Lua script] which, starting from TAStudio branch 2, searches for the next time this value switches & then writes a touch input 2 frames before said value switch.

! RNG

The 4-byte address {{0x06AFD4}} holds this game’s RNG value. As was standard for games at that time, the updateRNG function updates this value according to the formula
 newRNG = currentRNG * key + offset (mod 2⸢⸢32⸣⸣ to not overflow the address)
Here, ''key'' and ''offset'' are the hard-coded numbers: {{0x41C64E6D}} and {{0x00003039}}, respectively, which was [https://web.archive.org/web/20250917195756/https://en.wikipedia.org/wiki/Linear_congruential_generator#Parameters_in_common_use|the C99 standard at the time].

Another important thing to know about RNG is how it is initialized. I quickly found out that shortly after the game starts—more precisely, on frame 13—the RNG value is set based on the initial time of the DS⸢⸢1⸣⸣. 
When discussing the minigames in the stage by stage comments, we will get back to how & where the game uses RNG to “randomize” things, but the takeaway message for now is that there are two main ways we can manipulate the RNG: 1. change the system time in the melonDS sync settings, 2. delay starting a minigame by a number of frames.

----

((((1: What I ''think'' happens when the game initializes RNG is that it takes the number of seconds since 2000-01-01 12:00:00 AM, adds to it the fixed value 343803, and then stores that number at the RNG address. What I do know for sure is that for every second I increase the system time by, the initial RNG value increases by 1, as well.))))

! Seed finder

I tried to find the perfect seed using [UserFiles/Info/639053053739437557|this Lua script]. One problem I had to overcome was that the number of RNG calls between power-on and the first minigames was not constant. It turns out that the snow effect on the title screen is random and itself calls the advanceRNG function a random number of times, so I used another script to output [UserFiles/Info/639053054206858057|a lookup table] of the initial RNG (depending on the seed/initial time) and what the RNG is after the title screen; this table is also needed as input for the script linked above. After the title screen the number of RNG calls until minigames 1 and 2 is constant (678 times) and because I figured out ‘’how’’ the first minigame uses the RNG value to initialize my script was able to check which initial times led to ideal conditions for minigame 1.

I also tried to find a seed which is perfect for minigame 1 __and__ minigame 13, but the number of RNG advances between these minigames is not constant and also depends on the initial seed, so this script is too simple a tool to find a perfect seed.

!! Stage by stage comments

To put things into chronological order, I made a [UserFiles/Info/639052782597121466|first TAS] to familiarize myself with the inner working of the game, then I did the aforementioned language comparison, and only then did I TAS v2 where I properly optimized all the minigames. This is summarized in the [https://docs.google.com/spreadsheets/d/1_fawKDTHdTqi8VePh-Zf3zlpYr7cDH3DwvSYAiQ28uk/edit?gid=582716280#gid=582716280|comparison spreadsheet] between v1 and v2 to see by how much I improved & to ensure I didn’t lose time anywhere without realizing. The main point of the minigame comments down below is not just to list how much time I saved on each one in v2, but rather to explain how the minigames work and how to optimize them on more of a game-code level. If you just want a tl;dr: __v2 ended up 308 frames faster than v1__.

! Minigame 1: Dressing Emma

In the first minigame we have to put warm clothes on Emma so she’s ready to traverse the cold and snowy surroundings. While this minigame is similar to the [10040S#Minigame16RepairTheScarecrow|last minigame of Emma at the Farm], there are some notable differences. First, there are no alternate clothing choices: exactly 5 of the 12 options have to be selected (marked in bold), and the other 7 are wrong (because they are not suited for the cold weather):
*red cap
*__red shoes__
*white shirt
*pink jeans
*purple hat
*white shoes
*__white gloves__
*green skirt
*__light orange hat__
*shoes 2
*__red jacket__
*__brown pants__
Second, there is no specific order in that all items can be placed on Emma at any time. What is still true, however, is that the clothing menu on the left is fixed in its order, and that you maneuver through this menu using up and down arrows on the touchscreen. Also this list wraps around (so moving “Up” on the first item gets you to the last item on this list, and vice versa), and after placing a new item on the scarecrow the game jumps to the element below the current one in the list of clothes.

The minigame itself is easy to optimize: because there are no additional rules the fastest solution just goes through the list and places each item. Yet there is some rather subtle RNG at play when initializing the minigame: the initial item/place in the clothing list is determined according to
# Advance RNG twice
# max(1, ( (currentRNG >> 16) & 0x7FFF) % 5)
So this cycle shift—stored in {{0x2931BC}}—can either be 1, 2, 3, or 4. Thus the question was which of these 4 options is fastest, and the answer to this is the following table:
||seed||Min length||moves||End frame||
|1 (red shoes)|6|1, 6, 8, 10 ,11|__2191__|
|2 (red cap)|7|2, 7, 9, 11, 12|2192|
|3 (brown pants)|7|1, 3, 8, 10 ,12|2192|
|4 (red jacket)|6|1, 2, 4, 9, 11|2192|

So if {{((currentRNG >> 16) & 0x7FFF) % 5}} is 0 or 1 then we save 1 frame, which is achieved by picking a “good” seed/initial time.

! Minigame 2: Find the keys

Here you have to find a key by moving around the letters and papers on the table. The coordinates of all items can be found in the [UserFiles/Info/639052778928436942|watch file], and all I had to do was find a seed where the key hitbox overlaps with only one item (which saves 4 frames). Luckily, I did not have to reverse-engineer the initialization function here because the initial time I ended up choosing satisfied this constraint (which seems to be quite common).

! Minigame 3: Snowball fight

You have to hit Andy 10 times in a snowball fight. The only thing that’s randomized in this minigame is where Andy appears, but not when he appears: after Andy gets hit a cooldown of a fixed 120 frames (at address {{0x291B90}}) starts, and once the cooldown is 0 Andy reappears. However, snowballs are not thrown instantly which is why the throw can happen as early as when the countdown is at 24 while still hitting Andy.

! Minigame 4: Clear the window (“Is this loss?”)

We have to free a window from snow and ice so we can look inside the cottage. Notably, scraping too slowly is penalized, which mechanically seems to be enforced by the rule that the ice layer on the window is decreased only if {{|x_new-x_old|>3}} and {{|y_old-y_new|>3}}. This is why the touch input jumps around wildly, to ensure that the window is cleared as quickly as possible. Moreover, there is a counter at {{0x2916F0}} which is not the score (this seems to be computed on the fly and is not mirrored in RAM) but rather this counter seems to introduce some delay each 64th frame, and it increases by 1 for a successful cleaning frame. The reason I mention this is that, from my testing, the minigame cannot end before this counter hits 128, so this is the cap on how quickly it can end. To add some entertainment, I cleaned the window in a way that it resembles the classic [https://knowyourmeme.com/memes/loss|Loss meme].

! Minigame 5: Enter the shelter

This minigame has two phases: first Emma has to shout to try to get Grandpa Pete’s attention, and then—because that doesn’t work—she has to knock on the door a number of times. Mechanically, for the shouting part to finish the microphone input has to be detected three times, and between each of these times there’s a 35-frame cooldown (at {{0x293EF8}}). This is why it looks like I’m losing time here, but I only have a microphone input when it is needed, that is, whenever the cooldown is back to zero.

Then for the knocking part, the game keeps track of a “score” in RAM (at {{0x293EF8}}). The minigame is over once this score is 7, and between two knocks there’s a cooldown of 15 frames (at address {{0x293F18}}). Moreover, every 65 frames (at address {{0x293F00}}) the knocking counter decreases by 1 to punish knocking too slowly. This is why the counter decreases once despite me knocking on the door optimally.

! Minigame 6: Wake up gramps

Now that we’re in the cabin we have to wake up Grandpa Pete. This is done in three steps: turn up the music, knock on a pot, and blow a horn. From my testing, the order in which this is done does not matter—and other than that the optimization here is straightforward (the score addresses can be found in the watch file). Also,b etween each of the phases there is a 200-frame cooldown (at {{0x293A68}}) which blocks going to the next sub-screen. 

! Minigame 7: Catch Bernie

Here, Emma’s dog Pickles has to catch Bernie, Grandpa Pete’s Saint Bernard. There are two important RAM values here: Pickles’ speed value ({{0x07BE68}}) and a timer ({{0x294228}}). The speed is increased by dragging the styles up and down quickly enough. The logic for how and when the speed counter increases—because our goal is of course to max it out as soon as possible—is as follows:

Every 32 frames the following list is worked through:
* If speed > 1 and if the timer is divisible by 64, decrease the speed value by 1 (to punish the player not moving the stylus quickly enough). The corresponding instructions are
 ands r0, r0, #0x3F
 subeq r0, r2, #0x1
 streq r0, [r1, #+0x0]
* Next, check that there has been "enough stylus movement" since 32 frames ago (absolute difference to previous touch coordinates of 4 or more). Instructions:
 e0540002    subs r0, r4, r2, lsl #0
 42600000    rsbmi r0, r0, #0x0
 e3500004    cmp r0, #0x4
 da00000e    ble #0x40
* If the previous check passed, add 2 to the speed __unless__ the speed value is 4 or more (this upper bound is hardcoded at {{0x07BFEC}}). Instructions:
 e1560000    cmp r6, r0, lsl #0
 aa000006    bge #0x20
 ...
 e2862002    add r2, r6, #0x2
 ...
 e5812000    str r2, [r1, #+0x0]

Altogether, this explains that the speed can only increase every 32 frames, and why Pickles slows down at some point towards the end of the minigame (the speed progression there is 1 → 3 → 4 → 5 → 4 → 5 → 4, because the “add 2 step” does not apply if the speed is already 5, so only the decrease by 1 happens there).

! Minigame 8: Footprint

Here we have to match footprints with the creature they belong to. Trivial to optimize.

! Minigame 9: The maze

First the good news: there is only one correct way through this maze so I did not have to test different paths. Emma’s x-coordinate is stored at {{0x292280}}, and her y-coordinate is stored at {{0x2922BC}} (also there is a movement bool at {{0x2920FC}}). Mechanically, movement can happen every 2 frames in which case the corresponding coordinate is changed by 2. The only exception to this is walking past a sign in which case 1 frame of movement is lost no matter what you do⸢⸢2⸣⸣. To ensure that my movement is optimal I [UserFiles/Info/639053023878117536|wrote a script] to make sure that the speed position is always 2 different from what it was 2 frames ago (except for signs), which allowed me to catch 2 corners where I lost time previously.

----

((((2: Actually, this is another advantage of running the game in English; there exist languages where the textbox from walking past a sign is so long that an additional dialogue skip button appears.))))


! Minigame 10: Build a snowman

This is also simple to optimize: all we have to ensure is that the size of the snowball (at address {{0x293E94}}) increases by 4 every frame. This is a bool, so either the value increases by 4 or it stays the same which makes it easier to ensure that the input is optimal.

! Minigame 11: Find the keys (again)

This minigame is the reason for a majority of the over 60,000 re-records. Here we have to clear the snow to find our key. The key’s location is stored at {{0x2944A4}} (x-coordinate) and {{0x2944CC}} (y-coordinate). More precisely, this is the center of [UserFiles/Info/639053029002062479|a bounding box around the key] of width half-size {{0x1C}} and height half-size {{0x16}}. Unfortunately, the success computation (that is, whether enough snow has been cleared from this key hitbox) is not mirrored in RAM but instead computed “on the fly” each frame. This is bad because that means there’s no easy way to check that this value increases as much as possible on each frame. All I found was the score that has to be reached ({{0x898}}, at {{0x059810}}) as well as the instructions that determine whether the minigame moves on to phase 2:
 0205978c  cmp r1, r0
 02059790  ble #0x14
Because this didn’t give me any obvious systematic way to solve this minigame I opted for a randomized optimization approach. First, I ran two similar scripts: [UserFiles/Info/639053030572000168|one] that picks a finite number of points in that rectangle and touches the screen there for a random time, and [UserFiles/Info/639053030586391596|another one] which does the same thing but the points are symmetric around the center of the rectangle. From what I tried, the fastest initial solutions were found by running the symmetric script with 4 points.

Then in a second step I ran a basic [UserFiles/Info/639053031973604935|discrete optimization script]. The input is a known solution, and then the script varies each x-/y-coordinate and each touch time by 1 and sees if that ends the first phase faster. I should be clear that this is not a smart optimization process because 1. I only change one value at a time (so I only check the cartesian directions) and 2. I do not check whether I’m in a local or a global minimum. What this means is that the solution this script found “looks optimal” because its neighbors are all faster, but there may (and often does) exist a faster solution that is not an immediate neighbor.

That being said, I ran the first two scripts tens of thousands of times, and then optimized all sufficiently fast solutions with the discrete optimizer. So strictly speaking I don’t know whether the solution I found is the overall fastest one, but I’m fairly confident that if it’s not optimal, there’s not much more time you can save. Also something else I observed is that on a different seed (initial time) I suddenly had less lag frames between two valid touch inputs overall. There ''should'' not be any RNG at play here—perhaps this is about ''where'' on the key the screen is—so no idea what that’s about.

! Minigame 12: Identify food

Select the five foods from the fridge that Pickles tells you about. Trivial to optimize.

! Minigame 13: Marmot search

In this minigame Pickles has to find 6 marmots in a small maze, in two phases of 3 marmots. The position of the marmots is random, but only to some degree: there are 8 possible layouts which the game chooses from via
# Advance RNG
# ( (currentRNG >> 16) & 0x7FFF) % 8
More precisely, there are ten possible positions for each phase, and the random value determines the position of the first marmot (the list is 0-indexed)—then the next element of the list are the coordinates of the second marmot, and the next element corresponds to the third marmot. I optimized the minigame for each of these 8 configurations:
%%TAB Minimize tab%%
%%TAB Initial positions phase 1%%
(values in decimal)
||x-coordinate||y-coordinate||frames slower than optimal (if this is the position of the first marmot)||
|1344|2704|32|
|2560|1680|99|
|1904|0560|83|
|2624|2720|47|
|0624|0416|92|
|0624|2672|80|
|2672|1664|83|
|3440|2096|0 __(fastest)__|
|0608|2208|--|
|2256|2720|--|
%%TAB Initial positions phase 2%%
(coordinates in second list = first list -16/+16 per column)
||x-coordinate||y-coordinate||frames slower than optimal (if this is the position of the first marmot)||
|1328|2720|48|
|2544|1696|52|
|1888|0576|84|
|2608|2736|141|
|0608|0432|60|
|0608|2688|50|
|2656|1680|64|
|3424|2112|0 __(fastest)__|
|0592|2224|--|
|2240|2736|--|
%%TAB_END%%
In short: it’s fastest if the RNG value is 7 both times. Unfortunately, finding the perfect initial DS time for this is not as easy because the number of RNG calls between power-up and this minigame is not constant, this ‘’should’’ have to do with failsafes in certain minigames where the RNG gets re-rolled sometimes to ensure variety (e.g., Andy’s spawn position in minigame 3). Thus I had to resort to the second method of manipulating RNG: insert waiting frames. Using [Userfiles/info/639053045288000398|this script] I found that on the 00:03:50AM seed, the next perfect RNG is 9 additional RNG advances away. This resulted in 3 delay frames (with 3 RNG calls each) at frame 32194. While there exist frames where the RNG is called 4 times, getting to 9 additional calls in less than 3 frames is not possible.

Finally, the movement in this minigame works as follows: after 2 movement frames Pickles has to rest for 2 frames—so the optimal movement here is “move-move-wait-wait-(repeat)” which was easy enough to check.

! Minigame 14: Garbage collecting

Here we have to collect 6 trash items from nature, two of which hide behind some bushes. In principle this is easy to optimize; however, I don’t understand why frame 36109 has to be duplicated for the trash bin to register, regardless of the order (however, I didn’t find a way around this, and it’s only needed on this screen, not the other one?). Also opening the bush first thing on phase 1 is fastest because it cuts some waiting frames, but on phase 2 that doesn’t matter because you can already select the tin can on the last lag frame between screens.

! Minigames 15 & 16: Toboggan race (Qualifier & Final)

Emma’s speed is kept track at {{0x292B20}}. Starting from 0 it increases by 1 every 32 frames if there is a touch input, and the maximum speed is 4. The only way to lose speed is if you collide with one of the track’s obstacles—notably, bumping into the enemies does __not__ change your speed. Thus optimizing this minigame is simple, just make sure that the speed value gets to 4 as quickly as possible and then stays 4 until the minigame ends. As a side note, I planned to add entertainment by quickly alternating the touch input each frame; unfortunately, however, Emma does not teleport to where the touch input is, but rather her position only upgrades gradually (i.e., slowly towards where the touch input is). Hence the only way to add entertainment was by introducing some close calls and extra movement.

----

!! Final comments

! RTA timing

As per the [https://www.speedrun.com/emma_in_the_mountains?h=Any-Average&rules=game&x=vdo076vd-ylp6mdng.0q5p0rlp|rules on speedrun.com], RTA time starts "when you confirm that you want to start a new game, and ends as soon as the credits screen appears after finishing the game". For this TAS means that frame 716 is the RTA starting point, and frame 43703 is the end, resulting in an RTA time of [module:frames|amount=42987].

! Possible improvements

The 3 delay frames to get an optimal minigame 13 could be waived by finding an initial time which gives perfect RNG on minigames 1, 2, and 13. However, as mentioned before, searching for this is rather difficult because the advanceRNG function is called a varying number of times between minigames 2 and 13, and I don’t know the relation between seed and this mystery number (because I don’t know all failsafes, i.e., when and why the game re-rolls RNG in minigames).

Moreover, as also mentioned before, it seems that the amount of lag in phase 1 of minigame 11 varies depending on the seed? Changing the seed saved me 20 frames compared to version 1 of the TAS, and maybe more lag frames can be saved on yet another seed/initial time, but I’ll leave it as an exercise to whoever looks at this game in the future.

! Thanks

Shoutouts to [user:TASeditor] for the [Forum/Topics/26848|TAStudio Output Logger Framework] which was useful to ensure optimal movement in some of the minigames thanks to a nice visual output of RAM values.

! Suggested screenshot

Frame 13162:

[https://i.postimg.cc/LXJn4Vxw/Emma-in-the-Mountains-(Europe)-(En-Fr-De-Es-It-Nl-Pt)-2026-01-29-09-48-01.png]
