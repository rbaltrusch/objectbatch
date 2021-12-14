echo off
::runs batest.bat in the batest folder. Used for a Github Actions Workflow.
::Note that batest does not and cannot return errorlevel if a test failed (windows bug)
::Instead, this is solved by echoing out the number of failed tests and redirecting this.

set ERRORLEVEL=0
set tempfile=__temp__

tree /a ../..

cd ../objectbatch
echo.
echo.
echo.
tree /a /f .

call "../../batest/batest/batest.bat" path
call "../../batest/batest/batest.bat" --list .

echo.
echo.
echo.

call "../../batest/batest/batest.bat" . > %tempfile%
echo 0 > %tempfile%
set /p ERRORLEVEL= < %tempfile%
del %tempfile%
echo %ERRORLEVEL% error(s) occured.
exit /b %ERRORLEVEL%
