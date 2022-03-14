@echo off

set self=
set obj=
call new tests/myClass obj construct

echo %self%
call assert "%self%" NEQ "$123" "Pointer self should change after a call to new!"
if errorlevel 1 ( exit /b %errorlevel% )

setlocal enabledelayedexpansion
	echo !%obj%.__class__!
	call assert "!%obj%.__class__!" EQU "tests/myClass" "Class of object obj should be equal to the class whose constructor was called!"
endlocal & set errorlevel=%errorlevel%
set self=
set obj=

exit /b %errorlevel%
