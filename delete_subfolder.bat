@echo off
REM Check if the argument is provided
if "%~1"=="" (
    echo Please provide a directory path.
    exit /b 1
)

PUSHD "%~1"


REM Get the list of directories 
for /f "delims=" %%d in ('dir /s /b /ad node_modules') do (
    REM Delete each directory and its contents
    rd /s /q "%%d"
)
echo All node_modules directories have been deleted.
for /f "delims=" %%d in ('dir /s /b /ad bin') do (
    REM Delete each directory and its contents
    rd /s /q "%%d"
)
echo All bin directories have been deleted.

for /f "delims=" %%d in ('dir /s /b /ad release') do (
    REM Delete each directory and its contents
    rd /s /q "%%d"
)
echo All Release directories have been deleted.

for /f "delims=" %%d in ('dir /s /b /ad debug') do (
    REM Delete each directory and its contents
    rd /s /q "%%d"
)
echo All Debug directories have been deleted.



POPD