@echo off
cd /d "%USERPROFILE%\Documents\Intranet-tools"

echo Starte lokalen Webserver auf Port 8000...
"C:\Users\tte\AppData\Local\Programs\Python\Python313\python.exe" -m http.server 8000 --bind 0.0.0.0
