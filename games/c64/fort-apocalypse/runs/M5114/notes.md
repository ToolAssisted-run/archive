> **Imported**
> This run was originally published at https://tasvideos.org/5114M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Fort Apocalypse
Fort Apocalypse is an action packed game from the start. At the very beginning you see yourself in the position of a pilot whose helicopter has run out of fuel, indicated by an alarm. Fortunately, your helicopter hovers directly above a fuel platform, where you can fill up for the first time. Right after your fuel tank is full, you have to shoot your way through an aerial mine field, flying over enemy tanks and bomb the barrier to enter the underground fortress. Laser beams and hostile helicopters will also prevent you from recueing the prisoners from the fortress. At the lowest level you'll have to destroy the reactor of the complex. After that, you'll have to return to the starting point. If you succeed, you have completed the game

!!!Manual(s)
https://www.c64-wiki.com/wiki/Fort_Apocalypse (Supports my use of a disk)

https://www.lemon64.com/doc/fort-apocalypse/242

!!!Tools Used
*Bizhawk 2.8.0
*Lua Script (BOTing of RNG, which controlled placement of prisoners)
*RAM Search / Hex Editor (Searching for prisoner and barrier locations)
*RAM Watch

!!!Effort in TASing (With Documentary)
This was the most frustrating TAS I have ever done, on the Commodore 64. I had originally started this project in late 2019, and thought that I would have been done in a matter of days. Starting over multiple times, over the past 3 1/2 years, I became obsessed with solving tiny problems that would yield big results. This effort was prominent enough, that I decided to create a small documentary on my effort.
[module:youtube|v=7Fopd34YJjY]

!!!Alternate TAS
The submitted version, has a route that I consider to be very boring...yet it is 323 frames faster over the alternate route. So, to preserve my original work, I'm sharing that encode as well, which is the right-hand approach to the reactor core.
[module:youtube|v=q-Fot8VvE0E]

!!!Details
__Movement Optimization__

The movement of the helicopter had odd behaviors, yet still some ability to exploit movement for optimization. The most notable parts can be seen when passing through tight areas, such as passages through mines blocking the way. To avoid collisions, speed and slight position changes were needed to prevent any loss of helicopters. Because the Commodore 64 operates on the principle of true pixel collision, it is possible to avoid tiny details that cause any stoppage to a run...which is the case when avoiding mines, where the flashing objects exist.

__Prisoner Placement__

I knew early on, that prisoner placement was going to be a huge deal, as this would affect my route. By BOTing the ranges of 2794 through 2988 (Vaults of Draconis), would affect where the prisoners are located. At first, I was having trouble forcing them to show on a direct route towards the next area of the Crystalline Caves. Eventually, I was able to refine my BOT to force prisoners to two locations that didn't require any "Back Travel".

__Barrier Position (Reactor Core)__

From the very start of the game, frame 2793 to be exact, a decision was made for which side a barrier would show on the reactor core, deep within the Crystalline Caves. I had suffered this problem many times, not knowing how to change this situation. It was when I discovered a second area of memory addresses, holding the location of this information, that I would finally be able to trace back and determine/force which route that I wanted to use. I was perplexed that a decision was made for a secondary location, so early in the game. This was one of the top reasons I would give up and stop working on this game.
Because of these barriers, this means you have only one available route. In this case...the "Left-Hand" approach was the fastest, after forcing the decision to make that side open. Among the two versions that I created, the left version is 323 frames faster, yet boring in my opinion. If you care to see the "Right-Hand" version, please take note of my "Alternate TAS" above.

__Routing__

Optimal routing came directly from forcing RNG to allow a left route, in the first area where prisoners are concerned, and an approach on the left of the reactor core. When these area are set for the best situation, it is fixed to complete the operation without any speed sacrifices. A 3rd situation exists, that isn't dependent on RNG though, but a trigger detection between the helicopter and a landing pad. As you approach a landing pad, from the left side, an early trigger occurs. If this was attempted from the right side, of the same object, it will not occur. Because I am able to force the prisoners to be appear in my direct flight, this makes left route the perfect choice for exploiting that mechanic.

__Mine Passage__

It was late in the project, that I eventually discovered that the flashing parts of the mines was the key to avoiding helicopter loss. Once I discovered how to detect the barrier location on the reactor core, I eventually was able to understand why passage, through the mines, was interrupted on some passes and not others. I also make this point in my documentary, where the helicopter blade extends out far enough to touch these objects. By varying my speed and slight position adjustments, I am able to keep from touching these trigger areas.

__Original Fuel Management__

I knew from the very start, that managing fuel would yield the best times for this TAS. To this day, I still wasn't able to determine what the correct amount of fuel that was needed to complete this game. My guess would have been around 500 to 600 units; however, in mid-January of 2023, I stumbled across a glitch that would eventually change everything and nullifying the need to know that perfect amount.

__Refuel Glitch__

During my fuel amount experimentation, I ran across an unexpected glitch. I was completely blown away by this and knew that I had to figure it out. I believe I spent about 2 weeks figuring this out and eventually came up with a method to reproducing this automatic refuel. Below were the points that I saw, that helped me to making use of it:
*You must have 2 or more prisoners to collect up
*The Fuel timer must momentarily freeze
*---You cannot perform this refuel with zero units of fuel...which was one of my efforts.--- I was wrong, it can be done with Zero fuel, I just didn't experiment with it enough to find it. This is great though, I can say that I never refueled in this game!!!
*The collection of the prisoners must be done in sync with an apparent timer in the game. (Very sketchy, but slightly provable by the delay of forward movement)

!!!Human Effort
This run, was featured in the wiki, for this game. It had parts that were sped up to get past the long and grueling sections. So, I am unable to give a time, over a WR...which doesn't seem to exist.
[module:youtube|v=AWiH7yReD1I]

!!!Thanks
As usual, I want to thank the following people for conversations and sharing in my progress
*DrD2k9
*Worsel
*Aran;Jaeger
