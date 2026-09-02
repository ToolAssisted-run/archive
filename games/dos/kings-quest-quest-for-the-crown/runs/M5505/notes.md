> **Imported**
> This run was originally published at https://tasvideos.org/5505M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!King's Quest: Quest for the Crown

This game is the first in Sierra's __King's Quest__ series.

See previous submissions [7105S] and [6096S] for more info on the game.

!!1/5 Speed Temp Encode (so a viewer might actually be able to follow what's happening)
[module:youtube|v=Xsf8M9NRXEY]

!!General Info
*Goal: Aims for fastest time
*Emulator used: c-square's modified JPC-rr 11.2 with TASScript
*Game Version: 2.0F

!!Run Info
This is an improvement to the currently published run using a completely new route: using glitches and abuse of the game's coding for an in-game timer.

Differences:
*Route changes (taking the back entrance to the underground) eliminated the need to pick up a treasure to give to the rat.
*The clover is no longer obtained for protection against the leprechauns as movement can be used to avoid contact.
*Sky walking off the beanstalk: There is a small gap in the death trigger on the beanstalk that allows graham to 'climb' off into the clouds to get to the final screen.  This saves a brief amount of time by eliminating some maneuvering.

!!Potential Improvements
*Even with TAS control, moving at the 'Fast' game speed can prove rather difficult to have Graham end up where you want him to go. There may be better movement patterns or route which I have not found.
*RNG improvements are absolutely possible in this route.  There are multiple RNG events in this run that could theoretically be eliminated by starting with a different RTC time.  Unfortunately, changing the initial RTC time will typically cause a desync on this set of inputs within the first few screens of play.  Eliminating the following would prevent the corresponding text boxes from showing up and thus eliminate the delay in play at those moments.
**The Ogre Shows up
**The Condor Shows up
In the process of eliminating these two, one would have to also make sure that the RNG changes don't cause the dwarf to show up the 2 times crossing its screen.

If I get ambitious, I may redo the run once again to negate all RNG encounters and hopefully save a bit more time.  But right now, I have other projects to work on of which I'm more interested.

!!Files
These are extracted from the GOG release of the game with all the unnecessary GOG files removed.  This run uses the same disk image as the current publication; so if anyone created a disk image for that run, it should also work for this submission.

HDD TRACKS 16 - SIDES 16 - SECTORS 63
||Timestamp||MD5||Size||Filename||
|19900101000000|4771062c7f64bf64c185178613fd665a|39424|AGI|
|19900101000000|d83459a8643dfc67b4629ec4afe64e13|8192|AGIDATA.OVL|
|19900101000000|e34849e963efdcc942b67ee9bf5c1533|1024|CGA_GRAF.OVL|
|19900101000000|714c88fa15b8327c585b86f3e619b068|1024|EGA_GRAF.OVL|
|19900101000000|f3d4c66e195491aa759b7c5ef996488b|3072|HGC_FONT|
|19900101000000|8eb68e541e8ea93da96c7fc4cfde7f3f|1536|HGC_GRAF.OVL|
|19900101000000|a8f5aabf72ed3d4165038275faf8b527|1024|HGC_OBJS.OVL|
|19900101000000|119949f12a5fc14a082794350c19118b|512|IBM_OBJS.OVL|
|19900101000000|4488067df5a7201e34ee3b01252e9860|512|JR_GRAF.OVL|
|19900101000000|f579e8fb39209a321d575ebdc5f79014|3121|KQ1.COM|
|19900101000000|10ad66e2ecbd66951534a50aedcd0128|315|LOGDIR|
|19900101000000|6eca02fa540337308529ff13e9e764aa|331|OBJECT|
|19900101000000|d468936618bed024ea453a315aba1958|255|PICDIR|
|19900101000000|cf37ab2f6af09afee3598b92c9a42983|144|SNDDIR|
|19900101000000|df5f5263d61e250495c249002c6210a1|512|VG_GRAF.OVL|
|19900101000000|ac7048eceb628c07f452ecd1662d7b3d|432|VIEWDIR|
|19900101000000|8ec91effac02ba476f823f065ca10172|48472|VOL.0|
|19900101000000|77c3be070fc9bf9c69952ed56821efe1|200630|VOL.1|
|19900101000000|b33d0a9938c095da1a69b5ee3c9209d4|90891|VOL.2|
|19900101000000|50e00d15fa3e25b512c19608119111cf|3144|WORDS.TOK|
