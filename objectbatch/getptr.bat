@echo off
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
				echo %rv% ... %rv:~0,1%
				if %rv:~0,1% EQU $ (
					echo !rv:~0.1! 123
					set ptr=!rv:~0,-1!
					goto :getval
				)
			)
	endlocal & set %~2=%rv:~0,-1%
goto :eof
