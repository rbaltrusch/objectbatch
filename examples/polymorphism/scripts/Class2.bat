call class %*
%class%

:public-update
	echo updating Class2
	set /a %self%.attr+=2
exit /b

:public-construct --> 1:objectname
	call super %*
	set %self%.attr=0
exit /b
