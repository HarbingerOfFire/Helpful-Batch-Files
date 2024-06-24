@echo off
setlocal enabledelayedexpansion

set tmp=%TEMP%/path

path > tmp

for /f "tokens=* delims=;" %%a in (tmp) do (
    set "line=%%a"
    for %%b in ("!line:;=" "!") do (
        echo %%~b
    )
)
del tmp
PAUSE