@echo off

set self=
call super a construct

setlocal enabledelayedexpansion

	call assert "!%a%.__class__!" EQU "object" "class of obj a should be object"
	if errorlevel 1 ( exit /b %errorlevel% )

	set self=
	set __super__=tests/myClass
	call super b construct

	call assert "!%b%.a!" EQU "1234" "class of obj a should be myClass"

endlocal & set errorlevel=%errorlevel%

exit /b %errorlevel%
