> **Imported**
> This run was originally published at https://tasvideos.org/2977M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

__Update__: Re-recorded 8-4 with an improvement of one more coin found by [user:andrewg], along with 1-3 and 1-4 and a few minor adjustments. ([https://www.youtube.com/watch?v=9WpgYN-65Ms|Watch] or [https://mega.nz/#!VtEHAA5K!cj5QeXE-E7pCoXhaQ4myeIwQpbuApts2-PZGrQaSmcA|download the encode] for the [http://dehacked.2y.net/microstorage.php/info/770123809/SMB-MaximumCoinsTAS-CuteQt%2CTehh_083%2CHappyLee.fm2|previous version] if you like.)

One day Mario got bored defeating the old lame Bowser and rescuing the same princess so many times, so he started challenging himself by wondering: how many coins could be gotten in one life only? ---In the end, Mario and the princess lived richly and happily ever after.--- Unfortunately, in the end, the princess took away all the money he had collected for 26 minutes and 10 seconds, and was immediately kidnapped again.

Unlike other SMB TASes that basically run through the whole stages, here you can see Mario slowing down for coins very often, which presents more actions. If you're merely thinking of something like a fuller-scaled warpless run with Mario getting all the coins he can see, you'd be surprised, for it's actually NOT warpless, and Mario has skipped a few coins on his way according to the strategy.

! Goals
* To get as many coins as possible without using death (because if deaths were allowed, the number of coins would be infinite and therefore meaningless)
** To complete the game within the fastest time
*** To be as entertaining as possible


! Questions
''1. How many coins are there in SMB?''%%%
Counting each coin bricks as 16 coins (the best you can get, although not possible in every condition), and searching through every routes found on the map, we may find 1225 coins in total.

''2. How many have you got?''%%%
We've managed to get 1431 coins, in one life only.

''3. How is that possible?''%%%
We've created our own routes using loops.

!!New tricks
We've applied the most advanced SMB techniques to this run, including most of the glitches shown in previous SMB TASes. Here are something more:

! Supernatural loops
We all know in SMB there are natural loops inside mazes like 4-4, 7-4 and 8-4, but we've also found 2 places where you can travel back to where you've been before through pipes as many times as you want, one in 4-2, and the other in 6-2. The principle of it is similar to the Wrong Warp glitch in 4-2 of the [1715M|any% run], a pipe will lead you to the previous exit if the new entry point hasn't been loaded from the screen. It's likely that the designers who placed those entry points weren't aware that we can manipulate Mario's screen X position to the right side of the screen to alter the exits of some pipes, leaving a few loopholes we can use.

In 4-2, the Warp Zone information won't be loaded until the point where the screen stops scrolling, therefore, as long as the Warp Zone's text isn't shown, Mario can return to his starting point through any of those 3 empty pipes. The quickest way of moving Mario to the right side of the screen here is to continually bump into the stairs, and the previous fall to get 2 coins underneath also matters a lot as it saves a bump and about 4 frames each time. The strategy in the Warp Zone stage brings us 19 coins every 23 in-game seconds, which far surpasses the number of coins from the rest of 4-2, 4-3, 4-4, and the entire world 5 all together. And because of its high performance price ratio, it's totally worthy for Mario to skip some of the coins underground in exchange of more loops from the Coin Heaven.

In 6-2, manipulating screen X position for the loop is pretty extreme and almost impossible. We have to make the best of everything we can use to push Mario further to the right: the first 3 pipes, the left and right side of the bricks, the edge and the corner of the entrance pipe, everything. Because there are only 26 coins within a loop of 36 in-game seconds, which are much less compared to the Coin Heaven's route or the underwater route plus another secret coin room's route, we choose to focus on Coin Heaven and only loop for 8 times, which is the route with the most coins according to our calculation.

In 8-4, normally we can only get 19 coins from the maze, but with the improvement from andrewg, 1 in-game second can be saved from each time by entering a glitched pipe, bringing us one extra coin. However, performing a wall jump then the pipe glitch is about 2.2 seconds slower than running ahead in real time, so it's best to do as few times of the pipe glitch as possible to ensure "the maximum coins within the fastest time". Getting hit to save a time doing the pipe glitch will be one of our future improvements.

! The 21 frame rule of the coin brick
You can get a minimum of 2 coins and a maximum of 16 coins from a coin brick before it turns to a used block, as the trigger is based on the timer starting from the first hit instead of the number of coins. Due to the 21 frame rule from its internal timer, only in one third of the time in each 21-frame period is Mario able to hit 16 coins from a coin brick, so in this run, sometimes it's important to delay for certain frames before hitting the coin brick to get the first hit at the right time.

There are 2 coin bricks in 1-2 that are higher than the rest. To get the maximum number of coins from those two, Mario has to keep hitting them with the maximum jumping speed by hitting the edge of a solid object or the screen at the running speed first, jump the instance he touches the floor, and release and never push direction keys until the last jump. Even so, Mario's only able to get no more than 12 coins from each of them due to their height.

! Keep moving upward after breaking a brick
It can sometimes be very significant and useful when hitting the corner of a brick, like in the secret coin room in 3-1.

! Fireballs hitting invisible objects
Probably due to the ghost of the penultimate Goomba in 1-1, an invisible object coming out of thin air right before the flagpole can be hit multiple times using fireballs. The principle of this odd glitch still needs further studies.

! Shooting a new loaded enemy from the left side of the screen
One of the most unusual glitches I've met in SMB. It only happened once in 8-4 right after getting the 1425th coin, when Mario shot the exact fireball on the exact position at the exact time, so rare that I haven't been able to reproduce it ever since. The fireball indeed hits the Piranha plant the moment it's loaded (but not shown on the screen yet) from a strange universe, but up until today I haven't figured out how it works, or whether it can be applied to other spots with other types of enemies. If it can, this glitch could be quite useful in SMB TASes once we learn how to reproduce it.

And some minor glitches mentioned below, such as going through the wall on a moving lift (in 6-2); axe not disappearing (in 1-4); hitting the star inside the wall (in 1-2); fireballs and enemies disappearing in the maze (in 8-4); completing the stage on 000 (in 4-2, 6-2, 8-4, technically not a glitch though), etc.

!!Spoiler Alert! (Stage by stage comments)
||Level||Number of coins gotten||Comments & highlights||
|1-1|26|Grabbing the mushroom and the flower. The upper route is chosen because it has 3 more coins than the underground route. To perform kicking a shell and defeating all the Goombas, Mario has to shoot one of the Goombas previously, otherwise it will cause unavoidable lag frames. "Fireballs hitting invisible objects" is demonstrated near the flagpole.|
|1-2|78|Turning around twice to keep the jumping speed for getting 12 coins from each coin bricks. During his way collecting coins, Mario grabs an additional star in the wall just for fun, as it happens not to waste any time thanks to the 21 frame rule. The ending time is manipulated in order to get 1 firework.|
|1-3|23|Jumping through a lift, and entering the floor using a Koopa Troopa.|
|1-4|6|At the end of the stage, the "axe not disappearing" glitch is demonstrated. Usually it costs time doing so, but luckily not here because of the 21 frame rule.|
|2-1|76|During the time Mario kicks a shell again, don't miss the moment where a Goomba is killed twice. After that, Mario manipulates screen X position to get to the Coin Heaven through the pipe instead of the vine, which saves about 4.2 seconds.|
|2-2|28|Playing with the music at the start, although CuteQt himself admits that the result hasn't matched his expectation. Going through the wall twice to get the 6 coins inside the hole faster.|
|2-3|35|100% killing, and the Cheep-cheep glitch for a special ending (saving 84 frames).|
|2-4|6|Jumping through the block to get the 6 coins faster.|
|3-1|83|The solution under the secret coin room is really impressive. Shooting fireballs backwards after transporting from the vine. Using the shell glitch like in [1962M|HappyLee's warpless run] to save time.|
|3-2|23|Playing with the music at the beginning in a really long distance, with a few enemies left alive to produce such effect. Kicking the shell over and over during the coin brick for fun.|
|3-3|22|"Ice skating" at the beginning, and entering the floor with the help of the lift at the end.|
|3-4|5|The most ordinary stage. Mario doesn't even have to slow down.|
|4-1|62|Mario has to make his way to the right side of the screen in order to get 3 additional coins before entering the pipe to the secret coin room. The Lakitu is shot finally, but according to CuteQt, he has no choice but to let some Spinies go.|
|4-2|330|Mario skips 1 coin brick, 2 ? blocks, and 1 hidden coin block on his way, only to get more from the loop. The Warp Zone stage is played 16 times in total, and then Mario warps to 6-1 right at the time of 0, just like the plan.|
|6-1|45|Killing Spinies in various ways.|
|6-2|304|Playing with a shell while hitting the coin brick at the beginning. Mario returns to the secret coin room 8 times using the glitchy way, performing walljumps and all sorts of wall-breaking techniques, and also going through a solid cloud with the lift in the following Coin Heaven. The ending time is precisely manipulated to 0 making the whole thing more exciting.|
|6-3|24|"Ice skating" at the beginning, using the Bullet Bill to get some coins faster, same as [1962M|HappyLee's warpless run]. With few enemies around, Mario shoots some lifts for fun.|
|6-4|6|Very good luck from Bowser, and no lag makes performing walljump on the axe while shooting Bowser more comfortable.|
|7-1|39|The Bullet Bill at the very start successfully cooperates with the music, but things didn't work out well when it comes to the final Bullet Bill, as no matter how hard we tried, we simply couldn't get the perfect Bullet Bill [1349M|like this] as we planned, so to not lose time, we have to take the normal flagpole glitch ending instead.|
|7-2|28|Going through the wall twice just like in 2-2, only more Cheep-cheeps are killed inside the wall.|
|7-3|35|100% killing, and by coincidence, 2 Cheep-cheeps jumping out of the water makes the final Cheep-cheep glitch look more stunning.|
|7-4|0|The only level in this run without a single coin. However, Mario runs like crazy through the boring maze. Bowser is killed so instantly even before he could feel any pain.|
|8-1|65|A performance of fireballs, making this stage a perfect shooting range. The second coin brick takes quite more skills than it seems.|
|8-2|46|Manipulating luck to get the ideal Bullet Bills that won't cost time during the coin brick, and a perfect ending using Bullet Bill glitch.
|8-3|16|Since there are plenty time to waste to avoid 3 fireworks, Mario ice skates at the beginning, and kicks a shell towards the Hammer Bros.|
|8-4|20|Mario can get only 1 coin from the loop at a time, so he tries to change the way of killing enemies each time to make the long road less boring. A Piranha plant just loaded is mysteriously shot from the left side of the screen after getting the 1425th coin (see "new tricks" above). The final Bowser is killed, because his position is just perfect, which basically labels "shoot me" on his face.|
||Total||1431||-||

! CuteQt's comments (translated)
Well, it's my first time making such an accurate TAS, and I've learnt so much through practice.

Tehh_083 mainly made through the first 3 worlds for the first version, which was the hardest time, because there weren't any comparison videos or anything to rely on except ourselves. And then Tehh_083 has disappeared ever since we finished remaking world 2.

I took part in the project since he finished 4-1 of his first version, and I remade the whole run once again from the beginning, for the latest discovery of getting 12 coins from each two coin bricks in 1-2 along with some minor improvements.

Later on, I finished some ordinary levels and did some simple calculation in 4-2 and 6-2. HappyLee offered some crucial assistance like the shortcut in 2-1, getting 3 more coins in 4-1, and the loop in 4-2 very early. I'd say he's not slow on efficiency, while the quality of his work is astonishing. Running like crazy while shooing fireballs: insane; manipulating screen X position in 4-2 and Bullet Bills in 8-2: incredible; the entertainment in 1-1 and 1-2 after his improvements: totally awesome.

By the way, thanks to KFCMario for putting forward the 21 frame rule of the coin brick first, his warped version of the maximum coins TAS, his previous idea of getting one extra coin from 4-1, and some early assistance.

! HappyLee's comments
At first I thought that a goal like "maximum coins" seemed greedy and pointless, but then CuteQt and Tehh_083 have proved me wrong with their excellent WIPs. Since I discovered the crazy loops in 4-2 and 6-2, I've become really fond of this project.

I officially joined the project since world 6, although previously I already had my inputs in the hardest parts of 2-1 and 4-2, and helped to come up with the strategy for 4-1. In this run, I mainly finished 6-2, 6-4's boss fight, 7-3, 7-4, 8-2 (after the springboard), 8-3 and 8-4, and after that I also redid 1-1, 1-2, 2-1's Coin Heaven for the entertainment, and made a few adjustments in 2-2, 6-3 and 8-1.

Tehh_083 did a splendid job on making and improving the first two worlds, but ever since Tehh_083 mysteriously disappeared after world 2, the pressure and the difficulty have doubled on CuteQt. This run couldn't be done without CuteQt's persistence through 3 years, yet he still argues with me seriously that his name shouldn't be placed at the top of the list. His pursuit of perfection, and his talent of mastering fireballs and playing around with enemies has really blown my mind. Together, we worked day and night (day for him, night for me), and completed world 6 to 8 within 4 weeks.

We're both pretty satisfied with this run, even though it might not be perfect, for we know that there's always room for future improvements. Thanks to people from our forum for providing the idea of making an SMB "maximum coins" TAS, and I hope you enjoy our work as well.

Edit: Special thanks to [user:andrewg] for bringing us the pipe glitch in 8-4 of which we never thought before, making 8-4 a lot crazier. Just when I was about to submit the improvement we've been working on for days, I found a more complicated strategy in 8-4 that involves getting hurt, which would save about 1.5 second. Unfortunately I'm exhausted improving 8-4 these days, and probably not going to redo the whole 8-4 again for a while, so I guess I'll leave it to our future improvements.

! Suggested screenshot
[http://i292.photobucket.com/albums/mm22/HappyLee12/MaximumCoinsTAS3_zps7cxp8bcs.png] ''Guess where all the coins have gone?''
