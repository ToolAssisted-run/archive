> **Imported**
> This run was originally published at https://tasvideos.org/6946M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Dragonsden
You—cast as a knight mounted on the flying horse Pegasus—are tasked with showing the local dragon its limits after it has taken the liberty of burning half the country to ash. The beast resides at the heart of a fortified mountain, guarded by loyal minions and surrounded by deadly trials. To complete your mission, you must overcome a series of increasingly difficult tests.
— C64 Wiki

!!!Tools Used
BizHawk 2.11

!!!Effort in TASing
I have to say—this is the closest any C64 game I’ve worked on feels to Super Metroid. That comparison mainly comes from the recurring dragon fights at the end of each loop, which strongly reminded me of my old strategies against Spore Spawn.
Unlike many C64 titles, where limited mechanics make exploits straightforward, Dragonsden genuinely rewards frame‑level optimization. Fighting for frames is very real here, and the game presents surprisingly complex strategies that must be carefully manipulated to achieve optimal results.
Below are some of the key approaches I experimented with to reduce time:

!AI Manipulation
Altering enemy AI to provoke favorable reactions was critical. This is especially evident in the pterodactyl sequence, where birds must be grouped and dispatched quickly. The challenge increases when you also attempt to minimize the ending cutscene, as simply killing all the birds is not enough—you must do so efficiently on the way out.

!Scene Transitions
Ending a scene faster often requires positioning yourself precisely to avoid unnecessary removal or repositioning of the main character during transitions.

!Strategic Lancing (Dragon's Egg scene)
With TAS precision, it’s possible to hold position at the top of the screen, but bird lancing still requires careful planning. One effective strategy involved moving quickly to a bat spawn location, which caused birds to descend slightly faster.
Additionally, killing the final bat must be done in a very specific way to avoid forcing a hero “reset” before the dragon fight. In some cases, striking a bat on the right side of the screen while facing left saves time, whereas facing right introduces extra delay. Finding the optimal final position often required experimentation.

!Cutscene Exploitation
The game’s end‑of‑fight cutscenes provide further opportunities for time saves. After a dragon’s defeat, the protagonist floats upward off‑screen. By luring the dragon higher before the final blow, this animation can be shortened. This can be a daunting task, as the dragon is not always lurable to the top of the screen. There are also moments where the sprite collision detection can be exploited, allowing the dragon to be hit from positions without direct contact.

!!!Ending Choice and Game Loop Structure
With every loop, the game increases in difficulty. Here, I choose to end after 10 loops. for the following reasons:

*Difficulty ends at loop 9. This is visibly apparent with the increase of enemies on the screen, especially when traversing the tunnel. I also have the same observation by the runner's description in the comparison video below.
*According to our rules, all unique content must be delivered. In this run, I complete 10 loops because the 10th loop has the last "Change of Day" before returning to the state the game started in. Additionally, reaching 100,000 offers the final "Bonus Knight". During this final loop, you'll notice that the speed doesn't increase nor does any additional enemy counts appear. Because of the architecture of the Commodore 64, this is a common analysis...due to the ability of displaying 8 sprites total...as some are reserved for the main character.

A loop consists of four distinct phases:

1. Bird (Pterodactyl) Entrance Phase
First, you must enter the mountain. The entrances are blocked by large birds that need to be roused. As soon as a bird changes color to red, it must be touched from above by Pegasus’s hooves. Once all birds are roused, a lance appears. Use it to eliminate all birds within the time limit to gain access to the mountain and proceed to the second phase.

2. Haunted Tunnel
You must traverse a tunnel leading toward the dragon’s lair. Along the way are monsters and traps. Only bats can be killed—everything else must be avoided. You again have limited time to reach the Golden Door, unlocking the next section.

3. Dragon Egg / Bats Phase
Inside the dragon’s lair, the dragon is protected by an egg‑shaped shield powered by red bats. Each bat killed weakens part of the shield, turning it red. Once the entire shield becomes red, it collapses, leaving the dragon vulnerable.

4. Dragon Fight
To defeat the dragon, you must strike it four times with the lance. With each hit, the dragon changes color. After the fourth hit, just as victory seems certain, you discover that an even more evil relative lurks within the lair. You retreat, oil your armor at the mountain’s entrance, and prepare for the next heroic ordeal.

!!!Human Comparison

[module:youtube|v=9nPTj1HNDHE]
