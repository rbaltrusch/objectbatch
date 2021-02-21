@echo off
if not defined %~1 (
	call get_new_ptr %~1
)
