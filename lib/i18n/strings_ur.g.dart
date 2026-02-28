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
class TranslationsUr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsUr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ur,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ur>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsUr _root = this; // ignore: unused_field

	@override 
	TranslationsUr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsUr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenUr AboutScreen = _TranslationsAboutScreenUr._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenUr BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenUr._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenUr DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenUr._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenUr DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenUr._(_root);
	@override late final _TranslationsDiversionRulesScreenUr DiversionRulesScreen = _TranslationsDiversionRulesScreenUr._(_root);
	@override late final _TranslationsDnsSettingsScreenUr DnsSettingsScreen = _TranslationsDnsSettingsScreenUr._(_root);
	@override late final _TranslationsFileContentViewerScreenUr FileContentViewerScreen = _TranslationsFileContentViewerScreenUr._(_root);
	@override late final _TranslationsHomeScreenUr HomeScreen = _TranslationsHomeScreenUr._(_root);
	@override late final _TranslationsLaunchFailedScreenUr LaunchFailedScreen = _TranslationsLaunchFailedScreenUr._(_root);
	@override late final _TranslationsMyProfilesMergeScreenUr MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenUr._(_root);
	@override late final _TranslationsNetCheckScreenUr NetCheckScreen = _TranslationsNetCheckScreenUr._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenUr NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenUr._(_root);
	@override late final _TranslationsNetConnectionsScreenUr NetConnectionsScreen = _TranslationsNetConnectionsScreenUr._(_root);
	@override late final _TranslationsPerAppAndroidScreenUr PerAppAndroidScreen = _TranslationsPerAppAndroidScreenUr._(_root);
	@override late final _TranslationsRegionSettingsScreenUr RegionSettingsScreen = _TranslationsRegionSettingsScreenUr._(_root);
	@override late final _TranslationsServerSelectScreenUr ServerSelectScreen = _TranslationsServerSelectScreenUr._(_root);
	@override late final _TranslationsSettingsScreenUr SettingsScreen = _TranslationsSettingsScreenUr._(_root);
	@override late final _TranslationsUserAgreementScreenUr UserAgreementScreen = _TranslationsUserAgreementScreenUr._(_root);
	@override late final _TranslationsVersionUpdateScreenUr VersionUpdateScreen = _TranslationsVersionUpdateScreenUr._(_root);
	@override late final _TranslationsCommonWidgetUr CommonWidget = _TranslationsCommonWidgetUr._(_root);
	@override late final _TranslationsMainUr main = _TranslationsMainUr._(_root);
	@override late final _TranslationsMetaUr meta = _TranslationsMetaUr._(_root);
	@override String get diversionRulesKeep => '[${_root.meta.isp}] کے [${_root.meta.diversionRules}] کو برقرار رکھیں';
	@override String get diversionCustomGroupPreset => 'پری سیٹ [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'نوٹ: فعال کردہ آئٹمز [${_root.meta.diversionCustomGroup}] اور [${_root.meta.diversionRules}] میں شامل/اوور رائٹ کر دیے جائیں گے';
	@override String get diversionCustomGroupAddTips => 'نوٹ: شامل کرنے کے بعد، آپ کو ترتیب کو دستی طور پر ایڈجسٹ کرنے کی ضرورت پڑ سکتی ہے، ورنہ نیا شامل کردہ ڈائیورژن موثر نہیں ہو سکتا ہے';
	@override String get rulesetEnableTips => 'ٹپ: اختیارات آن کرنے کے بعد، براہ کرم متعلقہ رولز ترتیب دینے کے لیے [${_root.meta.diversionRules}] پر جائیں، ورنہ وہ موثر نہیں ہوں گے';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] [HTTP] درخواست میں [UserAgent] کی بنیاد پر مختلف سبسکرپشن اقسام کا ڈیٹا بھیجے گا';
	@override String get ispDiversionTips => '[${_root.meta.isp}] ٹریفک ڈائیورژن رولز فراہم کرتا ہے؛ [V2Ray] قسم کی سبسکرپشنز ٹریفک ڈائیورژن رولز کو سپورٹ نہیں کرتی ہیں';
	@override late final _TranslationsIspUr isp = _TranslationsIspUr._(_root);
	@override late final _TranslationsPermissionUr permission = _TranslationsPermissionUr._(_root);
	@override late final _TranslationsTlsUr tls = _TranslationsTlsUr._(_root);
	@override late final _TranslationsOutboundRuleModeUr outboundRuleMode = _TranslationsOutboundRuleModeUr._(_root);
	@override late final _TranslationsDnsProxyResolveModeUr dnsProxyResolveMode = _TranslationsDnsProxyResolveModeUr._(_root);
	@override late final _TranslationsProxyStrategyUr proxyStrategy = _TranslationsProxyStrategyUr._(_root);
	@override late final _TranslationsReloadReasonUr reloadReason = _TranslationsReloadReasonUr._(_root);
	@override late final _TranslationsThemeUr theme = _TranslationsThemeUr._(_root);
	@override String get downloadProxyStrategy => 'ڈاؤن لوڈ چینل';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: ڈومین نام حل کرنے کے لیے پراکسی سرور کے ذریعے DNS سرور سے منسلک ہوں\n[${_root.dnsProxyResolveMode.direct}]: ڈومین نام حل کرنے کے لیے براہ راست DNS سرور سے منسلک ہوں\n[${_root.dnsProxyResolveMode.fakeip}]: پراکسی سرور آپ کی طرف سے ڈومین نام حل کرتا ہے؛ اگر آپ VPN کنکشن منقطع کرتے ہیں تو آپ کی ایپلی کیشن کو دوبارہ شروع کرنے کی ضرورت پڑ سکتی ہے؛ صرف [TUN] ان باؤنڈ ٹریفک کے لیے موثر';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'پروٹوکول اسنف';
	@override String sendOrReceiveNotMatch({required Object p}) => 'براہ کرم [${p}] استعمال کریں';
	@override String get turnOffPrivateDirect => 'براہ کرم پہلے [نجی نیٹ ورک براہ راست کنکشن] آن کریں';
	@override String targetConnectFailed({required Object p}) => '[${p}] سے منسلک ہونے میں ناکامی۔ براہ کرم یقینی بنائیں کہ ڈیوائسز ایک ہی LAN میں ہیں';
	@override String get appleTVSync => 'موجودہ کور کنفیگریشن کو Apple TV - Karing سے سنکرونائز کریں';
	@override String get appleTVSyncDone => 'سنکرونائزیشن مکمل ہو گئی۔ براہ کرم کنکشن شروع/دوبارہ شروع کرنے کے لیے Apple TV - Karing پر جائیں';
	@override String get appleTVRemoveCoreConfig => 'Apple TV - Karing کور کنفیگریشن حذف کریں';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing کور کنفیگریشن حذف کر دی گئی؛ VPN سروس منقطع ہو گئی';
	@override String get appleTVUrlInvalid => 'غلط یو آر ایل، براہ کرم Apple TV - Karing کھولیں اور Karing کے دکھائے ہوئے QR کوڈ کو اسکین کریں';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] میں یہ خصوصیت نہیں ہے، براہ کرم اپ ڈیٹ کریں اور دوبارہ کوشش کریں';
	@override String appleCoreVersionNotMatch({required Object p}) => 'کور کا مین ورژن مماثل نہیں ہے، براہ کرم [${p}] اپ ڈیٹ کریں اور دوبارہ کوشش کریں';
	@override String get remoteProfileEditConfirm => 'پروفائل اپ ڈیٹ ہونے کے بعد، نوڈ کی تبدیلیاں بحال ہو جائیں گی۔ جاری رکھیں؟';
	@override String get mustBeValidHttpsURL => 'ایک درست https یو آر ایل ہونا چاہیے';
	@override String fileNotExistReinstall({required Object p}) => 'فائل غائب ہے [${p}]، براہ کرم دوبارہ انسٹال کریں';
	@override String get noNetworkConnect => 'کوئی انٹرنیٹ کنکشن نہیں ہے';
	@override String get sudoPassword => 'sudo پاس ورڈ (TUN موڈ کے لیے ضروری)';
	@override String get turnOffNetworkBeforeInstall => 'اپ ڈیٹ انسٹال کرنے سے پہلے [ایئر پلین موڈ] پر سوئچ کرنے کی سفارش کی جاتی ہے';
	@override String get latencyTestResolveIP => 'دستی طور پر چیک کرتے وقت، آؤٹ لیٹ IP حل کریں';
	@override String get latencyTestConcurrency => 'کنکرنسی';
	@override String get edgeRuntimeNotInstalled => 'موجودہ ڈیوائس میں Edge WebView2 رن ٹائم انسٹال نہیں ہے، اس لیے صفحہ نہیں دکھایا جا سکتا۔ براہ کرم Edge WebView2 رن ٹائم (x64) ڈاؤن لوڈ اور انسٹال کریں، ایپ دوبارہ شروع کریں اور دوبارہ کوشش کریں۔';
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
		'pa': 'ਪੰਜਾਬੀ',
	};
}

// Path: AboutScreen
class _TranslationsAboutScreenUr implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'انسٹالیشن کا ذریعہ';
	@override String get installTime => 'انسٹالیشن کا وقت';
	@override String get versionChannel => 'آٹو اپ ڈیٹ چینل';
	@override String get updateWhenConnected => 'منسلک ہونے کے بعد اپ ڈیٹس کی جانچ کریں۔';
	@override String get autoDownloadPkg => 'اپ ڈیٹ پیکجز خود بخود ڈاؤن لوڈ کریں';
	@override String get disableAppImproveData => 'ایپ میں بہتری کا ڈیٹا';
	@override String get disableUAReportTip => '[${_root.AboutScreen.disableAppImproveData}] کو فعال کرنا ہمیں مصنوعات کی استحکام اور استعمال کو بہتر بنانے میں مدد کرتا ہے؛ ہم کوئی ذاتی رازداری کا ڈیٹا جمع نہیں کرتے ہیں۔ غیر فعال کرنے سے ایپ کو کسی بھی ڈیٹا کو جمع کرنے سے روک دیا جائے گا۔';
	@override String get devOptions => 'ڈویلپر کے اختیارات';
	@override String get enableDebugLog => 'ڈیبگ لاگ فعال کریں';
	@override String get viewFilsContent => 'فائلیں دیکھیں';
	@override String get enablePprof => 'pprof فعال کریں';
	@override String get pprofPanel => 'pprof پینل';
	@override String get allowRemoteAccessPprof => '${_root.AboutScreen.pprofPanel} تک ریموٹ رسائی کی اجازت دیں';
	@override String get allowRemoteAccessHtmlBoard => '${_root.SettingsScreen.htmlBoard} تک ریموٹ رسائی کی اجازت دیں';
	@override String get useOriginalSBProfile => 'اصل sing-box پروفائل استعمال کریں';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenUr implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'سرور یو آر ایل';
	@override String get webdavRequired => 'خالی نہیں ہو سکتا';
	@override String get webdavLoginFailed => 'لاگ ان ناکام رہا:';
	@override String get webdavListFailed => 'فائلوں کی فہرست حاصل کرنے میں ناکام:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenUr implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'غلط [ڈومین]:${p}';
	@override String invalidIpCidr({required Object p}) => 'غلط [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'غلط [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'غلط [رول سیٹ]:${p}، یو آر ایل ایک درست https یو آر ایل اور .srs/.json ایکسٹینشن والی بائنری فائل ہونی چاہیے';
	@override String invalidRuleSetBuildIn({required Object p}) => 'غلط [رول سیٹ (ان بلٹ)]:${p}، فارمیٹ geosite:xxx یا geoip:xxx یا acl:xxx ہے، اور xxx ایک درست رول کا نام ہونا چاہیے';
	@override String invalidPackageId({required Object p}) => 'غلط [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'ٹپ: محفوظ کرنے کے بعد، براہ کرم متعلقہ رولز ترتیب دینے کے لیے [${_root.meta.diversionRules}] پر جائیں، ورنہ وہ موثر نہیں ہوں گے';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenUr implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ڈائیورژن رول کا پتہ لگانا';
	@override String get rule => 'رول:';
	@override String get outbound => 'پراکسی سرور:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenUr implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'ٹپ: رولز کو اوپر سے نیچے تک ملانے کی کوشش کریں۔ اگر کوئی رول مماثل نہیں ہے تو [final] استعمال کریں';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenUr implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP خالی نہیں ہو سکتا';
	@override String get urlCanNotEmpty => 'یو آر ایل خالی نہیں ہو سکتا';
	@override String error({required Object p}) => 'غیر تعاون یافتہ قسم:${p}';
	@override String get dnsDesc => 'تاخیر کے ڈیٹا کا پہلا کالم براہ راست کنکشن کے استفسار کی تاخیر ہے؛\nدوسرا کالم: [[پراکسی ٹریفک]پراکسی سرور کے ذریعے DNS حل کریں] کو آن کریں: تاخیر کا ڈیٹا موجودہ پراکسی سرور کے ذریعے بھیجے گئے استفسار کی تاخیر ہے؛ اگر [[پراکسی ٹریفک]پراکسی سرور کے ذریعے DNS حل کریں] آف ہے تو: تاخیر کا ڈیٹا براہ راست کنکشن کے استفسار کی تاخیر ہے';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenUr implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'فائل کے مواد کا ناظر';
	@override String get clearFileContent => 'کیا آپ واقعی فائل کے مواد کو صاف کرنا چاہتے ہیں؟';
	@override String get clearFileContentTips => 'کیا آپ واقعی پروفائل فائل کے مواد کو صاف کرنا چاہتے ہیں؟ پروفائل فائل کو صاف کرنے سے ڈیٹا کا نقصان یا ایپ کے غیر معمولی افعال ہو سکتے ہیں، براہ کرم احتیاط سے کام کریں';
}

// Path: HomeScreen
class _TranslationsHomeScreenUr implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'براہ کرم ایک سرور منتخب کریں';
	@override String get invalidServer => 'غلط ہے، براہ کرم دوبارہ منتخب کریں';
	@override String get disabledServer => 'غیر فعال ہے، براہ کرم دوبارہ منتخب کریں';
	@override String get expiredServer => 'کوئی سرور دستیاب نہیں ہے، پروفائلز کی میعاد ختم ہو سکتی ہے یا وہ غیر فعال ہو سکتے ہیں';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'براہ کرم استعمال کرنے سے پہلے [شارٹ کٹ لنک] ترتیب دیں';
	@override String tooMuchServers({required Object p, required Object p1}) => 'بہت زیادہ پراکسی سرورز [${p}>${p1}]، اور سسٹم میموری کی حدود کی وجہ سے کنکشن ناکام ہو سکتا ہے';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'بہت زیادہ پراکسی سرورز [${p}>${p1}] سست یا ناقابل رسائی کنکشن کا باعث بن سکتے ہیں';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenUr implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'ایپ شروع کرنے میں ناکام رہی [غلط عمل کا نام]، براہ کرم ایپ کو علیحدہ ڈائریکٹری میں دوبارہ انسٹال کریں';
	@override String get invalidProfile => 'ایپ شروع کرنے میں ناکام رہی [پروفائل تک رسائی میں ناکامی]، براہ کرم ایپ دوبارہ انسٹال کریں';
	@override String get invalidVersion => 'ایپ شروع کرنے میں ناکام رہی [غلط ورژن]، براہ کرم ایپ دوبارہ انسٹال کریں';
	@override String get systemVersionLow => 'ایپ شروع کرنے میں ناکام رہی [سسٹم ورژن بہت کم ہے]';
	@override String get invalidInstallPath => 'انسٹالیشن کا راستہ غلط ہے، براہ کرم اسے درست راستے پر دوبارہ انسٹال کریں';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenUr implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'پروفائلز ضم کریں';
	@override String get profilesMergeTarget => 'ٹارگٹ پروفائل';
	@override String get profilesMergeSource => 'ماخذ پروفائلز';
	@override String get profilesMergeTips => 'ٹپ: ماخذ پروفائلز کا ڈائیورژن مسترد کر دیا جائے گا';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenUr implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'نیٹ ورک چیک';
	@override String get warn => 'نوٹ: نیٹ ورک کے ماحول اور ڈائیورژن رولز کے اثرات کی وجہ سے، ٹیسٹ کے نتائج مکمل طور پر اصل نتائج کے برابر نہیں ہیں۔';
	@override String get invalidDomain => 'غلط ڈومین نام';
	@override String get connectivity => 'نیٹ ورک کنیکٹیویٹی';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4 کنکشن ٹیسٹ [${p}] سب ناکام رہے';
	@override String get connectivityTestIpv4Ok => 'Ipv4 کنکشن کامیاب رہا';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6 کنکشن ٹیسٹ [${p}] سب ناکام رہے، آپ کا نیٹ ورک ipv6 کو سپورٹ نہیں کر سکتا ہے';
	@override String get connectivityTestIpv6Ok => 'Ipv6 کنکشن کامیاب رہا';
	@override String get connectivityTestOk => 'نیٹ ورک انٹرنیٹ سے جڑا ہوا ہے';
	@override String get connectivityTestFailed => 'نیٹ ورک ابھی تک انٹرنیٹ سے نہیں جڑا ہے';
	@override String get remoteRulesetsDownloadOk => 'تمام کامیابی سے ڈاؤن لوڈ ہو گئے';
	@override String get remoteRulesetsDownloadNotOk => 'ڈاؤن لوڈ ہو رہا ہے یا ڈاؤن لوڈ ناکام رہا';
	@override String get outbound => 'پراکسی سرور';
	@override String outboundOk({required Object p}) => '[${p}] کنکشن کامیاب رہا';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] کنکشن ناکام رہا\nغلطی:[${p2}]';
	@override String get dnsServer => 'DNS سرور';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS استفسار کامیاب رہا\nDNS رول:[${p2}]\nتاخیر:[${p3} ms]\nپتہ:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS استفسار کامیاب رہا\n nDNS رول:[${p2}]\nغلطی:[${p3}]';
	@override String get host => 'HTTP کنکشن';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nڈائیورژنرول:[${p2}]\nپراکسی سرور:[${p3}]';
	@override String get hostConnectionOk => 'کنکشن کامیاب رہا';
	@override String hostConnectionFailed({required Object p}) => 'کنکشن ناکام رہا:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenUr implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'ڈومین/IP';
	@override String get app => 'ایپ';
	@override String get rule => 'رول';
	@override String get chain => 'آؤٹ باؤنڈ';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenUr implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'CSV فارمیٹ میں کاپی کر لیا گیا';
	@override String get selectType => 'ڈائیورژن کی قسم منتخب کریں';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenUr implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'فی ایپ پراکسی';
	@override String get whiteListMode => 'وائٹ لسٹ موڈ';
	@override String get whiteListModeTip => 'جب فعال ہو: صرف نشان زد ایپس ہی پراکسی ہیں؛ جب فعال نہ ہو: صرف غیر نشان زد ایپس ہی پراکسی ہیں';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenUr implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملک یا علاقہ';
	@override String get Regions => 'ٹپ: براہ کرم اپنے موجودہ ملک یا علاقے کو صحیح طریقے سے ترتیب دیں، ورنہ یہ نیٹ ورک ڈائیورژن کے مسائل کا باعث بن سکتا ہے';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenUr implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'سرور منتخب کریں';
	@override String get autoSelectServer => 'خود بخود سب سے کم تاخیر والا سرور منتخب کریں';
	@override String get recentUse => 'حالیہ استعمال شدہ';
	@override String get myFav => 'میرے پسندیدہ';
	@override String selectLocal({required Object p}) => 'منتخب کردہ سرور ایک مقامی پتہ ہے اور ہو سکتا ہے کہ ٹھیک سے کام نہ کرے:${p}';
	@override String get selectRequireEnableIPv6 => 'منتخب کردہ سرور ایک IPv6 پتہ ہے اور اسے [IPv6 فعال کریں] کی ضرورت ہے';
	@override String get selectDisabled => 'یہ سرور غیر فعال کر دیا گیا ہے';
	@override String get error404 => 'تاخیر کا پتہ لگانے میں ایک غلطی ہوئی، براہ کرم چیک کریں کہ آیا اسی مواد کے ساتھ کوئی کنفیگریشن موجود ہے';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenUr implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'ٹریفک حاصل کریں';
	@override String get tutorial => 'ٹیوٹوریل';
	@override String get commonlyUsedRulesets => 'عام طور پر استعمال ہونے والے رول سیٹس';
	@override String get htmlBoard => 'آن لائن پینل';
	@override String get dnsLeakDetection => 'DNS لیک کا پتہ لگانا';
	@override String get proxyLeakDetection => 'پراکسی لیک کا پتہ لگانا';
	@override String get speedTest => 'سپیڈ ٹیسٹ';
	@override String get rulesetDirectDownlad => 'رول سیٹ براہ راست ڈاؤن لوڈ';
	@override String get hideUnusedDiversionGroup => 'غیر استعمال شدہ ڈائیورژن رولز چھپائیں';
	@override String get disableISPDiversionGroup => '[${_root.meta.isp}] کے [${_root.meta.diversionRules}] کو غیر فعال کریں';
	@override String get portSettingRule => 'رول پر مبنی';
	@override String get portSettingDirectAll => 'تمام براہ راست';
	@override String get portSettingProxyAll => 'تمام پراکسی';
	@override String get portSettingControl => 'کنٹرول اور سنکرونائزیشن';
	@override String get portSettingCluster => 'کلسٹر سروس';
	@override String get modifyPort => 'پورٹ تبدیل کریں';
	@override String get modifyPortOccupied => 'پورٹ مصروف ہے، براہ کرم کوئی اور پورٹ استعمال کریں';
	@override String get ipStrategyTips => 'فعال کرنے سے پہلے، براہ کرم تصدیق کریں کہ آپ کا نیٹ ورک IPv6 کو سپورٹ کرتا ہے، ورنہ کچھ ٹریفک عام طور پر قابل رسائی نہیں ہوگی۔';
	@override String get tunAppendHttpProxy => 'VPN میں HTTP پراکسی شامل کریں';
	@override String get tunAppendHttpProxyTips => 'کچھ ایپس ورچوئل NIC ڈیوائس کو نظر انداز کر دیں گی اور براہ راست HTTP پراکسی سے منسلک ہوں گی';
	@override String get tunAllowBypassHttpProxyDomain => 'وہ ڈومینز جنہیں HTTP پراکسی کو نظر انداز کرنے کی اجازت ہے';
	@override String get dnsEnableRule => 'DNS ڈائیورژن رولز فعال کریں';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] ریزولیوشن چینل';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] پر ECS فعال کریں';
	@override String get dnsTestDomain => 'ٹیسٹ ڈومین';
	@override String get dnsTestDomainInvalid => 'غلط ڈومین';
	@override String get dnsTypeOutbound => 'پراکسی سرور';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS سرور';
	@override String get dnsEnableRuleTips => 'فعال کرنے کے بعد، ڈومین نام ڈائیورژن رولز کے مطابق ریزولیوشن کے لیے متعلقہ DNS سرور کا انتخاب کرے گا';
	@override String get dnsEnableFakeIpTips => 'FakeIP فعال کرنے کے بعد، اگر آپ VPN منقطع کرتے ہیں تو آپ کی ایپ کو دوبارہ شروع کرنے کی ضرورت پڑ سکتی ہے؛ اس خصوصیت کے لیے [TUN موڈ] فعال ہونا ضروری ہے';
	@override String get dnsTypeOutboundTips => '[${_root.SettingsScreen.dnsTypeOutbound}] کے لیے ڈومین نام کی ریزولیوشن';
	@override String get dnsTypeDirectTips => '[${_root.meta.trafficDirect}] کے لیے ڈومین نام کی ریزولیوشن';
	@override String get dnsTypeProxyTips => '[${_root.meta.trafficProxy}] کے لیے ڈومین نام کی ریزولیوشن';
	@override String get dnsTypeResolverTips => '[${_root.SettingsScreen.dnsTypeResolver}] کے لیے ڈومین نام کی ریزولیوشن';
	@override String get dnsAutoSetServer => 'خود بخود سرور ترتیب دیں';
	@override String get dnsResetServer => 'سرور ری سیٹ کریں';
	@override String get inboundDomainResolve => 'آنے والے ڈومین ناموں کو حل کریں';
	@override String get privateDirect => 'نجی نیٹ ورک براہ راست کنکشن';
	@override String inboundDomainResolveTips({required Object p}) => 'کچھ ڈومین نام جو ڈائیورژن رولز کے ساتھ کنفیگر نہیں کیے گئے ہیں، انہیں IP پر مبنی ڈائیورژن رولز سے ٹکرانے سے پہلے حل کرنے کی ضرورت ہے؛ یہ خصوصیت پراکسی پورٹ [${p}] پر آنے والی درخواستوں کو متاثر کرتی ہے';
	@override String get useRomoteRes => 'ریموٹ وسائل استعمال کریں';
	@override String get autoAppendRegion => 'بنیادی رولز خود بخود شامل کریں';
	@override String get autoSelect => 'خودکار انتخاب';
	@override String get autoSelectServerIgnorePerProxyServer => '[Front/Chain] پراکسی سرورز کو نظر انداز کریں';
	@override String get autoSelectServerInterval => 'تاخیر کی جانچ کا وقفہ';
	@override String get autoSelectSelectedHealthCheckInterval => 'موجودہ سرور کی صحت کی جانچ کا وقفہ';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'نیٹ ورک تبدیل ہونے پر دوبارہ تاخیر چیک کریں';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'دستی تاخیر کی جانچ کے بعد موجودہ سرور کو اپ ڈیٹ کریں';
	@override String get autoSelectServerIntervalTips => 'وقت کا وقفہ جتنا کم ہوگا، سرور کی تاخیر کا ڈیٹا اتنا ہی بروقت اپ ڈیٹ ہوگا، جو زیادہ وسائل استعمال کرے گا اور زیادہ بجلی خرچ کرے گا';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'اگر جانچ ناکام ہو جاتی ہے تو سرور تبدیل کر دیا جاتا ہے؛ اگر سرور تبدیل کرتے وقت کوئی دستیاب سرور نہیں ملتا ہے تو گروپ دوبارہ تاخیر چیک کرے گا';
	@override String get autoSelectServerFavFirst => '[میرے پسندیدہ] کو ترجیح دیں';
	@override String get autoSelectServerFavFirstTips => 'اگر [میرے پسندیدہ] کی فہرست خالی نہیں ہے تو [میرے پسندیدہ] کے سرورز استعمال کریں';
	@override String get autoSelectServerFilter => 'غلط سرورز فلٹر کریں';
	@override String autoSelectServerFilterTips({required Object p}) => 'ناکام ہونے والی سرور تاخیر کی جانچ کو فلٹر کر دیا جائے گا؛ اگر فلٹر کرنے کے بعد کوئی سرور دستیاب نہیں ہے تو اس کے بجائے پہلے [${p}] سرورز استعمال کیے جائیں گے';
	@override String get autoSelectServerLimitedNum => 'سرورز کی زیادہ سے زیادہ تعداد';
	@override String get autoSelectServerLimitedNumTips => 'اس تعداد سے تجاوز کرنے والے سرورز فلٹر کر دیے جائیں گے';
	@override String get numInvalid => 'غلط نمبر';
	@override String get hideInvalidServer => 'غلط سرورز چھپائیں';
	@override String get sortServer => 'سرورز کی ترتیب';
	@override String get sortServerTips => 'تاخیر کے مطابق کم سے زیادہ تک ترتیب دیں';
	@override String get selectServerHideRecommand => '[تجویز کردہ] چھپائیں';
	@override String get selectServerHideRecent => '[حالیہ استعمال شدہ] چھپائیں';
	@override String get selectServerHideFav => '[میرے پسندیدہ] چھپائیں';
	@override String get homeScreen => 'ہوم اسکرین';
	@override String get theme => 'تھیم';
	@override String get widgetsAlpha => 'ویجیٹس الفا';
	@override String get widgetsEmpty => 'کوئی ویجیٹ دستیاب نہیں ہے';
	@override String get backgroundImage => 'پس منظر کی تصویر';
	@override String get myLink => 'شارٹ کٹ لنک';
	@override String get autoConnectAfterLaunch => 'لانچ کے بعد خودکار کنکشن';
	@override String get autoConnectAtBoot => 'سسٹم بوٹ کے بعد خودکار کنکشن';
	@override String get autoConnectAtBootTips => 'سسٹم سپورٹ ضروری ہے؛ کچھ سسٹمز کو [آٹو اسٹارٹ] فعال کرنے کی بھی ضرورت پڑ سکتی ہے۔';
	@override String get hideAfterLaunch => 'لانچ کے بعد ونڈو چھپائیں';
	@override String get autoSetSystemProxy => 'منسلک ہونے پر خود بخود سسٹم پراکسی ترتیب دیں';
	@override String get bypassSystemProxy => 'وہ ڈومین نام جنہیں سسٹم پراکسی کو نظر انداز کرنے کی اجازت ہے';
	@override String get disconnectWhenQuit => 'ایپ چھوڑنے پر منقطع کریں';
	@override String get autoAddToFirewall => 'خود بخود فائر وال رولز شامل کریں';
	@override String get excludeFromRecent => '[حالیہ کاموں] سے چھپائیں';
	@override String get wakeLock => 'ویک لاک';
	@override String get hideVpn => 'VPN آئیکن چھپائیں';
	@override String get hideVpnTips => 'IPv6 فعال کرنے سے یہ خصوصیت ناکام ہو جائے گی';
	@override String get allowBypass => 'ایپس کو VPN نظر انداز کرنے کی اجازت دیں';
	@override String get importSuccess => 'درآمد کامیاب رہی';
	@override String get rewriteConfirm => 'یہ فائل موجودہ مقامی کنفیگریشن کو اوور رائٹ کر دے گی۔ کیا آپ جاری رکھنا چاہتے ہیں؟';
	@override String get mergePerapp => 'مقامی [${_root.PerAppAndroidScreen.title}] فہرستوں کو ضم کریں';
	@override String get networkShare => 'نیٹ ورک شیئر';
	@override String get frontProxy => 'Front/Chain پراکسی';
	@override String frontProxyTips({required Object p}) => 'ڈیٹا->Front/Chain پراکسی سرور [متعدد پراکسی سرورز: اوپر سے نیچے]->پراکسی سرور [${p}]->ٹارگٹ سرور';
	@override String get allowOtherHostsConnect => 'دوسروں کو منسلک ہونے کی اجازت دیں';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'سسٹم کی حدود کی وجہ سے، اسے فعال کرنے کے بعد، اس ڈیوائس پر وہ ایپلی کیشنز جو نیٹ ورک تک رسائی کے لیے http استعمال کرتی ہیں، نیٹ ورک سے ٹھیک سے منسلک نہیں ہو سکیں گی۔';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunAutoRedirect => 'Auto Redirect';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'اگر شیئر آن کرنے کے بعد دوسرے اس ڈیوائس تک نہیں پہنچ پا رہے ہیں تو براہ کرم اس سوئچ کو آف کرنے کی کوشش کریں';
	@override String get loopbackAddress => 'لوپ بیک پتہ';
	@override String get enableCluster => 'Socks/Http پراکسی کلسٹر فعال کریں';
	@override String get clusterAllowOtherHostsConnect => 'دوسروں کو کلسٹر سے جڑنے کی اجازت دیں';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'پراکسی کلسٹر کی توثیق';
	@override String get tunMode => 'TUN موڈ';
	@override String get tuni4Address => 'IP پتہ';
	@override String get tunModeTips => 'TUN موڈ سسٹم کی تمام ٹریفک کو سنبھال لے گا [اس موڈ میں، آپ سسٹم پراکسی کو غیر فعال چھوڑ سکتے ہیں]';
	@override String get tunModeRunAsAdmin => 'TUN موڈ کے لیے سسٹم ایڈمنسٹریٹر کی اجازت درکار ہوتی ہے، براہ کرم ایپ کو ایڈمنسٹریٹر کے طور پر دوبارہ شروع کریں';
	@override String get tunStack => 'اسٹیک';
	@override String get tunHijackTips => 'بند کرنے کے بعد، TUN سے DNS درخواستیں براہ راست متعلقہ DNS سرور پر بھیج دی جائیں گی';
	@override String get launchAtStartup => 'اسٹارٹ اپ پر لانچ کریں';
	@override String get quitWhenSwitchSystemUser => 'سسٹم صارف تبدیل کرتے وقت ایپ چھوڑیں';
	@override String get handleScheme => 'سسٹم اسکیم کال';
	@override String get portableMode => 'پورٹیبل موڈ';
	@override String get portableModeDisableTips => 'اگر آپ کو پورٹیبل موڈ چھوڑنے کی ضرورت ہے تو براہ کرم [karing] سے باہر نکلیں اور [karing.exe] جیسی ڈائریکٹری میں [profiles] فولڈر کو دستی طور پر حذف کر دیں';
	@override String get accessibility => 'رسائی';
	@override String get handleKaringScheme => 'karing:// کال کو سنبھالیں';
	@override String get handleClashScheme => 'clash:// کال کو سنبھالیں';
	@override String get handleSingboxScheme => 'sing-box:// کال کو سنبھالیں';
	@override String get alwayOnVPN => 'ہمیشہ آن کنکشن';
	@override String get disconnectAfterSleep => 'سسٹم سلیپ کے بعد منقطع کریں';
	@override String get removeSystemVPNConfig => 'سسٹم VPN کنفیگریشن حذف کریں';
	@override String get timeConnectOrDisconnect => 'شیڈول کے مطابق کنیکٹ/منقطع';
	@override String get timeConnectOrDisconnectTips => 'VPN کا منسلک ہونا ضروری ہے تاکہ وہ موثر ہو؛ آن کرنے کے بعد، [آٹو سلیپ] غیر فعال ہو جائے گا';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'کنیکٹ/منقطع وقفہ ${p} منٹ سے کم نہیں ہو سکتا';
	@override String get disableFontScaler => 'فونٹ اسکیلنگ غیر فعال کریں (دوبارہ شروع کرنا ضروری ہے)';
	@override String get autoOrientation => 'اسکرین کے ساتھ گھمائیں';
	@override String get restartTakesEffect => 'دوبارہ شروع کرنا موثر ہوتا ہے';
	@override String get reconnectTakesEffect => 'دوبارہ کنکشن موثر ہوتا ہے';
	@override String get resetSettings => 'ترتیبات ری سیٹ کریں';
	@override String get cleanCache => 'کیشے صاف کریں';
	@override String get cleanCacheDone => 'صفائی مکمل ہوئی';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'ورژن ${p} اپ ڈیٹ کریں';
	@override String get follow => 'ہمیں فالو کریں';
	@override String get contactUs => 'ہم سے رابطہ کریں';
	@override String get supportUs => 'ہماری حمایت کریں';
	@override String get rateInApp => 'ہمیں ریٹ کریں';
	@override String get rateInAppStore => 'AppStore پر ہمیں ریٹ کریں';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenUr implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'آپ کی رازداری سب سے پہلے آتی ہے';
	@override String get agreeAndContinue => 'قبول کریں اور جاری رکھیں';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenUr implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'نیا ورژن [${p}] تیار ہے';
	@override String get update => 'اپ ڈیٹ کرنے کے لیے دوبارہ شروع کریں';
	@override String get cancel => 'ابھی نہیں';
}

// Path: CommonWidget
class _TranslationsCommonWidgetUr implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'اگر [ہمیشہ آن VPN] آن ہے تو براہ کرم [ہمیشہ آن VPN] آف کریں اور دوبارہ منسلک ہونے کی کوشش کریں';
	@override String get resetPort => 'براہ کرم پورٹ کو کسی دوسرے دستیاب پورٹ میں تبدیل کریں یا اس ایپلی کیشن کو بند کریں جو پورٹ استعمال کر رہی ہے۔';
}

// Path: main
class _TranslationsMainUr implements TranslationsMainEn {
	_TranslationsMainUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayUr tray = _TranslationsMainTrayUr._(_root);
}

// Path: meta
class _TranslationsMetaUr implements TranslationsMetaEn {
	_TranslationsMetaUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get enable => 'فعال کریں';
	@override String get disable => 'غیر فعال کریں';
	@override String get bydefault => 'ڈیفالٹ';
	@override String get filter => 'فلٹر';
	@override String get filterMethod => 'فلٹر کا طریقہ';
	@override String get include => 'شامل کریں';
	@override String get exclude => 'خارج کریں';
	@override String get all => 'تمام';
	@override String get prefer => 'ترجیح دیں';
	@override String get only => 'صرف';
	@override String get open => 'کھولیں';
	@override String get close => 'بند کریں';
	@override String get quit => 'باہر نکلیں';
	@override String get add => 'شامل کریں';
	@override String get addSuccess => 'کامیابی سے شامل ہو گیا';
	@override String addFailed({required Object p}) => 'شامل کرنے میں ناکامی:${p}';
	@override String get remove => 'ہٹائیں';
	@override String get removeConfirm => 'کیا آپ واقعی حذف کرنا چاہتے ہیں؟';
	@override String get edit => 'ترمیم کریں';
	@override String get view => 'دیکھیں';
	@override String get more => 'مزید';
	@override String get tips => 'معلومات';
	@override String get copy => 'کاپی کریں';
	@override String get paste => 'چسپاں کریں۔';
	@override String get cut => 'کاٹنا';
	@override String get save => 'محفوظ کریں';
	@override String get ok => 'ٹھیک ہے';
	@override String get cancel => 'منسوخ کریں';
	@override String get feedback => 'فیڈ بیک';
	@override String get feedbackContent => 'فیڈ بیک کا مواد';
	@override String get feedbackContentHit => 'ضروری، 500 حروف تک';
	@override String get feedbackContentCannotEmpty => 'فیڈ بیک کا مواد خالی نہیں ہو سکتا';
	@override String get faq => 'FAQ';
	@override String get htmlTools => 'ایچ ٹی ایم ایل ٹول سیٹ';
	@override String get download => 'ڈاؤن لوڈ';
	@override String get upload => 'اپ لوڈ';
	@override String get downloadSpeed => 'ڈاؤن لوڈ سپیڈ';
	@override String get uploadSpeed => 'اپ لوڈ سپیڈ';
	@override String get loading => 'لوڈ ہو رہا ہے...';
	@override String get convert => 'تبدیل کریں';
	@override String get check => 'چیک کریں';
	@override String get detect => 'پتہ لگائیں';
	@override String get cache => 'کیشے';
	@override String get days => 'دن';
	@override String get hours => 'گھنٹے';
	@override String get minutes => 'منٹ';
	@override String get seconds => 'سیکنڈ';
	@override String get milliseconds => 'ملی سیکنڈ';
	@override String get tolerance => 'رواداری';
	@override String get dateTimePeriod => 'وقت کی مدت';
	@override String get protocol => 'پروٹوکول';
	@override String get search => 'تلاش کریں';
	@override String get custom => 'کسٹم';
	@override String get inbound => 'ان باؤنڈ';
	@override String get outbound => 'آؤٹ باؤنڈ';
	@override String get destination => 'منزل';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'منسلک کریں';
	@override String get disconnect => 'منقطع کریں';
	@override String get reconnect => 'دوبارہ منسلک کریں';
	@override String get connected => 'منسلک';
	@override String get disconnected => 'منقطع';
	@override String get connecting => 'منسلک ہو رہا ہے';
	@override String get connectTimeout => 'کنکشن ٹائم آؤٹ';
	@override String get timeout => 'ٹائم آؤٹ';
	@override String get timeoutDuration => 'ٹائم آؤٹ کی مدت';
	@override String get runDuration => 'رن کی مدت';
	@override String get latency => 'تاخیر';
	@override String get latencyTest => 'تاخیر کی جانچ';
	@override String get language => 'زبان';
	@override String get next => 'اگلا';
	@override String get done => 'ہو گیا';
	@override String get apply => 'لاگو کریں';
	@override String get refresh => 'ری فریش کریں';
	@override String get retry => 'دوبارہ کوشش کریں؟';
	@override String get update => 'اپ ڈیٹ';
	@override String get updateInterval => 'اپ ڈیٹ کا وقفہ';
	@override String get updateInterval5mTips => 'کم از کم: 5 منٹ';
	@override String updateFailed({required Object p}) => 'اپ ڈیٹ ناکام رہی:${p}';
	@override String get samplingUnit => 'نمونہ لینے کے وقت کی اکائی';
	@override String get queryResultCount => 'استفسار کے نتائج کی تعداد';
	@override String queryLimit({required Object p}) => '${p} ڈیٹا تک دکھائیں';
	@override String get none => 'کوئی نہیں';
	@override String get start => 'شروع کریں';
	@override String get pause => 'وقفہ';
	@override String get reset => 'ری سیٹ';
	@override String get submit => 'جمع کرائیں';
	@override String get user => 'صارف';
	@override String get account => 'اکاؤنٹ';
	@override String get password => 'پاس ورڈ';
	@override String get decryptPassword => 'ڈی کرپٹ پاس ورڈ';
	@override String get required => 'ضروری';
	@override String get type => 'قسم';
	@override String get path => 'راستہ';
	@override String get local => 'مقامی';
	@override String get remote => 'ریموٹ';
	@override String get other => 'دیگر';
	@override String get dns => 'DNS';
	@override String get url => 'یو آر ایل';
	@override String get urlInvalid => 'غلط یو آر ایل';
	@override String get urlCannotEmpty => 'لنک خالی نہیں ہو سکتا';
	@override String get urlTooLong => 'یو آر ایل بہت طویل ہے (>8182)';
	@override String get copyUrl => 'لنک کاپی کریں';
	@override String get openUrl => 'لنک کھولیں';
	@override String get shareUrl => 'لنک شیئر کریں';
	@override String get speedTestUrl => 'سپیڈ ٹیسٹ یو آر ایل';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'جامد IP';
	@override String get staticIPTips => 'آپ کو [TUN HijackDNS] یا [${_root.SettingsScreen.inboundDomainResolve}] فعال کرنے کی ضرورت ہے۔';
	@override String get isp => 'VPN فراہم کنندہ';
	@override String get domainSuffix => 'ڈومین لاحقہ';
	@override String get domain => 'ڈومین';
	@override String get domainKeyword => 'ڈومین کلیدی لفظ';
	@override String get domainRegex => 'ڈومین ریجیکس';
	@override String get ip => 'IP';
	@override String get port => 'پورٹ';
	@override String get portRange => 'پورٹ کی حد';
	@override String get appPackage => 'ایپ پیکیج آئی ڈی';
	@override String get processName => 'عمل کا نام';
	@override String get processPath => 'عمل کا راستہ';
	@override String get processDir => 'عمل کی ڈائریکٹری';
	@override String get systemProxy => 'سسٹم پراکسی';
	@override String get percentage => 'فیصد';
	@override String get statistics => 'اعداد و شمار';
	@override String get statisticsAndAnalysis => 'اعداد و شمار اور تجزیہ';
	@override String get statisticsDataDesensitize => 'ڈیٹا ڈی سینسیٹائزیشن';
	@override String get statisticsDataDesensitizeTips => 'عمل/پیکیج آئی ڈی/ٹارگٹ ڈومین نام/ٹارگٹ IP وغیرہ کو * سے بدل دیا جائے گا اور ڈی سینسیٹائزیشن کے بعد محفوظ کیا جائے گا';
	@override String get records => 'ریکارڈز';
	@override String get requestRecords => 'درخواست کے ریکارڈز';
	@override String get netInterfaces => 'نیٹ ورک انٹرفیس';
	@override String get netSpeed => 'رفتار';
	@override String get memoryTrendChart => 'میموری ٹرینڈ چارٹ';
	@override String get goroutinesTrendChart => 'GoRoutines ٹرینڈ چارٹ';
	@override String get trafficTrendChart => 'ٹریفک ٹرینڈ چارٹ';
	@override String get trafficDistributionChart => 'ٹریفک کی تقسیم کا چارٹ';
	@override String get connectionChart => 'کنکشن ٹرینڈ چارٹ';
	@override String get memoryChart => 'میموری ٹرینڈ چارٹ';
	@override String get trafficStatistics => 'ٹریفک کے اعداد و شمار';
	@override String get traffic => 'ٹریفک';
	@override String get trafficTotal => 'کل ٹریفک';
	@override String get trafficProxy => 'پراکسی ٹریفک';
	@override String get trafficDirect => 'براہ راست ٹریفک';
	@override String get website => 'ویب سائٹ';
	@override String get memory => 'میموری';
	@override String get outboundMode => 'آؤٹ باؤنڈ موڈ';
	@override String get rule => 'رول';
	@override String get global => 'عالمی';
	@override String get qrcode => 'QR کوڈ';
	@override String get qrcodeTooLong => 'متن دکھانے کے لیے بہت طویل ہے';
	@override String get qrcodeShare => 'QR کوڈ شیئر کریں';
	@override String get textToQrcode => 'متن سے QR کوڈ';
	@override String get qrcodeScan => 'QR کوڈ اسکین کریں';
	@override String get qrcodeScanResult => 'اسکین کا نتیجہ';
	@override String get qrcodeScanFromImage => 'تصویر سے اسکین کریں';
	@override String get qrcodeScanResultFailed => 'تصویر کا تجزیہ کرنے میں ناکامی، براہ کرم یقینی بنائیں کہ اسکرین شاٹ ایک درست QR کوڈ ہے';
	@override String get qrcodeScanResultEmpty => 'اسکین کا نتیجہ خالی ہے';
	@override String get screenshot => 'اسکرین شاٹ';
	@override String get backupAndSync => 'بیک اپ اور سنکرونائزیشن';
	@override String get autoBackup => 'خودکار بیک اپ';
	@override String get noProfileGotAutoBackup => 'اگر [${_root.meta.myProfiles}] جیسا ڈیٹا ضائع ہو جاتا ہے تو آپ اسے [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] یا دیگر بیک اپ ذرائع (جیسے iCloud یا Webdav وغیرہ) سے بحال کر سکتے ہیں';
	@override String get autoBackupAddProfile => 'پروفائل شامل کرنے کے بعد';
	@override String get autoBackupRemoveProfile => 'پروفائل ہٹانے کے بعد';
	@override String get profile => 'پروفائل';
	@override String get currentProfile => 'موجودہ پروفائل';
	@override String get importAndExport => 'درآمد اور برآمد';
	@override String get import => 'درآمد کریں';
	@override String get importFromUrl => 'یو آر ایل سے درآمد کریں';
	@override String get export => 'برآمد کریں';
	@override String get send => 'بھیجیں';
	@override String get receive => 'وصول کریں';
	@override String get sendConfirm => 'بھیجنے کی تصدیق کریں؟';
	@override String get termOfUse => 'استعمال کی شرائط';
	@override String get privacyPolicy => 'رازداری اور پالیسی';
	@override String get about => 'کے بارے میں';
	@override String get name => 'نام';
	@override String get version => 'ورژن';
	@override String get notice => 'نوٹس';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'عمل:${p}\nوجہ:${p1}';
	@override String get sort => 'دوبارہ ترتیب دیں';
	@override String get novice => 'نوآموز موڈ';
	@override String get willCompleteAfterRebootInstall => 'سسٹم ایکسٹینشن کی انسٹالیشن مکمل کرنے کے لیے براہ کرم اپنے ڈیوائس کو دوبارہ شروع کریں';
	@override String get willCompleteAfterRebootUninstall => 'سسٹم ایکسٹینشن کی ان انسٹالیشن مکمل کرنے کے لیے براہ کرم اپنے ڈیوائس کو دوبارہ شروع کریں';
	@override String get requestNeedsUserApproval => '1. براہ کرم Karing کو [سسٹم کی ترتیبات]-[رازداری اور سیکیورٹی] میں سسٹم ایکسٹینشن انسٹال کرنے کی [اجازت دیں]\n2. [سسٹم کی ترتیبات]-[عام]-[لاگ ان آئٹمز ایکسٹینشنز]-[نیٹ ورک ایکسٹینشن] [karingServiceSE] فعال کریں\nمکمل ہونے کے بعد دوبارہ منسلک کریں';
	@override String get FullDiskAccessPermissionRequired => 'براہ کرم [سسٹم کی ترتیبات]-[رازداری اور سیکیورٹی]-[مکمل ڈسک رسائی کی اجازت] میں [karingServiceSE] کی اجازت فعال کریں اور دوبارہ منسلک کریں';
	@override String get tvMode => 'TV موڈ';
	@override String get recommended => 'تجویز کردہ';
	@override String innerError({required Object p}) => 'اندرونی غلطی:${p}';
	@override String get logicOperation => 'تاریکی عمل';
	@override String get share => 'شیئر کریں';
	@override String get candidateWord => 'امیدوار الفاظ';
	@override String get keywordOrRegx => 'کلیدی الفاظ/باقاعدہ';
	@override String get importFromClipboard => 'کلپ بورڈ سے درآمد کریں';
	@override String get exportToClipboard => 'کلپ بورڈ پر برآمد کریں';
	@override String get server => 'سرور';
	@override String get ads => 'اشتہارات';
	@override String get adsRemove => 'اشتہارات ہٹائیں';
	@override String get donate => 'عطیہ کریں';
	@override String get diversion => 'ڈائیورژن';
	@override String get diversionRules => 'ڈائیورژن رولز';
	@override String get diversionCustomGroup => 'کسٹم ڈائیورژن گروپ';
	@override String get urlTestCustomGroup => 'کسٹم آٹو سلیکشن';
	@override String get setting => 'ترتیبات';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN سنکرونائزیشن';
	@override String get lanSyncNotQuitTips => 'سنکرونائزیشن مکمل ہونے سے پہلے اس انٹرفیس کو نہ چھوڑیں';
	@override String get deviceNoSpace => 'ڈسک کی جگہ ناکافی ہے';
	@override String get hideSystemApp => 'سسٹم ایپس چھپائیں';
	@override String get hideAppIcon => 'ایپ آئیکنز چھپائیں';
	@override String get hideDockIcon => 'ڈاک آئیکن چھپائیں';
	@override String get remark => 'ریمارک';
	@override String get remarkExist => 'ریمارک پہلے سے موجود ہے، براہ کرم کوئی اور نام استعمال کریں';
	@override String get remarkCannotEmpty => 'ریمارکس خالی نہیں ہو سکتے';
	@override String get remarkTooLong => '32 حروف تک کے ریمارکس';
	@override String get openDir => 'فائل ڈائریکٹری کھولیں';
	@override String get fileChoose => 'فائل منتخب کریں';
	@override String get filePathCannotEmpty => 'فائل کا راستہ خالی نہیں ہو سکتا';
	@override String fileNotExist({required Object p}) => 'فائل موجود نہیں ہے:${p}';
	@override String fileTypeInvalid({required Object p}) => 'غلط فائل کی قسم:${p}';
	@override String get uwpExemption => 'UWP نیٹ ورک تنہائی کے استثنیٰ';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'پروفائل حاصل کریں';
	@override String get addProfile => 'پروفائل شامل کریں';
	@override String get myProfiles => 'میری پروفائلز';
	@override String get profileEdit => 'پروفائل میں ترمیم کریں';
	@override String get profileEditUrlExist => 'یو آر ایل پہلے سے موجود ہے، براہ کرم کوئی اور یو آر ایل استعمال کریں';
	@override String get profileEditReloadAfterProfileUpdate => 'پروفائل اپ ڈیٹ کے بعد دوبارہ لوڈ کریں';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'خودکار پروفائل اپ ڈیٹ کے بعد تاخیر کے ٹیسٹ شروع کریں';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN منسلک ہونا چاہیے اور [پروفائل اپ ڈیٹ کے بعد دوبارہ لوڈ کریں] فعال ہونا چاہیے';
	@override String get profileEditTestLatencyAutoRemove => 'تاخیر کے ٹیسٹ میں ناکام ہونے والے سرورز کو خود بخود ہٹا دیں';
	@override String get profileEditTestLatencyAutoRemoveTips => '3 بار تک کوشش کریں';
	@override String get profileImport => 'پروفائل فائل درآمد کریں';
	@override String get profileAddUrlOrContent => 'پروفائل لنک شامل کریں';
	@override String get profileExists => 'پروفائل پہلے سے موجود ہے، براہ کرم اسے بار بار شامل نہ کریں';
	@override String get profileUrlOrContent => 'پروفائل لنک/مواد';
	@override String get profileUrlOrContentHit => 'پروفائل لنک/مواد [ضروری] (Clash, V2ray (بیچ سپورٹڈ), Stash, Karing, Sing-box, Shadowsocks, Sub پروفائل لنکس کو سپورٹ کرتا ہے)';
	@override String get profileUrlOrContentCannotEmpty => 'پروفائل لنک خالی نہیں ہو سکتا';
	@override String profileAddFailedFormatException({required Object p}) => 'فارمیٹ غلط ہے، براہ کرم اسے درست کریں اور دوبارہ شامل کریں:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'شامل کرنے میں ناکامی: ${p}، براہ کرم [UserAgent] کو تبدیل کرنے کی کوشش کریں اور دوبارہ کوشش کریں، یا کنفیگریشن لنک کھولنے کے لیے ڈیوائس کا بلٹ ان براؤزر استعمال کریں اور براؤزر کے ذریعے ڈاؤن لوڈ کی گئی کنفیگریشن فائل کو اس ایپلی کیشن میں درآمد کریں';
	@override String profileAddFailedHandshakeException({required Object p}) => 'شامل کرنے میں ناکامی: ${p}، براہ کرم پراکسی آن کریں یا موجودہ پراکسی نوڈ کو تبدیل کریں اور دوبارہ کوشش کریں';
	@override String get profileAddParseFailed => 'پروفائل کا تجزیہ کرنے میں ناکامی';
	@override String get profileAddNoServerAvaliable => 'کوئی سرور دستیاب نہیں ہے، یقینی بنائیں کہ پروفائل لنک یا پروفائل فائل درست ہے؛ اگر آپ کا پروفائل GitHub سے ہے تو براہ کرم صفحہ پر [Raw] بٹن کے ذریعے لنک حاصل کریں';
	@override String get profileAddWrapSuccess => 'پروفائل کامیابی سے تیار ہو گیا، براہ کرم دیکھنے کے لیے [${_root.meta.myProfiles}] پر جائیں';
}

// Path: isp
class _TranslationsIspUr implements TranslationsIspEn {
	_TranslationsIspUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get bind => '[${_root.meta.isp}] سے منسلک کریں ';
	@override String unbind({required Object p}) => 'علیحدہ کریں[${p}]';
	@override String faq({required Object p}) => 'FAQ[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'فالو کریں[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] غلط یا ختم ہو گیا';
}

// Path: permission
class _TranslationsPermissionUr implements TranslationsPermissionEn {
	_TranslationsPermissionUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get camera => 'کیمرہ';
	@override String get screen => 'اسکرین ریکارڈنگ';
	@override String get appQuery => 'ایپ لسٹ حاصل کریں';
	@override String request({required Object p}) => '[${p}] اجازت آن کریں';
	@override String requestNeed({required Object p}) => 'براہ کرم [${p}] اجازت آن کریں';
}

// Path: tls
class _TranslationsTlsUr implements TranslationsTlsEn {
	_TranslationsTlsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'سرٹیفکیٹ کی تصدیق نظر انداز کریں';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'TLS فریگمنٹ فعال کریں';
	@override String get fragmentSize => 'TLS فریگمنٹ سائز';
	@override String get fragmentSleep => 'TLS فریگمنٹ سلیپ';
	@override String get mixedCaseSNIEnable => 'TLS مکسڈ کیس SNI فعال کریں';
	@override String get paddingEnable => 'TLS پیڈنگ فعال کریں';
	@override String get paddingSize => 'TLS پیڈنگ سائز';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeUr implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'فی الحال منتخب شدہ';
	@override String get urltest => 'خودکار انتخاب';
	@override String get direct => 'براہ راست';
	@override String get block => 'بلاک کریں';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeUr implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyUr implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonUr implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'پروفائل اپ ڈیٹ';
}

// Path: theme
class _TranslationsThemeUr implements TranslationsThemeEn {
	_TranslationsThemeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get light => 'لائٹ';
	@override String get dark => 'ڈارک';
	@override String get auto => 'آٹو';
}

// Path: main.tray
class _TranslationsMainTrayUr implements TranslationsMainTrayEn {
	_TranslationsMainTrayUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'کھولیں';
	@override String get menuExit => 'باہر نکلیں';
}

/// The flat map containing all translations for locale <ur>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsUr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'انسٹالیشن کا ذریعہ',
			'AboutScreen.installTime' => 'انسٹالیشن کا وقت',
			'AboutScreen.versionChannel' => 'آٹو اپ ڈیٹ چینل',
			'AboutScreen.updateWhenConnected' => 'منسلک ہونے کے بعد اپ ڈیٹس کی جانچ کریں۔',
			'AboutScreen.autoDownloadPkg' => 'اپ ڈیٹ پیکجز خود بخود ڈاؤن لوڈ کریں',
			'AboutScreen.disableAppImproveData' => 'ایپ میں بہتری کا ڈیٹا',
			'AboutScreen.disableUAReportTip' => '[${_root.AboutScreen.disableAppImproveData}] کو فعال کرنا ہمیں مصنوعات کی استحکام اور استعمال کو بہتر بنانے میں مدد کرتا ہے؛ ہم کوئی ذاتی رازداری کا ڈیٹا جمع نہیں کرتے ہیں۔ غیر فعال کرنے سے ایپ کو کسی بھی ڈیٹا کو جمع کرنے سے روک دیا جائے گا۔',
			'AboutScreen.devOptions' => 'ڈویلپر کے اختیارات',
			'AboutScreen.enableDebugLog' => 'ڈیبگ لاگ فعال کریں',
			'AboutScreen.viewFilsContent' => 'فائلیں دیکھیں',
			'AboutScreen.enablePprof' => 'pprof فعال کریں',
			'AboutScreen.pprofPanel' => 'pprof پینل',
			'AboutScreen.allowRemoteAccessPprof' => '${_root.AboutScreen.pprofPanel} تک ریموٹ رسائی کی اجازت دیں',
			'AboutScreen.allowRemoteAccessHtmlBoard' => '${_root.SettingsScreen.htmlBoard} تک ریموٹ رسائی کی اجازت دیں',
			'AboutScreen.useOriginalSBProfile' => 'اصل sing-box پروفائل استعمال کریں',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'سرور یو آر ایل',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'خالی نہیں ہو سکتا',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'لاگ ان ناکام رہا:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'فائلوں کی فہرست حاصل کرنے میں ناکام:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'غلط [ڈومین]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'غلط [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'غلط [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'غلط [رول سیٹ]:${p}، یو آر ایل ایک درست https یو آر ایل اور .srs/.json ایکسٹینشن والی بائنری فائل ہونی چاہیے',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'غلط [رول سیٹ (ان بلٹ)]:${p}، فارمیٹ geosite:xxx یا geoip:xxx یا acl:xxx ہے، اور xxx ایک درست رول کا نام ہونا چاہیے',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'غلط [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'ٹپ: محفوظ کرنے کے بعد، براہ کرم متعلقہ رولز ترتیب دینے کے لیے [${_root.meta.diversionRules}] پر جائیں، ورنہ وہ موثر نہیں ہوں گے',
			'DiversionRuleDetectScreen.title' => 'ڈائیورژن رول کا پتہ لگانا',
			'DiversionRuleDetectScreen.rule' => 'رول:',
			'DiversionRuleDetectScreen.outbound' => 'پراکسی سرور:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'ٹپ: رولز کو اوپر سے نیچے تک ملانے کی کوشش کریں۔ اگر کوئی رول مماثل نہیں ہے تو [final] استعمال کریں',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP خالی نہیں ہو سکتا',
			'DnsSettingsScreen.urlCanNotEmpty' => 'یو آر ایل خالی نہیں ہو سکتا',
			'DnsSettingsScreen.error' => ({required Object p}) => 'غیر تعاون یافتہ قسم:${p}',
			'DnsSettingsScreen.dnsDesc' => 'تاخیر کے ڈیٹا کا پہلا کالم براہ راست کنکشن کے استفسار کی تاخیر ہے؛\nدوسرا کالم: [[پراکسی ٹریفک]پراکسی سرور کے ذریعے DNS حل کریں] کو آن کریں: تاخیر کا ڈیٹا موجودہ پراکسی سرور کے ذریعے بھیجے گئے استفسار کی تاخیر ہے؛ اگر [[پراکسی ٹریفک]پراکسی سرور کے ذریعے DNS حل کریں] آف ہے تو: تاخیر کا ڈیٹا براہ راست کنکشن کے استفسار کی تاخیر ہے',
			'FileContentViewerScreen.title' => 'فائل کے مواد کا ناظر',
			'FileContentViewerScreen.clearFileContent' => 'کیا آپ واقعی فائل کے مواد کو صاف کرنا چاہتے ہیں؟',
			'FileContentViewerScreen.clearFileContentTips' => 'کیا آپ واقعی پروفائل فائل کے مواد کو صاف کرنا چاہتے ہیں؟ پروفائل فائل کو صاف کرنے سے ڈیٹا کا نقصان یا ایپ کے غیر معمولی افعال ہو سکتے ہیں، براہ کرم احتیاط سے کام کریں',
			'HomeScreen.toSelectServer' => 'براہ کرم ایک سرور منتخب کریں',
			'HomeScreen.invalidServer' => 'غلط ہے، براہ کرم دوبارہ منتخب کریں',
			'HomeScreen.disabledServer' => 'غیر فعال ہے، براہ کرم دوبارہ منتخب کریں',
			'HomeScreen.expiredServer' => 'کوئی سرور دستیاب نہیں ہے، پروفائلز کی میعاد ختم ہو سکتی ہے یا وہ غیر فعال ہو سکتے ہیں',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'براہ کرم استعمال کرنے سے پہلے [شارٹ کٹ لنک] ترتیب دیں',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'بہت زیادہ پراکسی سرورز [${p}>${p1}]، اور سسٹم میموری کی حدود کی وجہ سے کنکشن ناکام ہو سکتا ہے',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'بہت زیادہ پراکسی سرورز [${p}>${p1}] سست یا ناقابل رسائی کنکشن کا باعث بن سکتے ہیں',
			'LaunchFailedScreen.invalidProcess' => 'ایپ شروع کرنے میں ناکام رہی [غلط عمل کا نام]، براہ کرم ایپ کو علیحدہ ڈائریکٹری میں دوبارہ انسٹال کریں',
			'LaunchFailedScreen.invalidProfile' => 'ایپ شروع کرنے میں ناکام رہی [پروفائل تک رسائی میں ناکامی]، براہ کرم ایپ دوبارہ انسٹال کریں',
			'LaunchFailedScreen.invalidVersion' => 'ایپ شروع کرنے میں ناکام رہی [غلط ورژن]، براہ کرم ایپ دوبارہ انسٹال کریں',
			'LaunchFailedScreen.systemVersionLow' => 'ایپ شروع کرنے میں ناکام رہی [سسٹم ورژن بہت کم ہے]',
			'LaunchFailedScreen.invalidInstallPath' => 'انسٹالیشن کا راستہ غلط ہے، براہ کرم اسے درست راستے پر دوبارہ انسٹال کریں',
			'MyProfilesMergeScreen.profilesMerge' => 'پروفائلز ضم کریں',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'ٹارگٹ پروفائل',
			'MyProfilesMergeScreen.profilesMergeSource' => 'ماخذ پروفائلز',
			'MyProfilesMergeScreen.profilesMergeTips' => 'ٹپ: ماخذ پروفائلز کا ڈائیورژن مسترد کر دیا جائے گا',
			'NetCheckScreen.title' => 'نیٹ ورک چیک',
			'NetCheckScreen.warn' => 'نوٹ: نیٹ ورک کے ماحول اور ڈائیورژن رولز کے اثرات کی وجہ سے، ٹیسٹ کے نتائج مکمل طور پر اصل نتائج کے برابر نہیں ہیں۔',
			'NetCheckScreen.invalidDomain' => 'غلط ڈومین نام',
			'NetCheckScreen.connectivity' => 'نیٹ ورک کنیکٹیویٹی',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Ipv4 کنکشن ٹیسٹ [${p}] سب ناکام رہے',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Ipv4 کنکشن کامیاب رہا',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Ipv6 کنکشن ٹیسٹ [${p}] سب ناکام رہے، آپ کا نیٹ ورک ipv6 کو سپورٹ نہیں کر سکتا ہے',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Ipv6 کنکشن کامیاب رہا',
			'NetCheckScreen.connectivityTestOk' => 'نیٹ ورک انٹرنیٹ سے جڑا ہوا ہے',
			'NetCheckScreen.connectivityTestFailed' => 'نیٹ ورک ابھی تک انٹرنیٹ سے نہیں جڑا ہے',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'تمام کامیابی سے ڈاؤن لوڈ ہو گئے',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'ڈاؤن لوڈ ہو رہا ہے یا ڈاؤن لوڈ ناکام رہا',
			'NetCheckScreen.outbound' => 'پراکسی سرور',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] کنکشن کامیاب رہا',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] کنکشن ناکام رہا\nغلطی:[${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS سرور',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS استفسار کامیاب رہا\nDNS رول:[${p2}]\nتاخیر:[${p3} ms]\nپتہ:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS استفسار کامیاب رہا\n nDNS رول:[${p2}]\nغلطی:[${p3}]',
			'NetCheckScreen.host' => 'HTTP کنکشن',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nڈائیورژنرول:[${p2}]\nپراکسی سرور:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'کنکشن کامیاب رہا',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'کنکشن ناکام رہا:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'ڈومین/IP',
			'NetConnectionsFilterScreen.app' => 'ایپ',
			'NetConnectionsFilterScreen.rule' => 'رول',
			'NetConnectionsFilterScreen.chain' => 'آؤٹ باؤنڈ',
			'NetConnectionsScreen.copyAsCSV' => 'CSV فارمیٹ میں کاپی کر لیا گیا',
			'NetConnectionsScreen.selectType' => 'ڈائیورژن کی قسم منتخب کریں',
			'PerAppAndroidScreen.title' => 'فی ایپ پراکسی',
			'PerAppAndroidScreen.whiteListMode' => 'وائٹ لسٹ موڈ',
			'PerAppAndroidScreen.whiteListModeTip' => 'جب فعال ہو: صرف نشان زد ایپس ہی پراکسی ہیں؛ جب فعال نہ ہو: صرف غیر نشان زد ایپس ہی پراکسی ہیں',
			'RegionSettingsScreen.title' => 'ملک یا علاقہ',
			'RegionSettingsScreen.Regions' => 'ٹپ: براہ کرم اپنے موجودہ ملک یا علاقے کو صحیح طریقے سے ترتیب دیں، ورنہ یہ نیٹ ورک ڈائیورژن کے مسائل کا باعث بن سکتا ہے',
			'ServerSelectScreen.title' => 'سرور منتخب کریں',
			'ServerSelectScreen.autoSelectServer' => 'خود بخود سب سے کم تاخیر والا سرور منتخب کریں',
			'ServerSelectScreen.recentUse' => 'حالیہ استعمال شدہ',
			'ServerSelectScreen.myFav' => 'میرے پسندیدہ',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'منتخب کردہ سرور ایک مقامی پتہ ہے اور ہو سکتا ہے کہ ٹھیک سے کام نہ کرے:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'منتخب کردہ سرور ایک IPv6 پتہ ہے اور اسے [IPv6 فعال کریں] کی ضرورت ہے',
			'ServerSelectScreen.selectDisabled' => 'یہ سرور غیر فعال کر دیا گیا ہے',
			'ServerSelectScreen.error404' => 'تاخیر کا پتہ لگانے میں ایک غلطی ہوئی، براہ کرم چیک کریں کہ آیا اسی مواد کے ساتھ کوئی کنفیگریشن موجود ہے',
			'SettingsScreen.getTranffic' => 'ٹریفک حاصل کریں',
			'SettingsScreen.tutorial' => 'ٹیوٹوریل',
			'SettingsScreen.commonlyUsedRulesets' => 'عام طور پر استعمال ہونے والے رول سیٹس',
			'SettingsScreen.htmlBoard' => 'آن لائن پینل',
			'SettingsScreen.dnsLeakDetection' => 'DNS لیک کا پتہ لگانا',
			'SettingsScreen.proxyLeakDetection' => 'پراکسی لیک کا پتہ لگانا',
			'SettingsScreen.speedTest' => 'سپیڈ ٹیسٹ',
			'SettingsScreen.rulesetDirectDownlad' => 'رول سیٹ براہ راست ڈاؤن لوڈ',
			'SettingsScreen.hideUnusedDiversionGroup' => 'غیر استعمال شدہ ڈائیورژن رولز چھپائیں',
			'SettingsScreen.disableISPDiversionGroup' => '[${_root.meta.isp}] کے [${_root.meta.diversionRules}] کو غیر فعال کریں',
			'SettingsScreen.portSettingRule' => 'رول پر مبنی',
			'SettingsScreen.portSettingDirectAll' => 'تمام براہ راست',
			'SettingsScreen.portSettingProxyAll' => 'تمام پراکسی',
			'SettingsScreen.portSettingControl' => 'کنٹرول اور سنکرونائزیشن',
			'SettingsScreen.portSettingCluster' => 'کلسٹر سروس',
			'SettingsScreen.modifyPort' => 'پورٹ تبدیل کریں',
			'SettingsScreen.modifyPortOccupied' => 'پورٹ مصروف ہے، براہ کرم کوئی اور پورٹ استعمال کریں',
			'SettingsScreen.ipStrategyTips' => 'فعال کرنے سے پہلے، براہ کرم تصدیق کریں کہ آپ کا نیٹ ورک IPv6 کو سپورٹ کرتا ہے، ورنہ کچھ ٹریفک عام طور پر قابل رسائی نہیں ہوگی۔',
			'SettingsScreen.tunAppendHttpProxy' => 'VPN میں HTTP پراکسی شامل کریں',
			'SettingsScreen.tunAppendHttpProxyTips' => 'کچھ ایپس ورچوئل NIC ڈیوائس کو نظر انداز کر دیں گی اور براہ راست HTTP پراکسی سے منسلک ہوں گی',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'وہ ڈومینز جنہیں HTTP پراکسی کو نظر انداز کرنے کی اجازت ہے',
			'SettingsScreen.dnsEnableRule' => 'DNS ڈائیورژن رولز فعال کریں',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] ریزولیوشن چینل',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] پر ECS فعال کریں',
			'SettingsScreen.dnsTestDomain' => 'ٹیسٹ ڈومین',
			'SettingsScreen.dnsTestDomainInvalid' => 'غلط ڈومین',
			'SettingsScreen.dnsTypeOutbound' => 'پراکسی سرور',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS سرور',
			'SettingsScreen.dnsEnableRuleTips' => 'فعال کرنے کے بعد، ڈومین نام ڈائیورژن رولز کے مطابق ریزولیوشن کے لیے متعلقہ DNS سرور کا انتخاب کرے گا',
			'SettingsScreen.dnsEnableFakeIpTips' => 'FakeIP فعال کرنے کے بعد، اگر آپ VPN منقطع کرتے ہیں تو آپ کی ایپ کو دوبارہ شروع کرنے کی ضرورت پڑ سکتی ہے؛ اس خصوصیت کے لیے [TUN موڈ] فعال ہونا ضروری ہے',
			'SettingsScreen.dnsTypeOutboundTips' => '[${_root.SettingsScreen.dnsTypeOutbound}] کے لیے ڈومین نام کی ریزولیوشن',
			'SettingsScreen.dnsTypeDirectTips' => '[${_root.meta.trafficDirect}] کے لیے ڈومین نام کی ریزولیوشن',
			'SettingsScreen.dnsTypeProxyTips' => '[${_root.meta.trafficProxy}] کے لیے ڈومین نام کی ریزولیوشن',
			'SettingsScreen.dnsTypeResolverTips' => '[${_root.SettingsScreen.dnsTypeResolver}] کے لیے ڈومین نام کی ریزولیوشن',
			'SettingsScreen.dnsAutoSetServer' => 'خود بخود سرور ترتیب دیں',
			'SettingsScreen.dnsResetServer' => 'سرور ری سیٹ کریں',
			'SettingsScreen.inboundDomainResolve' => 'آنے والے ڈومین ناموں کو حل کریں',
			'SettingsScreen.privateDirect' => 'نجی نیٹ ورک براہ راست کنکشن',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'کچھ ڈومین نام جو ڈائیورژن رولز کے ساتھ کنفیگر نہیں کیے گئے ہیں، انہیں IP پر مبنی ڈائیورژن رولز سے ٹکرانے سے پہلے حل کرنے کی ضرورت ہے؛ یہ خصوصیت پراکسی پورٹ [${p}] پر آنے والی درخواستوں کو متاثر کرتی ہے',
			'SettingsScreen.useRomoteRes' => 'ریموٹ وسائل استعمال کریں',
			'SettingsScreen.autoAppendRegion' => 'بنیادی رولز خود بخود شامل کریں',
			'SettingsScreen.autoSelect' => 'خودکار انتخاب',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => '[Front/Chain] پراکسی سرورز کو نظر انداز کریں',
			'SettingsScreen.autoSelectServerInterval' => 'تاخیر کی جانچ کا وقفہ',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'موجودہ سرور کی صحت کی جانچ کا وقفہ',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'نیٹ ورک تبدیل ہونے پر دوبارہ تاخیر چیک کریں',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'دستی تاخیر کی جانچ کے بعد موجودہ سرور کو اپ ڈیٹ کریں',
			'SettingsScreen.autoSelectServerIntervalTips' => 'وقت کا وقفہ جتنا کم ہوگا، سرور کی تاخیر کا ڈیٹا اتنا ہی بروقت اپ ڈیٹ ہوگا، جو زیادہ وسائل استعمال کرے گا اور زیادہ بجلی خرچ کرے گا',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'اگر جانچ ناکام ہو جاتی ہے تو سرور تبدیل کر دیا جاتا ہے؛ اگر سرور تبدیل کرتے وقت کوئی دستیاب سرور نہیں ملتا ہے تو گروپ دوبارہ تاخیر چیک کرے گا',
			'SettingsScreen.autoSelectServerFavFirst' => '[میرے پسندیدہ] کو ترجیح دیں',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'اگر [میرے پسندیدہ] کی فہرست خالی نہیں ہے تو [میرے پسندیدہ] کے سرورز استعمال کریں',
			'SettingsScreen.autoSelectServerFilter' => 'غلط سرورز فلٹر کریں',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'ناکام ہونے والی سرور تاخیر کی جانچ کو فلٹر کر دیا جائے گا؛ اگر فلٹر کرنے کے بعد کوئی سرور دستیاب نہیں ہے تو اس کے بجائے پہلے [${p}] سرورز استعمال کیے جائیں گے',
			'SettingsScreen.autoSelectServerLimitedNum' => 'سرورز کی زیادہ سے زیادہ تعداد',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'اس تعداد سے تجاوز کرنے والے سرورز فلٹر کر دیے جائیں گے',
			'SettingsScreen.numInvalid' => 'غلط نمبر',
			'SettingsScreen.hideInvalidServer' => 'غلط سرورز چھپائیں',
			'SettingsScreen.sortServer' => 'سرورز کی ترتیب',
			'SettingsScreen.sortServerTips' => 'تاخیر کے مطابق کم سے زیادہ تک ترتیب دیں',
			'SettingsScreen.selectServerHideRecommand' => '[تجویز کردہ] چھپائیں',
			'SettingsScreen.selectServerHideRecent' => '[حالیہ استعمال شدہ] چھپائیں',
			'SettingsScreen.selectServerHideFav' => '[میرے پسندیدہ] چھپائیں',
			'SettingsScreen.homeScreen' => 'ہوم اسکرین',
			'SettingsScreen.theme' => 'تھیم',
			'SettingsScreen.widgetsAlpha' => 'ویجیٹس الفا',
			'SettingsScreen.widgetsEmpty' => 'کوئی ویجیٹ دستیاب نہیں ہے',
			'SettingsScreen.backgroundImage' => 'پس منظر کی تصویر',
			'SettingsScreen.myLink' => 'شارٹ کٹ لنک',
			'SettingsScreen.autoConnectAfterLaunch' => 'لانچ کے بعد خودکار کنکشن',
			'SettingsScreen.autoConnectAtBoot' => 'سسٹم بوٹ کے بعد خودکار کنکشن',
			'SettingsScreen.autoConnectAtBootTips' => 'سسٹم سپورٹ ضروری ہے؛ کچھ سسٹمز کو [آٹو اسٹارٹ] فعال کرنے کی بھی ضرورت پڑ سکتی ہے۔',
			'SettingsScreen.hideAfterLaunch' => 'لانچ کے بعد ونڈو چھپائیں',
			'SettingsScreen.autoSetSystemProxy' => 'منسلک ہونے پر خود بخود سسٹم پراکسی ترتیب دیں',
			'SettingsScreen.bypassSystemProxy' => 'وہ ڈومین نام جنہیں سسٹم پراکسی کو نظر انداز کرنے کی اجازت ہے',
			'SettingsScreen.disconnectWhenQuit' => 'ایپ چھوڑنے پر منقطع کریں',
			'SettingsScreen.autoAddToFirewall' => 'خود بخود فائر وال رولز شامل کریں',
			'SettingsScreen.excludeFromRecent' => '[حالیہ کاموں] سے چھپائیں',
			'SettingsScreen.wakeLock' => 'ویک لاک',
			'SettingsScreen.hideVpn' => 'VPN آئیکن چھپائیں',
			'SettingsScreen.hideVpnTips' => 'IPv6 فعال کرنے سے یہ خصوصیت ناکام ہو جائے گی',
			'SettingsScreen.allowBypass' => 'ایپس کو VPN نظر انداز کرنے کی اجازت دیں',
			'SettingsScreen.importSuccess' => 'درآمد کامیاب رہی',
			'SettingsScreen.rewriteConfirm' => 'یہ فائل موجودہ مقامی کنفیگریشن کو اوور رائٹ کر دے گی۔ کیا آپ جاری رکھنا چاہتے ہیں؟',
			'SettingsScreen.mergePerapp' => 'مقامی [${_root.PerAppAndroidScreen.title}] فہرستوں کو ضم کریں',
			'SettingsScreen.networkShare' => 'نیٹ ورک شیئر',
			'SettingsScreen.frontProxy' => 'Front/Chain پراکسی',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'ڈیٹا->Front/Chain پراکسی سرور [متعدد پراکسی سرورز: اوپر سے نیچے]->پراکسی سرور [${p}]->ٹارگٹ سرور',
			'SettingsScreen.allowOtherHostsConnect' => 'دوسروں کو منسلک ہونے کی اجازت دیں',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'سسٹم کی حدود کی وجہ سے، اسے فعال کرنے کے بعد، اس ڈیوائس پر وہ ایپلی کیشنز جو نیٹ ورک تک رسائی کے لیے http استعمال کرتی ہیں، نیٹ ورک سے ٹھیک سے منسلک نہیں ہو سکیں گی۔',
			'SettingsScreen.tunAutoRoute' => 'Auto Route',
			'SettingsScreen.tunAutoRedirect' => 'Auto Redirect',
			'SettingsScreen.tunStrictRoute' => 'Strict Route',
			'SettingsScreen.tunStrictRouteTips' => 'اگر شیئر آن کرنے کے بعد دوسرے اس ڈیوائس تک نہیں پہنچ پا رہے ہیں تو براہ کرم اس سوئچ کو آف کرنے کی کوشش کریں',
			'SettingsScreen.loopbackAddress' => 'لوپ بیک پتہ',
			'SettingsScreen.enableCluster' => 'Socks/Http پراکسی کلسٹر فعال کریں',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'دوسروں کو کلسٹر سے جڑنے کی اجازت دیں',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'پراکسی کلسٹر کی توثیق',
			'SettingsScreen.tunMode' => 'TUN موڈ',
			'SettingsScreen.tuni4Address' => 'IP پتہ',
			'SettingsScreen.tunModeTips' => 'TUN موڈ سسٹم کی تمام ٹریفک کو سنبھال لے گا [اس موڈ میں، آپ سسٹم پراکسی کو غیر فعال چھوڑ سکتے ہیں]',
			'SettingsScreen.tunModeRunAsAdmin' => 'TUN موڈ کے لیے سسٹم ایڈمنسٹریٹر کی اجازت درکار ہوتی ہے، براہ کرم ایپ کو ایڈمنسٹریٹر کے طور پر دوبارہ شروع کریں',
			'SettingsScreen.tunStack' => 'اسٹیک',
			'SettingsScreen.tunHijackTips' => 'بند کرنے کے بعد، TUN سے DNS درخواستیں براہ راست متعلقہ DNS سرور پر بھیج دی جائیں گی',
			'SettingsScreen.launchAtStartup' => 'اسٹارٹ اپ پر لانچ کریں',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'سسٹم صارف تبدیل کرتے وقت ایپ چھوڑیں',
			'SettingsScreen.handleScheme' => 'سسٹم اسکیم کال',
			'SettingsScreen.portableMode' => 'پورٹیبل موڈ',
			'SettingsScreen.portableModeDisableTips' => 'اگر آپ کو پورٹیبل موڈ چھوڑنے کی ضرورت ہے تو براہ کرم [karing] سے باہر نکلیں اور [karing.exe] جیسی ڈائریکٹری میں [profiles] فولڈر کو دستی طور پر حذف کر دیں',
			'SettingsScreen.accessibility' => 'رسائی',
			'SettingsScreen.handleKaringScheme' => 'karing:// کال کو سنبھالیں',
			'SettingsScreen.handleClashScheme' => 'clash:// کال کو سنبھالیں',
			'SettingsScreen.handleSingboxScheme' => 'sing-box:// کال کو سنبھالیں',
			'SettingsScreen.alwayOnVPN' => 'ہمیشہ آن کنکشن',
			'SettingsScreen.disconnectAfterSleep' => 'سسٹم سلیپ کے بعد منقطع کریں',
			'SettingsScreen.removeSystemVPNConfig' => 'سسٹم VPN کنفیگریشن حذف کریں',
			'SettingsScreen.timeConnectOrDisconnect' => 'شیڈول کے مطابق کنیکٹ/منقطع',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN کا منسلک ہونا ضروری ہے تاکہ وہ موثر ہو؛ آن کرنے کے بعد، [آٹو سلیپ] غیر فعال ہو جائے گا',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'کنیکٹ/منقطع وقفہ ${p} منٹ سے کم نہیں ہو سکتا',
			'SettingsScreen.disableFontScaler' => 'فونٹ اسکیلنگ غیر فعال کریں (دوبارہ شروع کرنا ضروری ہے)',
			'SettingsScreen.autoOrientation' => 'اسکرین کے ساتھ گھمائیں',
			'SettingsScreen.restartTakesEffect' => 'دوبارہ شروع کرنا موثر ہوتا ہے',
			'SettingsScreen.reconnectTakesEffect' => 'دوبارہ کنکشن موثر ہوتا ہے',
			'SettingsScreen.resetSettings' => 'ترتیبات ری سیٹ کریں',
			'SettingsScreen.cleanCache' => 'کیشے صاف کریں',
			'SettingsScreen.cleanCacheDone' => 'صفائی مکمل ہوئی',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'ورژن ${p} اپ ڈیٹ کریں',
			'SettingsScreen.follow' => 'ہمیں فالو کریں',
			'SettingsScreen.contactUs' => 'ہم سے رابطہ کریں',
			'SettingsScreen.supportUs' => 'ہماری حمایت کریں',
			'SettingsScreen.rateInApp' => 'ہمیں ریٹ کریں',
			'SettingsScreen.rateInAppStore' => 'AppStore پر ہمیں ریٹ کریں',
			'UserAgreementScreen.privacyFirst' => 'آپ کی رازداری سب سے پہلے آتی ہے',
			'UserAgreementScreen.agreeAndContinue' => 'قبول کریں اور جاری رکھیں',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'نیا ورژن [${p}] تیار ہے',
			'VersionUpdateScreen.update' => 'اپ ڈیٹ کرنے کے لیے دوبارہ شروع کریں',
			'VersionUpdateScreen.cancel' => 'ابھی نہیں',
			'CommonWidget.diableAlwayOnVPN' => 'اگر [ہمیشہ آن VPN] آن ہے تو براہ کرم [ہمیشہ آن VPN] آف کریں اور دوبارہ منسلک ہونے کی کوشش کریں',
			'CommonWidget.resetPort' => 'براہ کرم پورٹ کو کسی دوسرے دستیاب پورٹ میں تبدیل کریں یا اس ایپلی کیشن کو بند کریں جو پورٹ استعمال کر رہی ہے۔',
			'main.tray.menuOpen' => 'کھولیں',
			'main.tray.menuExit' => 'باہر نکلیں',
			'meta.enable' => 'فعال کریں',
			'meta.disable' => 'غیر فعال کریں',
			'meta.bydefault' => 'ڈیفالٹ',
			'meta.filter' => 'فلٹر',
			'meta.filterMethod' => 'فلٹر کا طریقہ',
			'meta.include' => 'شامل کریں',
			'meta.exclude' => 'خارج کریں',
			'meta.all' => 'تمام',
			'meta.prefer' => 'ترجیح دیں',
			'meta.only' => 'صرف',
			'meta.open' => 'کھولیں',
			'meta.close' => 'بند کریں',
			'meta.quit' => 'باہر نکلیں',
			'meta.add' => 'شامل کریں',
			'meta.addSuccess' => 'کامیابی سے شامل ہو گیا',
			'meta.addFailed' => ({required Object p}) => 'شامل کرنے میں ناکامی:${p}',
			'meta.remove' => 'ہٹائیں',
			'meta.removeConfirm' => 'کیا آپ واقعی حذف کرنا چاہتے ہیں؟',
			'meta.edit' => 'ترمیم کریں',
			'meta.view' => 'دیکھیں',
			'meta.more' => 'مزید',
			'meta.tips' => 'معلومات',
			'meta.copy' => 'کاپی کریں',
			'meta.paste' => 'چسپاں کریں۔',
			'meta.cut' => 'کاٹنا',
			'meta.save' => 'محفوظ کریں',
			'meta.ok' => 'ٹھیک ہے',
			'meta.cancel' => 'منسوخ کریں',
			'meta.feedback' => 'فیڈ بیک',
			'meta.feedbackContent' => 'فیڈ بیک کا مواد',
			'meta.feedbackContentHit' => 'ضروری، 500 حروف تک',
			'meta.feedbackContentCannotEmpty' => 'فیڈ بیک کا مواد خالی نہیں ہو سکتا',
			'meta.faq' => 'FAQ',
			'meta.htmlTools' => 'ایچ ٹی ایم ایل ٹول سیٹ',
			'meta.download' => 'ڈاؤن لوڈ',
			'meta.upload' => 'اپ لوڈ',
			'meta.downloadSpeed' => 'ڈاؤن لوڈ سپیڈ',
			'meta.uploadSpeed' => 'اپ لوڈ سپیڈ',
			'meta.loading' => 'لوڈ ہو رہا ہے...',
			'meta.convert' => 'تبدیل کریں',
			'meta.check' => 'چیک کریں',
			'meta.detect' => 'پتہ لگائیں',
			'meta.cache' => 'کیشے',
			'meta.days' => 'دن',
			'meta.hours' => 'گھنٹے',
			'meta.minutes' => 'منٹ',
			'meta.seconds' => 'سیکنڈ',
			'meta.milliseconds' => 'ملی سیکنڈ',
			'meta.tolerance' => 'رواداری',
			'meta.dateTimePeriod' => 'وقت کی مدت',
			'meta.protocol' => 'پروٹوکول',
			'meta.search' => 'تلاش کریں',
			'meta.custom' => 'کسٹم',
			'meta.inbound' => 'ان باؤنڈ',
			'meta.outbound' => 'آؤٹ باؤنڈ',
			'meta.destination' => 'منزل',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'منسلک کریں',
			'meta.disconnect' => 'منقطع کریں',
			'meta.reconnect' => 'دوبارہ منسلک کریں',
			'meta.connected' => 'منسلک',
			'meta.disconnected' => 'منقطع',
			'meta.connecting' => 'منسلک ہو رہا ہے',
			'meta.connectTimeout' => 'کنکشن ٹائم آؤٹ',
			'meta.timeout' => 'ٹائم آؤٹ',
			'meta.timeoutDuration' => 'ٹائم آؤٹ کی مدت',
			'meta.runDuration' => 'رن کی مدت',
			'meta.latency' => 'تاخیر',
			'meta.latencyTest' => 'تاخیر کی جانچ',
			'meta.language' => 'زبان',
			'meta.next' => 'اگلا',
			'meta.done' => 'ہو گیا',
			'meta.apply' => 'لاگو کریں',
			'meta.refresh' => 'ری فریش کریں',
			'meta.retry' => 'دوبارہ کوشش کریں؟',
			'meta.update' => 'اپ ڈیٹ',
			'meta.updateInterval' => 'اپ ڈیٹ کا وقفہ',
			'meta.updateInterval5mTips' => 'کم از کم: 5 منٹ',
			'meta.updateFailed' => ({required Object p}) => 'اپ ڈیٹ ناکام رہی:${p}',
			'meta.samplingUnit' => 'نمونہ لینے کے وقت کی اکائی',
			'meta.queryResultCount' => 'استفسار کے نتائج کی تعداد',
			'meta.queryLimit' => ({required Object p}) => '${p} ڈیٹا تک دکھائیں',
			'meta.none' => 'کوئی نہیں',
			'meta.start' => 'شروع کریں',
			'meta.pause' => 'وقفہ',
			'meta.reset' => 'ری سیٹ',
			'meta.submit' => 'جمع کرائیں',
			'meta.user' => 'صارف',
			'meta.account' => 'اکاؤنٹ',
			'meta.password' => 'پاس ورڈ',
			'meta.decryptPassword' => 'ڈی کرپٹ پاس ورڈ',
			'meta.required' => 'ضروری',
			'meta.type' => 'قسم',
			'meta.path' => 'راستہ',
			'meta.local' => 'مقامی',
			'meta.remote' => 'ریموٹ',
			'meta.other' => 'دیگر',
			'meta.dns' => 'DNS',
			'meta.url' => 'یو آر ایل',
			'meta.urlInvalid' => 'غلط یو آر ایل',
			'meta.urlCannotEmpty' => 'لنک خالی نہیں ہو سکتا',
			'meta.urlTooLong' => 'یو آر ایل بہت طویل ہے (>8182)',
			'meta.copyUrl' => 'لنک کاپی کریں',
			'meta.openUrl' => 'لنک کھولیں',
			'meta.shareUrl' => 'لنک شیئر کریں',
			'meta.speedTestUrl' => 'سپیڈ ٹیسٹ یو آر ایل',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'جامد IP',
			'meta.staticIPTips' => 'آپ کو [TUN HijackDNS] یا [${_root.SettingsScreen.inboundDomainResolve}] فعال کرنے کی ضرورت ہے۔',
			'meta.isp' => 'VPN فراہم کنندہ',
			'meta.domainSuffix' => 'ڈومین لاحقہ',
			'meta.domain' => 'ڈومین',
			'meta.domainKeyword' => 'ڈومین کلیدی لفظ',
			'meta.domainRegex' => 'ڈومین ریجیکس',
			'meta.ip' => 'IP',
			'meta.port' => 'پورٹ',
			'meta.portRange' => 'پورٹ کی حد',
			'meta.appPackage' => 'ایپ پیکیج آئی ڈی',
			'meta.processName' => 'عمل کا نام',
			'meta.processPath' => 'عمل کا راستہ',
			'meta.processDir' => 'عمل کی ڈائریکٹری',
			'meta.systemProxy' => 'سسٹم پراکسی',
			'meta.percentage' => 'فیصد',
			'meta.statistics' => 'اعداد و شمار',
			'meta.statisticsAndAnalysis' => 'اعداد و شمار اور تجزیہ',
			'meta.statisticsDataDesensitize' => 'ڈیٹا ڈی سینسیٹائزیشن',
			'meta.statisticsDataDesensitizeTips' => 'عمل/پیکیج آئی ڈی/ٹارگٹ ڈومین نام/ٹارگٹ IP وغیرہ کو * سے بدل دیا جائے گا اور ڈی سینسیٹائزیشن کے بعد محفوظ کیا جائے گا',
			'meta.records' => 'ریکارڈز',
			'meta.requestRecords' => 'درخواست کے ریکارڈز',
			'meta.netInterfaces' => 'نیٹ ورک انٹرفیس',
			'meta.netSpeed' => 'رفتار',
			'meta.memoryTrendChart' => 'میموری ٹرینڈ چارٹ',
			'meta.goroutinesTrendChart' => 'GoRoutines ٹرینڈ چارٹ',
			'meta.trafficTrendChart' => 'ٹریفک ٹرینڈ چارٹ',
			'meta.trafficDistributionChart' => 'ٹریفک کی تقسیم کا چارٹ',
			'meta.connectionChart' => 'کنکشن ٹرینڈ چارٹ',
			'meta.memoryChart' => 'میموری ٹرینڈ چارٹ',
			'meta.trafficStatistics' => 'ٹریفک کے اعداد و شمار',
			'meta.traffic' => 'ٹریفک',
			'meta.trafficTotal' => 'کل ٹریفک',
			'meta.trafficProxy' => 'پراکسی ٹریفک',
			'meta.trafficDirect' => 'براہ راست ٹریفک',
			'meta.website' => 'ویب سائٹ',
			'meta.memory' => 'میموری',
			'meta.outboundMode' => 'آؤٹ باؤنڈ موڈ',
			'meta.rule' => 'رول',
			'meta.global' => 'عالمی',
			'meta.qrcode' => 'QR کوڈ',
			'meta.qrcodeTooLong' => 'متن دکھانے کے لیے بہت طویل ہے',
			'meta.qrcodeShare' => 'QR کوڈ شیئر کریں',
			'meta.textToQrcode' => 'متن سے QR کوڈ',
			'meta.qrcodeScan' => 'QR کوڈ اسکین کریں',
			'meta.qrcodeScanResult' => 'اسکین کا نتیجہ',
			'meta.qrcodeScanFromImage' => 'تصویر سے اسکین کریں',
			'meta.qrcodeScanResultFailed' => 'تصویر کا تجزیہ کرنے میں ناکامی، براہ کرم یقینی بنائیں کہ اسکرین شاٹ ایک درست QR کوڈ ہے',
			'meta.qrcodeScanResultEmpty' => 'اسکین کا نتیجہ خالی ہے',
			'meta.screenshot' => 'اسکرین شاٹ',
			'meta.backupAndSync' => 'بیک اپ اور سنکرونائزیشن',
			'meta.autoBackup' => 'خودکار بیک اپ',
			'meta.noProfileGotAutoBackup' => 'اگر [${_root.meta.myProfiles}] جیسا ڈیٹا ضائع ہو جاتا ہے تو آپ اسے [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] یا دیگر بیک اپ ذرائع (جیسے iCloud یا Webdav وغیرہ) سے بحال کر سکتے ہیں',
			'meta.autoBackupAddProfile' => 'پروفائل شامل کرنے کے بعد',
			'meta.autoBackupRemoveProfile' => 'پروفائل ہٹانے کے بعد',
			'meta.profile' => 'پروفائل',
			'meta.currentProfile' => 'موجودہ پروفائل',
			'meta.importAndExport' => 'درآمد اور برآمد',
			'meta.import' => 'درآمد کریں',
			'meta.importFromUrl' => 'یو آر ایل سے درآمد کریں',
			'meta.export' => 'برآمد کریں',
			'meta.send' => 'بھیجیں',
			'meta.receive' => 'وصول کریں',
			'meta.sendConfirm' => 'بھیجنے کی تصدیق کریں؟',
			'meta.termOfUse' => 'استعمال کی شرائط',
			'meta.privacyPolicy' => 'رازداری اور پالیسی',
			'meta.about' => 'کے بارے میں',
			'meta.name' => 'نام',
			'meta.version' => 'ورژن',
			'meta.notice' => 'نوٹس',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'عمل:${p}\nوجہ:${p1}',
			'meta.sort' => 'دوبارہ ترتیب دیں',
			'meta.novice' => 'نوآموز موڈ',
			'meta.willCompleteAfterRebootInstall' => 'سسٹم ایکسٹینشن کی انسٹالیشن مکمل کرنے کے لیے براہ کرم اپنے ڈیوائس کو دوبارہ شروع کریں',
			'meta.willCompleteAfterRebootUninstall' => 'سسٹم ایکسٹینشن کی ان انسٹالیشن مکمل کرنے کے لیے براہ کرم اپنے ڈیوائس کو دوبارہ شروع کریں',
			'meta.requestNeedsUserApproval' => '1. براہ کرم Karing کو [سسٹم کی ترتیبات]-[رازداری اور سیکیورٹی] میں سسٹم ایکسٹینشن انسٹال کرنے کی [اجازت دیں]\n2. [سسٹم کی ترتیبات]-[عام]-[لاگ ان آئٹمز ایکسٹینشنز]-[نیٹ ورک ایکسٹینشن] [karingServiceSE] فعال کریں\nمکمل ہونے کے بعد دوبارہ منسلک کریں',
			'meta.FullDiskAccessPermissionRequired' => 'براہ کرم [سسٹم کی ترتیبات]-[رازداری اور سیکیورٹی]-[مکمل ڈسک رسائی کی اجازت] میں [karingServiceSE] کی اجازت فعال کریں اور دوبارہ منسلک کریں',
			'meta.tvMode' => 'TV موڈ',
			'meta.recommended' => 'تجویز کردہ',
			'meta.innerError' => ({required Object p}) => 'اندرونی غلطی:${p}',
			'meta.logicOperation' => 'تاریکی عمل',
			'meta.share' => 'شیئر کریں',
			'meta.candidateWord' => 'امیدوار الفاظ',
			'meta.keywordOrRegx' => 'کلیدی الفاظ/باقاعدہ',
			'meta.importFromClipboard' => 'کلپ بورڈ سے درآمد کریں',
			'meta.exportToClipboard' => 'کلپ بورڈ پر برآمد کریں',
			'meta.server' => 'سرور',
			'meta.ads' => 'اشتہارات',
			'meta.adsRemove' => 'اشتہارات ہٹائیں',
			'meta.donate' => 'عطیہ کریں',
			'meta.diversion' => 'ڈائیورژن',
			'meta.diversionRules' => 'ڈائیورژن رولز',
			'meta.diversionCustomGroup' => 'کسٹم ڈائیورژن گروپ',
			'meta.urlTestCustomGroup' => 'کسٹم آٹو سلیکشن',
			'meta.setting' => 'ترتیبات',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN سنکرونائزیشن',
			'meta.lanSyncNotQuitTips' => 'سنکرونائزیشن مکمل ہونے سے پہلے اس انٹرفیس کو نہ چھوڑیں',
			'meta.deviceNoSpace' => 'ڈسک کی جگہ ناکافی ہے',
			'meta.hideSystemApp' => 'سسٹم ایپس چھپائیں',
			'meta.hideAppIcon' => 'ایپ آئیکنز چھپائیں',
			'meta.hideDockIcon' => 'ڈاک آئیکن چھپائیں',
			'meta.remark' => 'ریمارک',
			'meta.remarkExist' => 'ریمارک پہلے سے موجود ہے، براہ کرم کوئی اور نام استعمال کریں',
			'meta.remarkCannotEmpty' => 'ریمارکس خالی نہیں ہو سکتے',
			'meta.remarkTooLong' => '32 حروف تک کے ریمارکس',
			'meta.openDir' => 'فائل ڈائریکٹری کھولیں',
			'meta.fileChoose' => 'فائل منتخب کریں',
			'meta.filePathCannotEmpty' => 'فائل کا راستہ خالی نہیں ہو سکتا',
			'meta.fileNotExist' => ({required Object p}) => 'فائل موجود نہیں ہے:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'غلط فائل کی قسم:${p}',
			'meta.uwpExemption' => 'UWP نیٹ ورک تنہائی کے استثنیٰ',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'پروفائل حاصل کریں',
			'meta.addProfile' => 'پروفائل شامل کریں',
			'meta.myProfiles' => 'میری پروفائلز',
			'meta.profileEdit' => 'پروفائل میں ترمیم کریں',
			'meta.profileEditUrlExist' => 'یو آر ایل پہلے سے موجود ہے، براہ کرم کوئی اور یو آر ایل استعمال کریں',
			'meta.profileEditReloadAfterProfileUpdate' => 'پروفائل اپ ڈیٹ کے بعد دوبارہ لوڈ کریں',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'خودکار پروفائل اپ ڈیٹ کے بعد تاخیر کے ٹیسٹ شروع کریں',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN منسلک ہونا چاہیے اور [پروفائل اپ ڈیٹ کے بعد دوبارہ لوڈ کریں] فعال ہونا چاہیے',
			'meta.profileEditTestLatencyAutoRemove' => 'تاخیر کے ٹیسٹ میں ناکام ہونے والے سرورز کو خود بخود ہٹا دیں',
			'meta.profileEditTestLatencyAutoRemoveTips' => '3 بار تک کوشش کریں',
			'meta.profileImport' => 'پروفائل فائل درآمد کریں',
			'meta.profileAddUrlOrContent' => 'پروفائل لنک شامل کریں',
			'meta.profileExists' => 'پروفائل پہلے سے موجود ہے، براہ کرم اسے بار بار شامل نہ کریں',
			'meta.profileUrlOrContent' => 'پروفائل لنک/مواد',
			'meta.profileUrlOrContentHit' => 'پروفائل لنک/مواد [ضروری] (Clash, V2ray (بیچ سپورٹڈ), Stash, Karing, Sing-box, Shadowsocks, Sub پروفائل لنکس کو سپورٹ کرتا ہے)',
			'meta.profileUrlOrContentCannotEmpty' => 'پروفائل لنک خالی نہیں ہو سکتا',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'فارمیٹ غلط ہے، براہ کرم اسے درست کریں اور دوبارہ شامل کریں:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'شامل کرنے میں ناکامی: ${p}، براہ کرم [UserAgent] کو تبدیل کرنے کی کوشش کریں اور دوبارہ کوشش کریں، یا کنفیگریشن لنک کھولنے کے لیے ڈیوائس کا بلٹ ان براؤزر استعمال کریں اور براؤزر کے ذریعے ڈاؤن لوڈ کی گئی کنفیگریشن فائل کو اس ایپلی کیشن میں درآمد کریں',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'شامل کرنے میں ناکامی: ${p}، براہ کرم پراکسی آن کریں یا موجودہ پراکسی نوڈ کو تبدیل کریں اور دوبارہ کوشش کریں',
			'meta.profileAddParseFailed' => 'پروفائل کا تجزیہ کرنے میں ناکامی',
			'meta.profileAddNoServerAvaliable' => 'کوئی سرور دستیاب نہیں ہے، یقینی بنائیں کہ پروفائل لنک یا پروفائل فائل درست ہے؛ اگر آپ کا پروفائل GitHub سے ہے تو براہ کرم صفحہ پر [Raw] بٹن کے ذریعے لنک حاصل کریں',
			'meta.profileAddWrapSuccess' => 'پروفائل کامیابی سے تیار ہو گیا، براہ کرم دیکھنے کے لیے [${_root.meta.myProfiles}] پر جائیں',
			'diversionRulesKeep' => '[${_root.meta.isp}] کے [${_root.meta.diversionRules}] کو برقرار رکھیں',
			'diversionCustomGroupPreset' => 'پری سیٹ [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'نوٹ: فعال کردہ آئٹمز [${_root.meta.diversionCustomGroup}] اور [${_root.meta.diversionRules}] میں شامل/اوور رائٹ کر دیے جائیں گے',
			'diversionCustomGroupAddTips' => 'نوٹ: شامل کرنے کے بعد، آپ کو ترتیب کو دستی طور پر ایڈجسٹ کرنے کی ضرورت پڑ سکتی ہے، ورنہ نیا شامل کردہ ڈائیورژن موثر نہیں ہو سکتا ہے',
			'rulesetEnableTips' => 'ٹپ: اختیارات آن کرنے کے بعد، براہ کرم متعلقہ رولز ترتیب دینے کے لیے [${_root.meta.diversionRules}] پر جائیں، ورنہ وہ موثر نہیں ہوں گے',
			'ispUserAgentTips' => '[${_root.meta.isp}] [HTTP] درخواست میں [UserAgent] کی بنیاد پر مختلف سبسکرپشن اقسام کا ڈیٹا بھیجے گا',
			'ispDiversionTips' => '[${_root.meta.isp}] ٹریفک ڈائیورژن رولز فراہم کرتا ہے؛ [V2Ray] قسم کی سبسکرپشنز ٹریفک ڈائیورژن رولز کو سپورٹ نہیں کرتی ہیں',
			'isp.bind' => '[${_root.meta.isp}] سے منسلک کریں ',
			'isp.unbind' => ({required Object p}) => 'علیحدہ کریں[${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'فالو کریں[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] غلط یا ختم ہو گیا',
			'permission.camera' => 'کیمرہ',
			'permission.screen' => 'اسکرین ریکارڈنگ',
			'permission.appQuery' => 'ایپ لسٹ حاصل کریں',
			'permission.request' => ({required Object p}) => '[${p}] اجازت آن کریں',
			'permission.requestNeed' => ({required Object p}) => 'براہ کرم [${p}] اجازت آن کریں',
			'tls.insecure' => 'سرٹیفکیٹ کی تصدیق نظر انداز کریں',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'TLS فریگمنٹ فعال کریں',
			'tls.fragmentSize' => 'TLS فریگمنٹ سائز',
			'tls.fragmentSleep' => 'TLS فریگمنٹ سلیپ',
			_ => null,
		} ?? switch (path) {
			'tls.mixedCaseSNIEnable' => 'TLS مکسڈ کیس SNI فعال کریں',
			'tls.paddingEnable' => 'TLS پیڈنگ فعال کریں',
			'tls.paddingSize' => 'TLS پیڈنگ سائز',
			'outboundRuleMode.currentSelected' => 'فی الحال منتخب شدہ',
			'outboundRuleMode.urltest' => 'خودکار انتخاب',
			'outboundRuleMode.direct' => 'براہ راست',
			'outboundRuleMode.block' => 'بلاک کریں',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'پروفائل اپ ڈیٹ',
			'theme.light' => 'لائٹ',
			'theme.dark' => 'ڈارک',
			'theme.auto' => 'آٹو',
			'downloadProxyStrategy' => 'ڈاؤن لوڈ چینل',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: ڈومین نام حل کرنے کے لیے پراکسی سرور کے ذریعے DNS سرور سے منسلک ہوں\n[${_root.dnsProxyResolveMode.direct}]: ڈومین نام حل کرنے کے لیے براہ راست DNS سرور سے منسلک ہوں\n[${_root.dnsProxyResolveMode.fakeip}]: پراکسی سرور آپ کی طرف سے ڈومین نام حل کرتا ہے؛ اگر آپ VPN کنکشن منقطع کرتے ہیں تو آپ کی ایپلی کیشن کو دوبارہ شروع کرنے کی ضرورت پڑ سکتی ہے؛ صرف [TUN] ان باؤنڈ ٹریفک کے لیے موثر',
			'routeFinal' => 'final',
			'protocolSniff' => 'پروٹوکول اسنف',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'براہ کرم [${p}] استعمال کریں',
			'turnOffPrivateDirect' => 'براہ کرم پہلے [نجی نیٹ ورک براہ راست کنکشن] آن کریں',
			'targetConnectFailed' => ({required Object p}) => '[${p}] سے منسلک ہونے میں ناکامی۔ براہ کرم یقینی بنائیں کہ ڈیوائسز ایک ہی LAN میں ہیں',
			'appleTVSync' => 'موجودہ کور کنفیگریشن کو Apple TV - Karing سے سنکرونائز کریں',
			'appleTVSyncDone' => 'سنکرونائزیشن مکمل ہو گئی۔ براہ کرم کنکشن شروع/دوبارہ شروع کرنے کے لیے Apple TV - Karing پر جائیں',
			'appleTVRemoveCoreConfig' => 'Apple TV - Karing کور کنفیگریشن حذف کریں',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - Karing کور کنفیگریشن حذف کر دی گئی؛ VPN سروس منقطع ہو گئی',
			'appleTVUrlInvalid' => 'غلط یو آر ایل، براہ کرم Apple TV - Karing کھولیں اور Karing کے دکھائے ہوئے QR کوڈ کو اسکین کریں',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] میں یہ خصوصیت نہیں ہے، براہ کرم اپ ڈیٹ کریں اور دوبارہ کوشش کریں',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'کور کا مین ورژن مماثل نہیں ہے، براہ کرم [${p}] اپ ڈیٹ کریں اور دوبارہ کوشش کریں',
			'remoteProfileEditConfirm' => 'پروفائل اپ ڈیٹ ہونے کے بعد، نوڈ کی تبدیلیاں بحال ہو جائیں گی۔ جاری رکھیں؟',
			'mustBeValidHttpsURL' => 'ایک درست https یو آر ایل ہونا چاہیے',
			'fileNotExistReinstall' => ({required Object p}) => 'فائل غائب ہے [${p}]، براہ کرم دوبارہ انسٹال کریں',
			'noNetworkConnect' => 'کوئی انٹرنیٹ کنکشن نہیں ہے',
			'sudoPassword' => 'sudo پاس ورڈ (TUN موڈ کے لیے ضروری)',
			'turnOffNetworkBeforeInstall' => 'اپ ڈیٹ انسٹال کرنے سے پہلے [ایئر پلین موڈ] پر سوئچ کرنے کی سفارش کی جاتی ہے',
			'latencyTestResolveIP' => 'دستی طور پر چیک کرتے وقت، آؤٹ لیٹ IP حل کریں',
			'latencyTestConcurrency' => 'کنکرنسی',
			'edgeRuntimeNotInstalled' => 'موجودہ ڈیوائس میں Edge WebView2 رن ٹائم انسٹال نہیں ہے، اس لیے صفحہ نہیں دکھایا جا سکتا۔ براہ کرم Edge WebView2 رن ٹائم (x64) ڈاؤن لوڈ اور انسٹال کریں، ایپ دوبارہ شروع کریں اور دوبارہ کوشش کریں۔',
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
			'locales.pa' => 'ਪੰਜਾਬੀ',
			_ => null,
		};
	}
}
