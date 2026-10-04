> **Imported**
> This run was originally published at https://tasvideos.org/2706M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

* Plays on hardest difficulty
* Manipulates luck
* Hits things with a fist
* Takes no damage
* Very slight glitch abuse
* Neutron Bombs everyone (except Heihachi)

!!__History of this run__

I got a funny idea one day that concerned fighting game speed TASes, mainly that... why the ********** aren't we playing using the quickest possible settings?! Aside switching difficulty to hardest, we've always just used the default settings of the game, like keeping 2 rounds per match. So, this paradigm changing TAS (cough) instead chooses to only play 1 round per match, cutting the painful repetition by half. Seriously, if any other game in another genre asked you "How many times do you wanna beat this guy up?" would you choose anything else than the quickest answer?

Aside winning a lot of time by fighting less, this TAS also uses improved tactics compared to McBobX's original speed TAS of Tekken Advance.

I did a test speed TAS of Tekken Advance previously, trying to gather some opinions before deciding what to do next. This current TAS improves it by a little less than 3 seconds. If you're curious, the test TAS can be seen here.

https://www.youtube.com/watch?v=5KRulmkOfeg

Also, the re-record count is a bit misleading since I made this run using the test TAS movie file. About 2000 of those re-records come from the test TAS, but hey, it's been a process of learning... so in a way those re-records are just as official as the rest.
----

!!__Basics, and... why Paul?__

So, your usual Tekken Advance round can be broken down to two interwoven objectives that you must complete as quick as possible.

The first objective is simply doing enough damage to reduce the opponent's HP to 0. In Tekken Advance your opponents have varying amounts of health. Paul, Xioiuya, Nina, Law and Heihachi have only 140 HP and are the squishiest. Gun Jack has 168 HP and is the toughest single character to take down. The rest have 151 or 152 HP. So this forces you to switch up tactics a bit depending on your foe.

Second objective is manipulating the enemy to willingly open themselves up for a beating. This is a tricky part since the A.I. in this game directly reacts to your behavior, and can't be manipulated pre-emptively before a round starts. This is to say, you cannot manipulate your foe without losing time, and you only have a finite amount of opportunities to manipulate the foe before you've lost too much time! (Too much in this context means that your TAS begins to stink.)

I chose Paul as the fighter because he has a very good damage over time ratio, with his Burning Fist being the game's fastest and (almost) most powerful super attack. Outside that one extremely fatal attack, he is also a pretty versatile character with a whole catalogue of decent attacks to start the round with. Versatility is good since then you have more leeway navigating around the A.I. when it is feeling particularly reluctant to go along with your schemes.
----

!!__So, getting started...__

Every round you start with some starter attack or move. This move varies depending on how much HP the enemy has and how the A.I. is feeling that particular moment, and its purpose is to either bring the enemy down to around 120 HP so that they can be neatly finished with Burning Fist OR to manipulate the enemy to use their own super powered attack during which they get full counter hit damage, killing them at best in one shot... and speaking of countering...
----

!!__Countering__

If you attack an enemy during their attack, it is a counter hit and they receive extra damage. On paper you get a 150% increase in damage... but in effect you only get a 120% increase, with a good amount of damage variance thrown in as well. So basically, Paul's Burning Fist that initially does 100 damage and SHOULD do 150 damage in a counter hit, in most cases only does 120 damage or whereabouts.

It seems that the counter hit damage varies depending on what attack the enemy is doing, and also how far into the attack animation the enemy is. The enemies' own super powered attacks (equivalents of Burning Fist) are the riskiest and therefore give the best counter hit damage as well. Like mentioned, in theory you could one-shot almost every foe in this game if you got them to do their own super attacks like buffoons at the start of the round... this phonemenon can be seen in the playaround TAS against Nina... but in practice this is highly rare. So rare I couldn't manipulate it to happen in this run at all, except in a very imperfect form in the Gun Jack fight. Maybe some other person who understands A.I. at a program level or can do some bot manipulation could make it work. And this takes me to the subject of...
----

!!__A.I. Manipulation__

A.I. manipulation plays a very important role in the TAS. From the start of the round, you can do the following things to manipulate A.I.:

- wait

- quickstep forwards or backwards

- interrupted quickstep

- sidestep (takes about 6 frames)

- fake-jump (hold U+D for two frames, then let go) (takes about 6-9 frames)

- Sway forwards or backwards (takes about 10 frames) (Paul-only)

- jump forwards or backwards (takes a lot of time)

- jump and do air attacks (takes a lot of time)

- do any other attacks (takes a lot of time)


Crouching doesn't seem to help much in manipulating the enemy. Sidestepping to either direction is also counted as the same thing as far as the A.I. is concerned, so that limits things a bit.

So, trying different outcomes to manipulate the enemy A.I. is a tangled mess, especially once you start combining techniques like interrupted quicksteps and fake-jumps. I tried to be systematic about it, but overall my most important goal was simply to improve the test TAS times with new tactics instead of finding out the cryptic RNG combination that allows to one-shot everyone. So once I got a solution to a round that was an improvement and something I was satisfied with, I kept it and didn't look back. Anyway, getting back to those starter attacks...
----

!!__List of starter attacks__

Paul has the following worthwhile options for starting the round with.

- Basic kick. 30 DMG, counter hit is 40-45 DMG. Knocks back enemy. Fairly slow since the attack lasts 50 frames. One perk to this starter is that since it doesn't require any d-pad input, you are able to do it 4 frames earlier from the start of the round than any attack that does require d-pad input. Also, the damage is just perfect for most enemies. So it has a situational use.

- Shredder, i.e. two jumping kicks. Damage seems to vary a lot, averaging at about 28 DMG if both hits connect. More if it is a counter hit. It's a fairly slow starter, but sometimes against weaker foes you can only do the first kick and it will be enough (like against Xioauio in this run). Has situational use. One good thing about this is that the attack contacts with your foe fairly quick, around 15 frames after starting input.

- Double Hop Kick High. The same thing as Shredder, although with a different input, a different (useless in this case) follow-up after the two kicks and slightly more damage. Didn't use it in the run, actually.

- Bone Breaker. Two hits that deal a total 34 DMG (or more if counter hit). Otherwise a pretty cool starter that knocks the enemy down on his back, but it's one of the slowest as well. The whole move sequence lasts about 75 frames. These damaging starters sometimes allow a tactic against weaker foes where you don't have to manipulate a Burning Fist counter hit to kill them since the starter does enough damage already. This was seen in the test TAS but not here.

- Gut Buster. Two hits that deal a total of 40-44 DMG (or more if counter hit). Same deal as with Bone Breaker. Fairly damaging, knocks enemy on his back, fairly slow.

- Glitched jump A. 25 DMG, counter hit is 37 DMG. This is an attack all the characters in the game have. It's a relatively quick attack at only 33 frames, although setting the glitch takes 9 frames. A counter hit will knock the enemy on his back. Basically you have to hold U+R for 9 frames, then do the jumping kick. The character does the jumping kick without ever leaving ground, which makes the normally air-only attack more wieldy. This is one of my favorite starter attacks because of the speed, glitchiness and surprising deadliness. However, the kick has a bit of a cooldown as well. Some frames after the move the game thinks your character is "landing" and you are unable to do other specials since the game will prefer to do "rising" attacks instead. But you can walk during this time, so it's not all completely wasted time.

- Quick PK Combo. Or some of the other similar combos Paul has. These strings that start with a jab contact at 11 frames, allowing you to sneak in a punch between enemy combos. Overall following the jab with the kick can make this combo fairly slow, but the fast start and enough damage ensure that it has a situational use at least.
----

!!__Other things__

Many of these starter hits knock the enemy back, so you may have to catch up to him again by running a bit. The good part in this is that running allows many possibilities for influencing the A.I. behavior... the bad part is that it's of course slower this way. Sometimes the A.I. is friendly enough to actually roll towards you after being knocked back, becoming easy pickings for Paul's Burning Fist when they rise up.

Needless to say, 140 HP characters are usually the easiest to face since you can take them down with less hefty (and usually faster) attacks. Some unique strategies are possible with these guys, for example you don't always have to manipulate two counter hits to knock them out.
----

!!__Wait, were you going for in-game time again?__

Well, long story short, I was planning to go for in-game time in this TAS, which is to say: fight all the fights to the bitter end. But after witnessing the chaos of the TASVideos IRC I became shocked, and in a fit of temporary insanity played for fastest input instead (sorry Spikestuff). The good news is that I managed to do early input end without touching the round timer at the options menu, saving some extra frames in the process!

Heck, now I'm just being polemic for the sake of it. Hey, if people don't like this ending to the run, it can be changed so that the run goes for in-game time instead. So not a big loss either way. It's just... hearing more opinions about it would be appreciated.
----

!!__Round by round comparisons:__

__Round 1, vs Jin.__
Test TAS time 2.60. New TAS time 2.31. (0.29 secs ahead)

Glitched jump A counter hit. Manipulate Burning Fist counter hit.


__Round 2, vs Nina.__
Test TAS time 5.23. New TAS time 4.40. (0.83 secs ahead)

Glitched jump A. Manipulate Burning Fist counter hit.


__Round 3, vs Yoshimitsu.__
Test TAS time 7.58. New TAS time 6.80. (0.78 secs ahead)

Sidestep, basic A. Manipulate Burning Fist counter hit.

(I felt like I had very bad luck in this fight since I actually lost a little time.)


__Round 4, vs Law.__
Test TAS time 9.95. New TAS time 8.81. (1.14 secs ahead)

Glitched jump A counter hit. Manipulate Burning Fist counter hit.


__Round 5, vs Gun Jack.__
Test TAS time 12.50. New TAS time 11.20. (1.30 secs ahead)

Hammer of the Gods. Manipulate power attack from enemy to quick kill with Burning Fist.


__Round 6, vs Xivaaouyuy__
Test TAS time 14.88. New TAS time 13.15. (1.73 secs ahead)

Shredder first kick counter hit. Manipulate Burning Fist counter hit.


__Round 7, vs Hwoarang.__
Test TAS time 17.35. New TAS time 15.31. (2.04 secs ahead)

Basic A counter hit. Manipulate Burning Fist counter hit.


__Round 8, vs King.__
Test TAS time 19.85. New TAS time 17.53. (2.32 secs ahead)

Quick PK Combo counter hit. Manipulate Burning Fist counter hit.


__Round 9, vs Heihachi.__
Hard to compare since my test TAS didn't go for in-game time...

But the early input sequence is a few frames faster at least.
----

!!__Closing notes__

Now, the only question that remains is... how did Paul's right arm become so strong? (wait, don't answer that)

Thanks to Spikestuff for making a Lua script for this game... which I admittedly didn't use in the making of the final TAS, but it's the thought that counts. Also, sorry to Spikestuff for betraying his hopes more than once.

Thanks to everyone who believes in fighting game speed TASes although they are nauseating to watch and have little intrinsic worth.

Thanks to someone else too.

This TAS is surely not perfect. So, feel free to try and beat it (but not by too much... that would be humiliating).

Okay, that's it.
