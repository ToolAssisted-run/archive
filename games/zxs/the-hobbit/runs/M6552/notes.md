> **Imported**
> This run was originally published at https://tasvideos.org/6552M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

The Hobbit is a text adventure based on the book of the same name. It's known for Gandalf stealing story-required items, carrying Elrond for free food, and Thorin sitting down and singing about gold.

It was the first ZX Spectrum game to sell over a million copies. There are entire books written on how the game works; I recommend "Playing The Hobbit" by David Elkan for being contemporary, complete, and concise.

!! Game objectives

* Emulator used: BizHawk 2.10
* Model used: +2A
* Aims to beat the game as quickly as possible.

!! Comments

This is a tool-assisted speedrun of The Hobbit for the ZX Spectrum. It completes the any% category, receiving the "master adventurer" message as quickly as possible.

TAS timing (power on until last input): 14147 frames, 4:42.827

RTA timing (press a key to start typing until the "master adventurer" message appears): 196 frames, 0:03.918

! Model

The run is performed on the Sinclair ZX Spectrum +2A. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds. The main delay in the game is in processing what happens after an action is input. As a result, the game runs fastest on these models. The +3 is a disk-based system, and The Hobbit has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! Version

There are four versions of The Hobbit; v1.0, v1.1, v1.2, and v1.2 text-only. Each new version fixes bugs present in the older version, and in doing so, adds new bugs. Normally the game would draw graphics for each area, particularly slowly, but v1.2 text-only removes them; in addition, it contains a particularly nasty bug with the parser that's incredibly useful.

! Parser

The Hobbit has a complex text parser, especially for 1982. It attempts to break down sentences into phrases, substitutes nouns in earlier phrases into pronouns in later phrases, and then executes each phrase as its own action. However, the memory reserved for parsing phrases is relatively small, and using a sentence with a lot of phrases can overflow this buffer and overwrite other parts of memory instead.

! What we type

> OP CH
This is parsed as OPen CHest, so we open the chest.

> ,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.F F F F F F
Each punctuation mark starts a new phrase, and this overflows the phrase buffer. Unfortunately I wasn't able to find out exactly how this works, nor who originally found this. None of the phrases that enter the phrase buffer are actually readable, so the game gives us a "WHAT?"

> F
This is parsed as Fall, so we fall. This gives the game a chance to process its corrupted state.

> PUT TRE CH
This is parsed as PUT TREasure in CHest, so we put the treasure (which we have now) in the chest. This is the trigger to beat the game, so we get the "master adventurer" text and the game waits for a keypress before restarting.

!! Other comments

98.6% of this movie is spent loading the game.

Special thanks go to Philip Mitchell and Veronika Megler for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
