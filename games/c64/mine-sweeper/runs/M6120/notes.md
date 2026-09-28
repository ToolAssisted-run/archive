> **Imported**
> This run was originally published at https://tasvideos.org/6120M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Mine Sweeper (Compute's Gazette)
You've received a message that Tyrabian mine layers have been spotted just outside the Earth's atmosphere. Intelligence reports indicate that the Tyrabians intend to conquer the planet without destroying it. The first wave of attack will attempt to destroy major military installations. The second wave will shut down the planet's major power stations. The third wave will crush any remaining pockets of resistance.

You're the commander of the interceptor base in the Gamma quadrant. As such, it's your job to see that the Gamma power station remains online and operational. Failure could lead to the Earth's destruction.

The article for this game can be found on page 27 of [https://archive.org/details/1989-07-computegazette/page/n28/mode/2up|Compute's Gazette Issue 73 (July 1989)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 82nd TAS from this series. 

This was an issue that I never had as well. Too bad...this was an excellent game which I foresee would have provided many hours of replay-ability.

!!Game Difficulty and Ending
There is no difficulty selection. You just start the game and play as far as you can get. Thankfully, there are only 5 different levels...where each get increasingly difficult. At the end of each level, is a boss that must be destroyed to advance onward.

As for the ending, you will see a "winning" screen that congratulates you on your success.

!!Effort In TASing (Not BOTed)
The mechanics and timing of this game caused me some problems in optimization. After awhile, I started to realize that boss's appearance was due to managing the appearance of the enemy mines. If you clear them out at the right time, the boss will appear. Playing around with this helped to find a faster solution.

Dealing with the boss was another tasks. Just because you see your weapon strike the boss...doesn't mean it actually caused damage. After awhile, I noticed that I was killing some faster than others. This prompted me to finding an address for the bosses HP. Well, address 0x1dc9 was that location...only it counted hits, where you must strike the boss 40 times.  In this run, you'll notice that I don't hit the boss 40 times though...instead I strike in certain locations to get double or even triple the hits with one shot. Having this HP address helped to determine when I have done that.
 
!!Human Comparison
This player will demonstrate the game nicely.
[module:youtube|v=gn3l-kAav80]
