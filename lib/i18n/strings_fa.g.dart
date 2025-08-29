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
	@override String get turnOffNetworkBeforeInstall => 'توصیه می‌شود قبل از نصب به‌روزرسانی، به [حالت هواپیما] بروید';
	@override String get latencyTestResolveIP => 'در طی تشخیص دستی، IP صادرات نیز تجزیه و تحلیل می شود.';
	@override String get removeBannerAdsByShare => 'اشتراک گذاری[Karing]رفتن به تبلیغات';
	@override String get removeBannerAdsByReward => 'تماشای تبلیغات برو به تبلیغات';
	@override String removeBannerAdsByShareTip({required Object p, required Object d}) => 'یک بار به اشتراک بگذارید و ${p} روز بدون پاداش تبلیغاتی دریافت خواهید کرد (تا ${d}  روز قابل انباشته شدن است)';
	@override String removeBannerAdsByRewardTip({required Object p}) => 'یک تبلیغ را تماشا کنید و پاداش روز بدون آگهی ${p} دریافت خواهید کرد (نمی توان روی هم گذاشت)';
	@override String removeBannerAdsDone({required Object p}) => 'پاداش ${p} روز بدون آگهی دریافت کرد';
	@override String get edgeRuntimeNotInstalled => 'زمان اجرا Edge WebView2 روی دستگاه فعلی نصب نشده است و صفحه قابل نمایش نیست لطفاً زمان اجرا Edge WebView2 (x64) را بارگیری و نصب کنید، برنامه را مجدداً راه اندازی کنید و دوباره امتحان کنید.';
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
	@override String invalidPort({required Object p}) => 'نامعتبر [Port]:${p}';
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
	@override String get dnsEnableProxyResolveMode => '[${_root.SettingsScreen.dnsTypeProxy}] کانال رزولوشن';
	@override String get dnsEnableClientSubnet => '[${_root.SettingsScreen.dnsTypeDirect}] ECS را فعال کنید';
	@override String get dnsTestDomain => 'تست دامنه';
	@override String get dnsTestDomainInvalid => 'دامنه نامعتبر';
	@override String get dnsTypeOutbound => 'سرور پروکسی';
	@override String get dnsTypeDirect => 'ترافیک مستقیم';
	@override String get dnsTypeProxy => 'ترافیک پروکسی';
	@override String get dnsTypeResolver => 'سرور دی‌ان‌اس';
	@override String get dnsEnableRuleTips => 'بعد از فعال‌سازی نام دامنه، سرور دی‌ان‌اس مربوط را بر اساس قوانین انحراف برای عبور انتخاب می‌کند';
	@override String get dnsEnableFakeIpTips => 'پس از فعال کردن FakeIP، اگر اتصال VPN قطع شود، ممکن است برنامه شما نیاز به راه اندازی مجدد داشته باشد [حالت TUN].';
	@override String get dnsTypeOutboundTips => 'سامانه نام دامنه (DNS) برای سرور پروکسی';
	@override String get dnsTypeDirectTips => 'وضوح نام دامنه برای [${_root.SettingsScreen.dnsTypeDirect}]';
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
	@override String get hideAfterLaunch => 'پنهان کردن پنجره پس از راه اندازی';
	@override String get autoSetSystemProxy => 'تنظیم خودکار حالت پروکسی سیستم پس‌از اتصال';
	@override String get bypassSystemProxy => 'نام های دامنه ای که مجاز به دور زدن پراکسی سیستم هستند';
	@override String get disconnectWhenQuit => 'قطع اتصال هنگام خروج از نرم‌افزار';
	@override String get allowBypass => 'به برنامه‌ها اجازه دهید VPN را دور بزنند';
	@override String get importSuccess => 'افزودن موفق بود';
	@override String get rewriteConfirm => 'این فایل کانفیگ‌های محلی موجود را بازنویسی می‌کند. آیا می‌خواهید ادامه بدین؟';
	@override String get networkShare => 'اشتراک‌گذاری شبکه';
	@override String get frontProxy => 'پروکسی جلو/زنجیره';
	@override String frontProxyTips({required Object p}) => 'داده-> سرور پروکسی جلویی/زنجیری [پراکسی سرورهای چندگانه: از بالا به پایین]-> سرور پروکسی [${p}]-> سرور هدف';
	@override String get allowOtherHostsConnect => 'اجازه اتصال دیگران';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'به دلیل محدودیت‌های سیستم، پس از فعال شدن این گزینه، برنامه‌هایی که در این دستگاه از http برای دسترسی به شبکه استفاده می‌کنند، ممکن است نتوانند به درستی به شبکه متصل شوند.';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'اگر پس از روشن کردن اشتراک‌گذاری، دیگران نمی‌توانند به این دستگاه دسترسی داشته باشند، لطفاً این سوئیچ را خاموش کنید.';
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
	@override String get save => 'ذخیره کنید';
	@override String get ok => 'خُب';
	@override String get cancel => 'لغو';
	@override String get feedback => 'بازخورد';
	@override String get feedbackContent => 'محتوای بازخورد';
	@override String get feedbackContentHit => 'الزامی، تا 500 حرف';
	@override String get feedbackContentCannotEmpty => 'محتوای بازخورد نمی‌تواند خالی باشد';
	@override String get faq => 'سوالات متداول';
	@override String get download => 'دانلود';
	@override String get upload => 'آپلود';
	@override String get downloadSpeed => 'سرعت دانلود';
	@override String get uploadSpeed => 'سرعت آپلود';
	@override String get loading => 'درحال بارگذاری…';
	@override String get convert => 'تبدیل';
	@override String get check => 'بررسی';
	@override String get detect => 'کشف';
	@override String get days => 'روز';
	@override String get hours => 'ساعت';
	@override String get minutes => 'دقیقه';
	@override String get seconds => 'دومین';
	@override String get protocol => 'پروتکل';
	@override String get search => 'جستجو';
	@override String get custom => 'سفارشی';
	@override String get inbound => 'ورودی';
	@override String get outbound => 'خارج شوید';
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
	@override String get netInterfaces => 'رابط شبکه';
	@override String get netSpeed => 'سرعت';
	@override String get trafficTotal => 'کل ترافیک';
	@override String get trafficProxy => 'ترافیک پروکسی';
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
	@override String get autoBackupAddProfile => 'بعد از اضافه کردن تنظیمات';
	@override String get autoBackupRemoveProfile => 'پس از حذف تنظیمات';
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
	@override String get requestNeedsUserApproval => 'لطفاً به کارینگ [اجازه دهید] افزونه‌های سیستم را در [تنظیمات سیستم]-[حریم خصوصی و امنیت] نصب کند و پس از اتمام نصب دوباره متصل شود.';
	@override String get FullDiskAccessPermissionRequired => 'لطفاً برنامه [Terminal] را باز کنید، دستور را مستقیماً در [Terminal] قرار دهید و آن را اجرا کنید. پس از اتمام اجرا، دوباره متصل شوید';
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
	@override String get adsBanner => 'تبلیغات بنری';
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
	@override String get myProfilesAtLeastOneReserveEnable => 'نمی‌تواند غیرغعال شود، لطفا حداقل یک پروفایل را فعال نگه دارید';
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
			case 'AboutScreen.allowRemoteAccessPprof': return 'اجازه دسترسی از راه دور به ${_root.AboutScreen.pprofPanel}';
			case 'AboutScreen.allowRemoteAccessHtmlBoard': return 'اجازه دسترسی از راه دور${_root.SettingsScreen.htmlBoard}';
			case 'AboutScreen.useOriginalSBProfile': return 'استفاده از پروفایل اصلی سینگ‌باکس';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return 'آدرس URL سرور';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return 'نمی‌تواند خالی باشد';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return 'ورود ناموفق بود:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return 'دریافت لیست فایل ناموفق بود:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => 'نامعتبر [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => 'نامعتبر [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => 'نامعتبر [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => 'نامعتبر [Rule Set]:${p} باید URL یک URL معتبر https باشد و یک فایل دودویی(binary) با پسوند فایل .srs/.json باشد';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => 'نامعتبر [Rule Set(build-in)]:${p} نامعتبر است، قالب geosite:xxx یا geoip:xxx یا acl:xxx است و xxx باید یک نام قانون معتبر باشد';
			case 'DiversionGroupCustomEditScreen.invalidPackageId': return ({required Object p}) => 'نامعتبر [${_root.meta.appPackage}]:${p}';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد';
			case 'DiversionRuleDetectScreen.title': return 'کشف قانون انحراف';
			case 'DiversionRuleDetectScreen.rule': return 'قانون:';
			case 'DiversionRuleDetectScreen.outbound': return 'سرور پروکسی:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return 'نکته: سعی کنید قوانین را از بالا به پایین مطابقت دهید، از [نهایی] استفاده کنید.';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'ISP نمی‌تواند خالی باشد';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'URL نمی‌تواند خالی باشد';
			case 'DnsSettingsScreen.error': return ({required Object p}) => 'نوع پشتیبانی نشده:${p}';
			case 'DnsSettingsScreen.dnsDesc': return 'ستون اول داده‌های تأخیر، تأخیر ارتباط مستقیم است؛\nستون دوم: روشن کردن [[ترافیک پروکسی] برای حل و فصل DNS از طریق سرور پراکسی]: داده‌های تأخیر، تأخیر درخواست ارسال شده از طریق سرور پراکسی فعلی است [[ترافیک پروکسی] روشن نیست، از طریق سرور پروکسی DNS را حل می‌کند]: داده‌های تأخیر تأخیر درخواست اتصال مستقیم است';
			case 'FileContentViewerScreen.title': return 'نمایش دهنده محتوای فایل';
			case 'FileContentViewerScreen.clearFileContent': return 'آیا از پاکسازی محتوای فایل اطمینان دارید؟';
			case 'FileContentViewerScreen.clearFileContentTips': return 'آیا از پاکسازی محتوای فایل پروفایل اطمینان دارید؟ پاکسازی محتوای فایل پروفایل ممکن است باعث از دست رفتن داده یا عملیات غیرعادی نرم‌افزار شود؛ لطفا با احتیاط عمل کنید.';
			case 'HomeScreen.toSelectServer': return 'لطفا یک سرور انتخاب کنید';
			case 'HomeScreen.invalidServer': return 'نامعتبر است، لطفا مجدد انتخاب کنید';
			case 'HomeScreen.disabledServer': return 'غیرفعال است، لطفا مجدد انتخاب کنید';
			case 'HomeScreen.expiredServer': return 'هیچ سروری در دسترس نیست: ممکن است پیکربندی قدیمی یا غیرفعال باشد';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'HomeScreen.myLinkEmpty': return 'لطفا قبل‌از استفاده [لینک میان‌بر] را راه‌اندازی کنید';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => 'تعداد زیادی سرور پروکسی [${p}>${p1}] وجود دارد و ممکن است به دلیل محدودیت حافظه سیستم، اتصال امکان پذیر نباشد.';
			case 'HomeScreen.tooMuchServers2': return ({required Object p, required Object p1}) => 'تعداد زیاد سرورهای پروکسی [${p}>${p1}] ممکن است باعث کندی یا عدم دسترسی به اتصالات شود';
			case 'LaunchFailedScreen.invalidProcess': return 'اجرای نرم‌افزار ناموفق بود [نام‌ اجرایی پروسه نامعتبر]، لطفا مجدد نرم‌افزار را در دایرکتوری دیگری نصب کنید';
			case 'LaunchFailedScreen.invalidProfile': return 'اجرای نرم‌افزار ناموفق بود [دسترسی به پروفایل ناموفق بود]، لطفا مجدد نرم افزار را نصب کنید';
			case 'LaunchFailedScreen.invalidVersion': return 'اجرای نرم‌افزار ناموفق بود [ورژن نامعتبر]، لطفا مجدد نرم‌افزار را نصب کنید';
			case 'LaunchFailedScreen.systemVersionLow': return 'راه اندازی برنامه ناموفق بود [نسخه سیستم خیلی کم است]';
			case 'LaunchFailedScreen.invalidInstallPath': return 'مسیر نصب نامعتبر است، لطفا مجدد در مسیر معتبر نصب کنید';
			case 'MyProfilesMergeScreen.profilesMerge': return 'ادغام پروفایل‌ها';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return 'پروفایل هدف';
			case 'MyProfilesMergeScreen.profilesMergeSource': return 'پروفایل مرجع';
			case 'MyProfilesMergeScreen.profilesMergeTips': return 'راهنمایی: انحراف پروفایل مرجع حذف می‌شود';
			case 'NetCheckScreen.title': return 'بررسی شبکه';
			case 'NetCheckScreen.warn': return 'توجه: به دلیل تأثیر محیط شبکه و قوانین انحراف، نتایج آزمون کاملاً معادل نتایج واقعی نیست.';
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
			case 'SettingsScreen.rulesetDirectDownlad': return 'دانلود مستقیم مجموعه قوانین';
			case 'SettingsScreen.hideUnusedDiversionGroup': return 'قوانین غیرفعال انحراف ترافیک را پنهان کنید';
			case 'SettingsScreen.disableISPDiversionGroup': return 'قوانین انحراف [${_root.meta.isp}] را غیرفعال کنید';
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
			case 'SettingsScreen.tunAllowBypassHttpProxyDomain': return 'دامنه ها مجاز به دور زدن پروکسی HTTP هستند';
			case 'SettingsScreen.dnsEnableRule': return 'فعال‌سازی قوانین انحراف دی‌ان‌اس';
			case 'SettingsScreen.dnsEnableProxyResolveMode': return '[${_root.SettingsScreen.dnsTypeProxy}] کانال رزولوشن';
			case 'SettingsScreen.dnsEnableClientSubnet': return '[${_root.SettingsScreen.dnsTypeDirect}] ECS را فعال کنید';
			case 'SettingsScreen.dnsTestDomain': return 'تست دامنه';
			case 'SettingsScreen.dnsTestDomainInvalid': return 'دامنه نامعتبر';
			case 'SettingsScreen.dnsTypeOutbound': return 'سرور پروکسی';
			case 'SettingsScreen.dnsTypeDirect': return 'ترافیک مستقیم';
			case 'SettingsScreen.dnsTypeProxy': return 'ترافیک پروکسی';
			case 'SettingsScreen.dnsTypeResolver': return 'سرور دی‌ان‌اس';
			case 'SettingsScreen.dnsEnableRuleTips': return 'بعد از فعال‌سازی نام دامنه، سرور دی‌ان‌اس مربوط را بر اساس قوانین انحراف برای عبور انتخاب می‌کند';
			case 'SettingsScreen.dnsEnableFakeIpTips': return 'پس از فعال کردن FakeIP، اگر اتصال VPN قطع شود، ممکن است برنامه شما نیاز به راه اندازی مجدد داشته باشد [حالت TUN].';
			case 'SettingsScreen.dnsTypeOutboundTips': return 'سامانه نام دامنه (DNS) برای سرور پروکسی';
			case 'SettingsScreen.dnsTypeDirectTips': return 'وضوح نام دامنه برای [${_root.SettingsScreen.dnsTypeDirect}]';
			case 'SettingsScreen.dnsTypeProxyTips': return 'سامانه نام دامنه (DNS) برای ترافیک پروکسی';
			case 'SettingsScreen.dnsTypeResolverTips': return 'سامانه نام دامنه (DNS) برای بقیه سرور دی‌ان‌اس';
			case 'SettingsScreen.dnsAutoSetServer': return 'به طور خودکار سرور را راه اندازی کنید';
			case 'SettingsScreen.dnsResetServer': return 'بازنشانی سرور';
			case 'SettingsScreen.inboundDomainResolve': return 'حل نام دامنه های ورودی';
			case 'SettingsScreen.privateDirect': return 'اتصال مستقیم شبکه خصوصی';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => 'برخی از نام‌های دامنه بدون قوانین انحراف پیکربندی شده باید حل و فصل شوند تا بتوانند قوانین انحراف مبتنی بر IP را تحت تأثیر قرار دهند [${p}].';
			case 'SettingsScreen.useRomoteRes': return 'از منابع راه‌دور استفاده کنید';
			case 'SettingsScreen.autoAppendRegion': return 'به طور خودکار قوانین اساسی را پیوست کنید';
			case 'SettingsScreen.autoSelect': return 'انتخاب خودکار';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'سرورهای پروکسی [جلو/زنجیری] را نادیده بگیرید';
			case 'SettingsScreen.autoSelectServerInterval': return 'بازه زمانی بررسی تاخیر';
			case 'SettingsScreen.autoSelectSelectedHealthCheckInterval': return 'فاصله بررسی سلامت سرور فعلی';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return 'شناسایی مجدد زمانی که شبکه تغییر می کند';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return 'سرور فعلی را پس از تشخیص تأخیر دستی به روز کنید';
			case 'SettingsScreen.autoSelectServerIntervalTips': return 'هرچه فاصله تشخیص تاخیر کمتر باشد، داده های تاخیر سرور به موقع به روز می شود، اما منابع بیشتری را اشغال می کند و برق را سریعتر مصرف می کند';
			case 'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips': return 'اگر تشخیص ناموفق باشد، گره تغییر می کند. اگر هنگام تعویض گره هیچ گره در دسترس پیدا نشد، گروه با تاخیر دوباره شناسایی می شود';
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
			case 'SettingsScreen.widgetsAlpha': return 'شفافیت ابزارک‌ها';
			case 'SettingsScreen.widgetsEmpty': return 'هیچ ویجتی موجود نیست';
			case 'SettingsScreen.backgroundImage': return 'تصویر پس زمینه';
			case 'SettingsScreen.myLink': return 'لینک میان‌بر';
			case 'SettingsScreen.autoConnectAfterLaunch': return 'اتصال خودکار پس‌از راه‌اندازی';
			case 'SettingsScreen.hideAfterLaunch': return 'پنهان کردن پنجره پس از راه اندازی';
			case 'SettingsScreen.autoSetSystemProxy': return 'تنظیم خودکار حالت پروکسی سیستم پس‌از اتصال';
			case 'SettingsScreen.bypassSystemProxy': return 'نام های دامنه ای که مجاز به دور زدن پراکسی سیستم هستند';
			case 'SettingsScreen.disconnectWhenQuit': return 'قطع اتصال هنگام خروج از نرم‌افزار';
			case 'SettingsScreen.allowBypass': return 'به برنامه‌ها اجازه دهید VPN را دور بزنند';
			case 'SettingsScreen.importSuccess': return 'افزودن موفق بود';
			case 'SettingsScreen.rewriteConfirm': return 'این فایل کانفیگ‌های محلی موجود را بازنویسی می‌کند. آیا می‌خواهید ادامه بدین؟';
			case 'SettingsScreen.networkShare': return 'اشتراک‌گذاری شبکه';
			case 'SettingsScreen.frontProxy': return 'پروکسی جلو/زنجیره';
			case 'SettingsScreen.frontProxyTips': return ({required Object p}) => 'داده-> سرور پروکسی جلویی/زنجیری [پراکسی سرورهای چندگانه: از بالا به پایین]-> سرور پروکسی [${p}]-> سرور هدف';
			case 'SettingsScreen.allowOtherHostsConnect': return 'اجازه اتصال دیگران';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.allowOtherHostsConnectWarn': return 'به دلیل محدودیت‌های سیستم، پس از فعال شدن این گزینه، برنامه‌هایی که در این دستگاه از http برای دسترسی به شبکه استفاده می‌کنند، ممکن است نتوانند به درستی به شبکه متصل شوند.';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'اگر پس از روشن کردن اشتراک‌گذاری، دیگران نمی‌توانند به این دستگاه دسترسی داشته باشند، لطفاً این سوئیچ را خاموش کنید.';
			case 'SettingsScreen.enableCluster': return 'فعال‌سازی پروکسی Socks/Http خوشه‌ای';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'اجازه اتصال دیگران به خوشه';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'احراز هویت خوشه پروکسی';
			case 'SettingsScreen.tunMode': return 'حالت TUN';
			case 'SettingsScreen.tuni4Address': return 'آدرس آی‌پی';
			case 'SettingsScreen.tunModeTips': return 'حالت TUN تمام ترافیک سیستم را تحت کنترل خواهد گرفت [دراین حالت می‌توانید پروکسی سیستم را غیرفعال نگه‌ دارید)';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'حالت TUN نیازمند مجوز مدیر سیستم می‌باشد لطفا نرم‌افزار را مجدد با حالت مدیر (administrator) راه‌اندازی کنید';
			case 'SettingsScreen.tunStack': return 'Stack';
			case 'SettingsScreen.tunHijackTips': return 'پس از بسته شدن، درخواست های DNS از TUN مستقیماً به سرور DNS مربوطه ارسال می شود';
			case 'SettingsScreen.launchAtStartup': return 'اجرا در راه‌اندازی';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return 'خروج از نرم‌افزار هنگام تعویض کاربران سیستم';
			case 'SettingsScreen.handleScheme': return 'فراخوانی Scheme سیستم';
			case 'SettingsScreen.portableMode': return 'حالت قابل‌حمل';
			case 'SettingsScreen.portableModeDisableTips': return 'اگر نیاز دارین از حالت قابل‌حمل خارج شوید لطفا از [Karing] خارج شده و به‌صورت دستی پوشه [Profiles] هم مسیر با فایل [karing.exe] را حذف کنید';
			case 'SettingsScreen.handleKaringScheme': return 'رسیدگی به ندای karing://';
			case 'SettingsScreen.handleClashScheme': return 'رسیدگی به‌ ندای clash://';
			case 'SettingsScreen.handleSingboxScheme': return 'رسیدگی به ندای sing-box://';
			case 'SettingsScreen.alwayOnVPN': return 'اتصال همیشه باز';
			case 'SettingsScreen.disconnectAfterSleep': return 'بعد از خواب زمستانی سیستم را قطع کنید';
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
			case 'UserAgreementScreen.privacyFirst': return 'حریم‌خصوصی شما اولویت دارد';
			case 'UserAgreementScreen.agreeAndContinue': return 'پذیرفتن و ادامه';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => 'نسخه جدید [${p}] آماده است';
			case 'VersionUpdateScreen.update': return 'راه‌اندازی مجدد برای به‌روزرسانی';
			case 'VersionUpdateScreen.cancel': return 'الان‌ نه';
			case 'CommonWidget.diableAlwayOnVPN': return 'اگر [وی‌پی‌ان همیشه روشن] روشن است لطفا [وی‌پی‌ان همیشه روشن] را خاموش کنید و مجدد برای اتصال تلاش کنید';
			case 'CommonWidget.resetPort': return 'لطفاً پورت را به پورت موجود دیگری تغییر دهید یا برنامه ای را که پورت را اشغال می کند ببندید.';
			case 'main.tray.menuOpen': return '    بازکردن    ';
			case 'main.tray.menuExit': return '    بستن    ';
			case 'meta.enable': return 'فعال‌سازی';
			case 'meta.disable': return 'غیرفعال';
			case 'meta.bydefault': return 'پیش‌فرض';
			case 'meta.filter': return 'فیلتر';
			case 'meta.filterMethod': return 'روش فیلتر';
			case 'meta.include': return 'شامل شود';
			case 'meta.exclude': return 'حذف کردن';
			case 'meta.all': return 'همه';
			case 'meta.prefer': return 'اولویت';
			case 'meta.only': return 'فقط';
			case 'meta.open': return 'باز کن';
			case 'meta.close': return 'بسته';
			case 'meta.quit': return 'خروج';
			case 'meta.add': return 'افزودن';
			case 'meta.addSuccess': return 'با‌موفقیت اضافه شد';
			case 'meta.addFailed': return ({required Object p}) => 'افزودن ناموفق بود:${p}';
			case 'meta.remove': return 'حذف';
			case 'meta.removeConfirm': return 'آیا از حذف اطمینان دارین؟';
			case 'meta.edit': return 'ویرایش کنید';
			case 'meta.view': return 'بررسی';
			case 'meta.more': return 'بیشتر';
			case 'meta.tips': return 'اطلاعات';
			case 'meta.copy': return 'کپی';
			case 'meta.save': return 'ذخیره کنید';
			case 'meta.ok': return 'خُب';
			case 'meta.cancel': return 'لغو';
			case 'meta.feedback': return 'بازخورد';
			case 'meta.feedbackContent': return 'محتوای بازخورد';
			case 'meta.feedbackContentHit': return 'الزامی، تا 500 حرف';
			case 'meta.feedbackContentCannotEmpty': return 'محتوای بازخورد نمی‌تواند خالی باشد';
			case 'meta.faq': return 'سوالات متداول';
			case 'meta.download': return 'دانلود';
			case 'meta.upload': return 'آپلود';
			case 'meta.downloadSpeed': return 'سرعت دانلود';
			case 'meta.uploadSpeed': return 'سرعت آپلود';
			case 'meta.loading': return 'درحال بارگذاری…';
			case 'meta.convert': return 'تبدیل';
			case 'meta.check': return 'بررسی';
			case 'meta.detect': return 'کشف';
			case 'meta.days': return 'روز';
			case 'meta.hours': return 'ساعت';
			case 'meta.minutes': return 'دقیقه';
			case 'meta.seconds': return 'دومین';
			case 'meta.protocol': return 'پروتکل';
			case 'meta.search': return 'جستجو';
			case 'meta.custom': return 'سفارشی';
			case 'meta.inbound': return 'ورودی';
			case 'meta.outbound': return 'خارج شوید';
			case 'meta.connect': return 'اتصال';
			case 'meta.disconnect': return 'قطع‌ اتصال';
			case 'meta.reconnect': return 'دوباره وصل شوید';
			case 'meta.connected': return 'وصل شد';
			case 'meta.disconnected': return 'قطع شد';
			case 'meta.connecting': return 'درحال اتصال';
			case 'meta.connectTimeout': return 'اتمام مهلت اتصال';
			case 'meta.timeout': return 'تایم اوت';
			case 'meta.timeoutDuration': return 'مدت زمان وقفه';
			case 'meta.runDuration': return 'زمان اجرا';
			case 'meta.latency': return 'تاخیر';
			case 'meta.latencyTest': return 'بررسی تاخیر';
			case 'meta.language': return 'زبان';
			case 'meta.next': return 'بعدی';
			case 'meta.done': return 'انجام‌شد';
			case 'meta.apply': return 'درخواست دادن';
			case 'meta.refresh': return 'بارگذاری مجدد';
			case 'meta.retry': return 'دوباره امتحان کنید؟';
			case 'meta.update': return 'تجدید';
			case 'meta.updateInterval': return 'فاصله‌ی به‌روزرسانی';
			case 'meta.updateInterval5mTips': return 'حداقل: 5 متر';
			case 'meta.updateFailed': return ({required Object p}) => 'به‌روزرسانی ناموفق بود:${p}';
			case 'meta.none': return 'هیچ‌کدام';
			case 'meta.start': return 'شروع کنید';
			case 'meta.pause': return 'مکث';
			case 'meta.reset': return 'ریست';
			case 'meta.submit': return 'ارسال';
			case 'meta.user': return 'کاربر';
			case 'meta.account': return 'نام‌کاربری';
			case 'meta.password': return 'رمز‌عبور';
			case 'meta.required': return 'الزامی';
			case 'meta.type': return 'نوع';
			case 'meta.path': return 'مسیر';
			case 'meta.local': return 'محلی';
			case 'meta.remote': return 'از راه دور';
			case 'meta.other': return 'دیگر';
			case 'meta.dns': return 'DNS';
			case 'meta.url': return 'URL';
			case 'meta.urlInvalid': return 'URL نامعتبر';
			case 'meta.urlCannotEmpty': return 'لینک نمی‌تواند خالی باشد';
			case 'meta.urlTooLong': return 'URL خیلی طولانی است (>8182)';
			case 'meta.copyUrl': return 'کپی‌کردن لینک';
			case 'meta.openUrl': return 'بازکردن لینک';
			case 'meta.shareUrl': return 'اشتراک لینک';
			case 'meta.speedTestUrl': return 'URL تست سرعت';
			case 'meta.tls': return 'TLS';
			case 'meta.userAgent': return 'UserAgent';
			case 'meta.staticIP': return 'IP استاتیک';
			case 'meta.isp': return 'ارائه دهندگان VPN';
			case 'meta.domainSuffix': return 'پسوند دامنه';
			case 'meta.domain': return 'دامنه';
			case 'meta.domainKeyword': return 'کلید‌واژه دامنه';
			case 'meta.domainRegex': return 'عبارات باقاعده ی دامنه (Regex)';
			case 'meta.ip': return 'IP';
			case 'meta.port': return 'پورت';
			case 'meta.portRange': return 'محدوده بندر';
			case 'meta.appPackage': return 'شناسه بسته برنامه';
			case 'meta.processName': return 'نام اجرایی پروسه';
			case 'meta.processPath': return 'مسیر پروسه';
			case 'meta.processDir': return 'فهرست فرآیندها';
			case 'meta.systemProxy': return 'پروکسی سیستم';
			case 'meta.netInterfaces': return 'رابط شبکه';
			case 'meta.netSpeed': return 'سرعت';
			case 'meta.trafficTotal': return 'کل ترافیک';
			case 'meta.trafficProxy': return 'ترافیک پروکسی';
			case 'meta.website': return 'وبسایت';
			case 'meta.memory': return 'حافظه';
			case 'meta.outboundMode': return 'حالت خروجی';
			case 'meta.rule': return 'قانون';
			case 'meta.global': return 'عمومی';
			case 'meta.qrcode': return 'کد QR';
			case 'meta.qrcodeTooLong': return 'متن برای نمایش خیلی طولانی است';
			case 'meta.qrcodeShare': return 'اشتراک کدQR';
			case 'meta.textToQrcode': return 'متن به کد QR';
			case 'meta.qrcodeScan': return 'اسکن QRکد';
			case 'meta.qrcodeScanResult': return 'نتایج اسکن';
			case 'meta.qrcodeScanFromImage': return 'اسکن از عکس';
			case 'meta.qrcodeScanResultFailed': return 'تجزیه عکس ناموفق بود، لطفا مطمعن شوید اسکرین‌شات یک کدQR معتبر است';
			case 'meta.qrcodeScanResultEmpty': return 'نتیجه اسکن خالی است';
			case 'meta.screenshot': return 'اسکرین‌شات';
			case 'meta.backupAndSync': return 'پشتیبان‌گیری و همگام‌سازی';
			case 'meta.autoBackup': return 'پشتیبان گیری خودکار';
			case 'meta.autoBackupAddProfile': return 'بعد از اضافه کردن تنظیمات';
			case 'meta.autoBackupRemoveProfile': return 'پس از حذف تنظیمات';
			case 'meta.currentProfile': return 'پیکربندی فعلی';
			case 'meta.importAndExport': return 'وارد‌کردن و خروجی‌گرفتن';
			case 'meta.import': return 'وارد‌کردن';
			case 'meta.importFromUrl': return 'وارد کردن از URL';
			case 'meta.export': return 'خروجی‌گرفتن';
			case 'meta.send': return 'ارسال کنید';
			case 'meta.receive': return 'تصاحب';
			case 'meta.sendConfirm': return 'ارسال را تایید کرد؟';
			case 'meta.termOfUse': return 'شرایط استفاده';
			case 'meta.privacyPolicy': return 'سیاست حریم خصوصی';
			case 'meta.about': return 'درباره';
			case 'meta.name': return 'نام';
			case 'meta.version': return 'نسخه';
			case 'meta.notice': return 'اطلاعیه';
			case 'meta.appNotifyWithReason': return ({required Object p, required Object p1}) => 'اقدام: ${p}\nدلیل: ${p1}';
			case 'meta.sort': return 'مرتب‌سازی';
			case 'meta.novice': return 'حالت مبتدی';
			case 'meta.willCompleteAfterRebootInstall': return 'لطفاً دستگاه خود را مجدداً راه اندازی کنید تا نصب افزونه سیستم تکمیل شود.';
			case 'meta.willCompleteAfterRebootUninstall': return 'لطفاً دستگاه خود را مجدداً راه‌اندازی کنید تا حذف نصب افزونه سیستم تکمیل شود';
			case 'meta.requestNeedsUserApproval': return 'لطفاً به کارینگ [اجازه دهید] افزونه‌های سیستم را در [تنظیمات سیستم]-[حریم خصوصی و امنیت] نصب کند و پس از اتمام نصب دوباره متصل شود.';
			case 'meta.FullDiskAccessPermissionRequired': return 'لطفاً برنامه [Terminal] را باز کنید، دستور را مستقیماً در [Terminal] قرار دهید و آن را اجرا کنید. پس از اتمام اجرا، دوباره متصل شوید';
			case 'meta.tvMode': return 'حالت تلویزیون';
			case 'meta.recommended': return 'پیشنهادی';
			case 'meta.innerError': return ({required Object p}) => 'خطای داخلی: ${p}';
			case 'meta.logicOperation': return 'عملیات منطقی';
			case 'meta.share': return 'اشتراک گذاری';
			case 'meta.candidateWord': return 'کلمات نامزد';
			case 'meta.keywordOrRegx': return 'کلمات کلیدی / معمولی';
			case 'meta.importFromClipboard': return 'افزودن از کلیپ‌برد';
			case 'meta.exportToClipboard': return 'صادرات به کلیپ بورد';
			case 'meta.server': return 'سرور';
			case 'meta.ads': return 'تبلیغ کنید';
			case 'meta.adsRemove': return 'تبلیغات را حذف کنید';
			case 'meta.adsBanner': return 'تبلیغات بنری';
			case 'meta.donate': return 'اهدا کنید';
			case 'meta.diversion': return 'انحراف';
			case 'meta.diversionRules': return 'قوانین انحراف';
			case 'meta.diversionCustomGroup': return 'گروه انحراف سفارشی';
			case 'meta.urlTestCustomGroup': return 'انتخاب خودکار سفارشی';
			case 'meta.setting': return 'تنظیمات';
			case 'meta.iCloud': return 'iCloud';
			case 'meta.appleTV': return 'Apple TV';
			case 'meta.webdav': return 'Webdav';
			case 'meta.lanSync': return 'LAN Sync';
			case 'meta.lanSyncNotQuitTips': return 'قبل از تکمیل همگام‌سازی از این قسمت خارج نشوید';
			case 'meta.deviceNoSpace': return 'فضای خالی کافی ندارید';
			case 'meta.hideSystemApp': return 'برنامه های سیستم را مخفی کنید';
			case 'meta.hideAppIcon': return 'پنهان کردن نماد برنامه';
			case 'meta.hideDockIcon': return 'پنهان کردن آیکون داک';
			case 'meta.remark': return 'ملاحضات';
			case 'meta.remarkExist': return 'ملاحظات از‌قبل وجود دارد، لطفا از نام دیگری استفاده کنید';
			case 'meta.remarkCannotEmpty': return 'ملاحظات نمی‌تواند خالی باشد';
			case 'meta.remarkTooLong': return 'ملاحظات تا ۳۲ حرف';
			case 'meta.openDir': return 'بازکردن دایرکتوری فایل';
			case 'meta.fileChoose': return 'انتخاب فایل';
			case 'meta.filePathCannotEmpty': return 'مسیر فایل نمی‌تواند خالی باشد';
			case 'meta.fileNotExist': return ({required Object p}) => 'فایل وجود ندارد:${p}';
			case 'meta.fileTypeInvalid': return ({required Object p}) => 'نوع فایل نامعتبر:${p}';
			case 'meta.uwpExemption': return 'معافیت جداسازی شبکه UWP';
			case 'meta.rulesetGeoSite': return 'GeoSite';
			case 'meta.rulesetGeoIp': return 'GeoIP';
			case 'meta.rulesetAcl': return 'ACL';
			case 'meta.getProfile': return 'پیکربندی را دریافت کنید';
			case 'meta.addProfile': return 'افزودن پروفایل';
			case 'meta.myProfiles': return 'پروفایل‌ها';
			case 'meta.myProfilesAtLeastOneReserveEnable': return 'نمی‌تواند غیرغعال شود، لطفا حداقل یک پروفایل را فعال نگه دارید';
			case 'meta.profileEdit': return 'ویرایش پروفایل';
			case 'meta.profileEditUrlExist': return 'آدرس URL از‌قبل وجود دارد، لطفا از URL دیگری استفاده کنید';
			case 'meta.profileEditReloadAfterProfileUpdate': return 'بارگذاری مجدد پس‌از به‌روزرسانی پروفایل';
			case 'meta.profileEditTestLatencyAfterProfileUpdate': return 'شروع تست تاخیر پس‌از به‌روزرسانی خودکار پروفایل';
			case 'meta.profileEditTestLatencyAfterProfileUpdateTips': return 'وی‌پی‌ان باید روشن و [بارگذاری مجدد پس‌از به‌روزرسانی پروفایل] فعال باشد';
			case 'meta.profileEditTestLatencyAutoRemove': return 'خودکار سرورهای ناموفق در تست تاخیر را حذف کن';
			case 'meta.profileEditTestLatencyAutoRemoveTips': return 'تا سه بار امتحان کنید';
			case 'meta.profileImport': return 'وارد‌کردن فایل پروفایل';
			case 'meta.profileAddUrlOrContent': return 'افزودن لینک پروفایل';
			case 'meta.profileExists': return 'پروفایل از‌قبل وجود دارد، لطفا آن را به‌طور مکرر اضافه نکنید';
			case 'meta.profileUrlOrContent': return 'لینک/محتوای پروفایل';
			case 'meta.profileUrlOrContentHit': return 'لینک/محتوای پروفایل [الزامی] (پشتیبانی از کلش، V2ray(پشتیبانی به‌صورت دسته‌ای)، لینک‌های پروفایل فرعی)، استش، کارینگ، سینگ‌باکس، شدوساکس، لینک‌های پروفایل فرعی)';
			case 'meta.profileUrlOrContentCannotEmpty': return 'لینک پروفایل نمی‌تواند خالی باشد';
			case 'meta.profileAddFailedFormatException': return ({required Object p}) => 'فرمت اشتباه است، لطفا آن را اصلاح کرده و مجدد اضافه کنید:${p}';
			case 'meta.profileAddFailedThenDownloadAndImport': return ({required Object p}) => 'افزودن نشد: ${p}، لطفاً [UserAgent] را تغییر دهید و دوباره امتحان کنید، یا از مرورگر خود دستگاه برای باز کردن پیوند پیکربندی و وارد کردن فایل پیکربندی دانلود شده توسط مرورگر به این برنامه استفاده کنید.';
			case 'meta.profileAddFailedHandshakeException': return ({required Object p}) => 'اضافه کردن: ${p} ناموفق بود، لطفاً عامل را باز کنید یا گره عامل فعلی را تغییر دهید و دوباره امتحان کنید';
			case 'meta.profileAddParseFailed': return 'تجزیه پروفایل انجام نشد';
			case 'meta.profileAddNoServerAvaliable': return 'هیچ سروری در دسترس نیست، لطفاً مطمئن شوید که پیوند پیکربندی یا فایل پیکربندی معتبر است، اگر پیکربندی شما از GitHub آمده است، لطفاً آدرس پیوند را از دکمه [Raw] در صفحه دریافت کنید';
			case 'meta.profileAddWrapSuccess': return 'پیکربندی با موفقیت ایجاد شد، لطفاً برای مشاهده به [${_root.meta.myProfiles}] بروید';
			case 'diversionRulesKeep': return '[${_root.meta.isp}]${_root.meta.diversionRules} را نگه دارید';
			case 'diversionCustomGroupPreset': return 'از پیش تنظیم شده [گروه انحراف سفارشی]';
			case 'diversionCustomGroupPresetTips': return 'توجه: موارد فعال به [گروه انحراف سفارشی] و [قوانین انحراف] اضافه/پوشش داده خواهند شد';
			case 'diversionCustomGroupAddTips': return 'توجه: ممکن است لازم باشد پس از افزودن مرتب‌سازی به‌صورت دستی آن را تنظیم کنید، در غیر این صورت انحراف تازه اضافه‌شده ممکن است اعمال نشود.';
			case 'rulesetEnableTips': return 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد';
			case 'ispUserAgentTips': return '[${_root.meta.isp}] انواع مختلف داده های اشتراک را بر اساس [UserAgent] در درخواست [HTTP] ارائه خواهد کرد.';
			case 'ispDiversionTips': return 'قوانین بارگذاری ارائه شده توسط [${_root.meta.isp}]، اشتراک های نوع [V2Ray] از قوانین تخلیه پشتیبانی نمی کنند';
			case 'isp.bind': return 'اتصال به [${_root.meta.isp}]';
			case 'isp.unbind': return ({required Object p}) => 'لغو پیوند[${p}]';
			case 'isp.faq': return ({required Object p}) => 'سوالات متداول[${p}]';
			case 'isp.customerService': return ({required Object p}) => 'خدمات مشتری[${p}]';
			case 'isp.follow': return ({required Object p}) => 'دنبال کردن[${p}]';
			case 'isp.invalidOrExpired': return '[${_root.meta.isp}]نامعتبر یا منقضی شده است';
			case 'permission.camera': return 'دوربین';
			case 'permission.screen': return 'ضبط صفحه';
			case 'permission.appQuery': return 'Get Application List';
			case 'permission.request': return ({required Object p}) => 'مجوزهای [${p}] را فعال کنید';
			case 'permission.requestNeed': return ({required Object p}) => 'لطفاً مجوز [${p}] را فعال کنید';
			case 'tls.insecure': return 'رد شدن از تأیید گواهی';
			case 'tls.affectProtocolTips': return 'vless, vmess, trojan';
			case 'tls.fragmentEnable': return 'بخش بندی TLS را فعال کنید';
			case 'tls.fragmentSize': return 'اندازه بخش TLS';
			case 'tls.fragmentSleep': return 'خواب بخش‌بندی شده TLS';
			case 'tls.mixedCaseSNIEnable': return 'TLS ترکیبی SNI را فعال کنید';
			case 'tls.paddingEnable': return 'فعال کردن TLS Padding';
			case 'tls.paddingSize': return 'اندازه پد TLS';
			case 'outboundRuleMode.currentSelected': return 'فعلی انتخاب شده';
			case 'outboundRuleMode.urltest': return 'انتخاب خودکار';
			case 'outboundRuleMode.direct': return 'مستقیم';
			case 'outboundRuleMode.block': return 'مسدود';
			case 'dnsProxyResolveMode.proxy': return _root.outboundRuleMode.currentSelected;
			case 'dnsProxyResolveMode.direct': return _root.outboundRuleMode.direct;
			case 'dnsProxyResolveMode.fakeip': return 'FakeIP';
			case 'proxyStrategy.perferProxy': return '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
			case 'proxyStrategy.perferDirect': return '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
			case 'proxyStrategy.onlyProxy': return '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
			case 'proxyStrategy.onlyDirect': return '${_root.meta.only} ${_root.outboundRuleMode.direct}';
			case 'reloadReason.latencyTest': return '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
			case 'reloadReason.profileUpdate': return 'به‌روزرسانی‌های پیکربندی';
			case 'theme.light': return 'رنگ روشن';
			case 'theme.dark': return 'سیاه';
			case 'theme.auto': return 'خودکار';
			case 'downloadProxyStrategy': return 'کانال دانلود';
			case 'dnsProxyResolveModeTips': return '[${_root.dnsProxyResolveMode.proxy}]: اتصال به سرور DNS از طریق سرور پروکسی برای حل نام دامنه\n[${_root.dnsProxyResolveMode.direct}]: برای حل نام دامنه مستقیماً به سرور DNS متصل شوید\n[ ${_root.dnsProxyResolveMode.fakeip}: توسط پروکسی سرور از طرف شما نام دامنه را حل می کند، در صورت قطع ارتباط با VPN، ممکن است برنامه شما فقط برای ترافیک ورودی از [TUN] اعمال شود.';
			case 'routeFinal': return 'نهایی';
			case 'protocolSniff': return 'تشخیص پروتکل';
			case 'sendOrReceiveNotMatch': return ({required Object p}) => 'لطفا از [${p}] استفاده کنید';
			case 'turnOffPrivateDirect': return 'لطفاً ابتدا [اتصال مستقیم شبکه خصوصی] را فعال کنید';
			case 'targetConnectFailed': return ({required Object p}) => 'اتصال به [${p}] ناموفق بود، لطفاً مطمئن شوید که دستگاه در همان LAN است';
			case 'appleTVSync': return 'همگام سازی پیکربندی هسته فعلی با Apple TV - Karing';
			case 'appleTVSyncDone': return 'همگام سازی کامل شد، لطفاً برای باز کردن/راه اندازی مجدد اتصال به Apple TV - Karing بروید';
			case 'appleTVRemoveCoreConfig': return 'حذف Apple TV - Karing Core Configuration';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - نمایه اصلی کارینگ حذف شد';
			case 'appleTVUrlInvalid': return 'URL نامعتبر است، لطفاً Apple TV - Karing را باز کنید، کد QR نمایش داده شده توسط Karing را اسکن کنید';
			case 'appleTV404': return ({required Object p}) => 'AppleTV:Karing[${p}] این عملکرد را ندارد، لطفا ارتقا دهید و دوباره امتحان کنید';
			case 'appleCoreVersionNotMatch': return ({required Object p}) => 'نسخه اصلی اصلی مطابقت ندارد، لطفاً [${p}] را ارتقا دهید و دوباره امتحان کنید';
			case 'remoteProfileEditConfirm': return 'پس از به روز رسانی تنظیمات، تغییرات گره بازیابی می شوند آیا می خواهید ادامه دهید؟';
			case 'mustBeValidHttpsURL': return 'باید یک URL معتبر https باشد';
			case 'fileNotExistReinstall': return ({required Object p}) => 'فایل [${p}] وجود ندارد، لطفا دوباره نصب کنید';
			case 'noNetworkConnect': return 'بدون اتصال به اینترنت';
			case 'turnOffNetworkBeforeInstall': return 'توصیه می‌شود قبل از نصب به‌روزرسانی، به [حالت هواپیما] بروید';
			case 'latencyTestResolveIP': return 'در طی تشخیص دستی، IP صادرات نیز تجزیه و تحلیل می شود.';
			case 'removeBannerAdsByShare': return 'اشتراک گذاری[Karing]رفتن به تبلیغات';
			case 'removeBannerAdsByReward': return 'تماشای تبلیغات برو به تبلیغات';
			case 'removeBannerAdsByShareTip': return ({required Object p, required Object d}) => 'یک بار به اشتراک بگذارید و ${p} روز بدون پاداش تبلیغاتی دریافت خواهید کرد (تا ${d}  روز قابل انباشته شدن است)';
			case 'removeBannerAdsByRewardTip': return ({required Object p}) => 'یک تبلیغ را تماشا کنید و پاداش روز بدون آگهی ${p} دریافت خواهید کرد (نمی توان روی هم گذاشت)';
			case 'removeBannerAdsDone': return ({required Object p}) => 'پاداش ${p} روز بدون آگهی دریافت کرد';
			case 'edgeRuntimeNotInstalled': return 'زمان اجرا Edge WebView2 روی دستگاه فعلی نصب نشده است و صفحه قابل نمایش نیست لطفاً زمان اجرا Edge WebView2 (x64) را بارگیری و نصب کنید، برنامه را مجدداً راه اندازی کنید و دوباره امتحان کنید.';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

