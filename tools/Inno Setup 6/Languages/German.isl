; ******************************************************
; ***                                                ***
; *** Inno Setup version 6.1.0+ German messages      ***
; ***                                                ***
; *** Changes 6.0.0+ Author:                         ***
; ***                                                ***
; ***   Jens Brand (jens.brand@wolf-software.de)     ***
; ***                                                ***
; *** Original Authors:                              ***
; ***                                                ***
; ***   Peter Stadler (Peter.Stadler@univie.ac.at)   ***
; ***   Michael Reitz (innosetup@assimilate.de)      ***
; ***                                                ***
; *** Contributors:                                  ***
; ***                                                ***
; ***   Roland Ruder (info@rr4u.de)                  ***
; ***   Hans Sperber (Hans.Sperber@de.bosch.com)     ***
; ***   LaughingMan (puma.d@web.de)                  ***
; ***                                                ***
; ******************************************************
;
; Diese Übersetzung hält sich an die neue deutsche Rechtschreibung.

; To download user-contributed translations of this file, go to:
; https://jrsoftware.org/files/istrans/

; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=Deutsch
LanguageID=$0407
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
SetupAppTitle=Setup
SetupWindowTitle=Setup - %1
UninstallAppTitle=Entfernen
UninstallAppFullTitle=%1 entfernen

; *** Misc. common
InformationTitle=Information
ConfirmTitle=Bestätigen
ErrorTitle=Fehler

; *** SetupLdr messages
SetupLdrStartupMessage=%1 wird jetzt installiert. Möchten Sie fortfahren?
LdrCannotCreateTemp=Es konnte keine temporäre Datei erstellt werden. Das Setup wurde abgebrochen
LdrCannotExecTemp=Die Datei konnte nicht im temporären Ordner ausgeführt werden. Das Setup wurde abgebrochen
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nFehler %2: %3
SetupFileMissing=Die Datei %1 fehlt im Installationsordner. Bitte beheben Sie das Problem oder besorgen Sie sich eine neue Kopie des Programms.
SetupFileCorrupt=Die Setup-Dateien sind beschädigt. Besorgen Sie sich bitte eine neue Kopie des Programms.
SetupFileCorruptOrWrongVer=Die Setup-Dateien sind beschädigt oder inkompatibel zu dieser Version des Setups. Bitte beheben Sie das Problem oder besorgen Sie sich eine neue Kopie des Programms.
InvalidParameter=Ein ungültiger Parameter wurde auf der Kommandozeile übergeben:%n%n%1
SetupAlreadyRunning=Setup läuft bereits.
WindowsVersionNotSupported=Dieses Programm unterstützt die auf Ihrem Computer installierte Windows-Version nicht.
WindowsServicePackRequired=Dieses Programm benötigt %1 Service Pack %2 oder höher.
NotOnThisPlatform=Dieses Programm kann nicht unter %1 ausgeführt werden.
OnlyOnThisPlatform=Dieses Programm muss unter %1 ausgeführt werden.
OnlyOnTheseArchitectures=Dieses Programm kann nur auf Windows-Versionen installiert werden, die folgende Prozessor-Architekturen unterstützen:%n%n%1
WinVersionTooLowError=Dieses Programm benötigt %1 Version %2 oder höher.
WinVersionTooHighError=Dieses Programm kann nicht unter %1 Version %2 oder höher installiert werden.
AdminPrivilegesRequired=Sie müssen als Administrator angemeldet sein, um dieses Programm installieren zu können.
PowerUserPrivilegesRequired=Sie müssen als Administrator oder als Mitglied der Hauptbenutzer-Gruppe angemeldet sein, um dieses Programm installieren zu können.
SetupAppRunningError=Das Setup hat entdeckt, dass %1 zurzeit ausgeführt wird.%n%nBitte schließen Sie jetzt alle laufenden Instanzen und klicken Sie auf "OK", um fortzufahren, oder auf "Abbrechen", um zu beenden.
UninstallAppRunningError=Die Deinstallation hat entdeckt, dass %1 zurzeit ausgeführt wird.%n%nBitte schließen Sie jetzt alle laufenden Instanzen und klicken Sie auf "OK", um fortzufahren, oder auf "Abbrechen", um zu beenden.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Installationsmodus auswählen
PrivilegesRequiredOverrideInstruction=Bitte wählen Sie den Installationsmodus
PrivilegesRequiredOverrideText1=%1 kann für alle Benutzer (erfordert Administrationsrechte) oder nur für Sie installiert werden.
PrivilegesRequiredOverrideText2=%1 kann nur für Sie oder für alle Benutzer (erfordert Administrationsrechte) installiert werden.
PrivilegesRequiredOverrideAllUsers=Installation für &alle Benutzer
PrivilegesRequiredOverrideAllUsersRecommended=Installation für &alle Benutzer (empfohlen)
PrivilegesRequiredOverrideCurrentUser=Installation nur für &Sie
PrivilegesRequiredOverrideCurrentUserRecommended=Installation nur für &Sie (empfohlen)

; *** Misc. errors
ErrorCreatingDir=Das Setup konnte den Ordner "%1" nicht erstellen.
ErrorTooManyFilesInDir=Das Setup konnte eine Datei im Ordner "%1" nicht erstellen, weil er zu viele Dateien enthält.

; *** Setup common messages
ExitSetupTitle=Setup verlassen
ExitSetupMessage=Das Setup ist noch nicht abgeschlossen. Wenn Sie jetzt beenden, wird das Programm nicht installiert.%n%nSie können das Setup zu einem späteren Zeitpunkt nochmals ausführen, um die Installation zu vervollständigen.%n%nSetup verlassen?
AboutSetupMenuItem=&Über das Setup ...
AboutSetupTitle=Über das Setup
AboutSetupMessage=%1 Version %2%n%3%n%n%1 Webseite:%n%4
AboutSetupNote=
TranslatorNote=German translation maintained by Jens Brand (jens.brand@wolf-software.de)

; *** Buttons
ButtonBack=< &Zurück
ButtonNext=&Weiter >
ButtonInstall=&Installieren
ButtonOK=OK
ButtonCancel=Abbrechen
ButtonYes=&Ja
ButtonYesToAll=J&a für Alle
ButtonNo=&Nein
ButtonNoToAll=N&ein für Alle
ButtonFinish=&Fertigstellen
ButtonBrowse=&Durchsuchen ...
ButtonWizardBrowse=Du&rchsuchen ...
ButtonNewFolder=&Neuen Ordner erstellen

; *** "Select Language" dialog messages
SelectLanguageTitle=Setup-Sprache auswählen
SelectLanguageLabel=Wählen Sie die Sprache aus, die während der Installation benutzt werden soll:

; *** Common wizard text
ClickNext="Weiter" zum Fortfahren, "Abbrechen" zum Verlassen.
BeveledLabel=
BrowseDialogTitle=Ordner suchen
BrowseDialogLabel=Wählen Sie einen Ordner aus und klicken Sie danach auf "OK".
NewFolderName=Neuer Ordner

; *** "Welcome" wizard page
WelcomeLabel1=Willkommen zum [name] Setup-Assistenten
WelcomeLabel2=Dieser Assistent wird jetzt [name/ver] auf Ihrem Computer installieren.%n%nSie sollten alle anderen Anwendungen beenden, bevor Sie mit dem Setup fortfahren.

; *** "Password" wizard page
WizardPassword=Passwort
PasswordLabel1=Diese Installation wird durch ein Passwort geschützt.
PasswordLabel3=Bitte geben Sie das Passwort ein und klicken Sie danach auf "Weiter". Achten Sie auf korrekte Groß-/Kleinschreibung.
PasswordEditLabel=&Passwort:
IncorrectPassword=Das eingegebene Passwort ist nicht korrekt. Bitte versuchen Sie es noch einmal.

; *** "License Agreement" wizard page
WizardLicense=Lizenzvereinbarung
LicenseLabel=Lesen Sie bitte folgende wichtige Informationen, bevor Sie fortfahren.
LicenseLabel3=Lesen Sie bitte die folgenden Lizenzvereinbarungen. Benutzen Sie bei Bedarf die Bildlaufleiste oder drücken Sie die "Bild Ab"-Taste.
LicenseAccepted=Ich &akzeptiere die Vereinbarung
LicenseNotAccepted=Ich &lehne die Vereinbarung ab

; *** "Information" wizard pages
WizardInfoBefore=Information
InfoBeforeLabel=Lesen Sie bitte folgende wichtige Informationen, bevor Sie fortfahren.
InfoBeforeClickLabel=Klicken Sie auf "Weiter", sobald Sie bereit sind, mit dem Setup fortzufahren.
WizardInfoAfter=Information
InfoAfterLabel=Lesen Sie bitte folgende wichtige Informationen, bevor Sie fortfahren.
InfoAfterClickLabel=Klicken Sie auf "Weiter", sobald Sie bereit sind, mit dem Setup fortzufahren.

; *** "User Information" wizard page
WizardUserInfo=Benutzerinformationen
UserInfoDesc=Bitte tragen Sie Ihre Daten ein.
UserInfoName=&Name:
UserInfoOrg=&Organisation:
UserInfoSerial=&Seriennummer:
UserInfoNameRequired=Sie müssen einen Namen eintragen.

; *** "Select Destination Location" wizard page
WizardSelectDir=Ziel-Ordner wählen
SelectDirDesc=Wohin soll [name] installiert werden?
SelectDirLabel3=Das Setup wird [name] in den folgenden Ordner installieren.
SelectDirBrowseLabel=Klicken Sie auf "Weiter", um fortzufahren. Klicken Sie auf "Durchsuchen", falls Sie einen anderen Ordner auswählen möchten.
DiskSpaceGBLabel=Mindestens [gb] GB freier Speicherplatz ist erforderlich.
DiskSpaceMBLabel=Mindestens [mb] MB freier Speicherplatz ist erforderlich.
CannotInstallToNetworkDrive=Das Setup kann nicht in einen Netzwerk-Pfad installieren.
CannotInstallToUNCPath=Das Setup kann nicht in einen UNC-Pfad installieren. Wenn Sie auf ein Netzlaufwerk installieren möchten, müssen Sie dem Netzwerkpfad einen Laufwerksbuchstaben zuordnen.
InvalidPath=Sie müssen einen vollständigen Pfad mit einem Laufwerksbuchstaben angeben, z. B.:%n%nC:\Beispiel%n%noder einen UNC-Pfad in der Form:%n%n\\Server\Freigabe
InvalidDrive=Das angegebene Laufwerk bzw. der UNC-Pfad existiert nicht oder es kann nicht darauf zugegriffen werden. Wählen Sie bitte einen anderen Ordner.
DiskSpaceWarningTitle=Nicht genug freier Speicherplatz
DiskSpaceWarning=Das Setup benötigt mindestens %1 KB freien Speicherplatz zum Installieren, aber auf dem ausgewählten Laufwerk sind nur %2 KB verfügbar.%n%nMöchten Sie trotzdem fortfahren?
DirNameTooLong=Der Ordnername/Pfad ist zu lang.
InvalidDirName=Der Ordnername ist nicht gültig.
BadDirName32=Ordnernamen dürfen keine der folgenden Zeichen enthalten:%n%n%1
DirExistsTitle=Ordner existiert bereits
DirExists=Der Ordner:%n%n%1%n%n existiert bereits. Möchten Sie trotzdem in diesen Ordner installieren?
DirDoesntExistTitle=Ordner ist nicht vorhanden
DirDoesntExist=Der Ordner:%n%n%1%n%nist nicht vorhanden. Soll der Ordner erstellt werden?

; *** "Select Components" wizard page
WizardSelectComponents=Komponenten auswählen
SelectComponentsDesc=Welche Komponenten sollen installiert werden?
SelectComponentsLabel2=Wählen Sie die Komponenten aus, die Sie installieren möchten. Klicken Sie auf "Weiter", wenn Sie bereit sind, fortzufahren.
FullInstallation=Vollständige Installation
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Kompakte Installation
CustomInstallation=Benutzerdefinierte Installation
NoUninstallWarningTitle=Komponenten vorhanden
NoUninstallWarning=Das Setup hat festgestellt, dass die folgenden Komponenten bereits auf Ihrem Computer installiert sind:%n%n%1%n%nDiese nicht mehr ausgewählten Komponenten werden nicht vom Computer entfernt.%n%nMöchten Sie trotzdem fortfahren?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceGBLabel=Die aktuelle Auswahl erfordert mindestens [gb] GB Speicherplatz.
ComponentsDiskSpaceMBLabel=Die aktuelle Auswahl erfordert mindestens [mb] MB Speicherplatz.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Zusätzliche Aufgaben auswählen
SelectTasksDesc=Welche zusätzlichen Aufgaben sollen ausgeführt werden?
SelectTasksLabel2=Wählen Sie die zusätzlichen Aufgaben aus, die das Setup während der Installation von [name] ausführen soll, und klicken Sie danach auf "Weiter".

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Startmenü-Ordner auswählen
SelectStartMenuFolderDesc=Wo soll das Setup die Programm-Verknüpfungen erstellen?
SelectStartMenuFolderLabel3=Das Setup wird die Programm-Verknüpfungen im folgenden Startmenü-Ordner erstellen.
SelectStartMenuFolderBrowseLabel=Klicken Sie auf "Weiter", um fortzufahren. Klicken Sie auf "Durchsuchen", falls Sie einen anderen Ordner auswählen möchten.
MustEnterGroupName=Sie müssen einen Ordnernamen eingeben.
GroupNameTooLong=Der Ordnername/Pfad ist zu lang.
InvalidGroupName=Der Ordnername ist nicht gültig.
BadGroupName=Der Ordnername darf keine der folgenden Zeichen enthalten:%n%n%1
NoProgramGroupCheck2=&Keinen Ordner im Startmenü erstellen

; *** "Ready to Install" wizard page
WizardReady=Bereit zur Installation.
ReadyLabel1=Das Setup ist jetzt bereit, [name] auf Ihrem Computer zu installieren.
ReadyLabel2a=Klicken Sie auf "Installieren", um mit der Installation zu beginnen, oder auf "Zurück", um Ihre Einstellungen zu überprüfen oder zu ändern.
ReadyLabel2b=Klicken Sie auf "Installieren", um mit der Installation zu beginnen.
ReadyMemoUserInfo=Benutzerinformationen:
ReadyMemoDir=Ziel-Ordner:
ReadyMemoType=Setup-Typ:
ReadyMemoComponents=Ausgewählte Komponenten:
ReadyMemoGroup=Startmenü-Ordner:
ReadyMemoTasks=Zusätzliche Aufgaben:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Lade zusätzliche Dateien herunter...
ButtonStopDownload=Download &abbrechen
StopDownload=Sind Sie sicher, dass Sie den Download abbrechen wollen?
ErrorDownloadAborted=Download abgebrochen
ErrorDownloadFailed=Download fehlgeschlagen: %1 %2
ErrorDownloadSizeFailed=Fehler beim Ermitteln der Größe: %1 %2
ErrorFileHash1=Fehler beim Ermitteln der Datei-Prüfsumme: %1
ErrorFileHash2=Ungültige Datei-Prüfsumme: erwartet %1, gefunden %2
ErrorProgress=Ungültiger Fortschritt: %1 von %2
ErrorFileSize=Ungültige Dateigröße: erwartet %1, gefunden %2

; *** "Preparing to Install" wizard page
WizardPreparing=Vorbereitung der Installation
PreparingDesc=Das Setup bereitet die Installation von [name] auf diesem Computer vor.
PreviousInstallNotCompleted=Eine vorherige Installation/Deinstallation eines Programms wurde nicht abgeschlossen. Der Computer muss neu gestartet werden, um die Installation/Deinstallation zu beenden.%n%nStarten Sie das Setup nach dem Neustart Ihres Computers erneut, um die Installation von [name] durchzuführen.
CannotContinue=Das Setup kann nicht fortfahren. Bitte klicken Sie auf "Abbrechen" zum Verlassen.
ApplicationsFound=Die folgenden Anwendungen benutzen Dateien, die aktualisiert werden müssen. Es wird empfohlen, Setup zu erlauben, diese Anwendungen zu schließen.
ApplicationsFound2=Die folgenden Anwendungen benutzen Dateien, die aktualisiert werden müssen. Es wird empfohlen, Setup zu erlauben, diese Anwendungen zu schließen. Nachdem die Installation fertiggestellt wurde, versucht Setup, diese Anwendungen wieder zu starten.
CloseApplications=&Schließe die Anwendungen automatisch
DontCloseApplications=Schließe die A&nwendungen nicht
ErrorCloseApplications=Das Setup konnte nicht alle Anwendungen automatisch schließen. Es wird empfohlen, alle Anwendungen zu schließen, die Dateien benutzen, die vom Setup vor einer Fortsetzung aktualisiert werden müssen.  
PrepareToInstallNeedsRestart=Das Setup muss Ihren Computer neu starten. Führen Sie nach dem Neustart Setup erneut aus, um die Installation von [name] abzuschließen.%n%nWollen Sie jetzt neu starten? 

; *** "Installing" wizard page
WizardInstalling=Installiere ...
InstallingLabel=Warten Sie bitte, während [name] auf Ihrem Computer installiert wird.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Beenden des [name] Setup-Assistenten
FinishedLabelNoIcons=Das Setup hat die Installation von [name] auf Ihrem Computer abgeschlossen.
FinishedLabel=Das Setup hat die Installation von [name] auf Ihrem Computer abgeschlossen. Die Anwendung kann über die installierten Programm-Verknüpfungen gestartet werden.
ClickFinish=Klicken Sie auf "Fertigstellen", um das Setup zu beenden.
FinishedRestartLabel=Um die Installation von [name] abzuschließen, muss das Setup Ihren Computer neu starten. Möchten Sie jetzt neu starten?
FinishedRestartMessage=Um die Installation von [name] abzuschließen, muss das Setup Ihren Computer neu starten.%n%nMöchten Sie jetzt neu starten?
ShowReadmeCheck=Ja, ich möchte die LIESMICH-Datei sehen
YesRadio=&Ja, Computer jetzt neu starten
NoRadio=&Nein, ich werde den Computer später neu starten
; used for example as 'Run MyProg.exe'
RunEntryExec=%1 starten
; used for example as 'View Readme.txt'
RunEntryShellExec=%1 anzeigen

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Nächsten Datenträger einlegen
SelectDiskLabel2=Legen Sie bitte Datenträger %1 ein und klicken Sie auf "OK".%n%nWenn sich die Dateien von diesem Datenträger in einem anderen als dem angezeigten Ordner befinden, dann geben Sie bitte den korrekten Pfad ein oder klicken auf "Durchsuchen".
PathLabel=&Pfad:
FileNotInDir2=Die Datei "%1" befindet sich nicht in "%2". Bitte Ordner ändern oder richtigen Datenträger einlegen.
SelectDirectoryLabel=Geben Sie bitte an, wo der nächste Datenträger eingelegt wird.

; *** Installation phase messages
SetupAborted=Das Setup konnte nicht abgeschlossen werden.%n%nBeheben Sie bitte das Problem und starten Sie das Setup erneut.
AbortRetryIgnoreSelectAction=Bitte auswählen
AbortRetryIgnoreRetry=&Nochmals versuchen
AbortRetryIgnoreIgnore=&Den Fehler ignorieren und fortfahren
AbortRetryIgnoreCancel=Installation abbrechen

; *** Installation status messages
StatusClosingApplications=Anwendungen werden geschlossen ...
StatusCreateDirs=Ordner werden erstellt ...
StatusExtractFiles=Dateien werden entpackt ...
StatusCreateIcons=Verknüpfungen werden erstellt ...
StatusCreateIniEntries=INI-Einträge werden erstellt ...
StatusCreateRegistryEntries=Registry-Einträge werden erstellt ...
StatusRegisterFiles=Dateien werden registriert ...
StatusSavingUninstall=Deinstallationsinformationen werden gespeichert ...
StatusRunProgram=Installation wird beendet ...
StatusRestartingApplications=Neustart der Anwendungen ...
StatusRollback=Änderungen werden rückgängig gemacht ...

; *** Misc. errors
ErrorInternal2=Interner Fehler: %1
ErrorFunctionFailedNoCode=%1 schlug fehl
ErrorFunctionFailed=%1 schlug fehl; Code %2
ErrorFunctionFailedWithMessage=%1 schlug fehl; Code %2.%n%3
ErrorExecutingProgram=Datei kann nicht ausgeführt werden:%n%1

; *** Registry errors
ErrorRegOpenKey=Registry-Schlüssel konnte nicht geöffnet werden:%n%1\%2
ErrorRegCreateKey=Registry-Schlüssel konnte nicht erstellt werden:%n%1\%2
ErrorRegWriteKey=Fehler beim Schreiben des Registry-Schlüssels:%n%1\%2

; *** INI errors
ErrorIniEntry=Fehler beim Erstellen eines INI-Eintrages in der Datei "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=Diese Datei &überspringen (nicht empfohlen)
FileAbortRetryIgnoreIgnoreNotRecommended=Den Fehler &ignorieren und fortfahren (nicht empfohlen)
SourceIsCorrupted=Die Quelldatei ist beschädigt
SourceDoesntExist=Die Quelldatei "%1" existiert nicht
ExistingFileReadOnly2=Die vorhandene Datei kann nicht ersetzt werden, da sie schreibgeschützt ist.
ExistingFileReadOnlyRetry=&Den Schreibschutz entfernen und noch einmal versuchen
ExistingFileReadOnlyKeepExisting=Die &vorhandene Datei behalten
ErrorReadingExistingDest=Lesefehler in Datei:
FileExistsSelectAction=Aktion auswählen
FileExists2=Die Datei ist bereits vorhanden.
FileExistsOverwriteExisting=Vorhandene Datei &überschreiben
FileExistsKeepExisting=Vorhandene Datei &behalten
FileExistsOverwriteOrKeepAll=&Dies auch für die nächsten Konflikte ausführen
ExistingFileNewerSelectAction=Aktion auswählen
ExistingFileNewer2=Die vorhandene Datei ist neuer als die Datei, die installiert werden soll.
ExistingFileNewerOverwriteExisting=Vorhandene Datei &überschreiben
ExistingFileNewerKeepExisting=Vorhandene Datei &behalten (empfohlen)
ExistingFileNewerOverwriteOrKeepAll=&Dies auch für die nächsten Konflikte ausführen
ErrorChangingAttr=Fehler beim Ändern der Datei-Attribute:
ErrorCreatingTemp=Fehler beim Erstellen einer Datei im Ziel-Ordner:
ErrorReadingSource=Fehler beim Lesen der Quelldatei:
ErrorCopying=Fehler beim Kopieren einer Datei:
ErrorReplacingExistingFile=Fehler beim Ersetzen einer vorhandenen Datei:
ErrorRestartReplace="Ersetzen nach Neustart" fehlgeschlagen:
ErrorRenamingTemp=Fehler beim Umbenennen einer Datei im Ziel-Ordner:
ErrorRegisterServer=DLL/OCX konnte nicht registriert werden: %1
ErrorRegSvr32Failed=RegSvr32-Aufruf scheiterte mit Exit-Code %1
ErrorRegisterTypeLib=Typen-Bibliothek konnte nicht registriert werden: %1

; *** Uninstall display name markings
; used for example as 'Mein Programm (32 Bit)'
UninstallDisplayNameMark=%1 (%2)
; used for example as 'Mein Programm (32 Bit, Alle Benutzer)'
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32 Bit
UninstallDisplayNameMark64Bit=64 Bit
UninstallDisplayNameMarkAllUsers=Alle Benutzer
UninstallDisplayNameMarkCurrentUser=Aktueller Benutzer

; *** Post-installation errors
ErrorOpeningReadme=Fehler beim Öffnen der LIESMICH-Datei.
ErrorRestartingComputer=Das Setup konnte den Computer nicht neu starten. Bitte führen Sie den Neustart manuell durch.

; *** Uninstaller messages
UninstallNotFound=Die Datei "%1" existiert nicht. Entfernen der Anwendung fehlgeschlagen.
UninstallOpenError=Die Datei "%1" konnte nicht geöffnet werden. Entfernen der Anwendung fehlgeschlagen.
UninstallUnsupportedVer=Das Format der Deinstallationsdatei "%1" konnte nicht erkannt werden. Entfernen der Anwendung fehlgeschlagen.
UninstallUnknownEntry=In der Deinstallationsdatei wurde ein unbekannter Eintrag (%1) gefunden.
ConfirmUninstall=Sind Sie sicher, dass Sie %1 und alle zugehörigen Komponenten entfernen möchten?
UninstallOnlyOnWin64=Diese Installation kann nur unter 64-Bit-Windows-Versionen entfernt werden.
OnlyAdminCanUninstall=Diese Installation kann nur von einem Benutzer mit Administrator-Rechten entfernt werden.
UninstallStatusLabel=Warten Sie bitte, während %1 von Ihrem Computer entfernt wird.
UninstalledAll=%1 wurde erfolgreich von Ihrem Computer entfernt.
UninstalledMost=Entfernen von %1 beendet.%n%nEinige Komponenten konnten nicht entfernt werden. Diese können von Ihnen manuell gelöscht werden.
UninstalledAndNeedsRestart=Um die Deinstallation von %1 abzuschließen, muss Ihr Computer neu gestartet werden.%n%nMöchten Sie jetzt neu starten?
UninstallDataCorrupted="%1"-Datei ist beschädigt. Entfernen der Anwendung fehlgeschlagen.

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Gemeinsame Datei entfernen?
ConfirmDeleteSharedFile2=Das System zeigt an, dass die folgende gemeinsame Datei von keinem anderen Programm mehr benutzt wird. Möchten Sie diese Datei entfernen lassen?%nSollte es doch noch Programme geben, die diese Datei benutzen und sie wird entfernt, funktionieren diese Programme vielleicht nicht mehr richtig. Wenn Sie unsicher sind, wählen Sie "Nein", um die Datei im System zu belassen. Es schadet Ihrem System nicht, wenn Sie die Datei behalten.
SharedFileNameLabel=Dateiname:
SharedFileLocationLabel=Ordner:
WizardUninstalling=Entfernen (Status)
StatusUninstalling=Entferne %1 ...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Installation von %1.
ShutdownBlockReasonUninstallingApp=Deinstallation von %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 Version %2
AdditionalIcons=Zusätzliche Symbole:
CreateDesktopIcon=&Desktop-Symbol erstellen
CreateQuickLaunchIcon=Symbol in der Schnellstartleiste erstellen
ProgramOnTheWeb=%1 im Internet
UninstallProgram=%1 entfernen
LaunchProgram=%1 starten
AssocFileExtension=&Registriere %1 mit der %2-Dateierweiterung
AssocingFileExtension=%1 wird mit der %2-Dateierweiterung registriert...
AutoStartProgramGroupDescription=Beginn des Setups:
AutoStartProgram=Starte automatisch%1
AddonHostProgramNotFound=%1 konnte im ausgewählten Ordner nicht gefunden werden.%n%nMöchten Sie dennoch fortfahren?

