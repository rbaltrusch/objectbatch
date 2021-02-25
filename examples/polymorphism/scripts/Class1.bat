call class %*
%class%

:public-update
	echo updating Class1
	set /a %self%.attr+=1
exit /b

:public-construct --> 1:objectname
	call super %*
	set %self%.attr=0
exit /b
