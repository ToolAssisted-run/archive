> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6442M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Pokemon Snap

Chose to use the NTSC USA version since that was the version I had played back when it was released, and also the main audience for this site is English.  The only real difference I noticed between the versions is the text.  The english version of the game's text is slower overall. While most text can be skipped, certain parts cannot be.  One speedrunner estimated 10+ seconds on text speed loss alone compared to the Japanese version.  I do choose the default name Todd.  Time loss is minimal since there are only a couple sentences that fully spell out the name that is not skippable.

TAS made in Bizhawk 2.10 using the Ares core.

!!Mechanics
The game has some unusual mechanics.  It is similar to an on-rails shooter, and a go kart game.  Levels and items unlocks require fulfilling certain criteria.

!Unlocking Levels and Items
Note that it is not possible to unlock a level and an item on the same attempt.  Also, unlocks only occur once you go through the Professor Oak's Check after completing or quitting out of a level.  When taking a picture, a score is given and the total score and the different unique types of pokemon are kept track of.

This is the order that items and stages are unlocked and their requirements.

*Stage: Beach - Initial starting stage. 
*Stage: Tunnel - Take pictures of 6 types of pokemon
*Item: Apple - Unlocked after getting 24000 points.
*Stage: Volcano - In tunnel hit final electrode with an apple 
*Stage: River - Unlocks after Volcano.
*Item: Pester Ball - Acquire 72,500 points
*Stage: Cave - In River, scare Porygon by throwing a pester ball near it so it comes out to hit a switch.
*Stage: Valley - Acquire 40 kinds of pokemon photos
*Item: Dash Engine - Hit switch to open alternate route by hitting a pokemon on switch.
*Item: Poke Flute - Have Dash Engine and 130,000 points.  
*Stage: Rainbow Cloud - Take shots of all Signs.

!Camera
The Camera has the standard look mode, then the Zoom in mode. Pictures can only be taken in the zoomed in mode.  

Pressing the C-up button centers the view forward. C-left moves the view rapidly left, C-Right moves view to the right. Most times using the C-buttons is slower because of lag.  However, doing this while zoomed in with the camera can vastly decrease lag.  Looking up and using a C button usually has no lag.

Items like the Apple and Pester ball cannot be used while in Zoomed in mode.  Also there is a cooldown time that is required before being able to use the items after coming out of Zoom.

There is a bug known as Extended Look Up where the cursor in the standard Look mode can go up beyond the normal vertical limit. While in Zoom, the camera can only look up so far, but unzooming, the cursor can move a bit further. Zooming in again then centers the camera on the cursor which is further up.  This reduces lag further in a lot of sections. 

!Cart
The cart has two different modes depending on the level.  Fixed is where the cart cannot wander beyond the exact rail it is on. Ranging allows the cart to move a bit left and right depending on how the camera is looking.  

In both modes, when using the zoom on the camera, the speed on the cart becomes fixed. The speed of the vehicle is decreased when looking outside of a specific range facing forward.   The more off center, the more the speed decreases, with looking straight back the slowest.  Here, the pretty significant speed decrease from looking off center basically makes most tight cornering (like in typical racing games) of very limited use.  

In both modes, locking the camera in Zoom mode while looking forward, then looking in a direction that causes minimal lag, and not bumping into anything is the best way to complete stages quickly.

!Pokemon Scoring
Pokemon have some criteria for scoring when going into the Professor Oak's Check. 

*Size - How large it is in the photo.
*Pose - How the pokemon is positioned relative to the view.  This does double duty since certain animations/interactions give extra points.
*Same Pokemon - Only scores other pokemon based on their Size in photo.
*Technique - If any part of a pokemon is close to the center of the photo points are doubled.  While the "Red Dot" photos are sure signs of getting the Technique 2x multiplier, it is not necessary.  Positioning the camera very close to a pokemon but not getting the Red Dot lit up can still give the 2x multiplier as long as some part of the pokemon is within the larger white circle of the camera cursor.
*Special - Some pokemon actions have additional points.

Square Head Theory - This is the idea that distance to parts of the pokemon in a photo are not relative to the view, but instead to the cameraman's head.  It is easy to see this in action by first taking a centered photo of moderately distant pokemon, then comparing that photo with one that has the pokemon off center.  In almost every case the off center pokemon gives more points for Size and possibly Pose.  Maximum off center points tends to be when an off center photo has the pokemon more towards the corners of the frame.  This off center method of taking photos is used for the majority of pokemon camera shots in this TAS.  

Often when trying to get a larger size, line up the red dot with the furthest available pokemon part on the opposite side of the pokemon.  For instance with Pikachu, its head and tail are a good distance away from each other, but not all parts are good candidates to get a large Size score.  The tail is angled up and to the right which means the tip of the tail is the most distant part from the rest of its body.    

One notable example of this is Kangaskhan in Beach where both the size and pose can be much larger than normally taking a centered shot. In fact getting a Pose score at all is only possible using a very carefully positioned camera shot.  

!Lag Reduction
A big part of Pokemon Snap is lag reduction.  To give an idea of how important this is on some levels, consider Beach.  Beach normally is about two minutes, but without lag reduction the stage is at least 15 seconds longer.

The main causes of lag are when there are wide area views with a lot of objects moving around.  The second part of Beach has a lot of grass with multiple pokemon moving around and is a laggy section.  Another particularly laggy section is the Tunnel room that can have many Electrodes and Kakuna at once.  River in the area with the Slowpokes and Shellders is quite laggy too.  In Cave, there are sections with multiple pokemon moving around in large areas which cause a good amount of lag.  So any part with lots of pokemon in wide open areas makes it important to limit the time spent looking at them.  Looking Up, or down while Zoomed in is the usual way to stop looking at laggy areas.

Also pokemon themselves can do actions which cause lots of lag.  Electrode's explosion usually causes a big lag spike.  Certain pokemon evolving like Charmander or Weepinbell cause particle effects that contribute to lag.  

In some more busy sections, rapidly changing the view can cause lag and it can be better to slowly adjust the view instead of using the quick view change C-Up, C-Left, or C-Right buttons.

!Professor Oak's Check
Two optimizations here.  When going to the next page to select a picture you can quickly select a photo to examine before the next page fully loads.  Also during the evaluation hold B, and there is a good position to have an A input, then two frames of no A input, then another A input it will skip the initial Oak comment and speed through the "Wonderful..etc" comment, give the score, then go straight to the next picture.

!!Levels
!Beach
The strictest level point wise.  Here the point is to acquire just enough points so that a very quick shot of Electrode in Tunnel can be taken before exiting to unlock the Apple item at 24000 points.  Just enough points in this case is 23800 points.  

*Pidgey - Look right and take a shot of the incoming Pidgey moving right. 4000 points.
*Duduo - Slightly off center shot where the legs are together to get the max points here. 2980 points.
*Pikachu - While there is a 3200 Pikachu photo for this shot there is no video or other information on how to get that.  RTA speedrunners have only ever seen  ~3140 as the highest.  Have the camera level with Pikachu's ear, and having the red dot slightly off center of the tail. 3120 points.
*Butterfree - Delayed slightly by looking back.  Square head theory of having the pokemon in the corner to get this amount of points.  There is a shot of a 3800 Butterfree but no video on how to do it so this is the best I got without delaying and losing more time. 3700 points.
*Lapras - Having the camera off center near its base gives the max size possible in this shot. 2520 points.
*Meowth - 4 visual frames to get the max points when it is crossing the track.  Note that if you are moving too slowly due to lag or to using Zoom when off center it is possible to not get the max score of 4000. 
*Kangaskhan - Very difficult shot to get.  The timing is strict and positioning of the camera only has a couple degrees of leeway horizontally or vertically.  This is the most difficult shot to get in this tas. 860 points.
*Eevee - Here I delay taking the earliest possible shot to get enough points to exit Tunnel early. 2620 points.

!Tunnel
A quick shot of the Electrode gives barely enough points to quick exit to unlock Apples.  Then reenter the stage and continue towards the end and blow up the electrode to unlock the next level. 

*Electrode - Fast quick shot to exit the level early without waiting for it to roll to take a good picture of its face.  240 points.
*Electabuzz - Hit it with an apple and take a photo right as it begins to run again.  Another apple is used to prevent it getting the way of the cart. 4000 points.
*Kakuna - Hit an electrode so they fall from the ceiling. Then angle the cart to be right near the Kakuna facing the track so that three Kakuna are in the shot. 4420 points.
*Zubat - This Zubat comes out of the door opening at an odd angle.  Here I would have to slightly move right to get the full 4000 points, but choose to not in order to keep moving forward.  3960 points.
*Magikarp - Aiming off center gives some slight Size increases. 2700 points. 
*Haunter - Take a pic as it is coming around. 4000 points.
*Diglett - The last Diglett as it is stretching out is the best shot possible here and also take a good Dugtrio picture. Need to take the red dot pictures to make the next Dugtrio appear.  2560 points.
*Dugtrio - Take a picture as the Dugtrio leans forward and make sure both are in the photo. 4410 points.
*Magnemite - Speedrunners found a way to lure out the leading Magnemite in order to take a picture of it first.  If the other Magnemites get too close they stack on top of eachother.  The strategy is to get the two in the back to stick together but also be in the shot with the single Magnemite.  The ideal shot would be if they were next to Magnemite and looking at the camera, but this is a good score. 4230 points.
*Magneton - There is a dark gray spot in the center of Magneton which also acts as part of the pokemon and it allows a shot like this where no Magnemites are centered and still get the Technique bonus of 2x.  4000 points.

!Volcano
A short level since we do not need to proceed further after Moltres to unlock River.  The section with Charmander and Magmar has some random positioning. Exit right after Moltres shot. 

*Rapidash -  Throw an apple right as the pair of Rapidash are nearby which causes them to rear up. Take a picture near the butt. 4980 points.
*Vulpix -  Take a picture while it is nearby and jumping towards the camera. 4000 points.
*Charmander - Eating an apple stretches out Charmander for more Size points. 2900 points
*Magmar -  When it uses its flame on Charmander it gives more points. 3080 points.
*Charmeleon - Take a picture of it laying down near the head, then look away to reduce lag.  2160 points.
*Moltres - Earliest possible Moltres shot.  Not possible to get higher with it this early. 210 points.

!River
Uses a quick Poliwag shot to unlock Pester Ball, then needs to re-enter River to unlock Cave by activating a switch.  Need to throw a Pester Ball at a Porygon to cause it to jump on the switch. 

*Poliwag - Quickest shot possible.  130 points.
*Bulbasaur - Use a Pester Ball to knock the first Bulbasaur out of its hiding place.  Then use Apples to lure out the other Bulbasaur from the fallen tree and towards the water and nearer the camera. 5250 points.   
*Shellder - Taking a shot when it chomps down on the Slowpoke's tail gives max points for a single Shellder. 4000 points. 
*Slowbro - Thrown apples are necessary to lure it to the spot where it can fish for a shellder.  A thrown apple to the right of the first slowpoke before it evolves to Slowbro makes it stretch out to eat which gives full points.  4600 points.
*Slowpoke - Like the last one thrown apples are necessary to lure it to the spot where it can fish for a shellder.  Unlike RTA runners here I was unable to take the standard full point shot of the tail arcing over its back.  Instead I got a shot where its jumping and the tail is fully visible and shortly after it comes out of the water from fishing a Shellder.  4400 points.
*Metapod - Knock two Metapods down then take a picture of its spine as you pass by.  3950 points.
*Psyduck - Hit it with an apple and take a pic as it gets knocked up into the air.  While not as much as the shot where it jumps out of the water this is quick.  3560 points.
*Cloyster - The Cloyster's appearances are linked to rng.  RNG can be manipulated by throwing apples into the River.  Here, while I was not able to get two Cloysters, this shot gave a good amount of points.  Taking a pic off center with the red dot near the spine gives larger than usual Size.  3280 points.
*Porygon - Take a picture just as it is reaching an Apple and have the red dot near the tail without losing the 2x multiplier or causing parts to get out of the picture. 4620 points.

!Cave
Here the final accumulated points necessary is 130000 points.  Since my point score is good I was able to get really fast Weepingbell and Victreebel points without having to delay at all.  Once that final Victreebel shot is taken the level can be exited.  Final accumulated score is 130140 points.

*Ditto - An Apple lures out the first Ditto and a Pester ball exposes it as Ditto. Then a pair of apples are thrown near the ledge to lure it closer. Once it reaches an available apple it stretches upward and gives max points.  Note that if an apple lands on the ground but is too close to the edge the Ditto is not able to reach it. 4300 points.
*Grimer -  This Grimer is one that appears slightly further in the course once a specific early Grimer has a red dot picture taken.  Grimer can get more points than this if you take a picture while it is doing its happy dance, but lots of points require the Size to be large which means delaying the shot.  Here this shot is taken as it  transforms into Muk becoming larger, but it is not quite fully transformed. 4000 points.  
*Muk - There is a Grimer near the start that needs to have a red dot picture taken for a Grimer to appear slightly later in the course.  This Grimer then needs to be hit with three Pester Balls.  The Pester Balls also need to be spaced out so the Grimer can finish its happy dance animation each time it gets hit with a Pester Ball.  Here a strange shot is taken while the Grimer is transforming into Muk.  This does not give full points but doing it this way removes the need to turn around and take a shot then which slows down the cart.  3720 points.
*Weepingbell -  This Weepingbell is hit with an Apple on the first frame possible.  It is a distant camera shot and only gives 220 points.  
*Jigglypuff - Jigglypuff is first hit with an apple to delay it when it is coming out from the side area. Then after waiting a little looking up and a little left can give full points. 4400 points.
*Koffing - This is delayed along with Jigglypuff when Jigglypuff is hit with an Apple.  Taking a shot slightly to the right gives enough points so that the fastest Victreebel shot pushes the points over 130000 points. 3580 points.
*Victreebel - Taken the first frame the game recognizes it as Victreebel.  80 points.

!Valley
There is no more pokemon shots or points needed, but I do need to take a photo of the Dugtrio mountain Sign.  Here I ended up taking the middle path since I was able to get a better angle later to hit the Mankey slightly earlier then if I moved the cart to the right of.  At the end of the level you need to hit the Squirtle into the Mankey on top of the hill.  Then lob some Pester Balls over the hill to hit the Mankey early.

Oak at the end talks about the Signs, and unlike the other text in the game this one can be advanced every other frame.

!Other Signs
*Cave - Lag reduction by looking up until reaching the Mewtwo Sign.
*River - Need to move over slightly towards the Vileplume and use the Pokeflute.  Then can take a photo of the Cubone Sign.
*Volcano - Throw a Pester Ball into the crater filled with lava at the start then take a picture of the Koffing Sign.
*Tunnel - Throw an apple near the Zapdos egg and use a Pokeflute. This will light up the Pincer Sign in the next room.
*Beach - Near the start of the level,look left and slightly back to take a picture of the Kingler Sign.

Once all the signs are acquired the Rainbow Cloud is unlocked.

!Rainbow Cloud
Mew appears randomly and you have to hit her a total of 6 times with either a Pester Ball or an Apple.  The first three hits are closer with the last three hits being at medium distance. Then Mew's bubble breaks and you can take a picture. 

After going through the Professor Oak's Check and saving, the credits play.

!Possible Improvements
*Lag Reduction - Not trivial.  Volcano could give higher scores with better RNG.  Extra points might be useful for more lag reduction.
*If possible, get higher point Pikachu and Butterfree to reduce wait for a higher Eevee score.  Another possibility I learned of  after I completed the TAS, but there is a way of getting a later Lapras shot that even includes a second Lapras in the shot. This could probably be used to improve the time too.  However in that case it would require a second shot, and then you would lose some lag reduction since that shot is in a lag heavy area with grass and other pokemon running around.
*Tighter Cart movement management on a couple spots might work to decrease speed reductions.

!Resources
*Pokemon Snap Discord Server : https://discord.gg/0SuBgj5VrbAyTncL
*Pokemon Snap Speedrun.com page : https://www.speedrun.com/pkmnsnap
*CC's Snap Guide: ADVANCED Guide (Breaking down the World Record Run) :  https://www.youtube.com/watch?v=BI1nLP2ZZbs
*Pokémon Snap “Square Head Theory” by DrogieSR :  https://docs.google.com/document/d/1rHQ5mbvI3H0ktpXvtxknH6Tfg7oL9vk2Uf-2fTr9bBc/edit?tab=t.0
*Pokémon Snap Cart Movement Tutorial :  https://www.youtube.com/watch?v=S1BYENYkUSI&list=PLGyvhhxX_Z8Oj1X9AjlxxTZoquIKwLDEz&index=2
*【ゆっくり解説】ポケモンスナップ100%RTA【23分45秒】: https://www.youtube.com/watch?v=XyR57cQzwfY
*Snap Version Comparison Test :  https://www.youtube.com/watch?v=85ZM3iSceGU

!Special Thanks
*CCNeverender
*Quo
*And everyone else on the Pokemon Snap Discord Server
