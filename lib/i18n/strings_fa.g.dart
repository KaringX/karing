///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsFa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	@override 
	TranslationsFa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenFa AboutScreen = _TranslationsAboutScreenFa._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenFa BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenFa._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenFa DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenFa._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenFa DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenFa._(_root);
	@override late final _TranslationsDiversionRulesScreenFa DiversionRulesScreen = _TranslationsDiversionRulesScreenFa._(_root);
	@override late final _TranslationsDnsSettingsScreenFa DnsSettingsScreen = _TranslationsDnsSettingsScreenFa._(_root);
	@override late final _TranslationsFileContentViewerScreenFa FileContentViewerScreen = _TranslationsFileContentViewerScreenFa._(_root);
	@override late final _TranslationsHomeScreenFa HomeScreen = _TranslationsHomeScreenFa._(_root);
	@override late final _TranslationsLaunchFailedScreenFa LaunchFailedScreen = _TranslationsLaunchFailedScreenFa._(_root);
	@override late final _TranslationsMyProfilesMergeScreenFa MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenFa._(_root);
	@override late final _TranslationsNetCheckScreenFa NetCheckScreen = _TranslationsNetCheckScreenFa._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenFa NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenFa._(_root);
	@override late final _TranslationsNetConnectionsScreenFa NetConnectionsScreen = _TranslationsNetConnectionsScreenFa._(_root);
	@override late final _TranslationsPerAppAndroidScreenFa PerAppAndroidScreen = _TranslationsPerAppAndroidScreenFa._(_root);
	@override late final _TranslationsRegionSettingsScreenFa RegionSettingsScreen = _TranslationsRegionSettingsScreenFa._(_root);
	@override late final _TranslationsServerSelectScreenFa ServerSelectScreen = _TranslationsServerSelectScreenFa._(_root);
	@override late final _TranslationsSettingsScreenFa SettingsScreen = _TranslationsSettingsScreenFa._(_root);
	@override late final _TranslationsUserAgreementScreenFa UserAgreementScreen = _TranslationsUserAgreementScreenFa._(_root);
	@override late final _TranslationsVersionUpdateScreenFa VersionUpdateScreen = _TranslationsVersionUpdateScreenFa._(_root);
	@override late final _TranslationsCommonWidgetFa CommonWidget = _TranslationsCommonWidgetFa._(_root);
	@override late final _TranslationsMainFa main = _TranslationsMainFa._(_root);
	@override late final _TranslationsMetaFa meta = _TranslationsMetaFa._(_root);
	@override String get diversionRulesKeep => '[${_root.meta.isp}]${_root.meta.diversionRules} را نگه دارید';
	@override String get diversionCustomGroupPreset => 'از پیش تنظیم شده [گروه انحراف سفارشی]';
	@override String get diversionCustomGroupPresetTips => 'توجه: موارد فعال به [گروه انحراف سفارشی] و [قوانین انحراف] اضافه/پوشش داده خواهند شد';
	@override String get diversionCustomGroupAddTips => 'توجه: ممکن است لازم باشد پس از افزودن مرتب‌سازی به‌صورت دستی آن را تنظیم کنید، در غیر این صورت انحراف تازه اضافه‌شده ممکن است اعمال نشود.';
	@override String get rulesetEnableTips => 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] انواع مختلف داده های اشتراک را بر اساس [UserAgent] در درخواست [HTTP] ارائه خواهد کرد.';
	@override String get ispDiversionTips => 'قوانین بارگذاری ارائه شده توسط [${_root.meta.isp}]، اشتراک های نوع [V2Ray] از قوانین تخلیه پشتیبانی نمی کنند';
	@override late final _TranslationsIspFa isp = _TranslationsIspFa._(_root);
	@override late final _TranslationsPermissionFa permission = _TranslationsPermissionFa._(_root);
	@override late final _TranslationsTlsFa tls = _TranslationsTlsFa._(_root);
	@override late final _TranslationsOutboundRuleModeFa outboundRuleMode = _TranslationsOutboundRuleModeFa._(_root);
	@override late final _TranslationsDnsProxyResolveModeFa dnsProxyResolveMode = _TranslationsDnsProxyResolveModeFa._(_root);
	@override late final _TranslationsProxyStrategyFa proxyStrategy = _TranslationsProxyStrategyFa._(_root);
	@override late final _TranslationsReloadReasonFa reloadReason = _TranslationsReloadReasonFa._(_root);
	@override late final _TranslationsThemeFa theme = _TranslationsThemeFa._(_root);
	@override String get downloadProxyStrategy => 'کانال دانلود';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: اتصال به سرور DNS از طریق سرور پروکسی برای حل نام دامنه\n[${_root.dnsProxyResolveMode.direct}]: برای حل نام دامنه مستقیماً به سرور DNS متصل شوید\n[ ${_root.dnsProxyResolveMode.fakeip}: توسط پروکسی سرور از طرف شما نام دامنه را حل می کند، در صورت قطع ارتباط با VPN، ممکن است برنامه شما فقط برای ترافیک ورودی از [TUN] اعمال شود.';
	@override String get routeFinal => 'نهایی';
	@override String get protocolSniff => 'تشخیص پروتکل';
	@override String sendOrReceiveNotMatch({required Object p}) => 'لطفا از [${p}] استفاده کنید';
	@override String get turnOffPrivateDirect => 'لطفاً ابتدا [اتصال مستقیم شبکه خصوصی] را فعال کنید';
	@override String targetConnectFailed({required Object p}) => 'اتصال به [${p}] ناموفق بود، لطفاً مطمئن شوید که دستگاه در همان LAN است';
	@override String get appleTVSync => 'همگام سازی پیکربندی هسته فعلی با Apple TV - Karing';
	@override String get appleTVSyncDone => 'همگام سازی کامل شد، لطفاً برای باز کردن/راه اندازی مجدد اتصال به Apple TV - Karing بروید';
	@override String get appleTVRemoveCoreConfig => 'حذف Apple TV - Karing Core Configuration';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - نمایه اصلی کارینگ حذف شد';
	@override String get appleTVUrlInvalid => 'URL نامعتبر است، لطفاً Apple TV - Karing را باز کنید، کد QR نمایش داده شده توسط Karing را اسکن کنید';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] این عملکرد را ندارد، لطفا ارتقا دهید و دوباره امتحان کنید';
	@override String appleCoreVersionNotMatch({required Object p}) => 'نسخه اصلی اصلی مطابقت ندارد، لطفاً [${p}] را ارتقا دهید و دوباره امتحان کنید';
	@override String get remoteProfileEditConfirm => 'پس از به روز رسانی تنظیمات، تغییرات گره بازیابی می شوند آیا می خواهید ادامه دهید؟';
	@override String get mustBeValidHttpsURL => 'باید یک URL معتبر https باشد';
	@override String fileNotExistReinstall({required Object p}) => 'فایل [${p}] وجود ندارد، لطفا دوباره نصب کنید';
	@override String get noNetworkConnect => 'بدون اتصال به اینترنت';
	@override String get sudoPassword => 'رمز عبور sudo (برای حالت TUN لازم است)';
	@override String get turnOffNetworkBeforeInstall => 'توصیه می‌شود قبل از نصب به‌روزرسانی، به [حالت هواپیما] بروید';
	@override String get latencyTestResolveIP => 'در طی تشخیص دستی، IP صادرات نیز تجزیه و تحلیل می شود.';
	@override String get latencyTestConcurrency => 'همزمانی';
	@override String get edgeRuntimeNotInstalled => 'زمان اجرا Edge WebView2 روی دستگاه فعلی نصب نشده است و صفحه قابل نمایش نیست لطفاً زمان اجرا Edge WebView2 (x64) را بارگیری و نصب کنید، برنامه را مجدداً راه اندازی کنید و دوباره امتحان کنید.';
	@override Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'zh-TW': '繁體中文',
		'ja': '日本語',
		'ko': '한국어',
		'fr': 'Français',
		'es': 'Español',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
		'de': 'Deutsch',
		'pt': 'Português',
		'it': 'Italiano',
		'uk': 'Українська',
		'pl': 'Polski',
		'nl': 'Nederlands',
		'sv': 'Svenska',
		'no': 'Norsk',
		'da': 'Dansk',
		'hi': 'हिन्दी',
		'ur': 'اردو',
		'bn': 'বাংলা',
		'el': 'Ελληνικά',
		'vi': 'Tiếng Việt',
		'tr': 'Türkçe',
		'th': 'ไทย',
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
	@override String get updateWhenConnected => 'پس از اتصال، به‌روزرسانی‌ها را بررسی کنید';
	@override String get autoDownloadPkg => 'دانلود خودکار بسته‌های به‌روزرسانی';
	@override String get disableAppImproveData => 'داده های بهبود را اعمال کنید';
	@override String get disableUAReportTip => 'فعال کردن [${_root.AboutScreen.disableAppImproveData}] به ما کمک می‌کند تا پایداری و قابلیت استفاده از محصول را بهبود بخشیم؛ ما هیچ گونه اطلاعات شخصی مربوط به حریم خصوصی را جمع‌آوری نمی‌کنیم. غیرفعال کردن آن مانع از جمع‌آوری هرگونه داده توسط برنامه می‌شود.';
	@override String get devOptions => 'تنظیمات توسعه‌دهندگان';
	@override String get enableDebugLog => 'فعال‌سازی گزارش اشکال‌زدایی';
	@override String get viewFilsContent => 'مشاهده فایل‌ها';
	@override String get enablePprof => 'فعال‌سازی pprof';
	@override String get pprofPanel => 'پنل pprof';
	@override String get allowRemoteAccessPprof => 'اجازه دسترسی از راه دور به ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'اجازه دسترسی از راه دور${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'استفاده از پروفایل اصلی سینگ‌باکس';
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
	@override String invalid({required Object p0, required Object p}) => 'نامعتبر [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'نامعتبر [Rule Set]:${p} باید URL یک URL معتبر https باشد و یک فایل دودویی(binary) با پسوند فایل .srs/.json باشد';
	@override String invalidRuleSetBuildIn({required Object p}) => 'نامعتبر [Rule Set(build-in)]:${p} نامعتبر است، قالب geosite:xxx یا geoip:xxx یا acl:xxx است و xxx باید یک نام قانون معتبر باشد';
	@override String invalidPackageId({required Object p}) => 'نامعتبر [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenFa implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'کشف قانون انحراف';
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

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenFa implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'نمایش دهنده محتوای فایل';
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
	@override String get myLinkEmpty => 'لطفا قبل‌از استفاده [لینک میان‌بر] را راه‌اندازی کنید';
	@override String tooMuchServers({required Object p, required Object p1}) => 'تعداد زیادی سرور پروکسی [${p}>${p1}] وجود دارد و ممکن است به دلیل محدودیت حافظه سیستم، اتصال امکان پذیر نباشد.';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'تعداد زیاد سرورهای پروکسی [${p}>${p1}] ممکن است باعث کندی یا عدم دسترسی به اتصالات شود';
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

// Path: NetCheckScreen
class _TranslationsNetCheckScreenFa implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'بررسی شبکه';
	@override String get warn => 'توجه: به دلیل تأثیر محیط شبکه و قوانین انحراف، نتایج آزمون کاملاً معادل نتایج واقعی نیست.';
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
	@override String get htmlBoard => 'پنل آنلاین';
	@override String get dnsLeakDetection => 'تشخیص نشت DNS';
	@override String get proxyLeakDetection => 'تشخیص نشت عامل';
	@override String get speedTest => 'تست سرعت';
	@override String get rulesetDirectDownlad => 'دانلود مستقیم مجموعه قوانین';
	@override String get hideUnusedDiversionGroup => 'قوانین غیرفعال انحراف ترافیک را پنهان کنید';
	@override String get disableISPDiversionGroup => 'قوانین انحراف [${_root.meta.isp}] را غیرفعال کنید';
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
	@override String get tunAllowBypassHttpProxyDomain => 'دامنه ها مجاز به دور زدن پروکسی HTTP هستند';
	@override String get dnsEnableRule => 'فعال‌سازی قوانین انحراف دی‌ان‌اس';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] کانال رزولوشن';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] ECS را فعال کنید';
	@override String get dnsTestDomain => 'تست دامنه';
	@override String get dnsTestDomainInvalid => 'دامنه نامعتبر';
	@override String get dnsTypeOutbound => 'سرور پروکسی';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'سرور دی‌ان‌اس';
	@override String get dnsEnableRuleTips => 'بعد از فعال‌سازی نام دامنه، سرور دی‌ان‌اس مربوط را بر اساس قوانین انحراف برای عبور انتخاب می‌کند';
	@override String get dnsEnableFakeIpTips => 'پس از فعال کردن FakeIP، اگر اتصال VPN قطع شود، ممکن است برنامه شما نیاز به راه اندازی مجدد داشته باشد [حالت TUN].';
	@override String get dnsTypeOutboundTips => 'سامانه نام دامنه (DNS) برای سرور پروکسی';
	@override String get dnsTypeDirectTips => 'وضوح نام دامنه برای [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'سامانه نام دامنه (DNS) برای ترافیک پروکسی';
	@override String get dnsTypeResolverTips => 'سامانه نام دامنه (DNS) برای بقیه سرور دی‌ان‌اس';
	@override String get dnsAutoSetServer => 'به طور خودکار سرور را راه اندازی کنید';
	@override String get dnsResetServer => 'بازنشانی سرور';
	@override String get inboundDomainResolve => 'حل نام دامنه های ورودی';
	@override String get privateDirect => 'اتصال مستقیم شبکه خصوصی';
	@override String inboundDomainResolveTips({required Object p}) => 'برخی از نام‌های دامنه بدون قوانین انحراف پیکربندی شده باید حل و فصل شوند تا بتوانند قوانین انحراف مبتنی بر IP را تحت تأثیر قرار دهند [${p}].';
	@override String get useRomoteRes => 'از منابع راه‌دور استفاده کنید';
	@override String get autoAppendRegion => 'به طور خودکار قوانین اساسی را پیوست کنید';
	@override String get autoSelect => 'انتخاب خودکار';
	@override String get autoSelectServerIgnorePerProxyServer => 'سرورهای پروکسی [جلو/زنجیری] را نادیده بگیرید';
	@override String get autoSelectServerInterval => 'بازه زمانی بررسی تاخیر';
	@override String get autoSelectSelectedHealthCheckInterval => 'فاصله بررسی سلامت سرور فعلی';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'شناسایی مجدد زمانی که شبکه تغییر می کند';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'سرور فعلی را پس از تشخیص تأخیر دستی به روز کنید';
	@override String get autoSelectServerIntervalTips => 'هرچه فاصله تشخیص تاخیر کمتر باشد، داده های تاخیر سرور به موقع به روز می شود، اما منابع بیشتری را اشغال می کند و برق را سریعتر مصرف می کند';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'اگر تشخیص ناموفق باشد، گره تغییر می کند. اگر هنگام تعویض گره هیچ گره در دسترس پیدا نشد، گروه با تاخیر دوباره شناسایی می شود';
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
	@override String get widgetsAlpha => 'شفافیت ابزارک‌ها';
	@override String get widgetsEmpty => 'هیچ ویجتی موجود نیست';
	@override String get backgroundImage => 'تصویر پس زمینه';
	@override String get myLink => 'لینک میان‌بر';
	@override String get autoConnectAfterLaunch => 'اتصال خودکار پس‌از راه‌اندازی';
	@override String get autoConnectAtBoot => 'اتصال خودکار پس از روشن شدن سیستم';
	@override String get autoConnectAtBootTips => 'پشتیبانی سیستم مورد نیاز است؛ برخی سیستم‌ها ممکن است نیاز به فعال بودن [شروع خودکار] نیز داشته باشند.';
	@override String get hideAfterLaunch => 'پنهان کردن پنجره پس از راه اندازی';
	@override String get autoSetSystemProxy => 'تنظیم خودکار حالت پروکسی سیستم پس‌از اتصال';
	@override String get bypassSystemProxy => 'نام های دامنه ای که مجاز به دور زدن پراکسی سیستم هستند';
	@override String get disconnectWhenQuit => 'قطع اتصال هنگام خروج از نرم‌افزار';
	@override String get autoAddToFirewall => 'اضافه کردن خودکار قوانین فایروال';
	@override String get excludeFromRecent => 'پنهان شدن از وظایف اخیر';
	@override String get wakeLock => 'قفل بیدارباش';
	@override String get hideVpn => 'مخفی کردن آیکون VPN';
	@override String get hideVpnTips => 'فعال کردن IPv6 باعث از کار افتادن این عملکرد خواهد شد.';
	@override String get allowBypass => 'به برنامه‌ها اجازه دهید VPN را دور بزنند';
	@override String get importSuccess => 'افزودن موفق بود';
	@override String get rewriteConfirm => 'این فایل کانفیگ‌های محلی موجود را بازنویسی می‌کند. آیا می‌خواهید ادامه بدین؟';
	@override String get mergePerapp => 'ادغام لیست‌های محلی [${_root.PerAppAndroidScreen.title}]';
	@override String get networkShare => 'اشتراک‌گذاری شبکه';
	@override String get frontProxy => 'پروکسی جلو/زنجیره';
	@override String frontProxyTips({required Object p}) => 'داده-> سرور پروکسی جلویی/زنجیری [پراکسی سرورهای چندگانه: از بالا به پایین]-> سرور پروکسی [${p}]-> سرور هدف';
	@override String get allowOtherHostsConnect => 'اجازه اتصال دیگران';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'به دلیل محدودیت‌های سیستم، پس از فعال شدن این گزینه، برنامه‌هایی که در این دستگاه از http برای دسترسی به شبکه استفاده می‌کنند، ممکن است نتوانند به درستی به شبکه متصل شوند.';
	@override String get tunAutoRoute => 'مسیر خودکار';
	@override String get tunAutoRedirect => 'تغییر مسیر خودکار';
	@override String get tunStrictRoute => 'مسیر سخت‌گیرانه';
	@override String get tunStrictRouteTips => 'اگر پس از روشن کردن اشتراک‌گذاری، دیگران نمی‌توانند به این دستگاه دسترسی داشته باشند، لطفاً این سوئیچ را خاموش کنید.';
	@override String get loopbackAddress => 'آدرس لوپ‌بک';
	@override String get enableCluster => 'فعال‌سازی پروکسی Socks/Http خوشه‌ای';
	@override String get clusterAllowOtherHostsConnect => 'اجازه اتصال دیگران به خوشه';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'احراز هویت خوشه پروکسی';
	@override String get tunMode => 'حالت TUN';
	@override String get tuni4Address => 'آدرس آی‌پی';
	@override String get tunModeTips => 'حالت TUN تمام ترافیک سیستم را تحت کنترل خواهد گرفت [دراین حالت می‌توانید پروکسی سیستم را غیرفعال نگه‌ دارید)';
	@override String get tunModeRunAsAdmin => 'حالت TUN نیازمند مجوز مدیر سیستم می‌باشد لطفا نرم‌افزار را مجدد با حالت مدیر (administrator) راه‌اندازی کنید';
	@override String get tunStack => 'Stack';
	@override String get tunHijackTips => 'پس از بسته شدن، درخواست های DNS از TUN مستقیماً به سرور DNS مربوطه ارسال می شود';
	@override String get launchAtStartup => 'اجرا در راه‌اندازی';
	@override String get quitWhenSwitchSystemUser => 'خروج از نرم‌افزار هنگام تعویض کاربران سیستم';
	@override String get handleScheme => 'فراخوانی Scheme سیستم';
	@override String get portableMode => 'حالت قابل‌حمل';
	@override String get portableModeDisableTips => 'اگر نیاز دارین از حالت قابل‌حمل خارج شوید لطفا از [Karing] خارج شده و به‌صورت دستی پوشه [Profiles] هم مسیر با فایل [karing.exe] را حذف کنید';
	@override String get accessibility => 'دسترسی‌پذیری';
	@override String get handleKaringScheme => 'رسیدگی به ندای karing://';
	@override String get handleClashScheme => 'رسیدگی به‌ ندای clash://';
	@override String get handleSingboxScheme => 'رسیدگی به ندای sing-box://';
	@override String get alwayOnVPN => 'اتصال همیشه باز';
	@override String get disconnectAfterSleep => 'بعد از خواب زمستانی سیستم را قطع کنید';
	@override String get removeSystemVPNConfig => 'حذف پیکربندی وی‌پی‌ان سیستم';
	@override String get timeConnectOrDisconnect => 'اتصال/قطع اتصال برنامه‌ریزی شده';
	@override String get timeConnectOrDisconnectTips => 'برای اعمال شدن وی‌پی‌ان باید متصل باشد. پس‌از روشن‌شدن [خواب خودکار] غیرفعال می‌شود';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'فاصله اتصال/قطع اتصال نمی تواند کمتر از ${p} دقیقه باشد';
	@override String get disableFontScaler => 'غیرفعال‌سازی مقیاس‌بندی فونت(با راه‌اندازی مجدد اعمال می‌شود)';
	@override String get autoOrientation => 'چرخش صفحه را دنبال کنید';
	@override String get restartTakesEffect => 'با راه‌اندازی مجدد اعمال می‌شود';
	@override String get reconnectTakesEffect => 'پس از اتصال مجدد، اعمال خواهد شد.';
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

// Path: main
class _TranslationsMainFa implements TranslationsMainEn {
	_TranslationsMainFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayFa tray = _TranslationsMainTrayFa._(_root);
}

// Path: meta
class _TranslationsMetaFa implements TranslationsMetaEn {
	_TranslationsMetaFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get enable => 'فعال‌سازی';
	@override String get disable => 'غیرفعال';
	@override String get bydefault => 'پیش‌فرض';
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
	@override String get addSuccess => 'با‌موفقیت اضافه شد';
	@override String addFailed({required Object p}) => 'افزودن ناموفق بود:${p}';
	@override String get remove => 'حذف';
	@override String get removeConfirm => 'آیا از حذف اطمینان دارین؟';
	@override String get edit => 'ویرایش کنید';
	@override String get view => 'بررسی';
	@override String get more => 'بیشتر';
	@override String get tips => 'اطلاعات';
	@override String get copy => 'کپی';
	@override String get paste => 'چسباندن';
	@override String get cut => 'برش';
	@override String get save => 'ذخیره کنید';
	@override String get ok => 'خُب';
	@override String get cancel => 'لغو';
	@override String get feedback => 'بازخورد';
	@override String get feedbackContent => 'محتوای بازخورد';
	@override String get feedbackContentHit => 'الزامی، تا 500 حرف';
	@override String get feedbackContentCannotEmpty => 'محتوای بازخورد نمی‌تواند خالی باشد';
	@override String get faq => 'سوالات متداول';
	@override String get htmlTools => 'مجموعه ابزارهای HTML';
	@override String get download => 'دانلود';
	@override String get upload => 'آپلود';
	@override String get downloadSpeed => 'سرعت دانلود';
	@override String get uploadSpeed => 'سرعت آپلود';
	@override String get loading => 'درحال بارگذاری…';
	@override String get convert => 'تبدیل';
	@override String get check => 'بررسی';
	@override String get detect => 'کشف';
	@override String get cache => 'حافظه نهان';
	@override String get days => 'روز';
	@override String get hours => 'ساعت';
	@override String get minutes => 'دقیقه';
	@override String get seconds => 'دومین';
	@override String get milliseconds => 'میلی‌ثانیه';
	@override String get tolerance => 'تحمل';
	@override String get dateTimePeriod => 'دوره زمانی';
	@override String get protocol => 'پروتکل';
	@override String get search => 'جستجو';
	@override String get custom => 'سفارشی';
	@override String get inbound => 'ورودی';
	@override String get outbound => 'خارج شوید';
	@override String get destination => 'هدف';
	@override String get outletIpByCurrentSelected => 'IP خروجی';
	@override String get outletIpByDirect => 'IP خروجی:${_root.outboundRuleMode.direct}';
	@override String get connect => 'اتصال';
	@override String get disconnect => 'قطع‌ اتصال';
	@override String get reconnect => 'دوباره وصل شوید';
	@override String get connected => 'وصل شد';
	@override String get disconnected => 'قطع شد';
	@override String get connecting => 'درحال اتصال';
	@override String get connectTimeout => 'اتمام مهلت اتصال';
	@override String get timeout => 'تایم اوت';
	@override String get timeoutDuration => 'مدت زمان وقفه';
	@override String get runDuration => 'زمان اجرا';
	@override String get latency => 'تاخیر';
	@override String get latencyTest => 'بررسی تاخیر';
	@override String get language => 'زبان';
	@override String get next => 'بعدی';
	@override String get done => 'انجام‌شد';
	@override String get apply => 'درخواست دادن';
	@override String get refresh => 'بارگذاری مجدد';
	@override String get retry => 'دوباره امتحان کنید؟';
	@override String get update => 'تجدید';
	@override String get updateInterval => 'فاصله‌ی به‌روزرسانی';
	@override String get updateInterval5mTips => 'حداقل: 5 متر';
	@override String updateFailed({required Object p}) => 'به‌روزرسانی ناموفق بود:${p}';
	@override String get samplingUnit => 'واحد زمان نمونه‌برداری';
	@override String get queryResultCount => 'تعداد نتایج پرس و جو';
	@override String queryLimit({required Object p}) => 'نمایش داده‌ها تا ${p}';
	@override String get none => 'هیچ‌کدام';
	@override String get start => 'شروع کنید';
	@override String get pause => 'مکث';
	@override String get reset => 'ریست';
	@override String get submit => 'ارسال';
	@override String get user => 'کاربر';
	@override String get account => 'نام‌کاربری';
	@override String get password => 'رمز‌عبور';
	@override String get required => 'الزامی';
	@override String get type => 'نوع';
	@override String get path => 'مسیر';
	@override String get local => 'محلی';
	@override String get remote => 'از راه دور';
	@override String get other => 'دیگر';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL نامعتبر';
	@override String get urlCannotEmpty => 'لینک نمی‌تواند خالی باشد';
	@override String get urlTooLong => 'URL خیلی طولانی است (>8182)';
	@override String get copyUrl => 'کپی‌کردن لینک';
	@override String get openUrl => 'بازکردن لینک';
	@override String get shareUrl => 'اشتراک لینک';
	@override String get speedTestUrl => 'URL تست سرعت';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'IP استاتیک';
	@override String get staticIPTips => 'شما باید [TUN HijackDNS] یا [${_root.SettingsScreen.inboundDomainResolve}] را فعال کنید.';
	@override String get isp => 'ارائه دهندگان VPN';
	@override String get domainSuffix => 'پسوند دامنه';
	@override String get domain => 'دامنه';
	@override String get domainKeyword => 'کلید‌واژه دامنه';
	@override String get domainRegex => 'عبارات باقاعده ی دامنه (Regex)';
	@override String get ip => 'IP';
	@override String get port => 'پورت';
	@override String get portRange => 'محدوده بندر';
	@override String get appPackage => 'شناسه بسته برنامه';
	@override String get processName => 'نام اجرایی پروسه';
	@override String get processPath => 'مسیر پروسه';
	@override String get processDir => 'فهرست فرآیندها';
	@override String get systemProxy => 'پروکسی سیستم';
	@override String get percentage => 'درصد';
	@override String get statistics => 'آمار';
	@override String get statisticsAndAnalysis => 'آمار و تحلیل';
	@override String get statisticsDataDesensitize => 'ناشناس‌سازی داده‌ها';
	@override String get statisticsDataDesensitizeTips => 'شناسه فرآیند/بسته/نام دامنه هدف/IP هدف و غیره با * جایگزین شده و پس از حساسیت‌زدایی ذخیره می‌شوند.';
	@override String get records => 'رکورد';
	@override String get requestRecords => 'درخواست سوابق';
	@override String get netInterfaces => 'رابط شبکه';
	@override String get netSpeed => 'سرعت';
	@override String get memoryTrendChart => 'نمودار روند حافظه';
	@override String get goroutinesTrendChart => 'نمودار روند GoRoutines';
	@override String get trafficTrendChart => 'نمودار روند ترافیک';
	@override String get trafficDistributionChart => 'نقشه توزیع ترافیک';
	@override String get connectionChart => 'نمودار روند اتصال';
	@override String get memoryChart => 'نمودار روند حافظه';
	@override String get trafficStatistics => 'آمار ترافیک';
	@override String get traffic => 'جریان';
	@override String get trafficTotal => 'کل ترافیک';
	@override String get trafficProxy => 'ترافیک پروکسی';
	@override String get trafficDirect => 'ترافیک مستقیم';
	@override String get website => 'وبسایت';
	@override String get memory => 'حافظه';
	@override String get outboundMode => 'حالت خروجی';
	@override String get rule => 'قانون';
	@override String get global => 'عمومی';
	@override String get qrcode => 'کد QR';
	@override String get qrcodeTooLong => 'متن برای نمایش خیلی طولانی است';
	@override String get qrcodeShare => 'اشتراک کدQR';
	@override String get textToQrcode => 'متن به کد QR';
	@override String get qrcodeScan => 'اسکن QRکد';
	@override String get qrcodeScanResult => 'نتایج اسکن';
	@override String get qrcodeScanFromImage => 'اسکن از عکس';
	@override String get qrcodeScanResultFailed => 'تجزیه عکس ناموفق بود، لطفا مطمعن شوید اسکرین‌شات یک کدQR معتبر است';
	@override String get qrcodeScanResultEmpty => 'نتیجه اسکن خالی است';
	@override String get screenshot => 'اسکرین‌شات';
	@override String get backupAndSync => 'پشتیبان‌گیری و همگام‌سازی';
	@override String get autoBackup => 'پشتیبان گیری خودکار';
	@override String get noProfileGotAutoBackup => 'اگر داده‌هایی مانند [${_root.meta.myProfiles}] از بین بروند، می‌توانید آن‌ها را از [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] یا سایر منابع پشتیبان (مانند iCloud یا Webdav و غیره) بازیابی کنید.';
	@override String get autoBackupAddProfile => 'بعد از اضافه کردن تنظیمات';
	@override String get autoBackupRemoveProfile => 'پس از حذف تنظیمات';
	@override String get profile => 'پیکربندی';
	@override String get currentProfile => 'پیکربندی فعلی';
	@override String get importAndExport => 'وارد‌کردن و خروجی‌گرفتن';
	@override String get import => 'وارد‌کردن';
	@override String get importFromUrl => 'وارد کردن از URL';
	@override String get export => 'خروجی‌گرفتن';
	@override String get send => 'ارسال کنید';
	@override String get receive => 'تصاحب';
	@override String get sendConfirm => 'ارسال را تایید کرد؟';
	@override String get termOfUse => 'شرایط استفاده';
	@override String get privacyPolicy => 'سیاست حریم خصوصی';
	@override String get about => 'درباره';
	@override String get name => 'نام';
	@override String get version => 'نسخه';
	@override String get notice => 'اطلاعیه';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'اقدام: ${p}\nدلیل: ${p1}';
	@override String get sort => 'مرتب‌سازی';
	@override String get novice => 'حالت مبتدی';
	@override String get willCompleteAfterRebootInstall => 'لطفاً دستگاه خود را مجدداً راه اندازی کنید تا نصب افزونه سیستم تکمیل شود.';
	@override String get willCompleteAfterRebootUninstall => 'لطفاً دستگاه خود را مجدداً راه‌اندازی کنید تا حذف نصب افزونه سیستم تکمیل شود';
	@override String get requestNeedsUserApproval => '۱. [تنظیمات سیستم] - [حریم خصوصی و امنیت] - [مجاز کردن] برای نصب افزونه‌های سیستم. ۲. [تنظیمات سیستم] - [عمومی] - [ورود و افزونه‌ها - افزونه‌های شبکه] - [karingServiceSE] - [پس از اتمام، دوباره متصل شوید]';
	@override String get FullDiskAccessPermissionRequired => 'لطفاً مجوز [karingServiceSE] را در [System Settings] - [Privacy and Security] - [Full Disk Access] فعال کنید و دوباره متصل شوید.';
	@override String get tvMode => 'حالت تلویزیون';
	@override String get recommended => 'پیشنهادی';
	@override String innerError({required Object p}) => 'خطای داخلی: ${p}';
	@override String get logicOperation => 'عملیات منطقی';
	@override String get share => 'اشتراک گذاری';
	@override String get candidateWord => 'کلمات نامزد';
	@override String get keywordOrRegx => 'کلمات کلیدی / معمولی';
	@override String get importFromClipboard => 'افزودن از کلیپ‌برد';
	@override String get exportToClipboard => 'صادرات به کلیپ بورد';
	@override String get server => 'سرور';
	@override String get ads => 'تبلیغ کنید';
	@override String get adsRemove => 'تبلیغات را حذف کنید';
	@override String get donate => 'اهدا کنید';
	@override String get diversion => 'انحراف';
	@override String get diversionRules => 'قوانین انحراف';
	@override String get diversionCustomGroup => 'گروه انحراف سفارشی';
	@override String get urlTestCustomGroup => 'انتخاب خودکار سفارشی';
	@override String get setting => 'تنظیمات';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN Sync';
	@override String get lanSyncNotQuitTips => 'قبل از تکمیل همگام‌سازی از این قسمت خارج نشوید';
	@override String get deviceNoSpace => 'فضای خالی کافی ندارید';
	@override String get hideSystemApp => 'برنامه های سیستم را مخفی کنید';
	@override String get hideAppIcon => 'پنهان کردن نماد برنامه';
	@override String get hideDockIcon => 'پنهان کردن آیکون داک';
	@override String get remark => 'ملاحضات';
	@override String get remarkExist => 'ملاحظات از‌قبل وجود دارد، لطفا از نام دیگری استفاده کنید';
	@override String get remarkCannotEmpty => 'ملاحظات نمی‌تواند خالی باشد';
	@override String get remarkTooLong => 'ملاحظات تا ۳۲ حرف';
	@override String get openDir => 'بازکردن دایرکتوری فایل';
	@override String get fileChoose => 'انتخاب فایل';
	@override String get filePathCannotEmpty => 'مسیر فایل نمی‌تواند خالی باشد';
	@override String fileNotExist({required Object p}) => 'فایل وجود ندارد:${p}';
	@override String fileTypeInvalid({required Object p}) => 'نوع فایل نامعتبر:${p}';
	@override String get uwpExemption => 'معافیت جداسازی شبکه UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'پیکربندی را دریافت کنید';
	@override String get addProfile => 'افزودن پروفایل';
	@override String get myProfiles => 'پروفایل‌ها';
	@override String get profileEdit => 'ویرایش پروفایل';
	@override String get profileEditUrlExist => 'آدرس URL از‌قبل وجود دارد، لطفا از URL دیگری استفاده کنید';
	@override String get profileEditReloadAfterProfileUpdate => 'بارگذاری مجدد پس‌از به‌روزرسانی پروفایل';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'شروع تست تاخیر پس‌از به‌روزرسانی خودکار پروفایل';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'وی‌پی‌ان باید روشن و [بارگذاری مجدد پس‌از به‌روزرسانی پروفایل] فعال باشد';
	@override String get profileEditTestLatencyAutoRemove => 'خودکار سرورهای ناموفق در تست تاخیر را حذف کن';
	@override String get profileEditTestLatencyAutoRemoveTips => 'تا سه بار امتحان کنید';
	@override String get profileImport => 'وارد‌کردن فایل پروفایل';
	@override String get profileAddUrlOrContent => 'افزودن لینک پروفایل';
	@override String get profileExists => 'پروفایل از‌قبل وجود دارد، لطفا آن را به‌طور مکرر اضافه نکنید';
	@override String get profileUrlOrContent => 'لینک/محتوای پروفایل';
	@override String get profileUrlOrContentHit => 'لینک/محتوای پروفایل [الزامی] (پشتیبانی از کلش، V2ray(پشتیبانی به‌صورت دسته‌ای)، لینک‌های پروفایل فرعی)، استش، کارینگ، سینگ‌باکس، شدوساکس، لینک‌های پروفایل فرعی)';
	@override String get profileUrlOrContentCannotEmpty => 'لینک پروفایل نمی‌تواند خالی باشد';
	@override String profileAddFailedFormatException({required Object p}) => 'فرمت اشتباه است، لطفا آن را اصلاح کرده و مجدد اضافه کنید:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'افزودن نشد: ${p}، لطفاً [UserAgent] را تغییر دهید و دوباره امتحان کنید، یا از مرورگر خود دستگاه برای باز کردن پیوند پیکربندی و وارد کردن فایل پیکربندی دانلود شده توسط مرورگر به این برنامه استفاده کنید.';
	@override String profileAddFailedHandshakeException({required Object p}) => 'اضافه کردن: ${p} ناموفق بود، لطفاً عامل را باز کنید یا گره عامل فعلی را تغییر دهید و دوباره امتحان کنید';
	@override String get profileAddParseFailed => 'تجزیه پروفایل انجام نشد';
	@override String get profileAddNoServerAvaliable => 'هیچ سروری در دسترس نیست، لطفاً مطمئن شوید که پیوند پیکربندی یا فایل پیکربندی معتبر است، اگر پیکربندی شما از GitHub آمده است، لطفاً آدرس پیوند را از دکمه [Raw] در صفحه دریافت کنید';
	@override String get profileAddWrapSuccess => 'پیکربندی با موفقیت ایجاد شد، لطفاً برای مشاهده به [${_root.meta.myProfiles}] بروید';
}

// Path: isp
class _TranslationsIspFa implements TranslationsIspEn {
	_TranslationsIspFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get bind => 'اتصال به [${_root.meta.isp}]';
	@override String unbind({required Object p}) => 'لغو پیوند[${p}]';
	@override String faq({required Object p}) => 'سوالات متداول[${p}]';
	@override String customerService({required Object p}) => 'خدمات مشتری[${p}]';
	@override String follow({required Object p}) => 'دنبال کردن[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}]نامعتبر یا منقضی شده است';
}

// Path: permission
class _TranslationsPermissionFa implements TranslationsPermissionEn {
	_TranslationsPermissionFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get camera => 'دوربین';
	@override String get screen => 'ضبط صفحه';
	@override String get appQuery => 'Get Application List';
	@override String request({required Object p}) => 'مجوزهای [${p}] را فعال کنید';
	@override String requestNeed({required Object p}) => 'لطفاً مجوز [${p}] را فعال کنید';
}

// Path: tls
class _TranslationsTlsFa implements TranslationsTlsEn {
	_TranslationsTlsFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'رد شدن از تأیید گواهی';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'بخش بندی TLS را فعال کنید';
	@override String get fragmentSize => 'اندازه بخش TLS';
	@override String get fragmentSleep => 'خواب بخش‌بندی شده TLS';
	@override String get mixedCaseSNIEnable => 'TLS ترکیبی SNI را فعال کنید';
	@override String get paddingEnable => 'فعال کردن TLS Padding';
	@override String get paddingSize => 'اندازه پد TLS';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeFa implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'فعلی انتخاب شده';
	@override String get urltest => 'انتخاب خودکار';
	@override String get direct => 'مستقیم';
	@override String get block => 'مسدود';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeFa implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyFa implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonFa implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'به‌روزرسانی‌های پیکربندی';
}

// Path: theme
class _TranslationsThemeFa implements TranslationsThemeEn {
	_TranslationsThemeFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get light => 'رنگ روشن';
	@override String get dark => 'سیاه';
	@override String get auto => 'خودکار';
}

// Path: main.tray
class _TranslationsMainTrayFa implements TranslationsMainTrayEn {
	_TranslationsMainTrayFa._(this._root);

	final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'بازکردن';
	@override String get menuExit => 'بستن';
}

/// The flat map containing all translations for locale <fa>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'مرجع نصب',
			'AboutScreen.installTime' => 'زمان نصب',
			'AboutScreen.versionChannel' => 'کانال به‌روزرسانی خودکار',
			'AboutScreen.updateWhenConnected' => 'پس از اتصال، به‌روزرسانی‌ها را بررسی کنید',
			'AboutScreen.autoDownloadPkg' => 'دانلود خودکار بسته‌های به‌روزرسانی',
			'AboutScreen.disableAppImproveData' => 'داده های بهبود را اعمال کنید',
			'AboutScreen.disableUAReportTip' => 'فعال کردن [${_root.AboutScreen.disableAppImproveData}] به ما کمک می‌کند تا پایداری و قابلیت استفاده از محصول را بهبود بخشیم؛ ما هیچ گونه اطلاعات شخصی مربوط به حریم خصوصی را جمع‌آوری نمی‌کنیم. غیرفعال کردن آن مانع از جمع‌آوری هرگونه داده توسط برنامه می‌شود.',
			'AboutScreen.devOptions' => 'تنظیمات توسعه‌دهندگان',
			'AboutScreen.enableDebugLog' => 'فعال‌سازی گزارش اشکال‌زدایی',
			'AboutScreen.viewFilsContent' => 'مشاهده فایل‌ها',
			'AboutScreen.enablePprof' => 'فعال‌سازی pprof',
			'AboutScreen.pprofPanel' => 'پنل pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'اجازه دسترسی از راه دور به ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'اجازه دسترسی از راه دور${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'استفاده از پروفایل اصلی سینگ‌باکس',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'آدرس URL سرور',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'نمی‌تواند خالی باشد',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'ورود ناموفق بود:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'دریافت لیست فایل ناموفق بود:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'نامعتبر [Domain]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'نامعتبر [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'نامعتبر [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'نامعتبر [Rule Set]:${p} باید URL یک URL معتبر https باشد و یک فایل دودویی(binary) با پسوند فایل .srs/.json باشد',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'نامعتبر [Rule Set(build-in)]:${p} نامعتبر است، قالب geosite:xxx یا geoip:xxx یا acl:xxx است و xxx باید یک نام قانون معتبر باشد',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'نامعتبر [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد',
			'DiversionRuleDetectScreen.title' => 'کشف قانون انحراف',
			'DiversionRuleDetectScreen.rule' => 'قانون:',
			'DiversionRuleDetectScreen.outbound' => 'سرور پروکسی:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'نکته: سعی کنید قوانین را از بالا به پایین مطابقت دهید، از [نهایی] استفاده کنید.',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP نمی‌تواند خالی باشد',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL نمی‌تواند خالی باشد',
			'DnsSettingsScreen.error' => ({required Object p}) => 'نوع پشتیبانی نشده:${p}',
			'DnsSettingsScreen.dnsDesc' => 'ستون اول داده‌های تأخیر، تأخیر ارتباط مستقیم است؛\nستون دوم: روشن کردن [[ترافیک پروکسی] برای حل و فصل DNS از طریق سرور پراکسی]: داده‌های تأخیر، تأخیر درخواست ارسال شده از طریق سرور پراکسی فعلی است [[ترافیک پروکسی] روشن نیست، از طریق سرور پروکسی DNS را حل می‌کند]: داده‌های تأخیر تأخیر درخواست اتصال مستقیم است',
			'FileContentViewerScreen.title' => 'نمایش دهنده محتوای فایل',
			'FileContentViewerScreen.clearFileContent' => 'آیا از پاکسازی محتوای فایل اطمینان دارید؟',
			'FileContentViewerScreen.clearFileContentTips' => 'آیا از پاکسازی محتوای فایل پروفایل اطمینان دارید؟ پاکسازی محتوای فایل پروفایل ممکن است باعث از دست رفتن داده یا عملیات غیرعادی نرم‌افزار شود؛ لطفا با احتیاط عمل کنید.',
			'HomeScreen.toSelectServer' => 'لطفا یک سرور انتخاب کنید',
			'HomeScreen.invalidServer' => 'نامعتبر است، لطفا مجدد انتخاب کنید',
			'HomeScreen.disabledServer' => 'غیرفعال است، لطفا مجدد انتخاب کنید',
			'HomeScreen.expiredServer' => 'هیچ سروری در دسترس نیست: ممکن است پیکربندی قدیمی یا غیرفعال باشد',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'لطفا قبل‌از استفاده [لینک میان‌بر] را راه‌اندازی کنید',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'تعداد زیادی سرور پروکسی [${p}>${p1}] وجود دارد و ممکن است به دلیل محدودیت حافظه سیستم، اتصال امکان پذیر نباشد.',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'تعداد زیاد سرورهای پروکسی [${p}>${p1}] ممکن است باعث کندی یا عدم دسترسی به اتصالات شود',
			'LaunchFailedScreen.invalidProcess' => 'اجرای نرم‌افزار ناموفق بود [نام‌ اجرایی پروسه نامعتبر]، لطفا مجدد نرم‌افزار را در دایرکتوری دیگری نصب کنید',
			'LaunchFailedScreen.invalidProfile' => 'اجرای نرم‌افزار ناموفق بود [دسترسی به پروفایل ناموفق بود]، لطفا مجدد نرم افزار را نصب کنید',
			'LaunchFailedScreen.invalidVersion' => 'اجرای نرم‌افزار ناموفق بود [ورژن نامعتبر]، لطفا مجدد نرم‌افزار را نصب کنید',
			'LaunchFailedScreen.systemVersionLow' => 'راه اندازی برنامه ناموفق بود [نسخه سیستم خیلی کم است]',
			'LaunchFailedScreen.invalidInstallPath' => 'مسیر نصب نامعتبر است، لطفا مجدد در مسیر معتبر نصب کنید',
			'MyProfilesMergeScreen.profilesMerge' => 'ادغام پروفایل‌ها',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'پروفایل هدف',
			'MyProfilesMergeScreen.profilesMergeSource' => 'پروفایل مرجع',
			'MyProfilesMergeScreen.profilesMergeTips' => 'راهنمایی: انحراف پروفایل مرجع حذف می‌شود',
			'NetCheckScreen.title' => 'بررسی شبکه',
			'NetCheckScreen.warn' => 'توجه: به دلیل تأثیر محیط شبکه و قوانین انحراف، نتایج آزمون کاملاً معادل نتایج واقعی نیست.',
			'NetCheckScreen.invalidDomain' => 'نام دامنه نامعتبر',
			'NetCheckScreen.connectivity' => 'اتصال شبکه',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'تست اتصال Ipv4 همه‌ی [${p}] ناموفق بودند',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'اتصال Ipv4 موفق بود',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'تست اتصال Ipv6 همه‌ی [${p}] ناموفق بودند، شاید شبکه شما از Ipv6 پشتیبانی نکند',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'اتصال Ipv6 موفق بود',
			'NetCheckScreen.connectivityTestOk' => 'شبکه به اینترنت متصل است',
			'NetCheckScreen.connectivityTestFailed' => 'شبکه هنوز به اینترنت متصل نشده',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'همه با موفقیت دانلود شدند',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'دانلود شد یا ناموفق بود',
			'NetCheckScreen.outbound' => 'سرور پروکسی',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] اتصال موفق بود',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] اتصال ناموفق \nارور:[${p2}]',
			'NetCheckScreen.dnsServer' => 'سرور دی‌ان‌اس',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS query succeeded\nDNS Rule: درخواست دی‌ان‌اس موفق بود\nقانون دی‌ان‌اس: [${p2}]\nتاخیر: [${p3} ms]\nآدرس [${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]جستجوی DNS موفق بود\nقانون DNS: [${p2}]\nخطا:[${p3}]',
			'NetCheckScreen.host' => 'اتصال HTTP',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nقانون انحراف: [${p2}]\nسرور پروکسی: [${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'اتصال موفق شد',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'ارتباط ناموفق بود:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'دامنه/آی‌پی',
			'NetConnectionsFilterScreen.app' => 'نرم‌افزار',
			'NetConnectionsFilterScreen.rule' => 'قانون',
			'NetConnectionsFilterScreen.chain' => 'Outbound',
			'NetConnectionsScreen.copyAsCSV' => 'در فرمت CAV کپی شد',
			'NetConnectionsScreen.selectType' => 'انتخاب نوع انحراف',
			'PerAppAndroidScreen.title' => 'پروکسی به‌تفکیک برنامه',
			'PerAppAndroidScreen.whiteListMode' => 'حالت لیست سفید',
			'PerAppAndroidScreen.whiteListModeTip' => 'وقتی فعال باشد: فقط برنامه‌هایی که انتخاب شده‌اند پروکسی می‌شوند؛ وقتی فعال نباشد: فقط برنامه‌هایی که انتخاب نشده‌اند پروکسی می‌شوند',
			'RegionSettingsScreen.title' => 'کشور یا منطقه',
			'RegionSettingsScreen.Regions' => 'راهنمایی: لطفا کشور یا منطقه فعلی خود را انتخاب کنید درغیراین‌صورت ممکن‌است باعث مشکلات انحراف شبکه شود',
			'ServerSelectScreen.title' => 'انتخاب سرور',
			'ServerSelectScreen.autoSelectServer' => 'خودکار سرور با کمترین تاخیر را انتخاب کن',
			'ServerSelectScreen.recentUse' => 'اخیرا استفاده‌شده',
			'ServerSelectScreen.myFav' => 'علاقه‌مندی‌های من',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'سرور انتخاب شده یک آدرس محلی است و شاید به درستی عمل نکند :${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'سرور انتخاب شده یک آدرس IPv6 است و نیاز به [فعال‌سازی IPv6] دارد',
			'ServerSelectScreen.selectDisabled' => 'این سرور غیرفعال شده است',
			'ServerSelectScreen.error404' => 'تشخیص تاخیر با یک اخطار مواجه شده‌است، لطفا بررسی کنید که کانفیگی با محتویات یکسان وجود دارد یا خیر',
			'SettingsScreen.getTranffic' => 'دریافت ترافیک',
			'SettingsScreen.tutorial' => 'آموزش',
			'SettingsScreen.commonlyUsedRulesets' => 'قوانین رایج',
			'SettingsScreen.htmlBoard' => 'پنل آنلاین',
			'SettingsScreen.dnsLeakDetection' => 'تشخیص نشت DNS',
			'SettingsScreen.proxyLeakDetection' => 'تشخیص نشت عامل',
			'SettingsScreen.speedTest' => 'تست سرعت',
			'SettingsScreen.rulesetDirectDownlad' => 'دانلود مستقیم مجموعه قوانین',
			'SettingsScreen.hideUnusedDiversionGroup' => 'قوانین غیرفعال انحراف ترافیک را پنهان کنید',
			'SettingsScreen.disableISPDiversionGroup' => 'قوانین انحراف [${_root.meta.isp}] را غیرفعال کنید',
			'SettingsScreen.portSettingRule' => 'قانون محور',
			'SettingsScreen.portSettingDirectAll' => 'مستقیم‌شدن همه',
			'SettingsScreen.portSettingProxyAll' => 'پروکسی‌شدن همه',
			'SettingsScreen.portSettingControl' => 'کنترل و همگام‌سازی',
			'SettingsScreen.portSettingCluster' => 'سرویس کلاستر',
			'SettingsScreen.modifyPort' => 'اصلاح پورت',
			'SettingsScreen.modifyPortOccupied' => 'پورت اشغال شده است لطفا از پورت دیگری استفاده کنید',
			'SettingsScreen.ipStrategyTips' => 'قبل‌از فعال‌سازی لطفا مطمعن شوید شبکه شما از IPv6 پشتیبانی می‌کند، وگرنه برخی ترافیک‌ها نمی‌توانند به‌صورت نرمال دردسترس باشند',
			'SettingsScreen.tunAppendHttpProxy' => 'پیوست دادن پروکسی HTTP به وی‌پی‌ان',
			'SettingsScreen.tunAppendHttpProxyTips' => 'برخی نرم‌افزار‌ها از کارت شبکه مجازی رد میشوند و مستقیم به پروکسی HTTP متصل می‌شوند',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'دامنه ها مجاز به دور زدن پروکسی HTTP هستند',
			'SettingsScreen.dnsEnableRule' => 'فعال‌سازی قوانین انحراف دی‌ان‌اس',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] کانال رزولوشن',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] ECS را فعال کنید',
			'SettingsScreen.dnsTestDomain' => 'تست دامنه',
			'SettingsScreen.dnsTestDomainInvalid' => 'دامنه نامعتبر',
			'SettingsScreen.dnsTypeOutbound' => 'سرور پروکسی',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'سرور دی‌ان‌اس',
			'SettingsScreen.dnsEnableRuleTips' => 'بعد از فعال‌سازی نام دامنه، سرور دی‌ان‌اس مربوط را بر اساس قوانین انحراف برای عبور انتخاب می‌کند',
			'SettingsScreen.dnsEnableFakeIpTips' => 'پس از فعال کردن FakeIP، اگر اتصال VPN قطع شود، ممکن است برنامه شما نیاز به راه اندازی مجدد داشته باشد [حالت TUN].',
			'SettingsScreen.dnsTypeOutboundTips' => 'سامانه نام دامنه (DNS) برای سرور پروکسی',
			'SettingsScreen.dnsTypeDirectTips' => 'وضوح نام دامنه برای [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'سامانه نام دامنه (DNS) برای ترافیک پروکسی',
			'SettingsScreen.dnsTypeResolverTips' => 'سامانه نام دامنه (DNS) برای بقیه سرور دی‌ان‌اس',
			'SettingsScreen.dnsAutoSetServer' => 'به طور خودکار سرور را راه اندازی کنید',
			'SettingsScreen.dnsResetServer' => 'بازنشانی سرور',
			'SettingsScreen.inboundDomainResolve' => 'حل نام دامنه های ورودی',
			'SettingsScreen.privateDirect' => 'اتصال مستقیم شبکه خصوصی',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'برخی از نام‌های دامنه بدون قوانین انحراف پیکربندی شده باید حل و فصل شوند تا بتوانند قوانین انحراف مبتنی بر IP را تحت تأثیر قرار دهند [${p}].',
			'SettingsScreen.useRomoteRes' => 'از منابع راه‌دور استفاده کنید',
			'SettingsScreen.autoAppendRegion' => 'به طور خودکار قوانین اساسی را پیوست کنید',
			'SettingsScreen.autoSelect' => 'انتخاب خودکار',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'سرورهای پروکسی [جلو/زنجیری] را نادیده بگیرید',
			'SettingsScreen.autoSelectServerInterval' => 'بازه زمانی بررسی تاخیر',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'فاصله بررسی سلامت سرور فعلی',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'شناسایی مجدد زمانی که شبکه تغییر می کند',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'سرور فعلی را پس از تشخیص تأخیر دستی به روز کنید',
			'SettingsScreen.autoSelectServerIntervalTips' => 'هرچه فاصله تشخیص تاخیر کمتر باشد، داده های تاخیر سرور به موقع به روز می شود، اما منابع بیشتری را اشغال می کند و برق را سریعتر مصرف می کند',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'اگر تشخیص ناموفق باشد، گره تغییر می کند. اگر هنگام تعویض گره هیچ گره در دسترس پیدا نشد، گروه با تاخیر دوباره شناسایی می شود',
			'SettingsScreen.autoSelectServerFavFirst' => 'اولویت استفاده از [علاقه‌مندی‌های من]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'اگر لیست [علاقه‌مندی‌های من] خالی نبود از سرور‌های داخل [علاقه‌مندی‌های من] استفاده کن',
			'SettingsScreen.autoSelectServerFilter' => 'فیلترکردن سرور‌های نامعتبر',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'اگر بعد از فیلتر کردن هیچ سروری در دسترس نباشد، از اولین سرورهای [${p}] استفاده خواهد شد.',
			'SettingsScreen.autoSelectServerLimitedNum' => 'حداکثر تعداد سرور',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'سرورهای بیش از این تعداد فیلتر خواهند شد',
			'SettingsScreen.numInvalid' => 'عدد نامعتبر',
			'SettingsScreen.hideInvalidServer' => 'مخفی‌کردن سرور‌های نامعتبر',
			'SettingsScreen.sortServer' => 'مرتب‌سازی سرور',
			'SettingsScreen.sortServerTips' => 'مرتب‌سازی براساس تاخیر از کم به زیاد',
			'SettingsScreen.selectServerHideRecommand' => 'مخفی‌کردن [پیشنهادی]',
			'SettingsScreen.selectServerHideRecent' => '‌ مخفی‌کردن [اخیرا استفاده‌شده]',
			'SettingsScreen.selectServerHideFav' => 'مخفی‌کردن [علاقه‌مندی‌های من]',
			'SettingsScreen.homeScreen' => 'صفحه‌ خانه',
			'SettingsScreen.theme' => 'تِم',
			'SettingsScreen.widgetsAlpha' => 'شفافیت ابزارک‌ها',
			'SettingsScreen.widgetsEmpty' => 'هیچ ویجتی موجود نیست',
			'SettingsScreen.backgroundImage' => 'تصویر پس زمینه',
			'SettingsScreen.myLink' => 'لینک میان‌بر',
			'SettingsScreen.autoConnectAfterLaunch' => 'اتصال خودکار پس‌از راه‌اندازی',
			'SettingsScreen.autoConnectAtBoot' => 'اتصال خودکار پس از روشن شدن سیستم',
			'SettingsScreen.autoConnectAtBootTips' => 'پشتیبانی سیستم مورد نیاز است؛ برخی سیستم‌ها ممکن است نیاز به فعال بودن [شروع خودکار] نیز داشته باشند.',
			'SettingsScreen.hideAfterLaunch' => 'پنهان کردن پنجره پس از راه اندازی',
			'SettingsScreen.autoSetSystemProxy' => 'تنظیم خودکار حالت پروکسی سیستم پس‌از اتصال',
			'SettingsScreen.bypassSystemProxy' => 'نام های دامنه ای که مجاز به دور زدن پراکسی سیستم هستند',
			'SettingsScreen.disconnectWhenQuit' => 'قطع اتصال هنگام خروج از نرم‌افزار',
			'SettingsScreen.autoAddToFirewall' => 'اضافه کردن خودکار قوانین فایروال',
			'SettingsScreen.excludeFromRecent' => 'پنهان شدن از وظایف اخیر',
			'SettingsScreen.wakeLock' => 'قفل بیدارباش',
			'SettingsScreen.hideVpn' => 'مخفی کردن آیکون VPN',
			'SettingsScreen.hideVpnTips' => 'فعال کردن IPv6 باعث از کار افتادن این عملکرد خواهد شد.',
			'SettingsScreen.allowBypass' => 'به برنامه‌ها اجازه دهید VPN را دور بزنند',
			'SettingsScreen.importSuccess' => 'افزودن موفق بود',
			'SettingsScreen.rewriteConfirm' => 'این فایل کانفیگ‌های محلی موجود را بازنویسی می‌کند. آیا می‌خواهید ادامه بدین؟',
			'SettingsScreen.mergePerapp' => 'ادغام لیست‌های محلی [${_root.PerAppAndroidScreen.title}]',
			'SettingsScreen.networkShare' => 'اشتراک‌گذاری شبکه',
			'SettingsScreen.frontProxy' => 'پروکسی جلو/زنجیره',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'داده-> سرور پروکسی جلویی/زنجیری [پراکسی سرورهای چندگانه: از بالا به پایین]-> سرور پروکسی [${p}]-> سرور هدف',
			'SettingsScreen.allowOtherHostsConnect' => 'اجازه اتصال دیگران',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'به دلیل محدودیت‌های سیستم، پس از فعال شدن این گزینه، برنامه‌هایی که در این دستگاه از http برای دسترسی به شبکه استفاده می‌کنند، ممکن است نتوانند به درستی به شبکه متصل شوند.',
			'SettingsScreen.tunAutoRoute' => 'مسیر خودکار',
			'SettingsScreen.tunAutoRedirect' => 'تغییر مسیر خودکار',
			'SettingsScreen.tunStrictRoute' => 'مسیر سخت‌گیرانه',
			'SettingsScreen.tunStrictRouteTips' => 'اگر پس از روشن کردن اشتراک‌گذاری، دیگران نمی‌توانند به این دستگاه دسترسی داشته باشند، لطفاً این سوئیچ را خاموش کنید.',
			'SettingsScreen.loopbackAddress' => 'آدرس لوپ‌بک',
			'SettingsScreen.enableCluster' => 'فعال‌سازی پروکسی Socks/Http خوشه‌ای',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'اجازه اتصال دیگران به خوشه',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'احراز هویت خوشه پروکسی',
			'SettingsScreen.tunMode' => 'حالت TUN',
			'SettingsScreen.tuni4Address' => 'آدرس آی‌پی',
			'SettingsScreen.tunModeTips' => 'حالت TUN تمام ترافیک سیستم را تحت کنترل خواهد گرفت [دراین حالت می‌توانید پروکسی سیستم را غیرفعال نگه‌ دارید)',
			'SettingsScreen.tunModeRunAsAdmin' => 'حالت TUN نیازمند مجوز مدیر سیستم می‌باشد لطفا نرم‌افزار را مجدد با حالت مدیر (administrator) راه‌اندازی کنید',
			'SettingsScreen.tunStack' => 'Stack',
			'SettingsScreen.tunHijackTips' => 'پس از بسته شدن، درخواست های DNS از TUN مستقیماً به سرور DNS مربوطه ارسال می شود',
			'SettingsScreen.launchAtStartup' => 'اجرا در راه‌اندازی',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'خروج از نرم‌افزار هنگام تعویض کاربران سیستم',
			'SettingsScreen.handleScheme' => 'فراخوانی Scheme سیستم',
			'SettingsScreen.portableMode' => 'حالت قابل‌حمل',
			'SettingsScreen.portableModeDisableTips' => 'اگر نیاز دارین از حالت قابل‌حمل خارج شوید لطفا از [Karing] خارج شده و به‌صورت دستی پوشه [Profiles] هم مسیر با فایل [karing.exe] را حذف کنید',
			'SettingsScreen.accessibility' => 'دسترسی‌پذیری',
			'SettingsScreen.handleKaringScheme' => 'رسیدگی به ندای karing://',
			'SettingsScreen.handleClashScheme' => 'رسیدگی به‌ ندای clash://',
			'SettingsScreen.handleSingboxScheme' => 'رسیدگی به ندای sing-box://',
			'SettingsScreen.alwayOnVPN' => 'اتصال همیشه باز',
			'SettingsScreen.disconnectAfterSleep' => 'بعد از خواب زمستانی سیستم را قطع کنید',
			'SettingsScreen.removeSystemVPNConfig' => 'حذف پیکربندی وی‌پی‌ان سیستم',
			'SettingsScreen.timeConnectOrDisconnect' => 'اتصال/قطع اتصال برنامه‌ریزی شده',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'برای اعمال شدن وی‌پی‌ان باید متصل باشد. پس‌از روشن‌شدن [خواب خودکار] غیرفعال می‌شود',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'فاصله اتصال/قطع اتصال نمی تواند کمتر از ${p} دقیقه باشد',
			'SettingsScreen.disableFontScaler' => 'غیرفعال‌سازی مقیاس‌بندی فونت(با راه‌اندازی مجدد اعمال می‌شود)',
			'SettingsScreen.autoOrientation' => 'چرخش صفحه را دنبال کنید',
			'SettingsScreen.restartTakesEffect' => 'با راه‌اندازی مجدد اعمال می‌شود',
			'SettingsScreen.reconnectTakesEffect' => 'پس از اتصال مجدد، اعمال خواهد شد.',
			'SettingsScreen.resetSettings' => 'بازنشانی تنظیمات',
			'SettingsScreen.cleanCache' => 'پاک کردن حافظه پنهان',
			'SettingsScreen.cleanCacheDone' => 'پاکسازی کامل شد',
			'SettingsScreen.appleTestFlight' => 'تست‌فلایت اپل',
			'SettingsScreen.appleAppStore' => 'اپ‌استور اپل',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'به‌روزرسانی نسخه ${p} ',
			'SettingsScreen.follow' => 'مارو دنبال کنید',
			'SettingsScreen.contactUs' => 'ارتباط باما',
			'SettingsScreen.supportUs' => 'از ما حمایت کنید',
			'SettingsScreen.rateInApp' => 'امتیاز به ما',
			'SettingsScreen.rateInAppStore' => 'به ما در اپ‌استور امتیاز بدین',
			'UserAgreementScreen.privacyFirst' => 'حریم‌خصوصی شما اولویت دارد',
			'UserAgreementScreen.agreeAndContinue' => 'پذیرفتن و ادامه',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'نسخه جدید [${p}] آماده است',
			'VersionUpdateScreen.update' => 'راه‌اندازی مجدد برای به‌روزرسانی',
			'VersionUpdateScreen.cancel' => 'الان‌ نه',
			'CommonWidget.diableAlwayOnVPN' => 'اگر [وی‌پی‌ان همیشه روشن] روشن است لطفا [وی‌پی‌ان همیشه روشن] را خاموش کنید و مجدد برای اتصال تلاش کنید',
			'CommonWidget.resetPort' => 'لطفاً پورت را به پورت موجود دیگری تغییر دهید یا برنامه ای را که پورت را اشغال می کند ببندید.',
			'main.tray.menuOpen' => 'بازکردن',
			'main.tray.menuExit' => 'بستن',
			'meta.enable' => 'فعال‌سازی',
			'meta.disable' => 'غیرفعال',
			'meta.bydefault' => 'پیش‌فرض',
			'meta.filter' => 'فیلتر',
			'meta.filterMethod' => 'روش فیلتر',
			'meta.include' => 'شامل شود',
			'meta.exclude' => 'حذف کردن',
			'meta.all' => 'همه',
			'meta.prefer' => 'اولویت',
			'meta.only' => 'فقط',
			'meta.open' => 'باز کن',
			'meta.close' => 'بسته',
			'meta.quit' => 'خروج',
			'meta.add' => 'افزودن',
			'meta.addSuccess' => 'با‌موفقیت اضافه شد',
			'meta.addFailed' => ({required Object p}) => 'افزودن ناموفق بود:${p}',
			'meta.remove' => 'حذف',
			'meta.removeConfirm' => 'آیا از حذف اطمینان دارین؟',
			'meta.edit' => 'ویرایش کنید',
			'meta.view' => 'بررسی',
			'meta.more' => 'بیشتر',
			'meta.tips' => 'اطلاعات',
			'meta.copy' => 'کپی',
			'meta.paste' => 'چسباندن',
			'meta.cut' => 'برش',
			'meta.save' => 'ذخیره کنید',
			'meta.ok' => 'خُب',
			'meta.cancel' => 'لغو',
			'meta.feedback' => 'بازخورد',
			'meta.feedbackContent' => 'محتوای بازخورد',
			'meta.feedbackContentHit' => 'الزامی، تا 500 حرف',
			'meta.feedbackContentCannotEmpty' => 'محتوای بازخورد نمی‌تواند خالی باشد',
			'meta.faq' => 'سوالات متداول',
			'meta.htmlTools' => 'مجموعه ابزارهای HTML',
			'meta.download' => 'دانلود',
			'meta.upload' => 'آپلود',
			'meta.downloadSpeed' => 'سرعت دانلود',
			'meta.uploadSpeed' => 'سرعت آپلود',
			'meta.loading' => 'درحال بارگذاری…',
			'meta.convert' => 'تبدیل',
			'meta.check' => 'بررسی',
			'meta.detect' => 'کشف',
			'meta.cache' => 'حافظه نهان',
			'meta.days' => 'روز',
			'meta.hours' => 'ساعت',
			'meta.minutes' => 'دقیقه',
			'meta.seconds' => 'دومین',
			'meta.milliseconds' => 'میلی‌ثانیه',
			'meta.tolerance' => 'تحمل',
			'meta.dateTimePeriod' => 'دوره زمانی',
			'meta.protocol' => 'پروتکل',
			'meta.search' => 'جستجو',
			'meta.custom' => 'سفارشی',
			'meta.inbound' => 'ورودی',
			'meta.outbound' => 'خارج شوید',
			'meta.destination' => 'هدف',
			'meta.outletIpByCurrentSelected' => 'IP خروجی',
			'meta.outletIpByDirect' => 'IP خروجی:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'اتصال',
			'meta.disconnect' => 'قطع‌ اتصال',
			'meta.reconnect' => 'دوباره وصل شوید',
			'meta.connected' => 'وصل شد',
			'meta.disconnected' => 'قطع شد',
			'meta.connecting' => 'درحال اتصال',
			'meta.connectTimeout' => 'اتمام مهلت اتصال',
			'meta.timeout' => 'تایم اوت',
			'meta.timeoutDuration' => 'مدت زمان وقفه',
			'meta.runDuration' => 'زمان اجرا',
			'meta.latency' => 'تاخیر',
			'meta.latencyTest' => 'بررسی تاخیر',
			'meta.language' => 'زبان',
			'meta.next' => 'بعدی',
			'meta.done' => 'انجام‌شد',
			'meta.apply' => 'درخواست دادن',
			'meta.refresh' => 'بارگذاری مجدد',
			'meta.retry' => 'دوباره امتحان کنید؟',
			'meta.update' => 'تجدید',
			'meta.updateInterval' => 'فاصله‌ی به‌روزرسانی',
			'meta.updateInterval5mTips' => 'حداقل: 5 متر',
			'meta.updateFailed' => ({required Object p}) => 'به‌روزرسانی ناموفق بود:${p}',
			'meta.samplingUnit' => 'واحد زمان نمونه‌برداری',
			'meta.queryResultCount' => 'تعداد نتایج پرس و جو',
			'meta.queryLimit' => ({required Object p}) => 'نمایش داده‌ها تا ${p}',
			'meta.none' => 'هیچ‌کدام',
			'meta.start' => 'شروع کنید',
			'meta.pause' => 'مکث',
			'meta.reset' => 'ریست',
			'meta.submit' => 'ارسال',
			'meta.user' => 'کاربر',
			'meta.account' => 'نام‌کاربری',
			'meta.password' => 'رمز‌عبور',
			'meta.required' => 'الزامی',
			'meta.type' => 'نوع',
			'meta.path' => 'مسیر',
			'meta.local' => 'محلی',
			'meta.remote' => 'از راه دور',
			'meta.other' => 'دیگر',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL نامعتبر',
			'meta.urlCannotEmpty' => 'لینک نمی‌تواند خالی باشد',
			'meta.urlTooLong' => 'URL خیلی طولانی است (>8182)',
			'meta.copyUrl' => 'کپی‌کردن لینک',
			'meta.openUrl' => 'بازکردن لینک',
			'meta.shareUrl' => 'اشتراک لینک',
			'meta.speedTestUrl' => 'URL تست سرعت',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'IP استاتیک',
			'meta.staticIPTips' => 'شما باید [TUN HijackDNS] یا [${_root.SettingsScreen.inboundDomainResolve}] را فعال کنید.',
			'meta.isp' => 'ارائه دهندگان VPN',
			'meta.domainSuffix' => 'پسوند دامنه',
			'meta.domain' => 'دامنه',
			'meta.domainKeyword' => 'کلید‌واژه دامنه',
			'meta.domainRegex' => 'عبارات باقاعده ی دامنه (Regex)',
			'meta.ip' => 'IP',
			'meta.port' => 'پورت',
			'meta.portRange' => 'محدوده بندر',
			'meta.appPackage' => 'شناسه بسته برنامه',
			'meta.processName' => 'نام اجرایی پروسه',
			'meta.processPath' => 'مسیر پروسه',
			'meta.processDir' => 'فهرست فرآیندها',
			'meta.systemProxy' => 'پروکسی سیستم',
			'meta.percentage' => 'درصد',
			'meta.statistics' => 'آمار',
			'meta.statisticsAndAnalysis' => 'آمار و تحلیل',
			'meta.statisticsDataDesensitize' => 'ناشناس‌سازی داده‌ها',
			'meta.statisticsDataDesensitizeTips' => 'شناسه فرآیند/بسته/نام دامنه هدف/IP هدف و غیره با * جایگزین شده و پس از حساسیت‌زدایی ذخیره می‌شوند.',
			'meta.records' => 'رکورد',
			'meta.requestRecords' => 'درخواست سوابق',
			'meta.netInterfaces' => 'رابط شبکه',
			'meta.netSpeed' => 'سرعت',
			'meta.memoryTrendChart' => 'نمودار روند حافظه',
			'meta.goroutinesTrendChart' => 'نمودار روند GoRoutines',
			'meta.trafficTrendChart' => 'نمودار روند ترافیک',
			'meta.trafficDistributionChart' => 'نقشه توزیع ترافیک',
			'meta.connectionChart' => 'نمودار روند اتصال',
			'meta.memoryChart' => 'نمودار روند حافظه',
			'meta.trafficStatistics' => 'آمار ترافیک',
			'meta.traffic' => 'جریان',
			'meta.trafficTotal' => 'کل ترافیک',
			'meta.trafficProxy' => 'ترافیک پروکسی',
			'meta.trafficDirect' => 'ترافیک مستقیم',
			'meta.website' => 'وبسایت',
			'meta.memory' => 'حافظه',
			'meta.outboundMode' => 'حالت خروجی',
			'meta.rule' => 'قانون',
			'meta.global' => 'عمومی',
			'meta.qrcode' => 'کد QR',
			'meta.qrcodeTooLong' => 'متن برای نمایش خیلی طولانی است',
			'meta.qrcodeShare' => 'اشتراک کدQR',
			'meta.textToQrcode' => 'متن به کد QR',
			'meta.qrcodeScan' => 'اسکن QRکد',
			'meta.qrcodeScanResult' => 'نتایج اسکن',
			'meta.qrcodeScanFromImage' => 'اسکن از عکس',
			'meta.qrcodeScanResultFailed' => 'تجزیه عکس ناموفق بود، لطفا مطمعن شوید اسکرین‌شات یک کدQR معتبر است',
			'meta.qrcodeScanResultEmpty' => 'نتیجه اسکن خالی است',
			'meta.screenshot' => 'اسکرین‌شات',
			'meta.backupAndSync' => 'پشتیبان‌گیری و همگام‌سازی',
			'meta.autoBackup' => 'پشتیبان گیری خودکار',
			'meta.noProfileGotAutoBackup' => 'اگر داده‌هایی مانند [${_root.meta.myProfiles}] از بین بروند، می‌توانید آن‌ها را از [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] یا سایر منابع پشتیبان (مانند iCloud یا Webdav و غیره) بازیابی کنید.',
			'meta.autoBackupAddProfile' => 'بعد از اضافه کردن تنظیمات',
			'meta.autoBackupRemoveProfile' => 'پس از حذف تنظیمات',
			'meta.profile' => 'پیکربندی',
			'meta.currentProfile' => 'پیکربندی فعلی',
			'meta.importAndExport' => 'وارد‌کردن و خروجی‌گرفتن',
			'meta.import' => 'وارد‌کردن',
			'meta.importFromUrl' => 'وارد کردن از URL',
			'meta.export' => 'خروجی‌گرفتن',
			'meta.send' => 'ارسال کنید',
			'meta.receive' => 'تصاحب',
			'meta.sendConfirm' => 'ارسال را تایید کرد؟',
			'meta.termOfUse' => 'شرایط استفاده',
			'meta.privacyPolicy' => 'سیاست حریم خصوصی',
			'meta.about' => 'درباره',
			'meta.name' => 'نام',
			'meta.version' => 'نسخه',
			'meta.notice' => 'اطلاعیه',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'اقدام: ${p}\nدلیل: ${p1}',
			'meta.sort' => 'مرتب‌سازی',
			'meta.novice' => 'حالت مبتدی',
			'meta.willCompleteAfterRebootInstall' => 'لطفاً دستگاه خود را مجدداً راه اندازی کنید تا نصب افزونه سیستم تکمیل شود.',
			'meta.willCompleteAfterRebootUninstall' => 'لطفاً دستگاه خود را مجدداً راه‌اندازی کنید تا حذف نصب افزونه سیستم تکمیل شود',
			'meta.requestNeedsUserApproval' => '۱. [تنظیمات سیستم] - [حریم خصوصی و امنیت] - [مجاز کردن] برای نصب افزونه‌های سیستم. ۲. [تنظیمات سیستم] - [عمومی] - [ورود و افزونه‌ها - افزونه‌های شبکه] - [karingServiceSE] - [پس از اتمام، دوباره متصل شوید]',
			'meta.FullDiskAccessPermissionRequired' => 'لطفاً مجوز [karingServiceSE] را در [System Settings] - [Privacy and Security] - [Full Disk Access] فعال کنید و دوباره متصل شوید.',
			'meta.tvMode' => 'حالت تلویزیون',
			'meta.recommended' => 'پیشنهادی',
			'meta.innerError' => ({required Object p}) => 'خطای داخلی: ${p}',
			'meta.logicOperation' => 'عملیات منطقی',
			'meta.share' => 'اشتراک گذاری',
			'meta.candidateWord' => 'کلمات نامزد',
			'meta.keywordOrRegx' => 'کلمات کلیدی / معمولی',
			'meta.importFromClipboard' => 'افزودن از کلیپ‌برد',
			'meta.exportToClipboard' => 'صادرات به کلیپ بورد',
			'meta.server' => 'سرور',
			'meta.ads' => 'تبلیغ کنید',
			'meta.adsRemove' => 'تبلیغات را حذف کنید',
			'meta.donate' => 'اهدا کنید',
			'meta.diversion' => 'انحراف',
			'meta.diversionRules' => 'قوانین انحراف',
			'meta.diversionCustomGroup' => 'گروه انحراف سفارشی',
			'meta.urlTestCustomGroup' => 'انتخاب خودکار سفارشی',
			'meta.setting' => 'تنظیمات',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN Sync',
			'meta.lanSyncNotQuitTips' => 'قبل از تکمیل همگام‌سازی از این قسمت خارج نشوید',
			'meta.deviceNoSpace' => 'فضای خالی کافی ندارید',
			'meta.hideSystemApp' => 'برنامه های سیستم را مخفی کنید',
			'meta.hideAppIcon' => 'پنهان کردن نماد برنامه',
			'meta.hideDockIcon' => 'پنهان کردن آیکون داک',
			'meta.remark' => 'ملاحضات',
			'meta.remarkExist' => 'ملاحظات از‌قبل وجود دارد، لطفا از نام دیگری استفاده کنید',
			'meta.remarkCannotEmpty' => 'ملاحظات نمی‌تواند خالی باشد',
			'meta.remarkTooLong' => 'ملاحظات تا ۳۲ حرف',
			'meta.openDir' => 'بازکردن دایرکتوری فایل',
			'meta.fileChoose' => 'انتخاب فایل',
			'meta.filePathCannotEmpty' => 'مسیر فایل نمی‌تواند خالی باشد',
			'meta.fileNotExist' => ({required Object p}) => 'فایل وجود ندارد:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'نوع فایل نامعتبر:${p}',
			'meta.uwpExemption' => 'معافیت جداسازی شبکه UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'پیکربندی را دریافت کنید',
			'meta.addProfile' => 'افزودن پروفایل',
			'meta.myProfiles' => 'پروفایل‌ها',
			'meta.profileEdit' => 'ویرایش پروفایل',
			'meta.profileEditUrlExist' => 'آدرس URL از‌قبل وجود دارد، لطفا از URL دیگری استفاده کنید',
			'meta.profileEditReloadAfterProfileUpdate' => 'بارگذاری مجدد پس‌از به‌روزرسانی پروفایل',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'شروع تست تاخیر پس‌از به‌روزرسانی خودکار پروفایل',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'وی‌پی‌ان باید روشن و [بارگذاری مجدد پس‌از به‌روزرسانی پروفایل] فعال باشد',
			'meta.profileEditTestLatencyAutoRemove' => 'خودکار سرورهای ناموفق در تست تاخیر را حذف کن',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'تا سه بار امتحان کنید',
			'meta.profileImport' => 'وارد‌کردن فایل پروفایل',
			'meta.profileAddUrlOrContent' => 'افزودن لینک پروفایل',
			'meta.profileExists' => 'پروفایل از‌قبل وجود دارد، لطفا آن را به‌طور مکرر اضافه نکنید',
			'meta.profileUrlOrContent' => 'لینک/محتوای پروفایل',
			'meta.profileUrlOrContentHit' => 'لینک/محتوای پروفایل [الزامی] (پشتیبانی از کلش، V2ray(پشتیبانی به‌صورت دسته‌ای)، لینک‌های پروفایل فرعی)، استش، کارینگ، سینگ‌باکس، شدوساکس، لینک‌های پروفایل فرعی)',
			'meta.profileUrlOrContentCannotEmpty' => 'لینک پروفایل نمی‌تواند خالی باشد',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'فرمت اشتباه است، لطفا آن را اصلاح کرده و مجدد اضافه کنید:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'افزودن نشد: ${p}، لطفاً [UserAgent] را تغییر دهید و دوباره امتحان کنید، یا از مرورگر خود دستگاه برای باز کردن پیوند پیکربندی و وارد کردن فایل پیکربندی دانلود شده توسط مرورگر به این برنامه استفاده کنید.',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'اضافه کردن: ${p} ناموفق بود، لطفاً عامل را باز کنید یا گره عامل فعلی را تغییر دهید و دوباره امتحان کنید',
			'meta.profileAddParseFailed' => 'تجزیه پروفایل انجام نشد',
			'meta.profileAddNoServerAvaliable' => 'هیچ سروری در دسترس نیست، لطفاً مطمئن شوید که پیوند پیکربندی یا فایل پیکربندی معتبر است، اگر پیکربندی شما از GitHub آمده است، لطفاً آدرس پیوند را از دکمه [Raw] در صفحه دریافت کنید',
			'meta.profileAddWrapSuccess' => 'پیکربندی با موفقیت ایجاد شد، لطفاً برای مشاهده به [${_root.meta.myProfiles}] بروید',
			'diversionRulesKeep' => '[${_root.meta.isp}]${_root.meta.diversionRules} را نگه دارید',
			'diversionCustomGroupPreset' => 'از پیش تنظیم شده [گروه انحراف سفارشی]',
			'diversionCustomGroupPresetTips' => 'توجه: موارد فعال به [گروه انحراف سفارشی] و [قوانین انحراف] اضافه/پوشش داده خواهند شد',
			'diversionCustomGroupAddTips' => 'توجه: ممکن است لازم باشد پس از افزودن مرتب‌سازی به‌صورت دستی آن را تنظیم کنید، در غیر این صورت انحراف تازه اضافه‌شده ممکن است اعمال نشود.',
			'rulesetEnableTips' => 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد',
			'ispUserAgentTips' => '[${_root.meta.isp}] انواع مختلف داده های اشتراک را بر اساس [UserAgent] در درخواست [HTTP] ارائه خواهد کرد.',
			'ispDiversionTips' => 'قوانین بارگذاری ارائه شده توسط [${_root.meta.isp}]، اشتراک های نوع [V2Ray] از قوانین تخلیه پشتیبانی نمی کنند',
			'isp.bind' => 'اتصال به [${_root.meta.isp}]',
			'isp.unbind' => ({required Object p}) => 'لغو پیوند[${p}]',
			'isp.faq' => ({required Object p}) => 'سوالات متداول[${p}]',
			'isp.customerService' => ({required Object p}) => 'خدمات مشتری[${p}]',
			'isp.follow' => ({required Object p}) => 'دنبال کردن[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}]نامعتبر یا منقضی شده است',
			'permission.camera' => 'دوربین',
			'permission.screen' => 'ضبط صفحه',
			'permission.appQuery' => 'Get Application List',
			'permission.request' => ({required Object p}) => 'مجوزهای [${p}] را فعال کنید',
			'permission.requestNeed' => ({required Object p}) => 'لطفاً مجوز [${p}] را فعال کنید',
			'tls.insecure' => 'رد شدن از تأیید گواهی',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'بخش بندی TLS را فعال کنید',
			'tls.fragmentSize' => 'اندازه بخش TLS',
			'tls.fragmentSleep' => 'خواب بخش‌بندی شده TLS',
			'tls.mixedCaseSNIEnable' => 'TLS ترکیبی SNI را فعال کنید',
			_ => null,
		} ?? switch (path) {
			'tls.paddingEnable' => 'فعال کردن TLS Padding',
			'tls.paddingSize' => 'اندازه پد TLS',
			'outboundRuleMode.currentSelected' => 'فعلی انتخاب شده',
			'outboundRuleMode.urltest' => 'انتخاب خودکار',
			'outboundRuleMode.direct' => 'مستقیم',
			'outboundRuleMode.block' => 'مسدود',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'به‌روزرسانی‌های پیکربندی',
			'theme.light' => 'رنگ روشن',
			'theme.dark' => 'سیاه',
			'theme.auto' => 'خودکار',
			'downloadProxyStrategy' => 'کانال دانلود',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: اتصال به سرور DNS از طریق سرور پروکسی برای حل نام دامنه\n[${_root.dnsProxyResolveMode.direct}]: برای حل نام دامنه مستقیماً به سرور DNS متصل شوید\n[ ${_root.dnsProxyResolveMode.fakeip}: توسط پروکسی سرور از طرف شما نام دامنه را حل می کند، در صورت قطع ارتباط با VPN، ممکن است برنامه شما فقط برای ترافیک ورودی از [TUN] اعمال شود.',
			'routeFinal' => 'نهایی',
			'protocolSniff' => 'تشخیص پروتکل',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'لطفا از [${p}] استفاده کنید',
			'turnOffPrivateDirect' => 'لطفاً ابتدا [اتصال مستقیم شبکه خصوصی] را فعال کنید',
			'targetConnectFailed' => ({required Object p}) => 'اتصال به [${p}] ناموفق بود، لطفاً مطمئن شوید که دستگاه در همان LAN است',
			'appleTVSync' => 'همگام سازی پیکربندی هسته فعلی با Apple TV - Karing',
			'appleTVSyncDone' => 'همگام سازی کامل شد، لطفاً برای باز کردن/راه اندازی مجدد اتصال به Apple TV - Karing بروید',
			'appleTVRemoveCoreConfig' => 'حذف Apple TV - Karing Core Configuration',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - نمایه اصلی کارینگ حذف شد',
			'appleTVUrlInvalid' => 'URL نامعتبر است، لطفاً Apple TV - Karing را باز کنید، کد QR نمایش داده شده توسط Karing را اسکن کنید',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] این عملکرد را ندارد، لطفا ارتقا دهید و دوباره امتحان کنید',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'نسخه اصلی اصلی مطابقت ندارد، لطفاً [${p}] را ارتقا دهید و دوباره امتحان کنید',
			'remoteProfileEditConfirm' => 'پس از به روز رسانی تنظیمات، تغییرات گره بازیابی می شوند آیا می خواهید ادامه دهید؟',
			'mustBeValidHttpsURL' => 'باید یک URL معتبر https باشد',
			'fileNotExistReinstall' => ({required Object p}) => 'فایل [${p}] وجود ندارد، لطفا دوباره نصب کنید',
			'noNetworkConnect' => 'بدون اتصال به اینترنت',
			'sudoPassword' => 'رمز عبور sudo (برای حالت TUN لازم است)',
			'turnOffNetworkBeforeInstall' => 'توصیه می‌شود قبل از نصب به‌روزرسانی، به [حالت هواپیما] بروید',
			'latencyTestResolveIP' => 'در طی تشخیص دستی، IP صادرات نیز تجزیه و تحلیل می شود.',
			'latencyTestConcurrency' => 'همزمانی',
			'edgeRuntimeNotInstalled' => 'زمان اجرا Edge WebView2 روی دستگاه فعلی نصب نشده است و صفحه قابل نمایش نیست لطفاً زمان اجرا Edge WebView2 (x64) را بارگیری و نصب کنید، برنامه را مجدداً راه اندازی کنید و دوباره امتحان کنید.',
			'locales.en' => 'English',
			'locales.zh-CN' => '简体中文',
			'locales.zh-TW' => '繁體中文',
			'locales.ja' => '日本語',
			'locales.ko' => '한국어',
			'locales.fr' => 'Français',
			'locales.es' => 'Español',
			'locales.ar' => 'عربي',
			'locales.ru' => 'Русский',
			'locales.fa' => 'فارسی',
			'locales.de' => 'Deutsch',
			'locales.pt' => 'Português',
			'locales.it' => 'Italiano',
			'locales.uk' => 'Українська',
			'locales.pl' => 'Polski',
			'locales.nl' => 'Nederlands',
			'locales.sv' => 'Svenska',
			'locales.no' => 'Norsk',
			'locales.da' => 'Dansk',
			'locales.hi' => 'हिन्दी',
			'locales.ur' => 'اردو',
			'locales.bn' => 'বাংলা',
			'locales.el' => 'Ελληνικά',
			'locales.vi' => 'Tiếng Việt',
			'locales.tr' => 'Türkçe',
			'locales.th' => 'ไทย',
			_ => null,
		};
	}
}
