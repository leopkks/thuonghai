@echo off
title Labondemand Anti-Close:
set /p id="Enter Lab Cliet ID: "
:loop
cd C:\Program Files (x86)\Internet Explorer
start iexplore.exe  https://labondemand.com/LabInstance/ResumeWithKey/?key=%id%
timeout 1
nircmd.exe win min process iexplore.exe
timeout 300
taskkill /f /im iexplore.exe
cls
goto loop