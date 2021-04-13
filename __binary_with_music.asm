;;
;;   Modificado para incluir musica de fundo e sound effects gerados e
;;   tocados com auxilio do ARKOS TRACKER2.
;;   Para tanto, o "include_arkos_para_pasmo.asm" foi incluido ao final
;;   do programa "full_game_with_music.asm", aqui referenciado.  
;;   Outros ajustes foram feitos, ver comentarios em  "full_game_with_music.asm".
;;   Obs: o  "include_arkos_para_pasmo.asm" eh quase ininteligivel, porque ele 
;;   resulta da conversao do arquivo "stub_gera_include_arkos_para_pasmo_music*.asm" 
;;   pelo Disark.exe (converte do dialeto assembly RASM para o dialeto PASMO).
;;   Esses procedimentos sao realizados no "build.CMD" (ver anotacoes nesse script).
;;   Ver tambem:
;;   https://www.julien-nevo.com/arkostracker/index.php/using-a-song-in-production-using-any-assembler/
;;   ===Tagwato(TGW), abril/2021===
;
;  Flappy Bird for MSX -- version 1.W
;  The annoying and pathetic bird flapping on your MSX :)
;
;  (C) 2014-2020 Giovanni dos Reis Nunes <giovanni.nunes@gmail.com>
;
;  This program is free software; you can redistribute it and/or modify
;  it under the terms of the GNU General Public License as published by
;  the Free Software Foundation; either version 2 of the License, or
;  (at your option) any later version.
;
;  This program is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;  GNU General Public License for more details.
;
;  You should have received a copy of the GNU General Public License
;  along with this program; if not, write to the Free Software
;  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
;  MA 02110-1301, USA.
;
__VERSION:  equ 1
__RELEASE:  equ 23  ; TGW ALTERADO
;
;  >>>  Flappy Bird is a original game released in 2013 by .GEARS  <<<
;
gameArea:  equ $8200  ;TGW ALTERADO deixamos espaco para rodar o AUTOEXEC.BAS
ramArea:   equ $e000  ; endereço de RAM para o programa "escrever" variaveis na memoria... 
		      ; Usar de #8000h em diante para máquinas de 64Kb com 32kb de RAM (MSX1 brasileiros todos)
              ; Se precisar usar o BASIC, deve deixar algum espaco para ele, logo acima de #8000h.

arkosBuff: equ ramArea-512; ==TGW INCLUIDO (isto NAO eh usado neste *.asm, serve apenas para lembrar que lah no arquivo
                          ; "stub_gera_include_arkos_para_pasmo_music*.asm" (que dah origem ao "include_arkos_para_pasmo.asm")
                          ; o simbolo PLY_AKG_ROM_Buffer tem que apontar para a ramArea aqui definida, menos 512 bytes). 

            org gameArea-7

            db $fe                      ; MSX-BASIC binary header (for BLOAD)
            dw startCode                ; start address
            dw endCode                  ; end address
            dw execCode                 ; execution address


startCode:

            db "CW"                     ; "Crunchworks"
            db "01"                     ; "Flappybird"
            db __VERSION+48             ; code version (1 byte)
            db __RELEASE+65             ; code release (1 byte)

           
execCode:
            include "full_game_with_music.asm"

endCode:
            end
