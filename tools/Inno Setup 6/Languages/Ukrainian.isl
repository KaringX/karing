; *** Inno Setup version 6.1.0+ Ukrainian messages ***
; Author: Dmytro Onyshchuk
; E-Mail: mrlols3@gmail.com
; Please report all spelling/grammar errors, and observations.
; Version 2020.08.04

; *** Український переклад Inno Setup для версії 6.1.0 та вище***
; Автор перекладу: Дмитро Онищук
; E-Mail: mrlols3@gmail.com
; Будь ласка, повідомляйте про всі знайдені помилки та зауваження.
; Версія перекладу 2020.08.04

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=<0423><043A><0440><0430><0457><043D><0441><044C><043A><0430>
LanguageID=$0422
LanguageCodePage=1251
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

; *** Заголовки програми
SetupAppTitle=Встановлення
SetupWindowTitle=Встановлення — %1
UninstallAppTitle=Видалення
UninstallAppFullTitle=Видалення — %1

; *** Misc. common
InformationTitle=Інформація
ConfirmTitle=Підтвердження
ErrorTitle=Помилка

; *** SetupLdr messages
SetupLdrStartupMessage=Ця програма встановить %1 на ваш комп'ютер, бажаєте продовжити?
LdrCannotCreateTemp=Неможливо створити тимчасовий файл. Встановлення перервано
LdrCannotExecTemp=Неможливо виконати файл в тимчасовій папці. Встановлення перервано
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nПомилка %2: %3
SetupFileMissing=Файл %1 відсутній в папці встановлення. Будь ласка, виправте цю помилку або отримайте нову копію програми.
SetupFileCorrupt=Файли встановлення пошкоджені. Будь ласка, отримайте нову копію програми.
SetupFileCorruptOrWrongVer=Файли встановлення пошкоджені або несумісні з цією версією програми встановлення. Будь ласка, виправте цю помилку або отримайте нову копію програми.
InvalidParameter=Командний рядок містить недопустимий параметр:%n%n%1
SetupAlreadyRunning=Програма встановлення вже запущена.
WindowsVersionNotSupported=Ця програма не підтримує версію Windows, встановлену на цьому комп'ютері.
WindowsServicePackRequired=Ця програма вимагає %1 Service Pack %2 або більш пізню версію.
NotOnThisPlatform=Ця програма не буде працювати під %1.
OnlyOnThisPlatform=Ця програма повинна бути відкрита під %1.
OnlyOnTheseArchitectures=Ця програма може бути встановлена лише на комп'ютерах під управлінням Windows для наступних архітектур процесорів:%n%n%1
WinVersionTooLowError=Ця програма вимагає %1 версії %2 або більш пізню версію.
WinVersionTooHighError=Ця програма не може бути встановлена на %1 версії %2 або більш пізню версію.
AdminPrivilegesRequired=Щоб встановити цю програму ви повинні увійти до системи як адміністратор.
PowerUserPrivilegesRequired=Щоб встановити цю програму ви повинні увійти до системи як адміністратор або як член групи «Досвідчені користувачі».
SetupAppRunningError=Виявлено, що %1 вже відкрита.%n%nБудь ласка, закрийте всі копії програми та натисніть «OK» для продовження, або «Скасувати» для виходу.
UninstallAppRunningError=Виявлено, що %1 вже відкрита.%n%nБудь ласка, закрийте всі копії програми та натисніть «OK» для продовження, або «Скасувати» для виходу.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Вибір режиму встановлення
PrivilegesRequiredOverrideInstruction=Виберіть режим встановлення
PrivilegesRequiredOverrideText1=%1 може бути встановлено для всіх користувачів (потребує права адміністратора), або тільки для вас.
PrivilegesRequiredOverrideText2=%1 може бути встановлено тільки для вас, або для всіх користувачів (потребує права адміністратора).
PrivilegesRequiredOverrideAllUsers=Встановити для &всіх користувачів
PrivilegesRequiredOverrideAllUsersRecommended=Встановити для &всіх користувачів (рекомендується)
PrivilegesRequiredOverrideCurrentUser=Встановити тільки для мене
PrivilegesRequiredOverrideCurrentUserRecommended=Встановити тільки для &мене (рекомендується)

; *** Різні помилки
ErrorCreatingDir=Програмі встановлення не вдалося створити папку "%1"
ErrorTooManyFilesInDir=Програмі встановлення не вдалося створити файл в папці "%1", тому що в ньому занадто багато файлів

; *** Спільні повідомлення програми
ExitSetupTitle=Вихід з програми встановлення
ExitSetupMessage=Встановлення не завершено. Якщо ви вийдете зараз, програму не буде встановлено.%n%nВи можете відкрити програму встановлення в іншим часом.%n%nВийти з програми встановлення?
AboutSetupMenuItem=&Про програму встановлення...
AboutSetupTitle=Про програму встановлення
AboutSetupMessage=%1 версія %2%n%3%n%n%1 домашня сторінка:%n%4
AboutSetupNote=
TranslatorNote=Ukrainian translation by Dmytro Onyshchuk

; *** Кнопки
ButtonBack=< &Назад
ButtonNext=&Далі >
ButtonInstall=&Встановити
ButtonOK=OK
ButtonCancel=Скасувати
ButtonYes=&Так
ButtonYesToAll=Так для &Всіх
ButtonNo=&Ні
ButtonNoToAll=Н&і для Всіх
ButtonFinish=&Готово
ButtonBrowse=&Огляд...
ButtonWizardBrowse=О&гляд...
ButtonNewFolder=&Створити папку

; *** Діалогове повідомлення "Вибір мови"
SelectLanguageTitle=Виберіть мову встановлення
SelectLanguageLabel=Виберіть мову, яка буде використовуватися під час встановлення.

; *** Спільний тест програми
ClickNext=Натисніть «Далі», щоб продовжити, або «Скасувати» для виходу з програми встановлення.
BeveledLabel=
BrowseDialogTitle=Огляд папок
BrowseDialogLabel=Виберіть папку зі списку та натисніть «ОК».
NewFolderName=Нова папка

; *** Сторінка "Привітання"
WelcomeLabel1=Ласкаво просимо до програми встановлення [name].
WelcomeLabel2=Ця програма встановить [name/ver] на ваш комп’ютер.%n%nРекомендується закрити всі інші програми перед продовженням.

; *** Сторінка "Пароль"
WizardPassword=Пароль
PasswordLabel1=Ця програма встановлення захищена паролем.
PasswordLabel3=Будь ласка, введіть пароль та натисніть «Далі», щоб продовжити. Пароль чутливий до регістру.
PasswordEditLabel=&Пароль:
IncorrectPassword=Ви ввели неправильний пароль. Будь ласка, спробуйте ще раз.

; *** Сторінка "Ліцензійна угода"
WizardLicense=Ліцензійна угода
LicenseLabel=Будь ласка, прочитайте ліцензійну угоду.
LicenseLabel3=Будь ласка, прочитайте ліцензійну угоду. Ви повинні прийняти умови цієї угоди, перш ніж продовжити встановлення.
LicenseAccepted=Я &приймаю умови угоди
LicenseNotAccepted=Я &не приймаю умови угоди

; *** Сторінка "Інформація"
WizardInfoBefore=Інформація
InfoBeforeLabel=Будь ласка, прочитайте наступну важливу інформацію, перш ніж продовжити.
InfoBeforeClickLabel=Якщо ви готові продовжити встановлення, натисніть «Далі».
WizardInfoAfter=Інформація
InfoAfterLabel=Будь ласка, прочитайте наступну важливу інформацію, перш ніж продовжити.
InfoAfterClickLabel=Якщо ви готові продовжити встановлення, натисніть «Далі».

; *** Сторінка "Інформація про користувача"
WizardUserInfo=Інформація про користувача
UserInfoDesc=Будь ласка, введіть дані про себе.
UserInfoName=&Ім’я користувача:
UserInfoOrg=&Організація:
UserInfoSerial=&Серійний номер:
UserInfoNameRequired=Ви повинні ввести ім'я.

; *** Сторінка "Вибір шляху встановлення"
WizardSelectDir=Вибір шляху встановлення
SelectDirDesc=Куди ви бажаєте встановити [name]?
SelectDirLabel3=Програма встановить [name] у наступну папку.
SelectDirBrowseLabel=Натисніть «Далі», щоб продовжити. Якщо ви бажаєте вибрати іншу папку, натисніть «Огляд».
DiskSpaceGBLabel=Необхідно як мінімум [gb] Гб вільного дискового простору.
DiskSpaceMBLabel=Необхідно як мінімум [mb] Mб вільного дискового простору.
CannotInstallToNetworkDrive=Встановлення не може проводитися на мережевий диск.
CannotInstallToUNCPath=Встановлення не може проводитися по мережевому шляху.
InvalidPath=Ви повинні вказати повний шлях з буквою диску, наприклад:%n%nC:\APP%n%nабо в форматі UNC:%n%n\\сервер\ресурс
InvalidDrive=Обраний Вами диск чи мережевий шлях не існує, або не доступний. Будь ласка, виберіть інший.
DiskSpaceWarningTitle=Недостатньо дискового простору
DiskSpaceWarning=Для встановлення необхідно як мінімум %1 Кб вільного простору, а на вибраному диску доступно лише %2 Кб.%n%nВи все одно бажаєте продовжити?
DirNameTooLong=Ім'я папки або шлях до неї перевищують допустиму довжину.
InvalidDirName=Вказане ім’я папки недопустиме.
BadDirName32=Ім'я папки не може включати наступні символи:%n%n%1
DirExistsTitle=Папка існує
DirExists=Папка:%n%n%1%n%nвже існує. Ви все одно бажаєте встановити в цю папку?
DirDoesntExistTitle=Папка не існує
DirDoesntExist=Папка:%n%n%1%n%nне існує. Ви бажаєте створити її?

; *** Сторінка "Вибір компонентів"
WizardSelectComponents=Вибір компонентів
SelectComponentsDesc=Які компоненти ви бажаєте встановити?
SelectComponentsLabel2=Виберіть компоненти які ви бажаєте встановити; зніміть відмітку з компонентів які ви не бажаєте встановлювати. Натисніть «Далі», щоб продовжити.
FullInstallation=Повне встановлення
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Компактне встановлення
CustomInstallation=Вибіркове встановлення
NoUninstallWarningTitle=Компоненти існують
NoUninstallWarning=Виявлено, що наступні компоненти вже встановленні на вашому комп’ютері:%n%n%1%n%nВідміна вибору цих компонентів не видалить їх.%n%nВи бажаєте продовжити?
ComponentSize1=%1 Kб
ComponentSize2=%1 Mб
ComponentsDiskSpaceGBLabel=Даний вибір вимагає як мінімум [gb] Гб дискового простору.
ComponentsDiskSpaceMBLabel=Даний вибір вимагає як мінімум [mb] Mб дискового простору.

; *** Сторінка "Вибір додаткових завдань"
WizardSelectTasks=Вибір додаткових завдань
SelectTasksDesc=Які додаткові завдання ви бажаєте виконати?
SelectTasksLabel2=Виберіть додаткові завдання які програма встановлення [name] повинна виконати, потім натисніть «Далі».

; *** Сторінка "Вибір папки в меню «Пуск»"
WizardSelectProgramGroup=Вибір папки в меню «Пуск»
SelectStartMenuFolderDesc=Де ви бажаєте створити ярлики?
SelectStartMenuFolderLabel3=Програма встановлення створить ярлики у наступній папці меню «Пуск».
SelectStartMenuFolderBrowseLabel=Натисніть «Далі», щоб продовжити. Якщо ви бажаєте вибрати іншу папку, натисніть «Огляд».
MustEnterGroupName=Ви повинні ввести ім'я папки.
GroupNameTooLong=Ім’я папки або шлях до неї перевищують допустиму довжину.
InvalidGroupName=Вказане ім’я папки недопустиме.
BadGroupName=Ім'я папки не може включати наступні символи:%n%n%1
NoProgramGroupCheck2=&Не створювати папку в меню «Пуск»

; *** Сторінка "Усе готово до встановлення"
WizardReady=Усе готово до встановлення
ReadyLabel1=Програма готова розпочати встановлення [name] на ваш комп’ютер.
ReadyLabel2a=Натисніть «Встановити» для продовження встановлення, або «Назад», якщо ви бажаєте переглянути або змінити налаштування встановлення.
ReadyLabel2b=Натисніть «Встановити» для продовження.
ReadyMemoUserInfo=Дані про користувача:
ReadyMemoDir=Шлях встановлення:
ReadyMemoType=Тип встановлення:
ReadyMemoComponents=Вибрані компоненти:
ReadyMemoGroup=Папка в меню «Пуск»:
ReadyMemoTasks=Додаткові завдання:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Завантаження додаткових файлів...
ButtonStopDownload=&Перервати завантаження
StopDownload=Ви дійсно бажаєте перервати завантаження?
ErrorDownloadAborted=Завантаження перервано
ErrorDownloadFailed=Помилка завантаження: %1 %2
ErrorDownloadSizeFailed=Помилка отримання розміру: %1 %2
ErrorFileHash1=Помилка хешу файлу: %1
ErrorFileHash2=Невірний хеш файлу: очікувався %1, отриманий %2
ErrorProgress=Помилка виконання: %1 з %2
ErrorFileSize=Невірний розмір файлу: очікувався %1, отриманий %2

; *** Сторінка "Підготовка до встановлення"
WizardPreparing=Підготовка до встановлення
PreparingDesc=Програма встановлення готується до встановлення [name] на ваш комп’ютер.
PreviousInstallNotCompleted=Встановлення або видалення попередньої програми не було завершено. Вам потрібно перезавантажити ваш комп’ютер для завершення минулого встановлення.%n%nПісля перезавантаження відкрийте програму встановлення знову, щоб завершити встановлення [name].
CannotContinue=Встановлення неможливо продовжити. Будь ласка, натисніть «Скасувати» для виходу.
ApplicationsFound=Наступні програми використовують файли, які повинні бути оновлені програмою встановлення. Рекомендується дозволили програмі встановлення автоматично закрити ці програми.
ApplicationsFound2=Наступні програми використовують файли, які повинні бути оновлені програмою встановлення. Рекомендується дозволили програмі встановлення автоматично закрити ці програми. Після завершення встановлення, програма встановлення спробує знову запустити їх.
CloseApplications=&Автоматично закрити програми
DontCloseApplications=&Не закривати програми
ErrorCloseApplications=Програма встановлення не може автоматично закрити всі програми. Рекомендується закрити всі програми, що використовують файли, які повинні бути оновлені програмою встановлення, перш ніж продовжити.
PrepareToInstallNeedsRestart=Програмі встановлення необхідно перезавантажити ваш ПК. Після перезавантаження ПК, запустіть встановлення знову для завершення встановлення [name]%n%nВи бажаєте перезавантажити зараз?

; *** Сторінка "Встановлення"
WizardInstalling=Встановлення
InstallingLabel=Будь ласка, зачекайте, поки [name] встановиться на ваш комп'ютер.

; *** Сторінка "Встановлення завершено"
FinishedHeadingLabel=Завершення встановлення [name]
FinishedLabelNoIcons=Встановлення [name] на ваш комп’ютер завершено.
FinishedLabel=Встановлення [name] на ваш комп’ютер завершено. Встановлені програми можна відкрити за допомогою створених ярликів.
ClickFinish=Натисніть «Готово» для виходу з програми встановлення.
FinishedRestartLabel=Для завершення встановлення [name] необхідно перезавантажити ваш комп’ютер. Перезавантажити комп’ютер зараз?
FinishedRestartMessage=Для завершення встановлення [name] необхідно перезавантажити ваш комп’ютер.%n%nПерезавантажити комп’ютер зараз?
ShowReadmeCheck=Так, я хочу переглянути файл README
YesRadio=&Так, перезавантажити комп’ютер зараз
NoRadio=&Ні, я перезавантажу комп’ютер пізніше
; used for example as 'Run MyProg.exe'
RunEntryExec=Відкрити %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Переглянути %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Необхідно вставити наступний диск
SelectDiskLabel2=Будь ласка, вставте диск %1 і натисніть «OK».%n%nЯкщо потрібні файли можуть знаходитися в іншій папці, на відміну від вказаної нижче, введіть правильний шлях або натисніть «Огляд».
PathLabel=&Шлях:
FileNotInDir2=Файл "%1" не знайдений в "%2". Будь ласка, вставте належний диск або вкажіть іншу папку.
SelectDirectoryLabel=Будь ласка, вкажіть шлях до наступного диску.

; *** Installation phase messages
SetupAborted=Встановлення не завершено.%n%nБудь ласка, усуньте проблему і відкрийте програму встановлення знову.
AbortRetryIgnoreSelectAction=Виберіть дію
AbortRetryIgnoreRetry=&Спробувати знову
AbortRetryIgnoreIgnore=&Ігнорувати помилку та продовжити
AbortRetryIgnoreCancel=Відмінити встановлення

; *** Повідомлення стану встановлення
StatusClosingApplications=Закриття програм...
StatusCreateDirs=Створення папок...
StatusExtractFiles=Розпакування файлів...
StatusCreateIcons=Створення ярликів...
StatusCreateIniEntries=Створення INI записів...
StatusCreateRegistryEntries=Створення записів реєстру...
StatusRegisterFiles=Реєстрація файлів...
StatusSavingUninstall=Збереження інформації для видалення...
StatusRunProgram=Завершення встановлення...
StatusRestartingApplications=Перезапуск програм...
StatusRollback=Скасування змін...

; *** Різні помилки
ErrorInternal2=Внутрішня помилка: %1
ErrorFunctionFailedNoCode=%1 збій
ErrorFunctionFailed=%1 збій; код %2
ErrorFunctionFailedWithMessage=%1 збій; код %2.%n%3
ErrorExecutingProgram=Неможливо виконати файл:%n%1

; *** Помилки реєстру
ErrorRegOpenKey=Помилка відкриття ключа реєстру:%n%1\%2
ErrorRegCreateKey=Помилка створення ключа реєстру:%n%1\%2
ErrorRegWriteKey=Помилка запису в ключ реєстру:%n%1\%2

; *** Помилки INI
ErrorIniEntry=Помилка при створенні запису в INI-файлі "%1".

; *** Помилки копіювання файлів
FileAbortRetryIgnoreSkipNotRecommended=&Пропустити файл (не рекомендується)
FileAbortRetryIgnoreIgnoreNotRecommended=&Ігнорувати помилку та продовжити (не рекомендується)
SourceIsCorrupted=Вихідний файл пошкоджений
SourceDoesntExist=Вихідний файл "%1" не існує
ExistingFileReadOnly2=Неможливо замінити існуючий файл, оскільки він позначений лише для читання.
ExistingFileReadOnlyRetry=&Видалити атрибут "лише читання" та спробувати знову
ExistingFileReadOnlyKeepExisting=&Залишити існуючий файл
ErrorReadingExistingDest=Виникла помилка при спробі читання існуючого файлу:
FileExistsSelectAction=Виберіть дію
FileExists2=Файл вже існує.
FileExistsOverwriteExisting=&Замінити існуючий файл
FileExistsKeepExisting=&Зберегти існуючий файл
FileExistsOverwriteOrKeepAll=&Повторити дію для всіх подальших конфліктів
ExistingFileNewerSelectAction=Виберіть дію
ExistingFileNewer2=Існуючий файл новіший, ніж встановлюваємий.
ExistingFileNewerOverwriteExisting=&Замінити існуючий файл
ExistingFileNewerKeepExisting=&Зберегти існуючий файл (рекомендується)
ExistingFileNewerOverwriteOrKeepAll=&Повторити дію для всіх подальших конфліктів
ErrorChangingAttr=Виникла помилка при спробі зміни атрибутів існуючого файлу:
ErrorCreatingTemp=Виникла помилка при спробі створення файлу в папці встановлення:
ErrorReadingSource=Виникла помилка при спробі читання вихідного файлу:
ErrorCopying=Виникла помилка при спробі копіювання файлу:
ErrorReplacingExistingFile=Виникла помилка при спробі заміни існуючого файлу:
ErrorRestartReplace=Помилка RestartReplace:
ErrorRenamingTemp=Виникла помилка при спробі перейменування файлу в папці встановлення:
ErrorRegisterServer=Неможливо зареєструвати DLL/OCX: %1
ErrorRegSvr32Failed=Помилка при виконанні RegSvr32, код повернення %1
ErrorRegisterTypeLib=Неможливо зареєструвати бібліотеку типів: %1

; *** Uninstall display name markings
UninstallDisplayNameMark=%1 (%2)
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-біт
UninstallDisplayNameMark64Bit=64-біт
UninstallDisplayNameMarkAllUsers=Всі користувачі
UninstallDisplayNameMarkCurrentUser=Поточний користувач

; *** Post-installation errors
ErrorOpeningReadme=Виникла помилка при спробі відкриття файлу README.
ErrorRestartingComputer=Програмі встановлення не вдалося перезавантажити комп'ютер. Будь ласка, виконайте це самостійно.

; *** Повідомлення видалення
UninstallNotFound=Файл "%1" не існує, видалення неможливе.
UninstallOpenError=Неможливо відкрити файл "%1". Видалення неможливе
UninstallUnsupportedVer=Файл протоколу для видалення "%1" не розпізнаний даною версією програми видалення. Видалення неможливе
UninstallUnknownEntry=Невідомий запис (%1) в файлі протоколу для видалення
ConfirmUninstall=Ви впевнені, що бажаєте видалити %1 і всі його компоненти?
UninstallOnlyOnWin64=Цю програму можливо видалити лише у середовищі 64-бітної версії Windows.
OnlyAdminCanUninstall=Ця програма може бути видалена лише користувачем з правами адміністратора.
UninstallStatusLabel=Будь ласка, зачекайте, поки %1 видалиться з вашого комп'ютера.
UninstalledAll=%1 успішно видалено з вашого комп'ютера.
UninstalledMost=Видалення %1 завершено.%n%nДеякі елемент неможливо видалити. Ви можете видалити їх вручну.
UninstalledAndNeedsRestart=Для завершення видалення %1 необхідно перезавантажити ваш комп’ютер.%n%nПерезавантажити комп’ютер зараз?
UninstallDataCorrupted=Файл "%1" пошкоджений. Видалення неможливе

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Видалити загальні файли?
ConfirmDeleteSharedFile2=Система свідчить, що наступний спільний файл більше не використовується іншими програмами. Ви бажаєте видалити цей спільний файл?%n%nЯкщо інші програми все ще використовують цей файл і він видалиться, то ці програми можуть функціонувати неправильно. Якщо ви не впевнені, виберіть «Ні». Залишений файл не нашкодить вашій системі.
SharedFileNameLabel=Ім'я файлу:
SharedFileLocationLabel=Розміщення:
WizardUninstalling=Стан видалення
StatusUninstalling=Видалення %1...


; *** Причини блокування вимкнення
ShutdownBlockReasonInstallingApp=Встановлення %1.
ShutdownBlockReasonUninstallingApp=Видалення %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1, версія %2
AdditionalIcons=Додаткові ярлики:
CreateDesktopIcon=Створити ярлики на &Робочому столі
CreateQuickLaunchIcon=Створити ярлики на &Панелі швидкого запуску
ProgramOnTheWeb=Сайт %1 в Інтернеті
UninstallProgram=Видалити %1
LaunchProgram=Відкрити %1
AssocFileExtension=&Асоціювати %1 з розширенням файлу %2
AssocingFileExtension=Асоціювання %1 з розширенням файлу %2...
AutoStartProgramGroupDescription=Автозавантаження:
AutoStartProgram=Автоматично завантажувати %1
AddonHostProgramNotFound=%1 не знайдений у вказаній вами папці%n%nВи все одно бажаєте продовжити?
