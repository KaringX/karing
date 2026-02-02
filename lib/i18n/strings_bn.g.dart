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
class TranslationsBn with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsBn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.bn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <bn>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsBn _root = this; // ignore: unused_field

	@override 
	TranslationsBn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsBn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenBn AboutScreen = _TranslationsAboutScreenBn._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenBn BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenBn._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenBn DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenBn._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenBn DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenBn._(_root);
	@override late final _TranslationsDiversionRulesScreenBn DiversionRulesScreen = _TranslationsDiversionRulesScreenBn._(_root);
	@override late final _TranslationsDnsSettingsScreenBn DnsSettingsScreen = _TranslationsDnsSettingsScreenBn._(_root);
	@override late final _TranslationsFileContentViewerScreenBn FileContentViewerScreen = _TranslationsFileContentViewerScreenBn._(_root);
	@override late final _TranslationsHomeScreenBn HomeScreen = _TranslationsHomeScreenBn._(_root);
	@override late final _TranslationsLaunchFailedScreenBn LaunchFailedScreen = _TranslationsLaunchFailedScreenBn._(_root);
	@override late final _TranslationsMyProfilesMergeScreenBn MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenBn._(_root);
	@override late final _TranslationsNetCheckScreenBn NetCheckScreen = _TranslationsNetCheckScreenBn._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenBn NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenBn._(_root);
	@override late final _TranslationsNetConnectionsScreenBn NetConnectionsScreen = _TranslationsNetConnectionsScreenBn._(_root);
	@override late final _TranslationsPerAppAndroidScreenBn PerAppAndroidScreen = _TranslationsPerAppAndroidScreenBn._(_root);
	@override late final _TranslationsRegionSettingsScreenBn RegionSettingsScreen = _TranslationsRegionSettingsScreenBn._(_root);
	@override late final _TranslationsServerSelectScreenBn ServerSelectScreen = _TranslationsServerSelectScreenBn._(_root);
	@override late final _TranslationsSettingsScreenBn SettingsScreen = _TranslationsSettingsScreenBn._(_root);
	@override late final _TranslationsUserAgreementScreenBn UserAgreementScreen = _TranslationsUserAgreementScreenBn._(_root);
	@override late final _TranslationsVersionUpdateScreenBn VersionUpdateScreen = _TranslationsVersionUpdateScreenBn._(_root);
	@override late final _TranslationsCommonWidgetBn CommonWidget = _TranslationsCommonWidgetBn._(_root);
	@override late final _TranslationsMainBn main = _TranslationsMainBn._(_root);
	@override late final _TranslationsMetaBn meta = _TranslationsMetaBn._(_root);
	@override String get diversionRulesKeep => '[${_root.meta.isp}] এর [${_root.meta.diversionRules}] বজায় রাখুন';
	@override String get diversionCustomGroupPreset => 'প্রিসেট [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'দ্রষ্টব্য: সক্ষম করা আইটেমগুলি [${_root.meta.diversionCustomGroup}] এবং [${_root.meta.diversionRules}]-এ যুক্ত/ওভাররাইট করা হবে';
	@override String get diversionCustomGroupAddTips => 'দ্রষ্টব্য: যুক্ত করার পরে, আপনাকে ম্যানুয়ালি ক্রম সামঞ্জস্য করতে হতে পারে, অন্যথায় নতুন যুক্ত করা ডাইভারশন কার্যকর নাও হতে পারে';
	@override String get rulesetEnableTips => 'টিপ: অপশনগুলি চালু করার পরে, প্রাসঙ্গিক রুল সেট করতে অনুগ্রহ করে [${_root.meta.diversionRules}]-এ যান, অন্যথায় সেগুলি কার্যকর হবে না';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] [HTTP] রিকোয়েস্টে থাকা [UserAgent]-এর ভিত্তিতে বিভিন্ন সাবস্ক্রিপশন টাইপের ডেটা পাঠাবে';
	@override String get ispDiversionTips => '[${_root.meta.isp}] ট্র্যাফিক ডাইভারশন রুল প্রদান করে; [V2Ray] টাইপের সাবস্ক্রিপশন ট্র্যাফিক ডাইভারশন রুল সমর্থন করে না';
	@override late final _TranslationsIspBn isp = _TranslationsIspBn._(_root);
	@override late final _TranslationsPermissionBn permission = _TranslationsPermissionBn._(_root);
	@override late final _TranslationsTlsBn tls = _TranslationsTlsBn._(_root);
	@override late final _TranslationsOutboundRuleModeBn outboundRuleMode = _TranslationsOutboundRuleModeBn._(_root);
	@override late final _TranslationsDnsProxyResolveModeBn dnsProxyResolveMode = _TranslationsDnsProxyResolveModeBn._(_root);
	@override late final _TranslationsProxyStrategyBn proxyStrategy = _TranslationsProxyStrategyBn._(_root);
	@override late final _TranslationsReloadReasonBn reloadReason = _TranslationsReloadReasonBn._(_root);
	@override late final _TranslationsThemeBn theme = _TranslationsThemeBn._(_root);
	@override String get downloadProxyStrategy => 'ডাউনলোড চ্যানেল';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: ডোমেইন নাম রেজলভ করতে প্রক্সি সার্ভারের মাধ্যমে DNS সার্ভারের সাথে সংযুক্ত হন\n[${_root.dnsProxyResolveMode.direct}]: ডোমেইন নাম রেজলভ করতে সরাসরি DNS সার্ভারের সাথে সংযুক্ত হন\n[${_root.dnsProxyResolveMode.fakeip}]: প্রক্সি সার্ভার আপনার পক্ষ থেকে ডোমেইন নাম রেজলভ করে; আপনি যদি VPN সংযোগ বিচ্ছিন্ন করেন, তবে আপনার অ্যাপ্লিকেশনটি পুনরায় চালু করার প্রয়োজন হতে পারে; শুধুমাত্র [TUN] ইনকামিং ট্র্যাফিকের জন্য কার্যকর';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'প্রোটোকল স্নিফ';
	@override String sendOrReceiveNotMatch({required Object p}) => 'অনুগ্রহ করে [${p}] ব্যবহার করুন';
	@override String get turnOffPrivateDirect => 'অনুগ্রহ করে প্রথমে [প্রাইভেট নেটওয়ার্ক সরাসরি সংযোগ] চালু করুন';
	@override String targetConnectFailed({required Object p}) => '[${p}] এর সাথে সংযোগ করতে ব্যর্থ। অনুগ্রহ করে নিশ্চিত করুন যে ডিভাইসগুলি একই LAN-এ আছে';
	@override String get appleTVSync => 'বর্তমান কোর কনফিগারেশন Apple TV - Karing-এর সাথে সিঙ্ক করুন';
	@override String get appleTVSyncDone => 'সিঙ্ক সম্পন্ন হয়েছে। সংযোগ শুরু/পুনরায় চালু করতে অনুগ্রহ করে Apple TV - Karing-এ যান';
	@override String get appleTVRemoveCoreConfig => 'Apple TV - Karing কোর কনফিগারেশন মুছুন';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing কোর কনফিগারেশন মুছে ফেলা হয়েছে; VPN সার্ভিস বিচ্ছিন্ন করা হয়েছে';
	@override String get appleTVUrlInvalid => 'অকার্যকর URL, অনুগ্রহ করে Apple TV - Karing খুলুন এবং Karing দ্বারা প্রদর্শিত QR কোডটি স্ক্যান করুন';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}]-এ এই ফিচারটি নেই, অনুগ্রহ করে আপডেট করুন এবং আবার চেষ্টা করুন';
	@override String appleCoreVersionNotMatch({required Object p}) => 'কোর মেইন সংস্করণ মিলছে না, অনুগ্রহ করে [${p}] আপডেট করুন এবং আবার চেষ্টা করুন';
	@override String get remoteProfileEditConfirm => 'প্রোফাইল আপডেট হওয়ার পরে, নোড পরিবর্তনগুলি পুনরুদ্ধার করা হবে। চালিয়ে যাবেন?';
	@override String get mustBeValidHttpsURL => 'একটি বৈধ https URL হতে হবে';
	@override String fileNotExistReinstall({required Object p}) => 'ফাইলটি পাওয়া যাচ্ছে না [${p}], অনুগ্রহ করে পুনরায় ইনস্টল করুন';
	@override String get noNetworkConnect => 'কোনো ইন্টারনেট সংযোগ নেই';
	@override String get sudoPassword => 'sudo পাসওয়ার্ড (TUN মোডের জন্য প্রয়োজন)';
	@override String get turnOffNetworkBeforeInstall => 'আপডেট ইনস্টল করার আগে [এয়ারপ্লেন মোড] চালু করার পরামর্শ দেওয়া হচ্ছে';
	@override String get latencyTestResolveIP => 'ম্যানুয়ালি চেক করার সময়, আউটলেট IP রেজলভ করুন';
	@override String get latencyTestConcurrency => 'কনকারেন্সি';
	@override String get edgeRuntimeNotInstalled => 'বর্তমান ডিভাইসে Edge WebView2 রানটাইম ইনস্টল করা নেই, তাই পেজটি প্রদর্শিত হতে পারছে না। অনুগ্রহ করে Edge WebView2 রানটাইম (x64) ডাউনলোড এবং ইনস্টল করুন, অ্যাপটি পুনরায় চালু করুন এবং আবার চেষ্টা করুন।';
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
	};
}

// Path: AboutScreen
class _TranslationsAboutScreenBn implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'ইনস্টলেশন সূত্র';
	@override String get installTime => 'ইনস্টলেশন সময়';
	@override String get versionChannel => 'অটো আপডেট চ্যানেল';
	@override String get autoDownloadPkg => 'আপডেট প্যাকেজ স্বয়ংক্রিয়ভাবে ডাউনলোড করুন';
	@override String get disableAppImproveData => 'অ্যাপ উন্নত করার ডেটা';
	@override String get disableUAReportTip => '[${_root.AboutScreen.disableAppImproveData}] সক্ষম করলে পণ্যের স্থিতিশীলতা এবং ব্যবহারযোগ্যতা উন্নত করতে আমাদের সাহায্য হয়; আমরা কোনো ব্যক্তিগত গোপনীয়তা ডেটা সংগ্রহ করি না। এটি নিষ্ক্রিয় করলে অ্যাপটি কোনো ডেটা সংগ্রহ করতে পারবে না।';
	@override String get devOptions => 'ডেভেলপার অপশন';
	@override String get enableDebugLog => 'ডিবাগ লগ সক্ষম করুন';
	@override String get viewFilsContent => 'ফাইলগুলি দেখুন';
	@override String get enablePprof => 'pprof সক্ষম করুন';
	@override String get pprofPanel => 'pprof প্যানেল';
	@override String get allowRemoteAccessPprof => '${_root.AboutScreen.pprofPanel}-এ রিমোট অ্যাক্সেসের অনুমতি দিন';
	@override String get allowRemoteAccessHtmlBoard => '${_root.SettingsScreen.htmlBoard}-এ রিমোট অ্যাক্সেসের অনুমতি দিন';
	@override String get useOriginalSBProfile => 'আসল sing-box প্রোফাইল ব্যবহার করুন';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenBn implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'সার্ভার URL';
	@override String get webdavRequired => 'খালি রাখা যাবে না';
	@override String get webdavLoginFailed => 'লগইন ব্যর্থ হয়েছে:';
	@override String get webdavListFailed => 'ফাইল তালিকা পেতে ব্যর্থ হয়েছে:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenBn implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'অকার্যকর [ডোমেইন]:${p}';
	@override String invalidIpCidr({required Object p}) => 'অকার্যকর [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'অকার্যকর [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'অকার্যকর [রুল সেট]:${p}, URL একটি বৈধ https URL হতে হবে এবং .srs/.json এক্সটেনশন সহ একটি বাইনারি ফাইল হতে হবে';
	@override String invalidRuleSetBuildIn({required Object p}) => 'অকার্যকর [রুল সেট (ইনবিল্ট)]:${p}, ফরম্যাটটি হল geosite:xxx বা geoip:xxx বা acl:xxx, এবং xxx একটি বৈধ রুল নাম হতে হবে';
	@override String invalidPackageId({required Object p}) => 'অকার্যকর [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'টিপ: সেভ করার পরে, প্রাসঙ্গিক রুল সেট করতে অনুগ্রহ করে [${_root.meta.diversionRules}]-এ যান, অন্যথায় সেগুলি কার্যকর হবে না';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenBn implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ডাইভারশন রুল শনাক্তকরণ';
	@override String get rule => 'রুল:';
	@override String get outbound => 'প্রক্সি সার্ভার:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenBn implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'টিপ: রুলগুলি উপর থেকে নিচে মেলানোর চেষ্টা করুন। যদি কোনো রুল না মেলে, তবে [final] ব্যবহার করুন';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenBn implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP খালি রাখা যাবে না';
	@override String get urlCanNotEmpty => 'URL খালি রাখা যাবে না';
	@override String error({required Object p}) => 'অসমর্থিত প্রকার:${p}';
	@override String get dnsDesc => 'বিলম্ব ডেটার প্রথম কলামটি সরাসরি সংযোগের কুয়েরি বিলম্ব;\nদ্বিতীয় কলাম: [[প্রক্সি ট্র্যাফিক]প্রক্সি সার্ভারের মাধ্যমে DNS রেজলভ করুন] চালু করুন: বিলম্ব ডেটা বর্তমান প্রক্সি সার্ভারের মাধ্যমে ফরোয়ার্ড করা কুয়েরি বিলম্ব; যদি [[প্রক্সি ট্র্যাফিক]প্রক্সি সার্ভারের মাধ্যমে DNS রেজলভ করুন] বন্ধ থাকে: বিলম্ব ডেটা সরাসরি সংযোগের কুয়েরি বিলম্ব';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenBn implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ফাইল কন্টেন্ট ভিউয়ার';
	@override String get clearFileContent => 'আপনি কি নিশ্চিত যে আপনি ফাইলের বিষয়বস্তু মুছতে চান?';
	@override String get clearFileContentTips => 'আপনি কি নিশ্চিত যে আপনি প্রোফাইল ফাইলের বিষয়বস্তু মুছতে চান? প্রোফাইল ফাইল মুছলে ডেটা হারানো বা অ্যাপের অস্বাভাবিক কাজ হতে পারে, অনুগ্রহ করে সাবধানে কাজ করুন';
}

// Path: HomeScreen
class _TranslationsHomeScreenBn implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'অনুগ্রহ করে একটি সার্ভার নির্বাচন করুন';
	@override String get invalidServer => 'অকার্যকর, অনুগ্রহ করে আবার নির্বাচন করুন';
	@override String get disabledServer => 'নিষ্ক্রিয় করা হয়েছে, অনুগ্রহ করে আবার নির্বাচন করুন';
	@override String get expiredServer => 'কোনো সার্ভার উপলব্ধ নেই, প্রোফাইলগুলির মেয়াদ শেষ হতে পারে বা নিষ্ক্রিয় হতে পারে';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'ব্যবহার করার আগে অনুগ্রহ করে [শর্টকাট লিঙ্ক] সেট আপ করুন';
	@override String tooMuchServers({required Object p, required Object p1}) => 'প্রচুর প্রক্সি সার্ভার [${p}>${p1}], এবং সিস্টেম মেমরি সীমাবদ্ধতার কারণে সংযোগ ব্যর্থ হতে পারে';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'প্রচুর প্রক্সি সার্ভার [${p}>${p1}] ধীর বা অগম্য সংযোগের কারণ হতে পারে';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenBn implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'অ্যাপ শুরু করতে ব্যর্থ হয়েছে [অকার্যকর প্রসেস নাম], অনুগ্রহ করে একটি আলাদা ডিরেক্টরিতে অ্যাপটি পুনরায় ইনস্টল করুন';
	@override String get invalidProfile => 'অ্যাপ শুরু করতে ব্যর্থ হয়েছে [প্রোফাইল অ্যাক্সেস করতে ব্যর্থ], অনুগ্রহ করে অ্যাপটি পুনরায় ইনস্টল করুন';
	@override String get invalidVersion => 'অ্যাপ শুরু করতে ব্যর্থ হয়েছে [অকার্যকর সংস্করণ], অনুগ্রহ করে অ্যাপটি পুনরায় ইনস্টল করুন';
	@override String get systemVersionLow => 'অ্যাপ শুরু করতে ব্যর্থ হয়েছে [সিস্টেম সংস্করণ খুব কম]';
	@override String get invalidInstallPath => 'ইনস্টলেশন পাথ অকার্যকর, অনুগ্রহ করে একটি বৈধ পাথে এটি পুনরায় ইনস্টল করুন';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenBn implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'প্রোফাইল মার্জ করুন';
	@override String get profilesMergeTarget => 'টার্গেট প্রোফাইল';
	@override String get profilesMergeSource => 'সোর্স প্রোফাইলগুলি';
	@override String get profilesMergeTips => 'টিপ: সোর্স প্রোফাইলগুলির ডাইভারশন বাতিল করা হবে';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenBn implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'নেটওয়ার্ক চেক';
	@override String get warn => 'দ্রষ্টব্য: নেটওয়ার্ক পরিবেশ এবং ডাইভারশন রুলের প্রভাবের কারণে, পরীক্ষার ফলাফলগুলি বাস্তব ফলাফলের সম্পূর্ণ সমতুল্য নয়।';
	@override String get invalidDomain => 'অকার্যকর ডোমেইন নাম';
	@override String get connectivity => 'নেটওয়ার্ক কানেক্টিভিটি';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4 সংযোগ পরীক্ষা [${p}] সব ব্যর্থ হয়েছে';
	@override String get connectivityTestIpv4Ok => 'Ipv4 সংযোগ সফল হয়েছে';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6 সংযোগ পরীক্ষা [${p}] সব ব্যর্থ হয়েছে, আপনার নেটওয়ার্ক ipv6 সমর্থন নাও করতে পারে';
	@override String get connectivityTestIpv6Ok => 'Ipv6 সংযোগ সফল হয়েছে';
	@override String get connectivityTestOk => 'নেটওয়ার্ক ইন্টারনেটের সাথে সংযুক্ত';
	@override String get connectivityTestFailed => 'নেটওয়ার্ক এখনও ইন্টারনেটের সাথে সংযুক্ত নয়';
	@override String get remoteRulesetsDownloadOk => 'সব সফলভাবে ডাউনলোড করা হয়েছে';
	@override String get remoteRulesetsDownloadNotOk => 'ডাউনলোড হচ্ছে বা ডাউনলোড ব্যর্থ হয়েছে';
	@override String get outbound => 'প্রক্সি সার্ভার';
	@override String outboundOk({required Object p}) => '[${p}] সংযোগ সফল হয়েছে';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] সংযোগ ব্যর্থ হয়েছে\nত্রুটি:[${p2}]';
	@override String get dnsServer => 'DNS সার্ভার';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS কুয়েরি সফল হয়েছে\nDNS রুল:[${p2}]\nল্যাটেন্সি:[${p3} ms]\nঠিকানা:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS কুয়েরি সফল হয়েছে\n nDNS রুল:[${p2}]\nত্রুটি:[${p3}]';
	@override String get host => 'HTTP সংযোগ';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nডাইভারশনরুল:[${p2}]\nপ্রক্সি সার্ভার:[${p3}]';
	@override String get hostConnectionOk => 'সংযোগ সফল হয়েছে';
	@override String hostConnectionFailed({required Object p}) => 'সংযোগ ব্যর্থ হয়েছে:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenBn implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'ডোমেইন/IP';
	@override String get app => 'অ্যাপ';
	@override String get rule => 'রুল';
	@override String get chain => 'আউটবাউন্ড';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenBn implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'CSV ফরম্যাটে কপি করা হয়েছে';
	@override String get selectType => 'ডাইভারশন টাইপ নির্বাচন করুন';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenBn implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রতি-অ্যাপ প্রক্সি';
	@override String get whiteListMode => 'হোয়াইটলিস্ট মোড';
	@override String get whiteListModeTip => 'সক্ষম করা হলে: শুধুমাত্র চিহ্নিত অ্যাপগুলি প্রক্সি হয়; সক্ষম না করা হলে: শুধুমাত্র অচিহ্নিত অ্যাপগুলি প্রক্সি হয়';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenBn implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'দেশ বা অঞ্চল';
	@override String get Regions => 'টিপ: অনুগ্রহ করে আপনার বর্তমান দেশ বা অঞ্চল সঠিকভাবে সেট করুন, অন্যথায় এটি নেটওয়ার্ক ডাইভারশন সমস্যা সৃষ্টি করতে পারে';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenBn implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সার্ভার নির্বাচন করুন';
	@override String get autoSelectServer => 'স্বয়ংক্রিয়ভাবে সর্বনিম্ন ল্যাটেন্সি সহ সার্ভারটি নির্বাচন করুন';
	@override String get recentUse => 'সম্প্রতি ব্যবহৃত';
	@override String get myFav => 'আমার প্রিয়';
	@override String selectLocal({required Object p}) => 'নির্বাচিত সার্ভারটি একটি স্থানীয় ঠিকানা এবং সঠিকভাবে কাজ নাও করতে পারে:${p}';
	@override String get selectRequireEnableIPv6 => 'নির্বাচিত সার্ভারটি একটি IPv6 ঠিকানা এবং এর জন্য [IPv6 সক্ষম করুন] প্রয়োজন';
	@override String get selectDisabled => 'এই সার্ভারটি নিষ্ক্রিয় করা হয়েছে';
	@override String get error404 => 'ল্যাটেন্সি শনাক্তকরণে একটি ত্রুটি দেখা দিয়েছে, অনুগ্রহ করে একই বিষয়বস্তু সহ কোনো কনফিগারেশন আছে কিনা তা পরীক্ষা করুন';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenBn implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'ট্র্যাফিক পান';
	@override String get tutorial => 'টিউটোরিয়াল';
	@override String get commonlyUsedRulesets => 'সাধারণত ব্যবহৃত রুল সেট';
	@override String get htmlBoard => 'অনলাইন প্যানেল';
	@override String get dnsLeakDetection => 'DNS লিক শনাক্তকরণ';
	@override String get proxyLeakDetection => 'প্রক্সি লিক শনাক্তকরণ';
	@override String get speedTest => 'স্পিড টেস্ট';
	@override String get rulesetDirectDownlad => 'রুল সেট সরাসরি ডাউনলোড';
	@override String get hideUnusedDiversionGroup => 'অব্যবহৃত ডাইভারশন রুলগুলি লুকান';
	@override String get disableISPDiversionGroup => '[${_root.meta.isp}] এর [${_root.meta.diversionRules}] নিষ্ক্রিয় করুন';
	@override String get portSettingRule => 'রুল-ভিত্তিক';
	@override String get portSettingDirectAll => 'সব সরাসরি';
	@override String get portSettingProxyAll => 'সব প্রক্সি';
	@override String get portSettingControl => 'নিয়ন্ত্রণ এবং সিঙ্ক';
	@override String get portSettingCluster => 'ক্লাস্টার সার্ভিস';
	@override String get modifyPort => 'পোর্ট পরিবর্তন করুন';
	@override String get modifyPortOccupied => 'পোর্টটি ব্যস্ত আছে, অনুগ্রহ করে অন্য একটি পোর্ট ব্যবহার করুন';
	@override String get ipStrategyTips => 'সক্ষম করার আগে, অনুগ্রহ করে নিশ্চিত করুন যে আপনার নেটওয়ার্ক IPv6 সমর্থন করে, অন্যথায় কিছু ট্র্যাফিক স্বাভাবিকভাবে অ্যাক্সেস করা যাবে না।';
	@override String get tunAppendHttpProxy => 'VPN-এ HTTP প্রক্সি যুক্ত করুন';
	@override String get tunAppendHttpProxyTips => 'কিছু অ্যাপ ভার্চুয়াল NIC ডিভাইস এড়িয়ে সরাসরি HTTP প্রক্সির সাথে সংযুক্ত হবে';
	@override String get tunAllowBypassHttpProxyDomain => 'যেসব ডোমেইনকে HTTP প্রক্সি এড়িয়ে যাওয়ার অনুমতি দেওয়া হয়েছে';
	@override String get dnsEnableRule => 'DNS ডাইভারশন রুল সক্ষম করুন';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] রেজোলিউশন চ্যানেল';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}]-এ ECS সক্ষম করুন';
	@override String get dnsTestDomain => 'টেস্ট ডোমেইন';
	@override String get dnsTestDomainInvalid => 'অকার্যকর ডোমেইন';
	@override String get dnsTypeOutbound => 'প্রক্সি সার্ভার';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS সার্ভার';
	@override String get dnsEnableRuleTips => 'সক্ষম করার পরে, ডোমেইন নাম ডাইভারশন রুল অনুযায়ী রেজোলিউশনের জন্য সংশ্লিষ্ট DNS সার্ভার নির্বাচন করবে';
	@override String get dnsEnableFakeIpTips => 'FakeIP সক্ষম করার পরে, আপনি যদি VPN সংযোগ বিচ্ছিন্ন করেন, তবে আপনার অ্যাপটি পুনরায় চালু করার প্রয়োজন হতে পারে; এই ফিচারের জন্য [TUN মোড] সক্ষম থাকা আবশ্যক';
	@override String get dnsTypeOutboundTips => '[${_root.SettingsScreen.dnsTypeOutbound}] এর জন্য ডোমেইন নাম রেজোলিউশন';
	@override String get dnsTypeDirectTips => '[${_root.meta.trafficDirect}] এর জন্য ডোমেইন নাম রেজোলিউশন';
	@override String get dnsTypeProxyTips => '[${_root.meta.trafficProxy}] এর জন্য ডোমেইন নাম রেজোলিউশন';
	@override String get dnsTypeResolverTips => '[${_root.SettingsScreen.dnsTypeResolver}] এর জন্য ডোমেইন নাম রেজোলিউশন';
	@override String get dnsAutoSetServer => 'স্বয়ংক্রিয়ভাবে সার্ভার সেট করুন';
	@override String get dnsResetServer => 'সার্ভার রিসেট করুন';
	@override String get inboundDomainResolve => 'ইনকামিং ডোমেইন নাম রেজলভ করুন';
	@override String get privateDirect => 'প্রাইভেট নেটওয়ার্ক সরাসরি সংযোগ';
	@override String inboundDomainResolveTips({required Object p}) => 'কিছু ডোমেইন নাম যা ডাইভারশন রুল দিয়ে কনফিগার করা নেই, সেগুলি IP-ভিত্তিক ডাইভারশন রুলের সাথে সংঘর্ষের আগে রেজলভ করা প্রয়োজন; এই ফিচারটি প্রক্সি পোর্ট [${p}]-এ ইনকামিং রিকোয়েস্টগুলিকে প্রভাবিত করে';
	@override String get useRomoteRes => 'রিমোট রিসোর্স ব্যবহার করুন';
	@override String get autoAppendRegion => 'স্বয়ংক্রিয়ভাবে বেস রুল যুক্ত করুন';
	@override String get autoSelect => 'স্বয়ংক্রিয় নির্বাচন';
	@override String get autoSelectServerIgnorePerProxyServer => '[Front/Chain] প্রক্সি সার্ভার উপেক্ষা করুন';
	@override String get autoSelectServerInterval => 'ল্যাটেন্সি চেকের জন্য ব্যবধান';
	@override String get autoSelectSelectedHealthCheckInterval => 'বর্তমান সার্ভারের হেলথ চেক ব্যবধান';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'নেটওয়ার্ক পরিবর্তন হলে ল্যাটেন্সি আবার চেক করুন';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'ম্যানুয়াল ল্যাটেন্সি চেকের পরে বর্তমান সার্ভার আপডেট করুন';
	@override String get autoSelectServerIntervalTips => 'সময়ের ব্যবধান যত কম হবে, সার্ভার ল্যাটেন্সি ডেটা তত দ্রুত আপডেট হবে, যা বেশি রিসোর্স দখল করবে এবং বেশি বিদ্যুৎ খরচ করবে';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'যদি চেক ব্যর্থ হয়, তবে সার্ভার পরিবর্তন করা হয়; যদি সার্ভার পরিবর্তন করার সময় কোনো উপলব্ধ সার্ভার না পাওয়া যায়, তবে গ্রুপটি আবার ল্যাটেন্সি চেক করবে';
	@override String get autoSelectServerFavFirst => '[আমার প্রিয়] ব্যবহারকে অগ্রাধিকার দিন';
	@override String get autoSelectServerFavFirstTips => 'যদি [আমার প্রিয়] তালিকাটি খালি না থাকে, তবে [আমার প্রিয়]-এর সার্ভারগুলি ব্যবহার করুন';
	@override String get autoSelectServerFilter => 'অকার্যকর সার্ভার ফিল্টার করুন';
	@override String autoSelectServerFilterTips({required Object p}) => 'ব্যর্থ হওয়া সার্ভার ল্যাটেন্সি চেকগুলি ফিল্টার করা হবে; যদি ফিল্টার করার পরে কোনো সার্ভার উপলব্ধ না থাকে, তবে এর পরিবর্তে প্রথম [${p}] টি সার্ভার ব্যবহার করা হবে';
	@override String get autoSelectServerLimitedNum => 'সার্ভারের সর্বোচ্চ সংখ্যা';
	@override String get autoSelectServerLimitedNumTips => 'এই সংখ্যা ছাড়িয়ে যাওয়া সার্ভারগুলি ফিল্টার করা হবে';
	@override String get numInvalid => 'অকার্যকর সংখ্যা';
	@override String get hideInvalidServer => 'অকার্যকর সার্ভারগুলি লুকান';
	@override String get sortServer => 'সার্ভার বাছাই';
	@override String get sortServerTips => 'ল্যাটেন্সি অনুযায়ী কম থেকে বেশি বাছাই করুন';
	@override String get selectServerHideRecommand => '[প্রস্তাবিত] লুকান';
	@override String get selectServerHideRecent => '[সম্প্রতি ব্যবহৃত] লুকান';
	@override String get selectServerHideFav => '[আমার প্রিয়] লুকান';
	@override String get homeScreen => 'হোম স্ক্রিন';
	@override String get theme => 'থিম';
	@override String get widgetsAlpha => 'উইজেটস আলফা';
	@override String get widgetsEmpty => 'কোনো উইজেট উপলব্ধ নেই';
	@override String get backgroundImage => 'পটভূমি চিত্র';
	@override String get myLink => 'শর্টকাট লিঙ্ক';
	@override String get autoConnectAfterLaunch => 'লঞ্চের পরে স্বয়ংক্রিয় সংযোগ';
	@override String get autoConnectAtBoot => 'সিস্টেম বুটের পরে স্বয়ংক্রিয় সংযোগ';
	@override String get autoConnectAtBootTips => 'সিস্টেম সাপোর্ট প্রয়োজন; কিছু সিস্টেমে [অটো-স্টার্ট] সক্ষম করার প্রয়োজন হতে পারে।';
	@override String get hideAfterLaunch => 'লঞ্চের পরে উইন্ডো লুকান';
	@override String get autoSetSystemProxy => 'সংযুক্ত হলে স্বয়ংক্রিয়ভাবে সিস্টেম প্রক্সি সেট করুন';
	@override String get bypassSystemProxy => 'যেসব ডোমেইনকে সিস্টেম প্রক্সি এড়িয়ে যাওয়ার অনুমতি দেওয়া হয়েছে';
	@override String get disconnectWhenQuit => 'অ্যাপ থেকে বের হওয়ার সময় সংযোগ বিচ্ছিন্ন করুন';
	@override String get autoAddToFirewall => 'স্বয়ংক্রিয়ভাবে ফায়ারওয়াল রুল যুক্ত করুন';
	@override String get excludeFromRecent => '[সাম্প্রতিক কাজ] থেকে লুকান';
	@override String get wakeLock => 'ওয়েক লক';
	@override String get hideVpn => 'VPN আইকন লুকান';
	@override String get hideVpnTips => 'IPv6 সক্ষম করলে এই ফিচারটি ব্যর্থ হবে';
	@override String get allowBypass => 'অ্যাপগুলিকে VPN এড়িয়ে যাওয়ার অনুমতি দিন';
	@override String get importSuccess => 'আমদানি সফল হয়েছে';
	@override String get rewriteConfirm => 'এই ফাইলটি বর্তমান স্থানীয় কনফিগারেশনকে ওভাররাইট করবে। আপনি কি চালিয়ে যেতে চান?';
	@override String get mergePerapp => 'স্থানীয় [${_root.PerAppAndroidScreen.title}] তালিকাগুলি মার্জ করুন';
	@override String get networkShare => 'নেটওয়ার্ক শেয়ার';
	@override String get frontProxy => 'Front/Chain প্রক্সি';
	@override String frontProxyTips({required Object p}) => 'ডেটা->Front/Chain প্রক্সি সার্ভার [একাধিক প্রক্সি সার্ভার: উপর থেকে নিচে]->প্রক্সি সার্ভার [${p}]->টার্গেট সার্ভার';
	@override String get allowOtherHostsConnect => 'অন্যদের সংযোগ করার অনুমতি দিন';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'সিস্টেম সীমাবদ্ধতার কারণে, এটি সক্ষম করার পরে, এই ডিভাইসের যেসব অ্যাপ্লিকেশন নেটওয়ার্ক অ্যাক্সেসের জন্য http ব্যবহার করে, সেগুলি নেটওয়ার্কের সাথে সঠিকভাবে সংযোগ করতে পারবে না।';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunAutoRedirect => 'Auto Redirect';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'যদি শেয়ার চালু করার পরে অন্য কেউ এই ডিভাইসে পৌঁছাতে না পারে, তবে অনুগ্রহ করে এই সুইচটি বন্ধ করার চেষ্টা করুন';
	@override String get loopbackAddress => 'লুপব্যাক ঠিকানা';
	@override String get enableCluster => 'Socks/Http প্রক্সি ক্লাস্টার সক্ষম করুন';
	@override String get clusterAllowOtherHostsConnect => 'অন্যদের ক্লাস্টারে যুক্ত হওয়ার অনুমতি দিন';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'প্রক্সি ক্লাস্টার প্রমাণীকরণ';
	@override String get tunMode => 'TUN মোড';
	@override String get tuni4Address => 'IP ঠিকানা';
	@override String get tunModeTips => 'TUN মোড সিস্টেমের সমস্ত ট্র্যাফিক পরিচালনা করবে [এই মোডে, আপনি সিস্টেম প্রক্সি নিষ্ক্রিয় রাখতে পারেন]';
	@override String get tunModeRunAsAdmin => 'TUN মোডের জন্য সিস্টেম অ্যাডমিনিস্ট্রেটর অনুমতির প্রয়োজন, অনুগ্রহ করে অ্যাপটি অ্যাডমিনিস্ট্রেটর হিসেবে পুনরায় চালু করুন';
	@override String get tunStack => 'স্ট্যাক';
	@override String get tunHijackTips => 'বন্ধ করার পরে, TUN থেকে DNS রিকোয়েস্ট সরাসরি সংশ্লিষ্ট DNS সার্ভারে পাঠানো হবে';
	@override String get launchAtStartup => 'স্টার্টআপে লঞ্চ করুন';
	@override String get quitWhenSwitchSystemUser => 'সিস্টেম ব্যবহারকারী পরিবর্তনের সময় অ্যাপ থেকে বের হয়ে যান';
	@override String get handleScheme => 'সিস্টেম স্কিম কল';
	@override String get portableMode => 'পোর্টেবল মোড';
	@override String get portableModeDisableTips => 'যদি আপনার পোর্টেবল মোড থেকে বের হওয়ার প্রয়োজন হয়, তবে অনুগ্রহ করে [karing] থেকে প্রস্থান করুন এবং [karing.exe] এর মতো একই ডিরেক্টরিতে থাকা [profiles] ফোল্ডারটি ম্যানুয়ালি মুছে দিন';
	@override String get accessibility => 'অ্যাক্সেসিবিলিটি';
	@override String get handleKaringScheme => 'karing:// কল হ্যান্ডেল করুন';
	@override String get handleClashScheme => 'clash:// কল হ্যান্ডেল করুন';
	@override String get handleSingboxScheme => 'sing-box:// কল হ্যান্ডেল করুন';
	@override String get alwayOnVPN => 'সবসময় চালু সংযোগ';
	@override String get disconnectAfterSleep => 'সিস্টেম স্লিপের পরে সংযোগ বিচ্ছিন্ন করুন';
	@override String get removeSystemVPNConfig => 'সিস্টেম VPN কনফিগারেশন মুছুন';
	@override String get timeConnectOrDisconnect => 'নির্ধারিত সংযোগ/বিচ্ছিন্নকরণ';
	@override String get timeConnectOrDisconnectTips => 'কার্যকর হতে VPN সংযুক্ত থাকতে হবে; চালু করার পরে, [অটো স্লিপ] নিষ্ক্রিয় হয়ে যাবে';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'সংযোগ/বিচ্ছিন্নকরণ ব্যবধান ${p} মিনিটের কম হতে পারবে না';
	@override String get disableFontScaler => 'ফন্ট স্কেলিং নিষ্ক্রিয় করুন (পুনরায় চালু করা প্রয়োজন)';
	@override String get autoOrientation => 'স্ক্রিনের সাথে ঘোরান';
	@override String get restartTakesEffect => 'পুনরায় চালু করা কার্যকর হবে';
	@override String get reconnectTakesEffect => 'পুনরায় সংযোগ কার্যকর হবে';
	@override String get resetSettings => 'সেটিংস রিসেট করুন';
	@override String get cleanCache => 'ক্যাশে পরিষ্কার করুন';
	@override String get cleanCacheDone => 'পরিষ্কার করা সম্পন্ন হয়েছে';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'সংস্করণ ${p} আপডেট করুন';
	@override String get follow => 'আমাদের অনুসরণ করুন';
	@override String get contactUs => 'আমাদের সাথে যোগাযোগ করুন';
	@override String get supportUs => 'আমাদের সমর্থন করুন';
	@override String get rateInApp => 'আমাদের রেট দিন';
	@override String get rateInAppStore => 'AppStore-এ আমাদের রেট দিন';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenBn implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'আপনার গোপনীয়তা আমাদের কাছে সবার আগে';
	@override String get agreeAndContinue => 'সম্মত হন এবং চালিয়ে যান';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenBn implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'নতুন সংস্করণ [${p}] প্রস্তুত';
	@override String get update => 'আপডেট করতে পুনরায় চালু করুন';
	@override String get cancel => 'এখন নয়';
}

// Path: CommonWidget
class _TranslationsCommonWidgetBn implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'যদি [সবসময় চালু VPN] চালু থাকে, তবে অনুগ্রহ করে [সবসময় চালু VPN] বন্ধ করুন এবং আবার সংযোগ করার চেষ্টা করুন';
	@override String get resetPort => 'অনুগ্রহ করে পোর্টটি অন্য কোনো উপলব্ধ পোর্টে পরিবর্তন করুন বা যে অ্যাপ্লিকেশনটি পোর্টটি দখল করে আছে সেটি বন্ধ করুন।';
}

// Path: main
class _TranslationsMainBn implements TranslationsMainEn {
	_TranslationsMainBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayBn tray = _TranslationsMainTrayBn._(_root);
}

// Path: meta
class _TranslationsMetaBn implements TranslationsMetaEn {
	_TranslationsMetaBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get enable => 'সক্ষম করুন';
	@override String get disable => 'নিষ্ক্রিয় করুন';
	@override String get bydefault => 'ডিফল্ট';
	@override String get filter => 'ফিল্টার';
	@override String get filterMethod => 'ফিল্টার পদ্ধতি';
	@override String get include => 'অন্তর্ভুক্ত করুন';
	@override String get exclude => 'বাদ দিন';
	@override String get all => 'সব';
	@override String get prefer => 'পছন্দ করুন';
	@override String get only => 'শুধুমাত্র';
	@override String get open => 'খুলুন';
	@override String get close => 'বন্ধ করুন';
	@override String get quit => 'প্রস্থান';
	@override String get add => 'যুক্ত করুন';
	@override String get addSuccess => 'সফলভাবে যুক্ত করা হয়েছে';
	@override String addFailed({required Object p}) => 'যুক্ত করতে ব্যর্থ:${p}';
	@override String get remove => 'সরিয়ে দিন';
	@override String get removeConfirm => 'আপনি কি নিশ্চিত যে আপনি মুছতে চান?';
	@override String get edit => 'সম্পাদনা করুন';
	@override String get view => 'দেখুন';
	@override String get more => 'আরও';
	@override String get tips => 'তথ্য';
	@override String get copy => 'কপি করুন';
	@override String get save => 'সেভ করুন';
	@override String get ok => 'ঠিক আছে';
	@override String get cancel => 'বাতিল করুন';
	@override String get feedback => 'ফিডব্যাক';
	@override String get feedbackContent => 'ফিডব্যাক বিষয়বস্তু';
	@override String get feedbackContentHit => 'প্রয়োজন, ৫০০ অক্ষর পর্যন্ত';
	@override String get feedbackContentCannotEmpty => 'ফিডব্যাক বিষয়বস্তু খালি রাখা যাবে না';
	@override String get faq => 'FAQ';
	@override String get htmlTools => 'HTML টুলসেট';
	@override String get download => 'ডাউনলোড';
	@override String get upload => 'আপলোড';
	@override String get downloadSpeed => 'ডাউনলোড গতি';
	@override String get uploadSpeed => 'আপলোড গতি';
	@override String get loading => 'লোড হচ্ছে...';
	@override String get convert => 'কনভার্ট করুন';
	@override String get check => 'চেক করুন';
	@override String get detect => 'শনাক্ত করুন';
	@override String get cache => 'ক্যাশে';
	@override String get days => 'দিন';
	@override String get hours => 'ঘণ্টা';
	@override String get minutes => 'মিনিট';
	@override String get seconds => 'সেকেন্ড';
	@override String get milliseconds => 'মিলিসেকেন্ড';
	@override String get tolerance => 'সহনশীলতা';
	@override String get dateTimePeriod => 'সময়কাল';
	@override String get protocol => 'প্রোটোকল';
	@override String get search => 'অনুসন্ধান';
	@override String get custom => 'কাস্টম';
	@override String get inbound => 'ইনবাউন্ড';
	@override String get outbound => 'আউটবাউন্ড';
	@override String get destination => 'গন্তব্য';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'সংযুক্ত করুন';
	@override String get disconnect => 'সংযোগ বিচ্ছিন্ন করুন';
	@override String get reconnect => 'পুনরায় সংযোগ করুন';
	@override String get connected => 'সংযুক্ত';
	@override String get disconnected => 'বিচ্ছিন্ন';
	@override String get connecting => 'সংযোগ হচ্ছে';
	@override String get connectTimeout => 'সংযোগের সময় শেষ';
	@override String get timeout => 'সময় শেষ';
	@override String get timeoutDuration => 'সময়কাল';
	@override String get runDuration => 'চালানোর সময়কাল';
	@override String get latency => 'ল্যাটেন্সি';
	@override String get latencyTest => 'ল্যাটেন্সি চেক';
	@override String get language => 'ভাষা';
	@override String get next => 'পরবর্তী';
	@override String get done => 'সম্পন্ন';
	@override String get apply => 'প্রয়োগ করুন';
	@override String get refresh => 'রিফ্রেশ করুন';
	@override String get retry => 'আবার চেষ্টা করবেন?';
	@override String get update => 'আপডেট';
	@override String get updateInterval => 'আপডেট ব্যবধান';
	@override String get updateInterval5mTips => 'সর্বনিম্ন: ৫ মিনিট';
	@override String updateFailed({required Object p}) => 'আপডেট ব্যর্থ হয়েছে:${p}';
	@override String get samplingUnit => 'নমুনা সময় একক';
	@override String get queryResultCount => 'কুয়েরি ফলাফলের সংখ্যা';
	@override String queryLimit({required Object p}) => '${p} টি পর্যন্ত ডেটা দেখান';
	@override String get none => 'কিছুই না';
	@override String get start => 'শুরু';
	@override String get pause => 'বিরতি';
	@override String get reset => 'রিসেট';
	@override String get submit => 'জমা দিন';
	@override String get user => 'ব্যবহারকারী';
	@override String get account => 'অ্যাকাউন্ট';
	@override String get password => 'পাসওয়ার্ড';
	@override String get required => 'প্রয়োজন';
	@override String get type => 'ধরন';
	@override String get path => 'পাথ';
	@override String get local => 'স্থানীয়';
	@override String get remote => 'রিমোট';
	@override String get other => 'অন্যান্য';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'অকার্যকর URL';
	@override String get urlCannotEmpty => 'লিঙ্ক খালি রাখা যাবে না';
	@override String get urlTooLong => 'URL খুব লম্বা (>8182)';
	@override String get copyUrl => 'লিঙ্ক কপি করুন';
	@override String get openUrl => 'লিঙ্ক খুলুন';
	@override String get shareUrl => 'লিঙ্ক শেয়ার করুন';
	@override String get speedTestUrl => 'স্পিড টেস্ট URL';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'স্ট্যাটিক IP';
	@override String get staticIPTips => 'আপনাকে [TUN HijackDNS] বা [${_root.SettingsScreen.inboundDomainResolve}] সক্ষম করতে হবে।';
	@override String get isp => 'VPN সরবরাহকারী';
	@override String get domainSuffix => 'ডোমেইন সাফিক্স';
	@override String get domain => 'ডোমেইন';
	@override String get domainKeyword => 'ডোমেইন কিওয়ার্ড';
	@override String get domainRegex => 'ডোমেইন Regex';
	@override String get ip => 'IP';
	@override String get port => 'পোর্ট';
	@override String get portRange => 'পোর্ট রেঞ্জ';
	@override String get appPackage => 'অ্যাপ প্যাকেজ ID';
	@override String get processName => 'প্রসেস নাম';
	@override String get processPath => 'প্রসেস পাথ';
	@override String get processDir => 'প্রসেস ডিরেক্টরি';
	@override String get systemProxy => 'সিস্টেম প্রক্সি';
	@override String get percentage => 'শতাংশ';
	@override String get statistics => 'পরিসংখ্যান';
	@override String get statisticsAndAnalysis => 'পরিসংখ্যান এবং বিশ্লেষণ';
	@override String get statisticsDataDesensitize => 'ডেটা ডি সেনসিটাইজেশন';
	@override String get statisticsDataDesensitizeTips => 'প্রসেস/প্যাকেজ ID/টার্গেট ডোমেইন নাম/টার্গেট IP ইত্যাদি * দিয়ে পরিবর্তন করা হবে এবং ডি সেনসিটাইজেশনের পরে সেভ করা হবে';
	@override String get records => 'রেকর্ড';
	@override String get requestRecords => 'রিকোয়েস্ট রেকর্ড';
	@override String get netInterfaces => 'নেটওয়ার্ক ইন্টারফেস';
	@override String get netSpeed => 'গতি';
	@override String get memoryTrendChart => 'মেমরি ট্রেন্ড চার্ট';
	@override String get goroutinesTrendChart => 'GoRoutines ট্রেন্ড চার্ট';
	@override String get trafficTrendChart => 'ট্র্যাফিক ট্রেন্ড চার্ট';
	@override String get trafficDistributionChart => 'ট্র্যাফিক ডিস্ট্রিবিউশন চার্ট';
	@override String get connectionChart => 'সংযোগ ট্রেন্ড চার্ট';
	@override String get memoryChart => 'মেমরি ট্রেন্ড চার্ট';
	@override String get trafficStatistics => 'ট্র্যাফিক পরিসংখ্যান';
	@override String get traffic => 'ট্র্যাফিক';
	@override String get trafficTotal => 'মোট ট্র্যাফিক';
	@override String get trafficProxy => 'প্রক্সি ট্র্যাফিক';
	@override String get trafficDirect => 'সরাসরি ট্র্যাফিক';
	@override String get website => 'ওয়েবসাইট';
	@override String get memory => 'মেমরি';
	@override String get outboundMode => 'আউটবাউন্ড মোড';
	@override String get rule => 'রুল';
	@override String get global => 'গ্লোবাল';
	@override String get qrcode => 'QR কোড';
	@override String get qrcodeTooLong => 'টেক্সট দেখানোর জন্য খুব লম্বা';
	@override String get qrcodeShare => 'QR কোড শেয়ার করুন';
	@override String get textToQrcode => 'টেক্সট থেকে QR কোড';
	@override String get qrcodeScan => 'QR কোড স্ক্যান করুন';
	@override String get qrcodeScanResult => 'স্ক্যান ফলাফল';
	@override String get qrcodeScanFromImage => 'ছবি থেকে স্ক্যান করুন';
	@override String get qrcodeScanResultFailed => 'ছবি বিশ্লেষণ করতে ব্যর্থ হয়েছে, অনুগ্রহ করে নিশ্চিত করুন যে স্ক্রিনশটটি একটি বৈধ QR কোড';
	@override String get qrcodeScanResultEmpty => 'স্ক্যান ফলাফল খালি';
	@override String get screenshot => 'স্ক্রিনশট';
	@override String get backupAndSync => 'ব্যাকআপ এবং সিঙ্ক';
	@override String get autoBackup => 'স্বয়ংক্রিয় ব্যাকআপ';
	@override String get noProfileGotAutoBackup => 'যদি [${_root.meta.myProfiles}] এর মতো ডেটা হারিয়ে যায়, তবে আপনি এটি [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] বা অন্যান্য ব্যাকআপ উৎস (যেমন iCloud বা Webdav ইত্যাদি) থেকে পুনরুদ্ধার করতে পারেন';
	@override String get autoBackupAddProfile => 'প্রোফাইল যুক্ত করার পরে';
	@override String get autoBackupRemoveProfile => 'প্রোফাইল মুছে ফেলার পরে';
	@override String get profile => 'প্রোফাইল';
	@override String get currentProfile => 'বর্তমান প্রোফাইল';
	@override String get importAndExport => 'আমদানি এবং রপ্তানি';
	@override String get import => 'আমদানি';
	@override String get importFromUrl => 'URL থেকে আমদানি করুন';
	@override String get export => 'রপ্তানি';
	@override String get send => 'পাঠান';
	@override String get receive => 'গ্রহণ করুন';
	@override String get sendConfirm => 'পাঠানোর বিষয়টি নিশ্চিত করবেন?';
	@override String get termOfUse => 'ব্যবহারের শর্তাবলী';
	@override String get privacyPolicy => 'গোপনীয়তা এবং নীতি';
	@override String get about => 'সম্পর্কে';
	@override String get name => 'নাম';
	@override String get version => 'সংস্করণ';
	@override String get notice => 'বিজ্ঞপ্তি';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'কাজ:${p}\nকারণ:${p1}';
	@override String get sort => 'পুনরায় সাজান';
	@override String get novice => 'শিক্ষানবিস মোড';
	@override String get willCompleteAfterRebootInstall => 'সিস্টেম এক্সটেনশন ইনস্টলেশন সম্পন্ন করতে অনুগ্রহ করে আপনার ডিভাইসটি পুনরায় চালু করুন';
	@override String get willCompleteAfterRebootUninstall => 'সিস্টেম এক্সটেনশন আনইনস্টলেশন সম্পন্ন করতে অনুগ্রহ করে আপনার ডিভাইসটি পুনরায় চালু করুন';
	@override String get requestNeedsUserApproval => '১. অনুগ্রহ করে Karing-কে [সিস্টেম সেটিংস]-[গোপনীয়তা এবং নিরাপত্তা]-এ সিস্টেম এক্সটেনশন ইনস্টল করার [অনুমতি দিন]\n২. [সিস্টেম সেটিংস]-[সাধারণ]-[লগইন আইটেম এক্সটেনশন]-[নেটওয়ার্ক এক্সটেনশন] [karingServiceSE] সক্ষম করুন\nসম্পন্ন হওয়ার পরে পুনরায় সংযোগ করুন';
	@override String get FullDiskAccessPermissionRequired => 'অনুগ্রহ করে [সিস্টেম সেটিংস]-[গোপনীয়তা এবং নিরাপত্তা]-[ফুল ডিস্ক অ্যাক্সেস অনুমতি]-এ [karingServiceSE] অনুমতি সক্ষম করুন এবং পুনরায় সংযোগ করুন';
	@override String get tvMode => 'TV মোড';
	@override String get recommended => 'প্রস্তাবিত';
	@override String innerError({required Object p}) => 'অভ্যন্তরীণ ত্রুটি:${p}';
	@override String get logicOperation => 'লজিক্যাল অপারেশন';
	@override String get share => 'শেয়ার করুন';
	@override String get candidateWord => 'প্রার্থী শব্দ';
	@override String get keywordOrRegx => 'কিওয়ার্ড/নিয়মিত';
	@override String get importFromClipboard => 'ক্লিপবোর্ড থেকে আমদানি করুন';
	@override String get exportToClipboard => 'ক্লিপবোর্ডে রপ্তানি করুন';
	@override String get server => 'সার্ভার';
	@override String get ads => 'বিজ্ঞাপন';
	@override String get adsRemove => 'বিজ্ঞাপন সরান';
	@override String get donate => 'দান করুন';
	@override String get diversion => 'ডাইভারশন';
	@override String get diversionRules => 'ডাইভারশন রুল';
	@override String get diversionCustomGroup => 'কাস্টম ডাইভারশন গ্রুপ';
	@override String get urlTestCustomGroup => 'কাস্টম অটো সিলেকশন';
	@override String get setting => 'সেটিংস';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN সিঙ্ক';
	@override String get lanSyncNotQuitTips => 'সিঙ্ক শেষ হওয়ার আগে এই ইন্টারফেস থেকে বের হবেন না';
	@override String get deviceNoSpace => 'ডিস্কে পর্যাপ্ত জায়গা নেই';
	@override String get hideSystemApp => 'সিস্টেম অ্যাপ লুকান';
	@override String get hideAppIcon => 'অ্যাপ আইকন লুকান';
	@override String get hideDockIcon => 'ডক আইকন লুকান';
	@override String get remark => 'মন্তব্য';
	@override String get remarkExist => 'মন্তব্যটি ইতিমধ্যে বিদ্যমান, অনুগ্রহ করে অন্য একটি নাম ব্যবহার করুন';
	@override String get remarkCannotEmpty => 'মন্তব্য খালি রাখা যাবে না';
	@override String get remarkTooLong => '৩২ অক্ষর পর্যন্ত মন্তব্য';
	@override String get openDir => 'ফাইল ডিরেক্টরি খুলুন';
	@override String get fileChoose => 'ফাইল নির্বাচন করুন';
	@override String get filePathCannotEmpty => 'ফাইল পাথ খালি রাখা যাবে না';
	@override String fileNotExist({required Object p}) => 'ফাইলটি বিদ্যমান নেই:${p}';
	@override String fileTypeInvalid({required Object p}) => 'অকার্যকর ফাইলের ধরন:${p}';
	@override String get uwpExemption => 'UWP নেটওয়ার্ক আইসোলেশন অব্যাহতি';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'প্রোফাইল পান';
	@override String get addProfile => 'প্রোফাইল যুক্ত করুন';
	@override String get myProfiles => 'আমার প্রোফাইল';
	@override String get profileEdit => 'প্রোফাইল সম্পাদনা করুন';
	@override String get profileEditUrlExist => 'URL ইতিমধ্যে বিদ্যমান, অনুগ্রহ করে অন্য একটি URL ব্যবহার করুন';
	@override String get profileEditReloadAfterProfileUpdate => 'প্রোফাইল আপডেটের পরে পুনরায় লোড করুন';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'স্বয়ংক্রিয় প্রোফাইল আপডেটের পরে ল্যাটেন্সি পরীক্ষা শুরু করুন';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN সংযুক্ত থাকতে হবে এবং [প্রোফাইল আপডেটের পরে পুনরায় লোড করুন] সক্ষম থাকতে হবে';
	@override String get profileEditTestLatencyAutoRemove => 'ল্যাটেন্সি পরীক্ষায় ব্যর্থ হওয়া সার্ভারগুলি স্বয়ংক্রিয়ভাবে সরিয়ে দিন';
	@override String get profileEditTestLatencyAutoRemoveTips => '৩ বার পর্যন্ত চেষ্টা করুন';
	@override String get profileImport => 'প্রোফাইল ফাইল আমদানি করুন';
	@override String get profileAddUrlOrContent => 'প্রোফাইল লিঙ্ক যুক্ত করুন';
	@override String get profileExists => 'প্রোফাইলটি ইতিমধ্যে বিদ্যমান, অনুগ্রহ করে এটি বারবার যুক্ত করবেন না';
	@override String get profileUrlOrContent => 'প্রোফাইল লিঙ্ক/বিষয়বস্তু';
	@override String get profileUrlOrContentHit => 'প্রোফাইল লিঙ্ক/বিষয়বস্তু [প্রয়োজন] (Clash, V2ray (ব্যাচ সমর্থিত), Stash, Karing, Sing-box, Shadowsocks, Sub প্রোফাইল লিঙ্ক সমর্থন করে)';
	@override String get profileUrlOrContentCannotEmpty => 'প্রোফাইল লিঙ্ক খালি রাখা যাবে না';
	@override String profileAddFailedFormatException({required Object p}) => 'ফরম্যাট ভুল, অনুগ্রহ করে এটি ঠিক করুন এবং আবার যুক্ত করুন:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'যুক্ত করতে ব্যর্থ: ${p}, অনুগ্রহ করে [UserAgent] পরিবর্তন করার চেষ্টা করুন এবং আবার চেষ্টা করুন, অথবা কনফিগারেশন লিঙ্কটি খোলার জন্য ডিভাইসের বিল্ট-ইন ব্রাউজার ব্যবহার করুন এবং ব্রাউজার দ্বারা ডাউনলোড করা কনফিগারেশন ফাইলটি এই অ্যাপ্লিকেশনে আমদানি করুন';
	@override String profileAddFailedHandshakeException({required Object p}) => 'যুক্ত করতে ব্যর্থ: ${p}, অনুগ্রহ করে প্রক্সি চালু করুন বা বর্তমান প্রক্সি নোড পরিবর্তন করুন এবং আবার চেষ্টা করুন';
	@override String get profileAddParseFailed => 'প্রোফাইল পার্স করতে ব্যর্থ';
	@override String get profileAddNoServerAvaliable => 'কোনো সার্ভার উপলব্ধ নেই, নিশ্চিত করুন যে প্রোফাইল লিঙ্ক বা প্রোফাইল ফাইলটি বৈধ; যদি আপনার প্রোফাইল GitHub থেকে হয়, তবে অনুগ্রহ করে পৃষ্ঠার [Raw] বাটনের মাধ্যমে লিঙ্কটি পান';
	@override String get profileAddWrapSuccess => 'প্রোফাইল সফলভাবে তৈরি হয়েছে, অনুগ্রহ করে দেখার জন্য [${_root.meta.myProfiles}]-এ যান';
}

// Path: isp
class _TranslationsIspBn implements TranslationsIspEn {
	_TranslationsIspBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get bind => '[${_root.meta.isp}] এর সাথে লিঙ্ক করুন ';
	@override String unbind({required Object p}) => 'আনলিঙ্ক করুন[${p}]';
	@override String faq({required Object p}) => 'FAQ[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'অনুসরণ করুন[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] অকার্যকর বা মেয়াদ শেষ';
}

// Path: permission
class _TranslationsPermissionBn implements TranslationsPermissionEn {
	_TranslationsPermissionBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get camera => 'ক্যামেরা';
	@override String get screen => 'স্ক্রিন রেকর্ডিং';
	@override String get appQuery => 'অ্যাপ তালিকা পান';
	@override String request({required Object p}) => '[${p}] অনুমতি চালু করুন';
	@override String requestNeed({required Object p}) => 'অনুগ্রহ করে [${p}] অনুমতি চালু করুন';
}

// Path: tls
class _TranslationsTlsBn implements TranslationsTlsEn {
	_TranslationsTlsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'সার্টিফিকেট যাচাইকরণ এড়িয়ে যান';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'TLS ফ্র্যাগমেন্ট সক্ষম করুন';
	@override String get fragmentSize => 'TLS ফ্র্যাগমেন্ট সাইজ';
	@override String get fragmentSleep => 'TLS ফ্র্যাগমেন্ট স্লিপ';
	@override String get mixedCaseSNIEnable => 'TLS মিক্সড কেস SNI সক্ষম করুন';
	@override String get paddingEnable => 'TLS প্যাডিং সক্ষম করুন';
	@override String get paddingSize => 'TLS প্যাডিং সাইজ';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeBn implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'বর্তমানে নির্বাচিত';
	@override String get urltest => 'স্বয়ংক্রিয় নির্বাচন';
	@override String get direct => 'সরাসরি';
	@override String get block => 'ব্লক করুন';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeBn implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyBn implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonBn implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'প্রোফাইল আপডেট';
}

// Path: theme
class _TranslationsThemeBn implements TranslationsThemeEn {
	_TranslationsThemeBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get light => 'লাইট';
	@override String get dark => 'ডার্ক';
	@override String get auto => 'অটো';
}

// Path: main.tray
class _TranslationsMainTrayBn implements TranslationsMainTrayEn {
	_TranslationsMainTrayBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'খুলুন';
	@override String get menuExit => 'প্রস্থান';
}

/// The flat map containing all translations for locale <bn>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsBn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'ইনস্টলেশন সূত্র',
			'AboutScreen.installTime' => 'ইনস্টলেশন সময়',
			'AboutScreen.versionChannel' => 'অটো আপডেট চ্যানেল',
			'AboutScreen.autoDownloadPkg' => 'আপডেট প্যাকেজ স্বয়ংক্রিয়ভাবে ডাউনলোড করুন',
			'AboutScreen.disableAppImproveData' => 'অ্যাপ উন্নত করার ডেটা',
			'AboutScreen.disableUAReportTip' => '[${_root.AboutScreen.disableAppImproveData}] সক্ষম করলে পণ্যের স্থিতিশীলতা এবং ব্যবহারযোগ্যতা উন্নত করতে আমাদের সাহায্য হয়; আমরা কোনো ব্যক্তিগত গোপনীয়তা ডেটা সংগ্রহ করি না। এটি নিষ্ক্রিয় করলে অ্যাপটি কোনো ডেটা সংগ্রহ করতে পারবে না।',
			'AboutScreen.devOptions' => 'ডেভেলপার অপশন',
			'AboutScreen.enableDebugLog' => 'ডিবাগ লগ সক্ষম করুন',
			'AboutScreen.viewFilsContent' => 'ফাইলগুলি দেখুন',
			'AboutScreen.enablePprof' => 'pprof সক্ষম করুন',
			'AboutScreen.pprofPanel' => 'pprof প্যানেল',
			'AboutScreen.allowRemoteAccessPprof' => '${_root.AboutScreen.pprofPanel}-এ রিমোট অ্যাক্সেসের অনুমতি দিন',
			'AboutScreen.allowRemoteAccessHtmlBoard' => '${_root.SettingsScreen.htmlBoard}-এ রিমোট অ্যাক্সেসের অনুমতি দিন',
			'AboutScreen.useOriginalSBProfile' => 'আসল sing-box প্রোফাইল ব্যবহার করুন',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'সার্ভার URL',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'খালি রাখা যাবে না',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'লগইন ব্যর্থ হয়েছে:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'ফাইল তালিকা পেতে ব্যর্থ হয়েছে:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'অকার্যকর [ডোমেইন]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'অকার্যকর [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'অকার্যকর [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'অকার্যকর [রুল সেট]:${p}, URL একটি বৈধ https URL হতে হবে এবং .srs/.json এক্সটেনশন সহ একটি বাইনারি ফাইল হতে হবে',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'অকার্যকর [রুল সেট (ইনবিল্ট)]:${p}, ফরম্যাটটি হল geosite:xxx বা geoip:xxx বা acl:xxx, এবং xxx একটি বৈধ রুল নাম হতে হবে',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'অকার্যকর [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'টিপ: সেভ করার পরে, প্রাসঙ্গিক রুল সেট করতে অনুগ্রহ করে [${_root.meta.diversionRules}]-এ যান, অন্যথায় সেগুলি কার্যকর হবে না',
			'DiversionRuleDetectScreen.title' => 'ডাইভারশন রুল শনাক্তকরণ',
			'DiversionRuleDetectScreen.rule' => 'রুল:',
			'DiversionRuleDetectScreen.outbound' => 'প্রক্সি সার্ভার:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'টিপ: রুলগুলি উপর থেকে নিচে মেলানোর চেষ্টা করুন। যদি কোনো রুল না মেলে, তবে [final] ব্যবহার করুন',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP খালি রাখা যাবে না',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL খালি রাখা যাবে না',
			'DnsSettingsScreen.error' => ({required Object p}) => 'অসমর্থিত প্রকার:${p}',
			'DnsSettingsScreen.dnsDesc' => 'বিলম্ব ডেটার প্রথম কলামটি সরাসরি সংযোগের কুয়েরি বিলম্ব;\nদ্বিতীয় কলাম: [[প্রক্সি ট্র্যাফিক]প্রক্সি সার্ভারের মাধ্যমে DNS রেজলভ করুন] চালু করুন: বিলম্ব ডেটা বর্তমান প্রক্সি সার্ভারের মাধ্যমে ফরোয়ার্ড করা কুয়েরি বিলম্ব; যদি [[প্রক্সি ট্র্যাফিক]প্রক্সি সার্ভারের মাধ্যমে DNS রেজলভ করুন] বন্ধ থাকে: বিলম্ব ডেটা সরাসরি সংযোগের কুয়েরি বিলম্ব',
			'FileContentViewerScreen.title' => 'ফাইল কন্টেন্ট ভিউয়ার',
			'FileContentViewerScreen.clearFileContent' => 'আপনি কি নিশ্চিত যে আপনি ফাইলের বিষয়বস্তু মুছতে চান?',
			'FileContentViewerScreen.clearFileContentTips' => 'আপনি কি নিশ্চিত যে আপনি প্রোফাইল ফাইলের বিষয়বস্তু মুছতে চান? প্রোফাইল ফাইল মুছলে ডেটা হারানো বা অ্যাপের অস্বাভাবিক কাজ হতে পারে, অনুগ্রহ করে সাবধানে কাজ করুন',
			'HomeScreen.toSelectServer' => 'অনুগ্রহ করে একটি সার্ভার নির্বাচন করুন',
			'HomeScreen.invalidServer' => 'অকার্যকর, অনুগ্রহ করে আবার নির্বাচন করুন',
			'HomeScreen.disabledServer' => 'নিষ্ক্রিয় করা হয়েছে, অনুগ্রহ করে আবার নির্বাচন করুন',
			'HomeScreen.expiredServer' => 'কোনো সার্ভার উপলব্ধ নেই, প্রোফাইলগুলির মেয়াদ শেষ হতে পারে বা নিষ্ক্রিয় হতে পারে',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'ব্যবহার করার আগে অনুগ্রহ করে [শর্টকাট লিঙ্ক] সেট আপ করুন',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'প্রচুর প্রক্সি সার্ভার [${p}>${p1}], এবং সিস্টেম মেমরি সীমাবদ্ধতার কারণে সংযোগ ব্যর্থ হতে পারে',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'প্রচুর প্রক্সি সার্ভার [${p}>${p1}] ধীর বা অগম্য সংযোগের কারণ হতে পারে',
			'LaunchFailedScreen.invalidProcess' => 'অ্যাপ শুরু করতে ব্যর্থ হয়েছে [অকার্যকর প্রসেস নাম], অনুগ্রহ করে একটি আলাদা ডিরেক্টরিতে অ্যাপটি পুনরায় ইনস্টল করুন',
			'LaunchFailedScreen.invalidProfile' => 'অ্যাপ শুরু করতে ব্যর্থ হয়েছে [প্রোফাইল অ্যাক্সেস করতে ব্যর্থ], অনুগ্রহ করে অ্যাপটি পুনরায় ইনস্টল করুন',
			'LaunchFailedScreen.invalidVersion' => 'অ্যাপ শুরু করতে ব্যর্থ হয়েছে [অকার্যকর সংস্করণ], অনুগ্রহ করে অ্যাপটি পুনরায় ইনস্টল করুন',
			'LaunchFailedScreen.systemVersionLow' => 'অ্যাপ শুরু করতে ব্যর্থ হয়েছে [সিস্টেম সংস্করণ খুব কম]',
			'LaunchFailedScreen.invalidInstallPath' => 'ইনস্টলেশন পাথ অকার্যকর, অনুগ্রহ করে একটি বৈধ পাথে এটি পুনরায় ইনস্টল করুন',
			'MyProfilesMergeScreen.profilesMerge' => 'প্রোফাইল মার্জ করুন',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'টার্গেট প্রোফাইল',
			'MyProfilesMergeScreen.profilesMergeSource' => 'সোর্স প্রোফাইলগুলি',
			'MyProfilesMergeScreen.profilesMergeTips' => 'টিপ: সোর্স প্রোফাইলগুলির ডাইভারশন বাতিল করা হবে',
			'NetCheckScreen.title' => 'নেটওয়ার্ক চেক',
			'NetCheckScreen.warn' => 'দ্রষ্টব্য: নেটওয়ার্ক পরিবেশ এবং ডাইভারশন রুলের প্রভাবের কারণে, পরীক্ষার ফলাফলগুলি বাস্তব ফলাফলের সম্পূর্ণ সমতুল্য নয়।',
			'NetCheckScreen.invalidDomain' => 'অকার্যকর ডোমেইন নাম',
			'NetCheckScreen.connectivity' => 'নেটওয়ার্ক কানেক্টিভিটি',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Ipv4 সংযোগ পরীক্ষা [${p}] সব ব্যর্থ হয়েছে',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Ipv4 সংযোগ সফল হয়েছে',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Ipv6 সংযোগ পরীক্ষা [${p}] সব ব্যর্থ হয়েছে, আপনার নেটওয়ার্ক ipv6 সমর্থন নাও করতে পারে',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Ipv6 সংযোগ সফল হয়েছে',
			'NetCheckScreen.connectivityTestOk' => 'নেটওয়ার্ক ইন্টারনেটের সাথে সংযুক্ত',
			'NetCheckScreen.connectivityTestFailed' => 'নেটওয়ার্ক এখনও ইন্টারনেটের সাথে সংযুক্ত নয়',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'সব সফলভাবে ডাউনলোড করা হয়েছে',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'ডাউনলোড হচ্ছে বা ডাউনলোড ব্যর্থ হয়েছে',
			'NetCheckScreen.outbound' => 'প্রক্সি সার্ভার',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] সংযোগ সফল হয়েছে',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] সংযোগ ব্যর্থ হয়েছে\nত্রুটি:[${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS সার্ভার',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS কুয়েরি সফল হয়েছে\nDNS রুল:[${p2}]\nল্যাটেন্সি:[${p3} ms]\nঠিকানা:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS কুয়েরি সফল হয়েছে\n nDNS রুল:[${p2}]\nত্রুটি:[${p3}]',
			'NetCheckScreen.host' => 'HTTP সংযোগ',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nডাইভারশনরুল:[${p2}]\nপ্রক্সি সার্ভার:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'সংযোগ সফল হয়েছে',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'সংযোগ ব্যর্থ হয়েছে:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'ডোমেইন/IP',
			'NetConnectionsFilterScreen.app' => 'অ্যাপ',
			'NetConnectionsFilterScreen.rule' => 'রুল',
			'NetConnectionsFilterScreen.chain' => 'আউটবাউন্ড',
			'NetConnectionsScreen.copyAsCSV' => 'CSV ফরম্যাটে কপি করা হয়েছে',
			'NetConnectionsScreen.selectType' => 'ডাইভারশন টাইপ নির্বাচন করুন',
			'PerAppAndroidScreen.title' => 'প্রতি-অ্যাপ প্রক্সি',
			'PerAppAndroidScreen.whiteListMode' => 'হোয়াইটলিস্ট মোড',
			'PerAppAndroidScreen.whiteListModeTip' => 'সক্ষম করা হলে: শুধুমাত্র চিহ্নিত অ্যাপগুলি প্রক্সি হয়; সক্ষম না করা হলে: শুধুমাত্র অচিহ্নিত অ্যাপগুলি প্রক্সি হয়',
			'RegionSettingsScreen.title' => 'দেশ বা অঞ্চল',
			'RegionSettingsScreen.Regions' => 'টিপ: অনুগ্রহ করে আপনার বর্তমান দেশ বা অঞ্চল সঠিকভাবে সেট করুন, অন্যথায় এটি নেটওয়ার্ক ডাইভারশন সমস্যা সৃষ্টি করতে পারে',
			'ServerSelectScreen.title' => 'সার্ভার নির্বাচন করুন',
			'ServerSelectScreen.autoSelectServer' => 'স্বয়ংক্রিয়ভাবে সর্বনিম্ন ল্যাটেন্সি সহ সার্ভারটি নির্বাচন করুন',
			'ServerSelectScreen.recentUse' => 'সম্প্রতি ব্যবহৃত',
			'ServerSelectScreen.myFav' => 'আমার প্রিয়',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'নির্বাচিত সার্ভারটি একটি স্থানীয় ঠিকানা এবং সঠিকভাবে কাজ নাও করতে পারে:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'নির্বাচিত সার্ভারটি একটি IPv6 ঠিকানা এবং এর জন্য [IPv6 সক্ষম করুন] প্রয়োজন',
			'ServerSelectScreen.selectDisabled' => 'এই সার্ভারটি নিষ্ক্রিয় করা হয়েছে',
			'ServerSelectScreen.error404' => 'ল্যাটেন্সি শনাক্তকরণে একটি ত্রুটি দেখা দিয়েছে, অনুগ্রহ করে একই বিষয়বস্তু সহ কোনো কনফিগারেশন আছে কিনা তা পরীক্ষা করুন',
			'SettingsScreen.getTranffic' => 'ট্র্যাফিক পান',
			'SettingsScreen.tutorial' => 'টিউটোরিয়াল',
			'SettingsScreen.commonlyUsedRulesets' => 'সাধারণত ব্যবহৃত রুল সেট',
			'SettingsScreen.htmlBoard' => 'অনলাইন প্যানেল',
			'SettingsScreen.dnsLeakDetection' => 'DNS লিক শনাক্তকরণ',
			'SettingsScreen.proxyLeakDetection' => 'প্রক্সি লিক শনাক্তকরণ',
			'SettingsScreen.speedTest' => 'স্পিড টেস্ট',
			'SettingsScreen.rulesetDirectDownlad' => 'রুল সেট সরাসরি ডাউনলোড',
			'SettingsScreen.hideUnusedDiversionGroup' => 'অব্যবহৃত ডাইভারশন রুলগুলি লুকান',
			'SettingsScreen.disableISPDiversionGroup' => '[${_root.meta.isp}] এর [${_root.meta.diversionRules}] নিষ্ক্রিয় করুন',
			'SettingsScreen.portSettingRule' => 'রুল-ভিত্তিক',
			'SettingsScreen.portSettingDirectAll' => 'সব সরাসরি',
			'SettingsScreen.portSettingProxyAll' => 'সব প্রক্সি',
			'SettingsScreen.portSettingControl' => 'নিয়ন্ত্রণ এবং সিঙ্ক',
			'SettingsScreen.portSettingCluster' => 'ক্লাস্টার সার্ভিস',
			'SettingsScreen.modifyPort' => 'পোর্ট পরিবর্তন করুন',
			'SettingsScreen.modifyPortOccupied' => 'পোর্টটি ব্যস্ত আছে, অনুগ্রহ করে অন্য একটি পোর্ট ব্যবহার করুন',
			'SettingsScreen.ipStrategyTips' => 'সক্ষম করার আগে, অনুগ্রহ করে নিশ্চিত করুন যে আপনার নেটওয়ার্ক IPv6 সমর্থন করে, অন্যথায় কিছু ট্র্যাফিক স্বাভাবিকভাবে অ্যাক্সেস করা যাবে না।',
			'SettingsScreen.tunAppendHttpProxy' => 'VPN-এ HTTP প্রক্সি যুক্ত করুন',
			'SettingsScreen.tunAppendHttpProxyTips' => 'কিছু অ্যাপ ভার্চুয়াল NIC ডিভাইস এড়িয়ে সরাসরি HTTP প্রক্সির সাথে সংযুক্ত হবে',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'যেসব ডোমেইনকে HTTP প্রক্সি এড়িয়ে যাওয়ার অনুমতি দেওয়া হয়েছে',
			'SettingsScreen.dnsEnableRule' => 'DNS ডাইভারশন রুল সক্ষম করুন',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] রেজোলিউশন চ্যানেল',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}]-এ ECS সক্ষম করুন',
			'SettingsScreen.dnsTestDomain' => 'টেস্ট ডোমেইন',
			'SettingsScreen.dnsTestDomainInvalid' => 'অকার্যকর ডোমেইন',
			'SettingsScreen.dnsTypeOutbound' => 'প্রক্সি সার্ভার',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS সার্ভার',
			'SettingsScreen.dnsEnableRuleTips' => 'সক্ষম করার পরে, ডোমেইন নাম ডাইভারশন রুল অনুযায়ী রেজোলিউশনের জন্য সংশ্লিষ্ট DNS সার্ভার নির্বাচন করবে',
			'SettingsScreen.dnsEnableFakeIpTips' => 'FakeIP সক্ষম করার পরে, আপনি যদি VPN সংযোগ বিচ্ছিন্ন করেন, তবে আপনার অ্যাপটি পুনরায় চালু করার প্রয়োজন হতে পারে; এই ফিচারের জন্য [TUN মোড] সক্ষম থাকা আবশ্যক',
			'SettingsScreen.dnsTypeOutboundTips' => '[${_root.SettingsScreen.dnsTypeOutbound}] এর জন্য ডোমেইন নাম রেজোলিউশন',
			'SettingsScreen.dnsTypeDirectTips' => '[${_root.meta.trafficDirect}] এর জন্য ডোমেইন নাম রেজোলিউশন',
			'SettingsScreen.dnsTypeProxyTips' => '[${_root.meta.trafficProxy}] এর জন্য ডোমেইন নাম রেজোলিউশন',
			'SettingsScreen.dnsTypeResolverTips' => '[${_root.SettingsScreen.dnsTypeResolver}] এর জন্য ডোমেইন নাম রেজোলিউশন',
			'SettingsScreen.dnsAutoSetServer' => 'স্বয়ংক্রিয়ভাবে সার্ভার সেট করুন',
			'SettingsScreen.dnsResetServer' => 'সার্ভার রিসেট করুন',
			'SettingsScreen.inboundDomainResolve' => 'ইনকামিং ডোমেইন নাম রেজলভ করুন',
			'SettingsScreen.privateDirect' => 'প্রাইভেট নেটওয়ার্ক সরাসরি সংযোগ',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'কিছু ডোমেইন নাম যা ডাইভারশন রুল দিয়ে কনফিগার করা নেই, সেগুলি IP-ভিত্তিক ডাইভারশন রুলের সাথে সংঘর্ষের আগে রেজলভ করা প্রয়োজন; এই ফিচারটি প্রক্সি পোর্ট [${p}]-এ ইনকামিং রিকোয়েস্টগুলিকে প্রভাবিত করে',
			'SettingsScreen.useRomoteRes' => 'রিমোট রিসোর্স ব্যবহার করুন',
			'SettingsScreen.autoAppendRegion' => 'স্বয়ংক্রিয়ভাবে বেস রুল যুক্ত করুন',
			'SettingsScreen.autoSelect' => 'স্বয়ংক্রিয় নির্বাচন',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => '[Front/Chain] প্রক্সি সার্ভার উপেক্ষা করুন',
			'SettingsScreen.autoSelectServerInterval' => 'ল্যাটেন্সি চেকের জন্য ব্যবধান',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'বর্তমান সার্ভারের হেলথ চেক ব্যবধান',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'নেটওয়ার্ক পরিবর্তন হলে ল্যাটেন্সি আবার চেক করুন',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'ম্যানুয়াল ল্যাটেন্সি চেকের পরে বর্তমান সার্ভার আপডেট করুন',
			'SettingsScreen.autoSelectServerIntervalTips' => 'সময়ের ব্যবধান যত কম হবে, সার্ভার ল্যাটেন্সি ডেটা তত দ্রুত আপডেট হবে, যা বেশি রিসোর্স দখল করবে এবং বেশি বিদ্যুৎ খরচ করবে',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'যদি চেক ব্যর্থ হয়, তবে সার্ভার পরিবর্তন করা হয়; যদি সার্ভার পরিবর্তন করার সময় কোনো উপলব্ধ সার্ভার না পাওয়া যায়, তবে গ্রুপটি আবার ল্যাটেন্সি চেক করবে',
			'SettingsScreen.autoSelectServerFavFirst' => '[আমার প্রিয়] ব্যবহারকে অগ্রাধিকার দিন',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'যদি [আমার প্রিয়] তালিকাটি খালি না থাকে, তবে [আমার প্রিয়]-এর সার্ভারগুলি ব্যবহার করুন',
			'SettingsScreen.autoSelectServerFilter' => 'অকার্যকর সার্ভার ফিল্টার করুন',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'ব্যর্থ হওয়া সার্ভার ল্যাটেন্সি চেকগুলি ফিল্টার করা হবে; যদি ফিল্টার করার পরে কোনো সার্ভার উপলব্ধ না থাকে, তবে এর পরিবর্তে প্রথম [${p}] টি সার্ভার ব্যবহার করা হবে',
			'SettingsScreen.autoSelectServerLimitedNum' => 'সার্ভারের সর্বোচ্চ সংখ্যা',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'এই সংখ্যা ছাড়িয়ে যাওয়া সার্ভারগুলি ফিল্টার করা হবে',
			'SettingsScreen.numInvalid' => 'অকার্যকর সংখ্যা',
			'SettingsScreen.hideInvalidServer' => 'অকার্যকর সার্ভারগুলি লুকান',
			'SettingsScreen.sortServer' => 'সার্ভার বাছাই',
			'SettingsScreen.sortServerTips' => 'ল্যাটেন্সি অনুযায়ী কম থেকে বেশি বাছাই করুন',
			'SettingsScreen.selectServerHideRecommand' => '[প্রস্তাবিত] লুকান',
			'SettingsScreen.selectServerHideRecent' => '[সম্প্রতি ব্যবহৃত] লুকান',
			'SettingsScreen.selectServerHideFav' => '[আমার প্রিয়] লুকান',
			'SettingsScreen.homeScreen' => 'হোম স্ক্রিন',
			'SettingsScreen.theme' => 'থিম',
			'SettingsScreen.widgetsAlpha' => 'উইজেটস আলফা',
			'SettingsScreen.widgetsEmpty' => 'কোনো উইজেট উপলব্ধ নেই',
			'SettingsScreen.backgroundImage' => 'পটভূমি চিত্র',
			'SettingsScreen.myLink' => 'শর্টকাট লিঙ্ক',
			'SettingsScreen.autoConnectAfterLaunch' => 'লঞ্চের পরে স্বয়ংক্রিয় সংযোগ',
			'SettingsScreen.autoConnectAtBoot' => 'সিস্টেম বুটের পরে স্বয়ংক্রিয় সংযোগ',
			'SettingsScreen.autoConnectAtBootTips' => 'সিস্টেম সাপোর্ট প্রয়োজন; কিছু সিস্টেমে [অটো-স্টার্ট] সক্ষম করার প্রয়োজন হতে পারে।',
			'SettingsScreen.hideAfterLaunch' => 'লঞ্চের পরে উইন্ডো লুকান',
			'SettingsScreen.autoSetSystemProxy' => 'সংযুক্ত হলে স্বয়ংক্রিয়ভাবে সিস্টেম প্রক্সি সেট করুন',
			'SettingsScreen.bypassSystemProxy' => 'যেসব ডোমেইনকে সিস্টেম প্রক্সি এড়িয়ে যাওয়ার অনুমতি দেওয়া হয়েছে',
			'SettingsScreen.disconnectWhenQuit' => 'অ্যাপ থেকে বের হওয়ার সময় সংযোগ বিচ্ছিন্ন করুন',
			'SettingsScreen.autoAddToFirewall' => 'স্বয়ংক্রিয়ভাবে ফায়ারওয়াল রুল যুক্ত করুন',
			'SettingsScreen.excludeFromRecent' => '[সাম্প্রতিক কাজ] থেকে লুকান',
			'SettingsScreen.wakeLock' => 'ওয়েক লক',
			'SettingsScreen.hideVpn' => 'VPN আইকন লুকান',
			'SettingsScreen.hideVpnTips' => 'IPv6 সক্ষম করলে এই ফিচারটি ব্যর্থ হবে',
			'SettingsScreen.allowBypass' => 'অ্যাপগুলিকে VPN এড়িয়ে যাওয়ার অনুমতি দিন',
			'SettingsScreen.importSuccess' => 'আমদানি সফল হয়েছে',
			'SettingsScreen.rewriteConfirm' => 'এই ফাইলটি বর্তমান স্থানীয় কনফিগারেশনকে ওভাররাইট করবে। আপনি কি চালিয়ে যেতে চান?',
			'SettingsScreen.mergePerapp' => 'স্থানীয় [${_root.PerAppAndroidScreen.title}] তালিকাগুলি মার্জ করুন',
			'SettingsScreen.networkShare' => 'নেটওয়ার্ক শেয়ার',
			'SettingsScreen.frontProxy' => 'Front/Chain প্রক্সি',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'ডেটা->Front/Chain প্রক্সি সার্ভার [একাধিক প্রক্সি সার্ভার: উপর থেকে নিচে]->প্রক্সি সার্ভার [${p}]->টার্গেট সার্ভার',
			'SettingsScreen.allowOtherHostsConnect' => 'অন্যদের সংযোগ করার অনুমতি দিন',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'সিস্টেম সীমাবদ্ধতার কারণে, এটি সক্ষম করার পরে, এই ডিভাইসের যেসব অ্যাপ্লিকেশন নেটওয়ার্ক অ্যাক্সেসের জন্য http ব্যবহার করে, সেগুলি নেটওয়ার্কের সাথে সঠিকভাবে সংযোগ করতে পারবে না।',
			'SettingsScreen.tunAutoRoute' => 'Auto Route',
			'SettingsScreen.tunAutoRedirect' => 'Auto Redirect',
			'SettingsScreen.tunStrictRoute' => 'Strict Route',
			'SettingsScreen.tunStrictRouteTips' => 'যদি শেয়ার চালু করার পরে অন্য কেউ এই ডিভাইসে পৌঁছাতে না পারে, তবে অনুগ্রহ করে এই সুইচটি বন্ধ করার চেষ্টা করুন',
			'SettingsScreen.loopbackAddress' => 'লুপব্যাক ঠিকানা',
			'SettingsScreen.enableCluster' => 'Socks/Http প্রক্সি ক্লাস্টার সক্ষম করুন',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'অন্যদের ক্লাস্টারে যুক্ত হওয়ার অনুমতি দিন',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'প্রক্সি ক্লাস্টার প্রমাণীকরণ',
			'SettingsScreen.tunMode' => 'TUN মোড',
			'SettingsScreen.tuni4Address' => 'IP ঠিকানা',
			'SettingsScreen.tunModeTips' => 'TUN মোড সিস্টেমের সমস্ত ট্র্যাফিক পরিচালনা করবে [এই মোডে, আপনি সিস্টেম প্রক্সি নিষ্ক্রিয় রাখতে পারেন]',
			'SettingsScreen.tunModeRunAsAdmin' => 'TUN মোডের জন্য সিস্টেম অ্যাডমিনিস্ট্রেটর অনুমতির প্রয়োজন, অনুগ্রহ করে অ্যাপটি অ্যাডমিনিস্ট্রেটর হিসেবে পুনরায় চালু করুন',
			'SettingsScreen.tunStack' => 'স্ট্যাক',
			'SettingsScreen.tunHijackTips' => 'বন্ধ করার পরে, TUN থেকে DNS রিকোয়েস্ট সরাসরি সংশ্লিষ্ট DNS সার্ভারে পাঠানো হবে',
			'SettingsScreen.launchAtStartup' => 'স্টার্টআপে লঞ্চ করুন',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'সিস্টেম ব্যবহারকারী পরিবর্তনের সময় অ্যাপ থেকে বের হয়ে যান',
			'SettingsScreen.handleScheme' => 'সিস্টেম স্কিম কল',
			'SettingsScreen.portableMode' => 'পোর্টেবল মোড',
			'SettingsScreen.portableModeDisableTips' => 'যদি আপনার পোর্টেবল মোড থেকে বের হওয়ার প্রয়োজন হয়, তবে অনুগ্রহ করে [karing] থেকে প্রস্থান করুন এবং [karing.exe] এর মতো একই ডিরেক্টরিতে থাকা [profiles] ফোল্ডারটি ম্যানুয়ালি মুছে দিন',
			'SettingsScreen.accessibility' => 'অ্যাক্সেসিবিলিটি',
			'SettingsScreen.handleKaringScheme' => 'karing:// কল হ্যান্ডেল করুন',
			'SettingsScreen.handleClashScheme' => 'clash:// কল হ্যান্ডেল করুন',
			'SettingsScreen.handleSingboxScheme' => 'sing-box:// কল হ্যান্ডেল করুন',
			'SettingsScreen.alwayOnVPN' => 'সবসময় চালু সংযোগ',
			'SettingsScreen.disconnectAfterSleep' => 'সিস্টেম স্লিপের পরে সংযোগ বিচ্ছিন্ন করুন',
			'SettingsScreen.removeSystemVPNConfig' => 'সিস্টেম VPN কনফিগারেশন মুছুন',
			'SettingsScreen.timeConnectOrDisconnect' => 'নির্ধারিত সংযোগ/বিচ্ছিন্নকরণ',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'কার্যকর হতে VPN সংযুক্ত থাকতে হবে; চালু করার পরে, [অটো স্লিপ] নিষ্ক্রিয় হয়ে যাবে',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'সংযোগ/বিচ্ছিন্নকরণ ব্যবধান ${p} মিনিটের কম হতে পারবে না',
			'SettingsScreen.disableFontScaler' => 'ফন্ট স্কেলিং নিষ্ক্রিয় করুন (পুনরায় চালু করা প্রয়োজন)',
			'SettingsScreen.autoOrientation' => 'স্ক্রিনের সাথে ঘোরান',
			'SettingsScreen.restartTakesEffect' => 'পুনরায় চালু করা কার্যকর হবে',
			'SettingsScreen.reconnectTakesEffect' => 'পুনরায় সংযোগ কার্যকর হবে',
			'SettingsScreen.resetSettings' => 'সেটিংস রিসেট করুন',
			'SettingsScreen.cleanCache' => 'ক্যাশে পরিষ্কার করুন',
			'SettingsScreen.cleanCacheDone' => 'পরিষ্কার করা সম্পন্ন হয়েছে',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'সংস্করণ ${p} আপডেট করুন',
			'SettingsScreen.follow' => 'আমাদের অনুসরণ করুন',
			'SettingsScreen.contactUs' => 'আমাদের সাথে যোগাযোগ করুন',
			'SettingsScreen.supportUs' => 'আমাদের সমর্থন করুন',
			'SettingsScreen.rateInApp' => 'আমাদের রেট দিন',
			'SettingsScreen.rateInAppStore' => 'AppStore-এ আমাদের রেট দিন',
			'UserAgreementScreen.privacyFirst' => 'আপনার গোপনীয়তা আমাদের কাছে সবার আগে',
			'UserAgreementScreen.agreeAndContinue' => 'সম্মত হন এবং চালিয়ে যান',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'নতুন সংস্করণ [${p}] প্রস্তুত',
			'VersionUpdateScreen.update' => 'আপডেট করতে পুনরায় চালু করুন',
			'VersionUpdateScreen.cancel' => 'এখন নয়',
			'CommonWidget.diableAlwayOnVPN' => 'যদি [সবসময় চালু VPN] চালু থাকে, তবে অনুগ্রহ করে [সবসময় চালু VPN] বন্ধ করুন এবং আবার সংযোগ করার চেষ্টা করুন',
			'CommonWidget.resetPort' => 'অনুগ্রহ করে পোর্টটি অন্য কোনো উপলব্ধ পোর্টে পরিবর্তন করুন বা যে অ্যাপ্লিকেশনটি পোর্টটি দখল করে আছে সেটি বন্ধ করুন।',
			'main.tray.menuOpen' => 'খুলুন',
			'main.tray.menuExit' => 'প্রস্থান',
			'meta.enable' => 'সক্ষম করুন',
			'meta.disable' => 'নিষ্ক্রিয় করুন',
			'meta.bydefault' => 'ডিফল্ট',
			'meta.filter' => 'ফিল্টার',
			'meta.filterMethod' => 'ফিল্টার পদ্ধতি',
			'meta.include' => 'অন্তর্ভুক্ত করুন',
			'meta.exclude' => 'বাদ দিন',
			'meta.all' => 'সব',
			'meta.prefer' => 'পছন্দ করুন',
			'meta.only' => 'শুধুমাত্র',
			'meta.open' => 'খুলুন',
			'meta.close' => 'বন্ধ করুন',
			'meta.quit' => 'প্রস্থান',
			'meta.add' => 'যুক্ত করুন',
			'meta.addSuccess' => 'সফলভাবে যুক্ত করা হয়েছে',
			'meta.addFailed' => ({required Object p}) => 'যুক্ত করতে ব্যর্থ:${p}',
			'meta.remove' => 'সরিয়ে দিন',
			'meta.removeConfirm' => 'আপনি কি নিশ্চিত যে আপনি মুছতে চান?',
			'meta.edit' => 'সম্পাদনা করুন',
			'meta.view' => 'দেখুন',
			'meta.more' => 'আরও',
			'meta.tips' => 'তথ্য',
			'meta.copy' => 'কপি করুন',
			'meta.save' => 'সেভ করুন',
			'meta.ok' => 'ঠিক আছে',
			'meta.cancel' => 'বাতিল করুন',
			'meta.feedback' => 'ফিডব্যাক',
			'meta.feedbackContent' => 'ফিডব্যাক বিষয়বস্তু',
			'meta.feedbackContentHit' => 'প্রয়োজন, ৫০০ অক্ষর পর্যন্ত',
			'meta.feedbackContentCannotEmpty' => 'ফিডব্যাক বিষয়বস্তু খালি রাখা যাবে না',
			'meta.faq' => 'FAQ',
			'meta.htmlTools' => 'HTML টুলসেট',
			'meta.download' => 'ডাউনলোড',
			'meta.upload' => 'আপলোড',
			'meta.downloadSpeed' => 'ডাউনলোড গতি',
			'meta.uploadSpeed' => 'আপলোড গতি',
			'meta.loading' => 'লোড হচ্ছে...',
			'meta.convert' => 'কনভার্ট করুন',
			'meta.check' => 'চেক করুন',
			'meta.detect' => 'শনাক্ত করুন',
			'meta.cache' => 'ক্যাশে',
			'meta.days' => 'দিন',
			'meta.hours' => 'ঘণ্টা',
			'meta.minutes' => 'মিনিট',
			'meta.seconds' => 'সেকেন্ড',
			'meta.milliseconds' => 'মিলিসেকেন্ড',
			'meta.tolerance' => 'সহনশীলতা',
			'meta.dateTimePeriod' => 'সময়কাল',
			'meta.protocol' => 'প্রোটোকল',
			'meta.search' => 'অনুসন্ধান',
			'meta.custom' => 'কাস্টম',
			'meta.inbound' => 'ইনবাউন্ড',
			'meta.outbound' => 'আউটবাউন্ড',
			'meta.destination' => 'গন্তব্য',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'সংযুক্ত করুন',
			'meta.disconnect' => 'সংযোগ বিচ্ছিন্ন করুন',
			'meta.reconnect' => 'পুনরায় সংযোগ করুন',
			'meta.connected' => 'সংযুক্ত',
			'meta.disconnected' => 'বিচ্ছিন্ন',
			'meta.connecting' => 'সংযোগ হচ্ছে',
			'meta.connectTimeout' => 'সংযোগের সময় শেষ',
			'meta.timeout' => 'সময় শেষ',
			'meta.timeoutDuration' => 'সময়কাল',
			'meta.runDuration' => 'চালানোর সময়কাল',
			'meta.latency' => 'ল্যাটেন্সি',
			'meta.latencyTest' => 'ল্যাটেন্সি চেক',
			'meta.language' => 'ভাষা',
			'meta.next' => 'পরবর্তী',
			'meta.done' => 'সম্পন্ন',
			'meta.apply' => 'প্রয়োগ করুন',
			'meta.refresh' => 'রিফ্রেশ করুন',
			'meta.retry' => 'আবার চেষ্টা করবেন?',
			'meta.update' => 'আপডেট',
			'meta.updateInterval' => 'আপডেট ব্যবধান',
			'meta.updateInterval5mTips' => 'সর্বনিম্ন: ৫ মিনিট',
			'meta.updateFailed' => ({required Object p}) => 'আপডেট ব্যর্থ হয়েছে:${p}',
			'meta.samplingUnit' => 'নমুনা সময় একক',
			'meta.queryResultCount' => 'কুয়েরি ফলাফলের সংখ্যা',
			'meta.queryLimit' => ({required Object p}) => '${p} টি পর্যন্ত ডেটা দেখান',
			'meta.none' => 'কিছুই না',
			'meta.start' => 'শুরু',
			'meta.pause' => 'বিরতি',
			'meta.reset' => 'রিসেট',
			'meta.submit' => 'জমা দিন',
			'meta.user' => 'ব্যবহারকারী',
			'meta.account' => 'অ্যাকাউন্ট',
			'meta.password' => 'পাসওয়ার্ড',
			'meta.required' => 'প্রয়োজন',
			'meta.type' => 'ধরন',
			'meta.path' => 'পাথ',
			'meta.local' => 'স্থানীয়',
			'meta.remote' => 'রিমোট',
			'meta.other' => 'অন্যান্য',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'অকার্যকর URL',
			'meta.urlCannotEmpty' => 'লিঙ্ক খালি রাখা যাবে না',
			'meta.urlTooLong' => 'URL খুব লম্বা (>8182)',
			'meta.copyUrl' => 'লিঙ্ক কপি করুন',
			'meta.openUrl' => 'লিঙ্ক খুলুন',
			'meta.shareUrl' => 'লিঙ্ক শেয়ার করুন',
			'meta.speedTestUrl' => 'স্পিড টেস্ট URL',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'স্ট্যাটিক IP',
			'meta.staticIPTips' => 'আপনাকে [TUN HijackDNS] বা [${_root.SettingsScreen.inboundDomainResolve}] সক্ষম করতে হবে।',
			'meta.isp' => 'VPN সরবরাহকারী',
			'meta.domainSuffix' => 'ডোমেইন সাফিক্স',
			'meta.domain' => 'ডোমেইন',
			'meta.domainKeyword' => 'ডোমেইন কিওয়ার্ড',
			'meta.domainRegex' => 'ডোমেইন Regex',
			'meta.ip' => 'IP',
			'meta.port' => 'পোর্ট',
			'meta.portRange' => 'পোর্ট রেঞ্জ',
			'meta.appPackage' => 'অ্যাপ প্যাকেজ ID',
			'meta.processName' => 'প্রসেস নাম',
			'meta.processPath' => 'প্রসেস পাথ',
			'meta.processDir' => 'প্রসেস ডিরেক্টরি',
			'meta.systemProxy' => 'সিস্টেম প্রক্সি',
			'meta.percentage' => 'শতাংশ',
			'meta.statistics' => 'পরিসংখ্যান',
			'meta.statisticsAndAnalysis' => 'পরিসংখ্যান এবং বিশ্লেষণ',
			'meta.statisticsDataDesensitize' => 'ডেটা ডি সেনসিটাইজেশন',
			'meta.statisticsDataDesensitizeTips' => 'প্রসেস/প্যাকেজ ID/টার্গেট ডোমেইন নাম/টার্গেট IP ইত্যাদি * দিয়ে পরিবর্তন করা হবে এবং ডি সেনসিটাইজেশনের পরে সেভ করা হবে',
			'meta.records' => 'রেকর্ড',
			'meta.requestRecords' => 'রিকোয়েস্ট রেকর্ড',
			'meta.netInterfaces' => 'নেটওয়ার্ক ইন্টারফেস',
			'meta.netSpeed' => 'গতি',
			'meta.memoryTrendChart' => 'মেমরি ট্রেন্ড চার্ট',
			'meta.goroutinesTrendChart' => 'GoRoutines ট্রেন্ড চার্ট',
			'meta.trafficTrendChart' => 'ট্র্যাফিক ট্রেন্ড চার্ট',
			'meta.trafficDistributionChart' => 'ট্র্যাফিক ডিস্ট্রিবিউশন চার্ট',
			'meta.connectionChart' => 'সংযোগ ট্রেন্ড চার্ট',
			'meta.memoryChart' => 'মেমরি ট্রেন্ড চার্ট',
			'meta.trafficStatistics' => 'ট্র্যাফিক পরিসংখ্যান',
			'meta.traffic' => 'ট্র্যাফিক',
			'meta.trafficTotal' => 'মোট ট্র্যাফিক',
			'meta.trafficProxy' => 'প্রক্সি ট্র্যাফিক',
			'meta.trafficDirect' => 'সরাসরি ট্র্যাফিক',
			'meta.website' => 'ওয়েবসাইট',
			'meta.memory' => 'মেমরি',
			'meta.outboundMode' => 'আউটবাউন্ড মোড',
			'meta.rule' => 'রুল',
			'meta.global' => 'গ্লোবাল',
			'meta.qrcode' => 'QR কোড',
			'meta.qrcodeTooLong' => 'টেক্সট দেখানোর জন্য খুব লম্বা',
			'meta.qrcodeShare' => 'QR কোড শেয়ার করুন',
			'meta.textToQrcode' => 'টেক্সট থেকে QR কোড',
			'meta.qrcodeScan' => 'QR কোড স্ক্যান করুন',
			'meta.qrcodeScanResult' => 'স্ক্যান ফলাফল',
			'meta.qrcodeScanFromImage' => 'ছবি থেকে স্ক্যান করুন',
			'meta.qrcodeScanResultFailed' => 'ছবি বিশ্লেষণ করতে ব্যর্থ হয়েছে, অনুগ্রহ করে নিশ্চিত করুন যে স্ক্রিনশটটি একটি বৈধ QR কোড',
			'meta.qrcodeScanResultEmpty' => 'স্ক্যান ফলাফল খালি',
			'meta.screenshot' => 'স্ক্রিনশট',
			'meta.backupAndSync' => 'ব্যাকআপ এবং সিঙ্ক',
			'meta.autoBackup' => 'স্বয়ংক্রিয় ব্যাকআপ',
			'meta.noProfileGotAutoBackup' => 'যদি [${_root.meta.myProfiles}] এর মতো ডেটা হারিয়ে যায়, তবে আপনি এটি [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] বা অন্যান্য ব্যাকআপ উৎস (যেমন iCloud বা Webdav ইত্যাদি) থেকে পুনরুদ্ধার করতে পারেন',
			'meta.autoBackupAddProfile' => 'প্রোফাইল যুক্ত করার পরে',
			'meta.autoBackupRemoveProfile' => 'প্রোফাইল মুছে ফেলার পরে',
			'meta.profile' => 'প্রোফাইল',
			'meta.currentProfile' => 'বর্তমান প্রোফাইল',
			'meta.importAndExport' => 'আমদানি এবং রপ্তানি',
			'meta.import' => 'আমদানি',
			'meta.importFromUrl' => 'URL থেকে আমদানি করুন',
			'meta.export' => 'রপ্তানি',
			'meta.send' => 'পাঠান',
			'meta.receive' => 'গ্রহণ করুন',
			'meta.sendConfirm' => 'পাঠানোর বিষয়টি নিশ্চিত করবেন?',
			'meta.termOfUse' => 'ব্যবহারের শর্তাবলী',
			'meta.privacyPolicy' => 'গোপনীয়তা এবং নীতি',
			'meta.about' => 'সম্পর্কে',
			'meta.name' => 'নাম',
			'meta.version' => 'সংস্করণ',
			'meta.notice' => 'বিজ্ঞপ্তি',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'কাজ:${p}\nকারণ:${p1}',
			'meta.sort' => 'পুনরায় সাজান',
			'meta.novice' => 'শিক্ষানবিস মোড',
			'meta.willCompleteAfterRebootInstall' => 'সিস্টেম এক্সটেনশন ইনস্টলেশন সম্পন্ন করতে অনুগ্রহ করে আপনার ডিভাইসটি পুনরায় চালু করুন',
			'meta.willCompleteAfterRebootUninstall' => 'সিস্টেম এক্সটেনশন আনইনস্টলেশন সম্পন্ন করতে অনুগ্রহ করে আপনার ডিভাইসটি পুনরায় চালু করুন',
			'meta.requestNeedsUserApproval' => '১. অনুগ্রহ করে Karing-কে [সিস্টেম সেটিংস]-[গোপনীয়তা এবং নিরাপত্তা]-এ সিস্টেম এক্সটেনশন ইনস্টল করার [অনুমতি দিন]\n২. [সিস্টেম সেটিংস]-[সাধারণ]-[লগইন আইটেম এক্সটেনশন]-[নেটওয়ার্ক এক্সটেনশন] [karingServiceSE] সক্ষম করুন\nসম্পন্ন হওয়ার পরে পুনরায় সংযোগ করুন',
			'meta.FullDiskAccessPermissionRequired' => 'অনুগ্রহ করে [সিস্টেম সেটিংস]-[গোপনীয়তা এবং নিরাপত্তা]-[ফুল ডিস্ক অ্যাক্সেস অনুমতি]-এ [karingServiceSE] অনুমতি সক্ষম করুন এবং পুনরায় সংযোগ করুন',
			'meta.tvMode' => 'TV মোড',
			'meta.recommended' => 'প্রস্তাবিত',
			'meta.innerError' => ({required Object p}) => 'অভ্যন্তরীণ ত্রুটি:${p}',
			'meta.logicOperation' => 'লজিক্যাল অপারেশন',
			'meta.share' => 'শেয়ার করুন',
			'meta.candidateWord' => 'প্রার্থী শব্দ',
			'meta.keywordOrRegx' => 'কিওয়ার্ড/নিয়মিত',
			'meta.importFromClipboard' => 'ক্লিপবোর্ড থেকে আমদানি করুন',
			'meta.exportToClipboard' => 'ক্লিপবোর্ডে রপ্তানি করুন',
			'meta.server' => 'সার্ভার',
			'meta.ads' => 'বিজ্ঞাপন',
			'meta.adsRemove' => 'বিজ্ঞাপন সরান',
			'meta.donate' => 'দান করুন',
			'meta.diversion' => 'ডাইভারশন',
			'meta.diversionRules' => 'ডাইভারশন রুল',
			'meta.diversionCustomGroup' => 'কাস্টম ডাইভারশন গ্রুপ',
			'meta.urlTestCustomGroup' => 'কাস্টম অটো সিলেকশন',
			'meta.setting' => 'সেটিংস',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN সিঙ্ক',
			'meta.lanSyncNotQuitTips' => 'সিঙ্ক শেষ হওয়ার আগে এই ইন্টারফেস থেকে বের হবেন না',
			'meta.deviceNoSpace' => 'ডিস্কে পর্যাপ্ত জায়গা নেই',
			'meta.hideSystemApp' => 'সিস্টেম অ্যাপ লুকান',
			'meta.hideAppIcon' => 'অ্যাপ আইকন লুকান',
			'meta.hideDockIcon' => 'ডক আইকন লুকান',
			'meta.remark' => 'মন্তব্য',
			'meta.remarkExist' => 'মন্তব্যটি ইতিমধ্যে বিদ্যমান, অনুগ্রহ করে অন্য একটি নাম ব্যবহার করুন',
			'meta.remarkCannotEmpty' => 'মন্তব্য খালি রাখা যাবে না',
			'meta.remarkTooLong' => '৩২ অক্ষর পর্যন্ত মন্তব্য',
			'meta.openDir' => 'ফাইল ডিরেক্টরি খুলুন',
			'meta.fileChoose' => 'ফাইল নির্বাচন করুন',
			'meta.filePathCannotEmpty' => 'ফাইল পাথ খালি রাখা যাবে না',
			'meta.fileNotExist' => ({required Object p}) => 'ফাইলটি বিদ্যমান নেই:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'অকার্যকর ফাইলের ধরন:${p}',
			'meta.uwpExemption' => 'UWP নেটওয়ার্ক আইসোলেশন অব্যাহতি',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'প্রোফাইল পান',
			'meta.addProfile' => 'প্রোফাইল যুক্ত করুন',
			'meta.myProfiles' => 'আমার প্রোফাইল',
			'meta.profileEdit' => 'প্রোফাইল সম্পাদনা করুন',
			'meta.profileEditUrlExist' => 'URL ইতিমধ্যে বিদ্যমান, অনুগ্রহ করে অন্য একটি URL ব্যবহার করুন',
			'meta.profileEditReloadAfterProfileUpdate' => 'প্রোফাইল আপডেটের পরে পুনরায় লোড করুন',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'স্বয়ংক্রিয় প্রোফাইল আপডেটের পরে ল্যাটেন্সি পরীক্ষা শুরু করুন',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN সংযুক্ত থাকতে হবে এবং [প্রোফাইল আপডেটের পরে পুনরায় লোড করুন] সক্ষম থাকতে হবে',
			'meta.profileEditTestLatencyAutoRemove' => 'ল্যাটেন্সি পরীক্ষায় ব্যর্থ হওয়া সার্ভারগুলি স্বয়ংক্রিয়ভাবে সরিয়ে দিন',
			'meta.profileEditTestLatencyAutoRemoveTips' => '৩ বার পর্যন্ত চেষ্টা করুন',
			'meta.profileImport' => 'প্রোফাইল ফাইল আমদানি করুন',
			'meta.profileAddUrlOrContent' => 'প্রোফাইল লিঙ্ক যুক্ত করুন',
			'meta.profileExists' => 'প্রোফাইলটি ইতিমধ্যে বিদ্যমান, অনুগ্রহ করে এটি বারবার যুক্ত করবেন না',
			'meta.profileUrlOrContent' => 'প্রোফাইল লিঙ্ক/বিষয়বস্তু',
			'meta.profileUrlOrContentHit' => 'প্রোফাইল লিঙ্ক/বিষয়বস্তু [প্রয়োজন] (Clash, V2ray (ব্যাচ সমর্থিত), Stash, Karing, Sing-box, Shadowsocks, Sub প্রোফাইল লিঙ্ক সমর্থন করে)',
			'meta.profileUrlOrContentCannotEmpty' => 'প্রোফাইল লিঙ্ক খালি রাখা যাবে না',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'ফরম্যাট ভুল, অনুগ্রহ করে এটি ঠিক করুন এবং আবার যুক্ত করুন:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'যুক্ত করতে ব্যর্থ: ${p}, অনুগ্রহ করে [UserAgent] পরিবর্তন করার চেষ্টা করুন এবং আবার চেষ্টা করুন, অথবা কনফিগারেশন লিঙ্কটি খোলার জন্য ডিভাইসের বিল্ট-ইন ব্রাউজার ব্যবহার করুন এবং ব্রাউজার দ্বারা ডাউনলোড করা কনফিগারেশন ফাইলটি এই অ্যাপ্লিকেশনে আমদানি করুন',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'যুক্ত করতে ব্যর্থ: ${p}, অনুগ্রহ করে প্রক্সি চালু করুন বা বর্তমান প্রক্সি নোড পরিবর্তন করুন এবং আবার চেষ্টা করুন',
			'meta.profileAddParseFailed' => 'প্রোফাইল পার্স করতে ব্যর্থ',
			'meta.profileAddNoServerAvaliable' => 'কোনো সার্ভার উপলব্ধ নেই, নিশ্চিত করুন যে প্রোফাইল লিঙ্ক বা প্রোফাইল ফাইলটি বৈধ; যদি আপনার প্রোফাইল GitHub থেকে হয়, তবে অনুগ্রহ করে পৃষ্ঠার [Raw] বাটনের মাধ্যমে লিঙ্কটি পান',
			'meta.profileAddWrapSuccess' => 'প্রোফাইল সফলভাবে তৈরি হয়েছে, অনুগ্রহ করে দেখার জন্য [${_root.meta.myProfiles}]-এ যান',
			'diversionRulesKeep' => '[${_root.meta.isp}] এর [${_root.meta.diversionRules}] বজায় রাখুন',
			'diversionCustomGroupPreset' => 'প্রিসেট [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'দ্রষ্টব্য: সক্ষম করা আইটেমগুলি [${_root.meta.diversionCustomGroup}] এবং [${_root.meta.diversionRules}]-এ যুক্ত/ওভাররাইট করা হবে',
			'diversionCustomGroupAddTips' => 'দ্রষ্টব্য: যুক্ত করার পরে, আপনাকে ম্যানুয়ালি ক্রম সামঞ্জস্য করতে হতে পারে, অন্যথায় নতুন যুক্ত করা ডাইভারশন কার্যকর নাও হতে পারে',
			'rulesetEnableTips' => 'টিপ: অপশনগুলি চালু করার পরে, প্রাসঙ্গিক রুল সেট করতে অনুগ্রহ করে [${_root.meta.diversionRules}]-এ যান, অন্যথায় সেগুলি কার্যকর হবে না',
			'ispUserAgentTips' => '[${_root.meta.isp}] [HTTP] রিকোয়েস্টে থাকা [UserAgent]-এর ভিত্তিতে বিভিন্ন সাবস্ক্রিপশন টাইপের ডেটা পাঠাবে',
			'ispDiversionTips' => '[${_root.meta.isp}] ট্র্যাফিক ডাইভারশন রুল প্রদান করে; [V2Ray] টাইপের সাবস্ক্রিপশন ট্র্যাফিক ডাইভারশন রুল সমর্থন করে না',
			'isp.bind' => '[${_root.meta.isp}] এর সাথে লিঙ্ক করুন ',
			'isp.unbind' => ({required Object p}) => 'আনলিঙ্ক করুন[${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'অনুসরণ করুন[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] অকার্যকর বা মেয়াদ শেষ',
			'permission.camera' => 'ক্যামেরা',
			'permission.screen' => 'স্ক্রিন রেকর্ডিং',
			'permission.appQuery' => 'অ্যাপ তালিকা পান',
			'permission.request' => ({required Object p}) => '[${p}] অনুমতি চালু করুন',
			'permission.requestNeed' => ({required Object p}) => 'অনুগ্রহ করে [${p}] অনুমতি চালু করুন',
			'tls.insecure' => 'সার্টিফিকেট যাচাইকরণ এড়িয়ে যান',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'TLS ফ্র্যাগমেন্ট সক্ষম করুন',
			'tls.fragmentSize' => 'TLS ফ্র্যাগমেন্ট সাইজ',
			'tls.fragmentSleep' => 'TLS ফ্র্যাগমেন্ট স্লিপ',
			'tls.mixedCaseSNIEnable' => 'TLS মিক্সড কেস SNI সক্ষম করুন',
			'tls.paddingEnable' => 'TLS প্যাডিং সক্ষম করুন',
			'tls.paddingSize' => 'TLS প্যাডিং সাইজ',
			'outboundRuleMode.currentSelected' => 'বর্তমানে নির্বাচিত',
			_ => null,
		} ?? switch (path) {
			'outboundRuleMode.urltest' => 'স্বয়ংক্রিয় নির্বাচন',
			'outboundRuleMode.direct' => 'সরাসরি',
			'outboundRuleMode.block' => 'ব্লক করুন',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'প্রোফাইল আপডেট',
			'theme.light' => 'লাইট',
			'theme.dark' => 'ডার্ক',
			'theme.auto' => 'অটো',
			'downloadProxyStrategy' => 'ডাউনলোড চ্যানেল',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: ডোমেইন নাম রেজলভ করতে প্রক্সি সার্ভারের মাধ্যমে DNS সার্ভারের সাথে সংযুক্ত হন\n[${_root.dnsProxyResolveMode.direct}]: ডোমেইন নাম রেজলভ করতে সরাসরি DNS সার্ভারের সাথে সংযুক্ত হন\n[${_root.dnsProxyResolveMode.fakeip}]: প্রক্সি সার্ভার আপনার পক্ষ থেকে ডোমেইন নাম রেজলভ করে; আপনি যদি VPN সংযোগ বিচ্ছিন্ন করেন, তবে আপনার অ্যাপ্লিকেশনটি পুনরায় চালু করার প্রয়োজন হতে পারে; শুধুমাত্র [TUN] ইনকামিং ট্র্যাফিকের জন্য কার্যকর',
			'routeFinal' => 'final',
			'protocolSniff' => 'প্রোটোকল স্নিফ',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'অনুগ্রহ করে [${p}] ব্যবহার করুন',
			'turnOffPrivateDirect' => 'অনুগ্রহ করে প্রথমে [প্রাইভেট নেটওয়ার্ক সরাসরি সংযোগ] চালু করুন',
			'targetConnectFailed' => ({required Object p}) => '[${p}] এর সাথে সংযোগ করতে ব্যর্থ। অনুগ্রহ করে নিশ্চিত করুন যে ডিভাইসগুলি একই LAN-এ আছে',
			'appleTVSync' => 'বর্তমান কোর কনফিগারেশন Apple TV - Karing-এর সাথে সিঙ্ক করুন',
			'appleTVSyncDone' => 'সিঙ্ক সম্পন্ন হয়েছে। সংযোগ শুরু/পুনরায় চালু করতে অনুগ্রহ করে Apple TV - Karing-এ যান',
			'appleTVRemoveCoreConfig' => 'Apple TV - Karing কোর কনফিগারেশন মুছুন',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - Karing কোর কনফিগারেশন মুছে ফেলা হয়েছে; VPN সার্ভিস বিচ্ছিন্ন করা হয়েছে',
			'appleTVUrlInvalid' => 'অকার্যকর URL, অনুগ্রহ করে Apple TV - Karing খুলুন এবং Karing দ্বারা প্রদর্শিত QR কোডটি স্ক্যান করুন',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}]-এ এই ফিচারটি নেই, অনুগ্রহ করে আপডেট করুন এবং আবার চেষ্টা করুন',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'কোর মেইন সংস্করণ মিলছে না, অনুগ্রহ করে [${p}] আপডেট করুন এবং আবার চেষ্টা করুন',
			'remoteProfileEditConfirm' => 'প্রোফাইল আপডেট হওয়ার পরে, নোড পরিবর্তনগুলি পুনরুদ্ধার করা হবে। চালিয়ে যাবেন?',
			'mustBeValidHttpsURL' => 'একটি বৈধ https URL হতে হবে',
			'fileNotExistReinstall' => ({required Object p}) => 'ফাইলটি পাওয়া যাচ্ছে না [${p}], অনুগ্রহ করে পুনরায় ইনস্টল করুন',
			'noNetworkConnect' => 'কোনো ইন্টারনেট সংযোগ নেই',
			'sudoPassword' => 'sudo পাসওয়ার্ড (TUN মোডের জন্য প্রয়োজন)',
			'turnOffNetworkBeforeInstall' => 'আপডেট ইনস্টল করার আগে [এয়ারপ্লেন মোড] চালু করার পরামর্শ দেওয়া হচ্ছে',
			'latencyTestResolveIP' => 'ম্যানুয়ালি চেক করার সময়, আউটলেট IP রেজলভ করুন',
			'latencyTestConcurrency' => 'কনকারেন্সি',
			'edgeRuntimeNotInstalled' => 'বর্তমান ডিভাইসে Edge WebView2 রানটাইম ইনস্টল করা নেই, তাই পেজটি প্রদর্শিত হতে পারছে না। অনুগ্রহ করে Edge WebView2 রানটাইম (x64) ডাউনলোড এবং ইনস্টল করুন, অ্যাপটি পুনরায় চালু করুন এবং আবার চেষ্টা করুন।',
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
			_ => null,
		};
	}
}
