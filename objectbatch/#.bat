::Used to call an object without having to specify its type
::e.g. instead of calling object a of type Class as:
::	call Class a ....
::we can instead call it using:
::	call # a ...
::Note: object needs to have a type attribute

@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#bat
	exit /b 0
)

setlocal enabledelayedexpansion
	set rv=!%1!
	set type=!%rv%.__class__!
endlocal & set type=%type%
set self=
call %type% %*
