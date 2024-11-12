; -- 64BitThreeArch.iss --
; Demonstrates how to install a program built for three different
; architectures (x86, x64, ARM64) using a single installer.

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName=My Program
AppVersion=1.5
WizardStyle=modern
DefaultDirName={autopf}\My Program
DefaultGroupName=My Program
UninstallDisplayIcon={app}\MyProg.exe
Compression=lzma2
SolidCompression=yes
OutputDir=userdocs:Inno Setup Examples Output
; "ArchitecturesInstallIn64BitMode=x64 arm64" requests that the install
; be done in "64-bit mode" on x64 & ARM64, meaning it should use the
; native 64-bit Program Files directory and the 64-bit view of the
; registry. On all other architectures it will install in "32-bit mode".
ArchitecturesInstallIn64BitMode=x64 arm64

[Files]
; Install MyProg-x64.exe if running on x64, MyProg-ARM64.exe if
; running on ARM64, MyProg.exe otherwise.
; Place all x64 files here
Source: "MyProg-x64.exe"; DestDir: "{app}"; DestName: "MyProg.exe"; Check: InstallX64
; Place all ARM64 files here, first one should be marked 'solidbreak'
Source: "MyProg-ARM64.exe"; DestDir: "{app}"; DestName: "MyProg.exe"; Check: InstallARM64; Flags: solidbreak
; Place all x86 files here, first one should be marked 'solidbreak'
Source: "MyProg.exe"; DestDir: "{app}"; Check: InstallOtherArch; Flags: solidbreak
; Place all common files here, first one should be marked 'solidbreak'
Source: "MyProg.chm"; DestDir: "{app}"; Flags: solidbreak
Source: "Readme.txt"; DestDir: "{app}"; Flags: isreadme

[Icons]
Name: "{group}\My Program"; Filename: "{app}\MyProg.exe"

[Code]
function InstallX64: Boolean;
begin
  Result := Is64BitInstallMode and (ProcessorArchitecture = paX64);
end;

function InstallARM64: Boolean;
begin
  Result := Is64BitInstallMode and (ProcessorArchitecture = paARM64);
end;

function InstallOtherArch: Boolean;
begin
  Result := not InstallX64 and not InstallARM64;
end;
