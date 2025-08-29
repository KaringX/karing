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
class TranslationsAr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsAr _root = this; // ignore: unused_field

	@override 
	TranslationsAr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsAr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenAr AboutScreen = _TranslationsAboutScreenAr._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenAr BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenAr._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenAr DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenAr._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenAr DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenAr._(_root);
	@override late final _TranslationsDiversionRulesScreenAr DiversionRulesScreen = _TranslationsDiversionRulesScreenAr._(_root);
	@override late final _TranslationsDnsSettingsScreenAr DnsSettingsScreen = _TranslationsDnsSettingsScreenAr._(_root);
	@override late final _TranslationsFileContentViewerScreenAr FileContentViewerScreen = _TranslationsFileContentViewerScreenAr._(_root);
	@override late final _TranslationsHomeScreenAr HomeScreen = _TranslationsHomeScreenAr._(_root);
	@override late final _TranslationsLaunchFailedScreenAr LaunchFailedScreen = _TranslationsLaunchFailedScreenAr._(_root);
	@override late final _TranslationsMyProfilesMergeScreenAr MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenAr._(_root);
	@override late final _TranslationsNetCheckScreenAr NetCheckScreen = _TranslationsNetCheckScreenAr._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenAr NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenAr._(_root);
	@override late final _TranslationsNetConnectionsScreenAr NetConnectionsScreen = _TranslationsNetConnectionsScreenAr._(_root);
	@override late final _TranslationsPerAppAndroidScreenAr PerAppAndroidScreen = _TranslationsPerAppAndroidScreenAr._(_root);
	@override late final _TranslationsRegionSettingsScreenAr RegionSettingsScreen = _TranslationsRegionSettingsScreenAr._(_root);
	@override late final _TranslationsServerSelectScreenAr ServerSelectScreen = _TranslationsServerSelectScreenAr._(_root);
	@override late final _TranslationsSettingsScreenAr SettingsScreen = _TranslationsSettingsScreenAr._(_root);
	@override late final _TranslationsUserAgreementScreenAr UserAgreementScreen = _TranslationsUserAgreementScreenAr._(_root);
	@override late final _TranslationsVersionUpdateScreenAr VersionUpdateScreen = _TranslationsVersionUpdateScreenAr._(_root);
	@override late final _TranslationsCommonWidgetAr CommonWidget = _TranslationsCommonWidgetAr._(_root);
	@override late final _TranslationsMainAr main = _TranslationsMainAr._(_root);
	@override late final _TranslationsMetaAr meta = _TranslationsMetaAr._(_root);
	@override String get diversionRulesKeep => 'احتفظ بـ [${_root.meta.isp}]${_root.meta.diversionRules}';
	@override String get diversionCustomGroupPreset => 'الإعداد المسبق [مجموعة تحويل مخصصة]';
	@override String get diversionCustomGroupPresetTips => 'ملاحظة: ستتم إضافة/تغطية العناصر الممكّنة إلى [مجموعة التحويل المخصصة] و[قواعد التحويل]';
	@override String get diversionCustomGroupAddTips => 'ملاحظة: قد تحتاج إلى ضبط الفرز يدويًا بعد إضافته، وإلا فإن التحويل المضاف حديثًا قد لا يسري مفعوله.';
	@override String get rulesetEnableTips => 'نصيحة: بعد تشغيل الخيارات ، يرجى الانتقال إلى [قواعد التحويل] لتعيين القواعد ذات الصلة ، وإلا فلن تدخل ساري المفعول ';
	@override String get ispUserAgentTips => 'سيقدم [${_root.meta.isp} أنواعًا مختلفة من بيانات الاشتراك بناءً على [UserAgent] في طلب [HTTP].';
	@override String get ispDiversionTips => 'قواعد التفريغ التي يوفرها [${_root.meta.isp}]؛ لا تدعم الاشتراكات من النوع [V2Ray] قواعد التفريغ';
	@override late final _TranslationsIspAr isp = _TranslationsIspAr._(_root);
	@override late final _TranslationsPermissionAr permission = _TranslationsPermissionAr._(_root);
	@override late final _TranslationsTlsAr tls = _TranslationsTlsAr._(_root);
	@override late final _TranslationsOutboundRuleModeAr outboundRuleMode = _TranslationsOutboundRuleModeAr._(_root);
	@override late final _TranslationsDnsProxyResolveModeAr dnsProxyResolveMode = _TranslationsDnsProxyResolveModeAr._(_root);
	@override late final _TranslationsProxyStrategyAr proxyStrategy = _TranslationsProxyStrategyAr._(_root);
	@override late final _TranslationsReloadReasonAr reloadReason = _TranslationsReloadReasonAr._(_root);
	@override late final _TranslationsThemeAr theme = _TranslationsThemeAr._(_root);
	@override String get downloadProxyStrategy => 'تحميل القناة';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: الاتصال بخادم DNS من خلال خادم الوكيل لحل اسم المجال\n[${_root.dnsProxyResolveMode.direct}]: الاتصال مباشرة بخادم DNS لحل اسم المجال\n[ ${_root.dnsProxyResolveMode.fakeip}]: بواسطة الوكيل يقوم الخادم بحل اسم المجال نيابةً عنك؛ إذا انفصلت عن شبكة VPN، فقد يلزم إعادة تشغيل تطبيقك؛ ينطبق فقط على حركة المرور الواردة من [TUN]';
	@override String get routeFinal => 'أخير';
	@override String get protocolSniff => 'الكشف عن البروتوكول';
	@override String sendOrReceiveNotMatch({required Object p}) => 'الرجاء استخدام [${p}]';
	@override String get turnOffPrivateDirect => 'يرجى تمكين [الاتصال المباشر بالشبكة الخاصة] أولاً';
	@override String targetConnectFailed({required Object p}) => 'فشل الاتصال بـ [${p}]، يرجى التأكد من وجود الجهاز في نفس الشبكة المحلية (LAN)';
	@override String get appleTVSync => 'مزامنة التكوين الأساسي الحالي مع Apple TV - Karing';
	@override String get appleTVSyncDone => 'اكتملت المزامنة، برجاء الانتقال إلى Apple TV - Karing لفتح/إعادة تشغيل الاتصال';
	@override String get appleTVRemoveCoreConfig => 'إزالة Apple TV - Karing Core Configuration';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - تم حذف الملف التعريفي الأساسي لـ Karing؛ وتم قطع اتصال خدمة VPN';
	@override String get appleTVUrlInvalid => 'عنوان URL غير صالح، يرجى فتح Apple TV - Karing، ومسح رمز QR الذي يعرضه Karing';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] لا يحتوي على هذه الوظيفة، يرجى الترقية والمحاولة مرة أخرى';
	@override String appleCoreVersionNotMatch({required Object p}) => 'لا يتطابق الإصدار الرئيسي الأساسي، يرجى ترقية [${p}] والمحاولة مرة أخرى';
	@override String get remoteProfileEditConfirm => 'بعد تحديث التكوين، ستتم استعادة تعديلات العقدة. هل تريد المتابعة؟';
	@override String get mustBeValidHttpsURL => 'يجب أن يكون عنوان URL HTTPS صالح';
	@override String fileNotExistReinstall({required Object p}) => 'الملف مفقود [${p}]، يرجى إعادة التثبيت';
	@override String get noNetworkConnect => 'لا يوجد اتصال بالإنترنت';
	@override String get turnOffNetworkBeforeInstall => 'يوصى بالتبديل إلى [وضع الطيران] قبل تثبيت التحديث';
	@override String get latencyTestResolveIP => 'أثناء الكشف اليدوي، يتم أيضًا تحليل عنوان IP الخاص بالتصدير.';
	@override String get removeBannerAdsByShare => 'شارك[Karing]اذهب إلى الإعلانات';
	@override String get removeBannerAdsByReward => 'مشاهدة الإعلانات انتقل إلى الإعلانات';
	@override String removeBannerAdsByShareTip({required Object p, required Object d}) => 'شارك مرة واحدة وستحصل على ${p} من الأيام بدون مكافآت إعلانية (يمكن تكديسها، حتى ${d} من الأيام)';
	@override String removeBannerAdsByRewardTip({required Object p}) => 'شاهد إعلانًا وستحصل على مكافأة للأيام الخالية من الإعلانات بقيمة ${p} (لا يمكن تجميعها)';
	@override String removeBannerAdsDone({required Object p}) => 'تلقى ${p} أيام مكافأة خالية من الإعلانات';
	@override String get edgeRuntimeNotInstalled => 'لم يتم تثبيت وقت تشغيل Edge WebView2 على الجهاز الحالي ولا يمكن عرض الصفحة، يرجى تنزيل وتثبيت وقت تشغيل Edge WebView2 (x64)، وإعادة تشغيل التطبيق والمحاولة مرة أخرى.';
	@override Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
	};
}

// Path: AboutScreen
class _TranslationsAboutScreenAr implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'تثبيت الرجوع';
	@override String get installTime => 'وقت التثبيت';
	@override String get versionChannel => 'تحديث القنوات تلقائيا';
	@override String get disableUAReport => 'تطبيق بيانات التحسين';
	@override String get disableUAReportTip => 'تساعدنا [بيانات تحسين التطبيق] على تحسين تجربة المنتج، وستقوم الإصدارات الأقل من الإصدار الرئيسي بإيقاف تشغيل جميع [بيانات تحسين التطبيق] تلقائيًا باستثناء [تنشيط التطبيق]';
	@override String get devOptions => 'خيارات للمطور';
	@override String get enableDebugLog => 'تمكين سجل التصحيح';
	@override String get viewFilsContent => 'عرض الملفات';
	@override String get enablePprof => 'يُمكَِن pprof';
	@override String get pprofPanel => 'pprof لوحة';
	@override String get allowRemoteAccessPprof => 'السماح بالوصول عن بعد إلى ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'السماح بالوصول عن بعد${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'استخدم تكوين صندوق الغناء الأصلي';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenAr implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'عنوان URL الخادم';
	@override String get webdavRequired => 'لايمكن ان يكون فارغا';
	@override String get webdavLoginFailed => 'فشل تسجيل الدخول:';
	@override String get webdavListFailed => 'فشل في الحصول على قائمة الملفات:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenAr implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'غير صالح [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => 'غير صالح [IP Cidr]:${p}';
	@override String invalidPort({required Object p}) => 'غير صالح [Port]:${p}';
	@override String invalidRuleSet({required Object p}) => 'غير صالح [Rule Set]:${p}, يجب أن يكون عنوان URL عنوان URL HTTPS صالحًا وملفًا ثنائيًا مع ملحق الملف .SRS';
	@override String invalidRuleSetBuildIn({required Object p}) => 'غير صالح [Rule Set(build-in)]:${p} غير صالحة، التنسيق هو geosite:xxx أو geoip:xxx أو acl:xxx، ويجب أن يكون xxx اسم قاعدة صالحًا';
	@override String invalidPackageId({required Object p}) => 'غير صالح [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'نصيحة: بعد الحفظ، يرجى الانتقال إلى [قواعد التحويل] لتعيين القواعد ذات الصلة، وإلا فلن تصبح سارية المفعول.';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenAr implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قاعدة التحويل اكتشف';
	@override String get rule => 'قاعدة:';
	@override String get outbound => 'مخدم بروكسي:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenAr implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'نصيحة: حاول مطابقة القواعد من الأعلى إلى الأسفل، إذا لم تتم مطابقة أي قاعدة، استخدم [نهائي]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenAr implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'لا يمكن أن يكون ISP فارغًا';
	@override String get urlCanNotEmpty => 'لا يمكن أن يكون عنوان URL فارغًا';
	@override String error({required Object p}) => 'نوع غير مدعوم:${p}';
	@override String get dnsDesc => 'العمود الأول من بيانات التأخير هو تأخير استعلام الاتصال المباشر;\nالعمود الثاني: شغله [[حركة الوكيل]حل DNS من خلال خادم الوكيل]: بيانات التأخير هي تأخير الاستعلام الذي تم إعادة توجيهه من خلال خادم الوكيل الحالي; إذا [[حركة الوكيل]حل DNS من خلال خادم الوكيل]: بيانات التأخير هي تأخير استعلام الاتصال المباشر';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenAr implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملف محتوى الملف';
	@override String get clearFileContent => 'هل أنت متأكد من مسح محتوى الملف؟';
	@override String get clearFileContentTips => 'هل أنت متأكد من مسح محتوى ملف الملف الشخصي؟قد يتسبب تطهير ملف الملف الشخصي في فقدان البيانات أو وظائف التطبيق غير الطبيعية ، يرجى العمل بحذر';
}

// Path: HomeScreen
class _TranslationsHomeScreenAr implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'الرجاء تحديد خادم';
	@override String get invalidServer => 'غير صالح ، الرجاء اختيار مرة أخرى';
	@override String get disabledServer => 'معطل ، الرجاء اختيار مرة أخرى';
	@override String get expiredServer => 'لا يوجد خادم متاح: قد يكون التكوين قديمًا أو معطلاً';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'جوارب:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'الرجاء الإعداد [الاختصار وصلة] قبل استخدامه';
	@override String tooMuchServers({required Object p, required Object p1}) => 'يوجد عدد كبير جدًا من الخوادم الوكيلة [${p}>${p1}]، وقد لا يكون الاتصال ممكنًا بسبب قيود ذاكرة النظام.';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'قد يؤدي وجود عدد كبير جدًا من خوادم الوكيل [${p}>${p1}] إلى حدوث اتصالات بطيئة أو غير قابلة للوصول';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenAr implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'فشل التطبيق في البدء [اسم عملية غير صالح] ، يرجى إعادة تثبيت التطبيق إلى دليل منفصل';
	@override String get invalidProfile => 'فشل التطبيق في البدء [فشل في الوصول إلى الملف الشخصي] ، يرجى إعادة تثبيت التطبيق';
	@override String get invalidVersion => 'فشل التطبيق في بدء [إصدار غير صالح] ، يرجى إعادة تثبيت التطبيق';
	@override String get systemVersionLow => 'فشل بدء تشغيل التطبيق [إصدار النظام منخفض جدًا]';
	@override String get invalidInstallPath => 'مسار التثبيت غير صالح ، يرجى إعادة تثبيته إلى مسار صالح';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenAr implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'دمج الملامح';
	@override String get profilesMergeTarget => 'ملف تعريف الهدف';
	@override String get profilesMergeSource => 'ملفات تعريف المصدر';
	@override String get profilesMergeTips => 'نصيحة: سيتم تجاهل تحويل ملفات تعريف المصدر';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenAr implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'فحص صافي';
	@override String get warn => 'ملاحظة: نظرًا لتأثير بيئة الشبكة وقواعد التحويل ، فإن نتائج الاختبار ليست مكافئة تمامًا للنتائج الفعلية.';
	@override String get invalidDomain => 'اسم النطاق غير صالح';
	@override String get connectivity => 'اتصال الشبكة';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'اختبار اتصال IPv4[${p}] كل شيء فشل';
	@override String get connectivityTestIpv4Ok => 'Ipv4 نجح الاتصال';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6 اختبار الاتصال [${p}] كل شيء فشل ، قد لا تدعم شبكتك IPv6';
	@override String get connectivityTestIpv6Ok => 'نجح اتصال IPv6';
	@override String get connectivityTestOk => 'الشبكة متصلة بالإنترنت';
	@override String get connectivityTestFailed => 'الشبكة ليست متصلة بعد بالإنترنت';
	@override String get remoteRulesetsDownloadOk => 'تم تنزيل كل شيء بنجاح';
	@override String get remoteRulesetsDownloadNotOk => 'التحميل أو فشل';
	@override String get outbound => 'مخدم بروكسي';
	@override String outboundOk({required Object p}) => '[${p}] نجح الاتصال ';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] فشل الاتصال\nError:[${p2}]';
	@override String get dnsServer => 'DNS الخادم';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]نجح استعلام DNS\nDNS قاعدة:[${p2}]\n وقت الإستجابة:[${p3} ms]\nAعنوان[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]نجح استعلام DNS\n nDNS قاعدة:[${p2}]\nخطأ:[${p3}]';
	@override String get host => 'اتصال HTTP';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nقاعدة التحويل:[${p2}]\nمخدم بروكسي:[${p3}]';
	@override String get hostConnectionOk => 'نجح الاتصال';
	@override String hostConnectionFailed({required Object p}) => 'فشل الاتصال:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenAr implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تصفية الاتصالات';
	@override String get hostIp => 'المجال/IP';
	@override String get app => 'برنامج';
	@override String get rule => 'قاعدة';
	@override String get chain => 'خارج';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenAr implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'روابط';
	@override String get copyAsCSV => 'نسخ إلى تنسيق CSV';
	@override String get selectType => 'حدد نوع التحويل';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenAr implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'لكل وكيل تطبيق';
	@override String get whiteListMode => 'وضع القائمة البيضاء';
	@override String get whiteListModeTip => 'عند التمكين: فقط التطبيقات التي تم فحصها هي وكلاء ؛عندما لا يتم تمكينها: فقط التطبيقات التي لم يتم فحصها هي وكلاء';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenAr implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الدولة او المنطقة';
	@override String get Regions => '  نصيحة: يرجى تعيين بلدك أو منطقتك الحالية بشكل صحيح ، وإلا فقد يتسبب في مشاكل في تحويل الشبكة';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenAr implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حدد الخادم';
	@override String get autoSelectServer => 'تلقائي حدد الخادم بأقل زمن انتقال';
	@override String get recentUse => 'مستخدم حديثا';
	@override String get myFav => 'المفضل لدي';
	@override String selectLocal({required Object p}) => 'الخادم المحدد هو عنوان محلي وقد لا يعمل بشكل صحيح:${p}';
	@override String get selectRequireEnableIPv6 => 'الخادم المحدد هو عنوان IPv6 ويتطلب [تمكين IPv6]';
	@override String get selectDisabled => 'تم تعطيل هذا الخادم';
	@override String get error404 => 'واجه اكتشاف الكمون خطأ ، يرجى التحقق مما إذا كان هناك تكوين مع نفس المحتوى';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenAr implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'احصل على حركة المرور';
	@override String get tutorial => 'درس تعليمي';
	@override String get commonlyUsedRulesets => 'مجموعات القواعد شائعة الاستخدام';
	@override String get howToRemoveAds => 'كيفية إزالة الإعلانات';
	@override String get htmlBoard => 'لوحة على الانترنت';
	@override String get dnsLeakDetection => 'كشف تسرب DNS';
	@override String get proxyLeakDetection => 'كشف تسرب الوكيل';
	@override String get speedTest => 'اختبار السرعة';
	@override String get rulesetDirectDownlad => 'مجموعة القواعد تحميل مباشر';
	@override String get hideUnusedDiversionGroup => 'إخفاء قواعد تحويل حركة المرور غير النشطة';
	@override String get disableISPDiversionGroup => 'تعطيل قواعد تحويل [${_root.meta.isp}]';
	@override String get portSettingRule => 'القاعدة القائمة';
	@override String get portSettingDirectAll => 'توجيه كل شيء';
	@override String get portSettingProxyAll => 'وكيل الكل';
	@override String get portSettingControl => 'السيطرة والمزامنة';
	@override String get portSettingCluster => 'خدمة الكتلة';
	@override String get modifyPort => 'تعديل المنفذ';
	@override String get modifyPortOccupied => 'المنفذ مشغول، يرجى استخدام منفذ آخر';
	@override String get ipStrategyTips => 'قبل التمكين ، يرجى تأكيد أن شبكتك تدعم IPv6 ، وإلا لا يمكن الوصول إلى بعض حركة المرور بشكل طبيعي.';
	@override String get tunAppendHttpProxy => 'إلحاق وكيل HTTP إلى VPN';
	@override String get tunAppendHttpProxyTips => 'ستجاوز بعض التطبيقات جهاز NIC الظاهري والاتصال مباشرة بوكيل HTTP';
	@override String get tunAllowBypassHttpProxyDomain => 'المجالات المسموح لها بتجاوز وكيل HTTP';
	@override String get dnsEnableRule => 'تمكين قواعد تحويل DNS';
	@override String get dnsEnableProxyResolveMode => '[${_root.SettingsScreen.dnsTypeProxy}] قناة الدقة';
	@override String get dnsEnableClientSubnet => '[${_root.SettingsScreen.dnsTypeDirect}] تمكين ECS';
	@override String get dnsTestDomain => 'مجال الاختبار';
	@override String get dnsTestDomainInvalid => 'مجال غير صالح';
	@override String get dnsTypeOutbound => 'مخدم بروكسي';
	@override String get dnsTypeDirect => 'سير مستقيم';
	@override String get dnsTypeProxy => 'حركة الوكيل';
	@override String get dnsTypeResolver => 'خادم DNS';
	@override String get dnsEnableRuleTips => 'بعد التمكين ، سيختار اسم المجال خادم DNS المقابل للدقة وفقًا لقواعد التحويل';
	@override String get dnsEnableFakeIpTips => 'بعد تمكين FakeIP، إذا تم قطع اتصال VPN، فقد يلزم إعادة تشغيل التطبيق الخاص بك؛ يجب تشغيل هذه الوظيفة [وضع TUN]';
	@override String get dnsTypeOutboundTips => 'دقة اسم المجال لخادم الوكيل';
	@override String get dnsTypeDirectTips => 'حل اسم المجال لـ [${_root.SettingsScreen.dnsTypeDirect}]';
	@override String get dnsTypeProxyTips => 'حل اسم المجال لحركة المرور الوكيل';
	@override String get dnsTypeResolverTips => 'دقة اسم المجال لخادم DNS الآخر';
	@override String get dnsAutoSetServer => 'إعداد الخادم تلقائيا';
	@override String get dnsResetServer => 'إعادة تعيين الخادم';
	@override String get inboundDomainResolve => 'حل أسماء النطاقات الواردة';
	@override String get privateDirect => 'اتصال مباشر بالشبكة الخاصة';
	@override String inboundDomainResolveTips({required Object p}) => 'تحتاج بعض أسماء النطاقات التي لا تحتوي على قواعد تحويل تم تكوينها إلى حلها قبل أن تتمكن من الوصول إلى قواعد التحويل المستندة إلى IP؛ وتؤثر هذه الميزة على الطلبات الواردة إلى منفذ الوكيل [${p}]';
	@override String get useRomoteRes => 'استخدم الموارد البعيدة';
	@override String get autoAppendRegion => 'إرفاق القواعد الأساسية تلقائيًا';
	@override String get autoSelect => 'اختيار آلي';
	@override String get autoSelectServerIgnorePerProxyServer => 'تجاهل الخوادم الوكيلة [المواجهة/المتسلسلة].';
	@override String get autoSelectServerInterval => 'فاصل الشيكات الكمون';
	@override String get autoSelectSelectedHealthCheckInterval => 'فترة فحص صحة الخادم الحالية';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'إعادة اكتشاف متى تتغير الشبكة';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'قم بتحديث الخادم الحالي بعد الكشف اليدوي عن التأخير';
	@override String get autoSelectServerIntervalTips => 'كلما كان الفاصل الزمني لاكتشاف التأخير أقصر، كلما تم تحديث بيانات تأخير الخادم في الوقت المناسب، ولكنها ستشغل المزيد من الموارد وتستهلك الكهرباء بشكل أسرع';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'إذا فشل الاكتشاف، يتم تبديل العقدة؛ إذا لم يتم العثور على عقدة متاحة عند تبديل العقدة، يتم إعادة اكتشاف المجموعة مع التأخير';
	@override String get autoSelectServerFavFirst => 'PRI-Use [My Favs]';
	@override String get autoSelectServerFavFirstTips => 'إذا لم تكن قائمة [Favs] فارغة ، فاستخدم الخوادم في [Favs]';
	@override String get autoSelectServerFilter => 'تصفية خوادم غير صالحة';
	@override String autoSelectServerFilterTips({required Object p}) => 'سيتم تصفية حالات فشل الكشف عن تأخير الخادم؛ إذا لم يكن هناك خادم متاح بعد التصفية، فسيتم استخدام الخوادم [${p}] الأولى بدلاً من ذلك.';
	@override String get autoSelectServerLimitedNum => 'الحد الأقصى لعدد الخوادم';
	@override String get autoSelectServerLimitedNumTips => 'سيتم تصفية الخوادم التي تتجاوز هذا الرقم';
	@override String get numInvalid => 'رقم غير صالح';
	@override String get hideInvalidServer => 'إخفاء الخوادم غير الصالحة';
	@override String get sortServer => 'خوادم الفرز';
	@override String get sortServerTips => 'فرز حسب الكمون من منخفض إلى مرتفع';
	@override String get selectServerHideRecommand => 'إخفاء [يوصي]';
	@override String get selectServerHideRecent => 'إخفاء [المستخدمة مؤخرًا]';
	@override String get selectServerHideFav => 'إخفاء [المفضلة لدي]';
	@override String get homeScreen => 'الشاشة الرئيسية';
	@override String get theme => 'Tالهيم';
	@override String get widgetsAlpha => 'شفافية الأدوات';
	@override String get widgetsEmpty => 'لا يوجد أداة متاحة';
	@override String get backgroundImage => 'صورة الخلفية';
	@override String get myLink => 'ارتباط اختصار';
	@override String get autoConnectAfterLaunch => 'اتصال السيارات بعد الإطلاق';
	@override String get hideAfterLaunch => 'إخفاء النافذة بعد بدء التشغيل';
	@override String get autoSetSystemProxy => 'وكيل نظام تعيين تلقائي عند الاتصال';
	@override String get bypassSystemProxy => 'أسماء النطاقات المسموح لها بتجاوز وكيل النظام';
	@override String get disconnectWhenQuit => 'افصل عندما يخرج التطبيق';
	@override String get allowBypass => 'السماح للتطبيقات بتجاوز VPN';
	@override String get importSuccess => 'استيراد نجاح ';
	@override String get rewriteConfirm => 'سيقوم هذا الملف بكتابة التكوين المحلي الحالي.هل تريد الاستمرار؟';
	@override String get networkShare => 'مشاركة الشبكة';
	@override String get frontProxy => 'الوكيل الأمامي/السلسلة';
	@override String frontProxyTips({required Object p}) => 'البيانات->الخادم الوكيل الأمامي/السلسلة [خوادم بروكسي متعددة: من الأعلى إلى الأسفل]->الخادم الوكيل [${p}]->الخادم الهدف';
	@override String get allowOtherHostsConnect => 'اسمح للآخرين بالاتصال';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'بسبب قيود النظام، بعد تمكين ذلك، قد لا تتمكن التطبيقات الموجودة على هذا الجهاز والتي تستخدم http للوصول إلى الشبكة من الاتصال بالشبكة بشكل صحيح.';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'إذا لم يتمكن الآخرون من الوصول إلى هذا الجهاز بعد تشغيل المشاركة، فيرجى محاولة إيقاف تشغيل هذا المفتاح.';
	@override String get enableCluster => 'تمكين مجموعة الوكيل الجوارب/HTTP';
	@override String get clusterAllowOtherHostsConnect => 'السماح للآخرين بالاتصال بـ CLUSTER';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'مصادقة مجموعة الوكيل';
	@override String get tunMode => 'نفق وضع';
	@override String get tuni4Address => 'عنوان IP';
	@override String get tunModeTips => 'سيتولى وضع TUN كل حركة مرور النظام [في هذا الوضع ، يمكنك ترك وكيل النظام غير مدقلة]';
	@override String get tunModeRunAsAdmin => 'يتطلب وضع TUN أذونات مسؤول النظام ، يرجى إعادة تشغيل التطبيق كمسؤول';
	@override String get tunStack => 'Stack';
	@override String get tunHijackTips => 'بعد الإغلاق، سيتم إعادة توجيه طلبات DNS من TUN مباشرة إلى خادم DNS المقابل';
	@override String get launchAtStartup => 'إطلاق عند بدء التشغيل';
	@override String get quitWhenSwitchSystemUser => 'خروج تطبيق عند تبديل مستخدمي النظام';
	@override String get handleScheme => 'مكالمة مخطط النظام';
	@override String get portableMode => 'الوضع المحمول';
	@override String get portableModeDisableTips => 'إذا كنت بحاجة إلى الخروج من الوضع المحمول، فيرجى الخروج من [karing] وحذف المجلد [profiles] يدويًا في نفس الدليل مثل [karing.exe]';
	@override String get handleKaringScheme => 'مقبض karing:// Call';
	@override String get handleClashScheme => 'مقبض clash:// Call';
	@override String get handleSingboxScheme => 'مقبض sing-box:// يتصل';
	@override String get alwayOnVPN => 'اتصال مفتوح دائمًا';
	@override String get disconnectAfterSleep => 'قطع الاتصال بعد سبات النظام';
	@override String get removeSystemVPNConfig => 'حذف تكوين VPN النظام';
	@override String get timeConnectOrDisconnect => 'المقرر يتصل/قطع الاتصال';
	@override String get timeConnectOrDisconnectTips => 'يجب أن يكون VPN متصلاً ليصبح مفيدًا ؛بعد تشغيله ، سيتم تعطيل [النوم التلقائي]';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'ال cاتصاللا يمكن أن يكون فاصل الانفصال أقل من ${p} دقائق';
	@override String get disableFontScaler => 'تعطيل تحجيم الخط(إعادة التشغيل يسري)';
	@override String get autoOrientation => 'اتبع دوران الشاشة';
	@override String get restartTakesEffect => 'إعادة التشغيل يسري';
	@override String get resetSettings => 'اعادة الضبط';
	@override String get cleanCache => 'مسح ذاكرة التخزين المؤقت';
	@override String get cleanCacheDone => 'اكتملت عملية التنظيف';
	@override String get appleTestFlight => 'Apple Testflight';
	@override String get appleAppStore => 'متجر تطبيقات Apple';
	@override String hasNewVersion({required Object p}) => 'تحديث الإصدار ${p}';
	@override String get follow => 'تابعنا';
	@override String get contactUs => 'اتصل بنا';
	@override String get supportUs => 'ادعمنا';
	@override String get rateInApp => 'قيمنا';
	@override String get rateInAppStore => 'قيمنا في متجر التطبيقات';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenAr implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'خصوصيتك تأتي أولا';
	@override String get agreeAndContinue => 'قبول ومتابعة';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenAr implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'الإصدار الجديد [${p}] جاهز';
	@override String get update => 'أعد التشغيل للتحديث';
	@override String get cancel => 'ليس الآن';
}

// Path: CommonWidget
class _TranslationsCommonWidgetAr implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'إذا تم تشغيل [Always on VPN]، فيرجى إيقاف تشغيل [Always on VPN] ومحاولة الاتصال مرة أخرى.';
	@override String get resetPort => 'الرجاء تغيير المنفذ إلى منفذ آخر متاح أو إغلاق التطبيق الذي يشغل المنفذ.';
}

// Path: main
class _TranslationsMainAr implements TranslationsMainEn {
	_TranslationsMainAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayAr tray = _TranslationsMainTrayAr._(_root);
}

// Path: meta
class _TranslationsMetaAr implements TranslationsMetaEn {
	_TranslationsMetaAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get enable => 'يُمكَِن';
	@override String get disable => 'إبطال';
	@override String get bydefault => 'تقصير';
	@override String get filter => 'فلتر';
	@override String get filterMethod => 'طريقة التصفية';
	@override String get include => 'يشمل';
	@override String get exclude => 'استبعاد';
	@override String get all => 'الجميع';
	@override String get prefer => 'أولوية';
	@override String get only => 'فقط';
	@override String get open => 'يفتح';
	@override String get close => 'إنهاء';
	@override String get quit => 'يترك';
	@override String get add => 'اضف إليه';
	@override String get addSuccess => 'اضيف بنجاح';
	@override String addFailed({required Object p}) => 'إضافة فشل:${p}';
	@override String get remove => 'يمسح';
	@override String get removeConfirm => 'هل انت متأكد من الحذف؟';
	@override String get edit => 'يحرر';
	@override String get view => 'يفحص';
	@override String get more => 'أكثر';
	@override String get tips => 'معلومات';
	@override String get copy => 'ينسخ';
	@override String get save => 'يحفظ';
	@override String get ok => 'نعم';
	@override String get cancel => 'يلغي';
	@override String get feedback => 'تعليق';
	@override String get feedbackContent => 'محتوى ردود الفعل';
	@override String get feedbackContentHit => 'مطلوب ، ما يصل إلى 500 حرف';
	@override String get feedbackContentCannotEmpty => 'لا يمكن أن يكون محتوى التعليقات فارغًا';
	@override String get faq => 'أسئلة مكررة';
	@override String get download => 'تحميل';
	@override String get upload => 'رفع';
	@override String get downloadSpeed => 'سرعة التنزيل';
	@override String get uploadSpeed => 'سرعة التحميل';
	@override String get loading => 'تحميل...';
	@override String get convert => 'يتحول';
	@override String get check => 'يفحص';
	@override String get detect => 'يكشف';
	@override String get days => 'أيام';
	@override String get hours => 'ساعات';
	@override String get minutes => 'دقائق';
	@override String get seconds => 'ثانية';
	@override String get protocol => 'بروتوكول';
	@override String get search => 'يبحث';
	@override String get custom => 'مخصص';
	@override String get inbound => 'وارد';
	@override String get outbound => 'مخرج';
	@override String get connect => 'يتصل';
	@override String get disconnect => 'قطع الاتصال';
	@override String get reconnect => 'إعادة الاتصال';
	@override String get connected => 'متصل';
	@override String get disconnected => 'انقطع الاتصال';
	@override String get connecting => 'توصيل';
	@override String get connectTimeout => 'ربط مهلة';
	@override String get timeout => 'نفذ الوقت';
	@override String get timeoutDuration => 'مدة مهلة الانتظار';
	@override String get runDuration => 'وقت التشغيل';
	@override String get latency => 'تأخير';
	@override String get latencyTest => 'كشف التأخير';
	@override String get language => 'لغة';
	@override String get next => 'التالي';
	@override String get done => 'منتهي';
	@override String get apply => 'يتقدم';
	@override String get refresh => 'ينعش';
	@override String get retry => 'إعادة المحاولة?';
	@override String get update => 'تجديد';
	@override String get updateInterval => 'الفاصل الزمني للتحديث';
	@override String get updateInterval5mTips => 'الحد الأدنى: 5 م';
	@override String updateFailed({required Object p}) => 'فشل التحديث:${p}';
	@override String get none => 'لا أحد';
	@override String get start => 'يبدأ';
	@override String get pause => 'يوقف';
	@override String get reset => 'إعادة ضبط';
	@override String get submit => 'يُقدِّم';
	@override String get user => 'مستخدم';
	@override String get account => 'حساب';
	@override String get password => 'كلمة المرور';
	@override String get required => 'مطلوب';
	@override String get type => 'يكتب';
	@override String get path => 'طريق';
	@override String get local => 'محلي';
	@override String get remote => 'بعيد';
	@override String get other => 'آخر';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL غير صالح';
	@override String get urlCannotEmpty => 'لا يمكن أن يكون الرابط فارغًا';
	@override String get urlTooLong => 'عنوان URL طويل جدًا (>8182)';
	@override String get copyUrl => 'Copy Link';
	@override String get openUrl => 'Open Link';
	@override String get shareUrl => 'شارك الرابط';
	@override String get speedTestUrl => 'URL اختبار السرعة';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'رقم تعريف حاسوب ثابت';
	@override String get isp => 'مزودي VPN';
	@override String get domainSuffix => 'لاحقة اسم المجال';
	@override String get domain => 'اسم النطاق';
	@override String get domainKeyword => 'الكلمات الرئيسية لاسم المجال';
	@override String get domainRegex => 'انتظام اسم المجال';
	@override String get ip => 'IP';
	@override String get port => 'ميناء';
	@override String get portRange => 'نطاق الميناء';
	@override String get appPackage => 'معرف حزمة التطبيق';
	@override String get processName => 'اسم العملية';
	@override String get processPath => 'مسار العملية';
	@override String get processDir => 'دليل العمليات';
	@override String get systemProxy => 'وكيل النظام';
	@override String get netInterfaces => 'واجهات صافية';
	@override String get netSpeed => 'سرعة';
	@override String get trafficTotal => 'إجمالي حركة المرور';
	@override String get trafficProxy => 'وكيل حركة المرور';
	@override String get website => 'موقع إلكتروني';
	@override String get memory => 'ذاكرة';
	@override String get outboundMode => 'الوضع الصادر';
	@override String get rule => 'قاعدة';
	@override String get global => 'عالمي';
	@override String get qrcode => 'رمز الاستجابة السريعة';
	@override String get qrcodeTooLong => 'النص طويل جدًا لعرضه';
	@override String get qrcodeShare => 'شارك رمز الاستجابة السريعة';
	@override String get textToQrcode => 'رسالة نصية إلى رمز الاستجابة السريعة';
	@override String get qrcodeScan => 'مسح رمز الاستجابة السريعة';
	@override String get qrcodeScanResult => 'نتيجة المسح';
	@override String get qrcodeScanFromImage => 'مسح من الصورة';
	@override String get qrcodeScanResultFailed => 'فشل في تحليل الصورة ، يرجى التأكد من أن لقطة الشاشة هي رمز QR صالح';
	@override String get qrcodeScanResultEmpty => 'نتيجة الفحص فارغة';
	@override String get screenshot => 'لقطة شاشة';
	@override String get backupAndSync => 'النسخ الاحتياطي والمزامنة';
	@override String get autoBackup => 'النسخ الاحتياطي التلقائي';
	@override String get autoBackupAddProfile => 'بعد إضافة التكوين';
	@override String get autoBackupRemoveProfile => 'بعد حذف التكوين';
	@override String get currentProfile => 'التكوين الحالي';
	@override String get importAndExport => 'استيراد وتصدير';
	@override String get import => 'يستورد';
	@override String get importFromUrl => 'الاستيراد من عنوان URL';
	@override String get export => 'يصدّر';
	@override String get send => 'يرسل';
	@override String get receive => 'تولي';
	@override String get sendConfirm => 'تأكيد الإرسال؟';
	@override String get termOfUse => 'شرط الخدمة';
	@override String get privacyPolicy => 'سياسة الخصوصية';
	@override String get about => 'عن';
	@override String get name => 'اسم';
	@override String get version => 'إصدار';
	@override String get notice => 'يلاحظ';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'الإجراء: ${p}\nالسبب: ${p1}';
	@override String get sort => 'إعادة ترتيب';
	@override String get novice => 'وضع المبتدئ';
	@override String get willCompleteAfterRebootInstall => 'يرجى إعادة تشغيل جهازك لإكمال تثبيت توسيع النظام';
	@override String get willCompleteAfterRebootUninstall => 'يرجى إعادة تشغيل جهازك لإكمال إلغاء تثبيت ملحق النظام';
	@override String get requestNeedsUserApproval => 'يرجى [السماح] لكارينج بتثبيت ملحقات النظام في [إعدادات النظام] - [الخصوصية والأمان]، وإعادة الاتصال بعد اكتمال التثبيت';
	@override String get FullDiskAccessPermissionRequired => 'لطفاً مجوز karingServiceSE را در [تنظیمات سیستم]-[حریم خصوصی و امنیت]-[مجوز دسترسی کامل به دیسک] فعال کنید و دوباره متصل شوید.';
	@override String get tvMode => 'وضع التلفزيون';
	@override String get recommended => 'يوصي';
	@override String innerError({required Object p}) => 'خطأ داخلي: ${p}';
	@override String get logicOperation => 'عملية منطقية';
	@override String get share => 'يشارك';
	@override String get candidateWord => 'كلمات المرشح';
	@override String get keywordOrRegx => 'الكلمات الرئيسية/العادية';
	@override String get importFromClipboard => 'استيراد من الحافظة';
	@override String get exportToClipboard => 'تصدير إلى الحافظة';
	@override String get server => 'الخادم';
	@override String get ads => 'أعلن';
	@override String get adsRemove => 'إزالة الإعلانات';
	@override String get adsBanner => 'إعلانات البانر';
	@override String get donate => 'يتبرع';
	@override String get diversion => 'تحويل';
	@override String get diversionRules => 'قواعد التحويل';
	@override String get diversionCustomGroup => 'مجموعة تحويل مخصصة';
	@override String get urlTestCustomGroup => 'التحديد التلقائي المخصص';
	@override String get setting => 'إعدادات';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN SYNC';
	@override String get lanSyncNotQuitTips => 'لا تخرج من هذه الواجهة قبل اكتمال التزامن';
	@override String get deviceNoSpace => 'مساحة غير كافيه في القرص';
	@override String get hideSystemApp => 'إخفاء تطبيقات النظام';
	@override String get hideAppIcon => 'إخفاء أيقونة التطبيق';
	@override String get hideDockIcon => 'إخفاء أيقونة Dock';
	@override String get remark => 'ملاحظة';
	@override String get remarkExist => 'ملاحظة موجودة بالفعل ، يرجى استخدام اسم آخر';
	@override String get remarkCannotEmpty => 'لا يمكن أن تكون الملاحظات فارغة';
	@override String get remarkTooLong => 'ملاحظات تصل إلى 32 حرفًا';
	@override String get openDir => 'فتح دليل الملف';
	@override String get fileChoose => 'حدد الملف';
	@override String get filePathCannotEmpty => 'لا يمكن أن يكون مسار الملف فارغًا';
	@override String fileNotExist({required Object p}) => 'الملف غير موجود: ${p}';
	@override String fileTypeInvalid({required Object p}) => 'نوع الملف غير صالح:${p}';
	@override String get uwpExemption => 'إعفاء عزل شبكة UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'احصل على التكوين';
	@override String get addProfile => 'إضافة ملف تعريف';
	@override String get myProfiles => 'مظهر';
	@override String get myProfilesAtLeastOneReserveEnable => 'لا يمكن تعطيله ، يرجى الاحتفاظ بملف تعريف واحد على الأقل';
	@override String get profileEdit => 'تحرير الملف الشخصي';
	@override String get profileEditUrlExist => 'عنوان URL موجود بالفعل ، يرجى استخدام عنوان URL آخر';
	@override String get profileEditReloadAfterProfileUpdate => 'إعادة التحميل بعد تحديث الملف الشخصي';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'ابدأ اختبارات الكمون بعد التحديث تلقائيًا';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'يجب توصيل VPN ، وتمكين [إعادة التحميل بعد تحديث الملف الشخصي]';
	@override String get profileEditTestLatencyAutoRemove => 'إزالة الخوادم التي تفشل تلقائيا اختبارات الكمون';
	@override String get profileEditTestLatencyAutoRemoveTips => 'جرب ما يصل إلى 3 مرات';
	@override String get profileImport => 'استيراد ملف الملف الشخصي';
	@override String get profileAddUrlOrContent => 'إضافة رابط ملف التعريف';
	@override String get profileExists => 'الملف الشخصي موجود بالفعل ، من فضلك لا تضيفه مرارًا وتكرارًا';
	@override String get profileUrlOrContent => 'رابط/محتوى الملف الشخصي';
	@override String get profileUrlOrContentHit => 'ارتباط ملف التعريف/المحتوى [مطلوب] (دعم الدعم ، V2Ray (مدعوم الدفعة) ، خبأ ، karing ، sing-box ، shadowsocks ، روابط الملف الشخصي الفرعي)';
	@override String get profileUrlOrContentCannotEmpty => 'لا يمكن أن يكون رابط الملف الشخصي فارغًا';
	@override String profileAddFailedFormatException({required Object p}) => 'التنسيق خاطئ ، يرجى تصحيحه وإضافته مرة أخرى:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'فشلت إضافة: ${p}، يرجى محاولة تعديل [UserAgent] والمحاولة مرة أخرى، أو استخدم المتصفح الخاص بالجهاز لفتح رابط التكوين واستيراد ملف التكوين الذي تم تنزيله بواسطة المتصفح إلى هذا التطبيق';
	@override String profileAddFailedHandshakeException({required Object p}) => 'فشلت إضافة: ${p}، يرجى فتح الوكيل أو تعديل عقدة الوكيل الحالية والمحاولة مرة أخرى';
	@override String get profileAddParseFailed => 'فشل تحليل الملف الشخصي';
	@override String get profileAddNoServerAvaliable => 'لا يوجد خادم متاح، يرجى التأكد من صلاحية رابط التكوين أو ملف التكوين؛ وإذا كان التكوين الخاص بك يأتي من GitHub، فيرجى الحصول على عنوان الرابط من الزر [Raw] الموجود في الصفحة';
	@override String get profileAddWrapSuccess => 'تم إنشاء التكوين بنجاح، يرجى الانتقال إلى [${_root.meta.myProfiles}] للعرض';
}

// Path: isp
class _TranslationsIspAr implements TranslationsIspEn {
	_TranslationsIspAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get bind => 'الارتباط بـ [${_root.meta.isp}]';
	@override String unbind({required Object p}) => 'فك الارتباط[${p}]';
	@override String faq({required Object p}) => 'الأسئلة الشائعة[${p}]';
	@override String customerService({required Object p}) => 'خدمة العملاء[${p}]';
	@override String follow({required Object p}) => 'متابعة[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}]غير صالح أو منتهية الصلاحية';
}

// Path: permission
class _TranslationsPermissionAr implements TranslationsPermissionEn {
	_TranslationsPermissionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get camera => 'الكاميرا';
	@override String get screen => 'تسجيل الشاشة';
	@override String get appQuery => 'الحصول على قائمة التطبيقات';
	@override String request({required Object p}) => 'تمكين أذونات [${p}]';
	@override String requestNeed({required Object p}) => 'الرجاء تفعيل إذن [${p}]';
}

// Path: tls
class _TranslationsTlsAr implements TranslationsTlsEn {
	_TranslationsTlsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'تخطي التحقق من الشهادة';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'تمكين تجزئة TLS';
	@override String get fragmentSize => 'حجم شريحة TLS';
	@override String get fragmentSleep => 'TLS النوم المجزأ';
	@override String get mixedCaseSNIEnable => 'تمكين TLS الهجين SNI';
	@override String get paddingEnable => 'تمكين الحشو TLS';
	@override String get paddingSize => 'حجم الحشو TLS';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeAr implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'المحدد الحالي';
	@override String get urltest => 'اختيار آلي';
	@override String get direct => 'مباشر';
	@override String get block => 'حاجز';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeAr implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyAr implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonAr implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'تحديثات التكوين';
}

// Path: theme
class _TranslationsThemeAr implements TranslationsThemeEn {
	_TranslationsThemeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get light => 'لون فاتح';
	@override String get dark => 'أسود';
	@override String get auto => 'أوتوماتيكي';
}

// Path: main.tray
class _TranslationsMainTrayAr implements TranslationsMainTrayEn {
	_TranslationsMainTrayAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => '    يفتح    ';
	@override String get menuExit => '    مخرج    ';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsAr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'AboutScreen.installRefer': return 'تثبيت الرجوع';
			case 'AboutScreen.installTime': return 'وقت التثبيت';
			case 'AboutScreen.versionChannel': return 'تحديث القنوات تلقائيا';
			case 'AboutScreen.disableUAReport': return 'تطبيق بيانات التحسين';
			case 'AboutScreen.disableUAReportTip': return 'تساعدنا [بيانات تحسين التطبيق] على تحسين تجربة المنتج، وستقوم الإصدارات الأقل من الإصدار الرئيسي بإيقاف تشغيل جميع [بيانات تحسين التطبيق] تلقائيًا باستثناء [تنشيط التطبيق]';
			case 'AboutScreen.devOptions': return 'خيارات للمطور';
			case 'AboutScreen.enableDebugLog': return 'تمكين سجل التصحيح';
			case 'AboutScreen.viewFilsContent': return 'عرض الملفات';
			case 'AboutScreen.enablePprof': return 'يُمكَِن pprof';
			case 'AboutScreen.pprofPanel': return 'pprof لوحة';
			case 'AboutScreen.allowRemoteAccessPprof': return 'السماح بالوصول عن بعد إلى ${_root.AboutScreen.pprofPanel}';
			case 'AboutScreen.allowRemoteAccessHtmlBoard': return 'السماح بالوصول عن بعد${_root.SettingsScreen.htmlBoard}';
			case 'AboutScreen.useOriginalSBProfile': return 'استخدم تكوين صندوق الغناء الأصلي';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return 'عنوان URL الخادم';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return 'لايمكن ان يكون فارغا';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return 'فشل تسجيل الدخول:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return 'فشل في الحصول على قائمة الملفات:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => 'غير صالح [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => 'غير صالح [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => 'غير صالح [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => 'غير صالح [Rule Set]:${p}, يجب أن يكون عنوان URL عنوان URL HTTPS صالحًا وملفًا ثنائيًا مع ملحق الملف .SRS';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => 'غير صالح [Rule Set(build-in)]:${p} غير صالحة، التنسيق هو geosite:xxx أو geoip:xxx أو acl:xxx، ويجب أن يكون xxx اسم قاعدة صالحًا';
			case 'DiversionGroupCustomEditScreen.invalidPackageId': return ({required Object p}) => 'غير صالح [${_root.meta.appPackage}]:${p}';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return 'نصيحة: بعد الحفظ، يرجى الانتقال إلى [قواعد التحويل] لتعيين القواعد ذات الصلة، وإلا فلن تصبح سارية المفعول.';
			case 'DiversionRuleDetectScreen.title': return 'قاعدة التحويل اكتشف';
			case 'DiversionRuleDetectScreen.rule': return 'قاعدة:';
			case 'DiversionRuleDetectScreen.outbound': return 'مخدم بروكسي:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return 'نصيحة: حاول مطابقة القواعد من الأعلى إلى الأسفل، إذا لم تتم مطابقة أي قاعدة، استخدم [نهائي]';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'لا يمكن أن يكون ISP فارغًا';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'لا يمكن أن يكون عنوان URL فارغًا';
			case 'DnsSettingsScreen.error': return ({required Object p}) => 'نوع غير مدعوم:${p}';
			case 'DnsSettingsScreen.dnsDesc': return 'العمود الأول من بيانات التأخير هو تأخير استعلام الاتصال المباشر;\nالعمود الثاني: شغله [[حركة الوكيل]حل DNS من خلال خادم الوكيل]: بيانات التأخير هي تأخير الاستعلام الذي تم إعادة توجيهه من خلال خادم الوكيل الحالي; إذا [[حركة الوكيل]حل DNS من خلال خادم الوكيل]: بيانات التأخير هي تأخير استعلام الاتصال المباشر';
			case 'FileContentViewerScreen.title': return 'ملف محتوى الملف';
			case 'FileContentViewerScreen.clearFileContent': return 'هل أنت متأكد من مسح محتوى الملف؟';
			case 'FileContentViewerScreen.clearFileContentTips': return 'هل أنت متأكد من مسح محتوى ملف الملف الشخصي؟قد يتسبب تطهير ملف الملف الشخصي في فقدان البيانات أو وظائف التطبيق غير الطبيعية ، يرجى العمل بحذر';
			case 'HomeScreen.toSelectServer': return 'الرجاء تحديد خادم';
			case 'HomeScreen.invalidServer': return 'غير صالح ، الرجاء اختيار مرة أخرى';
			case 'HomeScreen.disabledServer': return 'معطل ، الرجاء اختيار مرة أخرى';
			case 'HomeScreen.expiredServer': return 'لا يوجد خادم متاح: قد يكون التكوين قديمًا أو معطلاً';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'جوارب:${sp},http(s):${hp}';
			case 'HomeScreen.myLinkEmpty': return 'الرجاء الإعداد [الاختصار وصلة] قبل استخدامه';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => 'يوجد عدد كبير جدًا من الخوادم الوكيلة [${p}>${p1}]، وقد لا يكون الاتصال ممكنًا بسبب قيود ذاكرة النظام.';
			case 'HomeScreen.tooMuchServers2': return ({required Object p, required Object p1}) => 'قد يؤدي وجود عدد كبير جدًا من خوادم الوكيل [${p}>${p1}] إلى حدوث اتصالات بطيئة أو غير قابلة للوصول';
			case 'LaunchFailedScreen.invalidProcess': return 'فشل التطبيق في البدء [اسم عملية غير صالح] ، يرجى إعادة تثبيت التطبيق إلى دليل منفصل';
			case 'LaunchFailedScreen.invalidProfile': return 'فشل التطبيق في البدء [فشل في الوصول إلى الملف الشخصي] ، يرجى إعادة تثبيت التطبيق';
			case 'LaunchFailedScreen.invalidVersion': return 'فشل التطبيق في بدء [إصدار غير صالح] ، يرجى إعادة تثبيت التطبيق';
			case 'LaunchFailedScreen.systemVersionLow': return 'فشل بدء تشغيل التطبيق [إصدار النظام منخفض جدًا]';
			case 'LaunchFailedScreen.invalidInstallPath': return 'مسار التثبيت غير صالح ، يرجى إعادة تثبيته إلى مسار صالح';
			case 'MyProfilesMergeScreen.profilesMerge': return 'دمج الملامح';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return 'ملف تعريف الهدف';
			case 'MyProfilesMergeScreen.profilesMergeSource': return 'ملفات تعريف المصدر';
			case 'MyProfilesMergeScreen.profilesMergeTips': return 'نصيحة: سيتم تجاهل تحويل ملفات تعريف المصدر';
			case 'NetCheckScreen.title': return 'فحص صافي';
			case 'NetCheckScreen.warn': return 'ملاحظة: نظرًا لتأثير بيئة الشبكة وقواعد التحويل ، فإن نتائج الاختبار ليست مكافئة تمامًا للنتائج الفعلية.';
			case 'NetCheckScreen.invalidDomain': return 'اسم النطاق غير صالح';
			case 'NetCheckScreen.connectivity': return 'اتصال الشبكة';
			case 'NetCheckScreen.connectivityTestIpv4AllFailed': return ({required Object p}) => 'اختبار اتصال IPv4[${p}] كل شيء فشل';
			case 'NetCheckScreen.connectivityTestIpv4Ok': return 'Ipv4 نجح الاتصال';
			case 'NetCheckScreen.connectivityTestIpv6AllFailed': return ({required Object p}) => 'Ipv6 اختبار الاتصال [${p}] كل شيء فشل ، قد لا تدعم شبكتك IPv6';
			case 'NetCheckScreen.connectivityTestIpv6Ok': return 'نجح اتصال IPv6';
			case 'NetCheckScreen.connectivityTestOk': return 'الشبكة متصلة بالإنترنت';
			case 'NetCheckScreen.connectivityTestFailed': return 'الشبكة ليست متصلة بعد بالإنترنت';
			case 'NetCheckScreen.remoteRulesetsDownloadOk': return 'تم تنزيل كل شيء بنجاح';
			case 'NetCheckScreen.remoteRulesetsDownloadNotOk': return 'التحميل أو فشل';
			case 'NetCheckScreen.outbound': return 'مخدم بروكسي';
			case 'NetCheckScreen.outboundOk': return ({required Object p}) => '[${p}] نجح الاتصال ';
			case 'NetCheckScreen.outboundFailed': return ({required Object p1, required Object p2}) => '[${p1}] فشل الاتصال\nError:[${p2}]';
			case 'NetCheckScreen.dnsServer': return 'DNS الخادم';
			case 'NetCheckScreen.dnsOk': return ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]نجح استعلام DNS\nDNS قاعدة:[${p2}]\n وقت الإستجابة:[${p3} ms]\nAعنوان[${p4}]';
			case 'NetCheckScreen.dnsFailed': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]نجح استعلام DNS\n nDNS قاعدة:[${p2}]\nخطأ:[${p3}]';
			case 'NetCheckScreen.host': return 'اتصال HTTP';
			case 'NetCheckScreen.hostConnection': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nقاعدة التحويل:[${p2}]\nمخدم بروكسي:[${p3}]';
			case 'NetCheckScreen.hostConnectionOk': return 'نجح الاتصال';
			case 'NetCheckScreen.hostConnectionFailed': return ({required Object p}) => 'فشل الاتصال:[${p}]';
			case 'NetConnectionsFilterScreen.title': return 'تصفية الاتصالات';
			case 'NetConnectionsFilterScreen.hostIp': return 'المجال/IP';
			case 'NetConnectionsFilterScreen.app': return 'برنامج';
			case 'NetConnectionsFilterScreen.rule': return 'قاعدة';
			case 'NetConnectionsFilterScreen.chain': return 'خارج';
			case 'NetConnectionsScreen.title': return 'روابط';
			case 'NetConnectionsScreen.copyAsCSV': return 'نسخ إلى تنسيق CSV';
			case 'NetConnectionsScreen.selectType': return 'حدد نوع التحويل';
			case 'PerAppAndroidScreen.title': return 'لكل وكيل تطبيق';
			case 'PerAppAndroidScreen.whiteListMode': return 'وضع القائمة البيضاء';
			case 'PerAppAndroidScreen.whiteListModeTip': return 'عند التمكين: فقط التطبيقات التي تم فحصها هي وكلاء ؛عندما لا يتم تمكينها: فقط التطبيقات التي لم يتم فحصها هي وكلاء';
			case 'RegionSettingsScreen.title': return 'الدولة او المنطقة';
			case 'RegionSettingsScreen.Regions': return '  نصيحة: يرجى تعيين بلدك أو منطقتك الحالية بشكل صحيح ، وإلا فقد يتسبب في مشاكل في تحويل الشبكة';
			case 'ServerSelectScreen.title': return 'حدد الخادم';
			case 'ServerSelectScreen.autoSelectServer': return 'تلقائي حدد الخادم بأقل زمن انتقال';
			case 'ServerSelectScreen.recentUse': return 'مستخدم حديثا';
			case 'ServerSelectScreen.myFav': return 'المفضل لدي';
			case 'ServerSelectScreen.selectLocal': return ({required Object p}) => 'الخادم المحدد هو عنوان محلي وقد لا يعمل بشكل صحيح:${p}';
			case 'ServerSelectScreen.selectRequireEnableIPv6': return 'الخادم المحدد هو عنوان IPv6 ويتطلب [تمكين IPv6]';
			case 'ServerSelectScreen.selectDisabled': return 'تم تعطيل هذا الخادم';
			case 'ServerSelectScreen.error404': return 'واجه اكتشاف الكمون خطأ ، يرجى التحقق مما إذا كان هناك تكوين مع نفس المحتوى';
			case 'SettingsScreen.getTranffic': return 'احصل على حركة المرور';
			case 'SettingsScreen.tutorial': return 'درس تعليمي';
			case 'SettingsScreen.commonlyUsedRulesets': return 'مجموعات القواعد شائعة الاستخدام';
			case 'SettingsScreen.howToRemoveAds': return 'كيفية إزالة الإعلانات';
			case 'SettingsScreen.htmlBoard': return 'لوحة على الانترنت';
			case 'SettingsScreen.dnsLeakDetection': return 'كشف تسرب DNS';
			case 'SettingsScreen.proxyLeakDetection': return 'كشف تسرب الوكيل';
			case 'SettingsScreen.speedTest': return 'اختبار السرعة';
			case 'SettingsScreen.rulesetDirectDownlad': return 'مجموعة القواعد تحميل مباشر';
			case 'SettingsScreen.hideUnusedDiversionGroup': return 'إخفاء قواعد تحويل حركة المرور غير النشطة';
			case 'SettingsScreen.disableISPDiversionGroup': return 'تعطيل قواعد تحويل [${_root.meta.isp}]';
			case 'SettingsScreen.portSettingRule': return 'القاعدة القائمة';
			case 'SettingsScreen.portSettingDirectAll': return 'توجيه كل شيء';
			case 'SettingsScreen.portSettingProxyAll': return 'وكيل الكل';
			case 'SettingsScreen.portSettingControl': return 'السيطرة والمزامنة';
			case 'SettingsScreen.portSettingCluster': return 'خدمة الكتلة';
			case 'SettingsScreen.modifyPort': return 'تعديل المنفذ';
			case 'SettingsScreen.modifyPortOccupied': return 'المنفذ مشغول، يرجى استخدام منفذ آخر';
			case 'SettingsScreen.ipStrategyTips': return 'قبل التمكين ، يرجى تأكيد أن شبكتك تدعم IPv6 ، وإلا لا يمكن الوصول إلى بعض حركة المرور بشكل طبيعي.';
			case 'SettingsScreen.tunAppendHttpProxy': return 'إلحاق وكيل HTTP إلى VPN';
			case 'SettingsScreen.tunAppendHttpProxyTips': return 'ستجاوز بعض التطبيقات جهاز NIC الظاهري والاتصال مباشرة بوكيل HTTP';
			case 'SettingsScreen.tunAllowBypassHttpProxyDomain': return 'المجالات المسموح لها بتجاوز وكيل HTTP';
			case 'SettingsScreen.dnsEnableRule': return 'تمكين قواعد تحويل DNS';
			case 'SettingsScreen.dnsEnableProxyResolveMode': return '[${_root.SettingsScreen.dnsTypeProxy}] قناة الدقة';
			case 'SettingsScreen.dnsEnableClientSubnet': return '[${_root.SettingsScreen.dnsTypeDirect}] تمكين ECS';
			case 'SettingsScreen.dnsTestDomain': return 'مجال الاختبار';
			case 'SettingsScreen.dnsTestDomainInvalid': return 'مجال غير صالح';
			case 'SettingsScreen.dnsTypeOutbound': return 'مخدم بروكسي';
			case 'SettingsScreen.dnsTypeDirect': return 'سير مستقيم';
			case 'SettingsScreen.dnsTypeProxy': return 'حركة الوكيل';
			case 'SettingsScreen.dnsTypeResolver': return 'خادم DNS';
			case 'SettingsScreen.dnsEnableRuleTips': return 'بعد التمكين ، سيختار اسم المجال خادم DNS المقابل للدقة وفقًا لقواعد التحويل';
			case 'SettingsScreen.dnsEnableFakeIpTips': return 'بعد تمكين FakeIP، إذا تم قطع اتصال VPN، فقد يلزم إعادة تشغيل التطبيق الخاص بك؛ يجب تشغيل هذه الوظيفة [وضع TUN]';
			case 'SettingsScreen.dnsTypeOutboundTips': return 'دقة اسم المجال لخادم الوكيل';
			case 'SettingsScreen.dnsTypeDirectTips': return 'حل اسم المجال لـ [${_root.SettingsScreen.dnsTypeDirect}]';
			case 'SettingsScreen.dnsTypeProxyTips': return 'حل اسم المجال لحركة المرور الوكيل';
			case 'SettingsScreen.dnsTypeResolverTips': return 'دقة اسم المجال لخادم DNS الآخر';
			case 'SettingsScreen.dnsAutoSetServer': return 'إعداد الخادم تلقائيا';
			case 'SettingsScreen.dnsResetServer': return 'إعادة تعيين الخادم';
			case 'SettingsScreen.inboundDomainResolve': return 'حل أسماء النطاقات الواردة';
			case 'SettingsScreen.privateDirect': return 'اتصال مباشر بالشبكة الخاصة';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => 'تحتاج بعض أسماء النطاقات التي لا تحتوي على قواعد تحويل تم تكوينها إلى حلها قبل أن تتمكن من الوصول إلى قواعد التحويل المستندة إلى IP؛ وتؤثر هذه الميزة على الطلبات الواردة إلى منفذ الوكيل [${p}]';
			case 'SettingsScreen.useRomoteRes': return 'استخدم الموارد البعيدة';
			case 'SettingsScreen.autoAppendRegion': return 'إرفاق القواعد الأساسية تلقائيًا';
			case 'SettingsScreen.autoSelect': return 'اختيار آلي';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'تجاهل الخوادم الوكيلة [المواجهة/المتسلسلة].';
			case 'SettingsScreen.autoSelectServerInterval': return 'فاصل الشيكات الكمون';
			case 'SettingsScreen.autoSelectSelectedHealthCheckInterval': return 'فترة فحص صحة الخادم الحالية';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return 'إعادة اكتشاف متى تتغير الشبكة';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return 'قم بتحديث الخادم الحالي بعد الكشف اليدوي عن التأخير';
			case 'SettingsScreen.autoSelectServerIntervalTips': return 'كلما كان الفاصل الزمني لاكتشاف التأخير أقصر، كلما تم تحديث بيانات تأخير الخادم في الوقت المناسب، ولكنها ستشغل المزيد من الموارد وتستهلك الكهرباء بشكل أسرع';
			case 'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips': return 'إذا فشل الاكتشاف، يتم تبديل العقدة؛ إذا لم يتم العثور على عقدة متاحة عند تبديل العقدة، يتم إعادة اكتشاف المجموعة مع التأخير';
			case 'SettingsScreen.autoSelectServerFavFirst': return 'PRI-Use [My Favs]';
			case 'SettingsScreen.autoSelectServerFavFirstTips': return 'إذا لم تكن قائمة [Favs] فارغة ، فاستخدم الخوادم في [Favs]';
			case 'SettingsScreen.autoSelectServerFilter': return 'تصفية خوادم غير صالحة';
			case 'SettingsScreen.autoSelectServerFilterTips': return ({required Object p}) => 'سيتم تصفية حالات فشل الكشف عن تأخير الخادم؛ إذا لم يكن هناك خادم متاح بعد التصفية، فسيتم استخدام الخوادم [${p}] الأولى بدلاً من ذلك.';
			case 'SettingsScreen.autoSelectServerLimitedNum': return 'الحد الأقصى لعدد الخوادم';
			case 'SettingsScreen.autoSelectServerLimitedNumTips': return 'سيتم تصفية الخوادم التي تتجاوز هذا الرقم';
			case 'SettingsScreen.numInvalid': return 'رقم غير صالح';
			case 'SettingsScreen.hideInvalidServer': return 'إخفاء الخوادم غير الصالحة';
			case 'SettingsScreen.sortServer': return 'خوادم الفرز';
			case 'SettingsScreen.sortServerTips': return 'فرز حسب الكمون من منخفض إلى مرتفع';
			case 'SettingsScreen.selectServerHideRecommand': return 'إخفاء [يوصي]';
			case 'SettingsScreen.selectServerHideRecent': return 'إخفاء [المستخدمة مؤخرًا]';
			case 'SettingsScreen.selectServerHideFav': return 'إخفاء [المفضلة لدي]';
			case 'SettingsScreen.homeScreen': return 'الشاشة الرئيسية';
			case 'SettingsScreen.theme': return 'Tالهيم';
			case 'SettingsScreen.widgetsAlpha': return 'شفافية الأدوات';
			case 'SettingsScreen.widgetsEmpty': return 'لا يوجد أداة متاحة';
			case 'SettingsScreen.backgroundImage': return 'صورة الخلفية';
			case 'SettingsScreen.myLink': return 'ارتباط اختصار';
			case 'SettingsScreen.autoConnectAfterLaunch': return 'اتصال السيارات بعد الإطلاق';
			case 'SettingsScreen.hideAfterLaunch': return 'إخفاء النافذة بعد بدء التشغيل';
			case 'SettingsScreen.autoSetSystemProxy': return 'وكيل نظام تعيين تلقائي عند الاتصال';
			case 'SettingsScreen.bypassSystemProxy': return 'أسماء النطاقات المسموح لها بتجاوز وكيل النظام';
			case 'SettingsScreen.disconnectWhenQuit': return 'افصل عندما يخرج التطبيق';
			case 'SettingsScreen.allowBypass': return 'السماح للتطبيقات بتجاوز VPN';
			case 'SettingsScreen.importSuccess': return 'استيراد نجاح ';
			case 'SettingsScreen.rewriteConfirm': return 'سيقوم هذا الملف بكتابة التكوين المحلي الحالي.هل تريد الاستمرار؟';
			case 'SettingsScreen.networkShare': return 'مشاركة الشبكة';
			case 'SettingsScreen.frontProxy': return 'الوكيل الأمامي/السلسلة';
			case 'SettingsScreen.frontProxyTips': return ({required Object p}) => 'البيانات->الخادم الوكيل الأمامي/السلسلة [خوادم بروكسي متعددة: من الأعلى إلى الأسفل]->الخادم الوكيل [${p}]->الخادم الهدف';
			case 'SettingsScreen.allowOtherHostsConnect': return 'اسمح للآخرين بالاتصال';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.allowOtherHostsConnectWarn': return 'بسبب قيود النظام، بعد تمكين ذلك، قد لا تتمكن التطبيقات الموجودة على هذا الجهاز والتي تستخدم http للوصول إلى الشبكة من الاتصال بالشبكة بشكل صحيح.';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'إذا لم يتمكن الآخرون من الوصول إلى هذا الجهاز بعد تشغيل المشاركة، فيرجى محاولة إيقاف تشغيل هذا المفتاح.';
			case 'SettingsScreen.enableCluster': return 'تمكين مجموعة الوكيل الجوارب/HTTP';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'السماح للآخرين بالاتصال بـ CLUSTER';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'مصادقة مجموعة الوكيل';
			case 'SettingsScreen.tunMode': return 'نفق وضع';
			case 'SettingsScreen.tuni4Address': return 'عنوان IP';
			case 'SettingsScreen.tunModeTips': return 'سيتولى وضع TUN كل حركة مرور النظام [في هذا الوضع ، يمكنك ترك وكيل النظام غير مدقلة]';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'يتطلب وضع TUN أذونات مسؤول النظام ، يرجى إعادة تشغيل التطبيق كمسؤول';
			case 'SettingsScreen.tunStack': return 'Stack';
			case 'SettingsScreen.tunHijackTips': return 'بعد الإغلاق، سيتم إعادة توجيه طلبات DNS من TUN مباشرة إلى خادم DNS المقابل';
			case 'SettingsScreen.launchAtStartup': return 'إطلاق عند بدء التشغيل';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return 'خروج تطبيق عند تبديل مستخدمي النظام';
			case 'SettingsScreen.handleScheme': return 'مكالمة مخطط النظام';
			case 'SettingsScreen.portableMode': return 'الوضع المحمول';
			case 'SettingsScreen.portableModeDisableTips': return 'إذا كنت بحاجة إلى الخروج من الوضع المحمول، فيرجى الخروج من [karing] وحذف المجلد [profiles] يدويًا في نفس الدليل مثل [karing.exe]';
			case 'SettingsScreen.handleKaringScheme': return 'مقبض karing:// Call';
			case 'SettingsScreen.handleClashScheme': return 'مقبض clash:// Call';
			case 'SettingsScreen.handleSingboxScheme': return 'مقبض sing-box:// يتصل';
			case 'SettingsScreen.alwayOnVPN': return 'اتصال مفتوح دائمًا';
			case 'SettingsScreen.disconnectAfterSleep': return 'قطع الاتصال بعد سبات النظام';
			case 'SettingsScreen.removeSystemVPNConfig': return 'حذف تكوين VPN النظام';
			case 'SettingsScreen.timeConnectOrDisconnect': return 'المقرر يتصل/قطع الاتصال';
			case 'SettingsScreen.timeConnectOrDisconnectTips': return 'يجب أن يكون VPN متصلاً ليصبح مفيدًا ؛بعد تشغيله ، سيتم تعطيل [النوم التلقائي]';
			case 'SettingsScreen.timeConnectAndDisconnectInterval': return ({required Object p}) => 'ال cاتصاللا يمكن أن يكون فاصل الانفصال أقل من ${p} دقائق';
			case 'SettingsScreen.disableFontScaler': return 'تعطيل تحجيم الخط(إعادة التشغيل يسري)';
			case 'SettingsScreen.autoOrientation': return 'اتبع دوران الشاشة';
			case 'SettingsScreen.restartTakesEffect': return 'إعادة التشغيل يسري';
			case 'SettingsScreen.resetSettings': return 'اعادة الضبط';
			case 'SettingsScreen.cleanCache': return 'مسح ذاكرة التخزين المؤقت';
			case 'SettingsScreen.cleanCacheDone': return 'اكتملت عملية التنظيف';
			case 'SettingsScreen.appleTestFlight': return 'Apple Testflight';
			case 'SettingsScreen.appleAppStore': return 'متجر تطبيقات Apple';
			case 'SettingsScreen.hasNewVersion': return ({required Object p}) => 'تحديث الإصدار ${p}';
			case 'SettingsScreen.follow': return 'تابعنا';
			case 'SettingsScreen.contactUs': return 'اتصل بنا';
			case 'SettingsScreen.supportUs': return 'ادعمنا';
			case 'SettingsScreen.rateInApp': return 'قيمنا';
			case 'SettingsScreen.rateInAppStore': return 'قيمنا في متجر التطبيقات';
			case 'UserAgreementScreen.privacyFirst': return 'خصوصيتك تأتي أولا';
			case 'UserAgreementScreen.agreeAndContinue': return 'قبول ومتابعة';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => 'الإصدار الجديد [${p}] جاهز';
			case 'VersionUpdateScreen.update': return 'أعد التشغيل للتحديث';
			case 'VersionUpdateScreen.cancel': return 'ليس الآن';
			case 'CommonWidget.diableAlwayOnVPN': return 'إذا تم تشغيل [Always on VPN]، فيرجى إيقاف تشغيل [Always on VPN] ومحاولة الاتصال مرة أخرى.';
			case 'CommonWidget.resetPort': return 'الرجاء تغيير المنفذ إلى منفذ آخر متاح أو إغلاق التطبيق الذي يشغل المنفذ.';
			case 'main.tray.menuOpen': return '    يفتح    ';
			case 'main.tray.menuExit': return '    مخرج    ';
			case 'meta.enable': return 'يُمكَِن';
			case 'meta.disable': return 'إبطال';
			case 'meta.bydefault': return 'تقصير';
			case 'meta.filter': return 'فلتر';
			case 'meta.filterMethod': return 'طريقة التصفية';
			case 'meta.include': return 'يشمل';
			case 'meta.exclude': return 'استبعاد';
			case 'meta.all': return 'الجميع';
			case 'meta.prefer': return 'أولوية';
			case 'meta.only': return 'فقط';
			case 'meta.open': return 'يفتح';
			case 'meta.close': return 'إنهاء';
			case 'meta.quit': return 'يترك';
			case 'meta.add': return 'اضف إليه';
			case 'meta.addSuccess': return 'اضيف بنجاح';
			case 'meta.addFailed': return ({required Object p}) => 'إضافة فشل:${p}';
			case 'meta.remove': return 'يمسح';
			case 'meta.removeConfirm': return 'هل انت متأكد من الحذف؟';
			case 'meta.edit': return 'يحرر';
			case 'meta.view': return 'يفحص';
			case 'meta.more': return 'أكثر';
			case 'meta.tips': return 'معلومات';
			case 'meta.copy': return 'ينسخ';
			case 'meta.save': return 'يحفظ';
			case 'meta.ok': return 'نعم';
			case 'meta.cancel': return 'يلغي';
			case 'meta.feedback': return 'تعليق';
			case 'meta.feedbackContent': return 'محتوى ردود الفعل';
			case 'meta.feedbackContentHit': return 'مطلوب ، ما يصل إلى 500 حرف';
			case 'meta.feedbackContentCannotEmpty': return 'لا يمكن أن يكون محتوى التعليقات فارغًا';
			case 'meta.faq': return 'أسئلة مكررة';
			case 'meta.download': return 'تحميل';
			case 'meta.upload': return 'رفع';
			case 'meta.downloadSpeed': return 'سرعة التنزيل';
			case 'meta.uploadSpeed': return 'سرعة التحميل';
			case 'meta.loading': return 'تحميل...';
			case 'meta.convert': return 'يتحول';
			case 'meta.check': return 'يفحص';
			case 'meta.detect': return 'يكشف';
			case 'meta.days': return 'أيام';
			case 'meta.hours': return 'ساعات';
			case 'meta.minutes': return 'دقائق';
			case 'meta.seconds': return 'ثانية';
			case 'meta.protocol': return 'بروتوكول';
			case 'meta.search': return 'يبحث';
			case 'meta.custom': return 'مخصص';
			case 'meta.inbound': return 'وارد';
			case 'meta.outbound': return 'مخرج';
			case 'meta.connect': return 'يتصل';
			case 'meta.disconnect': return 'قطع الاتصال';
			case 'meta.reconnect': return 'إعادة الاتصال';
			case 'meta.connected': return 'متصل';
			case 'meta.disconnected': return 'انقطع الاتصال';
			case 'meta.connecting': return 'توصيل';
			case 'meta.connectTimeout': return 'ربط مهلة';
			case 'meta.timeout': return 'نفذ الوقت';
			case 'meta.timeoutDuration': return 'مدة مهلة الانتظار';
			case 'meta.runDuration': return 'وقت التشغيل';
			case 'meta.latency': return 'تأخير';
			case 'meta.latencyTest': return 'كشف التأخير';
			case 'meta.language': return 'لغة';
			case 'meta.next': return 'التالي';
			case 'meta.done': return 'منتهي';
			case 'meta.apply': return 'يتقدم';
			case 'meta.refresh': return 'ينعش';
			case 'meta.retry': return 'إعادة المحاولة?';
			case 'meta.update': return 'تجديد';
			case 'meta.updateInterval': return 'الفاصل الزمني للتحديث';
			case 'meta.updateInterval5mTips': return 'الحد الأدنى: 5 م';
			case 'meta.updateFailed': return ({required Object p}) => 'فشل التحديث:${p}';
			case 'meta.none': return 'لا أحد';
			case 'meta.start': return 'يبدأ';
			case 'meta.pause': return 'يوقف';
			case 'meta.reset': return 'إعادة ضبط';
			case 'meta.submit': return 'يُقدِّم';
			case 'meta.user': return 'مستخدم';
			case 'meta.account': return 'حساب';
			case 'meta.password': return 'كلمة المرور';
			case 'meta.required': return 'مطلوب';
			case 'meta.type': return 'يكتب';
			case 'meta.path': return 'طريق';
			case 'meta.local': return 'محلي';
			case 'meta.remote': return 'بعيد';
			case 'meta.other': return 'آخر';
			case 'meta.dns': return 'DNS';
			case 'meta.url': return 'URL';
			case 'meta.urlInvalid': return 'URL غير صالح';
			case 'meta.urlCannotEmpty': return 'لا يمكن أن يكون الرابط فارغًا';
			case 'meta.urlTooLong': return 'عنوان URL طويل جدًا (>8182)';
			case 'meta.copyUrl': return 'Copy Link';
			case 'meta.openUrl': return 'Open Link';
			case 'meta.shareUrl': return 'شارك الرابط';
			case 'meta.speedTestUrl': return 'URL اختبار السرعة';
			case 'meta.tls': return 'TLS';
			case 'meta.userAgent': return 'UserAgent';
			case 'meta.staticIP': return 'رقم تعريف حاسوب ثابت';
			case 'meta.isp': return 'مزودي VPN';
			case 'meta.domainSuffix': return 'لاحقة اسم المجال';
			case 'meta.domain': return 'اسم النطاق';
			case 'meta.domainKeyword': return 'الكلمات الرئيسية لاسم المجال';
			case 'meta.domainRegex': return 'انتظام اسم المجال';
			case 'meta.ip': return 'IP';
			case 'meta.port': return 'ميناء';
			case 'meta.portRange': return 'نطاق الميناء';
			case 'meta.appPackage': return 'معرف حزمة التطبيق';
			case 'meta.processName': return 'اسم العملية';
			case 'meta.processPath': return 'مسار العملية';
			case 'meta.processDir': return 'دليل العمليات';
			case 'meta.systemProxy': return 'وكيل النظام';
			case 'meta.netInterfaces': return 'واجهات صافية';
			case 'meta.netSpeed': return 'سرعة';
			case 'meta.trafficTotal': return 'إجمالي حركة المرور';
			case 'meta.trafficProxy': return 'وكيل حركة المرور';
			case 'meta.website': return 'موقع إلكتروني';
			case 'meta.memory': return 'ذاكرة';
			case 'meta.outboundMode': return 'الوضع الصادر';
			case 'meta.rule': return 'قاعدة';
			case 'meta.global': return 'عالمي';
			case 'meta.qrcode': return 'رمز الاستجابة السريعة';
			case 'meta.qrcodeTooLong': return 'النص طويل جدًا لعرضه';
			case 'meta.qrcodeShare': return 'شارك رمز الاستجابة السريعة';
			case 'meta.textToQrcode': return 'رسالة نصية إلى رمز الاستجابة السريعة';
			case 'meta.qrcodeScan': return 'مسح رمز الاستجابة السريعة';
			case 'meta.qrcodeScanResult': return 'نتيجة المسح';
			case 'meta.qrcodeScanFromImage': return 'مسح من الصورة';
			case 'meta.qrcodeScanResultFailed': return 'فشل في تحليل الصورة ، يرجى التأكد من أن لقطة الشاشة هي رمز QR صالح';
			case 'meta.qrcodeScanResultEmpty': return 'نتيجة الفحص فارغة';
			case 'meta.screenshot': return 'لقطة شاشة';
			case 'meta.backupAndSync': return 'النسخ الاحتياطي والمزامنة';
			case 'meta.autoBackup': return 'النسخ الاحتياطي التلقائي';
			case 'meta.autoBackupAddProfile': return 'بعد إضافة التكوين';
			case 'meta.autoBackupRemoveProfile': return 'بعد حذف التكوين';
			case 'meta.currentProfile': return 'التكوين الحالي';
			case 'meta.importAndExport': return 'استيراد وتصدير';
			case 'meta.import': return 'يستورد';
			case 'meta.importFromUrl': return 'الاستيراد من عنوان URL';
			case 'meta.export': return 'يصدّر';
			case 'meta.send': return 'يرسل';
			case 'meta.receive': return 'تولي';
			case 'meta.sendConfirm': return 'تأكيد الإرسال؟';
			case 'meta.termOfUse': return 'شرط الخدمة';
			case 'meta.privacyPolicy': return 'سياسة الخصوصية';
			case 'meta.about': return 'عن';
			case 'meta.name': return 'اسم';
			case 'meta.version': return 'إصدار';
			case 'meta.notice': return 'يلاحظ';
			case 'meta.appNotifyWithReason': return ({required Object p, required Object p1}) => 'الإجراء: ${p}\nالسبب: ${p1}';
			case 'meta.sort': return 'إعادة ترتيب';
			case 'meta.novice': return 'وضع المبتدئ';
			case 'meta.willCompleteAfterRebootInstall': return 'يرجى إعادة تشغيل جهازك لإكمال تثبيت توسيع النظام';
			case 'meta.willCompleteAfterRebootUninstall': return 'يرجى إعادة تشغيل جهازك لإكمال إلغاء تثبيت ملحق النظام';
			case 'meta.requestNeedsUserApproval': return 'يرجى [السماح] لكارينج بتثبيت ملحقات النظام في [إعدادات النظام] - [الخصوصية والأمان]، وإعادة الاتصال بعد اكتمال التثبيت';
			case 'meta.FullDiskAccessPermissionRequired': return 'لطفاً مجوز karingServiceSE را در [تنظیمات سیستم]-[حریم خصوصی و امنیت]-[مجوز دسترسی کامل به دیسک] فعال کنید و دوباره متصل شوید.';
			case 'meta.tvMode': return 'وضع التلفزيون';
			case 'meta.recommended': return 'يوصي';
			case 'meta.innerError': return ({required Object p}) => 'خطأ داخلي: ${p}';
			case 'meta.logicOperation': return 'عملية منطقية';
			case 'meta.share': return 'يشارك';
			case 'meta.candidateWord': return 'كلمات المرشح';
			case 'meta.keywordOrRegx': return 'الكلمات الرئيسية/العادية';
			case 'meta.importFromClipboard': return 'استيراد من الحافظة';
			case 'meta.exportToClipboard': return 'تصدير إلى الحافظة';
			case 'meta.server': return 'الخادم';
			case 'meta.ads': return 'أعلن';
			case 'meta.adsRemove': return 'إزالة الإعلانات';
			case 'meta.adsBanner': return 'إعلانات البانر';
			case 'meta.donate': return 'يتبرع';
			case 'meta.diversion': return 'تحويل';
			case 'meta.diversionRules': return 'قواعد التحويل';
			case 'meta.diversionCustomGroup': return 'مجموعة تحويل مخصصة';
			case 'meta.urlTestCustomGroup': return 'التحديد التلقائي المخصص';
			case 'meta.setting': return 'إعدادات';
			case 'meta.iCloud': return 'iCloud';
			case 'meta.appleTV': return 'Apple TV';
			case 'meta.webdav': return 'Webdav';
			case 'meta.lanSync': return 'LAN SYNC';
			case 'meta.lanSyncNotQuitTips': return 'لا تخرج من هذه الواجهة قبل اكتمال التزامن';
			case 'meta.deviceNoSpace': return 'مساحة غير كافيه في القرص';
			case 'meta.hideSystemApp': return 'إخفاء تطبيقات النظام';
			case 'meta.hideAppIcon': return 'إخفاء أيقونة التطبيق';
			case 'meta.hideDockIcon': return 'إخفاء أيقونة Dock';
			case 'meta.remark': return 'ملاحظة';
			case 'meta.remarkExist': return 'ملاحظة موجودة بالفعل ، يرجى استخدام اسم آخر';
			case 'meta.remarkCannotEmpty': return 'لا يمكن أن تكون الملاحظات فارغة';
			case 'meta.remarkTooLong': return 'ملاحظات تصل إلى 32 حرفًا';
			case 'meta.openDir': return 'فتح دليل الملف';
			case 'meta.fileChoose': return 'حدد الملف';
			case 'meta.filePathCannotEmpty': return 'لا يمكن أن يكون مسار الملف فارغًا';
			case 'meta.fileNotExist': return ({required Object p}) => 'الملف غير موجود: ${p}';
			case 'meta.fileTypeInvalid': return ({required Object p}) => 'نوع الملف غير صالح:${p}';
			case 'meta.uwpExemption': return 'إعفاء عزل شبكة UWP';
			case 'meta.rulesetGeoSite': return 'GeoSite';
			case 'meta.rulesetGeoIp': return 'GeoIP';
			case 'meta.rulesetAcl': return 'ACL';
			case 'meta.getProfile': return 'احصل على التكوين';
			case 'meta.addProfile': return 'إضافة ملف تعريف';
			case 'meta.myProfiles': return 'مظهر';
			case 'meta.myProfilesAtLeastOneReserveEnable': return 'لا يمكن تعطيله ، يرجى الاحتفاظ بملف تعريف واحد على الأقل';
			case 'meta.profileEdit': return 'تحرير الملف الشخصي';
			case 'meta.profileEditUrlExist': return 'عنوان URL موجود بالفعل ، يرجى استخدام عنوان URL آخر';
			case 'meta.profileEditReloadAfterProfileUpdate': return 'إعادة التحميل بعد تحديث الملف الشخصي';
			case 'meta.profileEditTestLatencyAfterProfileUpdate': return 'ابدأ اختبارات الكمون بعد التحديث تلقائيًا';
			case 'meta.profileEditTestLatencyAfterProfileUpdateTips': return 'يجب توصيل VPN ، وتمكين [إعادة التحميل بعد تحديث الملف الشخصي]';
			case 'meta.profileEditTestLatencyAutoRemove': return 'إزالة الخوادم التي تفشل تلقائيا اختبارات الكمون';
			case 'meta.profileEditTestLatencyAutoRemoveTips': return 'جرب ما يصل إلى 3 مرات';
			case 'meta.profileImport': return 'استيراد ملف الملف الشخصي';
			case 'meta.profileAddUrlOrContent': return 'إضافة رابط ملف التعريف';
			case 'meta.profileExists': return 'الملف الشخصي موجود بالفعل ، من فضلك لا تضيفه مرارًا وتكرارًا';
			case 'meta.profileUrlOrContent': return 'رابط/محتوى الملف الشخصي';
			case 'meta.profileUrlOrContentHit': return 'ارتباط ملف التعريف/المحتوى [مطلوب] (دعم الدعم ، V2Ray (مدعوم الدفعة) ، خبأ ، karing ، sing-box ، shadowsocks ، روابط الملف الشخصي الفرعي)';
			case 'meta.profileUrlOrContentCannotEmpty': return 'لا يمكن أن يكون رابط الملف الشخصي فارغًا';
			case 'meta.profileAddFailedFormatException': return ({required Object p}) => 'التنسيق خاطئ ، يرجى تصحيحه وإضافته مرة أخرى:${p}';
			case 'meta.profileAddFailedThenDownloadAndImport': return ({required Object p}) => 'فشلت إضافة: ${p}، يرجى محاولة تعديل [UserAgent] والمحاولة مرة أخرى، أو استخدم المتصفح الخاص بالجهاز لفتح رابط التكوين واستيراد ملف التكوين الذي تم تنزيله بواسطة المتصفح إلى هذا التطبيق';
			case 'meta.profileAddFailedHandshakeException': return ({required Object p}) => 'فشلت إضافة: ${p}، يرجى فتح الوكيل أو تعديل عقدة الوكيل الحالية والمحاولة مرة أخرى';
			case 'meta.profileAddParseFailed': return 'فشل تحليل الملف الشخصي';
			case 'meta.profileAddNoServerAvaliable': return 'لا يوجد خادم متاح، يرجى التأكد من صلاحية رابط التكوين أو ملف التكوين؛ وإذا كان التكوين الخاص بك يأتي من GitHub، فيرجى الحصول على عنوان الرابط من الزر [Raw] الموجود في الصفحة';
			case 'meta.profileAddWrapSuccess': return 'تم إنشاء التكوين بنجاح، يرجى الانتقال إلى [${_root.meta.myProfiles}] للعرض';
			case 'diversionRulesKeep': return 'احتفظ بـ [${_root.meta.isp}]${_root.meta.diversionRules}';
			case 'diversionCustomGroupPreset': return 'الإعداد المسبق [مجموعة تحويل مخصصة]';
			case 'diversionCustomGroupPresetTips': return 'ملاحظة: ستتم إضافة/تغطية العناصر الممكّنة إلى [مجموعة التحويل المخصصة] و[قواعد التحويل]';
			case 'diversionCustomGroupAddTips': return 'ملاحظة: قد تحتاج إلى ضبط الفرز يدويًا بعد إضافته، وإلا فإن التحويل المضاف حديثًا قد لا يسري مفعوله.';
			case 'rulesetEnableTips': return 'نصيحة: بعد تشغيل الخيارات ، يرجى الانتقال إلى [قواعد التحويل] لتعيين القواعد ذات الصلة ، وإلا فلن تدخل ساري المفعول ';
			case 'ispUserAgentTips': return 'سيقدم [${_root.meta.isp} أنواعًا مختلفة من بيانات الاشتراك بناءً على [UserAgent] في طلب [HTTP].';
			case 'ispDiversionTips': return 'قواعد التفريغ التي يوفرها [${_root.meta.isp}]؛ لا تدعم الاشتراكات من النوع [V2Ray] قواعد التفريغ';
			case 'isp.bind': return 'الارتباط بـ [${_root.meta.isp}]';
			case 'isp.unbind': return ({required Object p}) => 'فك الارتباط[${p}]';
			case 'isp.faq': return ({required Object p}) => 'الأسئلة الشائعة[${p}]';
			case 'isp.customerService': return ({required Object p}) => 'خدمة العملاء[${p}]';
			case 'isp.follow': return ({required Object p}) => 'متابعة[${p}]';
			case 'isp.invalidOrExpired': return '[${_root.meta.isp}]غير صالح أو منتهية الصلاحية';
			case 'permission.camera': return 'الكاميرا';
			case 'permission.screen': return 'تسجيل الشاشة';
			case 'permission.appQuery': return 'الحصول على قائمة التطبيقات';
			case 'permission.request': return ({required Object p}) => 'تمكين أذونات [${p}]';
			case 'permission.requestNeed': return ({required Object p}) => 'الرجاء تفعيل إذن [${p}]';
			case 'tls.insecure': return 'تخطي التحقق من الشهادة';
			case 'tls.affectProtocolTips': return 'vless, vmess, trojan';
			case 'tls.fragmentEnable': return 'تمكين تجزئة TLS';
			case 'tls.fragmentSize': return 'حجم شريحة TLS';
			case 'tls.fragmentSleep': return 'TLS النوم المجزأ';
			case 'tls.mixedCaseSNIEnable': return 'تمكين TLS الهجين SNI';
			case 'tls.paddingEnable': return 'تمكين الحشو TLS';
			case 'tls.paddingSize': return 'حجم الحشو TLS';
			case 'outboundRuleMode.currentSelected': return 'المحدد الحالي';
			case 'outboundRuleMode.urltest': return 'اختيار آلي';
			case 'outboundRuleMode.direct': return 'مباشر';
			case 'outboundRuleMode.block': return 'حاجز';
			case 'dnsProxyResolveMode.proxy': return _root.outboundRuleMode.currentSelected;
			case 'dnsProxyResolveMode.direct': return _root.outboundRuleMode.direct;
			case 'dnsProxyResolveMode.fakeip': return 'FakeIP';
			case 'proxyStrategy.perferProxy': return '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
			case 'proxyStrategy.perferDirect': return '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
			case 'proxyStrategy.onlyProxy': return '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
			case 'proxyStrategy.onlyDirect': return '${_root.meta.only} ${_root.outboundRuleMode.direct}';
			case 'reloadReason.latencyTest': return '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
			case 'reloadReason.profileUpdate': return 'تحديثات التكوين';
			case 'theme.light': return 'لون فاتح';
			case 'theme.dark': return 'أسود';
			case 'theme.auto': return 'أوتوماتيكي';
			case 'downloadProxyStrategy': return 'تحميل القناة';
			case 'dnsProxyResolveModeTips': return '[${_root.dnsProxyResolveMode.proxy}]: الاتصال بخادم DNS من خلال خادم الوكيل لحل اسم المجال\n[${_root.dnsProxyResolveMode.direct}]: الاتصال مباشرة بخادم DNS لحل اسم المجال\n[ ${_root.dnsProxyResolveMode.fakeip}]: بواسطة الوكيل يقوم الخادم بحل اسم المجال نيابةً عنك؛ إذا انفصلت عن شبكة VPN، فقد يلزم إعادة تشغيل تطبيقك؛ ينطبق فقط على حركة المرور الواردة من [TUN]';
			case 'routeFinal': return 'أخير';
			case 'protocolSniff': return 'الكشف عن البروتوكول';
			case 'sendOrReceiveNotMatch': return ({required Object p}) => 'الرجاء استخدام [${p}]';
			case 'turnOffPrivateDirect': return 'يرجى تمكين [الاتصال المباشر بالشبكة الخاصة] أولاً';
			case 'targetConnectFailed': return ({required Object p}) => 'فشل الاتصال بـ [${p}]، يرجى التأكد من وجود الجهاز في نفس الشبكة المحلية (LAN)';
			case 'appleTVSync': return 'مزامنة التكوين الأساسي الحالي مع Apple TV - Karing';
			case 'appleTVSyncDone': return 'اكتملت المزامنة، برجاء الانتقال إلى Apple TV - Karing لفتح/إعادة تشغيل الاتصال';
			case 'appleTVRemoveCoreConfig': return 'إزالة Apple TV - Karing Core Configuration';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - تم حذف الملف التعريفي الأساسي لـ Karing؛ وتم قطع اتصال خدمة VPN';
			case 'appleTVUrlInvalid': return 'عنوان URL غير صالح، يرجى فتح Apple TV - Karing، ومسح رمز QR الذي يعرضه Karing';
			case 'appleTV404': return ({required Object p}) => 'AppleTV:Karing[${p}] لا يحتوي على هذه الوظيفة، يرجى الترقية والمحاولة مرة أخرى';
			case 'appleCoreVersionNotMatch': return ({required Object p}) => 'لا يتطابق الإصدار الرئيسي الأساسي، يرجى ترقية [${p}] والمحاولة مرة أخرى';
			case 'remoteProfileEditConfirm': return 'بعد تحديث التكوين، ستتم استعادة تعديلات العقدة. هل تريد المتابعة؟';
			case 'mustBeValidHttpsURL': return 'يجب أن يكون عنوان URL HTTPS صالح';
			case 'fileNotExistReinstall': return ({required Object p}) => 'الملف مفقود [${p}]، يرجى إعادة التثبيت';
			case 'noNetworkConnect': return 'لا يوجد اتصال بالإنترنت';
			case 'turnOffNetworkBeforeInstall': return 'يوصى بالتبديل إلى [وضع الطيران] قبل تثبيت التحديث';
			case 'latencyTestResolveIP': return 'أثناء الكشف اليدوي، يتم أيضًا تحليل عنوان IP الخاص بالتصدير.';
			case 'removeBannerAdsByShare': return 'شارك[Karing]اذهب إلى الإعلانات';
			case 'removeBannerAdsByReward': return 'مشاهدة الإعلانات انتقل إلى الإعلانات';
			case 'removeBannerAdsByShareTip': return ({required Object p, required Object d}) => 'شارك مرة واحدة وستحصل على ${p} من الأيام بدون مكافآت إعلانية (يمكن تكديسها، حتى ${d} من الأيام)';
			case 'removeBannerAdsByRewardTip': return ({required Object p}) => 'شاهد إعلانًا وستحصل على مكافأة للأيام الخالية من الإعلانات بقيمة ${p} (لا يمكن تجميعها)';
			case 'removeBannerAdsDone': return ({required Object p}) => 'تلقى ${p} أيام مكافأة خالية من الإعلانات';
			case 'edgeRuntimeNotInstalled': return 'لم يتم تثبيت وقت تشغيل Edge WebView2 على الجهاز الحالي ولا يمكن عرض الصفحة، يرجى تنزيل وتثبيت وقت تشغيل Edge WebView2 (x64)، وإعادة تشغيل التطبيق والمحاولة مرة أخرى.';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

