; Este eh um programa *.asm que configura tudo e faz todos os includes, mas 
; que NAO contem o nosso programa de fato, o objetivo deste pgm eh servir como
; passo intermediario para converter os includes para compiladores diferentes do Rasm...
; ver https://www.julien-nevo.com/arkostracker/index.php/using-a-song-in-production-using-any-assembler/

;Compiles the player, the music and sfxs, using RASM. 
;No ORG needed. 
 
MusicSpace:
    ;This is the music, and its config file. 
    include "incl_myflappybird2.asm"          ; <<<---- change music here
    ;;include "incl_myflappybird2_playerconfig.asm" ;Optional. 

SoundEffectsSpace:  
    ;This is the sfxs (sound effects), and its config file.   
    include "incl_MyRing6Sound.asm"          ; <<<---- change sound effect here
    ;;include "incl_MyRing6Sound_playerconfig.asm"  ;Optional. 
 
    ;What hardware? Uncomment the right one. 
    ;PLY_AKG_HARDWARE_CPC = 1 
    PLY_AKG_HARDWARE_MSX = 1         
    ;PLY_AKG_HARDWARE_SPECTRUM = 1 
    ;PLY_AKG_HARDWARE_PENTAGON = 1 
 

;       Obs: sempre usaremos a opcao abaixo, tanto para gerar um binary/dsk 
;       como para gerar um arquivo tipo cartridge/ROM (para facilitar)
;       ----------------------
;       ROM  (necessario, sempre que se produzir file que emula cartucho, tipo *.ROM)
;       ----------------------
;       To use a ROM player (no automodification, use of a small buffer to put in RAM) <<---- atencao: "in RAM" 
       PLY_AKG_ROM = 1
       PLY_AKG_ROM_Buffer = #E000-512 ;(or wherever) ;<<---- "in RAM", diz acima, tem que ser acima de #8000
;       This makes the player a bit slower and slightly bigger.
;       The buffer is PLY_AKG_ROM_BufferSize long (=250 max). You can hardcode this value, because it is calculated, so it won't be accessible before this player is assembled.
;       This value decreases when you use player configuration, but increases if you use sound effects.
;       IMPORTANTE: significa que com sounds, ele pode ser >250 bytes... vi no codigo que pode ter 250+23    


    ;Comment/delete this line if not using sound effects. 
    PLY_AKG_MANAGE_SOUND_EFFECTS = 1 
 
    ;This is the player. 
    include "players/playerAkg/sources/PlayerAkg.asm"

;; EXECUTAR os comandos abaixo para poder gerar um include do Arkos compativel com o PASMO:
;; 1)compilar este source-code com o RASM
;;   tools\rasm_win64.exe stub_gera_include_arkos_para_pasmo_music2.asm -o temp_disark -s -sl -sq
;;   (vai gerar um arquivo binario e um arquivo de symbols temp_disark.bin/sym)
;; 2) rodar o Disark.exe com argumento especifico para o pasmo:
;;    tools\Disark.exe temp_disark.bin include_arkos_para_pasmo.asm --symbolFile temp_disark.sym --sourceProfile pasmo
;;    (Vai gerar o arquivo include_arkos_para_pasmo.asm para uso em nosso programa assembly, ver tutoriais do Arkos.
;;     Ele deve ser included logo acima do label "PgmEnd" ou equivalente, ou seja,  ultima coisa do nosso programa)
;; 3) compilar no PASMO:
;;    pasmo -v --err mupasmo.asm  mupasmo.rom  <<<--- mupasmo.asm eh o nosso programa que faz os comandos PLY_AKG_INIT, PLY_AKG_PLAY etc.
;;                                                    (ver os tutoriais do Arkos sobre como escrever esses comandos e tocar a musica)
;;
;;  ATENCAO
;;  Antes de exportar arquivos *.asm de musicas/sound, precisa sempre verificar no Arkos Tracker2 
;;  se a musica que estah em edicao foi configurada para rodar a 60 hz e ver configuracoes PSG.  
;;  Ver isso no menu Edit>>Song properties...
;;  - checar em PSG>>Edit se o "PSG type" e o "PSG Master clock" estao configurados para MSX...
;;  - se estiver setado <> de 60hz, a musica vai tocar +rapida/+lenta ao rodar no MSX/emulador
;;  - se precisar alterar isso, em seguida tem que fazer tuning da velocidade usando o botao
;;    Edit>>Song properties>>Initial speed ate que a musica fique no ritmo igual ao original...
