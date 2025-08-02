REM filepath: d:\dev\deleteme\Mar2025\One\list_git_repos.bat
@echo off
REM Check if the argument is provided
if "%~1"=="" (
    echo Please provide a directory path.
    exit /b 1
)

REM Change to the specified directory
pushd "%~1"

REM Find all .git folders and list their remote URLs
for /f "delims=" %%G in ('dir /s /b /ad .git') do (
    pushd "%%~dpG"
    echo Repository: %%~dpG
    git remote -v 2>nul
    popd
    echo.
)
popd