@ECHO off

@REM todo : get dynamically
SET version=1.0.0

SET /p msg=Commit message for version %version%:

git pull

git add .

git commit -m "%msg%"

git push

@REM git tag -d v1.0.0

git push origin :refs/tags/%version%

git tag -a %version% -m "version %version%"

git push origin %version%