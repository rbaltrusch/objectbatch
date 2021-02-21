@echo off

set super=%__super__%
set __super__=

if "%super%" NEQ "" (
	call %super% %*
) else (
	call object %*
)

call getobjptr %~1 self 1

exit /b
