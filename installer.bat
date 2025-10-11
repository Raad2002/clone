@echo off
:: Vérifie si le script est lancé en tant qu'administrateur
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Lancement du script en mode administrateur...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Se positionne dans le dossier du script
cd /d "%~dp0"

:: Vérifie la présence des fichiers requis
if not exist setup.exe (
    echo Erreur : setup.exe est introuvable dans ce dossier.
    pause
    exit /b
)

if not exist Configuration.xml (
    echo Erreur : Configuration.xml est introuvable dans ce dossier.
    pause
    exit /b
)

:: Lance l'installation d'Office
echo Demarrage de l'installation d'Office...
setup.exe /configure Configuration.xml

echo Installation terminée.
pause