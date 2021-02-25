@echo off
setlocal enabledelayedexpansion
	if exist %~1 ( set "objptr=%~1" ) else ( set "objptr=!%~1!" )
	set attr_=%~2
	set rv=!%objptr%.%attr_%!
endlocal & set attr=%rv%
