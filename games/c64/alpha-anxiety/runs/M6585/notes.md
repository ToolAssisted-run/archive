> **Imported**
> This run was originally published at https://tasvideos.org/6585M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Alpha Anxiety (Compute's Gazette)
Sure, everyone knows the alphabet...but how well? You may go back to the ABC's after tackling this puzzle. It's a good example of a program that's educational for children, and entertaining for game players of all ages.

The article for this game can be found on page 71 of [https://archive.org/details/1985-03-computegazette/page/n72/mode/2up|Compute's Gazette Issue 21 (March 1985)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 96th TAS from this series. 

This game is an example of where my attention was drawn by other things. I never knew this exited, yet I owned the magazine. [5314M|Heat Seeker] was a game that quickly caught my attention and kept me from seeing other things in this magazine.

!!Game Difficulty and Ending
There is no difficulty selection. The game is time controlled...so you must beat the game before the timer runs out. Once done...you hear a jingle, and the game resets for another try.

The more time you use, the less you have to play with on the next round. Because this is a TAS, the time increases more and more....thus proving that one round is all you need to do to show case this game.

!!Effort In TASing (BOTed)
After I ran through this game manually, I realized all the details that I needed to BOT it. In this case, it was necessary to find the best RNG Seed. After 813 seeds, I found the fastest solvable round. But...how did I determine the correct seed? After each RNG application, I used a calculation called the "Manhattan Distance". After each calculation, I compared it to my previous best. If it was better, then I saved the movie and held onto the project file for me to manually play the game out to the end.

To further explain my use of the "Manhattan Distance", the game is played from A to Y. Between each sequential letter (A to B, B to C,...., X to Y), the distance is calculated and then totaled to have an ending score. The lower the score, the faster the game. The board layout is a 5 x 5 playing field. Each square is one move, thus equaling one unit for the calculation being used. This game takes 65 moves to land on all of the letters in sequence.


!!Human Comparison
This video may be for the Commodore Vic-20, but it plays the same as the C64 version.
[module:youtube|v=HhMZyvnmGjk]
