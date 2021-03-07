@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#new
	exit /b 0
)

set self=
call clear %~2
call %*
set %self%.__class__=%~1
