*One Step From Eden's closest analogue would be the battle phases from Megaman Battle Network. This roguelike grid-based battle game gives an array of characters which different forms, where spells and artifacts are acquired during the attempt.  As the player beats fights more experience is gained and at the end of the attempt additional spells and artifacts can be unlocked. There are 8 stages with three paths and at the end there is a boss.

*TAS uses One Step From Eden using the current patch of version 1.8 on Ubuntu-22.04 with LibTAS 1.4.6.  

*Run with Command Line options : "-force-gfx-direct -screen-fullscreen 0".  Movie should be running at 60 fps.  In the Settings -> Runtime section. 

[https://i.ibb.co/ZrcK8Yb/lib-TAS-screenshot.png]

[https://i.ibb.co/vp3Ydnb/lib-TAS-screenshot2.png]

*This TAS is from a brand new install so it is a new game.  This means that many spells, artifacts, and alternate characters and their different forms are not selectable.  The only selectable character is Saffron as Default.  Each attempt can be seeded with an integer number and I chose seed 115.  This branch here does not appear to be the same that appears on Speedrun.com. This is intentionally Pacifist as well, but that branch name is getting kind of dense.

*This TAS completes the game with IGT of 9:01:21 which can be seen after the credits. 

*The output video MIGHT be slightly faster than typical gameplay, but it is hard to tell.

*Direct video link [module:youtube|v=dskwFUn8-RM]

!!Mechanics
*The 3x3 grid on both sides of the field is the range of movement. In realtime the player can activate spells and move around.  Spell casting depends on the current level of mana. Once a spell is used to get it back the player needs to reload the deck.  There are various spells and artifacts that assist in mana management. 

*There are 8 stages and each has three paths.  The paths differ since the path with the shop tends to have harder encounters.  Sometimes the paths intercept even before the stage boss.

*Battles consist of fighting several enemies that scale up in difficulty as the stages progress.  After winning the battle spells or artifacts can be awarded. Money is also acquired after defeating the enemies which can be used in shops.

*The shop has a psuedo-random selection of spells, artifacts, upgraders, removals are sold.  Pacts are tradeoffs where the player can take on a "challenge" or pay some price to get a benefit. The benefits range from increased max health, to acquiring upgrades/removals, or extra money.  The price is usually paid through having the fight under restrictions for a couple fights.  Probably the most challenging is Pay Skin which reduces your defense by 100 so any hit does 100 more damage.  

!!Strategy
I chose seed 115 for two reasons, the first was that it gave a bunch of 0 cost lasers and the legendary artifact Miracle in the first stage.  This turned out very beneficial early on since with manipulating RNG it is possible to get a random chance of 0.3% that any hit will deal 999 damage.  However, one bad consequence of this seed that I found out later on is that Blue Blood seemed absent which allows the player to start with full mana. Since Blue Blood was absent despite me testing different things constantly, I went with acquiring artifacts and spells that could help with mana management.  Panther Mask gives a mana charge when the player takes a hit so I went with the 0 cost Pinch for example.  Lots of artifacts that increase mana recharge time as well. The early weak spells were eventually removed.  Luckily I was able to get the Link Cable which copies damage from one enemy to another enemy for a couple seconds.  Eventually I was able to find Switchbait, and the only decent option I could find to pair it with was Mine with the O upgrade that doubles the damage but the spell is removed from battle after being used. Switchbait fires a shot that does the damage of the other spell in the currently available slot.  The D Double Upgrades to Switchbait made this rather effective.  I chose to get Tri-Rag and Trisect here as well that paired well with the Tri-ncket. Tri Rag is a decent starting spell with full Trinity up to about stage 5.  Trisect is a niche kind of spell that  decreases the targets current health by 1/3.  This sounds amazing, until you realize that it requires 3 Trinity which a type of resource that usually only certain spells provide.  In addition to that Trisect has very limited use against the typical mobs.  It does however work very well in a TAS setting against bosses.  

In some fights I try and modify the helper character that appears. The ice woman has an excellent support ability that does a little damage and puts a Fragile effect on enemies hit. Fragile makes spells do extra damage.  Sometimes I cannot have Saffron be directly opposite an enemy since the game will spawn them on a different row.  Although there are times where the enemy layout is just better in a certain position. 

One oddity I noticed was that if I reloaded the spell deck too soon after using Switchbait when it was upgraded with D Double to have an extra attack, was that the second hit would not come out.  This seems like a bug. Normal attacks I use sparingly as well since they can overlap and make it not possible to use a spell. 

For bosses it is worth noting that there was some RNG involved when fighting them to make sure they do not start moving around.  The ideal was that they would stand still and just face tank all the hits. Interestingly it seems that the more aggressive you are with big damage hits the less the boss characters tend to move around too.

!!RNG
*I do not understand the RNG of this game very well, but here are some things I noticed.
*The initial Seed as I understand it gives a range of artifacts and spells per stage.  Starting with certain seeds can be more advantageous than others.
*Artifacts and Spells have a certain leeway in what can appear as rewards or in shops.  These can be slightly changed based on the amount of objects (enemies, allies, obstacles like rocks) generated or destroyed. This is somehow tied in with Luck as well.
*Spell order is Extremely important in this TAS since I have a lot of spells, and need certain ones to appear.  This can be modified by casting spells or reloading at the end of the previous stage. The other time I can make use of reloading is within a 8-ish frame window right after selecting the next battle on the Path map. The screen does not show the reloading, but it does affect the spells order.  The final boss battle is an exception to this rule, where using different spells in the previous fight is the only way to change the order.  
*Upgrades for Spells is a tricky business too.  The upgrades CAN change but it seems like they only change once another upgrade is complete or the stage changes.  I suspect there is some kind of list involved based on the current seed.  Selecting different paths after the boss can change the upgrade options.
*The Miracle hit is a massive pain to get to trigger.  I had initially thought I could use waits to modify the chance, but it only changes based on Spell usage, normal attack. Reloading MIGHT influence it, but that was more likely that reloading was cutting off some attacks from Switchbait so changing the RNG that way. 
*The Mine spell when used will randomly place the Mine in the enemy's 3x3 area. Where it is placed is RNG based.  This can be modified through using waits, spells, or the normal attack.

!!Improvements
*Better seed to get Blue Blood as an artifact would help immensely. Since it would allow a bunch of spells to be used without needing to wait at all.
*If even POSSIBLE, get legendary spell Ragnarok extremely early even for Default Saffron.  It would have the highest possible attack for a new game.
*Get Switchbait very early along with the above.
*Remove Anchor (cannot move or use other spells) from Jam.  Just did not work out here.
*Better RNG manip for more Miracle hits.  Probably need to have some sort of script that would help to predict it.
