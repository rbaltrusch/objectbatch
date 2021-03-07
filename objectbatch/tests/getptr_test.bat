@echo off

::recursion depth 1
set obj=$123
set self=$234
call getptr obj self 1
call assert "%self%" EQU "$123" "Pointer variable self should equal to the value stored in obj at recursion depth 1!"
set self=

::recursion depth 2
set obj=$123
set $123=$234
call getptr obj self 2
call assert "%self%" EQU "$234" "Pointer variable self should equal to the value of the variable being pointed to by obj at recursion depth 2!"

set obj=
exit /b %errorlevel%
