@echo off

if "%~1" EQU static (
	exit /b 0
)

if not defined %~2 (
	call getptr %*
)
