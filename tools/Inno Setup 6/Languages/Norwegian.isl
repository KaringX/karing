; *** Inno Setup version 6.1.0+ Norwegian (bokmål) messages ***
;
; To download user-contributed translations of this file, go to:
;   https://jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).
;
; Norwegian translation currently maintained by Eivind Bakkestuen
; E-mail: eivind.bakkestuen@gmail.com
; Many thanks to the following people for language improvements and comments:
;
; Harald Habberstad, Frode Weum, Morten Johnsen,
; Tore Ottinsen, Kristian Hyllestad, Thomas Kelso, Jostein Christoffer Andersen
;
; $jrsoftware: issrc/Files/Languages/Norwegian.isl,v 1.15 2007/04/23 15:03:35 josander+ Exp $

[LangOptions]
LanguageName=Norsk
LanguageID=$0414
LanguageCodePage=1252

[Messages]

; *** Application titles
SetupAppTitle=Installasjon
SetupWindowTitle=Installere - %1
UninstallAppTitle=Avinstaller
UninstallAppFullTitle=%1 Avinstallere

; *** Misc. common
InformationTitle=Informasjon
ConfirmTitle=Bekreft
ErrorTitle=Feil

; *** SetupLdr messages
SetupLdrStartupMessage=Dette vil installere %1. Vil du fortsette?
LdrCannotCreateTemp=Kan ikke lage midlertidig fil, installasjonen er avbrutt
LdrCannotExecTemp=Kan ikke kjøre fil i den midlertidige mappen, installasjonen er avbrutt

; *** Startup error messages
LastErrorMessage=%1.%n%nFeil %2: %3
SetupFileMissing=Filen %1 mangler i installasjonskatalogen. Vennligst korriger problemet eller skaff deg en ny kopi av programmet.
SetupFileCorrupt=Installasjonsfilene er ødelagte. Vennligst skaff deg en ny kopi av programmet.
SetupFileCorruptOrWrongVer=Installasjonsfilene er ødelagte eller ikke kompatible med dette installasjonsprogrammet. Vennligst korriger problemet eller skaff deg en ny kopi av programmet.
InvalidParameter=Kommandolinjen hadde en ugyldig parameter:%n%n%1
SetupAlreadyRunning=Dette programmet kjører allerede.
WindowsVersionNotSupported=Dette programmet støtter ikke Windows-versjonen på denne maskinen.
WindowsServicePackRequired=Dette programmet krever %1 Service Pack %2 eller nyere.
NotOnThisPlatform=Dette programmet kjører ikke på %1.
OnlyOnThisPlatform=Dette programmet kjører kun på %1.
OnlyOnTheseArchitectures=Dette programmet kan kun installeres i Windows-versjoner som er beregnet på følgende prossessorarkitekturer:%n%n%1
WinVersionTooLowError=Dette programmet krever %1 versjon %2 eller nyere.
WinVersionTooHighError=Dette programmet kan ikke installeres på %1 versjon %2 eller nyere.
AdminPrivilegesRequired=Administrator-rettigheter kreves for å installere dette programmet.
PowerUserPrivilegesRequired=Du må være logget inn som administrator eller ha administrator-rettigheter når du installerer dette programmet.
SetupAppRunningError=Installasjonsprogrammet har funnet ut at %1 kjører.%n%nVennligst avslutt det nå og klikk deretter OK for å fortsette, eller Avbryt for å avslutte.
UninstallAppRunningError=Avinstallasjonsprogrammet har funnet ut at %1 kjører.%n%nVennligst avslutt det nå og klikk deretter OK for å fortsette, eller Avbryt for å avslutte.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Velg Installasjon Type
PrivilegesRequiredOverrideInstruction=Installasjons Type
PrivilegesRequiredOverrideText1=%1 kan installeres for alle brukere (krever administrator-rettigheter), eller bare for deg.
PrivilegesRequiredOverrideText2=%1 kan installeres bare for deg, eller for alle brukere (krever administrator-rettigheter).
PrivilegesRequiredOverrideAllUsers=Installer for &alle brukere
PrivilegesRequiredOverrideAllUsersRecommended=Installer for &alle brukere (anbefalt)
PrivilegesRequiredOverrideCurrentUser=Installer bare for &meg
PrivilegesRequiredOverrideCurrentUserRecommended=Installer bare for &meg (anbefalt)

; *** Misc. errors
ErrorCreatingDir=Installasjonsprogrammet kunne ikke lage mappen "%1"
ErrorTooManyFilesInDir=Kunne ikke lage en fil i mappen "%1" fordi den inneholder for mange filer

; *** Setup common messages
ExitSetupTitle=Avslutt installasjonen
ExitSetupMessage=Installasjonen er ikke ferdig. Programmet installeres ikke hvis du avslutter nå.%n%nDu kan installere programmet igjen senere hvis du vil.%n%nVil du avslutte?
AboutSetupMenuItem=&Om installasjonsprogrammet...
AboutSetupTitle=Om installasjonsprogrammet
AboutSetupMessage=%1 versjon %2%n%3%n%n%1 hjemmeside:%n%4
AboutSetupNote=
TranslatorNote=Norwegian translation maintained by Eivind Bakkestuen (eivind.bakkestuen@gmail.com)

; *** Buttons
ButtonBack=< &Tilbake
ButtonNext=&Neste >
ButtonInstall=&Installer
ButtonOK=OK
ButtonCancel=Avbryt
ButtonYes=&Ja
ButtonYesToAll=Ja til &alle
ButtonNo=&Nei
ButtonNoToAll=N&ei til alle
ButtonFinish=&Ferdig
ButtonBrowse=&Bla gjennom...
ButtonWizardBrowse=&Bla gjennom...
ButtonNewFolder=&Lag ny mappe

; *** "Select Language" dialog messages
SelectLanguageTitle=Velg installasjonsspråk
SelectLanguageLabel=Velg språket som skal brukes under installasjonen.

; *** Common wizard text
ClickNext=Klikk på Neste for å fortsette, eller Avbryt for å avslutte installasjonen.
BeveledLabel=
BrowseDialogTitle=Bla etter mappe
BrowseDialogLabel=Velg en mappe fra listen nedenfor, klikk deretter OK.
NewFolderName=Ny mappe

; *** "Welcome" wizard page
WelcomeLabel1=Velkommen til installasjonsprogrammet for [name].
WelcomeLabel2=Dette vil installere [name/ver] på din maskin.%n%nDet anbefales at du avslutter alle programmer som kjører før du fortsetter.

; *** "Password" wizard page
WizardPassword=Passord
PasswordLabel1=Denne installasjonen er passordbeskyttet.
PasswordLabel3=Vennligst oppgi ditt passord og klikk på Neste for å fortsette. Små og store bokstaver behandles ulikt.
PasswordEditLabel=&Passord:
IncorrectPassword=Det angitte passordet er feil, vennligst prøv igjen.

; *** "License Agreement" wizard page
WizardLicense=Lisensbetingelser
LicenseLabel=Vennligst les følgende viktig informasjon før du fortsetter.
LicenseLabel3=Vennligst les følgende lisensbetingelser. Du må godta innholdet i lisensbetingelsene før du fortsetter med installasjonen.
LicenseAccepted=Jeg &aksepterer lisensbetingelsene
LicenseNotAccepted=Jeg aksepterer &ikke lisensbetingelsene

; *** "Information" wizard pages
WizardInfoBefore=Informasjon
InfoBeforeLabel=Vennligst les følgende viktige informasjon før du fortsetter.
InfoBeforeClickLabel=Klikk på Neste når du er klar til å fortsette.
WizardInfoAfter=Informasjon
InfoAfterLabel=Vennligst les følgende viktige informasjon før du fortsetter.
InfoAfterClickLabel=Klikk på Neste når du er klar til å fortsette.

; *** "User Information" wizard page
WizardUserInfo=Brukerinformasjon
UserInfoDesc=Vennligst angi informasjon.
UserInfoName=&Brukernavn:
UserInfoOrg=&Organisasjon:
UserInfoSerial=&Serienummer:
UserInfoNameRequired=Du må angi et navn.

; *** "Select Destination Location" wizard page
WizardSelectDir=Velg mappen hvor filene skal installeres:
SelectDirDesc=Hvor skal [name] installeres?
SelectDirLabel3=Installasjonsprogrammet vil installere [name] i følgende mappe.
SelectDirBrowseLabel=Klikk på Neste for å fortsette. Klikk på Bla gjennom hvis du vil velge en annen mappe.
DiskSpaceGBLabel=Programmet krever minst [gb] GB med diskplass.
DiskSpaceMBLabel=Programmet krever minst [mb] MB med diskplass.
CannotInstallToNetworkDrive=Kan ikke installere på en nettverksstasjon.
CannotInstallToUNCPath=Kan ikke installere på en UNC-bane. Du må tilordne nettverksstasjonen hvis du vil installere i et nettverk.
InvalidPath=Du må angi en full bane med stasjonsbokstav, for eksempel:%n%nC:\APP%n%Du kan ikke bruke formen:%n%n\\server\share
InvalidDrive=Den valgte stasjonen eller UNC-delingen finnes ikke, eller er ikke tilgjengelig. Vennligst velg en annen
DiskSpaceWarningTitle=For lite diskplass
DiskSpaceWarning=Installasjonprogrammet krever minst %1 KB med ledig diskplass, men det er bare %2 KB ledig på den valgte stasjonen.%n%nvil du fortsette likevel?
DirNameTooLong=Det er for langt navn på mappen eller banen.
InvalidDirName=Navnet på mappen er ugyldig.
BadDirName32=Mappenavn må ikke inneholde noen av følgende tegn:%n%n%1
DirExistsTitle=Eksisterende mappe
DirExists=Mappen:%n%n%1%n%nfinnes allerede. Vil du likevel installere der?
DirDoesntExistTitle=Mappen eksisterer ikke
DirDoesntExist=Mappen:%n%n%1%n%nfinnes ikke. Vil du at den skal lages?

; *** "Select Components" wizard page
WizardSelectComponents=Velg komponenter
SelectComponentsDesc=Hvilke komponenter skal installeres?
SelectComponentsLabel2=Velg komponentene du vil installere; velg bort de komponentene du ikke vil installere. Når du er klar, klikker du på Neste for å fortsette.
FullInstallation=Full installasjon
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Kompakt installasjon
CustomInstallation=Egendefinert installasjon
NoUninstallWarningTitle=Komponenter eksisterer
NoUninstallWarning=Installasjonsprogrammet har funnet ut at følgende komponenter allerede er på din maskin:%n%n%1%n%nDisse komponentene avinstalleres ikke selv om du ikke velger dem.%n%nVil du likevel fortsette?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceGBLabel=Valgte alternativer krever minst [gb] GB med diskplass.
ComponentsDiskSpaceMBLabel=Valgte alternativer krever minst [mb] MB med diskplass.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Velg tilleggsoppgaver
SelectTasksDesc=Hvilke tilleggsoppgaver skal utføres?
SelectTasksLabel2=Velg tilleggsoppgavene som skal utføres mens [name] installeres, klikk deretter på Neste.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Velg mappe på start-menyen
SelectStartMenuFolderDesc=Hvor skal installasjonsprogrammet plassere snarveiene?
SelectStartMenuFolderLabel3=Installasjonsprogrammet vil opprette snarveier på følgende startmeny-mappe.
SelectStartMenuFolderBrowseLabel=Klikk på Neste for å fortsette. Klikk på Bla igjennom hvis du vil velge en annen mappe.
MustEnterGroupName=Du må skrive inn et mappenavn.
GroupNameTooLong=Det er for langt navn på mappen eller banen.
InvalidGroupName=Navnet på mappen er ugyldig.
BadGroupName=Mappenavnet må ikke inneholde følgende tegn:%n%n%1
NoProgramGroupCheck2=&Ikke legg til mappe på start-menyen

; *** "Ready to Install" wizard page
WizardReady=Klar til å installere
ReadyLabel1=Installasjonsprogrammet er nå klar til å installere [name] på din maskin.
ReadyLabel2a=Klikk Installer for å fortsette, eller Tilbake for å se på eller forandre instillingene.
ReadyLabel2b=Klikk Installer for å fortsette.
ReadyMemoUserInfo=Brukerinformasjon:
ReadyMemoDir=Installer i mappen:
ReadyMemoType=Installasjonstype:
ReadyMemoComponents=Valgte komponenter:
ReadyMemoGroup=Programgruppe:
ReadyMemoTasks=Tilleggsoppgaver:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Laster ned ekstra filer...
ButtonStopDownload=&Stopp nedlasting
StopDownload=Er du sikker på at du vil stoppe nedlastingen?
ErrorDownloadAborted=Nedlasting avbrutt
ErrorDownloadFailed=Nedlasting feilet: %1 %2
ErrorDownloadSizeFailed=Kunne ikke finne filstørrelse: %1 %2
ErrorFileHash1=Fil hash verdi feilet: %1
ErrorFileHash2=Ugyldig fil hash verdi: forventet %1, fant %2
ErrorProgress=Ugyldig fremdrift: %1 of %2
ErrorFileSize=Ugyldig fil størrelse: forventet %1, fant %2

; *** "Preparing to Install" wizard page
WizardPreparing=Forbereder installasjonen
PreparingDesc=Installasjonsprogrammet forbereder installasjon av [name] på den maskin.
PreviousInstallNotCompleted=Installasjonen/fjerningen av et tidligere program ble ikke ferdig. Du må starte maskinen på nytt.%n%nEtter omstarten må du kjøre installasjonsprogrammet på nytt for å fullføre installasjonen av [name].
CannotContinue=Installasjonsprogrammet kan ikke fortsette. Klikk på Avbryt for å avslutte.
ApplicationsFound=Disse applikasjonene bruker filer som vil oppdateres av installasjonen. Det anbefales å la installasjonen automatisk avslutte disse applikasjonene.
ApplicationsFound2=Disse applikasjonene bruker filer som vil oppdateres av installasjonen. Det anbefales å la installasjonen automatisk avslutte disse applikasjonene. Installasjonen vil prøve å starte applikasjonene på nytt etter at installasjonen er avsluttet.
CloseApplications=Lukk applikasjonene &automatisk
DontCloseApplications=&Ikke lukk applikasjonene
ErrorCloseApplications=Installasjonsprogrammet kunne ikke lukke alle applikasjonene &automatisk. Det anbefales å lukke alle applikasjoner som bruker filer som installasjonsprogrammet trenger å oppdatere før du fortsetter installasjonen.
PrepareToInstallNeedsRestart=Installasjonsprogrammet må gjøre omstart av maskinen. Etter omstart av maskinen, kjør installasjonsprogrammet på nytt for å ferdigstille installasjonen av [name].%n%nVil du gjøre omstart av maskinen nå?

; *** "Installing" wizard page
WizardInstalling=Installerer
InstallingLabel=Vennligst vent mens [name] installeres på din maskin.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Fullfører installasjonsprogrammet for [name]
FinishedLabelNoIcons=[name] er installert på din maskin.
FinishedLabel=[name] er installert på din maskin. Programmet kan kjøres ved at du klikker på ett av de installerte ikonene.
ClickFinish=Klikk Ferdig for å avslutte installasjonen.
FinishedRestartLabel=Maskinen må startes på nytt for at installasjonen skal fullføres. Vil du starte på nytt nå?
FinishedRestartMessage=Maskinen må startes på nytt for at installasjonen skal fullføres.%n%nVil du starte på nytt nå?
ShowReadmeCheck=Ja, jeg vil se på LESMEG-filen
YesRadio=&Ja, start maskinen på nytt nå
NoRadio=&Nei, jeg vil starte maskinen på nytt senere
; used for example as 'Run MyProg.exe'
RunEntryExec=Kjør %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Se på %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Trenger neste diskett
SelectDiskLabel2=Vennligst sett inn diskett %1 og klikk OK.%n%nHvis filene på finnes et annet sted enn det som er angitt nedenfor, kan du skrive inn korrekt bane eller klikke på Bla Gjennom.
PathLabel=&Bane:
FileNotInDir2=Finner ikke filen "%1" i "%2". Vennligst sett inn riktig diskett eller velg en annen mappe.
SelectDirectoryLabel=Vennligst angi hvor den neste disketten er.

; *** Installation phase messages
SetupAborted=Installasjonen ble avbrutt.%n%nVennligst korriger problemet og prøv igjen.
AbortRetryIgnoreSelectAction=Velg aksjon
AbortRetryIgnoreRetry=&Prøv Igjen
AbortRetryIgnoreIgnore=&Ignorer feil og fortsett
AbortRetryIgnoreCancel=Cancel installation

; *** Installation status messages
StatusClosingApplications=Lukker applikasjoner...
StatusCreateDirs=Lager mapper...
StatusExtractFiles=Pakker ut filer...
StatusCreateIcons=Lager programikoner...
StatusCreateIniEntries=Lager INI-instillinger...
StatusCreateRegistryEntries=Lager innstillinger i registeret...
StatusRegisterFiles=Registrerer filer...
StatusSavingUninstall=Lagrer info for avinstallering...
StatusRunProgram=Gjør ferdig installasjonen...
StatusRestartingApplications=Restarter applikasjoner...
StatusRollback=Tilbakestiller forandringer...

; *** Misc. errors
ErrorInternal2=Intern feil %1
ErrorFunctionFailedNoCode=%1 gikk galt
ErrorFunctionFailed=%1 gikk galt; kode %2
ErrorFunctionFailedWithMessage=%1 gikk galt; kode %2.%n%3
ErrorExecutingProgram=Kan ikke kjøre filen:%n%1

; *** Registry errors
ErrorRegOpenKey=Feil under åpning av registernøkkel:%n%1\%2
ErrorRegCreateKey=Feil under laging av registernøkkel:%n%1\%2
ErrorRegWriteKey=Feil under skriving til registernøkkel:%n%1\%2

; *** INI errors
ErrorIniEntry=Feil under laging av innstilling i filen "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&Hopp over denne filen (ikke anbefalt)
FileAbortRetryIgnoreIgnoreNotRecommended=&Ignorer feilen og fortsett (ikke anbefalt)
SourceIsCorrupted=Kildefilen er ødelagt
SourceDoesntExist=Kildefilen "%1" finnes ikke
ExistingFileReadOnly2=Den eksisterende filen er skrivebeskyttet og kan ikke erstattes.
ExistingFileReadOnlyRetry=&Fjern skrivebeskyttelse og prøv igjen
ExistingFileReadOnlyKeepExisting=&Behold eksisterende fil
ErrorReadingExistingDest=En feil oppsto under lesing av den eksisterende filen:
FileExistsSelectAction=Velg aksjon
FileExists2=Filen eksisterer allerede.
FileExistsOverwriteExisting=&Overskriv den eksisterende filen
FileExistsKeepExisting=&Behold den eksisterende filen
FileExistsOverwriteOrKeepAll=&Gjør samme valg for påfølgende konflikter
ExistingFileNewerSelectAction=Velg aksjon
ExistingFileNewer2=Den eksisterende filen er nyere enn filen Installasjonen prøver å installere.
ExistingFileNewerOverwriteExisting=&Overskriv den eksisterende filen
ExistingFileNewerKeepExisting=&Behold den eksisterende filen (anbefalt)
ExistingFileNewerOverwriteOrKeepAll=&Gjør samme valg for påfølgende konflikter
ErrorChangingAttr=En feil oppsto da attributtene ble forsøkt forandret på den eksisterende filen:
ErrorCreatingTemp=En feil oppsto under forsøket på å lage en fil i mål-mappen:
ErrorReadingSource=En feil oppsto under forsøket på å lese kildefilen:
ErrorCopying=En feil oppsto under forsøk på å kopiere en fil:
ErrorReplacingExistingFile=En feil oppsto under forsøket på å erstatte den eksisterende filen:
ErrorRestartReplace=RestartReplace gikk galt:
ErrorRenamingTemp=En feil oppsto under omdøping av fil i mål-mappen:
ErrorRegisterServer=Kan ikke registrere DLL/OCX: %1
ErrorRegSvr32Failed=RegSvr32 gikk galt med avslutte kode %1
ErrorRegisterTypeLib=Kan ikke registrere typebiblioteket: %1

; *** Uninstall display name markings
UninstallDisplayNameMark=%1 (%2)
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-bit
UninstallDisplayNameMark64Bit=64-bit
UninstallDisplayNameMarkAllUsers=Alle brukere
UninstallDisplayNameMarkCurrentUser=Aktiv bruker

; *** Post-installation errors
ErrorOpeningReadme=En feil oppsto under forsøket på å åpne LESMEG-filen.
ErrorRestartingComputer=Installasjonsprogrammet kunne ikke starte maskinen på nytt. Vennligst gjør dette manuelt.

; *** Uninstaller messages
UninstallNotFound=Filen "%1" finnes ikke. Kan ikke avinstallere.
UninstallOpenError=Filen "%1" kunne ikke åpnes. Kan ikke avinstallere.
UninstallUnsupportedVer=Kan ikke avinstallere. Avinstallasjons-loggfilen "%1" har et format som ikke gjenkjennes av denne versjonen av avinstallasjons-programmet
UninstallUnknownEntry=Et ukjent parameter (%1) ble funnet i Avinstallasjons-loggfilen
ConfirmUninstall=Er du sikker på at du helt vil fjerne %1 og alle tilhørende komponenter?
UninstallOnlyOnWin64=Denne installasjonen kan bare uføres på 64-bit Windows.
OnlyAdminCanUninstall=Denne installasjonen kan bare avinstalleres av en bruker med Administrator-rettigheter.
UninstallStatusLabel=Vennligst vent mens %1 fjernes fra maskinen.
UninstalledAll=Avinstallasjonen av %1 var vellykket
UninstalledMost=Avinstallasjonen av %1 er ferdig.%n%nEnkelte elementer kunne ikke fjernes. Disse kan fjernes manuelt.
UninstalledAndNeedsRestart=Du må starte maskinen på nytt for å fullføre installasjonen av %1.%n%nVil du starte på nytt nå?
UninstallDataCorrupted="%1"-filen er ødelagt. Kan ikke avinstallere.

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Fjerne delte filer?
ConfirmDeleteSharedFile2=Systemet indikerer at den følgende filen ikke lengre brukes av andre programmer. Vil du at avinstalleringsprogrammet skal fjerne den delte filen?%n%nHvis andre programmer bruker denne filen, kan du risikere at de ikke lengre vil virke som de skal. Velg Nei hvis du er usikker. Det vil ikke gjøre noen skade hvis denne filen ligger på din maskin.
SharedFileNameLabel=Filnavn:
SharedFileLocationLabel=Plassering:
WizardUninstalling=Avinstallerings-status:
StatusUninstalling=Avinstallerer %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Installerer %1.
ShutdownBlockReasonUninstallingApp=Avinstallerer %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 versjon %2
AdditionalIcons=Ekstra-ikoner:
CreateDesktopIcon=Lag ikon på &skrivebordet
CreateQuickLaunchIcon=Lag et &Hurtigstarts-ikon
ProgramOnTheWeb=%1 på nettet
UninstallProgram=Avinstaller %1
LaunchProgram=Kjør %1
AssocFileExtension=&Koble %1 med filetternavnet %2
AssocingFileExtension=Kobler %1 med filetternavnet %2...
AutoStartProgramGroupDescription=Oppstart:
AutoStartProgram=Start %1 automatisk
AddonHostProgramNotFound=%1 ble ikke funnet i katalogen du valgte.%n%nVil du fortsette likevel?