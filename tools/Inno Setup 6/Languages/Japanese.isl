; *** Inno Setup version 6.1.0+ Japanese messages ***
;
; Maintained by Koichi Shirasuka (shirasuka@eugrid.co.jp)
;
; Translation based on Ryou Minakami (ryou32jp@yahoo.co.jp)
;
; $jrsoftware: issrc/Files/Languages/Japanese.isl,v 1.6 2010/03/08 07:50:01 mlaan Exp $

[LangOptions]
LanguageName=<65E5><672C><8A9E>
LanguageID=$0411
LanguageCodePage=932

[Messages]

; *** Application titles
SetupAppTitle=セットアップ
SetupWindowTitle=%1 セットアップ
UninstallAppTitle=アンインストール
UninstallAppFullTitle=%1 アンインストール

; *** Misc. common
InformationTitle=情報
ConfirmTitle=確認
ErrorTitle=エラー

; *** SetupLdr messages
SetupLdrStartupMessage=%1 をインストールします。続行しますか？
LdrCannotCreateTemp=一時ファイルを作成できません。セットアップを中止します。
LdrCannotExecTemp=一時フォルダーのファイルを実行できません。セットアップを中止します。

; *** Startup error messages
LastErrorMessage=%1.%n%nエラー %2: %3
SetupFileMissing=ファイル %1 が見つかりません。問題を解決するか新しいセットアッププログラムを入手してください。
SetupFileCorrupt=セットアップファイルが壊れています。新しいセットアッププログラムを入手してください。
SetupFileCorruptOrWrongVer=セットアップファイルが壊れているか、このバージョンのセットアップと互換性がありません。問題を解決するか新しいセットアッププログラムを入手してください。
InvalidParameter=コマンドラインに不正なパラメーターが渡されました:%n%n%1
SetupAlreadyRunning=セットアップは既に実行中です。
WindowsVersionNotSupported=このプログラムはお使いのバージョンの Windows をサポートしていません。
WindowsServicePackRequired=このプログラムの実行には %1 Service Pack %2 以降が必要です。
NotOnThisPlatform=このプログラムは %1 では動作しません。
OnlyOnThisPlatform=このプログラムの実行には %1 が必要です。
OnlyOnTheseArchitectures=このプログラムは%n%n%1プロセッサー向けの Windows にしかインストールできません。
WinVersionTooLowError=このプログラムの実行には %1 %2 以降が必要です。
WinVersionTooHighError=このプログラムは %1 %2 以降では動作しません。
AdminPrivilegesRequired=このプログラムをインストールするためには管理者としてログインする必要があります。
PowerUserPrivilegesRequired=このプログラムをインストールするためには管理者またはパワーユーザーとしてログインする必要があります。
SetupAppRunningError=セットアップは実行中の %1 を検出しました。%n%n開いているアプリケーションをすべて閉じてから「OK」をクリックしてください。「キャンセル」をクリックすると、セットアップを終了します。
UninstallAppRunningError=アンインストールは実行中の %1 を検出しました。%n%n開いているアプリケーションをすべて閉じてから「OK」をクリックしてください。「キャンセル」をクリックすると、セットアップを終了します。

; *** Startup questions
PrivilegesRequiredOverrideTitle=インストールモードの選択
PrivilegesRequiredOverrideInstruction=インストールモードを選択してください
PrivilegesRequiredOverrideText1=%1 はすべてのユーザー (管理者権限が必要です) または現在のユーザー用にインストールできます。 
PrivilegesRequiredOverrideText2=%1 は現在のユーザーまたはすべてのユーザー用 (管理者権限が必要です) にインストールできます。
PrivilegesRequiredOverrideAllUsers=すべてのユーザー用にインストール(&A)
PrivilegesRequiredOverrideAllUsersRecommended=すべてのユーザー用にインストール(&A) (推奨)
PrivilegesRequiredOverrideCurrentUser=現在のユーザー用にインストール(&M)
PrivilegesRequiredOverrideCurrentUserRecommended=現在のユーザー用にインストール(&M) (推奨)

; *** Misc. errors
ErrorCreatingDir=ディレクトリ %1 を作成中にエラーが発生しました。
ErrorTooManyFilesInDir=ディレクトリ %1 にファイルを作成中にエラーが発生しました。ファイルの数が多すぎます。

; *** Setup common messages
ExitSetupTitle=セットアップ終了
ExitSetupMessage=セットアップ作業は完了していません。ここでセットアップを中止するとプログラムはインストールされません。%n%n改めてインストールする場合は、もう一度セットアップを実行してください。%n%nセットアップを終了しますか？
AboutSetupMenuItem=セットアップについて(&A)...
AboutSetupTitle=セットアップについて
AboutSetupMessage=%1 %2%n%3%n%n%1 ホームページ:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< 戻る(&B)
ButtonNext=次へ(&N) >
ButtonInstall=インストール(&I)
ButtonOK=OK
ButtonCancel=キャンセル
ButtonYes=はい(&Y)
ButtonYesToAll=すべてはい(&A)
ButtonNo=いいえ(&N)
ButtonNoToAll=すべていいえ(&O)
ButtonFinish=完了(&F)
ButtonBrowse=参照(&B)...
ButtonWizardBrowse=参照(&R)
ButtonNewFolder=新しいフォルダー(&M)

; *** "Select Language" dialog messages
SelectLanguageTitle=セットアップに使用する言語の選択
SelectLanguageLabel=インストール中に利用する言語を選んでください。

; *** Common wizard text
ClickNext=続行するには「次へ」、セットアップを終了するには「キャンセル」をクリックしてください。
BeveledLabel=
BrowseDialogTitle=フォルダー参照
BrowseDialogLabel=リストからフォルダーを選び OK を押してください。
NewFolderName=新しいフォルダー

; *** "Welcome" wizard page
WelcomeLabel1=[name] セットアップウィザードの開始
WelcomeLabel2=このプログラムはご使用のコンピューターへ [name/ver] をインストールします。%n%n続行する前に他のアプリケーションをすべて終了してください。

; *** "Password" wizard page
WizardPassword=パスワード
PasswordLabel1=このインストールプログラムはパスワードによって保護されています。
PasswordLabel3=パスワードを入力して「次へ」をクリックしてください。パスワードは大文字と小文字が区別されます。
PasswordEditLabel=パスワード(&P):
IncorrectPassword=入力されたパスワードが正しくありません。もう一度入力しなおしてください。

; *** "License Agreement" wizard page
WizardLicense=使用許諾契約書の同意
LicenseLabel=続行する前に以下の重要な情報をお読みください。
LicenseLabel3=以下の使用許諾契約書をお読みください。インストールを続行するにはこの契約書に同意する必要があります。
LicenseAccepted=同意する(&A)
LicenseNotAccepted=同意しない(&D)

; *** "Information" wizard pages
WizardInfoBefore=情報
InfoBeforeLabel=続行する前に以下の重要な情報をお読みください。
InfoBeforeClickLabel=セットアップを続行するには「次へ」をクリックしてください。
WizardInfoAfter=情報
InfoAfterLabel=続行する前に以下の重要な情報をお読みください。
InfoAfterClickLabel=セットアップを続行するには「次へ」をクリックしてください。

; *** "User Information" wizard page
WizardUserInfo=ユーザー情報
UserInfoDesc=ユーザー情報を入力してください。
UserInfoName=ユーザー名(&U):
UserInfoOrg=組織(&O):
UserInfoSerial=シリアル番号(&S):
UserInfoNameRequired=ユーザー名を入力してください。

; *** "Select Destination Location" wizard page
WizardSelectDir=インストール先の指定
SelectDirDesc=[name] のインストール先を指定してください。
SelectDirLabel3=[name] をインストールするフォルダを指定して、「次へ」をクリックしてください。
SelectDirBrowseLabel=続けるには「次へ」をクリックしてください。別のフォルダーを選択するには「参照」をクリックしてください。
DiskSpaceGBLabel=このプログラムは最低 [gb] GB のディスク空き領域を必要とします。
DiskSpaceMBLabel=このプログラムは最低 [mb] MB のディスク空き領域を必要とします。
CannotInstallToNetworkDrive=ネットワークドライブにインストールすることはできません。
CannotInstallToUNCPath=UNC パスにインストールすることはできません。
InvalidPath=ドライブ文字を含む完全なパスを入力してください。%n%n例：C:\APP%n%nまたは UNC 形式のパスを入力してください。%n%n例：\\server\share
InvalidDrive=指定したドライブまたは UNC パスが見つからないかアクセスできません。別のパスを指定してください。
DiskSpaceWarningTitle=ディスク空き領域の不足
DiskSpaceWarning=インストールには最低 %1 KB のディスク空き領域が必要ですが、指定されたドライブには %2 KB の空き領域しかありません。%n%nこのまま続行しますか？
DirNameTooLong=ドライブ名またはパスが長過ぎます。
InvalidDirName=フォルダー名が無効です。
BadDirName32=以下の文字を含むフォルダー名は指定できません。:%n%n%1
DirExistsTitle=既存のフォルダー
DirExists=フォルダー %n%n%1%n%nが既に存在します。このままこのフォルダーへインストールしますか？
DirDoesntExistTitle=フォルダーが見つかりません。
DirDoesntExist=フォルダー %n%n%1%n%nが見つかりません。新しいフォルダーを作成しますか？

; *** "Select Components" wizard page
WizardSelectComponents=コンポーネントの選択
SelectComponentsDesc=インストールコンポーネントを選択してください。
SelectComponentsLabel2=インストールするコンポーネントを選択してください。インストールする必要のないコンポーネントはチェックを外してください。続行するには「次へ」をクリックしてください。
FullInstallation=フルインストール
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=コンパクトインストール
CustomInstallation=カスタムインストール
NoUninstallWarningTitle=既存のコンポーネント
NoUninstallWarning=セットアップは以下のコンポーネントが既にインストールされていることを検出しました。%n%n%1%n%nこれらのコンポーネントの選択を解除してもアンインストールはされません。%n%nこのまま続行しますか？
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceGBLabel=現在の選択は最低 [gb] GB のディスク空き領域を必要とします。
ComponentsDiskSpaceMBLabel=現在の選択は最低 [mb] MB のディスク空き領域を必要とします。

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=追加タスクの選択
SelectTasksDesc=実行する追加タスクを選択してください。
SelectTasksLabel2=[name] インストール時に実行する追加タスクを選択して、「次へ」をクリックしてください。

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=スタートメニューフォルダーの指定
SelectStartMenuFolderDesc=プログラムのショートカットを作成する場所を指定してください。
SelectStartMenuFolderLabel3=セットアップは次のスタートメニューフォルダーにプログラムのショートカットを作成します。
SelectStartMenuFolderBrowseLabel=続けるには「次へ」をクリックしてください。違うフォルダーを選択するには「参照」をクリックしてください。
MustEnterGroupName=フォルダー名を指定してください。
GroupNameTooLong=フォルダー名またはパスが長過ぎます。
InvalidGroupName=フォルダー名が無効です。
BadGroupName=次の文字を含むフォルダー名は指定できません:%n%n%1
NoProgramGroupCheck2=スタートメニューフォルダーを作成しない(&D)

; *** "Ready to Install" wizard page
WizardReady=インストール準備完了
ReadyLabel1=ご使用のコンピュータへ [name] をインストールする準備ができました。
ReadyLabel2a=インストールを続行するには「インストール」を、設定の確認や変更を行うには「戻る」をクリックしてください。
ReadyLabel2b=インストールを続行するには「インストール」をクリックしてください。
ReadyMemoUserInfo=ユーザー情報:
ReadyMemoDir=インストール先:
ReadyMemoType=セットアップの種類:
ReadyMemoComponents=選択コンポーネント:
ReadyMemoGroup=スタートメニューフォルダー:
ReadyMemoTasks=追加タスク一覧:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=追加のファイルをダウンロードしています...
ButtonStopDownload=ダウンロードを中止(&S)
StopDownload=ダウンロードを中止してもよろしいですか？
ErrorDownloadAborted=ダウンロードを中止しました
ErrorDownloadFailed=ダウンロードに失敗しました: %1 %2
ErrorDownloadSizeFailed=サイズの取得に失敗しました: %1 %2
ErrorFileHash1=ファイルのハッシュに失敗しました: %1
ErrorFileHash2=無効なファイルハッシュ: 予期された値 %1, 実際の値 %2
ErrorProgress=無効な進行状況: %1 / %2
ErrorFileSize=無効なファイルサイズ: 予期された値 %1, 実際の値 %2

; *** "Preparing to Install" wizard page
WizardPreparing=インストール準備中
PreparingDesc=ご使用のコンピューターへ [name] をインストールする準備をしています。
PreviousInstallNotCompleted=前回行ったアプリケーションのインストールまたは削除が完了していません。完了するにはコンピューターを再起動する必要があります。%n%n[name] のインストールを完了するためには、再起動後にもう一度セットアップを実行してください。
CannotContinue=セットアップを続行できません。「キャンセル」をクリックしてセットアップを終了してください。
ApplicationsFound=以下のアプリケーションがセットアップに必要なファイルを使用しています。セットアップに自動的にアプリケーションを終了させることを推奨します。
ApplicationsFound2=以下のアプリケーションがセットアップに必要なファイルを使用しています。セットアップに自動的にアプリケーションを終了させることを推奨します。インストールの完了後、セットアップはアプリケーションの再起動を試みます。
CloseApplications=自動的にアプリケーションを終了する(&A)
DontCloseApplications=アプリケーションを終了しない(&D)
ErrorCloseApplications=セットアップはすべてのアプリケーションを自動的に終了することができませんでした。セットアップを続行する前に、更新の必要なファイルを使用しているすべてのアプリケーションを終了することを推奨します。
PrepareToInstallNeedsRestart=セットアップはコンピューターを再起動する必要があります。コンピューターを再起動した後、セットアップを再度実行して [name] のインストールを完了してください。%n%nすぐに再起動しますか？?

; *** "Installing" wizard page
WizardInstalling=インストール状況
InstallingLabel=ご使用のコンピューターに [name] をインストールしています。しばらくお待ちください。

; *** "Setup Completed" wizard page
FinishedHeadingLabel=[name] セットアップウィザードの完了
FinishedLabelNoIcons=ご使用のコンピューターに [name] がセットアップされました。
FinishedLabel=ご使用のコンピューターに [name] がセットアップされました。アプリケーションを実行するにはインストールされたショートカットを選択してください。
ClickFinish=セットアップを終了するには「完了」をクリックしてください。
FinishedRestartLabel=[name] のインストールを完了するためには、コンピューターを再起動する必要があります。すぐに再起動しますか？
FinishedRestartMessage=[name] のインストールを完了するためには、コンピューターを再起動する必要があります。%n%nすぐに再起動しますか？
ShowReadmeCheck=README ファイルを表示する。
YesRadio=すぐに再起動(&Y)
NoRadio=後で手動で再起動(&N)
; used for example as 'Run MyProg.exe'
RunEntryExec=%1 の実行
; used for example as 'View Readme.txt'
RunEntryShellExec=%1 の表示

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=ディスクの挿入
SelectDiskLabel2=ディスク %1 を挿入し、「OK」をクリックしてください。%n%nこのディスクのファイルが下に表示されているフォルダー以外の場所にある場合は、正しいパスを入力するか「参照」ボタンをクリックしてください。
PathLabel=パス(&P):
FileNotInDir2=ファイル %1 が %2 に見つかりません。正しいディスクを挿入するか、別のフォルダーを指定してください。
SelectDirectoryLabel=次のディスクのある場所を指定してください。

; *** Installation phase messages
SetupAborted=セットアップは完了していません。%n%n問題を解決してから、もう一度セットアップを実行してください。
AbortRetryIgnoreSelectAction=アクションを選択してください
AbortRetryIgnoreRetry=再試行(&T)
AbortRetryIgnoreIgnore=エラーを無視して続行(&I)
AbortRetryIgnoreCancel=インストールをキャンセル

; *** Installation status messages
StatusClosingApplications=アプリケーションを終了しています...
StatusCreateDirs=フォルダーを作成しています...
StatusExtractFiles=ファイルを展開しています...
StatusCreateIcons=ショ－トカットを作成しています...
StatusCreateIniEntries=INIファイルを設定しています...
StatusCreateRegistryEntries=レジストリを設定しています...
StatusRegisterFiles=ファイルを登録しています...
StatusSavingUninstall=アンインストール情報を保存しています...
StatusRunProgram=インストールを完了しています...
StatusRestartingApplications=アプリケーションを再起動しています...
StatusRollback=変更を元に戻しています...

; *** Misc. errors
ErrorInternal2=内部エラー: %1
ErrorFunctionFailedNoCode=%1 エラー
ErrorFunctionFailed=%1 エラー: コード %2
ErrorFunctionFailedWithMessage=%1 エラー: コード %2.%n%3
ErrorExecutingProgram=ファイル実行エラー:%n%1

; *** Registry errors
ErrorRegOpenKey=レジストリキーオープンエラー:%n%1\%2
ErrorRegCreateKey=レジストリキー作成エラー:%n%1\%2
ErrorRegWriteKey=レジストリキー書き込みエラー:%n%1\%2

; *** INI errors
ErrorIniEntry=INIファイルエントリ作成エラー: ファイル %1

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=このファイルをスキップ(&S) (推奨されません)
FileAbortRetryIgnoreIgnoreNotRecommended=エラーを無視して続行(&I) (推奨されません)
SourceIsCorrupted=コピー元のファイルが壊れています。
SourceDoesntExist=コピー元のファイル %1 が見つかりません。
ExistingFileReadOnly2=既存のファイルは読み取り専用のため置き換えできません。
ExistingFileReadOnlyRetry=読み取り専用属性を解除してもう一度やりなおす(&R)
ExistingFileReadOnlyKeepExisting=既存のファイルを残す(&K)
ErrorReadingExistingDest=既存のファイルを読み込み中にエラーが発生しました:
FileExistsSelectAction=アクションを選択してください
FileExists2=ファイルは既に存在します。
FileExistsOverwriteExisting=既存のファイルを上書きする(&O)
FileExistsKeepExisting=既存のファイルを維持する(&K)
FileExistsOverwriteOrKeepAll=以降の競合に同じ処理を行う(&D)
ExistingFileNewerSelectAction=アクションを選択してください
ExistingFileNewer2=セットアップがインストールしようとしているものよりも新しいファイルがあります。
ExistingFileNewerOverwriteExisting=既存のファイルを上書きする(&O)
ExistingFileNewerKeepExisting=既存のファイルを維持する(&K) (推奨)
ExistingFileNewerOverwriteOrKeepAll=以降の競合に同じ処理を行う(&D)
ErrorChangingAttr=既存ファイルの属性を変更中にエラーが発生しました:
ErrorCreatingTemp=コピー先のフォルダーにファイルを作成中にエラーが発生しました:
ErrorReadingSource=コピー元のファイルを読み込み中にエラーが発生しました:
ErrorCopying=ファイルをコピー中にエラーが発生しました:
ErrorReplacingExistingFile=既存のファイルを置き換え中にエラーが発生しました:
ErrorRestartReplace=再起動による置き換えの実行に失敗しました:
ErrorRenamingTemp=コピー先フォルダーのファイル名を変更中にエラーが発生しました:
ErrorRegisterServer=DLL/OCXの登録に失敗しました: %1
ErrorRegSvr32Failed=RegSvr32は終了コード %1 により失敗しました
ErrorRegisterTypeLib=タイプライブラリへの登録に失敗しました: %1

; *** Uninstall display name markings
UninstallDisplayNameMark=%1 (%2)
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32 ビット
UninstallDisplayNameMark64Bit=64 ビット
UninstallDisplayNameMarkAllUsers=すべてのユーザー
UninstallDisplayNameMarkCurrentUser=現在のユーザー

; *** Post-installation errors
ErrorOpeningReadme=README ファイルのオープンに失敗しました。
ErrorRestartingComputer=コンピューターの再起動に失敗しました。手動で再起動してください。

; *** Uninstaller messages
UninstallNotFound=ファイル "%1" が見つかりません。アンインストールを実行できません。
UninstallOpenError=ファイル "%1" を開くことができません。アンインストールを実行できません。
UninstallUnsupportedVer=アンインストールログファイル "%1" は、このバージョンのアンインストールプログラムが認識できない形式です。アンインストールを実行できません。
UninstallUnknownEntry=アンインストールログに不明のエントリ (%1) が見つかりました。
ConfirmUninstall=%1 とその関連コンポーネントをすべて削除します。よろしいですか？
UninstallOnlyOnWin64=このプログラムは64 ビット版Windows上でのみアンインストールすることができます。
OnlyAdminCanUninstall=アンインストールするためには管理者権限が必要です。
UninstallStatusLabel=ご使用のコンピューターから %1 を削除しています。しばらくお待ちください。
UninstalledAll=%1 はご使用のコンピューターから正常に削除されました。
UninstalledMost=%1 のアンインストールが完了しました。%n%nいくつかの項目が削除できませんでした。手動で削除してください。
UninstalledAndNeedsRestart=%1 の削除を完了するためには、コンピューターを再起動する必要があります。すぐに再起動しますか？
UninstallDataCorrupted=ファイル "%1" が壊れています。アンインストールを実行できません。

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=共有ファイルの削除
ConfirmDeleteSharedFile2=システム上で、次の共有ファイルはどのプログラムでも使用されていません。この共有ファイルを削除しますか？%n%n他のプログラムがまだこのファイルを使用する場合、削除するとプログラムが動作しなくなる恐れがあります。あまり確実でない場合は「いいえ」を選択してください。システムにファイルを残しても問題を引き起こすことはありません。
SharedFileNameLabel=ファイル名:
SharedFileLocationLabel=場所:
WizardUninstalling=アンインストール状況
StatusUninstalling=%1 をアンインストールしています...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=%1 をインストール中です。
ShutdownBlockReasonUninstallingApp=%1 をアンインストール中です。

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 バージョン %2
AdditionalIcons=アイコンを追加する:
CreateDesktopIcon=デスクトップ上にアイコンを作成する(&D)
CreateQuickLaunchIcon=クイック起動アイコンを作成する(&Q)
ProgramOnTheWeb=%1 on the Web
UninstallProgram=%1 をアンインストールする
LaunchProgram=%1 を実行する
AssocFileExtension=ファイル拡張子 %2 に %1 を関連付けます。
AssocingFileExtension=ファイル拡張子 %2 に %1 を関連付けています...
AutoStartProgramGroupDescription=スタートアップ:
AutoStartProgram=%1 を自動的に開始する
AddonHostProgramNotFound=選択されたフォルダーに %1 が見つかりませんでした。%n%nこのまま続行しますか？