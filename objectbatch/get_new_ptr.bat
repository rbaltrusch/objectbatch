::creates a new unique pointer value and assigns it to the first arg passed (varname)

@echo off
call get_guid ptr
setlocal enabledelayedexpansion
endlocal & set %~1=$%ptr%