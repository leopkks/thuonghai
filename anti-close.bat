@echo off
title Labondemand Anti-Close:
set /p id="Enter Lab Cliet ID: "
:loop
cd C:\Program Files (x86)\Internet Explorer
start iexplore.exe  https://labondemand.com/LabInstance/ResumeWithKey/?key=%id%
nircmd.exe win setsize process iexplore.exe 0 0 1 1
timeout 5
taskkill /f /im iexplore.exe
timeout 300
cls
goto loop