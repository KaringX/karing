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
class TranslationsPa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pa,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pa>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPa _root = this; // ignore: unused_field

	@override 
	TranslationsPa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenPa AboutScreen = _TranslationsAboutScreenPa._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenPa BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenPa._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenPa DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenPa._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenPa DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenPa._(_root);
	@override late final _TranslationsDiversionRulesScreenPa DiversionRulesScreen = _TranslationsDiversionRulesScreenPa._(_root);
	@override late final _TranslationsDnsSettingsScreenPa DnsSettingsScreen = _TranslationsDnsSettingsScreenPa._(_root);
	@override late final _TranslationsFileContentViewerScreenPa FileContentViewerScreen = _TranslationsFileContentViewerScreenPa._(_root);
	@override late final _TranslationsHomeScreenPa HomeScreen = _TranslationsHomeScreenPa._(_root);
	@override late final _TranslationsLaunchFailedScreenPa LaunchFailedScreen = _TranslationsLaunchFailedScreenPa._(_root);
	@override late final _TranslationsMyProfilesMergeScreenPa MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenPa._(_root);
	@override late final _TranslationsNetCheckScreenPa NetCheckScreen = _TranslationsNetCheckScreenPa._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenPa NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenPa._(_root);
	@override late final _TranslationsNetConnectionsScreenPa NetConnectionsScreen = _TranslationsNetConnectionsScreenPa._(_root);
	@override late final _TranslationsPerAppAndroidScreenPa PerAppAndroidScreen = _TranslationsPerAppAndroidScreenPa._(_root);
	@override late final _TranslationsRegionSettingsScreenPa RegionSettingsScreen = _TranslationsRegionSettingsScreenPa._(_root);
	@override late final _TranslationsServerSelectScreenPa ServerSelectScreen = _TranslationsServerSelectScreenPa._(_root);
	@override late final _TranslationsSettingsScreenPa SettingsScreen = _TranslationsSettingsScreenPa._(_root);
	@override late final _TranslationsUserAgreementScreenPa UserAgreementScreen = _TranslationsUserAgreementScreenPa._(_root);
	@override late final _TranslationsVersionUpdateScreenPa VersionUpdateScreen = _TranslationsVersionUpdateScreenPa._(_root);
	@override late final _TranslationsCommonWidgetPa CommonWidget = _TranslationsCommonWidgetPa._(_root);
	@override late final _TranslationsMainPa main = _TranslationsMainPa._(_root);
	@override late final _TranslationsMetaPa meta = _TranslationsMetaPa._(_root);
	@override String get diversionRulesKeep => '[${_root.meta.isp}] के [${_root.meta.diversionRules}] को बनाए रखें';
	@override String get diversionCustomGroupPreset => 'प्रीसेट [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'नोट: सक्षम किए गए आइटम [${_root.meta.diversionCustomGroup}] और [${_root.meta.diversionRules}] में जोड़े/ओवरराइट किए जाएंगे';
	@override String get diversionCustomGroupAddTips => 'नोट: जोड़ने के बाद, आपको क्रम को मैन्युअल रूप से समायोजित करने की आवश्यकता हो सकती है, अन्यथा नया जोड़ा गया विचलन प्रभावी नहीं हो सकता है';
	@override String get rulesetEnableTips => 'टिप: विकल्पों को चालू करने के बाद, कृपया प्रासंगिक नियम सेट करने के लिए [${_root.meta.diversionRules}] पर जाएं, अन्यथा वे प्रभावी नहीं होंगे';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] [HTTP] अनुरोध में [UserAgent] के आधार पर विभिन्न सदस्यता प्रकारों का डेटा भेजेगा';
	@override String get ispDiversionTips => '[${_root.meta.isp}] ट्रैफ़िक विचलन नियम प्रदान करता है; [V2Ray] प्रकार की सदस्यता ट्रैफ़िक विचलन नियमों का समर्थन नहीं करती है';
	@override late final _TranslationsIspPa isp = _TranslationsIspPa._(_root);
	@override late final _TranslationsPermissionPa permission = _TranslationsPermissionPa._(_root);
	@override late final _TranslationsTlsPa tls = _TranslationsTlsPa._(_root);
	@override late final _TranslationsOutboundRuleModePa outboundRuleMode = _TranslationsOutboundRuleModePa._(_root);
	@override late final _TranslationsDnsProxyResolveModePa dnsProxyResolveMode = _TranslationsDnsProxyResolveModePa._(_root);
	@override late final _TranslationsProxyStrategyPa proxyStrategy = _TranslationsProxyStrategyPa._(_root);
	@override late final _TranslationsReloadReasonPa reloadReason = _TranslationsReloadReasonPa._(_root);
	@override late final _TranslationsThemePa theme = _TranslationsThemePa._(_root);
	@override String get downloadProxyStrategy => 'डाउनलोड चैनल';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: डोमेन नाम को हल करने के लिए प्रॉक्सी सर्वर के माध्यम से DNS सर्वर से जुड़ें\n[${_root.dnsProxyResolveMode.direct}]: डोमेन नाम को हल करने के लिए सीधे DNS सर्वर से जुड़ें\n[${_root.dnsProxyResolveMode.fakeip}]: प्रॉक्सी सर्वर आपकी ओर से डोमेन नाम हल करता है; यदि आप VPN कनेक्शन डिस्कनेक्ट करते हैं, तो आपके एप्लिकेशन को पुनरारंभ करने की आवश्यकता हो सकती है; केवल [TUN] इनबाउंड ट्रैफ़िक के लिए प्रभावी';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'प्रोटोकॉल स्निफ';
	@override String sendOrReceiveNotMatch({required Object p}) => 'कृपया [${p}] का उपयोग करें';
	@override String get turnOffPrivateDirect => 'कृपया पहले [निजी नेटवर्क सीधा कनेक्शन] चालू करें';
	@override String targetConnectFailed({required Object p}) => '[${p}] से जुड़ने में विफल। कृपया सुनिश्चित करें कि डिवाइस एक ही LAN में हैं';
	@override String get appleTVSync => 'Apple TV - Karing में वर्तमान कोर कॉन्फ़िगरेशन को सिंक करें';
	@override String get appleTVSyncDone => 'सिंक पूरा हो गया है। कनेक्शन शुरू करने/पुनरारंभ करने के लिए कृपया Apple TV - Karing पर जाएं';
	@override String get appleTVRemoveCoreConfig => 'Apple TV - Karing कोर कॉन्फ़िगरेशन हटाएं';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing कोर कॉन्फ़िगरेशन हटा दिया गया; VPN सेवा डिस्कनेक्ट हो गई';
	@override String get appleTVUrlInvalid => 'अमान्य URL, कृपया Apple TV - Karing खोलें और Karing द्वारा प्रदर्शित QR कोड स्कैन करें';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] में यह सुविधा नहीं है, कृपया अपडेट करें और फिर से प्रयास करें';
	@override String appleCoreVersionNotMatch({required Object p}) => 'कोर मुख्य संस्करण मेल नहीं खाता, कृपया [${p}] अपडेट करें और फिर से प्रयास करें';
	@override String get remoteProfileEditConfirm => 'प्रोफ़ाइल अपडेट होने के बाद, नोड परिवर्तन बहाल हो जाएंगे। जारी रखें?';
	@override String get mustBeValidHttpsURL => 'एक मान्य https URL होना चाहिए';
	@override String fileNotExistReinstall({required Object p}) => 'फ़ाइल गायब है [${p}], कृपया फिर से इंस्टॉल करें';
	@override String get noNetworkConnect => 'कोई इंटरनेट कनेक्शन नहीं';
	@override String get sudoPassword => 'sudo पासवर्ड (TUN मोड के लिए आवश्यक)';
	@override String get turnOffNetworkBeforeInstall => 'अपडेट इंस्टॉल करने से पहले [हवाई जहाज मोड] पर स्विच करने की अनुशंसा की जाती है';
	@override String get latencyTestResolveIP => 'मैन्युअल रूप से जांच करते समय, आउटलेट IP हल करें';
	@override String get latencyTestConcurrency => 'समवर्तीता';
	@override String get edgeRuntimeNotInstalled => 'वर्तमान डिवाइस में Edge WebView2 रनटाइम इंस्टॉल नहीं है, इसलिए पृष्ठ प्रदर्शित नहीं किया जा सकता है। कृपया Edge WebView2 रनटाइम (x64) डाउनलोड और इंस्टॉल करें, ऐप को पुनरारंभ करें और फिर से प्रयास करें।';
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
class _TranslationsAboutScreenPa implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'इंस्टॉलेशन स्रोत';
	@override String get installTime => 'इंस्टॉलेशन का समय';
	@override String get versionChannel => 'ऑटो अपडेट चैनल';
	@override String get updateWhenConnected => 'कनेक्ट करने के बाद अपडेट चेक करें';
	@override String get autoDownloadPkg => 'अपडेट पैकेज स्वचालित रूप से डाउनलोड करें';
	@override String get disableAppImproveData => 'ऐप सुधार डेटा';
	@override String get disableUAReportTip => '[${_root.AboutScreen.disableAppImproveData}] को सक्षम करने से हमें उत्पाद की स्थिरता और उपयोगिता में सुधार करने में मदद मिलती है; हम कोई भी व्यक्तिगत गोपनीयता डेटा एकत्र नहीं करते हैं। अक्षम करने से ऐप को कोई भी डेटा एकत्र करने से रोका जा सकेगा।';
	@override String get devOptions => 'डेवलपर विकल्प';
	@override String get enableDebugLog => 'डिबग लॉग सक्षम करें';
	@override String get viewFilsContent => 'फ़ाइलें देखें';
	@override String get enablePprof => 'pprof सक्षम करें';
	@override String get pprofPanel => 'pprof पैनल';
	@override String get allowRemoteAccessPprof => '${_root.AboutScreen.pprofPanel} तक रिमोट एक्सेस की अनुमति दें';
	@override String get allowRemoteAccessHtmlBoard => '${_root.SettingsScreen.htmlBoard} तक रिमोट एक्सेस की अनुमति दें';
	@override String get useOriginalSBProfile => 'मूल sing-box प्रोफ़ाइल का उपयोग करें';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenPa implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'सर्वर URL';
	@override String get webdavRequired => 'खाली नहीं हो सकता';
	@override String get webdavLoginFailed => 'लॉगिन विफल रहा:';
	@override String get webdavListFailed => 'फ़ाइल सूची प्राप्त करने में विफल:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenPa implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'अमान्य [डोमेन]:${p}';
	@override String invalidIpCidr({required Object p}) => 'अमान्य [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'अमान्य [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'अमान्य [नियम सेट]:${p}, URL एक मान्य https URL होना चाहिए और .srs/.json एक्सटेंशन वाली बाइनरी फ़ाइल होनी चाहिए';
	@override String invalidRuleSetBuildIn({required Object p}) => 'अमान्य [नियम सेट (इनबिल्ट)]:${p}, प्रारूप geosite:xxx या geoip:xxx या acl:xxx है, और xxx एक मान्य नियम नाम होना चाहिए';
	@override String invalidPackageId({required Object p}) => 'अमान्य [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'टिप: सहेजने के बाद, कृपया प्रासंगिक नियम सेट करने के लिए [${_root.meta.diversionRules}] पर जाएं, अन्यथा वे प्रभावी नहीं होंगे';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenPa implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'विचलन नियम पहचान';
	@override String get rule => 'नियम:';
	@override String get outbound => 'प्रॉक्सी सर्वर:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenPa implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'टिप: नियमों को ऊपर से नीचे तक मिलाने का प्रयास करें। यदि कोई नियम मेल नहीं खाता है, तो [final] का उपयोग करें';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenPa implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP खाली नहीं हो सकता';
	@override String get urlCanNotEmpty => 'URL खाली नहीं हो सकता';
	@override String error({required Object p}) => 'असमर्थित प्रकार:${p}';
	@override String get dnsDesc => 'विलंब डेटा का पहला कॉलम सीधा कनेक्शन क्वेरी विलंब है;\nदूसरा कॉलम: [[प्रॉक्सी ट्रैफ़िक]प्रॉक्सी सर्वर के माध्यम से DNS हल करें] चालू करें: विलंब डेटा वर्तमान प्रॉक्सी सर्वर के माध्यम से अग्रेषित क्वेरी विलंब है; यदि [[प्रॉक्सी ट्रैफ़िक]प्रॉक्सी सर्वर के माध्यम से DNS हल करें] बंद है: विलंब डेटा सीधा कनेक्शन क्वेरी विलंब है';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenPa implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'फ़ाइल सामग्री दर्शक';
	@override String get clearFileContent => 'क्या आप वाकई फ़ाइल की सामग्री साफ़ करना चाहते हैं?';
	@override String get clearFileContentTips => 'क्या आप वाकई प्रोफ़ाइल फ़ाइल की सामग्री साफ़ करना चाहते हैं? प्रोफ़ाइल फ़ाइल को साफ़ करने से डेटा हानि या असामान्य ऐप कार्य हो सकते हैं, कृपया सावधानी से काम करें';
}

// Path: HomeScreen
class _TranslationsHomeScreenPa implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'कृपया एक सर्वर चुनें';
	@override String get invalidServer => 'अमान्य है, कृपया पुनः चुनें';
	@override String get disabledServer => 'अक्षम है, कृपया पुनः चुनें';
	@override String get expiredServer => 'कोई सर्वर उपलब्ध नहीं है, प्रोफ़ाइल समाप्त या अक्षम हो सकती हैं';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'कृपया उपयोग करने से पहले [शॉर्टकट लिंक] सेट करें';
	@override String tooMuchServers({required Object p, required Object p1}) => 'बहुत अधिक प्रॉक्सी सर्वर [${p}>${p1}], और सिस्टम मेमोरी सीमाओं के कारण कनेक्शन विफल हो सकता है';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'बहुत अधिक प्रॉक्सी सर्वर [${p}>${p1}] धीमे या दुर्गम कनेक्शन का कारण बन सकते हैं';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenPa implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'ऐप शुरू होने में विफल रहा [अमान्य प्रक्रिया नाम], कृपया ऐप को एक अलग निर्देशिका में फिर से इंस्टॉल करें';
	@override String get invalidProfile => 'ऐप शुरू होने में विफल रहा [प्रोफ़ाइल तक पहुँचने में विफल], कृपया ऐप फिर से इंस्टॉल करें';
	@override String get invalidVersion => 'ऐप शुरू होने में विफल रहा [अमान्य संस्करण], कृपया ऐप फिर से इंस्टॉल करें';
	@override String get systemVersionLow => 'ऐप शुरू होने में विफल रहा [सिस्टम संस्करण बहुत कम है]';
	@override String get invalidInstallPath => 'इंस्टॉलेशन पथ अमान्य है, कृपया इसे एक मान्य पथ पर फिर से इंस्टॉल करें';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenPa implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'प्रोफ़ाइल मर्ज करें';
	@override String get profilesMergeTarget => 'लक्ष्य प्रोफ़ाइल';
	@override String get profilesMergeSource => 'स्रोत प्रोफ़ाइल';
	@override String get profilesMergeTips => 'टिप: स्रोत प्रोफ़ाइल का विचलन छोड़ दिया जाएगा';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenPa implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'नेटवर्क चेक';
	@override String get warn => 'नोट: नेटवर्क वातावरण और विचलन नियमों के प्रभाव के कारण, परीक्षण के परिणाम वास्तविक परिणामों के पूरी तरह से बराबर नहीं हैं।';
	@override String get invalidDomain => 'अमान्य डोमेन नाम';
	@override String get connectivity => 'नेटवर्क कनेक्टिविटी';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4 कनेक्शन परीक्षण [${p}] सभी विफल रहे';
	@override String get connectivityTestIpv4Ok => 'Ipv4 कनेक्शन सफल रहा';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6 कनेक्शन परीक्षण [${p}] सभी विफल रहे, आपका नेटवर्क ipv6 का समर्थन नहीं कर सकता है';
	@override String get connectivityTestIpv6Ok => 'Ipv6 कनेक्शन सफल रहा';
	@override String get connectivityTestOk => 'नेटवर्क इंटरनेट से जुड़ा है';
	@override String get connectivityTestFailed => 'नेटवर्क अभी तक इंटरनेट से नहीं जुड़ा है';
	@override String get remoteRulesetsDownloadOk => 'सभी सफलतापूर्वक डाउनलोड किए गए';
	@override String get remoteRulesetsDownloadNotOk => 'डाउनलोड हो रहा है या डाउनलोड विफल रहा';
	@override String get outbound => 'प्रॉक्सी सर्वर';
	@override String outboundOk({required Object p}) => '[${p}] कनेक्शन सफल रहा';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] कनेक्शन विफल रहा\nत्रुटि:[${p2}]';
	@override String get dnsServer => 'DNS सर्वर';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS क्वेरी सफल रही\nDNS नियम:[${p2}]\nविलंबता:[${p3} ms]\nपता:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS क्वेरी सफल रही\n nDNS नियम:[${p2}]\nत्रुटि:[${p3}]';
	@override String get host => 'HTTP कनेक्शन';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nविचलननियम:[${p2}]\nप्रॉक्सी सर्वर:[${p3}]';
	@override String get hostConnectionOk => 'कनेक्शन सफल रहा';
	@override String hostConnectionFailed({required Object p}) => 'कनेक्शन विफल रहा:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenPa implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'डोमेन/IP';
	@override String get app => 'ऐप';
	@override String get rule => 'नियम';
	@override String get chain => 'आउटबाउंड';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenPa implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'CSV प्रारूप में कॉपी किया गया';
	@override String get selectType => 'विचलन प्रकार चुनें';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenPa implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रति-ऐप प्रॉक्सी';
	@override String get whiteListMode => 'श्वेतसूची मोड';
	@override String get whiteListModeTip => 'जब सक्षम किया जाता है: केवल चिह्नित ऐप ही प्रॉक्सी होते हैं; जब सक्षम नहीं किया जाता है: केवल अचिह्नित ऐप ही प्रॉक्सी होते हैं';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenPa implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'देश या क्षेत्र';
	@override String get Regions => 'टिप: कृपया अपना वर्तमान देश या क्षेत्र सही ढंग से सेट करें, अन्यथा यह नेटवर्क विचलन समस्याओं का कारण बन सकता है';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenPa implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'सर्वर चुनें';
	@override String get autoSelectServer => 'स्वचालित रूप से सबसे कम विलंबता वाला सर्वर चुनें';
	@override String get recentUse => 'हाल ही में उपयोग किया गया';
	@override String get myFav => 'मेरे पसंदीदा';
	@override String selectLocal({required Object p}) => 'चुना गया सर्वर एक स्थानीय पता है और ठीक से काम नहीं कर सकता है:${p}';
	@override String get selectRequireEnableIPv6 => 'चुना गया सर्वर एक IPv6 पता है और इसके लिए [IPv6 सक्षम करें] की आवश्यकता है';
	@override String get selectDisabled => 'यह सर्वर अक्षम कर दिया गया है';
	@override String get error404 => 'विलंबता पहचान में एक त्रुटि हुई, कृपया जांचें कि क्या उसी सामग्री के साथ कोई कॉन्फ़िगरेशन मौजूद है';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenPa implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'ट्रैफ़िक प्राप्त करें';
	@override String get tutorial => 'ट्यूटोरियल';
	@override String get commonlyUsedRulesets => 'आमतौर पर उपयोग किए जाने वाले नियम सेट';
	@override String get htmlBoard => 'ऑनलाइन पैनल';
	@override String get dnsLeakDetection => 'DNS लीक पहचान';
	@override String get proxyLeakDetection => 'प्रॉक्सी लीक पहचान';
	@override String get speedTest => 'गति परीक्षण';
	@override String get rulesetDirectDownlad => 'नियम सेट डायरेक्ट डाउनलोड';
	@override String get hideUnusedDiversionGroup => 'अप्रयुक्त विचलन नियमों को छिपाएं';
	@override String get disableISPDiversionGroup => '[${_root.meta.isp}] के [${_root.meta.diversionRules}] को अक्षम करें';
	@override String get portSettingRule => 'नियम-आधारित';
	@override String get portSettingDirectAll => 'सभी सीधे';
	@override String get portSettingProxyAll => 'सभी प्रॉक्सी';
	@override String get portSettingControl => 'नियंत्रण और सिंक';
	@override String get portSettingCluster => 'क्लस्टर सेवा';
	@override String get modifyPort => 'पोर्ट बदलें';
	@override String get modifyPortOccupied => 'पोर्ट व्यस्त है, कृपया दूसरे पोर्ट का उपयोग करें';
	@override String get ipStrategyTips => 'सक्षम करने से पहले, कृपया पुष्टि करें कि आपका नेटवर्क IPv6 का समर्थन करता है, अन्यथा कुछ ट्रैफ़िक सामान्य रूप से सुलभ नहीं होगा।';
	@override String get tunAppendHttpProxy => 'VPN में HTTP प्रॉक्सी जोड़ें';
	@override String get tunAppendHttpProxyTips => 'कुछ ऐप वर्चुअल NIC डिवाइस को बायपास करेंगे और सीधे HTTP प्रॉक्सी से कनेक्ट होंगे';
	@override String get tunAllowBypassHttpProxyDomain => 'डोमेन जिन्हें HTTP प्रॉक्सी को बायपास करने की अनुमति है';
	@override String get dnsEnableRule => 'DNS विचलन नियम सक्षम करें';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] समाधान चैनल';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] पर ECS सक्षम करें';
	@override String get dnsTestDomain => 'परीक्षण डोमेन';
	@override String get dnsTestDomainInvalid => 'अमान्य डोमेन';
	@override String get dnsTypeOutbound => 'प्रॉक्सी सर्वर';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS सर्वर';
	@override String get dnsEnableRuleTips => 'सक्षम करने के बाद, डोमेन नाम विचलन नियमों के अनुसार समाधान के लिए संबंधित DNS सर्वर का चयन करेगा';
	@override String get dnsEnableFakeIpTips => 'FakeIP सक्षम करने के बाद, यदि आप VPN डिस्कनेक्ट करते हैं, तो आपके ऐप को पुनरारंभ करने की आवश्यकता हो सकती है; इस सुविधा के लिए [TUN मोड] सक्षम होना आवश्यक है';
	@override String get dnsTypeOutboundTips => '[${_root.SettingsScreen.dnsTypeOutbound}] के लिए डोमेन नाम समाधान';
	@override String get dnsTypeDirectTips => '[${_root.meta.trafficDirect}] के लिए डोमेन नाम समाधान';
	@override String get dnsTypeProxyTips => '[${_root.meta.trafficProxy}] के लिए डोमेन नाम समाधान';
	@override String get dnsTypeResolverTips => '[${_root.SettingsScreen.dnsTypeResolver}] के लिए डोमेन नाम समाधान';
	@override String get dnsAutoSetServer => 'स्वचालित रूप से सर्वर सेट करें';
	@override String get dnsResetServer => 'सर्वर रीसेट करें';
	@override String get dnsEnableStaticIPForResolver => 'स्थिर IP समाधान को प्राथमिकता दें';
	@override String get dnsEnableStaticIPForResolverTips => 'समाधान के दौरान DNS सर्वर को स्वयं को प्रदूषित होने से प्रभावी ढंग से रोकें';
	@override String get inboundDomainResolve => 'आने वाले डोमेन नामों को हल करें';
	@override String get privateDirect => 'निजी नेटवर्क सीधा कनेक्शन';
	@override String inboundDomainResolveTips({required Object p}) => 'कुछ डोमेन नाम जो विचलन नियमों के साथ कॉन्फ़िगर नहीं किए गए हैं, उन्हें IP-आधारित विचलन नियमों से टकराने से पहले हल करने की आवश्यकता है; यह सुविधा प्रॉक्सी पोर्ट [${p}] पर आने वाले अनुरोधों को प्रभावित करती है';
	@override String get useRomoteRes => 'रिमोट संसाधनों का उपयोग करें';
	@override String get autoAppendRegion => 'स्वचालित रूप से मूल नियम जोड़ें';
	@override String get autoSelect => 'स्वचालित चयन';
	@override String get autoSelectServerIgnorePerProxyServer => '[Front/Chain] प्रॉक्सी सर्वर को अनदेखा करें';
	@override String get autoSelectServerInterval => 'विलंबता जांच के लिए अंतराल';
	@override String get autoSelectSelectedHealthCheckInterval => 'वर्तमान सर्वर स्वास्थ्य जांच अंतराल';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'नेटवर्क बदलने पर विलंबता की फिर से जांच करें';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'मैनुअल विलंबता जांच के बाद वर्तमान सर्वर को अपडेट करें';
	@override String get autoSelectServerIntervalTips => 'समय अंतराल जितना छोटा होगा, सर्वर विलंबता डेटा उतना ही समय पर अपडेट होगा, जो अधिक संसाधनों पर कब्जा करेगा और अधिक बिजली की खपत करेगा';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'यदि जांच विफल हो जाती है, तो सर्वर बदल दिया जाता है; यदि सर्वर बदलते समय कोई उपलब्ध सर्वर नहीं मिलता है, तो समूह फिर से विलंबता की जांच करेगा';
	@override String get autoSelectServerFavFirst => '[मेरे पसंदीदा] का उपयोग करने को प्राथमिकता दें';
	@override String get autoSelectServerFavFirstTips => 'यदि [मेरे पसंदीदा] सूची खाली नहीं है, तो [मेरे पसंदीदा] के सर्वर का उपयोग करें';
	@override String get autoSelectServerFilter => 'अमान्य सर्वर फ़िल्टर करें';
	@override String autoSelectServerFilterTips({required Object p}) => 'विफल होने वाली सर्वर विलंबता जांच को फ़िल्टर कर दिया जाएगा; यदि फ़िल्टर करने के बाद कोई सर्वर उपलब्ध नहीं है, तो इसके बजाय पहले [${p}] सर्वर का उपयोग किया जाएगा';
	@override String get autoSelectServerLimitedNum => 'सर्वर की अधिकतम संख्या';
	@override String get autoSelectServerLimitedNumTips => 'इस संख्या से अधिक होने वाले सर्वर फ़िल्टर कर दिए जाएंगे';
	@override String get numInvalid => 'अमान्य संख्या';
	@override String get hideInvalidServer => 'अमान्य सर्वर छिपाएं';
	@override String get sortServer => 'सर्वर की छँटाई';
	@override String get sortServerTips => 'विलंबता के अनुसार कम से उच्च तक छँटाई करें';
	@override String get selectServerHideRecommand => '[अनुशंसित] छिपाएं';
	@override String get selectServerHideRecent => '[हाल ही में उपयोग किया गया] छिपाएं';
	@override String get selectServerHideFav => '[मेरे पसंदीदा] छिपाएं';
	@override String get homeScreen => 'होम स्क्रीन';
	@override String get theme => 'थीम';
	@override String get widgetsAlpha => 'विजेट्स अल्फा';
	@override String get widgetsEmpty => 'कोई विजेट उपलब्ध नहीं है';
	@override String get backgroundImage => 'पृष्ठभूमि छवि';
	@override String get myLink => 'शॉर्टकट लिंक';
	@override String get autoConnectAfterLaunch => 'लॉन्च के बाद स्वचालित कनेक्शन';
	@override String get autoConnectAtBoot => 'सिस्टम बूट के बाद स्वचालित कनेक्शन';
	@override String get autoConnectAtBootTips => 'सिस्टम समर्थन आवश्यक है; कुछ प्रणालियों को [ऑटो-स्टार्ट] सक्षम करने की भी आवश्यकता हो सकती है।';
	@override String get hideAfterLaunch => 'लॉन्च के बाद विंडो छिपाएं';
	@override String get autoSetSystemProxy => 'कनेक्ट होने पर सिस्टम प्रॉक्सी स्वचालित रूप से सेट करें';
	@override String get bypassSystemProxy => 'डोमेन नाम जिन्हें सिस्टम प्रॉक्सी को बायपास करने की अनुमति है';
	@override String get disconnectWhenQuit => 'ऐप छोड़ने पर डिस्कनेक्ट करें';
	@override String get autoAddToFirewall => 'स्वचालित रूप से फ़ायरवॉल नियम जोड़ें';
	@override String get excludeFromRecent => '[हाल के कार्य] से छिपाएं';
	@override String get wakeLock => 'वेक लॉक';
	@override String get hideVpn => 'VPN आइकन छिपाएं';
	@override String get hideVpnTips => 'IPv6 सक्षम करने से यह सुविधा विफल हो जाएगी';
	@override String get allowBypass => 'ऐप्स को VPN बायपास करने की अनुमति दें';
	@override String get importSuccess => 'आयात सफल रहा';
	@override String get rewriteConfirm => 'यह फ़ाइल मौजूदा स्थानीय कॉन्फ़िगरेशन को ओवरराइट कर देगी। क्या आप जारी रखना चाहते हैं?';
	@override String get mergePerapp => 'स्थानीय [${_root.PerAppAndroidScreen.title}] सूचियों को मर्ज करें';
	@override String get networkShare => 'नेटवर्क शेयर';
	@override String get frontProxy => 'Front/Chain प्रॉक्सी';
	@override String frontProxyTips({required Object p}) => 'डेटा->Front/Chain प्रॉक्सी सर्वर [एकाधिक प्रॉक्सी सर्वर: ऊपर से नीचे]->प्रॉक्सी सर्वर [${p}]->लक्ष्य सर्वर';
	@override String get allowOtherHostsConnect => 'दूसरों को कनेक्ट करने की अनुमति दें';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'सिस्टम सीमाओं के कारण, इसे सक्षम करने के बाद, इस डिवाइस पर वे एप्लिकेशन जो नेटवर्क एक्सेस के लिए http का उपयोग करते हैं, नेटवर्क से ठीक से कनेक्ट नहीं हो पाएंगे।';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunAutoRedirect => 'Auto Redirect';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'यदि शेयर चालू करने के बाद अन्य लोग इस डिवाइस तक नहीं पहुँच पा रहे हैं, तो कृपया इस स्विच को बंद करने का प्रयास करें';
	@override String get loopbackAddress => 'लूपबैक पता';
	@override String get enableCluster => 'Socks/Http प्रॉक्सी क्लस्टर सक्षम करें';
	@override String get clusterAllowOtherHostsConnect => 'दूसरों को क्लस्टर से जुड़ने की अनुमति दें';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'प्रॉक्सी क्लस्टर प्रमाणीकरण';
	@override String get tunMode => 'TUN मोड';
	@override String get tuni4Address => 'IP पता';
	@override String get tunModeTips => 'TUN मोड सिस्टम के सभी ट्रैफ़िक को संभाल लेगा [इस मोड में, आप सिस्टम प्रॉक्सी को अक्षम छोड़ सकते हैं]';
	@override String get tunModeRunAsAdmin => 'TUN मोड के लिए सिस्टम प्रशासक अनुमति की आवश्यकता होती है, कृपया ऐप को प्रशासक के रूप में पुनरारंभ करें';
	@override String get tunStack => 'स्टैक';
	@override String get tunHijackTips => 'बंद करने के बाद, TUN से DNS अनुरोध सीधे संबंधित DNS सर्वर पर भेज दिए जाएंगे';
	@override String get launchAtStartup => 'स्टार्टअप पर लॉन्च करें';
	@override String get quitWhenSwitchSystemUser => 'सिस्टम उपयोगकर्ता बदलते समय ऐप छोड़ें';
	@override String get handleScheme => 'सिस्टम स्कीम कॉल';
	@override String get portableMode => 'पोर्टेबल मोड';
	@override String get portableModeDisableTips => 'यदि आपको पोर्टेबल मोड छोड़ने की आवश्यकता है, तो कृपया [karing] से बाहर निकलें और [karing.exe] के समान निर्देशिका में [profiles] फ़ोल्डर को मैन्युअल रूप से हटा दें';
	@override String get accessibility => 'सुगम्यता';
	@override String get handleKaringScheme => 'karing:// कॉल को संभालें';
	@override String get handleClashScheme => 'clash:// कॉल को संभालें';
	@override String get handleSingboxScheme => 'sing-box:// कॉल को संभालें';
	@override String get alwayOnVPN => 'हमेशा चालू कनेक्शन';
	@override String get disconnectAfterSleep => 'सिस्टम स्लीप के बाद डिस्कनेक्ट करें';
	@override String get removeSystemVPNConfig => 'सिस्टम VPN कॉन्फ़िगरेशन हटाएं';
	@override String get timeConnectOrDisconnect => 'निर्धारित कनेक्ट/डिस्कनेक्ट';
	@override String get timeConnectOrDisconnectTips => 'प्रभावी होने के लिए VPN का कनेक्ट होना आवश्यक है; चालू करने के बाद, [ऑटो स्लीप] अक्षम हो जाएगा';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'कनेक्ट/डिस्कनेक्ट अंतराल ${p} मिनट से कम नहीं हो सकता';
	@override String get disableFontScaler => 'फ़ॉन्ट स्केलिंग अक्षम करें (पुनरारंभ आवश्यक)';
	@override String get autoOrientation => 'स्क्रीन के साथ घुमाएं';
	@override String get restartTakesEffect => 'पुनरारंभ प्रभावी होता है';
	@override String get reconnectTakesEffect => 'पुनः कनेक्शन प्रभावी होता है';
	@override String get resetSettings => 'सेटिंग्स रीसेट करें';
	@override String get cleanCache => 'कैश साफ़ करें';
	@override String get cleanCacheDone => 'सफाई पूरी हुई';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'संस्करण ${p} अपडेट करें';
	@override String get follow => 'हमें फॉलो करें';
	@override String get contactUs => 'हमसे संपर्क करें';
	@override String get supportUs => 'हमारा समर्थन करें';
	@override String get rateInApp => 'हमें रेट करें';
	@override String get rateInAppStore => 'AppStore पर हमें रेट करें';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenPa implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'आपकी गोपनीयता सबसे पहले आती है';
	@override String get agreeAndContinue => 'स्वीकार करें और जारी रखें';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenPa implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'नया संस्करण [${p}] तैयार है';
	@override String get update => 'अपडेट करने के लिए पुनरारंभ करें';
	@override String get cancel => 'अभी नहीं';
}

// Path: CommonWidget
class _TranslationsCommonWidgetPa implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'यदि [हमेशा चालू VPN] चालू है, तो कृपया [हमेशा चालू VPN] बंद करें और फिर से कनेक्ट करने का प्रयास करें';
	@override String get resetPort => 'कृपया पोर्ट को किसी अन्य उपलब्ध पोर्ट में बदलें या उस एप्लिकेशन को बंद करें जो पोर्ट पर कब्जा कर रहा है।';
}

// Path: main
class _TranslationsMainPa implements TranslationsMainEn {
	_TranslationsMainPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayPa tray = _TranslationsMainTrayPa._(_root);
}

// Path: meta
class _TranslationsMetaPa implements TranslationsMetaEn {
	_TranslationsMetaPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get enable => 'सक्षम करें';
	@override String get disable => 'अक्षम करें';
	@override String get bydefault => 'डिफ़ॉल्ट';
	@override String get filter => 'फ़िल्टर';
	@override String get filterMethod => 'फ़िल्टर विधि';
	@override String get include => 'शामिल करें';
	@override String get exclude => 'बहिष्कृत करें';
	@override String get all => 'सभी';
	@override String get prefer => 'वरीयता दें';
	@override String get only => 'केवल';
	@override String get open => 'खोलें';
	@override String get close => 'बंद करें';
	@override String get quit => 'बाहर निकलें';
	@override String get add => 'जोड़ें';
	@override String get addSuccess => 'सफलतापूर्वक जोड़ा गया';
	@override String addFailed({required Object p}) => 'जोड़ने में विफल:${p}';
	@override String get remove => 'हटाएं';
	@override String get removeConfirm => 'क्या आप वाकई हटाना चाहते हैं?';
	@override String get edit => 'संपादित करें';
	@override String get view => 'देखें';
	@override String get more => 'अधिक';
	@override String get tips => 'जानकारी';
	@override String get copy => 'कॉपी करें';
	@override String get paste => 'पेस्ट करें';
	@override String get cut => 'काटना';
	@override String get save => 'सहेजें';
	@override String get ok => 'ठीक है';
	@override String get cancel => 'रद्द करें';
	@override String get feedback => 'प्रतिक्रिया';
	@override String get feedbackContent => 'प्रतिक्रिया सामग्री';
	@override String get feedbackContentHit => 'आवश्यक, 500 वर्णों तक';
	@override String get feedbackContentCannotEmpty => 'प्रतिक्रिया सामग्री खाली नहीं हो सकती';
	@override String get faq => 'FAQ';
	@override String get htmlTools => 'HTML टूलसेट';
	@override String get download => 'डाउनलोड';
	@override String get upload => 'अपलोड';
	@override String get downloadSpeed => 'डाउनलोड गति';
	@override String get uploadSpeed => 'अपलोड गति';
	@override String get loading => 'लोड हो रहा है...';
	@override String get convert => 'कन्वर्ट करें';
	@override String get check => 'जांचें';
	@override String get detect => 'पहचानें';
	@override String get cache => 'कैश';
	@override String get days => 'दिन';
	@override String get hours => 'घंटे';
	@override String get minutes => 'मिनट';
	@override String get seconds => 'सेकंड';
	@override String get milliseconds => 'मिलीसेकंड';
	@override String get tolerance => 'सहिष्णुता';
	@override String get dateTimePeriod => 'समय अवधि';
	@override String get protocol => 'प्रोटोकॉल';
	@override String get search => 'खोजें';
	@override String get custom => 'कस्टम';
	@override String get inbound => 'इनबाउंड';
	@override String get outbound => 'आउटबाउंड';
	@override String get destination => 'गंतव्य';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'कनेक्ट करें';
	@override String get disconnect => 'डिस्कनेक्ट करें';
	@override String get reconnect => 'पुनः कनेक्ट करें';
	@override String get connected => 'कनेक्टेड';
	@override String get disconnected => 'डिस्कनेक्टेड';
	@override String get connecting => 'कनेक्ट हो रहा है';
	@override String get connectTimeout => 'कनेक्शन टाइमआउट';
	@override String get timeout => 'टाइमआउट';
	@override String get timeoutDuration => 'टाइमआउट अवधि';
	@override String get runDuration => 'रन अवधि';
	@override String get latency => 'विलंबता';
	@override String get latencyTest => 'विलंबता जांच';
	@override String get language => 'भाषा';
	@override String get next => 'अगला';
	@override String get done => 'हो गया';
	@override String get apply => 'लागू करें';
	@override String get refresh => 'रीफ्रेश करें';
	@override String get retry => 'पुनः प्रयास करें?';
	@override String get update => 'अपडेट करें';
	@override String get updateInterval => 'अपडेट अंतराल';
	@override String get updateInterval5mTips => 'न्यूनतम: 5m';
	@override String updateFailed({required Object p}) => 'अपडेट विफल रहा:${p}';
	@override String get samplingUnit => 'नमूना समय इकाई';
	@override String get queryResultCount => 'क्वेरी परिणामों की संख्या';
	@override String queryLimit({required Object p}) => '${p} डेटा तक दिखाएं';
	@override String get none => 'कोई नहीं';
	@override String get start => 'प्रारंभ';
	@override String get pause => 'विराम';
	@override String get reset => 'रीसेट';
	@override String get submit => 'जमा करें';
	@override String get user => 'उपयोगकर्ता';
	@override String get account => 'खाता';
	@override String get password => 'पासवर्ड';
	@override String get decryptPassword => 'डिक्रोरप्ट पासवर्ड';
	@override String get required => 'आवश्यक';
	@override String get type => 'प्रकार';
	@override String get path => 'पथ';
	@override String get local => 'स्थानीय';
	@override String get remote => 'रिमोट';
	@override String get other => 'अन्य';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'अमान्य URL';
	@override String get urlCannotEmpty => 'लिंक खाली नहीं हो सकता';
	@override String get urlTooLong => 'URL बहुत लंबा है (>8182)';
	@override String get copyUrl => 'लिंक कॉपी करें';
	@override String get openUrl => 'लिंक खोलें';
	@override String get shareUrl => 'लिंक साझा करें';
	@override String get speedTestUrl => 'गति परीक्षण URL';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'स्थिर IP';
	@override String get staticIPTips => 'आपको [TUN HijackDNS] या [${_root.SettingsScreen.inboundDomainResolve}] सक्षम करने की आवश्यकता है।';
	@override String get isp => 'VPN प्रदाता';
	@override String get domainSuffix => 'डोमेन प्रत्यय';
	@override String get domain => 'डोमेन';
	@override String get domainKeyword => 'डोमेन कीवर्ड';
	@override String get domainRegex => 'डोमेन Regex';
	@override String get ip => 'IP';
	@override String get port => 'पोर्ट';
	@override String get portRange => 'पोर्ट रेंज';
	@override String get appPackage => 'ऐप पैकेज ID';
	@override String get processName => 'प्रक्रिया नाम';
	@override String get processPath => 'प्रक्रिया पथ';
	@override String get processDir => 'प्रक्रिया निर्देशिका';
	@override String get systemProxy => 'सिस्टम प्रॉक्सी';
	@override String get percentage => 'प्रतिशत';
	@override String get statistics => 'सांख्यिकी';
	@override String get statisticsAndAnalysis => 'सांख्यिकी और विश्लेषण';
	@override String get statisticsDataDesensitize => 'डेटा विसंवेदीकरण';
	@override String get statisticsDataDesensitizeTips => 'प्रक्रिया/पैकेज ID/लक्ष्य डोमेन नाम/लक्ष्य IP आदि को * से बदल दिया जाएगा और विसंवेदीकरण के बाद सहेजा जाएगा';
	@override String get records => 'रिकॉर्ड';
	@override String get requestRecords => 'अनुरोध रिकॉर्ड';
	@override String get netInterfaces => 'नेटवर्क इंटरफेस';
	@override String get netSpeed => 'गति';
	@override String get memoryTrendChart => 'मेमोरी ट्रेंड चार्ट';
	@override String get goroutinesTrendChart => 'GoRoutines ट्रेंड चार्ट';
	@override String get trafficTrendChart => 'ट्रैफ़िक ट्रेंड चार्ट';
	@override String get trafficDistributionChart => 'ट्रैफ़िक वितरण चार्ट';
	@override String get connectionChart => 'कनेक्शन ट्रेंड चार्ट';
	@override String get memoryChart => 'मेमोरी ट्रेंड चार्ट';
	@override String get trafficStatistics => 'ट्रैफ़िक सांख्यिकी';
	@override String get traffic => 'ट्रैफ़िक';
	@override String get trafficTotal => 'कुल ट्रैफ़िक';
	@override String get trafficProxy => 'प्रॉक्सी ट्रैफ़िक';
	@override String get trafficDirect => 'सीधा ट्रैफ़िक';
	@override String get website => 'वेबसाइट';
	@override String get memory => 'मेमोरी';
	@override String get outboundMode => 'आउटबाउंड मोड';
	@override String get rule => 'नियम';
	@override String get global => 'वैश्विक';
	@override String get qrcode => 'QR कोड';
	@override String get qrcodeTooLong => 'टेक्स्ट प्रदर्शित करने के लिए बहुत लंबा है';
	@override String get qrcodeShare => 'QR कोड साझा करें';
	@override String get textToQrcode => 'टेक्स्ट से QR कोड';
	@override String get qrcodeScan => 'QR कोड स्कैन करें';
	@override String get qrcodeScanResult => 'स्कैन परिणाम';
	@override String get qrcodeScanFromImage => 'छवि से स्कैन करें';
	@override String get qrcodeScanResultFailed => 'छवि का विश्लेषण करने में विफल, कृपया सुनिश्चित करें कि स्क्रीनशॉट एक मान्य QR कोड है';
	@override String get qrcodeScanResultEmpty => 'स्कैन परिणाम खाली है';
	@override String get screenshot => 'स्क्रीनशॉट';
	@override String get backupAndSync => 'बैकअप और सिंक';
	@override String get autoBackup => 'स्वचालित बैकअप';
	@override String get noProfileGotAutoBackup => 'यदि [${_root.meta.myProfiles}] जैसा डेटा खो जाता है, तो आप इसे [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] या अन्य बैकअप स्रोतों (जैसे iCloud या Webdav आदि) से पुनर्स्थापित कर सकते हैं';
	@override String get autoBackupAddProfile => 'प्रोफ़ाइल जोड़ने के बाद';
	@override String get autoBackupRemoveProfile => 'प्रोफ़ाइल हटाने के बाद';
	@override String get profile => 'प्रोफ़ाइल';
	@override String get currentProfile => 'वर्तमान प्रोफ़ाइल';
	@override String get importAndExport => 'आयात और निर्यात';
	@override String get import => 'आयात';
	@override String get importFromUrl => 'URL से आयात करें';
	@override String get export => 'निर्यात';
	@override String get send => 'भेजें';
	@override String get receive => 'प्राप्त करें';
	@override String get sendConfirm => 'भेजने की पुष्टि करें?';
	@override String get termOfUse => 'सेवा की शर्तें';
	@override String get privacyPolicy => 'गोपनीयता और नीति';
	@override String get about => 'के बारे में';
	@override String get name => 'नाम';
	@override String get version => 'संस्करण';
	@override String get notice => 'सूचना';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'कार्रवाई:${p}\nकारण:${p1}';
	@override String get sort => 'पुनर्व्यवस्थित करें';
	@override String get novice => 'नौसिखिया मोड';
	@override String get willCompleteAfterRebootInstall => 'सिस्टम एक्सटेंशन का इंस्टॉलेशन पूरा करने के लिए कृपया अपने डिवाइस को पुनरारंभ करें';
	@override String get willCompleteAfterRebootUninstall => 'सिस्टम एक्सटेंशन का अनइंस्टॉलेशन पूरा करने के लिए कृपया अपने डिवाइस को पुनरारंभ करें';
	@override String get requestNeedsUserApproval => '1. कृपया Karing को [सिस्टम सेटिंग्स]-[गोपनीयता और सुरक्षा] में सिस्टम एक्सटेंशन इंस्टॉल करने की [अनुमति दें]\n2. [सिस्टम सेटिंग्स]-[सामान्य]-[लॉगिन आइटम एक्सटेंशन]-[नेटवर्क एक्सटेंशन] [karingServiceSE] सक्षम करें\nपूरा होने के बाद फिर से कनेक्ट करें';
	@override String get FullDiskAccessPermissionRequired => 'कृपया [सिस्टम सेटिंग्स]-[गोपनीयता और सुरक्षा]-[पूर्ण डिस्क एक्सेस अनुमति] में [karingServiceSE] अनुमति सक्षम करें और फिर से कनेक्ट करें';
	@override String get tvMode => 'TV मोड';
	@override String get recommended => 'अनुशंसित';
	@override String innerError({required Object p}) => 'आंतरिक त्रुटि:${p}';
	@override String get logicOperation => 'तार्किक संचालन';
	@override String get share => 'साझा करें';
	@override String get candidateWord => 'उम्मीदवार शब्द';
	@override String get keywordOrRegx => 'कीवर्ड/नियमित';
	@override String get importFromClipboard => 'क्लिपबोर्ड से आयात करें';
	@override String get exportToClipboard => 'क्लिपबोर्ड पर निर्यात करें';
	@override String get server => 'सर्वर';
	@override String get ads => 'विज्ञापन';
	@override String get adsRemove => 'विज्ञापन हटाएं';
	@override String get donate => 'दान करें';
	@override String get diversion => 'विचलन';
	@override String get diversionRules => 'विचलन नियम';
	@override String get diversionCustomGroup => 'कस्टम विचलन समूह';
	@override String get urlTestCustomGroup => 'कस्टम ऑटो चयन';
	@override String get setting => 'सेटिंग्स';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN सिंक';
	@override String get lanSyncNotQuitTips => 'सिंक पूरा होने से पहले इस इंटरफ़ेस को न छोड़ें';
	@override String get deviceNoSpace => 'डिस्क स्थान अपर्याप्त है';
	@override String get hideSystemApp => 'सिस्टम ऐप छिपाएं';
	@override String get hideAppIcon => 'ऐप आइकन छिपाएं';
	@override String get hideDockIcon => 'डॉक आइकन छिपाएं';
	@override String get remark => 'टिप्पणी';
	@override String get remarkExist => 'टिप्पणी पहले से मौजूद है, कृपया दूसरा नाम उपयोग करें';
	@override String get remarkCannotEmpty => 'टिप्पणियाँ खाली नहीं हो सकतीं';
	@override String get remarkTooLong => '32 वर्णों तक की टिप्पणियाँ';
	@override String get openDir => 'फ़ाइल निर्देशिका खोलें';
	@override String get fileChoose => 'फ़ाइल चुनें';
	@override String get filePathCannotEmpty => 'फ़ाइल पथ खाली नहीं हो सकता';
	@override String fileNotExist({required Object p}) => 'फ़ाइल मौजूद नहीं है:${p}';
	@override String fileTypeInvalid({required Object p}) => 'अमान्य फ़ाइल प्रकार:${p}';
	@override String get uwpExemption => 'UWP नेटवर्क अलगाव छूट';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'प्रोफ़ाइल प्राप्त करें';
	@override String get addProfile => 'प्रोफ़ाइल जोड़ें';
	@override String get myProfiles => 'मेरी प्रोफ़ाइल';
	@override String get profileEdit => 'प्रोफ़ाइल संपादित करें';
	@override String get profileEditUrlExist => 'URL पहले से मौजूद है, कृपया दूसरा URL उपयोग करें';
	@override String get profileEditReloadAfterProfileUpdate => 'प्रोफ़ाइल अपडेट के बाद पुनः लोड करें';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'स्वचालित प्रोफ़ाइल अपडेट के बाद विलंबता परीक्षण शुरू करें';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN कनेक्ट होना चाहिए और [प्रोफ़ाइल अपडेट के बाद पुनः लोड करें] सक्षम होना चाहिए';
	@override String get profileEditTestLatencyAutoRemove => 'विलंबता परीक्षण में विफल होने वाले सर्वरों को स्वचालित रूप से हटा दें';
	@override String get profileEditTestLatencyAutoRemoveTips => '3 बार तक प्रयास करें';
	@override String get profileImport => 'प्रोफ़ाइल फ़ाइल आयात करें';
	@override String get profileAddUrlOrContent => 'प्रोफ़ाइल लिंक जोड़ें';
	@override String get profileExists => 'प्रोफ़ाइल पहले से मौजूद है, कृपया इसे बार-बार न जोड़ें';
	@override String get profileUrlOrContent => 'प्रोफ़ाइल लिंक/सामग्री';
	@override String get profileUrlOrContentHit => 'प्रोफ़ाइल लिंक/सामग्री [आवश्यक] (Clash, V2ray (बैच समर्थित), Stash, Karing, Sing-box, Shadowsocks, Sub प्रोफ़ाइल लिंक का समर्थन करता है)';
	@override String get profileUrlOrContentCannotEmpty => 'प्रोफ़ाइल लिंक खाली नहीं हो सकता';
	@override String profileAddFailedFormatException({required Object p}) => 'प्रारूप गलत है, कृपया इसे ठीक करें और फिर से जोड़ें:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'जोड़ने में विफल: ${p}, कृपया [UserAgent] को संशोधित करने का प्रयास करें और फिर से प्रयास करें, या कॉन्फ़िगरेशन लिंक खोलने के लिए डिवाइस के अंतर्निहित ब्राउज़र का उपयोग करें और ब्राउज़र द्वारा डाउनलोड की गई कॉन्फ़िगरेशन फ़ाइल को इस एप्लिकेशन में आयात करें';
	@override String profileAddFailedHandshakeException({required Object p}) => 'जोड़ने में विफल: ${p}, कृपया प्रॉक्सी चालू करें या वर्तमान प्रॉक्सी नोड को संशोधित करें और फिर से प्रयास करें';
	@override String get profileAddParseFailed => 'प्रोफ़ाइल को पार्स करने में विफल';
	@override String get profileAddNoServerAvaliable => 'कोई सर्वर उपलब्ध नहीं है, सुनिश्चित करें कि प्रोफ़ाइल लिंक या प्रोफ़ाइल फ़ाइल मान्य है; यदि आपकी प्रोफ़ाइल GitHub से है, तो कृपया पृष्ठ पर [Raw] बटन के माध्यम से लिंक प्राप्त करें';
	@override String get profileAddWrapSuccess => 'प्रोफ़ाइल सफलतापूर्वक उत्पन्न हुई, कृपया देखने के लिए [${_root.meta.myProfiles}] पर जाएं';
}

// Path: isp
class _TranslationsIspPa implements TranslationsIspEn {
	_TranslationsIspPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get bind => '[${_root.meta.isp}] से बांधें ';
	@override String unbind({required Object p}) => 'अनबाइंड करें[${p}]';
	@override String faq({required Object p}) => 'FAQ[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'फॉलो करें[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] अमान्य या समाप्त हो गया';
}

// Path: permission
class _TranslationsPermissionPa implements TranslationsPermissionEn {
	_TranslationsPermissionPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get camera => 'कैमरा';
	@override String get screen => 'स्क्रीन रिकॉर्डिंग';
	@override String get appQuery => 'ऐप सूची प्राप्त करें';
	@override String request({required Object p}) => '[${p}] अनुमति चालू करें';
	@override String requestNeed({required Object p}) => 'कृपया [${p}] अनुमति चालू करें';
}

// Path: tls
class _TranslationsTlsPa implements TranslationsTlsEn {
	_TranslationsTlsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'प्रमाणपत्र सत्यापन छोड़ें';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'TLS फ्रैगमेंट सक्षम करें';
	@override String get fragmentSize => 'TLS फ्रैगमेंट आकार';
	@override String get fragmentSleep => 'TLS फ्रैगमेंट स्लीप';
	@override String get mixedCaseSNIEnable => 'TLS मिक्स्ड केस SNI सक्षम करें';
	@override String get paddingEnable => 'TLS पैडिंग सक्षम करें';
	@override String get paddingSize => 'TLS पैडिंग आकार';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModePa implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'वर्तमान में चयनित';
	@override String get urltest => 'स्वचालित चयन';
	@override String get direct => 'सीधा';
	@override String get block => 'ब्लॉक करें';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModePa implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyPa implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonPa implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'प्रोफ़ाइल अपडेट';
}

// Path: theme
class _TranslationsThemePa implements TranslationsThemeEn {
	_TranslationsThemePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get light => 'लाइट';
	@override String get dark => 'डार्क';
	@override String get auto => 'ऑटो';
}

// Path: main.tray
class _TranslationsMainTrayPa implements TranslationsMainTrayEn {
	_TranslationsMainTrayPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'खोलें';
	@override String get menuExit => 'बाहर निकलें';
}

/// The flat map containing all translations for locale <pa>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'इंस्टॉलेशन स्रोत',
			'AboutScreen.installTime' => 'इंस्टॉलेशन का समय',
			'AboutScreen.versionChannel' => 'ऑटो अपडेट चैनल',
			'AboutScreen.updateWhenConnected' => 'कनेक्ट करने के बाद अपडेट चेक करें',
			'AboutScreen.autoDownloadPkg' => 'अपडेट पैकेज स्वचालित रूप से डाउनलोड करें',
			'AboutScreen.disableAppImproveData' => 'ऐप सुधार डेटा',
			'AboutScreen.disableUAReportTip' => '[${_root.AboutScreen.disableAppImproveData}] को सक्षम करने से हमें उत्पाद की स्थिरता और उपयोगिता में सुधार करने में मदद मिलती है; हम कोई भी व्यक्तिगत गोपनीयता डेटा एकत्र नहीं करते हैं। अक्षम करने से ऐप को कोई भी डेटा एकत्र करने से रोका जा सकेगा।',
			'AboutScreen.devOptions' => 'डेवलपर विकल्प',
			'AboutScreen.enableDebugLog' => 'डिबग लॉग सक्षम करें',
			'AboutScreen.viewFilsContent' => 'फ़ाइलें देखें',
			'AboutScreen.enablePprof' => 'pprof सक्षम करें',
			'AboutScreen.pprofPanel' => 'pprof पैनल',
			'AboutScreen.allowRemoteAccessPprof' => '${_root.AboutScreen.pprofPanel} तक रिमोट एक्सेस की अनुमति दें',
			'AboutScreen.allowRemoteAccessHtmlBoard' => '${_root.SettingsScreen.htmlBoard} तक रिमोट एक्सेस की अनुमति दें',
			'AboutScreen.useOriginalSBProfile' => 'मूल sing-box प्रोफ़ाइल का उपयोग करें',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'सर्वर URL',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'खाली नहीं हो सकता',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'लॉगिन विफल रहा:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'फ़ाइल सूची प्राप्त करने में विफल:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'अमान्य [डोमेन]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'अमान्य [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'अमान्य [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'अमान्य [नियम सेट]:${p}, URL एक मान्य https URL होना चाहिए और .srs/.json एक्सटेंशन वाली बाइनरी फ़ाइल होनी चाहिए',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'अमान्य [नियम सेट (इनबिल्ट)]:${p}, प्रारूप geosite:xxx या geoip:xxx या acl:xxx है, और xxx एक मान्य नियम नाम होना चाहिए',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'अमान्य [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'टिप: सहेजने के बाद, कृपया प्रासंगिक नियम सेट करने के लिए [${_root.meta.diversionRules}] पर जाएं, अन्यथा वे प्रभावी नहीं होंगे',
			'DiversionRuleDetectScreen.title' => 'विचलन नियम पहचान',
			'DiversionRuleDetectScreen.rule' => 'नियम:',
			'DiversionRuleDetectScreen.outbound' => 'प्रॉक्सी सर्वर:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'टिप: नियमों को ऊपर से नीचे तक मिलाने का प्रयास करें। यदि कोई नियम मेल नहीं खाता है, तो [final] का उपयोग करें',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP खाली नहीं हो सकता',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL खाली नहीं हो सकता',
			'DnsSettingsScreen.error' => ({required Object p}) => 'असमर्थित प्रकार:${p}',
			'DnsSettingsScreen.dnsDesc' => 'विलंब डेटा का पहला कॉलम सीधा कनेक्शन क्वेरी विलंब है;\nदूसरा कॉलम: [[प्रॉक्सी ट्रैफ़िक]प्रॉक्सी सर्वर के माध्यम से DNS हल करें] चालू करें: विलंब डेटा वर्तमान प्रॉक्सी सर्वर के माध्यम से अग्रेषित क्वेरी विलंब है; यदि [[प्रॉक्सी ट्रैफ़िक]प्रॉक्सी सर्वर के माध्यम से DNS हल करें] बंद है: विलंब डेटा सीधा कनेक्शन क्वेरी विलंब है',
			'FileContentViewerScreen.title' => 'फ़ाइल सामग्री दर्शक',
			'FileContentViewerScreen.clearFileContent' => 'क्या आप वाकई फ़ाइल की सामग्री साफ़ करना चाहते हैं?',
			'FileContentViewerScreen.clearFileContentTips' => 'क्या आप वाकई प्रोफ़ाइल फ़ाइल की सामग्री साफ़ करना चाहते हैं? प्रोफ़ाइल फ़ाइल को साफ़ करने से डेटा हानि या असामान्य ऐप कार्य हो सकते हैं, कृपया सावधानी से काम करें',
			'HomeScreen.toSelectServer' => 'कृपया एक सर्वर चुनें',
			'HomeScreen.invalidServer' => 'अमान्य है, कृपया पुनः चुनें',
			'HomeScreen.disabledServer' => 'अक्षम है, कृपया पुनः चुनें',
			'HomeScreen.expiredServer' => 'कोई सर्वर उपलब्ध नहीं है, प्रोफ़ाइल समाप्त या अक्षम हो सकती हैं',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'कृपया उपयोग करने से पहले [शॉर्टकट लिंक] सेट करें',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'बहुत अधिक प्रॉक्सी सर्वर [${p}>${p1}], और सिस्टम मेमोरी सीमाओं के कारण कनेक्शन विफल हो सकता है',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'बहुत अधिक प्रॉक्सी सर्वर [${p}>${p1}] धीमे या दुर्गम कनेक्शन का कारण बन सकते हैं',
			'LaunchFailedScreen.invalidProcess' => 'ऐप शुरू होने में विफल रहा [अमान्य प्रक्रिया नाम], कृपया ऐप को एक अलग निर्देशिका में फिर से इंस्टॉल करें',
			'LaunchFailedScreen.invalidProfile' => 'ऐप शुरू होने में विफल रहा [प्रोफ़ाइल तक पहुँचने में विफल], कृपया ऐप फिर से इंस्टॉल करें',
			'LaunchFailedScreen.invalidVersion' => 'ऐप शुरू होने में विफल रहा [अमान्य संस्करण], कृपया ऐप फिर से इंस्टॉल करें',
			'LaunchFailedScreen.systemVersionLow' => 'ऐप शुरू होने में विफल रहा [सिस्टम संस्करण बहुत कम है]',
			'LaunchFailedScreen.invalidInstallPath' => 'इंस्टॉलेशन पथ अमान्य है, कृपया इसे एक मान्य पथ पर फिर से इंस्टॉल करें',
			'MyProfilesMergeScreen.profilesMerge' => 'प्रोफ़ाइल मर्ज करें',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'लक्ष्य प्रोफ़ाइल',
			'MyProfilesMergeScreen.profilesMergeSource' => 'स्रोत प्रोफ़ाइल',
			'MyProfilesMergeScreen.profilesMergeTips' => 'टिप: स्रोत प्रोफ़ाइल का विचलन छोड़ दिया जाएगा',
			'NetCheckScreen.title' => 'नेटवर्क चेक',
			'NetCheckScreen.warn' => 'नोट: नेटवर्क वातावरण और विचलन नियमों के प्रभाव के कारण, परीक्षण के परिणाम वास्तविक परिणामों के पूरी तरह से बराबर नहीं हैं।',
			'NetCheckScreen.invalidDomain' => 'अमान्य डोमेन नाम',
			'NetCheckScreen.connectivity' => 'नेटवर्क कनेक्टिविटी',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Ipv4 कनेक्शन परीक्षण [${p}] सभी विफल रहे',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Ipv4 कनेक्शन सफल रहा',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Ipv6 कनेक्शन परीक्षण [${p}] सभी विफल रहे, आपका नेटवर्क ipv6 का समर्थन नहीं कर सकता है',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Ipv6 कनेक्शन सफल रहा',
			'NetCheckScreen.connectivityTestOk' => 'नेटवर्क इंटरनेट से जुड़ा है',
			'NetCheckScreen.connectivityTestFailed' => 'नेटवर्क अभी तक इंटरनेट से नहीं जुड़ा है',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'सभी सफलतापूर्वक डाउनलोड किए गए',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'डाउनलोड हो रहा है या डाउनलोड विफल रहा',
			'NetCheckScreen.outbound' => 'प्रॉक्सी सर्वर',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] कनेक्शन सफल रहा',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] कनेक्शन विफल रहा\nत्रुटि:[${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS सर्वर',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS क्वेरी सफल रही\nDNS नियम:[${p2}]\nविलंबता:[${p3} ms]\nपता:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS क्वेरी सफल रही\n nDNS नियम:[${p2}]\nत्रुटि:[${p3}]',
			'NetCheckScreen.host' => 'HTTP कनेक्शन',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nविचलननियम:[${p2}]\nप्रॉक्सी सर्वर:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'कनेक्शन सफल रहा',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'कनेक्शन विफल रहा:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'डोमेन/IP',
			'NetConnectionsFilterScreen.app' => 'ऐप',
			'NetConnectionsFilterScreen.rule' => 'नियम',
			'NetConnectionsFilterScreen.chain' => 'आउटबाउंड',
			'NetConnectionsScreen.copyAsCSV' => 'CSV प्रारूप में कॉपी किया गया',
			'NetConnectionsScreen.selectType' => 'विचलन प्रकार चुनें',
			'PerAppAndroidScreen.title' => 'प्रति-ऐप प्रॉक्सी',
			'PerAppAndroidScreen.whiteListMode' => 'श्वेतसूची मोड',
			'PerAppAndroidScreen.whiteListModeTip' => 'जब सक्षम किया जाता है: केवल चिह्नित ऐप ही प्रॉक्सी होते हैं; जब सक्षम नहीं किया जाता है: केवल अचिह्नित ऐप ही प्रॉक्सी होते हैं',
			'RegionSettingsScreen.title' => 'देश या क्षेत्र',
			'RegionSettingsScreen.Regions' => 'टिप: कृपया अपना वर्तमान देश या क्षेत्र सही ढंग से सेट करें, अन्यथा यह नेटवर्क विचलन समस्याओं का कारण बन सकता है',
			'ServerSelectScreen.title' => 'सर्वर चुनें',
			'ServerSelectScreen.autoSelectServer' => 'स्वचालित रूप से सबसे कम विलंबता वाला सर्वर चुनें',
			'ServerSelectScreen.recentUse' => 'हाल ही में उपयोग किया गया',
			'ServerSelectScreen.myFav' => 'मेरे पसंदीदा',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'चुना गया सर्वर एक स्थानीय पता है और ठीक से काम नहीं कर सकता है:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'चुना गया सर्वर एक IPv6 पता है और इसके लिए [IPv6 सक्षम करें] की आवश्यकता है',
			'ServerSelectScreen.selectDisabled' => 'यह सर्वर अक्षम कर दिया गया है',
			'ServerSelectScreen.error404' => 'विलंबता पहचान में एक त्रुटि हुई, कृपया जांचें कि क्या उसी सामग्री के साथ कोई कॉन्फ़िगरेशन मौजूद है',
			'SettingsScreen.getTranffic' => 'ट्रैफ़िक प्राप्त करें',
			'SettingsScreen.tutorial' => 'ट्यूटोरियल',
			'SettingsScreen.commonlyUsedRulesets' => 'आमतौर पर उपयोग किए जाने वाले नियम सेट',
			'SettingsScreen.htmlBoard' => 'ऑनलाइन पैनल',
			'SettingsScreen.dnsLeakDetection' => 'DNS लीक पहचान',
			'SettingsScreen.proxyLeakDetection' => 'प्रॉक्सी लीक पहचान',
			'SettingsScreen.speedTest' => 'गति परीक्षण',
			'SettingsScreen.rulesetDirectDownlad' => 'नियम सेट डायरेक्ट डाउनलोड',
			'SettingsScreen.hideUnusedDiversionGroup' => 'अप्रयुक्त विचलन नियमों को छिपाएं',
			'SettingsScreen.disableISPDiversionGroup' => '[${_root.meta.isp}] के [${_root.meta.diversionRules}] को अक्षम करें',
			'SettingsScreen.portSettingRule' => 'नियम-आधारित',
			'SettingsScreen.portSettingDirectAll' => 'सभी सीधे',
			'SettingsScreen.portSettingProxyAll' => 'सभी प्रॉक्सी',
			'SettingsScreen.portSettingControl' => 'नियंत्रण और सिंक',
			'SettingsScreen.portSettingCluster' => 'क्लस्टर सेवा',
			'SettingsScreen.modifyPort' => 'पोर्ट बदलें',
			'SettingsScreen.modifyPortOccupied' => 'पोर्ट व्यस्त है, कृपया दूसरे पोर्ट का उपयोग करें',
			'SettingsScreen.ipStrategyTips' => 'सक्षम करने से पहले, कृपया पुष्टि करें कि आपका नेटवर्क IPv6 का समर्थन करता है, अन्यथा कुछ ट्रैफ़िक सामान्य रूप से सुलभ नहीं होगा।',
			'SettingsScreen.tunAppendHttpProxy' => 'VPN में HTTP प्रॉक्सी जोड़ें',
			'SettingsScreen.tunAppendHttpProxyTips' => 'कुछ ऐप वर्चुअल NIC डिवाइस को बायपास करेंगे और सीधे HTTP प्रॉक्सी से कनेक्ट होंगे',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'डोमेन जिन्हें HTTP प्रॉक्सी को बायपास करने की अनुमति है',
			'SettingsScreen.dnsEnableRule' => 'DNS विचलन नियम सक्षम करें',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] समाधान चैनल',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] पर ECS सक्षम करें',
			'SettingsScreen.dnsTestDomain' => 'परीक्षण डोमेन',
			'SettingsScreen.dnsTestDomainInvalid' => 'अमान्य डोमेन',
			'SettingsScreen.dnsTypeOutbound' => 'प्रॉक्सी सर्वर',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS सर्वर',
			'SettingsScreen.dnsEnableRuleTips' => 'सक्षम करने के बाद, डोमेन नाम विचलन नियमों के अनुसार समाधान के लिए संबंधित DNS सर्वर का चयन करेगा',
			'SettingsScreen.dnsEnableFakeIpTips' => 'FakeIP सक्षम करने के बाद, यदि आप VPN डिस्कनेक्ट करते हैं, तो आपके ऐप को पुनरारंभ करने की आवश्यकता हो सकती है; इस सुविधा के लिए [TUN मोड] सक्षम होना आवश्यक है',
			'SettingsScreen.dnsTypeOutboundTips' => '[${_root.SettingsScreen.dnsTypeOutbound}] के लिए डोमेन नाम समाधान',
			'SettingsScreen.dnsTypeDirectTips' => '[${_root.meta.trafficDirect}] के लिए डोमेन नाम समाधान',
			'SettingsScreen.dnsTypeProxyTips' => '[${_root.meta.trafficProxy}] के लिए डोमेन नाम समाधान',
			'SettingsScreen.dnsTypeResolverTips' => '[${_root.SettingsScreen.dnsTypeResolver}] के लिए डोमेन नाम समाधान',
			'SettingsScreen.dnsAutoSetServer' => 'स्वचालित रूप से सर्वर सेट करें',
			'SettingsScreen.dnsResetServer' => 'सर्वर रीसेट करें',
			'SettingsScreen.dnsEnableStaticIPForResolver' => 'स्थिर IP समाधान को प्राथमिकता दें',
			'SettingsScreen.dnsEnableStaticIPForResolverTips' => 'समाधान के दौरान DNS सर्वर को स्वयं को प्रदूषित होने से प्रभावी ढंग से रोकें',
			'SettingsScreen.inboundDomainResolve' => 'आने वाले डोमेन नामों को हल करें',
			'SettingsScreen.privateDirect' => 'निजी नेटवर्क सीधा कनेक्शन',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'कुछ डोमेन नाम जो विचलन नियमों के साथ कॉन्फ़िगर नहीं किए गए हैं, उन्हें IP-आधारित विचलन नियमों से टकराने से पहले हल करने की आवश्यकता है; यह सुविधा प्रॉक्सी पोर्ट [${p}] पर आने वाले अनुरोधों को प्रभावित करती है',
			'SettingsScreen.useRomoteRes' => 'रिमोट संसाधनों का उपयोग करें',
			'SettingsScreen.autoAppendRegion' => 'स्वचालित रूप से मूल नियम जोड़ें',
			'SettingsScreen.autoSelect' => 'स्वचालित चयन',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => '[Front/Chain] प्रॉक्सी सर्वर को अनदेखा करें',
			'SettingsScreen.autoSelectServerInterval' => 'विलंबता जांच के लिए अंतराल',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'वर्तमान सर्वर स्वास्थ्य जांच अंतराल',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'नेटवर्क बदलने पर विलंबता की फिर से जांच करें',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'मैनुअल विलंबता जांच के बाद वर्तमान सर्वर को अपडेट करें',
			'SettingsScreen.autoSelectServerIntervalTips' => 'समय अंतराल जितना छोटा होगा, सर्वर विलंबता डेटा उतना ही समय पर अपडेट होगा, जो अधिक संसाधनों पर कब्जा करेगा और अधिक बिजली की खपत करेगा',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'यदि जांच विफल हो जाती है, तो सर्वर बदल दिया जाता है; यदि सर्वर बदलते समय कोई उपलब्ध सर्वर नहीं मिलता है, तो समूह फिर से विलंबता की जांच करेगा',
			'SettingsScreen.autoSelectServerFavFirst' => '[मेरे पसंदीदा] का उपयोग करने को प्राथमिकता दें',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'यदि [मेरे पसंदीदा] सूची खाली नहीं है, तो [मेरे पसंदीदा] के सर्वर का उपयोग करें',
			'SettingsScreen.autoSelectServerFilter' => 'अमान्य सर्वर फ़िल्टर करें',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'विफल होने वाली सर्वर विलंबता जांच को फ़िल्टर कर दिया जाएगा; यदि फ़िल्टर करने के बाद कोई सर्वर उपलब्ध नहीं है, तो इसके बजाय पहले [${p}] सर्वर का उपयोग किया जाएगा',
			'SettingsScreen.autoSelectServerLimitedNum' => 'सर्वर की अधिकतम संख्या',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'इस संख्या से अधिक होने वाले सर्वर फ़िल्टर कर दिए जाएंगे',
			'SettingsScreen.numInvalid' => 'अमान्य संख्या',
			'SettingsScreen.hideInvalidServer' => 'अमान्य सर्वर छिपाएं',
			'SettingsScreen.sortServer' => 'सर्वर की छँटाई',
			'SettingsScreen.sortServerTips' => 'विलंबता के अनुसार कम से उच्च तक छँटाई करें',
			'SettingsScreen.selectServerHideRecommand' => '[अनुशंसित] छिपाएं',
			'SettingsScreen.selectServerHideRecent' => '[हाल ही में उपयोग किया गया] छिपाएं',
			'SettingsScreen.selectServerHideFav' => '[मेरे पसंदीदा] छिपाएं',
			'SettingsScreen.homeScreen' => 'होम स्क्रीन',
			'SettingsScreen.theme' => 'थीम',
			'SettingsScreen.widgetsAlpha' => 'विजेट्स अल्फा',
			'SettingsScreen.widgetsEmpty' => 'कोई विजेट उपलब्ध नहीं है',
			'SettingsScreen.backgroundImage' => 'पृष्ठभूमि छवि',
			'SettingsScreen.myLink' => 'शॉर्टकट लिंक',
			'SettingsScreen.autoConnectAfterLaunch' => 'लॉन्च के बाद स्वचालित कनेक्शन',
			'SettingsScreen.autoConnectAtBoot' => 'सिस्टम बूट के बाद स्वचालित कनेक्शन',
			'SettingsScreen.autoConnectAtBootTips' => 'सिस्टम समर्थन आवश्यक है; कुछ प्रणालियों को [ऑटो-स्टार्ट] सक्षम करने की भी आवश्यकता हो सकती है।',
			'SettingsScreen.hideAfterLaunch' => 'लॉन्च के बाद विंडो छिपाएं',
			'SettingsScreen.autoSetSystemProxy' => 'कनेक्ट होने पर सिस्टम प्रॉक्सी स्वचालित रूप से सेट करें',
			'SettingsScreen.bypassSystemProxy' => 'डोमेन नाम जिन्हें सिस्टम प्रॉक्सी को बायपास करने की अनुमति है',
			'SettingsScreen.disconnectWhenQuit' => 'ऐप छोड़ने पर डिस्कनेक्ट करें',
			'SettingsScreen.autoAddToFirewall' => 'स्वचालित रूप से फ़ायरवॉल नियम जोड़ें',
			'SettingsScreen.excludeFromRecent' => '[हाल के कार्य] से छिपाएं',
			'SettingsScreen.wakeLock' => 'वेक लॉक',
			'SettingsScreen.hideVpn' => 'VPN आइकन छिपाएं',
			'SettingsScreen.hideVpnTips' => 'IPv6 सक्षम करने से यह सुविधा विफल हो जाएगी',
			'SettingsScreen.allowBypass' => 'ऐप्स को VPN बायपास करने की अनुमति दें',
			'SettingsScreen.importSuccess' => 'आयात सफल रहा',
			'SettingsScreen.rewriteConfirm' => 'यह फ़ाइल मौजूदा स्थानीय कॉन्फ़िगरेशन को ओवरराइट कर देगी। क्या आप जारी रखना चाहते हैं?',
			'SettingsScreen.mergePerapp' => 'स्थानीय [${_root.PerAppAndroidScreen.title}] सूचियों को मर्ज करें',
			'SettingsScreen.networkShare' => 'नेटवर्क शेयर',
			'SettingsScreen.frontProxy' => 'Front/Chain प्रॉक्सी',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'डेटा->Front/Chain प्रॉक्सी सर्वर [एकाधिक प्रॉक्सी सर्वर: ऊपर से नीचे]->प्रॉक्सी सर्वर [${p}]->लक्ष्य सर्वर',
			'SettingsScreen.allowOtherHostsConnect' => 'दूसरों को कनेक्ट करने की अनुमति दें',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'सिस्टम सीमाओं के कारण, इसे सक्षम करने के बाद, इस डिवाइस पर वे एप्लिकेशन जो नेटवर्क एक्सेस के लिए http का उपयोग करते हैं, नेटवर्क से ठीक से कनेक्ट नहीं हो पाएंगे।',
			'SettingsScreen.tunAutoRoute' => 'Auto Route',
			'SettingsScreen.tunAutoRedirect' => 'Auto Redirect',
			'SettingsScreen.tunStrictRoute' => 'Strict Route',
			'SettingsScreen.tunStrictRouteTips' => 'यदि शेयर चालू करने के बाद अन्य लोग इस डिवाइस तक नहीं पहुँच पा रहे हैं, तो कृपया इस स्विच को बंद करने का प्रयास करें',
			'SettingsScreen.loopbackAddress' => 'लूपबैक पता',
			'SettingsScreen.enableCluster' => 'Socks/Http प्रॉक्सी क्लस्टर सक्षम करें',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'दूसरों को क्लस्टर से जुड़ने की अनुमति दें',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'प्रॉक्सी क्लस्टर प्रमाणीकरण',
			'SettingsScreen.tunMode' => 'TUN मोड',
			'SettingsScreen.tuni4Address' => 'IP पता',
			'SettingsScreen.tunModeTips' => 'TUN मोड सिस्टम के सभी ट्रैफ़िक को संभाल लेगा [इस मोड में, आप सिस्टम प्रॉक्सी को अक्षम छोड़ सकते हैं]',
			'SettingsScreen.tunModeRunAsAdmin' => 'TUN मोड के लिए सिस्टम प्रशासक अनुमति की आवश्यकता होती है, कृपया ऐप को प्रशासक के रूप में पुनरारंभ करें',
			'SettingsScreen.tunStack' => 'स्टैक',
			'SettingsScreen.tunHijackTips' => 'बंद करने के बाद, TUN से DNS अनुरोध सीधे संबंधित DNS सर्वर पर भेज दिए जाएंगे',
			'SettingsScreen.launchAtStartup' => 'स्टार्टअप पर लॉन्च करें',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'सिस्टम उपयोगकर्ता बदलते समय ऐप छोड़ें',
			'SettingsScreen.handleScheme' => 'सिस्टम स्कीम कॉल',
			'SettingsScreen.portableMode' => 'पोर्टेबल मोड',
			'SettingsScreen.portableModeDisableTips' => 'यदि आपको पोर्टेबल मोड छोड़ने की आवश्यकता है, तो कृपया [karing] से बाहर निकलें और [karing.exe] के समान निर्देशिका में [profiles] फ़ोल्डर को मैन्युअल रूप से हटा दें',
			'SettingsScreen.accessibility' => 'सुगम्यता',
			'SettingsScreen.handleKaringScheme' => 'karing:// कॉल को संभालें',
			'SettingsScreen.handleClashScheme' => 'clash:// कॉल को संभालें',
			'SettingsScreen.handleSingboxScheme' => 'sing-box:// कॉल को संभालें',
			'SettingsScreen.alwayOnVPN' => 'हमेशा चालू कनेक्शन',
			'SettingsScreen.disconnectAfterSleep' => 'सिस्टम स्लीप के बाद डिस्कनेक्ट करें',
			'SettingsScreen.removeSystemVPNConfig' => 'सिस्टम VPN कॉन्फ़िगरेशन हटाएं',
			'SettingsScreen.timeConnectOrDisconnect' => 'निर्धारित कनेक्ट/डिस्कनेक्ट',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'प्रभावी होने के लिए VPN का कनेक्ट होना आवश्यक है; चालू करने के बाद, [ऑटो स्लीप] अक्षम हो जाएगा',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'कनेक्ट/डिस्कनेक्ट अंतराल ${p} मिनट से कम नहीं हो सकता',
			'SettingsScreen.disableFontScaler' => 'फ़ॉन्ट स्केलिंग अक्षम करें (पुनरारंभ आवश्यक)',
			'SettingsScreen.autoOrientation' => 'स्क्रीन के साथ घुमाएं',
			'SettingsScreen.restartTakesEffect' => 'पुनरारंभ प्रभावी होता है',
			'SettingsScreen.reconnectTakesEffect' => 'पुनः कनेक्शन प्रभावी होता है',
			'SettingsScreen.resetSettings' => 'सेटिंग्स रीसेट करें',
			'SettingsScreen.cleanCache' => 'कैश साफ़ करें',
			'SettingsScreen.cleanCacheDone' => 'सफाई पूरी हुई',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'संस्करण ${p} अपडेट करें',
			'SettingsScreen.follow' => 'हमें फॉलो करें',
			'SettingsScreen.contactUs' => 'हमसे संपर्क करें',
			'SettingsScreen.supportUs' => 'हमारा समर्थन करें',
			'SettingsScreen.rateInApp' => 'हमें रेट करें',
			'SettingsScreen.rateInAppStore' => 'AppStore पर हमें रेट करें',
			'UserAgreementScreen.privacyFirst' => 'आपकी गोपनीयता सबसे पहले आती है',
			'UserAgreementScreen.agreeAndContinue' => 'स्वीकार करें और जारी रखें',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'नया संस्करण [${p}] तैयार है',
			'VersionUpdateScreen.update' => 'अपडेट करने के लिए पुनरारंभ करें',
			'VersionUpdateScreen.cancel' => 'अभी नहीं',
			'CommonWidget.diableAlwayOnVPN' => 'यदि [हमेशा चालू VPN] चालू है, तो कृपया [हमेशा चालू VPN] बंद करें और फिर से कनेक्ट करने का प्रयास करें',
			'CommonWidget.resetPort' => 'कृपया पोर्ट को किसी अन्य उपलब्ध पोर्ट में बदलें या उस एप्लिकेशन को बंद करें जो पोर्ट पर कब्जा कर रहा है।',
			'main.tray.menuOpen' => 'खोलें',
			'main.tray.menuExit' => 'बाहर निकलें',
			'meta.enable' => 'सक्षम करें',
			'meta.disable' => 'अक्षम करें',
			'meta.bydefault' => 'डिफ़ॉल्ट',
			'meta.filter' => 'फ़िल्टर',
			'meta.filterMethod' => 'फ़िल्टर विधि',
			'meta.include' => 'शामिल करें',
			'meta.exclude' => 'बहिष्कृत करें',
			'meta.all' => 'सभी',
			'meta.prefer' => 'वरीयता दें',
			'meta.only' => 'केवल',
			'meta.open' => 'खोलें',
			'meta.close' => 'बंद करें',
			'meta.quit' => 'बाहर निकलें',
			'meta.add' => 'जोड़ें',
			'meta.addSuccess' => 'सफलतापूर्वक जोड़ा गया',
			'meta.addFailed' => ({required Object p}) => 'जोड़ने में विफल:${p}',
			'meta.remove' => 'हटाएं',
			'meta.removeConfirm' => 'क्या आप वाकई हटाना चाहते हैं?',
			'meta.edit' => 'संपादित करें',
			'meta.view' => 'देखें',
			'meta.more' => 'अधिक',
			'meta.tips' => 'जानकारी',
			'meta.copy' => 'कॉपी करें',
			'meta.paste' => 'पेस्ट करें',
			'meta.cut' => 'काटना',
			'meta.save' => 'सहेजें',
			'meta.ok' => 'ठीक है',
			'meta.cancel' => 'रद्द करें',
			'meta.feedback' => 'प्रतिक्रिया',
			'meta.feedbackContent' => 'प्रतिक्रिया सामग्री',
			'meta.feedbackContentHit' => 'आवश्यक, 500 वर्णों तक',
			'meta.feedbackContentCannotEmpty' => 'प्रतिक्रिया सामग्री खाली नहीं हो सकती',
			'meta.faq' => 'FAQ',
			'meta.htmlTools' => 'HTML टूलसेट',
			'meta.download' => 'डाउनलोड',
			'meta.upload' => 'अपलोड',
			'meta.downloadSpeed' => 'डाउनलोड गति',
			'meta.uploadSpeed' => 'अपलोड गति',
			'meta.loading' => 'लोड हो रहा है...',
			'meta.convert' => 'कन्वर्ट करें',
			'meta.check' => 'जांचें',
			'meta.detect' => 'पहचानें',
			'meta.cache' => 'कैश',
			'meta.days' => 'दिन',
			'meta.hours' => 'घंटे',
			'meta.minutes' => 'मिनट',
			'meta.seconds' => 'सेकंड',
			'meta.milliseconds' => 'मिलीसेकंड',
			'meta.tolerance' => 'सहिष्णुता',
			'meta.dateTimePeriod' => 'समय अवधि',
			'meta.protocol' => 'प्रोटोकॉल',
			'meta.search' => 'खोजें',
			'meta.custom' => 'कस्टम',
			'meta.inbound' => 'इनबाउंड',
			'meta.outbound' => 'आउटबाउंड',
			'meta.destination' => 'गंतव्य',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'कनेक्ट करें',
			'meta.disconnect' => 'डिस्कनेक्ट करें',
			'meta.reconnect' => 'पुनः कनेक्ट करें',
			'meta.connected' => 'कनेक्टेड',
			'meta.disconnected' => 'डिस्कनेक्टेड',
			'meta.connecting' => 'कनेक्ट हो रहा है',
			'meta.connectTimeout' => 'कनेक्शन टाइमआउट',
			'meta.timeout' => 'टाइमआउट',
			'meta.timeoutDuration' => 'टाइमआउट अवधि',
			'meta.runDuration' => 'रन अवधि',
			'meta.latency' => 'विलंबता',
			'meta.latencyTest' => 'विलंबता जांच',
			'meta.language' => 'भाषा',
			'meta.next' => 'अगला',
			'meta.done' => 'हो गया',
			'meta.apply' => 'लागू करें',
			'meta.refresh' => 'रीफ्रेश करें',
			'meta.retry' => 'पुनः प्रयास करें?',
			'meta.update' => 'अपडेट करें',
			'meta.updateInterval' => 'अपडेट अंतराल',
			'meta.updateInterval5mTips' => 'न्यूनतम: 5m',
			'meta.updateFailed' => ({required Object p}) => 'अपडेट विफल रहा:${p}',
			'meta.samplingUnit' => 'नमूना समय इकाई',
			'meta.queryResultCount' => 'क्वेरी परिणामों की संख्या',
			'meta.queryLimit' => ({required Object p}) => '${p} डेटा तक दिखाएं',
			'meta.none' => 'कोई नहीं',
			'meta.start' => 'प्रारंभ',
			'meta.pause' => 'विराम',
			'meta.reset' => 'रीसेट',
			'meta.submit' => 'जमा करें',
			'meta.user' => 'उपयोगकर्ता',
			'meta.account' => 'खाता',
			'meta.password' => 'पासवर्ड',
			'meta.decryptPassword' => 'डिक्रोरप्ट पासवर्ड',
			'meta.required' => 'आवश्यक',
			'meta.type' => 'प्रकार',
			'meta.path' => 'पथ',
			'meta.local' => 'स्थानीय',
			'meta.remote' => 'रिमोट',
			'meta.other' => 'अन्य',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'अमान्य URL',
			'meta.urlCannotEmpty' => 'लिंक खाली नहीं हो सकता',
			'meta.urlTooLong' => 'URL बहुत लंबा है (>8182)',
			'meta.copyUrl' => 'लिंक कॉपी करें',
			'meta.openUrl' => 'लिंक खोलें',
			'meta.shareUrl' => 'लिंक साझा करें',
			'meta.speedTestUrl' => 'गति परीक्षण URL',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'स्थिर IP',
			'meta.staticIPTips' => 'आपको [TUN HijackDNS] या [${_root.SettingsScreen.inboundDomainResolve}] सक्षम करने की आवश्यकता है।',
			'meta.isp' => 'VPN प्रदाता',
			'meta.domainSuffix' => 'डोमेन प्रत्यय',
			'meta.domain' => 'डोमेन',
			'meta.domainKeyword' => 'डोमेन कीवर्ड',
			'meta.domainRegex' => 'डोमेन Regex',
			'meta.ip' => 'IP',
			'meta.port' => 'पोर्ट',
			'meta.portRange' => 'पोर्ट रेंज',
			'meta.appPackage' => 'ऐप पैकेज ID',
			'meta.processName' => 'प्रक्रिया नाम',
			'meta.processPath' => 'प्रक्रिया पथ',
			'meta.processDir' => 'प्रक्रिया निर्देशिका',
			'meta.systemProxy' => 'सिस्टम प्रॉक्सी',
			'meta.percentage' => 'प्रतिशत',
			'meta.statistics' => 'सांख्यिकी',
			'meta.statisticsAndAnalysis' => 'सांख्यिकी और विश्लेषण',
			'meta.statisticsDataDesensitize' => 'डेटा विसंवेदीकरण',
			'meta.statisticsDataDesensitizeTips' => 'प्रक्रिया/पैकेज ID/लक्ष्य डोमेन नाम/लक्ष्य IP आदि को * से बदल दिया जाएगा और विसंवेदीकरण के बाद सहेजा जाएगा',
			'meta.records' => 'रिकॉर्ड',
			'meta.requestRecords' => 'अनुरोध रिकॉर्ड',
			'meta.netInterfaces' => 'नेटवर्क इंटरफेस',
			'meta.netSpeed' => 'गति',
			'meta.memoryTrendChart' => 'मेमोरी ट्रेंड चार्ट',
			'meta.goroutinesTrendChart' => 'GoRoutines ट्रेंड चार्ट',
			'meta.trafficTrendChart' => 'ट्रैफ़िक ट्रेंड चार्ट',
			'meta.trafficDistributionChart' => 'ट्रैफ़िक वितरण चार्ट',
			'meta.connectionChart' => 'कनेक्शन ट्रेंड चार्ट',
			'meta.memoryChart' => 'मेमोरी ट्रेंड चार्ट',
			'meta.trafficStatistics' => 'ट्रैफ़िक सांख्यिकी',
			'meta.traffic' => 'ट्रैफ़िक',
			'meta.trafficTotal' => 'कुल ट्रैफ़िक',
			'meta.trafficProxy' => 'प्रॉक्सी ट्रैफ़िक',
			'meta.trafficDirect' => 'सीधा ट्रैफ़िक',
			'meta.website' => 'वेबसाइट',
			'meta.memory' => 'मेमोरी',
			'meta.outboundMode' => 'आउटबाउंड मोड',
			'meta.rule' => 'नियम',
			'meta.global' => 'वैश्विक',
			'meta.qrcode' => 'QR कोड',
			'meta.qrcodeTooLong' => 'टेक्स्ट प्रदर्शित करने के लिए बहुत लंबा है',
			'meta.qrcodeShare' => 'QR कोड साझा करें',
			'meta.textToQrcode' => 'टेक्स्ट से QR कोड',
			'meta.qrcodeScan' => 'QR कोड स्कैन करें',
			'meta.qrcodeScanResult' => 'स्कैन परिणाम',
			'meta.qrcodeScanFromImage' => 'छवि से स्कैन करें',
			'meta.qrcodeScanResultFailed' => 'छवि का विश्लेषण करने में विफल, कृपया सुनिश्चित करें कि स्क्रीनशॉट एक मान्य QR कोड है',
			'meta.qrcodeScanResultEmpty' => 'स्कैन परिणाम खाली है',
			'meta.screenshot' => 'स्क्रीनशॉट',
			'meta.backupAndSync' => 'बैकअप और सिंक',
			'meta.autoBackup' => 'स्वचालित बैकअप',
			'meta.noProfileGotAutoBackup' => 'यदि [${_root.meta.myProfiles}] जैसा डेटा खो जाता है, तो आप इसे [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] या अन्य बैकअप स्रोतों (जैसे iCloud या Webdav आदि) से पुनर्स्थापित कर सकते हैं',
			'meta.autoBackupAddProfile' => 'प्रोफ़ाइल जोड़ने के बाद',
			'meta.autoBackupRemoveProfile' => 'प्रोफ़ाइल हटाने के बाद',
			'meta.profile' => 'प्रोफ़ाइल',
			'meta.currentProfile' => 'वर्तमान प्रोफ़ाइल',
			'meta.importAndExport' => 'आयात और निर्यात',
			'meta.import' => 'आयात',
			'meta.importFromUrl' => 'URL से आयात करें',
			'meta.export' => 'निर्यात',
			'meta.send' => 'भेजें',
			'meta.receive' => 'प्राप्त करें',
			'meta.sendConfirm' => 'भेजने की पुष्टि करें?',
			'meta.termOfUse' => 'सेवा की शर्तें',
			'meta.privacyPolicy' => 'गोपनीयता और नीति',
			'meta.about' => 'के बारे में',
			'meta.name' => 'नाम',
			'meta.version' => 'संस्करण',
			'meta.notice' => 'सूचना',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'कार्रवाई:${p}\nकारण:${p1}',
			'meta.sort' => 'पुनर्व्यवस्थित करें',
			'meta.novice' => 'नौसिखिया मोड',
			'meta.willCompleteAfterRebootInstall' => 'सिस्टम एक्सटेंशन का इंस्टॉलेशन पूरा करने के लिए कृपया अपने डिवाइस को पुनरारंभ करें',
			'meta.willCompleteAfterRebootUninstall' => 'सिस्टम एक्सटेंशन का अनइंस्टॉलेशन पूरा करने के लिए कृपया अपने डिवाइस को पुनरारंभ करें',
			'meta.requestNeedsUserApproval' => '1. कृपया Karing को [सिस्टम सेटिंग्स]-[गोपनीयता और सुरक्षा] में सिस्टम एक्सटेंशन इंस्टॉल करने की [अनुमति दें]\n2. [सिस्टम सेटिंग्स]-[सामान्य]-[लॉगिन आइटम एक्सटेंशन]-[नेटवर्क एक्सटेंशन] [karingServiceSE] सक्षम करें\nपूरा होने के बाद फिर से कनेक्ट करें',
			'meta.FullDiskAccessPermissionRequired' => 'कृपया [सिस्टम सेटिंग्स]-[गोपनीयता और सुरक्षा]-[पूर्ण डिस्क एक्सेस अनुमति] में [karingServiceSE] अनुमति सक्षम करें और फिर से कनेक्ट करें',
			'meta.tvMode' => 'TV मोड',
			'meta.recommended' => 'अनुशंसित',
			'meta.innerError' => ({required Object p}) => 'आंतरिक त्रुटि:${p}',
			'meta.logicOperation' => 'तार्किक संचालन',
			'meta.share' => 'साझा करें',
			'meta.candidateWord' => 'उम्मीदवार शब्द',
			'meta.keywordOrRegx' => 'कीवर्ड/नियमित',
			'meta.importFromClipboard' => 'क्लिपबोर्ड से आयात करें',
			'meta.exportToClipboard' => 'क्लिपबोर्ड पर निर्यात करें',
			'meta.server' => 'सर्वर',
			'meta.ads' => 'विज्ञापन',
			'meta.adsRemove' => 'विज्ञापन हटाएं',
			'meta.donate' => 'दान करें',
			'meta.diversion' => 'विचलन',
			'meta.diversionRules' => 'विचलन नियम',
			'meta.diversionCustomGroup' => 'कस्टम विचलन समूह',
			'meta.urlTestCustomGroup' => 'कस्टम ऑटो चयन',
			'meta.setting' => 'सेटिंग्स',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN सिंक',
			'meta.lanSyncNotQuitTips' => 'सिंक पूरा होने से पहले इस इंटरफ़ेस को न छोड़ें',
			'meta.deviceNoSpace' => 'डिस्क स्थान अपर्याप्त है',
			'meta.hideSystemApp' => 'सिस्टम ऐप छिपाएं',
			'meta.hideAppIcon' => 'ऐप आइकन छिपाएं',
			'meta.hideDockIcon' => 'डॉक आइकन छिपाएं',
			'meta.remark' => 'टिप्पणी',
			'meta.remarkExist' => 'टिप्पणी पहले से मौजूद है, कृपया दूसरा नाम उपयोग करें',
			'meta.remarkCannotEmpty' => 'टिप्पणियाँ खाली नहीं हो सकतीं',
			'meta.remarkTooLong' => '32 वर्णों तक की टिप्पणियाँ',
			'meta.openDir' => 'फ़ाइल निर्देशिका खोलें',
			'meta.fileChoose' => 'फ़ाइल चुनें',
			'meta.filePathCannotEmpty' => 'फ़ाइल पथ खाली नहीं हो सकता',
			'meta.fileNotExist' => ({required Object p}) => 'फ़ाइल मौजूद नहीं है:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'अमान्य फ़ाइल प्रकार:${p}',
			'meta.uwpExemption' => 'UWP नेटवर्क अलगाव छूट',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'प्रोफ़ाइल प्राप्त करें',
			'meta.addProfile' => 'प्रोफ़ाइल जोड़ें',
			'meta.myProfiles' => 'मेरी प्रोफ़ाइल',
			'meta.profileEdit' => 'प्रोफ़ाइल संपादित करें',
			'meta.profileEditUrlExist' => 'URL पहले से मौजूद है, कृपया दूसरा URL उपयोग करें',
			'meta.profileEditReloadAfterProfileUpdate' => 'प्रोफ़ाइल अपडेट के बाद पुनः लोड करें',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'स्वचालित प्रोफ़ाइल अपडेट के बाद विलंबता परीक्षण शुरू करें',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN कनेक्ट होना चाहिए और [प्रोफ़ाइल अपडेट के बाद पुनः लोड करें] सक्षम होना चाहिए',
			'meta.profileEditTestLatencyAutoRemove' => 'विलंबता परीक्षण में विफल होने वाले सर्वरों को स्वचालित रूप से हटा दें',
			'meta.profileEditTestLatencyAutoRemoveTips' => '3 बार तक प्रयास करें',
			'meta.profileImport' => 'प्रोफ़ाइल फ़ाइल आयात करें',
			'meta.profileAddUrlOrContent' => 'प्रोफ़ाइल लिंक जोड़ें',
			'meta.profileExists' => 'प्रोफ़ाइल पहले से मौजूद है, कृपया इसे बार-बार न जोड़ें',
			'meta.profileUrlOrContent' => 'प्रोफ़ाइल लिंक/सामग्री',
			'meta.profileUrlOrContentHit' => 'प्रोफ़ाइल लिंक/सामग्री [आवश्यक] (Clash, V2ray (बैच समर्थित), Stash, Karing, Sing-box, Shadowsocks, Sub प्रोफ़ाइल लिंक का समर्थन करता है)',
			'meta.profileUrlOrContentCannotEmpty' => 'प्रोफ़ाइल लिंक खाली नहीं हो सकता',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'प्रारूप गलत है, कृपया इसे ठीक करें और फिर से जोड़ें:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'जोड़ने में विफल: ${p}, कृपया [UserAgent] को संशोधित करने का प्रयास करें और फिर से प्रयास करें, या कॉन्फ़िगरेशन लिंक खोलने के लिए डिवाइस के अंतर्निहित ब्राउज़र का उपयोग करें और ब्राउज़र द्वारा डाउनलोड की गई कॉन्फ़िगरेशन फ़ाइल को इस एप्लिकेशन में आयात करें',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'जोड़ने में विफल: ${p}, कृपया प्रॉक्सी चालू करें या वर्तमान प्रॉक्सी नोड को संशोधित करें और फिर से प्रयास करें',
			'meta.profileAddParseFailed' => 'प्रोफ़ाइल को पार्स करने में विफल',
			'meta.profileAddNoServerAvaliable' => 'कोई सर्वर उपलब्ध नहीं है, सुनिश्चित करें कि प्रोफ़ाइल लिंक या प्रोफ़ाइल फ़ाइल मान्य है; यदि आपकी प्रोफ़ाइल GitHub से है, तो कृपया पृष्ठ पर [Raw] बटन के माध्यम से लिंक प्राप्त करें',
			'meta.profileAddWrapSuccess' => 'प्रोफ़ाइल सफलतापूर्वक उत्पन्न हुई, कृपया देखने के लिए [${_root.meta.myProfiles}] पर जाएं',
			'diversionRulesKeep' => '[${_root.meta.isp}] के [${_root.meta.diversionRules}] को बनाए रखें',
			'diversionCustomGroupPreset' => 'प्रीसेट [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'नोट: सक्षम किए गए आइटम [${_root.meta.diversionCustomGroup}] और [${_root.meta.diversionRules}] में जोड़े/ओवरराइट किए जाएंगे',
			'diversionCustomGroupAddTips' => 'नोट: जोड़ने के बाद, आपको क्रम को मैन्युअल रूप से समायोजित करने की आवश्यकता हो सकती है, अन्यथा नया जोड़ा गया विचलन प्रभावी नहीं हो सकता है',
			'rulesetEnableTips' => 'टिप: विकल्पों को चालू करने के बाद, कृपया प्रासंगिक नियम सेट करने के लिए [${_root.meta.diversionRules}] पर जाएं, अन्यथा वे प्रभावी नहीं होंगे',
			'ispUserAgentTips' => '[${_root.meta.isp}] [HTTP] अनुरोध में [UserAgent] के आधार पर विभिन्न सदस्यता प्रकारों का डेटा भेजेगा',
			'ispDiversionTips' => '[${_root.meta.isp}] ट्रैफ़िक विचलन नियम प्रदान करता है; [V2Ray] प्रकार की सदस्यता ट्रैफ़िक विचलन नियमों का समर्थन नहीं करती है',
			'isp.bind' => '[${_root.meta.isp}] से बांधें ',
			'isp.unbind' => ({required Object p}) => 'अनबाइंड करें[${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'फॉलो करें[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] अमान्य या समाप्त हो गया',
			'permission.camera' => 'कैमरा',
			'permission.screen' => 'स्क्रीन रिकॉर्डिंग',
			'permission.appQuery' => 'ऐप सूची प्राप्त करें',
			'permission.request' => ({required Object p}) => '[${p}] अनुमति चालू करें',
			'permission.requestNeed' => ({required Object p}) => 'कृपया [${p}] अनुमति चालू करें',
			'tls.insecure' => 'प्रमाणपत्र सत्यापन छोड़ें',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'TLS फ्रैगमेंट सक्षम करें',
			_ => null,
		} ?? switch (path) {
			'tls.fragmentSize' => 'TLS फ्रैगमेंट आकार',
			'tls.fragmentSleep' => 'TLS फ्रैगमेंट स्लीप',
			'tls.mixedCaseSNIEnable' => 'TLS मिक्स्ड केस SNI सक्षम करें',
			'tls.paddingEnable' => 'TLS पैडिंग सक्षम करें',
			'tls.paddingSize' => 'TLS पैडिंग आकार',
			'outboundRuleMode.currentSelected' => 'वर्तमान में चयनित',
			'outboundRuleMode.urltest' => 'स्वचालित चयन',
			'outboundRuleMode.direct' => 'सीधा',
			'outboundRuleMode.block' => 'ब्लॉक करें',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'प्रोफ़ाइल अपडेट',
			'theme.light' => 'लाइट',
			'theme.dark' => 'डार्क',
			'theme.auto' => 'ऑटो',
			'downloadProxyStrategy' => 'डाउनलोड चैनल',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: डोमेन नाम को हल करने के लिए प्रॉक्सी सर्वर के माध्यम से DNS सर्वर से जुड़ें\n[${_root.dnsProxyResolveMode.direct}]: डोमेन नाम को हल करने के लिए सीधे DNS सर्वर से जुड़ें\n[${_root.dnsProxyResolveMode.fakeip}]: प्रॉक्सी सर्वर आपकी ओर से डोमेन नाम हल करता है; यदि आप VPN कनेक्शन डिस्कनेक्ट करते हैं, तो आपके एप्लिकेशन को पुनरारंभ करने की आवश्यकता हो सकती है; केवल [TUN] इनबाउंड ट्रैफ़िक के लिए प्रभावी',
			'routeFinal' => 'final',
			'protocolSniff' => 'प्रोटोकॉल स्निफ',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'कृपया [${p}] का उपयोग करें',
			'turnOffPrivateDirect' => 'कृपया पहले [निजी नेटवर्क सीधा कनेक्शन] चालू करें',
			'targetConnectFailed' => ({required Object p}) => '[${p}] से जुड़ने में विफल। कृपया सुनिश्चित करें कि डिवाइस एक ही LAN में हैं',
			'appleTVSync' => 'Apple TV - Karing में वर्तमान कोर कॉन्फ़िगरेशन को सिंक करें',
			'appleTVSyncDone' => 'सिंक पूरा हो गया है। कनेक्शन शुरू करने/पुनरारंभ करने के लिए कृपया Apple TV - Karing पर जाएं',
			'appleTVRemoveCoreConfig' => 'Apple TV - Karing कोर कॉन्फ़िगरेशन हटाएं',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - Karing कोर कॉन्फ़िगरेशन हटा दिया गया; VPN सेवा डिस्कनेक्ट हो गई',
			'appleTVUrlInvalid' => 'अमान्य URL, कृपया Apple TV - Karing खोलें और Karing द्वारा प्रदर्शित QR कोड स्कैन करें',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] में यह सुविधा नहीं है, कृपया अपडेट करें और फिर से प्रयास करें',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'कोर मुख्य संस्करण मेल नहीं खाता, कृपया [${p}] अपडेट करें और फिर से प्रयास करें',
			'remoteProfileEditConfirm' => 'प्रोफ़ाइल अपडेट होने के बाद, नोड परिवर्तन बहाल हो जाएंगे। जारी रखें?',
			'mustBeValidHttpsURL' => 'एक मान्य https URL होना चाहिए',
			'fileNotExistReinstall' => ({required Object p}) => 'फ़ाइल गायब है [${p}], कृपया फिर से इंस्टॉल करें',
			'noNetworkConnect' => 'कोई इंटरनेट कनेक्शन नहीं',
			'sudoPassword' => 'sudo पासवर्ड (TUN मोड के लिए आवश्यक)',
			'turnOffNetworkBeforeInstall' => 'अपडेट इंस्टॉल करने से पहले [हवाई जहाज मोड] पर स्विच करने की अनुशंसा की जाती है',
			'latencyTestResolveIP' => 'मैन्युअल रूप से जांच करते समय, आउटलेट IP हल करें',
			'latencyTestConcurrency' => 'समवर्तीता',
			'edgeRuntimeNotInstalled' => 'वर्तमान डिवाइस में Edge WebView2 रनटाइम इंस्टॉल नहीं है, इसलिए पृष्ठ प्रदर्शित नहीं किया जा सकता है। कृपया Edge WebView2 रनटाइम (x64) डाउनलोड और इंस्टॉल करें, ऐप को पुनरारंभ करें और फिर से प्रयास करें।',
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
