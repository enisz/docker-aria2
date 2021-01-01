@echo off

echo Stopping containers...
docker stop aria2-web aria2-daemon
echo.

echo Deleting containers...
docker container rm aria2-web aria2-daemon
echo.

echo Deleting images...
for /F "tokens=1,2,3,4,5" %%A in ('"docker images | findstr aria2_"') DO (
  echo Deleting %%A
  docker image rm %%A
  echo.
)
echo.

echo done!