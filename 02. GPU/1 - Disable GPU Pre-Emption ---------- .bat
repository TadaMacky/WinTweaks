:: Script by TadaMacky

:main
@echo off
cls
color 5
echo ==================[Ziac Services]==================
echo Please Make Sure To Run As Administrator
echo Script By TadaMacky
echo Discord: dsc.gg/ziac
echo ====================================================
echo [1] Enable
echo [2] Disable

SET /P choice=Enter 1 or 2 : 
IF /i "%choice%"=="1" GOTO enable
IF /i "%choice%"=="2" GOTO disable

:enable
REG DELETE HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler /v EnablePreemption /f
cls
color 2
echo Enabled!, Please Reboot to apply Changes!
timeout /t 10
GOTO main

:disable
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler /v EnablePreemption /t REG_DWORD /d 0 /f
cls
color 4
echo Disabled!, Please Reboot to apply Changes!
timeout /t 10
GOTO main

:END