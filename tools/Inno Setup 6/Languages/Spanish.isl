; *** Inno Setup version 6.1.0+ Spanish messages ***
;
; Maintained by Jorge Andres Brugger (jbrugger@ideaworks.com.ar)
; Spanish.isl version 1.5.2 (20211123)
; Default.isl version 6.1.0
; 
; Thanks to Germán Giraldo, Jordi Latorre, Ximo Tamarit, Emiliano Llano, 
; Ramón Verduzco, Graciela García, Carles Millan and Rafael Barranco-Droege

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=Espa<00F1>ol
LanguageID=$0c0a
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
SetupAppTitle=Instalar
SetupWindowTitle=Instalar - %1
UninstallAppTitle=Desinstalar
UninstallAppFullTitle=Desinstalar - %1

; *** Misc. common
InformationTitle=Información
ConfirmTitle=Confirmar
ErrorTitle=Error

; *** SetupLdr messages
SetupLdrStartupMessage=Este programa instalará %1. ¿Desea continuar?
LdrCannotCreateTemp=Imposible crear archivo temporal. Instalación interrumpida
LdrCannotExecTemp=Imposible ejecutar archivo en la carpeta temporal. Instalación interrumpida
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=El archivo %1 no se encuentra en la carpeta de instalación. Por favor, solucione el problema u obtenga una copia nueva del programa.
SetupFileCorrupt=Los archivos de instalación están dañados. Por favor, obtenga una copia nueva del programa.
SetupFileCorruptOrWrongVer=Los archivos de instalación están dañados o son incompatibles con esta versión del programa de instalación. Por favor, solucione el problema u obtenga una copia nueva del programa.
InvalidParameter=Se ha utilizado un parámetro no válido en la línea de comandos:%n%n%1
SetupAlreadyRunning=El programa de instalación aún está ejecutándose.
WindowsVersionNotSupported=Este programa no es compatible con la versión de Windows de su equipo.
WindowsServicePackRequired=Este programa requiere %1 Service Pack %2 o posterior.
NotOnThisPlatform=Este programa no se ejecutará en %1.
OnlyOnThisPlatform=Este programa debe ejecutarse en %1.
OnlyOnTheseArchitectures=Este programa solo puede instalarse en versiones de Windows diseñadas para las siguientes arquitecturas de procesadores:%n%n%1
WinVersionTooLowError=Este programa requiere %1 versión %2 o posterior.
WinVersionTooHighError=Este programa no puede instalarse en %1 versión %2 o posterior.
AdminPrivilegesRequired=Debe iniciar la sesión como administrador para instalar este programa.
PowerUserPrivilegesRequired=Debe iniciar la sesión como administrador o como miembro del grupo de Usuarios Avanzados para instalar este programa.
SetupAppRunningError=El programa de instalación ha detectado que %1 está ejecutándose.%n%nPor favor, ciérrelo ahora, luego haga clic en Aceptar para continuar o en Cancelar para salir.
UninstallAppRunningError=El desinstalador ha detectado que %1 está ejecutándose.%n%nPor favor, ciérrelo ahora, luego haga clic en Aceptar para continuar o en Cancelar para salir.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Selección del Modo de Instalación
PrivilegesRequiredOverrideInstruction=Seleccione el modo de instalación
PrivilegesRequiredOverrideText1=%1 puede ser instalado para todos los usuarios (requiere privilegios administrativos), o solo para Ud.
PrivilegesRequiredOverrideText2=%1 puede ser instalado solo para Ud, o para todos los usuarios (requiere privilegios administrativos).
PrivilegesRequiredOverrideAllUsers=Instalar para &todos los usuarios
PrivilegesRequiredOverrideAllUsersRecommended=Instalar para &todos los usuarios (recomendado)
PrivilegesRequiredOverrideCurrentUser=Instalar para &mí solamente
PrivilegesRequiredOverrideCurrentUserRecommended=Instalar para &mí solamente (recomendado)

; *** Misc. errors
ErrorCreatingDir=El programa de instalación no pudo crear la carpeta "%1"
ErrorTooManyFilesInDir=Imposible crear un archivo en la carpeta "%1" porque contiene demasiados archivos

; *** Setup common messages
ExitSetupTitle=Salir de la Instalación
ExitSetupMessage=La instalación no se ha completado aún. Si cancela ahora, el programa no se instalará.%n%nPuede ejecutar nuevamente el programa de instalación en otra ocasión para completarla.%n%n¿Salir de la instalación?
AboutSetupMenuItem=&Acerca de Instalar...
AboutSetupTitle=Acerca de Instalar
AboutSetupMessage=%1 versión %2%n%3%n%n%1 sitio Web:%n%4
AboutSetupNote=
TranslatorNote=Spanish translation maintained by Jorge Andres Brugger (jbrugger@gmx.net)

; *** Buttons
ButtonBack=< &Atrás
ButtonNext=&Siguiente >
ButtonInstall=&Instalar
ButtonOK=Aceptar
ButtonCancel=Cancelar
ButtonYes=&Sí
ButtonYesToAll=Sí a &Todo
ButtonNo=&No
ButtonNoToAll=N&o a Todo
ButtonFinish=&Finalizar
ButtonBrowse=&Examinar...
ButtonWizardBrowse=&Examinar...
ButtonNewFolder=&Crear Nueva Carpeta

; *** "Select Language" dialog messages
SelectLanguageTitle=Seleccione el Idioma de la Instalación
SelectLanguageLabel=Seleccione el idioma a utilizar durante la instalación.

; *** Common wizard text
ClickNext=Haga clic en Siguiente para continuar o en Cancelar para salir de la instalación.
BeveledLabel=
BrowseDialogTitle=Buscar Carpeta
BrowseDialogLabel=Seleccione una carpeta y luego haga clic en Aceptar.
NewFolderName=Nueva Carpeta

; *** "Welcome" wizard page
WelcomeLabel1=Bienvenido al asistente de instalación de [name]
WelcomeLabel2=Este programa instalará [name/ver] en su sistema.%n%nSe recomienda cerrar todas las demás aplicaciones antes de continuar.

; *** "Password" wizard page
WizardPassword=Contraseña
PasswordLabel1=Esta instalación está protegida por contraseña.
PasswordLabel3=Por favor, introduzca la contraseña y haga clic en Siguiente para continuar. En las contraseñas se hace diferencia entre mayúsculas y minúsculas.
PasswordEditLabel=&Contraseña:
IncorrectPassword=La contraseña introducida no es correcta. Por favor, inténtelo nuevamente.

; *** "License Agreement" wizard page
WizardLicense=Acuerdo de Licencia
LicenseLabel=Es importante que lea la siguiente información antes de continuar.
LicenseLabel3=Por favor, lea el siguiente acuerdo de licencia. Debe aceptar las cláusulas de este acuerdo antes de continuar con la instalación.
LicenseAccepted=A&cepto el acuerdo
LicenseNotAccepted=&No acepto el acuerdo

; *** "Information" wizard pages
WizardInfoBefore=Información
InfoBeforeLabel=Es importante que lea la siguiente información antes de continuar.
InfoBeforeClickLabel=Cuando esté listo para continuar con la instalación, haga clic en Siguiente.
WizardInfoAfter=Información
InfoAfterLabel=Es importante que lea la siguiente información antes de continuar.
InfoAfterClickLabel=Cuando esté listo para continuar, haga clic en Siguiente.

; *** "User Information" wizard page
WizardUserInfo=Información de Usuario
UserInfoDesc=Por favor, introduzca sus datos.
UserInfoName=Nombre de &Usuario:
UserInfoOrg=&Organización:
UserInfoSerial=Número de &Serie:
UserInfoNameRequired=Debe introducir un nombre.

; *** "Select Destination Location" wizard page
WizardSelectDir=Seleccione la Carpeta de Destino
SelectDirDesc=¿Dónde debe instalarse [name]?
SelectDirLabel3=El programa instalará [name] en la siguiente carpeta.
SelectDirBrowseLabel=Para continuar, haga clic en Siguiente. Si desea seleccionar una carpeta diferente, haga clic en Examinar.
DiskSpaceGBLabel=Se requieren al menos [gb] GB de espacio libre en el disco.
DiskSpaceMBLabel=Se requieren al menos [mb] MB de espacio libre en el disco.
CannotInstallToNetworkDrive=El programa de instalación no puede realizar la instalación en una unidad de red.
CannotInstallToUNCPath=El programa de instalación no puede realizar la instalación en una ruta de acceso UNC.
InvalidPath=Debe introducir una ruta completa con la letra de la unidad; por ejemplo:%n%nC:\APP%n%no una ruta de acceso UNC de la siguiente forma:%n%n\\servidor\compartido
InvalidDrive=La unidad o ruta de acceso UNC que seleccionó no existe o no es accesible. Por favor, seleccione otra.
DiskSpaceWarningTitle=Espacio Insuficiente en Disco
DiskSpaceWarning=La instalación requiere al menos %1 KB de espacio libre, pero la unidad seleccionada solo cuenta con %2 KB disponibles.%n%n¿Desea continuar de todas formas?
DirNameTooLong=El nombre de la carpeta o la ruta son demasiado largos.
InvalidDirName=El nombre de la carpeta no es válido.
BadDirName32=Los nombres de carpetas no pueden incluir los siguientes caracteres:%n%n%1
DirExistsTitle=La Carpeta Ya Existe
DirExists=La carpeta:%n%n%1%n%nya existe. ¿Desea realizar la instalación en esa carpeta de todas formas?
DirDoesntExistTitle=La Carpeta No Existe
DirDoesntExist=La carpeta:%n%n%1%n%nno existe. ¿Desea crear esa carpeta?

; *** "Select Components" wizard page
WizardSelectComponents=Seleccione los Componentes
SelectComponentsDesc=¿Qué componentes deben instalarse?
SelectComponentsLabel2=Seleccione los componentes que desea instalar y desmarque los componentes que no desea instalar. Haga clic en Siguiente cuando esté listo para continuar.
FullInstallation=Instalación Completa
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Instalación Compacta
CustomInstallation=Instalación Personalizada
NoUninstallWarningTitle=Componentes Encontrados
NoUninstallWarning=El programa de instalación ha detectado que los siguientes componentes ya están instalados en su sistema:%n%n%1%n%nDesmarcar estos componentes no los desinstalará.%n%n¿Desea continuar de todos modos?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceGBLabel=La selección actual requiere al menos [gb] GB de espacio en disco.
ComponentsDiskSpaceMBLabel=La selección actual requiere al menos [mb] MB de espacio en disco.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Seleccione las Tareas Adicionales
SelectTasksDesc=¿Qué tareas adicionales deben realizarse?
SelectTasksLabel2=Seleccione las tareas adicionales que desea que se realicen durante la instalación de [name] y haga clic en Siguiente.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Seleccione la Carpeta del Menú Inicio
SelectStartMenuFolderDesc=¿Dónde deben colocarse los accesos directos del programa?
SelectStartMenuFolderLabel3=El programa de instalación creará los accesos directos del programa en la siguiente carpeta del Menú Inicio.
SelectStartMenuFolderBrowseLabel=Para continuar, haga clic en Siguiente. Si desea seleccionar una carpeta distinta, haga clic en Examinar.
MustEnterGroupName=Debe proporcionar un nombre de carpeta.
GroupNameTooLong=El nombre de la carpeta o la ruta son demasiado largos.
InvalidGroupName=El nombre de la carpeta no es válido.
BadGroupName=El nombre de la carpeta no puede incluir ninguno de los siguientes caracteres:%n%n%1
NoProgramGroupCheck2=&No crear una carpeta en el Menú Inicio

; *** "Ready to Install" wizard page
WizardReady=Listo para Instalar
ReadyLabel1=Ahora el programa está listo para iniciar la instalación de [name] en su sistema.
ReadyLabel2a=Haga clic en Instalar para continuar con el proceso o haga clic en Atrás si desea revisar o cambiar alguna configuración.
ReadyLabel2b=Haga clic en Instalar para continuar con el proceso.
ReadyMemoUserInfo=Información del usuario:
ReadyMemoDir=Carpeta de Destino:
ReadyMemoType=Tipo de Instalación:
ReadyMemoComponents=Componentes Seleccionados:
ReadyMemoGroup=Carpeta del Menú Inicio:
ReadyMemoTasks=Tareas Adicionales:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Descargando archivos adicionales...
ButtonStopDownload=&Detener descarga
StopDownload=¿Está seguiro que desea detener la descarga?
ErrorDownloadAborted=Descarga cancelada
ErrorDownloadFailed=Falló descarga: %1 %2
ErrorDownloadSizeFailed=Falló obtención de tamaño: %1 %2
ErrorFileHash1=Falló hash del archivo: %1
ErrorFileHash2=Hash de archivo no válido: esperado %1, encontrado %2
ErrorProgress=Progreso no válido: %1 de %2
ErrorFileSize=Tamaño de archivo no válido: esperado %1, encontrado %2

; *** "Preparing to Install" wizard page
WizardPreparing=Preparándose para Instalar
PreparingDesc=El programa de instalación está preparándose para instalar [name] en su sistema.
PreviousInstallNotCompleted=La instalación/desinstalación previa de un programa no se completó. Deberá reiniciar el sistema para completar esa instalación.%n%nUna vez reiniciado el sistema, ejecute el programa de instalación nuevamente para completar la instalación de [name].
CannotContinue=El programa de instalación no puede continuar. Por favor, presione Cancelar para salir.
ApplicationsFound=Las siguientes aplicaciones están usando archivos que necesitan ser actualizados por el programa de instalación. Se recomienda que permita al programa de instalación cerrar automáticamente estas aplicaciones.
ApplicationsFound2=Las siguientes aplicaciones están usando archivos que necesitan ser actualizados por el programa de instalación. Se recomienda que permita al programa de instalación cerrar automáticamente estas aplicaciones. Al completarse la instalación, el programa de instalación intentará reiniciar las aplicaciones.
CloseApplications=&Cerrar automáticamente las aplicaciones
DontCloseApplications=&No cerrar las aplicaciones
ErrorCloseApplications=El programa de instalación no pudo cerrar de forma automática todas las aplicaciones. Se recomienda que, antes de continuar, cierre todas las aplicaciones que utilicen archivos que necesitan ser actualizados por el programa de instalación.
PrepareToInstallNeedsRestart=El programa de instalación necesita reiniciar el sistema. Una vez que se haya reiniciado ejecute nuevamente el programa de instalación para completar la instalación de [name].%n%n¿Desea reiniciar el sistema ahora?

; *** "Installing" wizard page
WizardInstalling=Instalando
InstallingLabel=Por favor, espere mientras se instala [name] en su sistema.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Completando la instalación de [name]
FinishedLabelNoIcons=El programa completó la instalación de [name] en su sistema.
FinishedLabel=El programa completó la instalación de [name] en su sistema. Puede ejecutar la aplicación utilizando los accesos directos creados.
ClickFinish=Haga clic en Finalizar para salir del programa de instalación.
FinishedRestartLabel=Para completar la instalación de [name], su sistema debe reiniciarse. ¿Desea reiniciarlo ahora?
FinishedRestartMessage=Para completar la instalación de [name], su sistema debe reiniciarse.%n%n¿Desea reiniciarlo ahora?
ShowReadmeCheck=Sí, deseo ver el archivo LÉAME
YesRadio=&Sí, deseo reiniciar el sistema ahora
NoRadio=&No, reiniciaré el sistema más tarde
; used for example as 'Run MyProg.exe'
RunEntryExec=Ejecutar %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Ver %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=El Programa de Instalación Necesita el Siguiente Disco
SelectDiskLabel2=Por favor, inserte el Disco %1 y haga clic en Aceptar.%n%nSi los archivos pueden ser hallados en una carpeta diferente a la indicada abajo, introduzca la ruta correcta o haga clic en Examinar.
PathLabel=&Ruta:
FileNotInDir2=El archivo "%1" no se ha podido hallar en "%2". Por favor, inserte el disco correcto o seleccione otra carpeta.
SelectDirectoryLabel=Por favor, especifique la ubicación del siguiente disco.

; *** Installation phase messages
SetupAborted=La instalación no se ha completado.%n%nPor favor solucione el problema y ejecute nuevamente el programa de instalación.
AbortRetryIgnoreSelectAction=Seleccione acción
AbortRetryIgnoreRetry=&Reintentar
AbortRetryIgnoreIgnore=&Ignorar el error y continuar
AbortRetryIgnoreCancel=Cancelar instalación

; *** Installation status messages
StatusClosingApplications=Cerrando aplicaciones...
StatusCreateDirs=Creando carpetas...
StatusExtractFiles=Extrayendo archivos...
StatusCreateIcons=Creando accesos directos...
StatusCreateIniEntries=Creando entradas INI...
StatusCreateRegistryEntries=Creando entradas de registro...
StatusRegisterFiles=Registrando archivos...
StatusSavingUninstall=Guardando información para desinstalar...
StatusRunProgram=Terminando la instalación...
StatusRestartingApplications=Reiniciando aplicaciones...
StatusRollback=Deshaciendo cambios...

; *** Misc. errors
ErrorInternal2=Error interno: %1
ErrorFunctionFailedNoCode=%1 falló
ErrorFunctionFailed=%1 falló; código %2
ErrorFunctionFailedWithMessage=%1 falló; código %2.%n%3
ErrorExecutingProgram=Imposible ejecutar el archivo:%n%1

; *** Registry errors
ErrorRegOpenKey=Error al abrir la clave del registro:%n%1\%2
ErrorRegCreateKey=Error al crear la clave del registro:%n%1\%2
ErrorRegWriteKey=Error al escribir la clave del registro:%n%1\%2

; *** INI errors
ErrorIniEntry=Error al crear entrada INI en el archivo "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&Omitir este archivo (no recomendado)
FileAbortRetryIgnoreIgnoreNotRecommended=&Ignorar el error y continuar (no recomendado)
SourceIsCorrupted=El archivo de origen está dañado
SourceDoesntExist=El archivo de origen "%1" no existe
ExistingFileReadOnly2=El archivo existente no puede ser reemplazado debido a que está marcado como solo-lectura.
ExistingFileReadOnlyRetry=&Elimine el atributo de solo-lectura y reintente
ExistingFileReadOnlyKeepExisting=&Mantener el archivo existente
ErrorReadingExistingDest=Ocurrió un error mientras se intentaba leer el archivo:
FileExistsSelectAction=Seleccione acción
FileExists2=El archivo ya existe.
FileExistsOverwriteExisting=&Sobreescribir el archivo existente
FileExistsKeepExisting=&Mantener el archivo existente
FileExistsOverwriteOrKeepAll=&Hacer lo mismo para lo siguientes conflictos
ExistingFileNewerSelectAction=Seleccione acción
ExistingFileNewer2=El archivo existente es más reciente que el que se está tratando de instalar.
ExistingFileNewerOverwriteExisting=&Sobreescribir el archivo existente
ExistingFileNewerKeepExisting=&Mantener el archivo existente (recomendado)
ExistingFileNewerOverwriteOrKeepAll=&Hacer lo mismo para lo siguientes conflictos
ErrorChangingAttr=Ocurrió un error al intentar cambiar los atributos del archivo:
ErrorCreatingTemp=Ocurrió un error al intentar crear un archivo en la carpeta de destino:
ErrorReadingSource=Ocurrió un error al intentar leer el archivo de origen:
ErrorCopying=Ocurrió un error al intentar copiar el archivo:
ErrorReplacingExistingFile=Ocurrió un error al intentar reemplazar el archivo existente:
ErrorRestartReplace=Falló reintento de reemplazar:
ErrorRenamingTemp=Ocurrió un error al intentar renombrar un archivo en la carpeta de destino:
ErrorRegisterServer=Imposible registrar el DLL/OCX: %1
ErrorRegSvr32Failed=RegSvr32 falló con el código de salida %1
ErrorRegisterTypeLib=Imposible registrar la librería de tipos: %1

; *** Uninstall display name markings
; used for example as 'My Program (32-bit)'
UninstallDisplayNameMark=%1 (%2)
; used for example as 'My Program (32-bit, All users)'
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-bit
UninstallDisplayNameMark64Bit=64-bit
UninstallDisplayNameMarkAllUsers=Todos los usuarios
UninstallDisplayNameMarkCurrentUser=Usuario actual

; *** Post-installation errors
ErrorOpeningReadme=Ocurrió un error al intentar abrir el archivo LÉAME.
ErrorRestartingComputer=El programa de instalación no pudo reiniciar el equipo. Por favor, hágalo manualmente.

; *** Uninstaller messages
UninstallNotFound=El archivo "%1" no existe. Imposible desinstalar.
UninstallOpenError=El archivo "%1" no pudo ser abierto. Imposible desinstalar
UninstallUnsupportedVer=El archivo de registro para desinstalar "%1" está en un formato no reconocido por esta versión del desinstalador. Imposible desinstalar
UninstallUnknownEntry=Se encontró una entrada desconocida (%1) en el registro de desinstalación
ConfirmUninstall=¿Está seguro que desea desinstalar completamente %1 y todos sus componentes?
UninstallOnlyOnWin64=Este programa solo puede ser desinstalado en Windows de 64-bits.
OnlyAdminCanUninstall=Este programa solo puede ser desinstalado por un usuario con privilegios administrativos.
UninstallStatusLabel=Por favor, espere mientras %1 es desinstalado de su sistema.
UninstalledAll=%1 se desinstaló satisfactoriamente de su sistema.
UninstalledMost=La desinstalación de %1 ha sido completada.%n%nAlgunos elementos no pudieron eliminarse, pero podrá eliminarlos manualmente si lo desea.
UninstalledAndNeedsRestart=Para completar la desinstalación de %1, su sistema debe reiniciarse.%n%n¿Desea reiniciarlo ahora?
UninstallDataCorrupted=El archivo "%1" está dañado. No puede desinstalarse

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=¿Eliminar Archivo Compartido?
ConfirmDeleteSharedFile2=El sistema indica que el siguiente archivo compartido no es utilizado por ningún otro programa. ¿Desea eliminar este archivo compartido?%n%nSi elimina el archivo y hay programas que lo utilizan, esos programas podrían dejar de funcionar correctamente. Si no está seguro, elija No. Dejar el archivo en su sistema no producirá ningún daño.
SharedFileNameLabel=Archivo:
SharedFileLocationLabel=Ubicación:
WizardUninstalling=Estado de la Desinstalación
StatusUninstalling=Desinstalando %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Instalando %1.
ShutdownBlockReasonUninstallingApp=Desinstalando %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 versión %2
AdditionalIcons=Accesos directos adicionales:
CreateDesktopIcon=Crear un acceso directo en el &escritorio
CreateQuickLaunchIcon=Crear un acceso directo en &Inicio Rápido
ProgramOnTheWeb=%1 en la Web
UninstallProgram=Desinstalar %1
LaunchProgram=Ejecutar %1
AssocFileExtension=&Asociar %1 con la extensión de archivo %2
AssocingFileExtension=Asociando %1 con la extensión de archivo %2...
AutoStartProgramGroupDescription=Inicio:
AutoStartProgram=Iniciar automáticamente %1
AddonHostProgramNotFound=%1 no pudo ser localizado en la carpeta seleccionada.%n%n¿Desea continuar de todas formas?
