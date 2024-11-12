; -- CodeDlg.iss --
;
; This script shows how to insert custom wizard pages into Setup and how to handle
; these pages. Furthermore it shows how to 'communicate' between the [Code] section
; and the regular Inno Setup sections using {code:...} constants. Finally it shows
; how to customize the settings text on the 'Ready To Install' page.

[Setup]
AppName=My Program
AppVersion=1.5
WizardStyle=modern
DisableWelcomePage=no
DefaultDirName={autopf}\My Program
DisableProgramGroupPage=yes
UninstallDisplayIcon={app}\MyProg.exe
OutputDir=userdocs:Inno Setup Examples Output
PrivilegesRequired=lowest

[Files]
Source: "MyProg.exe"; DestDir: "{app}"
Source: "MyProg.chm"; DestDir: "{app}"
Source: "Readme.txt"; DestDir: "{app}"; Flags: isreadme

[Registry]
Root: HKA; Subkey: "Software\My Company"; Flags: uninsdeletekeyifempty
Root: HKA; Subkey: "Software\My Company\My Program"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\My Company\My Program\Settings"; ValueType: string; ValueName: "Name"; ValueData: "{code:GetUser|Name}"
Root: HKA; Subkey: "Software\My Company\My Program\Settings"; ValueType: string; ValueName: "Company"; ValueData: "{code:GetUser|Company}"
Root: HKA; Subkey: "Software\My Company\My Program\Settings"; ValueType: string; ValueName: "DataDir"; ValueData: "{code:GetDataDir}"
; etc.

[Dirs]
Name: {code:GetDataDir}; Flags: uninsneveruninstall

[Code]
var
  UserPage: TInputQueryWizardPage;
  UsagePage: TInputOptionWizardPage;
  LightMsgPage: TOutputMsgWizardPage;
  KeyPage: TInputQueryWizardPage;
  ProgressPage: TOutputProgressWizardPage;
  DataDirPage: TInputDirWizardPage;
  
procedure InitializeWizard;
begin
  { Create the pages }
  
  UserPage := CreateInputQueryPage(wpWelcome,
    'Personal Information', 'Who are you?',
    'Please specify your name and the company for whom you work, then click Next.');
  UserPage.Add('Name:', False);
  UserPage.Add('Company:', False);

  UsagePage := CreateInputOptionPage(UserPage.ID,
    'Personal Information', 'How will you use My Program?',
    'Please specify how you would like to use My Program, then click Next.',
    True, False);
  UsagePage.Add('Light mode (no ads, limited functionality)');
  UsagePage.Add('Sponsored mode (with ads, full functionality)');
  UsagePage.Add('Paid mode (no ads, full functionality)');

  LightMsgPage := CreateOutputMsgPage(UsagePage.ID,
    'Personal Information', 'How will you use My Program?',
    'Note: to enjoy all features My Program can offer and to support its development, ' +
    'you can switch to sponsored or paid mode at any time by selecting ''Usage Mode'' ' +
    'in the ''Help'' menu of My Program after the installation has completed.'#13#13 +
    'Click Back if you want to change your usage mode setting now, or click Next to ' +
    'continue with the installation.');

  KeyPage := CreateInputQueryPage(UsagePage.ID,
    'Personal Information', 'What''s your registration key?',
    'Please specify your registration key and click Next to continue. If you don''t ' +
    'have a valid registration key, click Back to choose a different usage mode.');
  KeyPage.Add('Registration key:', False);

  ProgressPage := CreateOutputProgressPage('Personal Information',
    'What''s your registration key?');

  DataDirPage := CreateInputDirPage(wpSelectDir,
    'Select Personal Data Directory', 'Where should personal data files be installed?',
    'Select the folder in which Setup should install personal data files, then click Next.',
    False, '');
  DataDirPage.Add('');

  { Set default values, using settings that were stored last time if possible }

  UserPage.Values[0] := GetPreviousData('Name', ExpandConstant('{sysuserinfoname}'));
  UserPage.Values[1] := GetPreviousData('Company', ExpandConstant('{sysuserinfoorg}'));

  case GetPreviousData('UsageMode', '') of
    'light': UsagePage.SelectedValueIndex := 0;
    'sponsored': UsagePage.SelectedValueIndex := 1;
    'paid': UsagePage.SelectedValueIndex := 2;
  else
    UsagePage.SelectedValueIndex := 1;
  end;

  DataDirPage.Values[0] := GetPreviousData('DataDir', '');
end;

procedure RegisterPreviousData(PreviousDataKey: Integer);
var
  UsageMode: String;
begin
  { Store the settings so we can restore them next time }
  SetPreviousData(PreviousDataKey, 'Name', UserPage.Values[0]);
  SetPreviousData(PreviousDataKey, 'Company', UserPage.Values[1]);
  case UsagePage.SelectedValueIndex of
    0: UsageMode := 'light';
    1: UsageMode := 'sponsored';
    2: UsageMode := 'paid';
  end;
  SetPreviousData(PreviousDataKey, 'UsageMode', UsageMode);
  SetPreviousData(PreviousDataKey, 'DataDir', DataDirPage.Values[0]);
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  { Skip pages that shouldn't be shown }
  if (PageID = LightMsgPage.ID) and (UsagePage.SelectedValueIndex <> 0) then
    Result := True
  else if (PageID = KeyPage.ID) and (UsagePage.SelectedValueIndex <> 2) then
    Result := True
  else
    Result := False;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  I: Integer;
begin
  { Validate certain pages before allowing the user to proceed }
  if CurPageID = UserPage.ID then begin
    if UserPage.Values[0] = '' then begin
      MsgBox('You must enter your name.', mbError, MB_OK);
      Result := False;
    end else begin
      if DataDirPage.Values[0] = '' then
        DataDirPage.Values[0] := 'C:\' + UserPage.Values[0];
      Result := True;
    end;
  end else if CurPageID = KeyPage.ID then begin
    { Just to show how 'OutputProgress' pages work.
      Always use a try..finally between the Show and Hide calls as shown below. }
    ProgressPage.SetText('Authorizing registration key...', '');
    ProgressPage.SetProgress(0, 0);
    ProgressPage.Show;
    try
      for I := 0 to 10 do begin
        ProgressPage.SetProgress(I, 10);
        Sleep(100);
      end;
    finally
      ProgressPage.Hide;
    end;
    if GetSHA1OfString('codedlg' + KeyPage.Values[0]) = '8013f310d340dab18a0d0cda2b5b115d2dcd97e4' then
      Result := True
    else begin
      MsgBox('You must enter a valid registration key. (Hint: The key is "inno".)', mbError, MB_OK);
      Result := False;
    end;
  end else
    Result := True;
end;

function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo,
  MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: String): String;
var
  S: String;
begin
  { Fill the 'Ready Memo' with the normal settings and the custom settings }
  S := '';
  S := S + 'Personal Information:' + NewLine;
  S := S + Space + UserPage.Values[0] + NewLine;
  if UserPage.Values[1] <> '' then
    S := S + Space + UserPage.Values[1] + NewLine;
  S := S + NewLine;
  
  S := S + 'Usage Mode:' + NewLine + Space;
  case UsagePage.SelectedValueIndex of
    0: S := S + 'Light mode';
    1: S := S + 'Sponsored mode';
    2: S := S + 'Paid mode';
  end;
  S := S + NewLine + NewLine;
  
  S := S + MemoDirInfo + NewLine;
  S := S + Space + DataDirPage.Values[0] + ' (personal data files)' + NewLine;

  Result := S;
end;

function GetUser(Param: String): String;
begin
  { Return a user value }
  { Could also be split into separate GetUserName and GetUserCompany functions }
  if Param = 'Name' then
    Result := UserPage.Values[0]
  else if Param = 'Company' then
    Result := UserPage.Values[1];
end;

function GetDataDir(Param: String): String;
begin
  { Return the selected DataDir }
  Result := DataDirPage.Values[0];
end;
