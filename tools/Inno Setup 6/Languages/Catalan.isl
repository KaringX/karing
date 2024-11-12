; *** Inno Setup version 6.1.0+ Catalan messages ***
;
; Translated by Carles Millan (email: carles@carlesmillan.cat)
;
; To download user-contributed translations of this file, go to:
;   https://jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno

[LangOptions]

LanguageName=Catal<00E0>
LanguageID=$0403
LanguageCodePage=1252

[Messages]

; *** Application titles
SetupAppTitle=Instal·lació
SetupWindowTitle=Instal·lació - %1
UninstallAppTitle=Desinstal·lació
UninstallAppFullTitle=Desinstal·la %1

; *** Misc. common
InformationTitle=Informació
ConfirmTitle=Confirmació
ErrorTitle=Error

; *** SetupLdr messages
SetupLdrStartupMessage=Aquest programa instal·larà %1. Voleu continuar?
LdrCannotCreateTemp=No s'ha pogut crear un fitxer temporal. Instal·lació cancel·lada
LdrCannotExecTemp=No s'ha pogut executar el fitxer a la carpeta temporal. Instal·lació cancel·lada
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=El fitxer %1 no es troba a la carpeta d'instal·lació. Resoleu el problema o obteniu una nova còpia del programa.
SetupFileCorrupt=Els fitxers d'instal·lació estan corromputs. Obteniu una nova còpia del programa.
SetupFileCorruptOrWrongVer=Els fitxers d'instal·lació estan espatllats, o són incompatibles amb aquesta versió del programa. Resoleu el problema o obteniu una nova còpia del programa.
InvalidParameter=Un paràmetre invàlid ha estat passat a la línia de comanda:%n%n%1
SetupAlreadyRunning=La instal·lació ja està en curs.
WindowsVersionNotSupported=Aquest programa no suporta la versió de Windows instal·lada al vostre ordinador.
WindowsServicePackRequired=Aquest programa necessita %1 Service Pack %2 o posterior.
NotOnThisPlatform=Aquest programa no funcionarà sota %1.
OnlyOnThisPlatform=Aquest programa només pot ser executat sota %1.
OnlyOnTheseArchitectures=Aquest programa només pot ser instal·lat en versions de Windows dissenyades per a les següents arquitectures de processador:%n%n%1
WinVersionTooLowError=Aquest programa requereix %1 versió %2 o posterior.
WinVersionTooHighError=Aquest programa no pot ser instal·lat sota %1 versió %2 o posterior.
AdminPrivilegesRequired=Cal que tingueu privilegis d'administrador per poder instal·lar aquest programa.
PowerUserPrivilegesRequired=Cal que accediu com a administrador o com a membre del grup Power Users en instal·lar aquest programa.
SetupAppRunningError=El programa d'instal·lació ha detectat que %1 s'està executant actualment.%n%nTanqueu el programa i premeu Accepta per a continuar o Cancel·la per a sortir.
UninstallAppRunningError=El programa de desinstal·lació ha detectat que %1 s'està executant en aquest moment.%n%nTanqueu el programa i premeu Accepta per a continuar o Cancel·la per a sortir.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Selecció del Mode d'Instal·lació
PrivilegesRequiredOverrideInstruction=Trieu mode d'instal·lació
PrivilegesRequiredOverrideText1=%1 pot ser instal·lat per a tots els usuaris (cal tenir privilegis d'administrador), o només per a vós.
PrivilegesRequiredOverrideText2=%1 pot ser instal·lat només per a vós, o per a tots els usuaris (cal tenir privilegis d'administrador).
PrivilegesRequiredOverrideAllUsers=Instal·lació per a &tots els usuaris
PrivilegesRequiredOverrideAllUsersRecommended=Instal·lació per a &tots els usuaris (recomanat)
PrivilegesRequiredOverrideCurrentUser=Instal·lació només per a &mi
PrivilegesRequiredOverrideCurrentUserRecommended=Instal·lació només per a &mi (recomanat)

; *** Misc. errors
ErrorCreatingDir=El programa d'instal·lació no ha pogut crear la carpeta "%1"
ErrorTooManyFilesInDir=No s'ha pogut crear un fitxer a la carpeta "%1" perquè conté massa fitxers

; *** Setup common messages
ExitSetupTitle=Surt
ExitSetupMessage=La instal·lació no s'ha completat. Si sortiu ara, el programa no serà instal·lat.%n%nPer a completar-la podreu tornar a executar el programa d'instal·lació quan vulgueu.%n%nVoleu sortir-ne?
AboutSetupMenuItem=&Sobre la instal·lació...
AboutSetupTitle=Sobre la instal·lació
AboutSetupMessage=%1 versió %2%n%3%n%nPàgina web de %1:%n%4
AboutSetupNote=
TranslatorNote=Catalan translation by Carles Millan (carles at carlesmillan.cat)

; *** Buttons
ButtonBack=< &Enrere
ButtonNext=&Següent >
ButtonInstall=&Instal·la
ButtonOK=Accepta
ButtonCancel=Cancel·la
ButtonYes=&Sí
ButtonYesToAll=Sí a &tot
ButtonNo=&No
ButtonNoToAll=N&o a tot
ButtonFinish=&Finalitza
ButtonBrowse=&Explora...
ButtonWizardBrowse=&Cerca...
ButtonNewFolder=Crea &nova carpeta

; *** "Select Language" dialog messages
SelectLanguageTitle=Trieu idioma
SelectLanguageLabel=Trieu idioma a emprar durant la instal·lació.

; *** Common wizard text
ClickNext=Premeu Següent per a continuar o Cancel·la per a abandonar la instal·lació.
BeveledLabel=
BrowseDialogTitle=Trieu una carpeta
BrowseDialogLabel=Trieu la carpeta de destinació i premeu Accepta.
NewFolderName=Nova carpeta

; *** "Welcome" wizard page
WelcomeLabel1=Benvingut a l'assistent d'instal·lació de [name]
WelcomeLabel2=Aquest programa instal·larà [name/ver] al vostre ordinador.%n%nÉs molt recomanable que abans de continuar tanqueu tots els altres programes oberts, per tal d'evitar conflictes durant el procés d'instal·lació.

; *** "Password" wizard page
WizardPassword=Contrasenya
PasswordLabel1=Aquesta instal·lació està protegida amb una contrasenya.
PasswordLabel3=Indiqueu la contrasenya i premeu Següent per a continuar. Aquesta contrasenya distingeix entre majúscules i minúscules.
PasswordEditLabel=&Contrasenya:
IncorrectPassword=La contrasenya introduïda no és correcta. Torneu-ho a intentar.

; *** "License Agreement" wizard page
WizardLicense=Acord de Llicència
LicenseLabel=Cal que llegiu aquesta informació abans de continuar.
LicenseLabel3=Cal que llegiu l'Acord de Llicència següent. Cal que n'accepteu els termes abans de continuar amb la instal·lació.
LicenseAccepted=&Accepto l'acord
LicenseNotAccepted=&No accepto l'acord

; *** "Information" wizard pages
WizardInfoBefore=Informació
InfoBeforeLabel=Llegiu la informació següent abans de continuar.
InfoBeforeClickLabel=Quan estigueu preparat per a continuar, premeu Següent.
WizardInfoAfter=Informació
InfoAfterLabel=Llegiu la informació següent abans de continuar.
InfoAfterClickLabel=Quan estigueu preparat per a continuar, premeu Següent

; *** "User Information" wizard page
WizardUserInfo=Informació sobre l'usuari
UserInfoDesc=Introduïu la vostra informació.
UserInfoName=&Nom de l'usuari:
UserInfoOrg=&Organització
UserInfoSerial=&Número de sèrie:
UserInfoNameRequired=Cal que hi introduïu un nom

; *** "Select Destination Location" wizard page
WizardSelectDir=Trieu Carpeta de Destinació
SelectDirDesc=On s'ha d'instal·lar [name]?
SelectDirLabel3=El programa d'instal·lació instal·larà [name] a la carpeta següent.
SelectDirBrowseLabel=Per a continuar, premeu Següent. Si desitgeu triar una altra capeta, premeu Cerca.
DiskSpaceGBLabel=Aquest programa necessita un mínim de [gb] GB d'espai a disc.
DiskSpaceMBLabel=Aquest programa necessita un mínim de [mb] MB d'espai a disc.
CannotInstallToNetworkDrive=La instal·lació no es pot fer en un disc de xarxa.
CannotInstallToUNCPath=La instal·lació no es pot fer a una ruta UNC.
InvalidPath=Cal donar una ruta completa amb lletra d'unitat, per exemple:%n%nC:\Aplicació%n%no bé una ruta UNC en la forma:%n%n\\servidor\compartit
InvalidDrive=El disc o ruta de xarxa seleccionat no existeix, trieu-ne un altre.
DiskSpaceWarningTitle=No hi ha prou espai al disc
DiskSpaceWarning=El programa d'instal·lació necessita com a mínim %1 KB d'espai lliure, però el disc seleccionat només té %2 KB disponibles.%n%nTot i amb això, desitgeu continuar?
DirNameTooLong=El nom de la carpeta o de la ruta és massa llarg.
InvalidDirName=El nom de la carpeta no és vàlid.
BadDirName32=Un nom de carpeta no pot contenir cap dels caràcters següents:%n%n%1
DirExistsTitle=La carpeta existeix
DirExists=La carpeta:%n%n%1%n%nja existeix. Voleu instal·lar igualment el programa en aquesta carpeta?
DirDoesntExistTitle=La Carpeta No Existeix
DirDoesntExist=La carpeta:%n%n%1%n%nno existeix. Voleu que sigui creada?

; *** "Select Program Group" wizard page
WizardSelectComponents=Trieu Components
SelectComponentsDesc=Quins components cal instal·lar?
SelectComponentsLabel2=Trieu els components que voleu instal·lar; elimineu els components que no voleu instal·lar. Premeu Següent per a continuar.
FullInstallation=Instal·lació completa
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Instal·lació compacta
CustomInstallation=Instal·lació personalitzada
NoUninstallWarningTitle=Els components Existeixen
NoUninstallWarning=El programa d'instal·lació ha detectat que els components següents ja es troben al vostre ordinador:%n%n%1%n%nSi no estan seleccionats no seran desinstal·lats.%n%nVoleu continuar igualment?
ComponentSize1=%1 Kb
ComponentSize2=%1 Mb
ComponentsDiskSpaceGBLabel=Aquesta selecció requereix un mínim de [gb] GB d'espai al disc.
ComponentsDiskSpaceMBLabel=Aquesta selecció requereix un mínim de [mb] Mb d'espai al disc.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Trieu tasques addicionals
SelectTasksDesc=Quines tasques addicionals cal executar?
SelectTasksLabel2=Trieu les tasques addicionals que voleu que siguin executades mentre s'instal·la [name], i després premeu Següent.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Trieu la carpeta del Menú Inici
SelectStartMenuFolderDesc=On cal situar els enllaços del programa?
SelectStartMenuFolderLabel3=El programa d'instal·lació crearà l'accés directe al programa a la següent carpeta del menú d'Inici.
SelectStartMenuFolderBrowseLabel=Per a continuar, premeu Següent. Si desitgeu triar una altra carpeta, premeu Cerca.
MustEnterGroupName=Cal que hi introduïu un nom de carpeta.
GroupNameTooLong=El nom de la carpeta o de la ruta és massa llarg.
InvalidGroupName=El nom de la carpeta no és vàlid.
BadGroupName=El nom del grup no pot contenir cap dels caràcters següents:%n%n%1
NoProgramGroupCheck2=&No creïs una carpeta al Menú Inici

; *** "Ready to Install" wizard page
WizardReady=Preparat per a instal·lar
ReadyLabel1=El programa d'instal·lació està preparat per a iniciar la instal·lació de [name] al vostre ordinador.
ReadyLabel2a=Premeu Instal·la per a continuar amb la instal·lació, o Enrere si voleu revisar o modificar les opcions d'instal·lació.
ReadyLabel2b=Premeu Instal·la per a continuar amb la instal·lació.
ReadyMemoUserInfo=Informació de l'usuari:
ReadyMemoDir=Carpeta de destinació:
ReadyMemoType=Tipus d'instal·lació:
ReadyMemoComponents=Components seleccionats:
ReadyMemoGroup=Carpeta del Menú Inici:
ReadyMemoTasks=Tasques addicionals:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Descarregant els fitxers addicionals...
ButtonStopDownload=&Atura la descàrrega
StopDownload=Esteu segur que voleu aturar la descàrrega?
ErrorDownloadAborted=Descàrrega cancel·lada
ErrorDownloadFailed=La descàrrega ha fallat: %1 %2
ErrorDownloadSizeFailed=La mesura de la descàrrega ha fallat: %1 %2
ErrorFileHash1=El hash del fitxer ha fallat: %1
ErrorFileHash2=El hash del fitxer és invàlid: s'esperava %1, s'ha trobat %2
ErrorProgress=Progrés invàlid: %1 de %2
ErrorFileSize=Mida del fitxer invàlida: s'esperava %1, s'ha trobat %2

; *** "Preparing to Install" wizard page
WizardPreparing=Preparant la instal·lació
PreparingDesc=Preparant la instal·lació de [name] al vostre ordinador.
PreviousInstallNotCompleted=La instal·lació o desinstal·lació anterior no s'ha dut a terme. Caldrà que reinicieu l'ordinador per a finalitzar aquesta instal·lació.%n%nDesprés de reiniciar l'ordinador, executeu aquest programa de nou per completar la instal·lació de [name].
CannotContinue=La instal·lació no pot continuar. Premeu Cancel·la per a sortir.
ApplicationsFound=Les següents aplicacions estan fent servir fitxers que necessiten ser actualitzats per la instal·lació. Es recomana que permeteu a la instal·lació tancar automàticament aquestes aplicacions.
ApplicationsFound2=Les següents aplicacions estan fent servir fitxers que necessiten ser actualitzats per la instal·lació. Es recomana que permeteu a la instal·lació tancar automàticament aquestes aplicacions. Després de completar la instal·lació s'intentarà reiniciar les aplicacions.
CloseApplications=&Tanca automàticament les aplicacions
DontCloseApplications=&No tanquis les aplicacions
ErrorCloseApplications=El programa d'instal·lació no ha pogut tancar automàticament totes les aplicacions. Es recomana que abans de continuar tanqueu totes les aplicacions que estan usant fitxers que han de ser actualitzats pel programa d'instal·lació.
PrepareToInstallNeedsRestart=El programa d'instal·lació ha de reiniciar l'ordinador. Després del reinici, executeu de nou l'instal·lador per tal de completar la instal·lació de [name].%n%nVoleu reiniciar-lo ara? 

; *** "Installing" wizard page
WizardInstalling=Instal·lant
InstallingLabel=Espereu mentre s'instal·la [name] al vostre ordinador.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Completant l'assistent d'instal·lació de [name]
FinishedLabelNoIcons=El programa ha finalitzat la instal·lació de [name] al vostre ordinador.
FinishedLabel=El programa ha finalitzat la instal·lació de [name] al vostre ordinador. L'aplicació pot ser iniciada seleccionant les icones instal·lades.
ClickFinish=Premeu Finalitza per a sortir de la instal·lació.
FinishedRestartLabel=Per a completar la instal·lació de [name] cal reiniciar l'ordinador. Voleu fer-ho ara?
FinishedRestartMessage=Per a completar la instal·lació de [name] cal reiniciar l'ordinador. Voleu fer-ho ara?
ShowReadmeCheck=Sí, vull visualitzar el fitxer LLEGIUME.TXT
YesRadio=&Sí, reiniciar l'ordinador ara
NoRadio=&No, reiniciaré l'ordinador més tard
; used for example as 'Run MyProg.exe'
RunEntryExec=Executa %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Visualitza %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=El programa d'instal·lació necessita el disc següent
SelectDiskLabel2=Introduiu el disc %1 i premeu Continua.%n%nSi els fitxers d'aquest disc es poden trobar en una carpeta diferent de la indicada tot seguit, introduïu-ne la ruta correcta o bé premeu Explora.
PathLabel=&Ruta:
FileNotInDir2=El fitxer "%1" no s'ha pogut trobar a "%2". Introduïu el disc correcte o trieu una altra carpeta.
SelectDirectoryLabel=Indiqueu on es troba el disc següent.

; *** Installation phase messages
SetupAborted=La instal·lació no s'ha completat.%n%n%Resoleu el problema i executeu de nou el programa d'instal·lació.
AbortRetryIgnoreSelectAction=Trieu acció
AbortRetryIgnoreRetry=&Torna-ho a intentar
AbortRetryIgnoreIgnore=&Ignora l'error i continua
AbortRetryIgnoreCancel=Cancel·la la instal·lació

; *** Installation status messages
StatusClosingApplications=Tancant aplicacions...
StatusCreateDirs=Creant carpetes...
StatusExtractFiles=Extraient fitxers...
StatusCreateIcons=Creant enllaços del programa...
StatusCreateIniEntries=Creant entrades al fitxer INI...
StatusCreateRegistryEntries=Creant entrades de registre...
StatusRegisterFiles=Registrant fitxers...
StatusSavingUninstall=Desant informació de desinstal·lació...
StatusRunProgram=Finalitzant la instal·lació...
StatusRestartingApplications=Reiniciant aplicacions...
StatusRollback=Desfent els canvis...

; *** Misc. errors
ErrorInternal2=Error intern: %1
ErrorFunctionFailedNoCode=%1 ha fallat
ErrorFunctionFailed=%1 ha fallat; codi %2
ErrorFunctionFailedWithMessage=%1 ha fallat; codi %2.%n%3
ErrorExecutingProgram=No es pot executar el fitxer:%n%1

; *** Registry errors
ErrorRegOpenKey=Error en obrir la clau de registre:%n%1\%2
ErrorRegCreateKey=Error en crear la clau de registre:%n%1\%2
ErrorRegWriteKey=Error en escriure a la clau de registre:%n%1\%2

; *** INI errors
ErrorIniEntry=Error en crear l'entrada INI al fitxer "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&Salta't aquest fitxer (no recomanat)
FileAbortRetryIgnoreIgnoreNotRecommended=&Ignora l'error i continua (no recomanat)
SourceIsCorrupted=El fitxer d'origen està corromput
SourceDoesntExist=El fitxer d'origen "%1" no existeix
ExistingFileReadOnly2=El fitxer existent no ha pogut ser substituït perquè està marcat com a només lectura.
ExistingFileReadOnlyRetry=&Lleveu-li l'atribut de només lectura i torneu-ho a intentar
ExistingFileReadOnlyKeepExisting=&Manté el fitxer existent
ErrorReadingExistingDest=S'ha produït un error en llegir el fitxer:
FileExistsSelectAction=Trieu acció
FileExists2=El fitxer ja existeix.
FileExistsOverwriteExisting=&Sobreescriu el fitxer existent
FileExistsKeepExisting=&Manté el fitxer existent
FileExistsOverwriteOrKeepAll=&Fes-ho també per als propers conflictes
ExistingFileNewerSelectAction=Trieu acció
ExistingFileNewer2=El fitxer existent és més nou que el que s'intenta instal·lar.
ExistingFileNewerOverwriteExisting=&Sobreescriu el fitxer existent
ExistingFileNewerKeepExisting=&Manté el fitxer existent (recomanat)
ExistingFileNewerOverwriteOrKeepAll=&Fes-ho també per als propers conflictes
ErrorChangingAttr=Hi ha hagut un error en canviar els atributs del fitxer:
ErrorCreatingTemp=Hi ha hagut un error en crear un fitxer a la carpeta de destinació:
ErrorReadingSource=Hi ha hagut un error en llegir el fitxer d'origen:
ErrorCopying=Hi ha hagut un error en copiar un fitxer:
ErrorReplacingExistingFile=Hi ha hagut un error en reemplaçar el fitxer existent:
ErrorRestartReplace=Ha fallat reemplaçar:
ErrorRenamingTemp=Hi ha hagut un error en reanomenar un fitxer a la carpeta de destinació:
ErrorRegisterServer=No s'ha pogut registrar el DLL/OCX: %1
ErrorRegSvr32Failed=Ha fallat RegSvr32 amb el codi de sortida %1
ErrorRegisterTypeLib=No s'ha pogut registrar la biblioteca de tipus: %1

; *** Uninstall display name markings
UninstallDisplayNameMark=%1 (%2)
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-bit
UninstallDisplayNameMark64Bit=64-bit
UninstallDisplayNameMarkAllUsers=Tots els usuaris
UninstallDisplayNameMarkCurrentUser=Usuari actual

; *** Post-installation errors
ErrorOpeningReadme=Hi ha hagut un error en obrir el fitxer LLEGIUME.TXT.
ErrorRestartingComputer=El programa d'instal·lació no ha pogut reiniciar l'ordinador. Cal que ho feu manualment.

; *** Uninstaller messages
UninstallNotFound=El fitxer "%1" no existeix. No es pot desinstal·lar.
UninstallOpenError=El fitxer "%1" no pot ser obert. No es pot desinstal·lar
UninstallUnsupportedVer=El fitxer de desinstal·lació "%1" està en un format no reconegut per aquesta versió del desinstal·lador. No es pot desinstal·lar
UninstallUnknownEntry=S'ha trobat una entrada desconeguda (%1) al fitxer de desinstal·lació.
ConfirmUninstall=Esteu segur de voler eliminar completament %1 i tots els seus components?
UninstallOnlyOnWin64=Aquest programa només pot ser desinstal·lat en Windows de 64 bits.
OnlyAdminCanUninstall=Aquest programa només pot ser desinstal·lat per un usuari amb privilegis d'administrador.
UninstallStatusLabel=Espereu mentre s'elimina %1 del vostre ordinador.
UninstalledAll=%1 ha estat desinstal·lat correctament del vostre ordinador.
UninstalledMost=Desinstal·lació de %1 completada.%n%nAlguns elements no s'han pogut eliminar. Poden ser eliminats manualment.
UninstalledAndNeedsRestart=Per completar la instal·lació de %1, cal reiniciar el vostre ordinador.%n%nVoleu fer-ho ara?
UninstallDataCorrupted=El fitxer "%1" està corromput. No es pot desinstal·lar.

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Eliminar fitxer compartit?
ConfirmDeleteSharedFile2=El sistema indica que el fitxer compartit següent ja no és emprat per cap altre programa. Voleu que la desinstal·lació elimini aquest fitxer?%n%nSi algun programa encara el fa servir i és eliminat, podria no funcionar correctament. Si no n'esteu segur, trieu No. Deixar el fitxer al sistema no farà cap mal.
SharedFileNameLabel=Nom del fitxer:
SharedFileLocationLabel=Localització:
WizardUninstalling=Estat de la desinstal·lació
StatusUninstalling=Desinstal·lant %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Instal·lant %1.
ShutdownBlockReasonUninstallingApp=Desinstal·lant %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 versió %2
AdditionalIcons=Icones addicionals:
CreateDesktopIcon=Crea una icona a l'&Escriptori
CreateQuickLaunchIcon=Crea una icona a la &Barra de tasques
ProgramOnTheWeb=%1 a Internet
UninstallProgram=Desinstal·la %1
LaunchProgram=Obre %1
AssocFileExtension=&Associa %1 amb l'extensió de fitxer %2
AssocingFileExtension=Associant %1 amb l'extensió de fitxer %2...
AutoStartProgramGroupDescription=Inici:
AutoStartProgram=Inicia automàticament %1
AddonHostProgramNotFound=%1 no ha pogut ser trobat a la carpeta seleccionada.%n%nVoleu continuar igualment?
