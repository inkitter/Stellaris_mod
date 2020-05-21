@echo off
chcp 65001
FOR /F "tokens=3* delims= " %%a in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') do (set mydoc=%%a)
echo ----本批处理会清理mod文件夹（.mod文件），按 Ctrl + C 终止----
pause
echo ----本批处理会清理mod文件夹，按 Ctrl + C 终止----
pause
@echo on
rmdir "%mydoc%\Paradox Interactive\Stellaris\mod\_Inkitmod"
@echo off
echo ----清理完成----
pause