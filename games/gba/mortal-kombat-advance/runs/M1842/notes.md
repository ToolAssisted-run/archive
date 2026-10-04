> **Imported**
> This run was originally published at https://tasvideos.org/1842M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This movie was made on VBA 1.7.2 re-recording v21-interim.

* plays on hardest difficulty
* contains speed/entertainment trade-offs
* abuses programming errors in the game
----
Mortal Kombat Advance is the generally unfavored port of UMK3 for GBA. It has a different game engine from any other ports with a lot less polish and unique glitches.

It's as if this game was meant for tool-assisted playing: it's difficult to give the game meaningful input in real time. Doing some special moves is not easy even in TAS conditions. To make things worse, the CPU player of this game is an evil, evil special move spammer with a perfect reaction time. Many players, as documented on Youtube, hardly get past the first stage against Scorpion even on the easiest difficulty.

If you think about it, making a tool-assisted run of this game is actually nothing more than levelling the playing field! I felt time was ripe for a revenge after having pre-emptively glitched the game for some days, and this is the brutal result. (almost wrote "gruesome result", but that sounds like a bad omen, somehow...)

__Cast of characters__

Shang Tsung - our beloved shapeshifting soul-eating evil sorcerer is back to rock this Mortal Kombat. In this port he for some reason can't shapeshift into Rain or the secret characters, but that's okay, there's still 19 other shapeshifts from which to choose from.

Cyrax - a yellow cyborg with the talent to shoot nets, drop bombs and teleport. He is a stable character with funny skills to mix things up with, so you'll see him a few times.

Ermac - orange male ninja. Actually a composite of dozens or more unknown warrior souls, who apparently are not happy. Befitting his enigmatic nature, he is brought out a few times when 
things start to turn too mystic in the run.

Jade - green female ninja. She has a cute radioactive kick which is useless, and also three different versions of a same projectile. Whoop-de-doo. But CPU can and will make her a killing machine regardless.

Jax - one of the good guys. In this game he still appears to be undergoing adolescence, what with the occasional squeaky-voiced sound sample, like when doing kicks. Slightly creepy. He can shoot missiles, shake the ground and do a dash with his fist out. Gets decent air time in the run.

Kabal - masked dude. While a top-tier character in UMK3, here he is not so hot. His spin move is actually pretty bad in this game. However, his air projectile wins him over a lot of points. One strange thing is that all move lists on the net suggest his razor blade prompt to be "b, b, b, run", while in actuality I (only) managed to do the move with the prompt "b, b+f, b, f"... Strange, huh?

Kano - the ruffian with an eye implant. His cooldown-less cannon moves are absolutely broken in a TAS, and his shaking throw can cause a few glitches, so he is a decent character to play with.

Kitana - blue female ninja, uses fans as a weapon. She has special moves which are an obvious teeming ground for infinite combos, as can be seen right at the beginning of the run.

Kung Lao - another good guy and Liu Kang's pal. He throws his razor-sharp, endlessly respawning hat at any opposition and can teleport at the speed of wind. Also, he can... whirl. Not my favorite characters, but decent enough.

Liu Kang - third good guy and Kung Lao's pal. He has his awfully high-pitched voice like usual, two different projectiles and two different kicks. Can be a force to reckon with.

Mileena - purple female ninja. She has some agile special moves like rolling which I prefer to Kitana's dull fan waving.

Nightwolf - the indian fella. He comes with his usual arsenal from the UMK3, including the cool special move with which you can reflect projectiles, but in this port he also has a new weapon, deadliest of 'em all. Whatever it is, it is concealed in his feet... maybe it's a dispiriting curse, or a small belt sander that juts out of the sole of his boot and does subtle burn damage to foes? You may decide for yourself as you watch the run.

Reptile - male green ninja. He has three different projectiles, sliding and invisibility. Quite a fun character to play as.

Scorpion - yellow male ninja. One of the most iconic, celebrated characters of MK, but here he has to eat the humble pie as he ends up in metaphysically bewildering trifles against his will more than once during the run. CPU makes this character very annoying to play against, hyperactively spamming teleport punch and spear. It's most unfortunate that he is indeed the first character every player must fight against - all the challenge towers start with him. Did they playtest this piece of handheld Mortal Kombat at all?

Sektor - a red cyborg. He isn't too interesting in this port because of the critical lack of homing missiles.

Sindel - she can fly, throw people using his hair and scream. Not bad!

Sonya - she has the upwards bicycle kick and good looks.

Stryker - an underdog character, but at least in MKA this trigger-happy cop is worth his salt with his good specials.

Sub-Zero - the new Sub-Zero, as introduced in UMK3. He has the ice shower which comes in handy in a few tricks. Also, his throw is completely unique as it can drop people into the abyss. Noob Saibot would be proud, I think.

Classic Sub-Zero - he has the ground freeze, which can be exploited for massive damage. Other than that, he is just a generic male ninja.

Rain - you barely even see this guy during the run, only for a few moments in the character select screen. Too bad Shang can't morph into him, would've helped his popularity.

Noob-Saibot - black male ninja. Appears as opposition in the second endurance match.

Motaro - centaur dude. His special powers include shooting highly damaging force balls, teleporting around the place wildly and emitting lag.

Shao Kahn - the big bad of the game. To be humiliated and usurped by Shang Tsung in about 16 minutes.


__Generally about the mechanics, strategies and tricks:__

As mentioned, giving input to some moves is a nightmare. Especially the morphing prompts are complex and take extra care to use. You see, if you finish your input while another action is taking place, like punching or ducking, the input goes to waste. Even worse, many morph prompts have something like an extraneous punch or even a jump in the middle of them, causing this kind of situations to happen all the time. For example, Mileena's morph prompt is Forward, Block, Kick, Forward, Kick. In a TAS you can fool the game by starting with a few frames of blocking or ducking, then giving the rest of the input while the blocking or ducking animation is on. Optimally it takes 10 frames to finally finish the prompt, just in time as the blocking or ducking animation ends. Sometimes invisible lag messes this count up, but whatever. I devised this kind of "quickest possible" prompts for all the characters before starting the run so that there would be less guessing and annoyance during the making of the run.

Whenever morphing from Shang to someone else, there's a cooldown of about 20 or more frames during which you can't do special moves or block. Such a cooldown doesn't exist when morphing back to Shang.

The hit detection in this game can be very crappy. Especially when a morph is about to run out (this state can be prolonged indefinitely) Shang is prone to passing through injurious spots without harm.

Most of the characters have a some sort of infinite combo to their avail. These are demonstrated when possible.

I make short mirror matches between characters whenever possible. Also, I try to combine plot-wise meaningful duos to fight occasionally (like Kitana & Sindel or Cyrax & Sektor).

You can get inside the level edge if you're fighting against Scorpion, and you can even manipulate your opponent so deep into the wall that he disappears from camera. However, I couldn't find an use to this trick. Just done for fun a few times in the run.

Sub-Zero's throw can get people outside bounds. Also, freezing moves capture the properties of the frozen person's current animation. For example, if a character is frozen while staggering, you can keep hitting the character as much as you want without the frozen state ending.

Nightwolf's straight jumping kick is fatally glitched in that it keeps damaging and damaging the enemy as long as contact occurs. Or is this a subtle hint that Nightwolf ought to change his socks every now and then?

If Kano's upwards cannon ball is interrupted, he may remain up in air indefinitely but with the game thinking that he is on ground level. This state ends if you let go of directional buttons or throw your opponent.

It's possible to do special moves to the wrong direction by activating them when your character faces that way. You can manually make it happen by running for a frame and then turning, but not all moves can be activated this way. Fatalities can also be done to a wrong direction, as well as throws.

Usually characters can't overlap or pass through each other, but in some animations they can do that. This is played with on a few occasions.


__Some explanations and noteworthy sights:__

__Fight 1 vs. Scorpion__

- ground flames are done to the wrong direction, launching Scorpion out of his teleport punching spree.

- Kitana's infinite combo.

- getting inside the level edge collision using Scorpion's spear and ice shower.

- Scorpion falls and falls and falls. Ermac is summoned to get him out of the loop.

- Scorpion's infinite combo.

- ground throw to air throw in an instant.

__Fight 2 vs. Classic Sub-Zero__

- Kung Lao's quasi-infinite combo.

- Sub-Zero tries to repeatedly make a slide towards the wall. It fizzles out and the many slide sounds overlap.

- Nightwolf's infinite combo.

- foolish A.I. which can't hit a crouched frozen character.

- for a moment the two Sub-Zeroes fight together like a team!

- it's obvious that a degree of camaraderie is formed between the fighters...

__Fight 3 vs. Jade__

- Stryker's infinite combo (yes, just shooting is that).

- Stryker won't get hit by Jade's attacks when crouching.

- couldn't resist the temptation of reflecting a shuriken back at her, they are so annoying!

- a bit of unexpected symmetry right at the end.

__Fight 4 vs. Cyrax__

- a hit during screen transition.

- botched Cyrax's air throw.

- Kano's shaking move on a netted target causes the target to come on top of the net with no other effect. I find it funny for some reason.

- first taste of Kano's cannon moves' brokenness.

- Sindel's infinite combo.

__Fight 5 vs. Kung Lao__

- yes, the CPU does all this spamming without much provocation from my part.

- Kung Lao's hat hits but does no damage at all. Happens many times...

- first taste of Nightwolf's deadly foot.

- Liu Kang's infinite combo.

__Fight 6 vs. Sub-Zero__

- critical A.I. failures with freezing.

- when Stryker is frozen in this pose, he rises a bit in air. He is also immune to getting hit, unlike other characters in the middle of their tackle (I think).

- big damage combo with Kabal.

- ground razor silliness.

- glitch with ice shower, female ninja throw and Mileena's roll.

- watch closely to the colour of what each Sub-Zero is wearing...

- Reptile's infinite combo.

__Fight 7 vs. Sindel__

- a glitch when you air throw a netted character. The character does a strange somersault upon landing.

- a glitch when you bicycle kick a netted character. The character rises up 2x higher than they should!

- an unique glitch with Kitana's "square wave punch", she re-appears at the right side of the screen sometimes if you turbo A.

- a glitch with Stryker's "nightstick trip" which occurs if you do another trip at a correct time. He gets stuck and the game won't progress like that.

__Fight 8 vs. Scorpion & Jade__

- Scorpion must be thinking right now: "not agaaain..."

- Scorpion becomes an easy target.

- the true power of Mileena's roll is shown!

- the true power of Kano's cannon moves are shown!

- finishing the first fighter off with the shaking move causes Jade spawn higher up the screen than my character and causes some delayed damage too.

- glitch where you get stuck in air, thanks to the interrupted cannon move. This state is very difficult to uphold, so the fighting is not too flashy for a brief moment here.

__Fight 9 vs. Cyrax & Noob Saibot__

- bad hit detection

- an example of a frozenness that melee doesn't cut off.

- a more staggering example of a frozenness that melee doesn't cut off. Ouch.

- docile A.I.

- an alternative Reptile's infinite combo.

- Noob Saibot also gets a free tour of the void. But he should've checked the fine print first, because it says that now Jax gets to use him as a target for practicing his missile attacks.

- the large foot that drops down is obviously some sort of cut-out, or at worst a large prop!

__Fight 10 vs. Motaro__

- I wanted to try out how extreme damage Nightwolf's foot can do in a this kind of circumstance. The experiment was a success. Looks as painful as ever.

- bouncing those diagonal air projectiles off Motaro's skin. Not shown in the run, but you can actually get hit by your own air fire ball if you reflect it like that and then quickly drop down!

- glitching Motaro's A.I.

- glitching the damage counter. Or what, do you really think I'm slowly flying Motaro to death?

- an intense fight between Sonya, Motaro and awful collision detection.

- guess none of the gametesters ever made it this far, because Motaro does that glitched death dance every time... it's not something I intentionally invoked or something. Jade panics at the strange sight and shoots all her shuriken at Motaro, effectively committing a suicide!

__Fight 11 vs. Shao Kahn__

- recap of what we've learned thus far of cheap infinites, and some more air time for Liu and Sektor.

- Shang gets his own hands dirty and personally fights Shao Kahn a bit.

- finally, Reptile's invisibility.

- Shao Kahn is actually Superman's distant relative, and he can fly as high as he wants using that knee dash of his.

- sad to see a great warlord succumb to a lowly infinite such as this! (Cyrax's first actual infinite combo on this vid)

- finally, Shao Kahn gets to go out in style, like a gangster, in a lot of crossfire and explosions. I'm sure that's what he would've wanted, to go out with a bang. Other than to be immortal and dominate earthrealm with an iron fist, of course, but that was not for him to decide.
----
__Amount of times morphed into different characters:__

Cyrax	   IIII

Ermac	   II

Jade	   II

Jax	   III

Kabal	   I

Kano	   II

Kitana 	   II

Kung Lao   II

Liu Kang   II

Mileena	   III

Nightwolf  IIIII

Reptile	   III

Scorpion   I

Sektor	   II

Sindel	   III

Sonya	   II

Stryker	   IIII

Sub-Zero   IIII

C. Sub	   III

__Possible improvements:__

I wouldn't be surprised if there were still more glitches in this game. For now...
