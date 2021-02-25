call class %*
%class%

:__dict__ --> 1:objectname
	call super %*
exit /b

:public-construct --> 1:objectname
	call super %*
	set %self%.elements=
	set %self%.__delim__=,
exit /b

:public-get --> 1:objectname 2:methodname 3:index
	setlocal enabledelayedexpansion
		set counter=0
		set element=NotFound
		set delim=!%self%.__delim__!
		set elements=!%self%.elements!
		for %%a in ( %elements% ) do (
			if !counter! EQU %~3 (
				set element=%%a
				goto :endofloop
			)
			set /a counter=!counter! + 1
		)
		:endofloop
	endlocal & set element=%element%
exit /b

:public-set --> 1:objectname 2:methodname 3:index 4:value
	setlocal enabledelayedexpansion
		set counter=0
		set elements=
		for %%a in ( !%self%.elements! ) do (
			if !counter! EQU %~3 (
				set elements=!elements!%~4!%self%.__delim__!
			)else (
				set elements=!elements!%%a!%self%.__delim__!
			)
			set /a counter=!counter! + 1
		)
	endlocal & set %self%.elements=%elements%
exit /b

:public-append --> 1:objectname 2:methodname 3:value
	setlocal enabledelayedexpansion
		set elements=!%self%.elements!%~3!%self%.__delim__!
	endlocal & set %self%.elements=%elements%
exit /b

:public-pop --> 1:objectname 2:methodname 3:index
	setlocal enabledelayedexpansion
		set counter=0
		set elements=
		for %%a in ( !%self%.elements! ) do (
			if !counter! NEQ %~3 (
				set elements=!elements!%%a!%self%.__delim__!
			)
			set /a counter=!counter! + 1
		)
	endlocal & set %self%.elements=%elements%
exit /b

:public-print --> 1:objectname
	setlocal enabledelayedexpansion
		set elements=!%self%.elements!
	endlocal & echo %elements%
exit /b
