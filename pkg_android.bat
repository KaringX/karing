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

copy ".\build\app\outputs\flutter-apk\app-release.apk"             ".\dist\karing_%version%_android_arm.apk"
copy ".\build\app\outputs\flutter-apk\app-arm64-v8a-release.apk"   ".\dist\karing_%version%_android_arm64-v8a.apk"
copy ".\build\app\outputs\flutter-apk\app-armeabi-v7a-release.apk" ".\dist\karing_%version%_android_armeabi-v7a.apk"

:End