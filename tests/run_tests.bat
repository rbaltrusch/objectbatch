::runs batest.bat in the batest folder. Used for a Github Actions Workflow.
::change here so assert.bat is on path for the tests
@ cd ../../objectbatch/objectbatch/batest/batest
@ call batest -v -n -t ../../objectbatch/objectbatch
@ exit /b %ERRORLEVEL%
