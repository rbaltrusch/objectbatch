@echo off
set "class=@echo off & call getptr %~1 self 1 & call :%~2 %* & exit /b"
exit /b
