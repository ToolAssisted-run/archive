> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/4742M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%TOC%%

!! Seizure Warning

This movie contains many flashing screens, very fast transitions and deafening sounds. Please don't watch if these things might be harmful to you.

!! Goals

* any% Pacifist
* Takes damage to save time
* BARBARIAAAAAAAAAAAN

!! Introduction

Let's get straight to the point: Barbarian is a bad game with a... flawed control system. I quote [https://www.mobygames.com/game/view_review/platformId=2/reviewerId=16/gameId=253/|Trixter]:
 
%%QUOTE
Gameplay is done with "icons", which can be selected with the joystick, mouse, or function keys. For example: To move your character to the right, you press/select the right arrow icon. To swing your sword, you select the sword icon. This would be appropriate if the game were a turn-based strategy game or something--but it's not! It's a weak action game. You'd think that you could simply move left, right, etc. and hit a button to swing your sword, but you can't. You have to use the "icons" for everything.

It's the stupidest control system I've ever seen for an action game.
%%QUOTE_END

However, behind its many flaws exists a heart of gold. This is a charming game with many components of comedy and action which me and my brother really enjoyed as kids. Once you take a few hours to learn the controls, they aren't as bad anymore.

I made this TAS as an escape valve from the stress I've been dealing with, trying for months to obsolete some masterpieces (Ninja Gaiden, Castlevania). I felt like I was putting too much pressure on myself so I decided to do a simple, no-pressure TAS the old-fashion way. Beyond some stress with the setup, doing made me feel the love for TASing once again. 

Why pacifist? The difference in time between pacifist and any% is so minute, that it doesn't justify losing the charm of beating this game without harming anything. You will see that the 'flee in panic throwing away your sword' action (F10) is used extensively in this game. That alone adds the magic that an aggressive (barbarian-like, if you will) movie would have been.

For this run I naturally selected the fastest mode.

!! New Revision

I have decided to try the Late 80's setup to see if the game would run at a more decent speed when using the fastest setting, and so it did. So now the speedrun is around 6x slower, but can be watched.

!! Glitches & Tricks

* __Fast Fall__: It is faster to descent by falling to death than descending the stairs normally. I can afford losing this life now because I found a way to save it later on (only doing one death skip, instead of two).

[https://i.ibb.co/Gc3SdSc/barb4.png]

* __Last Screens' Skip__: I found this video on the internet by [https://www.youtube.com/watch?v=mKoJRRRIzoE|Vesselin Zhilov] that really helped get the route done. In particular, skipping the last few screens with a backwards jump at the stairs really skipped a whole lot of fighting.

[https://i.ibb.co/1fxgY8T/barb1.png]

* __Death-Skip__: During routing I accidentally discovered that purposefully dying puts you in the top left part of the screen, which allows you to skip some screens. One can also save time by falling all the way, instead of taking the initial long stair, but that leaves you without lives for the suicide-ending.

[https://i.ibb.co/YQYYr32/barb2.png]

* __Suicide Ending__: The game requires you to come back to the start after you get rid of the bad magician. However, simply falling to your death triggers the game ending.

[https://i.ibb.co/GcxdRF3/barb3.png]

!! Trivia

The synthesized voiceover in the unavoidable title screen is one of the first ones in DOS games, and it runs over the PC speaker. A true feat, when many games at the time used it only for *beep* *boop* sounds. [https://tasvideos.org/HomePages/GMP|GMP] says it was inspired by... [https://www.youtube.com/watch?v=a9U_C_q6WcU|this].

!! Emulator

* OS: Ubuntu 20.04 LTS Focal Fossa
* Emulator: LibTAS v1.4.3 + PCem 17+st-1 + Late 80's package
* Image: 5 1/4" original distribution floppy disk
** SHA1 e36ed1ac686460d104c23780d8b2231371f33de7
** [https://www.goodolddays.net/diskimages/id%2C918/]

And here is the contents of late80s.cfg (be mindful the paths are absolute, you might want to change them)

%%SRC_EMBED
gameblaster = 0
gus = 0
ssi2001 = 0
voodoo = 0
model = deskpro386
cpu_manufacturer = 0
cpu = 1
fpu = none
cpu_use_dynarec = 0
cpu_waitstates = 0
gfxcard = vga
video_speed = -1
sndcard = sbprov2
cpu_speed = 1
disc_a = /home/jaffar/tas/barbarian/barb.img
disc_b = 
hdd_controller = ide
mem_size = 4096
cdrom_drive = 200
cdrom_channel = 2
cdrom_path = 
zip_channel = -1
hdc_sectors = 17
hdc_heads = 15
hdc_cylinders = 900
hdc_fn = /home/jaffar/.pcem/imgs/late80s.img
hdd_sectors = 0
hdd_heads = 0
hdd_cylinders = 0
hdd_fn = 
hde_sectors = 0
hde_heads = 0
hde_cylinders = 0
hde_fn = 
hdf_sectors = 0
hdf_heads = 0
hdf_cylinders = 0
hdf_fn = 
hdg_sectors = 0
hdg_heads = 0
hdg_cylinders = 0
hdg_fn = 
hdh_sectors = 0
hdh_heads = 0
hdh_cylinders = 0
hdh_fn = 
hdi_sectors = 0
hdi_heads = 0
hdi_cylinders = 0
hdi_fn = 
drive_a_type = 7
drive_b_type = 2
bpb_disable = 0
cd_speed = 24
cd_model = pcemcd
joystick_type = 0
mouse_type = 0
enable_sync = 1
netcard = 
lpt1_device = none
vid_resize = 0
video_fullscreen_scale = 0
video_fullscreen_first = 1

[Joysticks]
joystick_0_nr = 0
joystick_1_nr = 0

[SDL2]
screenshot_format = png
screenshot_flash = 1
custom_width = 640
custom_height = 480
fullscreen = 0
fullscreen_mode = 0
scale = 1
scale_mode = 1
vsync = 0
focus_dim = 0
alternative_update_lock = 0
render_driver = auto

[GL3]
input_scale = 1.000000
input_stretch = 0
shader_refresh_rate = 0.000000

[GL3 Shaders]
shaders = 0

[Sound Blaster Pro v2]
addr = 544
irq = 7
dma = 1
opl_emu = 1
%%END_EMBED
