> **Imported**
> This run was originally published at https://tasvideos.org/3728M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Ever since I started making SMB TASes in 2008, SMB warpless is the project I value the most. 10 years later, here we are presenting the fifth (possibly the last?) edition of this project.

This was originally intended to be an improvement over [1962M|my SMB warpless TAS in 2012], but turns out to be a 42-frame improvement over [3665M|MrWint's warpless TAS] which was submitted during the process.

((Note: It may seem like only 41-frame movie length difference, and that's because MrWint ended the movie file 1 frame earlier than regular SMB TASes, so the real time result for MrWint's run should be 18:37.48.))

[https://www.youtube.com/watch?v=SGKmJhENyJo|Watch comparison video]
[https://mega.nz/#!wotm3LgS!iPNquNNsoUemaz7gKxirXgPaFCejy3u9fz13LdQKy04|Download HD comparison video (83.4 MB)]
[https://www.youtube.com/watch?v=cBv_a1ontOY|Watch deleted scenes (4-4, 5-1, 5-2, 5-3, 7-1, 7-3, and 8-2)]

If I traveled back in time and told myself in 2012 that my warpless run had four time improvements, but with no new glitch found, I would definitely go crazy. My last warpless run was already more optimized than anyone would think. I had tested everything I could think back then, including getting Fireflower in 1-4 and 5-1 Bullet Bill shot. However, I failed to find these four time improvements in 2012 for a reason, not because of laziness or mistakes during my tests, but simply because these new improvements all require bold imagination and optimization to a new level, a level in which exhaustive search tools are way more useful than any human TASer.

Four time improvements, four barely solvable puzzles, each saves one framerule (21 frames), with unbelievably low margin of error. Here are the four improvements and stories behind them, ordered by discovery time.

!!Faster 6-2 (by HappyLee)

The improvement that started this new project. While other three improvements were all thought of and tested (but failed) during my previous project in 2012, this is the only improvement not expected before. 

In my previous submission text in 2012, I wrote: "I'm sort of sure there's no possible improvement left in this stage". Even though I knew it's possible to do the vine teleport glitch using L+D+R years ago, I still didn't think it would come close in 6-2.

My previous run was 10 frames away from saving 21 frames. Even a brilliant TASer, MrWint, who is so good at calculation that he even analyzed the code and created exhaustive search tools to help do the job, only managed to save 2 frames. So how did I save 10 frames? 2 frames from hitting the vine and climbing up the vine faster, 3 frames from faster falling by pressing L+D+R for vine teleport, and 5 frames from better movement of kicking the shell of a Koopa Paratroopa.

At first, I only managed to save 4 frames from the vine in total, and found a faster way of kicking the shell by jumping on the pipe instead of the block, and only 2 frames from saving 21 frames. This was when I realized 6-2 could be a potential improvement. I knew the only way to get those 2 frames is to kick the shell 2 frames faster, so I tried all the combinations of stomping the Koopa Paratroopa, including manipulating its X sub position, Y position and loading time, a few of which came close, but still couldn't be any faster. Later I revisited the vine and saved another frame. I thought this might be the key, so I tried all the combinations again, yet still no chance of getting 2 more frames from the shell.

Then for the next few days I started to think saving time in 6-2 was very close but impossible, just like 1-1, since all stage has limits, and that might be the limit for 6-2. After all, I had manipulated everything possible and done manual exhaustive search. Until the day Kosmic got his SMB warpless WR. Watching his run motivated me to do more tests on 6-2, so I tried a bold idea I had in mind: to make use of 1.160 acceleration for the jump before touching the vine. Although Mario had to start jumping a few frames later to get the required acceleration, to my surprise, Mario could touch the vine at the same frame, while gaining 2 pixels to the right relative to the screen, sending Mario to the very edge of the screen after vine teleport. I immediately felt that if this puzzle were solvable, those 2 pixels had to be the key, as it could potentially give Mario more space for slowing down before hitting the Koopa. So I did manual exhaustive search again, and just when I was about to run out of combinations and all the rest failed, I finally got a combination that worked, kicking the shell 2 frames faster therefore saving 21 frames in 6-2.

!!Fast Fireflower Technique in 1-4 (by Mars608)

Just after I finished 6-2 as the first stage of this project and started teaming up with Mars608, 6-4 hit me hard. It was every SMB speedrunners' nightmare, an unavoidable Firebar in 6-4. Although the Firebar itself has no randomness, it inherits the Y speed of the first Podoboo, which is random and impossible to manipulate. The last time someone got this situation in a warpless TAS was Phil & Genisto in 2004. It was hard to accept that I had to lose the framerule I saved for a stupid Firebar due to mere luck, and ended up only saving 3 lag frames at Bowser. 

So we started looking for new improvements. We both agreed that the best chance we got was 1-4. By coincidence, Mars608 was making [3648M|"all items" TAS] and just tested faster methods of getting Fireflower in 1-4 and 2-4 but failed. I had also done similar tests quite a lot, since my last warpless TAS. In my 2012 submission text, I wrote: "I've came up with a crazy idea once, that is to get the mushroom in 1-3 instead of 1-2, and then get the fire flower in 1-4. What really shocked me was that the idea almost saved 21 frames. Although I've tried my best to manage to get that flower in a quickest way, there are still about 3 more frames to go in order to save time. And since this new route would be a bit less entertaining, I still kept the old route."

My calculation and analysis told me that the only hope of saving 21 frames in 1-4 was to get the Fireflower in running speed. One night I started seriously testing this, and told Mars608 that I got really close, only half a pixel away from getting Fireflower in running speed. Mars608 said that was closer than thought, so the next day he tested it himself and told me that he had done it, saving the framerule in 1-4. I got astonished hearing his news, and asked him if he used a different method by bumping into the left corner of the block turning the X speed immediately to zero, he said yes. Mars608 was not that happy after he found the great improvement that day, because he had to redo the "all items" TAS, again.

The key is to let the block push Mario 4 pixels to the left, gaining space to speed up. And Mario has to hit the block a frame later, otherwise he'll miss the Fireflower.

What's worth mentioning, MrWint has also come up with this improvement independently, with the help of his exhaustive search tools.

!!Faster 4-4 (by MrWint)

Just when we were continuing our project in slow pace as planned, one night Mars608 told me that someone broke the 4-4 puzzle and submitted the run ahead of us. I was shocked, because I just tested 4-4 a week before that and failed to get the one frame required to save the framerule.

The 4-4 puzzle which has haunted me for years was solved by MrWint, with his exhaustive search tools that had found the best possible movement in the wall, or more specifically, the quickest way to go through the wall and falling while getting the ideal screen position for the Firebar and for the ending.

The key to solve this puzzle, the key that I was missing, is jumping two frames earlier inside the wall, hitting the corner of the wall above instead of the bottom. I never realized it could allow Mario to land a frame earlier, nor had I seriously tried this method. Mars608 later told me that he had thought this method of jumping early to hit the corner of the wall, but didn't bother to told me before since he thought I had covered it during my tests. It's surprising that sometimes exhaustive search tools can achieve something really hard to be thought of by humans.

In addition, the margin of error is extremely low for the puzzle solve. To make it work, the movement in the wall couldn't be even a single subpixel worse, and the movement between the Firebar and the axe couldn't be half a pixel worse. Very strict sub speed value is required before passing the wall, so I'm not allowed to do anything like shooting fireballs for entertainment inside the wall.

Mars608 and I then quickly got to 6-4 to see if our run is compatible with this improvement, but unfortunately the Firebar in 6-4 got in our way, again. We were almost convinced that this would be the end result of SMB warpless TAS, and didn't sleep well that night, until the next day the final improvement was found.

So this improvement that almost destroyed our run turned out a blessing to our run. We ended up having to re-test 5-3, 7-1, 7-3 and 8-2, but it's way better than having finished the run as we originally planned before finding out this improvement.

!!Bullet Bill Glitch Ending in 5-1 (by Mars608)

Having bumped into the same unavoidable Firebar in 6-4 the second time, we realized that the only way to solve this problem is to find another improvement. But where?

Mars608 reminded me that we hadn't tested 5-1 Bullet Bill shot this time. I sighed, because I knew the chance for that last cannon to shoot is so rare that it could almost never happen, but I also knew that Mars608 was right. If an improvement had to come from anywhere, it had to be 5-1.

During the making of the previous run, I tried everything but still couldn't get even a close Bullet Bill shot, so I was almost convinced that it's impossible to get a usable 5-1 Bullet Bill shot, not to mention one that saves time. 

But this time we had more knowledge of the game mechanics. During our research, we found that the reason why the last cannon rarely fires is that the Piranha Plant and two Koopa Paratroopas near the connon often take over the first three enemy slots, so we learned how to avoid that by manipulating enemy slots.

The real tests began. Mars608 got a Bullet Bill only 42 frames slower. I found the timer responsible for cannon to fire (0x47F), and manually created a perfect Bullet Bill shot by RAM editing, which successfully saved 21 frames. So we knew all that was left is to manipulate luck to get the perfect Bullet Bill shot without RAM editing. While I was focusing on studying SMB codes for Bullet Bill mechanics, Mars608 kept testing different combinations of manipulating enemies in 5-1, and only 13 minutes later, Mars608 told me he might have got the same perfect Bullet Bill shot. I couldn't believe it, because it happened so fast that I hadn't finished studying the codes.

That was an unbelievably lucky day for Mars608, as the setup was not easy to be thought of or achieved. But the improvement that saved our project didn't come through luck, it came through imagination, perseverance, and deep knowledge of the game mechanics.

Three enemies were left alive on purpose. The first one, a Goomba, was for Koopa Paratroopa flying backwards, in order to show one fireball on three enemies. The second one, another Goomba, was necessary for Bullet Bill setup. The third one, a Koopa Troopa, was again for Koopa Paratroopa flying backwards, to hit the last Koopa Paratroopa so that Mario could perform shell stomping on the stair while waiting for the Bullet Bill.

Getting 4000 score from the two Koopas is a lot harder than it seems, giving such short time and having to jump over the Bullet Bill while bouncing.

With this special ending, we declare 12 out of 24 castle endings are now skipped in a warpless TAS, exactly half.

!!Entertainment Highlights

The entertainment of my last warpless run was already in very high standard, but this time I really wanted to do something special, something never done before. 21-frame rule has been fully exploited in this run for entertainment.

! Double Bullet Bills in 5-3

Double Bullet Bills is a very rare phenomenon in SMB. It only happens after five regular enemy slots are full so the new Bullet Bill has to occupy the sixth slot that's usually for Power-Ups. I thought I could manipulate it in 5-3, and kill the double Bullet Bills right before the ground clip.

This crazy idea went smoothly at first. I was able to get an almost perfect setup that killed almost all Bullet Bills on the way and still got double Bullet Bills ending (see [https://www.youtube.com/watch?v=cBv_a1ontOY|deleted scenes] for this amazing setup). Unfortunately, since 4-4 and 5-1 were changed, things went badly in 5-3. I kept getting very bad luck at the Bullet Bills, and in order to get the final double Bullet Bills as planned, I had to let most Bullet Bills in this stage go. The double Bullet Bills were also in much more difficult position than before, so sliding down wouldn't work, and I had to reach the perfect Y sub position and Y sub speed by jumping. The requirement is extremely strict and almost impossible to reach through mere calculation, so I had to manually search through combinations of every jump heights and every moments of killing each Bullet Bills. After long and exhausting manual exhaustive search, I found it impossible to reach the requirements of killing two Bullet Bills before the ground clip through mere jumping. Just when I was about to give up on the double Bullet Bills plan, I realized there was a missing key item in my manual exhaustive search: the lift. Banging Mario's head on that lift could change the Y speed, so I did the manual exhaustive search again, and finally found a combination that worked.

! Killing a Cheep-cheep with a Shell in 7-3

Manipulating luck in 7-3 for 100% killing and 100% coins is already hard as it is, and both Mars608 and I had worked out usable setups, but this time I told Mars608 that I want to achieve something really special, like killing a cheep-cheep with a shell. At first, Mars608 thought it couldn't be done, giving the tiny odds, but through perseverance, he succeeded. During further tests, I couldn't get a better setup myself.

! Corner clip in 2-2

First found by me in this project, but first seen in our [3648M|"all items" project]. Thanks to the whirlpool, this is just enough for the framerule, and Mario's able to grab an extra coin while doing it.

! Jumping through the maze in 7-4

After 4-4 being improved (see [https://www.youtube.com/watch?v=cBv_a1ontOY|deleted scenes] for my initial plan for 4-4), 7-4 became the only castle level with time to spare, so I used it on a new route through the maze, which just made it for the framerule. There are only 6 points where Mario's Y position is detected in the entire maze in 7-4, so beside the wall clip, I finished the maze without the fear of jumping.

! Killing Piranha Plants before Shown

A very magical glitch I found during [2977M|"maximum coins" TAS] in 8-4. There could be a one-frame window to kill a newly loaded Piranha Plant before shown on the screen, but usually only when it inherits a Goomba's squashed body.

Demonstrations of this glitch can be quite concealed, therefore I had to give up showing this glitch where it wasn't noticable enough. It was performed three times in this run: in 4-2, 5-2 and 8-1. Don't blink or you might miss the moments.

! Fireballs Hitting Invisible Objects

Similar to the glitch above. Performed in this run in 3-1 and 4-2, both hitting the vine that inherits a Goomba's squashed body. It can be also used on Bullet Bills and flagpole, but unfortunately I never got the chance in this run.

! Sliding on One Foot

After 5-1 was improved, I changed the position of the first time to slide on one foot to the beginning of 4-3. The rest two places stayed the same as the previous run, in 6-3 and 7-2.

! Coin Plan

Since there are only three times Mario gets 1-UP in this run, I took the locations seriously, which requires a coin plan. I had to intentionally give up three coins in 2-2, and choose a Goomba over a coin in 1-2 and 1-3, in order to get the first 1-UP in the beginning of 3-1. Since I could get more coins on the way, I chose the end of 5-3 to get the second 1-UP instead of 6-1, and the third 1-UP from a single coin in 8-1.

! Music Synchronization

Music synchronization happens multiple times in this run. See if you can spot them all. (Hint: might be more than you'd think.)

Moreover, there are noticeable details like the extra walljump in 1-1, kicking two shells in a row in 3-3, shooting 2 more Spinies in 4-1, ultra fast Bowser kill in 5-4, shooting 1 more Spiny in 6-1, killing all three Bullet Bills in 6-3, corner clip with a Bullet Bill in 7-1, corner clip before entering the pipe in 7-2, getting 4000 from kicking a shell in 8-1, and walljumping between two Bullet Bills in 8-2.

!!History of Special Techniques & Improvements

Since the timeline has been very long, and this might be the very last version of SMB warpless TAS, I've made a list of special techniques and improvements used in this run, to help people understand. They are ordered by discovery time, and each discovery is more incredible and harder to find than the last.

||Technique||Frames saved (compared to regular flagpole glitch or normal ending)||Founder / first achiever||Discovery time (publication year)||
|8-2 Bullet Bill glitch ending|42 (21 initially)|klmz (HappyLee who saved 42 frames first)|2008|
|3-2 ground clip by a Koopa Troopa|21 (0 initially)|HappyLee|2008 (21 frames saved in 2009)|
|2-1 ground clip by a Koopa Paratroopa flying backwards|105|HappyLee|2009|
|3-1 shell glitch ending|105|HappyLee|2009|
|3-3 ground clip by a lift|0|HappyLee|2009|
|2-3 & 7-3 Cheep-cheep glitch ground clip|84 (in each level)|HappyLee|2009 (first shown in warpless TAS in 2012)|
|8-4 better turnaround movement|1|HappyLee|2010 (first shown in warpless TAS in 2012)|
|1-3 & 5-3 ground clip by a Koopa Troopa|0|HappyLee|2012|
|7-1 shell glitch ending|42|HappyLee|2012|
|1-4 fast Fireflower technique|21|Mars608 / MrWint (multiple discovery)|2018|
|Faster 4-4|21|MrWint|2018|
|6-2 shell glitch ending / faster 6-2|84 (63 initially)|HappyLee|2009 / 2018|
|5-1 Bullet Bill glitch ending|21|Mars608|2018|

!!Mars608's Comments

I'm very happy to contribute to this masterpiece. This is my first time actually finding improvements for SMB TASes.

I couldn't offer much help for the final version of the movie. HappyLee's utmost demand for perfection put me through lots of pressure. All I could do is testing stages with randomness, like 2-3 and 8-2. Therefore, even though I got the 5-1 improvement after MrWint submitted his run, it still upset me a lot, since I had to test all random stages after that all over again. Luckily HappyLee just finished 5-2 when MrWint messed up with our project, so it didn't cause much damage to our overall efficiency. And thanks to HappyLee's slow pace, giving me time to achieve entertaining movements like stomping on a Bullet Bill to do the corner clip in 7-1, and killing a Cheep-cheep with a shell in 7-3.

!!HappyLee's Comments

I'm deeply honored to work on this project with my friend and a great TASer, Mars608. As a result, Mars608 found two out of four improvements in this run, any of which alone is quite a remarkable achievement. 

Mars608 also did tremendous work on manipulating luck in 2-3, 5-3, 6-3, 7-1, 7-3, 8-2, and 8-3, and discussing and testing details on entertainment. I used great parts of his setup, including full 7-3 setup, and altered setup of 7-1 and 8-2. I appreciate that Mars608 respected my work with slow place, and took over the hardest levels.

Our biggest thank goes to the Firebar in 6-4! Sorry I called you "damn Firebar" before.

Jokes aside, I'd really like to thank Mars608 and MrWint. This run wouldn't be the same without their great contributions to this project.

Through this project, I've learned one important thing: never lose hope, until you've really tried everything. Many things that seem impossible are just bloody difficult. However, miracles don't happen by themselves. I'm glad that many of our crazy ideas in this project have actually been worked out, so we can witness something miraculous together.
