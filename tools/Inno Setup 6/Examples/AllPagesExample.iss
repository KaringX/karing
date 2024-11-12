; -- AllPagesExample.iss --
; Same as Example1.iss, but shows all the wizard pages Setup may potentially display

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

DisableWelcomePage=no
LicenseFile=license.txt
#define Password 'password'
Password={#Password}
InfoBeforeFile=readme.txt
UserInfoPage=yes
PrivilegesRequired=lowest
DisableDirPage=no
DisableProgramGroupPage=no
InfoAfterFile=readme.txt

[Files]
Source: "MyProg.exe"; DestDir: "{app}"
Source: "MyProg.chm"; DestDir: "{app}"
Source: "Readme.txt"; DestDir: "{app}"; Flags: isreadme

[Icons]
Name: "{group}\My Program"; Filename: "{app}\MyProg.exe"

[Components]
Name: "component"; Description: "Component";

[Tasks]
Name: "task"; Description: "Task";

[Code]
var
  OutputProgressWizardPage: TOutputProgressWizardPage;
  OutputMarqueeProgressWizardPage: TOutputMarqueeProgressWizardPage;
  OutputProgressWizardPagesAfterID: Integer;

procedure InitializeWizard;
var
  InputQueryWizardPage: TInputQueryWizardPage;
  InputOptionWizardPage: TInputOptionWizardPage;
  InputDirWizardPage: TInputDirWizardPage;
  InputFileWizardPage: TInputFileWizardPage;
  OutputMsgWizardPage: TOutputMsgWizardPage;
  OutputMsgMemoWizardPage: TOutputMsgMemoWizardPage;
  AfterID: Integer;
begin
  WizardForm.LicenseAcceptedRadio.Checked := True;
  WizardForm.PasswordEdit.Text := '{#Password}';
  WizardForm.UserInfoNameEdit.Text := 'Username';

  AfterID := wpSelectTasks;
  
  AfterID := CreateCustomPage(AfterID, 'CreateCustomPage', 'ADescription').ID;
  
  InputQueryWizardPage := CreateInputQueryPage(AfterID, 'CreateInputQueryPage', 'ADescription', 'ASubCaption');
  InputQueryWizardPage.Add('&APrompt:', False);
  AfterID := InputQueryWizardPage.ID;
  
  InputOptionWizardPage := CreateInputOptionPage(AfterID, 'CreateInputOptionPage', 'ADescription', 'ASubCaption', False, False);
  InputOptionWizardPage.Add('&AOption');
  AfterID := InputOptionWizardPage.ID;

  InputDirWizardPage := CreateInputDirPage(AfterID, 'CreateInputDirPage', 'ADescription', 'ASubCaption', False, 'ANewFolderName');
  InputDirWizardPage.Add('&APrompt:');
  InputDirWizardPage.Values[0] := 'C:\';
  AfterID := InputDirWizardPage.ID;

  InputFileWizardPage := CreateInputFilePage(AfterID, 'CreateInputFilePage', 'ADescription', 'ASubCaption');
  InputFileWizardPage.Add('&APrompt:', 'Executable files|*.exe|All files|*.*', '.exe');
  AfterID := InputFileWizardPage.ID;

  OutputMsgWizardPage := CreateOutputMsgPage(AfterID, 'CreateOutputMsgPage', 'ADescription', 'AMsg');
  AfterID := OutputMsgWizardPage.ID;

  OutputMsgMemoWizardPage := CreateOutputMsgMemoPage(AfterID, 'CreateOutputMsgMemoPage', 'ADescription', 'ASubCaption', 'AMsg');
  AfterID := OutputMsgMemoWizardPage.ID;

  OutputProgressWizardPage := CreateOutputProgressPage('CreateOutputProgressPage', 'ADescription');
  OutputMarqueeProgressWizardPage := CreateOutputMarqueeProgressPage('CreateOutputMarqueeProgressPage', 'ADescription');
  OutputProgressWizardPagesAfterID := AfterID;

  { See CodeDownloadFiles.iss for a CreateDownloadPage example }
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  I, Max: Integer;
begin
  if CurPageID = OutputProgressWizardPagesAfterID then begin
    try
      Max := 50;
      for I := 0 to Max do begin
        OutputProgressWizardPage.SetProgress(I, Max);
        if I = 0 then
          OutputProgressWizardPage.Show;
        Sleep(2000 div Max);
      end;
    finally
      OutputProgressWizardPage.Hide;
    end;
    try
      Max := 50;
      OutputMarqueeProgressWizardPage.Show;
      for I := 0 to Max do begin
        OutputMarqueeProgressWizardPage.Animate;
        Sleep(2000 div Max);
      end;
    finally
      OutputMarqueeProgressWizardPage.Hide;
    end;
  end;
  Result := True;
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
begin
  if SuppressibleMsgBox('Do you want to stop Setup at the Preparing To Install wizard page?', mbConfirmation, MB_YESNO, IDNO) = IDYES then
    Result := 'Stopped by user';
end;