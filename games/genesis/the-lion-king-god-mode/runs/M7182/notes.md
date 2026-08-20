> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/7182M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

__General info:__
*Bizhawk 2.11
*Aims for fastest time
*Plays at easiest difficulty
*Abuses programming errors
*Manipulates RNG

Even though it cannot officially be one, consider this an improvement to my [10074S|my previous attempt] of TASing this hack.

The first thing you're going to notice comparing both submissions, aside from a huge 24 second improvement (or 31 seconds if you pefer RTA timing like me), is that im playing the Sega Genesis version. I chose it for a few reasons:
*I don't have much experience with Genesis so i wanted to familiarize myself more with this version.
*RNG is more controlable here
*There is a skip that was only done on Genesis

Playing i noticed a few differences compared to the SNES version of the hack:
*Simba's midair jumps are much shorter
*Ceiling collision is super janky
*If Simba is inside a ceiling and near its edge he can sometimes be kicked out of it saving time
*Jumps that are longer than 1f work differently

Note that this submission contains inputs by Akiteru, who doesn't want to be listed as a co-author on this submission.

Here is a level by level breakdown: (I wont go over what i already covered on the SNES TAS)

__The Pridelands__

Same as SNES tho there is a time save where i get hit by the porcupine to not do a ground splat animation. i had to not press C for a frame during the turbo on that part as i would either get hit and pulled in-bounds or would not get hit and lose time to the ground splat animation. This trick is not possible on SNES as i can't go through the ceiling to do it

__Can't Wait To be King__

Same as SNES but i discovered that by jumping while the rhyno throws you, it's possible to get to the monkeys earlier as you cancel the rhyno's animation

__The Elephant Graveyard__

Same as SNES but more optimized

__The Stampede__

yes 👍

__Simba's Exile__

As Simba's jumps are shorter you need to jump more times and the trick to do it in less jumps does not work, tho by the different physics between SNES and Genesis, the Sega version is faster anyways

__Hakuna Matata__

I clip into the ceiling to the pulled inside the wall snd skip the Water Slide section. I initially thought i was impossible to go under the level because you can't go low enough without dying to the death trigger and even if you could, Simba would go through the ceiling you need to bonk anyways, but later i discovered the route used in this TAS which i again use the ceiling to pull Simba inside the wall and i use the frog's spear to take damage and skip a ground splat animation. You'll probably also notice that the TAS for the OG game doesn't clip on the waterfall, that's because while you can clip, it's impossible to get out, but on this hack it actually is possible to get out by jumping on a specific position, and it is faster because skips a ground splat animation.

__Simba's Destiny__

Same as on SNES but more optimized and there is no damage boost

__Be Prepared__

Here is the trick i talked about at the start, while it is possible on SNES and even faster than here on Genesis, no such RNG Seed has been found yet, you can find a explation of this trick [9983S|here]. (This level is a resync of [user:Akiteru]'s inputs because differently from SNES, memory advances differently so the LUA Script doesnt work and it's near impossible TASing this part without some kind of RAM Watch)

__Simba's Return__

*Room 1: Due to the bad ceiling collision i can kill the hyena faster and no need to enter a combo state in order to skip the level
*Last Room: due to skipping the whole level, i have no opportunities to change the RNG without losing time so i needed to reroute it

__Pride Rock__

The same "Glitch Kill" is used here except its only possible with specific conditions to correctly cancel your attack and do the glitch. Scar 3 uses the same mechanic explained on [10271S|this submission]. (Scar 1 is a resync of [user:Akiteru]'s inputs because as i wasn't getting the second glitch i decided to tinker with known working inputs to test if it was possible or not)
