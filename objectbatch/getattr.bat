@echo off
setlocal enabledelayedexpansion
	if exist %~1 ( set objptr=%~1 ) else ( set objptr=!%~1! )
	set attr=%~2
	set rv=!%objptr%.%attr%!
endlocal & set attr=%rv%
