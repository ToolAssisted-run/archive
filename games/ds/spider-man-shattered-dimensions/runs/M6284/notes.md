> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6284M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

''MARY JANE, DON'T STOP THIS CRAZY THING!! Idk what to say, even though there are plenty of lines from Spidey lol''

!!! Spider-Man: Shattered Dimensions "all items" in 28:13.44

!! Run details:
*Emulator used: DeSmuME 0.9.13
*Takes damage to save time
*Luck manipulation
*Full item completion
*Abuses programming errors
*Aims for fastest time

!! Overview:
*This is probably one of my amazing TAS projects I have ever worked on. I never expected that Spider-Man would be such an awesome TAS game until I started making this run. What even made it crazier is the fact that I discovered new broken stuff that literally changed how the game was played, and I'm happy that I did
*About the TAS itself, it is an improvement over the current [3034M|all items TAS] by 21984 frames (6 minutes and 7.46 seconds). Mainly thanks to continuous optimizations from the very start, new routes for collecting items, as well as new tricks and glitches that basically cut a good chunk of the run, notably some long fighting sections in last area.

So what's new in this run?
!! Optimal movement and fights
*This is potentially the biggest source of improvements. The way you move in this game either by crawling, walking/running, web swinging or web zipping. Later in the run we obtain an ability called Winged Assault (requires Gliding ability), which allows Spidey to bolt forward in a fast manner, however its usage is based on the situation and it is NOT always faster.
*Comparing to the current run, it makes use of all of these ways of moving but there are some key parts that it doesn't pay attention to:
**In this game, the fastest way of moving/flying is by Web Zipping. Ideally you want to maximize the usage of Web Zipping. It has 8 directions so mostly you want up + right/left then down + right/left. This increases Spidey's speed significantly, and if you follow up with a Web Swing, it increases it further.
**Approaching doors is not trivial. If Spidey hits the ground off of a speedy Web Swing or from a Web Zip, he rolls, otherwise, he tries to stop while standing. Rolling is faster, especially against doors, as it allows him to get to the next area earlier compared to walking.
**The current run also doesn't make use of the dodging ability, which allows rolling faster inside vents.
**This is a beat'em-up game style, which means the more you combo two or more enemies, the faster you finish the fights. This game has several conduits and locked fighting rooms. Each has a good set amount of enemies, so mixing a bunch in one fist is faster but most importantly satisfying! Fights also become laggy the more enemies screen too, so that also helps reducing lag.
!!New routes and tricks
*While this game is a Metroidvania style, it is quite different as there aren't warp zones, and I think they replaced them with portals to other Spideys (Noir and 2099), making the route linear as a whole. Each time you use a portal, you get a new mission, however, it is possible to do missions earlier if you can. Taking early Electro for example. this mission is supposed to be the last before the final mission, yet we do it early, allowing us to gain Spider Dash which is incredibly powerful. The current TAS does it too but it is worth noting here as well since it matters later. Also, during each mission, I changed the routes by taking some shortcuts.
*The boss order is as follows: Mysterio->Boomerang->Vulture->Tinkerer->Electro->Calypso->Silvermane->Super Mysterio. Current TAS follows same order, except it switches between Tinkerer and Electro.
*Couple tricks that have been discovered before and while I was making this run:
**Running in the vent: Normally, if you web zip into a vent, you can roll and get farther inside that vent, however, it was found that if you roll way earlier and make Spidey stand up just as soon as he tries to enter the vent, you actually run instead. It can bee seen at [https://www.youtube.com/watch?v=dBStgHj9Avo&t=122|2:02] and [https://www.youtube.com/watch?v=dBStgHj9Avo&t=490|8:10] in the above encode. It saves a good amount of frames, though sadly, probably only those two spots where it is useful
**Unintended Spider Dash: The Spider Dash ability is very similar (and probably better) to Speed Booster from Metroid Fusion and Metroid Zero Mission, where you hold the directional button and Spidey keeps running until he gains his maximum speed with which he can break some barrier but most importantly is dealing very high damage to enemies. This last part is not supposed to be carried over during boss fights, however, because of how early you can gain that dash, it is possibly to use it during boss fights. Thanks to crawling ability, you can run at same speed in the wall, and for some reason, if you jump just before the moment the dash starts, you basically start it against a wall. Moreover, since enemies/bosses don't have i-frames, you can basically kill them [https://www.youtube.com/watch?v=dBStgHj9Avo&t=1608|instantly].
*Speed Overflow glitch: This is the biggest glitch I found in this game. It changed how the game is seen as a speedrun, as it can allow wrong warping straight to Super Mysterio, as demonstrated [https://www.youtube.com/watch?v=gvF-dYKPQWQ|here], if you use it during a conduit room fight. However, wrong warping is not possible in this category as we need to finish the conduit room to obtain the abilities as part of the item and we cannot go back to the same conduit. That being said, it is still possible to use it during Mysterio's dimension to skip those long rooms, saving a big chunk of time. There is another sad part about this glitch, which is that it requires two things:
**A giant enemy (doesn't matter if its a robut lol), as its hitbox and landing animation from a swinging hit is what enables the overflow. Hitting on his landing window (4 frames) probably creates a bug within memory values, causing them to overflow.
**Facing left side, as I could not do it not a single time on the right side (could not skip second room in Mysterio's dimension sadly). This strongly support the theory of overflowing as the game probably tries to reduce Spidey's speed to 0 but instead it overshoots it to below 0 then it loops that infinitely until a collision or another condition that stops the loop (Not sure exactly but that is what I'm thinking).

!! Area by area comments
From here, we will divide the run into parts based on which character we control. We got three characters in three different dimensions: Amazing (present Spidey), Noir (past Spidey) and 2099 (future Spidey). Generally each appear twice during the run until the final area of Mysterio that should be cleared by Amazing (for story reasons of course lol).
! Amazing Part 1
*So from here we just start the run and we begin our moments towards Mysterio's first encounter, we shatter the table, and then look for its pieces through multiple dimensions. We then proceed to Noir portal.
! Noir Part 1
*Noir is probably the coolest of the three. I like how he moves underground and how gets through tight places. I also made use of the vent glitch explained earlier. I optimized the Boomerang fight a bit as well by starting with uppercut attack, saving some time. His piece of the tablet gives Hammer Slam that allows breaking some concrete blocks by stomping, which is pretty useful later on. Then we go to 2099 portal
! 2099 Part 1
*Ok, so due to how the game story goes, each character lacks two abilities that the other two have already, and so they must obtain them in order to advance further. 2099 will have to beat Vulture to obtain a piece of the tablet that gives Power Fusion so they gain the ability to enter conduits in order to obtain other characters abilities.
*2099 first lacks Web Swinging/Zipping and Reveal Secrets but has Gliding and Crawling, so he relies more on Gliding as it is slightly faster than walking.
! Amazing Part 2
*Amazing lacks Reveal Secrets and Gliding but has Web Swinging and Crawling. Now he will go obtain Reveal Secrets ability first
*This is where both runs differ. Current all items TAS, right obtain this ability, it goes to beat Electro first, as you only need the Hammer Slam for it. However, the run took a longer path that basically turned out to be so much slower than if you to Tinkerer first, as there is a shortcut next to his place that saves a good amount of time.
*Tinkerer fight is a lot different. Here we execute what is called [https://www.youtube.com/watch?v=5DtoyWAG6P4|Double Release glitch]. Normally, to defeat him you need to destroy his three generators. Each generator requires beating a good amount of enemies before it turns on, and only one generator can turn on at a time. Though, it was discovered that you only need one enemy to be defeated for it turn on. Because we have multiple enemies on screen, defeating just one can enable a generator, and somehow if you have more enemies left on screen, beating one of them will turn the another one earlier than it should. Sadly, we can't turn all three generators at once as it is not possible due to having just two big robots. Even if we have more, the generators don't stay on enough to turn on all three and clear them all.
! Noir Part 2
*From here, we just go as fast as possible to the first conduit to obtain Gliding ability. Right before the conduit room, there is a switch to brings harder to beat enemies, which are necessary to open the door to the conduit.
*This game has a momentum meter which the more it is filled by fighting, the faster you attack and the more damage you deal, but this meter resets every time you use a portal, and since we just entered this dimension, it is of course very low.
*Fighting those big enemies is slow in this situation. I tried to abuse Spider Dash in order to one hit kill them, despite low momentum. This saved quite a lot of time, though it requires necessary RNG for it to work as we need large distance to build the speed up from.
*After getting the Gliding ability, we then go to beat Calypso, then run to the second conduit for Crawling ability. It is very necessary for getting the rest of the items, and because we didn't have it during Calypso fight, we couldn't make of the Spider Dash to beat her instantly. However, there a slight route change which saves time compared to the route taken in the current all items TAS.
! 2099 Part 2
*Alright, so we go from Noir to 2099 now, and since we already obtained Web Swinging, we just fly through this part while collecting items. There was another big route change here as well, which makes 2099 use only one Spider Dash and go upwards, instead of doing the intended route from the right side.
*Silvermane fight was done instantly, thanks to abusing spider dash.
! Amazing Part 3
*Well, now we just do a quick item clean up. We also change the route here too in order to carry over the spider dash speed inside the last room where we teleport. It is much faster as it deals with all the enemies instantly.
! Mysterio's Dimension
*This is a completely different part from current all items TAS. We start by executing the speed overflow glitch and skip the first fighting room. This makes the momentum meter significantly low, but we do not care!
*Second room cannot be skipped sadly, as the exit from it is on the right side. Instead, we again abuse the Spider Dash to beat everything down instantly, while also keeping the speed even after exiting.
*After that we just proceed and then we skip the third room, like first one, yay!
*Low momentum? Well, no issue! Right before Super Mysterio's room, we abuse the spider dash to beat him pretty quickly. The multiple hits remind me of [https://www.youtube.com/watch?v=_P6A0AiofdA|Alucard's Shield Rod attack] (funnily enough, my attack value is just off by 1 from the one shown in the video (226 < 227) lol)

!! Possible improvements
*Well, no TAS is perfect! So this game, runs at 30 fps and sometimes gets laggy even further. More lag reduction can save some frames
*Maybe better usage of the Web Swinging/Zipping or Winged Assault.
*I missed some frames during a crawling part before Tinkerer fight.
*Other things I'm not aware off maybe lol :)

!! Special thanks:
*__[user:arandomgameTASer]:__ Sure, I improved his TAS by a bit over six minutes, but tbh, he did a great job creating an awesome run for this game back in 2015. I think he planned everything on his own with limited knowledge. It definitely was helpful as a baseline to understand the game more.
*__TMP:__ The big brainer of this game! All route changes were found by him. He also made an optimized [https://www.youtube.com/watch?v=PrRKmU2w2E0|Any% TAS] (in Time Trial mode) which helped me significantly during this run.
*__OofMoment:__ Another great RTA runner for this game. He pointed out so many minor stuff I wasn't paying attention to.

!! Suggested Screenshot
Frame: 93920

[https://i.ibb.co/S6nJrmN/suggested-screenshot.png|w=320|h=240]

''You're gonna be arach-ENJOYED!''
