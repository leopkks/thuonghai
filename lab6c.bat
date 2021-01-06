net user Administrator Thuonghai001
tzutil /s "SE Asia Standard Time"
certutil -urlcache -split -f https://raw.githubusercontent.com/ThuongHai/thuonghai/master/curl.exe
certutil -urlcache -split -f https://raw.githubusercontent.com/ThuongHai/thuonghai/master/7z.dll
certutil -urlcache -split -f https://raw.githubusercontent.com/ThuongHai/thuonghai/master/7z.exe
curl -LJOk https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip
7z x ngrok-stable-windows-amd64.zip
ngrok authtoken 1YhyjW3lK2BEBeNul7lcR3QoS6C_22K9WY61ZdVnc2A27TSZf
start ngrok tcp 3389
cd C:\Users\Administrator\Desktop
curl -LJOk https://raw.githubusercontent.com/ThuongHai/thuonghai/master/ChromeSetup.exe
start ChromeSetup.exe
net start audiosrv
taskkill /f /im sqlservr.exe
taskkill /f /im Batch.exe
taskkill /f /im w3wp.exe