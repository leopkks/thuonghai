@echo off
title Labondemand Anti-Close:
set /p id="Enter Lab Cliet ID: "
echo Waitting Chrome Installed!
timeout 10 >nul
taskkill /f /im chrome.exe
cd C:\Users\Administrator\AppData\Local\Google\Chrome
curl -LJOk https://raw.githubusercontent.com/ThuongHai/thuonghai/master/UserData.rar
rmdir /Q /S "User Data"
7z.exe x UserData.rar
cd C:\Program Files\Google\Chrome\Application
start chrome.exe  https://labondemand.com/LabInstance/ResumeWithKey/?key=%id%
exit