> **Imported**
> This run was originally published at https://tasvideos.org/6364M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%%
!! Summary
* Pacifist - Kills : __1__ Attacks : __2__
* Loadglitch - Uses Maria Preset
* Uses a game restart sequence
* Starts from a saved state or SRAM
* Heavy glitch abuse
* Heavy luck manipulation
* Takes intentional damage
* Emulator used: {{__[https://github.com/TASEmulators/BizHawk/releases/tag/2.10|BizHawk]__}} (((( (2.10) ))))
* ''RealTime:__13:47.66__''   ''GameTime:__12:32__(last input)''   ''Frames:__49563__''   ''Re-records:__69951__''
*{{__[https://tasvideos.org/UserFiles/Info/638710964777032218|Verif Movie]__}} For SRAM
%%%
----
!! Quick Recap
This is an improvement of ~1min30 over the {{__[https://tasvideos.org/6904S|last submission]__}}
The route remain overall the same.
*Biggest time saver is to not use the wolf for movements.
*Not using the mist in marble gallery to avoid "touching" the invulnerable parts of the plant and dyplo saves ~ 3 seconds, I reduced that difference to ~70 frames.
*Improved shopping (less money spent).
*The library floor clip only save two dozen frames but the door removal save plently.
*The clock tower gains a few seconds by not caring to touch monsters as well.
*The reverse keep glitch to load the darkwing is apparently slower but door transition was just a few frames faster so I kept it. 
*Better manipulation of the darkwing bat boss, less fooling around required.
*Better jumping in the outerwall for both castles and bouncing on invulnerable yellow skulls in inverted.
*Skipping the gong sequence; while it takes over 30 seconds by itself, the extra menu, heart refresh and fooling around reduce that to ~ 10 seconds.
*One less heart refresh at shaft, but slower to reach the load spot due to mist usage, still some frames gained there.
----
!! About the run
*Load glitch makes alucard inherit from maria all the relics, 200hp/100mp, 10 in all stats, dragon helmet, it also marks "meet maria" and "save richter" time attack as complete, this is why they dont trigger on the way.
*The glitch itself is simple, first load a savegame then wait a couple frame and soft reset, now start a new game (choosing whatever character you want) and it will actually keep the player data from the save you just loaded previously, including the position in the castle albeit if you do that anywhere else than entrance you will get stuck in that weird room if youd dont have a library card.
*The relics activated are; bat, wolf, mist, leap stone, gravity boots and later on the godspeed boots while waiting for menu exit input to be available.
*With the long sequence of heart refresh at the end to skip shaft, the duplicator is needed and the librarian only sells it in replay mode, hence the sram requirement.
*The second duplicator cost a good chunk of frames (to sell more gems) but in return it let me kill Dracula with only 2 shuriken trough luck overflow glitch, theres only 2 damage dealt in the entire run; 9999 + something (Dracula has 10000hp);
*It is possible to do half blood on medusa with her lightning bolts, but the damage is 50, so you would need poison (to make it 100), turns out if you get stone it remove poison, since getting stone is required for her to do the bolts attack, it is impossible to go by chapel (with the intent to skip the gong sequence faster and reach the heart refresh directly).
*The clock subweapon is required to open the left statue in gong room (and skip the sequence), note that you have to skip it again after with the heart refresh by going on the right side.
----
!! Further Improvements
*The game is very prone to improvement by delaying things which can reduce loading times, like frame rules.
*I did try to avoid excessive loading times, especially with menu access (can be as low as 140 frames in some cases) but by nature this requires a lot more efforts to fully optimize.
*It is debatable wether or not a faster way to kill dracula is possible, im just not sure how, the extra shopping here might allow for some unknow alternative but simply spamming whatever ninja stars wont cut it, and we cant kill anything to get items drops.
*Picking the clock subweapon in the reverse castle (at the same spot) was slower in my tests but there could be a better strategy to get it.
*Managing a better mana pool could result in one less menu access; basicly you would need to stay with the toadstool until ... the heart refresh in black marble gallery, it is very unlikely you would manage that without loosing time massivly but I didnt use mana in a conservative manner (mist for exemple) so I dont exclude it entierely.
*I did investigate using the teleporter from outside the keep, on the paper it is one less door transition, but the first one is a double loading then the glitched reverse keep is actually a longer hike than non-glitched, it is 129 frames slower to activate the teleporter this way.
*The reverse outerwall section is likely improvable, first there seems to be a rng element for skeletons positions, directly influencing how you gotta jump or use invulnerability from mana prims, secondly I couldnt really figure if the yellow skulls position could be manipulated so the bouncing might be improvable, resyncing that section costed a dozen frames or so.
*While making the run I discovered a very strange glitch resembling debug feature; if you press L+R or U+D the right statue in gong room will open, paulo determined on the real console it does the same thing if you unplug the pad, so L+R short the gamepad and make the game think its unplugged, unfortunatly it doesnt help with this run, it is not yet investigated if this works in other places or situations.
----
