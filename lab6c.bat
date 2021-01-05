net user Administrator Thuonghai001
tzutil /s "SE Asia Standard Time"
certutil -urlcache -split -f https://raw.githubusercontent.com/ThuongHai/thuonghai/master/curl.exe
certutil -urlcache -split -f https://raw.githubusercontent.com/ThuongHai/thuonghai/master/7-zip.dll
certutil -urlcache -split -f https://raw.githubusercontent.com/ThuongHai/thuonghai/master/7z.exe
certutil -urlcache -split -f https://raw.githubusercontent.com/ThuongHai/thuonghai/master/tar.exe
curl -O https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip
7z x ngrok-stable-windows-amd64.zip
cd C:\Users\Administrator\Desktop
curl -O https://raw.githubusercontent.com/ThuongHai/thuonghai/master/ChromeSetup.exe
start ChromeSetup.exe