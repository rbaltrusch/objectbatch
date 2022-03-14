@echo off
set self1=$123
call get_new_objptr self1

set self2=
call get_new_objptr self2

call assert "%self1%" EQU "%self1%" "Pointer variable should not change with a get_new_objptr call if already defined"
if errorlevel 1 ( exit /b %errorlevel% )

call assert "" NEQ "%self2%" "Pointer variable should change with a get_new_objptr call if not already defined"

exit /b %errorlevel%
