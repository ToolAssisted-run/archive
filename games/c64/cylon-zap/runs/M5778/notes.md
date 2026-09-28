> **Imported**
> This run was originally published at https://tasvideos.org/5778M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Cylon Zap (Compute's Gazette)
Cylon Zap is an arcade-style game where a space station defends itself at all costs. Enemys, known as Cylon's, are constantly attacking the your base. You must shoot them before they dive (kamikaze-style) into your territory and land a strike.

The article for this game can be found on page 48 of [https://archive.org/details/1983-08-computegazette/page/n49/mode/2up|Compute's Gazette Issue 2 (August 1983)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 57th TAS from this series. 

I'm not sure how all this happened, but in the beginning I got a group of magazines from a subscription that my uncle initially started. Well, they sent a few at first...probably to make up for the ones that I missed, to get me interested more.

I can tell you this...this style of the game was very interesting to me; however, the controls and game plays drove me nuts! Since this was written in BASIC, it was slow and not were near responsive as other games that would show up later in the series.

!!Game Difficulty and Ending
There is no selection of difficulty, as it is a game of skill with random variations. There is no ending, but it loops over and over. The magazine article shows that the last increase in difficulty, comes after you score 50 points. At 60, you get an clear cut ending...only to go back and do it all over again.


!!Effort In TASing (BOTing)
BOTing was the only thing that I could think of for this game. It was so painful to go through the entire round of 60 points, that I finally sat down to write a custom BOT for this. What it ended up doing was finding the right RNG seed, which I then modified manually in some places to use the "Smart Bombs" and/or shoot Up/Down over Left/Right (Due to the enemy distances being shorter). Well, after a number of days...the BOT never could get past its fastest spot...so I ended it there.

There is something that is not so apparent, when TASing this game. When a human plays, they are holding the joystick and causing the game to run a bit slower. Because of that, the inputs have to be minimized so that the game can shoot ealier. This is one of the reasons why it was so hard to do this manually, so with the BOT...I designed it to apply 2 frames of a "shooting direction" until it actually fired.  In a lot of cases, the shot wouldn't fire, until it was cleared of any previous shots. Also, a frame or two was recovered when the "non-working" inputs were removed. 

Some of the things that were cleared up, in the BOTed version:
*Faster appearances of enemy ships
*More ships appear vertically, than horizontally (over my manual efforts and other BOTed efforts)
*Appearance of more than 2 ships at a time (which means its better to use a smart bomb to clear them out faster)

The BOT that I wrote was more like the one that I wrote for the game [8138S], that [user:DrD2k9] and I TASed.

!!Human Comparison
[module:youtube|v=1Wzt0DVpYSs]
