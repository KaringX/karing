; -- CodeAutomation.iss --
;
; This script shows how to use IDispatch based COM Automation objects.

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

{--- SQLDMO ---}

const
  SQLServerName = 'localhost';
  SQLDMOGrowth_MB = 0;

procedure SQLDMOButtonOnClick(Sender: TObject);
var
  SQLServer, Database, DBFile, LogFile: Variant;
  IDColumn, NameColumn, Table: Variant;
begin
  if MsgBox('Setup will now connect to Microsoft SQL Server ''' + SQLServerName + ''' via a trusted connection and create a database. Do you want to continue?', mbInformation, mb_YesNo) = idNo then
    Exit;

  { Create the main SQLDMO COM Automation object }

  try
    SQLServer := CreateOleObject('SQLDMO.SQLServer');
  except
    RaiseException('Please install Microsoft SQL server connectivity tools first.'#13#13'(Error ''' + GetExceptionMessage + ''' occurred)');
  end;

  { Connect to the Microsoft SQL Server }

  SQLServer.LoginSecure := True;
  SQLServer.Connect(SQLServerName);
  
  MsgBox('Connected to Microsoft SQL Server ''' + SQLServerName + '''.', mbInformation, mb_Ok);

  { Setup a database }

  Database := CreateOleObject('SQLDMO.Database');
  Database.Name := 'Inno Setup';
  
  DBFile := CreateOleObject('SQLDMO.DBFile');
  DBFile.Name := 'ISData1';
  DBFile.PhysicalName := 'c:\program files\microsoft sql server\mssql\data\IS.mdf';
  DBFile.PrimaryFile := True;
  DBFile.FileGrowthType := SQLDMOGrowth_MB;
  DBFile.FileGrowth := 1;

  Database.FileGroups.Item('PRIMARY').DBFiles.Add(DBFile);

  LogFile := CreateOleObject('SQLDMO.LogFile');
  LogFile.Name := 'ISLog1';
  LogFile.PhysicalName := 'c:\program files\microsoft sql server\mssql\data\IS.ldf';

  Database.TransactionLog.LogFiles.Add(LogFile);
  
  { Add the database }

  SQLServer.Databases.Add(Database);

  MsgBox('Added database ''' + Database.Name + '''.', mbInformation, mb_Ok);

  { Setup some columns }

  IDColumn := CreateOleObject('SQLDMO.Column');
  IDColumn.Name := 'id';
  IDColumn.Datatype := 'int';
  IDColumn.Identity := True;
  IDColumn.IdentityIncrement := 1;
  IDColumn.IdentitySeed := 1;
  IDColumn.AllowNulls := False;

  NameColumn := CreateOleObject('SQLDMO.Column');
  NameColumn.Name := 'name';
  NameColumn.Datatype := 'varchar';
  NameColumn.Length := '64';
  NameColumn.AllowNulls := False;
  
  { Setup a table }

  Table := CreateOleObject('SQLDMO.Table');
  Table.Name := 'authors';
  Table.FileGroup := 'PRIMARY';
  
  { Add the columns and the table }
  
  Table.Columns.Add(IDColumn);
  Table.Columns.Add(NameColumn);

  Database.Tables.Add(Table);

  MsgBox('Added table ''' + Table.Name + '''.', mbInformation, mb_Ok);
end;

{--- IIS ---}

const
  IISServerName = 'localhost';
  IISServerNumber = '1';
  IISURL = 'http://127.0.0.1';

procedure IISButtonOnClick(Sender: TObject);
var
  IIS, WebSite, WebServer, WebRoot, VDir: Variant;
  ErrorCode: Integer;
begin
  if MsgBox('Setup will now connect to Microsoft IIS Server ''' + IISServerName + ''' and create a virtual directory. Do you want to continue?', mbInformation, mb_YesNo) = idNo then
    Exit;

  { Create the main IIS COM Automation object }

  try
    IIS := CreateOleObject('IISNamespace');
  except
    RaiseException('Please install Microsoft IIS first.'#13#13'(Error ''' + GetExceptionMessage + ''' occurred)');
  end;

  { Connect to the IIS server }

  WebSite := IIS.GetObject('IIsWebService', IISServerName + '/w3svc');
  WebServer := WebSite.GetObject('IIsWebServer', IISServerNumber);
  WebRoot := WebServer.GetObject('IIsWebVirtualDir', 'Root');

  { (Re)create a virtual dir }

  try
    WebRoot.Delete('IIsWebVirtualDir', 'innosetup');
    WebRoot.SetInfo();
  except
  end;

  VDir := WebRoot.Create('IIsWebVirtualDir', 'innosetup');
  VDir.AccessRead := True;
  VDir.AppFriendlyName := 'Inno Setup';
  VDir.Path := 'C:\inetpub\innosetup';
  VDir.AppCreate(True);
  VDir.SetInfo();

  MsgBox('Created virtual directory ''' + VDir.Path + '''.', mbInformation, mb_Ok);

  { Write some html and display it }

  if MsgBox('Setup will now write some HTML and display the virtual directory. Do you want to continue?', mbInformation, mb_YesNo) = idNo then
    Exit;

  ForceDirectories(VDir.Path);
  SaveStringToFile(VDir.Path + '/index.htm', '<html><body>Inno Setup rocks!</body></html>', False);
  if not ShellExecAsOriginalUser('open', IISURL + '/innosetup/index.htm', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode) then
    MsgBox('Can''t display the created virtual directory: ''' + SysErrorMessage(ErrorCode) + '''.', mbError, mb_Ok);
end;

{--- MSXML ---}

const
  XMLURL = 'http://jrsoftware.github.io/issrc/ISHelp/isxfunc.xml';
  XMLFileName = 'isxfunc.xml';
  XMLFileName2 = 'isxfuncmodified.xml';

procedure MSXMLButtonOnClick(Sender: TObject);
var
  XMLHTTP, XMLDoc, NewNode, RootNode: Variant;
  Path: String;
begin
  if MsgBox('Setup will now use MSXML to download XML file ''' + XMLURL + ''' and save it to disk.'#13#13'Setup will then load, modify and save this XML file. Do you want to continue?', mbInformation, mb_YesNo) = idNo then
    Exit;
    
  { Create the main MSXML COM Automation object }

  try
    XMLHTTP := CreateOleObject('MSXML2.ServerXMLHTTP');
  except
    RaiseException('Please install MSXML first.'#13#13'(Error ''' + GetExceptionMessage + ''' occurred)');
  end;
  
  { Download the XML file }

  XMLHTTP.Open('GET', XMLURL, False);
  XMLHTTP.Send();

  Path := ExpandConstant('{src}\');
  XMLHTTP.responseXML.Save(Path + XMLFileName);

  MsgBox('Downloaded the XML file and saved it as ''' + XMLFileName + '''.', mbInformation, mb_Ok);

  { Load the XML File }

  XMLDoc := CreateOleObject('MSXML2.DOMDocument');
  XMLDoc.async := False;
  XMLDoc.resolveExternals := False;
  XMLDoc.load(Path + XMLFileName);
  if XMLDoc.parseError.errorCode <> 0 then
    RaiseException('Error on line ' + IntToStr(XMLDoc.parseError.line) + ', position ' + IntToStr(XMLDoc.parseError.linepos) + ': ' + XMLDoc.parseError.reason);
  
  MsgBox('Loaded the XML file.', mbInformation, mb_Ok);

  { Modify the XML document }
  
  NewNode := XMLDoc.createElement('isxdemo');
  RootNode := XMLDoc.documentElement;
  RootNode.appendChild(NewNode);
  RootNode.lastChild.text := 'Hello, World';

  { Save the XML document }

  XMLDoc.Save(Path + XMLFileName2);

  MsgBox('Saved the modified XML as ''' + XMLFileName2 + '''.', mbInformation, mb_Ok);
end;


{--- Word ---}

procedure WordButtonOnClick(Sender: TObject);
var
  Word: Variant;
begin
  if MsgBox('Setup will now check whether Microsoft Word is running. Do you want to continue?', mbInformation, mb_YesNo) = idNo then
    Exit;

  { Try to get an active Word COM Automation object }
  
  try
    Word := GetActiveOleObject('Word.Application');
  except
  end;
  
  if VarIsEmpty(Word) then
    MsgBox('Microsoft Word is not running.', mbInformation, mb_Ok)
  else
    MsgBox('Microsoft Word is running.', mbInformation, mb_Ok)
end;

{--- Windows Firewall ---}

const
   NET_FW_IP_VERSION_ANY = 2;
   NET_FW_SCOPE_ALL = 0;

procedure FirewallButtonOnClick(Sender: TObject);
var
  Firewall, Application: Variant;
begin
  if MsgBox('Setup will now add itself to Windows Firewall as an authorized application for the current profile (' + GetUserNameString + '). Do you want to continue?', mbInformation, mb_YesNo) = idNo then
    Exit;

  { Create the main Windows Firewall COM Automation object }

  try
    Firewall := CreateOleObject('HNetCfg.FwMgr');
  except
    RaiseException('Please install Windows Firewall first.'#13#13'(Error ''' + GetExceptionMessage + ''' occurred)');
  end;

  { Add the authorization }

  Application := CreateOleObject('HNetCfg.FwAuthorizedApplication');
  Application.Name := 'Setup';
  Application.IPVersion := NET_FW_IP_VERSION_ANY;
  Application.ProcessImageFileName := ExpandConstant('{srcexe}');
  Application.Scope := NET_FW_SCOPE_ALL;
  Application.Enabled := True;

  Firewall.LocalPolicy.CurrentProfile.AuthorizedApplications.Add(Application);

  MsgBox('Setup is now an authorized application for the current profile', mbInformation, mb_Ok);
end;

{---}

procedure CreateButton(ALeft, ATop: Integer; ACaption: String; ANotifyEvent: TNotifyEvent);
begin
  with TNewButton.Create(WizardForm) do begin
    Left := ALeft;
    Top := ATop;
    Width := WizardForm.CancelButton.Width;
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
  LeftInc := WizardForm.CancelButton.Width + ScaleX(8);
  TopInc := WizardForm.CancelButton.Height + ScaleY(8);
  Top := WizardForm.WelcomeLabel2.Top + WizardForm.WelcomeLabel2.Height - 4*TopInc;

  CreateButton(Left, Top, '&SQLDMO...', @SQLDMOButtonOnClick);
  Top := Top + TopInc;
  CreateButton(Left + LeftInc, Top, '&Firewall...', @FirewallButtonOnClick);
  Top := Top + TopInc;
  CreateButton(Left, Top, '&IIS...', @IISButtonOnClick);
  Top := Top + TopInc;
  CreateButton(Left, Top, '&MSXML...', @MSXMLButtonOnClick);
  Top := Top + TopInc;
  CreateButton(Left, Top, '&Word...', @WordButtonOnClick);
end;