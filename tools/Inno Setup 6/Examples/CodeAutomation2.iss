; -- CodeAutomation2.iss --
;
; This script shows how to use IUnknown based COM Automation objects.
;
; Note: some unneeded interface functions which had special types have been replaced
; by dummies to avoid having to define those types. Do not remove these dummies as
; that would change the function indices which is bad. Also, not all function
; prototypes have been tested, only those used by this example.

[Setup]
AppName=My Program
AppVersion=1.5
WizardStyle=modern
DisableWelcomePage=no
CreateAppDir=no
DisableProgramGroupPage=yes
DefaultGroupName=My Program
UninstallDisplayIcon={app}\MyProg.exe
OutputDir=userdocs:Inno Setup Examples Output

[Code]

{--- IShellLink ---}

const
  CLSID_ShellLink = '{00021401-0000-0000-C000-000000000046}';

type
  IShellLinkW = interface(IUnknown)
    '{000214F9-0000-0000-C000-000000000046}'
    procedure Dummy;
    procedure Dummy2;
    procedure Dummy3;
    function GetDescription(pszName: String; cchMaxName: Integer): HResult;
    function SetDescription(pszName: String): HResult;
    function GetWorkingDirectory(pszDir: String; cchMaxPath: Integer): HResult;
    function SetWorkingDirectory(pszDir: String): HResult;
    function GetArguments(pszArgs: String; cchMaxPath: Integer): HResult;
    function SetArguments(pszArgs: String): HResult;
    function GetHotkey(var pwHotkey: Word): HResult;
    function SetHotkey(wHotkey: Word): HResult;
    function GetShowCmd(out piShowCmd: Integer): HResult;
    function SetShowCmd(iShowCmd: Integer): HResult;
    function GetIconLocation(pszIconPath: String; cchIconPath: Integer;
      out piIcon: Integer): HResult;
    function SetIconLocation(pszIconPath: String; iIcon: Integer): HResult;
    function SetRelativePath(pszPathRel: String; dwReserved: DWORD): HResult;
    function Resolve(Wnd: HWND; fFlags: DWORD): HResult;
    function SetPath(pszFile: String): HResult;
  end;

  IPersist = interface(IUnknown)
    '{0000010C-0000-0000-C000-000000000046}'
    function GetClassID(var classID: TGUID): HResult;
  end;

  IPersistFile = interface(IPersist)
    '{0000010B-0000-0000-C000-000000000046}'
    function IsDirty: HResult;
    function Load(pszFileName: String; dwMode: Longint): HResult;
    function Save(pszFileName: String; fRemember: BOOL): HResult;
    function SaveCompleted(pszFileName: String): HResult;
    function GetCurFile(out pszFileName: String): HResult;
  end;

procedure IShellLinkButtonOnClick(Sender: TObject);
var
  Obj: IUnknown;
  SL: IShellLinkW;
  PF: IPersistFile;
begin
  { Create the main ShellLink COM Automation object }
  Obj := CreateComObject(StringToGuid(CLSID_ShellLink));

  { Set the shortcut properties }
  SL := IShellLinkW(Obj);
  OleCheck(SL.SetPath(ExpandConstant('{srcexe}')));
  OleCheck(SL.SetArguments(''));
  OleCheck(SL.SetShowCmd(SW_SHOWNORMAL));

  { Save the shortcut }
  PF := IPersistFile(Obj);
  OleCheck(PF.Save(ExpandConstant('{autodesktop}\CodeAutomation2 Test.lnk'), True));

  MsgBox('Saved a shortcut named ''CodeAutomation2 Test'' on the desktop.', mbInformation, mb_Ok);
end;

{--- ITaskScheduler ---}

const
  CLSID_TaskScheduler = '{148BD52A-A2AB-11CE-B11F-00AA00530503}';
  CLSID_Task = '{148BD520-A2AB-11CE-B11F-00AA00530503}';
  IID_Task = '{148BD524-A2AB-11CE-B11F-00AA00530503}';
  TASK_TIME_TRIGGER_DAILY = 1;

type
  ITaskScheduler = interface(IUnknown)
    '{148BD527-A2AB-11CE-B11F-00AA00530503}'
    function SetTargetComputer(pwszComputer: String): HResult;
    function GetTargetComputer(out ppwszComputer: String): HResult;
    procedure Dummy;
    function Activate(pwszName: String; var riid: TGUID; out ppUnk: IUnknown): HResult;
    function Delete(pwszName: String): HResult;
    function NewWorkItem(pwszTaskName: String; var rclsid: TGUID; var riid: TGUID; out ppUnk: IUnknown): HResult;
    procedure Dummy2;
    function IsOfType(pwszName: String; var riid: TGUID): HResult;
  end;

  TDaily = record
    DaysInterval: WORD;
  end;

  TWeekly = record
    WeeksInterval: WORD;
    rgfDaysOfTheWeek: WORD;
  end;

  TMonthlyDate = record
    rgfDays: DWORD;
    rgfMonths: WORD;
  end;

  TMonthlyDow = record
    wWhichWeek: WORD;
    rgfDaysOfTheWeek: WORD;
    rgfMonths: WORD;
  end;

  { ROPS doesn't support unions, replace this with the type you need and adjust padding (end size has to be 48). }
  TTriggerTypeUnion = record
    Daily: TDaily;
    Pad1: WORD;
    Pad2: WORD;
    Pad3: WORD;
  end;

  TTaskTrigger = record
    cbTriggerSize: WORD;
    Reserved1: WORD;
    wBeginYear: WORD;
    wBeginMonth: WORD;
    wBeginDay: WORD;
    wEndYear: WORD;
    wEndMonth: WORD;
    wEndDay: WORD;
    wStartHour: WORD;
    wStartMinute: WORD;
    MinutesDuration: DWORD;
    MinutesInterval: DWORD;
    rgFlags: DWORD;
    TriggerType: DWORD;
    Type_: TTriggerTypeUnion;
    Reserved2: WORD;
    wRandomMinutesInterval: WORD;
  end;

  ITaskTrigger = interface(IUnknown)
    '{148BD52B-A2AB-11CE-B11F-00AA00530503}'
    function SetTrigger(var pTrigger: TTaskTrigger): HResult;
    function GetTrigger(var pTrigger: TTaskTrigger): HResult;
    function GetTriggerString(var ppwszTrigger: String): HResult;
  end;

  IScheduledWorkItem = interface(IUnknown)
    '{A6B952F0-A4B1-11D0-997D-00AA006887EC}'
    function CreateTrigger(out piNewTrigger: Word; out ppTrigger: ITaskTrigger): HResult;
    function DeleteTrigger(iTrigger: Word): HResult;
    function GetTriggerCount(out pwCount: Word): HResult;
    function GetTrigger(iTrigger: Word; var ppTrigger: ITaskTrigger): HResult;
    function GetTriggerString(iTrigger: Word; out ppwszTrigger: String): HResult;
    procedure Dummy;
    procedure Dummy2;
    function SetIdleWait(wIdleMinutes: Word; wDeadlineMinutes: Word): HResult;
    function GetIdleWait(out pwIdleMinutes: Word; out pwDeadlineMinutes: Word): HResult;
    function Run: HResult;
    function Terminate: HResult;
    function EditWorkItem(hParent: HWND; dwReserved: DWORD): HResult;
    procedure Dummy3;
    function GetStatus(out phrStatus: HResult): HResult;
    function GetExitCode(out pdwExitCode: DWORD): HResult;
    function SetComment(pwszComment: String): HResult;
    function GetComment(out ppwszComment: String): HResult;
    function SetCreator(pwszCreator: String): HResult;
    function GetCreator(out ppwszCreator: String): HResult;
    function SetWorkItemData(cbData: Word; var rgbData: Byte): HResult;
    function GetWorkItemData(out pcbData: Word; out prgbData: Byte): HResult;
    function SetErrorRetryCount(wRetryCount: Word): HResult;
    function GetErrorRetryCount(out pwRetryCount: Word): HResult;
    function SetErrorRetryInterval(wRetryInterval: Word): HResult;
    function GetErrorRetryInterval(out pwRetryInterval: Word): HResult;
    function SetFlags(dwFlags: DWORD): HResult;
    function GetFlags(out pdwFlags: DWORD): HResult;
    function SetAccountInformation(pwszAccountName: String; pwszPassword: String): HResult;
    function GetAccountInformation(out ppwszAccountName: String): HResult;
  end;

  ITask = interface(IScheduledWorkItem)
    '{148BD524-A2AB-11CE-B11F-00AA00530503}'
    function SetApplicationName(pwszApplicationName: String): HResult;
    function GetApplicationName(out ppwszApplicationName: String): HResult;
    function SetParameters(pwszParameters: String): HResult;
    function GetParameters(out ppwszParameters: String): HResult;
    function SetWorkingDirectory(pwszWorkingDirectory: String): HResult;
    function GetWorkingDirectory(out ppwszWorkingDirectory: String): HResult;
    function SetPriority(dwPriority: DWORD): HResult;
    function GetPriority(out pdwPriority: DWORD): HResult;
    function SetTaskFlags(dwFlags: DWORD): HResult;
    function GetTaskFlags(out pdwFlags: DWORD): HResult;
    function SetMaxRunTime(dwMaxRunTimeMS: DWORD): HResult;
    function GetMaxRunTime(out pdwMaxRunTimeMS: DWORD): HResult;
  end;


procedure ITaskSchedulerButtonOnClick(Sender: TObject);
var
  Obj, Obj2: IUnknown;
  TaskScheduler: ITaskScheduler;
  G1, G2: TGUID;
  Task: ITask;
  iNewTrigger: WORD;
  TaskTrigger: ITaskTrigger;
  TaskTrigger2: TTaskTrigger;
  PF: IPersistFile;
begin
  { Create the main TaskScheduler COM Automation object }
  Obj := CreateComObject(StringToGuid(CLSID_TaskScheduler));

  { Create the Task COM automation object }
  TaskScheduler := ITaskScheduler(Obj);
  G1 := StringToGuid(CLSID_Task);
  G2 := StringToGuid(IID_Task);
  //This will throw an exception if the task already exists
  OleCheck(TaskScheduler.NewWorkItem('CodeAutomation2 Test', G1, G2, Obj2));

  { Set the task properties }
  Task := ITask(Obj2);
  OleCheck(Task.SetComment('CodeAutomation2 Test Comment'));
  OleCheck(Task.SetApplicationName(ExpandConstant('{srcexe}')));

  { Set the task account information }
  //Uncomment the following and provide actual user info to get a runnable task
  //OleCheck(Task.SetAccountInformation('username', 'password'));

  { Create the TaskTrigger COM automation object }
  OleCheck(Task.CreateTrigger(iNewTrigger, TaskTrigger));

  { Set the task trigger properties }
  with TaskTrigger2 do begin
    cbTriggerSize := SizeOf(TaskTrigger2);
    wBeginYear := 2009;
    wBeginMonth := 10;
    wBeginDay := 1;
    wStartHour := 12;
    TriggerType := TASK_TIME_TRIGGER_DAILY;
    Type_.Daily.DaysInterval := 1;
  end;
  OleCheck(TaskTrigger.SetTrigger(TaskTrigger2));

  { Save the task }
  PF := IPersistFile(Obj2);
  OleCheck(PF.Save('', True));

  MsgBox('Created a daily task named named ''CodeAutomation2 Test''.' + #13#13 + 'Note: Account information not set so the task won''t actually run, uncomment the SetAccountInfo call and provide actual user info to get a runnable task.', mbInformation, mb_Ok);
end;

{---}

procedure CreateButton(ALeft, ATop: Integer; ACaption: String; ANotifyEvent: TNotifyEvent);
begin
  with TNewButton.Create(WizardForm) do begin
    Left := ALeft;
    Top := ATop;
    Width := (WizardForm.CancelButton.Width*3)/2;
    Height := WizardForm.CancelButton.Height;
    Caption := ACaption;
    OnClick := ANotifyEvent;
    Parent := WizardForm.WelcomePage;
  end;
end;

procedure InitializeWizard();
var
  Left, LeftInc, Top, TopInc: Integer;
begin
  Left := WizardForm.WelcomeLabel2.Left;
  LeftInc := (WizardForm.CancelButton.Width*3)/2 + ScaleX(8);
  TopInc := WizardForm.CancelButton.Height + ScaleY(8);
  Top := WizardForm.WelcomeLabel2.Top + WizardForm.WelcomeLabel2.Height - 4*TopInc;

  CreateButton(Left, Top, '&IShellLink...', @IShellLinkButtonOnClick);
  Top := Top + TopInc;
  CreateButton(Left, Top, '&ITaskScheduler...', @ITaskSchedulerButtonOnClick);
end;





