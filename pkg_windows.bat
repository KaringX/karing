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


cd tools/winrar
gen_zip_install %version%
cd ..
cd ..

:End