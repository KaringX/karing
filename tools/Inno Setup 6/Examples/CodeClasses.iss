; -- CodeClasses.iss --
;
; This script shows how to use the WizardForm object and the various VCL classes.

[Setup]
AppName=My Program
AppVersion=1.5
WizardStyle=modern
CreateAppDir=no
DisableProgramGroupPage=yes
DefaultGroupName=My Program
UninstallDisplayIcon={app}\MyProg.exe
OutputDir=userdocs:Inno Setup Examples Output
PrivilegesRequired=lowest

; Uncomment the following three lines to test the layout when scaling and rtl are active
;[LangOptions]
;RightToLeft=yes
;DialogFontSize=12

[Files]
Source: compiler:WizClassicSmallImage.bmp; Flags: dontcopy

[Code]
procedure ButtonOnClick(Sender: TObject);
begin
  MsgBox('You clicked the button!', mbInformation, mb_Ok);
end;

procedure BitmapImageOnClick(Sender: TObject);
begin
  MsgBox('You clicked the image!', mbInformation, mb_Ok);
end;

procedure FormButtonOnClick(Sender: TObject);
var
  Form: TSetupForm;
  Edit: TNewEdit;
  OKButton, CancelButton: TNewButton;
  W: Integer;
begin
  Form := CreateCustomForm();
  try
    Form.ClientWidth := ScaleX(256);
    Form.ClientHeight := ScaleY(128);
    Form.Caption := 'TSetupForm';

    Edit := TNewEdit.Create(Form);
    Edit.Top := ScaleY(10);
    Edit.Left := ScaleX(10);
    Edit.Width := Form.ClientWidth - ScaleX(2 * 10);
    Edit.Height := ScaleY(23);
    Edit.Anchors := [akLeft, akTop, akRight];
    Edit.Text := 'TNewEdit';
    Edit.Parent := Form;

    OKButton := TNewButton.Create(Form);
    OKButton.Parent := Form;
    OKButton.Caption := 'OK';
    OKButton.Left := Form.ClientWidth - ScaleX(75 + 6 + 75 + 10);
    OKButton.Top := Form.ClientHeight - ScaleY(23 + 10);
    OKButton.Height := ScaleY(23);
    OKButton.Anchors := [akRight, akBottom]
    OKButton.ModalResult := mrOk;
    OKButton.Default := True;

    CancelButton := TNewButton.Create(Form);
    CancelButton.Parent := Form;
    CancelButton.Caption := 'Cancel';
    CancelButton.Left := Form.ClientWidth - ScaleX(75 + 10);
    CancelButton.Top := Form.ClientHeight - ScaleY(23 + 10);
    CancelButton.Height := ScaleY(23);
    CancelButton.Anchors := [akRight, akBottom]
    CancelButton.ModalResult := mrCancel;
    CancelButton.Cancel := True;

    W := Form.CalculateButtonWidth([OKButton.Caption, CancelButton.Caption]);
    OKButton.Width := W;
    CancelButton.Width := W;

    Form.ActiveControl := Edit;
    { Keep the form from sizing vertically since we don't have any controls which can size vertically }
    Form.KeepSizeY := True;
    { Center on WizardForm. Without this call it will still automatically center, but on the screen }
    Form.FlipSizeAndCenterIfNeeded(True, WizardForm, False);

    if Form.ShowModal() = mrOk then
      MsgBox('You clicked OK.', mbInformation, MB_OK);
  finally
    Form.Free();
  end;
end;

procedure TaskDialogButtonOnClick(Sender: TObject);
begin
  { TaskDialogMsgBox isn't a class but showing it anyway since it fits with the theme }

  case TaskDialogMsgBox('Choose A or B',
                        'You can choose A or B.',   
                        mbInformation,
                        MB_YESNOCANCEL, ['I choose &A'#13#10'A will be chosen.', 'I choose &B'#13#10'B will be chosen.'],
                        IDYES) of
    IDYES: MsgBox('You chose A.', mbInformation, MB_OK);
    IDNO: MsgBox('You chose B.', mbInformation, MB_OK);
  end;
end;

procedure CreateTheWizardPages;
var
  Page: TWizardPage;
  Button, FormButton, TaskDialogButton: TNewButton;
  Panel: TPanel;
  CheckBox: TNewCheckBox;
  Edit: TNewEdit;
  PasswordEdit: TPasswordEdit;
  Memo: TNewMemo;
  ComboBox: TNewComboBox;
  ListBox: TNewListBox;
  StaticText, ProgressBarLabel: TNewStaticText;
  ProgressBar, ProgressBar2, ProgressBar3: TNewProgressBar;
  CheckListBox, CheckListBox2: TNewCheckListBox;
  FolderTreeView: TFolderTreeView;
  BitmapImage, BitmapImage2, BitmapImage3: TBitmapImage;
  BitmapFileName: String;
  RichEditViewer: TRichEditViewer;
begin
  { TButton and others }

  Page := CreateCustomPage(wpWelcome, 'Custom wizard page controls', 'TButton and others');

  Button := TNewButton.Create(Page);
  Button.Caption := 'TNewButton';
  Button.Width := WizardForm.CalculateButtonWidth([Button.Caption]);
  Button.Height := ScaleY(23);
  Button.OnClick := @ButtonOnClick;
  Button.Parent := Page.Surface;

  Panel := TPanel.Create(Page);
  Panel.Width := Page.SurfaceWidth div 2 - ScaleX(8);
  Panel.Left :=  Page.SurfaceWidth - Panel.Width;
  Panel.Height := Button.Height * 2;
  Panel.Anchors := [akLeft, akTop, akRight];
  Panel.Caption := 'TPanel';
  Panel.Color := clWindow;
  Panel.BevelKind := bkFlat;
  Panel.BevelOuter := bvNone;
  Panel.ParentBackground := False;
  Panel.Parent := Page.Surface;

  CheckBox := TNewCheckBox.Create(Page);
  CheckBox.Top := Button.Top + Button.Height + ScaleY(8);
  CheckBox.Width := Page.SurfaceWidth div 2;
  CheckBox.Height := ScaleY(17);
  CheckBox.Caption := 'TNewCheckBox';
  CheckBox.Checked := True;
  CheckBox.Parent := Page.Surface;

  Edit := TNewEdit.Create(Page);
  Edit.Top := CheckBox.Top + CheckBox.Height + ScaleY(8);
  Edit.Width := Page.SurfaceWidth div 2 - ScaleX(8);
  Edit.Text := 'TNewEdit';
  Edit.Parent := Page.Surface;

  PasswordEdit := TPasswordEdit.Create(Page);
  PasswordEdit.Left := Page.SurfaceWidth - Edit.Width;
  PasswordEdit.Top := CheckBox.Top + CheckBox.Height + ScaleY(8);
  PasswordEdit.Width := Edit.Width;
  PasswordEdit.Anchors := [akLeft, akTop, akRight];
  PasswordEdit.Text := 'TPasswordEdit';
  PasswordEdit.Parent := Page.Surface;

  Memo := TNewMemo.Create(Page);
  Memo.Top := Edit.Top + Edit.Height + ScaleY(8);
  Memo.Width := Page.SurfaceWidth;
  Memo.Height := ScaleY(89);
  Memo.Anchors := [akLeft, akTop, akRight, akBottom];
  Memo.ScrollBars := ssVertical;
  Memo.Text := 'TNewMemo';
  Memo.Parent := Page.Surface;

  FormButton := TNewButton.Create(Page);
  FormButton.Caption := 'TSetupForm';
  FormButton.Top := Memo.Top + Memo.Height + ScaleY(8);
  FormButton.Width := WizardForm.CalculateButtonWidth([FormButton.Caption]);
  FormButton.Height := ScaleY(23);
  FormButton.Anchors := [akLeft, akBottom];
  FormButton.OnClick := @FormButtonOnClick;
  FormButton.Parent := Page.Surface;

  TaskDialogButton := TNewButton.Create(Page);
  TaskDialogButton.Caption := 'TaskDialogMsgBox';
  TaskDialogButton.Top := FormButton.Top;
  TaskDialogButton.Left := FormButton.Left + FormButton.Width + ScaleX(8);
  TaskDialogButton.Width := WizardForm.CalculateButtonWidth([TaskDialogButton.Caption]);
  TaskDialogButton.Height := ScaleY(23);
  TaskDialogButton.Anchors := [akLeft, akBottom];
  TaskDialogButton.OnClick := @TaskDialogButtonOnClick;
  TaskDialogButton.Parent := Page.Surface;

  { TComboBox and others }

  Page := CreateCustomPage(Page.ID, 'Custom wizard page controls', 'TComboBox and others');

  ComboBox := TNewComboBox.Create(Page);
  ComboBox.Width := Page.SurfaceWidth;
  ComboBox.Anchors := [akLeft, akTop, akRight];
  ComboBox.Parent := Page.Surface;
  ComboBox.Style := csDropDownList;
  ComboBox.Items.Add('TComboBox');
  ComboBox.ItemIndex := 0;

  ListBox := TNewListBox.Create(Page);
  ListBox.Top := ComboBox.Top + ComboBox.Height + ScaleY(8);
  ListBox.Width := Page.SurfaceWidth;
  ListBox.Height := ScaleY(97);
  ListBox.Anchors := [akLeft, akTop, akRight, akBottom];
  ListBox.Parent := Page.Surface;
  ListBox.Items.Add('TListBox');
  ListBox.ItemIndex := 0;

  StaticText := TNewStaticText.Create(Page);
  StaticText.Top := ListBox.Top + ListBox.Height + ScaleY(8);
  StaticText.Anchors := [akLeft, akRight, akBottom];
  StaticText.Caption := 'TNewStaticText';
  StaticText.AutoSize := True;
  StaticText.Parent := Page.Surface;

  ProgressBarLabel := TNewStaticText.Create(Page);
  ProgressBarLabel.Top := StaticText.Top + StaticText.Height + ScaleY(8);
  ProgressBarLabel.Anchors := [akLeft, akBottom];
  ProgressBarLabel.Caption := 'TNewProgressBar';
  ProgressBarLabel.AutoSize := True;
  ProgressBarLabel.Parent := Page.Surface;

  ProgressBar := TNewProgressBar.Create(Page);
  ProgressBar.Left := ProgressBarLabel.Width + ScaleX(8);
  ProgressBar.Top := ProgressBarLabel.Top;
  ProgressBar.Width := Page.SurfaceWidth - ProgressBar.Left;
  ProgressBar.Height := ProgressBarLabel.Height + ScaleY(8);
  ProgressBar.Anchors := [akLeft, akRight, akBottom];
  ProgressBar.Parent := Page.Surface;
  ProgressBar.Position := 25;

  ProgressBar2 := TNewProgressBar.Create(Page);
  ProgressBar2.Left := ProgressBarLabel.Width + ScaleX(8);
  ProgressBar2.Top := ProgressBar.Top + ProgressBar.Height + ScaleY(4);
  ProgressBar2.Width := Page.SurfaceWidth - ProgressBar.Left;
  ProgressBar2.Height := ProgressBarLabel.Height + ScaleY(8);
  ProgressBar2.Anchors := [akLeft, akRight, akBottom];
  ProgressBar2.Parent := Page.Surface;
  ProgressBar2.Position := 50;
  ProgressBar2.State := npbsError;

  ProgressBar3 := TNewProgressBar.Create(Page);
  ProgressBar3.Left := ProgressBarLabel.Width + ScaleX(8);
  ProgressBar3.Top := ProgressBar2.Top + ProgressBar2.Height + ScaleY(4);
  ProgressBar3.Width := Page.SurfaceWidth - ProgressBar.Left;
  ProgressBar3.Height := ProgressBarLabel.Height + ScaleY(8);
  ProgressBar3.Anchors := [akLeft, akRight, akBottom];
  ProgressBar3.Parent := Page.Surface;
  ProgressBar3.Style := npbstMarquee;
  
  { TNewCheckListBox }

  Page := CreateCustomPage(Page.ID, 'Custom wizard page controls', 'TNewCheckListBox');

  CheckListBox := TNewCheckListBox.Create(Page);
  CheckListBox.Width := Page.SurfaceWidth;
  CheckListBox.Height := ScaleY(97);
  CheckListBox.Anchors := [akLeft, akTop, akRight, akBottom];
  CheckListBox.Flat := True;
  CheckListBox.Parent := Page.Surface;
  CheckListBox.AddCheckBox('TNewCheckListBox', '', 0, True, True, False, True, nil);
  CheckListBox.AddRadioButton('TNewCheckListBox', '', 1, True, True, nil);
  CheckListBox.AddRadioButton('TNewCheckListBox', '', 1, False, True, nil);
  CheckListBox.AddCheckBox('TNewCheckListBox', '', 0, True, True, False, True, nil);
  CheckListBox.AddCheckBox('TNewCheckListBox', '', 1, True, True, False, True, nil);
  CheckListBox.AddCheckBox('TNewCheckListBox', '123', 2, True, True, False, True, nil);
  CheckListBox.AddCheckBox('TNewCheckListBox', '456', 2, False, True, False, True, nil);
  CheckListBox.AddCheckBox('TNewCheckListBox', '', 1, False, True, False, True, nil);
  CheckListBox.ItemFontStyle[5] := [fsBold];
  CheckListBox.SubItemFontStyle[5] := [fsBold];
  CheckListBox.ItemFontStyle[6] := [fsBold, fsItalic];
  CheckListBox.SubItemFontStyle[6] := [fsBold, fsUnderline];

  CheckListBox2 := TNewCheckListBox.Create(Page);
  CheckListBox2.Top := CheckListBox.Top + CheckListBox.Height + ScaleY(8);
  CheckListBox2.Width := Page.SurfaceWidth;
  CheckListBox2.Height := ScaleY(97);
  CheckListBox2.Anchors := [akLeft, akRight, akBottom];
  CheckListBox2.BorderStyle := bsNone;
  CheckListBox2.ParentColor := True;
  CheckListBox2.MinItemHeight := WizardForm.TasksList.MinItemHeight;
  CheckListBox2.ShowLines := False;
  CheckListBox2.WantTabs := True;
  CheckListBox2.Parent := Page.Surface;
  CheckListBox2.AddGroup('TNewCheckListBox', '', 0, nil);
  CheckListBox2.AddRadioButton('TNewCheckListBox', '', 0, True, True, nil);
  CheckListBox2.AddRadioButton('TNewCheckListBox', '', 0, False, True, nil);

  { TFolderTreeView }

  Page := CreateCustomPage(Page.ID, 'Custom wizard page controls', 'TFolderTreeView');

  FolderTreeView := TFolderTreeView.Create(Page);
  FolderTreeView.Width := Page.SurfaceWidth;
  FolderTreeView.Height := Page.SurfaceHeight;
  FolderTreeView.Anchors := [akLeft, akTop, akRight, akBottom];
  FolderTreeView.Parent := Page.Surface;
  FolderTreeView.Directory := ExpandConstant('{src}');

  { TBitmapImage }

  Page := CreateCustomPage(Page.ID, 'Custom wizard page controls', 'TBitmapImage');

  BitmapFileName := ExpandConstant('{tmp}\WizClassicSmallImage.bmp');
  ExtractTemporaryFile(ExtractFileName(BitmapFileName));

  BitmapImage := TBitmapImage.Create(Page);
  BitmapImage.AutoSize := True;
  BitmapImage.Bitmap.LoadFromFile(BitmapFileName);
  BitmapImage.Cursor := crHand;
  BitmapImage.OnClick := @BitmapImageOnClick;
  BitmapImage.Parent := Page.Surface;

  BitmapImage2 := TBitmapImage.Create(Page);
  BitmapImage2.BackColor := $400000;
  BitmapImage2.Bitmap := BitmapImage.Bitmap;
  BitmapImage2.Center := True;
  BitmapImage2.Left := BitmapImage.Width + 10;
  BitmapImage2.Height := 2*BitmapImage.Height;
  BitmapImage2.Width := 2*BitmapImage.Width;
  BitmapImage2.Cursor := crHand;
  BitmapImage2.OnClick := @BitmapImageOnClick;
  BitmapImage2.Parent := Page.Surface;

  BitmapImage3 := TBitmapImage.Create(Page);
  BitmapImage3.Bitmap := BitmapImage.Bitmap;
  BitmapImage3.Stretch := True;
  BitmapImage3.Left := 3*BitmapImage.Width + 20;
  BitmapImage3.Height := 4*BitmapImage.Height;
  BitmapImage3.Width := 4*BitmapImage.Width;
  BitmapImage3.Anchors := [akLeft, akTop, akRight, akBottom];
  BitmapImage3.Cursor := crHand;
  BitmapImage3.OnClick := @BitmapImageOnClick;
  BitmapImage3.Parent := Page.Surface;

  { TRichViewer }

  Page := CreateCustomPage(Page.ID, 'Custom wizard page controls', 'TRichViewer');

  RichEditViewer := TRichEditViewer.Create(Page);
  RichEditViewer.Width := Page.SurfaceWidth;
  RichEditViewer.Height := Page.SurfaceHeight;
  RichEditViewer.Anchors := [akLeft, akTop, akRight, akBottom];
  RichEditViewer.BevelKind := bkFlat;
  RichEditViewer.BorderStyle := bsNone;
  RichEditViewer.Parent := Page.Surface;
  RichEditViewer.ScrollBars := ssVertical;
  RichEditViewer.UseRichEdit := True;
  RichEditViewer.RTFText := '{\rtf1\ansi\ansicpg1252\deff0\deflang1043{\fonttbl{\f0\fswiss\fcharset0 Arial;}}{\colortbl ;\red255\green0\blue0;\red0\green128\blue0;\red0\green0\blue128;}\viewkind4\uc1\pard\f0\fs20 T\cf1 Rich\cf2 Edit\cf3 Viewer\cf0\par}';
  RichEditViewer.ReadOnly := True;
end;

procedure AboutButtonOnClick(Sender: TObject);
begin
  MsgBox('This demo shows some features of the various form objects and control classes.', mbInformation, mb_Ok);
end;

procedure URLLabelOnClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
  ShellExecAsOriginalUser('open', 'http://www.innosetup.com/', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

procedure CreateAboutButtonAndURLLabel(ParentForm: TSetupForm; CancelButton: TNewButton);
var
  AboutButton: TNewButton;
  URLLabel: TNewStaticText;
begin
  AboutButton := TNewButton.Create(ParentForm);
  AboutButton.Left := ParentForm.ClientWidth - CancelButton.Left - CancelButton.Width;
  AboutButton.Top := CancelButton.Top;
  AboutButton.Width := CancelButton.Width;
  AboutButton.Height := CancelButton.Height;
  AboutButton.Anchors := [akLeft, akBottom];
  AboutButton.Caption := '&About...';
  AboutButton.OnClick := @AboutButtonOnClick;
  AboutButton.Parent := ParentForm;

  URLLabel := TNewStaticText.Create(ParentForm);
  URLLabel.Caption := 'www.innosetup.com';
  URLLabel.Cursor := crHand;
  URLLabel.OnClick := @URLLabelOnClick;
  URLLabel.Parent := ParentForm;
  { Alter Font *after* setting Parent so the correct defaults are inherited first }
  URLLabel.Font.Style := URLLabel.Font.Style + [fsUnderline];
  URLLabel.Font.Color := clHotLight
  URLLabel.Top := AboutButton.Top + AboutButton.Height - URLLabel.Height - 2;
  URLLabel.Left := AboutButton.Left + AboutButton.Width + ScaleX(20);
  URLLabel.Anchors := [akLeft, akBottom];
end;

procedure InitializeWizard();
begin
  { Custom wizard pages }

  CreateTheWizardPages;
  
  { Custom controls }

  CreateAboutButtonAndURLLabel(WizardForm, WizardForm.CancelButton);

  { Custom beveled label }

  WizardForm.BeveledLabel.Caption := ' Bevel ';
end;

procedure InitializeUninstallProgressForm();
begin
  { Custom controls }

  CreateAboutButtonAndURLLabel(UninstallProgressForm, UninstallProgressForm.CancelButton);
end;

