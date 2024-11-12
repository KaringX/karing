; *** Inno Setup version 6.1.0+ Slovenian messages ***
;
; To download user-contributed translations of this file, go to:
;   http://www.jrsoftware.org/is3rdparty.php
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).
;
; Maintained by Jernej Simoncic (jernej+s-innosetup@eternallybored.org)

[LangOptions]
LanguageName=Slovenski
LanguageID=$0424
LanguageCodePage=1250

DialogFontName=
[Messages]

; *** Application titles
SetupAppTitle=Namestitev
SetupWindowTitle=Namestitev - %1
UninstallAppTitle=Odstranitev
UninstallAppFullTitle=Odstranitev programa %1

; *** Misc. common
InformationTitle=Informacija
ConfirmTitle=Potrditev
ErrorTitle=Napaka

; *** SetupLdr messages
SetupLdrStartupMessage=V raèunalnik boste namestili program %1. Želite nadaljevati?
LdrCannotCreateTemp=Ni bilo mogoèe ustvariti zaèasne datoteke. Namestitev je prekinjena
LdrCannotExecTemp=Ni bilo mogoèe zagnati datoteke v zaèasni mapi. Namestitev je prekinjena

; *** Startup error messages
LastErrorMessage=%1.%n%nNapaka %2: %3
SetupFileMissing=Datoteka %1 manjka. Odpravite napako ali si priskrbite drugo kopijo programa.
SetupFileCorrupt=Datoteke namestitvenega programa so okvarjene. Priskrbite si drugo kopijo programa.
SetupFileCorruptOrWrongVer=Datoteke so okvarjene ali nezdružljive s to razlièico namestitvenega programa. Odpravite napako ali si priskrbite drugo kopijo programa.
InvalidParameter=Naveden je bil napaèen parameter ukazne vrstice:%n%n%1
SetupAlreadyRunning=Namestitveni program se že izvaja.
WindowsVersionNotSupported=Program ne deluje na vaši razlièici sistema Windows.
WindowsServicePackRequired=Program potrebuje %1 s servisnim paketom %2 ali novejšo razlièico.
NotOnThisPlatform=Program ni namenjen za uporabo v %1.
OnlyOnThisPlatform=Program je namenjen le za uporabo v %1.
OnlyOnTheseArchitectures=Program lahko namestite le na Windows sistemih, na naslednjih vrstah procesorjev:%n%n%1
WinVersionTooLowError=Ta program zahteva %1 razlièico %2 ali novejšo.
WinVersionTooHighError=Tega programa ne morete namestiti v %1 razlièice %2 ali novejše.
AdminPrivilegesRequired=Za namestitev programa morate biti prijavljeni v raèun s skrbniškimi pravicami.
PowerUserPrivilegesRequired=Za namestitev programa morate biti prijavljeni v raèun s skrbniškimi ali power user pravicami.
SetupAppRunningError=Program %1 je trenutno odprt.%n%nZaprite program, nato kliknite V redu za nadaljevanje ali Preklièi za izhod.
UninstallAppRunningError=Program %1 je trenutno odprt.%n%nZaprite program, nato kliknite V redu za nadaljevanje ali Preklièi za izhod.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Izberite naèin namestitve
PrivilegesRequiredOverrideInstruction=Izberite naèin namestitve
PrivilegesRequiredOverrideText1=Program %1 lahko namestite za vse uporabnike (potrebujete skrbniške pravice), ali pa samo za vas.
PrivilegesRequiredOverrideText2=Program %1 lahko namestite samo za vas, ali pa za vse uporabnike (potrebujete skrbniške pravice).
PrivilegesRequiredOverrideAllUsers=N&amesti za vse uporabnike
PrivilegesRequiredOverrideAllUsersRecommended=N&amesti za vse uporabnike (priporoèeno)
PrivilegesRequiredOverrideCurrentUser=Namesti samo za&me
PrivilegesRequiredOverrideCurrentUserRecommended=Namesti samo za&me (priporoèeno)

; *** Misc. errors
ErrorCreatingDir=Namestitveni program ni mogel ustvariti mape »%1«
ErrorTooManyFilesInDir=Namestitveni program ne more ustvariti nove datoteke v mapi »%1«, ker vsebuje preveè datotek

; *** Setup common messages
ExitSetupTitle=Prekini namestitev
ExitSetupMessage=Namestitev ni konèana. Èe jo boste prekinili, program ne bo namešèen.%n%nPonovno namestitev lahko izvedete kasneje.%n%nŽelite prekiniti namestitev?
AboutSetupMenuItem=&O namestitvenem programu...
AboutSetupTitle=O namestitvenem programu
AboutSetupMessage=%1 razlièica %2%n%3%n%n%1 domaèa stran:%n%4
AboutSetupNote=
TranslatorNote=Slovenski prevod:%nMiha Remec%nJernej Simonèiè <jernej|s-innosetup@eternallybored.org>

; *** Buttons
ButtonBack=< Na&zaj
ButtonNext=&Naprej >
ButtonInstall=&Namesti
ButtonOK=V redu
ButtonCancel=Preklièi
ButtonYes=&Da
ButtonYesToAll=Da za &vse
ButtonNo=&Ne
ButtonNoToAll=N&e za vse
ButtonFinish=&Konèaj
ButtonBrowse=Pre&brskaj...
ButtonWizardBrowse=Pre&brskaj...
ButtonNewFolder=&Ustvari novo mapo

; *** "Select Language" dialog messages
SelectLanguageTitle=Izbira jezika namestitve
SelectLanguageLabel=Izberite jezik, ki ga želite uporabljati med namestitvijo.

; *** Common wizard text
ClickNext=Kliknite Naprej za nadaljevanje namestitve ali Preklièi za prekinitev namestitve.
BeveledLabel=
BrowseDialogTitle=Izbira mape
BrowseDialogLabel=Izberite mapo s spiska, nato kliknite V redu.
NewFolderName=Nova mapa

; *** "Welcome" wizard page
WelcomeLabel1=Dobrodošli v namestitev programa [name].
WelcomeLabel2=V raèunalnik boste namestili program [name/ver].%n%nPriporoèljivo je, da pred zaèetkom namestitve zaprete vse odprte programe.

; *** "Password" wizard page
WizardPassword=Geslo
PasswordLabel1=Namestitev je zašèitena z geslom.
PasswordLabel3=Vnesite geslo, nato kliknite Naprej za nadaljevanje. Pri vnašanju pazite na male in velike èrke.
PasswordEditLabel=&Geslo:
IncorrectPassword=Vneseno geslo ni pravilno. Poizkusite ponovno.

; *** "License Agreement" wizard page
WizardLicense=Licenèna pogodba
LicenseLabel=Pred nadaljevanjem preberite licenèno pogodbo za uporabo programa.
LicenseLabel3=Preberite licenèno pogodbo za uporabo programa. Program lahko namestite le, èe se s pogodbo v celoti strinjate.
LicenseAccepted=&Da, sprejemam vse pogoje licenène pogodbe
LicenseNotAccepted=N&e, pogojev licenène pogodbe ne sprejmem

; *** "Information" wizard pages
WizardInfoBefore=Informacije
InfoBeforeLabel=Pred nadaljevanjem preberite naslednje pomembne informacije.
InfoBeforeClickLabel=Ko boste pripravljeni na nadaljevanje namestitve, kliknite Naprej.
WizardInfoAfter=Informacije
InfoAfterLabel=Pred nadaljevanjem preberite naslednje pomembne informacije.
InfoAfterClickLabel=Ko boste pripravljeni na nadaljevanje namestitve, kliknite Naprej.

; *** "User Information" wizard page
WizardUserInfo=Podatki o uporabniku
UserInfoDesc=Vnesite svoje podatke.
UserInfoName=&Ime:
UserInfoOrg=&Podjetje:
UserInfoSerial=&Serijska številka:
UserInfoNameRequired=Vnos imena je obvezen.

; *** "Select Destination Location" wizard page
WizardSelectDir=Izbira ciljnega mesta
SelectDirDesc=Kam želite namestiti program [name]?
SelectDirLabel3=Program [name] bo namešèen v naslednjo mapo.
SelectDirBrowseLabel=Za nadaljevanje kliknite Naprej. Èe želite izbrati drugo mapo, kliknite Prebrskaj.
DiskSpaceGBLabel=Na disku mora biti vsaj [gb] GB prostora.
DiskSpaceMBLabel=Na disku mora biti vsaj [mb] MB prostora.
CannotInstallToNetworkDrive=Programa ni mogoèe namestiti na mrežni pogon.
CannotInstallToUNCPath=Programa ni mogoèe namestiti v UNC pot.
InvalidPath=Vpisati morate polno pot vkljuèno z oznako pogona. Primer:%n%nC:\PROGRAM%n%nali UNC pot v obliki:%n%n\\strežnik\mapa_skupne_rabe
InvalidDrive=Izbrani pogon ali omrežno sredstvo UNC ne obstaja ali ni dostopno. Izberite drugega.
DiskSpaceWarningTitle=Na disku ni dovolj prostora
DiskSpaceWarning=Namestitev potrebuje vsaj %1 KB prostora, toda na izbranem pogonu je na voljo le %2 KB.%n%nŽelite kljub temu nadaljevati?
DirNameTooLong=Ime mape ali poti je predolgo.
InvalidDirName=Ime mape ni veljavno.
BadDirName32=Ime mape ne sme vsebovati naslednjih znakov:%n%n%1
DirExistsTitle=Mapa že obstaja
DirExists=Mapa%n%n%1%n%nže obstaja. Želite program vseeno namestiti v to mapo?
DirDoesntExistTitle=Mapa ne obstaja
DirDoesntExist=Mapa %n%n%1%n%nne obstaja. Ali jo želite ustvariti?

; *** "Select Components" wizard page
WizardSelectComponents=Izbira komponent
SelectComponentsDesc=Katere komponente želite namestiti?
SelectComponentsLabel2=Oznaèite komponente, ki jih želite namestiti; odznaèite komponente, ki jih ne želite namestiti. Kliknite Naprej, ko boste pripravljeni za nadaljevanje.
FullInstallation=Popolna namestitev
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Osnovna namestitev
CustomInstallation=Namestitev po meri
NoUninstallWarningTitle=Komponente že obstajajo
NoUninstallWarning=Namestitveni program je ugotovil, da so naslednje komponente že namešèene v raèunalniku:%n%n%1%n%nNamestitveni program teh že namešèenih komponent ne bo odstranil.%n%nŽelite vseeno nadaljevati?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceGBLabel=Za izbrano namestitev potrebujete vsaj [gb] GB prostora na disku.
ComponentsDiskSpaceMBLabel=Za izbrano namestitev potrebujete vsaj [mb] MB prostora na disku.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Izbira dodatnih opravil
SelectTasksDesc=Katera dodatna opravila želite izvesti?
SelectTasksLabel2=Izberite dodatna opravila, ki jih bo namestitveni program opravil med namestitvijo programa [name], nato kliknite Naprej.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Izbira mape v meniju »Zaèetek«
SelectStartMenuFolderDesc=Kje naj namestitveni program ustvari bližnjice?
SelectStartMenuFolderLabel3=Namestitveni program bo ustvaril bližnjice v naslednji mapi v meniju »Start«.
SelectStartMenuFolderBrowseLabel=Za nadaljevanje kliknite Naprej. Èe želite izbrati drugo mapo, kliknite Prebrskaj.
MustEnterGroupName=Ime skupine mora biti vpisano.
GroupNameTooLong=Ime mape ali poti je predolgo.
InvalidGroupName=Ime mape ni veljavno.
BadGroupName=Ime skupine ne sme vsebovati naslednjih znakov:%n%n%1
NoProgramGroupCheck2=&Ne ustvari mape v meniju »Start«

; *** "Ready to Install" wizard page
WizardReady=Pripravljen za namestitev
ReadyLabel1=Namestitveni program je pripravljen za namestitev programa [name] v vaš raèunalnik.
ReadyLabel2a=Kliknite Namesti za zaèetek namešèanja. Kliknite Nazaj, èe želite pregledati ali spremeniti katerokoli nastavitev.
ReadyLabel2b=Kliknite Namesti za zaèetek namešèanja.
ReadyMemoUserInfo=Podatki o uporabniku:
ReadyMemoDir=Ciljno mesto:
ReadyMemoType=Vrsta namestitve:
ReadyMemoComponents=Izbrane komponente:
ReadyMemoGroup=Mapa v meniju »Zaèetek«:
ReadyMemoTasks=Dodatna opravila:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Prenašam dodatne datoteke...
ButtonStopDownload=Prekini preno&s
StopDownload=Ali res želite prekiniti prenos?
ErrorDownloadAborted=Prenos prekinjen
ErrorDownloadFailed=Prenos ni uspel: %1 %2
ErrorDownloadSizeFailed=Pridobivanje velikosti ni uspelo: %1 %2
ErrorFileHash1=Pridobivanje zgošèene vrednosti ni uspelo: %1
ErrorFileHash2=Neveljavna zgošèena vrednost: prièakovana %1, dobljena %2
ErrorProgress=Neveljaven potek: %1 od %2
ErrorFileSize=Neveljavna velikost datoteke: prièakovana %1, dobljena %2

; *** "Preparing to Install" wizard page
WizardPreparing=Pripravljam za namestitev
PreparingDesc=Namestitveni program je pripravljen za namestitev programa [name] v vaš raèunalnik.
PreviousInstallNotCompleted=Namestitev ali odstranitev prejšnjega programa ni bila konèana. Da bi jo dokonèali, morate raèunalnik znova zagnati.%n%nPo ponovnem zagonu raèunalnika znova zaženite namestitveni program, da boste konèali namestitev programa [name].
CannotContinue=Namestitveni program ne more nadaljevati. Pritisnite Preklièi za izhod.

; *** "Installing" wizard page
ApplicationsFound=Naslednji programi uporabljajo datoteke, ki jih mora namestitveni program posodobiti. Priporoèljivo je, da namestitvenemu programu dovolite, da te programe konèa.
ApplicationsFound2=Naslednji programi uporabljajo datoteke, ki jih mora namestitveni program posodobiti. Priporoèljivo je, da namestitvenemu programu dovolite, da te programe konèa. Po koncu namestitve bo namestitveni program poizkusil znova zagnati te programe.
CloseApplications=S&amodejno zapri programe
DontCloseApplications=&Ne zapri programov
ErrorCloseApplications=Namestitvenemu programu ni uspelo samodejno zapreti vseh programov. Priporoèljivo je, da pred nadaljevanjem zaprete vse programe, ki uporabljajo datoteke, katere mora namestitev posodobiti.
PrepareToInstallNeedsRestart=Namestitveni program mora znova zagnati vaš raèunalnik. Za dokonèanje namestitve programa [name], po ponovnem zagonu znova zaženite namestitveni program.%n%nAli želite zdaj znova zagnati raèunalnik?

WizardInstalling=Namešèanje
InstallingLabel=Poèakajte, da bo program [name] namešèen v vaš raèunalnik.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Zakljuèek namestitve programa [name]
FinishedLabelNoIcons=Program [name] je namešèen v vaš raèunalnik.
FinishedLabel=Program [name] je namešèen v vaš raèunalnik. Program zaženete tako, da odprete pravkar ustvarjene programske ikone.
ClickFinish=Kliknite tipko Konèaj za zakljuèek namestitve.
FinishedRestartLabel=Za dokonèanje namestitve programa [name] morate raèunalnik znova zagnati. Ali ga želite znova zagnati zdaj?
FinishedRestartMessage=Za dokonèanje namestitve programa [name] morate raèunalnik znova zagnati. %n%nAli ga želite znova zagnati zdaj?
ShowReadmeCheck=Želim prebrati datoteko BERIME
YesRadio=&Da, raèunalnik znova zaženi zdaj
NoRadio=&Ne, raèunalnik bom znova zagnal pozneje

; used for example as 'Run MyProg.exe'
RunEntryExec=Zaženi %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Preglej %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Namestitveni program potrebuje naslednji disk
SelectDiskLabel2=Vstavite disk %1 in kliknite V redu.%n%nÈe se datoteke s tega diska nahajajo v drugi mapi kot je navedena spodaj, vnesite pravilno pot ali kliknite Prebrskaj.
PathLabel=&Pot:
FileNotInDir2=Datoteke »%1« ni v mapi »%2«. Vstavite pravilni disk ali izberite drugo mapo.
SelectDirectoryLabel=Vnesite mesto naslednjega diska.

; *** Installation phase messages
SetupAborted=Namestitev ni bila konèana.%n%nOdpravite težavo in znova odprite namestitveni program.
AbortRetryIgnoreSelectAction=Izberite dejanje
AbortRetryIgnoreRetry=Poizkusi &znova
AbortRetryIgnoreIgnore=&Prezri napako in nadaljuj
AbortRetryIgnoreCancel=Preklièi namestitev

; *** Installation status messages
StatusClosingApplications=Zapiranje programov...
StatusCreateDirs=Ustvarjanje map...
StatusExtractFiles=Razširjanje datotek...
StatusCreateIcons=Ustvarjanje bližnjic...
StatusCreateIniEntries=Vpisovanje v INI datoteke...
StatusCreateRegistryEntries=Ustvarjanje vnosov v register...
StatusRegisterFiles=Registriranje datotek...
StatusSavingUninstall=Zapisovanje podatkov za odstranitev...
StatusRunProgram=Zakljuèevanje namestitve...
StatusRestartingApplications=Zaganjanje programov...
StatusRollback=Obnavljanje prvotnega stanja...

; *** Misc. errors
ErrorInternal2=Interna napaka: %1
ErrorFunctionFailedNoCode=%1 ni uspel(a)
ErrorFunctionFailed=%1 ni uspel(a); koda %2
ErrorFunctionFailedWithMessage=%1 ni uspela; koda %2.%n%3
ErrorExecutingProgram=Ne morem zagnati programa:%n%1

; *** Registry errors
ErrorRegOpenKey=Napaka pri odpiranju kljuèa v registru:%n%1\%2
ErrorRegCreateKey=Napaka pri ustvarjanju kljuèa v registru:%n%1\%2
ErrorRegWriteKey=Napaka pri pisanju kljuèa v registru:%n%1\%2

; *** INI errors
ErrorIniEntry=Napaka pri vpisu v INI datoteko »%1«.

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=Pre&skoèi to datoteko (ni priporoèeno)
FileAbortRetryIgnoreIgnoreNotRecommended=Prezr&i napako in nadaljuj (ni priporoèeno)
SourceIsCorrupted=Izvorna datoteka je okvarjena
SourceDoesntExist=Izvorna datoteka »%1« ne obstaja
ExistingFileReadOnly2=Obstojeèe datoteke ni mogoèe nadomestiti, ker ima oznako samo za branje.
ExistingFileReadOnlyRetry=Odst&rani oznako samo za branje in poizkusi ponovno
ExistingFileReadOnlyKeepExisting=&Ohrani obstojeèo datoteko
ErrorReadingExistingDest=Pri branju obstojeèe datoteke je prišlo do napake:
FileExistsSelectAction=Izberite dejanje
FileExists2=Datoteka že obstaja.
FileExistsOverwriteExisting=&Prepiši obstojeèo datoteko
FileExistsKeepExisting=&Ohrani trenutno datoteko
FileExistsOverwriteOrKeepAll=&To naredite za preostale spore
ExistingFileNewerSelectAction=Izberite dejanje
ExistingFileNewer2=Obstojeèa datoteka je novejša, kot datoteka, ki se namešèa.
ExistingFileNewerOverwriteExisting=&Prepiši obstojeèo datoteko
ExistingFileNewerKeepExisting=&Ohrani trenutno datoteko (priporoèeno)
ExistingFileNewerOverwriteOrKeepAll=&To naredite za preostale spore
ErrorChangingAttr=Pri poskusu spremembe lastnosti datoteke je prišlo do napake:
ErrorCreatingTemp=Pri ustvarjanju datoteke v ciljni mapi je prišlo do napake:
ErrorReadingSource=Pri branju izvorne datoteke je prišlo do napake:
ErrorCopying=Pri kopiranju datoteke je prišlo do napake:
ErrorReplacingExistingFile=Pri poskusu zamenjave obstojeèe datoteke je prišlo do napake:
ErrorRestartReplace=Napaka RestartReplace:
ErrorRenamingTemp=Pri poskusu preimenovanja datoteke v ciljni mapi je prišlo do napake:
ErrorRegisterServer=Registracija DLL/OCX ni uspela: %1
ErrorRegSvr32Failed=RegSvr32 ni uspel s kodo napake %1
ErrorRegisterTypeLib=Registracija TypeLib ni uspela: %1

; *** Uninstall display name markings
UninstallDisplayNameMark=%1 (%2)
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-bitno
UninstallDisplayNameMark64Bit=64-bitno
UninstallDisplayNameMarkAllUsers=vsi uporabniki
UninstallDisplayNameMarkCurrentUser=trenutni uporabnik

; *** Post-installation errors
ErrorOpeningReadme=Pri odpiranju datoteke BERIME je prišlo do napake.
ErrorRestartingComputer=Namestitvenemu programu ni uspelo znova zagnati raèunalnika. Sami znova zaženite raèunalnik.

; *** Uninstaller messages
UninstallNotFound=Datoteka »%1« ne obstaja. Odstranitev ni mogoèa.
UninstallOpenError=Datoteke »%1« ne morem odpreti. Ne morem odstraniti
UninstallUnsupportedVer=Dnevniška datoteka »%1« je v obliki, ki je ta razlièica odstranitvenega programa ne razume. Programa ni mogoèe odstraniti
UninstallUnknownEntry=V dnevniški datoteki je bil najden neznani vpis (%1)
ConfirmUninstall=Ste preprièani, da želite v celoti odstraniti program %1 in pripadajoèe komponente?
UninstallOnlyOnWin64=To namestitev je mogoèe odstraniti le v 64-bitni razlièici sistema Windows.
OnlyAdminCanUninstall=Za odstranitev tega programa morate imeti skrbniške pravice.
UninstallStatusLabel=Poèakajte, da se program %1 odstrani iz vašega raèunalnika.
UninstalledAll=Program %1 je bil uspešno odstranjen iz vašega raèunalnika.
UninstalledMost=Odstranjevanje programa %1 je konèano.%n%nNekatere datoteke niso bile odstranjene in jih lahko odstranite roèno.
UninstalledAndNeedsRestart=Za dokonèanje odstranitve programa %1 morate raèunalnik znova zagnati.%n%nAli ga želite znova zagnati zdaj?
UninstallDataCorrupted=Datoteka »%1« je okvarjena. Odstranitev ni možna

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Želite odstraniti datoteko v skupni rabi?
ConfirmDeleteSharedFile2=Spodaj izpisane datoteke v skupni rabi ne uporablja veè noben program. Želite odstraniti to datoteko?%n%nÈe jo uporablja katerikoli program in jo boste odstranili, ta program verjetno ne bo veè deloval pravilno. Èe niste preprièani, kliknite Ne. Èe boste datoteko ohranili v raèunalniku, ne bo niè narobe.
SharedFileNameLabel=Ime datoteke:
SharedFileLocationLabel=Mesto:
WizardUninstalling=Odstranjevanje programa
StatusUninstalling=Odstranjujem %1...

ShutdownBlockReasonInstallingApp=Namešèam %1.
ShutdownBlockReasonUninstallingApp=Odstranjujem %1.

[CustomMessages]

NameAndVersion=%1 razlièica %2
AdditionalIcons=Dodatne ikone:
CreateDesktopIcon=Ustvari ikono na &namizju
CreateQuickLaunchIcon=Ustvari ikono za &hitri zagon
ProgramOnTheWeb=%1 na spletu
UninstallProgram=Odstrani %1
LaunchProgram=Odpri %1
AssocFileExtension=&Poveži %1 s pripono %2
AssocingFileExtension=Povezujem %1 s pripono %2...
AutoStartProgramGroupDescription=Zagon:
AutoStartProgram=Samodejno zaženi %1
AddonHostProgramNotFound=Programa %1 ni bilo mogoèe najti v izbrani mapi.%n%nAli želite vseeno nadaljevati?
