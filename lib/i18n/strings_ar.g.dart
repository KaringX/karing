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
class TranslationsAr with BaseTranslations<AppLocale, Translations> implements Translations {
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
	@override String get sudoPassword => 'كلمة مرور sudo (مطلوبة لوضع TUN)';
	@override String get turnOffNetworkBeforeInstall => 'يوصى بالتبديل إلى [وضع الطيران] قبل تثبيت التحديث';
	@override String get latencyTestResolveIP => 'أثناء الكشف اليدوي، يتم أيضًا تحليل عنوان IP الخاص بالتصدير.';
	@override String get removeBannerAdsByShare => 'شارك[Karing]اذهب إلى الإعلانات';
	@override String get removeBannerAdsByReward => 'مشاهدة الإعلانات انتقل إلى الإعلانات';
	@override String removeBannerAdsByShareTip({required Object p, required Object d}) => 'شارك مرة واحدة وستحصل على ${p} من الأيام بدون مكافآت إعلانية (يمكن تكديسها، حتى ${d} من الأيام)';
	@override String removeBannerAdsByRewardTip({required Object p}) => 'شاهد إعلانًا وستحصل على مكافأة للأيام الخالية من الإعلانات بقيمة ${p} (لا يمكن تجميعها)';
	@override String removeBannerAdsDone({required Object p}) => 'تلقى ${p} أيام مكافأة خالية من الإعلانات';
	@override String get maybeAdsByReward => 'قد تحتاج لمشاهدة إعلان قبل استخدام هذه الميزة. انقر [${_root.meta.ok}] للمتابعة.';
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
	@override String get autoDownloadPkg => 'تنزيل حزم التحديث تلقائيًا';
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
	@override String invalid({required Object p0, required Object p}) => 'غير صالح [${p0}]:${p}';
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
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] قناة الدقة';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] تمكين ECS';
	@override String get dnsTestDomain => 'مجال الاختبار';
	@override String get dnsTestDomainInvalid => 'مجال غير صالح';
	@override String get dnsTypeOutbound => 'مخدم بروكسي';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'خادم DNS';
	@override String get dnsEnableRuleTips => 'بعد التمكين ، سيختار اسم المجال خادم DNS المقابل للدقة وفقًا لقواعد التحويل';
	@override String get dnsEnableFakeIpTips => 'بعد تمكين FakeIP، إذا تم قطع اتصال VPN، فقد يلزم إعادة تشغيل التطبيق الخاص بك؛ يجب تشغيل هذه الوظيفة [وضع TUN]';
	@override String get dnsTypeOutboundTips => 'دقة اسم المجال لخادم الوكيل';
	@override String get dnsTypeDirectTips => 'حل اسم المجال لـ [${_root.meta.trafficDirect}]';
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
	@override String get autoConnectAtBoot => 'الاتصال التلقائي بعد بدء تشغيل النظام';
	@override String get autoConnectAtBootTips => 'يجب دعم النظام؛ وقد تتطلب بعض الأنظمة أيضًا تمكين [البدء التلقائي].';
	@override String get hideAfterLaunch => 'إخفاء النافذة بعد بدء التشغيل';
	@override String get autoSetSystemProxy => 'وكيل نظام تعيين تلقائي عند الاتصال';
	@override String get bypassSystemProxy => 'أسماء النطاقات المسموح لها بتجاوز وكيل النظام';
	@override String get disconnectWhenQuit => 'افصل عندما يخرج التطبيق';
	@override String get excludeFromRecent => 'إخفاء من المهام الأخيرة';
	@override String get wakeLock => 'قفل الاستيقاظ';
	@override String get hideVpn => 'إخفاء أيقونة VPN';
	@override String get hideVpnTips => 'سيؤدي تمكين IPv6 إلى فشل هذه الوظيفة';
	@override String get allowBypass => 'السماح للتطبيقات بتجاوز VPN';
	@override String get importSuccess => 'استيراد نجاح ';
	@override String get rewriteConfirm => 'سيقوم هذا الملف بكتابة التكوين المحلي الحالي.هل تريد الاستمرار؟';
	@override String get mergePerapp => 'دمج القوائم المحلية [${_root.PerAppAndroidScreen.title}]';
	@override String get networkShare => 'مشاركة الشبكة';
	@override String get frontProxy => 'الوكيل الأمامي/السلسلة';
	@override String frontProxyTips({required Object p}) => 'البيانات->الخادم الوكيل الأمامي/السلسلة [خوادم بروكسي متعددة: من الأعلى إلى الأسفل]->الخادم الوكيل [${p}]->الخادم الهدف';
	@override String get allowOtherHostsConnect => 'اسمح للآخرين بالاتصال';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'بسبب قيود النظام، بعد تمكين ذلك، قد لا تتمكن التطبيقات الموجودة على هذا الجهاز والتي تستخدم http للوصول إلى الشبكة من الاتصال بالشبكة بشكل صحيح.';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunAutoRedirect => 'Auto Redirect';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'إذا لم يتمكن الآخرون من الوصول إلى هذا الجهاز بعد تشغيل المشاركة، فيرجى محاولة إيقاف تشغيل هذا المفتاح.';
	@override String get loopbackAddress => 'Loopback Address';
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
	@override String get reconnectTakesEffect => 'سيتم تطبيقه بعد إعادة الاتصال.';
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
	@override String get cache => 'مخبأ';
	@override String get days => 'أيام';
	@override String get hours => 'ساعات';
	@override String get minutes => 'دقائق';
	@override String get seconds => 'ثانية';
	@override String get milliseconds => 'ميلي ثانية';
	@override String get tolerance => 'تسامح';
	@override String get dateTimePeriod => 'الفترة الزمنية';
	@override String get protocol => 'بروتوكول';
	@override String get search => 'يبحث';
	@override String get custom => 'مخصص';
	@override String get inbound => 'وارد';
	@override String get outbound => 'مخرج';
	@override String get destination => 'هدف';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
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
	@override String get samplingUnit => 'وحدة زمن أخذ العينات';
	@override String get queryResultCount => 'عدد نتائج الاستعلام';
	@override String queryLimit({required Object p}) => 'عرض ما يصل إلى ${p} من البيانات';
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
	@override String get staticIPTips => 'يجب عليك تمكين [TUN HijackDNS] أو [${_root.SettingsScreen.inboundDomainResolve}].';
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
	@override String get percentage => 'نسبة مئوية';
	@override String get statistics => 'إحصائيات';
	@override String get statisticsAndAnalysis => 'الإحصاء والتحليل';
	@override String get statisticsDataDesensitize => 'إخفاء هوية البيانات';
	@override String get statisticsDataDesensitizeTips => 'سيتم استبدال معرف العملية/الحزمة/اسم المجال المستهدف/عنوان IP المستهدف وما إلى ذلك بـ * وحفظه بعد إزالة الحساسية';
	@override String get records => 'سِجِلّ';
	@override String get requestRecords => 'طلب السجلات';
	@override String get netInterfaces => 'واجهات صافية';
	@override String get netSpeed => 'سرعة';
	@override String get memoryTrendChart => 'مخطط اتجاهات الذاكرة';
	@override String get trafficTrendChart => 'مخطط اتجاهات حركة المرور';
	@override String get trafficDistributionChart => 'خريطة توزيع حركة المرور';
	@override String get connectionChart => 'مخطط اتجاهات الاتصال';
	@override String get memoryChart => 'مخطط اتجاهات الذاكرة';
	@override String get trafficStatistics => 'إحصائيات المرور';
	@override String get traffic => 'تدفق';
	@override String get trafficTotal => 'إجمالي حركة المرور';
	@override String get trafficProxy => 'وكيل حركة المرور';
	@override String get trafficDirect => 'سير مستقيم';
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
	@override String get noProfileGotAutoBackup => 'إذا فقدت بيانات مثل [${_root.meta.myProfiles}]، فيمكنك استعادتها من [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] أو مصادر النسخ الاحتياطي الأخرى (مثل iCloud أو Webdav، وما إلى ذلك).';
	@override String get autoBackupAddProfile => 'بعد إضافة التكوين';
	@override String get autoBackupRemoveProfile => 'بعد حذف التكوين';
	@override String get profile => 'التكوين';
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
	@override String get requestNeedsUserApproval => '١. [إعدادات النظام] - [الخصوصية والأمان] - [السماح] لـ Karing بتثبيت ملحقات النظام. ٢. [إعدادات النظام] - [عام] - [تسجيل الدخول والملحقات - ملحقات الشبكة] - [karingServiceSE] - [أعد الاتصال بعد الانتهاء]';
	@override String get FullDiskAccessPermissionRequired => 'لطفاً مجوز [karingServiceSE] را در [تنظیمات سیستم]-[حریم خصوصی و امنیت]-[مجوز دسترسی کامل به دیسک] فعال کنید و دوباره متصل شوید.';
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

/// The flat map containing all translations for locale <ar>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsAr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'تثبيت الرجوع',
			'AboutScreen.installTime' => 'وقت التثبيت',
			'AboutScreen.versionChannel' => 'تحديث القنوات تلقائيا',
			'AboutScreen.autoDownloadPkg' => 'تنزيل حزم التحديث تلقائيًا',
			'AboutScreen.disableUAReport' => 'تطبيق بيانات التحسين',
			'AboutScreen.disableUAReportTip' => 'تساعدنا [بيانات تحسين التطبيق] على تحسين تجربة المنتج، وستقوم الإصدارات الأقل من الإصدار الرئيسي بإيقاف تشغيل جميع [بيانات تحسين التطبيق] تلقائيًا باستثناء [تنشيط التطبيق]',
			'AboutScreen.devOptions' => 'خيارات للمطور',
			'AboutScreen.enableDebugLog' => 'تمكين سجل التصحيح',
			'AboutScreen.viewFilsContent' => 'عرض الملفات',
			'AboutScreen.enablePprof' => 'يُمكَِن pprof',
			'AboutScreen.pprofPanel' => 'pprof لوحة',
			'AboutScreen.allowRemoteAccessPprof' => 'السماح بالوصول عن بعد إلى ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'السماح بالوصول عن بعد${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'استخدم تكوين صندوق الغناء الأصلي',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'عنوان URL الخادم',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'لايمكن ان يكون فارغا',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'فشل تسجيل الدخول:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'فشل في الحصول على قائمة الملفات:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'غير صالح [Domain]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'غير صالح [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'غير صالح [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'غير صالح [Rule Set]:${p}, يجب أن يكون عنوان URL عنوان URL HTTPS صالحًا وملفًا ثنائيًا مع ملحق الملف .SRS',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'غير صالح [Rule Set(build-in)]:${p} غير صالحة، التنسيق هو geosite:xxx أو geoip:xxx أو acl:xxx، ويجب أن يكون xxx اسم قاعدة صالحًا',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'غير صالح [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'نصيحة: بعد الحفظ، يرجى الانتقال إلى [قواعد التحويل] لتعيين القواعد ذات الصلة، وإلا فلن تصبح سارية المفعول.',
			'DiversionRuleDetectScreen.title' => 'قاعدة التحويل اكتشف',
			'DiversionRuleDetectScreen.rule' => 'قاعدة:',
			'DiversionRuleDetectScreen.outbound' => 'مخدم بروكسي:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'نصيحة: حاول مطابقة القواعد من الأعلى إلى الأسفل، إذا لم تتم مطابقة أي قاعدة، استخدم [نهائي]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'لا يمكن أن يكون ISP فارغًا',
			'DnsSettingsScreen.urlCanNotEmpty' => 'لا يمكن أن يكون عنوان URL فارغًا',
			'DnsSettingsScreen.error' => ({required Object p}) => 'نوع غير مدعوم:${p}',
			'DnsSettingsScreen.dnsDesc' => 'العمود الأول من بيانات التأخير هو تأخير استعلام الاتصال المباشر;\nالعمود الثاني: شغله [[حركة الوكيل]حل DNS من خلال خادم الوكيل]: بيانات التأخير هي تأخير الاستعلام الذي تم إعادة توجيهه من خلال خادم الوكيل الحالي; إذا [[حركة الوكيل]حل DNS من خلال خادم الوكيل]: بيانات التأخير هي تأخير استعلام الاتصال المباشر',
			'FileContentViewerScreen.title' => 'ملف محتوى الملف',
			'FileContentViewerScreen.clearFileContent' => 'هل أنت متأكد من مسح محتوى الملف؟',
			'FileContentViewerScreen.clearFileContentTips' => 'هل أنت متأكد من مسح محتوى ملف الملف الشخصي؟قد يتسبب تطهير ملف الملف الشخصي في فقدان البيانات أو وظائف التطبيق غير الطبيعية ، يرجى العمل بحذر',
			'HomeScreen.toSelectServer' => 'الرجاء تحديد خادم',
			'HomeScreen.invalidServer' => 'غير صالح ، الرجاء اختيار مرة أخرى',
			'HomeScreen.disabledServer' => 'معطل ، الرجاء اختيار مرة أخرى',
			'HomeScreen.expiredServer' => 'لا يوجد خادم متاح: قد يكون التكوين قديمًا أو معطلاً',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'جوارب:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'الرجاء الإعداد [الاختصار وصلة] قبل استخدامه',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'يوجد عدد كبير جدًا من الخوادم الوكيلة [${p}>${p1}]، وقد لا يكون الاتصال ممكنًا بسبب قيود ذاكرة النظام.',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'قد يؤدي وجود عدد كبير جدًا من خوادم الوكيل [${p}>${p1}] إلى حدوث اتصالات بطيئة أو غير قابلة للوصول',
			'LaunchFailedScreen.invalidProcess' => 'فشل التطبيق في البدء [اسم عملية غير صالح] ، يرجى إعادة تثبيت التطبيق إلى دليل منفصل',
			'LaunchFailedScreen.invalidProfile' => 'فشل التطبيق في البدء [فشل في الوصول إلى الملف الشخصي] ، يرجى إعادة تثبيت التطبيق',
			'LaunchFailedScreen.invalidVersion' => 'فشل التطبيق في بدء [إصدار غير صالح] ، يرجى إعادة تثبيت التطبيق',
			'LaunchFailedScreen.systemVersionLow' => 'فشل بدء تشغيل التطبيق [إصدار النظام منخفض جدًا]',
			'LaunchFailedScreen.invalidInstallPath' => 'مسار التثبيت غير صالح ، يرجى إعادة تثبيته إلى مسار صالح',
			'MyProfilesMergeScreen.profilesMerge' => 'دمج الملامح',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'ملف تعريف الهدف',
			'MyProfilesMergeScreen.profilesMergeSource' => 'ملفات تعريف المصدر',
			'MyProfilesMergeScreen.profilesMergeTips' => 'نصيحة: سيتم تجاهل تحويل ملفات تعريف المصدر',
			'NetCheckScreen.title' => 'فحص صافي',
			'NetCheckScreen.warn' => 'ملاحظة: نظرًا لتأثير بيئة الشبكة وقواعد التحويل ، فإن نتائج الاختبار ليست مكافئة تمامًا للنتائج الفعلية.',
			'NetCheckScreen.invalidDomain' => 'اسم النطاق غير صالح',
			'NetCheckScreen.connectivity' => 'اتصال الشبكة',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'اختبار اتصال IPv4[${p}] كل شيء فشل',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Ipv4 نجح الاتصال',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Ipv6 اختبار الاتصال [${p}] كل شيء فشل ، قد لا تدعم شبكتك IPv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'نجح اتصال IPv6',
			'NetCheckScreen.connectivityTestOk' => 'الشبكة متصلة بالإنترنت',
			'NetCheckScreen.connectivityTestFailed' => 'الشبكة ليست متصلة بعد بالإنترنت',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'تم تنزيل كل شيء بنجاح',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'التحميل أو فشل',
			'NetCheckScreen.outbound' => 'مخدم بروكسي',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] نجح الاتصال ',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] فشل الاتصال\nError:[${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS الخادم',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]نجح استعلام DNS\nDNS قاعدة:[${p2}]\n وقت الإستجابة:[${p3} ms]\nAعنوان[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]نجح استعلام DNS\n nDNS قاعدة:[${p2}]\nخطأ:[${p3}]',
			'NetCheckScreen.host' => 'اتصال HTTP',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nقاعدة التحويل:[${p2}]\nمخدم بروكسي:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'نجح الاتصال',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'فشل الاتصال:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'المجال/IP',
			'NetConnectionsFilterScreen.app' => 'برنامج',
			'NetConnectionsFilterScreen.rule' => 'قاعدة',
			'NetConnectionsFilterScreen.chain' => 'خارج',
			'NetConnectionsScreen.copyAsCSV' => 'نسخ إلى تنسيق CSV',
			'NetConnectionsScreen.selectType' => 'حدد نوع التحويل',
			'PerAppAndroidScreen.title' => 'لكل وكيل تطبيق',
			'PerAppAndroidScreen.whiteListMode' => 'وضع القائمة البيضاء',
			'PerAppAndroidScreen.whiteListModeTip' => 'عند التمكين: فقط التطبيقات التي تم فحصها هي وكلاء ؛عندما لا يتم تمكينها: فقط التطبيقات التي لم يتم فحصها هي وكلاء',
			'RegionSettingsScreen.title' => 'الدولة او المنطقة',
			'RegionSettingsScreen.Regions' => '  نصيحة: يرجى تعيين بلدك أو منطقتك الحالية بشكل صحيح ، وإلا فقد يتسبب في مشاكل في تحويل الشبكة',
			'ServerSelectScreen.title' => 'حدد الخادم',
			'ServerSelectScreen.autoSelectServer' => 'تلقائي حدد الخادم بأقل زمن انتقال',
			'ServerSelectScreen.recentUse' => 'مستخدم حديثا',
			'ServerSelectScreen.myFav' => 'المفضل لدي',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'الخادم المحدد هو عنوان محلي وقد لا يعمل بشكل صحيح:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'الخادم المحدد هو عنوان IPv6 ويتطلب [تمكين IPv6]',
			'ServerSelectScreen.selectDisabled' => 'تم تعطيل هذا الخادم',
			'ServerSelectScreen.error404' => 'واجه اكتشاف الكمون خطأ ، يرجى التحقق مما إذا كان هناك تكوين مع نفس المحتوى',
			'SettingsScreen.getTranffic' => 'احصل على حركة المرور',
			'SettingsScreen.tutorial' => 'درس تعليمي',
			'SettingsScreen.commonlyUsedRulesets' => 'مجموعات القواعد شائعة الاستخدام',
			'SettingsScreen.howToRemoveAds' => 'كيفية إزالة الإعلانات',
			'SettingsScreen.htmlBoard' => 'لوحة على الانترنت',
			'SettingsScreen.dnsLeakDetection' => 'كشف تسرب DNS',
			'SettingsScreen.proxyLeakDetection' => 'كشف تسرب الوكيل',
			'SettingsScreen.speedTest' => 'اختبار السرعة',
			'SettingsScreen.rulesetDirectDownlad' => 'مجموعة القواعد تحميل مباشر',
			'SettingsScreen.hideUnusedDiversionGroup' => 'إخفاء قواعد تحويل حركة المرور غير النشطة',
			'SettingsScreen.disableISPDiversionGroup' => 'تعطيل قواعد تحويل [${_root.meta.isp}]',
			'SettingsScreen.portSettingRule' => 'القاعدة القائمة',
			'SettingsScreen.portSettingDirectAll' => 'توجيه كل شيء',
			'SettingsScreen.portSettingProxyAll' => 'وكيل الكل',
			'SettingsScreen.portSettingControl' => 'السيطرة والمزامنة',
			'SettingsScreen.portSettingCluster' => 'خدمة الكتلة',
			'SettingsScreen.modifyPort' => 'تعديل المنفذ',
			'SettingsScreen.modifyPortOccupied' => 'المنفذ مشغول، يرجى استخدام منفذ آخر',
			'SettingsScreen.ipStrategyTips' => 'قبل التمكين ، يرجى تأكيد أن شبكتك تدعم IPv6 ، وإلا لا يمكن الوصول إلى بعض حركة المرور بشكل طبيعي.',
			'SettingsScreen.tunAppendHttpProxy' => 'إلحاق وكيل HTTP إلى VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'ستجاوز بعض التطبيقات جهاز NIC الظاهري والاتصال مباشرة بوكيل HTTP',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'المجالات المسموح لها بتجاوز وكيل HTTP',
			'SettingsScreen.dnsEnableRule' => 'تمكين قواعد تحويل DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] قناة الدقة',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] تمكين ECS',
			'SettingsScreen.dnsTestDomain' => 'مجال الاختبار',
			'SettingsScreen.dnsTestDomainInvalid' => 'مجال غير صالح',
			'SettingsScreen.dnsTypeOutbound' => 'مخدم بروكسي',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'خادم DNS',
			'SettingsScreen.dnsEnableRuleTips' => 'بعد التمكين ، سيختار اسم المجال خادم DNS المقابل للدقة وفقًا لقواعد التحويل',
			'SettingsScreen.dnsEnableFakeIpTips' => 'بعد تمكين FakeIP، إذا تم قطع اتصال VPN، فقد يلزم إعادة تشغيل التطبيق الخاص بك؛ يجب تشغيل هذه الوظيفة [وضع TUN]',
			'SettingsScreen.dnsTypeOutboundTips' => 'دقة اسم المجال لخادم الوكيل',
			'SettingsScreen.dnsTypeDirectTips' => 'حل اسم المجال لـ [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'حل اسم المجال لحركة المرور الوكيل',
			'SettingsScreen.dnsTypeResolverTips' => 'دقة اسم المجال لخادم DNS الآخر',
			'SettingsScreen.dnsAutoSetServer' => 'إعداد الخادم تلقائيا',
			'SettingsScreen.dnsResetServer' => 'إعادة تعيين الخادم',
			'SettingsScreen.inboundDomainResolve' => 'حل أسماء النطاقات الواردة',
			'SettingsScreen.privateDirect' => 'اتصال مباشر بالشبكة الخاصة',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'تحتاج بعض أسماء النطاقات التي لا تحتوي على قواعد تحويل تم تكوينها إلى حلها قبل أن تتمكن من الوصول إلى قواعد التحويل المستندة إلى IP؛ وتؤثر هذه الميزة على الطلبات الواردة إلى منفذ الوكيل [${p}]',
			'SettingsScreen.useRomoteRes' => 'استخدم الموارد البعيدة',
			'SettingsScreen.autoAppendRegion' => 'إرفاق القواعد الأساسية تلقائيًا',
			'SettingsScreen.autoSelect' => 'اختيار آلي',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'تجاهل الخوادم الوكيلة [المواجهة/المتسلسلة].',
			'SettingsScreen.autoSelectServerInterval' => 'فاصل الشيكات الكمون',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'فترة فحص صحة الخادم الحالية',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'إعادة اكتشاف متى تتغير الشبكة',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'قم بتحديث الخادم الحالي بعد الكشف اليدوي عن التأخير',
			'SettingsScreen.autoSelectServerIntervalTips' => 'كلما كان الفاصل الزمني لاكتشاف التأخير أقصر، كلما تم تحديث بيانات تأخير الخادم في الوقت المناسب، ولكنها ستشغل المزيد من الموارد وتستهلك الكهرباء بشكل أسرع',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'إذا فشل الاكتشاف، يتم تبديل العقدة؛ إذا لم يتم العثور على عقدة متاحة عند تبديل العقدة، يتم إعادة اكتشاف المجموعة مع التأخير',
			'SettingsScreen.autoSelectServerFavFirst' => 'PRI-Use [My Favs]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'إذا لم تكن قائمة [Favs] فارغة ، فاستخدم الخوادم في [Favs]',
			'SettingsScreen.autoSelectServerFilter' => 'تصفية خوادم غير صالحة',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'سيتم تصفية حالات فشل الكشف عن تأخير الخادم؛ إذا لم يكن هناك خادم متاح بعد التصفية، فسيتم استخدام الخوادم [${p}] الأولى بدلاً من ذلك.',
			'SettingsScreen.autoSelectServerLimitedNum' => 'الحد الأقصى لعدد الخوادم',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'سيتم تصفية الخوادم التي تتجاوز هذا الرقم',
			'SettingsScreen.numInvalid' => 'رقم غير صالح',
			'SettingsScreen.hideInvalidServer' => 'إخفاء الخوادم غير الصالحة',
			'SettingsScreen.sortServer' => 'خوادم الفرز',
			'SettingsScreen.sortServerTips' => 'فرز حسب الكمون من منخفض إلى مرتفع',
			'SettingsScreen.selectServerHideRecommand' => 'إخفاء [يوصي]',
			'SettingsScreen.selectServerHideRecent' => 'إخفاء [المستخدمة مؤخرًا]',
			'SettingsScreen.selectServerHideFav' => 'إخفاء [المفضلة لدي]',
			'SettingsScreen.homeScreen' => 'الشاشة الرئيسية',
			'SettingsScreen.theme' => 'Tالهيم',
			'SettingsScreen.widgetsAlpha' => 'شفافية الأدوات',
			'SettingsScreen.widgetsEmpty' => 'لا يوجد أداة متاحة',
			'SettingsScreen.backgroundImage' => 'صورة الخلفية',
			'SettingsScreen.myLink' => 'ارتباط اختصار',
			'SettingsScreen.autoConnectAfterLaunch' => 'اتصال السيارات بعد الإطلاق',
			'SettingsScreen.autoConnectAtBoot' => 'الاتصال التلقائي بعد بدء تشغيل النظام',
			'SettingsScreen.autoConnectAtBootTips' => 'يجب دعم النظام؛ وقد تتطلب بعض الأنظمة أيضًا تمكين [البدء التلقائي].',
			'SettingsScreen.hideAfterLaunch' => 'إخفاء النافذة بعد بدء التشغيل',
			'SettingsScreen.autoSetSystemProxy' => 'وكيل نظام تعيين تلقائي عند الاتصال',
			'SettingsScreen.bypassSystemProxy' => 'أسماء النطاقات المسموح لها بتجاوز وكيل النظام',
			'SettingsScreen.disconnectWhenQuit' => 'افصل عندما يخرج التطبيق',
			'SettingsScreen.excludeFromRecent' => 'إخفاء من المهام الأخيرة',
			'SettingsScreen.wakeLock' => 'قفل الاستيقاظ',
			'SettingsScreen.hideVpn' => 'إخفاء أيقونة VPN',
			'SettingsScreen.hideVpnTips' => 'سيؤدي تمكين IPv6 إلى فشل هذه الوظيفة',
			'SettingsScreen.allowBypass' => 'السماح للتطبيقات بتجاوز VPN',
			'SettingsScreen.importSuccess' => 'استيراد نجاح ',
			'SettingsScreen.rewriteConfirm' => 'سيقوم هذا الملف بكتابة التكوين المحلي الحالي.هل تريد الاستمرار؟',
			'SettingsScreen.mergePerapp' => 'دمج القوائم المحلية [${_root.PerAppAndroidScreen.title}]',
			'SettingsScreen.networkShare' => 'مشاركة الشبكة',
			'SettingsScreen.frontProxy' => 'الوكيل الأمامي/السلسلة',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'البيانات->الخادم الوكيل الأمامي/السلسلة [خوادم بروكسي متعددة: من الأعلى إلى الأسفل]->الخادم الوكيل [${p}]->الخادم الهدف',
			'SettingsScreen.allowOtherHostsConnect' => 'اسمح للآخرين بالاتصال',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'بسبب قيود النظام، بعد تمكين ذلك، قد لا تتمكن التطبيقات الموجودة على هذا الجهاز والتي تستخدم http للوصول إلى الشبكة من الاتصال بالشبكة بشكل صحيح.',
			'SettingsScreen.tunAutoRoute' => 'Auto Route',
			'SettingsScreen.tunAutoRedirect' => 'Auto Redirect',
			'SettingsScreen.tunStrictRoute' => 'Strict Route',
			'SettingsScreen.tunStrictRouteTips' => 'إذا لم يتمكن الآخرون من الوصول إلى هذا الجهاز بعد تشغيل المشاركة، فيرجى محاولة إيقاف تشغيل هذا المفتاح.',
			'SettingsScreen.loopbackAddress' => 'Loopback Address',
			'SettingsScreen.enableCluster' => 'تمكين مجموعة الوكيل الجوارب/HTTP',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'السماح للآخرين بالاتصال بـ CLUSTER',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'مصادقة مجموعة الوكيل',
			'SettingsScreen.tunMode' => 'نفق وضع',
			'SettingsScreen.tuni4Address' => 'عنوان IP',
			'SettingsScreen.tunModeTips' => 'سيتولى وضع TUN كل حركة مرور النظام [في هذا الوضع ، يمكنك ترك وكيل النظام غير مدقلة]',
			'SettingsScreen.tunModeRunAsAdmin' => 'يتطلب وضع TUN أذونات مسؤول النظام ، يرجى إعادة تشغيل التطبيق كمسؤول',
			'SettingsScreen.tunStack' => 'Stack',
			'SettingsScreen.tunHijackTips' => 'بعد الإغلاق، سيتم إعادة توجيه طلبات DNS من TUN مباشرة إلى خادم DNS المقابل',
			'SettingsScreen.launchAtStartup' => 'إطلاق عند بدء التشغيل',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'خروج تطبيق عند تبديل مستخدمي النظام',
			'SettingsScreen.handleScheme' => 'مكالمة مخطط النظام',
			'SettingsScreen.portableMode' => 'الوضع المحمول',
			'SettingsScreen.portableModeDisableTips' => 'إذا كنت بحاجة إلى الخروج من الوضع المحمول، فيرجى الخروج من [karing] وحذف المجلد [profiles] يدويًا في نفس الدليل مثل [karing.exe]',
			'SettingsScreen.handleKaringScheme' => 'مقبض karing:// Call',
			'SettingsScreen.handleClashScheme' => 'مقبض clash:// Call',
			'SettingsScreen.handleSingboxScheme' => 'مقبض sing-box:// يتصل',
			'SettingsScreen.alwayOnVPN' => 'اتصال مفتوح دائمًا',
			'SettingsScreen.disconnectAfterSleep' => 'قطع الاتصال بعد سبات النظام',
			'SettingsScreen.removeSystemVPNConfig' => 'حذف تكوين VPN النظام',
			'SettingsScreen.timeConnectOrDisconnect' => 'المقرر يتصل/قطع الاتصال',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'يجب أن يكون VPN متصلاً ليصبح مفيدًا ؛بعد تشغيله ، سيتم تعطيل [النوم التلقائي]',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'ال cاتصاللا يمكن أن يكون فاصل الانفصال أقل من ${p} دقائق',
			'SettingsScreen.disableFontScaler' => 'تعطيل تحجيم الخط(إعادة التشغيل يسري)',
			'SettingsScreen.autoOrientation' => 'اتبع دوران الشاشة',
			'SettingsScreen.restartTakesEffect' => 'إعادة التشغيل يسري',
			'SettingsScreen.reconnectTakesEffect' => 'سيتم تطبيقه بعد إعادة الاتصال.',
			'SettingsScreen.resetSettings' => 'اعادة الضبط',
			'SettingsScreen.cleanCache' => 'مسح ذاكرة التخزين المؤقت',
			'SettingsScreen.cleanCacheDone' => 'اكتملت عملية التنظيف',
			'SettingsScreen.appleTestFlight' => 'Apple Testflight',
			'SettingsScreen.appleAppStore' => 'متجر تطبيقات Apple',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'تحديث الإصدار ${p}',
			'SettingsScreen.follow' => 'تابعنا',
			'SettingsScreen.contactUs' => 'اتصل بنا',
			'SettingsScreen.supportUs' => 'ادعمنا',
			'SettingsScreen.rateInApp' => 'قيمنا',
			'SettingsScreen.rateInAppStore' => 'قيمنا في متجر التطبيقات',
			'UserAgreementScreen.privacyFirst' => 'خصوصيتك تأتي أولا',
			'UserAgreementScreen.agreeAndContinue' => 'قبول ومتابعة',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'الإصدار الجديد [${p}] جاهز',
			'VersionUpdateScreen.update' => 'أعد التشغيل للتحديث',
			'VersionUpdateScreen.cancel' => 'ليس الآن',
			'CommonWidget.diableAlwayOnVPN' => 'إذا تم تشغيل [Always on VPN]، فيرجى إيقاف تشغيل [Always on VPN] ومحاولة الاتصال مرة أخرى.',
			'CommonWidget.resetPort' => 'الرجاء تغيير المنفذ إلى منفذ آخر متاح أو إغلاق التطبيق الذي يشغل المنفذ.',
			'main.tray.menuOpen' => '    يفتح    ',
			'main.tray.menuExit' => '    مخرج    ',
			'meta.enable' => 'يُمكَِن',
			'meta.disable' => 'إبطال',
			'meta.bydefault' => 'تقصير',
			'meta.filter' => 'فلتر',
			'meta.filterMethod' => 'طريقة التصفية',
			'meta.include' => 'يشمل',
			'meta.exclude' => 'استبعاد',
			'meta.all' => 'الجميع',
			'meta.prefer' => 'أولوية',
			'meta.only' => 'فقط',
			'meta.open' => 'يفتح',
			'meta.close' => 'إنهاء',
			'meta.quit' => 'يترك',
			'meta.add' => 'اضف إليه',
			'meta.addSuccess' => 'اضيف بنجاح',
			'meta.addFailed' => ({required Object p}) => 'إضافة فشل:${p}',
			'meta.remove' => 'يمسح',
			'meta.removeConfirm' => 'هل انت متأكد من الحذف؟',
			'meta.edit' => 'يحرر',
			'meta.view' => 'يفحص',
			'meta.more' => 'أكثر',
			'meta.tips' => 'معلومات',
			'meta.copy' => 'ينسخ',
			'meta.save' => 'يحفظ',
			'meta.ok' => 'نعم',
			'meta.cancel' => 'يلغي',
			'meta.feedback' => 'تعليق',
			'meta.feedbackContent' => 'محتوى ردود الفعل',
			'meta.feedbackContentHit' => 'مطلوب ، ما يصل إلى 500 حرف',
			'meta.feedbackContentCannotEmpty' => 'لا يمكن أن يكون محتوى التعليقات فارغًا',
			'meta.faq' => 'أسئلة مكررة',
			'meta.download' => 'تحميل',
			'meta.upload' => 'رفع',
			'meta.downloadSpeed' => 'سرعة التنزيل',
			'meta.uploadSpeed' => 'سرعة التحميل',
			'meta.loading' => 'تحميل...',
			'meta.convert' => 'يتحول',
			'meta.check' => 'يفحص',
			'meta.detect' => 'يكشف',
			'meta.cache' => 'مخبأ',
			'meta.days' => 'أيام',
			'meta.hours' => 'ساعات',
			'meta.minutes' => 'دقائق',
			'meta.seconds' => 'ثانية',
			'meta.milliseconds' => 'ميلي ثانية',
			'meta.tolerance' => 'تسامح',
			'meta.dateTimePeriod' => 'الفترة الزمنية',
			'meta.protocol' => 'بروتوكول',
			'meta.search' => 'يبحث',
			'meta.custom' => 'مخصص',
			'meta.inbound' => 'وارد',
			'meta.outbound' => 'مخرج',
			'meta.destination' => 'هدف',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'يتصل',
			'meta.disconnect' => 'قطع الاتصال',
			'meta.reconnect' => 'إعادة الاتصال',
			'meta.connected' => 'متصل',
			'meta.disconnected' => 'انقطع الاتصال',
			'meta.connecting' => 'توصيل',
			'meta.connectTimeout' => 'ربط مهلة',
			'meta.timeout' => 'نفذ الوقت',
			'meta.timeoutDuration' => 'مدة مهلة الانتظار',
			'meta.runDuration' => 'وقت التشغيل',
			'meta.latency' => 'تأخير',
			'meta.latencyTest' => 'كشف التأخير',
			'meta.language' => 'لغة',
			'meta.next' => 'التالي',
			'meta.done' => 'منتهي',
			'meta.apply' => 'يتقدم',
			'meta.refresh' => 'ينعش',
			'meta.retry' => 'إعادة المحاولة?',
			'meta.update' => 'تجديد',
			'meta.updateInterval' => 'الفاصل الزمني للتحديث',
			'meta.updateInterval5mTips' => 'الحد الأدنى: 5 م',
			'meta.updateFailed' => ({required Object p}) => 'فشل التحديث:${p}',
			'meta.samplingUnit' => 'وحدة زمن أخذ العينات',
			'meta.queryResultCount' => 'عدد نتائج الاستعلام',
			'meta.queryLimit' => ({required Object p}) => 'عرض ما يصل إلى ${p} من البيانات',
			'meta.none' => 'لا أحد',
			'meta.start' => 'يبدأ',
			'meta.pause' => 'يوقف',
			'meta.reset' => 'إعادة ضبط',
			'meta.submit' => 'يُقدِّم',
			'meta.user' => 'مستخدم',
			'meta.account' => 'حساب',
			'meta.password' => 'كلمة المرور',
			'meta.required' => 'مطلوب',
			'meta.type' => 'يكتب',
			'meta.path' => 'طريق',
			'meta.local' => 'محلي',
			'meta.remote' => 'بعيد',
			'meta.other' => 'آخر',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL غير صالح',
			'meta.urlCannotEmpty' => 'لا يمكن أن يكون الرابط فارغًا',
			'meta.urlTooLong' => 'عنوان URL طويل جدًا (>8182)',
			'meta.copyUrl' => 'Copy Link',
			'meta.openUrl' => 'Open Link',
			'meta.shareUrl' => 'شارك الرابط',
			'meta.speedTestUrl' => 'URL اختبار السرعة',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'رقم تعريف حاسوب ثابت',
			'meta.staticIPTips' => 'يجب عليك تمكين [TUN HijackDNS] أو [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'مزودي VPN',
			'meta.domainSuffix' => 'لاحقة اسم المجال',
			'meta.domain' => 'اسم النطاق',
			'meta.domainKeyword' => 'الكلمات الرئيسية لاسم المجال',
			'meta.domainRegex' => 'انتظام اسم المجال',
			'meta.ip' => 'IP',
			'meta.port' => 'ميناء',
			'meta.portRange' => 'نطاق الميناء',
			'meta.appPackage' => 'معرف حزمة التطبيق',
			'meta.processName' => 'اسم العملية',
			'meta.processPath' => 'مسار العملية',
			'meta.processDir' => 'دليل العمليات',
			'meta.systemProxy' => 'وكيل النظام',
			'meta.percentage' => 'نسبة مئوية',
			'meta.statistics' => 'إحصائيات',
			'meta.statisticsAndAnalysis' => 'الإحصاء والتحليل',
			'meta.statisticsDataDesensitize' => 'إخفاء هوية البيانات',
			'meta.statisticsDataDesensitizeTips' => 'سيتم استبدال معرف العملية/الحزمة/اسم المجال المستهدف/عنوان IP المستهدف وما إلى ذلك بـ * وحفظه بعد إزالة الحساسية',
			'meta.records' => 'سِجِلّ',
			'meta.requestRecords' => 'طلب السجلات',
			'meta.netInterfaces' => 'واجهات صافية',
			'meta.netSpeed' => 'سرعة',
			'meta.memoryTrendChart' => 'مخطط اتجاهات الذاكرة',
			'meta.trafficTrendChart' => 'مخطط اتجاهات حركة المرور',
			'meta.trafficDistributionChart' => 'خريطة توزيع حركة المرور',
			'meta.connectionChart' => 'مخطط اتجاهات الاتصال',
			'meta.memoryChart' => 'مخطط اتجاهات الذاكرة',
			'meta.trafficStatistics' => 'إحصائيات المرور',
			'meta.traffic' => 'تدفق',
			'meta.trafficTotal' => 'إجمالي حركة المرور',
			'meta.trafficProxy' => 'وكيل حركة المرور',
			'meta.trafficDirect' => 'سير مستقيم',
			'meta.website' => 'موقع إلكتروني',
			'meta.memory' => 'ذاكرة',
			'meta.outboundMode' => 'الوضع الصادر',
			'meta.rule' => 'قاعدة',
			'meta.global' => 'عالمي',
			'meta.qrcode' => 'رمز الاستجابة السريعة',
			'meta.qrcodeTooLong' => 'النص طويل جدًا لعرضه',
			'meta.qrcodeShare' => 'شارك رمز الاستجابة السريعة',
			'meta.textToQrcode' => 'رسالة نصية إلى رمز الاستجابة السريعة',
			'meta.qrcodeScan' => 'مسح رمز الاستجابة السريعة',
			'meta.qrcodeScanResult' => 'نتيجة المسح',
			'meta.qrcodeScanFromImage' => 'مسح من الصورة',
			'meta.qrcodeScanResultFailed' => 'فشل في تحليل الصورة ، يرجى التأكد من أن لقطة الشاشة هي رمز QR صالح',
			'meta.qrcodeScanResultEmpty' => 'نتيجة الفحص فارغة',
			'meta.screenshot' => 'لقطة شاشة',
			'meta.backupAndSync' => 'النسخ الاحتياطي والمزامنة',
			'meta.autoBackup' => 'النسخ الاحتياطي التلقائي',
			'meta.noProfileGotAutoBackup' => 'إذا فقدت بيانات مثل [${_root.meta.myProfiles}]، فيمكنك استعادتها من [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] أو مصادر النسخ الاحتياطي الأخرى (مثل iCloud أو Webdav، وما إلى ذلك).',
			'meta.autoBackupAddProfile' => 'بعد إضافة التكوين',
			'meta.autoBackupRemoveProfile' => 'بعد حذف التكوين',
			'meta.profile' => 'التكوين',
			'meta.currentProfile' => 'التكوين الحالي',
			'meta.importAndExport' => 'استيراد وتصدير',
			'meta.import' => 'يستورد',
			'meta.importFromUrl' => 'الاستيراد من عنوان URL',
			'meta.export' => 'يصدّر',
			'meta.send' => 'يرسل',
			'meta.receive' => 'تولي',
			'meta.sendConfirm' => 'تأكيد الإرسال؟',
			'meta.termOfUse' => 'شرط الخدمة',
			'meta.privacyPolicy' => 'سياسة الخصوصية',
			'meta.about' => 'عن',
			'meta.name' => 'اسم',
			'meta.version' => 'إصدار',
			'meta.notice' => 'يلاحظ',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'الإجراء: ${p}\nالسبب: ${p1}',
			'meta.sort' => 'إعادة ترتيب',
			'meta.novice' => 'وضع المبتدئ',
			'meta.willCompleteAfterRebootInstall' => 'يرجى إعادة تشغيل جهازك لإكمال تثبيت توسيع النظام',
			'meta.willCompleteAfterRebootUninstall' => 'يرجى إعادة تشغيل جهازك لإكمال إلغاء تثبيت ملحق النظام',
			'meta.requestNeedsUserApproval' => '١. [إعدادات النظام] - [الخصوصية والأمان] - [السماح] لـ Karing بتثبيت ملحقات النظام. ٢. [إعدادات النظام] - [عام] - [تسجيل الدخول والملحقات - ملحقات الشبكة] - [karingServiceSE] - [أعد الاتصال بعد الانتهاء]',
			'meta.FullDiskAccessPermissionRequired' => 'لطفاً مجوز [karingServiceSE] را در [تنظیمات سیستم]-[حریم خصوصی و امنیت]-[مجوز دسترسی کامل به دیسک] فعال کنید و دوباره متصل شوید.',
			'meta.tvMode' => 'وضع التلفزيون',
			'meta.recommended' => 'يوصي',
			'meta.innerError' => ({required Object p}) => 'خطأ داخلي: ${p}',
			'meta.logicOperation' => 'عملية منطقية',
			'meta.share' => 'يشارك',
			'meta.candidateWord' => 'كلمات المرشح',
			'meta.keywordOrRegx' => 'الكلمات الرئيسية/العادية',
			'meta.importFromClipboard' => 'استيراد من الحافظة',
			'meta.exportToClipboard' => 'تصدير إلى الحافظة',
			'meta.server' => 'الخادم',
			'meta.ads' => 'أعلن',
			'meta.adsRemove' => 'إزالة الإعلانات',
			'meta.adsBanner' => 'إعلانات البانر',
			'meta.donate' => 'يتبرع',
			'meta.diversion' => 'تحويل',
			'meta.diversionRules' => 'قواعد التحويل',
			'meta.diversionCustomGroup' => 'مجموعة تحويل مخصصة',
			'meta.urlTestCustomGroup' => 'التحديد التلقائي المخصص',
			'meta.setting' => 'إعدادات',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN SYNC',
			'meta.lanSyncNotQuitTips' => 'لا تخرج من هذه الواجهة قبل اكتمال التزامن',
			'meta.deviceNoSpace' => 'مساحة غير كافيه في القرص',
			'meta.hideSystemApp' => 'إخفاء تطبيقات النظام',
			'meta.hideAppIcon' => 'إخفاء أيقونة التطبيق',
			'meta.hideDockIcon' => 'إخفاء أيقونة Dock',
			'meta.remark' => 'ملاحظة',
			'meta.remarkExist' => 'ملاحظة موجودة بالفعل ، يرجى استخدام اسم آخر',
			'meta.remarkCannotEmpty' => 'لا يمكن أن تكون الملاحظات فارغة',
			'meta.remarkTooLong' => 'ملاحظات تصل إلى 32 حرفًا',
			'meta.openDir' => 'فتح دليل الملف',
			'meta.fileChoose' => 'حدد الملف',
			'meta.filePathCannotEmpty' => 'لا يمكن أن يكون مسار الملف فارغًا',
			'meta.fileNotExist' => ({required Object p}) => 'الملف غير موجود: ${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'نوع الملف غير صالح:${p}',
			'meta.uwpExemption' => 'إعفاء عزل شبكة UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'احصل على التكوين',
			'meta.addProfile' => 'إضافة ملف تعريف',
			'meta.myProfiles' => 'مظهر',
			'meta.myProfilesAtLeastOneReserveEnable' => 'لا يمكن تعطيله ، يرجى الاحتفاظ بملف تعريف واحد على الأقل',
			'meta.profileEdit' => 'تحرير الملف الشخصي',
			'meta.profileEditUrlExist' => 'عنوان URL موجود بالفعل ، يرجى استخدام عنوان URL آخر',
			'meta.profileEditReloadAfterProfileUpdate' => 'إعادة التحميل بعد تحديث الملف الشخصي',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'ابدأ اختبارات الكمون بعد التحديث تلقائيًا',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'يجب توصيل VPN ، وتمكين [إعادة التحميل بعد تحديث الملف الشخصي]',
			'meta.profileEditTestLatencyAutoRemove' => 'إزالة الخوادم التي تفشل تلقائيا اختبارات الكمون',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'جرب ما يصل إلى 3 مرات',
			'meta.profileImport' => 'استيراد ملف الملف الشخصي',
			'meta.profileAddUrlOrContent' => 'إضافة رابط ملف التعريف',
			'meta.profileExists' => 'الملف الشخصي موجود بالفعل ، من فضلك لا تضيفه مرارًا وتكرارًا',
			'meta.profileUrlOrContent' => 'رابط/محتوى الملف الشخصي',
			'meta.profileUrlOrContentHit' => 'ارتباط ملف التعريف/المحتوى [مطلوب] (دعم الدعم ، V2Ray (مدعوم الدفعة) ، خبأ ، karing ، sing-box ، shadowsocks ، روابط الملف الشخصي الفرعي)',
			'meta.profileUrlOrContentCannotEmpty' => 'لا يمكن أن يكون رابط الملف الشخصي فارغًا',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'التنسيق خاطئ ، يرجى تصحيحه وإضافته مرة أخرى:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'فشلت إضافة: ${p}، يرجى محاولة تعديل [UserAgent] والمحاولة مرة أخرى، أو استخدم المتصفح الخاص بالجهاز لفتح رابط التكوين واستيراد ملف التكوين الذي تم تنزيله بواسطة المتصفح إلى هذا التطبيق',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'فشلت إضافة: ${p}، يرجى فتح الوكيل أو تعديل عقدة الوكيل الحالية والمحاولة مرة أخرى',
			'meta.profileAddParseFailed' => 'فشل تحليل الملف الشخصي',
			'meta.profileAddNoServerAvaliable' => 'لا يوجد خادم متاح، يرجى التأكد من صلاحية رابط التكوين أو ملف التكوين؛ وإذا كان التكوين الخاص بك يأتي من GitHub، فيرجى الحصول على عنوان الرابط من الزر [Raw] الموجود في الصفحة',
			'meta.profileAddWrapSuccess' => 'تم إنشاء التكوين بنجاح، يرجى الانتقال إلى [${_root.meta.myProfiles}] للعرض',
			'diversionRulesKeep' => 'احتفظ بـ [${_root.meta.isp}]${_root.meta.diversionRules}',
			'diversionCustomGroupPreset' => 'الإعداد المسبق [مجموعة تحويل مخصصة]',
			'diversionCustomGroupPresetTips' => 'ملاحظة: ستتم إضافة/تغطية العناصر الممكّنة إلى [مجموعة التحويل المخصصة] و[قواعد التحويل]',
			'diversionCustomGroupAddTips' => 'ملاحظة: قد تحتاج إلى ضبط الفرز يدويًا بعد إضافته، وإلا فإن التحويل المضاف حديثًا قد لا يسري مفعوله.',
			'rulesetEnableTips' => 'نصيحة: بعد تشغيل الخيارات ، يرجى الانتقال إلى [قواعد التحويل] لتعيين القواعد ذات الصلة ، وإلا فلن تدخل ساري المفعول ',
			'ispUserAgentTips' => 'سيقدم [${_root.meta.isp} أنواعًا مختلفة من بيانات الاشتراك بناءً على [UserAgent] في طلب [HTTP].',
			'ispDiversionTips' => 'قواعد التفريغ التي يوفرها [${_root.meta.isp}]؛ لا تدعم الاشتراكات من النوع [V2Ray] قواعد التفريغ',
			'isp.bind' => 'الارتباط بـ [${_root.meta.isp}]',
			'isp.unbind' => ({required Object p}) => 'فك الارتباط[${p}]',
			'isp.faq' => ({required Object p}) => 'الأسئلة الشائعة[${p}]',
			'isp.customerService' => ({required Object p}) => 'خدمة العملاء[${p}]',
			'isp.follow' => ({required Object p}) => 'متابعة[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}]غير صالح أو منتهية الصلاحية',
			'permission.camera' => 'الكاميرا',
			'permission.screen' => 'تسجيل الشاشة',
			'permission.appQuery' => 'الحصول على قائمة التطبيقات',
			'permission.request' => ({required Object p}) => 'تمكين أذونات [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'الرجاء تفعيل إذن [${p}]',
			'tls.insecure' => 'تخطي التحقق من الشهادة',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'تمكين تجزئة TLS',
			'tls.fragmentSize' => 'حجم شريحة TLS',
			'tls.fragmentSleep' => 'TLS النوم المجزأ',
			'tls.mixedCaseSNIEnable' => 'تمكين TLS الهجين SNI',
			'tls.paddingEnable' => 'تمكين الحشو TLS',
			'tls.paddingSize' => 'حجم الحشو TLS',
			'outboundRuleMode.currentSelected' => 'المحدد الحالي',
			'outboundRuleMode.urltest' => 'اختيار آلي',
			_ => null,
		} ?? switch (path) {
			'outboundRuleMode.direct' => 'مباشر',
			'outboundRuleMode.block' => 'حاجز',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'تحديثات التكوين',
			'theme.light' => 'لون فاتح',
			'theme.dark' => 'أسود',
			'theme.auto' => 'أوتوماتيكي',
			'downloadProxyStrategy' => 'تحميل القناة',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: الاتصال بخادم DNS من خلال خادم الوكيل لحل اسم المجال\n[${_root.dnsProxyResolveMode.direct}]: الاتصال مباشرة بخادم DNS لحل اسم المجال\n[ ${_root.dnsProxyResolveMode.fakeip}]: بواسطة الوكيل يقوم الخادم بحل اسم المجال نيابةً عنك؛ إذا انفصلت عن شبكة VPN، فقد يلزم إعادة تشغيل تطبيقك؛ ينطبق فقط على حركة المرور الواردة من [TUN]',
			'routeFinal' => 'أخير',
			'protocolSniff' => 'الكشف عن البروتوكول',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'الرجاء استخدام [${p}]',
			'turnOffPrivateDirect' => 'يرجى تمكين [الاتصال المباشر بالشبكة الخاصة] أولاً',
			'targetConnectFailed' => ({required Object p}) => 'فشل الاتصال بـ [${p}]، يرجى التأكد من وجود الجهاز في نفس الشبكة المحلية (LAN)',
			'appleTVSync' => 'مزامنة التكوين الأساسي الحالي مع Apple TV - Karing',
			'appleTVSyncDone' => 'اكتملت المزامنة، برجاء الانتقال إلى Apple TV - Karing لفتح/إعادة تشغيل الاتصال',
			'appleTVRemoveCoreConfig' => 'إزالة Apple TV - Karing Core Configuration',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - تم حذف الملف التعريفي الأساسي لـ Karing؛ وتم قطع اتصال خدمة VPN',
			'appleTVUrlInvalid' => 'عنوان URL غير صالح، يرجى فتح Apple TV - Karing، ومسح رمز QR الذي يعرضه Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] لا يحتوي على هذه الوظيفة، يرجى الترقية والمحاولة مرة أخرى',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'لا يتطابق الإصدار الرئيسي الأساسي، يرجى ترقية [${p}] والمحاولة مرة أخرى',
			'remoteProfileEditConfirm' => 'بعد تحديث التكوين، ستتم استعادة تعديلات العقدة. هل تريد المتابعة؟',
			'mustBeValidHttpsURL' => 'يجب أن يكون عنوان URL HTTPS صالح',
			'fileNotExistReinstall' => ({required Object p}) => 'الملف مفقود [${p}]، يرجى إعادة التثبيت',
			'noNetworkConnect' => 'لا يوجد اتصال بالإنترنت',
			'sudoPassword' => 'كلمة مرور sudo (مطلوبة لوضع TUN)',
			'turnOffNetworkBeforeInstall' => 'يوصى بالتبديل إلى [وضع الطيران] قبل تثبيت التحديث',
			'latencyTestResolveIP' => 'أثناء الكشف اليدوي، يتم أيضًا تحليل عنوان IP الخاص بالتصدير.',
			'removeBannerAdsByShare' => 'شارك[Karing]اذهب إلى الإعلانات',
			'removeBannerAdsByReward' => 'مشاهدة الإعلانات انتقل إلى الإعلانات',
			'removeBannerAdsByShareTip' => ({required Object p, required Object d}) => 'شارك مرة واحدة وستحصل على ${p} من الأيام بدون مكافآت إعلانية (يمكن تكديسها، حتى ${d} من الأيام)',
			'removeBannerAdsByRewardTip' => ({required Object p}) => 'شاهد إعلانًا وستحصل على مكافأة للأيام الخالية من الإعلانات بقيمة ${p} (لا يمكن تجميعها)',
			'removeBannerAdsDone' => ({required Object p}) => 'تلقى ${p} أيام مكافأة خالية من الإعلانات',
			'maybeAdsByReward' => 'قد تحتاج لمشاهدة إعلان قبل استخدام هذه الميزة. انقر [${_root.meta.ok}] للمتابعة.',
			'edgeRuntimeNotInstalled' => 'لم يتم تثبيت وقت تشغيل Edge WebView2 على الجهاز الحالي ولا يمكن عرض الصفحة، يرجى تنزيل وتثبيت وقت تشغيل Edge WebView2 (x64)، وإعادة تشغيل التطبيق والمحاولة مرة أخرى.',
			'locales.en' => 'English',
			'locales.zh-CN' => '简体中文',
			'locales.ar' => 'عربي',
			'locales.ru' => 'Русский',
			'locales.fa' => 'فارسی',
			_ => null,
		};
	}
}
