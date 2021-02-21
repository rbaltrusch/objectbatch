@echo off
setlocal enabledelayedexpansion
	set objptr=!%~1!
	set attr=%~2
	set rv=!%objptr%.%attr%!
endlocal & set attr=%rv%
