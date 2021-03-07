@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#super
	exit /b 0
)

set super=%__super__%
set __super__=

if "%super%" NEQ "" (
	call %super% %*
) else (
	call object %*
)

call getobjptr %~1 self 1

exit /b
