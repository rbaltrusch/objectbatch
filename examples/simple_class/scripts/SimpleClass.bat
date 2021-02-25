call class %*
%class%

:public-myMethod
	echo hello from myMethod!
exit /b

:public-construct --> 1:objectname
	call super %*
	set %self%.myAttr=0
exit /b
