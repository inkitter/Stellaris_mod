@echo off
chcp 65001
FOR /F "tokens=3* delims= " %%a in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') do (set mydoc=%%a)
echo ----本批处理会清理mod文件夹（.mod文件），按 Ctrl + C 终止----
pause
echo ----本批处理会清理mod文件夹，按 Ctrl + C 终止----
pause
@echo on
del "%mydoc%\Paradox Interactive\Stellaris\mod\!*.mod"
del "%mydoc%\Paradox Interactive\Stellaris\mod\%*.mod"
del "%mydoc%\Paradox Interactive\Stellaris\mod\%%*.mod"
del "%mydoc%\Paradox Interactive\Stellaris\mod\+*.mod"
del "%mydoc%\Paradox Interactive\Stellaris\mod\-*.mod"
del "%mydoc%\Paradox Interactive\Stellaris\mod\]*.mod"
del "%mydoc%\Paradox Interactive\Stellaris\mod\0*.mod"
del "%mydoc%\Paradox Interactive\Stellaris\mod\1*.mod"
del "%mydoc%\Paradox Interactive\Stellaris\mod\_*.mod"
del "%mydoc%\Paradox Interactive\Stellaris\mod\ZBeautiful Battles.mod"
rmdir "%mydoc%\Paradox Interactive\Stellaris\mod\_Inkitmod"
rmdir "%mydoc%\Paradox Interactive\Stellaris\mod\_InkitSEL"
rmdir "%mydoc%\Paradox Interactive\Stellaris\mod\_morechn"
@echo off
echo ----清理完成----
pause