::This is the List class.
::A class definition needs to at least have the top block, :construct and :main.
::Important is that the constructor does not use local scope using setlocal,
::as attributes must reside in global varspace to make them useable in other
::batfiles

::top block
@echo off
goto :__main__

:__main__
	echo LIST MAIN: %*
	set __class__=%0
	call getptr %~1 self 1
	echo self %self%
	call :%~2 %*
exit /b

:__dict__ --> 1:objectname
	set %self%
exit /b

:__base_constructor__ --> objectname
	call get_new_ptr self
	echo constructor %self%
	set %self%.type=%__class__%
	set %~1=%self%
exit /b

:construct --> 1:objectname
	::constructor method needs to be called to instantiate object. 
	::Attributes reside in global varspace
	call :__base_constructor__ %~1
	set %self%.elements=
	set %self%.get=call # %~1 get
	set %self%.__delim__=,
exit /b

:get --> 1:objectname 2:methodname 3:index
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

:set --> 1:objectname 2:methodname 3:index 4:value
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

:get_element_set --> 1:objectname
	setlocal
	endlocal & set element_set=%element_set%
exit /b

:append --> 1:objectname 2:methodname 3:value
	setlocal enabledelayedexpansion
		set elements=!%self%.elements!%~3!%self%.__delim__!
	endlocal & set %self%.elements=%elements%
exit /b

:pop --> 1:objectname 2:methodname 3:index
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

:print --> 1:objectname
	setlocal enabledelayedexpansion
	endlocal & echo !%self%.elements!
exit /b
