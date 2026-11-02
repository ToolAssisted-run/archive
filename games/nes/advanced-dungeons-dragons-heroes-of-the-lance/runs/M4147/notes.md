> **Imported**
> This run was originally published at https://tasvideos.org/4147M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

I first became interested in this game because the [2181M|currently published movie] by Randil is one of the oldest movies on the site that hasn't been obsoleted. I ended up liking the game because it has similarities to the difficult and awkward gameplay of Ghosts n Goblins, and it requires complete game pre-planning like Zelda II. The beauty of this movie is not really in the gameplay; it’s in the meticulous architectural design—I plotted every screen as part of the big picture before the run began so that the whole plan comes together perfectly at the end. The result is 1504 frames / [module:frames|amount=1504] seconds faster than the current movie.

The published movie is not officially one of [Forum/Topics/16687|The First 500] because it was rejected and sat in cold storage for seven years before it was reevaluated for inclusion in the Vault. But Randil submitted it on 14 Dec 2005, and so it would have had a publication number in the 400s if it had been published back then. 

The hardware speedrun record is listed as [https://www.speedrun.com/adndhotl/run/y95oxpkz|5:17.19] by Vriaeliss. But hardware speedrun timing goes from when the player gains control of Goldmoon to when the player loses control of her. Thus, converting to TAS timing requires adding about 62 seconds total. And so the speedrun time is about 6:19 after conversion to TAS timing. There is also a history of rejected TASes for comparison. The rejected TASes show that although the game is fairly short, optimization is very difficult. Here’s a summary table:

||Player||Type||Date||Speedrun timing||TAS timing||
|SeNu|TAS|10 Dec 2005|6:25|7:27|
|spoonshiro|TAS|10 Feb 2005|6:07|7:09|
|Vriaeliss|Speedrun|22 May 2019|5:17|6:19|
|Randil|TAS|14 Dec 2005|5:15|6:17|
|__Arc__|__TAS__|__17 Mar 2020__|__4:50__|__5:52__|

When you, the viewer, are evaluating the technical merits of this movie, you need to understand that even with manipulation, it is rare for Goldmoon to run straight through an enemy. Yes, ideally, every enemy would cause no stoppage, no knockback, and no HP loss. It happens sometimes. But against most enemies, it’s impossible regardless of how much manipulation there is. 

Goldmoon is the front character at the start of the game, and she must be the front character on the final screen. And so the most important question in planning the run is whether it’s ever necessary to switch to another character. Everyone who has attempted this game erstwhile believed that it was necessary to use at least one other character to absorb some of the damage along the way. But I created a plan that lets me use Goldmoon throughout the entire run—and I have to open the menu only once in the movie (not counting the required menu at the end).

While running, a character moves 2 pixels every 2.5 frames. While walking, a character moves 2 pixels every 5.33 frames. You can see Goldmoon’s HP at memory address 00BC.

The route consists of 31 screens. I took notes.

||Number||Screen||Randil HP||Arc HP||Total Frames Ahead||Notes||
|1|1-1|19 (Goldmoon)|19 (Goldmoon)|10|Earlier menu inputs saved time. No enemies.|
|2|1-2|18|16|34|Went left instead of right, causing the faster time. Manipulated the warrior by jumping into him. Stopped for 12 frames by a double attack, knocked back 8 pixels, -3 HP.|
|3|1-3|14|14|29|Different room, a little longer than the one Randil used. Manipulated the warrior with staggered running. Stopped for 12 frames by attack, knocked back 4 pixels, -2 HP.|
|4|1-4|10|14|191|A much shorter room than Randil used, causing the huge time save. Attacking the dwarf takes 36 frames, no HP lost. The equally fast alternative is that, after manipulation by staggering, the dwarf would have kicked Goldmoon twice (24 frames + knocked back 8 pixels, -2 HP).|
|5|1-5|10|12|184|Got shot in the chest by the bozak causing stoppage for 12 frames, no knockback, -2 HP. Angle of the projectile makes ducking useless.|
|6|1-6|10|12|184|No enemies.|
|7|2-1|10|12|181|Manipulated the troll with staggered running. Didn't get hit. Randil had a perfectly clean run through the room without manipulation (very lucky).|
|8|2-2|10|12|181|This long corridor contains an optional waterfall that restores HP. I didn't use it because it takes about four seconds. If Goldmoon doesn't avoid stab damage from the first baaz, then the second baaz will also deal stab damage before Goldmoon teleports out of the room.|
|9|2-3|8|10|173|Used staggered running (time manipulation) to get the spectral minion to fire only one projectile. Otherwise it would fire two shots, which would cause more HP loss and cost even more time. Randil had better luck on this screen.|
|10|2-4|8|8|418|Used a minor stagger to get a standard -2 HP hit from the wraith. Randil needed to go into the menu to use the Protection from Evil spell. Randil also mistakenly went left instead of right.|
|11|2-5|8|8|509|Since I entered this room from the right side, there are no enemies. Randil entered from the left side, and so he spent time dodging two enemies.|
|12|2-6|8|8|508|I lose 3 frames because Goldmoon has to turn around to move right, but I gain 2 frames maintaining forward movement before ducking the bozak's shot.|
|13|2-7|4 / 36 (Caramon)|7|772|I didn't change characters on this screen, whereas Randil switched from Goldmoon to Caramon. I took a hit worth 12 stoppage frames, 4 pixels knockback, -1 HP from the warrior. The full stop that avoids the wraith's attack is the fastest method.|
|14|2-8|36|7|680|The Hell Gauntlet. This screen is the major bottleneck of the run. I have to open the menu to use Protection from Evil to avoid damage. While the menu is open, I also activate the Hold Person spell, which signals a revolutionary shift in thinking from all previous runs. The small extra time used in the menu here will become extremely worthwhile on Floor 3. On the final flame, I have to choose whether I prefer 8 frames or 2 HP. I'll gain back more time later in the run by choosing the 2 HP.|
|15|2-9|32|7|680|Protection from Evil is still active, and so I jump undamaged through the otherwise troublesome baaz and black dragon.|
|16|2-10|32|7|680|The Pits. This screen is terrifying to real-time runners, but it's trivial in a TAS.|
|17|3-1|32|7|683|Floor 3 appears to be a complex maze, but in reality it's completely linear. Any direction that I don't take or door that I don't enter is a dead end. Nothing happens on the first screen. Randil was 3 frames slower because he jumped over the spider.|
|18|3-2|28|7|856|I saved 173 frames in this room entirely because of the earlier activation of the Hold Person spell. It takes 39 frames to cast it, but it allows Goldmoon to bypass any enemy. The last spell selected remains active until changed, and so Goldmoon will be able to keep using Hold Person until the end. Note that on screens that go left-to-right, it is impossible to get through black dragons with only manipulation and/or damage boosts. The only options are killing them or using a spell.|
|19|3-3|28|7|856|There's a spider on this screen, but nothing happens.|
|20|3-4|28|7|856|The troll is guarding a dead end.|
|21|3-5|28|7|856|The spectral minion is just hanging out.|
|22|3-6	|25 / 3|6|864|I used both a stagger and a jump to get the best possible result against the human warrior. 12 frames of stoppage, 4 pixels knockback, -1 HP. Randil jumped too much and took more damage.|
|23|3-7|21 / 1|6|861|This troll delivers a nasty triple hit with major knockback if Goldmoon tries to run straight through. The alternative of attacking it ended up only three frames slower than Randil's version. Preserving Goldmoon's health is essential.|
|24|3-8|21|6|861|The first door is the correct door.|
|25|3-9|21 / 6|6|1091|230 frames saved on the second black dragon screen. The Hold Person spell once again is a huge timesaver. Randil spent a lot of time in menus.|
|26|3-10|21|6|1091|This screen has another friendly spectral minion.|
|27|3-11|21|5|1235|I call this screen The Real Spider. You can walk through any other spider without problems. But this one is very annoying. You can't jump over it. You can't attack it. It annoyed Randil so much that he used Protection from Evil to get through it. I use the Hold Person spell. But I lost a little time on the human warrior, because I didn't get a clean run through like Randil did.|
|28|3-12|21|5|1235|Most spiders just want to dance.|
|29|3-13|19|5|1232|I can't spare health against this troll, but attacking him loses only 3 frames compared to Randil's double knockback method.|
|30|3-14|13 / 5|2|1242|Earlier I had to choose between 8 frames or 2 HP. Here, on the very last regular enemy of the game, the decision to go with 2 HP pays off. Goldmoon's spare HP allows her to run through the last troll rather than attack it. This method is 10 frames faster. Thus, the earlier sacrifice of 8 frames gained 2 frames in the end. Another factor that adds to the impressiveness is that I avoid triggering Riverwind's protection. Typically, when Goldmoon reaches 4 HP, Riverwind automatically takes her place to protect her. But the initial hit from the troll skipped over the 4 HP mark.|
|31|4-1|5 (Goldmoon)|2|1481|Goldmoon has to be the front character on the final screen because she has to throw her Blue Crystal Staff at Khisanth. Randil loses time in menus switching back from Caramon to Goldmoon. To complete the game, Goldmoon has to pick up the Disks of Mishakal so that the ancient traditions can be revived.|
|End|End|5|2|1504|Randil's final menu inputs are lazy.|

!! Credits
Randil’s movie made it easier to plan my movie.

!! Suggested Screenshot
[https://i.imgur.com/hEX0mdr.png]
