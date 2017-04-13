@chcp 65001
@FOR /F "tokens=3* delims= " %%a in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') do (set mydoc=%%a)
cd /d %~dp0
@echo ----即将与远程同步，会覆盖本地所有修改----
@echo ----即将与远程同步，会覆盖本地所有修改----
@pause
@echo on
git fetch --all
git reset --hard origin/master
@echo ----已与远程同步完毕-----
@echo ----即将更新mod文件夹中.mod----
@echo ----将复制.mod文件至 %mydoc%\Paradox Interactive\Stellaris\mod ----
@pause
copy *.mod "%mydoc%\Paradox Interactive\Stellaris\mod" /y
@echo ----mod文件夹更新完成----
@pause