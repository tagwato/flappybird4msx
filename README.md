![](http://img.youtube.com/vi/AibY_IDPayM/0.jpg)

# FLAPPY BIRD for MSX... with Music !

This is a modification of the [Flappy Bird](https://github.com/plainspooky/flappybird4msx) game developed by Giovanni Nunes (aka plainspooky) in order to include background music and sound effects generated and played with [Arkos Tracker 2](https://www.julien-nevo.com/arkostracker/).

The various original \*.asm files have been consolidated into one large "full_game_with_music.asm" (just because it made it easier for me to get an overview of the whole program). 

Giovanni's original comments have been retained and additional comments have been included to make the code easier to understand.

## How to build (not mandatory)
You will need to be running MS-Windows (sorry).

Just download all the files and double click on one of the "build______.CMD" scripts.

Once compiled, those scripts will try to run [OpenMSX](http://openmsx.org/) to test the generated game, but this is optional.

It's also possible to test the generated *.rom or *.dsk files with [WebMsx](https://webmsx.org/).

## How to run the game
There are pre built versions for both binary/**DSK** and **ROM** formats, which are the "flappy_____.rom" and "flappy_____.dsk" files.

It's easy to run the game with [WebMsx](https://webmsx.org/): just drag and drop one of of these files over the WebMSX screen.

When dropping, select the appropriate device: cartridge or disk-drive. If it is the disk-drive, reset the emulator after dropping.


## Toolbox
I've used the following tools to make and test the changes in this game:
- [Notepad++](https://notepad-plus-plus.org/) to edit code
- [Pasmo](https://pasmo.speccy.org/) to build code
- [Arkos Tracker 2](https://www.julien-nevo.com/arkostracker/) to generate music and sounds 
  (to be honest, I've just copied and modified some examples that come with Arkos)
- Additional programs that come with Arkos Tracker 2, in particular: Rasm and Disark
- The excellent [DskTool](https://www.msx.org/news/software/en/dsktool-added-downloads), developed by Ricardo Bittencourt and improved by Tony Cruise
- [OpenMSX](http://openmsx.org/) (with [C-BIOS](http://cbios.sourceforge.net/) to test the product
- [OpenMSX Debugger](http://marmsx.msxall.com/cursos/assembly/debugger.html) to chase and fix bugs
- [WebMsx](https://webmsx.org/) to test the game built as a disk 
- [Git](https://www.git-scm.org) to keep tracking of changes.

## Licenses and updates
This program and other related files are licensed unde terms of GPL
(GNU General Public License). Changes, suggestions and improvement
are welcomed.

The code concerning the music player of "ARKOS PLAYER 2" is
submitted to MIT license (https://choosealicense.com/licenses/mit/).


Below, I kept the content of the original README, to allow a better understanding of the game that was modified.
<br/><br/>

-------------------------------
<br/>

(original README content):


# FLAPPY BIRD for MSX

This is a *demake* of .GEARS Studio's [Flappy Bird](https://en.wikipedia.org/wiki/Flappy_Bird) and my first public program coded entirely in Z80 assembly -- Yay! I'm a Hacker now! This game works on any MSX model (PAL or NTSC/PAM-M).
Screen refresh is detected and the game speed adjusted automatically. If you're using a MSX turbo R the R800 mode will be enabled.

Build using **PASMO Assembler** and **GNU MAKE** with:
* ```make bin``` to create a binary file to be loaded on real MSX
computer by BLOAD "FLAPPY BIRD.BIN",R or
* ```make rom``` to create a ROM image to run under emulators, ROM loader or build a physical cartridge.

In my [blog](https://giovannireisnunes.wordpress.com/meu-software/flappy-bird-para-msx/) you will find more information about the game and the binaries to be downloaded.

This program and other related files are licensed under terms of GPL (GNU General Public License). Changes, suggestions and improvement are welcomed.

