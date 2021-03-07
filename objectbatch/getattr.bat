@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#getattr
	exit /b 0
)

setlocal enabledelayedexpansion
	if exist %~1 ( set "objptr=%~1" ) else ( set "objptr=!%~1!" )
	set attr_=%~2
	set rv=!%objptr%.%attr_%!
endlocal & set attr=%rv%
