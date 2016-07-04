@echo off
chcp 65001
FOR /F "tokens=3* delims= " %%a in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') do (set mydoc=%%a)
cd /d %~dp0
@echo on
@echo ----将在 %mydoc%\Paradox Interactive\Stellaris\mod\ 安装mod----
@pause
mklink /j "%mydoc%\Paradox Interactive\Stellaris\mod\_InkitSEL" _InkitSEL
copy "_InkitSEL\*.mod" "%mydoc%\Paradox Interactive\Stellaris\mod" /y
@echo off
echo ----安装完成----
echo ----若无效请查看是否有错误提示----
pause