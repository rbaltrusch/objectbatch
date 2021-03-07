@echo off

call new tests/myClass a construct

set self=
call clear a

call tests/myClass2 a construct

setlocal enabledelayedexpansion
call assert "!%a%.a!" EQU "234" "a should be equal to 234 from myClass2 and not 1234 from myClass"
endlocal & set errorlevel=%errorlevel%

exit /b %errorlevel%
