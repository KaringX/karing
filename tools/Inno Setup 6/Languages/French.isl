; *** Inno Setup version 6.1.0+ French messages ***
;
; To download user-contributed translations of this file, go to:
;   https://jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).
;
; Maintained by Pierre Yager (pierre@levosgien.net)
;
; Contributors : Frédéric Bonduelle, Francis Pallini, Lumina, Pascal Peyrot
;
; Changes :
; + Accents on uppercase letters
;      http://www.academie-francaise.fr/langue/questions.html#accentuation (lumina)
; + Typography quotes [see ISBN: 978-2-7433-0482-9]
;      http://fr.wikipedia.org/wiki/Guillemet (lumina)
; + Binary units (Kio, Mio) [IEC 80000-13:2008]
;      http://fr.wikipedia.org/wiki/Octet (lumina)
; + Reverted to standard units (Ko, Mo) to follow Windows Explorer Standard
;      http://blogs.msdn.com/b/oldnewthing/archive/2009/06/11/9725386.aspx
; + Use more standard verbs for click and retry
;     "click": "Clicker" instead of "Appuyer" 
;     "retry": "Recommencer" au lieu de "Réessayer"
; + Added new 6.0.0 messages
; + Added new 6.1.0 messages

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=Français
LanguageID=$040C
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
SetupAppTitle=Installation
SetupWindowTitle=Installation - %1
UninstallAppTitle=Désinstallation
UninstallAppFullTitle=Désinstallation - %1

; *** Misc. common
InformationTitle=Information
ConfirmTitle=Confirmation
ErrorTitle=Erreur

; *** SetupLdr messages
SetupLdrStartupMessage=Cet assistant va installer %1. Voulez-vous continuer ?
LdrCannotCreateTemp=Impossible de créer un fichier temporaire. Abandon de l'installation
LdrCannotExecTemp=Impossible d'exécuter un fichier depuis le dossier temporaire. Abandon de l'installation
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nErreur %2 : %3
SetupFileMissing=Le fichier %1 est absent du dossier d'installation. Veuillez corriger le problème ou vous procurer une nouvelle copie du programme.
SetupFileCorrupt=Les fichiers d'installation sont altérés. Veuillez vous procurer une nouvelle copie du programme.
SetupFileCorruptOrWrongVer=Les fichiers d'installation sont altérés ou ne sont pas compatibles avec cette version de l'assistant d'installation. Veuillez corriger le problème ou vous procurer une nouvelle copie du programme.
InvalidParameter=Un paramètre non valide a été passé à la ligne de commande :%n%n%1
SetupAlreadyRunning=L'assistant d'installation est déjà en cours d'exécution.
WindowsVersionNotSupported=Ce programme n'est pas prévu pour fonctionner avec la version de Windows utilisée sur votre ordinateur.
WindowsServicePackRequired=Ce programme a besoin de %1 Service Pack %2 ou d'une version plus récente.
NotOnThisPlatform=Ce programme ne fonctionne pas sous %1.
OnlyOnThisPlatform=Ce programme ne peut fonctionner que sous %1.
OnlyOnTheseArchitectures=Ce programme ne peut être installé que sur des versions de Windows qui supportent ces architectures : %n%n%1
WinVersionTooLowError=Ce programme requiert la version %2 ou supérieure de %1.
WinVersionTooHighError=Ce programme ne peut pas être installé sous %1 version %2 ou supérieure.
AdminPrivilegesRequired=Vous devez disposer des droits d'administration de cet ordinateur pour installer ce programme.
PowerUserPrivilegesRequired=Vous devez disposer des droits d'administration ou faire partie du groupe « Utilisateurs avec pouvoir » de cet ordinateur pour installer ce programme.
SetupAppRunningError=L'assistant d'installation a détecté que %1 est actuellement en cours d'exécution.%n%nVeuillez fermer toutes les instances de cette application puis cliquer sur OK pour continuer, ou bien cliquer sur Annuler pour abandonner l'installation.
UninstallAppRunningError=La procédure de désinstallation a détecté que %1 est actuellement en cours d'exécution.%n%nVeuillez fermer toutes les instances de cette application  puis cliquer sur OK pour continuer, ou bien cliquer sur Annuler pour abandonner la désinstallation.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Choix du Mode d'Installation
PrivilegesRequiredOverrideInstruction=Choisissez le mode d'installation
PrivilegesRequiredOverrideText1=%1 peut être installé pour tous les utilisateurs (nécessite des privilèges administrateur), ou seulement pour vous.
PrivilegesRequiredOverrideText2=%1 peut-être installé seulement pour vous, ou pour tous les utilisateurs (nécessite des privilèges administrateur).
PrivilegesRequiredOverrideAllUsers=Installer pour &tous les utilisateurs
PrivilegesRequiredOverrideAllUsersRecommended=Installer pour &tous les utilisateurs (recommandé)
PrivilegesRequiredOverrideCurrentUser=Installer seulement pour &moi
PrivilegesRequiredOverrideCurrentUserRecommended=Installer seulement pour &moi (recommandé)

; *** Misc. errors
ErrorCreatingDir=L'assistant d'installation n'a pas pu créer le dossier "%1"
ErrorTooManyFilesInDir=L'assistant d'installation n'a pas pu créer un fichier dans le dossier "%1" car celui-ci contient trop de fichiers

; *** Setup common messages
ExitSetupTitle=Quitter l'installation
ExitSetupMessage=L'installation n'est pas terminée. Si vous abandonnez maintenant, le programme ne sera pas installé.%n%nVous devrez relancer cet assistant pour finir l'installation.%n%nVoulez-vous quand même quitter l'assistant d'installation ?
AboutSetupMenuItem=À &propos...
AboutSetupTitle=À Propos de l'assistant d'installation
AboutSetupMessage=%1 version %2%n%3%n%nPage d'accueil de %1 :%n%4
AboutSetupNote=
TranslatorNote=Traduction française maintenue par Pierre Yager (pierre@levosgien.net)

; *** Buttons
ButtonBack=< &Précédent
ButtonNext=&Suivant >
ButtonInstall=&Installer
ButtonOK=OK
ButtonCancel=Annuler
ButtonYes=&Oui
ButtonYesToAll=Oui pour &tout
ButtonNo=&Non
ButtonNoToAll=N&on pour tout
ButtonFinish=&Terminer
ButtonBrowse=Pa&rcourir...
ButtonWizardBrowse=Pa&rcourir...
ButtonNewFolder=Nouveau &dossier

; *** "Select Language" dialog messages
SelectLanguageTitle=Langue de l'assistant d'installation
SelectLanguageLabel=Veuillez sélectionner la langue qui sera utilisée par l'assistant d'installation.

; *** Common wizard text
ClickNext=Cliquez sur Suivant pour continuer ou sur Annuler pour abandonner l'installation.
BeveledLabel=
BrowseDialogTitle=Parcourir les dossiers
BrowseDialogLabel=Veuillez choisir un dossier de destination, puis cliquez sur OK.
NewFolderName=Nouveau dossier

; *** "Welcome" wizard page
WelcomeLabel1=Bienvenue dans l'assistant d'installation de [name]
WelcomeLabel2=Cet assistant va vous guider dans l'installation de [name/ver] sur votre ordinateur.%n%nIl est recommandé de fermer toutes les applications actives avant de continuer.

; *** "Password" wizard page
WizardPassword=Mot de passe
PasswordLabel1=Cette installation est protégée par un mot de passe.
PasswordLabel3=Veuillez saisir le mot de passe (attention à la distinction entre majuscules et minuscules) puis cliquez sur Suivant pour continuer.
PasswordEditLabel=&Mot de passe :
IncorrectPassword=Le mot de passe saisi n'est pas valide. Veuillez essayer à nouveau.

; *** "License Agreement" wizard page
WizardLicense=Accord de licence
LicenseLabel=Les informations suivantes sont importantes. Veuillez les lire avant de continuer.
LicenseLabel3=Veuillez lire le contrat de licence suivant. Vous devez en accepter tous les termes avant de continuer l'installation.
LicenseAccepted=Je comprends et j'&accepte les termes du contrat de licence
LicenseNotAccepted=Je &refuse les termes du contrat de licence

; *** "Information" wizard pages
WizardInfoBefore=Information
InfoBeforeLabel=Les informations suivantes sont importantes. Veuillez les lire avant de continuer.
InfoBeforeClickLabel=Lorsque vous êtes prêt à continuer, cliquez sur Suivant.
WizardInfoAfter=Information
InfoAfterLabel=Les informations suivantes sont importantes. Veuillez les lire avant de continuer.
InfoAfterClickLabel=Lorsque vous êtes prêt à continuer, cliquez sur Suivant.

; *** "User Information" wizard page
WizardUserInfo=Informations sur l'Utilisateur
UserInfoDesc=Veuillez saisir les informations qui vous concernent.
UserInfoName=&Nom d'utilisateur :
UserInfoOrg=&Organisation :
UserInfoSerial=Numéro de &série :
UserInfoNameRequired=Vous devez au moins saisir un nom.

; *** "Select Destination Location" wizard page
WizardSelectDir=Dossier de destination
SelectDirDesc=Où [name] doit-il être installé ?
SelectDirLabel3=L'assistant va installer [name] dans le dossier suivant.
SelectDirBrowseLabel=Pour continuer, cliquez sur Suivant. Si vous souhaitez choisir un dossier différent, cliquez sur Parcourir.
DiskSpaceGBLabel=Le programme requiert au moins [gb] Go d'espace disque disponible.
DiskSpaceMBLabel=Le programme requiert au moins [mb] Mo d'espace disque disponible.
CannotInstallToNetworkDrive=L'assistant ne peut pas installer sur un disque réseau.
CannotInstallToUNCPath=L'assistant ne peut pas installer sur un chemin UNC.
InvalidPath=Vous devez saisir un chemin complet avec sa lettre de lecteur ; par exemple :%n%nC:\APP%n%nou un chemin réseau de la forme :%n%n\\serveur\partage
InvalidDrive=L'unité ou l'emplacement réseau que vous avez sélectionné n'existe pas ou n'est pas accessible. Veuillez choisir une autre destination.
DiskSpaceWarningTitle=Espace disponible insuffisant
DiskSpaceWarning=L'assistant a besoin d'au moins %1 Ko d'espace disponible pour effectuer l'installation, mais l'unité que vous avez sélectionnée ne dispose que de %2 Ko d'espace disponible.%n%nSouhaitez-vous continuer malgré tout ?
DirNameTooLong=Le nom ou le chemin du dossier est trop long.
InvalidDirName=Le nom du dossier est invalide.
BadDirName32=Le nom du dossier ne doit contenir aucun des caractères suivants :%n%n%1
DirExistsTitle=Dossier existant
DirExists=Le dossier :%n%n%1%n%nexiste déjà. Souhaitez-vous installer dans ce dossier malgré tout ?
DirDoesntExistTitle=Le dossier n'existe pas
DirDoesntExist=Le dossier %n%n%1%n%nn'existe pas. Souhaitez-vous que ce dossier soit créé ?

; *** "Select Components" wizard page
WizardSelectComponents=Composants à installer
SelectComponentsDesc=Quels composants de l'application souhaitez-vous installer ?
SelectComponentsLabel2=Sélectionnez les composants que vous désirez installer ; décochez les composants que vous ne désirez pas installer. Cliquez ensuite sur Suivant pour continuer l'installation.
FullInstallation=Installation complète
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Installation compacte
CustomInstallation=Installation personnalisée
NoUninstallWarningTitle=Composants existants
NoUninstallWarning=L'assistant d'installation a détecté que les composants suivants sont déjà installés sur votre système :%n%n%1%n%nDésélectionner ces composants ne les désinstallera pas pour autant.%n%nVoulez-vous continuer malgré tout ?
ComponentSize1=%1 Ko
ComponentSize2=%1 Mo
ComponentsDiskSpaceGBLabel=Les composants sélectionnés nécessitent au moins [gb] Go d'espace disponible.
ComponentsDiskSpaceMBLabel=Les composants sélectionnés nécessitent au moins [mb] Mo d'espace disponible.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Tâches supplémentaires
SelectTasksDesc=Quelles sont les tâches supplémentaires qui doivent être effectuées ?
SelectTasksLabel2=Sélectionnez les tâches supplémentaires que l'assistant d'installation doit effectuer pendant l'installation de [name], puis cliquez sur Suivant.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Sélection du dossier du menu Démarrer
SelectStartMenuFolderDesc=Où l'assistant d'installation doit-il placer les raccourcis du programme ?
SelectStartMenuFolderLabel3=L'assistant va créer les raccourcis du programme dans le dossier du menu Démarrer indiqué ci-dessous.
SelectStartMenuFolderBrowseLabel=Cliquez sur Suivant pour continuer. Cliquez sur Parcourir si vous souhaitez sélectionner un autre dossier du menu Démarrer.
MustEnterGroupName=Vous devez saisir un nom de dossier du menu Démarrer.
GroupNameTooLong=Le nom ou le chemin du dossier est trop long.
InvalidGroupName=Le nom du dossier n'est pas valide.
BadGroupName=Le nom du dossier ne doit contenir aucun des caractères suivants :%n%n%1
NoProgramGroupCheck2=Ne pas créer de &dossier dans le menu Démarrer

; *** "Ready to Install" wizard page
WizardReady=Prêt à installer
ReadyLabel1=L'assistant dispose à présent de toutes les informations pour installer [name] sur votre ordinateur.
ReadyLabel2a=Cliquez sur Installer pour procéder à l'installation ou sur Précédent pour revoir ou modifier une option d'installation.
ReadyLabel2b=Cliquez sur Installer pour procéder à l'installation.
ReadyMemoUserInfo=Informations sur l'utilisateur :
ReadyMemoDir=Dossier de destination :
ReadyMemoType=Type d'installation :
ReadyMemoComponents=Composants sélectionnés :
ReadyMemoGroup=Dossier du menu Démarrer :
ReadyMemoTasks=Tâches supplémentaires :

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Téléchargement de fichiers supplémentaires...
ButtonStopDownload=&Arrêter le téléchargement
StopDownload=Êtes-vous sûr de vouloir arrêter le téléchargement ?
ErrorDownloadAborted=Téléchargement annulé
ErrorDownloadFailed=Le téléchargement a échoué : %1 %2
ErrorDownloadSizeFailed=La récupération de la taille du fichier a échouée : %1 %2
ErrorFileHash1=Le calcul de l'empreinte du fichier a échoué : %1
ErrorFileHash2=Empreinte du fichier invalide : attendue %1, trouvée %2
ErrorProgress=Progression invalide : %1 sur %2
ErrorFileSize=Taille du fichier invalide : attendue %1, trouvée %2

; *** "Preparing to Install" wizard page
WizardPreparing=Préparation de l'installation
PreparingDesc=L'assistant d'installation prépare l'installation de [name] sur votre ordinateur.
PreviousInstallNotCompleted=L'installation ou la suppression d'un programme précédent n'est pas totalement achevée. Veuillez redémarrer votre ordinateur pour achever cette installation ou suppression.%n%nUne fois votre ordinateur redémarré, veuillez relancer cet assistant pour reprendre l'installation de [name].
CannotContinue=L'assistant ne peut pas continuer. Veuillez cliquer sur Annuler pour abandonner l'installation.
ApplicationsFound=Les applications suivantes utilisent des fichiers qui doivent être mis à jour par l'assistant. Il est recommandé d'autoriser l'assistant à fermer ces applications automatiquement.
ApplicationsFound2=Les applications suivantes utilisent des fichiers qui doivent être mis à jour par l'assistant. Il est recommandé d'autoriser l'assistant à fermer ces applications automatiquement. Une fois l'installation terminée, l'assistant essaiera de relancer ces applications.
CloseApplications=&Arrêter les applications automatiquement
DontCloseApplications=&Ne pas arrêter les applications
ErrorCloseApplications=L'assistant d'installation n'a pas pu arrêter toutes les applications automatiquement. Nous vous recommandons de fermer toutes les applications qui utilisent des fichiers devant être mis à jour par l'assistant d'installation avant de continuer.
PrepareToInstallNeedsRestart=L'assistant d'installation doit redémarrer votre ordinateur. Une fois votre ordinateur redémarré, veuillez relancer cet assistant d'installation pour terminer l'installation de [name].%n%nVoulez-vous redémarrer votre ordinateur maintenant ?

; *** "Installing" wizard page
WizardInstalling=Installation en cours
InstallingLabel=Veuillez patienter pendant que l'assistant installe [name] sur votre ordinateur.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Fin de l'installation de [name]
FinishedLabelNoIcons=L'assistant a terminé l'installation de [name] sur votre ordinateur.
FinishedLabel=L'assistant a terminé l'installation de [name] sur votre ordinateur. L'application peut être lancée à l'aide des icônes créées sur le Bureau par l'installation.
ClickFinish=Veuillez cliquer sur Terminer pour quitter l'assistant d'installation.
FinishedRestartLabel=L'assistant doit redémarrer votre ordinateur pour terminer l'installation de [name].%n%nVoulez-vous redémarrer maintenant ?
FinishedRestartMessage=L'assistant doit redémarrer votre ordinateur pour terminer l'installation de [name].%n%nVoulez-vous redémarrer maintenant ?
ShowReadmeCheck=Oui, je souhaite lire le fichier LISEZMOI
YesRadio=&Oui, redémarrer mon ordinateur maintenant
NoRadio=&Non, je préfère redémarrer mon ordinateur plus tard
; used for example as 'Run MyProg.exe'
RunEntryExec=Exécuter %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Voir %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=L'assistant a besoin du disque suivant
SelectDiskLabel2=Veuillez insérer le disque %1 et cliquer sur OK.%n%nSi les fichiers de ce disque se trouvent à un emplacement différent de celui indiqué ci-dessous, veuillez saisir le chemin correspondant ou cliquez sur Parcourir.
PathLabel=&Chemin :
FileNotInDir2=Le fichier "%1" ne peut pas être trouvé dans "%2". Veuillez insérer le bon disque ou sélectionner un autre dossier.
SelectDirectoryLabel=Veuillez indiquer l'emplacement du disque suivant.

; *** Installation phase messages
SetupAborted=L'installation n'est pas terminée.%n%nVeuillez corriger le problème et relancer l'installation.
AbortRetryIgnoreSelectAction=Choisissez une action
AbortRetryIgnoreRetry=&Recommencer
AbortRetryIgnoreIgnore=&Ignorer l'erreur et continuer
AbortRetryIgnoreCancel=Annuler l'installation

; *** Installation status messages
StatusClosingApplications=Ferme les applications...
StatusCreateDirs=Création des dossiers...
StatusExtractFiles=Extraction des fichiers...
StatusCreateIcons=Création des raccourcis...
StatusCreateIniEntries=Création des entrées du fichier INI...
StatusCreateRegistryEntries=Création des entrées de registre...
StatusRegisterFiles=Enregistrement des fichiers...
StatusSavingUninstall=Sauvegarde des informations de désinstallation...
StatusRunProgram=Finalisation de l'installation...
StatusRestartingApplications=Relance les applications...
StatusRollback=Annulation des modifications...

; *** Misc. errors
ErrorInternal2=Erreur interne : %1
ErrorFunctionFailedNoCode=%1 a échoué
ErrorFunctionFailed=%1 a échoué ; code %2
ErrorFunctionFailedWithMessage=%1 a échoué ; code %2.%n%3
ErrorExecutingProgram=Impossible d'exécuter le fichier :%n%1

; *** Registry errors
ErrorRegOpenKey=Erreur lors de l'ouverture de la clé de registre :%n%1\%2
ErrorRegCreateKey=Erreur lors de la création de la clé de registre :%n%1\%2
ErrorRegWriteKey=Erreur lors de l'écriture de la clé de registre :%n%1\%2

; *** INI errors
ErrorIniEntry=Erreur d'écriture d'une entrée dans le fichier INI "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&Ignorer ce fichier (non recommandé)
FileAbortRetryIgnoreIgnoreNotRecommended=&Ignorer l'erreur et continuer (non recommandé)
SourceIsCorrupted=Le fichier source est altéré
SourceDoesntExist=Le fichier source "%1" n'existe pas
ExistingFileReadOnly2=Le fichier existant ne peut pas être remplacé parce qu'il est protégé par l'attribut lecture seule.
ExistingFileReadOnlyRetry=&Supprimer l'attribut lecture seule et réessayer
ExistingFileReadOnlyKeepExisting=&Conserver le fichier existant
ErrorReadingExistingDest=Une erreur s'est produite lors de la tentative de lecture du fichier existant :
FileExistsSelectAction=Choisissez une action
FileExists2=Le fichier existe déjà.
FileExistsOverwriteExisting=&Ecraser le fichier existant
FileExistsKeepExisting=&Conserver le fichier existant
FileExistsOverwriteOrKeepAll=&Faire ceci pour les conflits à venir
ExistingFileNewerSelectAction=Choisissez une action
ExistingFileNewer2=Le fichier existant est plus récent que celui que l'assistant d'installation est en train d'installer.
ExistingFileNewerOverwriteExisting=&Ecraser le fichier existant
ExistingFileNewerKeepExisting=&Conserver le fichier existant (recommandé)
ExistingFileNewerOverwriteOrKeepAll=&Faire ceci pour les conflits à venir
ErrorChangingAttr=Une erreur est survenue en essayant de modifier les attributs du fichier existant :
ErrorCreatingTemp=Une erreur est survenue en essayant de créer un fichier dans le dossier de destination :
ErrorReadingSource=Une erreur est survenue lors de la lecture du fichier source :
ErrorCopying=Une erreur est survenue lors de la copie d'un fichier :
ErrorReplacingExistingFile=Une erreur est survenue lors du remplacement d'un fichier existant :
ErrorRestartReplace=Le marquage d'un fichier pour remplacement au redémarrage de l'ordinateur a échoué :
ErrorRenamingTemp=Une erreur est survenue en essayant de renommer un fichier dans le dossier de destination :
ErrorRegisterServer=Impossible d'enregistrer la bibliothèque DLL/OCX : %1
ErrorRegSvr32Failed=RegSvr32 a échoué et a retourné le code d'erreur %1
ErrorRegisterTypeLib=Impossible d'enregistrer la bibliothèque de type : %1

; *** Nom d'affichage pour la désinstallaton
; par exemple 'Mon Programme (32-bit)'
UninstallDisplayNameMark=%1 (%2)
; ou par exemple 'Mon Programme (32-bit, Tous les utilisateurs)'
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-bit
UninstallDisplayNameMark64Bit=64-bit
UninstallDisplayNameMarkAllUsers=Tous les utilisateurs
UninstallDisplayNameMarkCurrentUser=Utilisateur courant

; *** Post-installation errors
ErrorOpeningReadme=Une erreur est survenue à l'ouverture du fichier LISEZMOI.
ErrorRestartingComputer=L'installation n'a pas pu redémarrer l'ordinateur. Merci de bien vouloir le faire vous-même.

; *** Uninstaller messages
UninstallNotFound=Le fichier "%1" n'existe pas. Impossible de désinstaller.
UninstallOpenError=Le fichier "%1" n'a pas pu être ouvert. Impossible de désinstaller
UninstallUnsupportedVer=Le format du fichier journal de désinstallation "%1" n'est pas reconnu par cette version de la procédure de désinstallation. Impossible de désinstaller
UninstallUnknownEntry=Une entrée inconnue (%1) a été rencontrée dans le fichier journal de désinstallation
ConfirmUninstall=Voulez-vous vraiment désinstaller complètement %1 ainsi que tous ses composants ?
UninstallOnlyOnWin64=La désinstallation de ce programme ne fonctionne qu'avec une version 64 bits de Windows.
OnlyAdminCanUninstall=Ce programme ne peut être désinstallé que par un utilisateur disposant des droits d'administration.
UninstallStatusLabel=Veuillez patienter pendant que %1 est retiré de votre ordinateur.
UninstalledAll=%1 a été correctement désinstallé de cet ordinateur.
UninstalledMost=La désinstallation de %1 est terminée.%n%nCertains éléments n'ont pas pu être supprimés automatiquement. Vous pouvez les supprimer manuellement.
UninstalledAndNeedsRestart=Vous devez redémarrer l'ordinateur pour terminer la désinstallation de %1.%n%nVoulez-vous redémarrer maintenant ?
UninstallDataCorrupted=Le ficher "%1" est altéré. Impossible de désinstaller

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Supprimer les fichiers partagés ?
ConfirmDeleteSharedFile2=Le système indique que le fichier partagé suivant n'est plus utilisé par aucun programme. Souhaitez-vous que la désinstallation supprime ce fichier partagé ?%n%nSi des programmes utilisent encore ce fichier et qu'il est supprimé, ces programmes ne pourront plus fonctionner correctement. Si vous n'êtes pas sûr, choisissez Non. Laisser ce fichier dans votre système ne posera pas de problème.
SharedFileNameLabel=Nom du fichier :
SharedFileLocationLabel=Emplacement :
WizardUninstalling=État de la désinstallation
StatusUninstalling=Désinstallation de %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Installe %1.
ShutdownBlockReasonUninstallingApp=Désinstalle %1.

; Les messages personnalisés suivants ne sont pas utilisé par l'installation
; elle-même, mais si vous les utilisez dans vos scripts, vous devez les
; traduire

[CustomMessages]

NameAndVersion=%1 version %2
AdditionalIcons=Icônes supplémentaires :
CreateDesktopIcon=Créer une icône sur le &Bureau
CreateQuickLaunchIcon=Créer une icône dans la barre de &Lancement rapide
ProgramOnTheWeb=Page d'accueil de %1
UninstallProgram=Désinstaller %1
LaunchProgram=Exécuter %1
AssocFileExtension=&Associer %1 avec l'extension de fichier %2
AssocingFileExtension=Associe %1 avec l'extension de fichier %2...
AutoStartProgramGroupDescription=Démarrage :
AutoStartProgram=Démarrer automatiquement %1
AddonHostProgramNotFound=%1 n'a pas été trouvé dans le dossier que vous avez choisi.%n%nVoulez-vous continuer malgré tout ?
