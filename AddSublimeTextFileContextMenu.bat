@echo off
title Add SublimeText To File Context Menu
set installedpath=C:\Program Files\Sublime Text
set contexttext=Open with Sublime Text
SET STPath=%installedpath%\sublime_text.exe
@reg add "HKEY_CLASSES_ROOT\*\shell\%contexttext%"
@reg add "HKEY_CLASSES_ROOT\*\shell\%contexttext%"         /t REG_SZ /ve /d "%contexttext%" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\%contexttext%"         /t REG_EXPAND_SZ /v "Icon" /d "%STPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\%contexttext%\command" /t REG_SZ /v "" /d "%STPath% \"%%1\"" /f
goto done
:done
echo Added To Context Menu
pause
