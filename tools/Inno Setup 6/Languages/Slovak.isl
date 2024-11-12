; ******************************************************
; ***                                                ***
; *** Inno Setup version 6.1.0+ Slovak messages      ***
; ***                                                ***
; *** Original Author:                               ***
; ***                                                ***
; ***  Milan Potancok (milan.potancok AT gmail.com)  ***
; ***                                                ***
; *** Contributors:                                  ***
; ***                                                ***
; ***   Ivo Bauer (bauer AT ozm.cz)                  ***
; ***                                                ***
; ***   Tomas Falb (tomasf AT pobox.sk)              ***
; ***   Slappy (slappy AT pobox.sk)                  ***
; ***   Comments: (mitems58 AT gmail.com)            ***
; ***                                                ***
; *** Update: 28.01.2021                             ***
; ***                                                ***
; ******************************************************
;
; 

[LangOptions]
LanguageName=Sloven<010D>ina
LanguageID=$041b
LanguageCodePage=1250

[Messages]

; *** Application titles
SetupAppTitle=Sprievodca inštaláciou
SetupWindowTitle=Sprievodca inštaláciou - %1
UninstallAppTitle=Sprievodca odinštaláciou
UninstallAppFullTitle=Sprievodca odinštaláciou - %1

; *** Misc. common
InformationTitle=Informácie
ConfirmTitle=Potvrdenie
ErrorTitle=Chyba

; *** SetupLdr messages
SetupLdrStartupMessage=Víta Vás Sprievodca inštaláciou produktu %1. Prajete si pokračovať?
LdrCannotCreateTemp=Nie je možné vytvoriť dočasný súbor. Sprievodca inštaláciou sa ukončí
LdrCannotExecTemp=Nie je možné spustiť súbor v dočasnom adresári. Sprievodca inštaláciou sa ukončí
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nChyba %2: %3
SetupFileMissing=Inštalačný adresár neobsahuje súbor %1. Opravte túto chybu, alebo si zaobstarajte novú kópiu tohto produktu.
SetupFileCorrupt=Súbory Sprievodcu inštaláciou sú poškodené. Zaobstarajte si novú kópiu tohto produktu.
SetupFileCorruptOrWrongVer=Súbory Sprievodcu inštaláciou sú poškodené alebo sa nezhodujú s touto verziou Sprievodcu inštaláciou. Opravte túto chybu, alebo si zaobstarajte novú kópiu tohto produktu.
InvalidParameter=Nesprávny parameter na príkazovom riadku: %n%n%1
SetupAlreadyRunning=Inštalácia už prebieha.
WindowsVersionNotSupported=Tento program nepodporuje vašu verziu systému Windows.
WindowsServicePackRequired=Tento program vyžaduje %1 Service Pack %2 alebo novší.
NotOnThisPlatform=Tento produkt sa nedá spustiť v %1.
OnlyOnThisPlatform=Tento produkt musí byť spustený v %1.
OnlyOnTheseArchitectures=Tento produkt je možné nainštalovať iba vo verziách MS Windows s podporou architektúry procesorov:%n%n%1
WinVersionTooLowError=Tento produkt vyžaduje %1 verzie %2 alebo vyššej.
WinVersionTooHighError=Tento produkt sa nedá nainštalovať vo %1 verzie %2 alebo vyššej.
AdminPrivilegesRequired=Na inštaláciu tohto produktu musíte byť prihlásený s právami administrátora.
PowerUserPrivilegesRequired=Na inštaláciu tohto produktu musíte byť prihlásený s právami Administrátora alebo člena skupiny Power Users.
SetupAppRunningError=Sprievodca inštaláciou zistil, že produkt %1 je teraz spustený.%n%nUkončte všetky spustené inštancie tohto produktu a pokračujte kliknutím na tlačidlo "OK", alebo ukončte inštaláciu tlačidlom "Zrušiť".
UninstallAppRunningError=Sprievodca odinštaláciou zistil, že produkt %1 je teraz spustený.%n%nUkončte všetky spustené inštancie tohto produktu a pokračujte kliknutím na tlačidlo "OK", alebo ukončte inštaláciu tlačidlom "Zrušiť".

; *** Startup questions
PrivilegesRequiredOverrideTitle=Vyberte inštalačný mód inštalátora
PrivilegesRequiredOverrideInstruction=Vyberte inštalačný mód
PrivilegesRequiredOverrideText1=%1 sa môže nainštalovať pre všetkých užívateľov (vyžaduje administrátorské práva), alebo len pre Vás.
PrivilegesRequiredOverrideText2=%1 sa môže nainštalovať len pre Vás, alebo pre všetkých užívateľov (vyžadujú sa Administrátorské práva).
PrivilegesRequiredOverrideAllUsers=Inštalovať pre &všetkých užívateľov
PrivilegesRequiredOverrideAllUsersRecommended=Inštalovať pre &všetkých užívateľov (odporúčané)
PrivilegesRequiredOverrideCurrentUser=Inštalovať len pre &mňa
PrivilegesRequiredOverrideCurrentUserRecommended=Inštalovať len pre &mňa (odporúčané)

; *** Misc. errors
ErrorCreatingDir=Sprievodca inštaláciou nemohol vytvoriť adresár "%1"
ErrorTooManyFilesInDir=Nedá sa vytvoriť súbor v adresári "%1", pretože tento adresár už obsahuje príliš veľa súborov

; *** Setup common messages
ExitSetupTitle=Ukončiť Sprievodcu inštaláciou
ExitSetupMessage=Inštalácia nebola kompletne dokončená. Ak teraz ukončíte Sprievodcu inštaláciou, produkt nebude nainštalovaný.%n%nSprievodcu inštaláciou môžete znovu spustiť neskôr a dokončiť tak inštaláciu.%n%nUkončiť Sprievodcu inštaláciou?
AboutSetupMenuItem=&O Sprievodcovi inštalácie...
AboutSetupTitle=O Sprievodcovi inštalácie
AboutSetupMessage=%1 verzia %2%n%3%n%n%1 domovská stránka:%n%4
AboutSetupNote=
TranslatorNote=Slovak translation maintained by Milan Potancok (milan.potancok AT gmail.com), Ivo Bauer (bauer AT ozm.cz), Tomas Falb (tomasf AT pobox.sk) + Slappy (slappy AT pobox.sk)

; *** Buttons
ButtonBack=< &Späť
ButtonNext=&Ďalej >
ButtonInstall=&Inštalovať
ButtonOK=OK
ButtonCancel=Zrušiť
ButtonYes=&Áno
ButtonYesToAll=Áno &všetkým
ButtonNo=&Nie
ButtonNoToAll=Ni&e všetkým
ButtonFinish=&Dokončiť
ButtonBrowse=&Prechádzať...
ButtonWizardBrowse=&Prechádzať...
ButtonNewFolder=&Vytvoriť nový adresár

; *** "Select Language" dialog messages
SelectLanguageTitle=Výber jazyka Sprievodcu inštaláciou
SelectLanguageLabel=Zvoľte jazyk, ktorý sa má použiť pri inštalácii.

; *** Common wizard text
ClickNext=Pokračujte kliknutím na tlačidlo "Ďalej", alebo ukončte sprievodcu inštaláciou tlačidlom "Zrušiť".
BeveledLabel=
BrowseDialogTitle=Nájsť adresár
BrowseDialogLabel=Z dole uvedeného zoznamu vyberte adresár a kliknite na "OK".
NewFolderName=Nový adresár

; *** "Welcome" wizard page
WelcomeLabel1=Víta Vás Sprievodca inštaláciou produktu [name].
WelcomeLabel2=Produkt [name/ver] sa nainštaluje do tohto počítača.%n%nSkôr, ako budete pokračovať, odporúčame ukončiť všetky spustené aplikácie.

; *** "Password" wizard page
WizardPassword=Heslo
PasswordLabel1=Táto inštalácia je chránená heslom.
PasswordLabel3=Zadajte heslo a pokračujte kliknutím na tlačidlo "Ďalej". Pri zadávaní hesla rozlišujte malé a veľké písmená.
PasswordEditLabel=&Heslo:
IncorrectPassword=Zadané heslo nie je správne. Skúste to ešte raz prosím.

; *** "License Agreement" wizard page
WizardLicense=Licenčná zmluva
LicenseLabel=Skôr, ako budete pokračovať, prečítajte si tieto dôležité informácie, prosím.
LicenseLabel3=Prečítajte si túto Licenčnú zmluvu prosím. Aby mohla inštalácia pokračovať, musíte súhlasiť s podmienkami tejto zmluvy.
LicenseAccepted=&Súhlasím s podmienkami Licenčnej zmluvy
LicenseNotAccepted=&Nesúhlasím s podmienkami Licenčnej zmluvy

; *** "Information" wizard pages
WizardInfoBefore=Informácie
InfoBeforeLabel=Skôr, ako budete pokračovať, prečítajte si tieto dôležité informácie, prosím.
InfoBeforeClickLabel=Pokračujte v inštalácii kliknutím na tlačidlo "Ďalej".
WizardInfoAfter=Informácie
InfoAfterLabel=Skôr, ako budete pokračovať, prečítajte si tieto dôležité informácie prosím.
InfoAfterClickLabel=Pokračujte v inštalácii kliknutím na tlačidlo "Ďalej".

; *** "User Information" wizard page
WizardUserInfo=Informácie o používateľovi
UserInfoDesc=Zadajte požadované informácie prosím.
UserInfoName=&Používateľské meno:
UserInfoOrg=&Organizácia:
UserInfoSerial=&Sériové číslo:
UserInfoNameRequired=Meno používateľa musí byť zadané.

; *** "Select Destination Location" wizard page
WizardSelectDir=Vyberte cieľový adresár
SelectDirDesc=Kde má byť produkt [name] nainštalovaný?
SelectDirLabel3=Sprievodca nainštaluje produkt [name] do nasledujúceho adresára.
SelectDirBrowseLabel=Pokračujte kliknutím na tlačidlo "Ďalej". Ak chcete vybrať iný adresár, kliknite na tlačidlo "Prechádzať".
DiskSpaceGBLabel=Inštalácia vyžaduje najmenej [gb] GB miesta v disku.
DiskSpaceMBLabel=Inštalácia vyžaduje najmenej [mb] MB miesta v disku.
CannotInstallToNetworkDrive=Sprievodca inštaláciou nemôže inštalovať do sieťovej jednotky.
CannotInstallToUNCPath=Sprievodca inštaláciou nemôže inštalovať do UNC umiestnenia.
InvalidPath=Musíte zadať úplnú cestu vrátane písmena jednotky; napríklad:%n%nC:\Aplikácia%n%nalebo cestu UNC v tvare:%n%n\\Server\Zdieľaný adresár
InvalidDrive=Vami vybraná jednotka alebo cesta UNC neexistuje, alebo nie je dostupná. Vyberte iné umiestnenie prosím.
DiskSpaceWarningTitle=Nedostatok miesta v disku
DiskSpaceWarning=Sprievodca inštaláciou vyžaduje najmenej %1 KB voľného miesta pre inštaláciu produktu, ale vo vybranej jednotke je dostupných iba %2 KB.%n%nAj napriek tomu chcete pokračovať?
DirNameTooLong=Názov adresára alebo cesta sú príliš dlhé.
InvalidDirName=Názov adresára nie je správny.
BadDirName32=Názvy adresárov nesmú obsahovať žiadny z nasledujúcich znakov:%n%n%1
DirExistsTitle=Adresár už existuje
DirExists=Adresár:%n%n%1%n%nuž existuje. Aj napriek tomu chcete nainštalovať produkt do tohto adresára?
DirDoesntExistTitle=Adresár neexistuje
DirDoesntExist=Adresár: %n%n%1%n%nešte neexistuje. Má sa tento adresár vytvoriť?

; *** "Select Components" wizard page
WizardSelectComponents=Vyberte komponenty
SelectComponentsDesc=Aké komponenty majú byť nainštalované?
SelectComponentsLabel2=Zaškrtnite iba komponenty, ktoré chcete nainštalovať; komponenty, ktoré se nemajú inštalovať, nechajte nezaškrtnuté. Pokračujte kliknutím na tlačidlo "Ďalej".
FullInstallation=Úplná inštalácia
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Kompaktná inštalácia
CustomInstallation=Voliteľná inštalácia
NoUninstallWarningTitle=Komponenty existujú
NoUninstallWarning=Sprievodca inštaláciou zistil že nasledujúce komponenty už sú v tomto počítači nainštalované:%n%n%1%n%nAk ich teraz nezahrniete do výberu, nebudú neskôr odinštalované.%n%nAj napriek tomu chcete pokračovať?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceGBLabel=Vybrané komponenty vyžadujú najmenej [gb] GB miesta v disku.
ComponentsDiskSpaceMBLabel=Vybrané komponenty vyžadujú najmenej [mb] MB miesta v disku.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Vyberte ďalšie úlohy
SelectTasksDesc=Ktoré ďalšie úlohy majú byť vykonané?
SelectTasksLabel2=Vyberte ďalšie úlohy, ktoré majú byť vykonané počas inštalácie produktu [name] a pokračujte kliknutím na tlačidlo "Ďalej".

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Vyberte skupinu v ponuke Štart
SelectStartMenuFolderDesc=Kam má sprievodca inštalácie umiestniť zástupcov aplikácie?
SelectStartMenuFolderLabel3=Sprievodca inštaláciou vytvorí zástupcov aplikácie v nasledujúcom adresári ponuky Štart.
SelectStartMenuFolderBrowseLabel=Pokračujte kliknutím na tlačidlo Ďalej. Ak chcete zvoliť iný adresár, kliknite na tlačidlo "Prechádzať".
MustEnterGroupName=Musíte zadať názov skupiny.
GroupNameTooLong=Názov adresára alebo cesta sú príliš dlhé.
InvalidGroupName=Názov adresára nie je správny.
BadGroupName=Názov skupiny nesmie obsahovať žiadny z nasledujúcich znakov:%n%n%1
NoProgramGroupCheck2=&Nevytvárať skupinu v ponuke Štart

; *** "Ready to Install" wizard page
WizardReady=Inštalácia je pripravená
ReadyLabel1=Sprievodca inštaláciou je teraz pripravený nainštalovať produkt [name] na Váš počítač.
ReadyLabel2a=Pokračujte v inštalácii kliknutím na tlačidlo "Inštalovať". Ak chcete zmeniť niektoré nastavenia inštalácie, kliknite na tlačidlo "< Späť".
ReadyLabel2b=Pokračujte v inštalácii kliknutím na tlačidlo "Inštalovať".
ReadyMemoUserInfo=Informácie o používateľovi:
ReadyMemoDir=Cieľový adresár:
ReadyMemoType=Typ inštalácie:
ReadyMemoComponents=Vybrané komponenty:
ReadyMemoGroup=Skupina v ponuke Štart:
ReadyMemoTasks=Ďalšie úlohy:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Sťahovanie dodatočných súborov...
ButtonStopDownload=&Zastaviť sťahovanie
StopDownload=Naozaj chcete zastaviť sťahovanie?
ErrorDownloadAborted=Sťahovanie prerušené
ErrorDownloadFailed=Sťahovanie zlyhalo: %1 %2
ErrorDownloadSizeFailed=Zlyhalo získanie veľkosti: %1 %2
ErrorFileHash1=Kontrola hodnoty súboru zlyhala: %1
ErrorFileHash2=Nesprávna kontrolná hodnota: očakávala sa %1, zistená %2
ErrorProgress=Nesprávny priebeh: %1 z %2
ErrorFileSize=Nesprávna veľkosť súboru: očakávala sa %1, zistená %2

; *** "Preparing to Install" wizard page
WizardPreparing=Príprava inštalácie
PreparingDesc=Sprievodca inštaláciou pripravuje inštaláciu produktu [name] do tohto počítača.
PreviousInstallNotCompleted=Inštalácia/odinštalácia predošlého produktu nebola úplne dokončená. Dokončenie tohto procesu vyžaduje reštart počítača.%n%nPo reštartovaní počítača znovu spustite Sprievodcu inštaláciou, aby bolo možné kompletne dokončiť inštaláciu produktu [name].
CannotContinue=Sprievodca inštaláciou nemôže pokračovať. Ukončite, prosím, sprievodcu inštaláciou kliknutím na tlačidlo "Zrušiť".
ApplicationsFound=Nasledujúce aplikácie pracujú so súbormi, ktoré musí Sprievodca inštaláciou aktualizovať. Odporúčame, aby ste povolili Sprievodcovi inštaláciou automaticky ukončiť tieto aplikácie.
ApplicationsFound2=Nasledujúce aplikácie pracujú so súbormi, ktoré musí Sprievodca inštaláciou aktualizovať. Odporúčame, aby ste povolili Sprievodcovi inštaláciou automaticky ukončiť tieto aplikácie. Po dokončení inštalácie sa Sprievodca inštaláciou pokúsi tieto aplikácie opätovne spustiť.
CloseApplications=&Automaticky ukončiť aplikácie
DontCloseApplications=&Neukončovať aplikácie
ErrorCloseApplications=Sprievodca inštaláciou nemohol automaticky zatvoriť všetky aplikácie. Odporúčame, aby ste ručne ukončili všetky aplikácie, ktoré používajú súbory a ktoré má Sprievodca aktualizovať.
PrepareToInstallNeedsRestart=Sprievodca inštaláciou potrebuje reštartovať tento počítač. Po reštartovaní počítača znovu spustite tohto Sprievodcu inštaláciou, aby sa inštalácia [name] dokončila.%n%nChcete teraz reštartovať tento počítač?

; *** "Installing" wizard page
WizardInstalling=Inštalujem
InstallingLabel=Počkajte prosím, pokiaľ Sprievodca inštaláciou dokončí inštaláciu produktu [name] do tohto počítača.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Dokončuje sa inštalácia produktu [name]
FinishedLabelNoIcons=Sprievodca inštaláciou dokončil inštaláciu produktu [name] do tohto počítača.
FinishedLabel=Sprievodca inštaláciou dokončil inštaláciu produktu [name] do tohto počítača. Produkt je možné spustiť pomocou nainštalovaných ikon a zástupcov.
ClickFinish=Ukončte Sprievodcu inštaláciou kliknutím na tlačidlo "Dokončiť".
FinishedRestartLabel=Pre dokončenie inštalácie produktu [name] je nutné reštartovať tento počítač. Želáte si teraz reštartovať tento počítač?
FinishedRestartMessage=Pre dokončenie inštalácie produktu [name] je nutné reštartovať tento počítač.%n%nŽeláte si teraz reštartovať tento počítač?
ShowReadmeCheck=Áno, chcem zobraziť dokument "ČITAJMA"
YesRadio=&Áno, chcem teraz reštartovať počítač
NoRadio=&Nie, počítač reštartujem neskôr

; used for example as 'Run MyProg.exe'
RunEntryExec=Spustiť %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Zobraziť %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Sprievodca inštaláciou vyžaduje ďalší disk
SelectDiskLabel2=Vložte prosím, disk %1 a kliknite na tlačidlo "OK".%n%nAk sa súbory tohto disku nachádzajú v inom adresári ako v tom, ktorý je zobrazený nižšie, zadajte správnu cestu alebo kliknite na tlačidlo "Prechádzať".
PathLabel=&Cesta:
FileNotInDir2=Súbor "%1" sa nedá nájsť v "%2". Vložte prosím, správny disk, alebo zvoľte iný adresár.
SelectDirectoryLabel=Špecifikujte prosím, umiestnenie ďalšieho disku.

; *** Installation phase messages
SetupAborted=Inštalácia nebola úplne dokončená.%n%nOpravte chybu a opäť spustite Sprievodcu inštaláciou prosím.
AbortRetryIgnoreSelectAction=Vyberte akciu
AbortRetryIgnoreRetry=&Skúsiť znovu
AbortRetryIgnoreIgnore=&Ignorovať chybu a pokračovať
AbortRetryIgnoreCancel=Zrušiť inštaláciu

; *** Installation status messages
StatusClosingApplications=Ukončovanie aplikácií...
StatusCreateDirs=Vytvárajú sa adresáre...
StatusExtractFiles=Rozbaľujú sa súbory...
StatusCreateIcons=Vytvárajú sa ikony a zástupcovia...
StatusCreateIniEntries=Vytvárajú sa záznamy v konfiguračných súboroch...
StatusCreateRegistryEntries=Vytvárajú sa záznamy v systémovom registri...
StatusRegisterFiles=Registrujú sa súbory...
StatusSavingUninstall=Ukladajú sa informácie potrebné pre neskoršie odinštalovanie produktu...
StatusRunProgram=Dokončuje sa inštalácia...
StatusRestartingApplications=Reštartovanie aplikácií...
StatusRollback=Vykonané zmeny sa vracajú späť...

; *** Misc. errors
ErrorInternal2=Interná chyba: %1
ErrorFunctionFailedNoCode=%1 zlyhala
ErrorFunctionFailed=%1 zlyhala; kód %2
ErrorFunctionFailedWithMessage=%1 zlyhala; kód %2.%n%3
ErrorExecutingProgram=Nedá sa spustiť súbor:%n%1

; *** Registry errors
ErrorRegOpenKey=Došlo k chybe pri otváraní kľúča systémového registra:%n%1\%2
ErrorRegCreateKey=Došlo k chybe pri vytváraní kľúča systémového registra:%n%1\%2
ErrorRegWriteKey=Došlo k chybe pri zápise kľúča do systémového registra:%n%1\%2

; *** INI errors
ErrorIniEntry=Došlo k chybe pri vytváraní záznamu v konfiguračnom súbore "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&Preskočiť tento súbor (neodporúčané)
FileAbortRetryIgnoreIgnoreNotRecommended=&Ignorovať chybu a pokračovať (neodporúčané)
SourceIsCorrupted=Zdrojový súbor je poškodený
SourceDoesntExist=Zdrojový súbor "%1" neexistuje
ExistingFileReadOnly2=Existujúci súbor nie je možné prepísať, pretože je označený atribútom Iba na čítanie.
ExistingFileReadOnlyRetry=&Odstrániť atribút Iba na čítanie a skúsiť znovu
ExistingFileReadOnlyKeepExisting=&Ponechať existujúci súbor
ErrorReadingExistingDest=Došlo k chybe pri pokuse o čítanie existujúceho súboru:
FileExistsSelectAction=Vyberte akciu
FileExists2=Súbor už existuje.
FileExistsOverwriteExisting=&Prepísať existujúci súbor
FileExistsKeepExisting=Ponechať &existujúci súbor
FileExistsOverwriteOrKeepAll=&Vykonať pre všetky ďalšie konflikty
ExistingFileNewerSelectAction=Vyberte akciu
ExistingFileNewer2=Existujúci súbor je novší ako súbor, ktorý sa Sprievodca inštaláciou pokúša nainštalovať.
ExistingFileNewerOverwriteExisting=&Prepísať existujúci súbor
ExistingFileNewerKeepExisting=Ponechať &existujúci súbor (odporúčané)
ExistingFileNewerOverwriteOrKeepAll=&Vykonať pre všetky ďalšie konflikty
ErrorChangingAttr=Došlo k chybe pri pokuse o modifikáciu atribútov existujúceho súboru:
ErrorCreatingTemp=Došlo k chybe pri pokuse o vytvorenie súboru v cieľovom adresári:
ErrorReadingSource=Došlo k chybe pri pokuse o čítanie zdrojového súboru:
ErrorCopying=Došlo k chybe pri pokuse o skopírovanie súboru:
ErrorReplacingExistingFile=Došlo k chybe pri pokuse o nahradenie existujúceho súboru:
ErrorRestartReplace=Zlyhala funkcia "RestartReplace" Sprievodcu inštaláciou:
ErrorRenamingTemp=Došlo k chybe pri pokuse o premenovanie súboru v cieľovom adresári:
ErrorRegisterServer=Nedá sa vykonať registrácia DLL/OCX: %1
ErrorRegSvr32Failed=Volanie RegSvr32 zlyhalo s návratovým kódom %1
ErrorRegisterTypeLib=Nedá sa vykonať registrácia typovej knižnice: %1

; *** Uninstall display name markings
; used for example as 'My Program (32-bit)'
UninstallDisplayNameMark=%1 (%2)
; used for example as 'My Program (32-bit, All users)'
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32bitový
UninstallDisplayNameMark64Bit=64bitový
UninstallDisplayNameMarkAllUsers=Všetci užívatelia
UninstallDisplayNameMarkCurrentUser=Aktuálny užívateľ

; *** Post-installation errors
ErrorOpeningReadme=Došlo k chybe pri pokuse o otvorenie dokumentu "ČITAJMA".
ErrorRestartingComputer=Sprievodcovi inštaláciou sa nepodarilo reštartovať tento počítač. Reštartujte ho manuálne prosím.

; *** Uninstaller messages
UninstallNotFound=Súbor "%1" neexistuje. Produkt sa nedá odinštalovať.
UninstallOpenError=Súbor "%1" nie je možné otvoriť. Produkt nie je možné odinštalovať.
UninstallUnsupportedVer=Sprievodcovi odinštaláciou sa nepodarilo rozpoznať formát súboru obsahujúceho informácie na odinštalovanie produktu "%1". Produkt sa nedá odinštalovať
UninstallUnknownEntry=V súbore obsahujúcom informácie na odinštalovanie produktu bola zistená neznáma položka (%1)
ConfirmUninstall=Naozaj chcete odinštalovať %1 a všetky jeho komponenty?
UninstallOnlyOnWin64=Tento produkt je možné odinštalovať iba v 64-bitových verziách MS Windows.
OnlyAdminCanUninstall=K odinštalovaniu tohto produktu musíte byť prihlásený s právami Administrátora.
UninstallStatusLabel=Počkajte prosím, kým produkt %1 nebude odinštalovaný z tohto počítača.
UninstalledAll=%1 bol úspešne odinštalovaný z tohto počítača.
UninstalledMost=%1 bol odinštalovaný z tohto počítača.%n%nNiektoré jeho komponenty sa však nepodarilo odinštalovať. Môžete ich odinštalovať manuálne.
UninstalledAndNeedsRestart=Na dokončenie odinštalácie produktu %1 je potrebné reštartovať tento počítač.%n%nChcete ihneď reštartovať tento počítač?
UninstallDataCorrupted=Súbor "%1" je poškodený. Produkt sa nedá odinštalovať

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Odinštalovať zdieľaný súbor?
ConfirmDeleteSharedFile2=Systém indikuje, že nasledujúci zdieľaný súbor nie je používaný žiadnymi inými aplikáciami. Má Sprievodca odinštaláciou tento zdieľaný súbor odstrániť?%n%nAk niektoré aplikácie tento súbor používajú, nemusia po jeho odinštalovaní pracovať správne. Pokiaľ to neviete správne posúdiť, odporúčame zvoliť "Nie". Ponechanie tohto súboru v systéme nespôsobí žiadnu škodu.
SharedFileNameLabel=Názov súboru:
SharedFileLocationLabel=Umiestnenie:
WizardUninstalling=Stav odinštalovania
StatusUninstalling=Prebieha odinštalovanie %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Inštalovanie %1.
ShutdownBlockReasonUninstallingApp=Odinštalovanie %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 verzia %2
AdditionalIcons=Ďalší zástupcovia:
CreateDesktopIcon=Vytvoriť zástupcu na &ploche
CreateQuickLaunchIcon=Vytvoriť zástupcu na paneli &Rýchle spustenie
ProgramOnTheWeb=Aplikácia %1 na internete
UninstallProgram=Odinštalovať aplikáciu %1 
LaunchProgram=Spustiť aplikáciu %1
AssocFileExtension=Vytvoriť &asociáciu medzi súbormi typu %2 a aplikáciou %1
AssocingFileExtension=Vytvára sa asociácia medzi súbormi typu %2 a aplikáciou %1...
AutoStartProgramGroupDescription=Pri spustení:
AutoStartProgram=Automaticky spustiť %1
AddonHostProgramNotFound=Nepodarilo sa nájsť %1 v adresári, ktorý ste zvolili.%n%nChcete napriek tomu pokračovať?
