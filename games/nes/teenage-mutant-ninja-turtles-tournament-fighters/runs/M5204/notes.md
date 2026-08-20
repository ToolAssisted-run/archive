> **Imported**
> This run was originally published at https://tasvideos.org/5204M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Yeah, a TMNT game where turtles don't have their weapons.

This TAS gives its best to beat TMNT Tournament Fighters in the fastest time. It's a regular fighting game. 6 fights, 2 victories in each match, happy end, credits roll.
 
!! Game objectives

* Hardest difficulty (Hard)
* Turbo mode
* Infinite match timer to remove score counting-up moments 

!! Comments

Basically it is a big bruteforce. For each fighter, I picked the fastest strategy and did my best to realize it, despite various CPU resistance because of playing on Hard.

! Fighting tactics

In general, getting close to your opponent and throwing him until he's knocked out is considered the fastest strategy.
The following technics/manipulations are used to keep the strategy in tact:
* delaying input on the character "VS" screen changes the pattern of your enemy;
* delaying input to throw an enemy, if the gap for your successful action is more than 1 frame long.

In most cases, after being thrown, enemies usually attack upon getting up, no matter how far you are. TAS tries to make enemies use slower attacks so it's enough time to perform a throw. 

DrBaldhead described [Forum/Posts/439472] some of the game's oddities. Turtles can use their special moves as soon as a round begins because they don't have to duck and wait until their "charge" is maxed. TAS tries to prevent them from doing that.


When turtles run at you, they almost always throw you as soon as it's possible. I don't know how it works, but matching the distance by switching to walking (watch input starting from frame 5274) gives you a 1-frame gap to throw your opponent. Sometimes it works without switching to walking.

Switching to walking sometimes also makes CPU change its tactic which lets you perform a throw.

Long time ago I made a [Forum/Posts/439168] damage list which shows how much damage you deal to which character by doing which move. To sum up, some characters take less damage than the other ones, which made me use either one air kick or air elbow punch (press A or B while you're running) in each round to knock the opponent out quicker comparing to throwing him one more time.

! Character choice

Mike was chosen mainly because of his powerful special move, which people call "Rocket". Although, in general cases, special moves lose to basic throws by time, this one lets you beat the bonus game faster.

!! Other comments

! Possible Improvements

* Like I said, the movie is manually bruteforced to beat the game as fast as possible. I'm sure there are minor improvements here and there, but pushing it all to the limit is beyond my patience and time. I hope it will eventually be improved by some __bot__. The main point is pick the best enemy RNG at the character "VS" screen, which results in picking the best match for each character because, if Round 1 is fast, it's not guaranteed that Round 2 will also be fast.

* Better use of input mashing to trick CPU. If you look closely, in the fight with Don (see input starting at the frame 7842) I leave input for some more frames, although it doesn't change anything, since the throwing animation has already begun, it made Don not to duck-kick me as soon as he gets up.

* The fight with Casey is questionable. It's the only fight where I use a special move at the beginning because running at him makes him stepping away, which would make the first throw quite slow because he walks faster than any other character.

* Shredder has the longest get-up animation. A combination of air kick + throw would be faster, but after he is kicked, he usually does his rapid-punching attack which happens faster than I throw him.
