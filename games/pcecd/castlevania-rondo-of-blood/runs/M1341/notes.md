> **Imported**
> This run was originally published at https://tasvideos.org/1341M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Lets get back to the root of evil, this game is the prequel to [1246M|Symphony Of The Night], its the first castlevania using cdrom, and was never release in usa / europe
%%%There is a SNES port of this game called [1037M|Dracula X] (or Vampire Kiss in pal version), but its nowhere near his big brother    
 
%%%
!! Summary
* Aim For Fastest Time
* Takes Damage To Save Time
* Manipulates Luck
* Emulator used: [EmulatorResources/Mednafen|Mednafen-RR rev.249] (((mc2))) 
**But Windows users should use [EmulatorResources/Pcejin|PCEjin]
* ''Frames:__83624__''   ''Lag:__4560__''   ''Re-records:__41385__''
----

!! Comments

After a few troubles ([2311S|here]) i completed richter speedrun using the optimal route
%%%Noone realy excepted that outcome, but well, here it is! Richter beating maria :p
%%%The main reason is obviously the unskipable dialogue you get when you rescue maria, and also the reset needed to select her
%%%It was originaly tought maria would beat richter regardless, this is why the first submission was more oriented on entertainement than pure speed (stage3/4 been more interresting than stage3'/4')
%%%
%%%This run use a few cool tactics to save time, the main time savers are (abuse off) the key subweapon and the flipback
%%%
%%%The key subweapon is obtainable in stage2, this is why i dont go by stage2', the key damage output is twice of the whip, it cost zero heart to use, the item crush (select button) is also "free of charge" (altought its completly useless)
%%%Also, on most bosses of the games, the key is not "nerfed", a regular axe does same output than key (16 damage), but most bosses have some kind of "protection" that reduce damage, the key was probably overlooked in most cases and do full potential (6 hit and boss is dead in most cases)
%%%Unless proven wrong, stage2' route is slower due to using regular subweapon and needing to collect hearts all over the way
%%%Obviously the key was just meant to be used to open doors (maria & the other girl in stage7), not to be a weapon, i use item crush a few time for entertainement coz on first submission i was told its bad not to use it, in stage6 it does roll the boss rng pattern i dont use it just for style (note that the youtube encode will show more key crush than the real movie does
%%%
%%%The flipback save time over walking, i dont know exactly how many pixels, i think it doesnt realy matter, but just in the first stage - first room i remember i saved several seconds over walking, so its common agreement that walking is wrong for speed purposes
%%%The idea is generaly to cancel your current flipback as fast as possible, so you try to make the shortest flipback possible, to cancel the "landing" kneeling effect you need to use an attack
%%%The key was a great help over the flipback, first of all it doesnt make sound, so basicly i didnt ruined the audio experience of game by having a constant flipback+whip in the whole movie, only stage1/2/7 use whip, stage3'/4'/5/6 use key for flipback
%%%The real reasont the key was technicaly superior for flipback is the pattern been much more simple and not realy impacted by hitting something on your way since its realy short range
%%%I will try to define more precisly how the "loops" for flipback are working later on

!! Stage by Stage Review

For latter ! plz be patient...

!! Frame compares with [2311S|regular stages route] and [2311S|maria] 
Just a little comparate between the 2 movies, measured with time spent on given stage from first image to first black screen after end stage score
%%%Of course this run use the alternate stages (' or prime) and the old one use regulars stages, so its just for reference i put theses, maria is somewhat mixed in between, her table is just to show shes faster, she loose because of the dialogue but in most stages she do fine (i didnt compared stage3 since they are completly different)

||Stage||Old run||This run||Frame Gain||
|Stage1|6639|6617|22|
|Stage2|9254|9397|-143|
|Stage3/3'|8436|5892|2544|
|Stage4/4'|10007|7802|2205|
|Stage5|9740|9148|592|
|Stage6|7933|7892|41|
|Stage7|9827|9594|233|
|Stage8|4244|3755|489|

I made some improvements obviously in stage5/7/8, for stage6 ill guess frame rules, its basicly done the same way
%%%

||Stage||Maria||This run||Frame Gain||
|Stage1|6652|6617|35|
|Stage2|15295|9397|5898|
|Stage4'|6545|7802|-1257|
|Stage5|8662|9148|-486|
|Stage6|7706|7892|-186|
|Stage7|????|xxxxx|xxx|
|Stage8|????|xxxxx|xxx|



!! Ram Watch
Copy/Paste this in notepad and save as watch.wch, then load in mednafen
%%%
%%%11
%%%00000	00000094	b	s	0	hearts
%%%00001	00000098	b	s	0	health
%%%00002	00000093	b	s	0	weapon
%%%00003	00001E10	b	u	0	X Cam 2nd byte
%%%00004	00001E0C	b	u	0	X Cam
%%%00005	00001E30	b	u	0	X Subpixel
%%%00006	00000720	b	u	0	y pos
%%%00007	00000CD0	b	u	0	y pos
%%%00008	00000D28	b	u	0	Y Subpixel
%%%00009	00000742	b	s	0	Boss HP
%%%0000A	000012B8	b	s	0	Boss HP
%%%000B	00001E10	b	u	0	X Cam 2nd byte
----

!! Credits & Closing

Thanks to paul_t and adelikat, whe worked all together on rondo, and it was realy fun, even tought i made this one  on my own side and im submiting alone, whe mutualy helped eatch others well, and it end up very efficient to have 2 extra pairs of experienced eyes :D
%%%A svn was setup to collaborate in making rondo movie(s), you can have a check on it here : http://code.google.com/p/rondoofblood/
%%%A release zip of both movies and frames date should be available today or tomorow
%%%
%%%enjoy it :D
