@echo off

IF "%1" EQU "" GOTO ERRO1 
IF "%2" EQU "" GOTO ERRO1 

SET OUTTYPE=%1
SET IDMUSIC=%2
SET ALPHAS=("A=a" "B=b" "C=c" "D=d" "E=e" "F=f" "G=g" "H=h" "I=i" "J=j" "K=k" "L=l" "M=m" "N=n" "O=o" "P=p" "Q=q" "R=r" "S=s" "T=t" "U=u" "V=v" "W=w" "X=x" "Y=y" "Z=z")
for %%a in %ALPHAS% do (call set OUTTYPE=%%OUTTYPE:%%~a%%)        
for %%a in %ALPHAS% do (call set IDMUSIC=%%IDMUSIC:%%~a%%)    

echo OUTTYPE = %OUTTYPE%
echo IDMUSIC = %IDMUSIC%
SET STUB=stub_gera_include_arkos_para_pasmo_%IDMUSIC%

echo.========================================================================
echo.Obs: 
echo.* ler anotacoes ao fim do arquivo %STUB%.asm 
echo.* e ver o tutorial em: 
echo   https://www.julien-nevo.com/arkostracker/index.php/using-a-song-in-production-using-any-assembler/
echo.========================================================================

REM ---------- GERA INCLUDE DO ARKOS CONVERTIDO PARA SINTAXE DO ASSEMBLER PASMO
REM            (antes, deve-se editar o gera_include_para_pasmo.asm conforme a necessidade)
tools\rasm_win64.exe %STUB%.asm -o temp_disark -s -sl -sq
REM            (sao gerados os arquivos temp_disark.bin/sym)

REM ---------- CONTINUA PASSO ANTERIOR
del include_arkos_para_pasmo.asm > nul 2>nul
tools\Disark.exe temp_disark.bin include_arkos_para_pasmo.asm --symbolFile temp_disark.sym --sourceProfile pasmo
REM            (sera gerado o arquivo include_arkos_para_pasmo.asm)
del temp_disark.sym > nul 2>nul
del temp_disark.bin > nul 2>nul

IF "%OUTTYPE%" EQU "rom" GOTO BUILDROM
REM else, let's build bin/dsk
:BUILDBIN
echo Building a bin/dsk...
REM ---------- COMPILA PARA UM *.BIN USANDO O PASMO
del flappy.bin > nul 2>nul
tools\pasmo -v --err __binary_with_music.asm flappy.bin
REM            (o arquivo include_arkos_para_pasmo.asm encontra-se indiretamente incluido no *.asm acima)
if %errorlevel% NEQ 0 goto ERRO1
REM ---------- GERA UM DISCO COM UM AUTOEXECUTAVEL
del flappy.dsk > nul 2>nul
tools\DskTool.exe A flappy.dsk AUTOEXEC.BAS
tools\DskTool.exe A flappy.dsk flappy.bin
REM ---------- RODA/TESTA NO EMULADOR OPENMSX
REM (para isso precisa ter instalado o OpenMSX na estacao...
REM  ...e ter uma 'systemrom'/machine que suporte drive de disco...
REM  ...opcionalmente, pode usar o WebMSX para testar o dsk gerado)
D:\OPENMSX\openmsx.exe -machine Philips_NMS_8255 -diska flappy.dsk
goto FIM


:BUILDROM
echo Building a cartridge/rom...
REM ---------- COMPILA PARA UM *.ROM USANDO O PASMO
del flappy.rom > nul 2>nul
tools\pasmo -v --err __cartridge_with_music.asm flappy.rom
REM            (o arquivo include_arkos_para_pasmo.asm encontra-se indiretamente incluido no *.asm acima)
if %errorlevel% NEQ 0 goto ERRO1
REM ---------- RODA/TESTA NO EMULADOR OPENMSX
REM (para isso precisa ter instalado o OpenMSX na estacao...
REM  ...opcionalmente, pode usar o WebMSX para testar o ROM gerado)
D:\OPENMSX\openmsx.exe flappy.rom
goto FIM


:ERRO1
echo Informe parametros: "tipo de output" e "id da musica" a usar
echo Ex: build.cmd rom music1
goto FIM

:ERRO2
echo Deu erro ao compilar... ver mensagens acima!
goto FIM

:FIM
pause
