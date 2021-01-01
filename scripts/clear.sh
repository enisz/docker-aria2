echo Stopping containers...
docker stop aria2-web aria2-daemon
echo.

echo Deleting containers...
docker container rm aria2-web aria2-daemon
echo.

echo Deleting images...
# todo
echo.

echo done!