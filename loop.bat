@echo off

rem REPLACE PC NAME/IP ADDRESS BELOW WITH REQUIRED.
set pc_name=192.168.1.1

:start
echo Please wait, testing if PC is online.
cls
ping -n 1 %pc_name% > nul
if %errorlevel% == 0 goto run_command
echo.
echo PC is currently offline.
echo.
echo Waiting 120 seconds…
ping -n 120 127.0.0.1 > nul
goto start

:run_command
cls
echo PC is online. Waiting 60 seconds for services to start.
echo.
ping -n 60 127.0.0.1 > nul
echo.
echo Running command…
echo.

REM COMMAND TO RUN GOES HERE.

goto END

:END pause
