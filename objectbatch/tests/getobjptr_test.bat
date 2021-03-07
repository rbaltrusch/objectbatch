@echo off

set obj=$123
set self=$234
call getobjptr obj self
call assert "%self%" EQU "$234" "Pointer variable should not change if already defined!"

set self=
call getobjptr obj self
call assert "%self%" EQU "$123" "Pointer variable should change if not already defined!"

::call static method called test
set result=
call tests/myClass static test
call assert "%result%" EQU "123" "Result should be equal to 123 after call to test method"

exit /b %errorlevel%
