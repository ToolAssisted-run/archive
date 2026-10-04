> **Imported**
> This run was originally published at https://tasvideos.org/1725M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Made on FCEUX 2.1.4a

Should allow L+R/U+D

* takes damage to save time
* abuses programming errors in the game
* arguably, one case of speed/entertainment tradeoff
* crushes a terminator

----

__About the game and the run:__

The Terminator is the unacclaimed license-based game of the similarly titled movie. It is often said to have an outrageous difficulty (with no continues) and bad sound, among other issues. You probably know this game by now thanks to AVGN and the rejected TAS Glitchman did of this game a few months back. This is a 2066 frames (a bit under 36 secs) improvement in comparison, thanks to new glitches and techniques.

You start the game in the decadent future, playing as Reese. You have gun and some grenades to help you survive against the endlessly spawning baddies. Once you get far enough in the game and travel to the past, you lose all your lethal weaponry and suddenly learn to punch and kick in its stead. Honestly, the world of the past is no better than the hopeless hellhole of the future, with everything set out to kill you, from stray dogs to policemen to mere drops of water falling from the ceiling. After roaming for a while, there are two driving stages and, finally, the factory wherein Terminator gets what is coming to 'im.

You could say that the game beckoned me to play it, somehow. I became intrigued the moment I saw it, and once having started playing it, it didn't take me long to find time saving tricks. Also, I don't think this game is that bad. It was fun to TAS, with one glaring exception of a level which I'll get back to later... The music is strangely minimal. Most level music is one very simple loop, which after maybe about 10 seconds gets another minimal layer on top of it. At best it gives the game a dignified, even slightly surreal effect (as is the case with the music in f.e. screen 5). Overall the game has its hostile, barren beauty... like extreme metal?


__Tricks & techniques:__

Reese has a slow landing animation, making him stop for about 11 frames each time he lands. This can be avoided by punching or kicking in air at the right time, or throwing items (optimally at the last possible frame, including grenades - something Glitchman overlooked). Cancelling a landing still causes you a small sub-pixel loss, apparently.

Doing a jump without speed gives you a "high jump" in which Reese jumps noticeably higher than normal, but this jump is preceded by about 17 frames of preparation. Sometimes it's required, but for the most part it's better to do without it.

Another new trick: hitting an enemy while landing from a jump allows you to skip the landing animation. This is used several times in the future levels, where you still don't know how to punch/kick to avoid the landing delay. It's basically as if you get a freebie jump. In the last future room, there is an unique glitch in which landing in a protruding spike causes Reese to do his high jump while strangely sliding in air - this is a phenomena I didn't notice anywhere else in the game, but which managed to luckily save time regardless.

Reese has an unique talent with ladders, being able to climb out of them and through collision. Used with U+D. This is another new technique and allows some very nice skips in the run. Doing this may also cause the graphics of the next room glitch up, for some reason.

You can manipulate enemies away during platforming sections by turning away for a frame. In some cases I was able to win time by not manipulating an enemy away and instead jumping over him, trading a full frame loss for a sub-pixel loss. However, the presence of enemies on the screen causes "invisible lag", but it's not a big deal here compared to the driving stages.

The driving sections are very tricky to optimize, and my Achille's heel, as far as this run is concerned. It seems that the presence of The Terminator on the screen causes noticeable "invisible lag" which will ruin your record time without you even noticing, not to mention your car's steering capability simultaneously turns into strawberry jam. You will not make those tight corners if he is around. It's hell manipulating him to stay out of your way while at the same time trying to keep him as much as possible outside the screen per se. It's almost as if he was programmed to specifically get in your way at worst possible times. You can tell he has a certain "rhythm" to his antics which you can only partially manipulate. The Terminator's actions may change depending on when and how you ram him, when you shoot bullets (missed bullets also affect him, making him sink farther away down the screen than usual) and even wild turns can affect him.

In both driving sections, ramming into Terminator at a certain angle at the start gives you a speed boost which saves some frames.

I accidentally noticed a glitch in the driving section which made the Terminator become stuck for (from quick tests) about 1800 frames at best. However, I could not manipulate this to happen in this run... for those interested, there is a .fm2 of this occurence in the auxiliary topic for this game in the NES section.

Other small tricks are yet to be mentioned, but will be revealed at the next section.


__Stage-by-stage:__

Screen 1:
Right from the start, I aggressively begin lobbing grenades to hasten my movement. Nothing special in this room. Total of 24 frames ahead.


Screen 2:
At some point, I re-made these starting sections to save some more grenades for later. I lobbed them downright overenthusiastically here! Nothing too weird here either, but I jump one time less during the room, saving time. Total of 46 frames ahead.


Screen 3:
Room becomes magically skipped. Total of 1139 frames ahead - the single biggest time save in the run.


Screen 4:
This room has glitched graphics momentarily because of my reckless skip mere seconds ago. I go by a new route in order to manage with less jumps and even pick up an additional 'nade on the way. Total of 1151 frames ahead.


Screen 5:
Before the moving platforms, I jump on top of the enemy's head and moonwalk briefly in a pale Super Mario imitation. Don't worry, it didn't waste time. By ducking at the right frame before a bullet hits you (it seems to vary a bit), you minimize the negative momentum Reese suffers and you are able to continue onward a lot sooner. In the downhill part, I again utilize the jumping technique in which I scathe enemies when landing, allowing freebie jumps (this time for profit and not just fun). A somewhat different timing causes me to retain more of my health than Glitchman did, as if it mattered. Total of 1220 frames ahead.


Boss:
I found out the hard way that this destroyer plane can come from two possible directions, from east or west. Glitchman had east, as I too had on my initial attempt. But after re-doing screen 5, it had changed into this. Perhaps a slight setback, because I lose some frames here. Total of 1211 frames ahead.


Another boss:
Here, I used a new technique. Pressing L for some frames between each shot allows your shots to reach the boss faster, consequently increasing your pace of fire. It also looks funnier to have the boss jiggle like that. Total of 1215 frames ahead.


Screen 6:
Autofiring with your weapon makes Reese slide. Had to take advantage of this trick before losing the gun in the next screen... I lob rest of my 'nades and suffer a protruding spike in the rear end which allows Reese to get to the exit with one jump less than in Glitchman's run. Total of 1296 frames ahead.


Screen 7:
When applicable, I allow enemies to spawn and just jump over them. Perhaps a faster route is still possible because overall I could jump less. At the end, more trickery with ladders. Total of 1457 frames ahead.


Screen 8:
Dogs, lots of 'em. Allowing them to spawn and nicely jumping over them saves a fraction of time. Total of 1458 frames ahead. By the way, isn't it strange that this corridor and this corridor only has this very oppressive music in it?


Screen 9:
Same. 1459 frames ahead.


Screen 10:
I spy with my little eye... a ladder! Yes, more rather sizeable skips. Total of 1737 frames ahead.


Screen 11:
How bizarre! Somehow, I saved some more frames here. Total of 1742 frames ahead.


Screen 12:
The last ladder skip of the game. The jump which scathes against the police was carefully manipulated to waste as little time as possible. Total of 2100 frames ahead.


Screen 13:
The last dog we jump over in this game. Still a total of 2100 frames ahead.


Driving section 1:
The nightmare begins. First driving section is not too bad, being pretty short and not too hard to manipulate. But I did have to re-do it three times. After my first attempt, I realized I had lost 50 frames out of nowhere! It's so devious with these levels. The green car which comes from the side does the most damage to you, and if you're not careful, you will lose all your health in this level. Well, all things considered I didn't do that bad, but still losing four frames. Total of 2096 frames ahead.

Screen 14:
A short dalliance at the fiery police station. There is a chance that the "block" could be picked up faster by jumping to it (without kicking/punching, etc.) to reset your momentum quickly. Perhaps due to improved precision or less lag, I win some frames. Total of 2109 frames ahead.


Driving section 2:
No doubt about it, this level deserves much scorn. My least favorite thing in the entire run, and also a nadir as far as frame losses go. The sad story goes like this. Oh hell, I'm not going to recount it from the beginning, but let it be known that as I drove down these 8-bit roads hour after hour, suffering The Terminator's anti-social traffic behavior and the overall lagginess, feeling compelled to improve over my first attempt which lost 200 friggin' frames with me barely even noticing... at some point my mind began to drift away and I succumbed to something which might be classifiable - mentioned simply as a meagre afterthought that tries to bestow some reason to the whole sickening ordeal - as a sort of shellshock. Perhaps to escape the painful reality, or as an urgent warning from my subconsciousness,[http://www.youtube.com/watch?v=8BvV9arABLs|Stratovarius's "Forever"] had suddenly and insistently started to play in my head, which I then proceeded to sing in the most mournful voice you've ever heard, time and time again. So passed my entire weekend. The second attempt fared much better, but still not that great, with 59 frames lost. Then, the third finished attempt and the one you see on this vid... 40 frames lost. While antithetical of what a respectable TASer would say, I have no choice but to conclude that "It will have to do", while wishing godspeed to the next poor soul this game beckons. Total of 2069 frames ahead.

Screen 15:
Ah normal platforming again, feeling much better now. This level is done with the same strategy as Glitchman did. However, I lose some frames due to adding an entertaining antic featuring our beloved antagonist The Terminator. Guess those poison drops add their fair share of lag, and therefore it might be the best to give him as little screentime as possible, as far as pure speed goes. Total of 2061 frames ahead.


Screen 16:
Finally that metal devil gets what's coming to 'im. But there's little respite - after the congratulatory screen, it just goes to the main screen super quick, and then it's all as if nothing ever happened. Won a few last frames at least. Those will keep us warm over these cold winter months. Total of 2066 frames ahead.

----

__Further improvements:__

- the first boss fight against the plane could be faster in other circumstances...?

- picking up the block from the police station in a different way?

- less jumping via better routes?

- the driving sections. Especially in the second one, one ought to concentrate on successfully performing the glitch which gets Terminator stuck.


__Credits:__

- Glitchman for his run which sparked my interest in this game.

- Other people
