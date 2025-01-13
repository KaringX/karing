///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsFa implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fa,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fa>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFa _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsAboutScreenFa AboutScreen = _TranslationsAboutScreenFa._(_root);
	@override late final _TranslationsAddProfileByImportFromFileScreenFa AddProfileByImportFromFileScreen = _TranslationsAddProfileByImportFromFileScreenFa._(_root);
	@override late final _TranslationsAddProfileByLinkOrContentScreenFa AddProfileByLinkOrContentScreen = _TranslationsAddProfileByLinkOrContentScreenFa._(_root);
	@override late final _TranslationsAddProfileByScanQrcodeScanScreenFa AddProfileByScanQrcodeScanScreen = _TranslationsAddProfileByScanQrcodeScanScreenFa._(_root);
	@override late final _TranslationsBackupAndSyncLanSyncScreenFa BackupAndSyncLanSyncScreen = _TranslationsBackupAndSyncLanSyncScreenFa._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenFa BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenFa._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenFa DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenFa._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenFa DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenFa._(_root);
	@override late final _TranslationsDiversionRulesScreenFa DiversionRulesScreen = _TranslationsDiversionRulesScreenFa._(_root);
	@override late final _TranslationsDnsSettingsScreenFa DnsSettingsScreen = _TranslationsDnsSettingsScreenFa._(_root);
	@override late final _TranslationsFeedbackScreenFa FeedbackScreen = _TranslationsFeedbackScreenFa._(_root);
	@override late final _TranslationsFileContentViewerScreenFa FileContentViewerScreen = _TranslationsFileContentViewerScreenFa._(_root);
	@override late final _TranslationsHomeScreenFa HomeScreen = _TranslationsHomeScreenFa._(_root);
	@override late final _TranslationsLaunchFailedScreenFa LaunchFailedScreen = _TranslationsLaunchFailedScreenFa._(_root);
	@override late final _TranslationsMyProfilesEditScreenFa MyProfilesEditScreen = _TranslationsMyProfilesEditScreenFa._(_root);
	@override late final _TranslationsMyProfilesMergeScreenFa MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenFa._(_root);
	@override late final _TranslationsMyProfilesScreenFa MyProfilesScreen = _TranslationsMyProfilesScreenFa._(_root);
	@override late final _TranslationsNetCheckScreenFa NetCheckScreen = _TranslationsNetCheckScreenFa._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenFa NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenFa._(_root);
	@override late final _TranslationsNetConnectionsScreenFa NetConnectionsScreen = _TranslationsNetConnectionsScreenFa._(_root);
	@override late final _TranslationsPerAppAndroidScreenFa PerAppAndroidScreen = _TranslationsPerAppAndroidScreenFa._(_root);
	@override late final _TranslationsQrcodeScreenFa QrcodeScreen = _TranslationsQrcodeScreenFa._(_root);
	@override late final _TranslationsRegionSettingsScreenFa RegionSettingsScreen = _TranslationsRegionSettingsScreenFa._(_root);
	@override late final _TranslationsServerSelectScreenFa ServerSelectScreen = _TranslationsServerSelectScreenFa._(_root);
	@override late final _TranslationsSettingsScreenFa SettingsScreen = _TranslationsSettingsScreenFa._(_root);
	@override late final _TranslationsSpeedTestSettingsScreenFa SpeedTestSettingsScreen = _TranslationsSpeedTestSettingsScreenFa._(_root);
	@override late final _TranslationsTextToQrCodeScreenFa TextToQrCodeScreen = _TranslationsTextToQrCodeScreenFa._(_root);
	@override late final _TranslationsUserAgreementScreenFa UserAgreementScreen = _TranslationsUserAgreementScreenFa._(_root);
	@override late final _TranslationsVersionUpdateScreenFa VersionUpdateScreen = _TranslationsVersionUpdateScreenFa._(_root);
	@override late final _TranslationsCommonWidgetFa CommonWidget = _TranslationsCommonWidgetFa._(_root);
	@override late final _TranslationsServerManagerFa ServerManager = _TranslationsServerManagerFa._(_root);
	@override late final _TranslationsMainFa main = _TranslationsMainFa._(_root);
	@override String get enable => 'فعال‌سازی';
	@override String get disable => 'غیرفعال';
	@override String get filter => 'فیلتر';
	@override String get filterMethod => 'روش فیلتر';
	@override String get include => 'شامل شود';
	@override String get exclude => 'حذف کردن';
	@override String get all => 'همه';
	@override String get prefer => 'اولویت';
	@override String get only => 'فقط';
	@override String get open => 'باز کن';
	@override String get close => 'بسته';
	@override String get quit => 'خروج';
	@override String get add => 'افزودن';
	@override String get remove => 'حذف';
	@override String get edit => 'ویرایش کنید';
	@override String get view => 'بررسی';
	@override String get more => 'بیشتر';
	@override String get getProfile => 'پیکربندی را دریافت کنید';
	@override String get addProfile => 'افزودن پروفایل';
	@override String get addSuccess => 'با‌موفقیت اضافه شد';
	@override String addSuccessThen({required Object p}) => 'پیکربندی با موفقیت ایجاد شد، لطفاً برای مشاهده به [${p}] بروید';
	@override String addFailed({required Object p}) => 'افزودن ناموفق بود:${p}';
	@override String get removeConfirm => 'آیا از حذف اطمینان دارین؟';
	@override String get tips => 'اطلاعات';
	@override String get copy => 'کپی';
	@override String get ok => 'خُب';
	@override String get cancel => 'لغو';
	@override String get feedback => 'بازخورد';
	@override String get faq => 'سوالات متداول';
	@override String get download => 'دانلود';
	@override String get loading => 'درحال بارگذاری…';
	@override String updateFailed({required Object p}) => 'به‌روزرسانی ناموفق بود:${p}';
	@override String get days => 'روز';
	@override String get hours => 'ساعت';
	@override String get minutes => 'دقیقه';
	@override String get seconds => 'دومین';
	@override String get protocol => 'پروتکل';
	@override String get search => 'جستجو';
	@override String get custom => 'سفارشی';
	@override String get connect => 'اتصال';
	@override String get disconnect => 'قطع‌ اتصال';
	@override String get connected => 'وصل شد';
	@override String get disconnected => 'قطع شد';
	@override String get connecting => 'درحال اتصال';
	@override String get connectTimeout => 'اتمام مهلت اتصال';
	@override String get timeout => 'تایم اوت';
	@override String get language => 'زبان';
	@override String get next => 'بعدی';
	@override String get done => 'انجام‌شد';
	@override String get apply => 'درخواست دادن';
	@override String get refresh => 'بارگذاری مجدد';
	@override String get retry => 'دوباره امتحان کنید؟';
	@override String get none => 'هیچ‌کدام';
	@override String get reset => 'ریست';
	@override String get submit => 'ارسال';
	@override String get user => 'کاربر';
	@override String get account => 'نام‌کاربری';
	@override String get password => 'رمز‌عبور';
	@override String get required => 'الزامی';
	@override String get diversion => 'انحراف';
	@override String get diversionRules => 'قوانین انحراف';
	@override String get diversionRulesEnable => 'قوانین بارگیری [ارائه دهنده VPN] را فعال کنید';
	@override String get diversionCustomGroup => 'گروه انحراف سفارشی';
	@override String get diversionCustomGroupPreset => 'از پیش تنظیم شده [گروه انحراف سفارشی]';
	@override String get diversionCustomGroupPresetTips => 'توجه: موارد فعال به [گروه انحراف سفارشی] و [قوانین انحراف] اضافه/پوشش داده خواهند شد';
	@override String get diversionCustomGroupAddTips => 'توجه: ممکن است لازم باشد پس از افزودن مرتب‌سازی به‌صورت دستی آن را تنظیم کنید، در غیر این صورت انحراف تازه اضافه‌شده ممکن است اعمال نشود.';
	@override String get urlTestCustomGroup => 'انتخاب خودکار سفارشی';
	@override String get rulesetEnableTips => 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد';
	@override String get ispUserAgentTips => '[ارائه دهنده VPN] انواع مختلف داده های اشتراک را بر اساس [UserAgent] در درخواست [HTTP] ارائه خواهد کرد.';
	@override String get ispDiversionTips => 'قوانین بارگذاری ارائه شده توسط [ارائه دهنده VPN]، اشتراک های نوع [V2Ray] از قوانین تخلیه پشتیبانی نمی کنند';
	@override String get staticIP => 'IP استاتیک';
	@override String get other => 'دیگر';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get isp => 'ارائه دهنده VPN';
	@override String get ispBind => 'اتصال به [ارائه‌دهنده VPN]';
	@override String ispUnbind({required Object p}) => 'لغو پیوند[${p}]';
	@override String ispFaq({required Object p}) => 'سوالات متداول[${p}]';
	@override String ispCustomerService({required Object p}) => 'خدمات مشتری[${p}]';
	@override String ispFollow({required Object p}) => 'دنبال کردن[${p}]';
	@override String get ispInvalidOrExpired => '[ارائه دهنده VPN]نامعتبر یا منقضی شده است';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get urlInvalid => 'URL نامعتبر';
	@override String get outboundActionCurrentSelected => 'فعلی انتخاب شده';
	@override String get outboundActionUrltest => 'انتخاب خودکار';
	@override String get outboundActionDirect => 'مستقیم';
	@override String get outboundActionBlock => 'مسدود';
	@override String get routeFinal => 'نهایی';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get setting => 'تنظیمات';
	@override String get protocolSniff => 'تشخیص پروتکل';
	@override String get protocolSniffOverrideDestination => 'نام دامنه شناسایی شده آدرس هدف اتصال را پوشش می دهد';
	@override String get remark => 'ملاحضات';
	@override String get remarkCannotEmpty => 'ملاحظات نمی‌تواند خالی باشد';
	@override String get remarkTooLong => 'ملاحظات تا ۳۲ حرف';
	@override String get remarkExist => 'ملاحظات از‌قبل وجود دارد، لطفا از نام دیگری استفاده کنید';
	@override String get domainSuffix => 'پسوند دامنه';
	@override String get domain => 'دامنه';
	@override String get domainKeyword => 'کلید‌واژه دامنه';
	@override String get domainRegex => 'عبارات باقاعده ی دامنه (Regex)';
	@override String get ip => 'IP';
	@override String get port => 'پورت';
	@override String get appPackage => 'شناسه بسته برنامه';
	@override String get processName => 'نام اجرایی پروسه';
	@override String get processPath => 'مسیر پروسه';
	@override String get systemProxy => 'پروکسی سیستم';
	@override String get netInterfaces => 'رابط شبکه';
	@override String get netSpeed => 'سرعت';
	@override String get website => 'وبسایت';
	@override String get rule => 'قانون';
	@override String get global => 'عمومی';
	@override String get qrcode => 'کد QR';
	@override String get scanQrcode => 'اسکن QRکد';
	@override String get scanResult => 'نتایج اسکن';
	@override String get backupAndSync => 'پشتیبان‌گیری و همگام‌سازی';
	@override String get importAndExport => 'وارد‌کردن و خروجی‌گرفتن';
	@override String get import => 'وارد‌کردن';
	@override String get export => 'خروجی‌گرفتن';
	@override String get send => 'ارسال کنید';
	@override String get receive => 'تصاحب';
	@override String sendOrReceiveNotMatch({required Object p}) => 'لطفا از [${p}] استفاده کنید';
	@override String get sendConfirm => 'ارسال را تایید کرد؟';
	@override String get termOfUse => 'شرایط استفاده';
	@override String get privacyPolicy => 'سیاست حریم خصوصی';
	@override String get about => 'درباره';
	@override String get name => 'نام';
	@override String get version => 'نسخه';
	@override String get notice => 'اطلاعیه';
	@override String get sort => 'مرتب‌سازی';
	@override String get novice => 'حالت مبتدی';
	@override String get recommended => 'پیشنهادی';
	@override String innerError({required Object p}) => 'خطای داخلی: ${p}';
	@override String get logicOperation => 'عملیات منطقی';
	@override String get share => 'اشتراک گذاری';
	@override String get candidateWord => 'کلمات نامزد';
	@override String get keywordOrRegx => 'کلمات کلیدی / معمولی';
	@override String get importFromClipboard => 'افزودن از کلیپ‌برد';
	@override String get exportToClipboard => 'صادرات به کلیپ بورد';
	@override String get server => 'سرور';
	@override String get turnOffPrivateDirect => 'لطفاً ابتدا [اتصال مستقیم شبکه خصوصی] را فعال کنید';
	@override String targetConnectFailed({required Object p}) => 'اتصال به [${p}] ناموفق بود، لطفاً مطمئن شوید که دستگاه در همان LAN است';
	@override String get appleTVSync => 'همگام سازی پیکربندی هسته فعلی با Apple TV - Karing';
	@override String get appleTVSyncDone => 'همگام سازی کامل شد، لطفاً برای باز کردن/راه اندازی مجدد اتصال به Apple TV - Karing بروید';
	@override String get appleTVRemoveCoreConfig => 'حذف Apple TV - Karing Core Configuration';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - نمایه اصلی کارینگ حذف شد';
	@override String get appleTVUrlInvalid => 'URL نامعتبر است، لطفاً Apple TV - Karing را باز کنید، کد QR نمایش داده شده توسط Karing را اسکن کنید';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] این عملکرد را ندارد، لطفا ارتقا دهید و دوباره امتحان کنید';
	@override String get remoteProfileEditConfirm => 'پس از به روز رسانی تنظیمات، تغییرات گره بازیابی می شوند آیا می خواهید ادامه دهید؟';
	@override String invalidFileType({required Object p}) => 'نوع فایل نامعتبر:${p}';
	@override String get mustBeValidHttpsURL => 'باید یک URL معتبر https باشد';
	@override String fileNotExistReinstall({required Object p}) => 'فایل [${p}] وجود ندارد، لطفا دوباره نصب کنید';
	@override String get latencyTest => 'بررسی تاخیر';
	@override String get latencyTestResolveIP => 'در طی تشخیص دستی، IP صادرات نیز تجزیه و تحلیل می شود.';
	@override String get latencyTestTimeout => 'تایم اوت';
	@override String get uwpExemption => 'معافیت جداسازی شبکه UWP';
	@override String get ads => 'تبلیغات را حذف کنید';
	@override String get adsBanner => 'تبلیغات بنری';
	@override String get donate => 'اهدا کنید';
	@override String get removeBannerAdsByShare => 'اشتراک گذاری[Karing]رفتن به تبلیغات';
	@override String get removeBannerAdsByReward => 'تماشای تبلیغات برو به تبلیغات';
	@override String removeBannerAdsByShareTip({required Object p, required Object d}) => 'یک بار به اشتراک بگذارید و ${p} روز بدون پاداش تبلیغاتی دریافت خواهید کرد (تا ${d}  روز قابل انباشته شدن است)';
	@override String removeBannerAdsByRewardTip({required Object p}) => 'یک تبلیغ را تماشا کنید و پاداش روز بدون آگهی ${p} دریافت خواهید کرد (نمی توان روی هم گذاشت)';
	@override String removeBannerAdsDone({required Object p}) => 'پاداش ${p} روز بدون آگهی دریافت کرد';
	@override String get edgeRuntimeNotInstalled => 'زمان اجرا Edge WebView2 روی دستگاه فعلی نصب نشده است و صفحه قابل نمایش نیست لطفاً زمان اجرا Edge WebView2 (x64) را بارگیری و نصب کنید، برنامه را مجدداً راه اندازی کنید و دوباره امتحان کنید.';
	@override String get requestCameraPermission => 'لطفاً مجوز [دوربین] را فعال کنید';
	@override String get requestScreenAccess => 'لطفاً مجوز [ضبط صفحه] را فعال کنید';
	@override String get requestAppQuery => 'لطفاً مجوز [Get Application List] را فعال کنید';
	@override Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
	};
}

// Path: AboutScreen
class _TranslationsAboutScreenFa implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'مرجع نصب';
	@override String get installTime => 'زمان نصب';
	@override String get versionChannel => 'کانال به‌روزرسانی خودکار';
	@override String get disableUAReport => 'داده های بهبود را اعمال کنید';
	@override String get disableUAReportTip => '[داده‌های بهبود برنامه] به ما کمک می‌کند تا تجربه محصول را در نسخه‌های پایین‌تر از نسخه اصلی بهبود بخشیم، همه [داده‌های بهبود برنامه] به‌جز [فعال‌سازی برنامه] را خاموش می‌کند.';
	@override String get devOptions => 'تنظیمات توسعه‌دهندگان';
	@override String get enableDebugLog => 'فعال‌سازی گزارش اشکال‌زدایی';
	@override String get viewFilsContent => 'مشاهده فایل‌ها';
	@override String get enablePprof => 'فعال‌سازی pprof';
	@override String get pprofPanel => 'پنل pprof';
	@override String get openDir => 'بازکردن دایرکتوری فایل';
	@override String get useOriginalSBProfile => 'استفاده از پروفایل اصلی سینگ‌باکس';
}

// Path: AddProfileByImportFromFileScreen
class _TranslationsAddProfileByImportFromFileScreenFa implements TranslationsAddProfileByImportFromFileScreenEn {
	_TranslationsAddProfileByImportFromFileScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'وارد‌کردن فایل پروفایل';
	@override String get chooseFile => 'انتخاب فایل';
	@override String get configExist => 'پروفایل از‌قبل وجود دارد، لطفا آن را به‌طور مکرر اضافه نکنید';
}

// Path: AddProfileByLinkOrContentScreen
class _TranslationsAddProfileByLinkOrContentScreenFa implements TranslationsAddProfileByLinkOrContentScreenEn {
	_TranslationsAddProfileByLinkOrContentScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'افزودن لینک پروفایل';
	@override String get updateTimerInterval => 'فاصله‌ی به‌روزرسانی';
	@override String get updateTimerIntervalTips => 'حداقل: 5 متر';
	@override String get profileLinkContent => 'لینک/محتوای پروفایل';
	@override String get profileLinkContentHit => 'لینک/محتوای پروفایل [الزامی] (پشتیبانی از کلش، V2ray(پشتیبانی به‌صورت دسته‌ای)، لینک‌های پروفایل فرعی)، استش، کارینگ، سینگ‌باکس، شدوساکس، لینک‌های پروفایل فرعی)';
	@override String get subscriptionCannotEmpty => 'لینک پروفایل نمی‌تواند خالی باشد';
	@override String get configExist => 'پروفایل از‌قبل وجود دارد، لطفا آن را به‌طور مکرر اضافه نکنید';
	@override String get invalidUrl => 'لینک پروفایل خیلی طولانی است';
	@override String addFailedFormatException({required Object p}) => 'فرمت اشتباه است، لطفا آن را اصلاح کرده و مجدد اضافه کنید:${p}';
	@override String addFailedThenDownloadAndImport({required Object p}) => 'افزودن نشد: ${p}، لطفاً [UserAgent] را تغییر دهید و دوباره امتحان کنید، یا از مرورگر خود دستگاه برای باز کردن پیوند پیکربندی و وارد کردن فایل پیکربندی دانلود شده توسط مرورگر به این برنامه استفاده کنید.';
	@override String addFailedHandshakeException({required Object p}) => 'اضافه کردن: ${p} ناموفق بود، لطفاً عامل را باز کنید یا گره عامل فعلی را تغییر دهید و دوباره امتحان کنید';
}

// Path: AddProfileByScanQrcodeScanScreen
class _TranslationsAddProfileByScanQrcodeScanScreenFa implements TranslationsAddProfileByScanQrcodeScanScreenEn {
	_TranslationsAddProfileByScanQrcodeScanScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get copy => 'کپی‌کردن لینک';
	@override String get open => 'بازکردن لینک';
	@override String get screenshot => 'اسکرین‌شات';
	@override String get scanFromImage => 'اسکن از عکس';
	@override String get scanNoResult => 'تجزیه عکس ناموفق بود، لطفا مطمعن شوید اسکرین‌شات یک کدQR معتبر است';
	@override String get scanEmptyResult => 'نتیجه اسکن خالی است';
}

// Path: BackupAndSyncLanSyncScreen
class _TranslationsBackupAndSyncLanSyncScreenFa implements TranslationsBackupAndSyncLanSyncScreenEn {
	_TranslationsBackupAndSyncLanSyncScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'LAN Sync';
	@override String get lanSyncNotQuitTips => 'قبل از تکمیل همگام‌سازی از این قسمت خارج نشوید';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenFa implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'آدرس URL سرور';
	@override String get webdavRequired => 'نمی‌تواند خالی باشد';
	@override String get webdavLoginFailed => 'ورود ناموفق بود:';
	@override String get webdavListFailed => 'دریافت لیست فایل ناموفق بود:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenFa implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'نامعتبر [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => 'نامعتبر [IP Cidr]:${p}';
	@override String invalidPort({required Object p}) => 'نامعتبر [Port]:${p}';
	@override String invalidRuleSet({required Object p}) => 'نامعتبر [Rule Set]:${p} باید URL یک URL معتبر https باشد و یک فایل دودویی(binary) با پسوند فایل .srs/.json باشد';
	@override String invalidRuleSetBuildIn({required Object p}) => 'نامعتبر [Rule Set(build-in)]:${p} نامعتبر است، قالب geosite:xxx یا geoip:xxx یا acl:xxx است و xxx باید یک نام قانون معتبر باشد';
	@override String get setDiversionRule => 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenFa implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'کشف قانون انحراف';
	@override String get detect => 'کشف';
	@override String get rule => 'قانون:';
	@override String get outbound => 'سرور پروکسی:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenFa implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'نکته: سعی کنید قوانین را از بالا به پایین مطابقت دهید، از [نهایی] استفاده کنید.';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenFa implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP نمی‌تواند خالی باشد';
	@override String get urlCanNotEmpty => 'URL نمی‌تواند خالی باشد';
	@override String error({required Object p}) => 'نوع پشتیبانی نشده:${p}';
	@override String get dnsDesc => 'ستون اول داده‌های تأخیر، تأخیر ارتباط مستقیم است؛\nستون دوم: روشن کردن [[ترافیک پروکسی] برای حل و فصل DNS از طریق سرور پراکسی]: داده‌های تأخیر، تأخیر درخواست ارسال شده از طریق سرور پراکسی فعلی است [[ترافیک پروکسی] روشن نیست، از طریق سرور پروکسی DNS را حل می‌کند]: داده‌های تأخیر تأخیر درخواست اتصال مستقیم است';
}

// Path: FeedbackScreen
class _TranslationsFeedbackScreenFa implements TranslationsFeedbackScreenEn {
	_TranslationsFeedbackScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get content => 'محتوای بازخورد';
	@override String get contentHit => 'الزامی، تا 500 حرف';
	@override String get contentCannotEmpty => 'محتوای بازخورد نمی‌تواند خالی باشد';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenFa implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'نمایش دهنده محتوای فایل';
	@override String get chooseFile => 'انتخاب فایل';
	@override String get clearFileContent => 'آیا از پاکسازی محتوای فایل اطمینان دارید؟';
	@override String get clearFileContentTips => 'آیا از پاکسازی محتوای فایل پروفایل اطمینان دارید؟ پاکسازی محتوای فایل پروفایل ممکن است باعث از دست رفتن داده یا عملیات غیرعادی نرم‌افزار شود؛ لطفا با احتیاط عمل کنید.';
}

// Path: HomeScreen
class _TranslationsHomeScreenFa implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'لطفا یک سرور انتخاب کنید';
	@override String get invalidServer => 'نامعتبر است، لطفا مجدد انتخاب کنید';
	@override String get disabledServer => 'غیرفعال است، لطفا مجدد انتخاب کنید';
	@override String get expiredServer => 'هیچ سروری در دسترس نیست: ممکن است پیکربندی قدیمی یا غیرفعال باشد';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get trafficTotal => 'کل ترافیک';
	@override String get trafficProxy => 'ترافیک پروکسی';
	@override String get myLinkEmpty => 'لطفا قبل‌از استفاده [لینک میان‌بر] را راه‌اندازی کنید';
	@override String get deviceNoSpace => 'فضای خالی کافی ندارید';
	@override String tooMuchServers({required Object p, required Object p1}) => 'تعداد زیادی سرور پروکسی [${p}>${p1}] وجود دارد و ممکن است به دلیل محدودیت حافظه سیستم، اتصال امکان پذیر نباشد.';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenFa implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'اجرای نرم‌افزار ناموفق بود [نام‌ اجرایی پروسه نامعتبر]، لطفا مجدد نرم‌افزار را در دایرکتوری دیگری نصب کنید';
	@override String get invalidProfile => 'اجرای نرم‌افزار ناموفق بود [دسترسی به پروفایل ناموفق بود]، لطفا مجدد نرم افزار را نصب کنید';
	@override String get invalidVersion => 'اجرای نرم‌افزار ناموفق بود [ورژن نامعتبر]، لطفا مجدد نرم‌افزار را نصب کنید';
	@override String get systemVersionLow => 'راه اندازی برنامه ناموفق بود [نسخه سیستم خیلی کم است]';
	@override String get invalidInstallPath => 'مسیر نصب نامعتبر است، لطفا مجدد در مسیر معتبر نصب کنید';
}

// Path: MyProfilesEditScreen
class _TranslationsMyProfilesEditScreenFa implements TranslationsMyProfilesEditScreenEn {
	_TranslationsMyProfilesEditScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ویرایش پروفایل';
	@override String get urlExist => 'آدرس URL از‌قبل وجود دارد، لطفا از URL دیگری استفاده کنید';
	@override String get updateTimerInterval => 'فاصله‌ی به‌روزرسانی';
	@override String get updateTimerIntervalTips => 'حداقل: 5 متر';
	@override String get reloadAfterProfileUpdate => 'بارگذاری مجدد پس‌از به‌روزرسانی پروفایل';
	@override String get testLatencyAfterProfileUpdate => 'شروع تست تاخیر پس‌از به‌روزرسانی خودکار پروفایل';
	@override String get testLatencyAfterProfileUpdateTips => 'وی‌پی‌ان باید روشن و [بارگذاری مجدد پس‌از به‌روزرسانی پروفایل] فعال باشد';
	@override String get testLatencyAutoRemove => 'خودکار سرورهای ناموفق در تست تاخیر را حذف کن';
	@override String get testLatencyAutoRemoveTips => 'تا سه بار امتحان کنید';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenFa implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'ادغام پروفایل‌ها';
	@override String get profilesMergeTarget => 'پروفایل هدف';
	@override String get profilesMergeSource => 'پروفایل مرجع';
	@override String get profilesMergeTips => 'راهنمایی: انحراف پروفایل مرجع حذف می‌شود';
}

// Path: MyProfilesScreen
class _TranslationsMyProfilesScreenFa implements TranslationsMyProfilesScreenEn {
	_TranslationsMyProfilesScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفایل‌ها';
	@override String get atLeastOneEnable => 'نمی‌تواند غیرغعال شود، لطفا حداقل یک پروفایل را فعال نگه دارید';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenFa implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'بررسی شبکه';
	@override String get warn => 'توجه: به دلیل تأثیر محیط شبکه و قوانین انحراف، نتایج آزمون کاملاً معادل نتایج واقعی نیست.';
	@override String get check => 'بررسی';
	@override String get invalidDomain => 'نام دامنه نامعتبر';
	@override String get connectivity => 'اتصال شبکه';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'تست اتصال Ipv4 همه‌ی [${p}] ناموفق بودند';
	@override String get connectivityTestIpv4Ok => 'اتصال Ipv4 موفق بود';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'تست اتصال Ipv6 همه‌ی [${p}] ناموفق بودند، شاید شبکه شما از Ipv6 پشتیبانی نکند';
	@override String get connectivityTestIpv6Ok => 'اتصال Ipv6 موفق بود';
	@override String get connectivityTestOk => 'شبکه به اینترنت متصل است';
	@override String get connectivityTestFailed => 'شبکه هنوز به اینترنت متصل نشده';
	@override String get remoteRulesetsDownloadOk => 'همه با موفقیت دانلود شدند';
	@override String get remoteRulesetsDownloadNotOk => 'دانلود شد یا ناموفق بود';
	@override String get outbound => 'سرور پروکسی';
	@override String outboundOk({required Object p}) => '[${p}] اتصال موفق بود';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] اتصال ناموفق \nارور:[${p2}]';
	@override String get dnsServer => 'سرور دی‌ان‌اس';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS query succeeded\nDNS Rule: درخواست دی‌ان‌اس موفق بود\nقانون دی‌ان‌اس: [${p2}]\nتاخیر: [${p3} ms]\nآدرس [${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]جستجوی DNS موفق بود\nقانون DNS: [${p2}]\nخطا:[${p3}]';
	@override String get host => 'اتصال HTTP';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nقانون انحراف: [${p2}]\nسرور پروکسی: [${p3}]';
	@override String get hostConnectionOk => 'اتصال موفق شد';
	@override String hostConnectionFailed({required Object p}) => 'ارتباط ناموفق بود:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenFa implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'فیلتر اتصال‌ها';
	@override String get hostIp => 'دامنه/آی‌پی';
	@override String get app => 'نرم‌افزار';
	@override String get rule => 'قانون';
	@override String get chain => 'Outbound';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenFa implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'اتصال‌ها';
	@override String get copyAsCSV => 'در فرمت CAV کپی شد';
	@override String get selectType => 'انتخاب نوع انحراف';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenFa implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروکسی به‌تفکیک برنامه';
	@override String get whiteListMode => 'حالت لیست سفید';
	@override String get whiteListModeTip => 'وقتی فعال باشد: فقط برنامه‌هایی که انتخاب شده‌اند پروکسی می‌شوند؛ وقتی فعال نباشد: فقط برنامه‌هایی که انتخاب نشده‌اند پروکسی می‌شوند';
	@override String get hideSystemApp => 'برنامه های سیستم را مخفی کنید';
	@override String get hideAppIcon => 'پنهان کردن نماد برنامه';
	@override String get enableAppQueryPermission => 'مجوز [درخواست لیست نرم‌افزار] را روشن کنید';
}

// Path: QrcodeScreen
class _TranslationsQrcodeScreenFa implements TranslationsQrcodeScreenEn {
	_TranslationsQrcodeScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get tooLong => 'متن برای نمایش خیلی طولانی است';
	@override String get copy => 'کپی‌کردن لینک';
	@override String get open => 'بازکردن لینک';
	@override String get share => 'اشتراک لینک';
	@override String get shareImage => 'اشتراک کدQR';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenFa implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'کشور یا منطقه';
	@override String get Regions => 'راهنمایی: لطفا کشور یا منطقه فعلی خود را انتخاب کنید درغیراین‌صورت ممکن‌است باعث مشکلات انحراف شبکه شود';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenFa implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'انتخاب سرور';
	@override String get autoSelectServer => 'خودکار سرور با کمترین تاخیر را انتخاب کن';
	@override String get recentUse => 'اخیرا استفاده‌شده';
	@override String get myFav => 'علاقه‌مندی‌های من';
	@override String selectLocal({required Object p}) => 'سرور انتخاب شده یک آدرس محلی است و شاید به درستی عمل نکند :${p}';
	@override String get selectRequireEnableIPv6 => 'سرور انتخاب شده یک آدرس IPv6 است و نیاز به [فعال‌سازی IPv6] دارد';
	@override String get selectDisabled => 'این سرور غیرفعال شده است';
	@override String get error404 => 'تشخیص تاخیر با یک اخطار مواجه شده‌است، لطفا بررسی کنید که کانفیگی با محتویات یکسان وجود دارد یا خیر';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenFa implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'دریافت ترافیک';
	@override String get tutorial => 'آموزش';
	@override String get commonlyUsedRulesets => 'قوانین رایج';
	@override String get howToRemoveAds => 'نحوه حذف تبلیغات';
	@override String get htmlBoard => 'پنل آنلاین';
	@override String get dnsLeakDetection => 'تشخیص نشت DNS';
	@override String get proxyLeakDetection => 'تشخیص نشت عامل';
	@override String get speedTest => 'تست سرعت';
	@override String get downloadProfilePreferProxy => 'برای دانلود پروفایل پروکسی را ترجیح بده';
	@override String get downloadProfilePreferProxyTips => 'اگر اکنون متصل هستین، پروفایل ابتدا از پروکسی متصل دانلود می‌شود';
	@override String get rulesetDirectDownlad => 'دانلود مستقیم مجموعه قوانین';
	@override String get hideUnusedDiversionGroup => 'مخفی‌کردن گروه‌های انحراف به‌کار نرفته';
	@override String get disableISPDiversionGroup => 'قوانین انحراف [ارائه دهنده VPN] را غیرفعال کنید';
	@override String get portSetting => 'پورت';
	@override String get portSettingRule => 'قانون محور';
	@override String get portSettingDirectAll => 'مستقیم‌شدن همه';
	@override String get portSettingProxyAll => 'پروکسی‌شدن همه';
	@override String get portSettingControl => 'کنترل و همگام‌سازی';
	@override String get portSettingCluster => 'سرویس کلاستر';
	@override String get modifyPort => 'اصلاح پورت';
	@override String get modifyPortOccupied => 'پورت اشغال شده است لطفا از پورت دیگری استفاده کنید';
	@override String get ipStrategyTips => 'قبل‌از فعال‌سازی لطفا مطمعن شوید شبکه شما از IPv6 پشتیبانی می‌کند، وگرنه برخی ترافیک‌ها نمی‌توانند به‌صورت نرمال دردسترس باشند';
	@override String get tunAppendHttpProxy => 'پیوست دادن پروکسی HTTP به وی‌پی‌ان';
	@override String get tunAppendHttpProxyTips => 'برخی نرم‌افزار‌ها از کارت شبکه مجازی رد میشوند و مستقیم به پروکسی HTTP متصل می‌شوند';
	@override String get tlsInsecureEnable => 'رد شدن از تأیید گواهی';
	@override String get tlsFragmentEnable => 'بخش بندی TLS را فعال کنید';
	@override String get tlsFragmentSize => 'اندازه بخش TLS';
	@override String get tlsFragmentSleep => 'خواب بخش‌بندی شده TLS';
	@override String get tlsMixedCaseSNIEnable => 'TLS ترکیبی SNI را فعال کنید';
	@override String get tlsPaddingEnable => 'فعال کردن TLS Padding';
	@override String get tlsPaddingSize => 'اندازه پد TLS';
	@override String get dnsEnableRule => 'فعال‌سازی قوانین انحراف دی‌ان‌اس';
	@override String get dnsEnableFakeIp => 'فعال‌سازی آی‌پی جعلی';
	@override String get dnsEnableClientSubnet => 'ECS را فعال کنید';
	@override String get dnsEnableProxyResolveByProxy => 'دی‌ان‌اس را از [ترافیک پروکسی] سرور پروکسی عبور می‌دهد';
	@override String get dnsEnableFinalResolveByProxy => 'دی‌ان‌اس را از سرور پروکسی [نهایی] عبور می‌دهد';
	@override String get dnsTestDomain => 'تست دامنه';
	@override String get dnsTestDomainInvalid => 'دامنه نامعتبر';
	@override String get dnsTypeOutbound => 'سرور پروکسی';
	@override String get dnsTypeDirect => 'ترافیک مستقیم';
	@override String get dnsTypeProxy => 'ترافیک پروکسی';
	@override String get dnsTypeResolver => 'سرور دی‌ان‌اس';
	@override String get dnsEnableRuleTips => 'بعد از فعال‌سازی نام دامنه، سرور دی‌ان‌اس مربوط را بر اساس قوانین انحراف برای عبور انتخاب می‌کند';
	@override String get dnsEnableFakeIpTips => 'پس از فعال کردن FakeIP، اگر اتصال VPN قطع شود، ممکن است برنامه شما نیاز به راه اندازی مجدد داشته باشد [حالت TUN].';
	@override String get dnsTypeOutboundTips => 'سامانه نام دامنه (DNS) برای سرور پروکسی';
	@override String get dnsTypeDirectTips => 'سامانه نام دامنه (DNS) برای ترافیک مستقیم';
	@override String get dnsTypeProxyTips => 'سامانه نام دامنه (DNS) برای ترافیک پروکسی';
	@override String get dnsTypeResolverTips => 'سامانه نام دامنه (DNS) برای بقیه سرور دی‌ان‌اس';
	@override String get dnsTypeFinalTips => 'سامانه نام دامنه (DNS) برای بقیه ترافیک';
	@override String get dnsAutoSetServer => 'به طور خودکار سرور را راه اندازی کنید';
	@override String get dnsResetServer => 'بازنشانی سرور';
	@override String get inboundDomainResolve => 'حل نام دامنه های ورودی';
	@override String get privateDirect => 'اتصال مستقیم شبکه خصوصی';
	@override String inboundDomainResolveTips({required Object p}) => 'برخی از نام‌های دامنه بدون قوانین انحراف پیکربندی شده باید حل و فصل شوند تا بتوانند قوانین انحراف مبتنی بر IP را تحت تأثیر قرار دهند [${p}].';
	@override String get useRomoteRes => 'از منابع راه‌دور استفاده کنید';
	@override String get autoSelect => 'انتخاب خودکار';
	@override String get autoSelectServerIgnorePerProxyServer => 'سرورهای پروکسی [جلو/زنجیری] را نادیده بگیرید';
	@override String get autoSelectServerInterval => 'بازه زمانی بررسی تاخیر';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'شناسایی مجدد زمانی که شبکه تغییر می کند';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'سرور فعلی را پس از تشخیص تأخیر دستی به روز کنید';
	@override String get autoSelectServerIntervalTips => 'هرچه فاصله تشخیص تاخیر کمتر باشد، داده های تاخیر سرور به موقع به روز می شود، اما منابع بیشتری را اشغال می کند و برق را سریعتر مصرف می کند';
	@override String get autoSelectServerFavFirst => 'اولویت استفاده از [علاقه‌مندی‌های من]';
	@override String get autoSelectServerFavFirstTips => 'اگر لیست [علاقه‌مندی‌های من] خالی نبود از سرور‌های داخل [علاقه‌مندی‌های من] استفاده کن';
	@override String get autoSelectServerFilter => 'فیلترکردن سرور‌های نامعتبر';
	@override String autoSelectServerFilterTips({required Object p}) => 'اگر بعد از فیلتر کردن هیچ سروری در دسترس نباشد، از اولین سرورهای [${p}] استفاده خواهد شد.';
	@override String get autoSelectServerLimitedNum => 'حداکثر تعداد سرور';
	@override String get autoSelectServerLimitedNumTips => 'سرورهای بیش از این تعداد فیلتر خواهند شد';
	@override String get numInvalid => 'عدد نامعتبر';
	@override String get hideInvalidServer => 'مخفی‌کردن سرور‌های نامعتبر';
	@override String get sortServer => 'مرتب‌سازی سرور';
	@override String get sortServerTips => 'مرتب‌سازی براساس تاخیر از کم به زیاد';
	@override String get selectServerHideRecommand => 'مخفی‌کردن [پیشنهادی]';
	@override String get selectServerHideRecent => '‌ مخفی‌کردن [اخیرا استفاده‌شده]';
	@override String get selectServerHideFav => 'مخفی‌کردن [علاقه‌مندی‌های من]';
	@override String get homeScreen => 'صفحه‌ خانه';
	@override String get theme => 'تِم';
	@override String get myLink => 'لینک میان‌بر';
	@override String get myLinkInvalid => 'URL نامعتبر';
	@override String get autoConnectAfterLaunch => 'اتصال خودکار پس‌از راه‌اندازی';
	@override String get hideAfterLaunch => 'پنهان کردن پنجره پس از راه اندازی';
	@override String get autoSetSystemProxy => 'تنظیم خودکار حالت پروکسی سیستم پس‌از اتصال';
	@override String get disconnectWhenQuit => 'قطع اتصال هنگام خروج از نرم‌افزار';
	@override String get allowBypass => 'به برنامه‌ها اجازه دهید VPN را دور بزنند';
	@override String get importSuccess => 'افزودن موفق بود';
	@override String get rewriteConfirm => 'این فایل کانفیگ‌های محلی موجود را بازنویسی می‌کند. آیا می‌خواهید ادامه بدین؟';
	@override String get networkShare => 'اشتراک‌گذاری شبکه';
	@override String get frontProxy => 'پروکسی جلو/زنجیره';
	@override String frontProxyTips({required Object p}) => 'داده-> سرور پروکسی جلویی/زنجیری [پراکسی سرورهای چندگانه: از بالا به پایین]-> سرور پروکسی [${p}]-> سرور هدف';
	@override String get allowOtherHostsConnect => 'اجازه اتصال دیگران';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'اگر پس از روشن کردن اشتراک‌گذاری، دیگران نمی‌توانند به این دستگاه دسترسی داشته باشند، لطفاً این سوئیچ را خاموش کنید.';
	@override String get enableCluster => 'فعال‌سازی پروکسی Socks/Http خوشه‌ای';
	@override String get clusterAllowOtherHostsConnect => 'اجازه اتصال دیگران به خوشه';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'احراز هویت خوشه پروکسی';
	@override String get tunMode => 'حالت TUN';
	@override String get tunModeTips => 'حالت TUN تمام ترافیک سیستم را تحت کنترل خواهد گرفت [دراین حالت می‌توانید پروکسی سیستم را غیرفعال نگه‌ دارید)';
	@override String get tunModeRunAsAdmin => 'حالت TUN نیازمند مجوز مدیر سیستم می‌باشد لطفا نرم‌افزار را مجدد با حالت مدیر (administrator) راه‌اندازی کنید';
	@override String get tunStack => 'Stack';
	@override String get launchAtStartup => 'اجرا در راه‌اندازی';
	@override String get quitWhenSwitchSystemUser => 'خروج از نرم‌افزار هنگام تعویض کاربران سیستم';
	@override String get handleScheme => 'فراخوانی Scheme سیستم';
	@override String get portableMode => 'حالت قابل‌حمل';
	@override String get portableModeDisableTips => 'اگر نیاز دارین از حالت قابل‌حمل خارج شوید لطفا از [Karing] خارج شده و به‌صورت دستی پوشه [Profiles] هم مسیر با فایل [karing.exe] را حذف کنید';
	@override String get handleKaringScheme => 'رسیدگی به ندای karing://';
	@override String get handleClashScheme => 'رسیدگی به‌ ندای clash://';
	@override String get handleSingboxScheme => 'رسیدگی به ندای sing-box://';
	@override String get alwayOnVPN => 'اتصال همیشه باز';
	@override String get removeSystemVPNConfig => 'حذف پیکربندی وی‌پی‌ان سیستم';
	@override String get timeConnectOrDisconnect => 'اتصال/قطع اتصال برنامه‌ریزی شده';
	@override String get timeConnectOrDisconnectTips => 'برای اعمال شدن وی‌پی‌ان باید متصل باشد. پس‌از روشن‌شدن [خواب خودکار] غیرفعال می‌شود';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'فاصله اتصال/قطع اتصال نمی تواند کمتر از ${p} دقیقه باشد';
	@override String get disableFontScaler => 'غیرفعال‌سازی مقیاس‌بندی فونت(با راه‌اندازی مجدد اعمال می‌شود)';
	@override String get autoOrientation => 'چرخش صفحه را دنبال کنید';
	@override String get restartTakesEffect => 'با راه‌اندازی مجدد اعمال می‌شود';
	@override String get resetSettings => 'بازنشانی تنظیمات';
	@override String get cleanCache => 'پاک کردن حافظه پنهان';
	@override String get cleanCacheDone => 'پاکسازی کامل شد';
	@override String get appleTestFlight => 'تست‌فلایت اپل';
	@override String get appleAppStore => 'اپ‌استور اپل';
	@override String hasNewVersion({required Object p}) => 'به‌روزرسانی نسخه ${p} ';
	@override String get follow => 'مارو دنبال کنید';
	@override String get contactUs => 'ارتباط باما';
	@override String get supportUs => 'از ما حمایت کنید';
	@override String get rateInApp => 'امتیاز به ما';
	@override String get rateInAppStore => 'به ما در اپ‌استور امتیاز بدین';
}

// Path: SpeedTestSettingsScreen
class _TranslationsSpeedTestSettingsScreenFa implements TranslationsSpeedTestSettingsScreenEn {
	_TranslationsSpeedTestSettingsScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL تست سرعت';
}

// Path: TextToQrCodeScreen
class _TranslationsTextToQrCodeScreenFa implements TranslationsTextToQrCodeScreenEn {
	_TranslationsTextToQrCodeScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'متن به کد QR';
	@override String get convert => 'تبدیل';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenFa implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'حریم‌خصوصی شما اولویت دارد';
	@override String get agreeAndContinue => 'پذیرفتن و ادامه';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenFa implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'نسخه جدید [${p}] آماده است';
	@override String get update => 'راه‌اندازی مجدد برای به‌روزرسانی';
	@override String get cancel => 'الان‌ نه';
}

// Path: CommonWidget
class _TranslationsCommonWidgetFa implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'اگر [وی‌پی‌ان همیشه روشن] روشن است لطفا [وی‌پی‌ان همیشه روشن] را خاموش کنید و مجدد برای اتصال تلاش کنید';
	@override String get resetPort => 'لطفاً پورت را به پورت موجود دیگری تغییر دهید یا برنامه ای را که پورت را اشغال می کند ببندید.';
}

// Path: ServerManager
class _TranslationsServerManagerFa implements TranslationsServerManagerEn {
	_TranslationsServerManagerFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get noServerAvaliable => 'هیچ سروری در دسترس نیست، لطفاً مطمئن شوید که پیوند پیکربندی یا فایل پیکربندی معتبر است، اگر پیکربندی شما از GitHub آمده است، لطفاً آدرس پیوند را از دکمه [Raw] در صفحه دریافت کنید';
	@override String get filePathCannotEmpty => 'مسیر فایل نمی‌تواند خالی باشد';
	@override String fileNotExist({required Object p}) => 'فایل وجود ندارد:${p}';
	@override String get urlCannotEmpty => 'لینک نمی‌تواند خالی باشد';
	@override String get invalidUrl => 'لینک پروفایل نامعتبر است';
	@override String get parseFailed => 'تجزیه پروفایل انجام نشد';
}

// Path: main
class _TranslationsMainFa implements TranslationsMainEn {
	_TranslationsMainFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayFa tray = _TranslationsMainTrayFa._(_root);
}

// Path: main.tray
class _TranslationsMainTrayFa implements TranslationsMainTrayEn {
	_TranslationsMainTrayFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => '    بازکردن    ';
	@override String get menuExit => '    بستن    ';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsFa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'AboutScreen.installRefer': return 'مرجع نصب';
			case 'AboutScreen.installTime': return 'زمان نصب';
			case 'AboutScreen.versionChannel': return 'کانال به‌روزرسانی خودکار';
			case 'AboutScreen.disableUAReport': return 'داده های بهبود را اعمال کنید';
			case 'AboutScreen.disableUAReportTip': return '[داده‌های بهبود برنامه] به ما کمک می‌کند تا تجربه محصول را در نسخه‌های پایین‌تر از نسخه اصلی بهبود بخشیم، همه [داده‌های بهبود برنامه] به‌جز [فعال‌سازی برنامه] را خاموش می‌کند.';
			case 'AboutScreen.devOptions': return 'تنظیمات توسعه‌دهندگان';
			case 'AboutScreen.enableDebugLog': return 'فعال‌سازی گزارش اشکال‌زدایی';
			case 'AboutScreen.viewFilsContent': return 'مشاهده فایل‌ها';
			case 'AboutScreen.enablePprof': return 'فعال‌سازی pprof';
			case 'AboutScreen.pprofPanel': return 'پنل pprof';
			case 'AboutScreen.openDir': return 'بازکردن دایرکتوری فایل';
			case 'AboutScreen.useOriginalSBProfile': return 'استفاده از پروفایل اصلی سینگ‌باکس';
			case 'AddProfileByImportFromFileScreen.title': return 'وارد‌کردن فایل پروفایل';
			case 'AddProfileByImportFromFileScreen.chooseFile': return 'انتخاب فایل';
			case 'AddProfileByImportFromFileScreen.configExist': return 'پروفایل از‌قبل وجود دارد، لطفا آن را به‌طور مکرر اضافه نکنید';
			case 'AddProfileByLinkOrContentScreen.title': return 'افزودن لینک پروفایل';
			case 'AddProfileByLinkOrContentScreen.updateTimerInterval': return 'فاصله‌ی به‌روزرسانی';
			case 'AddProfileByLinkOrContentScreen.updateTimerIntervalTips': return 'حداقل: 5 متر';
			case 'AddProfileByLinkOrContentScreen.profileLinkContent': return 'لینک/محتوای پروفایل';
			case 'AddProfileByLinkOrContentScreen.profileLinkContentHit': return 'لینک/محتوای پروفایل [الزامی] (پشتیبانی از کلش، V2ray(پشتیبانی به‌صورت دسته‌ای)، لینک‌های پروفایل فرعی)، استش، کارینگ، سینگ‌باکس، شدوساکس، لینک‌های پروفایل فرعی)';
			case 'AddProfileByLinkOrContentScreen.subscriptionCannotEmpty': return 'لینک پروفایل نمی‌تواند خالی باشد';
			case 'AddProfileByLinkOrContentScreen.configExist': return 'پروفایل از‌قبل وجود دارد، لطفا آن را به‌طور مکرر اضافه نکنید';
			case 'AddProfileByLinkOrContentScreen.invalidUrl': return 'لینک پروفایل خیلی طولانی است';
			case 'AddProfileByLinkOrContentScreen.addFailedFormatException': return ({required Object p}) => 'فرمت اشتباه است، لطفا آن را اصلاح کرده و مجدد اضافه کنید:${p}';
			case 'AddProfileByLinkOrContentScreen.addFailedThenDownloadAndImport': return ({required Object p}) => 'افزودن نشد: ${p}، لطفاً [UserAgent] را تغییر دهید و دوباره امتحان کنید، یا از مرورگر خود دستگاه برای باز کردن پیوند پیکربندی و وارد کردن فایل پیکربندی دانلود شده توسط مرورگر به این برنامه استفاده کنید.';
			case 'AddProfileByLinkOrContentScreen.addFailedHandshakeException': return ({required Object p}) => 'اضافه کردن: ${p} ناموفق بود، لطفاً عامل را باز کنید یا گره عامل فعلی را تغییر دهید و دوباره امتحان کنید';
			case 'AddProfileByScanQrcodeScanScreen.copy': return 'کپی‌کردن لینک';
			case 'AddProfileByScanQrcodeScanScreen.open': return 'بازکردن لینک';
			case 'AddProfileByScanQrcodeScanScreen.screenshot': return 'اسکرین‌شات';
			case 'AddProfileByScanQrcodeScanScreen.scanFromImage': return 'اسکن از عکس';
			case 'AddProfileByScanQrcodeScanScreen.scanNoResult': return 'تجزیه عکس ناموفق بود، لطفا مطمعن شوید اسکرین‌شات یک کدQR معتبر است';
			case 'AddProfileByScanQrcodeScanScreen.scanEmptyResult': return 'نتیجه اسکن خالی است';
			case 'BackupAndSyncLanSyncScreen.title': return 'LAN Sync';
			case 'BackupAndSyncLanSyncScreen.lanSyncNotQuitTips': return 'قبل از تکمیل همگام‌سازی از این قسمت خارج نشوید';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return 'آدرس URL سرور';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return 'نمی‌تواند خالی باشد';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return 'ورود ناموفق بود:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return 'دریافت لیست فایل ناموفق بود:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => 'نامعتبر [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => 'نامعتبر [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => 'نامعتبر [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => 'نامعتبر [Rule Set]:${p} باید URL یک URL معتبر https باشد و یک فایل دودویی(binary) با پسوند فایل .srs/.json باشد';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => 'نامعتبر [Rule Set(build-in)]:${p} نامعتبر است، قالب geosite:xxx یا geoip:xxx یا acl:xxx است و xxx باید یک نام قانون معتبر باشد';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد';
			case 'DiversionRuleDetectScreen.title': return 'کشف قانون انحراف';
			case 'DiversionRuleDetectScreen.detect': return 'کشف';
			case 'DiversionRuleDetectScreen.rule': return 'قانون:';
			case 'DiversionRuleDetectScreen.outbound': return 'سرور پروکسی:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return 'نکته: سعی کنید قوانین را از بالا به پایین مطابقت دهید، از [نهایی] استفاده کنید.';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'ISP نمی‌تواند خالی باشد';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'URL نمی‌تواند خالی باشد';
			case 'DnsSettingsScreen.error': return ({required Object p}) => 'نوع پشتیبانی نشده:${p}';
			case 'DnsSettingsScreen.dnsDesc': return 'ستون اول داده‌های تأخیر، تأخیر ارتباط مستقیم است؛\nستون دوم: روشن کردن [[ترافیک پروکسی] برای حل و فصل DNS از طریق سرور پراکسی]: داده‌های تأخیر، تأخیر درخواست ارسال شده از طریق سرور پراکسی فعلی است [[ترافیک پروکسی] روشن نیست، از طریق سرور پروکسی DNS را حل می‌کند]: داده‌های تأخیر تأخیر درخواست اتصال مستقیم است';
			case 'FeedbackScreen.content': return 'محتوای بازخورد';
			case 'FeedbackScreen.contentHit': return 'الزامی، تا 500 حرف';
			case 'FeedbackScreen.contentCannotEmpty': return 'محتوای بازخورد نمی‌تواند خالی باشد';
			case 'FileContentViewerScreen.title': return 'نمایش دهنده محتوای فایل';
			case 'FileContentViewerScreen.chooseFile': return 'انتخاب فایل';
			case 'FileContentViewerScreen.clearFileContent': return 'آیا از پاکسازی محتوای فایل اطمینان دارید؟';
			case 'FileContentViewerScreen.clearFileContentTips': return 'آیا از پاکسازی محتوای فایل پروفایل اطمینان دارید؟ پاکسازی محتوای فایل پروفایل ممکن است باعث از دست رفتن داده یا عملیات غیرعادی نرم‌افزار شود؛ لطفا با احتیاط عمل کنید.';
			case 'HomeScreen.toSelectServer': return 'لطفا یک سرور انتخاب کنید';
			case 'HomeScreen.invalidServer': return 'نامعتبر است، لطفا مجدد انتخاب کنید';
			case 'HomeScreen.disabledServer': return 'غیرفعال است، لطفا مجدد انتخاب کنید';
			case 'HomeScreen.expiredServer': return 'هیچ سروری در دسترس نیست: ممکن است پیکربندی قدیمی یا غیرفعال باشد';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'HomeScreen.trafficTotal': return 'کل ترافیک';
			case 'HomeScreen.trafficProxy': return 'ترافیک پروکسی';
			case 'HomeScreen.myLinkEmpty': return 'لطفا قبل‌از استفاده [لینک میان‌بر] را راه‌اندازی کنید';
			case 'HomeScreen.deviceNoSpace': return 'فضای خالی کافی ندارید';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => 'تعداد زیادی سرور پروکسی [${p}>${p1}] وجود دارد و ممکن است به دلیل محدودیت حافظه سیستم، اتصال امکان پذیر نباشد.';
			case 'LaunchFailedScreen.invalidProcess': return 'اجرای نرم‌افزار ناموفق بود [نام‌ اجرایی پروسه نامعتبر]، لطفا مجدد نرم‌افزار را در دایرکتوری دیگری نصب کنید';
			case 'LaunchFailedScreen.invalidProfile': return 'اجرای نرم‌افزار ناموفق بود [دسترسی به پروفایل ناموفق بود]، لطفا مجدد نرم افزار را نصب کنید';
			case 'LaunchFailedScreen.invalidVersion': return 'اجرای نرم‌افزار ناموفق بود [ورژن نامعتبر]، لطفا مجدد نرم‌افزار را نصب کنید';
			case 'LaunchFailedScreen.systemVersionLow': return 'راه اندازی برنامه ناموفق بود [نسخه سیستم خیلی کم است]';
			case 'LaunchFailedScreen.invalidInstallPath': return 'مسیر نصب نامعتبر است، لطفا مجدد در مسیر معتبر نصب کنید';
			case 'MyProfilesEditScreen.title': return 'ویرایش پروفایل';
			case 'MyProfilesEditScreen.urlExist': return 'آدرس URL از‌قبل وجود دارد، لطفا از URL دیگری استفاده کنید';
			case 'MyProfilesEditScreen.updateTimerInterval': return 'فاصله‌ی به‌روزرسانی';
			case 'MyProfilesEditScreen.updateTimerIntervalTips': return 'حداقل: 5 متر';
			case 'MyProfilesEditScreen.reloadAfterProfileUpdate': return 'بارگذاری مجدد پس‌از به‌روزرسانی پروفایل';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdate': return 'شروع تست تاخیر پس‌از به‌روزرسانی خودکار پروفایل';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdateTips': return 'وی‌پی‌ان باید روشن و [بارگذاری مجدد پس‌از به‌روزرسانی پروفایل] فعال باشد';
			case 'MyProfilesEditScreen.testLatencyAutoRemove': return 'خودکار سرورهای ناموفق در تست تاخیر را حذف کن';
			case 'MyProfilesEditScreen.testLatencyAutoRemoveTips': return 'تا سه بار امتحان کنید';
			case 'MyProfilesMergeScreen.profilesMerge': return 'ادغام پروفایل‌ها';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return 'پروفایل هدف';
			case 'MyProfilesMergeScreen.profilesMergeSource': return 'پروفایل مرجع';
			case 'MyProfilesMergeScreen.profilesMergeTips': return 'راهنمایی: انحراف پروفایل مرجع حذف می‌شود';
			case 'MyProfilesScreen.title': return 'پروفایل‌ها';
			case 'MyProfilesScreen.atLeastOneEnable': return 'نمی‌تواند غیرغعال شود، لطفا حداقل یک پروفایل را فعال نگه دارید';
			case 'NetCheckScreen.title': return 'بررسی شبکه';
			case 'NetCheckScreen.warn': return 'توجه: به دلیل تأثیر محیط شبکه و قوانین انحراف، نتایج آزمون کاملاً معادل نتایج واقعی نیست.';
			case 'NetCheckScreen.check': return 'بررسی';
			case 'NetCheckScreen.invalidDomain': return 'نام دامنه نامعتبر';
			case 'NetCheckScreen.connectivity': return 'اتصال شبکه';
			case 'NetCheckScreen.connectivityTestIpv4AllFailed': return ({required Object p}) => 'تست اتصال Ipv4 همه‌ی [${p}] ناموفق بودند';
			case 'NetCheckScreen.connectivityTestIpv4Ok': return 'اتصال Ipv4 موفق بود';
			case 'NetCheckScreen.connectivityTestIpv6AllFailed': return ({required Object p}) => 'تست اتصال Ipv6 همه‌ی [${p}] ناموفق بودند، شاید شبکه شما از Ipv6 پشتیبانی نکند';
			case 'NetCheckScreen.connectivityTestIpv6Ok': return 'اتصال Ipv6 موفق بود';
			case 'NetCheckScreen.connectivityTestOk': return 'شبکه به اینترنت متصل است';
			case 'NetCheckScreen.connectivityTestFailed': return 'شبکه هنوز به اینترنت متصل نشده';
			case 'NetCheckScreen.remoteRulesetsDownloadOk': return 'همه با موفقیت دانلود شدند';
			case 'NetCheckScreen.remoteRulesetsDownloadNotOk': return 'دانلود شد یا ناموفق بود';
			case 'NetCheckScreen.outbound': return 'سرور پروکسی';
			case 'NetCheckScreen.outboundOk': return ({required Object p}) => '[${p}] اتصال موفق بود';
			case 'NetCheckScreen.outboundFailed': return ({required Object p1, required Object p2}) => '[${p1}] اتصال ناموفق \nارور:[${p2}]';
			case 'NetCheckScreen.dnsServer': return 'سرور دی‌ان‌اس';
			case 'NetCheckScreen.dnsOk': return ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS query succeeded\nDNS Rule: درخواست دی‌ان‌اس موفق بود\nقانون دی‌ان‌اس: [${p2}]\nتاخیر: [${p3} ms]\nآدرس [${p4}]';
			case 'NetCheckScreen.dnsFailed': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]جستجوی DNS موفق بود\nقانون DNS: [${p2}]\nخطا:[${p3}]';
			case 'NetCheckScreen.host': return 'اتصال HTTP';
			case 'NetCheckScreen.hostConnection': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nقانون انحراف: [${p2}]\nسرور پروکسی: [${p3}]';
			case 'NetCheckScreen.hostConnectionOk': return 'اتصال موفق شد';
			case 'NetCheckScreen.hostConnectionFailed': return ({required Object p}) => 'ارتباط ناموفق بود:[${p}]';
			case 'NetConnectionsFilterScreen.title': return 'فیلتر اتصال‌ها';
			case 'NetConnectionsFilterScreen.hostIp': return 'دامنه/آی‌پی';
			case 'NetConnectionsFilterScreen.app': return 'نرم‌افزار';
			case 'NetConnectionsFilterScreen.rule': return 'قانون';
			case 'NetConnectionsFilterScreen.chain': return 'Outbound';
			case 'NetConnectionsScreen.title': return 'اتصال‌ها';
			case 'NetConnectionsScreen.copyAsCSV': return 'در فرمت CAV کپی شد';
			case 'NetConnectionsScreen.selectType': return 'انتخاب نوع انحراف';
			case 'PerAppAndroidScreen.title': return 'پروکسی به‌تفکیک برنامه';
			case 'PerAppAndroidScreen.whiteListMode': return 'حالت لیست سفید';
			case 'PerAppAndroidScreen.whiteListModeTip': return 'وقتی فعال باشد: فقط برنامه‌هایی که انتخاب شده‌اند پروکسی می‌شوند؛ وقتی فعال نباشد: فقط برنامه‌هایی که انتخاب نشده‌اند پروکسی می‌شوند';
			case 'PerAppAndroidScreen.hideSystemApp': return 'برنامه های سیستم را مخفی کنید';
			case 'PerAppAndroidScreen.hideAppIcon': return 'پنهان کردن نماد برنامه';
			case 'PerAppAndroidScreen.enableAppQueryPermission': return 'مجوز [درخواست لیست نرم‌افزار] را روشن کنید';
			case 'QrcodeScreen.tooLong': return 'متن برای نمایش خیلی طولانی است';
			case 'QrcodeScreen.copy': return 'کپی‌کردن لینک';
			case 'QrcodeScreen.open': return 'بازکردن لینک';
			case 'QrcodeScreen.share': return 'اشتراک لینک';
			case 'QrcodeScreen.shareImage': return 'اشتراک کدQR';
			case 'RegionSettingsScreen.title': return 'کشور یا منطقه';
			case 'RegionSettingsScreen.Regions': return 'راهنمایی: لطفا کشور یا منطقه فعلی خود را انتخاب کنید درغیراین‌صورت ممکن‌است باعث مشکلات انحراف شبکه شود';
			case 'ServerSelectScreen.title': return 'انتخاب سرور';
			case 'ServerSelectScreen.autoSelectServer': return 'خودکار سرور با کمترین تاخیر را انتخاب کن';
			case 'ServerSelectScreen.recentUse': return 'اخیرا استفاده‌شده';
			case 'ServerSelectScreen.myFav': return 'علاقه‌مندی‌های من';
			case 'ServerSelectScreen.selectLocal': return ({required Object p}) => 'سرور انتخاب شده یک آدرس محلی است و شاید به درستی عمل نکند :${p}';
			case 'ServerSelectScreen.selectRequireEnableIPv6': return 'سرور انتخاب شده یک آدرس IPv6 است و نیاز به [فعال‌سازی IPv6] دارد';
			case 'ServerSelectScreen.selectDisabled': return 'این سرور غیرفعال شده است';
			case 'ServerSelectScreen.error404': return 'تشخیص تاخیر با یک اخطار مواجه شده‌است، لطفا بررسی کنید که کانفیگی با محتویات یکسان وجود دارد یا خیر';
			case 'SettingsScreen.getTranffic': return 'دریافت ترافیک';
			case 'SettingsScreen.tutorial': return 'آموزش';
			case 'SettingsScreen.commonlyUsedRulesets': return 'قوانین رایج';
			case 'SettingsScreen.howToRemoveAds': return 'نحوه حذف تبلیغات';
			case 'SettingsScreen.htmlBoard': return 'پنل آنلاین';
			case 'SettingsScreen.dnsLeakDetection': return 'تشخیص نشت DNS';
			case 'SettingsScreen.proxyLeakDetection': return 'تشخیص نشت عامل';
			case 'SettingsScreen.speedTest': return 'تست سرعت';
			case 'SettingsScreen.downloadProfilePreferProxy': return 'برای دانلود پروفایل پروکسی را ترجیح بده';
			case 'SettingsScreen.downloadProfilePreferProxyTips': return 'اگر اکنون متصل هستین، پروفایل ابتدا از پروکسی متصل دانلود می‌شود';
			case 'SettingsScreen.rulesetDirectDownlad': return 'دانلود مستقیم مجموعه قوانین';
			case 'SettingsScreen.hideUnusedDiversionGroup': return 'مخفی‌کردن گروه‌های انحراف به‌کار نرفته';
			case 'SettingsScreen.disableISPDiversionGroup': return 'قوانین انحراف [ارائه دهنده VPN] را غیرفعال کنید';
			case 'SettingsScreen.portSetting': return 'پورت';
			case 'SettingsScreen.portSettingRule': return 'قانون محور';
			case 'SettingsScreen.portSettingDirectAll': return 'مستقیم‌شدن همه';
			case 'SettingsScreen.portSettingProxyAll': return 'پروکسی‌شدن همه';
			case 'SettingsScreen.portSettingControl': return 'کنترل و همگام‌سازی';
			case 'SettingsScreen.portSettingCluster': return 'سرویس کلاستر';
			case 'SettingsScreen.modifyPort': return 'اصلاح پورت';
			case 'SettingsScreen.modifyPortOccupied': return 'پورت اشغال شده است لطفا از پورت دیگری استفاده کنید';
			case 'SettingsScreen.ipStrategyTips': return 'قبل‌از فعال‌سازی لطفا مطمعن شوید شبکه شما از IPv6 پشتیبانی می‌کند، وگرنه برخی ترافیک‌ها نمی‌توانند به‌صورت نرمال دردسترس باشند';
			case 'SettingsScreen.tunAppendHttpProxy': return 'پیوست دادن پروکسی HTTP به وی‌پی‌ان';
			case 'SettingsScreen.tunAppendHttpProxyTips': return 'برخی نرم‌افزار‌ها از کارت شبکه مجازی رد میشوند و مستقیم به پروکسی HTTP متصل می‌شوند';
			case 'SettingsScreen.tlsInsecureEnable': return 'رد شدن از تأیید گواهی';
			case 'SettingsScreen.tlsFragmentEnable': return 'بخش بندی TLS را فعال کنید';
			case 'SettingsScreen.tlsFragmentSize': return 'اندازه بخش TLS';
			case 'SettingsScreen.tlsFragmentSleep': return 'خواب بخش‌بندی شده TLS';
			case 'SettingsScreen.tlsMixedCaseSNIEnable': return 'TLS ترکیبی SNI را فعال کنید';
			case 'SettingsScreen.tlsPaddingEnable': return 'فعال کردن TLS Padding';
			case 'SettingsScreen.tlsPaddingSize': return 'اندازه پد TLS';
			case 'SettingsScreen.dnsEnableRule': return 'فعال‌سازی قوانین انحراف دی‌ان‌اس';
			case 'SettingsScreen.dnsEnableFakeIp': return 'فعال‌سازی آی‌پی جعلی';
			case 'SettingsScreen.dnsEnableClientSubnet': return 'ECS را فعال کنید';
			case 'SettingsScreen.dnsEnableProxyResolveByProxy': return 'دی‌ان‌اس را از [ترافیک پروکسی] سرور پروکسی عبور می‌دهد';
			case 'SettingsScreen.dnsEnableFinalResolveByProxy': return 'دی‌ان‌اس را از سرور پروکسی [نهایی] عبور می‌دهد';
			case 'SettingsScreen.dnsTestDomain': return 'تست دامنه';
			case 'SettingsScreen.dnsTestDomainInvalid': return 'دامنه نامعتبر';
			case 'SettingsScreen.dnsTypeOutbound': return 'سرور پروکسی';
			case 'SettingsScreen.dnsTypeDirect': return 'ترافیک مستقیم';
			case 'SettingsScreen.dnsTypeProxy': return 'ترافیک پروکسی';
			case 'SettingsScreen.dnsTypeResolver': return 'سرور دی‌ان‌اس';
			case 'SettingsScreen.dnsEnableRuleTips': return 'بعد از فعال‌سازی نام دامنه، سرور دی‌ان‌اس مربوط را بر اساس قوانین انحراف برای عبور انتخاب می‌کند';
			case 'SettingsScreen.dnsEnableFakeIpTips': return 'پس از فعال کردن FakeIP، اگر اتصال VPN قطع شود، ممکن است برنامه شما نیاز به راه اندازی مجدد داشته باشد [حالت TUN].';
			case 'SettingsScreen.dnsTypeOutboundTips': return 'سامانه نام دامنه (DNS) برای سرور پروکسی';
			case 'SettingsScreen.dnsTypeDirectTips': return 'سامانه نام دامنه (DNS) برای ترافیک مستقیم';
			case 'SettingsScreen.dnsTypeProxyTips': return 'سامانه نام دامنه (DNS) برای ترافیک پروکسی';
			case 'SettingsScreen.dnsTypeResolverTips': return 'سامانه نام دامنه (DNS) برای بقیه سرور دی‌ان‌اس';
			case 'SettingsScreen.dnsTypeFinalTips': return 'سامانه نام دامنه (DNS) برای بقیه ترافیک';
			case 'SettingsScreen.dnsAutoSetServer': return 'به طور خودکار سرور را راه اندازی کنید';
			case 'SettingsScreen.dnsResetServer': return 'بازنشانی سرور';
			case 'SettingsScreen.inboundDomainResolve': return 'حل نام دامنه های ورودی';
			case 'SettingsScreen.privateDirect': return 'اتصال مستقیم شبکه خصوصی';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => 'برخی از نام‌های دامنه بدون قوانین انحراف پیکربندی شده باید حل و فصل شوند تا بتوانند قوانین انحراف مبتنی بر IP را تحت تأثیر قرار دهند [${p}].';
			case 'SettingsScreen.useRomoteRes': return 'از منابع راه‌دور استفاده کنید';
			case 'SettingsScreen.autoSelect': return 'انتخاب خودکار';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'سرورهای پروکسی [جلو/زنجیری] را نادیده بگیرید';
			case 'SettingsScreen.autoSelectServerInterval': return 'بازه زمانی بررسی تاخیر';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return 'شناسایی مجدد زمانی که شبکه تغییر می کند';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return 'سرور فعلی را پس از تشخیص تأخیر دستی به روز کنید';
			case 'SettingsScreen.autoSelectServerIntervalTips': return 'هرچه فاصله تشخیص تاخیر کمتر باشد، داده های تاخیر سرور به موقع به روز می شود، اما منابع بیشتری را اشغال می کند و برق را سریعتر مصرف می کند';
			case 'SettingsScreen.autoSelectServerFavFirst': return 'اولویت استفاده از [علاقه‌مندی‌های من]';
			case 'SettingsScreen.autoSelectServerFavFirstTips': return 'اگر لیست [علاقه‌مندی‌های من] خالی نبود از سرور‌های داخل [علاقه‌مندی‌های من] استفاده کن';
			case 'SettingsScreen.autoSelectServerFilter': return 'فیلترکردن سرور‌های نامعتبر';
			case 'SettingsScreen.autoSelectServerFilterTips': return ({required Object p}) => 'اگر بعد از فیلتر کردن هیچ سروری در دسترس نباشد، از اولین سرورهای [${p}] استفاده خواهد شد.';
			case 'SettingsScreen.autoSelectServerLimitedNum': return 'حداکثر تعداد سرور';
			case 'SettingsScreen.autoSelectServerLimitedNumTips': return 'سرورهای بیش از این تعداد فیلتر خواهند شد';
			case 'SettingsScreen.numInvalid': return 'عدد نامعتبر';
			case 'SettingsScreen.hideInvalidServer': return 'مخفی‌کردن سرور‌های نامعتبر';
			case 'SettingsScreen.sortServer': return 'مرتب‌سازی سرور';
			case 'SettingsScreen.sortServerTips': return 'مرتب‌سازی براساس تاخیر از کم به زیاد';
			case 'SettingsScreen.selectServerHideRecommand': return 'مخفی‌کردن [پیشنهادی]';
			case 'SettingsScreen.selectServerHideRecent': return '‌ مخفی‌کردن [اخیرا استفاده‌شده]';
			case 'SettingsScreen.selectServerHideFav': return 'مخفی‌کردن [علاقه‌مندی‌های من]';
			case 'SettingsScreen.homeScreen': return 'صفحه‌ خانه';
			case 'SettingsScreen.theme': return 'تِم';
			case 'SettingsScreen.myLink': return 'لینک میان‌بر';
			case 'SettingsScreen.myLinkInvalid': return 'URL نامعتبر';
			case 'SettingsScreen.autoConnectAfterLaunch': return 'اتصال خودکار پس‌از راه‌اندازی';
			case 'SettingsScreen.hideAfterLaunch': return 'پنهان کردن پنجره پس از راه اندازی';
			case 'SettingsScreen.autoSetSystemProxy': return 'تنظیم خودکار حالت پروکسی سیستم پس‌از اتصال';
			case 'SettingsScreen.disconnectWhenQuit': return 'قطع اتصال هنگام خروج از نرم‌افزار';
			case 'SettingsScreen.allowBypass': return 'به برنامه‌ها اجازه دهید VPN را دور بزنند';
			case 'SettingsScreen.importSuccess': return 'افزودن موفق بود';
			case 'SettingsScreen.rewriteConfirm': return 'این فایل کانفیگ‌های محلی موجود را بازنویسی می‌کند. آیا می‌خواهید ادامه بدین؟';
			case 'SettingsScreen.networkShare': return 'اشتراک‌گذاری شبکه';
			case 'SettingsScreen.frontProxy': return 'پروکسی جلو/زنجیره';
			case 'SettingsScreen.frontProxyTips': return ({required Object p}) => 'داده-> سرور پروکسی جلویی/زنجیری [پراکسی سرورهای چندگانه: از بالا به پایین]-> سرور پروکسی [${p}]-> سرور هدف';
			case 'SettingsScreen.allowOtherHostsConnect': return 'اجازه اتصال دیگران';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'اگر پس از روشن کردن اشتراک‌گذاری، دیگران نمی‌توانند به این دستگاه دسترسی داشته باشند، لطفاً این سوئیچ را خاموش کنید.';
			case 'SettingsScreen.enableCluster': return 'فعال‌سازی پروکسی Socks/Http خوشه‌ای';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'اجازه اتصال دیگران به خوشه';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'احراز هویت خوشه پروکسی';
			case 'SettingsScreen.tunMode': return 'حالت TUN';
			case 'SettingsScreen.tunModeTips': return 'حالت TUN تمام ترافیک سیستم را تحت کنترل خواهد گرفت [دراین حالت می‌توانید پروکسی سیستم را غیرفعال نگه‌ دارید)';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'حالت TUN نیازمند مجوز مدیر سیستم می‌باشد لطفا نرم‌افزار را مجدد با حالت مدیر (administrator) راه‌اندازی کنید';
			case 'SettingsScreen.tunStack': return 'Stack';
			case 'SettingsScreen.launchAtStartup': return 'اجرا در راه‌اندازی';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return 'خروج از نرم‌افزار هنگام تعویض کاربران سیستم';
			case 'SettingsScreen.handleScheme': return 'فراخوانی Scheme سیستم';
			case 'SettingsScreen.portableMode': return 'حالت قابل‌حمل';
			case 'SettingsScreen.portableModeDisableTips': return 'اگر نیاز دارین از حالت قابل‌حمل خارج شوید لطفا از [Karing] خارج شده و به‌صورت دستی پوشه [Profiles] هم مسیر با فایل [karing.exe] را حذف کنید';
			case 'SettingsScreen.handleKaringScheme': return 'رسیدگی به ندای karing://';
			case 'SettingsScreen.handleClashScheme': return 'رسیدگی به‌ ندای clash://';
			case 'SettingsScreen.handleSingboxScheme': return 'رسیدگی به ندای sing-box://';
			case 'SettingsScreen.alwayOnVPN': return 'اتصال همیشه باز';
			case 'SettingsScreen.removeSystemVPNConfig': return 'حذف پیکربندی وی‌پی‌ان سیستم';
			case 'SettingsScreen.timeConnectOrDisconnect': return 'اتصال/قطع اتصال برنامه‌ریزی شده';
			case 'SettingsScreen.timeConnectOrDisconnectTips': return 'برای اعمال شدن وی‌پی‌ان باید متصل باشد. پس‌از روشن‌شدن [خواب خودکار] غیرفعال می‌شود';
			case 'SettingsScreen.timeConnectAndDisconnectInterval': return ({required Object p}) => 'فاصله اتصال/قطع اتصال نمی تواند کمتر از ${p} دقیقه باشد';
			case 'SettingsScreen.disableFontScaler': return 'غیرفعال‌سازی مقیاس‌بندی فونت(با راه‌اندازی مجدد اعمال می‌شود)';
			case 'SettingsScreen.autoOrientation': return 'چرخش صفحه را دنبال کنید';
			case 'SettingsScreen.restartTakesEffect': return 'با راه‌اندازی مجدد اعمال می‌شود';
			case 'SettingsScreen.resetSettings': return 'بازنشانی تنظیمات';
			case 'SettingsScreen.cleanCache': return 'پاک کردن حافظه پنهان';
			case 'SettingsScreen.cleanCacheDone': return 'پاکسازی کامل شد';
			case 'SettingsScreen.appleTestFlight': return 'تست‌فلایت اپل';
			case 'SettingsScreen.appleAppStore': return 'اپ‌استور اپل';
			case 'SettingsScreen.hasNewVersion': return ({required Object p}) => 'به‌روزرسانی نسخه ${p} ';
			case 'SettingsScreen.follow': return 'مارو دنبال کنید';
			case 'SettingsScreen.contactUs': return 'ارتباط باما';
			case 'SettingsScreen.supportUs': return 'از ما حمایت کنید';
			case 'SettingsScreen.rateInApp': return 'امتیاز به ما';
			case 'SettingsScreen.rateInAppStore': return 'به ما در اپ‌استور امتیاز بدین';
			case 'SpeedTestSettingsScreen.title': return 'URL تست سرعت';
			case 'TextToQrCodeScreen.title': return 'متن به کد QR';
			case 'TextToQrCodeScreen.convert': return 'تبدیل';
			case 'UserAgreementScreen.privacyFirst': return 'حریم‌خصوصی شما اولویت دارد';
			case 'UserAgreementScreen.agreeAndContinue': return 'پذیرفتن و ادامه';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => 'نسخه جدید [${p}] آماده است';
			case 'VersionUpdateScreen.update': return 'راه‌اندازی مجدد برای به‌روزرسانی';
			case 'VersionUpdateScreen.cancel': return 'الان‌ نه';
			case 'CommonWidget.diableAlwayOnVPN': return 'اگر [وی‌پی‌ان همیشه روشن] روشن است لطفا [وی‌پی‌ان همیشه روشن] را خاموش کنید و مجدد برای اتصال تلاش کنید';
			case 'CommonWidget.resetPort': return 'لطفاً پورت را به پورت موجود دیگری تغییر دهید یا برنامه ای را که پورت را اشغال می کند ببندید.';
			case 'ServerManager.noServerAvaliable': return 'هیچ سروری در دسترس نیست، لطفاً مطمئن شوید که پیوند پیکربندی یا فایل پیکربندی معتبر است، اگر پیکربندی شما از GitHub آمده است، لطفاً آدرس پیوند را از دکمه [Raw] در صفحه دریافت کنید';
			case 'ServerManager.filePathCannotEmpty': return 'مسیر فایل نمی‌تواند خالی باشد';
			case 'ServerManager.fileNotExist': return ({required Object p}) => 'فایل وجود ندارد:${p}';
			case 'ServerManager.urlCannotEmpty': return 'لینک نمی‌تواند خالی باشد';
			case 'ServerManager.invalidUrl': return 'لینک پروفایل نامعتبر است';
			case 'ServerManager.parseFailed': return 'تجزیه پروفایل انجام نشد';
			case 'main.tray.menuOpen': return '    بازکردن    ';
			case 'main.tray.menuExit': return '    بستن    ';
			case 'enable': return 'فعال‌سازی';
			case 'disable': return 'غیرفعال';
			case 'filter': return 'فیلتر';
			case 'filterMethod': return 'روش فیلتر';
			case 'include': return 'شامل شود';
			case 'exclude': return 'حذف کردن';
			case 'all': return 'همه';
			case 'prefer': return 'اولویت';
			case 'only': return 'فقط';
			case 'open': return 'باز کن';
			case 'close': return 'بسته';
			case 'quit': return 'خروج';
			case 'add': return 'افزودن';
			case 'remove': return 'حذف';
			case 'edit': return 'ویرایش کنید';
			case 'view': return 'بررسی';
			case 'more': return 'بیشتر';
			case 'getProfile': return 'پیکربندی را دریافت کنید';
			case 'addProfile': return 'افزودن پروفایل';
			case 'addSuccess': return 'با‌موفقیت اضافه شد';
			case 'addSuccessThen': return ({required Object p}) => 'پیکربندی با موفقیت ایجاد شد، لطفاً برای مشاهده به [${p}] بروید';
			case 'addFailed': return ({required Object p}) => 'افزودن ناموفق بود:${p}';
			case 'removeConfirm': return 'آیا از حذف اطمینان دارین؟';
			case 'tips': return 'اطلاعات';
			case 'copy': return 'کپی';
			case 'ok': return 'خُب';
			case 'cancel': return 'لغو';
			case 'feedback': return 'بازخورد';
			case 'faq': return 'سوالات متداول';
			case 'download': return 'دانلود';
			case 'loading': return 'درحال بارگذاری…';
			case 'updateFailed': return ({required Object p}) => 'به‌روزرسانی ناموفق بود:${p}';
			case 'days': return 'روز';
			case 'hours': return 'ساعت';
			case 'minutes': return 'دقیقه';
			case 'seconds': return 'دومین';
			case 'protocol': return 'پروتکل';
			case 'search': return 'جستجو';
			case 'custom': return 'سفارشی';
			case 'connect': return 'اتصال';
			case 'disconnect': return 'قطع‌ اتصال';
			case 'connected': return 'وصل شد';
			case 'disconnected': return 'قطع شد';
			case 'connecting': return 'درحال اتصال';
			case 'connectTimeout': return 'اتمام مهلت اتصال';
			case 'timeout': return 'تایم اوت';
			case 'language': return 'زبان';
			case 'next': return 'بعدی';
			case 'done': return 'انجام‌شد';
			case 'apply': return 'درخواست دادن';
			case 'refresh': return 'بارگذاری مجدد';
			case 'retry': return 'دوباره امتحان کنید؟';
			case 'none': return 'هیچ‌کدام';
			case 'reset': return 'ریست';
			case 'submit': return 'ارسال';
			case 'user': return 'کاربر';
			case 'account': return 'نام‌کاربری';
			case 'password': return 'رمز‌عبور';
			case 'required': return 'الزامی';
			case 'diversion': return 'انحراف';
			case 'diversionRules': return 'قوانین انحراف';
			case 'diversionRulesEnable': return 'قوانین بارگیری [ارائه دهنده VPN] را فعال کنید';
			case 'diversionCustomGroup': return 'گروه انحراف سفارشی';
			case 'diversionCustomGroupPreset': return 'از پیش تنظیم شده [گروه انحراف سفارشی]';
			case 'diversionCustomGroupPresetTips': return 'توجه: موارد فعال به [گروه انحراف سفارشی] و [قوانین انحراف] اضافه/پوشش داده خواهند شد';
			case 'diversionCustomGroupAddTips': return 'توجه: ممکن است لازم باشد پس از افزودن مرتب‌سازی به‌صورت دستی آن را تنظیم کنید، در غیر این صورت انحراف تازه اضافه‌شده ممکن است اعمال نشود.';
			case 'urlTestCustomGroup': return 'انتخاب خودکار سفارشی';
			case 'rulesetEnableTips': return 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد';
			case 'ispUserAgentTips': return '[ارائه دهنده VPN] انواع مختلف داده های اشتراک را بر اساس [UserAgent] در درخواست [HTTP] ارائه خواهد کرد.';
			case 'ispDiversionTips': return 'قوانین بارگذاری ارائه شده توسط [ارائه دهنده VPN]، اشتراک های نوع [V2Ray] از قوانین تخلیه پشتیبانی نمی کنند';
			case 'staticIP': return 'IP استاتیک';
			case 'other': return 'دیگر';
			case 'dns': return 'DNS';
			case 'url': return 'URL';
			case 'isp': return 'ارائه دهنده VPN';
			case 'ispBind': return 'اتصال به [ارائه‌دهنده VPN]';
			case 'ispUnbind': return ({required Object p}) => 'لغو پیوند[${p}]';
			case 'ispFaq': return ({required Object p}) => 'سوالات متداول[${p}]';
			case 'ispCustomerService': return ({required Object p}) => 'خدمات مشتری[${p}]';
			case 'ispFollow': return ({required Object p}) => 'دنبال کردن[${p}]';
			case 'ispInvalidOrExpired': return '[ارائه دهنده VPN]نامعتبر یا منقضی شده است';
			case 'tls': return 'TLS';
			case 'userAgent': return 'UserAgent';
			case 'urlInvalid': return 'URL نامعتبر';
			case 'outboundActionCurrentSelected': return 'فعلی انتخاب شده';
			case 'outboundActionUrltest': return 'انتخاب خودکار';
			case 'outboundActionDirect': return 'مستقیم';
			case 'outboundActionBlock': return 'مسدود';
			case 'routeFinal': return 'نهایی';
			case 'rulesetGeoSite': return 'GeoSite';
			case 'rulesetGeoIp': return 'GeoIP';
			case 'rulesetAcl': return 'ACL';
			case 'iCloud': return 'iCloud';
			case 'appleTV': return 'Apple TV';
			case 'webdav': return 'Webdav';
			case 'setting': return 'تنظیمات';
			case 'protocolSniff': return 'تشخیص پروتکل';
			case 'protocolSniffOverrideDestination': return 'نام دامنه شناسایی شده آدرس هدف اتصال را پوشش می دهد';
			case 'remark': return 'ملاحضات';
			case 'remarkCannotEmpty': return 'ملاحظات نمی‌تواند خالی باشد';
			case 'remarkTooLong': return 'ملاحظات تا ۳۲ حرف';
			case 'remarkExist': return 'ملاحظات از‌قبل وجود دارد، لطفا از نام دیگری استفاده کنید';
			case 'domainSuffix': return 'پسوند دامنه';
			case 'domain': return 'دامنه';
			case 'domainKeyword': return 'کلید‌واژه دامنه';
			case 'domainRegex': return 'عبارات باقاعده ی دامنه (Regex)';
			case 'ip': return 'IP';
			case 'port': return 'پورت';
			case 'appPackage': return 'شناسه بسته برنامه';
			case 'processName': return 'نام اجرایی پروسه';
			case 'processPath': return 'مسیر پروسه';
			case 'systemProxy': return 'پروکسی سیستم';
			case 'netInterfaces': return 'رابط شبکه';
			case 'netSpeed': return 'سرعت';
			case 'website': return 'وبسایت';
			case 'rule': return 'قانون';
			case 'global': return 'عمومی';
			case 'qrcode': return 'کد QR';
			case 'scanQrcode': return 'اسکن QRکد';
			case 'scanResult': return 'نتایج اسکن';
			case 'backupAndSync': return 'پشتیبان‌گیری و همگام‌سازی';
			case 'importAndExport': return 'وارد‌کردن و خروجی‌گرفتن';
			case 'import': return 'وارد‌کردن';
			case 'export': return 'خروجی‌گرفتن';
			case 'send': return 'ارسال کنید';
			case 'receive': return 'تصاحب';
			case 'sendOrReceiveNotMatch': return ({required Object p}) => 'لطفا از [${p}] استفاده کنید';
			case 'sendConfirm': return 'ارسال را تایید کرد؟';
			case 'termOfUse': return 'شرایط استفاده';
			case 'privacyPolicy': return 'سیاست حریم خصوصی';
			case 'about': return 'درباره';
			case 'name': return 'نام';
			case 'version': return 'نسخه';
			case 'notice': return 'اطلاعیه';
			case 'sort': return 'مرتب‌سازی';
			case 'novice': return 'حالت مبتدی';
			case 'recommended': return 'پیشنهادی';
			case 'innerError': return ({required Object p}) => 'خطای داخلی: ${p}';
			case 'logicOperation': return 'عملیات منطقی';
			case 'share': return 'اشتراک گذاری';
			case 'candidateWord': return 'کلمات نامزد';
			case 'keywordOrRegx': return 'کلمات کلیدی / معمولی';
			case 'importFromClipboard': return 'افزودن از کلیپ‌برد';
			case 'exportToClipboard': return 'صادرات به کلیپ بورد';
			case 'server': return 'سرور';
			case 'turnOffPrivateDirect': return 'لطفاً ابتدا [اتصال مستقیم شبکه خصوصی] را فعال کنید';
			case 'targetConnectFailed': return ({required Object p}) => 'اتصال به [${p}] ناموفق بود، لطفاً مطمئن شوید که دستگاه در همان LAN است';
			case 'appleTVSync': return 'همگام سازی پیکربندی هسته فعلی با Apple TV - Karing';
			case 'appleTVSyncDone': return 'همگام سازی کامل شد، لطفاً برای باز کردن/راه اندازی مجدد اتصال به Apple TV - Karing بروید';
			case 'appleTVRemoveCoreConfig': return 'حذف Apple TV - Karing Core Configuration';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - نمایه اصلی کارینگ حذف شد';
			case 'appleTVUrlInvalid': return 'URL نامعتبر است، لطفاً Apple TV - Karing را باز کنید، کد QR نمایش داده شده توسط Karing را اسکن کنید';
			case 'appleTV404': return ({required Object p}) => 'AppleTV:Karing[${p}] این عملکرد را ندارد، لطفا ارتقا دهید و دوباره امتحان کنید';
			case 'remoteProfileEditConfirm': return 'پس از به روز رسانی تنظیمات، تغییرات گره بازیابی می شوند آیا می خواهید ادامه دهید؟';
			case 'invalidFileType': return ({required Object p}) => 'نوع فایل نامعتبر:${p}';
			case 'mustBeValidHttpsURL': return 'باید یک URL معتبر https باشد';
			case 'fileNotExistReinstall': return ({required Object p}) => 'فایل [${p}] وجود ندارد، لطفا دوباره نصب کنید';
			case 'latencyTest': return 'بررسی تاخیر';
			case 'latencyTestResolveIP': return 'در طی تشخیص دستی، IP صادرات نیز تجزیه و تحلیل می شود.';
			case 'latencyTestTimeout': return 'تایم اوت';
			case 'uwpExemption': return 'معافیت جداسازی شبکه UWP';
			case 'ads': return 'تبلیغات را حذف کنید';
			case 'adsBanner': return 'تبلیغات بنری';
			case 'donate': return 'اهدا کنید';
			case 'removeBannerAdsByShare': return 'اشتراک گذاری[Karing]رفتن به تبلیغات';
			case 'removeBannerAdsByReward': return 'تماشای تبلیغات برو به تبلیغات';
			case 'removeBannerAdsByShareTip': return ({required Object p, required Object d}) => 'یک بار به اشتراک بگذارید و ${p} روز بدون پاداش تبلیغاتی دریافت خواهید کرد (تا ${d}  روز قابل انباشته شدن است)';
			case 'removeBannerAdsByRewardTip': return ({required Object p}) => 'یک تبلیغ را تماشا کنید و پاداش روز بدون آگهی ${p} دریافت خواهید کرد (نمی توان روی هم گذاشت)';
			case 'removeBannerAdsDone': return ({required Object p}) => 'پاداش ${p} روز بدون آگهی دریافت کرد';
			case 'edgeRuntimeNotInstalled': return 'زمان اجرا Edge WebView2 روی دستگاه فعلی نصب نشده است و صفحه قابل نمایش نیست لطفاً زمان اجرا Edge WebView2 (x64) را بارگیری و نصب کنید، برنامه را مجدداً راه اندازی کنید و دوباره امتحان کنید.';
			case 'requestCameraPermission': return 'لطفاً مجوز [دوربین] را فعال کنید';
			case 'requestScreenAccess': return 'لطفاً مجوز [ضبط صفحه] را فعال کنید';
			case 'requestAppQuery': return 'لطفاً مجوز [Get Application List] را فعال کنید';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

