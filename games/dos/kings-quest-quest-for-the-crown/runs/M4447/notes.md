> **Imported**
> This run was originally published at https://tasvideos.org/4447M and entered this archive as a voluntary
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

__Story:__
The king is dying without an heir, so he sends Sir Graham out on a quest to recover three magical items from the realm.  If Sir Graham is able to recover all three items, he will be granted the crown as the next king of Daventry.  Graham must search high and low, using his wits to solve problems and recover the three magical items (A chest of never-ending gold, A mirror that shows the future, and A shield that guarantees safety and victory in battle).

!!General Info
*Goal: Aims for fastest time
*Emulator used: c-square's modified JPC-rr 11.2 with TASScript
*Game Version: 2.0F

!!Run Info
This is an improvement to the currently published run using a different route and implementing recently (within the past year or so) discovered glitches.
Differences are listed below:
*Water walking glitch (fairly recently discovered)
**On many screens, getting Graham's feet on the final pixel possible before a screen transition occurs will allow him to walk over water (and some other objects) that would normally kill (stop) him.  Doing this in a couple areas allows for a more optimal squence of object retrieval.
***A treasure is no longer needed to get by the troll on the bridge to the gnome's island.
***The bird is no longer needed to get to the mushroom island/underground
***The route variation allows for acquisition of both the pebbles and sling; this allows for killing of the giant instead of waiting for him to fall asleep before obtaining the chest.
*RNG info.
**As the bird is no longer needed to get to the mushroom island, this RNG issue from the previous run is negated.
**Deeper investigation of the game code revealed that the thieving cave dwarf will never show up when Graham enters the staircase from above, so this RNG event is not an issue in this run or the original (where it was believed to be an issue).
**While this run does cross a couple screens where an RNG event may occur, neither of these happen in this run due to the initial RTC time set during emulator assembly.
***A fairy godmother can randomly appear one screen south of the 4 leaf clover and give Graham a spell of protection.
***A Wolf can randomly appear one screen east of the well and can kill Graham if it cathces him.

!!Time Comparison to Current Publication
This new TAS is 15.844 seconds (according to JPC-rr itself).  The current publication is 18.297 seconds.  So this new run is an improvement of 2.453 seconds.  Given that the first 2.9 seconds of the run is the loading time gettign to the actual gameplay, the actual duration of gameplay is 15.397 seconds for the old run and 12.944 seconds for this submission.  The 2.453 second impmrovement is therefore a roughly 16% cut (2.453s/15.397s) off the original publication in terms of gameplay time saved.

!!Potential Improvements
*Even with TAS control, moving at the 'Fast' game speed can prove rather difficult to have Graham end up where you want him to go. There may be better movement patterns or route which I have not found.

!!Suggested screenshot:
Any beanstalk screen: This is an extremely difficult task in RTA runs.  Or one similar to the current publication with the Dragon.

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
