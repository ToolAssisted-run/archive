> **Imported**
> This run was originally published at https://tasvideos.org/5518M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!Xanthiom
This is an Atari 2600 homebrew game developed by Mathan Games in 2023. The player controls Lieutenant Grisham, on a mission to rid the threats to the galaxy on the planet Planet Coati 5. This homebrew is very much a take on what the original NES Metroid would be like on the Atari 2600 with the limitations therein. -Darkman425

As with the 100% run, this TAS uses the ROM version 6.

!!Goal
Now that we have a [5458M|100%] run, I decided to look into the details for creating an any% run.

The goal of this TAS is to beat the game as fast as possible, only collecting those items necessary to complete the job in the quickest manner. Much of my time was spent removing items to see how much time was cut at the end. I eventually ended off seeing the big picture and starting over from scratch with the bare minimum to perform a "Low %" run. I quickly realized that I needed to collect items that were "On-The-Way", to be as effective as possible. The following items were in the vicinity and helped to make an any% (33% items):

*First Missile: Necessary to get through the "Red Door". Without, routing in other direction wouldn't be possible without Hi-Jump boots.
*Hi-Jump Boots: No possible to get, without passing the "Red Door". Without these, there are places that cannot be accessed....even with the use of the floor clipping glitch.
*Varia Suit: After the Kraid fight, you have to get Varia...otherwise you will roast in the "Red Area" and die.
*Plasma: This was just a slight loss of time to get, but the time saving are quickly made up in using it.


!!Mechanics and techniques (Modified version from Darkman's submission notes)

__Delaying the start for a frame__

I delayed starting the game for a frame. All this does is allow the game to render the projectiles as squares rather than lines. This doesn't seem to actually affect shot hitboxes or affect sync but it does help with visibility for the viewers.

__Upgrade list__

;Missile tank: This adds 5 maximum missiles to Grisham's arsenal. Missiles do 4 damage more than beam shots so they're used to take out bosses quickly. Without the Power upgrade missiles are 3 times stronger, while with the upgrade missiles are "only" 2 times stronger.

;Hi-Jump boots: This increases the vertical jump height from 3 blocks to 4 blocks. This is required to navigate most of the map.

;Varia suit: This protects Grisham from passive damage while in the second map of the game.

;Plasma beam: This adds 2 damage to both the beam shot and the missiles. This is optional but speeds up the second boss fight.

__Jumping__

Jumping will always try to go for the full height of the jump. This is a problem when there are potential objects above to get caught on. Jumping can also sometimes delay when the next shot can be fired so jumps sometimes have to be delayed due to that. There are times, when I can use the edge of a platform to cancel my my jump height...which was how I discovered the floor clipping glitch.

__Bosses__

The first boss, Kraid, can be shot anywhere on the body. The only real thing to speed it up is to get close enough to keep up a high firing rate and to end the fight as close to the Varia suit upgrade it drops when it dies.

The second boss, Ridley, can be somewhat manipulated in its shot timing with certain actions. Missiles are shot in strategic places and times to finish off the boss quickly.

__RNG__

The RNG in this game is pretty kind. It seems to reset upon any screen transition which makes the game incredibly sync friendly. The second boss can also be slightly manipulated by jumping on certain frames.

!!Glitch Discovery (Floor Clipping)
During my analysis of this game, I was noticing that jumping was being affected when hitting the edges of a floor from the edge near the bottom. Because of this, I started using it to interrupt my jump so that I could land earlier and continue my progression without the long wait in the air. Well, I did this a number of times in various places and one attempt got me lodged in the floor. At that point, I noticed you can do a 50% duty cycle jump and continue upwards...as long as the floor had another block above where you stood. After I made this discovery, I talked with Darkman and he mentioned that a map existed of the game. I used it to figure out places that would benefit from this glitch and continued cutting large chunks of frames, bypassing lots of rooms towards my next destination.

At the beginning of the game, there is a missile to the left. Trying to execute this glitch early failed...probably because of the added abilities of the "Hi Jumps" boots, which probably has the upward acceleration to skip detection and cause this to happen in the first place. If this is not the case, then it might still be possible to perform this early missile grab and cuts another huge chunk of frames.
