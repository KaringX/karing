; *******************************************************
; ***                                                 ***
; *** Inno Setup version 6.1.0+ Czech messages        ***
; ***                                                 ***
; *** Original Author:                                ***
; ***                                                 ***
; ***   Ivo Bauer (bauer@ozm.cz)                      ***
; ***                                                 ***
; *** Contributors:                                   ***
; ***                                                 ***
; ***   Lubos Stanek (lubek@users.sourceforge.net)    ***
; ***   Vitezslav Svejdar (vitezslav.svejdar@cuni.cz) ***
; ***   Jiri Fenz (jirifenz@gmail.com)                ***
; ***                                                 ***
; *******************************************************

[LangOptions]
LanguageName=<010C>e<0161>tina
LanguageID=$0405
LanguageCodePage=1250

[Messages]

; *** Application titles
SetupAppTitle=Prùvodce instalací
SetupWindowTitle=Prùvodce instalací - %1
UninstallAppTitle=Prùvodce odinstalací
UninstallAppFullTitle=Prùvodce odinstalací - %1

; *** Misc. common
InformationTitle=Informace
ConfirmTitle=Potvrzení
ErrorTitle=Chyba

; *** SetupLdr messages
SetupLdrStartupMessage=Vítá Vás prùvodce instalací produktu %1. Chcete pokraèovat?
LdrCannotCreateTemp=Nelze vytvoøit doèasnı soubor. Prùvodce instalací bude ukonèen
LdrCannotExecTemp=Nelze spustit soubor v doèasné sloce. Prùvodce instalací bude ukonèen
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nChyba %2: %3
SetupFileMissing=Instalaèní sloka neobsahuje soubor %1. Opravte prosím tuto chybu nebo si opatøete novou kopii tohoto produktu.
SetupFileCorrupt=Soubory prùvodce instalací jsou poškozeny. Opatøete si prosím novou kopii tohoto produktu.
SetupFileCorruptOrWrongVer=Soubory prùvodce instalací jsou poškozeny nebo se nesluèují s touto verzí prùvodce instalací. Opravte prosím tuto chybu nebo si opatøete novou kopii tohoto produktu.
InvalidParameter=Pøíkazovı øádek obsahuje neplatnı parametr:%n%n%1
SetupAlreadyRunning=Prùvodce instalací je ji spuštìn.
WindowsVersionNotSupported=Tento produkt nepodporuje verzi MS Windows, která bìí na Vašem poèítaèi.
WindowsServicePackRequired=Tento produkt vyaduje %1 Service Pack %2 nebo vyšší.
NotOnThisPlatform=Tento produkt nelze spustit ve %1.
OnlyOnThisPlatform=Tento produkt musí bıt spuštìn ve %1.
OnlyOnTheseArchitectures=Tento produkt lze nainstalovat pouze ve verzích MS Windows s podporou architektury procesorù:%n%n%1
WinVersionTooLowError=Tento produkt vyaduje %1 verzi %2 nebo vyšší.
WinVersionTooHighError=Tento produkt nelze nainstalovat ve %1 verzi %2 nebo vyšší.
AdminPrivilegesRequired=K instalaci tohoto produktu musíte bıt pøihlášeni s oprávnìními správce.
PowerUserPrivilegesRequired=K instalaci tohoto produktu musíte bıt pøihlášeni s oprávnìními správce nebo èlena skupiny Power Users.
SetupAppRunningError=Prùvodce instalací zjistil, e produkt %1 je nyní spuštìn.%n%nZavøete prosím všechny instance tohoto produktu a pak pokraèujte klepnutím na tlaèítko OK, nebo ukonèete instalaci tlaèítkem Zrušit.
UninstallAppRunningError=Prùvodce odinstalací zjistil, e produkt %1 je nyní spuštìn.%n%nZavøete prosím všechny instance tohoto produktu a pak pokraèujte klepnutím na tlaèítko OK, nebo ukonèete odinstalaci tlaèítkem Zrušit.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Vıbìr reimu prùvodce instalací
PrivilegesRequiredOverrideInstruction=Zvolte reim instalace
PrivilegesRequiredOverrideText1=Produkt %1 lze nainstalovat pro všechny uivatele (musíte bıt pøihlášeni s oprávnìními správce), nebo pouze pro Vás.
PrivilegesRequiredOverrideText2=Produkt %1 lze nainstalovat pouze pro Vás, nebo pro všechny uivatele (musíte bıt pøihlášeni s oprávnìními správce).
PrivilegesRequiredOverrideAllUsers=Nainstalovat pro &všechny uivatele
PrivilegesRequiredOverrideAllUsersRecommended=Nainstalovat pro &všechny uivatele (doporuèuje se)
PrivilegesRequiredOverrideCurrentUser=Nainstalovat pouze pro &mì
PrivilegesRequiredOverrideCurrentUserRecommended=Nainstalovat pouze pro &mì (doporuèuje se)

; *** Misc. errors
ErrorCreatingDir=Prùvodci instalací se nepodaøilo vytvoøit sloku "%1"
ErrorTooManyFilesInDir=Nelze vytvoøit soubor ve sloce "%1", protoe tato sloka ji obsahuje pøíliš mnoho souborù

; *** Setup common messages
ExitSetupTitle=Ukonèit prùvodce instalací
ExitSetupMessage=Instalace nebyla zcela dokonèena. Jestlie nyní prùvodce instalací ukonèíte, produkt nebude nainstalován.%n%nPrùvodce instalací mùete znovu spustit kdykoliv jindy a instalaci dokonèit.%n%nChcete prùvodce instalací ukonèit?
AboutSetupMenuItem=&O prùvodci instalací...
AboutSetupTitle=O prùvodci instalací
AboutSetupMessage=%1 verze %2%n%3%n%n%1 domovská stránka:%n%4
AboutSetupNote=
TranslatorNote=Czech translation maintained by Ivo Bauer (bauer@ozm.cz), Lubos Stanek (lubek@users.sourceforge.net), Vitezslav Svejdar (vitezslav.svejdar@cuni.cz) and Jiri Fenz (jirifenz@gmail.com)

; *** Buttons
ButtonBack=< &Zpìt
ButtonNext=&Další >
ButtonInstall=&Instalovat
ButtonOK=OK
ButtonCancel=Zrušit
ButtonYes=&Ano
ButtonYesToAll=Ano &všem
ButtonNo=&Ne
ButtonNoToAll=N&e všem
ButtonFinish=&Dokonèit
ButtonBrowse=&Procházet...
ButtonWizardBrowse=&Procházet...
ButtonNewFolder=&Vytvoøit novou sloku

; *** "Select Language" dialog messages
SelectLanguageTitle=Vıbìr jazyka prùvodce instalací
SelectLanguageLabel=Zvolte jazyk, kterı se má pouít bìhem instalace.

; *** Common wizard text
ClickNext=Pokraèujte klepnutím na tlaèítko Další, nebo ukonèete prùvodce instalací tlaèítkem Zrušit.
BeveledLabel=
BrowseDialogTitle=Vyhledat sloku
BrowseDialogLabel=Z níe uvedeného seznamu vyberte sloku a klepnìte na tlaèítko OK.
NewFolderName=Nová sloka

; *** "Welcome" wizard page
WelcomeLabel1=Vítá Vás prùvodce instalací produktu [name].
WelcomeLabel2=Produkt [name/ver] bude nainstalován na Váš poèítaè.%n%nDøíve ne budete pokraèovat, doporuèuje se zavøít veškeré spuštìné aplikace.

; *** "Password" wizard page
WizardPassword=Heslo
PasswordLabel1=Tato instalace je chránìna heslem.
PasswordLabel3=Zadejte prosím heslo a pokraèujte klepnutím na tlaèítko Další. Pøi zadávání hesla rozlišujte malá a velká písmena.
PasswordEditLabel=&Heslo:
IncorrectPassword=Zadané heslo není správné. Zkuste to prosím znovu.

; *** "License Agreement" wizard page
WizardLicense=Licenèní smlouva
LicenseLabel=Døíve ne budete pokraèovat, pøeètìte si prosím pozornì následující dùleité informace.
LicenseLabel3=Pøeètìte si prosím následující licenèní smlouvu. Aby instalace mohla pokraèovat, musíte souhlasit s podmínkami této smlouvy.
LicenseAccepted=&Souhlasím s podmínkami licenèní smlouvy
LicenseNotAccepted=&Nesouhlasím s podmínkami licenèní smlouvy

; *** "Information" wizard pages
WizardInfoBefore=Informace
InfoBeforeLabel=Døíve ne budete pokraèovat, pøeètìte si prosím pozornì následující dùleité informace.
InfoBeforeClickLabel=Pokraèujte v instalaci klepnutím na tlaèítko Další.
WizardInfoAfter=Informace
InfoAfterLabel=Døíve ne budete pokraèovat, pøeètìte si prosím pozornì následující dùleité informace.
InfoAfterClickLabel=Pokraèujte v instalaci klepnutím na tlaèítko Další.

; *** "User Information" wizard page
WizardUserInfo=Informace o uivateli
UserInfoDesc=Zadejte prosím poadované údaje.
UserInfoName=&Uivatelské jméno:
UserInfoOrg=&Spoleènost:
UserInfoSerial=Sé&riové èíslo:
UserInfoNameRequired=Musíte zadat uivatelské jméno.

; *** "Select Destination Location" wizard page
WizardSelectDir=Zvolte cílové umístìní
SelectDirDesc=Kam má bıt produkt [name] nainstalován?
SelectDirLabel3=Prùvodce nainstaluje produkt [name] do následující sloky.
SelectDirBrowseLabel=Pokraèujte klepnutím na tlaèítko Další. Chcete-li zvolit jinou sloku, klepnìte na tlaèítko Procházet.
DiskSpaceGBLabel=Instalace vyaduje nejménì [gb] GB volného místa na disku.
DiskSpaceMBLabel=Instalace vyaduje nejménì [mb] MB volného místa na disku.
CannotInstallToNetworkDrive=Prùvodce instalací nemùe instalovat do síové jednotky.
CannotInstallToUNCPath=Prùvodce instalací nemùe instalovat do cesty UNC.
InvalidPath=Musíte zadat úplnou cestu vèetnì písmene jednotky; napøíklad:%n%nC:\Aplikace%n%nnebo cestu UNC ve tvaru:%n%n\\server\sdílená sloka
InvalidDrive=Vámi zvolená jednotka nebo cesta UNC neexistuje nebo není dostupná. Zvolte prosím jiné umístìní.
DiskSpaceWarningTitle=Nedostatek místa na disku
DiskSpaceWarning=Prùvodce instalací vyaduje nejménì %1 KB volného místa pro instalaci produktu, ale na zvolené jednotce je dostupnıch pouze %2 KB.%n%nChcete pøesto pokraèovat?
DirNameTooLong=Název sloky nebo cesta jsou pøíliš dlouhé.
InvalidDirName=Název sloky není platnı.
BadDirName32=Název sloky nemùe obsahovat ádnı z následujících znakù:%n%n%1
DirExistsTitle=Sloka existuje
DirExists=Sloka:%n%n%1%n%nji existuje. Má se pøesto instalovat do této sloky?
DirDoesntExistTitle=Sloka neexistuje
DirDoesntExist=Sloka:%n%n%1%n%nneexistuje. Má bıt tato sloka vytvoøena?

; *** "Select Components" wizard page
WizardSelectComponents=Zvolte souèásti
SelectComponentsDesc=Jaké souèásti mají bıt nainstalovány?
SelectComponentsLabel2=Zaškrtnìte souèásti, které mají bıt nainstalovány; souèásti, které se nemají instalovat, ponechte nezaškrtnuté. Pokraèujte klepnutím na tlaèítko Další.
FullInstallation=Úplná instalace
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Kompaktní instalace
CustomInstallation=Volitelná instalace
NoUninstallWarningTitle=Souèásti existují
NoUninstallWarning=Prùvodce instalací zjistil, e následující souèásti jsou ji na Vašem poèítaèi nainstalovány:%n%n%1%n%nNezahrnete-li tyto souèásti do vıbìru, nebudou nyní odinstalovány.%n%nChcete pøesto pokraèovat?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceGBLabel=Vybrané souèásti vyadují nejménì [gb] GB místa na disku.
ComponentsDiskSpaceMBLabel=Vybrané souèásti vyadují nejménì [mb] MB místa na disku.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Zvolte další úlohy
SelectTasksDesc=Které další úlohy mají bıt provedeny?
SelectTasksLabel2=Zvolte další úlohy, které mají bıt provedeny v prùbìhu instalace produktu [name], a pak pokraèujte klepnutím na tlaèítko Další.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Vyberte sloku v nabídce Start
SelectStartMenuFolderDesc=Kam má prùvodce instalací umístit zástupce aplikace?
SelectStartMenuFolderLabel3=Prùvodce instalací vytvoøí zástupce aplikace v následující sloce nabídky Start.
SelectStartMenuFolderBrowseLabel=Pokraèujte klepnutím na tlaèítko Další. Chcete-li zvolit jinou sloku, klepnìte na tlaèítko Procházet.
MustEnterGroupName=Musíte zadat název sloky.
GroupNameTooLong=Název sloky nebo cesta jsou pøíliš dlouhé.
InvalidGroupName=Název sloky není platnı.
BadGroupName=Název sloky nemùe obsahovat ádnı z následujících znakù:%n%n%1
NoProgramGroupCheck2=&Nevytváøet sloku v nabídce Start

; *** "Ready to Install" wizard page
WizardReady=Instalace je pøipravena
ReadyLabel1=Prùvodce instalací je nyní pøipraven nainstalovat produkt [name] na Váš poèítaè.
ReadyLabel2a=Pokraèujte v instalaci klepnutím na tlaèítko Instalovat. Pøejete-li si zmìnit nìkterá nastavení instalace, klepnìte na tlaèítko Zpìt.
ReadyLabel2b=Pokraèujte v instalaci klepnutím na tlaèítko Instalovat.
ReadyMemoUserInfo=Informace o uivateli:
ReadyMemoDir=Cílové umístìní:
ReadyMemoType=Typ instalace:
ReadyMemoComponents=Vybrané souèásti:
ReadyMemoGroup=Sloka v nabídce Start:
ReadyMemoTasks=Další úlohy:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Stahují se další soubory...
ButtonStopDownload=&Zastavit stahování
StopDownload=Urèitì chcete stahování zastavit?
ErrorDownloadAborted=Stahování pøerušeno
ErrorDownloadFailed=Stahování selhalo: %1 %2
ErrorDownloadSizeFailed=Nepodaøilo se zjistit velikost: %1 %2
ErrorFileHash1=Nepodaøilo se urèit kontrolní souèet souboru: %1
ErrorFileHash2=Neplatnı kontrolní souèet souboru: oèekáváno %1, nalezeno %2
ErrorProgress=Neplatnı prùbìh: %1 of %2
ErrorFileSize=Neplatná velikost souboru: oèekáváno %1, nalezeno %2

; *** "Preparing to Install" wizard page
WizardPreparing=Pøíprava k instalaci
PreparingDesc=Prùvodce instalací pøipravuje instalaci produktu [name] na Váš poèítaè.
PreviousInstallNotCompleted=Instalace/odinstalace pøedchozího produktu nebyla zcela dokonèena. Aby mohla bıt dokonèena, musíte restartovat Váš poèítaè.%n%nPo restartování Vašeho poèítaèe spuste znovu prùvodce instalací, aby bylo moné dokonèit instalaci produktu [name].
CannotContinue=Prùvodce instalací nemùe pokraèovat. Ukonèete prosím prùvodce instalací klepnutím na tlaèítko Zrušit.
ApplicationsFound=Následující aplikace pøistupují k souborùm, které je tøeba bìhem instalace aktualizovat. Doporuèuje se povolit prùvodci instalací, aby tyto aplikace automaticky zavøel.
ApplicationsFound2=Následující aplikace pøistupují k souborùm, které je tøeba bìhem instalace aktualizovat. Doporuèuje se povolit prùvodci instalací, aby tyto aplikace automaticky zavøel. Po dokonèení instalace se prùvodce instalací pokusí aplikace restartovat.
CloseApplications=&Zavøít aplikace automaticky
DontCloseApplications=&Nezavírat aplikace
ErrorCloseApplications=Prùvodci instalací se nepodaøilo automaticky zavøít všechny aplikace. Døíve ne budete pokraèovat, doporuèuje se zavøít veškeré aplikace pøistupující k souborùm, které je tøeba bìhem instalace aktualizovat.
PrepareToInstallNeedsRestart=Prùvodce instalací musí restartovat Váš poèítaè. Po restartování Vašeho poèítaèe spuste prùvodce instalací znovu, aby bylo moné dokonèit instalaci produktu [name].%n%nChcete jej restartovat nyní?

; *** "Installing" wizard page
WizardInstalling=Instalování
InstallingLabel=Èekejte prosím, dokud prùvodce instalací nedokonèí instalaci produktu [name] na Váš poèítaè.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Dokonèuje se instalace produktu [name]
FinishedLabelNoIcons=Prùvodce instalací dokonèil instalaci produktu [name] na Váš poèítaè.
FinishedLabel=Prùvodce instalací dokonèil instalaci produktu [name] na Váš poèítaè. Produkt lze spustit pomocí nainstalovanıch zástupcù.
ClickFinish=Ukonèete prùvodce instalací klepnutím na tlaèítko Dokonèit.
FinishedRestartLabel=K dokonèení instalace produktu [name] je nezbytné, aby prùvodce instalací restartoval Váš poèítaè. Chcete jej restartovat nyní?
FinishedRestartMessage=K dokonèení instalace produktu [name] je nezbytné, aby prùvodce instalací restartoval Váš poèítaè.%n%nChcete jej restartovat nyní?
ShowReadmeCheck=Ano, chci zobrazit dokument "ÈTIMNE"
YesRadio=&Ano, chci nyní restartovat poèítaè
NoRadio=&Ne, poèítaè restartuji pozdìji
; used for example as 'Run MyProg.exe'
RunEntryExec=Spustit %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Zobrazit %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Prùvodce instalací vyaduje další disk
SelectDiskLabel2=Vlote prosím disk %1 a klepnìte na tlaèítko OK.%n%nPokud se soubory na tomto disku nacházejí v jiné sloce ne v té, která je zobrazena níe, pak zadejte správnou cestu nebo ji zvolte klepnutím na tlaèítko Procházet.
PathLabel=&Cesta:
FileNotInDir2=Soubor "%1" nelze najít v "%2". Vlote prosím správnı disk nebo zvolte jinou sloku.
SelectDirectoryLabel=Specifikujte prosím umístìní dalšího disku.

; *** Installation phase messages
SetupAborted=Instalace nebyla zcela dokonèena.%n%nOpravte prosím chybu a spuste prùvodce instalací znovu.
AbortRetryIgnoreSelectAction=Zvolte akci
AbortRetryIgnoreRetry=&Zopakovat akci
AbortRetryIgnoreIgnore=&Ignorovat chybu a pokraèovat
AbortRetryIgnoreCancel=Zrušit instalaci

; *** Installation status messages
StatusClosingApplications=Zavírají se aplikace...
StatusCreateDirs=Vytváøejí se sloky...
StatusExtractFiles=Extrahují se soubory...
StatusCreateIcons=Vytváøejí se zástupci...
StatusCreateIniEntries=Vytváøejí se záznamy v inicializaèních souborech...
StatusCreateRegistryEntries=Vytváøejí se záznamy v systémovém registru...
StatusRegisterFiles=Registrují se soubory...
StatusSavingUninstall=Ukládají se informace pro odinstalaci produktu...
StatusRunProgram=Dokonèuje se instalace...
StatusRestartingApplications=Restartují se aplikace...
StatusRollback=Provedené zmìny se vracejí zpìt...

; *** Misc. errors
ErrorInternal2=Interní chyba: %1
ErrorFunctionFailedNoCode=Funkce %1 selhala
ErrorFunctionFailed=Funkce %1 selhala; kód %2
ErrorFunctionFailedWithMessage=Funkce %1 selhala; kód %2.%n%3
ErrorExecutingProgram=Nelze spustit soubor:%n%1

; *** Registry errors
ErrorRegOpenKey=Došlo k chybì pøi otevírání klíèe systémového registru:%n%1\%2
ErrorRegCreateKey=Došlo k chybì pøi vytváøení klíèe systémového registru:%n%1\%2
ErrorRegWriteKey=Došlo k chybì pøi zápisu do klíèe systémového registru:%n%1\%2

; *** INI errors
ErrorIniEntry=Došlo k chybì pøi vytváøení záznamu v inicializaèním souboru "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&Pøeskoèit tento soubor (nedoporuèuje se)
FileAbortRetryIgnoreIgnoreNotRecommended=&Ignorovat chybu a pokraèovat (nedoporuèuje se)
SourceIsCorrupted=Zdrojovı soubor je poškozen
SourceDoesntExist=Zdrojovı soubor "%1" neexistuje
ExistingFileReadOnly2=Nelze nahradit existující soubor, protoe je urèen pouze pro ètení.
ExistingFileReadOnlyRetry=&Odstranit atribut "pouze pro ètení" a zopakovat akci
ExistingFileReadOnlyKeepExisting=&Ponechat existující soubor
ErrorReadingExistingDest=Došlo k chybì pøi pokusu o ètení existujícího souboru:
FileExistsSelectAction=Zvolte akci
FileExists2=Soubor ji existuje.
FileExistsOverwriteExisting=&Nahradit existující soubor
FileExistsKeepExisting=&Ponechat existující soubor
FileExistsOverwriteOrKeepAll=&Zachovat se stejnì u dalších konfliktù
ExistingFileNewerSelectAction=Zvolte akci
ExistingFileNewer2=Existující soubor je novìjší ne ten, kterı se prùvodce instalací pokouší instalovat.
ExistingFileNewerOverwriteExisting=&Nahradit existující soubor
ExistingFileNewerKeepExisting=&Ponechat existující soubor (doporuèuje se)
ExistingFileNewerOverwriteOrKeepAll=&Zachovat se stejnì u dalších konfliktù
ErrorChangingAttr=Došlo k chybì pøi pokusu o zmìnu atributù existujícího souboru:
ErrorCreatingTemp=Došlo k chybì pøi pokusu o vytvoøení souboru v cílové sloce:
ErrorReadingSource=Došlo k chybì pøi pokusu o ètení zdrojového souboru:
ErrorCopying=Došlo k chybì pøi pokusu o zkopírování souboru:
ErrorReplacingExistingFile=Došlo k chybì pøi pokusu o nahrazení existujícího souboru:
ErrorRestartReplace=Funkce "RestartReplace" prùvodce instalací selhala:
ErrorRenamingTemp=Došlo k chybì pøi pokusu o pøejmenování souboru v cílové sloce:
ErrorRegisterServer=Nelze zaregistrovat DLL/OCX: %1
ErrorRegSvr32Failed=Volání RegSvr32 selhalo s návratovım kódem %1
ErrorRegisterTypeLib=Nelze zaregistrovat typovou knihovnu: %1

; *** Uninstall display name markings
; used for example as 'My Program (32-bit)'
UninstallDisplayNameMark=%1 (%2)
; used for example as 'My Program (32-bit, All users)'
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32bitovı
UninstallDisplayNameMark64Bit=64bitovı
UninstallDisplayNameMarkAllUsers=Všichni uivatelé
UninstallDisplayNameMarkCurrentUser=Aktuální uivatel

; *** Post-installation errors
ErrorOpeningReadme=Došlo k chybì pøi pokusu o otevøení dokumentu "ÈTIMNE".
ErrorRestartingComputer=Prùvodci instalací se nepodaøilo restartovat Váš poèítaè. Restartujte jej prosím ruènì.

; *** Uninstaller messages
UninstallNotFound=Soubor "%1" neexistuje. Produkt nelze odinstalovat.
UninstallOpenError=Soubor "%1" nelze otevøít. Produkt nelze odinstalovat.
UninstallUnsupportedVer=Formát souboru se záznamy k odinstalaci produktu "%1" nebyl touto verzí prùvodce odinstalací rozpoznán. Produkt nelze odinstalovat
UninstallUnknownEntry=V souboru obsahujícím informace k odinstalaci produktu byla zjištìna neznámá poloka (%1)
ConfirmUninstall=Urèitì chcete produkt %1 a všechny jeho souèásti odinstalovat?
UninstallOnlyOnWin64=Tento produkt lze odinstalovat pouze v 64-bitovıch verzích MS Windows.
OnlyAdminCanUninstall=K odinstalaci tohoto produktu musíte bıt pøihlášeni s oprávnìními správce.
UninstallStatusLabel=Èekejte prosím, dokud produkt %1 nebude odinstalován z Vašeho poèítaèe.
UninstalledAll=Produkt %1 byl z Vašeho poèítaèe úspìšnì odinstalován.
UninstalledMost=Produkt %1 byl odinstalován.%n%nNìkteré jeho souèásti se odinstalovat nepodaøilo. Mùete je však odstranit ruènì.
UninstalledAndNeedsRestart=K dokonèení odinstalace produktu %1 je nezbytné, aby prùvodce odinstalací restartoval Váš poèítaè.%n%nChcete jej restartovat nyní?
UninstallDataCorrupted=Soubor "%1" je poškozen. Produkt nelze odinstalovat

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Odebrat sdílenı soubor?
ConfirmDeleteSharedFile2=Systém indikuje, e následující sdílenı soubor není pouíván ádnımi jinımi aplikacemi. Má bıt tento sdílenı soubor prùvodcem odinstalací odstranìn?%n%nPokud nìkteré aplikace tento soubor pouívají, pak po jeho odstranìní nemusejí pracovat správnì. Pokud si nejste jisti, zvolte Ne. Ponechání tohoto souboru ve Vašem systému nezpùsobí ádnou škodu.
SharedFileNameLabel=Název souboru:
SharedFileLocationLabel=Umístìní:
WizardUninstalling=Stav odinstalace
StatusUninstalling=Probíhá odinstalace produktu %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Probíhá instalace produktu %1.
ShutdownBlockReasonUninstallingApp=Probíhá odinstalace produktu %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 verze %2
AdditionalIcons=Další zástupci:
CreateDesktopIcon=Vytvoøit zástupce na &ploše
CreateQuickLaunchIcon=Vytvoøit zástupce na panelu &Snadné spuštìní
ProgramOnTheWeb=Aplikace %1 na internetu
UninstallProgram=Odinstalovat aplikaci %1
LaunchProgram=Spustit aplikaci %1
AssocFileExtension=Vytvoøit &asociaci mezi soubory typu %2 a aplikací %1
AssocingFileExtension=Vytváøí se asociace mezi soubory typu %2 a aplikací %1...
AutoStartProgramGroupDescription=Po spuštìní:
AutoStartProgram=Spouštìt aplikaci %1 automaticky
AddonHostProgramNotFound=Aplikace %1 nebyla ve Vámi zvolené sloce nalezena.%n%nChcete pøesto pokraèovat?
