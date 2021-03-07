@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#getptr
	exit /b 0
)

set ptr=%~1

::optional arg
set recursion_level=%~3
set empty=
if recursion_level EQU empty (set recursion_level=-1)

goto :main

:main
	setlocal enabledelayedexpansion
		:getval
			set rv=!%ptr%!a
			set /a recursion_level=!recursion_level!-1
			if !recursion_level! GTR 0 (
				if %rv:~0,1% EQU $ (
					set ptr=!rv:~0,-1!
					goto :getval
				)
			)
	endlocal & set %~2=%rv:~0,-1%
goto :eof
