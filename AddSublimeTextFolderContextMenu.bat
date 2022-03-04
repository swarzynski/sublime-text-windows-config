@echo off
title Add SublimeText To Directory Context Menu
set installedpath=C:\Program Files\Sublime Text 3
set contexttext=Open with Sublime Text
SET STPath=%installedpath%\sublime_text.exe

@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\%contexttext%"
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\%contexttext%"         /t REG_SZ /ve /d "%contexttext%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\%contexttext%"         /t REG_EXPAND_SZ /v "Icon" /d "%STPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\%contexttext%\command" /t REG_SZ /v "" /d "%STPath% \"%%v\"" /f
goto done
:done
echo Added To Context Menu
pause
