> **Imported**
> This run was originally published at https://tasvideos.org/2321M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

* plays on hardest difficulty (not that it matters)
* heavy glitch abuse
* controls two players
* only goal is entertainment (it's a playaround)

The movie was created on Dolphin 3.0 898-dirty, using the settings recommended in the thread for TASing with Dolphin - that is...

- dual core not enabled

- idle skipping not enabled

- DPS LLE recompiler for audio


Slot A should have a memory card and both Port 1 and 2 controllers.


__About:__

There are three 3D Mortal Kombats on PS2 and GC/Wii: Deadly Alliance, Deception and Armageddon, all of them sharing some core mechanics since they are built on the same game engine (with some improvements along the way). Deception may well be the glitchiest of the bunch, and... this is a short TAS of it.

I wanted to start out small because I had never TASed with Dolphin before, so I did this run from a clean save, without unlocked characters, arenas or costumes. Later on I'd like to do a more complete version of the TAS that uses all the characters and shows off even more glitches.

Speaking of which, not all of my plans worked out for this TAS, and I had to improvise a few times on the way. This was because I had done all my testing on the PS2-version, and due to timing differences or other miscellaneous things, some glitches proved impossible to do in a pinch. They'll have to wait until later, I guess. Generally I'm happy with this TAS, though.

It took four intensely focused days of TASing to make the run. The planning on the other hand took over two years, and is still ongoing.

The project started like this. On some fateful day, over two years ago, I just got the urge to re-visit these old PS2-era Mortal Kombats that I had sorta grown up with. Deadly Alliance and Deception I had played a decent amount on single player or with friends, so I remembered them fondly. Armageddon on the other hand I had completely skipped based on hearsay and my personal reaction to how Midway dropped the ball with some design choices there. Thought I might as well try it out now, no time like the present...

To my surprise, I liked playing Armageddon. Just casual fun at this point, testing out the large roster (Armageddon is the one with over 60 characters) and doing feeble attempts at combos. Later on I checked out videos of the game on Youtube. I saw what was referred to as the "Impale glitch", a technique with which you could do Impale with Sub-Zero... it's a move that wasn't even supposed to exist in Armageddon. So I wanted to test the glitch out myself, and subsequently ---stumbled upon an ancient cospiracy--- found out that it's but a small symptom of a much larger glitch present in the system. Great!

It took a long time to get to the bottom of this, and I'll bore you with the details later on when I actually start discussing the glitch mechanics of this game.

Deadly Alliance I quickly forgot at this point because it didn't have this destructive glitch I had suddenly become interested in. Deception I also thought to lack the glitch, but eventually I was (fortunately) proven wrong: it DID work, you just had to do it a bit differently. So for years my focus would remain on both Deception and Armageddon...

Deception always seemed to be the smaller of the two games... less glitchier, less interesting, smaller roster, all that jazz. I was downright reluctant to look at it. But today it's clear that Deception is actually the glitchier of the two games, and in a way... better!


__About the general gameplay:__

All of the fighters in Deadly Alliance and Deception have three fighting stances. This means they can switch between three sets of basic moves at will, and one of the stances is always a weapon stance. The exception to this is the duo Noob-Saibot whose Change Style (CS) switches which character is currently on the field.

Characters can block to protect themselves from enemy attacks. You can block either high or low to respond to the enemy's high, low or overhead attacks. All the fighters also have three Breakers per match that they can use to interrupt an opponent's combo. This pushes the enemy away from them and potentially prevents huge amounts of damage. Of course, since keeping oneself safe is not entertaining, blocking and breakers are used here for cinematic effect mostly.

After a match, there's the typical time for Finishers. In this game all the characters have two fatalities and also one hara-kiri they can use if they're the loser. Awful things happen if the winner inputs a fatality at the same time the loser inputs a hara-kiri...


__About the glitches:__

* Jumpover glitch and info about move lists:

The Jumpover glitch is a basic glitch found from both MK:A and MK:D, first discovered by Check in MK:A and the direct cause of the passingly mentioned Impale-glitch. When your character turns, for example after jumping over your opponent (this is where the name of the glitch comes from), you can input a basic attack and then switch stance. This causes the game to fetch the given move number from a wrong stance's move list.

''(Well... except in MK:D the glitch doesn't work after having jumped over an opponent. The glitch only happens after normal turning, which makes doing this trick slightly clumsier than in MK:A. Fortunately there's the SC-gliding (read more below) that basically emulates jumping over an opponent if you use it frame precisely, so it's not too bad.)''

In MK:D, there's a list for each stance that contains all of its moves in a numerical order. These moves take up around 1-25 slots in the list, depending on the stance. Some of these slots are never accessed in normal gameplay, like disabled moves or remnants from MK:DA that the developers never removed from the game. As you may've guessed, you can use the jumpover glitch to access most of these remaining slots as well, allowing you to do these secret moves...

''(A big whoop. There aren't that many, and what remain don't do much. Basically old throws from MK:DA and stuff like that. Actually, I don't even use this variation of the trick in the TAS, although I plan to in the full version.)''

Any numbers in the move list over the basic moves are simply empty, but these are important too, as you'll soon learn.

''(Also, if you were curious, you can't do Impale in MK:D.)''


* Blank Move-glitch (or BM-glitch):

BM-glitch is a separate name I gave to the act of accessing an empty slot (or: blank move) in the move list via Jumpover glitch.

If BM-glitch is done without any set-up, most of the time your character just freezes momentarily before their basic movement gets a very slow response time. This state fixes itself once you do attacks. Nothing too special. But...!

Accessing an empty slot actually makes the game use certain data from the game's memory: the data concerning the character's last/current move. There are a few addresses dedicated to this: the move's number, what category of move it is and at what point it is progressing through its course. So whenever I got the boring result of slow response movement, it was because I had loaded the data of a move that had already ended. I can't explain the slow response time, but it's obvious why nothing else interesting ever happened doing this.

At some point I realized I could also load data from moves that had not ended, making the character do a given move with partial data and, needless to say, glitched results. For example, doing an active grab via BM-glitch makes the game ignore any checks as to where your opponent is, making it magically always hit. Or doing Scorpion's teleport kick messes up the effects and causes strange breaks in the action. Doing Jade's teleport gives you glitched teleport coordinates and throws you out of bounds. There are really as many different results as there are moves in the game... actually, far more than that, since most moves have several breakpoints that you can use with BM-glitch, giving subtly different results each time.

So how to get data from active moves to stay in the memory indefinitely for using with the BM-glitch? The answer is that you have to have a character get hit in a certain way during the move. Some reaction animations are safe to use in conjunction with the BM-glitch. For example, you can use Sub-Zero's freezing skills to interrupt any move in a safe way, allowing you to do the rest of the move via BM-glitch. All of the characters have a way or two of "safely" interrupting attacks, allowing you to do BM-glitch in any match-up with varying ease. Pretty good.

It's more than just normal moves that are affected by this. The game also processes things like stage fatality animations, getting hit animations, in-between-round animations... all through these addresses. You can theoretically use all of this data via BM-glitch, messing things up in an interesting way. ...but in practice, it's not that simple. Can't access fatality animations early for instance... now that would be cool. So, to sum it up, you can mess up the game with BM-glitch, but not infinitely badly.


* Misc. info about BM-glitch

Other things that do not overwrite the current move addresses are moving, blocking, jumping and jump attacks. Those are pretty much the only things you can do with a character who has some stored active move data you want to preserve until you can unleash it via BM-glitch. Limits your options somewhat.

The game usually loads special move SFX-effects as basic moves from the character's current movelist. This can be troublesome because sometimes the move number is too high and the game attempts to load an empty slot, causing the game to crash (I guess a sort of endless loop forms inside the game). In general BM-glitch used with specials is far more useful in MK:A than in MK:D. This is both because MK:A movelists are larger, making the game crash less, and also because the characters have many new specials to use and cause mayhem with.


* SC-gliding:

You can break out of a forward jump by switching stance (Stance Change) some frames into it. Doing this repeatedly allows you to rise up in air and start doing attacks while hovering. This gives you new juggle opportunities as you can hit your enemy earlier with some moves than normally, and you can also facilitate doing Jumpover-glitch using this technique. They mostly fixed this glitch for MK:A, so enjoy it while you still can.


* Fatality glitches:

In this game something very strange happens if player one does a fatality at the same time player two does a hara-kiri: it looks as if player one uses a glitched fatality on himself, and then it reads that it was a hara-kiri, with player one still the victor. It is the most common way of glitching fatalities in this game, seen in the first two rounds.

But it only works if p1 is the victor, so it can't always be used.

Other than that, fatalities may act strangely in other circumstances too, like when the arena is glitched in the last fight. There are other possible glitches too, but they're not seen in this run, so I'll leave the explaining for another time.


* Missing attacks:

In the run you can often see attacks miss the characters for no apparent reason. Well, high attacks can be avoided by crouching down for a frame or two. The characters barely start their crouching animation, although they're game considers them officially crouched during this time, making it seem like attacks go right through them.

Also, using BM-glitch often causes the characters to become stuck in an idle pose while their hitbox is in a special "can't be hit"-mode. Like Ermac in his glitched "Mystic Float"-pose or Goro in the last fight after the strange teleport.


* Round End-glitch

This is a wonderful loophole in MK:D mechanics that is unfortunately not found from MK:A. Basically, player two has one frame to hit player one into a death trap or a stage transition at the same time as the round ends. This allows you to move during the in-between-rounds time, creating possibilities for many sorts of glitches. For example, there's a moment between all rounds in which the characters' state is reset. You can use it to interrupt attacks (creating SFX-glitch), or interrupt grab and cause a character to become "stuck" (as seen against Kabal) or start moving during death traps (as seen in the Ashrah vs Ermac fight) or do a few other things that I haven't disclosed yet and will have to wait for the next TAS to be revealed!


* SFX-glitch:

In some situations you can make a special move's graphical effects become stuck. You can use a round end for it... easiest when doing the Round End-glitch as detailed above, or sometimes naturally possible with long moves like Ashrah's "Spin Cycle" and Ermac's "Mystic Float", as can be seen in their fight.

Another way (which was discovered first) is to use Kabal's "Nomad's Touch" through BM-glitch. Seen in the Jade vs Kabal fight.

Normally SFX disappears once a character gets hit or at the end of any rounds. But some SFX you can force to become permanently stuck by doing again the move that granted you the SFX - like "Spin Cycle" or Jade's radioactive kick aura. This way you can bring the SFX even into fatalities, looking quite wacky at best.


* Going OoB:

There are so many ways to go OoB in this game... here is a list of the ways I go OoB in this TAS (but there are even more unused methods, waiting to be demonstrated).

One is doing a certain sequence of attacks that causes the hit character to fall through the ground for a moment, allowing him to slip past collision. Seen in Sub-Zero vs Li Mei. Most characters in the game can do this.

Second is doing simultaneous teleporting moves with some characters. Usually it has to be a mirror match for this to work. Seen in Scorpion vs Scorpion.

Third is doing Ermac's "Mystic Float" via BM-glitch and then getting hit by a correct type of attack. Ermac is launched very high in air and he lands OoB. Seen in Ashrah vs Ermac.

Fourth is doing a move that teleports you next to a character when the other character is OoB. Well, that was pretty obvious. Seen in Jade vs Kabal.

Fifth is messing up the entire arena, and you are able to just walk OoB. Seen in Goro vs Shao Kahn.


* Stance glitches

Changing style at a correct time after landing from a jump (especially when turning) can cause the characters to go into the wrong idle animation. This is especially noticeable if you do this into a weapon stance because the characters hold their weapon in quite inane ways doing this. This state fixes itself as soon as you press any buttons. I did this in a few fights, and the effect was relatively subtle.


* Axis glitches

If you press down before an attack, the attack will automatically target the other player even if he is sidestepping away. Now, if the other character is directly above the attacker, the attacker may start rotating wildly instead, or he may do his attacks moving backwards... other strange things like that. This is played around with in the second, fourth and sixth matches.


* Magic throws

If a character's projectile-type special hits the enemy and he does a throw at the same time, the throw will always connect, no matter if both players are very far from each other. Used in most fights here.



__About the combos:__

You know, before I started making the run, I thought that there was no improving on what the combo masters of Mortal Kombat had already wrought in the past and demonstrated to us in their various combo vids... I thought that they had pretty much found the limits of the game already in this respect, tool-assistance or not. That's how good they were. But then I realized that some of the glitches (like the SC gliding) do allow a TAS to do things that were never seen before. So that's the angle I tried to approach this from, to do combos that are unique to TAS-conditions.

The big combos were made by improvising in a controlled way while making the run. I kept trying out various moves and considered what would bring best results in a given context. Needless to say, all the combo vids I've watched through the years were an indirect influence to me. Then, there are many smaller combos as well, for different purposes throughout the run, fodder for Breakers, etc. Basically whatever a given situation needed.


__Fight schedule and cast of characters:__

1. Scorpion vs Scorpion

Scorpion is the iconic yellow-garbed ninja who throws a spear and has a sort of affinity with fire. Join us as he fights a symbolic fight to the death against his slightly more dark-tinted self in the oppressive depths of the Hell's Foundry... or maybe there's really just two Scorpions for some reason... like Shang Tsung, you know, he could've cloned another Scorpion, or...

2. Sub-Zero vs Li Mei

The iconic ice ninja Sub-Zero has to fight this talented martial artist woman Li Mei who is technically an ally, but secretly infused with the Dragon King's malevolent influence. Their pleasant trip on board the Nethership takes a turn for the worse when they hear The Announcer shout "Fight!", and from there it's all business...

3. Jade vs Kabal

The green-dressed female ninja Jade and the criminal leader Kabal wreck up the Chamber of Artefacts in the process of dueling to death, all for some petty dispute, I'd wager. But then something strange happens...

4. Ashrah vs Ermac

Two enigmatic characters brought together for an enigmatic match in the slightly dreary Lower Mines. There's the pristine Ashrah, who is actually a demon seeking redemption, and Ermac, who is actually a conglomeration of warrior souls. Who will survive intact out of this obviously quite rancorous fight?

5. Noob-Smoke vs Bo Rai Cho

I guess the evil duo Noob-Smoke and the good guy Bo Rai Cho have a bone to pick in the Dark Prison. Bo Rai Cho drank a little too much last night, will this affect his fighting capabilities?

6. Goro vs Shao Kahn

The two GC-exclusive characters brought together for a final epic match. Two bulky badasses ready to kick each others' asses. The four-armed Shokan royalty Goro and the tyrant Shao Kahn. Will they actually manage to fight a fair fight without strange glitches getting in the way?


__A more detailed breakdown of what is going on in the run:__

At first I create a profile for AKheon. Well, you have to create a data file for MK: Deception anyway to change settings, and I make strange noises in the menu in the process. So it's all good. I then go and change settings. I put difficulty to "MAX", not that it matters in the least because I don't play against the CPU here. Then I set round timer to a rather short 35. I do it because many glitches I use depend on the round timer running out at the most inconvenient times.

Since it's a fast-paced run with many details, it is probably justified to write an ultra-detailed report on what's going on... spoilers.


*Scorpion vs Scorpion

At first a BM-glitch is set up for p1's teleport kick. Then the BM-glitch is resolved by using SC-gliding over p2's head - it's a pretty neat way to do it, fast and glitchy looking. The BM-glitched teleport kick makes p1 warp strangely...

A little symmetrical antic with both players doing the same attack at the same time (although of course p1 wins because Mortal Kombat is like that). Then it's combo time, leading to a transition. After landing, I take the time to show glitched idle stances for both Scorpions for just a small moment. Simultaneous teleportations makes the Scorpions go OoB. Making the stage fatality look absurd with both players under the press.

Second round. I wanted to show the reaction animation of "eye poke", so I did it. Setting up Backflip Kick BM, this time to p2, with Hellfire. P2 can take a little juggle without losing the BM set-up, and the last hit of the juggle hits him in a strange way because he was so close to ground as he was hit. BM is resolved after another SC-glide.

Just some general Scorpion antics. Another teleport kick BM is set up to p1 with the sword slash, and then resolved. While it is resolving p1 can't get hit by the p2 Spear, which looks strange. P1 warps thanks to the BM-glitch. Then it's off to OoB again. Near-symmetrical spear throwing. Because the spear can't pull p1 all the way to p2, it becomes stuck out like that.

I wanted to show a grab from OoB that hits a character that's in-bounds, so I did. Then, I must manipulate the round to end correctly, that is: p1 must win and get hit into the transition by p2 right as the timer runs out.

I originally planned to do a different glitch here at the start of the third round, but due to timing differences it wasn't possible to do. So I used this variation instead, where p2 Scorpion's spear becomes stuck in the roof. P1's spear also becomes stuck for no reason, so for a moment in the fight there are two spears dangling pointlessly around. Hey, I thought it was funny.

Combo time. P2's reaction animation to the combo's last hit could be re-driven through BM-glitch to make him become launched without any effort from p1, so I did it, all the while making p1 SC-glide upwards to start the new combo from a better position. After the combo I shoot the glitched spear with p2 (nothing flies out) and do BM-glitch with p1 (plays a grunt and makes the screen shake for no reason). Then, I settled with this hara-kiri glitched finisher because it had better camera than the other fatality, not to mention it was pleasantly surreal looking.


* Sub-Zero vs Li Mei

Attacks miss because of frame-precise crouching. Setting up a grab through BM-glitch and resolving it. An axis glitched "Carnival Spin" that leads to a combo, taking Sub-Zero next to the wall. Sub-Zero's reaction animation to the last combo is played back using BM, making him become launched all on his own. Li Mei takes advantage of the weakness and follows up with another combo, leading to a particularly illogical looking transition. Sub-Zero shows off his own combo. Then he Cold Shoulders through the opponent as she is on the ground. Some cool sparks from blocking with the blade...

Going OoB using the traditional method. Some messing around, then a magic throw using "Ice Clone". Then I show another variation of doing a grab through BM, and this is when you interrupt a grab that has already begun using the Clone. The results are seen moments later as the BM is resolved. Some time killing. The corpse antic at the end of the round can be seen as a prelude of what's to come...

More missed attacks and setting up the corpse for a launch. Axis glitched "Flipping Heel Kick", making it look like Li Mei is wildly breakdancing in air for a moment. Then Li Mei can't resist the temptation of another grab, notwithstanding the nearby Clone, causing the major camera glitch.

Situational humor with the corpse. For a moment's time both Sub's and Li Mei's weapon stances are shown glitched, before the Breaker is used. More corpse fun, then I axis glitch the Cold Shoulder (Sub does it backwards). As a fatality there's another hara-kiri glitched fatality because that was the most entertaining option available.


* Jade vs Kabal

At first I do an audio glitch with Kabal's "Raging Flash" by doing the move once to an airborne Jade, then again once she is on the ground. The audio loop remains playing in the background in a not at all stressful way. Also, this creates a small SFX-glitch that effects for example blood effects.

Then I use Jade's projectile to set up "Nomad's Touch" BM that is used for SFX-glitching Jade's kick aura. Some comboing, then another Touch through BM to glitch her projectile as well (this isn't seen very well in the run, though. You can see the razor-rang thingy floating in air for a moment after Jade falls down).

The audio glitch was in danger of ending, so I set it up again. Some intense fighting and time killing until the end of the round, where it's necessary for Jade to win and Kabal to hit her through the glass precisely as the round ends.

Here I also planned to show another glitch variation, but that didn't work. Maybe because it wasn't a flawless victory (changing round end timing), maybe because it is GC, not sure. So I did this instead, where a very belated and suddenly interrupted grab makes Kabal become "stuck". Even the attacks done to him in this state get their momentum "stuck", explaining how he glides around the place after being punched.

The traditional way of doing the OoB glitch works wonders against a stuck character too... even worse, since the stuck character keeps falling endlessly all the while moving in OoB. So, Kabal falls, Jade tries to keep up with him. You can't do a finishing move while the opponent is stuck, but the results look even more enigmatic like this.


* Ashrah vs Ermac

Ashrah has to win this first round flawlessly for the SFX-glitching at the end of the round to work. So, at the start I hit Ermac with Ashrah's projectile when he is in "Mystic Float" so that he hovers in air when he is getting up (seen for a second). A magic throw to get back to Ermac a little quicker. Since Ashrah's throw bounces the enemy, this leads to a juggle.

Mystic Float is done through BM-glitch, which allows Ermac to be unhit by many attacks and launched to OoB by some other attacks. Then he is launched to OoB. Some messing around and another magic throw. Doing light axis glitching under a floating Ermac. Cool camera angle change. Killing time a little until the end of the round, when both characters do a move that grants them SFX-glitch material (unfortunately only Ashrah's white glow can be made permanent).

Because Ermac's green glow is only temporary SFX, I chose to not let him get attacked in this round and let him shine with the combos instead.

Third round. Some pleasant comboing. I liked the corner that the collision formed by the dragon's mouth, so I spent a little time there. Then the characters fly up in air as if this was DBZ or something via an elongated SC-glide. Time and Ashrah's health were running out, so the fun was cut short. Ermac does his projectile in air using SC-glide again. Ashrah follows suit in child-like excitement by doing "Spin Cycle" in air, but this proved detrimental to her health because it won't hit a ground-level enemy like this, allowing Ermac to finish her off just in time for the round to end. Round end-glitching lets the characters continue fighting after the stage fatality... wow, they must really hate each other.


* Noob-Smoke vs Bo Rai Cho

To note, Bo Rai Cho's most common combo starters have immense damage reduction quality to them, explaining the sucky combo damage that he does here.

You can make ghostly Noobs or Smokes run through the screen all the time by doing something a frame or two after changing stance with them. Crouching is the most subtle and easy option. Or maybe the the duo is practicing running laps for a competition?

Some combos and spastic moments. A scene straight out of a horror movie when the nervous Bo Rai Cho faces an invisible Noob and multiple Smoke ghosts he sends at him. Some fun with "Puke Puddle" and the "Smokey-Cut". Using a glitch I send Smoke flying through the railing even though he was in the middle of doing a combo to Bo Rai Cho.

Missed attacks, messing around. Comboing. A magic throw using Puke. A decent Noob-Smoke combo (with a very precise timing for the last hit). Also showing an oddity with Noob's throw, in that the enemy is sent flying in air during the follow-up attacks, allowing you to start a new juggle easily. Alas, time and Bo Rai Cho's health were running out, so I had to quickly start retreating back to the death trap... Noob gets stuck to the prisoner's graps for a moment as they're heading back.

As a fatality there's a Round-end glitched death trap, allowing Noob to fly into the enclosing spikes while Bo Rai Cho does a desperate hara-kiri, with both blowing up in (almost) an unison. It was hell to manipulate the camera to look good in this part - it was so easy for Noob to become obumbrated by Bo Rai Cho's massive foreground presence...


* Goro vs Shao Kahn

Setting up a BM throw for Goro, then resolving it by having Shao Kahn jump over him. It seemed the easiest to not use SC-gliding here because both of the characters were so bulky. Shao Kahn and his cat-like reflexes send Goro to the lower level...

The "Leaping Stomp" move is done via BM with Goro, causing him to teleport strangely. For some reason I could also make Shao Kahn teleport on the same occasion, so I did it. For a moment Goro is still stuck in the immobile "attacks can't hit me so well"-mode of the special move, but soon he recovers. Some comboing with Goro. Setting up Goro's ground stomp through BM and resolving it, causing this truly strange combo. Then, a combo for Shao Kahn as well, leading to Goro being dropped off the building.

This was actually a necessary turn of events to do the next controversial glitch: doing some of the stage fatality code through the BM-glitch. For some reason it acts as if Goro hit a glitched level transition and they both fall to an unloaded part of the level, free to roam as they please, and Goro is also somewhere deep underground.

I just did a normal fatality for this round because things looked strange enough as they were. Also, Goro's body parts don't fly away during the fatality as they should... it's a specialty of having done the huge glitch and having ended up here, wherever it is.

-

At the very end, it says "Save Failed" when the game tries to autosave. It seems as if the glitch I do in the last match makes this error appear... So, I show off the error message for a little while as a bonus of sort, then it's off to the credits to give a semblance of closure to the viewer.

(Note that this last part is cut from my encode of the run, since I wasn't sure what to do with the error message at first.)



__Thanks go to:__

Midway for their series

Dolphin crew for making a Dolphin-version that runs Deception well

L. Spiro's memory hacking software

Joonas P. for building my computer and allowing me to TAS this game

Check4900 for the Impale glitch that started it all (among other things)

NukesGoBoom for demonstrating the basic OoB glitch of Deception (among other things)

Other MK players (and TASers) too

Me for researching these glitches and making the TAS

You?
