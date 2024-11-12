; *** Inno Setup version 6.1.0+ Dutch messages ***
;
; This file is based on user-contributed translations by various authors
;
; Maintained by Martijn Laan (mlaan@jrsoftware.org)
                                     
[LangOptions]                
LanguageName=Nederlands      
LanguageID=$0413 
LanguageCodePage=1252

[Messages]

; *** Application titles
SetupAppTitle=Setup
SetupWindowTitle=Setup - %1
UninstallAppTitle=Verwijderen
UninstallAppFullTitle=%1 verwijderen

; *** Misc. common
InformationTitle=Informatie
ConfirmTitle=Bevestigen
ErrorTitle=Fout

; *** SetupLdr messages
SetupLdrStartupMessage=Hiermee wordt %1 geïnstalleerd. Wilt u doorgaan?
LdrCannotCreateTemp=Kan geen tijdelijk bestand maken. Setup wordt afgesloten
LdrCannotExecTemp=Kan een bestand in de tijdelijke map niet uitvoeren. Setup wordt afgesloten

; *** Startup error messages
LastErrorMessage=%1.%n%nFout %2: %3
SetupFileMissing=Het bestand %1 ontbreekt in de installatiemap. Corrigeer dit probleem of gebruik een andere kopie van het programma.
SetupFileCorrupt=De installatiebestanden zijn beschadigd. Gebruik een andere kopie van het programma.
SetupFileCorruptOrWrongVer=De installatiebestanden zijn beschadigd, of zijn niet compatibel met deze versie van Setup. Corrigeer dit probleem of gebruik een andere kopie van het programma.
InvalidParameter=Er werd een ongeldige schakeloptie opgegeven op de opdrachtregel:%n%n%1
SetupAlreadyRunning=Setup is al gestart.
WindowsVersionNotSupported=Dit programma ondersteunt de versie van Windows die u gebruikt niet.
WindowsServicePackRequired=Dit programma vereist %1 Service Pack %2 of hoger.
NotOnThisPlatform=Dit programma kan niet worden uitgevoerd onder %1.
OnlyOnThisPlatform=Dit programma moet worden uitgevoerd onder %1.
OnlyOnTheseArchitectures=Dit programma kan alleen geïnstalleerd worden onder versies van Windows ontworpen voor de volgende processor architecturen:%n%n%1
WinVersionTooLowError=Dit programma vereist %1 versie %2 of hoger.
WinVersionTooHighError=Dit programma kan niet worden geïnstalleerd onder %1 versie %2 of hoger.
AdminPrivilegesRequired=U moet aangemeld zijn als een systeembeheerder om dit programma te kunnen installeren.
PowerUserPrivilegesRequired=U moet ingelogd zijn als systeembeheerder of als gebruiker met systeembeheerders rechten om dit programma te kunnen installeren.
SetupAppRunningError=Setup heeft vastgesteld dat %1 op dit moment actief is.%n%nSluit alle vensters hiervan, en klik daarna op OK om verder te gaan, of op Annuleren om Setup af te sluiten.
UninstallAppRunningError=Het verwijderprogramma heeft vastgesteld dat %1 op dit moment actief is.%n%nSluit alle vensters hiervan, en klik daarna op OK om verder te gaan, of op Annuleren om het verwijderen af te breken.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Selecteer installatie modus voor Setup
PrivilegesRequiredOverrideInstruction=Selecteer installatie modus
PrivilegesRequiredOverrideText1=%1 kan geïnstalleerd worden voor alle gebruikers (vereist aanmelding als een systeembeheerder), of voor u alleen.
PrivilegesRequiredOverrideText2=%1 kan geïnstalleerd worden voor u alleen, of voor alle gebruikers (vereist aanmelding als een systeembeheerder).
PrivilegesRequiredOverrideAllUsers=Installeer voor &alle gebruikers
PrivilegesRequiredOverrideAllUsersRecommended=Installeer voor &alle gebruikers (aanbevolen)
PrivilegesRequiredOverrideCurrentUser=Installeer voor &mij alleen
PrivilegesRequiredOverrideCurrentUserRecommended=Installeer voor &mij alleen (aanbevolen)

; *** Misc. errors
ErrorCreatingDir=Setup kan de map "%1" niet maken
ErrorTooManyFilesInDir=Kan geen bestand maken in de map "%1" omdat deze te veel bestanden bevat

; *** Setup common messages
ExitSetupTitle=Setup afsluiten
ExitSetupMessage=Setup is niet voltooid. Als u nu afsluit, wordt het programma niet geïnstalleerd.%n%nU kunt Setup later opnieuw uitvoeren om de installatie te voltooien.%n%nSetup afsluiten?
AboutSetupMenuItem=&Over Setup...
AboutSetupTitle=Over Setup
AboutSetupMessage=%1 versie %2%n%3%n%n%1-homepage:%n%4
AboutSetupNote=
TranslatorNote=Dutch translation maintained by Martijn Laan (mlaan@jrsoftware.org)

; *** Buttons
ButtonBack=< Vo&rige
ButtonNext=&Volgende >
ButtonInstall=&Installeren
ButtonOK=OK
ButtonCancel=Annuleren
ButtonYes=&Ja
ButtonYesToAll=Ja op &alles
ButtonNo=&Nee
ButtonNoToAll=N&ee op alles
ButtonFinish=&Voltooien
ButtonBrowse=&Bladeren...
ButtonWizardBrowse=B&laderen...
ButtonNewFolder=&Nieuwe map maken

; *** "Select Language" dialog messages
SelectLanguageTitle=Selecteer taal voor Setup
SelectLanguageLabel=Selecteer de taal die Setup gebruikt tijdens de installatie.

; *** Common wizard text
ClickNext=Klik op Volgende om verder te gaan of op Annuleren om Setup af te sluiten.
BeveledLabel=
BrowseDialogTitle=Map Selecteren
BrowseDialogLabel=Selecteer een map in onderstaande lijst en klik daarna op OK.
NewFolderName=Nieuwe map

; *** "Welcome" wizard page
WelcomeLabel1=Welkom bij het installatieprogramma van [name].
WelcomeLabel2=Hiermee wordt [name/ver] geïnstalleerd op deze computer.%n%nU wordt aanbevolen alle actieve programma's af te sluiten voordat u verder gaat.

; *** "Password" wizard page
WizardPassword=Wachtwoord
PasswordLabel1=Deze installatie is beveiligd met een wachtwoord.
PasswordLabel3=Voer het wachtwoord in en klik op Volgende om verder te gaan. Wachtwoorden zijn hoofdlettergevoelig.
PasswordEditLabel=&Wachtwoord:
IncorrectPassword=Het ingevoerde wachtwoord is niet correct. Probeer het opnieuw.

; *** "License Agreement" wizard page
WizardLicense=Licentieovereenkomst
LicenseLabel=Lees de volgende belangrijke informatie voordat u verder gaat.
LicenseLabel3=Lees de volgende licentieovereenkomst. Gebruik de schuifbalk of druk op de knop Page Down om de rest van de overeenkomst te zien.
LicenseAccepted=Ik &accepteer de licentieovereenkomst
LicenseNotAccepted=Ik accepteer de licentieovereenkomst &niet

; *** "Information" wizard pages
WizardInfoBefore=Informatie
InfoBeforeLabel=Lees de volgende belangrijke informatie voordat u verder gaat.
InfoBeforeClickLabel=Klik op Volgende als u gereed bent om verder te gaan met Setup.
WizardInfoAfter=Informatie
InfoAfterLabel=Lees de volgende belangrijke informatie voordat u verder gaat.
InfoAfterClickLabel=Klik op Volgende als u gereed bent om verder te gaan met Setup.

; *** "User Information" wizard page
WizardUserInfo=Gebruikersinformatie
UserInfoDesc=Vul hier uw informatie in.
UserInfoName=&Gebruikersnaam:
UserInfoOrg=&Organisatie:
UserInfoSerial=&Serienummer:
UserInfoNameRequired=U moet een naam invullen.

; *** "Select Destination Location" wizard page
WizardSelectDir=Kies de doelmap
SelectDirDesc=Waar moet [name] geïnstalleerd worden?
SelectDirLabel3=Setup zal [name] in de volgende map installeren.
SelectDirBrowseLabel=Klik op Volgende om door te gaan. Klik op Bladeren om een andere map te kiezen.
DiskSpaceGBLabel=Er is ten minste [gb] GB vrije schijfruimte vereist.
DiskSpaceMBLabel=Er is ten minste [mb] MB vrije schijfruimte vereist.
CannotInstallToNetworkDrive=Setup kan niet installeren naar een netwerkstation.
CannotInstallToUNCPath=Setup kan niet installeren naar een UNC-pad.
InvalidPath=U moet een volledig pad met stationsletter invoeren; bijvoorbeeld:%nC:\APP%n%nof een UNC-pad zoals:%n%n\\server\share
InvalidDrive=Het geselecteerde station bestaat niet. Kies een ander station.
DiskSpaceWarningTitle=Onvoldoende schijfruimte
DiskSpaceWarning=Setup vereist ten minste %1 kB vrije schijfruimte voor het installeren, maar het geselecteerde station heeft slechts %2 kB beschikbaar.%n%nWilt u toch doorgaan?
DirNameTooLong=De mapnaam of het pad is te lang.
InvalidDirName=De mapnaam is ongeldig.
BadDirName32=Mapnamen mogen geen van de volgende tekens bevatten:%n%n%1
DirExistsTitle=Map bestaat al
DirExists=De map:%n%n%1%n%nbestaat al. Wilt u toch naar die map installeren?
DirDoesntExistTitle=Map bestaat niet
DirDoesntExist=De map:%n%n%1%n%nbestaat niet. Wilt u de map aanmaken?

; *** "Select Components" wizard page
WizardSelectComponents=Selecteer componenten
SelectComponentsDesc=Welke componenten moeten geïnstalleerd worden?
SelectComponentsLabel2=Selecteer de componenten die u wilt installeren. Klik op Volgende als u klaar bent om verder te gaan.
FullInstallation=Volledige installatie
CompactInstallation=Compacte installatie
CustomInstallation=Aangepaste installatie
NoUninstallWarningTitle=Component bestaat
NoUninstallWarning=Setup heeft gedetecteerd dat de volgende componenten al geïnstalleerd zijn op uw computer:%n%n%1%n%nAls u de selectie van deze componenten ongedaan maakt, worden ze niet verwijderd.%n%nWilt u toch doorgaan?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceGBLabel=De huidige selectie vereist ten minste [gb] GB vrije schijfruimte.
ComponentsDiskSpaceMBLabel=De huidige selectie vereist ten minste [mb] MB vrije schijfruimte.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Selecteer extra taken
SelectTasksDesc=Welke extra taken moeten uitgevoerd worden?
SelectTasksLabel2=Selecteer de extra taken die u door Setup wilt laten uitvoeren bij het installeren van [name], en klik vervolgens op Volgende.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Selecteer menu Start map
SelectStartMenuFolderDesc=Waar moeten de snelkoppelingen van het programma geplaatst worden?
SelectStartMenuFolderLabel3=Setup plaatst de snelkoppelingen van het programma in de volgende menu Start map.
SelectStartMenuFolderBrowseLabel=Klik op Volgende om door te gaan. Klik op Bladeren om een andere map te kiezen.
MustEnterGroupName=U moet een mapnaam invoeren.
GroupNameTooLong=De mapnaam of het pad is te lang. 
InvalidGroupName=De mapnaam is ongeldig.
BadGroupName=De mapnaam mag geen van de volgende tekens bevatten:%n%n%1
NoProgramGroupCheck2=&Geen menu Start map maken

; *** "Ready to Install" wizard page
WizardReady=Het voorbereiden van de installatie is gereed
ReadyLabel1=Setup is nu gereed om te beginnen met het installeren van [name] op deze computer.
ReadyLabel2a=Klik op Installeren om verder te gaan met installeren, of klik op Vorige als u instellingen wilt terugzien of veranderen.
ReadyLabel2b=Klik op Installeren om verder te gaan met installeren.
ReadyMemoUserInfo=Gebruikersinformatie:
ReadyMemoDir=Doelmap:
ReadyMemoType=Installatietype:
ReadyMemoComponents=Geselecteerde componenten:
ReadyMemoGroup=Menu Start map:
ReadyMemoTasks=Extra taken:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Bezig met het downloaden van extra bestanden...
ButtonStopDownload=&Stop download
StopDownload=Weet u zeker dat u de download wilt stoppen?
ErrorDownloadAborted=Download afgebroken
ErrorDownloadFailed=Download mislukt: %1 %2
ErrorDownloadSizeFailed=Ophalen grootte mislukt: %1 %2
ErrorFileHash1=Bestand hashing mislukt: %1
ErrorFileHash2=Ongeldige bestandshash: %1 verwacht, %2 gevonden
ErrorProgress=Ongeldige voortgang: %1 van %2
ErrorFileSize=Ongeldige bestandsgrootte: %1 verwacht, %2 gevonden

; *** "Preparing to Install" wizard page
WizardPreparing=Bezig met het voorbereiden van de installatie
PreparingDesc=Setup is bezig met het voorbereiden van de installatie van [name].
PreviousInstallNotCompleted=De installatie/verwijdering van een vorig programma is niet voltooid. U moet uw computer opnieuw opstarten om die installatie te voltooien.%n%nStart Setup nogmaals nadat uw computer opnieuw is opgestart om de installatie van [name] te voltooien.
CannotContinue=Setup kan niet doorgaan. Klik op annuleren om af te sluiten.
ApplicationsFound=De volgende programma's gebruiken bestanden die moeten worden bijgewerkt door Setup. U wordt aanbevolen Setup toe te staan om automatisch deze programma's af te sluiten.
ApplicationsFound2=De volgende programma's gebruiken bestanden die moeten worden bijgewerkt door Setup. U wordt aanbevolen Setup toe te staan om automatisch deze programma's af te sluiten. Nadat de installatie is voltooid zal Setup proberen de applicaties opnieuw op te starten.
CloseApplications=&Programma's automatisch afsluiten
DontCloseApplications=Programma's &niet afsluiten
ErrorCloseApplications=Setup kon niet alle programma's automatisch afsluiten. U wordt aanbevolen alle programma's die bestanden gebruiken die moeten worden bijgewerkt door Setup af te sluiten voordat u verder gaat.
PrepareToInstallNeedsRestart=Setup moet uw computer opnieuw opstarten. Start Setup nogmaals nadat uw computer opnieuw is opgestart om de installatie van [name] te voltooien.%n%nWilt u nu opnieuw opstarten?

; *** "Installing" wizard page
WizardInstalling=Bezig met installeren
InstallingLabel=Setup installeert [name] op uw computer. Een ogenblik geduld...

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Setup heeft het installeren van [name] op deze computer voltooid.
FinishedLabelNoIcons=Setup heeft het installeren van [name] op deze computer voltooid.
FinishedLabel=Setup heeft het installeren van [name] op deze computer voltooid. U kunt het programma uitvoeren met de geïnstalleerde snelkoppelingen.
ClickFinish=Klik op Voltooien om Setup te beëindigen.
FinishedRestartLabel=Setup moet de computer opnieuw opstarten om de installatie van [name] te voltooien. Wilt u nu opnieuw opstarten?
FinishedRestartMessage=Setup moet uw computer opnieuw opstarten om de installatie van [name] te voltooien.%n%nWilt u nu opnieuw opstarten?
ShowReadmeCheck=Ja, ik wil het bestand Leesmij zien
YesRadio=&Ja, start de computer nu opnieuw op
NoRadio=&Nee, ik start de computer later opnieuw op
RunEntryExec=Start %1
RunEntryShellExec=Bekijk %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Setup heeft de volgende diskette nodig
SelectDiskLabel2=Voer diskette %1 in en klik op OK.%n%nAls de bestanden op deze diskette in een andere map gevonden kunnen worden dan die hieronder wordt getoond, voer dan het juiste pad in of klik op Bladeren.
PathLabel=&Pad:
FileNotInDir2=Kan het bestand "%1" niet vinden in "%2". Voer de juiste diskette in of kies een andere map.
SelectDirectoryLabel=Geef de locatie van de volgende diskette.

; *** Installation phase messages
SetupAborted=Setup is niet voltooid.%n%nCorrigeer het probleem en voer Setup opnieuw uit.
AbortRetryIgnoreSelectAction=Selecteer actie
AbortRetryIgnoreRetry=&Probeer opnieuw
AbortRetryIgnoreIgnore=&Negeer de fout en ga door
AbortRetryIgnoreCancel=Breek installatie af

; *** Installation status messages
StatusClosingApplications=Programma's afsluiten...
StatusCreateDirs=Mappen maken...
StatusExtractFiles=Bestanden uitpakken...
StatusCreateIcons=Snelkoppelingen maken...
StatusCreateIniEntries=INI-gegevens instellen...
StatusCreateRegistryEntries=Registergegevens instellen...
StatusRegisterFiles=Bestanden registreren...
StatusSavingUninstall=Verwijderingsinformatie opslaan...
StatusRunProgram=Installatie voltooien...
StatusRestartingApplications=Programma's opnieuw starten...
StatusRollback=Veranderingen ongedaan maken...

; *** Misc. errors
ErrorInternal2=Interne fout: %1
ErrorFunctionFailedNoCode=%1 mislukt
ErrorFunctionFailed=%1 mislukt; code %2
ErrorFunctionFailedWithMessage=%1 mislukt; code %2.%n%3
ErrorExecutingProgram=Kan bestand niet uitvoeren:%n%1

; *** Registry errors
ErrorRegOpenKey=Fout bij het openen van registersleutel:%n%1\%2
ErrorRegCreateKey=Fout bij het maken van registersleutel:%n%1\%2
ErrorRegWriteKey=Fout bij het schrijven naar registersleutel:%n%1\%2

; *** INI errors
ErrorIniEntry=Fout bij het maken van een INI-instelling in bestand "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&Sla dit bestand over (niet aanbevolen)
FileAbortRetryIgnoreIgnoreNotRecommended=&Negeer de fout en ga door (niet aanbevolen)
SourceIsCorrupted=Het bronbestand is beschadigd
SourceDoesntExist=Het bronbestand "%1" bestaat niet
ExistingFileReadOnly2=Het bestaande bestand kon niet vervangen worden omdat het een alleen-lezen markering heeft.
ExistingFileReadOnlyRetry=&Verwijder de alleen-lezen markering en probeer het opnieuw
ExistingFileReadOnlyKeepExisting=&Behoud het bestaande bestand
ErrorReadingExistingDest=Er is een fout opgetreden bij het lezen van het bestaande bestand:
FileExistsSelectAction=Selecteer actie
FileExists2=Het bestand bestaat al.
FileExistsOverwriteExisting=&Overschrijf het bestaande bestand
FileExistsKeepExisting=&Behoud het bestaande bestand
FileExistsOverwriteOrKeepAll=&Dit voor de volgende conflicten uitvoeren
ExistingFileNewerSelectAction=Selecteer actie
ExistingFileNewer2=Het bestaande bestand is nieuwer dan het bestand dat Setup probeert te installeren.
ExistingFileNewerOverwriteExisting=&Overschrijf het bestaande bestand
ExistingFileNewerKeepExisting=&Behoud het bestaande bestand (aanbevolen)
ExistingFileNewerOverwriteOrKeepAll=&Dit voor de volgende conflicten uitvoeren
ErrorChangingAttr=Er is een fout opgetreden bij het wijzigen van de kenmerken van het bestaande bestand:
ErrorCreatingTemp=Er is een fout opgetreden bij het maken van een bestand in de doelmap:
ErrorReadingSource=Er is een fout opgetreden bij het lezen van het bronbestand:
ErrorCopying=Er is een fout opgetreden bij het kopiëren van een bestand:
ErrorReplacingExistingFile=Er is een fout opgetreden bij het vervangen van het bestaande bestand:
ErrorRestartReplace=Vervangen na opnieuw starten is mislukt:
ErrorRenamingTemp=Er is een fout opgetreden bij het hernoemen van een bestand in de doelmap:
ErrorRegisterServer=Kan de DLL/OCX niet registreren: %1
ErrorRegSvr32Failed=RegSvr32 mislukt met afsluitcode %1
ErrorRegisterTypeLib=Kan de type library niet registreren: %1

; *** Uninstall display name markings
UninstallDisplayNameMark=%1 (%2)
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-bit
UninstallDisplayNameMark64Bit=64-bit
UninstallDisplayNameMarkAllUsers=Alle gebruikers
UninstallDisplayNameMarkCurrentUser=Huidige gebruiker

; *** Post-installation errors
ErrorOpeningReadme=Er is een fout opgetreden bij het openen van het Leesmij-bestand.
ErrorRestartingComputer=Setup kan de computer niet opnieuw opstarten. Doe dit handmatig.

; *** Uninstaller messages
UninstallNotFound=Bestand "%1" bestaat niet. Kan het programma niet verwijderen.
UninstallUnsupportedVer=Het installatie-logbestand "%1" heeft een formaat dat niet herkend wordt door deze versie van het verwijderprogramma. Kan het programma niet verwijderen
UninstallUnknownEntry=Er is een onbekend gegeven (%1) aangetroffen in het installatie-logbestand
ConfirmUninstall=Weet u zeker dat u %1 en alle bijbehorende componenten wilt verwijderen?
UninstallOnlyOnWin64=Deze installatie kan alleen worden verwijderd onder 64-bit Windows.
OnlyAdminCanUninstall=Deze installatie kan alleen worden verwijderd door een gebruiker met administratieve rechten.
UninstallStatusLabel=%1 wordt verwijderd van uw computer. Een ogenblik geduld.
UninstallOpenError=Bestand "%1" kon niet worden geopend. Kan het verwijderen niet voltooien.
UninstalledAll=%1 is met succes van deze computer verwijderd.
UninstalledMost=Het verwijderen van %1 is voltooid.%n%nEnkele elementen konden niet verwijderd worden. Deze kunnen handmatig verwijderd worden.
UninstalledAndNeedsRestart=Om het verwijderen van %1 te voltooien, moet uw computer opnieuw worden opgestart.%n%nWilt u nu opnieuw opstarten?
UninstallDataCorrupted="%1" bestand is beschadigd. Kan verwijderen niet voltooien

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Gedeeld bestand verwijderen?
ConfirmDeleteSharedFile2=Het systeem geeft aan dat het volgende gedeelde bestand niet langer gebruikt wordt door enig programma. Wilt u dat dit gedeelde bestand verwijderd wordt?%n%nAls dit bestand toch nog gebruikt wordt door een programma en het verwijderd wordt, werkt dat programma misschien niet meer correct. Als u het niet zeker weet, kies dan Nee. Bewaren van het bestand op dit systeem is niet schadelijk.
SharedFileNameLabel=Bestandsnaam:
SharedFileLocationLabel=Locatie:
WizardUninstalling=Verwijderingsstatus
StatusUninstalling=Verwijderen van %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Installeren van %1.
ShutdownBlockReasonUninstallingApp=Verwijderen van %1.

[CustomMessages]

NameAndVersion=%1 versie %2
AdditionalIcons=Extra snelkoppelingen:
CreateDesktopIcon=Maak een snelkoppeling op het &bureaublad
CreateQuickLaunchIcon=Maak een snelkoppeling op de &Snel starten werkbalk
ProgramOnTheWeb=%1 op het Web
UninstallProgram=Verwijder %1
LaunchProgram=&Start %1
AssocFileExtension=&Koppel %1 aan de %2 bestandsextensie
AssocingFileExtension=Bezig met koppelen van %1 aan de %2 bestandsextensie...
AutoStartProgramGroupDescription=Opstarten:
AutoStartProgram=%1 automatisch starten
AddonHostProgramNotFound=%1 kon niet worden gevonden in de geselecteerde map.%n%nWilt u toch doorgaan?
