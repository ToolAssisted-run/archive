> **Imported**
> This run was originally published at https://tasvideos.org/3004M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This is a high quality TAS of a high quality game which teaches you numbers and how to count up. The game features two challenging modes, in this TAS the "run" mode is used. Unlike the mathematics in the game, the one in the submission text is very easy.

!! Game objectives

* Emulator used: FCEUX

!! Comments

To goal is to reach the end, preferably by using warps. In Stage9 there's no warp, so a wisely chosen number needs to be collected 9 times either as decimal representation or unary representation.

;Getting 10's instead of 1's: my reaction not very good, don't laugh :( Actually 2 frames faster than 1's, because "ten" can be said quicker.

;Fastest way of movement: Definitions: s_x: Speed in X direction, G: Player is on ground, S: Successor function%%%|s_x| := {S(|s_x|) if |s_x|<S(S(S(S(S(S(S(S(S(S(S(S(S(S(S(S(0)))))))))))))))∧G, S(S(|s_x|) if |s_x|<S(S(S(S(S(S(S(S(S(S(S(S(S(S(S(S(0)))))))))))))))∧¬G, S(S(S(S(S(S(S(S(S(S(S(S(S(S(S(S(0))))))))))))))) else}%%% => Jumping at the start is faster.

;Possible routes: Definitions: S#: Stage, E: End, x: Position on the X axis, y: Position on the Y axis, n: Number of lightnings in upper right box, I: Controller inputs%%%S3_1 -> S3_2 : x≥4000:0 ∧ n=3%%%S3_1 -> S4 : 1088:0≤x≤1116:15 ∧ 120:0≤y≤120:15 ∧ I={D,A|B}%%%S3_2 -> S4 : x≥4000:0 ∧ n=3%%%S3_2 -> S5 : 3376:0≤x≤3407:15 ∧ 168:0≤y≤168:15 ∧ I={D,A|B}%%%S4 -> S5 : x≥4000:0 ∧ n=4%%%S4 -> S6 : 708:0≤x≤767:15 ∧ 168:0≤y≤168:15 ∧ I={D,A|B}%%%S5 -> S6 : x≥4000:0 ∧ n=5%%%S5 -> S7 : 2112:0≤x≤2143:15 ∧ 136:0≤y≤136:15 ∧ I={D,A|B}%%%S6 -> S7 : x≥4000:0 ∧ n=6%%%S6 -> S7 : 713:0≤x≤732:15 ∧ 104:0≤y≤104:15 ∧ I={D,A|B}%%%S7 -> S8 : x≥4000:0 ∧ n=7%%%S7 -> S9 : 1872:0≤x≤1903:15 ∧ 168:0≤y≤168:15 ∧ I={D,A|B}%%%S8 -> S9 : x≥4000:0 ∧ n=8%%%S9 -> E : x≥4000:0 ∧ n=9%%%The chosen route is: S3_1 -> S4 -> S6 -> S7 -> S9 ->E

;Minimizing talk lenght: We want the Count to shut up. Every time he picks a number he will either laugh or say "got it". The latter one is faster. What he says is probably hardcoded. Only the order of the collection of the numbers can lead to the speech lenght being minimized.
