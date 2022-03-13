call class %*
%class%

::used for #_test

:public-test
	set result=123
exit /b 0

:public-construct
	call super %*
	set %self%.a=1234
exit /b 0
