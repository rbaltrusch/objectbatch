set __super__=myClass2
call class %*
%class%

:myPrivateMethod
	set /a %self%.b+=1
exit /b

:public-method1
	echo entering method1 in myClass
	call super %*
exit /b

:public-__dict__ --> 1:objectname
	call super %*
exit /b

:public-construct --> 1:objectname
	call super %*
	set %self%.b=0
	set %self%.c=0
	call :myPrivateMethod
exit /b
