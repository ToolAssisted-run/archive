> **Imported**
> This run was originally published at https://tasvideos.org/6863M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives
* Emulator used: Bizhawk 2.10
* Primary objective: speed
* Takes damage and death abuse to save time
* Uses U+D and L+R inputs 

!! Game mechanics
https://kb.speeddemosarchive.com/Beetlejuice_(NES)/Game_Mechanics_and_Techniques

!! Comments
I randomly decided to re-watch [6690M] and spotted a potential improvement, which also turned out to be a real one. 76f were saved in room 0x14 (reference from $55), a brown-floored room with footballers' legs in the top-down section. The time save came from screen-wrapping at the start of the room.

4 of the frames were then lost to adjust the global timer before the mouse room, 0x18, but they were then recovered again by the graveyard level ending 4f earlier (probably also related to the global timer). The total improvement is therefore 76f.
