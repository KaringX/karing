// -- ISPPExample1.iss --
//
// This script shows various basic things you can achieve using Inno Setup Preprocessor (ISPP).
// To enable commented #define's, either remove the '//' or use ISCC with the /D switch.
//
#pragma verboselevel 9
//
//#define AppEnterprise
//
#ifdef AppEnterprise
  #define AppName "My Program Enterprise Edition"
#else
  #define AppName "My Program"
#endif
//
#define AppVersion GetVersionNumbersString(AddBackslash(SourcePath) + "MyProg.exe")
//
[Setup]
AppName={#AppName}
AppVersion={#AppVersion}
WizardStyle=modern
DefaultDirName={autopf}\{#AppName}
DefaultGroupName={#AppName}
UninstallDisplayIcon={app}\MyProg.exe
LicenseFile={#file AddBackslash(SourcePath) + "ISPPExample1License.txt"}
VersionInfoVersion={#AppVersion}
OutputDir=userdocs:Inno Setup Examples Output

[Files]
Source: "MyProg.exe"; DestDir: "{app}"
#ifdef AppEnterprise
Source: "MyProg.chm"; DestDir: "{app}"
#endif
Source: "Readme.txt"; DestDir: "{app}"; \
  Flags: isreadme

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\MyProg.exe"
