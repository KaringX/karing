; -- Languages.iss --
; Demonstrates a multilingual installation.

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName={cm:MyAppName}
AppId=My Program
AppVerName={cm:MyAppVerName,1.5}
WizardStyle=modern
DefaultDirName={autopf}\{cm:MyAppName}
DefaultGroupName={cm:MyAppName}
UninstallDisplayIcon={app}\MyProg.exe
VersionInfoDescription=My Program Setup
VersionInfoProductName=My Program
OutputDir=userdocs:Inno Setup Examples Output
MissingMessagesWarning=yes
NotRecognizedMessagesWarning=yes
; Uncomment the following line to disable the "Select Setup Language"
; dialog and have it rely solely on auto-detection.
;ShowLanguageDialog=no

[Languages]
Name: en; MessagesFile: "compiler:Default.isl"
Name: nl; MessagesFile: "compiler:Languages\Dutch.isl"
Name: de; MessagesFile: "compiler:Languages\German.isl"

[Messages]
en.BeveledLabel=English
nl.BeveledLabel=Nederlands
de.BeveledLabel=Deutsch

[CustomMessages]
en.MyDescription=My description
en.MyAppName=My Program
en.MyAppVerName=My Program %1
nl.MyDescription=Mijn omschrijving
nl.MyAppName=Mijn programma
nl.MyAppVerName=Mijn programma %1
de.MyDescription=Meine Beschreibung
de.MyAppName=Meine Anwendung
de.MyAppVerName=Meine Anwendung %1

[Files]
Source: "MyProg.exe"; DestDir: "{app}"
Source: "MyProg.chm"; DestDir: "{app}"; Languages: en
Source: "Readme.txt"; DestDir: "{app}"; Languages: en; Flags: isreadme
Source: "Readme-Dutch.txt"; DestName: "Leesmij.txt"; DestDir: "{app}"; Languages: nl; Flags: isreadme
Source: "Readme-German.txt"; DestName: "Liesmich.txt"; DestDir: "{app}"; Languages: de; Flags: isreadme

[Icons]
Name: "{group}\{cm:MyAppName}"; Filename: "{app}\MyProg.exe"
Name: "{group}\{cm:UninstallProgram,{cm:MyAppName}}"; Filename: "{uninstallexe}"

[Tasks]
; The following task doesn't do anything and is only meant to show [CustomMessages] usage
Name: mytask; Description: "{cm:MyDescription}"
