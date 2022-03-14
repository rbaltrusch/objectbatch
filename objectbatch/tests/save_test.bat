@echo off

call get_new_ptr a
set pointer=%a%
set %a%.a=1
set %a%.b=2
call save __savefile__ %a%

::clear obj a
set %a%.a=1
set %a%.b=2
set %a%=

call assert exist __savefile__ "__savefile__ should exist!"
if errorlevel 1 ( exit /b %errorlevel% )
call load __savefile__
del __savefile__

setlocal enabledelayedexpansion
	call assert "!%pointer%.a!" EQU 1 "attr a should be equal to 1"
	if errorlevel 1 ( exit /b %errorlevel% )
	call assert "!%pointer%.b!" EQU 2 "attr b should be equal to 2"
endlocal & set errorlevel=%errorlevel%

exit /b %errorlevel%
