; -- CodeExample1.iss --
;
; This script shows various things you can achieve using a [Code] section.

[Setup]
AppName=My Program
AppVersion=1.5
WizardStyle=modern
DisableWelcomePage=no
DefaultDirName={code:MyConst}\My Program
DefaultGroupName=My Program
UninstallDisplayIcon={app}\MyProg.exe
InfoBeforeFile=Readme.txt
OutputDir=userdocs:Inno Setup Examples Output

[Files]
Source: "MyProg.exe"; DestDir: "{app}"; Check: MyProgCheck; BeforeInstall: BeforeMyProgInstall('MyProg.exe'); AfterInstall: AfterMyProgInstall('MyProg.exe')
Source: "MyProg.chm"; DestDir: "{app}"; Check: MyProgCheck; BeforeInstall: BeforeMyProgInstall('MyProg.chm'); AfterInstall: AfterMyProgInstall('MyProg.chm')
Source: "Readme.txt"; DestDir: "{app}"; Flags: isreadme

[Icons]
Name: "{group}\My Program"; Filename: "{app}\MyProg.exe"

[Code]
var
  MyProgChecked: Boolean;
  MyProgCheckResult: Boolean;
  FinishedInstall: Boolean;

function InitializeSetup(): Boolean;
begin
  Log('InitializeSetup called');
  Result := MsgBox('InitializeSetup:' #13#13 'Setup is initializing. Do you really want to start setup?', mbConfirmation, MB_YESNO) = idYes;
  if Result = False then
    MsgBox('InitializeSetup:' #13#13 'Ok, bye bye.', mbInformation, MB_OK);
end;

procedure InitializeWizard;
begin
  Log('InitializeWizard called');
end;

<event('InitializeWizard')>
procedure InitializeWizard2;
begin
  Log('InitializeWizard2 called');
end;

procedure DeinitializeSetup();
var
  FileName: String;
  ResultCode: Integer;
begin
  Log('DeinitializeSetup called');
  if FinishedInstall then begin
    if MsgBox('DeinitializeSetup:' #13#13 'The [Code] scripting demo has finished. Do you want to uninstall My Program now?', mbConfirmation, MB_YESNO) = idYes then begin
      FileName := ExpandConstant('{uninstallexe}');
      if not Exec(FileName, '', '', SW_SHOWNORMAL, ewNoWait, ResultCode) then
        MsgBox('DeinitializeSetup:' #13#13 'Execution of ''' + FileName + ''' failed. ' + SysErrorMessage(ResultCode) + '.', mbError, MB_OK);
    end else
      MsgBox('DeinitializeSetup:' #13#13 'Ok, bye bye.', mbInformation, MB_OK);
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  Log('CurStepChanged(' + IntToStr(Ord(CurStep)) + ') called');
  if CurStep = ssPostInstall then
    FinishedInstall := True;
end;

procedure CurInstallProgressChanged(CurProgress, MaxProgress: Integer);
begin
  Log('CurInstallProgressChanged(' + IntToStr(CurProgress) + ', ' + IntToStr(MaxProgress) + ') called');
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  ResultCode: Integer;
begin
  Log('NextButtonClick(' + IntToStr(CurPageID) + ') called');
  case CurPageID of
    wpSelectDir:
      MsgBox('NextButtonClick:' #13#13 'You selected: ''' + WizardDirValue + '''.', mbInformation, MB_OK);
    wpSelectProgramGroup:
      MsgBox('NextButtonClick:' #13#13 'You selected: ''' + WizardGroupValue + '''.', mbInformation, MB_OK);
    wpReady:
      begin
        if MsgBox('NextButtonClick:' #13#13 'Using the script, files can be extracted before the installation starts. For example we could extract ''MyProg.exe'' now and run it.' #13#13 'Do you want to do this?', mbConfirmation, MB_YESNO) = idYes then begin
          ExtractTemporaryFile('myprog.exe');
          if not ExecAsOriginalUser(ExpandConstant('{tmp}\myprog.exe'), '', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode) then
            MsgBox('NextButtonClick:' #13#13 'The file could not be executed. ' + SysErrorMessage(ResultCode) + '.', mbError, MB_OK);
        end;
        BringToFrontAndRestore();
        MsgBox('NextButtonClick:' #13#13 'The normal installation will now start.', mbInformation, MB_OK);
      end;
  end;

  Result := True;
end;

function BackButtonClick(CurPageID: Integer): Boolean;
begin
  Log('BackButtonClick(' + IntToStr(CurPageID) + ') called');
  Result := True;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  Log('ShouldSkipPage(' + IntToStr(PageID) + ') called');
  { Skip wpInfoBefore page; show all others }
  case PageID of
    wpInfoBefore:
      Result := True;
  else
    Result := False;
  end;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  Log('CurPageChanged(' + IntToStr(CurPageID) + ') called');
  case CurPageID of
    wpWelcome:
      MsgBox('CurPageChanged:' #13#13 'Welcome to the [Code] scripting demo. This demo will show you some possibilities of the scripting support.' #13#13 'The scripting engine used is RemObjects Pascal Script by Carlo Kok. See http://www.remobjects.com/ps for more information.', mbInformation, MB_OK);
    wpFinished:
      MsgBox('CurPageChanged:' #13#13 'Welcome to final page of this demo. Click Finish to exit.', mbInformation, MB_OK);
  end;
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
begin
  Log('PrepareToInstall() called');
  if MsgBox('PrepareToInstall:' #13#13 'Setup is preparing to install. Using the script you can install any prerequisites, abort Setup on errors, and request restarts. Do you want to return an error now?', mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = idYes then
    Result := '<your error text here>.'
  else
    Result := '';
end;

function MyProgCheck(): Boolean;
begin
  Log('MyProgCheck() called');
  if not MyProgChecked then begin
    MyProgCheckResult := MsgBox('MyProgCheck:' #13#13 'Using the script you can decide at runtime to include or exclude files from the installation. Do you want to install MyProg.exe and MyProg.chm to ' + ExtractFilePath(CurrentFileName) + '?', mbConfirmation, MB_YESNO) = idYes;
    MyProgChecked := True;
  end;
  Result := MyProgCheckResult;
end;

procedure BeforeMyProgInstall(S: String);
begin
  Log('BeforeMyProgInstall(''' + S + ''') called');
  MsgBox('BeforeMyProgInstall:' #13#13 'Setup is now going to install ' + S + ' as ' + CurrentFileName + '.', mbInformation, MB_OK);
end;

procedure AfterMyProgInstall(S: String);
begin
  Log('AfterMyProgInstall(''' + S + ''') called');
  MsgBox('AfterMyProgInstall:' #13#13 'Setup just installed ' + S + ' as ' + CurrentFileName + '.', mbInformation, MB_OK);
end;

function MyConst(Param: String): String;
begin
  Log('MyConst(''' + Param + ''') called');
  Result := ExpandConstant('{autopf}');
end;

