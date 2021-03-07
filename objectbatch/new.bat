@echo off
set self=
call clear %~2
call %*
set %self%.__class__=%~1
