> **Imported**
> This run was originally published at https://tasvideos.org/5965M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Human Rat Race (Compute's Gazette)
You're racing through a maze with a sack of gold..running, twisting, turning. Oh no! Another dead end. You retrace your steps and hear the clock ticking...six, five, four....You see a deadly drone on your left. Can you get past it? Barely. Three, two...You see the xist and your path is clear, or is it? You make a mad dash and escape with your gold just as time runs out. Is this is a scene from Raiders of the Lost Ark? No, it's "Human Rat Race", and exciting maze game.

The article for this game can be found on page 46 of [https://archive.org/details/1988-03-computegazette/page/46/mode/2up|Compute's Gazette Issue 57 (March 1988)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 70th TAS from this series. 

Very clear memory of typing this in. I always loved typing in "Machine Language" games, but there was one problem with this one...it was meant for two players. Even though it is a two player game, there way a mode you can play to race to the other side with a challenge. Adding drones to spice it up!

!!Game Difficulty and Ending
At the beginning of the game, there is a menu that you can select different modes of play and how many drones are in your way. Here, I choose the maximum number of drones, 15. The ending is clear, as you must race to the other side...where you will hear a sound and a message, declaring "Blue" winner. Why didn't I play "Red's" side? Doing so slows up the game.

!!Effort In TASing (Not BOTed)
Surprising enough, this game wasn't just a simple maze solve...it also contained the common TASing techniques I've used in so many other C64 Compute's Gazette games. Some of those details are:
*RNG Manipulation: With all machine language written games, RNG is changed by typing keys or pressing a direction. This can immediately affect the reaction of non-AI enemies. This only works, because ML written games can call a ML Kernel routing that supplies a random value. This value can be changed, when interrupting the "tick" counter.
*Not Hold the Input: Unlike most ML games, this is the first one that I've seen where holding an input direction, actually slows up the game. So here, I found the optimal frame span to allow the cutting of a frame or two over one block of movement.
*Maze Manipulation: Most mazes drawn, almost follow the same patterns; however, there are variation in the left and right side that can help out. Before the maze shows, I can randomly type in characters or press a direction on the joystick to give me variations to test.


!!Human Comparison
Couldn't find one for this game mode. There are two, but I could only find "Grab the Gold"
