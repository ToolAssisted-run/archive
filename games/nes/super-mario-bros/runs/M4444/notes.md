> **Imported**
> This run was originally published at https://tasvideos.org/4444M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Mario got tired of jumping, so he thought: how do I save the princess with the fewest jumps? Along the way, Mario used all kinds of enemies, and took many underground shortcuts.

!! Game Objective

* Minimum A presses
** Fastest completion
*** Maximum entertainment

This goal can be also called "A button challenge" or "ABC". It basically turns SMB into a puzzle game.

This seemingly restrictive goal leads to the most INSANE and most complicated SMB TAS ever, with lots of nearly impossible moves and crazy glitches that you won't see in other TASes.

We ended up using only 62 A presses. It's also a completion with the fewest jumps.

[https://mega.nz/file/f1MwmBLZ#vScyPeh0I8Z6YpvoJeqSrpWFFwGFfkyzvi58NRr5Xho|HD MKV encode, 17.5 MB]

!!Background

On October 4, 2016, Kosmic first told HappyLee that he was going to make a TAS of this game with minimal A presses. On March 21, 2018, HappyLee promised to join this project (HappyLee: I just thought it would be fun and challenging. Back then I had no idea how the movie would turn out in the end).

Kosmic provided many interesting initial ideas. Some were proven feasible, such as wall jumping at the beginning of 1-2, turning a Spiny into a Koopa in 4-1, and using a Beetle near the end of 8-1.

From May 25, 2018 to July 28, 2018, HappyLee completed the first version up to 8-1.

Then, for a year and a half, this project was halted, because HappyLee found an A press save at the beginning of 4-1, after finishing 4-2. This reduced HappyLee's motivation, because 4-1 was extremely complex, so having to redo it was going to be really painful.

On February 21, 2020, Kriller37 joined us, and with him new energy came back to this project. He also shared some new ideas, like 8-2 stair clip, getting the fireflower in 1-2, and double stomping a Koopa Paratroopa in 8-4 to save an A press.

On April 2, 2020, periwinkle joined the project. Periwinkle provided help with code analysis that proved vital in manipulating enemy patterns. His efforts allowed us to get the patterns we needed for Bullet Bills, Lakitu, and Cheep Cheeps- most notably making a spreadsheet that allowed us to calculate Cheep Cheep patterns in 8-4.

Along the way we found some demo videos made by RAT926 (poleovermania on YouTube). From these we learned there was an A press save in 1-2 by using a vertical screen wrap to stomp a Koopa near the lifts. We invited RAT926 to join our project, but got no response.

On October 19, 2020, DaSmileKat joined the project. DaSmileKat helped test various hard and precise movements, saved 21 frames in 4-2, proved that the third room of 8-4 could be done in 0 A presses, and was the first to successfully save an A press in the second room 8-4.

We had tons of crazy ideas in the group chat- way more than what's shown in the final movie. Some were proven impossible, and some got obsoleted by better ideas.

!!!Glitches and Concepts

!!Gravity

Gravity adjustment is crucial to this project. Many setups and moves require certain gravity to work.

Mario's gravity is affected by his most recent jump. He keeps that gravity state until he jumps again. Bouncing on enemies and Springboards won't change gravity.

There are 4 types of gravity in SMB. From the lowest to the highest, we name them using their activation conditions.

! Floating / swimming gravity

This is the initial gravity when Mario's starting a new stage, or when coming out of a pipe. It is much lower than the other gravities, causing Mario to appear as if he is floating. It's also the gravity when Mario's swimming.

Mainly used in 8-2 after exiting the pipe, 1-1 after exiting the pipe, and 8-4 after exiting the final pipe.

! Walking gravity

You get walking gravity by jumping while walking (speed 16 to 24).

Mainly used in the first half of 8-2, the second room of 8-4, in 8-1, etc.

! Standing gravity

You get standing gravity by jumping while standing still, or with very low speed (speed 0 to 15).

Mainly used in 8-4 Cheep Cheep room, and 4-1.

! Running gravity

You get running gravity by jumping while running (speed 25 to 40).

Mainly used in the parts of 8-1 with the Buzzy Beetle.

! Koopa / Buzzy Beetle walking underground

An old SMB glitch, used many times in this TAS to save A presses, but rarely shown in other SMB TASes.

Koopa's waking time and walking direction are determined by the 21 frame rule.

! Stomping an underground enemy above the screen

Also an old SMB glitch, used in 1-2.

In SMB, vertical positions are stored with 3 levels of precision: screen, pixel, and subpixel. However, some interactions are only calculated using the pixel position, meaning that there's effectively a copy of every hitbox in every vertical screen. It is quite similar to the Parallel Universe glitch in SM64. It has other applications other than stomping an underground enemy from above the screen, such as getting a Power-up that falls down a hole by jumping above the screen.

! Turning a Spiny into a Koopa

Used in 4-1.

This happens when Mario hits a Spiny from below, while near the left side of the screen. This happens because the function which downgrades a Koopa Paratroopa to a regular Koopa is accidentally triggered when hitting an enemy from below in one of five possible X-coordinates. Depending on the exact coordinate, the Spiny can turn into a red or a green Koopa.

! Other glitches used in this TAS

Wall jump, corner clip, full flagpole glitch, wrong warp, bouncing high off enemies ("superjump").

!! Level Comments

! 1-1 - 8 A presses

Solution and inputs by HappyLee. Underground room corner clip added by DaSmileKat. Some additional tests by Kriller37 and DaSmileKat.

Getting the Mushroom doesn't cost an extra A press, which makes it the perfect spot. The underground room corner clip is only for entertainment, because 1-1 has many frames to spare. Crossing the large gap after coming out of the pipe is possible by abusing floating/swimming gravity.

! 1-2 - 4 A presses

Solution and inputs of the first part (wall jumps and running) by HappyLee, solution and inputs of the second part (Koopa, lifts, and getting Fire Flower) by Kriller37. The idea of wall jumps at the start first brought up by Kosmic. Additional Koopa tests by DaSmileKat.

The idea of using underground Koopa and stomping it through the top of the screen was found by RAT926. Kriller37 then developed the idea of getting Fire Flower with 0 A presses, saving an A press compared to the original idea of getting Fire Flower in 4-1. Stomping the Koopa from above the screen without needing to re-stomp it is very precise, since the Koopa needs to be placed in the perfect position down to half a pixel.

! 4-1 - 6 A presses

Solution and inputs mainly by HappyLee, with Kriller37's help of Lakitu manipulation. The idea of turning Spiny into Koopa first brought up by Kosmic. Special thanks to periwinkle and DaSmileKat for Lakitu code analysis.

Turning the Spiny into a Koopa takes 2 additional A presses, but it saves various jumps because Mario can use the mid-air Koopa to cross small gaps and do ground clips. A glitchless 4-1 would take 13 A presses.

! 4-2 - 7 A presses

Solution by HappyLee and DaSmileKat, inputs by HappyLee.

4-2 uses the same wrong warp glitch as the any% TAS, but with a ground clip to achieve the needed X position to save A presses.

! 8-1 - 11 A presses

Solution by HappyLee and Kosmic, inputs by HappyLee. Thanks to Kriller37 for help with testing.

8-1 requires lots of jumps, because it's long and has lots of large gaps. A glitchless 8-1 would normally take 24 A presses.

The first ground clip takes 0 A presses, but it saves 8 jumps. This ground clip can only be done in 0 A presses by having Mario slide out of the wall on the left and then clipping on the right with the highest X acceleration. The initial idea was to use a Goomba because the Koopa is too close to the pit at the time Mario arrives, which leaves no time for getting the highest X acceleration, but later HappyLee found that kicking the Koopa shell and using the shell for the ground clip was much faster.

The second ground clip has a similar principle to the first one. It saves 1 jump.

The underground Beetle is kept for the third ground clip, and for bouncing to the flagpole.

! 8-2 - 4 A presses

Solution mainly by HappyLee, inputs by HappyLee and Kriller37. Thanks to Kriller37 for great help with testing, and providing the idea of saving a jump by corner clipping through the stairs with a Bullet Bill.

As unbelievable as it is, 8-2 is actually the level with the fewest amount of A presses.
Clipping through the ground in 0 A presses has to be one of the most incredible and complicated setups in this TAS. It requires walking gravity, running speed, falling state, and a perfect Bullet Bill. The whole setup not only requires heavy Bullet Bill RNG and enemy manipulation, but also very precise subpixel values. To gather running speed and falling state before touching the Bullet Bill, Mario has to use the tiny space and maximum acceleration to quickly gain running speed, and has to bounce on at least two enemies to reach the tiny hole for the clip.

The current plan of using a Koopa flying backward is the fastest and the most elegant solution, which has evolved many times throughout this project. The original plan was to keep 2 Koopas walking underground, but then HappyLee found a way to stomp the Koopa shell immediately after kicking it, making it possible to do the whole setup with only one Koopa underground.

Heavy Bullet Bill RNG manipulation is used for 8-2, to make the required Bullets shoot in the perfect time. Each cannon has a timer which is influenced by the first 3 enemy slots, and often we need to manipulate multiple cannon timers to shoot at specific frames.

3 additional Bullets are required after the first ground clip. One for the second ground clip, one for getting out from the floor, and one for the giant leap to enter the pipe.

A few frames are wasted waiting in the underground stage, because we aimed for getting the best Bullet Bill RNG after coming out from the pipe. The RNG that caused the cannon to fire twice in a short time right after coming out from the pipe is extremely rare.

For the 2 Goombas + Bullet Bill bounce stair clip to work, an "invisible Bullet" was used to push the Beetle to load at the 4th enemy slot, so the required Bullet Bill can be shot.

The ending double Bullet Bills are not necessary, but faster than one Bullet because of full flagpole glitch.

Having done 8-2 without using any pauses, while getting all the perfect & fastest Bullets may look smooth and natural, but in fact it's unbelievably hard.

! 8-3 - 7 A presses

Solution mainly by HappyLee and DaSmileKat, inputs by DaSmileKat and HappyLee.

We choose to use 2 underground Koopas instead of Bullet Bills for the ending part, because it saves an extra A press.

The first ground clip is much more complicated than it looks, and we've developed many versions. The first versions require a Bullet Bill, to keep the Koopa at a specific height. Later we found that it's faster to do the ground clip without a Bullet Bill, and it's faster to let the second Koopa walk ahead of the first Koopa, and use both of them to get across the final giant gap.

For the final ground clip, we need walking gravity. Mario can't reach the pipe from inside the ground with a walking speed jump, so HappyLee came up with the very clever solution of bouncing on the Koopa and then doing a walljump. This lets us load the next Koopa as soon as possible as well.

We experimented with many different ideas in this level, searching for ways to save more A presses or do the level faster, and this is the best solution we found to be possible.

! 8-4 15 A presses in total

! Room 1 - 6 A presses

Inputs by HappyLee.

A simple room with no clever solution.

! Room 2 - 2 A presses

Solution by HappyLee, Kriller37 and DaSmileKat, inputs by HappyLee.

Crossing the gap between the two pipes with 2 Koopa Paratroopas with 0 jumps is the final A press save found in this TAS. It's only possible when Mario stomps the first Koopa Paratroopa twice. The idea was first raised by Kriller37 and first proved possible by DaSmileKat, and the fastest setup was found by HappyLee, which requires very precise enemy manipulation to get the two Koopa Paratroopas to leap to that exact location.

Holding A while entering the pipe saves an A press for the next room.

! Room 3 - 0 A presses

Solution by HappyLee and DaSmileKat, inputs by HappyLee. Special thanks to periwinkle for Cheep Cheep code analysis, and to DaSmileKat for actually creating [https://www.github.com/DaSmileKat/SMB-TASTools/blob/main/Cheep.cpp|a program for calculating Cheep Cheeps].

The A button was held for the entire room, so a jump is buffered at the beginning of the room, as well as a swim at the beginning of the next room. The room was cleared with no additional jumps.

This crazy idea was first proven possible by DaSmileKat. Before that, HappyLee made a version with only 1 A press, which was the jump to the tall pipe, because HappyLee thought to line up a huge wave of Cheep Cheeps at Mario's feet would be impossible.

DaSmileKat's first demo requires 13 Cheep Cheeps in total for this room. After that, HappyLee developed a much faster strategy, and reduced the total Cheep Cheeps required to 9.

DaSmileKat also developed the rising Cheep clip, which is usually faster than waiting for Cheep Cheeps to fall down. The rising Cheep clip is used to get through the tall pipe for the first time.

Mario needs to pass through the tall pipe twice. The first time only aims to get through the pipe to scroll the screen further- not only to load the pipe exit info, but also to allow 3 Cheep Cheeps to appear on the screen at the same time. The second time aims for getting on the pipe. One of the Cheep Cheeps is used only to adjust Mario's Y subpixel inside the pipe, since some Y subpixel values don't allow Mario to get 1 block higher with a Cheep bounce.

Pausing is used many times for Cheep Cheep RNG manipulation. It's theoretically possible to do this whole room without pausing, but the waiting time would be painfully long, so pausing is actually faster.

The Cheep Cheep setup used in the final version is found by HappyLee, and double checked by DaSmileKat to make sure it's completely optimized.

! Room 4 - 5 A presses

Inputs by HappyLee.

Holding A at the beginning of this room doesn't save an A press (because there's an alternative strategy by doing a corner clip), but it does save time.

Sadly, we couldn't kill any Bloopers because it would affect Firebars and cost time.

! Room 5 - 2 A presses

Inputs by Kriller37, Kosmic and HappyLee.

Mario has to wait a very long time at the start of this room for the Hammer Bro to charge towards him. We have floating/swimming gravity here, since we haven't jumped in this room yet, so bouncing on the hammer brother reaches the next pipe and saves 1 A press.

!!Authors' Comments

! HappyLee

When Kosmic and I started this project, we never could have guessed how crazy it would turn out. I'm so happy that after 3 years, we've finally finished this extremely complicated project.

This couldn't be done without our wonderful and talented teammates. Kriller37 and DaSmileKat contributed a lot to this TAS, and found many astonishing improvements. I'm so proud to be on this great team.

This is truly a complicated and nerve-wracking project. We've made 3 versions of 1-2, 4-1, and 8-2. For many times I almost wanted to quit, because having to redo 4-1 entertainment and 8-2 luck manipulation is extremely painful. But we've still made it to the end.

Special thanks to RAT926 and Mars608, who've helped with some ideas of this TAS.

By the way, just as we finished this TAS and when I was writing this submission text, I've found another improvement that's going to change a lot of later RNG. It's so frustrating to me, because we've tried so hard to create a perfect TAS, but still I could miss something, even though I was really careful and precise and have thought a lot during testing. By this stage, I've decided to save this for future improvements. Perhaps creating a perfect TAS is a myth, but at least we've tried our best, and I'm satisfied with our work.

! Kriller37

In early 2020 Kosmic showed me some of HappyLee's tests and first versions of many of the levels of this minimum A press TAS from 2018, and they absolutely blew my mind.  There were so many crazy strats I never would have thought of and included lots of tricks and glitches you rarely see in any other TASes. I was blown away by how insane the TAS was.

This sparked my interest in minimum A press TASing, and I ended up making [https://youtu.be/9ILx0DTGi5I|a minimum A press TAS of 5-1 in SMB1], featuring a wall clip through the staircase at the end of the level.  A couple days later, Happylee messaged me in discord talking about that TAS of 5-1 I had just made, and then asked me if I wanted to help him work on his minimum A press TAS.  I remember being so excited that Happylee had asked me this.

Throughout the making of this whole TAS, there were so many crazy ideas we all had, and almost every idea we had ended up working.  There were very few things we tried and tested that we couldn't pull off which was very satisfying.

I remember when me and happylee got back to 8-2 for the first time since I started helping, we were trying to figure out the best way to do that first floor clip which at the time required 2 A presses I think.  Then happylee said he had an idea to do it in 0 A presses, but wouldn't explain what his idea was because he thought it would be way too complicated to try to explain, and he was hoping his idea would not work just so we didn't have to figure out a way to pull off his insane idea.  After a little while though he did prove his idea possible, and this strategy again just blew my mind.  There is so much precision and manipulation going on in 8-2 that you can't see from just watching the TAS, it is crazy.  I still cant believe that 8-2 is possible in 4 A presses.

All the crazy RNG manipulation in 8-2 took a really really long time to complete, and there was many times throughout the making of this TAS where we would complete 8-2 and get very close to finishing the whole TAS, and then find an improvement early on in the TAS and then have to redo all of 8-2 and other levels as well.  It was really discouraging at times, but I am so glad we kept working and finished this TAS because it made the final project that much more amazing.

This is one of my first big TAS projects I have ever worked on and now completed, and I can't express how happy I am to have worked on this.  I am so incredibly thankful for HappyLee and Kosmic to have invited me to work on this project with them, and Periwinkle and DaSmileKat joining in only made the whole experience of working on this TAS even better.  This TAS means so much to me, and I am so happy to finally be able to show it to everyone.  Thank you to everyone in the SMB1 community as well, I love you all and you are all amazing people :)

! DaSmileKat

Before being invited, I had seen a video from HappyLee demonstrating the 8-2 solution. It was very clever, but I did not realize just how hard pulling such a thing off really is.

When I was invited, I saw the rest of this TAS, and it was incredible. I had some ideas of what the rest of the TAS was going to be like, but the actual TAS blew my mind. It really expanded what I knew was possible in SMB.

After starting work on it, I quickly discovered that my usual method of TASing (steadily working my way through a level and optimizing any complex movements that I face) isn't going to work here. The problems faced in this TAS are just too complicated. So I created a model of SMB's vertical physics, combined it with a brute force program, and used it to help test 1-1, 1-2, and 8-3. Of them, 8-3 was the most complicated. I had many ideas for that level, and it took a while to manually search through the program's results to see which would work.

And then 8-4 presented me with a whole new problem that I never encountered before: manipulating the random Cheeps. Periwinkle provided the Cheep-spawning mechanics, and I was able to make another brute-force tool that optimizes Cheeps given the required positions and speeds. Despite that, finding the correct Cheep positions and speeds to make the strategy work was a pain as well. But I was eventually able to finish the room, and then we found the second room A press save which messed up the RNG. The second time around, HappyLee did most of the work, while I double-checked to make sure it is perfect.

Finally, I would like to thank my teammates: HappyLee, Kriller37, Periwinkle, and Kosmic. They did a lot of hard work and had many brilliant ideas, most notably in 8-2, which looked so hard that I didn't attempt it. In addition, I was invited pretty late into the project, meaning that they had already finished many parts. I would never have been able to finish the project without them.

! Kosmic

I first started having thoughts about a TAS like this a very long time ago, in February of 2016, when I did [https://www.youtube.com/watch?v=4DZQsMFE0vU|this]. Minimal A Press TASes were pretty popular in Super Mario 64, and I started wondering what one would look like for this game.

I had some very exciting initial ideas, such as walljumping up at the start of 1-2, and especially turning a Spiny into a Koopa at the start of 4-1, so you could clip into the ground with it. I knew that I didn't have the skills to make this TAS happen, so I asked HappyLee for help.

We started working on it, and I was very impressed with HappyLee's solution for the ending of 1-1. My idea for the beginning of 1-2 turned out to be possible. Unfortunately, the warp zone at the end couldn't be loaded by doing a moonwalk to scroll the screen while on top of the world 4 warp pipe, but later we got a better solution anyway.

I asked HappyLee if a ground clip in 8-1 would be possible in a 1 block wide gap. He said he had never tried such a thing before, so he wasn't sure. Soon afterwards, he told me he had done it! I was proud to be involved in a project that was doing brand new things in Super Mario Bros. That first solution for the ground clip required a jump. I can't believe how things evolved from there- doing the 8-1 ground clip without a jump, and especially the 8-2 and 8-3 ground clips without jumps.

I knew 8-2 with its bullet bills and 8-4 with its Cheep Cheeps would be extremely complicated levels, and I'm very grateful for all the help we got from Periwinkle, Kriller37, and DaSmileKat. Doing 8-2 and 8-4 in the number of jumps we did feels like a dream come true.

I had many ideas for this TAS but wasn't skilled enough to contribute very much for the actual inputs, so I'm extremely grateful to all the other authors for making this TAS a reality.

! periwinkle

I'm honored to have the opportunity to work with HappyLee, Kosmic, Kriller37, and DaSmileKat on this project—they are all amazing members of the SMB1 community that I look up to, and I never thought I'd get to do a collaboration like this with them. Thanks to them for all of the hard work! (Sorry I couldn't do much more myself.)

While I don't consider myself a master TASer, I do like to take deep dives into the internal workings of a game and figure out how it works under the hood. Occasionally, someone will come to me asking "How does (X) work?" or "How can (Y) be manipulated?", and while I don't always have an answer right away, my approach is usually "Let me look into it and find out for you". In this instance, my involvement in this project is really the collision of two separate worlds:

Just over a year ago (in April 2020), Kriller37 posed a (rather veiled) question to some members of the SMB community: How close together could two bullet bills be shot from the same launcher? This seemed like an interesting (if seemingly academic) question to me, so I did some tests and responded with my results. Little did I know, Kriller was actually testing strategies for this TAS! While that particular idea didn't quite pan out in the end, the knowledge of exactly how the bullet timers work and how to control them precisely proved to be crucial for the final 8-2 strategy.

Meanwhile, Kriller37 and DaSmileKat had both approached me independently (and for unrelated purposes) asking about Cheep Cheep manipulations. After figuring out exactly how Cheep Cheep decide their spawn timing, speed, and position, I produced a spreadsheet model implementing this, which would later come in handy for this project as DaSmileKat wrote a brute-force program using these mechanics to help with testing and optimizing 8-4 Cheep Cheep room strategies.

Beyond all of that, there's still so much more technical prowess that went into this TAS! Big shoutouts again to the rest of the crew for all of their research and efforts making even half of what you see here a reality. This TAS is truly the craziest demonstration yet of what is possible in SMB1. Hope you all enjoy :)

! Suggested screenshot
[https://i.ibb.co/zP7wP3f/Super-Mario-Bros-JU-113.png]
