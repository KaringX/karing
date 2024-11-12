; -- CodePrepareToInstall.iss --
;
; This script shows how the PrepareToInstall event function can be used to
; install prerequisites and handle any reboots in between, while remembering
; user selections across reboots.

[Setup]
AppName=My Program
AppVersion=1.5
WizardStyle=modern
DefaultDirName={autopf}\My Program
DefaultGroupName=My Program
UninstallDisplayIcon={app}\MyProg.exe
OutputDir=userdocs:Inno Setup Examples Output

[Files]
; Place any prerequisite files here, for example:
; Source: "MyProg-Prerequisite-setup.exe"; Flags: dontcopy
; Place any regular files here, so *after* all your prerequisites.
Source: "MyProg.exe"; DestDir: "{app}";
Source: "MyProg.chm"; DestDir: "{app}";
Source: "Readme.txt"; DestDir: "{app}"; Flags: isreadme;

[Icons]
Name: "{group}\My Program"; Filename: "{app}\MyProg.exe"

[Code]
const
  (*** Customize the following to your own name. ***)
  RunOnceName = 'My Program Setup restart';

  QuitMessageReboot = 'The installation of a prerequisite program was not completed. You will need to restart your computer to complete that installation.'#13#13'After restarting your computer, Setup will continue next time an administrator logs in.';
  QuitMessageError = 'Error. Cannot continue.';

var
  Restarted: Boolean;

function InitializeSetup(): Boolean;
begin
  Restarted := ExpandConstant('{param:restart|0}') = '1';

  if not Restarted then begin
    Result := not RegValueExists(HKA, 'Software\Microsoft\Windows\CurrentVersion\RunOnce', RunOnceName);
    if not Result then
      MsgBox(QuitMessageReboot, mbError, mb_Ok);
  end else
    Result := True;
end;

function DetectAndInstallPrerequisites: Boolean;
begin
  (*** Place your prerequisite detection and extraction+installation code below. ***)
  (*** Return False if missing prerequisites were detected but their installation failed, else return True. ***)

  //<your code here>
  //extraction example: ExtractTemporaryFile('MyProg-Prerequisite-setup.exe');

  Result := True;

  (*** Remove the following block! Used by this demo to simulate a prerequisite install requiring a reboot. ***)
  if not Restarted then
    RestartReplace(ParamStr(0), '');
end;

function Quote(const S: String): String;
begin
  Result := '"' + S + '"';
end;

function AddParam(const S, P, V: String): String;
begin
  if V <> '""' then
    Result := S + ' /' + P + '=' + V;
end;

function AddSimpleParam(const S, P: String): String;
begin
 Result := S + ' /' + P;
end;

procedure CreateRunOnceEntry;
var
  RunOnceData: String;
begin
  RunOnceData := Quote(ExpandConstant('{srcexe}')) + ' /restart=1';
  RunOnceData := AddParam(RunOnceData, 'LANG', ExpandConstant('{language}'));
  RunOnceData := AddParam(RunOnceData, 'DIR', Quote(WizardDirValue));
  RunOnceData := AddParam(RunOnceData, 'GROUP', Quote(WizardGroupValue));
  if WizardNoIcons then
    RunOnceData := AddSimpleParam(RunOnceData, 'NOICONS');
  RunOnceData := AddParam(RunOnceData, 'TYPE', Quote(WizardSetupType(False)));
  RunOnceData := AddParam(RunOnceData, 'COMPONENTS', Quote(WizardSelectedComponents(False)));
  RunOnceData := AddParam(RunOnceData, 'TASKS', Quote(WizardSelectedTasks(False)));

  (*** Place any custom user selection you want to remember below. ***)

  //<your code here>
  
  RegWriteStringValue(HKA, 'Software\Microsoft\Windows\CurrentVersion\RunOnce', RunOnceName, RunOnceData);
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
var
  ChecksumBefore, ChecksumAfter: String;
begin
  ChecksumBefore := MakePendingFileRenameOperationsChecksum;
  if DetectAndInstallPrerequisites then begin
    ChecksumAfter := MakePendingFileRenameOperationsChecksum;
    if ChecksumBefore <> ChecksumAfter then begin
      CreateRunOnceEntry;
      NeedsRestart := True;
      Result := QuitMessageReboot;
    end;
  end else
    Result := QuitMessageError;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  Result := Restarted;
end;

