        ; Tests the AKG player, for MSX, music and sound playing together.
        ; Press SPACE to play a sound effect
        ;       ESC to exit. 
        
        ; TAGWATO COMMENTS: 
        ; Here we merged PlayerAkgTester_MSX.asm and parts of PlayerAkgWithSoundEffectTester_SPECTRUM.asm 
        ; because, until now, there was no complete example for MSX.
;===>>    Also, and MORE IMPORTANT, we added a routine to normalize the "tempo" (speed) of the song, 
        ; regardless of the VDP interrupt clock (PAL-50hz or NTSC-60hz).
        ; See the comments in the code below (I kept some less important comments in Portuguese).
        ; In any case, the code is self-explanatory (I hope).
                
        
        ;This compiles with RASM. Please check the compatibility page on the website, you can convert these sources to ANY assembler!
        
        ;A binary file with header (to load with the BLOAD MSX command) is generated.
        ;It can then be included inside a DSK file (using the DiskMgr software for example). 
	;Tested with the BlueMSX, OpenMSX and WebMSX emulators.
        
        org #B000
        
        ;This is the header for a BINary file for MSX. See https://www.faq.msxnet.org/suffix.html
        db #fe
        dw PgmStart
        dw PgmEnd
        dw PgmStart     ;Execution address.
        

KEYS: equ #FBE5             ;see http://map.tni.nl/articles/keymatrix.php

SONGREALFREQUENCY: equ 50   ; <<<<------ CHANGE HERE, ACCORDING TO THE SONG 'REAL' FREQUENCY   
                            ;            (load the song in Arkos Tracker 2 and take a look at "Edit>>Song properties" menu option)


PgmStart:
        
        ;Initializes the music.
        ld hl,Music_Start
        xor a                   ;Subsong 0.
        call PLY_AKG_Init

        ;Initializes the sound effects.
        ld hl,SoundEffects
        call PLY_AKG_InitSoundEffects
        
        call FixSongSpeed   ; <<<------- TO PLAY THE SONG AT (almost) THE 'SAME' SPEED, REGARDLESS OF WETHER THE MACHINE HAS a 50hz or 60hz VDP.
             
MainLoop:    
sync:   ei
        nop
        halt
        di        ;nao fez diferenca ligar ou desligar isso no MSX (no exemplo em "sources" nao faz "di")

        ld a,(keys+7) ; testa se estah apertando ESC
        bit 2,a
        jr z, ExitProg ; se estah apertando ESC, termina o programa

        ld a,(keys+8) ; testa se estah apertando SPACE
        bit 0,a
        jr z,playfx; se estah apertando space, vai tocar sound
        
        xor a
        ld (keypressed),a
        jr playmusic ; nao era space, vai tocar music        
                     
playfx:
        ; Abaixo eh "o truque" para garantir que um sound NAO seja interrompido e inicie outro sound
        ; caso a tecla CONTINUE pressionada (o que NAO seria bom em  jogos).
        ; Esta eh a forma correta de tratar isso. Ver PlayerAkgWithSoundEffectTester_SPECTRUM.asm.  
        ld a,(keypressed) ; testa se SPACE ja estava pressionada=1 e continuou pressionada  
        and 255
        jr nz,playmusic   ; se sim, entao vai tocar musica (NAO interrompe um sound para iniciar outro) !!! 

        ld a,(SelectedSoundEffect)
        inc a
        cp 6
        jr nz,playfx2
        ld a,1
playfx2:
        ld (SelectedSoundEffect),a
        ld c,1  ;Channel (0-2)
        ld b,0  ;Full volume.
        call PLY_AKG_PlaySoundEffect
        ld a,1       ;flag keypressed=1 indica que SPACE estah pressionada e ja iniciou tocar um sound 
        ld (keypressed),a

playmusic:
        ld a, (adjustedSongSpeed)
        cp 0                     ;will be 0, if there was no need to adjust the song speed 
        jr z, arkosPlay
        call ChangeCurrentSpeed  ; ; <<<------- TO PLAY THE SONG AT (almost) THE 'SAME' SPEED, REGARDLESS OF WETHER THE MACHINE HAS a 50hz or 60hz VDP.
arkosPlay:
        call PLY_AKG_Play
        jr MainLoop 


ExitProg:  
        ld a,2   ;Channel (0-2) 
        call PLY_AKG_StopSoundEffectFromChannel  

        call PLY_AKG_Stop
        ret


Music_Start:
        ;Include here the Player Configuration source of the songs (you can generate them with AT2 while exporting the songs).
        ;If you don't have any, the player will use a default Configuration (full code used), which may not be optimal.
        ;If you have several songs, include all their configuration here, their flags will stack up!
        ;Warning, this must be included BEFORE the player is compiled.

        include "players/playerAkg/sources/resources/Music_AHarmlessGrenade.asm"
        ;include "players/playerAkg/sources/resources/Music_AHarmlessGrenade_playerconfig.asm"
        
        ;include "players/playerAkg/sources/resources/Music_Empty.asm"		;Useful to listen to the sound effects alone.

        
Music_End:

SoundEffects:
        include "players/playerAkg/sources/resources/SoundEffects.asm"   ;usaremos sons dos exemplos

Main_Player_Start:        
        ;Selects the hardware. Mandatory, as CPC is default.
        PLY_AKG_HARDWARE_MSX = 1

        ;IMPORTANT: enables the sound effects in the player. This must be declared BEFORE the player itself.
        PLY_AKG_MANAGE_SOUND_EFFECTS = 1
                
        ;Want a ROM player (a player without automodification)?
        ;PLY_AKG_Rom = 1                         ;Must be set BEFORE the player is included.
        
        ;Declares the buffer for the ROM player, if you're using it. You can declare it anywhere of course.
        ;LIMITATION: the SIZE of the buffer (PLY_AKG_ROM_BufferSize) is only known *after* ther player is compiled.
        ;A bit annoying, but you can compile once, get the buffer size, and hardcode it to put the buffer wherever you want.
        ;Note that the size of the buffer shrinks when using the Player Configuration feature. Use the largest size and you'll be safe.
        IFDEF PLY_AKG_Rom
                PLY_AKG_ROM_Buffer = #f000             ;Can be set anywhere.
        ENDIF

        include "players/playerAkg/sources/PlayerAkg.asm"
Main_Player_End:        


;**** My routine to dynamically change the current speed of the song ****
;     This can be useful if we need to run a 50Hz song in machines with 60hz VDP or vice versa.
;     Notice: using this will override any 'speed track' <> 0 hardcoded in the song (Link section of Arkos) 
ChangeCurrentSpeed:  ; before calling this routine, put the song speed in z80 register 'A'
    ; (se a musica foi configurada como 50hz ao ser gerada, entao, para rodar em machine com VDP 60hz 
    ; tem que diminuir a velocidade aumentando 1 ponto, da default 6 para 7;   e vice-versa )
	; Nossas mudancas abaixo decorrem do que consta no PlayerAkg.asm, ali atras incluido...
        IFNDEF PLY_AKG_Rom   
	; nesse caso, o label PLY_AKG_CurrentSpeed resultou definido no PlayerAkg.asm como: 
	;;PLY_AKG_CurrentSpeed: ld a,0    ; isso eh o que consta no PlayerAkg.asm nesse caso
         ld  (PLY_AKG_CurrentSpeed + 1), a  ; esta eh a mudanca que estamos fazendo ;(a=N=the speed we want)
	; ou seja, acima mudamos para a=N o byte 0 que constava NAQUELE endereco+1 do label
	;;PLY_AKG_CurrentSpeed: ld a,N    ; <<-- 'enganamos' o codigo la atras para ficar assim :)
        ELSE                 
	; nesse caso, o PLY_AKG_CurrentSpeed foi definido no PlayerAkg.asm como um byte no buffer
	; entao, simplesmente carregamos la o valor que queremos usar:
         ld (PLY_AKG_CurrentSpeed), a   ;(force a=N=the speed we want)
        ENDIF
         ret


FixSongSpeed:
        ld c, 0
        ld a,(0x002b)           ; read the MSX version and info from ROM
        bit 7,a                 ; if bit 7 is 1, 50Hz/PAL; if 0, 60Hz/NTSC
        jr z, cont1
        ld c, 128               ; c=128 to indicate 50hz/PAL machine; 0 else (assuming only 50 or 60 hz used)
cont1:  
        ld b, 0
        ld a, SONGREALFREQUENCY
        cp 50
        jr nz, cont2
        ld b, 1                 ; b=1 to indicate song created at 50hz; 0 else (assuming only 50 or 60 hz used)
cont2:  
        ld a, b
        add a, c
tst0:   cp 0                    ;Here we have a 60hz/NTSC machine AND a song created for 60 hz
        jr z, end_fix           ; no adjustment needed
tst1:   cp 1                    ;Here we have a 60hz/NTSC machine AND a song created for 50 hz
        jr nz, tst128
        ld a, 7                 ;slow down , from 6 (default speed) to 7 in this case
        ld (adjustedSongSpeed), a
        jr end_fix 
tst128: cp 128                  ;Here we have a 50hz/NTSC machine AND a song created for 60 hz
        jr nz, tst129
        ld a, 5                 ;speed up, from 6 (default speed) to 7 in this case
        ld (adjustedSongSpeed), a
        jr end_fix 
tst129: cp 129                  ;we have a 50hz/NTSC machine AND song was created at 50 hz
        ;jr z, end_fix         ; no adjustment needed
end_fix:
        ret


Variables_Section:          ;Don't forget to put the variables in RAM when building a ROM/cartridge 
adjustedSongSpeed: db 0                       
SelectedSoundEffect: db 0    ;The selected sound effect to play (>=1). 
                             ;The code increases the counter first, so setting 0 is fine. 
keypressed: db 0




PgmEnd:  ;We have to put this label at the very end of a RAM/dsk program

