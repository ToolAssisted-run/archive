> **Imported**
> This run was originally published at https://tasvideos.org/4637M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! F-Zero All Leagues (Master Difficulty)

I am very proud to present the very first Full TAS of F-Zero on Master Difficulty. This has been a project that took slightly over 5 years to see finished. It has come with much pain and suffering. Quite literally, my blood, sweat, and tears have been tried tremendously.

This TASing en devour started with asking a question, back in January 2017..."Why hasn't this game been TASed?". Now I know why. After observing a number of attempts, from others, I've noticed dead silence after a few months. For me, it was too exhausting to reach of level of optimization that would satisfy me. My original efforts were hard enough on me that my eyesight and sleep were affected dramatically. After my Queen League submission, I found myself too exhausted to continue on, and walked away. It was at that point, i realized that this game MUST be BOTed...yet, I had no knowledge on where to start or how to accomplish it.

After a year of BOTing Tetris 2, my experience had increased enough that I was finally able to attempt a BOT for F-Zero. It was when Aran;Jaeger approached me about a community member stating "We need more F-Zero TASing", was I able to step back into this and finally understand how to put a theory to the test. The result... A BOT was created.

For the past 15 months...F-zero has dominated my attention. The results...complete destruction of all know times produced by my previous attempts, and that of two amazing TASers...Inichi, and Miki Higashi (IE IDK). Both of these TASers were incredibly hard to beat. I knew up front, that beating them would require the use of a BOT...which ended up making a very successful run.

Here is the BOT in action. This recording was done with display on, so that you can see what is occurring. The actual speed of BOTing reached over 300fps. Also, part of this video shows the TASStudio manager and the inputs that are changing. The Lua script console starts to show improvements near the end of this clip.
[module:youtube|v=r7wcI-3v74Y]

!!! Two Encodes

When I came back, to complete what I started, I made a hard decision over RTA and IGT runs. Because I can't leave behind any frames, and the fact that F-zero League racers use 2nd place to skip cut-scene times, I continue my same strategy of coming in 2nd place to reduce the cut-scene time between tracks.
So, instead of giving some viewers the same disappointment, I decided to surprise both types of viewers with two encodes. One that reflects the true run, from submitted inputs (RTA), and another that comprises of spliced, 1st place segments (which was put together in a frame perfect movie). Even thought the IGT version is not real, it is my hopes that it will satisfy the curiosity of seeing the best track times possible.
Here is an encode that has been "Spliced" for IGT 1st place finishes. It is based off of the submitted inputs, when ran all the way through for 1st place. Because of this, the TAS cannot be realigned to have an IGT version without redoing the entire inputs again. 

[module:youtube|v=7kPKRut5uX0]

!!! World Record By EdwardFourZero
https://www.speedrun.com/fzsnes/run/pm3o8r6m

!! Terminology
* Golden Fox - The fastest accelerating vehicle on the circuit.
* Blue Falcon - The second fastest accelerating vehicle on the circuit, with a little more top speed than the Golden Fox.
* Wild Goose - The third fastest accelerating vehicle, with higher top speed than the blue Falcon.
* Fire Stingray (Car of Choice for this TAS) - The slowest accelerating vehicle, with the highest top speed of the available cars for racing.
* Brown Cars - Also known as CPU RNG obstacles. These cars can be of massive aggravation and costly of lap times. Usually, they cost anywhere from 1/4 of frame to 2 frames to avoid them. In one situation, 6 frames were lost... but recovered by reTASing earlier parts to avoid RNG for that terrible situation.
* Super Jet - On the completion of each lap, the driver is reward a super jet, which when used...moves the car from its capped speed to 562 as the highest. It cycles from 562 to 478 for 4.25 seconds.
* Brake Tapping - Refers to a technique, for when super jets are used, to gain greater speed by manually cycling the speed back up to 562 as fast as possible. This is done by braking at a certain speed to eliminate the lower part of the super jet speed cycle so that your car is running at speeds on the top end more. The result, is about 4 frames cut per lap.
* Blast Tapping - Refers to when the accelerator is released to allow your car to make tighter turns. This coincides with a slippage value and prevents it from reaching the maximum value. Basically, it keeps your car stuck to the ground and prevents you from loosing traction and thus keeping your speed up.
* Wall Tapping - This is a term that I came up with, that is used to help cycle the super jet speed correctly so that the timing is fixed to maximize the use for when traversing dirt of borders.
* Practice Mode - The game offers a player the ability to race a single track. This usually is accompanied by the selection of an opponent. The choice of your opponent can determine greater speeds...in most cases, Golden Fox is used to get the highest speed boost and used most often.
* Grand Prix Mode - The game is normally played with through one of three leagues...known as Knight, Queen, and King leagues. This TAS features the first league.

!! Tools Used
* Lua Script: 
	The main BOT (responsible to automating the testing inputs and their affect on any distance gained)
	HUD, for determining position and progress
	Frame-by-Frame data builder for use with the HUD
* RAM Watch (The need for super jet timing, pixel/sub-pixel placement, speed changes, and HP)
* Bizhawk 2.6.1

!! Master Difficulty
This TAS requires the unlocking of Master, which means that all leagues must be beaten on Expert mode. I have uploaded an SRAM verification run to do so.
[https://tasvideos.org/UserFiles/Info/637836643457140766]


!!! Track/Lap Improvements

!! Knight League
[https://cdn.discordapp.com/attachments/152498278485852160/957150679380664410/unknown.png]

!! Queen League
[https://cdn.discordapp.com/attachments/152498278485852160/957150742509146132/unknown.png]

!! King League
[https://cdn.discordapp.com/attachments/152498278485852160/957150776608833536/unknown.png]


!!! Special Thanks

There were a number of people that were along for the ride and I appreciate their enthusiasm over the report. Thank you to the following for sharing my excitement:
* DrD2k9
* Aran;Jaeger
* E-Dragon
* Worsel
* Sniq
* Yazzo
* EdwardFourZero

Also, a number of people were scrambling around to figure out how to get a good encode to load up on YouTube. Thanks to the follow for your experimenting and help.
* DrD2k9
* Sniq
* Worsel

!!! Suggested Screenshot
* Frame 80171
