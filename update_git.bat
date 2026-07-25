@echo off
title Git Repository Updater - SW PETUK The Foodcart
color 0A
echo ====================================================
echo        SW PETUK The Foodcart - Git Auto Updater
echo ====================================================
echo.

echo [1/3] Checking status...
git status -s

echo.
echo [2/3] Staging changes...
git add .

echo.
set /p commit_msg="Enter commit message (Leave blank for 'Update website'): "
if "%commit_msg%"=="" set commit_msg=Update website code

echo.
echo [3/3] Committing and Pushing changes to GitHub...
git commit -m "%commit_msg%"
git push origin main

echo.
echo ====================================================
echo             Git Update Finished!
echo ====================================================
pause
