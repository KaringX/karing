; *** Inno Setup version 6.1.0+ Danish messages ***
;
; To download user-contributed translations of this file, go to:
;   https://jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).
;
; ID: Danish.isl,v 6.0.3+ 2020/07/26 Thomas Vedel, thomas@veco.dk
; Parts by scootergrisen, 2015

[LangOptions]
LanguageName=Dansk
LanguageID=$0406
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
SetupAppTitle=Installationsguide
SetupWindowTitle=Installationsguide - %1
UninstallAppTitle=Afinstallér
UninstallAppFullTitle=Afinstallerer %1

; *** Misc. common
InformationTitle=Information
ConfirmTitle=Bekræft
ErrorTitle=Fejl

; *** SetupLdr messages
SetupLdrStartupMessage=Denne guide installerer %1. Vil du fortsætte?
LdrCannotCreateTemp=Kan ikke oprette en midlertidig fil. Installationen afbrydes
LdrCannotExecTemp=Kan ikke køre et program i den midlertidige mappe. Installationen afbrydes
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nFejl %2: %3
SetupFileMissing=Filen %1 mangler i installationsmappen. Ret venligst problemet eller få en ny kopi af programmet.
SetupFileCorrupt=Installationsfilerne er beskadiget. Få venligst en ny kopi af installationsprogrammet.
SetupFileCorruptOrWrongVer=Installationsfilerne er beskadiget, eller også er de ikke kompatible med denne version af installationsprogrammet. Ret venligst problemet eller få en ny kopi af installationsprogrammet.
InvalidParameter=En ugyldig parameter blev angivet på kommandolinjen:%n%n%1
SetupAlreadyRunning=Installationsprogrammet kører allerede.
WindowsVersionNotSupported=Programmet understøtter ikke den version af Windows, som denne computer kører.
WindowsServicePackRequired=Programmet kræver %1 med Service Pack %2 eller senere.
NotOnThisPlatform=Programmet kan ikke anvendes på %1.
OnlyOnThisPlatform=Programmet kan kun anvendes på %1.
OnlyOnTheseArchitectures=Programmet kan kun installeres på versioner af Windows der anvender disse processor-arkitekturer:%n%n%1
WinVersionTooLowError=Programmet kræver %1 version %2 eller senere.
WinVersionTooHighError=Programmet kan ikke installeres på %1 version %2 eller senere.
AdminPrivilegesRequired=Du skal være logget på som administrator imens programmet installeres.
PowerUserPrivilegesRequired=Du skal være logget på som administrator eller være medlem af gruppen Superbrugere imens programmet installeres.
SetupAppRunningError=Installationsprogrammet har registreret at %1 kører.%n%nLuk venligst alle forekomster af programmet, og klik så OK for at fortsætte, eller Annuller for at afbryde.
UninstallAppRunningError=Afinstallationsprogrammet har registreret at %1 kører.%n%nLuk venligst alle forekomster af programmet, og klik så OK for at fortsætte, eller Annuller for at afbryde.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Vælg guidens installationsmåde
PrivilegesRequiredOverrideInstruction=Vælg installationsmåde
PrivilegesRequiredOverrideText1=%1 kan installeres for alle brugere (kræver administrator-rettigheder), eller for dig alene.
PrivilegesRequiredOverrideText2=%1 kan installeres for dig alene, eller for alle brugere på computeren (sidstnævnte kræver administrator-rettigheder).
PrivilegesRequiredOverrideAllUsers=Installer for &alle brugere
PrivilegesRequiredOverrideAllUsersRecommended=Installer for &alle brugere (anbefales)
PrivilegesRequiredOverrideCurrentUser=Installer for &mig alene
PrivilegesRequiredOverrideCurrentUserRecommended=Installer for &mig alene (anbefales)

; *** Misc. errors
ErrorCreatingDir=Installationsprogrammet kan ikke oprette mappen "%1"
ErrorTooManyFilesInDir=Kan ikke oprette en fil i mappen "%1". Mappen indeholder for mange filer

; *** Setup common messages
ExitSetupTitle=Afbryd installationen
ExitSetupMessage=Installationen er ikke fuldført. Programmet installeres ikke, hvis du afbryder nu.%n%nDu kan køre installationsprogrammet igen på et andet tidspunkt for at udføre installationen.%n%nSkal installationen afbrydes?
AboutSetupMenuItem=&Om installationsprogrammet...
AboutSetupTitle=Om installationsprogrammet
AboutSetupMessage=%1 version %2%n%3%n%n%1 hjemmeside:%n%4
AboutSetupNote=
TranslatorNote=Danish translation maintained by Thomas Vedel (thomas@veco.dk). Parts by scootergrisen.

; *** Buttons
ButtonBack=< &Tilbage
ButtonNext=Næ&ste >
ButtonInstall=&Installer
ButtonOK=&OK
ButtonCancel=&Annuller
ButtonYes=&Ja
ButtonYesToAll=Ja til a&lle
ButtonNo=&Nej
ButtonNoToAll=Nej t&il alle
ButtonFinish=&Færdig
ButtonBrowse=&Gennemse...
ButtonWizardBrowse=G&ennemse...
ButtonNewFolder=&Opret ny mappe

; *** "Select Language" dialog messages
SelectLanguageTitle=Vælg installationssprog
SelectLanguageLabel=Vælg det sprog der skal vises under installationen.

; *** Common wizard text
ClickNext=Klik på Næste for at fortsætte, eller Annuller for at afbryde installationen.
BeveledLabel=
BrowseDialogTitle=Vælg mappe
BrowseDialogLabel=Vælg en mappe fra nedenstående liste og klik på OK.
NewFolderName=Ny mappe

; *** "Welcome" wizard page
WelcomeLabel1=Velkommen til installationsguiden for [name]
WelcomeLabel2=Guiden installerer [name/ver] på computeren.%n%nDet anbefales at lukke alle andre programmer inden du fortsætter.

; *** "Password" wizard page
WizardPassword=Adgangskode
PasswordLabel1=Installationen er beskyttet med adgangskode.
PasswordLabel3=Indtast venligst adgangskoden og klik på Næste for at fortsætte. Der skelnes mellem store og små bogstaver.
PasswordEditLabel=&Adgangskode:
IncorrectPassword=Den indtastede kode er forkert. Prøv venligst igen.

; *** "License Agreement" wizard page
WizardLicense=Licensaftale
LicenseLabel=Læs venligst følgende vigtige oplysninger inden du fortsætter.
LicenseLabel3=Læs venligst licensaftalen. Du skal acceptere betingelserne i aftalen for at fortsætte installationen.
LicenseAccepted=Jeg &accepterer aftalen
LicenseNotAccepted=Jeg accepterer &ikke aftalen

; *** "Information" wizard pages
WizardInfoBefore=Information
InfoBeforeLabel=Læs venligst følgende information inden du fortsætter.
InfoBeforeClickLabel=Klik på Næste, når du er klar til at fortsætte installationen.
WizardInfoAfter=Information
InfoAfterLabel=Læs venligst følgende information inden du fortsætter.
InfoAfterClickLabel=Klik på Næste, når du er klar til at fortsætte installationen.

; *** "User Information" wizard page
WizardUserInfo=Brugerinformation
UserInfoDesc=Indtast venligst dine oplysninger.
UserInfoName=&Brugernavn:
UserInfoOrg=&Organisation:
UserInfoSerial=&Serienummer:
UserInfoNameRequired=Du skal indtaste et navn.

; *** "Select Destination Directory" wizard page
WizardSelectDir=Vælg installationsmappe
SelectDirDesc=Hvor skal [name] installeres?
SelectDirLabel3=Installationsprogrammet installerer [name] i følgende mappe.
SelectDirBrowseLabel=Klik på Næste for at fortsætte. Klik på Gennemse, hvis du vil vælge en anden mappe.
DiskSpaceGBLabel=Der skal være mindst [gb] GB fri diskplads.
DiskSpaceMBLabel=Der skal være mindst [mb] MB fri diskplads.
CannotInstallToNetworkDrive=Guiden kan ikke installere programmet på et netværksdrev.
CannotInstallToUNCPath=Guiden kan ikke installere programmet til en UNC-sti.
InvalidPath=Du skal indtaste en komplet sti med drevbogstav, f.eks.:%n%nC:\Program%n%neller et UNC-stinavn i formatet:%n%n\\server\share
InvalidDrive=Drevet eller UNC-stien du valgte findes ikke, eller der er ikke adgang til det lige nu. Vælg venligst en anden placering.
DiskSpaceWarningTitle=Ikke nok ledig diskplads.
DiskSpaceWarning=Guiden kræver mindst %1 KB ledig diskplads for at kunne installere programmet, men det valgte drev har kun %2 KB ledig diskplads.%n%nVil du alligevel fortsætte installationen?
DirNameTooLong=Navnet på mappen eller stien er for langt.
InvalidDirName=Navnet på mappen er ikke tilladt.
BadDirName32=Mappenavne må ikke indeholde følgende tegn:%n%n%1
DirExistsTitle=Mappen findes
DirExists=Mappen:%n%n%1%n%nfindes allerede. Vil du alligevel installere i denne mappe?
DirDoesntExistTitle=Mappen findes ikke.
DirDoesntExist=Mappen:%n%n%1%n%nfindes ikke. Vil du oprette mappen?

; *** "Select Components" wizard page
WizardSelectComponents=Vælg Komponenter
SelectComponentsDesc=Hvilke komponenter skal installeres?
SelectComponentsLabel2=Vælg de komponenter der skal installeres, og fjern markering fra dem der ikke skal installeres. Klik så på Næste for at fortsætte.
FullInstallation=Fuld installation
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Kompakt installation
CustomInstallation=Tilpasset installation
NoUninstallWarningTitle=Komponenterne er installeret
NoUninstallWarning=Installationsprogrammet har registreret at følgende komponenter allerede er installeret på computeren:%n%n%1%n%nKomponenterne bliver ikke afinstalleret hvis de fravælges.%n%nFortsæt alligevel?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceGBLabel=De nuværende valg kræver mindst [gb] GB ledig diskplads.
ComponentsDiskSpaceMBLabel=De nuværende valg kræver mindst [mb] MB ledig diskplads.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Vælg supplerende opgaver
SelectTasksDesc=Hvilke supplerende opgaver skal udføres?
SelectTasksLabel2=Vælg de supplerende opgaver du vil have guiden til at udføre under installationen af [name] og klik på Næste.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Vælg mappe i menuen Start
SelectStartMenuFolderDesc=Hvor skal installationsprogrammet oprette genveje til programmet?
SelectStartMenuFolderLabel3=Installationsprogrammet opretter genveje til programmet i følgende mappe i menuen Start.
SelectStartMenuFolderBrowseLabel=Klik på Næste for at fortsætte. Klik på Gennemse, hvis du vil vælge en anden mappe.
MustEnterGroupName=Du skal indtaste et mappenavn.
GroupNameTooLong=Mappens eller stiens navn er for langt.
InvalidGroupName=Mappenavnet er ugyldigt.
BadGroupName=Navnet på en programgruppe må ikke indeholde følgende tegn: %1. Angiv andet navn.
NoProgramGroupCheck2=Opret &ingen programgruppe i menuen Start

; *** "Ready to Install" wizard page
WizardReady=Klar til at installere
ReadyLabel1=Installationsprogrammet er nu klar til at installere [name] på computeren.
ReadyLabel2a=Klik på Installer for at fortsætte med installationen, eller klik på Tilbage hvis du vil se eller ændre indstillingerne.
ReadyLabel2b=Klik på Installer for at fortsætte med installationen.
ReadyMemoUserInfo=Brugerinformation:
ReadyMemoDir=Installationsmappe:
ReadyMemoType=Installationstype:
ReadyMemoComponents=Valgte komponenter:
ReadyMemoGroup=Mappe i menuen Start:
ReadyMemoTasks=Valgte supplerende opgaver:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Downloader yderligere filer...
ButtonStopDownload=&Stop download
StopDownload=Er du sikker på at du ønsker at afbryde download?
ErrorDownloadAborted=Download afbrudt
ErrorDownloadFailed=Fejl under download: %1 %2
ErrorDownloadSizeFailed=Fejl ved læsning af filstørrelse: %1 %2
ErrorFileHash1=Fejl i hash: %1
ErrorFileHash2=Fejl i fil hash værdi: forventet %1, fundet %2
ErrorProgress=Fejl i trin: %1 af %2
ErrorFileSize=Fejl i filstørrelse: forventet %1, fundet %2

; *** "Preparing to Install" wizard page
WizardPreparing=Klargøring af installationen
PreparingDesc=Installationsprogrammet gør klar til at installere [name] på din computer.
PreviousInstallNotCompleted=Installation eller afinstallation af et program er ikke afsluttet. Du skal genstarte computeren for at afslutte den foregående installation.%n%nNår computeren er genstartet skal du køre installationsprogrammet til [name] igen.
CannotContinue=Installationsprogrammet kan ikke fortsætte. Klik venligst på Fortryd for at afslutte.
ApplicationsFound=Følgende programmer bruger filer som skal opdateres. Det anbefales at du giver installationsprogrammet tilladelse til automatisk at lukke programmerne.
ApplicationsFound2=Følgende programmer bruger filer som skal opdateres. Det anbefales at du giver installationsprogrammet tilladelse til automatisk at lukke programmerne. Installationsguiden vil forsøge at genstarte programmerne når installationen er fuldført.
CloseApplications=&Luk programmerne automatisk
DontCloseApplications=Luk &ikke programmerne
ErrorCloseApplications=Installationsprogrammet kunne ikke lukke alle programmerne automatisk. Det anbefales at du lukker alle programmer som bruger filer der skal opdateres, inden installationsprogrammet fortsætter.
PrepareToInstallNeedsRestart=Installationsprogrammet er nødt til at genstarte computeren. Efter genstarten skal du køre installationsprogrammet igen for at færdiggøre installation af [name].%n%nVil du at genstarte nu?

; *** "Installing" wizard page
WizardInstalling=Installerer
InstallingLabel=Vent venligst mens installationsprogrammet installerer [name] på computeren.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Fuldfører installation af [name]
FinishedLabelNoIcons=Installationsguiden har fuldført installation af [name] på computeren.
FinishedLabel=Installationsguiden har fuldført installation af [name] på computeren. Programmet kan startes ved at vælge de oprettede ikoner.
ClickFinish=Klik på Færdig for at afslutte installationsprogrammet.
FinishedRestartLabel=Computeren skal genstartes for at fuldføre installation af [name]. Vil du genstarte computeren nu?
FinishedRestartMessage=Computeren skal genstartes for at fuldføre installation af [name].%n%nVil du genstarte computeren nu?
ShowReadmeCheck=Ja, jeg vil gerne se README-filen
YesRadio=&Ja, genstart computeren nu
NoRadio=&Nej, jeg genstarter computeren senere
; used for example as 'Run MyProg.exe'
RunEntryExec=Kør %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Vis %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Installationsprogrammet skal bruge den næste disk
SelectDiskLabel2=Indsæt disk %1 og klik på OK.%n%nHvis filerne findes i en anden mappe end den viste, så indtast stien eller klik Gennemse.
PathLabel=&Sti:
FileNotInDir2=Filen "%1" blev ikke fundet i "%2". Indsæt venligst den korrekte disk, eller vælg en anden mappe.
SelectDirectoryLabel=Angiv venligst placeringen af den næste disk.

; *** Installation phase messages
SetupAborted=Installationen blev ikke fuldført.%n%nRet venligst de fundne problemer og kør installationsprogrammet igen.
AbortRetryIgnoreSelectAction=Vælg ønsket handling
AbortRetryIgnoreRetry=&Forsøg igen
AbortRetryIgnoreIgnore=&Ignorer fejlen og fortsæt
AbortRetryIgnoreCancel=Afbryd installationen

; *** Installation status messages
StatusClosingApplications=Lukker programmer...
StatusCreateDirs=Opretter mapper...
StatusExtractFiles=Udpakker filer...
StatusCreateIcons=Opretter genveje...
StatusCreateIniEntries=Opretter poster i INI-filer...
StatusCreateRegistryEntries=Opretter poster i registreringsdatabasen...
StatusRegisterFiles=Registrerer filer...
StatusSavingUninstall=Gemmer information om afinstallation...
StatusRunProgram=Fuldfører installation...
StatusRestartingApplications=Genstarter programmer...
StatusRollback=Fjerner ændringer...

; *** Misc. errors
ErrorInternal2=Intern fejl: %1
ErrorFunctionFailedNoCode=%1 fejlede
ErrorFunctionFailed=%1 fejlede; kode %2
ErrorFunctionFailedWithMessage=%1 fejlede; kode %2.%n%3
ErrorExecutingProgram=Kan ikke køre programfilen:%n%1

; *** Registry errors
ErrorRegOpenKey=Fejl ved åbning af nøgle i registreringsdatabase:%n%1\%2
ErrorRegCreateKey=Fejl ved oprettelse af nøgle i registreringsdatabase:%n%1\%2
ErrorRegWriteKey=Fejl ved skrivning til nøgle i registreringsdatabase:%n%1\%2

; *** INI errors
ErrorIniEntry=Fejl ved oprettelse af post i INI-filen "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&Spring over denne fil (anbefales ikke)
FileAbortRetryIgnoreIgnoreNotRecommended=&Ignorer fejlen og fortsæt (anbefales ikke)
SourceIsCorrupted=Kildefilen er beskadiget
SourceDoesntExist=Kildefilen "%1" findes ikke
ExistingFileReadOnly2=Den eksisterende fil er skrivebeskyttet og kan derfor ikke overskrives.
ExistingFileReadOnlyRetry=&Fjern skrivebeskyttelsen og forsøg igen
ExistingFileReadOnlyKeepExisting=&Behold den eksisterende fil
ErrorReadingExistingDest=Der opstod en fejl ved læsning af den eksisterende fil:
FileExistsSelectAction=Vælg handling
FileExists2=Filen findes allerede.
FileExistsOverwriteExisting=&Overskriv den eksisterende fil
FileExistsKeepExisting=&Behold den eksiterende fil
FileExistsOverwriteOrKeepAll=&Gentag handlingen for de næste konflikter
ExistingFileNewerSelectAction=Vælg handling
ExistingFileNewer2=Den eksisterende fil er nyere end den som forsøges installeret.
ExistingFileNewerOverwriteExisting=&Overskriv den eksisterende fil
ExistingFileNewerKeepExisting=&Behold den eksisterende fil (anbefales)
ExistingFileNewerOverwriteOrKeepAll=&Gentag handlingen for de næste konflikter
ErrorChangingAttr=Der opstod en fejl ved ændring af attributter for den eksisterende fil:
ErrorCreatingTemp=Der opstod en fejl ved oprettelse af en fil i mappen:
ErrorReadingSource=Der opstod en fejl ved læsning af kildefilen:
ErrorCopying=Der opstod en fejl ved kopiering af en fil:
ErrorReplacingExistingFile=Der opstod en fejl ved forsøg på at erstatte den eksisterende fil:
ErrorRestartReplace=Erstatning af fil ved genstart mislykkedes:
ErrorRenamingTemp=Der opstod en fejl ved forsøg på at omdøbe en fil i installationsmappen:
ErrorRegisterServer=Kan ikke registrere DLL/OCX: %1
ErrorRegSvr32Failed=RegSvr32 fejlede med exit kode %1
ErrorRegisterTypeLib=Kan ikke registrere typebiblioteket: %1

; *** Uninstall display name markings
UninstallDisplayNameMark=%1 (%2)
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-bit
UninstallDisplayNameMark64Bit=64-bit
UninstallDisplayNameMarkAllUsers=Alle brugere
UninstallDisplayNameMarkCurrentUser=Nuværende bruger

; *** Post-installation errors
ErrorOpeningReadme=Der opstod en fejl ved forsøg på at åbne README-filen.
ErrorRestartingComputer=Installationsprogrammet kunne ikke genstarte computeren. Genstart venligst computeren manuelt.

; *** Uninstaller messages
UninstallNotFound=Filen "%1" findes ikke. Kan ikke afinstalleres.
UninstallOpenError=Filen "%1" kunne ikke åbnes. Kan ikke afinstalleres
UninstallUnsupportedVer=Afinstallations-logfilen "%1" er i et format der ikke  genkendes af denne version af afinstallations-guiden. Afinstallationen afbrydes
UninstallUnknownEntry=Der er en ukendt post (%1) i afinstallerings-logfilen.
ConfirmUninstall=Er du sikker på at du vil fjerne %1 og alle tilhørende komponenter?
UninstallOnlyOnWin64=Denne installation kan kun afinstalleres på 64-bit Windows-versioner
OnlyAdminCanUninstall=Programmet kan kun afinstalleres af en bruger med administratorrettigheder.
UninstallStatusLabel=Vent venligst imens %1 afinstalleres fra computeren.
UninstalledAll=%1 er nu fjernet fra computeren.
UninstalledMost=%1 afinstallation er fuldført.%n%nNogle elementer kunne ikke fjernes. De kan fjernes manuelt.
UninstalledAndNeedsRestart=Computeren skal genstartes for at fuldføre afinstallation af %1.%n%nVil du genstarte nu?
UninstallDataCorrupted=Filen "%1" er beskadiget. Kan ikke afinstallere

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Fjern delt fil?
ConfirmDeleteSharedFile2=Systemet indikerer at følgende delte fil ikke længere er i brug. Skal den/de delte fil(er) fjernes af guiden?%n%nHvis du er usikker så vælg Nej. Beholdes filen på maskinen, vil den ikke gøre nogen skade, men hvis filen fjernes, selv om den stadig anvendes, bliver de programmer, der anvender filen, ustabile
SharedFileNameLabel=Filnavn:
SharedFileLocationLabel=Placering:
WizardUninstalling=Status for afinstallation
StatusUninstalling=Afinstallerer %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Installerer %1.
ShutdownBlockReasonUninstallingApp=Afinstallerer %1.

[CustomMessages]
NameAndVersion=%1 version %2
AdditionalIcons=Supplerende ikoner:
CreateDesktopIcon=Opret ikon på skrive&bordet
CreateQuickLaunchIcon=Opret &hurtigstart-ikon
ProgramOnTheWeb=%1 på internettet
UninstallProgram=Afinstaller (fjern) %1
LaunchProgram=&Start %1
AssocFileExtension=Sammen&kæd %1 med filtypen %2
AssocingFileExtension=Sammenkæder %1 med filtypen %2...
AutoStartProgramGroupDescription=Start:
AutoStartProgram=Start automatisk %1
AddonHostProgramNotFound=%1 blev ikke fundet i den valgte mappe.%n%nVil du alligevel fortsætte?
