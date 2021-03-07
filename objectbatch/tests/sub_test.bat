@echo off
set self=$123
call sub tests/myClass b construct

setlocal enabledelayedexpansion
	assert "!%self%.b.a!" EQU "1234" "self.b.a should be equal to 1234"
endlocal & set errorlevel=%errorlevel%

exit /b %errorlevel%
