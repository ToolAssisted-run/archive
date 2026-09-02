> **Imported**
> This run was originally published at https://tasvideos.org/5796M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Pegs (Compute's Gazette)
"Pegs" is a game that has been around for decades. You've probably played it when you've eaten at Cracker Barrel, where you try your wits against that golf ball tee triangle game! So...can you do it? or are you "Just plain dumb!"? LOL

The article for this game can be found on page 52 of [https://archive.org/details/1986-12-computegazette/page/n53/mode/2up|Compute's Gazette Issue 42 (December 1986)]

!!Isn't [5775M|this game] already published?
Yep.  But that is a __maximum score__ run.  I feel this game also presents an __any %__ option.

While the main goal of the game is to continue jumping pegs until there is only one left (for the best performance), the mechanics of the game provide for end-points (conditions where further play is not possible) other than with only 1 remaining peg.  These aren't technically losses, they are just lower score end-points.  In the above mentioned "Cracker Barrel" versions, the game tells you how smart you are based on your performance.

Basically, any point at which no further moves can be made is a valid end-point for the game albeit one with a less than maximum score.
Given that there are 29,760 ways to end the game with only one peg when the starting hole is at the top of the pyramid, including the number of other endpoints drastically increases the number of possible end-points to this game ---(no, I haven't figured out what that number is)--- to 598,390.

So how could one go about figuring out the the shortest possible game?  Ultimately, it would require figuring out what is the shortest number of moves that reaches a valid end-point, then (because the various sequences of play occur at different speeds, as nymx found) testing every one of the possible sequences with that shortest number to determine which is actually fastest.  This initially sounds kind of daunting.  

Thankfully, [https://www.durangobill.com/PegSolitaire.html|other (smarter than me) people] have already figured out that the shortest number of moves to reach an end-point is only 6 moves when the hole starts at a point on the pyramid, as in our game here.  Even better is that there are __''only 2''__ total sequences of 6-move playthroughs; the one presented in this TAS and its horizontally mirror image sequence.  Due to this, TASing this run became fairly easy and didn't require the botting that nymx had to do.  It only required manually testing the two possibilities of which, this TAS was my first attempt.  The mirror image sequence is slower.
