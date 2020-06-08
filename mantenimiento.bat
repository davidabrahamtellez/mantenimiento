@echo off
color 9
Title mantenimiento

echo =================================
echo  = programa para mantenimiento =
echo  =       by davidatb           =
echo =================================
echo 1. Liberar espacio libre
echo 2. Desfragmentar disco
echo 3. Analizar disco
echo 4. Analizar espacio libre
echo 5. Salir
echo.
echo.
echo.

set/p a=¿Que deseas hacer?=
cls
if %a%==1 (goto :1)
if %a%==2 (goto :2)
if %a%==3 (goto :3)
if %a%==4 (goto :4)
if %a%==5 (goto :5)

:1
Cleanmgr
pause>nul
exit

2:
Defrag c:
pause>nul
exit

:3
CHKDSK
pause>nul
exit

:4
fsutil volume diskfree c:
pause>nul
exit

:5
exit