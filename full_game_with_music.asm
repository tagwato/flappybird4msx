;
;========== include "main.asm"
            include "library/msx1bios.asm"
            include "library/msx1variables.asm"
            include "library/msx1hooks.asm"

PAL:        equ  5                      ; 1/10s em 50Hz (PAL-B/G/N)
NTSC:       equ  6                      ; 1/10s em 60Hz (NTSC & PAL-M)
GAP:        equ  6                      ; espaço entre os canos
VOLUME      equ 11                      ; volume da campanhia dos pontos
MAXU:       equ 12                      ; incremento máximo para a subida
MAXD:       equ 12                      ; incremendo maximo para a descida

            call initVar                ; inicializa as variáveis
            call initEnv                ; inicializa o ambiente do jogo
            call ENASCR                 ; religa tela (desligada em "InitEnv")

            call cwLogo                 ; chama a animação da abertura
            call gplMensa               ; exibe o aviso da GNU/GPL

            call clearScore             ; zera a pontuação

gameLoop:
            call prepareScreen          ; preparo a tela
            call startScreen            ; menu principal
            
            call clearScore             ; zera a pontuação
            call printScore             ; e atualiza a pontuação na tela
            
            call game                   ; e que o jogo comece!
            jr gameLoop                 ; volta para o laço do jogo
    
    
;========== include "birdOff.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  arranco o pássaro da tela
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
birdOff:
            proc
            
            ld a,192                    ; Um valor que não atrapalha ninguém
            ld bc,16                    ; 16/4 = 4, quatro sprites
            ld hl,6912                  ; início da tabela de sprites
            call FILVRM                 ; preenche com zero!

            ret                         ; sai da rotina
            endp
            
            
;========== include "cwLogo.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  Abertura da Crunchworks
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
cwLogo:
            proc
            local cwLogoWait
            local cwLogoData
            local cwLogoLoop
            local cwLogoPrt1
            local cwLogoPrt2

            cwLogoLoop: equ videoData
            cwLogoPrt1: equ videoData+1
            cwLogoPrt2: equ videoData+3

            ld hl,0
            ld (cwLogoPrt1),hl          ; a primeira linha na tela
            ld (cwLogoPrt2),hl          ; a primeira linha na tela

            xor a                       ; zero A
            ld (cwLogoLoop),a           ; zero a posição do laço

            ld bc,768                   ; 768 bytes
            ld hl,6144                  ; começando em 6144
            call FILVRM                 ; limpo a tela

            ld hl,6144+2*32+9           ; início da parte de cima
            ld (cwLogoPrt1),hl

            ld hl,6144+21*32+9          ; início da parte de baixo
            ld (cwLogoPrt2),hl

            xor a                       ; zero A

cwLogoWait:
            ld hl,JIFFY
            ld (hl),0                   ; zera o timer do VDP

            ld (cwLogoLoop),a           ; salva o valor do contador

            ld bc,14                    ; número de bytes a copiar
            ld de,(cwLogoPrt1)          ; posição na VRAM
            ld hl,cwLogoData            ; posição na RAM

            call LDIRVM                 ; copia a parte superior

            ld bc,14                    ; número de bytes a copiar
            ld de,(cwLogoPrt2)          ; posição na VRAM
            ld hl,cwLogoData+14         ; posição na RAM

            call LDIRVM                 ; copia a parte inferior

            ld de,32                    ; meu incremento/decremento

            ld hl,(cwLogoPrt1)          ; recupera a posição atual
            add hl,de                   ; uma linha abaixo + um caracter
            ld (cwLogoPrt1),hl          ; armazena a nova posição

            ld hl,(cwLogoPrt2)          ; recupera a posição atual
            sbc hl,de                   ; uma linha acima - um caracter
            ld (cwLogoPrt2),hl          ; armazena a nova posição

            ld hl,vdpCycle1
            ld b,(hl)                   ; pega intervalo de temporização
            sra b                       ; divido por dois
            call waitASec               ; espero um pouquinho

            ld a,(cwLogoLoop)           ; recupera o contador
            inc a                       ; incrementa o contador

            cp 10
            jr nz,cwLogoWait            ; se A<10, volta o laço

            xor a                       ; apaga o rastro do logotipo
            ld bc,288                   ; comprimento de 288 bytes
            ld hl,6144+2*32             ; posição inicial
            call FILVRM

            xor a                       ; zera A
            ld bc,288                   ; comprimeiro de 288 bytes
            ld hl,6144+13*32            ; posição inicial
            call FILVRM

            jp gplMensaWait             ; economizo meu código :)

cwLogoData:
            db 01,02,00,00,00,00,03     ; primeira linha do logo
            db 00,00,00,00,03,00,00

            db 04,05,06,07,08,09,10     ; segunda linha do logo
            db 11,12,13,14,15,16,17

            endp
            

;========== include "drawBird.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  desenha o pássaro e cuida da alternância de quadros             <<<-----------  atentar que a quantidade de sprites é determinada pelo seu número
;  *                                                                                  de cores e ALÉM DISSO pelos desenhos distintos da sua "animação"
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
drawBird:
            proc

            local drawBirdNext

            ld a,(birdY)                ; pego a posição da ave para colocar na tela

            dec a                       ; diminuo em 1, um bug notório da tabela de
                                        ; sprites do TMS99x8 armazeno a posição em B

            ld b,a

            ld a,(birdFrame)            ; pego o quadro correspondente a posição do pássaro      <<-- isso é só um byte que indica o nr. do quadro

            sla a
            sla a
            sla a
            sla a                       ; multiplico por 16 (4x SHIFT LEFT)

            ld c,a                      ; armazeno em C

            ld hl,birdBuffer            ; aponto para o frame buffer do pássaro             <<-- há 16 bytes aqui, trata 4 x 4 bytes de atributos de sprites

            ld a,0                      ; zero A

drawBirdNext:
            ld (hl),b                   ; atualizo a posição Y do pássaro

            inc hl
            inc hl                      ; avanço para a próxima posição

            ld (hl),c                   ; atualizo o sprite                                 <<--- número do sprite, conforme tabela de atributos 

            inc c
            inc c
            inc c                       ; não existe "add c,4"
            inc c                       ; é feio mas assim faço C=C+4

            inc hl
            inc hl                      ; avanço para a próxima posição

            inc a
            cp 4
            jr nz,drawBirdNext          ; se A!=4, ir para drawBird0

            ld a,(birdFrame)            ;             <<<<----- esse byte em "birdFrame" parece indicar o nr do sprite que vai plotar
            inc a                       ;                       (lembrando que o pássaro é multicor e ainda tem patterns distintos com
            and 3                       ;                        diferenças no desenho da asa, para dar impressão que voa quando alternamos)
            ld (birdFrame),a            ; atualizo o frame, a animação tem 4

            ld bc,16
            ld de,6912                  ;                                  <<<--- este é o endereço da tabela de atributos de sprites, então
            ld hl,birdBuffer                                               ;      o que está fazendo é "brincar" com isso, de modo a:
            call LDIRVM                 ; jogo estes 16 bytes na VRAM      ;      i) movimentar posição Y do sprite e ii) "mudar" sua forma

            ret                         ; sai da rotina

            endp
            

;========== include "drawPipe.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  Faz o desenho do cano no segundo frame buffer de acordo com a altura
;  *  definida em pipeSize.
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
drawPipe:
            proc

            local drawPipeLoop
            ; ...

            local drawSkyLineBlue
            local drawSkyLineCyan
            local drawSkyLine

            local tableSeven
            local pipeData
            local holeData

            xor a
            ld de,framebuff2            ; endereço do segundo framebuffer, vou
                                        ; desenhar um cano que vai do início ao
                                        ; final da tela

drawPipeLoop:
            ld hl,pipeData              ; endereço do padrão do cano
            ld bc,7                     ; comprimento da cópia
            ldir

            inc a
            cp 20
            jr nz,drawPipeLoop          ; enquanto A<20 vai para drawPipeLoop

            ld hl,framebuff2            ; aponta para o início do framebuffer

            ld a,130                    ; 130,131 : linhas ciano
                                        ; 132,133 : linhas azul

drawSkyLineCyan:
            call drawSkyLine
            inc a
            cp 132
            jr nz,drawSkyLineCyan       ; se A!=132, desenha o "céu"

            ld hl,framebuff2+18*7       ; as duas últimas linhas

drawSkyLineBlue:
            call drawSkyLine
            inc a
            cp 134
            jr nz,drawSkyLineBlue       ; se A!=133, ir para DRAWPIPE2

            ld a,(pipeSize)             ; pego o valor de pipeSize
            sla a                       ; multiplico A por 2
            ld c,a                      ; jogo na primeira metade de BC e
            ld b,0                      ; limpo a outra parte, vai que...

            ld hl,tableSeven            ; TABLE7
            add hl,bc                   ; TABLE7 = TABLE7 + BC

            ld a,(hl)
            ld c,a
            inc hl
            ld a,(hl)
            ld b,a
            ld h,b
            ld l,c                      ; ld HL,BC :-(

            ld de,framebuff2
            add hl,de
            ex de,hl                    ; framebuff2 acrescido do tamanho e em DE!

            ld hl,holeData              ; dados do padrão entre os canos

            ld bc,70                    ; tamanho do bloco 7x10
            ldir                        ; copio o bloco

            ret                         ; sai da rotina

drawSkyLine:
            ld (hl),a                   ; coloca uma das linhas do céu
            ld de,5
            add hl,de                   ; avança mais 5
            ld (hl),a
            inc hl
            ld (hl),a
            inc hl
            ret

;
;           Tabuada de 7, porque o Z80 só sabe somar! :-(
;
tableSeven:
            dw 14,21,28,35,42,49,56,63,70

;
;           Padrão dos canos (o miolo)
;
pipeData:
            db 128,140,141,142,143,128,128  ; row 0

;
;           O padrão do espaço entre canos (com as bordas)
;
holeData:
            db 134,144,145,146,147,135,128  ; row 0 (canos de cima)
            db 138,148,149,150,151,139,128  ; row 1
            db 128,128,128,128,128,128,128  ; row 2
            db 128,128,128,128,128,128,128  ; row 3
            db 128,128,128,128,128,128,128  ; row 4

            db 128,128,128,128,128,128,128  ; row 5
            db 128,128,128,128,128,128,128  ; row 6
            db 128,128,128,128,128,128,128  ; row 7
            db 138,152,153,154,155,139,128  ; row 8
            db 136,156,157,158,159,137,128  ; row 9 (canos de baixo)

            endp
            

;========== include "game.asm"
  ;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  o jogo propriamente dito está aqui (ela é quase críptica!)
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
game:
            proc
            local gameStart
            local gameDownBird
            local gameUpBird
            local checkCollision
            local gameLittleMulti
            local dirtyIncrement

            call soundBeep              ; emito um beep
            ld a, 1
            ld (flagWriteFB), a         ; TGW - incluido, para ativar a rotina writeFramebuffer;
            call writeFramebuffer       ; <<----  executa 1 vez inicial aqui e depois repetidamente, via interrupcao HTIMI

            ld hl,birdY                 ; pássaro na altura inicial
            ld (hl),88                  ; (centro da tela)

            xor a                       ; zero o acumulador

            ld (birdFrame),a            ; o frame atual do pássaro
            ld (birdUp),a               ; zero o decremento (a subida)
            ld (birdDown),a             ; zero o incremento (a descida)
            ld (ringRing),a             ; desligo o flag da campainha
            ld (pipeGap),a              ; zero o contador de espaço entre canos
            dec a

            ld (pipeFrame),a             ; "zero" (com -1) o frame dos canos

            call initMusicAndSound      ;TGW-incluido, inicializacao do tocador de musica ARKOS TRACKER2
                                        ; (tem que fazer antes de setar a interrupcao VDP/HTIMI abaixo, pois ela chama playMusicAndSound)

            ;
            ; dica do Ricardo Bittencourt de pendurar a rotina de atuali-
            ; zação da tela no hook HTIMI fazendo com que os dados com a
            ; nova tela sejam enviados quando o VDP não estiver ocupado
            ; desenhando a tela.      
            call enableMyIntVdpHtimi    ;TGW-alterada a forma de chamar a writeFramebuffer que atualiza a tela

gameStart:                                                         ; <<---- este é o inicio do LOOP PRINCIPAL do jogo, vai ficar repetindo tudo isso...
            ld hl,JIFFY
            ld (hl),0                   ; zero o temporizador

            call rotatePipe             ; rotaciono os canos
            call updateFramebuffer      ; atualizo o framebuffer     <<----  dados serao usados por writeFramebuffer que executa via interrupcao HTIMI
            call drawBird               ; desenho o pássaro
            call rotateDecoration       ; rotaciono a decoração

            xor a
            call GTTRIG                 ; lê a barra de espaços

            ld h,a                      ; salva o valor em H

            ld a,1
            call GTTRIG                 ; lê o botão 1 do joystick 0

            or h                        ; junta as duas leituras

            cp 255                      ; é 255?
            jr nz,gameUpBird            ; faz o pássaro subir!

gameDownBird:
            ld a,(birdDown)             ; o pássaro desce
            cp MAXD                     ; é igual ao incremento máximo?
            call nz,dirtyIncrement      ; se não for eu adiciono em 1
            ld (birdDown),a             ; armazeno o valor de descida
            xor a                       ; zero A
            ld (birdUp),a               ; armazeno em 0 o valor de subida
            jr checkCollision

gameUpBird:
            ld a,(birdUp)               ; o pássaro sobe
            cp MAXU                     ; é igual ao incremento máximo?
            call nz,dirtyIncrement      ; se não for eu adiciono em 1
            ld (birdUp),a               ; armazeno o valor de subida
            xor a                       ; zero A
            ld (birdDown),a             ; armazeno em 0 o valor de descida

checkCollision:
            ld de,birdDown              ; aponto DE para birdDown
            ld hl,birdUp                ; aponto HL para birdUp
            ld a,(birdY)                ; leio a posição atual do pássaro
            add a,(hl)                  ; adiciono o que o faz descer
            ex de,hl                    ; troco DE com HL
            sub (hl)                    ; subtraio o que o faz subir
            ld (birdY),a                ; guardo a nova posição do pássaro

            cp 4
            jp c,gameOver               ; bati no teto, fim do jogo

            cp 168
            jp nc,birdOnGround          ; bati no chão, fim do jogo

            ld a,(framebuff1+11)        ; verifico se em (11,0) há um caracter
            cp 143                      ; específico de cano (143)
            call z,incrementScore       ; Se for, é hora de pontuar.

            ld a,(ringRing)             ; verifica se é hora momento de tocar
            cp 0                        ; a campainha da pontuação
            call nz,playRing

            ld a,(birdY)                ; leio a altura atual do pássaro
            add a,4                     ; ajusto a altura

            and 0xf8                    ; retiro a parte desnecessária

            ld hl,4
            ld de,4

gameLittleMulti:
            add hl,de                   ; e multiplico por 4
            dec a
            cp 0
            jr nz,gameLittleMulti

            ld de,6144+9                ; 10 ou 9?
            add hl,de
            call RDVRM                  ; vejo na VRAM o que tem na
                                        ; frente do pássaro
            cp 139
            jp nc,gameOver

            ld de,32
            add hl,de
            call RDVRM                  ; vejo na posição abaixo.

            cp 139
            jp nc,gameOver
                                        ;      ***** IMPORTANTE O TRECHO ABAIXO ***** 
            ld a, 1
            ld (flagWriteFB), a         ; TGW - alterada a forma de ativar a rotina writeFramebuffer;
                                        ; Ela eh chamada pela rotina myIntVdpHtimi, na interrupcao VDP/HTIMI, para evitar flicker ao atualizar tela 
                                        ; (a writeFramebuffer executa 1 só vez a cada rodada deste loop e se auto-desativa ao executar...
                                        ;  isso porque nao queremos roda-la a cada 1/60 segundo, mas apenas na periodicidade 1/10s abaixo)

            ld hl,vdpCycle1  
            ld b,(hl)
            call waitASec               ; aguardo 1/10s

            jp gameStart                ; reinicia o LOOP   <<<---- fica neste LOOOP durante todo o jogo, fazendo "updateFramebuffer" logo acima e
                                                           ;        tratando movimentos, teclas, etc., e ativando a "writeFramebuffer" periodicamente 
                                                           ;        de modo a ser chamada dentro da interrupcao VDP/HTIMI, A FIM DE atualizar a VRAM.
                                                           ;        (ativação a cada vdpCycle1=1/10 seg. que é o aguardo ao final desse loop principal aí)

dirtyIncrement:
            inc a                       ; hora de incrementar :-)
            ret                         ; está fora do lugar, não remover!

            endp
          

;========== include "gameOver.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  fim do jogo
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
birdOnGround:
            ld a,162-3
            ld (birdY),a                ; resolvo o problema quando do  ;(???)

gameOver:
            proc
            local gameOverSound
            local fallingBird
            local gameOverMessage
            local gameOverWait
            local gameOverNewLine
            local gameOverWait

            ; TGW - incluido - interrompemos o player de musica/sons ate nova ativacao ao reiniciar o game
            call stopMusicAndSound
            ; e desabilitamos a myIntVdpHtimi - nao deve mais executar a partir de agora; reativada ao reiniciar o game
            call disableMyIntVdpHtimi    
            ; Feito isso, nao ha problema em utilizar o PSG da forma manual abaixo...

            ld a,7
            ld e,7
            call WRTPSG                 ; sound 7,7

            ld a,6
            ld e,13
            call WRTPSG                 ; sound 6,13

            ld e,15

gameOverSound:
            ld a,8
            call WRTPSG                 ; sound 8,15

            ld hl,JIFFY
            ld (hl),0                   ; zero o temporizador

            ld b,1
            call waitASec               ; espera um pouquinho

            dec e                       ; abaixo o volume
            ld a,e

            cp -1                       ; se não for <0 fico no laço
            jr nz,gameOverSound

fallingBird:
            ld hl,JIFFY
            ld (hl),0                   ; zero o temporizador

            ld b,4                      ; 4 é o incremento e o quadro

            ld hl,birdFrame
            ld (hl),b                   ; quadro do pássaro caindo

            ld hl,birdY
            ld a,(hl)                   ; recuupera a posição atual

            add a,b                     ; aumento em 4 pontos

            ld (hl),a                   ; armazeno a nova posição

            push af                     ; guardo o valor de A

            call drawBird               ; desenha o pássaro

            ld b,1                      ; 1/60 em NTSC ou 1/50 em PAL

            call waitASec               ; faço uma pausa

            pop af                      ; recupero o valor de A

            cp 162                      ; fica no laço até ser maior
            jr c,fallingBird            ; que 162

            ld a,129                    ; caracter quadriculado
            ld bc,32*6
            ld hl,6144+32*9             ; preenche uma barra quadricu-
            call FILVRM                 ; lada no centro da tela

            ld bc,22                    ; incremento no <ENTER>
            ld hl,6144+10*32+11         ; posição inicial da tela
            ld de,gameOverText          ; padrão do "GAME OVER"

gameOverMessage:
            ld a,(de)                   ; pego o primeiro caracter
            inc de                      ; já incremento o ponteiro

            cp 0                        ; é zero?
            jr z,gameOverNewLine        ; faço a quebra de linha

            cp 1                        ; é um?
            jr z,gameOverWait           ; saio da rotina

            call WRTVRM                 ; escrevo o byte na VRAM
            inc hl                      ; incremento a posição na tela

            jr gameOverMessage          ; volto o laço

gameOverWait:
            call gplMensaWait           ; faço uma pausa de 4s

            ld a,7
            ld e,40
            call WRTPSG                 ; sound 7,40 (desligo o ruído)

            ret                         ; saio da rotina

gameOverNewLine:
            add hl,bc
            jr gameOverMessage          ; avanço uma linha!

gameOverText:
            db 0x80,0xfe,0xfe,0xfc,0xfe,0x80,0x80,0x80,0x80,0x80,0 ; "____    "
            db 0x80,0xe7,0xe1,0xed,0xe5,0xfe,0xfc,0xfe,0xfe,0x80,0 ; "GAME____"
            db 0x80,0x80,0x80,0x80,0x80,0xef,0xf6,0xe5,0xf2,0x80,0 ; "    OVER"
            db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,1 ; "        "

            endp
            
            
;========== include "gplMensa.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  Mensagem da GPL
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
gplBuffer:  equ videoData

gplMensa:
            proc
            public gplMensaWait
            local gplMensaStart
            local gplMensaPrint
            local gplMensaNewLine

            ld de,gplMensaText-1        ; emdereço da mensagem, ou quase

gplMensaStart:
            ld hl,6144+23*32+3          ; posição inicial na tela; C=0, L=23

gplMensaPrint:
            inc de                      ; incremento DE
            ld a,(de)                   ; coloco em A o conteúdo de DE
            cp 1                        ; não é um?
            jr z,gplMensaWait           ; ainda tem trabalho, volto
            cp 0                        ; é zero?
            jr z,gplMensaNewLine        ; preciso pular uma linha
            call WRTVRM                 ; escrevo A na VRAM
            inc hl                      ; incremento HL
            jr gplMensaPrint            ; faço o loop

gplMensaNewLine:
            push de                     ; salva DE por enquanto

            ld bc,768-32                ; da linha 1 até a 23
            ld de,gplBuffer             ; uso todos os videoData
            ld hl,6144+32               ; A partir de (0,1)  <<--- copia o conteudo da VRAM a partir da 2a linha da tela
            call LDIRMV                 ; copio para RAM
            
            ;TGW - INCLUIDO bloco abaixo, um tempinho a mais entre cada rolada de linha:
            ld b,(vdpCycle1)            ; ~1/10 segundo
            ld hl,JIFFY
            ld (hl),0                   ; zero o temporizador
            call waitASec

            ld bc,768-32                ; mesma quantidade de bytes
            ld de,6144                  ; no começo da tela  <<--- e aqui joga a 2a linha como sendo a 1a e assim sucessivamente...
            ld hl,gplBuffer             ; armazenado em videoData
            call LDIRVM                 ; copio para a VRAM  <<--- o que resulta no efeito de scroll em que a tela rola 1 linha para cima.

            ld a,32                     ; caracter de espaço
            ld bc,32                    ; 32 caracteres (uma linha)
            ld hl,6144+23*32            ; em (0,23)
            call FILVRM                 ; preencho a VRAM

            pop de                      ; recupero DE

            jr gplMensaStart            ; volto para a posição inicial

gplMensaWait:
            ld a,(vdpCycle5)            ; A=x
            add a,a                     ; A=A+A
            add a,a                     ; A=2A+A
            add a,a                     ; A=3A+A (o máximo ~4s)
            ld b,a
            ld hl,JIFFY
            ld (hl),0                   ; zero o temporizador
            call waitASec
            ret                         ; sai da rotina

gplMensaText:
            db 0,0,0,0,0,0,0,0,0,0,0
            db "FLAPPY BIRD for MSX "
            db 48+__VERSION,".",64+__RELEASE,0
            db "(c)2014-2019 by Crunchworks",0
            db 0
            db "it and/or modify it under",0
            db "This program is free soft-",0
            db "ware; you can redistribute",0
            db "the terms of the GNU Gen-",0
            db "eral Public License as",0
            db "published by the Free",0
            db "Software Foundation; ei-",0
            db "ther version 2 of the Li-",0
            db "cense, or (at your option)",0
            db "any later version.",0
            db 0
            db "This program is distrib-",0
            db "uted in the hope that it",0
            db "will be useful, but WITH-",0
            db "OUT ANY WARRANTY; without",0
            db "even the implied warranty",0
            db "of MERCHANTABILITY or FIT-",0
            db "NESS FOR A PARTICULAR PUR-",0
            db "POSE. See the GNU General",0
            db "Public License for more",0
            db "details.",1

            endp
            
            
;========== include "initEnv.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  inicializa o ambiente
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
initEnv:
            proc
            local palAdjust
            local noPalAdjust
            local charPatterns
            local charAttributes
            local spritePatterns

            call turboMode          ; é um turbo R? pare de sofrer!

            call BEEP               ; bipo (e zero os registros do PSG)

            ld a,(JIFFY+1)          ; inicializo a semente do meu gerador
            ld (rndSeed),a          ; de números pseudo-aleatórios

            ld a,(0x002b)           ; leio a versão do MSX na ROM
            bit 7,a                 ; se o bit 7 for 1 é 50Hz senão é 60Hz
            jr z, noPalAdjust       ; sendo 0 eu sigo adiante

palAdjust:
            ld a,PAL                ; defino o novo valor para PAL
            ld (vdpCycle1),a        ; o valor para 1/10s em PAL
            ld a,PAL*10             ; 1/10*10=1, certo?
            ld (vdpCycle5),a        ; o valor é o de 1s em PAL

noPalAdjust:
            xor a                   ; A=0
            ld (CLIKSW),a           ; desligo o click das teclas e

            call ERAFNK             ; desligo as teclas de função

            ld a,15                 ; BRANCO
            ld (FORCLR),a           ; cor da frente em branco
            xor a                   ; TRANSPARENTE
            ld (BAKCLR),a           ; cor de fundo
            ld (BDRCLR),a           ; cor da borda
            call CHGCLR             ; agora mudo as cores da tela

            ld a,5
            ld (LINL32),a           ; largura da tela em 32 colunas  <<<-- este set é válido/usado se está em Screen 1, mas ocorre que aí 
                                                                    ;       abaixo entra em Screen 2... então, para que serve???
                                                                    ;       (R - sem efeito, comentado ou com a=5 aí e nada diferente ocorre no jogo)   
            call INIGRP             ; entra na SCREEN 2     <<<---    como se vê, o jogo roda na Screen 2, embora fale nos artigos que rodaria em
                                                                    ; Screen 1. Sobre terços da Screen 2, ver pg 94 livro "Aprofundando-se no MSX"...
            call DISSCR             ; desliga a tela
            
            ld a,(RG1SAV)           ; leio o valor do registro 1
            and 0xE3                ; também desligo o zoom dos sprites
            or 2                    ; e ajusto os sprites para 16x16
            ld b,a                  ; B=A
            call WRTVDP             ; altero o valor do registro 1
            
            ld bc,2048              ; 2048 bytes a copiar
            ld de,0                 ; tabela de padrões na VRAM             <<<--- esta tabela inicia em 0, tanto para Screen 1 como para Screen 2 
            ld hl,charPatterns     ; localização na RAM            ;               (mas,  no caso da Screen 2 ela possui 3 subtabelas/terços)
            call threeLdirvm        ; copio na VRAM a tabela de padrões     <<<--- copia 3 vezes, ou seja, os padrões parecem destinados à Screen 2...

            ld bc,2048              ; 2048 bytes a copiar
            ld de,8192              ; tabela de atributos/cores na VRAM     <<<--- este é o início  da tabela de atributos/cores, para Screen 1 e Screen 2 
            ld hl,charAttributes    ; localização na RAM
            call threeLdirvm        ; copio na  VRAM a tabela de atributos  <<<--- copia 3 vezes, ou seja, os padrões parecem destinados à Screen 2...

            ld bc,768               ; 768 bytes a copiar
            ld de,14336             ; tabela de sprites na VRAM
            ld hl,spritePatterns    ; localização na RAM
            call LDIRVM             ; copio a tabela de sprites

            ret                     ; sai da rotina

charPatterns:
            include "gfx/patterns.asm"

charAttributes:
            include "gfx/attributes.asm"

spritePatterns:
            include "gfx/sprites.asm"

            endp
            
            
;========== include "initVar.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  inicializa as variáveis do programa
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
flagWriteFB:  equ ramArea-2             ;TGW incluido este flag
flagMusic:  equ ramArea-1               ;TGW incluido este flag
birdY:      equ ramArea
birdFrame:  equ ramArea+1
birdUp:     equ ramArea+2
birdDown:   equ ramArea+3
pipeFrame:  equ ramArea+4
pipeSize:   equ ramArea+5
pipeGap:    equ ramArea+6
ringRing:   equ ramArea+7
score:      equ ramArea+8               ; 16-bit
hiScore:    equ ramArea+10              ; 16-bit
vdpCycle1:  equ ramArea+12
vdpCycle5:  equ ramArea+13
rndSeed:    equ ramArea+14
birdBuffer: equ ramArea+15              ; coordenadas do pássaro
framebuff3: equ birdBuffer+32           ; o 3º framebuffer (64 bytes)
framebuff2: equ framebuff3+64           ; o 2º framebuffer (140 bytes)
framebuff1: equ framebuff2+140          ; o 1º framebuffer (640 bytes)
videoData:  equ framebuff3

initVar:
            proc

            local birdDraw

            xor a                       ; zero A

            ld (birdY),a                ; altura do pássaro
            ld (birdFrame),a                ; frame atual do pássaro
            ld (birdUp),a               ; decremento (a subida)
            ld (birdDown),a             ; incremento (a descida)

            ld (pipeFrame),a             ; frame atual dos canos
            ld (pipeSize),a             ; altura dos canos na tela
            ld (pipeGap),a              ; espaço entre os canos na tela

            ld (ringRing),a             ; flag do som de pontuação

            ld hl,0                     ; recorde do dia (sempre zero)
            ld (hiScore),hl

                                        ; temporização para NTSC e PAL-M
            ld a,NTSC
            ld (vdpCycle1),a            ; a princípio tem valor 6 -- 1/10s

            ld a,NTSC*10
            ld (vdpCycle5),a            ; a princípio tem valor 60 - 1s

            ld bc,32
            ld hl,birdDraw
            ld de,birdBuffer            ; copia as coordenadas do pás-
            ldir                        ; saro para a RAM

            ret                         ; sai da rotina

birdDraw:
            db 0,88,0,1                 ; contorno (em preto)
            db 0,88,0,8                 ; bico (em vermelho)
            db 0,88,0,10                ; corpo (em amarelo)
            db 0,88,0,15                ; olhos e asas (em branco)

            endp
            
            
;========== include "playRing.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  rotina que cuida do som da pontuação
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
playRing:
            proc
            ; cp VOLUME                   ; se não estou em VOLUME
            ; jr nz,reduceVolume          ; vou para a segunda parte

            ; ld a,0
            ; ld e,95
            ; call WRTPSG                 ; sound 0,95

            ; ld a,1
            ; ld e,0
            ; call WRTPSG                 ; sound 1,0

            ; ld a,8
            ; ld e,VOLUME
            ; call WRTPSG                 ; sound 8,10

            ; ld a,VOLUME-1
            ; ld (ringRing),a             ; atualiza para a 2ª parte

            ; ret                         ; sai da rotina

; reduceVolume:
            ; ld b,a                      ; salva o volume

            ; ld a,8
            ; ld e,b
            ; call WRTPSG                 ; sound 8,B

            ; ld a,0
            ; ld e,75
            ; call WRTPSG                 ; sound 0,75

            ; ld a,b                      ; pego o volume salvo

            ; dec a                       ; diminuo em um

            ; ld (ringRing),a             ; guardo o novo estado

            ; cp 0                        ; cheguei em 0?
            ; ret nz                      ; voltarei aqui no próximo laço

            ; ld a,8
            ; ld e,0
            ; call WRTPSG                 ; sound 8,0 (desligo o som)

            
            ; TGW - trecho acima comentado e trecho abaixo incluido
            ; toca um sound effect via Arkos player SEM interromper a musica
	    ; (para alterar sound, editar no stub: stub_gera_include_arkos_para_pasmo_music*.asm) 
            ld a,1   ;sound effect number hardcoded (ver no *.asm exportado pelo Arkos)
            ld c,1  ;Channel (0-2)  -- usaremos 1, pois nossa musica esta nos channels 0 and 2
            ld b,0  ;Full volume inicial
            call PLY_AKG_PLAYSOUNDEFFECT            

            ld a,0
            ld (ringRing),a             ; desliga o toque de campainha ;necessario manter como flag para executar a playRing

            ret                         ; sai da rotina
            endp
            
            
;========== include "prepareScreen.asm"

;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  prepara a tela e inicializa o framebuffer principal
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;

prepareScreen:
            proc

            local prepareScenario
            local prepareSky
            local drawMultiples
            local corners
            local hiScoreText

            ld a,15                 ; BRANCO
            ld (FORCLR),a           ; cor da frente em branco
            ld a,5                  ; AZUL
            ld (BAKCLR),a           ; cor de fundo
            ld (BDRCLR),a           ; cor da borda
            call CHGCLR             ; agora mudo as cores da tela

            ld bc,16                ; 16 bytes a copiar
            ld de,6912+16           ; do sprite 4 em diante
            ld hl,corners           ; com posições já estão definidas
            call LDIRVM             ; arredondo os cantos da tela

            ld a,160                ; o caracter das nuvens
            ld bc,32                ; a quantidade desejada
            ld hl,6144              ; a primeira linha da tela
            call FILVRM             ; desenho a tarja branca

            ld bc,4                 ; "score->"
            ld de,6144+3            ; posição na tela
            ld hl,hiScoreText+1     ; padrão da string
            call LDIRVM             ; copio na VRAM

            ld bc,5                 ; "hiScore->"
            ld de,6144+19           ; posição na tela
            ld hl,hiScoreText       ; padrão da string
            call LDIRVM             ; copio na VRAM

            ld hl,(score)
            call printScore         ; aproveito e escrevo a pontuação

            ld a,165                ; o caracter do solo
            ld bc,32                ; a quantidade desejada
            ld hl,6144+23*32        ; a última linha da tela
            call FILVRM             ; desenho o solo

            ld a,0                  ; começo a desenhar a tela
            ld de,6144+22*32        ; o chão começa aqui
            ld hl,6144+1*32         ; e as nuvens aqui

prepareScenario:
            ld b,a                  ; copio A para B
            ld a,161                ; o primeiro padrão da nuvem
            call WRTVRM             ; escrevo na VRAM
            inc hl                  ; incremento HL
            inc a                   ; incremento A, para o outro caracter
            call WRTVRM             ; escrevo novamente na VRAM

            ex de,hl                ; troco DE com HL

            ld a,163                ; primeiro padrão do solo
            call WRTVRM             ; escrevo na VRAM
            inc hl                  ; incremento HL
            inc a                   ; incremento A, para o outro caracter
            call WRTVRM             ; escrevo novamente na VRAM

            ex de,hl                ; troco DE com HL

            inc hl                  ; incremento HL
            inc de                  ; incremendo DE

            ld a,b                  ; recupero o valor salvo de A
            inc a                   ; incremento A
            cp 16
            jr nz,prepareScenario   ; se A<>16, vá para INITSCR0

prepareSky:
            ld a,130                ; primeiro caracter das linhas ciano
            ld hl,6144+2*32         ; posição da tela
            call drawMultiples      ; chamo a rotina que fará o resto

            ld a,132                ; primeiro caracter das linhas azul
            ld hl,6144+20*32        ; posição da tela
            call drawMultiples      ; chamo a rotina que fará o resto

            ld a,128                ; fundo azul (CHR 128)
            ld bc,16*32             ; o que restou da tela para preencher
            ld hl,6144+4*32         ; tabela de nomes
            call FILVRM             ; preenche a tela

                                    ; Alimento framebuff1

            ld bc,32*20             ; tamanho da cópia (640 bytes)
            ld de,framebuff1        ; endereço de framebuff1
            ld hl,6144+2*32         ; posição da tela
            call LDIRMV             ; alimento framebuff1 já inicializado

                                    ; Alimento framebuff2

            ld bc,14                ; para as duas primeiras linhas de
            ld de,framebuff2        ; framebuff2
            ld hl,6144+3*32-7
            call LDIRMV

            ld bc,16*7              ; para as linhas 3 até 18 de
            ld de,framebuff2+14     ; framebuff2
            ld hl,6144+4*32
            call LDIRMV

            ld bc,14                ; para as duas últimas linhas de
            ld de,framebuff2+140-14 ; framebuff2
            ld hl,6144+21*32-7
            call LDIRMV

            ret                     ; sai da rotina

drawMultiples:
            ld bc,32                ; carrego BC com o comprimento
            push af                 ; salvo AF, o FILVRM afeta este cara
            call FILVRM             ; chamo FILVRM
            pop af                  ; recupero o AF salvo
            inc a                   ; incremento A
            ld bc,32                ; recarrego BC
            add hl,bc               ; adiciono HL com BC (próxima linha)
            call FILVRM             ; chamo FILVRM novamente
            ret

hiScoreText:
            db 190                  ; "Hi"
            db 187, 188, 189        ; "score"
            db 191                  ; "->"

corners:
            db 255,0,80,5               ; posição (0,0)
            db 255,240,84,5             ; posição (30,0)
            db 175,0,88,5               ; posição (0,22)
            db 175,240,92,5             ; posição (30,22)

            endp
            
            
;========== include "printScore.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  imprime a pontuação, adaptado da rotina de escrita de números de 16-bit
;  *  orginal de Milos "baze" Bazelides <baze_at_baze_au_com> e disponível em:
;  *  http://baze.au.com/misc/z80bits.html
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
clearScore:
            proc

            ld hl,0                     ; zera o valor da pontuação
            ld (score),hl               ; armazeno o novo valor
            
            ret                         ; sai da rotina
            endp 

incrementScore:
            proc
            
            ld hl,(score)               ; recupero o valor atual da pontuação
        rept 5
            inc hl                      ; incremento a pontuação em +5
        endm
            ld (score),hl               ; armazeno a pontuação
            
            call printScore             ; atualiza na tela a pontuação
            
            ret                         ; sai da rotina
            endp 

printScore:
            proc
            local printHiScore
            
            ld de,framebuff3            ; área temporária para escrever
            
            call printNumber            ; escrevo os números lá

            ld bc,5                     ; até 5 dígitos
            ld de,6144+7                ; posição na tela
            ld hl,framebuff3
            call LDIRVM                 ; atualizo a pontuação na tela

            ld hl,(hiScore)             ; leio o recorde
            ld de,(score)               ; leio novamenre a pontuação
            sbc hl,de                   ; subtraio um com o outro
            jr nc,printHiScore           ; o recorde não é maior

            ld (hiScore),de             ; armazeno o novo recorde
printHiScore:
            ld hl,(hiScore)
            ld de,framebuff3               ; área temporária para escrever
            call printNumber

            ld bc,5                     ; até 5 dígitos
            ld de,6144+24               ; posição na tela
            ld hl,framebuff3
            call LDIRVM                 ; atualizo o recorde na tela

            ld a,12
            ld (ringRing),a             ; habilita o som da pontuação

            ret                         ; sai da rotina
            endp

beforeZero: equ 176

printNumber:
            proc

            local formatDigit
            local formatDigitLoop

            ld bc,-10000
            call formatDigit
            ld bc,-1000
            call formatDigit
            ld bc,-100
            call formatDigit
            ld c,-10
            call formatDigit
            ld c,b
formatDigit:
            ld a,beforeZero             ; o caracter anterior ao '0'

formatDigitLoop:
            inc a
            add hl,bc
            jr c,formatDigitLoop
            sbc hl,bc
            ld (de),a
            inc de
            ret                         ; sai da rotina

            endp
            
            
;========== include "random.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  gerador de números pseudo-aleatórios levemente adaptada do código ori-
;  *  ginal de Milos "baze" Bazelides <baze_at_baze_au_com> e disponível em:
;  *  http://baze.au.com/misc/z80bits.html
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
random:
            proc
            ld a,(birdY)
            ld b,a
            ld a,(rndSeed)
            add a,a
            add a,a
            add a,b
            inc a
            ld (rndSeed),a              ; guardo o valor
            ret                         ; sai da rotina
            endp
            
            
;========== include "rotateDecoration.asm"
 ;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  faz a rotação de 2 em 2 pixels no padrão do solo.
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
rotateDecoration:
            proc

            local rotateClouds

            ld bc,16                    ; os caracteres das NUVENS
            ld de,framebuff3
            ld hl,161*8                 ; caracteres 161 e 162
            call LDIRMV                 ; copio o padrão das nuvens da VRAM

            ld bc,8                     ; um caracter
            ld de,framebuff3+24         ; cópia de 161 ao lado de 162
            ld hl,framebuff3            ; aqui é o 161
            ldir

            ld bc,8                     ; um caracter
            ld de,framebuff3+16         ; cópia de 162 ao lado de 161
            ldir                        ; não defino HL, ele há está em 162

            ld de,framebuff3            ; DE fica no caracter
            ld hl,framebuff3+16         ; HL fica no espelho
            ld a,0                      ; meu contador

rotateClouds:
            push af                     ; salvo o contador
            ld a,(de)                   ; copio o conteúdo em DE
            sla a
            sla a                       ; rotaciono 2x para esquerda

            ld b,(hl)                   ; copio o conteúdo de HL
            srl b
            srl b
            srl b
            srl b
            srl b
            srl b                       ; rotaciono 6x para a direita
            or b                        ; A or B (junto os dois)
            ld (de),a                   ; armazeno na RAM

            inc hl                      ; incremento HL

            inc de                      ; incremento DE

            pop af                      ; recupero o contador

            inc a                       ; incremento
            cp 16                       ; é 16?
            jr nz,rotateClouds          ; se não volto para rotateDecoration0

            ld bc,16                    ; os caracteres do CHÃO
            ld de,framebuff3+16
            ld hl,4096+163*8            ; caracteres 163 e 164 (no 3º terço)
            call LDIRMV                 ; copio o padrão de solo da VRAM

            ld a,(framebuff3+16)
            ld (framebuff3+32),a        ; pego o primeiro byte, jogo no final

            ld a,(framebuff3+17)
            ld (framebuff3+33),a        ; pego o segundo byte, jogo no final+1

            ld bc,16
            ld de,framebuff3+16
            ld hl,framebuff3+18
            ldir                        ; ajusto para ficar contíguo

            ld bc,16
            ld de,161*8
            ld hl,framebuff3
            call LDIRVM                 ; devolvo o padrão deslocado à VRAM

            ld bc,16
            ld de,4096+163*8
            ld hl,framebuff3+16
            call LDIRVM                 ; devolvo o padrão deslocado à VRAM
            
            ret                         ; sai da rotina

            endp
           
            
;========== include "rotatePipe.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  faz a atualização dos canos na tela
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
rotatePipe:
            proc
            local drawNewPipe
            local drawAPipe
            local drawAGap

            ld a,(pipeGap)
            cp GAP
            jr nz,drawAPipe              ; pipeGap<>GAP, vá pra rotatePipe1

            call random                 ; sorteio a altura dos canos
            and 7                       ; só preciso de valores entr 0 e 6

            cp 7                        ; A é igual a 7?
            jr nz,drawNewPipe           ; é diferente sigo para rotatePipe0
            dec a                       ; senão, subtraio de 1

drawNewPipe:
            ld (pipeSize),a             ; armazeno a altura dos canos
            call drawPipe               ; desenho os canos em framebuffer2

            xor a                       ; zero A
            ld (pipeGap),a              ; armazeno em pipeGap
            dec a                       ; A agora será -1
            ld (pipeFrame),a             ; armazeno em pipeFrameE

drawAPipe:
            ld a,(pipeGap)              ; carrego o valor de pipeGap
            cp 0
            jr nz,drawAGap              ; se 0 estou no espaço entre canos

            ld a,(pipeFrame)             ; carrego o quadro do cano
            inc a                       ; incremento
            ld (pipeFrame),a             ; atualizo para fazer o próximo

drawAGap:
            ld a,(pipeFrame)             ; verifico o quadro do cano
            cp 6                        ; é 6?
            ret nz

            ld a,(pipeGap)
            inc a
            ld (pipeGap),a

            ret                         ; sai da rotina   <<<---- ao final, o que essa proc fez foi deixar em pipeFrame o nr do proximo frame do pipe
                                                                 ;(parece que serah usado lah em "updateFramebuffer")
            endp
            
            
;========== include "soundBeep.asm"
  ;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  beep personalizado usado para indicar as opções selecionadas no jogo
;  *  -- um sol, na quinta oitava -- play "o5g"
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
soundBeep:
            proc
            xor a
            ld hl,JIFFY
            ld (hl),a                   ; zera o timer do VDP

            ld e,0x8f                   ; valor
            ld a,0                      ; registrador 0
            call WRTPSG                 ; sound 0,143

            ld e,0                      ; valor
            ld a,1                      ; registrador 1
            call WRTPSG                 ; sound 1,0

            ld a,15                     ; valor do volume
soundVolume:
            ld e,a
            ld a,8                      ; registrador 8
            call WRTPSG                 ; sound 8,E

            ld a,e
            sbc a,(hl)                  ; o menos significativa de JIFFY

            jr nc,soundVolume           ; sim, uso o temporizador como
                                        ; ajuste do volume do canal

            ld a,8
            ld e,0
            call WRTPSG                 ; sound 8,0

            ret                         ; saio da rotina
            endp
          
            
;========== include "startScreen.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  a tela de abertura do jogo
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
startScreen:
            proc
            local drawScreen
            local waitPressFire
            local changeToNextLine
            local screenData

            call birdOff                ; removo o pássaro da tela

            ld bc,160                   ; a imagem com o logotipo do jogo
            ld de,6144+4*32             ; na 4ª linha da tela
            ld hl,screenData
            call LDIRVM                 ; copio para a VRAM

            ld a,166                    ; insiro o "for MSX"
            ld hl,6144+9*32+18          ; posição na VRAM

drawScreen:
            call WRTVRM

            inc a                       ; incremento A
            inc hl                      ; incremento a posição
            cp 173                      ; é 173?
            call z,changeToNextLine     ; mudo de linha
            cp 177                      ; é 177?
            jr nz,drawScreen            ; se não for volto ao laço

            ld bc,64                    ; o texto "PRESS SPACE TO START"
            ld de,6144+11*32            ; na 11ª linha da tela
            ld hl,screenData+160
            call LDIRVM                 ; copio para a VRAM

            ld bc,128                   ; o texto "ORIGINAL ... WORKS"
            ld de,6144+15*32            ; na 15ª linha da tela
            ld hl,screenData+160+64
            call LDIRVM                 ; copio para a VRAM

            call KILBUF                 ; limpo o buffer do teclado

waitPressFire:
            ld hl,JIFFY
            ld (hl),0                   ; zero o temporizador

            ld hl,vdpCycle1
            ld b,(hl)
            call waitASec               ; aguardo 1/10s

            xor a
            call GTTRIG                 ; lê a barra de espaços

            ld h,a                      ; salva o valor em H

            ld a,1
            call GTTRIG                 ; lê o botão 1 do joystick 0

            or h                        ; junta as duas leituras

            cp 255                      ; ainda é 255?
            ret z                       ; sai da laço

            jr waitPressFire

changeToNextLine:
            ld hl,6144+10*32+21
            ret

screenData:
            include "gfx/screen.asm"

            endp


            
            
;========== include "threeLdirvm.asm"
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  Copia os dados da RAM para os três terços da VRAM           <<--- Screen 2 é que tem 3 subtabelas de formação/padrões (3 terços)
;  *                                                                    Questão: Porque fazer três LDIRVM nesta procedure, não podia ser 1 só?
;  *                                                                    R - Não dá. O deslocamento lateral  ocorre de 1 das 32 colunas (de blocos 8x8)
;  *                                                                    para outra dessas colunas. E, olhando verticalmente, ve-se que cada coluna tem 
;  *                                                                    parte de si plotada em cada 1 dos terços da tabela de padrões da Screen 2.
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
threeLdirvm:
            proc
            local execLdirvm

            call execLdirvm             ; processa os primeiros 0x0800 bytes aqui <<--- que é 2048 

            ld a,0x08
            add a,d                     ; o mesmo que DE=DE+0x0800              <<--- que é 2048
            ld d,a
            call execLdirvm

            ld a,0x08
            add a,d                     ; faço outro DE=DE+0x0800               <<--- que é 2048
            ld d,a
execLdirvm:
            push bc
            push de
            push hl
            call LDIRVM
            pop hl
            pop de
            pop bc

            ret                         ; sai da rotina
            endp
            
            
;========== include "turboMode.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  habilita o modo R800 ROM caso esteja rodando em um turbo R, rotina de
;  *  Timo Nyyrikki -- http://www.msx.org/wiki/R800_Programming#BIOS_routines
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
turboMode:
            proc
            local CHGCPU

CHGCPU:     equ 0x0180

            ld a,(0x002d)               ; byte de ID do MSX
            cp 3                        ; é turbo R?
            ret nz                      ; não é um turbo R, vá embora
            ld a,(CHGCPU)               ; rotina CHGCPU (BIOS do turbo R)
            cp 0xc3
            ld a,0x81                   ; modo R800 ROM
            call z,CHGCPU
            ret                         ; sai da rotina

            endp
            
            
;========== include "updateFramebuffer.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  rotaciona tela do primeiro framebuffer, completa com um trecho do segun-
;  *  do framebuffer
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
updateFramebuffer:
            proc
            local scrollBufferToLeft
            local copyPipePattern

            xor a                       ; número de linhas a rotacionar
            ld de,framebuff1            ; primeira posição do framebuffer
            ld hl,framebuff1+1          ; o sujeito ao lado

scrollBufferToLeft:
            ld bc,31                    ; tamanho de colunas da tela menos 1
            ldir                        ; copia o bloco de memória
            inc de                      ; avanço para o começo da próxima linha
            inc hl                      ; e também para o próximo vizinho
            inc a                       ; incremento o contador
            cp 20
            jr nz,scrollBufferToLeft    ; se A!=20, vá para scrollBufferToLeft

            ld hl,pipeFrame
            ld c,(hl)                   ; carrego o frame na primeira parte d BC
            ld b,0                      ; zero a segunda parte de BC

            ld hl,framebuff2            ; aponto para o framebuffer 2 (origem)
            add hl,bc                   ; acrescento o frame que preciso
            ex de,hl                    ; coloco a origem atualizada em DE

            ld hl,framebuff1+31         ; aponto HL para framebuffer 1 (destino)
            ld a,0

copyPipePattern:
            push af                     ; salvo A por enquanto

            ld a,(de)                   ; pego A na origem
            ld (hl),a                   ; gravo A em destino

            ld bc,7
            ex de,hl                    ; troco DE com HL
            add hl,bc                   ; somo HL (que é DE) com BC
            ex de,hl                    ; troco DE com HL (huhu) e DE=DE+7

            ld bc,32
            add hl,bc                   ; HL=HL+32

            pop af                      ; recupero o A original (o contador do laço)

            inc a
            cp 20
            jr nz,copyPipePattern       ; se A!=20, vá para copyPipePattern

            ret                         ; sai da rotina
            endp
            
            
;========== include "waitASec.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  gera uma espera de 'B' ciclos do VDP (não se esqueça de zerar JIFFY)
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;
waitASec:
            proc
            ld a,(JIFFY)
            cp b
            ret z                         ; sai da rotina
            jr waitASec
            endp
            
            
;========== include "writeFramebuffer.asm"
;
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;  *
;  *  atualiza o framebuffer - rotina que penduro no hook HTIMI
;  *
;  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;==TGW ALTERADO ==
; esta rotina é chamada por myIntVdpHtimi, MAS soh executa 1 vez na periodicidade definida no loop do rótulo "game"
writeFramebuffer:
            proc
            nop                         ; TGW - alterada a forma de ativar/desativar a rotina writeFramebuffer
            ld a, (flagWriteFB)         ; (antes fazia auto-modificacao com 0xC9=RET na rotina HTIMI na RAM, mas agora NAO queremos desabilitar 
            cp 0                        ; a HTIMI totalmente e NAO podemos fazer auto-modificacao aqui, pois este codigo PODE estar em ROM/cartridge)
            ret z                       ; Portanto, usamos um flag para indicar: somente executa se flagWriteFB <> 0
            ld bc,640                   ; quantidade de bytes para copiar   <<<-- esta eh a rotina propriamente dita, o que ela faz eh ficar 
            ld de,6144+64               ; endereço iniciual da VRAM         <<<-- copiando os bytes a partir de "framebuff1" para a VRAM
            ld hl,framebuff1            ; endereço do framebuffer           <<<-- a intervalos regulares, definidos lá no loop do rótulo "game"
            call LDIRVM
desativa:   
            ld a, 0                     ; auto-desabilita proximas execucoes desta rotina, colocando 0 no flag... 
            ld (flagWriteFB), a         
            ret                         ; isso eh porque ela DEVE rodar dentro da interrupcao VDP/HTIMI,  mas NAO a CADA 1 interrupcao...
            endp                        ; No loop principal do game, volta-se a flagWriteFB para 1, habilitando-a na periodicidade adequada.               

                                                                           

;==TGW INCLUIDO==
initMusicAndSound:
            proc                       
            ;Initializes the music:
            ld hl,MUSICSPACE           ; label definido la no gera_include_para_pasmo...asm
            xor a                      ; Subsong 0.
            call PLY_AKG_INIT          ; tudo em CAPS (maiúsculas) aqui, pois veio do conversor Disark.exe   
            ;Initializes the sound effects:
            ld hl,SOUNDEFFECTSSPACE
            call PLY_AKG_INITSOUNDEFFECTS
            ld a, 1                    ; nossa flag 
            ld (flagMusic), a          ; aviso que ta liberado para tocar musica a partir de agora
            ret
            endp                    

            
;==TGW INCLUIDO==
playMusicAndSound:                  ; de acordo com docs do ARKOS, deve executar um play  a CADA 1 interrupcao VDP/HTIMI
            proc
            ld a, (flagMusic)       ; acabamos nao usando esse flag...serviria para dar uma pausa em music/sounds
            cp 1
            ret nz                  ; se o flagMusic for <> 1 entao retorna; NAO toca musica 
            DI                      ; parece necessario antes do PLY_AKG_PLAY, conforme docs do ARKOS
            call PLY_AKG_PLAY       ; toca um segmento de musica e de eventuais sounds, via player/tocador ARKOS TRAKER 2
            EI
            ret
            endp

;==TGW INCLUIDO==
stopMusicAndSound:
            proc
            ld a,1   ;Channel (0-2) ; deve ser feito para cada channel utilizado com sound effects
            call PLY_AKG_STOPSOUNDEFFECTFROMCHANNEL         
            call PLY_AKG_STOP       ; uma vez, finaliza musica em todos os channels     
            ld a, 0                 ; nossa flag
            ld (flagMusic), a       ; aviso que NAO deve mais tocar musica; isso ocorre se chegou em "gameOver"
            ret
            endp                    


enableMyIntVdpHtimi:
            proc
            DI                          ; desabilita interrupcoes, evitando interrupt enquanto ainda esta com endereco 'lixo'
            ld a,0xc9                   ; seta RET ateh terminarmos de colocar o enderecamento nos bytes da rotina HTIMI...
            ld (HTIMI),a                ; (obs: podemos gravar no inicio da HTIMI porque ela reside na RAM) 
            ld de,myIntVdpHtimi         ; vai chamar nossa rotina que atualiza a tela periodicamente e toca musica/sons
            ld a,e                      ; 'ss' de myIntVdpHtimi  <<--- ss = parte do endereco
            ld (HTIMI+1),a
            ld a,d                      ; 'tt' de myIntVdpHtimi  <<--- tt = parte do endereco
            ld (HTIMI+2),a
            ld a,0xc9                   ; RET
            ld (HTIMI+3),a
            ld a,0xcD                   ; CALL... pois ja terminamos de colocar o endereco.
            ld (HTIMI),a
            EI
            nop
            ret
            endp

disableMyIntVdpHtimi:
            proc
            DI
            ld a,0xc9                   ; desabilita pondo RET  na 1a instrucao, passa a retornar sem fazer nada 
            ld (HTIMI),a
            EI
            nop
            ret
            endp


;==TGW INCLUIDO== 
myIntVdpHtimi:                      ;nossa rotina que vai executar na interrupcao VDP/HTIMI a cada 1/60 (ou 1/50) segundo
            proc
            call writeFramebuffer   ; rotina chamada, tem que executar na int VDP/HTIMI, mas com periodicidade controlada, ver loop principal
            call playMusicAndSound  ; rotina chamada, tem que executar a CADA 1 interrupcao VDP/HTIMI, conforme docs do ARKOS TRACKER2
            ret
            endp 
 

;==TGW INCLUIDO==
include "include_arkos_para_pasmo.asm"  ;; <<---- este arquivo veio da conversao para o pasmo, via Disark.exe (ver tutorial 05 do ARKOS TRACKER2)
                                   

           