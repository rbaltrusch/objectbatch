@echo off

call get_new_ptr a
call get_new_ptr b
call assert "%a:~0,1%" EQU "$" "Pointer should start with $"
call assert "%a%" NEQ "%b%" "the generated pointer should be unique!"
exit /b %errorlevel%
