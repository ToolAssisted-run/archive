> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/5296M and entered this archive as a voluntary
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

!! Introduction
 
Another World (a.k.a. Out of this World) is an adventure game designed and coded by Eric Chahi. It features Lester, a young scientist and Ferrari owner that, after a failed experiment, ends up in an Alien planet where everything tries to kill him. This is one of my first childhood experiences with a game that 'feels like a movie' and was my favourite for a long time. This movie solved the DOS port of the game, which is, arguably, the best port of all: it is fluent and sound is excellent.

The trigger for working on this movie was finding [https://github.com/fabiensanglard/Another-World-Bytecode-Interpreter|NEW-RAW], an Another World bytecode interpreter / virtual machine that enables re-recording features that I need to run JaffarPlus on. It took some work to connect it to the bot, but in the end it provided a good emulation. 

This movie builds on many of the tricks I found earlier in the Genesis version [https://tasvideos.org/4790M|movie], but adds new tricks of its own. 
* A better execution overall, thanks to using a much faster emulation core for botting and adapting the bot to the input scheme after figuring out that this game uses staggered inputs (inputs in a given frame have an effect two frames forward).
* More widespread uses of the GunCharge+Move everywhere
* Style Style Style

A total of 3 weeks were spent on this project, mostly on connecting to NEW-RAW, exploring the RAM map, finding level-specific triggers, route strategizing, scripting each level, running the bot, and performing manual adjustments to the movie. 

I had some problems working in this movie. First, even if I had an almost perfect emulator for the game, I could never solve the issue of RNG. The game has, as far as I know, two sources of RNG: time and inputs. Although inputs can be easily manipulated by the bot, timing is almost impossible to control in a PC. Any differences in loading times (hard disk latency and such) would yield different effects in the game. To make matters worse, almost everything is RNG-dependent. Enemy (slug) placement, behavior, gun accuracy, reaction times, etc. There are but a few sections of the game that are not RNG dependent. This situation forced me to manually fix many desyncs from the solutions the bot gave me.

Despite RNG, I was finally able to finish the TAS on Friday. However at this point I realized I had forgotten to activate the sound (yes, that happened). Not even that, but the proper way to activate it is through a setup binary that would not run correctly on PCem. Thankfully [https://tasvideos.org/Users/Profile/slamo|slamo] helped me get the sound problem resolved: simply adding the argument 's' would activate the sound. 

After spending a whole Saturday re-syncing the movie (sound added many desyncs, as expected). Almost at the end of resync, I found that playing straight from the Floppy disk crashes after the tank stage. I entered dispair. After recovering sanity, I decided had to add an installation step to play the entire game from hard disk and started re-syncing the entire movie again. There went Sunday.

In spite of the problems I had working and the fact this game stole my hard-earned weekend, watching this movie for the first time made me really happy and compensated all the suffering. That's why I love this hobby.

!! Emulation

! Rom Information

* Name: Out of this World
* SHA1: 1e04092ec17c671688b53ef392ba3e514b4bbd8e (disk1.img)
* SHA1: 1a2084a9fc15141404eecfb31127a0d209567624 (disk2.img)
* Source: [http://www.goodolddays.net/diskimages/id%2C568/|GoodOldDays.net]


! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus] 
* Routing Core: [https://github.com/fabiensanglard/Another-World-Bytecode-Interpreter|NEO-RAW] (Average Exploration Performance: 2.7M States/s)
* Platform: AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM

!! Config File

Here's the config file for PCem I used. Be mindful of the paths.

%%SRC_EMBED
gameblaster = 0
gus = 0
ssi2001 = 0
voodoo = 1
model = ga686bx
cpu_manufacturer = 0
cpu = 6
fpu = builtin
cpu_use_dynarec = 1
cpu_waitstates = 0
gfxcard = px_trio64
video_speed = -1
sndcard = sb16
cpu_speed = 20
disc_a = /home/jaffar/jaffarPlus/examples/aw/tas/imgs/disk1.img;/home/jaffar/jaffarPlus/examples/aw/tas/imgs/disk2.img
disc_b = 
hdd_controller = ide
mem_size = 8192
cdrom_drive = 200
cdrom_channel = 1
cdrom_path =
zip_channel = -1
hdc_sectors = 63
hdc_heads = 16
hdc_cylinders = 2099
hdc_fn = /home/jaffar/.pcem/imgs/late90s.img
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
cd_speed = 72
cd_model = pcemcd
joystick_type = 0
mouse_type = 2
enable_sync = 1
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

[Phoenix S3 Trio64]
memory = 4

[Sound Blaster 16]
addr = 544
opl_emu = 1
%%END_EMBED
