@echo off
chcp 65001
FOR /F "tokens=3* delims= " %%a in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') do (set mydoc=%%a)
cd /d %~dp0
echo ----将在 %mydoc%\Paradox Interactive\Stellaris\mod 安装mod----
pause
@echo on
md "%mydoc%\Paradox Interactive\Stellaris\mod\"
mklink /j "%mydoc%\Paradox Interactive\Stellaris\mod\_Inkitmod" _Inkitmod
rem mklink /j "%mydoc%\Paradox Interactive\Stellaris\mod\_InkitSEL" _InkitSEL
mklink /j "%mydoc%\Paradox Interactive\Stellaris\mod\_morechn" _morechn
copy *.mod "%mydoc%\Paradox Interactive\Stellaris\mod" /y
@echo ----链接已建立：mod文件夹与本文件夹的链接，删除本文件夹内容会使mod失效----
@echo ----若无效请查看是否有错误提示----
@pause