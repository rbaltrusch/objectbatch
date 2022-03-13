::runs batest.bat in the batest folder. Used for a Github Actions Workflow.
::Note that batest does not and cannot return errorlevel if a test failed (windows bug)
::Instead, this is solved by echoing out the number of failed tests and redirecting this.

@echo off

cd ../../objectbatch/objectbatch

echo.

set ERRORLEVEL=0
set tempfile=__temp__

::change here so assert.bat is on path for the tests
cd batest/batest
call batest ../../objectbatch/objectbatch > %tempfile%
call batest -v ../../objectbatch/objectbatch
echo.

pushd "../../objectbatch/objectbatch"
type test_report.html
popd
echo.

set /p ERRORLEVEL= < %tempfile%
del %tempfile%
echo %ERRORLEVEL% error(s) occured.
exit /b %ERRORLEVEL%
