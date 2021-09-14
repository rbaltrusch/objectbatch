call class %*
%class%

:public-method1
	echo executing method1 in myClass2 !
exit /b

:public-method2
	echo executing method2 in myClass2 !
exit /b

:public-__dict__ --> 1:objectname
	call super %*
exit /b

:public-construct --> 1:objectname
	call super %*
	set %self%.a=0
exit /b
