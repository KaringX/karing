; *** Inno Setup version 6.1.0+ Russian messages ***
;
; Translated from English by Dmitry Kann, yktooo at gmail.com
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).

[LangOptions]
LanguageName=<0420><0443><0441><0441><043A><0438><0439>
LanguageID=$0419
LanguageCodePage=1251

[Messages]

; *** Application titles
SetupAppTitle=Установка
SetupWindowTitle=Установка — %1
UninstallAppTitle=Деинсталляция
UninstallAppFullTitle=Деинсталляция — %1

; *** Misc. common
InformationTitle=Информация
ConfirmTitle=Подтверждение
ErrorTitle=Ошибка

; *** SetupLdr messages
SetupLdrStartupMessage=Данная программа установит %1 на ваш компьютер, продолжить?
LdrCannotCreateTemp=Невозможно создать временный файл. Установка прервана
LdrCannotExecTemp=Невозможно выполнить файл во временном каталоге. Установка прервана
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nОшибка %2: %3
SetupFileMissing=Файл %1 отсутствует в папке установки. Пожалуйста, устраните проблему или получите новую версию программы.
SetupFileCorrupt=Установочные файлы повреждены. Пожалуйста, получите новую копию программы.
SetupFileCorruptOrWrongVer=Эти установочные файлы повреждены или несовместимы с данной версией программы установки. Пожалуйста, устраните проблему или получите новую копию программы.
InvalidParameter=Командная строка содержит недопустимый параметр:%n%n%1
SetupAlreadyRunning=Программа установки уже запущена.
WindowsVersionNotSupported=Эта программа не поддерживает версию Windows, установленную на этом компьютере.
WindowsServicePackRequired=Эта программа требует %1 Service Pack %2 или более позднюю версию.
NotOnThisPlatform=Эта программа не будет работать в %1.
OnlyOnThisPlatform=Эту программу можно запускать только в %1.
OnlyOnTheseArchitectures=Установка этой программы возможна только в версиях Windows для следующих архитектур процессоров:%n%n%1
WinVersionTooLowError=Эта программа требует %1 версии %2 или выше.
WinVersionTooHighError=Программа не может быть установлена в %1 версии %2 или выше.
AdminPrivilegesRequired=Чтобы установить данную программу, вы должны выполнить вход в систему как Администратор.
PowerUserPrivilegesRequired=Чтобы установить эту программу, вы должны выполнить вход в систему как Администратор или член группы «Опытные пользователи» (Power Users).
SetupAppRunningError=Обнаружен запущенный экземпляр %1.%n%nПожалуйста, закройте все экземпляры приложения, затем нажмите «OK», чтобы продолжить, или «Отмена», чтобы выйти.
UninstallAppRunningError=Деинсталлятор обнаружил запущенный экземпляр %1.%n%nПожалуйста, закройте все экземпляры приложения, затем нажмите «OK», чтобы продолжить, или «Отмена», чтобы выйти.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Выбор режима установки
PrivilegesRequiredOverrideInstruction=Выберите режим установки
PrivilegesRequiredOverrideText1=%1 может быть установлена либо для всех пользователей (требуются привилегии администратора), либо только для вас.
PrivilegesRequiredOverrideText2=%1 может быть установлена либо только для вас, либо для всех пользователей (требуются привилегии администратора).
PrivilegesRequiredOverrideAllUsers=Установить для &всех пользователей
PrivilegesRequiredOverrideAllUsersRecommended=Установить для &всех пользователей (рекомендуется)
PrivilegesRequiredOverrideCurrentUser=Установить только для &меня
PrivilegesRequiredOverrideCurrentUserRecommended=Установить только для &меня (рекомендуется)

; *** Misc. errors
ErrorCreatingDir=Невозможно создать папку "%1"
ErrorTooManyFilesInDir=Невозможно создать файл в каталоге "%1", так как в нём слишком много файлов

; *** Setup common messages
ExitSetupTitle=Выход из программы установки
ExitSetupMessage=Установка не завершена. Если вы выйдете, программа не будет установлена.%n%nВы сможете завершить установку, запустив программу установки позже.%n%nВыйти из программы установки?
AboutSetupMenuItem=&О программе...
AboutSetupTitle=О программе
AboutSetupMessage=%1, версия %2%n%3%n%nСайт %1:%n%4
AboutSetupNote=
TranslatorNote=Russian translation by Dmitry Kann, http://www.dk-soft.org/

; *** Buttons
ButtonBack=< &Назад
ButtonNext=&Далее >
ButtonInstall=&Установить
ButtonOK=OK
ButtonCancel=Отмена
ButtonYes=&Да
ButtonYesToAll=Да для &Всех
ButtonNo=&Нет
ButtonNoToAll=Н&ет для Всех
ButtonFinish=&Завершить
ButtonBrowse=&Обзор...
ButtonWizardBrowse=&Обзор...
ButtonNewFolder=&Создать папку

; *** "Select Language" dialog messages
SelectLanguageTitle=Выберите язык установки
SelectLanguageLabel=Выберите язык, который будет использован в процессе установки.

; *** Common wizard text
ClickNext=Нажмите «Далее», чтобы продолжить, или «Отмена», чтобы выйти из программы установки.
BeveledLabel=
BrowseDialogTitle=Обзор папок
BrowseDialogLabel=Выберите папку из списка и нажмите «ОК».
NewFolderName=Новая папка

; *** "Welcome" wizard page
WelcomeLabel1=Вас приветствует Мастер установки [name]
WelcomeLabel2=Программа установит [name/ver] на ваш компьютер.%n%nРекомендуется закрыть все прочие приложения перед тем, как продолжить.

; *** "Password" wizard page
WizardPassword=Пароль
PasswordLabel1=Эта программа защищена паролем.
PasswordLabel3=Пожалуйста, наберите пароль, потом нажмите «Далее». Пароли необходимо вводить с учётом регистра.
PasswordEditLabel=&Пароль:
IncorrectPassword=Введенный вами пароль неверен. Пожалуйста, попробуйте снова.

; *** "License Agreement" wizard page
WizardLicense=Лицензионное Соглашение
LicenseLabel=Пожалуйста, прочтите следующую важную информацию перед тем, как продолжить.
LicenseLabel3=Пожалуйста, прочтите следующее Лицензионное Соглашение. Вы должны принять условия этого соглашения перед тем, как продолжить.
LicenseAccepted=Я &принимаю условия соглашения
LicenseNotAccepted=Я &не принимаю условия соглашения

; *** "Information" wizard pages
WizardInfoBefore=Информация
InfoBeforeLabel=Пожалуйста, прочитайте следующую важную информацию перед тем, как продолжить.
InfoBeforeClickLabel=Когда вы будете готовы продолжить установку, нажмите «Далее».
WizardInfoAfter=Информация
InfoAfterLabel=Пожалуйста, прочитайте следующую важную информацию перед тем, как продолжить.
InfoAfterClickLabel=Когда вы будете готовы продолжить установку, нажмите «Далее».

; *** "User Information" wizard page
WizardUserInfo=Информация о пользователе
UserInfoDesc=Пожалуйста, введите данные о себе.
UserInfoName=&Имя и фамилия пользователя:
UserInfoOrg=&Организация:
UserInfoSerial=&Серийный номер:
UserInfoNameRequired=Вы должны ввести имя.

; *** "Select Destination Location" wizard page
WizardSelectDir=Выбор папки установки
SelectDirDesc=В какую папку вы хотите установить [name]?
SelectDirLabel3=Программа установит [name] в следующую папку.
SelectDirBrowseLabel=Нажмите «Далее», чтобы продолжить. Если вы хотите выбрать другую папку, нажмите «Обзор».
DiskSpaceGBLabel=Требуется как минимум [gb] Гб свободного дискового пространства.
DiskSpaceMBLabel=Требуется как минимум [mb] Мб свободного дискового пространства.
CannotInstallToNetworkDrive=Установка не может производиться на сетевой диск.
CannotInstallToUNCPath=Установка не может производиться в папку по UNC-пути.
InvalidPath=Вы должны указать полный путь с буквой диска; например:%n%nC:\APP%n%nили в форме UNC:%n%n\\имя_сервера\имя_ресурса
InvalidDrive=Выбранный вами диск или сетевой путь не существует или недоступен. Пожалуйста, выберите другой.
DiskSpaceWarningTitle=Недостаточно места на диске
DiskSpaceWarning=Установка требует не менее %1 Кб свободного места, а на выбранном вами диске доступно только %2 Кб.%n%nВы желаете тем не менее продолжить установку?
DirNameTooLong=Имя папки или путь к ней превышают допустимую длину.
InvalidDirName=Указанное имя папки недопустимо.
BadDirName32=Имя папки не может содержать символов: %n%n%1
DirExistsTitle=Папка существует
DirExists=Папка%n%n%1%n%nуже существует. Всё равно установить в эту папку?
DirDoesntExistTitle=Папка не существует
DirDoesntExist=Папка%n%n%1%n%nне существует. Вы хотите создать её?

; *** "Select Components" wizard page
WizardSelectComponents=Выбор компонентов
SelectComponentsDesc=Какие компоненты должны быть установлены?
SelectComponentsLabel2=Выберите компоненты, которые вы хотите установить; снимите флажки с компонентов, устанавливать которые не требуется. Нажмите «Далее», когда вы будете готовы продолжить.
FullInstallation=Полная установка
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Компактная установка
CustomInstallation=Выборочная установка
NoUninstallWarningTitle=Установленные компоненты
NoUninstallWarning=Программа установки обнаружила, что следующие компоненты уже установлены на вашем компьютере:%n%n%1%n%nОтмена выбора этих компонентов не удалит их.%n%nПродолжить?
ComponentSize1=%1 Кб
ComponentSize2=%1 Мб
ComponentsDiskSpaceGBLabel=Текущий выбор требует не менее [gb] Гб на диске.
ComponentsDiskSpaceMBLabel=Текущий выбор требует не менее [mb] Мб на диске.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Выберите дополнительные задачи
SelectTasksDesc=Какие дополнительные задачи необходимо выполнить?
SelectTasksLabel2=Выберите дополнительные задачи, которые должны выполниться при установке [name], после этого нажмите «Далее»:

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Выберите папку в меню «Пуск»
SelectStartMenuFolderDesc=Где программа установки должна создать ярлыки?
SelectStartMenuFolderLabel3=Программа создаст ярлыки в следующей папке меню «Пуск».
SelectStartMenuFolderBrowseLabel=Нажмите «Далее», чтобы продолжить. Если вы хотите выбрать другую папку, нажмите «Обзор».
MustEnterGroupName=Вы должны ввести имя папки.
GroupNameTooLong=Имя папки группы или путь к ней превышают допустимую длину.
InvalidGroupName=Указанное имя папки недопустимо.
BadGroupName=Имя папки не может содержать символов:%n%n%1
NoProgramGroupCheck2=&Не создавать папку в меню «Пуск»

; *** "Ready to Install" wizard page
WizardReady=Всё готово к установке
ReadyLabel1=Программа установки готова начать установку [name] на ваш компьютер.
ReadyLabel2a=Нажмите «Установить», чтобы продолжить, или «Назад», если вы хотите просмотреть или изменить опции установки.
ReadyLabel2b=Нажмите «Установить», чтобы продолжить.
ReadyMemoUserInfo=Информация о пользователе:
ReadyMemoDir=Папка установки:
ReadyMemoType=Тип установки:
ReadyMemoComponents=Выбранные компоненты:
ReadyMemoGroup=Папка в меню «Пуск»:
ReadyMemoTasks=Дополнительные задачи:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Загрузка дополнительных файлов...
ButtonStopDownload=&Прервать загрузку
StopDownload=Вы действительно хотите прекратить загрузку?
ErrorDownloadAborted=Загрузка прервана
ErrorDownloadFailed=Ошибка загрузки: %1 %2
ErrorDownloadSizeFailed=Ошибка получения размера: %1 %2
ErrorFileHash1=Ошибка хэша файла: %1
ErrorFileHash2=Неверный хэш файла: ожидался %1, получен %2
ErrorProgress=Ошибка выполнения: %1 из %2
ErrorFileSize=Неверный размер файла: ожидался %1, получен %2

; *** "Preparing to Install" wizard page
WizardPreparing=Подготовка к установке
PreparingDesc=Программа установки подготавливается к установке [name] на ваш компьютер.
PreviousInstallNotCompleted=Установка или удаление предыдущей программы не были завершены. Вам потребуется перезагрузить компьютер, чтобы завершить ту установку.%n%nПосле перезагрузки запустите вновь Программу установки, чтобы завершить установку [name].
CannotContinue=Невозможно продолжить установку. Нажмите «Отмена» для выхода из программы.
ApplicationsFound=Следующие приложения используют файлы, которые программа установки должна обновить. Рекомендуется позволить программе установки автоматически закрыть эти приложения.
ApplicationsFound2=Следующие приложения используют файлы, которые программа установки должна обновить. Рекомендуется позволить программе установки автоматически закрыть эти приложения. Когда установка будет завершена, программа установки попытается вновь запустить их.
CloseApplications=&Автоматически закрыть эти приложения
DontCloseApplications=&Не закрывать эти приложения
ErrorCloseApplications=Программе установки не удалось автоматически закрыть все приложения. Рекомендуется закрыть все приложения, которые используют подлежащие обновлению файлы, прежде чем продолжить установку.
PrepareToInstallNeedsRestart=Программе установки требуется перезагрузить ваш компьютер. Когда перезагрузка завершится, пожалуйста, запустите программу установки вновь, чтобы завершить процесс установки [name].%n%nПроизвести перезагрузку сейчас?

; *** "Installing" wizard page
WizardInstalling=Установка...
InstallingLabel=Пожалуйста, подождите, пока [name] установится на ваш компьютер.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Завершение Мастера установки [name]
FinishedLabelNoIcons=Программа [name] установлена на ваш компьютер.
FinishedLabel=Программа [name] установлена на ваш компьютер. Приложение можно запустить с помощью соответствующего значка.
ClickFinish=Нажмите «Завершить», чтобы выйти из программы установки.
FinishedRestartLabel=Для завершения установки [name] требуется перезагрузить компьютер. Произвести перезагрузку сейчас?
FinishedRestartMessage=Для завершения установки [name] требуется перезагрузить компьютер.%n%nПроизвести перезагрузку сейчас?
ShowReadmeCheck=Я хочу просмотреть файл README
YesRadio=&Да, перезагрузить компьютер сейчас
NoRadio=&Нет, я произведу перезагрузку позже
; used for example as 'Run MyProg.exe'
RunEntryExec=Запустить %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Просмотреть %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Необходимо вставить следующий диск
SelectDiskLabel2=Пожалуйста, вставьте диск %1 и нажмите «OK».%n%nЕсли файлы этого диска могут быть найдены в папке, отличающейся от показанной ниже, введите правильный путь или нажмите «Обзор».
PathLabel=&Путь:
FileNotInDir2=Файл "%1" не найден в "%2". Пожалуйста, вставьте правильный диск или выберите другую папку.
SelectDirectoryLabel=Пожалуйста, укажите путь к следующему диску.

; *** Installation phase messages
SetupAborted=Установка не была завершена.%n%nПожалуйста, устраните проблему и запустите установку снова.
AbortRetryIgnoreSelectAction=Выберите действие
AbortRetryIgnoreRetry=Попробовать &снова
AbortRetryIgnoreIgnore=&Игнорировать ошибку и продолжить
AbortRetryIgnoreCancel=Отменить установку

; *** Installation status messages
StatusClosingApplications=Закрытие приложений...
StatusCreateDirs=Создание папок...
StatusExtractFiles=Распаковка файлов...
StatusCreateIcons=Создание ярлыков программы...
StatusCreateIniEntries=Создание INI-файлов...
StatusCreateRegistryEntries=Создание записей реестра...
StatusRegisterFiles=Регистрация файлов...
StatusSavingUninstall=Сохранение информации для деинсталляции...
StatusRunProgram=Завершение установки...
StatusRestartingApplications=Перезапуск приложений...
StatusRollback=Откат изменений...

; *** Misc. errors
ErrorInternal2=Внутренняя ошибка: %1
ErrorFunctionFailedNoCode=%1: сбой
ErrorFunctionFailed=%1: сбой; код %2
ErrorFunctionFailedWithMessage=%1: сбой; код %2.%n%3
ErrorExecutingProgram=Невозможно выполнить файл:%n%1

; *** Registry errors
ErrorRegOpenKey=Ошибка открытия ключа реестра:%n%1\%2
ErrorRegCreateKey=Ошибка создания ключа реестра:%n%1\%2
ErrorRegWriteKey=Ошибка записи в ключ реестра:%n%1\%2

; *** INI errors
ErrorIniEntry=Ошибка создания записи в INI-файле "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&Пропустить этот файл (не рекомендуется)
FileAbortRetryIgnoreIgnoreNotRecommended=&Игнорировать ошибку и продолжить (не рекомендуется)
SourceIsCorrupted=Исходный файл поврежден
SourceDoesntExist=Исходный файл "%1" не существует
ExistingFileReadOnly2=Невозможно заменить существующий файл, так как он помечен как «файл только для чтения».
ExistingFileReadOnlyRetry=&Удалить атрибут «только для чтения» и повторить попытку
ExistingFileReadOnlyKeepExisting=&Оставить файл на месте
ErrorReadingExistingDest=Произошла ошибка при попытке чтения существующего файла:
FileExistsSelectAction=Выберите действие
FileExists2=Файл уже существует.
FileExistsOverwriteExisting=&Заменить существующий файл
FileExistsKeepExisting=&Сохранить существующий файл
FileExistsOverwriteOrKeepAll=&Повторить действие для всех последующих конфликтов
ExistingFileNewerSelectAction=Выберите действие
ExistingFileNewer2=Существующий файл более новый, чем устанавливаемый.
ExistingFileNewerOverwriteExisting=&Заменить существующий файл
ExistingFileNewerKeepExisting=&Сохранить существующий файл (рекомендуется)
ExistingFileNewerOverwriteOrKeepAll=&Повторить действие для всех последующих конфликтов
ErrorChangingAttr=Произошла ошибка при попытке изменения атрибутов существующего файла:
ErrorCreatingTemp=Произошла ошибка при попытке создания файла в папке назначения:
ErrorReadingSource=Произошла ошибка при попытке чтения исходного файла:
ErrorCopying=Произошла ошибка при попытке копирования файла:
ErrorReplacingExistingFile=Произошла ошибка при попытке замены существующего файла:
ErrorRestartReplace=Ошибка RestartReplace:
ErrorRenamingTemp=Произошла ошибка при попытке переименования файла в папке назначения:
ErrorRegisterServer=Невозможно зарегистрировать DLL/OCX: %1
ErrorRegSvr32Failed=Ошибка при выполнении RegSvr32, код возврата %1
ErrorRegisterTypeLib=Невозможно зарегистрировать библиотеку типов (Type Library): %1

; *** Uninstall display name markings
UninstallDisplayNameMark=%1 (%2)
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32 бита
UninstallDisplayNameMark64Bit=64 бита
UninstallDisplayNameMarkAllUsers=Все пользователи
UninstallDisplayNameMarkCurrentUser=Текущий пользователь

; *** Post-installation errors
ErrorOpeningReadme=Произошла ошибка при попытке открытия файла README.
ErrorRestartingComputer=Программе установки не удалось перезапустить компьютер. Пожалуйста, выполните это самостоятельно.

; *** Uninstaller messages
UninstallNotFound=Файл "%1" не существует, деинсталляция невозможна.
UninstallOpenError=Невозможно открыть файл "%1". Деинсталляция невозможна
UninstallUnsupportedVer=Файл протокола для деинсталляции "%1" не распознан данной версией программы-деинсталлятора. Деинсталляция невозможна
UninstallUnknownEntry=Встретился неизвестный пункт (%1) в файле протокола для деинсталляции
ConfirmUninstall=Вы действительно хотите удалить %1 и все компоненты программы?
UninstallOnlyOnWin64=Данную программу возможно деинсталлировать только в среде 64-битной Windows.
OnlyAdminCanUninstall=Эта программа может быть деинсталлирована только пользователем с административными привилегиями.
UninstallStatusLabel=Пожалуйста, подождите, пока %1 будет удалена с вашего компьютера.
UninstalledAll=Программа %1 была полностью удалена с вашего компьютера.
UninstalledMost=Деинсталляция %1 завершена.%n%nЧасть элементов не удалось удалить. Вы можете удалить их самостоятельно.
UninstalledAndNeedsRestart=Для завершения деинсталляции %1 необходимо произвести перезагрузку вашего компьютера.%n%nВыполнить перезагрузку сейчас?
UninstallDataCorrupted=Файл "%1" поврежден. Деинсталляция невозможна

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Удалить совместно используемый файл?
ConfirmDeleteSharedFile2=Система указывает, что следующий совместно используемый файл больше не используется никакими другими приложениями. Подтверждаете удаление файла?%n%nЕсли какие-либо программы всё еще используют этот файл, и он будет удалён, они не смогут работать правильно. Если Вы не уверены, выберите «Нет». Оставленный файл не навредит вашей системе.
SharedFileNameLabel=Имя файла:
SharedFileLocationLabel=Расположение:
WizardUninstalling=Состояние деинсталляции
StatusUninstalling=Деинсталляция %1...


; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Установка %1.
ShutdownBlockReasonUninstallingApp=Деинсталляция %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1, версия %2
AdditionalIcons=Дополнительные значки:
CreateDesktopIcon=Создать значок на &Рабочем столе
CreateQuickLaunchIcon=Создать значок в &Панели быстрого запуска
ProgramOnTheWeb=Сайт %1 в Интернете
UninstallProgram=Деинсталлировать %1
LaunchProgram=Запустить %1
AssocFileExtension=Св&язать %1 с файлами, имеющими расширение %2
AssocingFileExtension=Связывание %1 с файлами %2...
AutoStartProgramGroupDescription=Автозапуск:
AutoStartProgram=Автоматически запускать %1
AddonHostProgramNotFound=%1 не найден в указанной вами папке.%n%nВы всё равно хотите продолжить?
