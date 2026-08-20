> **Imported**
> This run was originally published at https://tasvideos.org/7236M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Pre-Scriptum: various Lua scripts and a custom-coded tool were used to make this TAS possible. Feel free to read "Making of" section for more details!

It's a kind of match-three game. You place stacks on the field, make lines of 3+ blocks of the same color and they disappear.%%%
You play against an opponent (CPU) and make any of its columns go through the top of the field. How? By gaining points and using them to push its floor up.

There are 11 opponents and each one requires two rounds. In total, that's 22 rounds to play.

!! Glossary

* Stack - a vertical conjunction of 3 blocks you place on the game field, like a Tetris piece. It can be swapped by pressing A or B. The top block becomes the middle block, the middle becomes the bottom, the bottom becomes the top block.
* Block - a component of a stack. Each block has one of 6 ornaments, but I prefer calling them by colors: Red, Orange, Yellow, Green, Blue, Purple.
* Sequence - sequences of stacks you and your opponent are supposed to place on the field, one by one.
* Column - a vertical line on the game field where blocks can be placed. Each column consists of 13 cells, or rows if you wish.
* Game field - a grid of 6 columns.
* Cell - one of 6x13 spots on the game field where a block can be placed.
* Debuff - negative effect applied to an opponent. Described below.

!! RNG manipulation

2 types of manipulations (out of 4) were performed in the game: sequences and opponent's actions.

! Sequence manipulation

For Round 1, your sequence is manipulated through delaying of your opponent's quote skipping, after the map is shown and your opponent appears.%%%
For Round 2, your sequence is manipulated through delaying your victory (by pressing C to make the opponent's field overflow).

Schematically, it looks like that:
* Round 1: S (to make the opponent appear) -> 138 frames -> RNG S (quote skipping) -> 109 frames -> "Ready" S -> round starts
* Round 2: C (slam to win the round) -> 399 frames -> "Ready" S -> Round starts

! Opponent's actions

The CPU deterministically does the same thing with its sequence, like it's all preplanned. %%%
There are two ways to affect its actions:
# Push its floor up (slam), when you have 10-30 points, and, hence, ruin its plan to place the current stack where it wanted;
# Activate a debuff to affect the opponent's behaviour, where it is programmed to imitate malfunctioning.

! Items from chest manipulation

This manipulation type is out of scope of this TAS. I tried delaying my victory in Round 2 and delaying Start presses to open the chest, and the item was always the same. I assume the item is selected together with the sequence you get at the beginning of each round. 

! Star stacks

Star stacks are special golden-shining blocks given by the game itself as a measure of tie-breaking the match (probably depends on the time passed). They produce 3 different effects, depending on which jewel touches the ground or the block:
* arrow up pushes the opponents floor up,
* arrow down pushes your floor down,
* square makes all blocks of the chosen color disappear (like in Columns 1).%%%
Since all rounds were completed quickly, no star stacks were ever given.

!! Debuffs on opponents

There are various debuffs (negative effects) which happen upon performing a long combo chain and, after that, by clearing a shining jewel in a combo match. %%%
They include: 
* upside-down screen, 
* black/white jewel colors, 
* inability to swap your active stack,
* hidden "next" stack.

Some opponents are programmed to slow down when certain debuffs are active, which delays your victory.

!! Other game specifics

For all opponents, except the Mummy and the Sphinx, the tactic of making them filling a column with 6 jewels was used. It's a fairly possible scenario and fosters the fastest round finish.

When an opponent makes a combo and you push the floor up, you have to wait for its combo animations to finish before the floor push takes action.

!!! Making of

I made my first TAS back in 2016. My solution was obviously hand-made and I didn't even know you could manipulate anything but your opponent's actions. Then I saw wesen's [UserFiles/Info/40276589931889542|WIP] and found that you can manipulate sequences, but then I dropped the idea of do anything about the game. Even when I became a software engineer, I wasn't thinking about it.

In 2024, [9065S|this] Columns 1 TAS submission showed up. It reminded me about my attempts, but nothing more.

In Feb 2026 I came across a CS article about optimised search algorithms. While puzzling about cases to try something out (as it wasn't my area of expertise, just curiosity) I remembered about Columns 3. I was experienced in both TASing and programming, so I decided to get the ball moving, and now you're seeing my results!

Given:
* multiple opponents (styles of play),
* opponents' actions are affected by RNG,
* each round has random sequences (because you manipulate these),
* each tested sequence requires an optimized solution.

Obviously, it is a real challenge to perform it all manually. That's why I decided to utilise computer's calculation abilities to do what I want. The pipeline is manual, although I wonder how I would link it all with Shell scripts, but its distinct processes require you to just do operator functions.

! 1. Sequence exporter
First, a variety of sequences is exported. For this, I wrote [https://github.com/DmytroM1998/columns-resolver/blob/main/bizhawk-lua/Columns3-Sequence-exporter.lua|Columns3-Sequence-exporter.lua].

This Lua script must be activated on the RNG-affecting frame (C or Start must be pressed) with "Ready" Start being already pressed to begin the round.

It creates a text file with the current frame in its filename in "Lua" folder, fills each column with 4 stacks (6x4=24, in total) and writes three upper-case letters resembling block colours (from bottom to top) to a new line and puts a line breaker at the end.%%%
After all columns are filled, it inserts a blank frame before the RNG-affecting one, manipulating a different sequence. A new text file is created. The process goes on until manually stopped.%%%
Note: Sequence exporter doesn't take the raised floor into account. If the CPU, like Sphinx, performs aggressive combos, you may have to switch to the next RNG-affecting frame manually and restart the script.

! 2. Programmed Columns resolver
Second, the collected files describing sequences are processed to get a variety of solutions for each sequence.

I coded so called "[https://github.com/DmytroM1998/columns-resolver|Columns Resolver]", a tool which takes files with stacks described inside and returns HTML files with solutions sorted by gained score (while taking the score carry limit of 30) and frames spent on reproducing it in the actual game. Each solution is described in details!

! 3. Sequence putter
Third, the picked solution is re-created in the game. For this, I wrote [https://github.com/DmytroM1998/columns-resolver/blob/main/bizhawk-lua/Columns3-Sequence-putter.lua|Columns3-Sequence-putter.lua].

You copy-paste the solution steps into the special field at the beginning of the script, launch it at any moment after "Ready" Start is pressed and it produces optimised input of swapping and putting each stack where it has to be placed. It stopped once the last stack is successfully placed.

! 4. Opponent actions manipulator
At last, the opponent has to be manipulated to do mistakes, so you win all your rounds in the fastest time. As mentioned in "RNG manipulations" section, you can push the floor up to make your opponent do something different. For this, I wrote [https://github.com/DmytroM1998/columns-resolver/blob/main/bizhawk-lua/Columns3-C-bruteforcer.lua|Columns3-C-bruteforcer.lua].

This Lua script auto-presses C on each frame from the frame you launch it at (C mustn't be pressed on that frame). There is a time period, at the end of which it checks whether your opponent has reliably made any of its columns at least 6 blocks high, rejecting combo cases, where the column is just temporarily 6 blocks high.%%%
The process goes on until manually stopped. It doesn't track situations your score has already overflown the max carry limit (30), so it has to be watched over after some time.

!!! Level by level comments

!! The Spider

This CPU often prefers corners. First, it chooses the column and then put a stack at a moderate speed. Its first stack is always placed in the left corner. However, it notices possible patterns, swaps and puts stacks accordingly.
The cases of putting a stack on top of another stack you see in this TAS are probably dependent on RNG, but it's a rare case which TAS pulls off.

! Round 1

Stack sequence got from pressing start at the frame 483 is the first one that's optimal and the CPU may misuse to put a stack on top of another stack. Also 484 is lucky.

Stack sequence at 487 is the best one available, but CPU doesn't play in favour of TAS. So I ended up using the one at 504.

! Round 2

This one was a little harder to tackle. All "80-points-in-13-stacks" solutions didn't work. The CPU didn't feel like repeating its mistake.  Also, some neighbouring sequences were identical.

!! The Bat

It uses swing-like pattern to put stacks in either corner. It takes 835 frames (13.9 secs) for it to form a column of 6 jewels, and theoretically 1164 frames (19.4 secs) - of 9 jewels.
Unlike the spider, the bat's AI doesn't seem to be influenced by RNG. It keeps putting the stack in the same place over and over again.

Fortunately, it's still possible to make it stack 6 jewels in the meantime if your attacks destroy "stubborn" stacks.

!! The Skeleton

It uses swapping to pick the right order. Sometimes it does it right before replacing a stack, which adds up to the spent time. Overall, it puts stacks faster.
Making its field upside down slows down stack placing. Making its field black-and-white makes it put stacks in safe spots.

In Round 2, I even managed it to make him put 2 stacks into the default column, but pushing the field up is still faster.

!! The Chest

It places first 6 stacks at the bottom of the field in a random order. After that, it starts placing stacks thoughtfully. This tactic makes a column of 6 blocks quite a usual event.

Color blinding debuff doesn't do anything.

!! The Ghost

This is the first hard opponent, which doesn't have a weird placement pattern and thinks from the very beginning. However, it operate at quite a moderate speed.

Debuffs make it make mistakes.

!! The Snake

It acts a bit quicker than the ghost, but it has a failure pattern, like the Spider. At least, in Round 1, I found it thrice. However, it was absent in Round 2.

!! The Zombie

It's a strong opponent, although it still tends to make rare mistakes. Some sequences appear beneficial for it to build easy combos. Besides, some sequences start repeating.

Round 2 was very difficult to beat because of multiple factors. Sequences were either easy for CPU, or hard for both of us. Debuffs were ruining my plans, so I had to pick various stacks to see if debuffs could play in my favour. One of such cases got into the final TAS.

Color blinding debuff makes it do mistakes.

!! The Scorpion

It's a major step up, comparing to the zombie. Scorpion more eagerly manages the field bottom, but high columns still occur on very rare occasions, which is surprisingly kept under control, thanks to the convenient sequence organisation to have reserve matching stacks, in case the player pushes the floor up.

Picking out the sequences, where it happens to build a high column under passive conditions, are all failing in practice. The CPU either changes its strategy, or it has a reserve stack to circumvent your strike.%%%
Also, Round 1 featured duplicate stacks, which Scorpion uses to finish combos.

!! The Witch/Magician

Another improvement over Scorpion. During test tries, I noticed it was going for risks on some occasions, but these risks were always paid off, like the Witch knows what stack comes after the next one.%%%
Well, risks is how TAS abuses them to earn victories.

Also, in tight situations the Witch tends to make mistakes.

!! The Mummy

Mummy, as the pre-final opponent, is a downgrade. It acts mostly like Witch, but, depending on the sequence, shows off a very dangerous pattern of placing 3 stacks in both corner columns, making it a very easy target for skilled players. This pattern is abused by the TAS to win quickly.

It's the only opponent in the game which may outrun the TAS build-up. In Round 2, I found a sequence (press C on the frame 39378) which makes the mummy build a high columns in just 9 secs. I tried hard to brute-force it to get the fastest possible solution to get 50 points, but unfortunately it appears so slow I had to leave a different sequence in the final TAS. Uh, that's disappointing.

!! The Sphinx

It's the mummy, but it's a little upgraded. It uses the risky pattern of filling the corner columns, but is capable of building combo chains.

Nothing much to say. TAS abuses that pattern again.

!! Possible improvements

! Better solutions

My pipeline produces fairly good results, but I have doubts they are the fastest possible.%%%
I also have doubts practice may ever reach the theory because winning a round in the fastest time possible affects sequence RNG for all further rounds. If anyone ever goes for it, aim for the in-game time instead of real-time because it takes much more sequences to try out.

! Magic Gem

Throughout the TAS I didn't get a single Magic Gem from a chest, which is the only attacking item. It produces a random debuff on your opponent and, hence, increases the probability of your picked solution to be successful. 

Theoretically, it can save several seconds. For this to work, "Columns3-C-bruteforcer" (or a new script working alongside it) must be updated to perform item selection, thus creating an inner loop and making the manipulation process slower.

!! Special thanks to:
* [user:wesen] - for his WIP mentioned above,
* Roy's Gaming Garret - for his old [https://www.youtube.com/watch?v=QL0xOoBere0|TAS] in 18 mins. Unfortunately, I didn't find anything useful in it. Feels like it was a LOTAD.

!! Suggested screenshots

42591
