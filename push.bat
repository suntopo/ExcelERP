@echo off

rem 当前脚本路径
set b=%~dp0
echo %~dp0

rem 系统时间
set d=%date:~0,10%
set t=%time:~0,8%
echo %d% %t%

rem 进入项目根目录
cd %b%

git status

git add .

git commit -m " data update at %d% %t%"

git push

pause