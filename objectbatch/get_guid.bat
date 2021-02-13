::Script generates a unique identifer based on the current date and time
::and assigns it to the first argument passed in (varname).

@echo off
For /f "tokens=1-3 delims=/. " %%a in ('date /t') do (set mydate=%%a%%b%%c)
For /f "tokens=1-4 delims=/:." %%a in ("%TIME%") do (set mytime=%%a%%b%%c%%d)
set %~1=%mydate%%mytime%%random%
