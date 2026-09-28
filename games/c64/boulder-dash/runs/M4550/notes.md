> **Imported**
> This run was originally published at https://tasvideos.org/4550M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! Boulder Dash
This classic game is about a diamond chase underground with many obstacles. Try - as Rockford - to collect all required diamonds in a total of 16 caves (A-P) each with 5 difficulty levels, and find the exit in the time given. After every 4 caves (D, H, L, P) follows a so-called "intermission", a logical puzzle (without its own "cave letter"). Rockford can dig through the ground and push rocks. But these can also be dangerous. If he stands directly below a rock, Rockford can hold it on his head. But if a rock falls on his head, it will cost him a life. Rocks will not stay on each other or on walls. If Rockford digs away the supporting soil, rocks will start to slide. Furthermore, there are some not-so-friendly animals such as fireflies, amoeba and other things you'd better not touch. Butterflies and other inhabitants of the underground can only be defeated by letting rocks fall on them. When defeated, they turn into diamonds, which Rockford can pick up. As soon as the necessary amount of jewels has been collected (the number is shown in the upper bar), the escape tunnel opens into the next level. Strategy and thoughtful planning is the basis to master this game.

After completing these 16 caves, it returns back to Cave A on Difficulty 5 (which is selected at the Title Screen).

!!! Tools Used
*Lua Scripting (For BOTing Cave G's RNG)
*RAM Watch
*BizHawk 2.6.1

!!! Why TAS this game?
Once again, another game that I used to play on the Commodore 64 in my youth. As usual, this game was difficult enough that I could never get past the first few levels. There are no official speed-runs that I could find, for comparison; however, runs do exist but don't seem to be serious enough for me to provide.

!!! Re-Record Count
Yes, you saw that correct. I've been TASing this game for about a year. During the process, I realized that Cave G needed to be BOTed for RNG reasons. This is where a chunk of re-records were made. As for the other caves, tons of work was put in to routing and other strategies.

!!! Strategies
This game is mostly routing. Timers exist in the game, which drive the movement of hostile obstacles. Not knowing where the timer falls, it was an experiment of constant tests...when coming in proximity to these obstacles. Knowing how you would react,  within their deadly touch, could be determined and routing would be adjusted to make the best of the situation. Other than that, RNG was only an issue for Cave G. See below for details on Cave strategies.

!!Strategies by Cave

*Cave A (Intro)
Pick up Jewels and exit before time is up. No special strategies. Committed to grabbing the fastest 12 diamonds.

*Cave B (Rooms)
Pick up Jewels, but you must move boulders to get all Jewels. Getting jewels in the right order, helped to keep obstacles from slowing me down.

*Cave C (Maze)
Pick up Jewels. You must get every Jewel to exit.

*Cave D (Butterflies)
Drop boulders on Butterflies to create Jewels. The only strategy that I came up with, was to lure one butterfly over while I waited for a bolder crash to finish developing diamonds. This saved time, instead of doing one at a time.

*Cave E (Guard)
The Jewels are there for the grabbing, but they are guarded by the deadly Fireflies.

*Cave F (FireFly Dens)
Another level where each Firefly is guarding a Jewel.

*Cave G (Amoeba)
Here, you must surround the Amoeba with boulders so it can't grow any more. Pick up Jewels that are created when it suffocates. RNG controls the spread of the Amoeba. I ended up BOTing this level to get the Amoeba to spread extremely quick. Not doing so, it took more than a minute to fully spawn and convert to diamonds. As I learned more and more about this game, I had to go back and redo rooms before Cave G...which meant that I was Re-BOTing it in its entirety. This is where about 90,000 re-records came from.

*Cave H (Enchanted Wall)
Activate the Enchanted Wall and create as many Jewels as you can. Basically, a bolder must smash into this horizontal floor/wall, to produce the diamonds

*Cave I (Greed)
You have to get a lot of Jewels here. Lucky there are so many.

*Cave J (Tracks)
Get the Jewels and avoid the Fireflies. This is probably one of the more challenging routes of the game.

*Cave K (Crowd)
You must move a lot of boulders around in some tight spaces. I took it a bit further, by performing some maneuvers to get the deadly moving obstacles to explode near some walls, reducing my travel time and optimizing it further.

*Cave L (Walls)
You must blast through walls to get at some of the Jewels. Drop a boulder on a Firefly at the right time and place to do this. This was extremely difficult to time the arrival of these exploding obstacles, but I eventually worked it out so that time was minimally wasted on waiting...which doesn't seem to be all that much.

*Cave M (Apocalypse)
Bring the Butterflies and Amoeba together and watch the Jewels fly. Of course, that is the statement made in the instruction manual. I took a total different approach...which yielded the wildest scene of the game, IMO. This is my favorite cave of the entire game, where I narrowly avoid death with all the falling diamonds.

*Cave N (Zigzag)
Magically transform the Butterflies into Jewels, but don't waste any boulders and watch out for the Fireflies. Ha! I only use two boulders, timed and very creatively, which caused a chain reaction to provide all the diamonds on my trip to the bottom. A very fun cave to watch.

*Cave O (Funnel)
There is an Enchanted Wall at the bottom of the rock funnel. Optimization was tricky, only performing the absolute necessary moves to allow enough boulders to come through.

*Cave P (Enchanted Boxes)
The top of each square room is an Enchanted Wall, but you'll have to blast your way inside. Another example of performing the absolute minimal effort to allow for the boulders to convert and fall with little effort on collection.

!!!Special Thanks
*DrD2k9 for the talks on submission viability.%%%
*feos, for reviewing my concerns over submitting this, and confirming the choice of difficulty.%%%
