> **Imported**
> This run was originally published at https://tasvideos.org/2245M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

__Nancy Drew: Message in a Haunted Message for GBA__

Genre: adventure/storybook

* uses programming errors

You probably know Nancy Drew. She's a popular fictional character who has a knack for solving (and attracting) all sorts of mysteries. Basically a Mary Sue, being rich, handsome, immensely talented and leading an exciting life.

As the game begins, she comes to a hotel owned by her friend's friend where accidents have been happening, and rumors even say that it's a ghost behind all the mayhem, perhaps exacting some sort of revenge from beyond the grave. But eventually we find out the problem is a much simpler and common one instead, human greed, and that there's really nothing supernatural going on in the hotel, with the exception of Nancy Drew herself, who knows solutions to puzzles without ever finding them and who causes other strange stuff to happen as well.


__About the game:__

This game was originally released on PC, then ported to GBA. I know enough about the PC port to tell that it is not comparable to this port, due to technical limitations of GBA mainly.

I wanted to TAS a pure adventure / storybook game for a while now... This was eventually the game I settled on, due to its short length and the number of exploits it had for saving time.


__About playing the game:__

The game is divided into chapters. All the chapters take place in the hotel, but between chapters different characters are absent or new pathways open up, allowing you to progress further in the game. It's possible to skip some chapter changes by giving a "double prompt" (read more below), but it's usually pointless and you just get stuck.

Cursor is slowly moved using the directionals. Unfortunately you have to use the cursor to reach path arrows on the screen for moving around, no way around it. Good planning includes minimizing cursor movement time (the most important thing after minimizing screen transitions).

A is used to select things with the cursor or in the menus, simple enough.

B is for turning around or going back one screen. There's also an arrow at the bottom of each screen you can examine with A to do the same.

L and R are used for turning around, which is only possible in certain areas of the game, like the main rooms (dining room, saloon, etc.) and some parts of the corridors (usually where there are crossroads). There are also arrows at the sides of the screen you can examine with A for turning. In areas where you turn with L and R it's usually not possible to use B to turn 180 degrees around, which is pretty annoying. L and R are also used to shift between inventory items.


__About mechanics:__

Screen transitions are the biggest time waste in the run. Forward and backward transitions are slower than sideways transitions, so the latter are preferred whenever possible. It's also possible to skip transitions here and there by using "double prompts".

Planning when to take an item from your inventory into your hand with is in a big role as well. I sometimes take an item ready well in advance, even a dozen rooms before when I finally have to use it, as long as its most convenient considering the cursor movement. Makes for an amusing mental image of Nancy running around the hotel pointing a chisel or some other item at everything...


Ok, so "double prompts". Because this game has its shortcomings in coding and/or testing, you can give double prompts to the game to take more than one step during one screen transition. For example, examine a path arrow with A and press L at the same frame. Nancy steps to next room, and if it's possible, she also turns to left, all in one transition, saving the 70 frames it would've otherwise taken to turn separately.

The combinations include...

- pressing A+B. Examines and exits at the same time, good for activating triggers without even seeing what you did on the screen. Also, you can use it on a forward arrow to take one step forward and turn 180 degrees at the same time, which is sometimes useful.

- pressing A+L/R. On a forward arrow, you step somewhere and turn at the same transitions. On a back-arrow, you exit a zoom-in and turn on the same transition.

- pressing B on a back-arrow exits two zoom-ins at once, which is sometimes useful.

It's basically a glitch, and allows some glitchy effects like skipping cutscenes and the chapter end screens.


The room mechanics in the game are just messy. There are sometimes strange ways to save time when moving around by using the double prompts listed above. Especially in the downstairs corridor, where the fastest route from Dining Room to Saloon involves stepping forward while turning 180 degrees, then turning left, then entering the Saloon. A normal person would've just walked forward two steps and then entered the Saloon, but you know... Nancy Drew, a rich eccentric. Let her do what she wants.


Whenever you put a cursor on (or off) some examinable thing, with the exception of the back- and side-arrows in each screen, the game lags for about 6 frames each time. This is pretty bad, and mostly unavoidable. Better remember it when planning cursor movement... don't hit any unnecessary things on the screen or time is wasted. Sometimes simply keeping a cursor on some object emits heavy lag, so that should be avoided at all times too. Especially noticeable when you have an item in hand, in which case many more prompts turn into lag-emitting ones... but this is not a problem unless you keep the cursor on the prompt any longer than what it takes to immediately examine it, so it is still pretty safe to move around long ways with objects in hand without suffering extra lag frames.

You can move the cursor during the last frame before the 6 extra frames of lag hit you. Useful to remember for getting the most out of your cursor movement.

There's some other strange lag in this game which seems random and makes the game bad for hexing. Based on the frame you do things you can get more or less lag in transitions for example. This is something that I maybe should've looked into more while making the run... I'm sure there are lag frames to be saved here.

You can examine prompts from the side. That is, press towards them and A at the same time when the cursor is right next to them. This way you examine the prompt without having to first wait for the 6-frame lag to hit you, but this doesn't mean you escape the lag. It just gets added at the same time as the transitional lag. This technique doesn't really save any time, but sometimes you affect the random transition lag this way and can save frames.

Finally, the game doesn't think a pressed button is let go until the next non-lag frame. This means that in places like the opening screens or the cutscene at the end of Chapter 1, you should alternate between buttons for skipping text boxes or you waste frames.


__Level-by-levels:__

The many nuances of cursor movement aren't mentioned in this list.

When I talk about skipping "scenes" below, I mostly refer to small image transitions that last for maybe two seconds, showing something being operated for example. But there are a few more elaborate cutscenes that are skipped as well.


__Chapter 1__

''in the first chapter, your goal is to talk to everyone and then visit Abby for a seance. There's also a floor tile puzzle you must solve.''

If the movement looks disorienting, that's because those double prompts are used to turn and walk forward at the same time.

For some reason pressing A+B outside Dining Room allows you to talk to Rose before walking into the room. Looks strange, but probably doesn't save time.

I talk to Rose a second time to be able to pick up a chisel on the way later. It comes in handy in Chapter two.

Now, Nancy is teleported back to her room...


__Chapter 2__

''in this chapter Nancy has to do all sorts of menial tasks around the house, including "reading" a scroll concealed in the stairway balcony, picking up a piano roll, a cassette and an attic key from Saloon, visiting the attic and getting more items and fixing the dumbwaiter of the house. Only then does Nancy decide that it was "enough for one day!"''

A+B is used to skip visibly reading the scroll.

Unfortunately piano roll and casette have to be picked up although you never use them for anything: the chapter simply won't end until you do this.

A+B is used to skip the rope scene at the 1st floor Dumbwaiter.

Nancy is again teleported back to her room.


__Chapter 3__

''in chapter 3 you put out a fire and peep on Louis (the antique guy). Also, you might notice that the chapters from hereon are really short.''

A+B is used to skip the scene in which the threat letter is pushed under the door. A+B is also used to skip visibly reading the letter.

You can try to ignore the fire, but the door to study is locked until you put it out.

A+B is used to skip the scene of turning the Andiron.

A+B is used to skip the scene of peeping on Louis.


__Chapter 4__

''in this chapter Nancy rummages through Louis' briefcase and learns a mysterious chinese term that is somehow relevant to the plot.''

A+B is used to turn and activate the switch for leaving the secret corridor at the same time.

You'd normally have to examine the computer to find a solution to the briefcase lock, but Nancy already knows the answer to it (via acausal means).

A+B is used to skip visibly reading the book and a scene of Nancy pondering aloud what is the chinese term she sees in it... ("gum bo fu")


__Chapter 5__

''in this chapter Nancy goes through an underground passage and examines the contents of a floppy disk she stole from Charlie (the Saloon guy).''

You are forced to call to Emily and ask her about "gum bo fu". I decided to do it on the same cursor trip as putting the floppy disk in hand.

A+B is used to skip visibly reading the disk contents.


__Chapter 6__

''in this chapter Nancy asks people about "gum bo fu" and Rose tells her that the final puzzle to solve was waiting in her bedroom all along. (doh!)''

Have to ask Louis about "gum bo fu".

Have to ask Charlie about "gum bo fu".

Have to talk to Rose twice.


__Chapter 7__

''in this final chapter... wait, this chapter never even starts!''

Chapter 7 has the only chapter change screen that you can safely skip, so I do that with a double prompt (turning while stepping out of the dining room after having talked to Rose). So we're technically still in Chapter 6 until the end of the game.

Some puzzles are completed.

A+B is used to skip the scene of inserting the ruby to the eye of the phoenix.

A+B is used to skip the scene of Nancy getting knocked out by Louis (the real perp all along). 

A+B is used to skip a part of the chandelier untying sequence. Normally you have to tug at the string three times, each time watching a short scene in between. Using A+B you tug at it twice, without any extra scenes in between.

It would be fun if you could've skipped the ending as well with A+B, but it's not possible. So, Louis dies horribly under the chandelier, Nancy sends a happy letter to her friends... then it's just to the main menu. No ending credits or anything. Well that's just great.


__Further improvements or ideas:__

- trying to manipulate lag away

- it's possible to call Emily from the Menu at the upper-right corner of the screen too. In best circumstances it might save cursor movement time, although there's an extra 20 frames penalty because of going through the extra menu itself. I couldn't use this tactic in this run, but maybe using a different route it could come in handy.

- I've seen strange stuff happen when activating a certain laggy prompt with an item in hand and pressing A+L to step in and turn at the same time. The prompt in question is the one leading to Parlor during when there's a fire there. Sometimes graphics can go all messed up and the game takes extra seconds in loading the room for some reason... what I'm trying to say is, there may still be some strange glitches in this game to be found.

- In one of my tests, I put out the fire with A+B and the conversation with Rose was be a different one. I tried it here, but it didn't occur. Not sure if it could've saved any time.

So there you have it... One more submission to fill the currently all too quiet workbench.
