@echo off
set "class=@echo off & call getobjptr %~1 self 1 & call :public-%~2 %* & exit /b"
exit /b
