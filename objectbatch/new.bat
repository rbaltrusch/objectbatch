@echo off
set self=
call %*
set %self%.__class__=%~1
