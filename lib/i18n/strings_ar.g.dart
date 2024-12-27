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
	TranslationsAr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
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

	// Translations
	@override late final _TranslationsAboutScreenAr AboutScreen = _TranslationsAboutScreenAr._(_root);
	@override late final _TranslationsAddProfileByImportFromFileScreenAr AddProfileByImportFromFileScreen = _TranslationsAddProfileByImportFromFileScreenAr._(_root);
	@override late final _TranslationsAddProfileByLinkOrContentScreenAr AddProfileByLinkOrContentScreen = _TranslationsAddProfileByLinkOrContentScreenAr._(_root);
	@override late final _TranslationsAddProfileByScanQrcodeScanScreenAr AddProfileByScanQrcodeScanScreen = _TranslationsAddProfileByScanQrcodeScanScreenAr._(_root);
	@override late final _TranslationsBackupAndSyncLanSyncScreenAr BackupAndSyncLanSyncScreen = _TranslationsBackupAndSyncLanSyncScreenAr._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenAr BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenAr._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenAr DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenAr._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenAr DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenAr._(_root);
	@override late final _TranslationsDiversionRulesScreenAr DiversionRulesScreen = _TranslationsDiversionRulesScreenAr._(_root);
	@override late final _TranslationsDnsSettingsScreenAr DnsSettingsScreen = _TranslationsDnsSettingsScreenAr._(_root);
	@override late final _TranslationsFeedbackScreenAr FeedbackScreen = _TranslationsFeedbackScreenAr._(_root);
	@override late final _TranslationsFileContentViewerScreenAr FileContentViewerScreen = _TranslationsFileContentViewerScreenAr._(_root);
	@override late final _TranslationsHomeScreenAr HomeScreen = _TranslationsHomeScreenAr._(_root);
	@override late final _TranslationsLaunchFailedScreenAr LaunchFailedScreen = _TranslationsLaunchFailedScreenAr._(_root);
	@override late final _TranslationsMyProfilesEditScreenAr MyProfilesEditScreen = _TranslationsMyProfilesEditScreenAr._(_root);
	@override late final _TranslationsMyProfilesMergeScreenAr MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenAr._(_root);
	@override late final _TranslationsMyProfilesScreenAr MyProfilesScreen = _TranslationsMyProfilesScreenAr._(_root);
	@override late final _TranslationsNetCheckScreenAr NetCheckScreen = _TranslationsNetCheckScreenAr._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenAr NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenAr._(_root);
	@override late final _TranslationsNetConnectionsScreenAr NetConnectionsScreen = _TranslationsNetConnectionsScreenAr._(_root);
	@override late final _TranslationsPerAppAndroidScreenAr PerAppAndroidScreen = _TranslationsPerAppAndroidScreenAr._(_root);
	@override late final _TranslationsQrcodeScreenAr QrcodeScreen = _TranslationsQrcodeScreenAr._(_root);
	@override late final _TranslationsRegionSettingsScreenAr RegionSettingsScreen = _TranslationsRegionSettingsScreenAr._(_root);
	@override late final _TranslationsServerSelectScreenAr ServerSelectScreen = _TranslationsServerSelectScreenAr._(_root);
	@override late final _TranslationsSettingsScreenAr SettingsScreen = _TranslationsSettingsScreenAr._(_root);
	@override late final _TranslationsSpeedTestSettingsScreenAr SpeedTestSettingsScreen = _TranslationsSpeedTestSettingsScreenAr._(_root);
	@override late final _TranslationsTextToQrCodeScreenAr TextToQrCodeScreen = _TranslationsTextToQrCodeScreenAr._(_root);
	@override late final _TranslationsUserAgreementScreenAr UserAgreementScreen = _TranslationsUserAgreementScreenAr._(_root);
	@override late final _TranslationsVersionUpdateScreenAr VersionUpdateScreen = _TranslationsVersionUpdateScreenAr._(_root);
	@override late final _TranslationsCommonWidgetAr CommonWidget = _TranslationsCommonWidgetAr._(_root);
	@override late final _TranslationsServerManagerAr ServerManager = _TranslationsServerManagerAr._(_root);
	@override late final _TranslationsMainAr main = _TranslationsMainAr._(_root);
	@override String get enable => 'يُمكَِن';
	@override String get disable => 'إبطال';
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
	@override String get remove => 'يمسح';
	@override String get edit => 'يحرر';
	@override String get view => 'يفحص';
	@override String get more => 'أكثر';
	@override String get getProfile => 'احصل على التكوين';
	@override String get addProfile => 'إضافة ملف تعريف';
	@override String get addSuccess => 'اضيف بنجاح';
	@override String addSuccessThen({required Object p}) => 'تم إنشاء التكوين بنجاح، يرجى الانتقال إلى [${p}] للعرض';
	@override String addFailed({required Object p}) => 'إضافة فشل:${p}';
	@override String get removeConfirm => 'هل انت متأكد من الحذف؟';
	@override String get tips => 'معلومات';
	@override String get copy => 'ينسخ';
	@override String get ok => 'نعم';
	@override String get cancel => 'يلغي';
	@override String get feedback => 'تعليق';
	@override String get faq => 'أسئلة مكررة';
	@override String get download => 'تحميل';
	@override String get loading => 'تحميل...';
	@override String updateFailed({required Object p}) => 'فشل التحديث:${p}';
	@override String get days => 'أيام';
	@override String get hours => 'ساعات';
	@override String get minutes => 'دقائق';
	@override String get seconds => 'ثانية';
	@override String get protocol => 'بروتوكول';
	@override String get search => 'يبحث';
	@override String get custom => 'مخصص';
	@override String get connect => 'يتصل';
	@override String get disconnect => 'قطع الاتصال';
	@override String get connected => 'متصل';
	@override String get disconnected => 'انقطع الاتصال';
	@override String get connecting => 'توصيل';
	@override String get connectTimeout => 'ربط مهلة';
	@override String get timeout => 'نفذ الوقت';
	@override String get language => 'لغة';
	@override String get next => 'التالي';
	@override String get done => 'منتهي';
	@override String get apply => 'يتقدم';
	@override String get refresh => 'ينعش';
	@override String get retry => 'إعادة المحاولة?';
	@override String get none => 'لا أحد';
	@override String get reset => 'إعادة ضبط';
	@override String get submit => 'يُقدِّم';
	@override String get user => 'مستخدم';
	@override String get account => 'حساب';
	@override String get password => 'كلمة المرور';
	@override String get required => 'مطلوب';
	@override String get diversion => 'تحويل';
	@override String get diversionRules => 'قواعد التحويل';
	@override String get diversionRulesEnable => 'تمكين قواعد تفريغ [ISP]';
	@override String get diversionCustomGroup => 'مجموعة تحويل مخصصة';
	@override String get diversionCustomGroupPreset => 'الإعداد المسبق [مجموعة تحويل مخصصة]';
	@override String get diversionCustomGroupPresetTips => 'ملاحظة: ستتم إضافة/تغطية العناصر الممكّنة إلى [مجموعة التحويل المخصصة] و[قواعد التحويل]';
	@override String get diversionCustomGroupAddTips => 'ملاحظة: قد تحتاج إلى ضبط الفرز يدويًا بعد إضافته، وإلا فإن التحويل المضاف حديثًا قد لا يسري مفعوله.';
	@override String get urlTestCustomGroup => 'مجموعة الوكيل المخصصة';
	@override String get rulesetEnableTips => 'نصيحة: بعد تشغيل الخيارات ، يرجى الانتقال إلى [قواعد التحويل] لتعيين القواعد ذات الصلة ، وإلا فلن تدخل ساري المفعول ';
	@override String get ispUserAgentTips => 'سيقدم [ISP] أنواعًا مختلفة من بيانات الاشتراك بناءً على [UserAgent] في طلب [HTTP].';
	@override String get ispDiversionTips => 'قواعد التفريغ التي يوفرها [ISP]؛ لا تدعم الاشتراكات من النوع [V2Ray] قواعد التفريغ';
	@override String get staticIP => 'رقم تعريف حاسوب ثابت';
	@override String get other => 'آخر';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get isp => 'ISP';
	@override String get ispBind => '[ISP] ملزمة';
	@override String ispUnbind({required Object p}) => 'فك الارتباط[${p}]';
	@override String ispFaq({required Object p}) => 'الأسئلة الشائعة[${p}]';
	@override String ispCustomerService({required Object p}) => 'خدمة العملاء[${p}]';
	@override String ispFollow({required Object p}) => 'متابعة[${p}]';
	@override String get ispInvalidOrExpired => '[ISP]غير صالح أو منتهية الصلاحية';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get urlInvalid => 'URL غير صالح';
	@override String get outboundActionCurrentSelected => 'المحدد الحالي';
	@override String get outboundActionUrltest => 'اختيار آلي';
	@override String get outboundActionDirect => 'مباشر';
	@override String get outboundActionBlock => 'حاجز';
	@override String get routeFinal => 'أخير';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get setting => 'إعدادات';
	@override String get protocolSniff => 'الكشف عن البروتوكول';
	@override String get protocolSniffOverrideDestination => 'يغطي اسم المجال المكتشف عنوان هدف الاتصال';
	@override String get remark => 'ملاحظة';
	@override String get remarkCannotEmpty => 'لا يمكن أن تكون الملاحظات فارغة';
	@override String get remarkTooLong => 'ملاحظات تصل إلى 32 حرفًا';
	@override String get remarkExist => 'ملاحظة موجودة بالفعل ، يرجى استخدام اسم آخر';
	@override String get domainSuffix => 'لاحقة اسم المجال';
	@override String get domain => 'اسم النطاق';
	@override String get domainKeyword => 'الكلمات الرئيسية لاسم المجال';
	@override String get domainRegex => 'انتظام اسم المجال';
	@override String get ip => 'IP';
	@override String get port => 'ميناء';
	@override String get appPackage => 'اسم حزمة التطبيق';
	@override String get processName => 'اسم العملية';
	@override String get processPath => 'مسار العملية';
	@override String get systemProxy => 'وكيل النظام';
	@override String get netInterfaces => 'واجهات صافية';
	@override String get netSpeed => 'سرعة';
	@override String get website => 'موقع إلكتروني';
	@override String get rule => 'قاعدة';
	@override String get global => 'عالمي';
	@override String get qrcode => 'رمز الاستجابة السريعة';
	@override String get scanQrcode => 'مسح رمز الاستجابة السريعة';
	@override String get scanResult => 'نتيجة المسح';
	@override String get backupAndSync => 'النسخ الاحتياطي والمزامنة';
	@override String get importAndExport => 'استيراد وتصدير';
	@override String get import => 'يستورد';
	@override String get export => 'يصدّر';
	@override String get send => 'يرسل';
	@override String get receive => 'تولي';
	@override String sendOrReceiveNotMatch({required Object p}) => 'الرجاء استخدام [${p}]';
	@override String get sendConfirm => 'تأكيد الإرسال؟';
	@override String get termOfUse => 'شرط الخدمة';
	@override String get privacyPolicy => 'سياسة الخصوصية';
	@override String get about => 'عن';
	@override String get name => 'اسم';
	@override String get version => 'إصدار';
	@override String get notice => 'يلاحظ';
	@override String get sort => 'إعادة ترتيب';
	@override String get novice => 'وضع المبتدئ';
	@override String get recommended => 'يوصي';
	@override String innerError({required Object p}) => 'خطأ داخلي: ${p}';
	@override String get logicOperation => 'عملية منطقية';
	@override String get share => 'يشارك';
	@override String get candidateWord => 'كلمات المرشح';
	@override String get keywordOrRegx => 'الكلمات الرئيسية/العادية';
	@override String get importFromClipboard => 'استيراد من الحافظة';
	@override String get exportToClipboard => 'تصدير إلى الحافظة';
	@override String get server => 'الخادم';
	@override String get turnOffPrivateDirect => 'يرجى تمكين [الاتصال المباشر بالشبكة الخاصة] أولاً';
	@override String targetConnectFailed({required Object p}) => 'فشل الاتصال بـ [${p}]، يرجى التأكد من وجود الجهاز في نفس الشبكة المحلية (LAN)';
	@override String get appleTVSync => 'مزامنة التكوين الأساسي الحالي مع Apple TV - Karing';
	@override String get appleTVSyncDone => 'اكتملت المزامنة، برجاء الانتقال إلى Apple TV - Karing لفتح/إعادة تشغيل الاتصال';
	@override String get appleTVRemoveCoreConfig => 'إزالة Apple TV - Karing Core Configuration';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - تم حذف الملف التعريفي الأساسي لـ Karing؛ وتم قطع اتصال خدمة VPN';
	@override String get appleTVUrlInvalid => 'عنوان URL غير صالح، يرجى فتح Apple TV - Karing، ومسح رمز QR الذي يعرضه Karing';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] لا يحتوي على هذه الوظيفة، يرجى الترقية والمحاولة مرة أخرى';
	@override String get remoteProfileEditConfirm => 'بعد تحديث التكوين، ستتم استعادة تعديلات العقدة. هل تريد المتابعة؟';
	@override String invalidFileType({required Object p}) => 'نوع الملف غير صالح:${p}';
	@override String get mustBeValidHttpsURL => 'يجب أن يكون عنوان URL HTTPS صالح';
	@override String fileNotExistReinstall({required Object p}) => 'الملف مفقود [${p}]، يرجى إعادة التثبيت';
	@override String get latencyTest => 'كشف التأخير';
	@override String get latencyTestResolveIP => 'أثناء الكشف اليدوي، يتم أيضًا تحليل عنوان IP الخاص بالتصدير.';
	@override String get latencyTestTimeout => 'نفذ الوقت';
	@override String get uwpExemption => 'إعفاء عزل شبكة UWP';
	@override String get ads => 'إزالة الإعلانات';
	@override String get adsBanner => 'إعلانات البانر';
	@override String get donate => 'يتبرع';
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
	@override String get disableUAReport => 'قم بإيقاف تشغيل تقرير بيانات الإجراء';
	@override String get disableUAReportTip => 'تساعدنا تقارير البيانات السلوكية على تحسين تجربة المنتج؛ ستقوم الإصدارات الأقل من الإصدار الرئيسي بإيقاف تشغيل جميع تقارير البيانات تلقائيًا (باستثناء [تنشيط التطبيق])';
	@override String get devOptions => 'خيارات للمطور';
	@override String get enableDebugLog => 'تمكين سجل التصحيح';
	@override String get viewFilsContent => 'عرض الملفات';
	@override String get enablePprof => 'يُمكَِن pprof';
	@override String get pprofPanel => 'pprof لوحة';
	@override String get openDir => 'فتح دليل الملف';
	@override String get useOriginalSBProfile => 'استخدم تكوين صندوق الغناء الأصلي';
}

// Path: AddProfileByImportFromFileScreen
class _TranslationsAddProfileByImportFromFileScreenAr implements TranslationsAddProfileByImportFromFileScreenEn {
	_TranslationsAddProfileByImportFromFileScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'استيراد ملف الملف الشخصي';
	@override String get chooseFile => 'حدد الملف';
	@override String get configExist => 'الملف الشخصي موجود بالفعل ، من فضلك لا تضيفه مرارًا وتكرارًا';
}

// Path: AddProfileByLinkOrContentScreen
class _TranslationsAddProfileByLinkOrContentScreenAr implements TranslationsAddProfileByLinkOrContentScreenEn {
	_TranslationsAddProfileByLinkOrContentScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إضافة رابط ملف التعريف';
	@override String get updateTimerInterval => 'الفاصل الزمني للتحديث';
	@override String get updateTimerIntervalTips => 'الحد الأدنى: 5 م';
	@override String get profileLinkContent => 'رابط/محتوى الملف الشخصي';
	@override String get profileLinkContentHit => 'ارتباط ملف التعريف/المحتوى [مطلوب] (دعم الدعم ، V2Ray (مدعوم الدفعة) ، خبأ ، karing ، sing-box ، shadowsocks ، روابط الملف الشخصي الفرعي)';
	@override String get subscriptionCannotEmpty => 'لا يمكن أن يكون رابط الملف الشخصي فارغًا';
	@override String get configExist => 'الملف الشخصي موجود بالفعل ، من فضلك لا تضيفه مرارًا وتكرارًا';
	@override String get invalidUrl => 'رابط الملف الطويل جدًا';
	@override String addFailedFormatException({required Object p}) => 'التنسيق خاطئ ، يرجى تصحيحه وإضافته مرة أخرى:${p}';
	@override String addFailedThenDownloadAndImport({required Object p}) => 'فشلت إضافة: ${p}، يرجى محاولة تعديل [UserAgent] والمحاولة مرة أخرى، أو استخدم المتصفح الخاص بالجهاز لفتح رابط التكوين واستيراد ملف التكوين الذي تم تنزيله بواسطة المتصفح إلى هذا التطبيق';
	@override String addFailedHandshakeException({required Object p}) => 'فشلت إضافة: ${p}، يرجى فتح الوكيل أو تعديل عقدة الوكيل الحالية والمحاولة مرة أخرى';
}

// Path: AddProfileByScanQrcodeScanScreen
class _TranslationsAddProfileByScanQrcodeScanScreenAr implements TranslationsAddProfileByScanQrcodeScanScreenEn {
	_TranslationsAddProfileByScanQrcodeScanScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get copy => 'Copy Link';
	@override String get open => 'Open Link';
	@override String get requestCameraPermission => 'يرجى تمكين إذن الكاميرا';
	@override String get requestScreenAccess => 'يرجى الانتقال إلى إعدادات النظام - الخصوصية والأمان - تسجيل الشاشة لإضافة أذونات لهذا التطبيق';
	@override String get screenshot => 'لقطة شاشة';
	@override String get scanFromImage => 'مسح من الصورة';
	@override String get scanNoResult => 'فشل في تحليل الصورة ، يرجى التأكد من أن لقطة الشاشة هي رمز QR صالح';
	@override String get scanEmptyResult => 'نتيجة الفحص فارغة';
	@override String scanException({required Object p}) => 'فشل في تحليل الصورة ، يرجى التأكد من أن لقطة الشاشة هي رمز QR صالح: ${p}';
}

// Path: BackupAndSyncLanSyncScreen
class _TranslationsBackupAndSyncLanSyncScreenAr implements TranslationsBackupAndSyncLanSyncScreenEn {
	_TranslationsBackupAndSyncLanSyncScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'LAN SYNC';
	@override String get lanSyncNotQuitTips => 'لا تخرج من هذه الواجهة قبل اكتمال التزامن';
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
	@override String get setDiversionRule => 'نصيحة: بعد الحفظ، يرجى الانتقال إلى [قواعد التحويل] لتعيين القواعد ذات الصلة، وإلا فلن تصبح سارية المفعول.';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenAr implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قاعدة التحويل اكتشف';
	@override String get detect => 'يكشف';
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

// Path: FeedbackScreen
class _TranslationsFeedbackScreenAr implements TranslationsFeedbackScreenEn {
	_TranslationsFeedbackScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get content => 'محتوى ردود الفعل';
	@override String get contentHit => 'مطلوب ، ما يصل إلى 500 حرف';
	@override String get contentCannotEmpty => 'لا يمكن أن يكون محتوى التعليقات فارغًا';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenAr implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملف محتوى الملف';
	@override String get chooseFile => 'حدد الملف';
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
	@override String get trafficTotal => 'إجمالي حركة المرور';
	@override String get trafficProxy => 'وكيل حركة المرور';
	@override String get myLinkEmpty => 'الرجاء الإعداد [الاختصار وصلة] قبل استخدامه';
	@override String get deviceNoSpace => 'مساحة غير كافيه في القرص';
	@override String tooMuchServers({required Object p, required Object p1}) => 'يوجد عدد كبير جدًا من الخوادم الوكيلة [${p}>${p1}]، وقد لا يكون الاتصال ممكنًا بسبب قيود ذاكرة النظام.';
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

// Path: MyProfilesEditScreen
class _TranslationsMyProfilesEditScreenAr implements TranslationsMyProfilesEditScreenEn {
	_TranslationsMyProfilesEditScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تحرير الملف الشخصي';
	@override String get urlExist => 'عنوان URL موجود بالفعل ، يرجى استخدام عنوان URL آخر';
	@override String get updateTimerInterval => 'الفاصل الزمني للتحديث';
	@override String get updateTimerIntervalTips => 'الحد الأدنى: 5 م';
	@override String get reloadAfterProfileUpdate => 'إعادة التحميل بعد تحديث الملف الشخصي';
	@override String get testLatencyAfterProfileUpdate => 'ابدأ اختبارات الكمون بعد التحديث تلقائيًا';
	@override String get testLatencyAfterProfileUpdateTips => 'يجب توصيل VPN ، وتمكين [إعادة التحميل بعد تحديث الملف الشخصي]';
	@override String get testLatencyAutoRemove => 'إزالة الخوادم التي تفشل تلقائيا اختبارات الكمون';
	@override String get testLatencyAutoRemoveTips => 'جرب ما يصل إلى 3 مرات';
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

// Path: MyProfilesScreen
class _TranslationsMyProfilesScreenAr implements TranslationsMyProfilesScreenEn {
	_TranslationsMyProfilesScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مظهر';
	@override String get atLeastOneEnable => 'لا يمكن تعطيله ، يرجى الاحتفاظ بملف تعريف واحد على الأقل';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenAr implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'فحص صافي';
	@override String get warn => 'ملاحظة: نظرًا لتأثير بيئة الشبكة وقواعد التحويل ، فإن نتائج الاختبار ليست مكافئة تمامًا للنتائج الفعلية.';
	@override String get check => 'يفحص';
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
	@override String get hideSystemApp => 'إخفاء تطبيقات النظام';
	@override String get hideAppIcon => 'إخفاء أيقونة التطبيق';
	@override String get enableAppQueryPermission => 'قم بتشغيل الإذن [استعلام قائمة التطبيقات]';
}

// Path: QrcodeScreen
class _TranslationsQrcodeScreenAr implements TranslationsQrcodeScreenEn {
	_TranslationsQrcodeScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get tooLong => 'النص طويل جدًا لعرضه';
	@override String get copy => 'نسخ الوصلة';
	@override String get open => 'افتح الرابط';
	@override String get share => 'شارك الرابط';
	@override String get shareImage => 'شارك رمز الاستجابة السريعة';
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
	@override String get downloadProfilePreferProxy => 'تفضل الوكيل لتنزيل الملف الشخصي';
	@override String get downloadProfilePreferProxyTips => 'إذا كان متصلاً حاليًا ، فسيتم تنزيل الملف الشخصي من خلال الوكيل المتصالح أولاً';
	@override String get rulesetDirectDownlad => 'مجموعة القواعد تحميل مباشر';
	@override String get hideUnusedDiversionGroup => 'إخفاء مجموعات التحويل غير المستخدمة';
	@override String get disableISPDiversionGroup => 'تعطيل قواعد تحويل ISP';
	@override String get portSetting => 'ميناء';
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
	@override String get tlsInsecureEnable => 'تخطي التحقق من الشهادة';
	@override String get tlsFragmentEnable => 'تمكين تجزئة TLS';
	@override String get tlsFragmentSize => 'حجم شريحة TLS';
	@override String get tlsFragmentSleep => 'TLS النوم المجزأ';
	@override String get tlsMixedCaseSNIEnable => 'تمكين TLS الهجين SNI';
	@override String get tlsPaddingEnable => 'تمكين الحشو TLS';
	@override String get tlsPaddingSize => 'حجم الحشو TLS';
	@override String get dnsEnableRule => 'تمكين قواعد تحويل DNS';
	@override String get dnsEnableFakeIp => 'تمكين وهمية';
	@override String get dnsEnableClientSubnet => 'تمكين ECS';
	@override String get dnsEnableProxyResolveByProxy => '[حركة الوكيل] حل DNS من خلال خادم الوكيل';
	@override String get dnsEnableFinalResolveByProxy => '[نهائي] حل DNS من خلال خادم الوكيل';
	@override String get dnsTestDomain => 'مجال الاختبار';
	@override String get dnsTestDomainInvalid => 'مجال غير صالح';
	@override String get dnsTypeOutbound => 'مخدم بروكسي';
	@override String get dnsTypeDirect => 'سير مستقيم';
	@override String get dnsTypeProxy => 'حركة الوكيل';
	@override String get dnsTypeResolver => 'خادم DNS';
	@override String get dnsEnableRuleTips => 'بعد التمكين ، سيختار اسم المجال خادم DNS المقابل للدقة وفقًا لقواعد التحويل';
	@override String get dnsEnableFakeIpTips => 'بعد تمكين FakeIP، إذا تم قطع اتصال VPN، فقد يلزم إعادة تشغيل التطبيق الخاص بك؛ يجب تشغيل هذه الوظيفة [وضع TUN]';
	@override String get dnsTypeOutboundTips => 'دقة اسم المجال لخادم الوكيل';
	@override String get dnsTypeDirectTips => 'حل اسم المجال لحركة المرور المباشرة';
	@override String get dnsTypeProxyTips => 'حل اسم المجال لحركة المرور الوكيل';
	@override String get dnsTypeResolverTips => 'دقة اسم المجال لخادم DNS الآخر';
	@override String get dnsTypeFinalTips => 'حل اسم المجال لحركة المرور الأخرى';
	@override String get dnsAutoSetServer => 'إعداد الخادم تلقائيا';
	@override String get dnsResetServer => 'إعادة تعيين الخادم';
	@override String get inboundDomainResolve => 'حل أسماء النطاقات الواردة';
	@override String get privateDirect => 'اتصال مباشر بالشبكة الخاصة';
	@override String inboundDomainResolveTips({required Object p}) => 'تحتاج بعض أسماء النطاقات التي لا تحتوي على قواعد تحويل تم تكوينها إلى حلها قبل أن تتمكن من الوصول إلى قواعد التحويل المستندة إلى IP؛ وتؤثر هذه الميزة على الطلبات الواردة إلى منفذ الوكيل [${p}]';
	@override String get useRomoteRes => 'استخدم الموارد البعيدة';
	@override String get autoSelect => 'اختيار آلي';
	@override String get autoSelectServerIgnorePerProxyServer => 'تجاهل الخوادم الوكيلة [المواجهة/المتسلسلة].';
	@override String get autoSelectServerInterval => 'فاصل الشيكات الكمون';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'إعادة اكتشاف متى تتغير الشبكة';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'قم بتحديث الخادم الحالي بعد الكشف اليدوي عن التأخير';
	@override String get autoSelectServerIntervalTips => 'كلما كان الفاصل الزمني لاكتشاف التأخير أقصر، كلما تم تحديث بيانات تأخير الخادم في الوقت المناسب، ولكنها ستشغل المزيد من الموارد وتستهلك الكهرباء بشكل أسرع';
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
	@override String get myLink => 'ارتباط اختصار';
	@override String get myLinkInvalid => 'URL غير صالح';
	@override String get autoConnectAfterLaunch => 'اتصال السيارات بعد الإطلاق';
	@override String get hideAfterLaunch => 'إخفاء النافذة بعد بدء التشغيل';
	@override String get autoSetSystemProxy => 'وكيل نظام تعيين تلقائي عند الاتصال';
	@override String get disconnectWhenQuit => 'افصل عندما يخرج التطبيق';
	@override String get allowBypass => 'السماح للتطبيقات بتجاوز VPN';
	@override String get importSuccess => 'استيراد نجاح ';
	@override String get rewriteConfirm => 'سيقوم هذا الملف بكتابة التكوين المحلي الحالي.هل تريد الاستمرار؟';
	@override String get networkShare => 'مشاركة الشبكة';
	@override String get frontProxy => 'الوكيل الأمامي/السلسلة';
	@override String frontProxyTips({required Object p}) => 'البيانات->الخادم الوكيل الأمامي/السلسلة [خوادم بروكسي متعددة: من الأعلى إلى الأسفل]->الخادم الوكيل [${p}]->الخادم الهدف';
	@override String get allowOtherHostsConnect => 'اسمح للآخرين بالاتصال';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'إذا لم يتمكن الآخرون من الوصول إلى هذا الجهاز بعد تشغيل المشاركة، فيرجى محاولة إيقاف تشغيل هذا المفتاح.';
	@override String get enableCluster => 'تمكين مجموعة الوكيل الجوارب/HTTP';
	@override String get clusterAllowOtherHostsConnect => 'السماح للآخرين بالاتصال بـ CLUSTER';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'مصادقة مجموعة الوكيل';
	@override String get tunMode => 'نفق وضع';
	@override String get tunModeTips => 'سيتولى وضع TUN كل حركة مرور النظام [في هذا الوضع ، يمكنك ترك وكيل النظام غير مدقلة]';
	@override String get tunModeRunAsAdmin => 'يتطلب وضع TUN أذونات مسؤول النظام ، يرجى إعادة تشغيل التطبيق كمسؤول';
	@override String get tunStack => 'Stack';
	@override String get launchAtStartup => 'إطلاق عند بدء التشغيل';
	@override String get quitWhenSwitchSystemUser => 'خروج تطبيق عند تبديل مستخدمي النظام';
	@override String get handleScheme => 'مكالمة مخطط النظام';
	@override String get portableMode => 'الوضع المحمول';
	@override String get portableModeDisableTips => 'إذا كنت بحاجة إلى الخروج من الوضع المحمول، فيرجى الخروج من [karing] وحذف المجلد [profiles] يدويًا في نفس الدليل مثل [karing.exe]';
	@override String get handleKaringScheme => 'مقبض karing:// Call';
	@override String get handleClashScheme => 'مقبض clash:// Call';
	@override String get handleSingboxScheme => 'مقبض sing-box:// يتصل';
	@override String get alwayOnVPN => 'اتصال مفتوح دائمًا';
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

// Path: SpeedTestSettingsScreen
class _TranslationsSpeedTestSettingsScreenAr implements TranslationsSpeedTestSettingsScreenEn {
	_TranslationsSpeedTestSettingsScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL اختبار السرعة';
}

// Path: TextToQrCodeScreen
class _TranslationsTextToQrCodeScreenAr implements TranslationsTextToQrCodeScreenEn {
	_TranslationsTextToQrCodeScreenAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'رسالة نصية إلى رمز الاستجابة السريعة';
	@override String get convert => 'يتحول';
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

// Path: ServerManager
class _TranslationsServerManagerAr implements TranslationsServerManagerEn {
	_TranslationsServerManagerAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get noServerAvaliable => 'لا يوجد خادم متاح، يرجى التأكد من صلاحية رابط التكوين أو ملف التكوين؛ وإذا كان التكوين الخاص بك يأتي من GitHub، فيرجى الحصول على عنوان الرابط من الزر [Raw] الموجود في الصفحة';
	@override String get filePathCannotEmpty => 'لا يمكن أن يكون مسار الملف فارغًا';
	@override String fileNotExist({required Object p}) => 'الملف غير موجود: ${p}';
	@override String get urlCannotEmpty => 'لا يمكن أن يكون الرابط فارغًا';
	@override String get invalidUrl => 'رابط ملف تعريف غير صالح';
	@override String get parseFailed => 'فشل تحليل الملف الشخصي';
}

// Path: main
class _TranslationsMainAr implements TranslationsMainEn {
	_TranslationsMainAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayAr tray = _TranslationsMainTrayAr._(_root);
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
			case 'AboutScreen.disableUAReport': return 'قم بإيقاف تشغيل تقرير بيانات الإجراء';
			case 'AboutScreen.disableUAReportTip': return 'تساعدنا تقارير البيانات السلوكية على تحسين تجربة المنتج؛ ستقوم الإصدارات الأقل من الإصدار الرئيسي بإيقاف تشغيل جميع تقارير البيانات تلقائيًا (باستثناء [تنشيط التطبيق])';
			case 'AboutScreen.devOptions': return 'خيارات للمطور';
			case 'AboutScreen.enableDebugLog': return 'تمكين سجل التصحيح';
			case 'AboutScreen.viewFilsContent': return 'عرض الملفات';
			case 'AboutScreen.enablePprof': return 'يُمكَِن pprof';
			case 'AboutScreen.pprofPanel': return 'pprof لوحة';
			case 'AboutScreen.openDir': return 'فتح دليل الملف';
			case 'AboutScreen.useOriginalSBProfile': return 'استخدم تكوين صندوق الغناء الأصلي';
			case 'AddProfileByImportFromFileScreen.title': return 'استيراد ملف الملف الشخصي';
			case 'AddProfileByImportFromFileScreen.chooseFile': return 'حدد الملف';
			case 'AddProfileByImportFromFileScreen.configExist': return 'الملف الشخصي موجود بالفعل ، من فضلك لا تضيفه مرارًا وتكرارًا';
			case 'AddProfileByLinkOrContentScreen.title': return 'إضافة رابط ملف التعريف';
			case 'AddProfileByLinkOrContentScreen.updateTimerInterval': return 'الفاصل الزمني للتحديث';
			case 'AddProfileByLinkOrContentScreen.updateTimerIntervalTips': return 'الحد الأدنى: 5 م';
			case 'AddProfileByLinkOrContentScreen.profileLinkContent': return 'رابط/محتوى الملف الشخصي';
			case 'AddProfileByLinkOrContentScreen.profileLinkContentHit': return 'ارتباط ملف التعريف/المحتوى [مطلوب] (دعم الدعم ، V2Ray (مدعوم الدفعة) ، خبأ ، karing ، sing-box ، shadowsocks ، روابط الملف الشخصي الفرعي)';
			case 'AddProfileByLinkOrContentScreen.subscriptionCannotEmpty': return 'لا يمكن أن يكون رابط الملف الشخصي فارغًا';
			case 'AddProfileByLinkOrContentScreen.configExist': return 'الملف الشخصي موجود بالفعل ، من فضلك لا تضيفه مرارًا وتكرارًا';
			case 'AddProfileByLinkOrContentScreen.invalidUrl': return 'رابط الملف الطويل جدًا';
			case 'AddProfileByLinkOrContentScreen.addFailedFormatException': return ({required Object p}) => 'التنسيق خاطئ ، يرجى تصحيحه وإضافته مرة أخرى:${p}';
			case 'AddProfileByLinkOrContentScreen.addFailedThenDownloadAndImport': return ({required Object p}) => 'فشلت إضافة: ${p}، يرجى محاولة تعديل [UserAgent] والمحاولة مرة أخرى، أو استخدم المتصفح الخاص بالجهاز لفتح رابط التكوين واستيراد ملف التكوين الذي تم تنزيله بواسطة المتصفح إلى هذا التطبيق';
			case 'AddProfileByLinkOrContentScreen.addFailedHandshakeException': return ({required Object p}) => 'فشلت إضافة: ${p}، يرجى فتح الوكيل أو تعديل عقدة الوكيل الحالية والمحاولة مرة أخرى';
			case 'AddProfileByScanQrcodeScanScreen.copy': return 'Copy Link';
			case 'AddProfileByScanQrcodeScanScreen.open': return 'Open Link';
			case 'AddProfileByScanQrcodeScanScreen.requestCameraPermission': return 'يرجى تمكين إذن الكاميرا';
			case 'AddProfileByScanQrcodeScanScreen.requestScreenAccess': return 'يرجى الانتقال إلى إعدادات النظام - الخصوصية والأمان - تسجيل الشاشة لإضافة أذونات لهذا التطبيق';
			case 'AddProfileByScanQrcodeScanScreen.screenshot': return 'لقطة شاشة';
			case 'AddProfileByScanQrcodeScanScreen.scanFromImage': return 'مسح من الصورة';
			case 'AddProfileByScanQrcodeScanScreen.scanNoResult': return 'فشل في تحليل الصورة ، يرجى التأكد من أن لقطة الشاشة هي رمز QR صالح';
			case 'AddProfileByScanQrcodeScanScreen.scanEmptyResult': return 'نتيجة الفحص فارغة';
			case 'AddProfileByScanQrcodeScanScreen.scanException': return ({required Object p}) => 'فشل في تحليل الصورة ، يرجى التأكد من أن لقطة الشاشة هي رمز QR صالح: ${p}';
			case 'BackupAndSyncLanSyncScreen.title': return 'LAN SYNC';
			case 'BackupAndSyncLanSyncScreen.lanSyncNotQuitTips': return 'لا تخرج من هذه الواجهة قبل اكتمال التزامن';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return 'عنوان URL الخادم';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return 'لايمكن ان يكون فارغا';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return 'فشل تسجيل الدخول:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return 'فشل في الحصول على قائمة الملفات:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => 'غير صالح [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => 'غير صالح [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => 'غير صالح [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => 'غير صالح [Rule Set]:${p}, يجب أن يكون عنوان URL عنوان URL HTTPS صالحًا وملفًا ثنائيًا مع ملحق الملف .SRS';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => 'غير صالح [Rule Set(build-in)]:${p} غير صالحة، التنسيق هو geosite:xxx أو geoip:xxx أو acl:xxx، ويجب أن يكون xxx اسم قاعدة صالحًا';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return 'نصيحة: بعد الحفظ، يرجى الانتقال إلى [قواعد التحويل] لتعيين القواعد ذات الصلة، وإلا فلن تصبح سارية المفعول.';
			case 'DiversionRuleDetectScreen.title': return 'قاعدة التحويل اكتشف';
			case 'DiversionRuleDetectScreen.detect': return 'يكشف';
			case 'DiversionRuleDetectScreen.rule': return 'قاعدة:';
			case 'DiversionRuleDetectScreen.outbound': return 'مخدم بروكسي:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return 'نصيحة: حاول مطابقة القواعد من الأعلى إلى الأسفل، إذا لم تتم مطابقة أي قاعدة، استخدم [نهائي]';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'لا يمكن أن يكون ISP فارغًا';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'لا يمكن أن يكون عنوان URL فارغًا';
			case 'DnsSettingsScreen.error': return ({required Object p}) => 'نوع غير مدعوم:${p}';
			case 'DnsSettingsScreen.dnsDesc': return 'العمود الأول من بيانات التأخير هو تأخير استعلام الاتصال المباشر;\nالعمود الثاني: شغله [[حركة الوكيل]حل DNS من خلال خادم الوكيل]: بيانات التأخير هي تأخير الاستعلام الذي تم إعادة توجيهه من خلال خادم الوكيل الحالي; إذا [[حركة الوكيل]حل DNS من خلال خادم الوكيل]: بيانات التأخير هي تأخير استعلام الاتصال المباشر';
			case 'FeedbackScreen.content': return 'محتوى ردود الفعل';
			case 'FeedbackScreen.contentHit': return 'مطلوب ، ما يصل إلى 500 حرف';
			case 'FeedbackScreen.contentCannotEmpty': return 'لا يمكن أن يكون محتوى التعليقات فارغًا';
			case 'FileContentViewerScreen.title': return 'ملف محتوى الملف';
			case 'FileContentViewerScreen.chooseFile': return 'حدد الملف';
			case 'FileContentViewerScreen.clearFileContent': return 'هل أنت متأكد من مسح محتوى الملف؟';
			case 'FileContentViewerScreen.clearFileContentTips': return 'هل أنت متأكد من مسح محتوى ملف الملف الشخصي؟قد يتسبب تطهير ملف الملف الشخصي في فقدان البيانات أو وظائف التطبيق غير الطبيعية ، يرجى العمل بحذر';
			case 'HomeScreen.toSelectServer': return 'الرجاء تحديد خادم';
			case 'HomeScreen.invalidServer': return 'غير صالح ، الرجاء اختيار مرة أخرى';
			case 'HomeScreen.disabledServer': return 'معطل ، الرجاء اختيار مرة أخرى';
			case 'HomeScreen.expiredServer': return 'لا يوجد خادم متاح: قد يكون التكوين قديمًا أو معطلاً';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'جوارب:${sp},http(s):${hp}';
			case 'HomeScreen.trafficTotal': return 'إجمالي حركة المرور';
			case 'HomeScreen.trafficProxy': return 'وكيل حركة المرور';
			case 'HomeScreen.myLinkEmpty': return 'الرجاء الإعداد [الاختصار وصلة] قبل استخدامه';
			case 'HomeScreen.deviceNoSpace': return 'مساحة غير كافيه في القرص';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => 'يوجد عدد كبير جدًا من الخوادم الوكيلة [${p}>${p1}]، وقد لا يكون الاتصال ممكنًا بسبب قيود ذاكرة النظام.';
			case 'LaunchFailedScreen.invalidProcess': return 'فشل التطبيق في البدء [اسم عملية غير صالح] ، يرجى إعادة تثبيت التطبيق إلى دليل منفصل';
			case 'LaunchFailedScreen.invalidProfile': return 'فشل التطبيق في البدء [فشل في الوصول إلى الملف الشخصي] ، يرجى إعادة تثبيت التطبيق';
			case 'LaunchFailedScreen.invalidVersion': return 'فشل التطبيق في بدء [إصدار غير صالح] ، يرجى إعادة تثبيت التطبيق';
			case 'LaunchFailedScreen.systemVersionLow': return 'فشل بدء تشغيل التطبيق [إصدار النظام منخفض جدًا]';
			case 'LaunchFailedScreen.invalidInstallPath': return 'مسار التثبيت غير صالح ، يرجى إعادة تثبيته إلى مسار صالح';
			case 'MyProfilesEditScreen.title': return 'تحرير الملف الشخصي';
			case 'MyProfilesEditScreen.urlExist': return 'عنوان URL موجود بالفعل ، يرجى استخدام عنوان URL آخر';
			case 'MyProfilesEditScreen.updateTimerInterval': return 'الفاصل الزمني للتحديث';
			case 'MyProfilesEditScreen.updateTimerIntervalTips': return 'الحد الأدنى: 5 م';
			case 'MyProfilesEditScreen.reloadAfterProfileUpdate': return 'إعادة التحميل بعد تحديث الملف الشخصي';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdate': return 'ابدأ اختبارات الكمون بعد التحديث تلقائيًا';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdateTips': return 'يجب توصيل VPN ، وتمكين [إعادة التحميل بعد تحديث الملف الشخصي]';
			case 'MyProfilesEditScreen.testLatencyAutoRemove': return 'إزالة الخوادم التي تفشل تلقائيا اختبارات الكمون';
			case 'MyProfilesEditScreen.testLatencyAutoRemoveTips': return 'جرب ما يصل إلى 3 مرات';
			case 'MyProfilesMergeScreen.profilesMerge': return 'دمج الملامح';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return 'ملف تعريف الهدف';
			case 'MyProfilesMergeScreen.profilesMergeSource': return 'ملفات تعريف المصدر';
			case 'MyProfilesMergeScreen.profilesMergeTips': return 'نصيحة: سيتم تجاهل تحويل ملفات تعريف المصدر';
			case 'MyProfilesScreen.title': return 'مظهر';
			case 'MyProfilesScreen.atLeastOneEnable': return 'لا يمكن تعطيله ، يرجى الاحتفاظ بملف تعريف واحد على الأقل';
			case 'NetCheckScreen.title': return 'فحص صافي';
			case 'NetCheckScreen.warn': return 'ملاحظة: نظرًا لتأثير بيئة الشبكة وقواعد التحويل ، فإن نتائج الاختبار ليست مكافئة تمامًا للنتائج الفعلية.';
			case 'NetCheckScreen.check': return 'يفحص';
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
			case 'PerAppAndroidScreen.hideSystemApp': return 'إخفاء تطبيقات النظام';
			case 'PerAppAndroidScreen.hideAppIcon': return 'إخفاء أيقونة التطبيق';
			case 'PerAppAndroidScreen.enableAppQueryPermission': return 'قم بتشغيل الإذن [استعلام قائمة التطبيقات]';
			case 'QrcodeScreen.tooLong': return 'النص طويل جدًا لعرضه';
			case 'QrcodeScreen.copy': return 'نسخ الوصلة';
			case 'QrcodeScreen.open': return 'افتح الرابط';
			case 'QrcodeScreen.share': return 'شارك الرابط';
			case 'QrcodeScreen.shareImage': return 'شارك رمز الاستجابة السريعة';
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
			case 'SettingsScreen.downloadProfilePreferProxy': return 'تفضل الوكيل لتنزيل الملف الشخصي';
			case 'SettingsScreen.downloadProfilePreferProxyTips': return 'إذا كان متصلاً حاليًا ، فسيتم تنزيل الملف الشخصي من خلال الوكيل المتصالح أولاً';
			case 'SettingsScreen.rulesetDirectDownlad': return 'مجموعة القواعد تحميل مباشر';
			case 'SettingsScreen.hideUnusedDiversionGroup': return 'إخفاء مجموعات التحويل غير المستخدمة';
			case 'SettingsScreen.disableISPDiversionGroup': return 'تعطيل قواعد تحويل ISP';
			case 'SettingsScreen.portSetting': return 'ميناء';
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
			case 'SettingsScreen.tlsInsecureEnable': return 'تخطي التحقق من الشهادة';
			case 'SettingsScreen.tlsFragmentEnable': return 'تمكين تجزئة TLS';
			case 'SettingsScreen.tlsFragmentSize': return 'حجم شريحة TLS';
			case 'SettingsScreen.tlsFragmentSleep': return 'TLS النوم المجزأ';
			case 'SettingsScreen.tlsMixedCaseSNIEnable': return 'تمكين TLS الهجين SNI';
			case 'SettingsScreen.tlsPaddingEnable': return 'تمكين الحشو TLS';
			case 'SettingsScreen.tlsPaddingSize': return 'حجم الحشو TLS';
			case 'SettingsScreen.dnsEnableRule': return 'تمكين قواعد تحويل DNS';
			case 'SettingsScreen.dnsEnableFakeIp': return 'تمكين وهمية';
			case 'SettingsScreen.dnsEnableClientSubnet': return 'تمكين ECS';
			case 'SettingsScreen.dnsEnableProxyResolveByProxy': return '[حركة الوكيل] حل DNS من خلال خادم الوكيل';
			case 'SettingsScreen.dnsEnableFinalResolveByProxy': return '[نهائي] حل DNS من خلال خادم الوكيل';
			case 'SettingsScreen.dnsTestDomain': return 'مجال الاختبار';
			case 'SettingsScreen.dnsTestDomainInvalid': return 'مجال غير صالح';
			case 'SettingsScreen.dnsTypeOutbound': return 'مخدم بروكسي';
			case 'SettingsScreen.dnsTypeDirect': return 'سير مستقيم';
			case 'SettingsScreen.dnsTypeProxy': return 'حركة الوكيل';
			case 'SettingsScreen.dnsTypeResolver': return 'خادم DNS';
			case 'SettingsScreen.dnsEnableRuleTips': return 'بعد التمكين ، سيختار اسم المجال خادم DNS المقابل للدقة وفقًا لقواعد التحويل';
			case 'SettingsScreen.dnsEnableFakeIpTips': return 'بعد تمكين FakeIP، إذا تم قطع اتصال VPN، فقد يلزم إعادة تشغيل التطبيق الخاص بك؛ يجب تشغيل هذه الوظيفة [وضع TUN]';
			case 'SettingsScreen.dnsTypeOutboundTips': return 'دقة اسم المجال لخادم الوكيل';
			case 'SettingsScreen.dnsTypeDirectTips': return 'حل اسم المجال لحركة المرور المباشرة';
			case 'SettingsScreen.dnsTypeProxyTips': return 'حل اسم المجال لحركة المرور الوكيل';
			case 'SettingsScreen.dnsTypeResolverTips': return 'دقة اسم المجال لخادم DNS الآخر';
			case 'SettingsScreen.dnsTypeFinalTips': return 'حل اسم المجال لحركة المرور الأخرى';
			case 'SettingsScreen.dnsAutoSetServer': return 'إعداد الخادم تلقائيا';
			case 'SettingsScreen.dnsResetServer': return 'إعادة تعيين الخادم';
			case 'SettingsScreen.inboundDomainResolve': return 'حل أسماء النطاقات الواردة';
			case 'SettingsScreen.privateDirect': return 'اتصال مباشر بالشبكة الخاصة';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => 'تحتاج بعض أسماء النطاقات التي لا تحتوي على قواعد تحويل تم تكوينها إلى حلها قبل أن تتمكن من الوصول إلى قواعد التحويل المستندة إلى IP؛ وتؤثر هذه الميزة على الطلبات الواردة إلى منفذ الوكيل [${p}]';
			case 'SettingsScreen.useRomoteRes': return 'استخدم الموارد البعيدة';
			case 'SettingsScreen.autoSelect': return 'اختيار آلي';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'تجاهل الخوادم الوكيلة [المواجهة/المتسلسلة].';
			case 'SettingsScreen.autoSelectServerInterval': return 'فاصل الشيكات الكمون';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return 'إعادة اكتشاف متى تتغير الشبكة';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return 'قم بتحديث الخادم الحالي بعد الكشف اليدوي عن التأخير';
			case 'SettingsScreen.autoSelectServerIntervalTips': return 'كلما كان الفاصل الزمني لاكتشاف التأخير أقصر، كلما تم تحديث بيانات تأخير الخادم في الوقت المناسب، ولكنها ستشغل المزيد من الموارد وتستهلك الكهرباء بشكل أسرع';
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
			case 'SettingsScreen.myLink': return 'ارتباط اختصار';
			case 'SettingsScreen.myLinkInvalid': return 'URL غير صالح';
			case 'SettingsScreen.autoConnectAfterLaunch': return 'اتصال السيارات بعد الإطلاق';
			case 'SettingsScreen.hideAfterLaunch': return 'إخفاء النافذة بعد بدء التشغيل';
			case 'SettingsScreen.autoSetSystemProxy': return 'وكيل نظام تعيين تلقائي عند الاتصال';
			case 'SettingsScreen.disconnectWhenQuit': return 'افصل عندما يخرج التطبيق';
			case 'SettingsScreen.allowBypass': return 'السماح للتطبيقات بتجاوز VPN';
			case 'SettingsScreen.importSuccess': return 'استيراد نجاح ';
			case 'SettingsScreen.rewriteConfirm': return 'سيقوم هذا الملف بكتابة التكوين المحلي الحالي.هل تريد الاستمرار؟';
			case 'SettingsScreen.networkShare': return 'مشاركة الشبكة';
			case 'SettingsScreen.frontProxy': return 'الوكيل الأمامي/السلسلة';
			case 'SettingsScreen.frontProxyTips': return ({required Object p}) => 'البيانات->الخادم الوكيل الأمامي/السلسلة [خوادم بروكسي متعددة: من الأعلى إلى الأسفل]->الخادم الوكيل [${p}]->الخادم الهدف';
			case 'SettingsScreen.allowOtherHostsConnect': return 'اسمح للآخرين بالاتصال';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'إذا لم يتمكن الآخرون من الوصول إلى هذا الجهاز بعد تشغيل المشاركة، فيرجى محاولة إيقاف تشغيل هذا المفتاح.';
			case 'SettingsScreen.enableCluster': return 'تمكين مجموعة الوكيل الجوارب/HTTP';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'السماح للآخرين بالاتصال بـ CLUSTER';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'مصادقة مجموعة الوكيل';
			case 'SettingsScreen.tunMode': return 'نفق وضع';
			case 'SettingsScreen.tunModeTips': return 'سيتولى وضع TUN كل حركة مرور النظام [في هذا الوضع ، يمكنك ترك وكيل النظام غير مدقلة]';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'يتطلب وضع TUN أذونات مسؤول النظام ، يرجى إعادة تشغيل التطبيق كمسؤول';
			case 'SettingsScreen.tunStack': return 'Stack';
			case 'SettingsScreen.launchAtStartup': return 'إطلاق عند بدء التشغيل';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return 'خروج تطبيق عند تبديل مستخدمي النظام';
			case 'SettingsScreen.handleScheme': return 'مكالمة مخطط النظام';
			case 'SettingsScreen.portableMode': return 'الوضع المحمول';
			case 'SettingsScreen.portableModeDisableTips': return 'إذا كنت بحاجة إلى الخروج من الوضع المحمول، فيرجى الخروج من [karing] وحذف المجلد [profiles] يدويًا في نفس الدليل مثل [karing.exe]';
			case 'SettingsScreen.handleKaringScheme': return 'مقبض karing:// Call';
			case 'SettingsScreen.handleClashScheme': return 'مقبض clash:// Call';
			case 'SettingsScreen.handleSingboxScheme': return 'مقبض sing-box:// يتصل';
			case 'SettingsScreen.alwayOnVPN': return 'اتصال مفتوح دائمًا';
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
			case 'SpeedTestSettingsScreen.title': return 'URL اختبار السرعة';
			case 'TextToQrCodeScreen.title': return 'رسالة نصية إلى رمز الاستجابة السريعة';
			case 'TextToQrCodeScreen.convert': return 'يتحول';
			case 'UserAgreementScreen.privacyFirst': return 'خصوصيتك تأتي أولا';
			case 'UserAgreementScreen.agreeAndContinue': return 'قبول ومتابعة';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => 'الإصدار الجديد [${p}] جاهز';
			case 'VersionUpdateScreen.update': return 'أعد التشغيل للتحديث';
			case 'VersionUpdateScreen.cancel': return 'ليس الآن';
			case 'CommonWidget.diableAlwayOnVPN': return 'إذا تم تشغيل [Always on VPN]، فيرجى إيقاف تشغيل [Always on VPN] ومحاولة الاتصال مرة أخرى.';
			case 'CommonWidget.resetPort': return 'الرجاء تغيير المنفذ إلى منفذ آخر متاح أو إغلاق التطبيق الذي يشغل المنفذ.';
			case 'ServerManager.noServerAvaliable': return 'لا يوجد خادم متاح، يرجى التأكد من صلاحية رابط التكوين أو ملف التكوين؛ وإذا كان التكوين الخاص بك يأتي من GitHub، فيرجى الحصول على عنوان الرابط من الزر [Raw] الموجود في الصفحة';
			case 'ServerManager.filePathCannotEmpty': return 'لا يمكن أن يكون مسار الملف فارغًا';
			case 'ServerManager.fileNotExist': return ({required Object p}) => 'الملف غير موجود: ${p}';
			case 'ServerManager.urlCannotEmpty': return 'لا يمكن أن يكون الرابط فارغًا';
			case 'ServerManager.invalidUrl': return 'رابط ملف تعريف غير صالح';
			case 'ServerManager.parseFailed': return 'فشل تحليل الملف الشخصي';
			case 'main.tray.menuOpen': return '    يفتح    ';
			case 'main.tray.menuExit': return '    مخرج    ';
			case 'enable': return 'يُمكَِن';
			case 'disable': return 'إبطال';
			case 'filter': return 'فلتر';
			case 'filterMethod': return 'طريقة التصفية';
			case 'include': return 'يشمل';
			case 'exclude': return 'استبعاد';
			case 'all': return 'الجميع';
			case 'prefer': return 'أولوية';
			case 'only': return 'فقط';
			case 'open': return 'يفتح';
			case 'close': return 'إنهاء';
			case 'quit': return 'يترك';
			case 'add': return 'اضف إليه';
			case 'remove': return 'يمسح';
			case 'edit': return 'يحرر';
			case 'view': return 'يفحص';
			case 'more': return 'أكثر';
			case 'getProfile': return 'احصل على التكوين';
			case 'addProfile': return 'إضافة ملف تعريف';
			case 'addSuccess': return 'اضيف بنجاح';
			case 'addSuccessThen': return ({required Object p}) => 'تم إنشاء التكوين بنجاح، يرجى الانتقال إلى [${p}] للعرض';
			case 'addFailed': return ({required Object p}) => 'إضافة فشل:${p}';
			case 'removeConfirm': return 'هل انت متأكد من الحذف؟';
			case 'tips': return 'معلومات';
			case 'copy': return 'ينسخ';
			case 'ok': return 'نعم';
			case 'cancel': return 'يلغي';
			case 'feedback': return 'تعليق';
			case 'faq': return 'أسئلة مكررة';
			case 'download': return 'تحميل';
			case 'loading': return 'تحميل...';
			case 'updateFailed': return ({required Object p}) => 'فشل التحديث:${p}';
			case 'days': return 'أيام';
			case 'hours': return 'ساعات';
			case 'minutes': return 'دقائق';
			case 'seconds': return 'ثانية';
			case 'protocol': return 'بروتوكول';
			case 'search': return 'يبحث';
			case 'custom': return 'مخصص';
			case 'connect': return 'يتصل';
			case 'disconnect': return 'قطع الاتصال';
			case 'connected': return 'متصل';
			case 'disconnected': return 'انقطع الاتصال';
			case 'connecting': return 'توصيل';
			case 'connectTimeout': return 'ربط مهلة';
			case 'timeout': return 'نفذ الوقت';
			case 'language': return 'لغة';
			case 'next': return 'التالي';
			case 'done': return 'منتهي';
			case 'apply': return 'يتقدم';
			case 'refresh': return 'ينعش';
			case 'retry': return 'إعادة المحاولة?';
			case 'none': return 'لا أحد';
			case 'reset': return 'إعادة ضبط';
			case 'submit': return 'يُقدِّم';
			case 'user': return 'مستخدم';
			case 'account': return 'حساب';
			case 'password': return 'كلمة المرور';
			case 'required': return 'مطلوب';
			case 'diversion': return 'تحويل';
			case 'diversionRules': return 'قواعد التحويل';
			case 'diversionRulesEnable': return 'تمكين قواعد تفريغ [ISP]';
			case 'diversionCustomGroup': return 'مجموعة تحويل مخصصة';
			case 'diversionCustomGroupPreset': return 'الإعداد المسبق [مجموعة تحويل مخصصة]';
			case 'diversionCustomGroupPresetTips': return 'ملاحظة: ستتم إضافة/تغطية العناصر الممكّنة إلى [مجموعة التحويل المخصصة] و[قواعد التحويل]';
			case 'diversionCustomGroupAddTips': return 'ملاحظة: قد تحتاج إلى ضبط الفرز يدويًا بعد إضافته، وإلا فإن التحويل المضاف حديثًا قد لا يسري مفعوله.';
			case 'urlTestCustomGroup': return 'مجموعة الوكيل المخصصة';
			case 'rulesetEnableTips': return 'نصيحة: بعد تشغيل الخيارات ، يرجى الانتقال إلى [قواعد التحويل] لتعيين القواعد ذات الصلة ، وإلا فلن تدخل ساري المفعول ';
			case 'ispUserAgentTips': return 'سيقدم [ISP] أنواعًا مختلفة من بيانات الاشتراك بناءً على [UserAgent] في طلب [HTTP].';
			case 'ispDiversionTips': return 'قواعد التفريغ التي يوفرها [ISP]؛ لا تدعم الاشتراكات من النوع [V2Ray] قواعد التفريغ';
			case 'staticIP': return 'رقم تعريف حاسوب ثابت';
			case 'other': return 'آخر';
			case 'dns': return 'DNS';
			case 'url': return 'URL';
			case 'isp': return 'ISP';
			case 'ispBind': return '[ISP] ملزمة';
			case 'ispUnbind': return ({required Object p}) => 'فك الارتباط[${p}]';
			case 'ispFaq': return ({required Object p}) => 'الأسئلة الشائعة[${p}]';
			case 'ispCustomerService': return ({required Object p}) => 'خدمة العملاء[${p}]';
			case 'ispFollow': return ({required Object p}) => 'متابعة[${p}]';
			case 'ispInvalidOrExpired': return '[ISP]غير صالح أو منتهية الصلاحية';
			case 'tls': return 'TLS';
			case 'userAgent': return 'UserAgent';
			case 'urlInvalid': return 'URL غير صالح';
			case 'outboundActionCurrentSelected': return 'المحدد الحالي';
			case 'outboundActionUrltest': return 'اختيار آلي';
			case 'outboundActionDirect': return 'مباشر';
			case 'outboundActionBlock': return 'حاجز';
			case 'routeFinal': return 'أخير';
			case 'rulesetGeoSite': return 'GeoSite';
			case 'rulesetGeoIp': return 'GeoIP';
			case 'rulesetAcl': return 'ACL';
			case 'iCloud': return 'iCloud';
			case 'appleTV': return 'Apple TV';
			case 'webdav': return 'Webdav';
			case 'setting': return 'إعدادات';
			case 'protocolSniff': return 'الكشف عن البروتوكول';
			case 'protocolSniffOverrideDestination': return 'يغطي اسم المجال المكتشف عنوان هدف الاتصال';
			case 'remark': return 'ملاحظة';
			case 'remarkCannotEmpty': return 'لا يمكن أن تكون الملاحظات فارغة';
			case 'remarkTooLong': return 'ملاحظات تصل إلى 32 حرفًا';
			case 'remarkExist': return 'ملاحظة موجودة بالفعل ، يرجى استخدام اسم آخر';
			case 'domainSuffix': return 'لاحقة اسم المجال';
			case 'domain': return 'اسم النطاق';
			case 'domainKeyword': return 'الكلمات الرئيسية لاسم المجال';
			case 'domainRegex': return 'انتظام اسم المجال';
			case 'ip': return 'IP';
			case 'port': return 'ميناء';
			case 'appPackage': return 'اسم حزمة التطبيق';
			case 'processName': return 'اسم العملية';
			case 'processPath': return 'مسار العملية';
			case 'systemProxy': return 'وكيل النظام';
			case 'netInterfaces': return 'واجهات صافية';
			case 'netSpeed': return 'سرعة';
			case 'website': return 'موقع إلكتروني';
			case 'rule': return 'قاعدة';
			case 'global': return 'عالمي';
			case 'qrcode': return 'رمز الاستجابة السريعة';
			case 'scanQrcode': return 'مسح رمز الاستجابة السريعة';
			case 'scanResult': return 'نتيجة المسح';
			case 'backupAndSync': return 'النسخ الاحتياطي والمزامنة';
			case 'importAndExport': return 'استيراد وتصدير';
			case 'import': return 'يستورد';
			case 'export': return 'يصدّر';
			case 'send': return 'يرسل';
			case 'receive': return 'تولي';
			case 'sendOrReceiveNotMatch': return ({required Object p}) => 'الرجاء استخدام [${p}]';
			case 'sendConfirm': return 'تأكيد الإرسال؟';
			case 'termOfUse': return 'شرط الخدمة';
			case 'privacyPolicy': return 'سياسة الخصوصية';
			case 'about': return 'عن';
			case 'name': return 'اسم';
			case 'version': return 'إصدار';
			case 'notice': return 'يلاحظ';
			case 'sort': return 'إعادة ترتيب';
			case 'novice': return 'وضع المبتدئ';
			case 'recommended': return 'يوصي';
			case 'innerError': return ({required Object p}) => 'خطأ داخلي: ${p}';
			case 'logicOperation': return 'عملية منطقية';
			case 'share': return 'يشارك';
			case 'candidateWord': return 'كلمات المرشح';
			case 'keywordOrRegx': return 'الكلمات الرئيسية/العادية';
			case 'importFromClipboard': return 'استيراد من الحافظة';
			case 'exportToClipboard': return 'تصدير إلى الحافظة';
			case 'server': return 'الخادم';
			case 'turnOffPrivateDirect': return 'يرجى تمكين [الاتصال المباشر بالشبكة الخاصة] أولاً';
			case 'targetConnectFailed': return ({required Object p}) => 'فشل الاتصال بـ [${p}]، يرجى التأكد من وجود الجهاز في نفس الشبكة المحلية (LAN)';
			case 'appleTVSync': return 'مزامنة التكوين الأساسي الحالي مع Apple TV - Karing';
			case 'appleTVSyncDone': return 'اكتملت المزامنة، برجاء الانتقال إلى Apple TV - Karing لفتح/إعادة تشغيل الاتصال';
			case 'appleTVRemoveCoreConfig': return 'إزالة Apple TV - Karing Core Configuration';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - تم حذف الملف التعريفي الأساسي لـ Karing؛ وتم قطع اتصال خدمة VPN';
			case 'appleTVUrlInvalid': return 'عنوان URL غير صالح، يرجى فتح Apple TV - Karing، ومسح رمز QR الذي يعرضه Karing';
			case 'appleTV404': return ({required Object p}) => 'AppleTV:Karing[${p}] لا يحتوي على هذه الوظيفة، يرجى الترقية والمحاولة مرة أخرى';
			case 'remoteProfileEditConfirm': return 'بعد تحديث التكوين، ستتم استعادة تعديلات العقدة. هل تريد المتابعة؟';
			case 'invalidFileType': return ({required Object p}) => 'نوع الملف غير صالح:${p}';
			case 'mustBeValidHttpsURL': return 'يجب أن يكون عنوان URL HTTPS صالح';
			case 'fileNotExistReinstall': return ({required Object p}) => 'الملف مفقود [${p}]، يرجى إعادة التثبيت';
			case 'latencyTest': return 'كشف التأخير';
			case 'latencyTestResolveIP': return 'أثناء الكشف اليدوي، يتم أيضًا تحليل عنوان IP الخاص بالتصدير.';
			case 'latencyTestTimeout': return 'نفذ الوقت';
			case 'uwpExemption': return 'إعفاء عزل شبكة UWP';
			case 'ads': return 'إزالة الإعلانات';
			case 'adsBanner': return 'إعلانات البانر';
			case 'donate': return 'يتبرع';
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

