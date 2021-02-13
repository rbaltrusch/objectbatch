::This is the List class.
::A class definition needs to at least have the top block, :construct and :main.
::Important is that the constructor does not use local scope using setlocal,
::as attributes must reside in global varspace to make them useable in other
::batfiles

::top block
@echo off
goto :__main__

:__main__
	echo DICT MAIN: %*
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
exit /b

:get --> 1:objectname 2:methodname 3:key
	setlocal enabledelayedexpansion
		set value=!%self%.%~3!
	endlocal & set value=%value%
exit /b

:set --> 1:objectname 2:methodname 3:key 4:value
	set %self%.%~3=%~4
exit /b

:delete --> 1:objectname 2:methodname 3:key
	set "%self%.%~3="
exit /b
