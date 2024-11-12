set version= %1
echo version

:intercept_left
if "%version:~0,1%"==" " set "version=%version:~1%"&goto intercept_left

:intercept_right
if "%version:~-1%"==" " set "version=%version:~0,-1%"&goto intercept_right

if "%version%" == "" (
    echo version is required
    goto :End
)

copy ".\build\app\outputs\bundle\release\app-release.aab" ".\dist\karing_%version%_android_arm.aab"


:End