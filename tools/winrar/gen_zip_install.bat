cd /d %~dp0
set version=%1
echo version
set SrcPath="../../build/windows/x64/runner/Release/"
set DestPath="../../dist/karing_%version%_windows_x64.zip"
 
set SrcPdbPath="../../build/windows/x64/runner/Release/karing.pdb"
set DestPdbPath="../../dist/karing_%version%_windows_x64_pdb.zip"

set DestPath2="../../dist/karing_%version%_windows_x64/"
set DestPath3="../../dist/karing_%version%_windows_x64.exe"
 

del /s /Q %DestPath%
rd /s /Q %DestPath2%
del /s /Q %DestPath3%
del /s /Q %DestPdbPath%

winrar.exe a -ep1 -r -ibck -o+ %DestPath% %SrcPath% 
winrar.exe D -y %DestPath% *.pdb
winrar.exe D -y %DestPath% *.lib
winrar.exe D -y %DestPath% .sentry-native

winrar.exe a -ep1 -r -ibck -o+ %DestPdbPath% %SrcPdbPath% 

winrar.exe x %DestPath% *.* %DestPath2%

"ISCC.exe" /f"karing_%version%_windows_x64" /d"MyAppVersion=%version%" "../innosetup/install.iss"
rd /s /Q %DestPath2%
 
