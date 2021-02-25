call class %*
%class%

:public-__dict__
	call super %*
exit /b

:public-construct --> 1:objectname
	call super %*
exit /b

:public-get --> 1:objectname 2:methodname 3:key
	setlocal enabledelayedexpansion
		set value=!%self%.%~3!
	endlocal & set value=%value%
exit /b

:public-set --> 1:objectname 2:methodname 3:key 4:value
	set %self%.%~3=%~4
exit /b

:public-delete --> 1:objectname 2:methodname 3:key
	set "%self%.%~3="
exit /b
