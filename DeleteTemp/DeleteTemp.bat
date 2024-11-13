@echo off
color 7
echo Starte Datenträgerbereinigung und lösche TEMP-Dateien...

:: Schritt 1: Datenträgerbereinigung ausführen
echo Schritt 1: Starte Datenträgerbereinigung...
cleanmgr /sagerun:1

:: Schritt 2: System-TEMP-Dateien löschen
echo Schritt 2: Lösche System-TEMP-Dateien...
del /s /q %SystemRoot%\Temp\*

:: Schritt 3: Benutzer-TEMP-Dateien löschen
echo Schritt 3: Lösche Benutzer-TEMP-Dateien...
del /s /q "%TEMP%\*"

color B
echo Datenträgerbereinigung und Löschung der TEMP-Dateien abgeschlossen.
pause
