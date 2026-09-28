> **Imported**
> This run was originally published at https://tasvideos.org/6580M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Meteor Strike(Compute's Gazette)
Your spacecraft is caught in the middle of a beautiful but deadly meteor shower. As ship commander, can you survive?

The article for this game can be found on page 37 of [https://archive.org/details/1986-07-computegazette/page/n60/mode/2up|Compute's Gazette Issue 59 (July 1986)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 95th TAS from this series. 

Oh man...I really remembered this issue. There was a lot of excitement, as I saw each game for this magazine as high value. I eventually got all of them typed in and I enjoyed each one very much. Speaking of this game though...it was shocking to see such a game published in this series, as it gave me an opportunity to compete with a similar game of Asteroids.

!!Game Difficulty and Ending
There is no difficulty selection. The game progresses through levels, until it reaches level 9. I thought that this game would have kept increasing, but it didn't do that at all. Because of this, I had to go for "maximum score". After a discussion with the judges, it seemed to be a good idea to go until the score broke its container. In this case, it will roll over to "000000" and push the container out to the left. This makes it a good stopping point, where I end it at "999990" to get the highest  score possible for display.

!!Effort In TASing (Not BOTed)
I really tried to figure a way out to BOT this, but I didn't understand it enough to do so. After spending almost 2 years on this TAS...I think I may have discovered a way to do so. But for now, this game was manually TASed, usiing lua scripting to show me what kind of asteroids were coming.

*Asteroid Points: Large asteroids are worth 100 points, while small ones are 200.
*Asteroid RNG: Early in the TAS...I had wrote a lua script to show me what kind of asteroid was going to emerge. Eventually, this got so painful that I stopped manipulating RNG to give me small asteroids only. Stopping this seemed to help, as the asteroids would emerge more frequently and give me faster waves.
*Glitches: There is a warping glitch that I use to move around vertically, faster than my thrusters would allow. It is performed by one of the 3 types of inputs
**LEFT+RIGHT: When done together, this produces the faster form of warping, moving upwards almost an entire screen lenght.
**DOWN+LEFT+RIGHT: When done together, this produces a medium warp, covering about 1/4 of the screen going upwards.
**UP+DOWN+LEFT+RIGHT: When done together, this produces a downward warp. It is almost as fast as the DOWN+LEFT+RIGHT combination.
*Warp Shooting: When you perform a glitched warp, you will appear as a random blob of pixels. My guess is, that the pointer to sprite data is getting skewed...showing random memory data. While in this state,  you can fire your weapon and it will get a super fast shot that will continuing for a short period of time. If timed well, you can strike asteroids super quickly.


!!Human Comparison
Couldn't fine one.
