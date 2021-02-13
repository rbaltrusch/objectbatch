::Used to call an object without having to specify its type
::e.g. instead of calling object a of type Class as:
::	call Class a ....
::we can instead call it using:
::	call # a ...
::Note: object needs to have a type attribute

@echo off
setlocal enabledelayedexpansion
	set rv=!%1!
endlocal & set type=!%rv%.type!
call %type% %*
