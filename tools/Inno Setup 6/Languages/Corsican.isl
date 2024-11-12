; *** Inno Setup version 6.1.0+ Corsican messages ***
;
; To download user-contributed translations of this file, go to:
;   https://jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).

; Created and maintained by Patriccollu di Santa Maria è Sichè
; Schedariu di traduzzione in lingua corsa da Patriccollu
; E-mail: Patrick.Santa-Maria[at]LaPoste.Net
;
; Changes:
; November 14th, 2020 - Changes to current version 6.1.0+
; July 25th, 2020 - Update to version 6.1.0+
; July 1st, 2020 - Update to version 6.0.6+
; October 6th, 2019 - Update to version 6.0.3+
; January 20th, 2019 - Update to version 6.0.0+
; April 9th, 2016 - Changes to current version 5.5.3+
; January 3rd, 2013 - Update to version 5.5.3+
; August 8th, 2012 - Update to version 5.5.0+
; September 17th, 2011 - Creation for version 5.1.11

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=Corsu
LanguageID=$0483
LanguageCodePage=1252
; If the language you are translating to requires special font faces or
; sizes, uncomment any of the following entries and change them accordingly.
;DialogFontName=
;DialogFontSize=8
;WelcomeFontName=Verdana
;WelcomeFontSize=12
;TitleFontName=Arial
;TitleFontSize=29
;CopyrightFontName=Arial
;CopyrightFontSize=8

[Messages]

; *** Application titles
SetupAppTitle=Assistente d’installazione
SetupWindowTitle=Assistente d’installazione - %1
UninstallAppTitle=Disinstallà
UninstallAppFullTitle=Disinstallazione di %1

; *** Misc. common
InformationTitle=Infurmazione
ConfirmTitle=Cunfirmà
ErrorTitle=Sbagliu

; *** SetupLdr messages
SetupLdrStartupMessage=St’assistente hà da installà %1. Vulete cuntinuà ?
LdrCannotCreateTemp=Impussibule di creà un cartulare timpurariu. Assistente d’installazione interrottu
LdrCannotExecTemp=Impussibule d’eseguisce u schedariu in u cartulare timpurariu. Assistente d’installazione interrottu
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nSbagliu %2 : %3
SetupFileMissing=U schedariu %1 manca in u cartulare d’installazione. Ci vole à currege u penseru o ottene una nova copia di u prugramma.
SetupFileCorrupt=I schedarii d’installazione sò alterati. Ci vole à ottene una nova copia di u prugramma.
SetupFileCorruptOrWrongVer=I schedarii d’installazione sò alterati, o sò incumpatibule cù sta versione di l’assistente. Ci vole à currege u penseru o ottene una nova copia di u prugramma.
InvalidParameter=Un parametru micca accettevule hè statu passatu in a linea di cumanda :%n%n%1
SetupAlreadyRunning=L’assistente d’installazione hè dighjà in corsu.
WindowsVersionNotSupported=Stu prugramma ùn pò micca funziunà cù a versione di Windows installata nant’à st’urdinatore.
WindowsServicePackRequired=Stu prugramma richiede %1 Service Pack %2 o più recente.
NotOnThisPlatform=Stu prugramma ùn funzionerà micca cù %1.
OnlyOnThisPlatform=Stu prugramma deve funzionà cù %1.
OnlyOnTheseArchitectures=Stu prugramma pò solu esse installatu nant’à e versioni di Windows fatte apposta per st’architetture di prucessore :%n%n%1
WinVersionTooLowError=Stu prugramma richiede %1 versione %2 o più recente.
WinVersionTooHighError=Stu prugramma ùn pò micca esse installatu nant’à %1 version %2 o più recente.
AdminPrivilegesRequired=Ci vole à esse cunnettu cum’è un amministratore quandu voi installate stu prugramma.
PowerUserPrivilegesRequired=Ci vole à esse cunnettu cum’è un amministratore o fà parte di u gruppu « Utilizatori cù putere » quandu voi installate stu prugramma.
SetupAppRunningError=L’assistente hà vistu chì %1 era dighjà in corsu.%n%nCi vole à chjode tutte e so finestre avà, eppò sceglie Vai per cuntinuà, o Abbandunà per compie.
UninstallAppRunningError=A disinstallazione hà vistu chì %1 era dighjà in corsu.%n%nCi vole à chjode tutte e so finestre avà, eppò sceglie Vai per cuntinuà, o Abbandunà per compie.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Selezziunà u modu d’installazione di l’assistente
PrivilegesRequiredOverrideInstruction=Selezziunà u modu d’installazione
PrivilegesRequiredOverrideText1=%1 pò esse installatu per tutti l’utilizatore (richiede i diritti d’amministratore), o solu per voi.
PrivilegesRequiredOverrideText2=%1 pò esse installatu solu per voi, o per tutti l’utilizatore (richiede i diritti d’amministratore).
PrivilegesRequiredOverrideAllUsers=Installazione per &tutti l’utilizatori
PrivilegesRequiredOverrideAllUsersRecommended=Installazione per &tutti l’utilizatori (ricumandatu)
PrivilegesRequiredOverrideCurrentUser=Installazione solu per &mè
PrivilegesRequiredOverrideCurrentUserRecommended=Installazione solu per &mè (ricumandatu)

; *** Misc. errors
ErrorCreatingDir=L’assistente ùn hà micca pussutu creà u cartulare « %1 »
ErrorTooManyFilesInDir=Impussibule di creà un schedariu in u cartulare « %1 » perchè ellu ne cuntene troppu

; *** Setup common messages
ExitSetupTitle=Compie l’assistente
ExitSetupMessage=L’assistente ùn hè micca compiu bè. S’è voi escite avà, u prugramma ùn serà micca installatu.%n%nPudete impiegà l’assistente torna un altra volta per compie l’installazione.%n%nCompie l’assistente ?
AboutSetupMenuItem=&Apprupositu di l’assistente…
AboutSetupTitle=Apprupositu di l’assistente
AboutSetupMessage=%1 versione %2%n%3%n%n%1 pagina d’accolta :%n%4
AboutSetupNote=
TranslatorNote=Traduzzione in lingua corsa da Patriccollu di Santa Maria è Sichè

; *** Buttons
ButtonBack=< &Precedente
ButtonNext=&Seguente >
ButtonInstall=&Installà
ButtonOK=Vai
ButtonCancel=Abbandunà
ButtonYes=&Iè
ButtonYesToAll=Iè per &tutti
ButtonNo=I&nnò
ButtonNoToAll=Innò per t&utti
ButtonFinish=&Piantà
ButtonBrowse=&Sfuglià…
ButtonWizardBrowse=&Sfuglià…
ButtonNewFolder=&Creà un novu cartulare

; *** "Select Language" dialog messages
SelectLanguageTitle=Definisce a lingua di l’assistente
SelectLanguageLabel=Selezziunà a lingua à impiegà per l’installazione.

; *** Common wizard text
ClickNext=Sceglie Seguente per cuntinuà, o Abbandunà per compie l’assistente.
BeveledLabel=
BrowseDialogTitle=Sfuglià u cartulare
BrowseDialogLabel=Selezziunà un cartulare in a lista inghjò, eppò sceglie Vai.
NewFolderName=Novu cartulare

; *** "Welcome" wizard page
WelcomeLabel1=Benvenuta in l’assistente d’installazione di [name]
WelcomeLabel2=Quessu installerà [name/ver] nant’à l’urdinatore.%n%nHè ricumandatu di chjode tutte l’altre appiecazioni nanzu di cuntinuà.

; *** "Password" wizard page
WizardPassword=Parolla d’entrata
PasswordLabel1=L’installazione hè prutetta da una parolla d’entrata.
PasswordLabel3=Ci vole à pruvede a parolla d’entrata, eppò sceglie Seguente per cuntinuà. E parolle d’entrata ponu cuntene maiuscule è minuscule.
PasswordEditLabel=&Parolla d’entrata :
IncorrectPassword=A parolla d’entrata pruvista ùn hè micca curretta. Ci vole à pruvà torna.

; *** "License Agreement" wizard page
WizardLicense=Cuntrattu di licenza
LicenseLabel=Ci vole à leghje l’infurmazione impurtante chì seguiteghja nanzu di cuntinuà.
LicenseLabel3=Ci vole à leghje u cuntrattu di licenza chì seguiteghja. Duvete accettà i termini di stu cuntrattu nanzu di cuntinuà l’installazione.
LicenseAccepted=Sò d’&accunsentu cù u cuntrattu
LicenseNotAccepted=Ùn sò &micca d’accunsentu cù u cuntrattu

; *** "Information" wizard pages
WizardInfoBefore=Infurmazione
InfoBeforeLabel=Ci vole à leghje l’infurmazione impurtante chì seguiteghja nanzu di cuntinuà.
InfoBeforeClickLabel=Quandu site prontu à cuntinuà cù l’assistente, sciglite Seguente.
WizardInfoAfter=Infurmazione
InfoAfterLabel=Ci vole à leghje l’infurmazione impurtante chì seguiteghja nanzu di cuntinuà.
InfoAfterClickLabel=Quandu site prontu à cuntinuà cù l’assistente, sciglite Seguente.

; *** "User Information" wizard page
WizardUserInfo=Infurmazioni di l’utilizatore
UserInfoDesc=Ci vole à scrive e vostre infurmazioni.
UserInfoName=&Nome d’utilizatore :
UserInfoOrg=&Urganismu :
UserInfoSerial=&Numeru di Seria :
UserInfoNameRequired=Ci vole à scrive un nome.

; *** "Select Destination Location" wizard page
WizardSelectDir=Selezziunà u locu di destinazione
SelectDirDesc=Induve [name] deve esse installatu ?
SelectDirLabel3=L’assistente installerà [name] in stu cartulare.
SelectDirBrowseLabel=Per cuntinuà, sceglie Seguente. S’è voi preferisce selezziunà un altru cartulare, sciglite Sfuglià.
DiskSpaceGBLabel=Hè richiestu omancu [gb] Go di spaziu liberu di discu.
DiskSpaceMBLabel=Hè richiestu omancu [mb] Mo di spaziu liberu di discu.
CannotInstallToNetworkDrive=L’assistente ùn pò micca installà nant’à un discu di a reta.
CannotInstallToUNCPath=L’assistente ùn pò micca installà in un chjassu UNC.
InvalidPath=Ci vole à scrive un chjassu cumplettu cù a lettera di u lettore ; per indettu :%n%nC:\APP%n%no un chjassu UNC in a forma :%n%n\\servitore\spartu
InvalidDrive=U lettore o u chjassu UNC spartu ùn esiste micca o ùn hè micca accessibule. Ci vole à selezziunane un altru.
DiskSpaceWarningTitle=Ùn basta u spaziu discu
DiskSpaceWarning=L’assistente richiede omancu %1 Ko di spaziu liberu per installà, ma u lettore selezziunatu hà solu %2 Ko dispunibule.%n%nVulete cuntinuà quantunque ?
DirNameTooLong=U nome di cartulare o u chjassu hè troppu longu.
InvalidDirName=U nome di cartulare ùn hè micca accettevule.
BadDirName32=I nomi di cartulare ùn ponu micca cuntene sti caratteri :%n%n%1
DirExistsTitle=Cartulare esistente
DirExists=U cartulare :%n%n%1%n%nesiste dighjà. Vulete installà in stu cartulare quantunque ?
DirDoesntExistTitle=Cartulare inesistente
DirDoesntExist=U cartulare :%n%n%1%n%nùn esiste micca. Vulete chì stu cartulare sia creatu ?

; *** "Select Components" wizard page
WizardSelectComponents=Selezzione di cumpunenti
SelectComponentsDesc=Chì cumpunenti devenu esse installati ?
SelectComponentsLabel2=Selezziunà i cumpunenti à installà ; deselezziunà quelli ch’ùn devenu micca esse installati. Sceglie Seguente quandu site prontu à cuntinuà.
FullInstallation=Installazione sana
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Installazione cumpatta
CustomInstallation=Installazione persunalizata
NoUninstallWarningTitle=Cumpunenti esistenti
NoUninstallWarning=L’assistente hà vistu chì sti cumpunenti sò dighjà installati nant’à l’urdinatore :%n%n%1%n%nDeselezziunà sti cumpunenti ùn i disinstallerà micca.%n%nVulete cuntinuà quantunque ?
ComponentSize1=%1 Ko
ComponentSize2=%1 Mo
ComponentsDiskSpaceGBLabel=A selezzione attuale richiede omancu [gb] Go di spaziu liberu nant’à u discu.
ComponentsDiskSpaceMBLabel=A selezzione attuale richiede omancu [mb] Mo di spaziu liberu nant’à u discu.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Selezziunà trattamenti addizziunali
SelectTasksDesc=Chì trattamenti addizziunali vulete fà ?
SelectTasksLabel2=Selezziunà i trattamenti addizziunali chì l’assistente deve fà durante l’installazione di [name], eppò sceglie Seguente.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Selezzione di u cartulare di u listinu « Démarrer »
SelectStartMenuFolderDesc=Induve l’assistente deve piazzà l’accurtatoghji di u prugramma ?
SelectStartMenuFolderLabel3=L’assistente piazzerà l’accurtatoghji di u prugramma in stu cartulare di u listinu « Démarrer ».
SelectStartMenuFolderBrowseLabel=Per cuntinuà, sceglie Seguente. S’è voi preferisce selezziunà un altru cartulare, sciglite Sfuglià.
MustEnterGroupName=Ci vole à scrive un nome di cartulare.
GroupNameTooLong=U nome di cartulare o u chjassu hè troppu longu.
InvalidGroupName=U nome di cartulare ùn hè micca accettevule.
BadGroupName=U nome di u cartulare ùn pò micca cuntene alcunu di sti caratteri :%n%n%1
NoProgramGroupCheck2=Ùn creà &micca di cartulare in u listinu « Démarrer »

; *** "Ready to Install" wizard page
WizardReady=Prontu à Installà
ReadyLabel1=Avà l’assistente hè prontu à principià l’installazione di [name] nant’à l’urdinatore.
ReadyLabel2a=Sceglie Installà per cuntinuà l’installazione, o nant’à Precedente per rivede o cambià qualchì preferenza.
ReadyLabel2b=Sceglie Installà per cuntinuà l’installazione.
ReadyMemoUserInfo=Infurmazioni di l’utilizatore :
ReadyMemoDir=Cartulare d’installazione :
ReadyMemoType=Tipu d’installazione :
ReadyMemoComponents=Cumpunenti selezziunati :
ReadyMemoGroup=Cartulare di u listinu « Démarrer » :
ReadyMemoTasks=Trattamenti addizziunali :

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Scaricamentu di i schedarii addiziunali…
ButtonStopDownload=&Piantà u scaricamentu
StopDownload=Site sicuru di vulè piantà u scaricamentu ?
ErrorDownloadAborted=Scaricamentu interrottu
ErrorDownloadFailed=Scaricamentu fiascu : %1 %2
ErrorDownloadSizeFailed=Fiascu per ottene a dimensione : %1 %2
ErrorFileHash1=Fiascu di u tazzeghju di u schedariu : %1
ErrorFileHash2=Tazzeghju di u schedariu inaccettevule : aspettatu %1, trovu %2
ErrorProgress=Prugressione inaccettevule : %1 di %2
ErrorFileSize=Dimensione di u schedariu inaccettevule : aspettatu %1, trovu %2

; *** "Preparing to Install" wizard page
WizardPreparing=Preparazione di l’installazione
PreparingDesc=L’assistente appronta l’installazione di [name] nant’à l’urdinatore.
PreviousInstallNotCompleted=L’installazione o a cacciatura di un prugramma precedente ùn s’hè micca compia bè. Ci vulerà à ridimarrà l’urdinatore per compie st’installazione.%n%nDopu, ci vulerà à rilancià l’assistente per compie l’installazione di [name].
CannotContinue=L’assistente ùn pò micca cuntinuà. Sceglie Abbandunà per esce.
ApplicationsFound=St’appiecazioni impieganu schedarii chì devenu esse mudificati da l’assistente. Hè ricumandatu di permette à l’assistente di chjode autumaticamente st’appiecazioni.
ApplicationsFound2=St’appiecazioni impieganu schedarii chì devenu esse mudificati da l’assistente. Hè ricumandatu di permette à l’assistente di chjode autumaticamente st’appiecazioni. S’è l’installazione si compie bè, l’assistente pruverà di rilancià l’appiecazioni.
CloseApplications=Chjode &autumaticamente l’appiecazioni
DontCloseApplications=Ùn chjode &micca l’appiecazioni
ErrorCloseApplications=L’assistente ùn hà micca pussutu chjode autumaticamente tutti l’appiecazioni. Nanzu di cuntinuà, hè ricumandatu di chjode tutti l’appiecazioni chì impieganu schedarii chì devenu esse mudificati da l’assistente durante l’installazione.
PrepareToInstallNeedsRestart=L’assistente deve ridimarrà l’urdinatore. Dopu, ci vulerà à rilancià l’assistente per compie l’installazione di [name].%n%nVulete ridimarrà l’urdinatore subitu ?

; *** "Installing" wizard page
WizardInstalling=Installazione in corsu
InstallingLabel=Ci vole à aspettà durante l’installazione di [name] nant’à l’urdinatore.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Fine di l’installazione di [name]
FinishedLabelNoIcons=L’assistente hà compiu l’installazione di [name] nant’à l’urdinatore.
FinishedLabel=L’assistente hà compiu l’installazione di [name] nant’à l’urdinatore. L’appiecazione pò esse lanciata selezziunendu l’accurtatoghji installati.
ClickFinish=Sceglie Piantà per compie l’assistente.
FinishedRestartLabel=Per compie l’installazione di [name], l’assistente deve ridimarrà l’urdinatore. Vulete ridimarrà l’urdinatore subitu ?
FinishedRestartMessage=Per compie l’installazione di [name], l’assistente deve ridimarrà l’urdinatore.%n%nVulete ridimarrà l’urdinatore subitu ?
ShowReadmeCheck=Iè, vogliu leghje u schedariu LISEZMOI o README
YesRadio=&Iè, ridimarrà l’urdinatore subitu
NoRadio=I&nnò, preferiscu ridimarrà l’urdinatore dopu
; used for example as 'Run MyProg.exe'
RunEntryExec=Eseguisce %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Fighjà %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=L’assistente hà bisogniu di u discu seguente
SelectDiskLabel2=Mette u discu %1 è sceglie Vai.%n%nS’è i schedarii di stu discu si trovanu in un’altru cartulare chì quellu indicatu inghjò, scrive u chjassu currettu o sceglie Sfuglià.
PathLabel=&Chjassu :
FileNotInDir2=U schedariu « %1 » ùn si truva micca in « %2 ». Mette u discu curretu o sceglie un’altru cartulare.
SelectDirectoryLabel=Ci vole à specificà induve si trova u discu seguente.

; *** Installation phase messages
SetupAborted=L’installazione ùn s’hè micca compia bè.%n%nCi vole à currege u penseru è eseguisce l’assistente torna.
AbortRetryIgnoreSelectAction=Selezziunate un’azzione
AbortRetryIgnoreRetry=&Pruvà torna
AbortRetryIgnoreIgnore=&Ignurà u sbagliu è cuntinuà
AbortRetryIgnoreCancel=Abbandunà l’installazione

; *** Installation status messages
StatusClosingApplications=Chjusura di l’appiecazioni…
StatusCreateDirs=Creazione di i cartulari…
StatusExtractFiles=Estrazzione di i schedarii…
StatusCreateIcons=Creazione di l’accurtatoghji…
StatusCreateIniEntries=Creazione di l’elementi INI…
StatusCreateRegistryEntries=Creazione di l’elementi di u registru…
StatusRegisterFiles=Arregistramentu di i schedarii…
StatusSavingUninstall=Cunservazione di l’informazioni di disinstallazione…
StatusRunProgram=Cumpiera di l’installazione…
StatusRestartingApplications=Relanciu di l’appiecazioni…
StatusRollback=Annulazione di i mudificazioni…

; *** Misc. errors
ErrorInternal2=Sbagliu internu : %1
ErrorFunctionFailedNoCode=Fiascu di %1
ErrorFunctionFailed=Fiascu di %1 ; codice %2
ErrorFunctionFailedWithMessage=Fiascu di %1 ; codice %2.%n%3
ErrorExecutingProgram=Impussibule d’eseguisce u schedariu :%n%1

; *** Registry errors
ErrorRegOpenKey=Sbagliu durante l’apertura di a chjave di registru :%n%1\%2
ErrorRegCreateKey=Sbagliu durante a creazione di a chjave di registru :%n%1\%2
ErrorRegWriteKey=Sbagliu durante a scrittura di a chjave di registru :%n%1\%2

; *** INI errors
ErrorIniEntry=Sbagliu durante a creazione di l’elementu INI in u schedariu « %1 ».

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=Ignurà stu &schedariu (micca ricumandatu)
FileAbortRetryIgnoreIgnoreNotRecommended=&Ignurà u sbagliu è cuntinuà (micca ricumandatu)
SourceIsCorrupted=U schedariu d’urigine hè alteratu
SourceDoesntExist=U schedariu d’urigine « %1 » ùn esiste micca
ExistingFileReadOnly2=U schedariu esistente hà un attributu di lettura-sola è ùn pò micca esse rimpiazzatu.
ExistingFileReadOnlyRetry=&Caccià l’attributu di lettura-sola è pruvà torna
ExistingFileReadOnlyKeepExisting=Cunservà u schedariu &esistente
ErrorReadingExistingDest=Un sbagliu hè accadutu pruvendu di leghje u schedariu esistente :
FileExistsSelectAction=Selezziunate un’azzione
FileExists2=U schedariu esiste dighjà.
FileExistsOverwriteExisting=&Rimpiazzà u schedariu chì esiste
FileExistsKeepExisting=Cunservà u schedariu &esistente
FileExistsOverwriteOrKeepAll=&Fà què per l’altri cunflitti
ExistingFileNewerSelectAction=Selezziunate un’azzione
ExistingFileNewer2=U schedariu esistente hè più recente chì quellu chì l’assistente prova d’installà.
ExistingFileNewerOverwriteExisting=&Rimpiazzà u schedariu chì esiste
ExistingFileNewerKeepExisting=Cunservà u schedariu &esistente (ricumandatu)
ExistingFileNewerOverwriteOrKeepAll=&Fà què per l’altri cunflitti
ErrorChangingAttr=Un sbagliu hè accadutu pruvendu di cambià l’attributi di u schedariu esistente :
ErrorCreatingTemp=Un sbagliu hè accadutu pruvendu di creà un schedariu in u cartulare di destinazione :
ErrorReadingSource=Un sbagliu hè accadutu pruvendu di leghje u schedariu d’urigine :
ErrorCopying=Un sbagliu hè accadutu pruvendu di cupià un schedariu :
ErrorReplacingExistingFile=Un sbagliu hè accadutu pruvendu di rimpiazzà u schedariu esistente :
ErrorRestartReplace=Fiascu di Rimpiazzamentu di schedariu à u riavviu di l’urdinatore :
ErrorRenamingTemp=Un sbagliu hè accadutu pruvendu di rinuminà un schedariu in u cartulare di destinazione :
ErrorRegisterServer=Impussibule d’arregistrà a bibliuteca DLL/OCX : %1
ErrorRegSvr32Failed=Fiascu di RegSvr32 cù codice d’esciuta %1
ErrorRegisterTypeLib=Impussibule d’arregistrà a bibliuteca di tipu : %1

; *** Uninstall display name markings
; used for example as 'My Program (32-bit)'
UninstallDisplayNameMark=%1 (%2)
; used for example as 'My Program (32-bit, All users)'
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-bit
UninstallDisplayNameMark64Bit=64-bit
UninstallDisplayNameMarkAllUsers=Tutti l’utilizatori
UninstallDisplayNameMarkCurrentUser=L’utilizatore attuale

; *** Post-installation errors
ErrorOpeningReadme=Un sbagliu hè accadutu pruvendu d’apre u schedariu LISEZMOI o README.
ErrorRestartingComputer=L’assistente ùn hà micca pussutu ridimarrà l’urdinatore. Ci vole à fallu manualmente.

; *** Uninstaller messages
UninstallNotFound=U schedariu « %1 » ùn esiste micca. Impussibule di disinstallà.
UninstallOpenError=U schedariu« %1 » ùn pò micca esse apertu. Impussibule di disinstallà
UninstallUnsupportedVer=U ghjurnale di disinstallazione « %1 » hè in una forma scunnisciuta da sta versione di l’assistente di disinstallazione. Impussibule di disinstallà
UninstallUnknownEntry=Un elementu scunisciutu (%1) hè statu trovu in u ghjurnale di disinstallazione
ConfirmUninstall=Site sicuru di vulè caccià cumpletamente %1 è tutti i so cumpunenti ?
UninstallOnlyOnWin64=St’appiecazione pò esse disinstallata solu cù una versione 64-bit di Windows.
OnlyAdminCanUninstall=St’appiecazione pò esse disinstallata solu da un utilizatore di u gruppu d’amministratori.
UninstallStatusLabel=Ci vole à aspettà chì %1 sia cacciatu di l’urdinatore.
UninstalledAll=%1 hè statu cacciatu bè da l’urdinatore.
UninstalledMost=A disinstallazione di %1 hè compia.%n%nQualchì elementu ùn pò micca esse cacciatu. Ci vole à cacciallu manualmente.
UninstalledAndNeedsRestart=Per compie a disinstallazione di %1, l’urdinatore deve esse ridimarratu.%n%nVulete ridimarrà l’urdinatore subitu ?
UninstallDataCorrupted=U schedariu « %1 » hè alteratu. Impussibule di disinstallà

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Caccià i schedarii sparti ?
ConfirmDeleteSharedFile2=U sistema indicheghja chì u schedariu spartu ùn hè più impiegatu da nisunu prugramma. Vulete chì a disinstallazione cacci stu schedariu spartu ?%n%nS’è qualchì prugramma impiegheghja sempre stu schedariu è ch’ellu hè cacciatu, quellu prugramma ùn puderà funziunà currettamente. S’è ùn site micca sicuru, sceglie Innò. Lascià stu schedariu nant’à u sistema ùn pò micca pruduce danni.
SharedFileNameLabel=Nome di schedariu :
SharedFileLocationLabel=Lucalizazione :
WizardUninstalling=Statu di disinstallazione
StatusUninstalling=Disinstallazione di %1…

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Installazione di %1.
ShutdownBlockReasonUninstallingApp=Disinstallazione di %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 versione %2
AdditionalIcons=Accurtatoghji addizziunali :
CreateDesktopIcon=Creà un accurtatoghju nant’à u &scagnu
CreateQuickLaunchIcon=Creà un accurtatoghju nant’à a barra di &lanciu prontu
ProgramOnTheWeb=%1 nant’à u Web
UninstallProgram=Disinstallà %1
LaunchProgram=Lancià %1
AssocFileExtension=&Assucià %1 cù l’estensione di schedariu %2
AssocingFileExtension=Associu di %1 cù l’estensione di schedariu %2…
AutoStartProgramGroupDescription=Lanciu autumaticu :
AutoStartProgram=Lanciu autumaticu di %1
AddonHostProgramNotFound=Impussibule di truvà %1 in u cartulare selezziunatu.%n%nVulete cuntinuà l’installazione quantunque ?
