call class %*
%class%

::used for clear_test

:public-construct
	call super %*
	set %self%.a=234
exit /b 0
