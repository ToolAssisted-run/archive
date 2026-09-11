* Emulator used: Chimera d4cb48ff7, but it syncs fine on the mentioned nightly build
* Core: PCSX2
* Render: Software (Native)
* Video encoding command: -vf "scale=3086:2160:flags=lanczos" -crf 16 -pix_fmt yuv420p -b:a 384k -f mp4
* BIOS SHA1: 7A62E5F48603582707E9898EB055EA3EAEE50D4C (ps2-0200a-20040614)

!! History

Once upon a time I saw a [speedrun|https://www.youtube.com/watch?v=viioNZmG6UI] which earned maximum money in 2.5 hours, and a silly idea hit me: "When PS2 becomes reliably TASable, the goal can be achieved in 20 mins". So, it became a reality and I made it real!

!! Production

I was a bit surprised gambling topic isn't that popular. GTA: San Andreas has been around for 22 years and nobody has recorded all the numbers it has to say. I watched some videos, but I was disappointed with how low wagers were. So I didn't investigate all ways to earn money and just followed the seen route.

It took 13 bets in Large Acres races to get 1 billion minus 1 dollar. Bets 6-13 are almost entirely made of input copy-paste, because even on an interactive screen the game works at 30 fps.

After that I just showed the statistics. It takes a long while for the money to count up during the game.
I could also drive to Grow Street and start the first mission, but the goal itself is very niche. If the community really raises to beat the goal of maximum money, I can update this TAS to reach the mission marker, just to align with possible new rules. All in all, I don't find this TAS that precious.

!! Inside Track mechanics (IBT machine, Large Acres 2000m)

The random begins once you enter an IBT machine. The betting odds are put at random and, at the top, you may not get 12/1 at once. Instead, it would be 11/1.

The outcome of a race depends solely on the moment at which you press "Place Bet". Meshing buttons doesn't cause any effect.

There is a rumour stating that each horse has equal probability of winning. I'd say, it's plausible. However, my humble production tests say 14%.

Also, the random is made to make situations so 2-3 horse are hitting the screen boundary to make an intrigue. In such a situation, your horse always comes 2nd. I witnessed it 8 times during the production of this TAS.
