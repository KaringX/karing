; *** Inno Setup version 6.1.0+ Armenian messages ***
;
; Armenian translation by Hrant Ohanyan
; E-mail: h.ohanyan@haysoft.org
; Translation home page: http://www.haysoft.org
; Last modification date: 2020-10-06
;
[LangOptions]
LanguageName=Հայերեն
LanguageID=$042B
LanguageCodePage=0
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
SetupAppTitle=Տեղադրում
SetupWindowTitle=%1-ի տեղադրում
UninstallAppTitle=Ապատեղադրում
UninstallAppFullTitle=%1-ի ապատեղադրում

; *** Misc. common
InformationTitle=Տեղեկություն
ConfirmTitle=Հաստատել
ErrorTitle=Սխալ

; *** SetupLdr messages
SetupLdrStartupMessage=Այս ծրագիրը կտեղադրի %1-ը Ձեր համակարգչում։ Շարունակե՞լ։
LdrCannotCreateTemp=Հնարավոր չէ ստեղծել ժամանակավոր ֆայլ։ Տեղադրումը կասեցված է
LdrCannotExecTemp=Հնարավոր չէ կատարել ֆայլը ժամանակավոր պանակից։ Տեղադրումը կասեցված է

; *** Startup error messages
LastErrorMessage=%1.%n%nՍխալ %2: %3
SetupFileMissing=%1 ֆայլը բացակայում է տեղադրման պանակից։ Ուղղեք խնդիրը կամ ստացեք ծրագրի նոր տարբերակը։
SetupFileCorrupt=Տեղադրվող ֆայլերը վնասված են։
SetupFileCorruptOrWrongVer=Տեղադրվող ֆայլերը վնասված են կամ անհամատեղելի են տեղակայիչի այս տարբերակի հետ։ Ուղղեք խնդիրը կամ ստացեք ծրագրի նոր տարբերակը։
InvalidParameter=Հրամանատողում նշված է սխալ հրաման.%n%n%1
SetupAlreadyRunning=Տեղակայիչը արդեն աշխատեցված է։
WindowsVersionNotSupported=Ծրագիրը չի աջակցում այս համակարգչում աշխատող Windows-ի տարբերակը։
WindowsServicePackRequired=Ծրագիրը պահանջում է %1-ի Service Pack %2 կամ ավելի նոր։
NotOnThisPlatform=Այս ծրագիրը չի աշխատի %1-ում։
OnlyOnThisPlatform=Այս ծրագիրը հնարավոր է բացել միայն %1-ում։
OnlyOnTheseArchitectures=Այս ծրագրի տեղադրումը հնարավոր է միայն Windows-ի մշակիչի հետևյալ կառուցվածքներում՝ %n%n%1
WinVersionTooLowError=Այս ծրագիրը պահանջում է %1-ի տարբերակ %2 կամ ավելի նորը։
WinVersionTooHighError=Ծրագիրը չի կարող տեղադրվել %1-ի տարբերակ %2 կամ ավելի նորում
AdminPrivilegesRequired=Ծրագիրը տեղադրելու համար պահանջվում են Վարիչի իրավունքներ։
PowerUserPrivilegesRequired=Ծրագիրը տեղադրելու համար պետք է մուտք գործել համակարգ որպես Վարիչ կամ «Փորձառու օգտագործող» (Power Users):
SetupAppRunningError=Տեղակայիչը հայտնաբերել է, որ %1-ը աշխատում է։%n%nՓակեք այն և սեղմեք «Լավ»՝ շարունակելու համար կամ «Չեղարկել»՝ փակելու համար։
UninstallAppRunningError=Ապատեղադրող ծրագիրը հայտնաբերել է, որ %1-ը աշխատում է։%n%nՓակեք այն և սեղմեք «Լավ»՝ շարունակելու համար կամ «Չեղարկել»՝ փակելու համար։

; *** Startup questions
PrivilegesRequiredOverrideTitle=Ընտրեք տեղակայիչի տեղադրման կերպը
PrivilegesRequiredOverrideInstruction=Ընտրեք տեղադրման կերպը
PrivilegesRequiredOverrideText1=%1-ը կարող է տեղադրվել բոլոր օգտվողների համար (պահանջում է վարիչի արտոնություններ) կամ միայն ձեզ համար:
PrivilegesRequiredOverrideText2=%1-ը կարող է տեղադրվել միայն ձեզ համար կամ բոլոր օգտվողների համար (պահանջում է վարիչի արտոնություններ):
PrivilegesRequiredOverrideAllUsers=Տեղադրել &բոլոր օգտվողների համար
PrivilegesRequiredOverrideAllUsersRecommended=Տեղադրել &բոլոր օգտվողների համար (հանձնարարելի)
PrivilegesRequiredOverrideCurrentUser=Տեղադրել միայն &ինձ համար
PrivilegesRequiredOverrideCurrentUserRecommended=Տեղադրել միայն &ինձ համար (հանձնարարելի)

; *** Misc. errors
ErrorCreatingDir=Հնարավոր չէ ստեղծել "%1" պանակը
ErrorTooManyFilesInDir=Հնարավոր չէ ստեղծել ֆայլ "%1" պանակում, որովհետև նրանում կան չափից ավելի շատ ֆայլեր

; *** Setup common messages
ExitSetupTitle=Տեղակայման ընդհատում
ExitSetupMessage=Տեղակայումը չի ավարատվել։ Եթե ընդհատեք, ապա ծրագիրը չի տեղադրվի։%n%nԱվարտե՞լ։
AboutSetupMenuItem=&Ծրագրի մասին...
AboutSetupTitle=Ծրագրի մասին
AboutSetupMessage=%1, տարբերակ՝ %2%n%3%n%nՎեբ կայք՝ %1:%n%4
AboutSetupNote=
TranslatorNote=Armenian translation by Hrant Ohanyan »»» http://www.haysoft.org

; *** Buttons
ButtonBack=« &Նախորդ
ButtonNext=&Հաջորդ »
ButtonInstall=&Տեղադրել
ButtonOK=Լավ
ButtonCancel=Չեղարկել
ButtonYes=&Այո
ButtonYesToAll=Այո բոլորի &համար
ButtonNo=&Ոչ
ButtonNoToAll=Ո&չ բոլորի համար
ButtonFinish=&Ավարտել
ButtonBrowse=&Ընտրել...
ButtonWizardBrowse=&Ընտրել...
ButtonNewFolder=&Ստեղծել պանակ

; *** "Select Language" dialog messages
SelectLanguageTitle=Ընտրել տեղակայիչի լեզուն
SelectLanguageLabel=Ընտրեք այն լեզուն, որը օգտագործվելու է տեղադրման ընթացքում:

; *** Common wizard text
ClickNext=Սեղմեք «Հաջորդ»՝ շարունակելու համար կամ «Չեղարկել»՝ տեղակայիչը փակելու համար։
BeveledLabel=
BrowseDialogTitle=Ընտրել պանակ
BrowseDialogLabel=Ընտրեք պանակը ցանկից և սեղմեք «Լավ»։
NewFolderName=Նոր պանակ

; *** "Welcome" wizard page
WelcomeLabel1=Ձեզ ողջունում է [name]-ի տեղակայման օգնականը
WelcomeLabel2=Ծրագիրը կտեղադրի [name/ver]-ը Ձեր համակարգչում։%n%nՇարունակելուց առաջ խորհուրդ ենք տալիս փակել բոլոր աշխատող ծրագրերը։ 

; *** "Password" wizard page
WizardPassword=Գաղտնաբառ
PasswordLabel1=Ծրագիրը պաշտպանված է գաղտնաբառով։
PasswordLabel3=Մուտքագրեք գաղտնաբառը և սեղմեք «Հաջորդ»։
PasswordEditLabel=&Գաղտնաբառ.
IncorrectPassword=Մուտքագրված գաղտնաբառը սխալ է, կրկին փորձեք։

; *** "License Agreement" wizard page
WizardLicense=Արտոնագրային համաձայնագիր
LicenseLabel=Խնդրում ենք շարունակելուց առաջ կարդալ հետևյալ տեղեկությունը։
LicenseLabel3=Կարդացեք արտոնագրային համաձայնագիրը։ Շարունակելուց առաջ պետք է ընդունեք նշված պայմանները։
LicenseAccepted=&Ընդունում եմ արտոնագրային համաձայնագիրը
LicenseNotAccepted=&Չեմ ընդունում արտոնագրային համաձայնագիրը

; *** "Information" wizard pages
WizardInfoBefore=Տեղեկություն
InfoBeforeLabel=Շարունակելուց առաջ կարդացեք այս տեղեկությունը։
InfoBeforeClickLabel=Եթե պատրաստ եք սեղմեք «Հաջորդը»։
WizardInfoAfter=Տեղեկություն
InfoAfterLabel=Շարունակելուց առաջ կարդացեք այս տեղեկությունը։
InfoAfterClickLabel=Երբ պատրաստ լինեք շարունակելու՝ սեղմեք «Հաջորդ»։

; *** "User Information" wizard page
WizardUserInfo=Տեղեկություն օգտվողի մասին
UserInfoDesc=Գրեք տվյալներ Ձեր մասին
UserInfoName=&Օգտվողի անուն և ազգանուն.
UserInfoOrg=&Կազմակերպություն.
UserInfoSerial=&Հերթական համար.
UserInfoNameRequired=Պետք է գրեք Ձեր անունը։

; *** "Select Destination Location" wizard page
WizardSelectDir=Ընտրել տեղակադրման պանակը
SelectDirDesc=Ո՞ր պանակում տեղադրել [name]-ը։
SelectDirLabel3=Ծրագիրը կտեղադրի [name]-ը հետևյալ պանակում։
SelectDirBrowseLabel=Սեղմեք «Հաջորդ»՝ շարունակելու համար։ Եթե ցանկանում եք ընտրել այլ պանակ՝ սեղմեք «Ընտրել»։
DiskSpaceGBLabel=Առնվազն [gb] ԳԲ ազատ տեղ է պահանջվում:
DiskSpaceMBLabel=Առնվազն [mb] ՄԲ ազատ տեղ է պահանջվում:
CannotInstallToNetworkDrive=Հնարավոր չէ տեղադրել Ցանցային հիշասարքում։
CannotInstallToUNCPath=Հնարավոր չէ տեղադրել UNC ուղիում։
InvalidPath=Պետք է նշեք ամբողջական ուղին՝ հիշասարքի տառով, օրինակ՝%n%nC:\APP%n%nկամ UNC ուղի՝ %n%n\\սպասարկիչի_անունը\ռեսուրսի_անունը
InvalidDrive=Ընտրված հիշասարքը կամ ցանցային ուղին գոյություն չունեն կամ անհասանելի են։ Ընտրեք այլ ուղի։
DiskSpaceWarningTitle=Չկա պահանջվող չափով ազատ տեղ
DiskSpaceWarning=Առնվազն %1 ԿԲ ազատ տեղ է պահանջվում, մինչդեռ հասանելի է ընդամենը %2 ԿԲ։%n%nԱյնուհանդերձ, շարունակե՞լ։
DirNameTooLong=Պանակի անունը կամ ուղին երկար են:
InvalidDirName=Պանակի նշված անունը անընդունելի է։
BadDirName32=Անվան մեջ չպետք է լինեն հետևյալ գրանշանները՝ %n%n%1
DirExistsTitle=Թղթապանակը գոյություն ունի
DirExists=%n%n%1%n%n պանակը արդեն գոյություն ունի։ Այնուհանդերձ, տեղադրե՞լ այստեղ։
DirDoesntExistTitle=Պանակ գոյություն չունի
DirDoesntExist=%n%n%1%n%n պանակը գոյություն չունի։ Ստեղծե՞լ այն։

; *** "Select Components" wizard page
WizardSelectComponents=Ընտրել բաղադրիչներ
SelectComponentsDesc=Ո՞ր ֆայլերը պետք է տեղադրվեն։
SelectComponentsLabel2=Նշեք այն ֆայլերը, որոնք պետք է տեղադրվեն, ապանշեք նրանք, որոնք չպետք է տեղադրվեն։ Սեղմեք «Հաջորդ»՝ շարունակելու համար։
FullInstallation=Լրիվ տեղադրում
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Սեղմված տեղադրում
CustomInstallation=Ընտրովի տեղադրում
NoUninstallWarningTitle=Տեղակայվող ֆայլերը
NoUninstallWarning=Տեղակայիչ ծրագիրը հայտնաբերել է, որ հետևյալ բաղադրիչները արդեն տեղադրված են Ձեր համակարգչում։ %n%n%1%n%nԱյս բաղադրիչների ընտրության վերակայումը չի ջնջի դրանք։%n%nՇարունակե՞լ։
ComponentSize1=%1 ԿԲ
ComponentSize2=%1 ՄԲ
ComponentsDiskSpaceGBLabel=Ընթացիկ ընտրումը պահանջում է առնվազն [gb] ԳԲ տեղ հիշասարքում:
ComponentsDiskSpaceMBLabel=Տվյալ ընտրությունը պահանջում է ամենաքիչը [mb] ՄԲ տեղ հիշասարքում:

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Լրացուցիչ առաջադրանքներ
SelectTasksDesc=Ի՞նչ լրացուցիչ առաջադրանքներ պետք է կատարվեն։
SelectTasksLabel2=Ընտրեք լրացուցիչ առաջադրանքներ, որոնք պետք է կատարվեն [name]-ի տեղադրման ընթացքում, ապա սեղմեք «Հաջորդ».

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Ընտրել «Մեկնարկ» ցանկի պանակը
SelectStartMenuFolderDesc=Որտե՞ղ ստեղծել դյուրանցումներ.
SelectStartMenuFolderLabel3=Ծրագիրը կստեղծի դյուրանցումներ «Մեկնարկ» ցանկի հետևյալ պանակում։
SelectStartMenuFolderBrowseLabel=Սեղմեք «Հաջորդ»՝ շարունակելու համար։ Եթե ցանկանում եք ընտրեք այլ պանակ՝ սեղմեք «Ընտրել»։
MustEnterGroupName=Պետք է գրել պանակի անունը։
GroupNameTooLong=Պանակի անունը կամ ուղին շատ երկար են։
InvalidGroupName=Նշված անունը անընդունելի է։
BadGroupName=Անվան մեջ չպետք է լինեն հետևյալ գրանշանները՝ %n%n%1
NoProgramGroupCheck2=&Չստեղծել պանակ «Մեկնարկ» ցանկում

; *** "Ready to Install" wizard page
WizardReady=Պատրաստ է
ReadyLabel1=Տեղակայիչը պատրաստ է սկսել [name]-ի տեղադրումը։
ReadyLabel2a=Սեղմեք «Տեղադրել»՝ շարունակելու համար կամ «Նախորդ»՝ եթե ցանկանում եք դիտել կամ փոփոխել տեղադրելու կարգավորումները։
ReadyLabel2b=Սեղմեք «Տեղադրել»՝ շարունակելու համար։
ReadyMemoUserInfo=Տեղեկություն օգտվողի մասին.
ReadyMemoDir=Տեղադրելու պանակ.
ReadyMemoType=Տեղադրման ձև.
ReadyMemoComponents=Ընտրված բաղադրիչներ.
ReadyMemoGroup=Թղթապանակ «Մեկնարկ» ցանկում.
ReadyMemoTasks=Լրացուցիչ առաջադրանքներ.
; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Լրացուցիչ ֆայլերի ներբեռնում...
ButtonStopDownload=&Կանգնեցնել ներբեռնումը
StopDownload=Համոզվա՞ծ եք, որ պետք է կանգնեցնել ներբեռնումը:
ErrorDownloadAborted=Ներբեռնումը կասեցված է
ErrorDownloadFailed=Ներբեռնումը ձախողվեց. %1 %2
ErrorDownloadSizeFailed=Չափի ստացումը ձախողվեց. %1 %2
ErrorFileHash1=Ֆահլի հաշվեգումարը ձախողվեց. %1
ErrorFileHash2=Ֆայլի անվավեր հաշվեգումար. ակընկալվում էր %1, գտնվել է %2
ErrorProgress=Անվավեր ընթացք. %1-ը %2-ից
ErrorFileSize=Ֆայլի անվավեր աչփ. ակընկալվում էր %1, գտնվել է %2
; *** "Preparing to Install" wizard page
WizardPreparing=Նախատրաստում է տեղադրումը
PreparingDesc=Տեղակայիչը պատրաստվում է տեղադրել [name]-ը ձեր համակարգչում։
PreviousInstallNotCompleted=Այլ ծրագրի տեղադրումը կամ ապատեղադրումը չի ավարտվել։ Այն ավարտելու համար պետք է վերամեկնարկեք համակարգիչը։%n%nՎերամեկնարկելուց հետո կրկին բացեք տեղակայման փաթեթը՝ [name]-ի տեղադրումը ավարտելու համար։
CannotContinue=Հնարավոր չէ շարունակել։ Սեղմեք «Չեղարկել»՝ ծրագիրը փակելու համար։
ApplicationsFound=Հետևյալ ծրագրերը օգտագործում են ֆայլեր, որոնք պետք է թարմացվեն տեղակայիչի կողմից։ Թույլատրեք տեղակայիչին ինքնաբար փակելու այդ ծրագրերը։
ApplicationsFound2=Հետևյալ ծրագրերը օգտագործում են ֆայլեր, որոնք պետք է թարմացվեն տեղակայիչի կողմից։ Թույլատրեք տեղակայիչին ինքնաբար փակելու այդ ծրագրերը։ Տեղադրումը ավարտելուց հետո տեղակայիչը կփորձի վերամեկնարկել այդ ծրագրերը։
CloseApplications=&Ինքնաբար փակել ծրագրերը
DontCloseApplications=&Չփակել ծրագրերը
ErrorCloseApplications=Տեղակայիչը չկարողացավ ինքնաբար փակել բոլոր ծրագրերը: Խորհուրդ ենք տալիս փակել այն բոլոր ծրագրերը, որոնք պետք է թարմացվեն տեղակայիչի կողմից:
PrepareToInstallNeedsRestart=Տեղակայիչը պետք է վերամեկնարկի ձեր համակարգիչը: Դրանից հետո կրկին աշխատեցրեք այն՝ ավարտելու համար [name]-ի տեղադրումը:%n%nՑանկանո՞ւմ եք  վերամեկնարկել հիմա:

; *** "Installing" wizard page
WizardInstalling=Տեղադրում
InstallingLabel=Խնդրում ենք սպասել մինչ [name]-ը կտեղադրվի Ձեր համակարգչում։

; *** "Setup Completed" wizard page
FinishedHeadingLabel=[name]-ի տեղադրման ավարտ
FinishedLabelNoIcons=[name] ծրագիրը տեղադրվել է Ձեր համակարգչում։
FinishedLabel=[name] ծրագիրը տեղադրվել է Ձեր համակարգչում։
ClickFinish=Սեղմեք «Ավարտել»՝ տեղակայիչը փակելու համար։
FinishedRestartLabel=[name]-ի տեղադրումը ավարտելու համար պետք է վերամեկնարկել համակարգիչը։ վերամեկնարկե՞լ հիմա։
FinishedRestartMessage=[name]-ի տեղադրումը ավարտելու համար պետք է վերամեկնարկել համակարգիչը։ %n%վերամեկնարկե՞լ հիմա։
ShowReadmeCheck=Նայել README ֆայլը։
YesRadio=&Այո, վերամեկնարկել
NoRadio=&Ոչ, ես հետո վերամեկնարկեմ
; used for example as 'Run MyProg.exe'
RunEntryExec=Աշխատեցնել %1-ը
; used for example as 'View Readme.txt'
RunEntryShellExec=Նայել %1-ը

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Տեղակայիչը պահանջում է հաջորդ սկավառակը
SelectDiskLabel2=Զետեղեք %1 սկավառակը և սեղմեք «Լավ»։ %n%nԵթե ֆայլերի պանակը գտնվում է այլ տեղ, ապա ընտրեք ճիշտ ուղին կամ սեղմեք «Ընտրել»։
PathLabel=&Ուղին.
FileNotInDir2="%1" ֆայլը չի գտնվել "%2"-ում։ Զետեղեք ճիշտ սկավառակ կամ ընտրեք այլ պանակ։
SelectDirectoryLabel=Խնդրում ենք նշել հաջորդ սկավառակի տեղադրությունը։

; *** Installation phase messages
SetupAborted=Տեղակայումը չի ավարտվել։ %n%nՈւղղեք խնդիրը և կրկին փորձեք։
AbortRetryIgnoreSelectAction=Ընտրեք գործողություն
AbortRetryIgnoreRetry=&Կրկին փորձել
AbortRetryIgnoreIgnore=&Անտեսել սխալը և շարունակել
AbortRetryIgnoreCancel=Չեղարկել տեղադրումը

; *** Installation status messages
StatusClosingApplications=Փակում է ծրագրերը...
StatusCreateDirs=Պանակների ստեղծում...
StatusExtractFiles=Ֆայլերի դուրս բերում...
StatusCreateIcons=Դյուրանցումների ստեղծում...
StatusCreateIniEntries=INI ֆայլերի ստեղծում...
StatusCreateRegistryEntries=Գրանցամատյանի գրանցումների ստեղծում...
StatusRegisterFiles=Ֆայլերի գրանցում...
StatusSavingUninstall=Ապատեղադրելու տեղեկության պահում...
StatusRunProgram=Տեղադրելու ավարտ...
StatusRestartingApplications=Ծրագրերի վերամեկնարկում...
StatusRollback=Փոփոխությունների հետ բերում...

; *** Misc. errors
ErrorInternal2=Ներքին սխալ %1
ErrorFunctionFailedNoCode=%1. վթար
ErrorFunctionFailed=%1. վթար, կոդը՝ %2
ErrorFunctionFailedWithMessage=%1. վթար, կոդը՝ %2.%n%3
ErrorExecutingProgram=Հնարավոր չէ կատարել %n%1 ֆայլը

; *** Registry errors
ErrorRegOpenKey=Գրանցամատյանի բանալին բացելու սխալ՝ %n%1\%2
ErrorRegCreateKey=Գրանցամատյանի բանալին ստեղծելու սխալ՝ %n%1\%2
ErrorRegWriteKey=Գրանցամատյանի բանալիում գրանցում կատարելու սխալ՝ %n%1\%2

; *** INI errors
ErrorIniEntry=Սխալ՝ "%1" INI ֆայլում գրառում կատարելիս։

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=Բաց թողնել այս ֆայլը (խորհուրդ չի տրվում)
FileAbortRetryIgnoreIgnoreNotRecommended=Անտեսել սխալը և շարունակել (խորհուրդ չի տրվում)
SourceIsCorrupted=Սկզբնական ֆայլը վնասված է։
SourceDoesntExist=Սկզբնական "%1" ֆայլը գոյություն չունի
ExistingFileReadOnly2=Առկա ֆայլը չի կարող փոխարինվել, քանի որ այն նշված է որպես միայն կարդալու:
ExistingFileReadOnlyRetry=&Հեռացրեք միայն կարդալ հատկանիշը և կրկին փորձեք
ExistingFileReadOnlyKeepExisting=&Պահել առկա ֆայլը
ErrorReadingExistingDest=Սխալ՝ ֆայլը կարդալիս.
FileExistsSelectAction=Ընտրեք գործողություն
FileExists2=Ֆայլը գոյություն չունի
FileExistsOverwriteExisting=&Վրագրել առկա ֆայլը
FileExistsKeepExisting=&Պահել առկա ֆայլը
FileExistsOverwriteOrKeepAll=&Անել սա հաջորդ բախման ժամանակ
ExistingFileNewerSelectAction=Ընտրեք գործողություն
ExistingFileNewer2=Առկա ֆայլը ավելի նոր է, քան այն, որ տեղակայիչը փորձում է տեղադրել:
ExistingFileNewerOverwriteExisting=&Վրագրել առկա ֆայլը
ExistingFileNewerKeepExisting=&Պահել առկա ֆայլը (հանձնարարելի)
ExistingFileNewerOverwriteOrKeepAll=&Անել սա հաջորդ բախման ժամանակ
ErrorChangingAttr=Սխալ՝ ընթացիկ ֆայլի հատկանիշները փոխելիս.
ErrorCreatingTemp=Սխալ՝ նշված պանակում ֆայլ ստեղծելիս.
ErrorReadingSource=Սխալ՝ ֆայլը կարդալիս.
ErrorCopying=Սխալ՝ ֆայլը պատճենելիս.
ErrorReplacingExistingFile=Սխալ՝ գոյություն ունեցող ֆայլը փոխարինելիս.
ErrorRestartReplace=RestartReplace ձախողում.
ErrorRenamingTemp=Սխալ՝ նպատակակետ պանակում՝ ֆայլը վերանվանելիս.
ErrorRegisterServer=Հնարավոր չէ գրանցել DLL/OCX-ը. %1
ErrorRegSvr32Failed=RegSvr32-ի ձախողում, կոդ՝ %1
ErrorRegisterTypeLib=Հնարավոր չէ գրանցել դարանները՝ %1
; *** Uninstall display name markings
; used for example as 'My Program (32-bit)'
UninstallDisplayNameMark=%1 (%2)
; used for example as 'My Program (32-bit, All users)'
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32 բիթային
UninstallDisplayNameMark64Bit=64 բիթային
UninstallDisplayNameMarkAllUsers=Բոլոր օգտվողները
UninstallDisplayNameMarkCurrentUser=Ընթացիկ օգտվողը

; *** Post-installation errors
ErrorOpeningReadme=Սխալ՝ README ֆայլը բացելիս։
ErrorRestartingComputer=Հնարավոր չեղավ վերամեկնարկել համակարգիչը։ Ինքներդ փորձեք։

; *** Uninstaller messages
UninstallNotFound="%1" ֆայլը գոյություն չունի։ Հնարավոր չէ ապատեղադրել։
UninstallOpenError="%1" ֆայլը հնարավոր չէ բացել: Հնարավոր չէ ապատեղադրել
UninstallUnsupportedVer=Ապատեղադրելու "%1" մատյանի ֆայլը անճանաչելի է ապատեղադրող ծրագրի այս տարբերակի համար։ Հնարավոր չէ ապատեղադրել
UninstallUnknownEntry=Անհայտ գրառում է (%1)՝ հայնաբերվել ապատեղադրելու մատյանում
ConfirmUninstall=Ապատեղադրե՞լ %1-ը և նրա բոլոր բաղադրիչները։
UninstallOnlyOnWin64=Հնարավոր է ապատեղադրել միայն 64 բիթանոց Windows-ում։
OnlyAdminCanUninstall=Հնարավոր է ապատեղադրել միայն Ադմինի իրավունքներով։
UninstallStatusLabel=Խնդրում ենք սպասել, մինչև %1-ը ապատեղադրվում է Ձեր համակարգչից։
UninstalledAll=%1 ծրագիրը ապատեղադրվել է համակարգչից։
UninstalledMost=%1-ը ապատեղադրվեց Ձեր համակարգչից։%n%nՈրոշ ֆայլեր հնարավոր չեղավ հեռացնել։ Ինքներդ հեռացրեք դրանք։
UninstalledAndNeedsRestart=%1-ի ապատեղադրումը ավարտելու համար պետք է վերամեկնարկել համակարգիչը։%n%nՎերամեկնարկե՞լ։
UninstallDataCorrupted="%1" ֆայլը վնասված է։ Հնարավոր չէ ապատեղադրել

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Հեռացնե՞լ համատեղ օգտագործվող ֆայլը։
ConfirmDeleteSharedFile2=Համակարգը նշում է, որ  հետևյալ համատեղ օգտագործվող ֆայլը այլևս չի օգտագործվում այլ ծրագրի կողմից։ Ապատեղադրե՞լ այն։ %n%nԵթե համոզված չեք սեղմեք «Ոչ»։
SharedFileNameLabel=Ֆայլի անուն.
SharedFileLocationLabel=Տեղադրություն.
WizardUninstalling=Ապատեղադրելու վիճակ
StatusUninstalling=%1-ի ապատեղադրում...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=%1-ի տեղադրում։
ShutdownBlockReasonUninstallingApp=%1-ի ապատեղադրում։

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 տարբերակ՝ %2
AdditionalIcons=Լրացուցիչ դյուրանցումներ
CreateDesktopIcon=Ստեղծել դյուրանցում &Աշխատասեղանին
CreateQuickLaunchIcon=Ստեղծել դյուրանցում &Արագ թողարկման գոտում
ProgramOnTheWeb=%1-ի վեբ կայքը
UninstallProgram=%1-ի ապատեղադրում
LaunchProgram=Բացել %1-ը
AssocFileExtension=Հա&մակցել %1-ը %2 ֆայլերի հետ։
AssocingFileExtension=%1-ը համակցվում է %2 ընդլայնումով ֆայլերի հետ...
AutoStartProgramGroupDescription=Ինքնամեկնարկ.
AutoStartProgram=Ինքնաբար մեկնարկել %1-ը
AddonHostProgramNotFound=%1 չի կարող տեղադրվել Ձեր ընտրած պանակում։%n%nՇարունակե՞լ։

