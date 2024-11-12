; *** Inno Setup version 6.1.0+ Hebrew messages (s_h(at)enativ.com) ***
;
;   https://jrsoftware.org/files/istrans/
;	Translated by s_h (s_h@enativ.com) (c) 2020
;


[LangOptions]
LanguageName=<05E2><05D1><05E8><05D9><05EA>
LanguageID=$040D
LanguageCodePage=1255
; If the language you are translating to requires special font faces or
; sizes, uncomment any of the following entries and change them accordingly.
;DialogFontName=
;DialogFontSize=8
;WelcomeFontName=Tahoma
;WelcomeFontSize=11
;TitleFontName=Arial
;TitleFontSize=29
;CopyrightFontName=Arial
;CopyrightFontSize=8
RightToLeft=yes

[Messages]

; *** Application titles
SetupAppTitle=התקנה
SetupWindowTitle=התקנה - %1
UninstallAppTitle=הסרה
UninstallAppFullTitle=הסרת %1

; *** Misc. common
InformationTitle=מידע
ConfirmTitle=אישור
ErrorTitle=שגיאה

; *** SetupLdr messages
SetupLdrStartupMessage=תוכנה זו תתקין את %1 על מחשבך. האם ברצונך להמשיך?
LdrCannotCreateTemp=שגיאה בעת יצירת קובץ זמני. ההתקנה תיסגר
LdrCannotExecTemp=לא ניתן להריץ קובץ בתיקיה הזמנית. לא ניתן להמשיך בהתקנה

; *** Startup error messages
LastErrorMessage=%1.%n%nשגיאה %2: %3
SetupFileMissing=לא ניתן לאתר את הקובץ %1 בתיקיית ההתקנה. אנא תקן את הבעיה או נסה שוב עם עותק חדש של התוכנה.
SetupFileCorrupt=קבצי ההתקנה קטועים. אנא נסה להתקין עם עותק חדש של התוכנה.
SetupFileCorruptOrWrongVer=קבצי ההתקנה קטועים, או שאינם תואמים לגירסה זו של תוכנת ההתקנה. אנא תקן את הבעיה או התקן את התוכנה מהתקנה חדשה.
InvalidParameter=הוכנס פרמט לא חוקי לשורת הפקודה:%n%n%1
SetupAlreadyRunning=התקנה אחרת כבר עובדת.
WindowsVersionNotSupported=תוכנה זו אינה נתמכת במערכת ההפעלה שלך.
WindowsServicePackRequired=התוכנה דורשת שיהיה מותקן %1 חבילת עדכונים %2 או יותר.
NotOnThisPlatform=תוכנה זו לא תפעל על %1.
OnlyOnThisPlatform=תוכנה זו חייבת לפעול על %1.
OnlyOnTheseArchitectures=ניתן להתקין תוכנה זו רק על גירסאות של 'חלונות' שתוכננות לארכיטקטורות מעבד אלו:%n%n%1
WinVersionTooLowError=תוכנה זו מצריכה %1 לפחות בגרסה %2.
WinVersionTooHighError=לא ניתן להתקין תוכנה זו על %1 בגירסה %2 או מאוחרת יותר
AdminPrivilegesRequired=אתה חייב להתחבר כמנהל המחשב כדי להתקין תוכנה זו.
PowerUserPrivilegesRequired=עליך להתחבר כמנהל המחשב, או כחבר של קבוצת 'משתמשי על' כדי להתקין תוכנה זו.
SetupAppRunningError=תוכנת ההתקנה איבחנה כי %1 כרגע פועלת ברקע.%n%nאנא סגור את כל החלונות שלה, ולחץ על 'אישור' להמשך, או 'ביטול' ליציאה.
UninstallAppRunningError=תוכנת ההסרה איבחנה כי %1 כרגע פועלת ברקע.%n%nאנא סגור את כל החלונות שלה, ולחץ על 'אישור' להמשך, או 'ביטול' ליציאה.

; *** Startup questions
PrivilegesRequiredOverrideTitle=בחר את מצה ההתקנה
PrivilegesRequiredOverrideInstruction=בחר מצב התקנה
PrivilegesRequiredOverrideText1=%1 יכול להיות מותקן עבור כל המשתמשים (נדרש הרשאות מנהל), או עבורך בלבד.
PrivilegesRequiredOverrideText2=%1 יכול להיות מותקן עבורך בלבד, או עבור על המשתמשים (נדרש הרשאות מנהל).
PrivilegesRequiredOverrideAllUsers=התקן עבור &כל המשתמשים
PrivilegesRequiredOverrideAllUsersRecommended=התקן עבור &כל המשתמשים (מומלץ)
PrivilegesRequiredOverrideCurrentUser=התקן רק &עבורי
PrivilegesRequiredOverrideCurrentUserRecommended=התקן רק &עבורי (מומלץ)

; *** Misc. errors
ErrorCreatingDir=תוכנת ההתקנה לא הצליחה ליצור את התיקיה "%1"
ErrorTooManyFilesInDir=לא ניתן ליצור קובץ בתיקיה "%1" בגלל שהיא מכילה יותר מדי קבצים

; *** Setup common messages
ExitSetupTitle=יציאה מההתקנה
ExitSetupMessage=ההתקנה עוד לא הסתיימה. אם תצא ממנה עכשיו, התוכנה לא תותקן על מחשבך.%n%nבאפשרותך להפעיל את תוכנת ההתקנה בזמן אחר כדי לסיים את תהליך ההתקנה.%n%nהאם אתה בטוח שברצונך לצאת?
AboutSetupMenuItem=&אודות ההתקנה...
AboutSetupTitle=אודות ההתקנה
AboutSetupMessage=%1 גירסה  %2%n%3%n%n%1 דף הבית:%n%4
AboutSetupNote=
TranslatorNote=סטילגאר

; *** Buttons
ButtonBack=< &הקודם
ButtonNext=&הבא >
ButtonInstall=&התקן
ButtonOK=אישור
ButtonCancel=ביטול
ButtonYes=&כן
ButtonYesToAll=כן ל&הכל
ButtonNo=&לא
ButtonNoToAll=ל&א להכל
ButtonFinish=&סיים
ButtonBrowse=&עיון...
ButtonWizardBrowse=עיון...
ButtonNewFolder=&צור תיקיה חדשה

; *** "Select Language" dialog messages
SelectLanguageTitle=בחר שפת התקנה
SelectLanguageLabel=בחר את שפת ההתקנה של תוכנת ההתקנה.

; *** Common wizard text
ClickNext=לחץ על 'הבא' כדי להמשיך בתהליך ההתקנה, או 'ביטול' ליציאה.
BeveledLabel=
BrowseDialogTitle=בחר תיקיה
BrowseDialogLabel=בחר תיקיה מהרשימה ולחץ על 'אישור'
NewFolderName=תיקיה חדשה

; *** "Welcome" wizard page
WelcomeLabel1=ברוכים הבאים לתוכנת ההתקנה של [name]
WelcomeLabel2=אשף זה ידריך אותך במהלך תהליך התקנת [name/ver] על מחשבך.%n%nמומלץ שתסגור את כל היישומים הפעילים במחשבך לפני ההתקנה.

; *** "Password" wizard page
WizardPassword=סיסמה
PasswordLabel1=ההתקנה מוגנת בסיסמה.
PasswordLabel3=אנא הזן את הסיסמה, ולחץ על 'הבא' כדי להמשיך. באותיות לועזיות, ישנו הבדל בין אותיות קטנות לגדולות.
PasswordEditLabel=&סיסמה:
IncorrectPassword=הסיסמה שהקלדת שגויה. אנא נסה שוב.

; *** "License Agreement" wizard page
WizardLicense=רשיון שימוש
LicenseLabel=אנא קרא את המידע החשוב הבא לפני המשך ההתקנה.
LicenseLabel3=אנא קרא את רשיון השימוש הבא. עליך לקבל את התנאים שבהסכם זה לפני המשך ההתקנה.
LicenseAccepted=אני &מקבל את ההסכם
LicenseNotAccepted=אני &לא מקבל את ההסכם

; *** "Information" wizard pages
WizardInfoBefore=מידע
InfoBeforeLabel=אנא קרא את המידע החשוב הבא לפני המשך ההתקנה.
InfoBeforeClickLabel=כשתהיה מוכן להמשיך בהתקנה, לחץ על 'הבא'.
WizardInfoAfter=מידע
InfoAfterLabel=אנא קרא את המידע החשוב הבא לפני המשך ההתקנה
InfoAfterClickLabel=כשתהיה מוכן להמשיך בהתקנה, לחץ על 'הבא'.

; *** "User Information" wizard page
WizardUserInfo=פרטי המשתמש
UserInfoDesc=אנא הזן את נתוניך.
UserInfoName=&שם משתמש:
UserInfoOrg=&אירגון:
UserInfoSerial=&מספר סידורי:
UserInfoNameRequired=עליך להזין שם.

; *** "Select Destination Location" wizard page
WizardSelectDir=בחר יעד להתקנה
SelectDirDesc=היכן להתקין את [name]?
SelectDirLabel3=תוכנת ההתקנה תתקין את [name] לתוך התיקייה הבאה.
SelectDirBrowseLabel=להמשך, לחץ על 'הבא'. אם ברצונך לבחור תיקיה אחרת להתקנה, לחץ על 'עיון'.
DiskSpaceGBLabel=דרושים להתקנה לפחות [gb] GB של שטח דיסק פנוי.
DiskSpaceMBLabel=דרושים להתקנה לפחות [mb] MB של שטח דיסק פנוי.
CannotInstallToNetworkDrive=לא ניתן להתקין את התוכנה על כונן רשת.
CannotInstallToUNCPath=לא ניתן להתקין את התוכנה בנתיב UNC.
InvalidPath=עליך לספק נתיב מלא עם אות הכונן; לדוגמה:%n%nC:\APP%n%nאו נתיב UNC בתצורה:%n%n\\server\share
InvalidDrive=הכונן או שיתופית ה-UNC שבחרת לא קיימים או שאינם נגישים. אנא בחר כונן או שיתופית אחרים.
DiskSpaceWarningTitle=שטח פנוי אינו מספיק
DiskSpaceWarning=דרוש לפחות %1KB שטח דיסק פנוי להתקנה, אך לכונן שנבחר יש רק %2KB זמינים. האם ברצונך להמשיך למרות זאת?
DirNameTooLong=שם התיקיה או נתיבה ארוך מדי
InvalidDirName=שם התיקיה איננו חוקי.
BadDirName32=שם התיקיה אינו יכול לכלול תווים אלו:%n%n%1
DirExistsTitle=התיקיה קיימת
DirExists=התיקיה:%n%n%1%n%nכבר קיימת. האם ברצונך להתקין לתיקיה זו בכל אופן?
DirDoesntExistTitle=התיקייה אינה קיימת
DirDoesntExist=התיקיה:%n%n%1%n%nאינה קיימת. האם ברצונך שתוכנת ההתקנה תיצור אותה?

; *** "Select Components" wizard page
WizardSelectComponents=בחר רכיבים
SelectComponentsDesc=אילו רכיבים ברצונך להתקין?
SelectComponentsLabel2=בחר את הרכיבים שברצונך להתקין; הסר את הסימון מהרכיבים אותם אין ברצונך להתקין. לחץ על 'הבא' כאשר תהיה מוכן להמשיך.
FullInstallation=התקנה מלאה
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=התקנה בסיסית
CustomInstallation=התקנה מותאמת אישית
NoUninstallWarningTitle=רכיבים קיימים
NoUninstallWarning=תוכנת ההתקנה זיהתה שהרכיבים הבאים כבר מותקנים על מחשבך:%n%n%1%nהסרת הסימון מרכיבים אלו לא תסיר אותם ממחשבך.%n%nהאם ברצונך להמשיך בכל זאת?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceGBLabel=להתקנת הרכיבים שנבחרו דרושים לפחות [gb] GB פנויים על כונן היעד.
ComponentsDiskSpaceMBLabel=להתקנת הרכיבים שנבחרו דרושים לפחות [mb] MB פנויים על כונן היעד.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=בחר משימות נוספות
SelectTasksDesc=אילו משימות נוספות על תוכנת ההתקנה לבצע?
SelectTasksLabel2=בחר את המשימות הנוספות שברצונך שתוכנת ההתקנה תבצע בעת התקנת [name], ולאחר מכן לחץ על 'הבא'.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=בחר תיקייה בתפריט 'התחל'
SelectStartMenuFolderDesc=היכן למקם את קיצורי הדרך לתוכנה?
SelectStartMenuFolderLabel3=תוכנת ההתקנה תיצור קיצורי דרך לתוכנה בתיקיה הבאה בתפריט ה'התחל'.
SelectStartMenuFolderBrowseLabel=להמשך, לחץ על 'הבא'. אם ברצונך לבחור תיקיה אחרת להתקנה, לחץ על 'עיון'.
MustEnterGroupName=אתה חייב לציין שם תיקיה.
GroupNameTooLong=שם התיקיה או נתיבה ארוך מדי
InvalidGroupName=שם התיקיה אינו בר-תוקף.
BadGroupName=שם התיקיה אינו יכול לכלול תווים אלו:%n%n%1
NoProgramGroupCheck2=&אל תיצור תיקיה בתפריט 'התחל'

; *** "Ready to Install" wizard page
WizardReady=מוכן להתקנה
ReadyLabel1=תוכנת ההתקנה מוכנה כעת להתקין את [name] על מחשבך.
ReadyLabel2a=לחץ על 'התקן' להמשיך בהתקנה, או 'חזור' אם ברצונך לשנות הגדרות כלשהן.
ReadyLabel2b=לחץ על 'התקן' כדי להמשיך בהתקנה
ReadyMemoUserInfo=פרטי המשתמש:
ReadyMemoDir=מיקום יעד:
ReadyMemoType=סוג ההתקנה:
ReadyMemoComponents=רכיבים שנבחרו:
ReadyMemoGroup=תיקיה בתפריט 'התחל':
ReadyMemoTasks=משימות נוספות לביצוע:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=מוריד קבצים נדרשים...
ButtonStopDownload=&עצור הורדה
StopDownload=אתה בטוח שאתה מעוניין לעצור את ההורדה?
ErrorDownloadAborted=הורדה בוטלה
ErrorDownloadFailed=הורדה נכשלה: %1 %2
ErrorDownloadSizeFailed=איחזור גודל הקובץ נכשל: %1 %2
ErrorFileHash1=אימות מזהה  הקובץ נכשל: %2
ErrorFileHash2=מזהה קובץ לא חוקי: מצופה %2, נמצא %2
ErrorProgress=תהליך לא חוקי: %1 מתוך %1
ErrorFileSize=גודל קובץ לא חוקי: מצופה %1, נמצא %1

; *** "Preparing to Install" wizard page
WizardPreparing=מתכונן להתקנה
PreparingDesc=תוכנת ההתקנה מתכוננת להתקנת [name] על מחשבך.
PreviousInstallNotCompleted=התקנת/הסרת יישום קודם לא הושלמה. עליך להפעיל את מחשבך מחדש כדי להשלימה.%n%nלאחר הפעלת המחשב מחדש, הפעל את תוכנת ההתקנה שוב כדי להתקין את [name].
CannotContinue=אין באפשרות תוכנת ההתקנה להמשיך בתהליך ההתקנה. נא לחץ 'ביטול' ליציאה.
ApplicationsFound=היישומים הבאים עושים שימוש בקבצים שצריכים להתעדכן על ידי תוכנת ההתקנה. מומלץ שתאפשר לתוכנת ההתקנה לסגור יישומים אלו אוטומטית.
ApplicationsFound2=היישומים הבאים עושים שימוש בקבצים שצריכים להתעדכן על ידי תוכנת ההתקנה. מומלץ שתאפשר לתוכנת ההתקנה לסגור יישומים אלו אוטומטית. לאחר שההתקנה תסתיים, תוכנית ההתקנה תנסה לפתוח מחדש את אותם יישומים.
CloseApplications=&סגור יישומים אוטומטית
DontCloseApplications=&אל תסגור יישומים אלו
ErrorCloseApplications=המתקין אינו יכול לסגור אוטומטית את התהליכים. מומלץ שתסגור את כל התוכניות שעושות שימוש בקבצים שנדרשים לעדכון על ידי תהליך ההתקנה ולאחר מכן תמשיך בהתקנה.
PrepareToInstallNeedsRestart=לצורך השלמת ההתקנה נדרש הפעלה מחדש של המערכת. לאחר שהמחשב יופעל מחדש, הפעל שום את המתקין לצורך השלמת ההתקנה של [name].%n%nתרצה להפעיל מחדש כעת?

; *** "Installing" wizard page
WizardInstalling=מתקין
InstallingLabel=אנא המתן בשעה שתוכנת ההתקנה מתקינה את [name] על מחשבך.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=מסיים את התקנת [name]
FinishedLabelNoIcons=התקנת [name] על מחשבך הסתיימה בהצלחה.
FinishedLabel=התקנת [name] על מחשבך הסתיימה בהצלחה. להפעלת התוכנה לחץ על קיצורי הדרך שהועתקו למחשבך.
ClickFinish=לחץ על 'סיום' ליציאה.
FinishedRestartLabel=להשלמת ההתקנה של [name], על תוכנת ההתקנה להפעיל מחדש את מחשבך. האם ברצונך להפעילו מחדש עכשיו?
FinishedRestartMessage=להשלמת ההתקנה של [name], על תוכנת ההתקנה להפעיל מחדש את מחשבך.%n%nהאם ברצונך להפעילו מחדש עכשיו?
ShowReadmeCheck=כן, ברצוני לראות את קובץ ה-'קרא אותי'
YesRadio=&כן, הפעל מחדש את המחשב עכשיו
NoRadio=&לא, אפעילו מחדש ידנית מאוחר יותר
; used for example as 'Run MyProg.exe'
RunEntryExec=הפעל את %1
; used for example as 'View Readme.txt'
RunEntryShellExec=הצג %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=דרוש הדיסק הבא להמשך ההתקנה
SelectDiskLabel2=אנא הכנס את דיסק מס' %1 ולחץ על 'אישור'.%n%nאם הקבצים שעל הדיסק נמצאים בתיקיה אחרת מזו המוצגת כאן, אנא הזן את הנתיב הנכון או לחץ על 'עיון'.
PathLabel=&נתיב:
FileNotInDir2=הקובץ "%1" לא נמצא ב"%2". אנא הכנס את הדיסק הנכון או בחר תיקיה אחרת.
SelectDirectoryLabel=אנא בחר את מיקומו של הדיסק הבא.

; *** Installation phase messages
SetupAborted=תהליך ההתקנה לא הושלם.%n%nאנא תקן את הבעיה והפעל את תהליך ההתקנה שוב.
AbortRetryIgnoreSelectAction=בחר פעולה
AbortRetryIgnoreRetry=&נסה שוב
AbortRetryIgnoreIgnore=&התעלם מהשגיאה והמשך בהתקנה
AbortRetryIgnoreCancel=בטל התקנה

; *** Installation status messages
StatusClosingApplications=סוגר יישומים...
StatusCreateDirs=יוצר תיקיות...
StatusExtractFiles=מעתיק קבצים...
StatusCreateIcons=יוצר קיצורי דרך...
StatusCreateIniEntries=יוצר רשומות INI...
StatusCreateRegistryEntries=יוצר רשומות בקובץ הרישום...
StatusRegisterFiles=רושם קבצים...
StatusSavingUninstall=שומר מידע החיוני להסרת התוכנה...
StatusRunProgram=מסיים התקנה...
StatusRestartingApplications=מפעיל יישומים מחדש...
StatusRollback=מבטל שינויים...

; *** Misc. errors
ErrorInternal2=שגיאה פנימית: %1
ErrorFunctionFailedNoCode=%1 נכשל
ErrorFunctionFailed=%1 נכשל; קוד %2
ErrorFunctionFailedWithMessage=%1 נכשל; קוד %2.%n%3
ErrorExecutingProgram=שגיאה בעת נסיון להריץ את הקובץ:%n%1

; *** Registry errors
ErrorRegOpenKey=שגיאה בעת פתיחת מפתח רישום:%n%1\%2
ErrorRegCreateKey=שגיאה בעת יצירת מפתח רישום:%n%1\%2
ErrorRegWriteKey=שגיאה בעת כתיבה למפתח רישום:%n%1\%2

; *** INI errors
ErrorIniEntry=שגיאה בעת כתיבת רשומת INI לקובץ "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&דלג על קובץ זה (לא מומלץ)
FileAbortRetryIgnoreIgnoreNotRecommended=&התעלם מהשגיאה והמשך (לא מומלץ)
SourceIsCorrupted=קובץ המקור קטוע
SourceDoesntExist=קובץ המקור "%1" אינו קיים
ExistingFileReadOnly2=לא ניתן לשכתב את הקובץ הקיים כיון שהוא מוגדר לקריאה בלבד.
ExistingFileReadOnlyRetry=&הסר את תוכנת קריאה בלבד ונסה שוב
ExistingFileReadOnlyKeepExisting=&השאר את הקובץ הקיים
ErrorReadingExistingDest=שגיאה בעת נסיון לקרוא את הקובץ הקיים:
FileExistsSelectAction=בחר פעולה
FileExists2=הקובץ כבר קיים.
FileExistsOverwriteExisting=&החלף את הקובץ הקיים
FileExistsKeepExisting=&שמור את הקובץ הקיים
FileExistsOverwriteOrKeepAll=&עשה זאת גם בקבצים הכפולים הבאים
ExistingFileNewerSelectAction=בחר פעולה
ExistingFileNewer2=הקובץ הקיים חדש יותר מהקובץ שאותו אתה מנסה להתקין
ExistingFileNewerOverwriteExisting=&החלף את הקובץ הקיים
ExistingFileNewerKeepExisting=&שמור את הקובץ הקיים (מומלץ)
ExistingFileNewerOverwriteOrKeepAll=&עשה זאת גם בקבצים הכפולים הבאים
ErrorChangingAttr=שגיאה בעת נסיון לשנות מאפיינים של הקובץ הקיים:
ErrorCreatingTemp=שגיאה בעת נסיון ליצור קובץ בתיקיית היעד:
ErrorReadingSource=שגיאה בעת קריאת קובץ המקור:
ErrorCopying=שגיאה בעת העתקת קובץ:
ErrorReplacingExistingFile=שגיאה בעת נסיון להחליף את הקובץ הקיים:
ErrorRestartReplace=כשל ב-RestartReplace:
ErrorRenamingTemp=שגיאה בעת נסיון לשנות שם קובץ בתיקיית היעד:
ErrorRegisterServer=שגיאה בעת רישום DLL/OCX: %1
ErrorRegSvr32Failed=RegSvr32 כשל עם קוד יציאה %1
ErrorRegisterTypeLib=לא ניתן לרשום את ספריית הטיפוס: %1

; *** Uninstall display name markings
UninstallDisplayNameMark=%1 (%2)
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-bit
UninstallDisplayNameMark64Bit=64-bit
UninstallDisplayNameMarkAllUsers=כל המשתמשים
UninstallDisplayNameMarkCurrentUser=משתמש נוכחי

; *** Post-installation errors
ErrorOpeningReadme=שגיאה בנסיון פתיחת קובץ 'קרא אותי'.
ErrorRestartingComputer=תוכנת ההתקנה לא הצליחה להפעיל מחדש את מחשבך. אנא עשה זאת ידנית.

; *** Uninstaller messages
UninstallNotFound=הקובץ "%1" לא קיים. לא ניתן להמשיך בהתקנה.
UninstallOpenError=לא ניתן לפתוח את הקובץ "%1". לא ניתן להמשיך בהתקנה.
UninstallUnsupportedVer=קובץ תיעוד ההסרה "%1" הוא בפורמט שאינו מזוהה ע"י גירסה זו של תוכנת ההסרה. לא ניתן להמשיך בתהליך ההסרה
UninstallUnknownEntry=רשומה לא מזוהה (%1) זוהתה בתיעוד ההסרה.
ConfirmUninstall=האם אתה בטוח שברצונך להסיר לחלוטין את %1 ואת כל מרכיביו הנלווים?
UninstallOnlyOnWin64=התקנה זו יכולה להיות מוסרת רק על 'חלונות' בגירסת 64-ביט.
OnlyAdminCanUninstall=רק משתמש בעל זכויות ניהול יכול להסיר התקנה זו.
UninstallStatusLabel=אנא המתן בעת ש%1 מוסרת ממחשבך.
UninstalledAll=%1 הוסרה ממחשבך בהצלחה.
UninstalledMost=הסרת %1 הסתיימה.%n%nמספר רכיבים לא הוסרו ע"י התוכנה, אך ניתן להסירם ידנית.
UninstalledAndNeedsRestart=כדי להשלים את תהליך ההסרה של %1, עליך להפעיל מחדש את מחשבך.%n%nהאם ברצונך להפעילו מחדש עכשיו?
UninstallDataCorrupted=הקובץ "%1" קטוע. לא ניתן להמשיך בתהליך ההתקנה

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=האם להסיר את קובץ משותף?
ConfirmDeleteSharedFile2=המערכת איבחנה כי הקובץ המשותף הזה אינו בשימוש עוד על ידי אף תוכנה. האם להסיר את הקובץ המשותף?%n%nאם ישנן תוכנות שעדיין משתמשות בקובץ זה והוא יוסר, תפקודן של תוכנות אלו עלול להיפגע. אם אינך בטוח, בחר 'לא'. השארת הקובץ על מחשבך לא תזיק.
SharedFileNameLabel=שם הקובץ:
SharedFileLocationLabel=מיקום:
WizardUninstalling=מצב תהליך ההסרה
StatusUninstalling=מסיר את %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=מתקין %1.
ShutdownBlockReasonUninstallingApp=מסיר %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 גירסה %2
AdditionalIcons=סימלונים נוספים:
CreateDesktopIcon=צור קיצור דרך על &שולחן העבודה
CreateQuickLaunchIcon=צור סימלון בשורת ההרצה המהירה
ProgramOnTheWeb=%1 ברשת
UninstallProgram=הסר את %1
LaunchProgram=הפעל %1
AssocFileExtension=&קשר את %1 עם סיומת הקובץ %2
AssocingFileExtension=מקשר את %1 עם סיומת הקובץ %2
AutoStartProgramGroupDescription=הפעלה אוטומטית:
AutoStartProgram=הפעל אוטומטית %1
AddonHostProgramNotFound=%1 לא נמצא בתיקיה שבחרת.%n%nאתה רוצה להמשיך בכל זאת?