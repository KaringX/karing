; -- UnicodeExample1.iss --
; Demonstrates some Unicode functionality.
;
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName=ɯɐɹƃoɹd ʎɯ
AppVerName=ɯɐɹƃoɹd ʎɯ version 1.5
WizardStyle=modern
DefaultDirName={autopf}\ɯɐɹƃoɹd ʎɯ
DefaultGroupName=ɯɐɹƃoɹd ʎɯ
UninstallDisplayIcon={app}\ƃoɹdʎɯ.exe
Compression=lzma2
SolidCompression=yes
OutputDir=userdocs:Inno Setup Examples Output

[Files]
Source: "MyProg.exe"; DestDir: "{app}"; DestName: "ƃoɹdʎɯ.exe"
Source: "MyProg.chm"; DestDir: "{app}"; DestName: "ƃoɹdʎɯ.chm"
Source: "Readme.txt"; DestDir: "{app}"; Flags: isreadme

[Icons]
Name: "{group}\ɯɐɹƃoɹd ʎɯ"; Filename: "{app}\ƃoɹdʎɯ.exe"

[Code]
function InitializeSetup: Boolean;
begin
  MsgBox('ɯɐɹƃoɹd ʎɯ', mbInformation, MB_OK);
  Result := True;
end;