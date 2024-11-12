; *** Inno Setup version 6.1.0+ Turkish messages ***
; Language	"Turkce" Turkish Translate by "Ceviren"	Kaya Zeren translator@zeron.net
; To download user-contributed translations of this file, go to:
;   https://www.jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=T<00FC>rk<00E7>e
LanguageID=$041f
LanguageCodePage=1254
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

; *** Uygulama baþlýklarý
SetupAppTitle=Kurulum Yardýmcýsý
SetupWindowTitle=%1 - Kurulum Yardýmcýsý
UninstallAppTitle=Kaldýrma Yardýmcýsý
UninstallAppFullTitle=%1 Kaldýrma Yardýmcýsý

; *** Çeþitli ortak metinler
InformationTitle=Bilgi
ConfirmTitle=Onay
ErrorTitle=Hata

; *** Kurulum yükleyici iletileri
SetupLdrStartupMessage=%1 uygulamasý kurulacak. Devam etmek istiyor musunuz?
LdrCannotCreateTemp=Geçici dosya oluþturulamadýðýndan kurulum iptal edildi
LdrCannotExecTemp=Geçici klasördeki dosya çalýþtýrýlamadýðýndan kurulum iptal edildi
HelpTextNote=

; *** Baþlangýç hata iletileri
LastErrorMessage=%1.%n%nHata %2: %3
SetupFileMissing=Kurulum klasöründe %1 dosyasý eksik. Lütfen sorunu çözün ya da uygulamanýn yeni bir kopyasýyla yeniden deneyin.
SetupFileCorrupt=Kurulum dosyalarý bozulmuþ. Lütfen uygulamanýn yeni bir kopyasýyla yeniden kurmayý deneyin.
SetupFileCorruptOrWrongVer=Kurulum dosyalarý bozulmuþ ya da bu kurulum yardýmcýsý sürümü ile uyumlu deðil. Lütfen sorunu çözün ya da uygulamanýn yeni bir kopyasýyla yeniden kurmayý deneyin.
InvalidParameter=Komut satýrýnda geçersiz bir parametre yazýlmýþ:%n%n%1
SetupAlreadyRunning=Kurulum yardýmcýsý zaten çalýþýyor.
WindowsVersionNotSupported=Bu uygulama, bilgisayarýnýzda yüklü olan Windows sürümü ile uyumlu deðil.
WindowsServicePackRequired=Bu uygulama, %1 Hizmet Paketi %2 ve üzerindeki sürümler ile çalýþýr.
NotOnThisPlatform=Bu uygulama, %1 üzerinde çalýþmaz.
OnlyOnThisPlatform=Bu uygulama, %1 üzerinde çalýþtýrýlmalýdýr.
OnlyOnTheseArchitectures=Bu uygulama, yalnýz þu iþlemci mimarileri için tasarlanmýþ Windows sürümleriyle çalýþýr:%n%n%1
WinVersionTooLowError=Bu uygulama için %1 sürüm %2 ya da üzeri gereklidir.
WinVersionTooHighError=Bu uygulama, '%1' sürüm '%2' ya da üzerine kurulamaz.
AdminPrivilegesRequired=Bu uygulamayý kurmak için Yönetici olarak oturum açýlmýþ olmasý gereklidir.
PowerUserPrivilegesRequired=Bu uygulamayý kurarken, Yönetici ya da Güçlü Kullanýcýlar grubunun bir üyesi olarak oturum açýlmýþ olmasý gereklidir.
SetupAppRunningError=Kurulum yardýmcýsý %1 uygulamasýnýn çalýþmakta olduðunu algýladý.%n%nLütfen uygulamanýn çalýþan tüm kopyalarýný kapatýp, devam etmek için Tamam, kurulum yardýmcýsýndan çýkmak için Ýptal üzerine týklayýn.
UninstallAppRunningError=Kaldýrma yardýmcýsý, %1 uygulamasýnýn çalýþmakta olduðunu algýladý.%n%nLütfen uygulamanýn çalýþan tüm kopyalarýný kapatýp, devam etmek için Tamam ya da kaldýrma yardýmcýsýndan çýkmak için Ýptal üzerine týklayýn.

; *** Baþlangýç sorularý
PrivilegesRequiredOverrideTitle=Kurulum Kipini Seçin
PrivilegesRequiredOverrideInstruction=Kurulum kipini seçin
PrivilegesRequiredOverrideText1=%1 tüm kullanýcýlar için (yönetici izinleri gerekir) ya da yalnýz sizin hesabýnýz için kurulabilir.
PrivilegesRequiredOverrideText2=%1 yalnýz sizin hesabýnýz için ya da tüm kullanýcýlar için (yönetici izinleri gerekir) kurulabilir.
PrivilegesRequiredOverrideAllUsers=&Tüm kullanýcýlar için kurulsun
PrivilegesRequiredOverrideAllUsersRecommended=&Tüm kullanýcýlar için kurulsun (önerilir)
PrivilegesRequiredOverrideCurrentUser=&Yalnýz benim kullanýcým için kurulsun
PrivilegesRequiredOverrideCurrentUserRecommended=&Yalnýz benim kullanýcým için kurulsun (önerilir)

; *** Çeþitli hata metinleri
ErrorCreatingDir=Kurulum yardýmcýsý "%1" klasörünü oluþturamadý.
ErrorTooManyFilesInDir="%1" klasörü içinde çok sayýda dosya olduðundan bir dosya oluþturulamadý

; *** Ortak kurulum iletileri
ExitSetupTitle=Kurulum Yardýmcýsýndan Çýk
ExitSetupMessage=Kurulum tamamlanmadý. Þimdi çýkarsanýz, uygulama kurulmayacak.%n%nKurulumu tamamlamak için istediðiniz zaman kurulum yardýmcýsýný yeniden çalýþtýrabilirsiniz.%n%nKurulum yardýmcýsýndan çýkýlsýn mý?
AboutSetupMenuItem=Kurulum H&akkýnda...
AboutSetupTitle=Kurulum Hakkýnda
AboutSetupMessage=%1 %2 sürümü%n%3%n%n%1 ana sayfa:%n%4
AboutSetupNote=
TranslatorNote=

; *** Düðmeler
ButtonBack=< Ö&nceki
ButtonNext=&Sonraki >
ButtonInstall=&Kur
ButtonOK=Tamam
ButtonCancel=Ýptal
ButtonYes=E&vet
ButtonYesToAll=&Tümüne Evet
ButtonNo=&Hayýr
ButtonNoToAll=Tümüne Ha&yýr
ButtonFinish=&Bitti
ButtonBrowse=&Gözat...
ButtonWizardBrowse=Göza&t...
ButtonNewFolder=Ye&ni Klasör Oluþtur

; *** "Kurulum Dilini Seçin" sayfasý iletileri
SelectLanguageTitle=Kurulum Yardýmcýsý Dilini Seçin
SelectLanguageLabel=Kurulum süresince kullanýlacak dili seçin.

; *** Ortak metinler
ClickNext=Devam etmek için Sonraki, çýkmak için Ýptal üzerine týklayýn.
BeveledLabel=
BrowseDialogTitle=Klasöre Gözat
BrowseDialogLabel=Aþaðýdaki listeden bir klasör seçip, Tamam üzerine týklayýn.
NewFolderName=Yeni Klasör 

; *** "Hoþ geldiniz" sayfasý
WelcomeLabel1=[name] Kurulum Yardýmcýsýna Hoþgeldiniz.
WelcomeLabel2=Bilgisayarýnýza [name/ver] uygulamasý kurulacak.%n%nDevam etmeden önce çalýþan diðer tüm uygulamalarý kapatmanýz önerilir.

; *** "Parola" sayfasý
WizardPassword=Parola
PasswordLabel1=Bu kurulum parola korumalýdýr.
PasswordLabel3=Lütfen parolayý yazýn ve devam etmek için Sonraki üzerine týklayýn. Parolalar büyük küçük harflere duyarlýdýr.
PasswordEditLabel=&Parola:
IncorrectPassword=Yazdýðýnýz parola doðru deðil. Lütfen yeniden deneyin.

; *** "Lisans Anlaþmasý" sayfasý
WizardLicense=Lisans Anlaþmasý
LicenseLabel=Lütfen devam etmeden önce aþaðýdaki önemli bilgileri okuyun.
LicenseLabel3=Lütfen Aþaðýdaki Lisans Anlaþmasýný okuyun. Kuruluma devam edebilmek için bu anlaþmayý kabul etmelisiniz.
LicenseAccepted=Anlaþmayý kabul &ediyorum.
LicenseNotAccepted=Anlaþmayý kabul et&miyorum.

; *** "Bilgiler" sayfasý
WizardInfoBefore=Bilgiler
InfoBeforeLabel=Lütfen devam etmeden önce aþaðýdaki önemli bilgileri okuyun.
InfoBeforeClickLabel=Kuruluma devam etmeye hazýr olduðunuzda Sonraki üzerine týklayýn.
WizardInfoAfter=Bilgiler
InfoAfterLabel=Lütfen devam etmeden önce aþaðýdaki önemli bilgileri okuyun.
InfoAfterClickLabel=Kuruluma devam etmeye hazýr olduðunuzda Sonraki üzerine týklayýn.

; *** "Kullanýcý Bilgileri" sayfasý
WizardUserInfo=Kullanýcý Bilgileri
UserInfoDesc=Lütfen bilgilerinizi yazýn.
UserInfoName=K&ullanýcý Adý:
UserInfoOrg=Ku&rum:
UserInfoSerial=&Seri Numarasý:
UserInfoNameRequired=Bir ad yazmalýsýnýz.

; *** "Hedef Konumunu Seçin" sayfasý
WizardSelectDir=Hedef Konumunu Seçin
SelectDirDesc=[name] nereye kurulsun?
SelectDirLabel3=[name] uygulamasý þu klasöre kurulacak.
SelectDirBrowseLabel=Devam etmek icin Sonraki üzerine týklayýn. Farklý bir klasör seçmek için Gözat üzerine týklayýn.
DiskSpaceGBLabel=En az [gb] GB boþ disk alaný gereklidir.
DiskSpaceMBLabel=En az [mb] MB boþ disk alaný gereklidir.
CannotInstallToNetworkDrive=Uygulama bir að sürücüsü üzerine kurulamaz.
CannotInstallToUNCPath=Uygulama bir UNC yolu üzerine (\\yol gibi) kurulamaz.
InvalidPath=Sürücü adý ile tam yolu yazmalýsýnýz; örneðin: %n%nC:\APP%n%n ya da þu þekilde bir UNC yolu:%n%n\\sunucu\paylaþým
InvalidDrive=Sürücü ya da UNC paylaþýmý yok ya da eriþilemiyor. Lütfen baþka bir tane seçin.
DiskSpaceWarningTitle=Yeterli Boþ Disk Alaný Yok
DiskSpaceWarning=Kurulum için %1 KB boþ alan gerekli, ancak seçilmiþ sürücüde yalnýz %2 KB boþ alan var.%n%nGene de devam etmek istiyor musunuz?
DirNameTooLong=Klasör adý ya da yol çok uzun.
InvalidDirName=Klasör adý geçersiz.
BadDirName32=Klasör adlarýnda þu karakterler bulunamaz:%n%n%1
DirExistsTitle=Klasör Zaten Var"
DirExists=Klasör:%n%n%1%n%zaten var. Kurulum için bu klasörü kullanmak ister misiniz?
DirDoesntExistTitle=Klasör Bulunamadý
DirDoesntExist=Klasör:%n%n%1%n%nbulunamadý.Klasörün oluþturmasýný ister misiniz?

; *** "Bileþenleri Seçin" sayfasý
WizardSelectComponents=Bileþenleri Seçin
SelectComponentsDesc=Hangi bileþenler kurulacak?
SelectComponentsLabel2=Kurmak istediðiniz bileþenleri seçin; kurmak istemediðiniz bileþenlerin iþaretini kaldýrýn. Devam etmeye hazýr olduðunuzda Sonraki üzerine týklayýn.
FullInstallation=Tam Kurulum
; Mümkünse 'Compact' ifadesini kendi dilinizde 'Minimal' anlamýnda çevirmeyin
CompactInstallation=Normal kurulum
CustomInstallation=Özel kurulum
NoUninstallWarningTitle=Bileþenler Zaten Var
NoUninstallWarning=Þu bileþenlerin bilgisayarýnýzda zaten kurulu olduðu algýlandý:%n%n%1%n%n Bu bileþenlerin iþaretlerinin kaldýrýlmasý bileþenleri kaldýrmaz.%n%nGene de devam etmek istiyor musunuz?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceGBLabel=Seçili bileþenler için diskte en az [gb] GB boþ alan bulunmasý gerekli.
ComponentsDiskSpaceMBLabel=Seçili bileþenler için diskte en az [mb] MB boþ alan bulunmasý gerekli.

; *** "Ek Ýþlemleri Seçin" sayfasý
WizardSelectTasks=Ek Ýþlemleri Seçin
SelectTasksDesc=Baþka hangi iþlemler yapýlsýn?
SelectTasksLabel2=[name] kurulumu sýrasýnda yapýlmasýný istediðiniz ek iþleri seçin ve Sonraki üzerine týklayýn.

; *** "Baþlat Menüsü Klasörünü Seçin" sayfasý
WizardSelectProgramGroup=Baþlat Menüsü Klasörünü Seçin
SelectStartMenuFolderDesc=Uygulamanýn kýsayollarý nereye eklensin?
SelectStartMenuFolderLabel3=Kurulum yardýmcýsý uygulama kýsayollarýný aþaðýdaki Baþlat Menüsü klasörüne ekleyecek.
SelectStartMenuFolderBrowseLabel=Devam etmek için Sonraki üzerine týklayýn. Farklý bir klasör seçmek için Gözat üzerine týklayýn.
MustEnterGroupName=Bir klasör adý yazmalýsýnýz.
GroupNameTooLong=Klasör adý ya da yol çok uzun.
InvalidGroupName=Klasör adý geçersiz.
BadGroupName=Klasör adýnda þu karakterler bulunamaz:%n%n%1
NoProgramGroupCheck2=Baþlat Menüsü klasörü &oluþturulmasýn

; *** "Kurulmaya Hazýr" sayfasý
WizardReady=Kurulmaya Hazýr
ReadyLabel1=[name] bilgisayarýnýza kurulmaya hazýr.
ReadyLabel2a=Kuruluma devam etmek için Sonraki üzerine, ayarlarý gözden geçirip deðiþtirmek için Önceki üzerine týklayýn.
ReadyLabel2b=Kuruluma devam etmek için Sonraki üzerine týklayýn.
ReadyMemoUserInfo=Kullanýcý bilgileri:
ReadyMemoDir=Hedef konumu:
ReadyMemoType=Kurulum türü:
ReadyMemoComponents=Seçilmiþ bileþenler:
ReadyMemoGroup=Baþlat Menüsü klasörü:
ReadyMemoTasks=Ek iþlemler:

; *** TDownloadWizardPage wizard page and DownloadTemporaryFile
DownloadingLabel=Ek dosyalar indiriliyor...
ButtonStopDownload=Ýndirmeyi &durdur
StopDownload=Ýndirmeyi durdurmak istediðinize emin misiniz?
ErrorDownloadAborted=Ýndirme durduruldu
ErrorDownloadFailed=Ýndirilemedi: %1 %2
ErrorDownloadSizeFailed=Boyut alýnamadý: %1 %2
ErrorFileHash1=Dosya karmasý doðrulanamadý: %1
ErrorFileHash2=Dosya karmasý geçersiz: %1 olmasý gerekirken %2
ErrorProgress=Adým geçersiz: %1 / %2
ErrorFileSize=Dosya boyutu geçersiz: %1 olmasý gerekirken %2

; *** "Kuruluma Hazýrlanýlýyor" sayfasý
WizardPreparing=Kuruluma Hazýrlanýlýyor
PreparingDesc=[name] bilgisayarýnýza kurulmaya hazýrlanýyor.
PreviousInstallNotCompleted=Önceki uygulama kurulumu ya da kaldýrýlmasý tamamlanmamýþ. Bu kurulumun tamamlanmasý için bilgisayarýnýzý yeniden baþlatmalýsýnýz.%n%nBilgisayarýnýzý yeniden baþlattýktan sonra iþlemi tamamlamak için [name] kurulum yardýmcýsýný yeniden çalýþtýrýn.
CannotContinue=Kuruluma devam edilemiyor. Çýkmak için Ýptal üzerine týklayýn.
ApplicationsFound=Kurulum yardýmcýsý tarafýndan güncellenmesi gereken dosyalar, þu uygulamalar tarafýndan kullanýyor. Kurulum yardýmcýsýnýn bu uygulamalarý otomatik olarak kapatmasýna izin vermeniz önerilir.
ApplicationsFound2=Kurulum yardýmcýsý tarafýndan güncellenmesi gereken dosyalar, þu uygulamalar tarafýndan kullanýyor. Kurulum yardýmcýsýnýn bu uygulamalarý otomatik olarak kapatmasýna izin vermeniz önerilir. Kurulum tamamlandýktan sonra, uygulamalar yeniden baþlatýlmaya çalýþýlacak.
CloseApplications=&Uygulamalar kapatýlsýn
DontCloseApplications=Uygulamalar &kapatýlmasýn
ErrorCloseApplications=Kurulum yardýmcýsý uygulamalarý kapatamadý. Kurulum yardýmcýsý tarafýndan güncellenmesi gereken dosyalarý kullanan uygulamalarý el ile kapatmanýz önerilir.
PrepareToInstallNeedsRestart=Kurulum için bilgisayarýn yeniden baþlatýlmasý gerekiyor. Bilgisayarý yeniden baþlattýktan sonra [name] kurulumunu tamamlamak için kurulum yardýmcýsýný yeniden çalýþtýrýn.%n%nBilgisayarý þimdi yeniden baþlatmak ister misiniz?

; *** "Kuruluyor" sayfasý
WizardInstalling=Kuruluyor
InstallingLabel=Lütfen [name] bilgisayarýnýza kurulurken bekleyin.

; *** "Kurulum Tamamlandý" sayfasý
FinishedHeadingLabel=[name] kurulum yardýmcýsý tamamlanýyor
FinishedLabelNoIcons=Bilgisayarýnýza [name] kurulumu tamamlandý.
FinishedLabel=Bilgisayarýnýza [name] kurulumu tamamlandý. Simgeleri yüklemeyi seçtiyseniz, simgelere týklayarak uygulamayý baþlatabilirsiniz.
ClickFinish=Kurulum yardýmcýsýndan çýkmak için Bitti üzerine týklayýn.
FinishedRestartLabel=[name] kurulumunun tamamlanmasý için, bilgisayarýnýz yeniden baþlatýlmalý. Þimdi yeniden baþlatmak ister misiniz?
FinishedRestartMessage=[name] kurulumunun tamamlanmasý için, bilgisayarýnýz yeniden baþlatýlmalý.%n%nÞimdi yeniden baþlatmak ister misiniz?
ShowReadmeCheck=Evet README dosyasý görüntülensin
YesRadio=&Evet, bilgisayar þimdi yeniden baþlatýlsýn
NoRadio=&Hayýr, bilgisayarý daha sonra yeniden baþlatacaðým
; used for example as 'Run MyProg.exe'
RunEntryExec=%1 çalýþtýrýlsýn
; used for example as 'View Readme.txt'
RunEntryShellExec=%1 görüntülensin

; *** "Kurulum için Sýradaki Disk Gerekli" iletileri
ChangeDiskTitle=Kurulum Yardýmcýsý Sýradaki Diske Gerek Duyuyor
SelectDiskLabel2=Lütfen %1 numaralý diski takýp Tamam üzerine týklayýn.%n%nDiskteki dosyalar aþaðýdakinden farklý bir klasörde bulunuyorsa, doðru yolu yazýn ya da Gözat üzerine týklayarak doðru klasörü seçin.
PathLabel=&Yol:
FileNotInDir2="%1" dosyasý "%2" içinde bulunamadý. Lütfen doðru diski takýn ya da baþka bir klasör seçin.
SelectDirectoryLabel=Lütfen sonraki diskin konumunu belirtin.

; *** Kurulum aþamasý iletileri
SetupAborted=Kurulum tamamlanamadý.%n%nLütfen sorunu düzelterek kurulum yardýmcýsýný yeniden çalýþtýrýn.
AbortRetryIgnoreSelectAction=Yapýlacak iþlemi seçin
AbortRetryIgnoreRetry=&Yeniden denensin
AbortRetryIgnoreIgnore=&Sorun yok sayýlýp devam edilsin
AbortRetryIgnoreCancel=Kurulum iptal edilsin

; *** Kurulum durumu iletileri
StatusClosingApplications=Uygulamalar kapatýlýyor...
StatusCreateDirs=Klasörler oluþturuluyor...
StatusExtractFiles=Dosyalar ayýklanýyor...
StatusCreateIcons=Kýsayollar oluþturuluyor...
StatusCreateIniEntries=INI kayýtlarý oluþturuluyor...
StatusCreateRegistryEntries=Kayýt Defteri kayýtlarý oluþturuluyor...
StatusRegisterFiles=Dosyalar kaydediliyor...
StatusSavingUninstall=Kaldýrma bilgileri kaydediliyor...
StatusRunProgram=Kurulum tamamlanýyor...
StatusRestartingApplications=Uygulamalar yeniden baþlatýlýyor...
StatusRollback=Deðiþiklikler geri alýnýyor...

; *** Çeþitli hata iletileri
ErrorInternal2=Ýç hata: %1
ErrorFunctionFailedNoCode=%1 tamamlanamadý.
ErrorFunctionFailed=%1 tamamlanamadý; kod %2
ErrorFunctionFailedWithMessage=%1 tamamlanamadý; kod %2.%n%3
ErrorExecutingProgram=Þu dosya yürütülemedi:%n%1

; *** Kayýt defteri hatalarý
ErrorRegOpenKey=Kayýt defteri anahtarý açýlýrken bir sorun çýktý:%n%1%2
ErrorRegCreateKey=Kayýt defteri anahtarý eklenirken bir sorun çýktý:%n%1%2
ErrorRegWriteKey=Kayýt defteri anahtarý yazýlýrken bir sorun çýktý:%n%1%2

; *** INI hatalarý
ErrorIniEntry="%1" dosyasýna INI kaydý eklenirken bir sorun çýktý.

; *** Dosya kopyalama hatalarý
FileAbortRetryIgnoreSkipNotRecommended=&Bu dosya atlansýn (önerilmez)
FileAbortRetryIgnoreIgnoreNotRecommended=&Sorun yok sayýlýp devam edilsin (önerilmez)
SourceIsCorrupted=Kaynak dosya bozulmuþ
SourceDoesntExist="%1" kaynak dosyasý bulunamadý
ExistingFileReadOnly2=Var olan dosya salt okunabilir olarak iþaretlenmiþ olduðundan üzerine yazýlamadý.
ExistingFileReadOnlyRetry=&Salt okunur iþareti kaldýrýlýp yeniden denensin
ExistingFileReadOnlyKeepExisting=&Var olan dosya korunsun
ErrorReadingExistingDest=Var olan dosya okunmaya çalýþýlýrken bir sorun çýktý.
FileExistsSelectAction=Yapýlacak iþlemi seçin
FileExists2=Dosya zaten var.
FileExistsOverwriteExisting=&Var olan dosyanýn üzerine yazýlsýn
FileExistsKeepExisting=Var &olan dosya korunsun
FileExistsOverwriteOrKeepAll=&Sonraki çakýþmalarda da bu iþlem yapýlsýn
ExistingFileNewerSelectAction=Yapýlacak iþlemi seçin
ExistingFileNewer2=Var olan dosya, kurulum yardýmcýsý tarafýndan yazýlmaya çalýþýlandan daha yeni.
ExistingFileNewerOverwriteExisting=&Var olan dosyanýn üzerine yazýlsýn
ExistingFileNewerKeepExisting=Var &olan dosya korunsun (önerilir)
ExistingFileNewerOverwriteOrKeepAll=&Sonraki çakýþmalarda bu iþlem yapýlsýn
ErrorChangingAttr=Var olan dosyanýn öznitelikleri deðiþtirilirken bir sorun çýktý:
ErrorCreatingTemp=Hedef klasörde bir dosya oluþturulurken bir sorun çýktý:
ErrorReadingSource=Kaynak dosya okunurken bir sorun çýktý:
ErrorCopying=Dosya kopyalanýrken bir sorun çýktý:
ErrorReplacingExistingFile=Var olan dosya deðiþtirilirken bir sorun çýktý:
ErrorRestartReplace=Yeniden baþlatmada üzerine yazýlamadý:
ErrorRenamingTemp=Hedef klasördeki bir dosyanýn adý deðiþtirilirken sorun çýktý:
ErrorRegisterServer=DLL/OCX kayýt edilemedi: %1
ErrorRegSvr32Failed=RegSvr32 iþlemi þu kod ile tamamlanamadý: %1
ErrorRegisterTypeLib=Tür kitaplýðý kayýt defterine eklenemedi: %1

; *** Kaldýrma sýrasýnda görüntülenecek ad iþaretleri
; used for example as 'My Program (32-bit)'
UninstallDisplayNameMark=%1 (%2)
; used for example as 'My Program (32-bit, All users)'
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32 bit
UninstallDisplayNameMark64Bit=64 bit
UninstallDisplayNameMarkAllUsers=Tüm kullanýcýlar
UninstallDisplayNameMarkCurrentUser=Geçerli kullanýcý

; *** Kurulum sonrasý hatalarý
ErrorOpeningReadme=README dosyasý açýlýrken bir sorun çýktý.
ErrorRestartingComputer=Kurulum yardýmcýsý bilgisayarýnýzý yeniden baþlatamýyor. Lütfen bilgisayarýnýzý yeniden baþlatýn.

; *** Kaldýrma yardýmcýsý iletileri
UninstallNotFound="%1" dosyasý bulunamadý. Uygulama kaldýrýlamýyor.
UninstallOpenError="%1" dosyasý açýlamadý. Uygulama kaldýrýlamýyor.
UninstallUnsupportedVer="%1" uygulama kaldýrma günlük dosyasýnýn biçimi, bu kaldýrma yardýmcýsý sürümü tarafýndan anlaþýlamadý. Uygulama kaldýrýlamýyor.
UninstallUnknownEntry=Kaldýrma günlüðünde bilinmeyen bir kayýt (%1) bulundu.
ConfirmUninstall=%1 uygulamasýný tüm bileþenleri ile birlikte tamamen kaldýrmak istediðinize emin misiniz?
UninstallOnlyOnWin64=Bu kurulum yalnýz 64 bit Windows üzerinden kaldýrýlabilir.
OnlyAdminCanUninstall=Bu kurulum yalnýz yönetici haklarýna sahip bir kullanýcý tarafýndan kaldýrýlabilir.
UninstallStatusLabel=Lütfen %1 uygulamasý bilgisayarýnýzdan kaldýrýlýrken bekleyin.
UninstalledAll=%1 uygulamasý bilgisayarýnýzdan kaldýrýldý.
UninstalledMost=%1 uygulamasý kaldýrýldý.%n%nBazý bileþenler kaldýrýlamadý. Bunlarý el ile silebilirsiniz.
UninstalledAndNeedsRestart=%1 kaldýrma iþleminin tamamlanmasý için bilgisayarýnýzýn yeniden baþlatýlmasý gerekli.%n%nÞimdi yeniden baþlatmak ister misiniz?
UninstallDataCorrupted="%1" dosyasý bozulmuþ. Kaldýrýlamýyor.

; *** Kaldýrma aþamasý iletileri
ConfirmDeleteSharedFileTitle=Paylaþýlan Dosya Silinsin mi?
ConfirmDeleteSharedFile2=Sisteme göre, paylaþýlan þu dosya baþka bir uygulama tarafýndan kullanýlmýyor ve kaldýrýlabilir. Bu paylaþýlmýþ dosyayý silmek ister misiniz?%n%nBu dosya, baþka herhangi bir uygulama tarafýndan kullanýlýyor ise, silindiðinde diðer uygulama düzgün çalýþmayabilir. Emin deðilseniz Hayýr üzerine týklayýn. Dosyayý sisteminizde býrakmanýn bir zararý olmaz.
SharedFileNameLabel=Dosya adý:
SharedFileLocationLabel=Konum:
WizardUninstalling=Kaldýrma Durumu
StatusUninstalling=%1 kaldýrýlýyor...

; *** Kapatmayý engelleme nedenleri
ShutdownBlockReasonInstallingApp=%1 kuruluyor.
ShutdownBlockReasonUninstallingApp=%1 kaldýrýlýyor.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 %2 sürümü
AdditionalIcons=Ek simgeler:
CreateDesktopIcon=Masaüstü simg&esi oluþturulsun
CreateQuickLaunchIcon=Hýzlý Baþlat simgesi &oluþturulsun
ProgramOnTheWeb=%1 Web Sitesi
UninstallProgram=%1 Uygulamasýný Kaldýr
LaunchProgram=%1 Uygulamasýný Çalýþtýr
AssocFileExtension=%1 &uygulamasý ile %2 dosya uzantýsý iliþkilendirilsin
AssocingFileExtension=%1 uygulamasý ile %2 dosya uzantýsý iliþkilendiriliyor...
AutoStartProgramGroupDescription=Baþlangýç:
AutoStartProgram=%1 otomatik olarak baþlatýlsýn
AddonHostProgramNotFound=%1 seçtiðiniz klasörde bulunamadý.%n%nYine de devam etmek istiyor musunuz?