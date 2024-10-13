/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 5
/// Strings: 2205 (441 per locale)
///
/// Built on 2024-10-10 at 06:50 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	ar(languageCode: 'ar', build: _StringsAr.build),
	fa(languageCode: 'fa', build: _StringsFa.build),
	ru(languageCode: 'ru', build: _StringsRu.build),
	zhCn(languageCode: 'zh', countryCode: 'CN', build: _StringsZhCn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsAboutScreenEn AboutScreen = _StringsAboutScreenEn._(_root);
	late final _StringsAddProfileByImportFromFileScreenEn AddProfileByImportFromFileScreen = _StringsAddProfileByImportFromFileScreenEn._(_root);
	late final _StringsAddProfileByLinkOrContentScreenEn AddProfileByLinkOrContentScreen = _StringsAddProfileByLinkOrContentScreenEn._(_root);
	late final _StringsAddProfileByScanQrcodeScanScreenEn AddProfileByScanQrcodeScanScreen = _StringsAddProfileByScanQrcodeScanScreenEn._(_root);
	late final _StringsBackupAndSyncLanSyncScreenEn BackupAndSyncLanSyncScreen = _StringsBackupAndSyncLanSyncScreenEn._(_root);
	late final _StringsBackupAndSyncWebdavScreenEn BackupAndSyncWebdavScreen = _StringsBackupAndSyncWebdavScreenEn._(_root);
	late final _StringsDiversionGroupCustomEditScreenEn DiversionGroupCustomEditScreen = _StringsDiversionGroupCustomEditScreenEn._(_root);
	late final _StringsDiversionRuleDetectScreenEn DiversionRuleDetectScreen = _StringsDiversionRuleDetectScreenEn._(_root);
	late final _StringsDiversionRulesScreenEn DiversionRulesScreen = _StringsDiversionRulesScreenEn._(_root);
	late final _StringsDnsSettingsScreenEn DnsSettingsScreen = _StringsDnsSettingsScreenEn._(_root);
	late final _StringsFeedbackScreenEn FeedbackScreen = _StringsFeedbackScreenEn._(_root);
	late final _StringsFileContentViewerScreenEn FileContentViewerScreen = _StringsFileContentViewerScreenEn._(_root);
	late final _StringsHomeScreenEn HomeScreen = _StringsHomeScreenEn._(_root);
	late final _StringsLaunchFailedScreenEn LaunchFailedScreen = _StringsLaunchFailedScreenEn._(_root);
	late final _StringsMyProfilesEditScreenEn MyProfilesEditScreen = _StringsMyProfilesEditScreenEn._(_root);
	late final _StringsMyProfilesMergeScreenEn MyProfilesMergeScreen = _StringsMyProfilesMergeScreenEn._(_root);
	late final _StringsMyProfilesScreenEn MyProfilesScreen = _StringsMyProfilesScreenEn._(_root);
	late final _StringsNetCheckScreenEn NetCheckScreen = _StringsNetCheckScreenEn._(_root);
	late final _StringsNetConnectionsFilterScreenEn NetConnectionsFilterScreen = _StringsNetConnectionsFilterScreenEn._(_root);
	late final _StringsNetConnectionsScreenEn NetConnectionsScreen = _StringsNetConnectionsScreenEn._(_root);
	late final _StringsPerAppAndroidScreenEn PerAppAndroidScreen = _StringsPerAppAndroidScreenEn._(_root);
	late final _StringsQrcodeScreenEn QrcodeScreen = _StringsQrcodeScreenEn._(_root);
	late final _StringsRegionSettingsScreenEn RegionSettingsScreen = _StringsRegionSettingsScreenEn._(_root);
	late final _StringsServerSelectScreenEn ServerSelectScreen = _StringsServerSelectScreenEn._(_root);
	late final _StringsSettingsScreenEn SettingsScreen = _StringsSettingsScreenEn._(_root);
	late final _StringsSpeedTestSettingsScreenEn SpeedTestSettingsScreen = _StringsSpeedTestSettingsScreenEn._(_root);
	late final _StringsTextToQrCodeScreenEn TextToQrCodeScreen = _StringsTextToQrCodeScreenEn._(_root);
	late final _StringsUrlTestSettingsScreenEn UrlTestSettingsScreen = _StringsUrlTestSettingsScreenEn._(_root);
	late final _StringsUserAgreementScreenEn UserAgreementScreen = _StringsUserAgreementScreenEn._(_root);
	late final _StringsVersionUpdateScreenEn VersionUpdateScreen = _StringsVersionUpdateScreenEn._(_root);
	late final _StringsCommonWidgetEn CommonWidget = _StringsCommonWidgetEn._(_root);
	late final _StringsServerManagerEn ServerManager = _StringsServerManagerEn._(_root);
	late final _StringsMainEn main = _StringsMainEn._(_root);
	String get enable => 'Enable';
	String get disable => 'Disable';
	String get prefer => 'Prefer';
	String get only => 'Only';
	String get open => 'Open';
	String get close => 'Close';
	String get quit => 'Quit';
	String get add => 'Add';
	String get remove => 'Remove';
	String get edit => 'Edit';
	String get view => 'View';
	String get more => 'More';
	String get addProfile => 'Add Profile';
	String get addSuccess => 'Added successfully';
	String addSuccessThen({required Object p}) => 'Profile generated successfully, please go to [${p}] to view';
	String addFailed({required Object p}) => 'Add failed:${p}';
	String get removeConfirm => 'Are you sure to delete?';
	String get tips => 'Info';
	String get copy => 'Copy';
	String get ok => 'Ok';
	String get cancel => 'Cancel';
	String get feedback => 'Feedback';
	String get faq => 'FAQ';
	String get download => 'Download';
	String get loading => 'Loading...';
	String updateFailed({required Object p}) => 'Update failed:${p}';
	String get days => 'Days';
	String get hours => 'Hours';
	String get minutes => 'Minutes';
	String get seconds => 'Seconds';
	String get protocol => 'Protocol';
	String get search => 'Search';
	String get custom => 'Custom';
	String get connect => 'Connect';
	String get disconnect => 'Disconnect';
	String get connected => 'Connected';
	String get disconnected => 'Disconnected';
	String get connecting => 'Connecting';
	String get connectTimeout => 'Connect Timeout';
	String get timeout => 'Timeout';
	String get language => 'Language';
	String get next => 'Next';
	String get done => 'Done';
	String get apply => 'Apply';
	String get refresh => 'Refresh';
	String get retry => 'Retry?';
	String get none => 'None';
	String get reset => 'Reset';
	String get submit => 'Submit';
	String get account => 'Account';
	String get password => 'Password';
	String get required => 'Required';
	String get diversion => 'Diversion';
	String get diversionRules => 'Diversion Rules';
	String get diversionRulesEnable => 'Enable [ISP] Diversion Rules';
	String get diversionCustomGroup => 'Custom Diversion Group';
	String get diversionCustomGroupPreset => 'Preset [Custom Diversion Group]';
	String get diversionCustomGroupPresetTips => 'Note: Enabled items will be added/overwritten to [Custom Diversion Group] and [Diversion Rules]';
	String get diversionCustomGroupAddTips => 'Note: After adding, you may need to manually adjust the order, otherwise the newly added diversion may not take effect';
	String get urlTestCustomGroup => 'Custom Proxy Group';
	String get rulesetEnableTips => 'Tip: After turning on the options, please go to[Diversion Rules]to set the relevant rules, otherwise they will not take effect';
	String get ispUserAgentTips => '[ISP] will send data of different subscription types based on [UserAgent] in [HTTP] request';
	String get ispDiversionTips => '[ISP] provides traffic diversion rules; [V2Ray] type subscriptions do not support traffic diversion rules';
	String get staticIP => 'Static IP';
	String get other => 'Other';
	String get dns => 'DNS';
	String get url => 'URL';
	String get isp => 'ISP';
	String get tls => 'TLS';
	String get userAgent => 'UserAgent';
	String get urlInvalid => 'Invalid URL';
	String get outboundActionCurrentSelected => 'Current Selected';
	String get outboundActionUrltest => 'Auto Select';
	String get outboundActionDirect => 'Direct';
	String get outboundActionBlock => 'Block';
	String get routeFinal => 'final';
	String get rulesetGeoSite => 'GeoSite';
	String get rulesetGeoIp => 'GeoIP';
	String get rulesetAcl => 'ACL';
	String get iCloud => 'iCloud';
	String get appleTV => 'Apple TV';
	String get webdav => 'Webdav';
	String get setting => 'Settings';
	String get protocolSniff => 'Protocol Sniff';
	String get protocolSniffOverrideDestination => 'The Sniff domain name override the connection target address';
	String get remark => 'Remark';
	String get remarkCannotEmpty => 'Remarks can not be empty';
	String get remarkTooLong => 'Remarks up to 32 characters';
	String get remarkExist => 'Remark already exists, please use another name';
	String get domainSuffix => 'Domain Suffix';
	String get domain => 'Domain';
	String get domainKeyword => 'Domain Keyword';
	String get domainRegex => 'Domain Regex';
	String get ip => 'IP';
	String get port => 'Port';
	String get appPackage => 'App Package Name';
	String get processName => 'Process Name';
	String get processPath => 'Process Path';
	String get systemProxy => 'System Proxy';
	String get netInterfaces => 'Net Interfaces';
	String get netSpeed => 'Speed';
	String get website => 'Website';
	String get rule => 'Rule';
	String get global => 'Global';
	String get qrcode => 'QR Code';
	String get scanQrcode => 'Scan QR Code';
	String get scanResult => 'Scan Result';
	String get backupAndSync => 'Backup and Sync';
	String get importAndExport => 'Import and Export';
	String get import => 'Import';
	String get export => 'Export';
	String get termOfUse => 'Terms of Service';
	String get privacyPolicy => 'Privacy & Policy';
	String get about => 'About';
	String get name => 'Name';
	String get version => 'Version';
	String get notice => 'Notice';
	String get sort => 'Reorder';
	String get novice => 'Novice Mode';
	String get recommended => 'Recommend';
	String innerError({required Object p}) => 'Inner Error:${p}';
	String get logicOperation => 'Logic Operation';
	String get share => 'Share';
	String get candidateWord => 'Candidate Words';
	String get keywordsOrRegx => 'Keywords/Regular';
	String get importFromClipboard => 'Import From Clipboard';
	String get exportToClipboard => 'Export to Clipboard';
	String get server => 'Server';
	String get appleTVConnectTurnOfprivateDirect => 'Please turn on [Private network direct connection] first';
	String targetConnectFailed({required Object p}) => 'Failed to connect to [${p}]. Please make sure the devices are in the same LAN and enable [Private Network Direct Connection]';
	String get appleTVSync => 'Synchronize the current core configuration to Apple TV - Karing';
	String get appleTVSyncDone => 'Synchronization is complete. Please go to Apple TV - Karing to start the connection/restart the connection';
	String get appleTVRemoveCoreConfig => 'Delete Apple TV - Karing Core Configuration';
	String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing\'s Core Configuration deleted; VPN service disconnected';
	String get appleTVUrlInvalid => 'Invalid URL, please open Apple TV - Karing and scan the QR code displayed by Karing';
	String get remoteProfileEditConfirm => 'After the Profile is updated, the node changes will be restored. Continue?';
	String invalidFileType({required Object p}) => 'Invalid file type:${p}';
	Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
	};
}

// Path: AboutScreen
class _StringsAboutScreenEn {
	_StringsAboutScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get installRefer => 'Install Refer';
	String get versionChannel => 'Auto Update Channel';
	String get disableUAReport => 'Turn Off Action Data Report';
	String get disableUAReportTip => 'Behavioral data reporting helps us improve the product experience; versions lower than the main version will automatically turn off all data reporting (except [App Activation])';
	String get devOptions => 'Developer Options';
	String get enableDebugLog => 'Enable Debug Log';
	String get viewFilsContent => 'View Files';
	String get enablePprof => 'Enable pprof';
	String get pprofPanel => 'pprof Panel';
	String get openDir => 'Open File Directory';
	String get useOriginalSBProfile => 'Use original sing-box Profile';
}

// Path: AddProfileByImportFromFileScreen
class _StringsAddProfileByImportFromFileScreenEn {
	_StringsAddProfileByImportFromFileScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Import Profile File';
	String get chooseFile => 'Select File';
	String get configExist => 'The Profile already exists, please do not add it repeatedly';
}

// Path: AddProfileByLinkOrContentScreen
class _StringsAddProfileByLinkOrContentScreenEn {
	_StringsAddProfileByLinkOrContentScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Add Profile Link';
	String get updateTimerInterval => 'Update interval';
	String get updateTimerIntervalTips => 'To disable please set to:<5m';
	String get profileLinkContent => 'Profile Link/Content';
	String get profileLinkContentHit => 'Profile Link/Content [Required] (Support Clash,V2ray(batch supported),Stash,Karing,Sing-box,Shadowsocks,Sub Profile links)';
	String get subscriptionCannotEmpty => 'Profile Link can not be empty';
	String get configExist => 'The Profile already exists, please do not add it repeatedly';
	String get invalidUrl => 'The Profile Link is too long';
	String addFailedFormatException({required Object p}) => 'The format is wrong, please correct it and add it again:${p}';
	String addFailedThenDownloadAndImport({required Object p}) => 'Add failed: ${p}, please try to modify the [UserAgent] and try again, or use the device\'s built-in browser to open the configuration link and import the configuration file downloaded by the browser into this application';
	String addFailedHandshakeException({required Object p}) => 'Add failed: ${p}, please tun on the proxy or modify the current proxy node and try again';
}

// Path: AddProfileByScanQrcodeScanScreen
class _StringsAddProfileByScanQrcodeScanScreenEn {
	_StringsAddProfileByScanQrcodeScanScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get copy => 'Copy Link';
	String get open => 'Open Link';
	String get requestCameraPermission => 'Please enable camera permission';
	String get requestScreenAccess => 'Please go to System Settings - Privacy and Security - Screen Recording to add permissions for this application';
	String get screenshot => 'Screenshot';
	String get scanFromImage => 'Scan From Image';
	String get scanNoResult => 'Failed to parse the image, please make sure the screenshot is a valid QR code';
	String get scanEmptyResult => 'Scan Result is empty';
	String scanException({required Object p}) => 'Failed to parse the image, please make sure the screenshot is a valid QR code:${p}';
}

// Path: BackupAndSyncLanSyncScreen
class _StringsBackupAndSyncLanSyncScreenEn {
	_StringsBackupAndSyncLanSyncScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'LAN Sync';
	String get lanSyncNotQuitTips => 'Do not exit this interface before synchronization is completed';
}

// Path: BackupAndSyncWebdavScreen
class _StringsBackupAndSyncWebdavScreenEn {
	_StringsBackupAndSyncWebdavScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get webdavServerUrl => 'Server Url';
	String get webdavRequired => 'Can not be empty';
	String get webdavLoginFailed => 'Login failed:';
	String get webdavListFailed => 'Failed to get file list:';
}

// Path: DiversionGroupCustomEditScreen
class _StringsDiversionGroupCustomEditScreenEn {
	_StringsDiversionGroupCustomEditScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String invalidDomain({required Object p}) => 'Invalid [Domain]:${p}';
	String invalidIpCidr({required Object p}) => 'Invalid [IP Cidr]:${p}';
	String invalidPort({required Object p}) => 'Invalid [Port]:${p}';
	String invalidRuleSet({required Object p}) => 'Invalid [Rule Set]:${p}, The URL must be a valid https URL and a binary file with the file extension .srs/.json';
	String invalidRuleSetBuildIn({required Object p}) => 'Invalid [Rule Set(build-in)]:${p}, The format is geosite:xxx or geoip:xxx or acl:xxx, and xxx should be a valid rule name';
	String get setDiversionRule => 'Tip: After saving, please go to [Diversion Rules] to set relevant rules, otherwise they will not take effect';
}

// Path: DiversionRuleDetectScreen
class _StringsDiversionRuleDetectScreenEn {
	_StringsDiversionRuleDetectScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Diversion Rule Detect';
	String get detect => 'Detect';
	String get rule => 'Rule:';
	String get outbound => 'Proxy Server:';
}

// Path: DiversionRulesScreen
class _StringsDiversionRulesScreenEn {
	_StringsDiversionRulesScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get diversionRulesMatchTips => 'Tip: Try to match the rules from top to bottom. If no rule is matched, use [final]';
}

// Path: DnsSettingsScreen
class _StringsDnsSettingsScreenEn {
	_StringsDnsSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ispCanNotEmpty => 'ISP can not be empty';
	String get urlCanNotEmpty => 'URL can not be empty';
	String error({required Object p}) => 'Unsupported type:${p}';
	String get dnsDesc => 'The first column of delay data is the direct connection query delay;\nThe second column: Turn on [[Proxy Traffic]Resolve DNS through proxy server]: the delay data is the query delay forwarded through the current proxy server; if the [[Proxy Traffic]Resolve DNS through proxy server]: The delay data is the direct connection query delay';
}

// Path: FeedbackScreen
class _StringsFeedbackScreenEn {
	_StringsFeedbackScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Feedback Content';
	String get contentHit => 'Required, up to 500 characters';
	String get contentCannotEmpty => 'Feedback content can not be empty';
}

// Path: FileContentViewerScreen
class _StringsFileContentViewerScreenEn {
	_StringsFileContentViewerScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'File Content Viewer';
	String get chooseFile => 'Select File';
	String get clearFileContent => 'Are you sure to clear the content of the file?';
	String get clearFileContentTips => 'Are you sure to clear the content of the Profile file? Clearing the Profile file may cause data loss or abnormal application functions, please operate with caution';
}

// Path: HomeScreen
class _StringsHomeScreenEn {
	_StringsHomeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get toSelectServer => 'Please Select a Server';
	String get invalidServer => 'is invalid, please choose again';
	String get disabledServer => 'is disabled, please choose again';
	String get expiredServer => 'No servers available, profiles may be expired or disabled';
	String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	String get trafficTotal => 'Traffic Total';
	String get trafficProxy => 'Traffic Proxy';
	String get myLinkEmpty => 'Please set up [Shortcut Link] before using it';
	String get deviceNoSpace => 'Not enough disk space';
	String tooMuchServers({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}], and the connection may fail due to system memory limitations';
}

// Path: LaunchFailedScreen
class _StringsLaunchFailedScreenEn {
	_StringsLaunchFailedScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalidProcess => 'The app failed to start [Invalid process name], please reinstall the app to a separate directory';
	String get invalidProfile => 'The app failed to start [Failed to access the profile], please reinstall the app';
	String get invalidVersion => 'The app failed to start [Invalid version], please reinstall the app';
	String get systemVersionLow => 'The app failed to start [system version too low]';
	String get startFromUNC => 'The installation path is invalid, please reinstall it to a valid path';
}

// Path: MyProfilesEditScreen
class _StringsMyProfilesEditScreenEn {
	_StringsMyProfilesEditScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Profile Edit';
	String get urlExist => 'URL already exists, please use another URL';
	String get updateTimerInterval => 'Update interval';
	String get updateTimerIntervalTips => 'To disable please set to:<5m';
	String get reloadAfterProfileUpdate => 'Reload after Profile update';
	String get testLatencyAfterProfileUpdate => 'Start latency tests after Profile Automatically update';
	String get testLatencyAfterProfileUpdateTips => 'VPN needs to be connected, and [Reload after Profile update] Enabled';
	String get testLatencyAutoRemove => 'Automatically remove servers that fail latency tests';
	String get testLatencyAutoRemoveTips => 'Try up to 3 times';
}

// Path: MyProfilesMergeScreen
class _StringsMyProfilesMergeScreenEn {
	_StringsMyProfilesMergeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get profilesMerge => 'Profiles Merge';
	String get profilesMergeTarget => 'Target Profile';
	String get profilesMergeSource => 'Source Profiles';
	String get profilesMergeTips => 'Tip: Diversion of the source profiles will be discarded';
}

// Path: MyProfilesScreen
class _StringsMyProfilesScreenEn {
	_StringsMyProfilesScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Profiles';
	String get atLeastOneEnable => 'Cannot be disabled, please keep at least one profile enable';
}

// Path: NetCheckScreen
class _StringsNetCheckScreenEn {
	_StringsNetCheckScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Net Check';
	String get warn => 'Note: Due to the influence of network environment and diversion rules, the test results are not completely equivalent to the actual results.';
	String get check => 'Check';
	String get invalidDomain => 'Invalid Domain Name';
	String get connectivity => 'Network Connectivity';
	String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4 Connection test [${p}] all failed';
	String get connectivityTestIpv4Ok => 'Ipv4 connection succeeded';
	String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6 Connection test [${p}] all failed, Your network may not support ipv6';
	String get connectivityTestIpv6Ok => 'Ipv6 connection succeeded';
	String get connectivityTestOk => 'The network is connected to the Internet';
	String get connectivityTestFailed => 'The network is not yet connected to the Internet';
	String get remoteRulesetsDownloadOk => 'All downloaded successfully';
	String get remoteRulesetsDownloadNotOk => 'Downloading or download failed';
	String get outbound => 'Proxy Server';
	String outboundOk({required Object p}) => '[${p}] connection succeeded';
	String outboundFailed({required Object p1, required Object p2}) => '[${p1}] connection failed\nError:[${p2}]';
	String get dnsServer => 'DNS Server';
	String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS query succeeded\nDNS Rule:[${p2}]\nLatency:[${p3} ms]\nAddress:[${p4}]';
	String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS query succeeded\n nDNS Rule:[${p2}]\nError:[${p3}]';
	String get host => 'HTTP Connection';
	String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nDiversionRule:[${p2}]\nProxy Server:[${p3}]';
	String get hostConnectionOk => 'connection succeeded';
	String hostConnectionFailed({required Object p}) => 'connection failed:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _StringsNetConnectionsFilterScreenEn {
	_StringsNetConnectionsFilterScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Connections Filter';
	String get hostIp => 'Domain/IP';
	String get app => 'App';
	String get rule => 'Rule';
	String get chain => 'Outbound';
}

// Path: NetConnectionsScreen
class _StringsNetConnectionsScreenEn {
	_StringsNetConnectionsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Connections';
	String get copyAsCSV => 'Copied to CSV format';
	String get selectType => 'Select Diversion Type';
}

// Path: PerAppAndroidScreen
class _StringsPerAppAndroidScreenEn {
	_StringsPerAppAndroidScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Per-App Proxy';
	String get whiteListMode => 'Whitelist Mode';
	String get whiteListModeTip => 'When enabled: only the apps that have been checked are proxies; when not enabled: only the apps that are not checked are proxies';
	String get hideSystemApp => 'Hide System Apps';
	String get hideAppIcon => 'Hide App Icons';
	String get enableAppQueryPermission => 'Turn on [App list query] Permission';
}

// Path: QrcodeScreen
class _StringsQrcodeScreenEn {
	_StringsQrcodeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get tooLong => 'The text is too long to display';
	String get copy => 'Copy Link';
	String get open => 'Open Link';
	String get share => 'Share Link';
	String get shareImage => 'Share QR Code';
}

// Path: RegionSettingsScreen
class _StringsRegionSettingsScreenEn {
	_StringsRegionSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Country Or Region';
	String get Regions => 'Tip: Please set your current country or region correctly, otherwise it may cause network diversion problems';
}

// Path: ServerSelectScreen
class _StringsServerSelectScreenEn {
	_StringsServerSelectScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select Server';
	String get autoSelectServer => 'Auto select the server with the lowest latency';
	String get recentUse => 'Recently Used';
	String get myFav => 'My Favs';
	String selectLocal({required Object p}) => 'The selected server is a local address and may not work properly:${p}';
	String get selectRequireEnableIPv6 => 'The selected server is an IPv6 address and requires [Enable IPv6]';
	String get selectDisabled => 'This server has been disabled';
	String get error404 => 'Latency detection encountered an error, please check if there is a configuration with the same content';
}

// Path: SettingsScreen
class _StringsSettingsScreenEn {
	_StringsSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String ispFaq({required Object p}) => 'FAQ[${p}]';
	String cleanISP({required Object p}) => 'Clear ISP[${p}]';
	String get openISP => 'Open ISP link';
	String get cleanISPNoParam => 'Clear ISP Info';
	String get getTranffic => 'Get Traffic';
	String get tutorial => 'Tutorial';
	String get commonlyUsedRulesets => 'Commonly Used Rulesets';
	String get howToRemoveAds => 'How to remove ads';
	String get htmlBoard => 'Online Panel';
	String get dnsLeakDetection => 'DNS Leaks Detection';
	String get speedTest => 'Speed Test';
	String get downloadProfilePreferProxy => 'Prefer Proxy to Download Profile';
	String get downloadProfilePreferProxyTips => 'If currently connected, the profile will be downloaded through the connected proxy first';
	String get rulesetDirectDownlad => 'Rule Set Direct Download';
	String get hideUnusedDiversionGroup => 'Hide Unused Diversion Groups';
	String get disableISPDiversionGroup => 'Disable ISP Diversion Rules';
	String get portSetting => 'Port';
	String get portSettingRule => 'Rule Based';
	String get portSettingDirectAll => 'Direct All';
	String get portSettingProxyAll => 'Proxy All';
	String get portSettingControl => 'Control and Sync';
	String get portSettingCluster => 'Cluster Service';
	String get modifyPort => 'Modify Port';
	String get ipStrategyTips => 'Before enabling, please confirm that your network supports IPv6, otherwise some traffic cannot be accessed normally.';
	String get tunAppendHttpProxy => 'Append HTTP Proxy to VPN';
	String get tunAppendHttpProxyTips => 'Some apps will bypass virtual NIC Device and directly connect to HTTP proxy';
	String get tlsInsecureEnable => 'Skip Certificate Verification';
	String get tlsFragmentEnable => 'Enable TLS Fragment';
	String get tlsFragmentSize => 'TLS Fragment Size';
	String get tlsFragmentSleep => 'TLS Fragment Sleep';
	String get tlsMixedCaseSNIEnable => 'Enable TLS Mixed SNI';
	String get tlsPaddingEnable => 'Enable TLS Padding';
	String get tlsPaddingSize => 'TLS Padding Size';
	String get dnsEnableRule => 'Enable DNS Diversion rules';
	String get dnsEnableFakeIp => 'Enable FakeIP';
	String get dnsEnableClientSubnet => 'Enable ECS';
	String get dnsEnableProxyResolveByProxy => '[Proxy Traffic]Resolve DNS through proxy server';
	String get dnsEnableFinalResolveByProxy => '[final]Resolve DNS through proxy server';
	String get dnsTestDomain => 'Test Domain';
	String get dnsTestDomainInvalid => 'Invalid Domain';
	String get dnsTypeOutbound => 'Proxy Server';
	String get dnsTypeDirect => 'Direct Traffic';
	String get dnsTypeProxy => 'Proxy Traffic';
	String get dnsTypeResolver => 'DNS Server';
	String get dnsEnableRuleTips => 'After enabling, the domain name will select the corresponding DNS server for resolution according to the diversion rules';
	String get dnsEnableFakeIpTips => 'After enabling FakeIP, if you disconnect from VPN, your app may need to be restarted; this feature requires [TUN mode] to be enabled';
	String get dnsTypeOutboundTips => 'Domain name resolution for Proxy Server';
	String get dnsTypeDirectTips => 'Domain name resolution for Direct Traffic';
	String get dnsTypeProxyTips => 'Domain name resolution for Proxy Traffic';
	String get dnsTypeResolverTips => 'Domain name resolution for Other DNS Server';
	String get dnsTypeFinalTips => 'Domain name resolution for Other Traffic';
	String get dnsAutoSetServer => 'Auto Setup Server';
	String get dnsResetServer => 'Reset Server';
	String get inboundDomainResolve => 'Resolve Inbound Domain names';
	String get privateDirect => 'Private Network Direct connection';
	String inboundDomainResolveTips({required Object p}) => 'Some domain names that are not configured with diversion rules need to be resolved before they can hit the IP-based diversion rules; this feature affects inbound requests to the proxy port [${p}]';
	String get useRomoteRes => 'Use Remote Resources';
	String get autoSelect => 'Auto Select';
	String get autoSelectServerIgnorePerProxyServer => 'Ignore [Per-Proxy] proxy server';
	String get autoSelectServerInterval => 'Latency Checks Interval';
	String get autoSelectServerReTestIfNetworkUpdate => 'Re-check Latency when Network Changes';
	String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Update the Current Server after Manual Latency Check';
	String get autoSelectServerIntervalTips => 'The shorter the time interval, the more timely the server latency data updates, which will occupy more resources and consume more power';
	String get autoSelectServerFavFirst => 'Pri-Use [My Favs]';
	String get autoSelectServerFavFirstTips => 'If the [My Favs] list is not empty, Then use the servers in [My Favs]';
	String get autoSelectServerFilter => 'Filter Invalid Servers';
	String autoSelectServerFilterTips({required Object p}) => 'Server latency checks that fail will be filtered out; if no server is available after filtering, the first [${p}] servers will be used instead';
	String get autoSelectServerLimitedNum => 'Maximum number of servers';
	String get autoSelectServerLimitedNumTips => 'Servers exceeding this number will be filtered out';
	String get numInvalid => 'Invalid number';
	String get hideInvalidServer => 'Hide Invalid Servers';
	String get sortServer => 'Servers Sorting';
	String get sortServerTips => 'Sort by latency from low to high';
	String get selectServerHideRecommand => 'Hide [Recommend]';
	String get selectServerHideRecent => 'Hide [Recently Used]';
	String get selectServerHideFav => 'Hide [My Favs]';
	String get homeScreen => 'Home Screen';
	String get theme => 'Theme';
	String get myLink => 'Shortcut Link';
	String get myLinkInvalid => 'Invalid URL';
	String get autoConnectAfterLaunch => 'Auto Connection after Launch';
	String get hideAfterLaunch => 'Hide window after startup';
	String get autoSetSystemProxy => 'Auto Set System Proxy when Connected';
	String get disconnectWhenQuit => 'Disconnect when App Exits';
	String get allowBypass => 'Allow Apps to Bypass VPN';
	String get lanSyncTo => 'Sync to others';
	String get lanSyncFrom => 'Sync from others';
	String get lanSyncScanQRcode => 'Scan QR code to Sync';
	String get syncToConfirm => 'Confirm sync to the other party?';
	String get syncDone => 'Sync completed';
	String get importSuccess => 'Import Success';
	String get rewriteConfirm => 'This file will overwrite the existing local configuration. Do you want to continue?';
	String get networkShare => 'Network Sharing';
	String get frontProxy => 'Per-Proxy';
	String get frontProxyTips => 'Data->Per-Proxy server->Proxy server->Target server';
	String get allowOtherHostsConnect => 'Allow Others to Connect';
	String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	String get tunAutoRoute => 'Auto Route';
	String get tunStrictRoute => 'Strict Route';
	String get tunStrictRouteTips => 'If after turning on sharing, others cannot access this device, please try turning off this switch';
	String get enableCluster => 'Enable Socks/Http Proxy Cluster';
	String get clusterAllowOtherHostsConnect => 'Allow Others to Connect to Cluster';
	String clusterAllowOtherHostsConnectTips({required Object hp}) => 'http://127.0.0.1:${hp}/get_proxies';
	String get clusterAuth => 'Proxy Cluster Authentication';
	String get clusterConfirm => 'Please confirm that the servers latency have been checked, and proxy services will not be created if they are not checked or checked incorrectly';
	String get tunMode => 'TUN Mode';
	String get tunModeTips => 'The TUN mode will take over all the traffic of the system [In this mode, you can leave the system proxy unenabled]';
	String get tunModeRunAsAdmin => 'The TUN mode requires system administrator permissions, please restart the app as an administrator';
	String get tunStack => 'Stack';
	String get launchAtStartup => 'Launch at Startup';
	String get quitWhenSwitchSystemUser => 'Exit App when Switch System Users';
	String get handleScheme => 'System Scheme Call';
	String get portableMode => 'Portable Mode';
	String get portableModeDisableTips => 'If you need to exit portable mode, please exit [karing] and manually delete the [profiles] folder in the same directory as [karing.exe]';
	String get handleKaringScheme => 'Handle karing:// Call';
	String get handleClashScheme => 'Handle clash:// Call';
	String get handleSingboxScheme => 'Handle sing-box:// Call';
	String get removeSystemVPNConfig => 'Delete system VPN configuration';
	String get timeConnectOrDisconnect => 'Scheduled connect/disconnect';
	String get timeConnectOrDisconnectTips => 'VPN must be connected to take effect; after it is turned on, [Automatic Sleep] will be disabled';
	String timeConnectAndDisconnectInterval({required Object p}) => 'The connection/disconnection interval cannot be less than ${p} minutes';
	String get disableFontScaler => 'Disable Font scaling(Restart takes effect)';
	String get autoOrientation => 'Rotate with the screen';
	String get restartTakesEffect => 'Restart takes effect';
	String get resetSettings => 'Reset Settings';
	String get cleanCache => 'Cleanup Cache';
	String get cleanCacheDone => 'Cleanup completed';
	String get appleTestFlight => 'Apple TestFlight';
	String get appleAppStore => 'Apple AppStore';
	String hasNewVersion({required Object p}) => 'Update Version ${p}';
	String get follow => 'Follow Us';
	String get contactUs => 'Contact Us';
	String get rateInApp => 'Rate Us';
	String get rateInAppStore => 'Rate Us in AppStore';
}

// Path: SpeedTestSettingsScreen
class _StringsSpeedTestSettingsScreenEn {
	_StringsSpeedTestSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Speed Test URL';
	String get error => 'Must be Valid https URL';
}

// Path: TextToQrCodeScreen
class _StringsTextToQrCodeScreenEn {
	_StringsTextToQrCodeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Text To QR Code';
	String get convert => 'Convert';
}

// Path: UrlTestSettingsScreen
class _StringsUrlTestSettingsScreenEn {
	_StringsUrlTestSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Latency Checks URL';
	String get error => 'Must be Valid https URL';
}

// Path: UserAgreementScreen
class _StringsUserAgreementScreenEn {
	_StringsUserAgreementScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get privacyFirst => 'Your Privacy Comes First';
	String get agreeAndContinue => 'Accept & Continue';
}

// Path: VersionUpdateScreen
class _StringsVersionUpdateScreenEn {
	_StringsVersionUpdateScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String versionReady({required Object p}) => 'The new version[${p}] is ready';
	String get update => 'Restart To Update';
	String get cancel => 'Not Now';
}

// Path: CommonWidget
class _StringsCommonWidgetEn {
	_StringsCommonWidgetEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get diableAlwayOnVPN => 'If [Always on VPN] is turned on, please turn off [Always on VPN] and try connecting again';
	String get resetPort => 'Please change the port to another available port or close the application occupying the port.';
}

// Path: ServerManager
class _StringsServerManagerEn {
	_StringsServerManagerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get noServerAvaliable => 'No server avaliable, Make sure the Profile Link or Profile File is valid;  if your Profile comes from GitHub, please obtain the link from the [Raw] button on the page';
	String get filePathCannotEmpty => 'The file path can not be empty';
	String fileNotExist({required Object p}) => 'File does not exist:${p}';
	String get urlCannotEmpty => 'Link can not be empty';
	String get invalidUrl => 'Invalid Profile Link';
	String get parseFailed => 'Parsing Profile failed';
}

// Path: main
class _StringsMainEn {
	_StringsMainEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsMainTrayEn tray = _StringsMainTrayEn._(_root);
}

// Path: main.tray
class _StringsMainTrayEn {
	_StringsMainTrayEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get menuOpen => '    Open    ';
	String get menuExit => '    Exit    ';
}

// Path: <root>
class _StringsAr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsAr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
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

	@override late final _StringsAr _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAboutScreenAr AboutScreen = _StringsAboutScreenAr._(_root);
	@override late final _StringsAddProfileByImportFromFileScreenAr AddProfileByImportFromFileScreen = _StringsAddProfileByImportFromFileScreenAr._(_root);
	@override late final _StringsAddProfileByLinkOrContentScreenAr AddProfileByLinkOrContentScreen = _StringsAddProfileByLinkOrContentScreenAr._(_root);
	@override late final _StringsAddProfileByScanQrcodeScanScreenAr AddProfileByScanQrcodeScanScreen = _StringsAddProfileByScanQrcodeScanScreenAr._(_root);
	@override late final _StringsBackupAndSyncLanSyncScreenAr BackupAndSyncLanSyncScreen = _StringsBackupAndSyncLanSyncScreenAr._(_root);
	@override late final _StringsBackupAndSyncWebdavScreenAr BackupAndSyncWebdavScreen = _StringsBackupAndSyncWebdavScreenAr._(_root);
	@override late final _StringsDiversionGroupCustomEditScreenAr DiversionGroupCustomEditScreen = _StringsDiversionGroupCustomEditScreenAr._(_root);
	@override late final _StringsDiversionRuleDetectScreenAr DiversionRuleDetectScreen = _StringsDiversionRuleDetectScreenAr._(_root);
	@override late final _StringsDiversionRulesScreenAr DiversionRulesScreen = _StringsDiversionRulesScreenAr._(_root);
	@override late final _StringsDnsSettingsScreenAr DnsSettingsScreen = _StringsDnsSettingsScreenAr._(_root);
	@override late final _StringsFeedbackScreenAr FeedbackScreen = _StringsFeedbackScreenAr._(_root);
	@override late final _StringsFileContentViewerScreenAr FileContentViewerScreen = _StringsFileContentViewerScreenAr._(_root);
	@override late final _StringsHomeScreenAr HomeScreen = _StringsHomeScreenAr._(_root);
	@override late final _StringsLaunchFailedScreenAr LaunchFailedScreen = _StringsLaunchFailedScreenAr._(_root);
	@override late final _StringsMyProfilesEditScreenAr MyProfilesEditScreen = _StringsMyProfilesEditScreenAr._(_root);
	@override late final _StringsMyProfilesMergeScreenAr MyProfilesMergeScreen = _StringsMyProfilesMergeScreenAr._(_root);
	@override late final _StringsMyProfilesScreenAr MyProfilesScreen = _StringsMyProfilesScreenAr._(_root);
	@override late final _StringsNetCheckScreenAr NetCheckScreen = _StringsNetCheckScreenAr._(_root);
	@override late final _StringsNetConnectionsFilterScreenAr NetConnectionsFilterScreen = _StringsNetConnectionsFilterScreenAr._(_root);
	@override late final _StringsNetConnectionsScreenAr NetConnectionsScreen = _StringsNetConnectionsScreenAr._(_root);
	@override late final _StringsPerAppAndroidScreenAr PerAppAndroidScreen = _StringsPerAppAndroidScreenAr._(_root);
	@override late final _StringsQrcodeScreenAr QrcodeScreen = _StringsQrcodeScreenAr._(_root);
	@override late final _StringsRegionSettingsScreenAr RegionSettingsScreen = _StringsRegionSettingsScreenAr._(_root);
	@override late final _StringsServerSelectScreenAr ServerSelectScreen = _StringsServerSelectScreenAr._(_root);
	@override late final _StringsSettingsScreenAr SettingsScreen = _StringsSettingsScreenAr._(_root);
	@override late final _StringsSpeedTestSettingsScreenAr SpeedTestSettingsScreen = _StringsSpeedTestSettingsScreenAr._(_root);
	@override late final _StringsTextToQrCodeScreenAr TextToQrCodeScreen = _StringsTextToQrCodeScreenAr._(_root);
	@override late final _StringsUrlTestSettingsScreenAr UrlTestSettingsScreen = _StringsUrlTestSettingsScreenAr._(_root);
	@override late final _StringsUserAgreementScreenAr UserAgreementScreen = _StringsUserAgreementScreenAr._(_root);
	@override late final _StringsVersionUpdateScreenAr VersionUpdateScreen = _StringsVersionUpdateScreenAr._(_root);
	@override late final _StringsCommonWidgetAr CommonWidget = _StringsCommonWidgetAr._(_root);
	@override late final _StringsServerManagerAr ServerManager = _StringsServerManagerAr._(_root);
	@override late final _StringsMainAr main = _StringsMainAr._(_root);
	@override String get enable => 'يُمكَِن';
	@override String get disable => 'إبطال';
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
	@override String get keywordsOrRegx => 'الكلمات الرئيسية/العادية';
	@override String get importFromClipboard => 'استيراد من الحافظة';
	@override String get exportToClipboard => 'تصدير إلى الحافظة';
	@override String get server => 'الخادم';
	@override String get appleTVConnectTurnOfprivateDirect => 'يرجى تمكين [الاتصال المباشر بالشبكة الخاصة] أولاً';
	@override String targetConnectFailed({required Object p}) => 'فشل الاتصال بـ [${p}]، يرجى التأكد من وجود الجهاز في نفس الشبكة المحلية (LAN) وتمكين [الاتصال المباشر بالشبكة الخاصة]';
	@override String get appleTVSync => 'مزامنة التكوين الأساسي الحالي مع Apple TV - Karing';
	@override String get appleTVSyncDone => 'اكتملت المزامنة، برجاء الانتقال إلى Apple TV - Karing لفتح/إعادة تشغيل الاتصال';
	@override String get appleTVRemoveCoreConfig => 'إزالة Apple TV - Karing Core Configuration';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - تم حذف الملف التعريفي الأساسي لـ Karing؛ وتم قطع اتصال خدمة VPN';
	@override String get appleTVUrlInvalid => 'عنوان URL غير صالح، يرجى فتح Apple TV - Karing، ومسح رمز QR الذي يعرضه Karing';
	@override String get remoteProfileEditConfirm => 'بعد تحديث التكوين، ستتم استعادة تعديلات العقدة. هل تريد المتابعة؟';
	@override String invalidFileType({required Object p}) => 'نوع الملف غير صالح:${p}';
	@override Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
	};
}

// Path: AboutScreen
class _StringsAboutScreenAr implements _StringsAboutScreenEn {
	_StringsAboutScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'تثبيت الرجوع';
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
class _StringsAddProfileByImportFromFileScreenAr implements _StringsAddProfileByImportFromFileScreenEn {
	_StringsAddProfileByImportFromFileScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'استيراد ملف الملف الشخصي';
	@override String get chooseFile => 'حدد الملف';
	@override String get configExist => 'الملف الشخصي موجود بالفعل ، من فضلك لا تضيفه مرارًا وتكرارًا';
}

// Path: AddProfileByLinkOrContentScreen
class _StringsAddProfileByLinkOrContentScreenAr implements _StringsAddProfileByLinkOrContentScreenEn {
	_StringsAddProfileByLinkOrContentScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إضافة رابط ملف التعريف';
	@override String get updateTimerInterval => 'الفاصل الزمني للتحديث';
	@override String get updateTimerIntervalTips => 'لتعطيل من فضلك ضبط على:<5m';
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
class _StringsAddProfileByScanQrcodeScanScreenAr implements _StringsAddProfileByScanQrcodeScanScreenEn {
	_StringsAddProfileByScanQrcodeScanScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

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
class _StringsBackupAndSyncLanSyncScreenAr implements _StringsBackupAndSyncLanSyncScreenEn {
	_StringsBackupAndSyncLanSyncScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'LAN SYNC';
	@override String get lanSyncNotQuitTips => 'لا تخرج من هذه الواجهة قبل اكتمال التزامن';
}

// Path: BackupAndSyncWebdavScreen
class _StringsBackupAndSyncWebdavScreenAr implements _StringsBackupAndSyncWebdavScreenEn {
	_StringsBackupAndSyncWebdavScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'عنوان URL الخادم';
	@override String get webdavRequired => 'لايمكن ان يكون فارغا';
	@override String get webdavLoginFailed => 'فشل تسجيل الدخول:';
	@override String get webdavListFailed => 'فشل في الحصول على قائمة الملفات:';
}

// Path: DiversionGroupCustomEditScreen
class _StringsDiversionGroupCustomEditScreenAr implements _StringsDiversionGroupCustomEditScreenEn {
	_StringsDiversionGroupCustomEditScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'غير صالح [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => 'غير صالح [IP Cidr]:${p}';
	@override String invalidPort({required Object p}) => 'غير صالح [Port]:${p}';
	@override String invalidRuleSet({required Object p}) => 'غير صالح [Rule Set]:${p}, يجب أن يكون عنوان URL عنوان URL HTTPS صالحًا وملفًا ثنائيًا مع ملحق الملف .SRS';
	@override String invalidRuleSetBuildIn({required Object p}) => 'غير صالح [Rule Set(build-in)]:${p} غير صالحة، التنسيق هو geosite:xxx أو geoip:xxx أو acl:xxx، ويجب أن يكون xxx اسم قاعدة صالحًا';
	@override String get setDiversionRule => 'نصيحة: بعد الحفظ، يرجى الانتقال إلى [قواعد التحويل] لتعيين القواعد ذات الصلة، وإلا فلن تصبح سارية المفعول.';
}

// Path: DiversionRuleDetectScreen
class _StringsDiversionRuleDetectScreenAr implements _StringsDiversionRuleDetectScreenEn {
	_StringsDiversionRuleDetectScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قاعدة التحويل اكتشف';
	@override String get detect => 'يكشف';
	@override String get rule => 'قاعدة:';
	@override String get outbound => 'مخدم بروكسي:';
}

// Path: DiversionRulesScreen
class _StringsDiversionRulesScreenAr implements _StringsDiversionRulesScreenEn {
	_StringsDiversionRulesScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'نصيحة: حاول مطابقة القواعد من الأعلى إلى الأسفل، إذا لم تتم مطابقة أي قاعدة، استخدم [نهائي]';
}

// Path: DnsSettingsScreen
class _StringsDnsSettingsScreenAr implements _StringsDnsSettingsScreenEn {
	_StringsDnsSettingsScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'لا يمكن أن يكون ISP فارغًا';
	@override String get urlCanNotEmpty => 'لا يمكن أن يكون عنوان URL فارغًا';
	@override String error({required Object p}) => 'نوع غير مدعوم:${p}';
	@override String get dnsDesc => 'العمود الأول من بيانات التأخير هو تأخير استعلام الاتصال المباشر;\nالعمود الثاني: شغله [[حركة الوكيل]حل DNS من خلال خادم الوكيل]: بيانات التأخير هي تأخير الاستعلام الذي تم إعادة توجيهه من خلال خادم الوكيل الحالي; إذا [[حركة الوكيل]حل DNS من خلال خادم الوكيل]: بيانات التأخير هي تأخير استعلام الاتصال المباشر';
}

// Path: FeedbackScreen
class _StringsFeedbackScreenAr implements _StringsFeedbackScreenEn {
	_StringsFeedbackScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get content => 'محتوى ردود الفعل';
	@override String get contentHit => 'مطلوب ، ما يصل إلى 500 حرف';
	@override String get contentCannotEmpty => 'لا يمكن أن يكون محتوى التعليقات فارغًا';
}

// Path: FileContentViewerScreen
class _StringsFileContentViewerScreenAr implements _StringsFileContentViewerScreenEn {
	_StringsFileContentViewerScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملف محتوى الملف';
	@override String get chooseFile => 'حدد الملف';
	@override String get clearFileContent => 'هل أنت متأكد من مسح محتوى الملف؟';
	@override String get clearFileContentTips => 'هل أنت متأكد من مسح محتوى ملف الملف الشخصي؟قد يتسبب تطهير ملف الملف الشخصي في فقدان البيانات أو وظائف التطبيق غير الطبيعية ، يرجى العمل بحذر';
}

// Path: HomeScreen
class _StringsHomeScreenAr implements _StringsHomeScreenEn {
	_StringsHomeScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

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
class _StringsLaunchFailedScreenAr implements _StringsLaunchFailedScreenEn {
	_StringsLaunchFailedScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'فشل التطبيق في البدء [اسم عملية غير صالح] ، يرجى إعادة تثبيت التطبيق إلى دليل منفصل';
	@override String get invalidProfile => 'فشل التطبيق في البدء [فشل في الوصول إلى الملف الشخصي] ، يرجى إعادة تثبيت التطبيق';
	@override String get invalidVersion => 'فشل التطبيق في بدء [إصدار غير صالح] ، يرجى إعادة تثبيت التطبيق';
	@override String get systemVersionLow => 'فشل بدء تشغيل التطبيق [إصدار النظام منخفض جدًا]';
	@override String get startFromUNC => 'مسار التثبيت غير صالح ، يرجى إعادة تثبيته إلى مسار صالح';
}

// Path: MyProfilesEditScreen
class _StringsMyProfilesEditScreenAr implements _StringsMyProfilesEditScreenEn {
	_StringsMyProfilesEditScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تحرير الملف الشخصي';
	@override String get urlExist => 'عنوان URL موجود بالفعل ، يرجى استخدام عنوان URL آخر';
	@override String get updateTimerInterval => 'الفاصل الزمني للتحديث';
	@override String get updateTimerIntervalTips => 'لتعطيل يرجى تعيين:<5m';
	@override String get reloadAfterProfileUpdate => 'إعادة التحميل بعد تحديث الملف الشخصي';
	@override String get testLatencyAfterProfileUpdate => 'ابدأ اختبارات الكمون بعد التحديث تلقائيًا';
	@override String get testLatencyAfterProfileUpdateTips => 'يجب توصيل VPN ، وتمكين [إعادة التحميل بعد تحديث الملف الشخصي]';
	@override String get testLatencyAutoRemove => 'إزالة الخوادم التي تفشل تلقائيا اختبارات الكمون';
	@override String get testLatencyAutoRemoveTips => 'جرب ما يصل إلى 3 مرات';
}

// Path: MyProfilesMergeScreen
class _StringsMyProfilesMergeScreenAr implements _StringsMyProfilesMergeScreenEn {
	_StringsMyProfilesMergeScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'دمج الملامح';
	@override String get profilesMergeTarget => 'ملف تعريف الهدف';
	@override String get profilesMergeSource => 'ملفات تعريف المصدر';
	@override String get profilesMergeTips => 'نصيحة: سيتم تجاهل تحويل ملفات تعريف المصدر';
}

// Path: MyProfilesScreen
class _StringsMyProfilesScreenAr implements _StringsMyProfilesScreenEn {
	_StringsMyProfilesScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مظهر';
	@override String get atLeastOneEnable => 'لا يمكن تعطيله ، يرجى الاحتفاظ بملف تعريف واحد على الأقل';
}

// Path: NetCheckScreen
class _StringsNetCheckScreenAr implements _StringsNetCheckScreenEn {
	_StringsNetCheckScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

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
class _StringsNetConnectionsFilterScreenAr implements _StringsNetConnectionsFilterScreenEn {
	_StringsNetConnectionsFilterScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تصفية الاتصالات';
	@override String get hostIp => 'المجال/IP';
	@override String get app => 'برنامج';
	@override String get rule => 'قاعدة';
	@override String get chain => 'خارج';
}

// Path: NetConnectionsScreen
class _StringsNetConnectionsScreenAr implements _StringsNetConnectionsScreenEn {
	_StringsNetConnectionsScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'روابط';
	@override String get copyAsCSV => 'نسخ إلى تنسيق CSV';
	@override String get selectType => 'حدد نوع التحويل';
}

// Path: PerAppAndroidScreen
class _StringsPerAppAndroidScreenAr implements _StringsPerAppAndroidScreenEn {
	_StringsPerAppAndroidScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'لكل وكيل تطبيق';
	@override String get whiteListMode => 'وضع القائمة البيضاء';
	@override String get whiteListModeTip => 'عند التمكين: فقط التطبيقات التي تم فحصها هي وكلاء ؛عندما لا يتم تمكينها: فقط التطبيقات التي لم يتم فحصها هي وكلاء';
	@override String get hideSystemApp => 'إخفاء تطبيقات النظام';
	@override String get hideAppIcon => 'إخفاء أيقونة التطبيق';
	@override String get enableAppQueryPermission => 'قم بتشغيل الإذن [استعلام قائمة التطبيقات]';
}

// Path: QrcodeScreen
class _StringsQrcodeScreenAr implements _StringsQrcodeScreenEn {
	_StringsQrcodeScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get tooLong => 'النص طويل جدًا لعرضه';
	@override String get copy => 'نسخ الوصلة';
	@override String get open => 'افتح الرابط';
	@override String get share => 'شارك الرابط';
	@override String get shareImage => 'شارك رمز الاستجابة السريعة';
}

// Path: RegionSettingsScreen
class _StringsRegionSettingsScreenAr implements _StringsRegionSettingsScreenEn {
	_StringsRegionSettingsScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الدولة او المنطقة';
	@override String get Regions => '  نصيحة: يرجى تعيين بلدك أو منطقتك الحالية بشكل صحيح ، وإلا فقد يتسبب في مشاكل في تحويل الشبكة';
}

// Path: ServerSelectScreen
class _StringsServerSelectScreenAr implements _StringsServerSelectScreenEn {
	_StringsServerSelectScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

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
class _StringsSettingsScreenAr implements _StringsSettingsScreenEn {
	_StringsSettingsScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String ispFaq({required Object p}) => 'أسئلة مكررة[${p}]';
	@override String cleanISP({required Object p}) => 'ISP واضح[${p}]';
	@override String get openISP => 'فتح ISP رابط';
	@override String get cleanISPNoParam => 'مسح معلومات مزود خدمة الإنترنت ';
	@override String get getTranffic => 'احصل على حركة المرور';
	@override String get tutorial => 'درس تعليمي';
	@override String get commonlyUsedRulesets => 'مجموعات القواعد شائعة الاستخدام';
	@override String get howToRemoveAds => 'كيفية إزالة الإعلانات';
	@override String get htmlBoard => 'لوحة على الانترنت';
	@override String get dnsLeakDetection => 'كشف تسرب DNS';
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
	@override String get autoSelectServerIgnorePerProxyServer => 'تجاهل الخادم الوكيل [الوكيل الأمامي].';
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
	@override String get lanSyncTo => 'مزامنة للآخرين ';
	@override String get lanSyncFrom => 'مزامنة من الآخرين';
	@override String get lanSyncScanQRcode => 'مسح رمز الاستجابة السريعة للمزامنة ';
	@override String get syncToConfirm => 'هل تريد تأكيد المزامنة مع الطرف الآخر؟';
	@override String get syncDone => 'اكتملت المزامنة';
	@override String get importSuccess => 'استيراد نجاح ';
	@override String get rewriteConfirm => 'سيقوم هذا الملف بكتابة التكوين المحلي الحالي.هل تريد الاستمرار؟';
	@override String get networkShare => 'مشاركة الشبكة';
	@override String get frontProxy => 'الوكيل الأمامي';
	@override String get frontProxyTips => 'بيانات->خادم الوكيل الأمامي->مخدم بروكسي->الخادم الهدف';
	@override String get allowOtherHostsConnect => 'اسمح للآخرين بالاتصال';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'إذا لم يتمكن الآخرون من الوصول إلى هذا الجهاز بعد تشغيل المشاركة، فيرجى محاولة إيقاف تشغيل هذا المفتاح.';
	@override String get enableCluster => 'تمكين مجموعة الوكيل الجوارب/HTTP';
	@override String get clusterAllowOtherHostsConnect => 'السماح للآخرين بالاتصال بـ CLUSTER';
	@override String clusterAllowOtherHostsConnectTips({required Object hp}) => 'http://127.0.0.1:${hp}/get_proxies';
	@override String get clusterAuth => 'مصادقة مجموعة الوكيل';
	@override String get clusterConfirm => 'يرجى التأكيد على أنه تم فحص زمن انتقال الخوادم ، ولن يتم إنشاء خدمات الوكيل إذا لم يتم فحصها أو فحصها بشكل غير صحيح';
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
	@override String get rateInApp => 'قيمنا';
	@override String get rateInAppStore => 'قيمنا في متجر التطبيقات';
}

// Path: SpeedTestSettingsScreen
class _StringsSpeedTestSettingsScreenAr implements _StringsSpeedTestSettingsScreenEn {
	_StringsSpeedTestSettingsScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL اختبار السرعة';
	@override String get error => 'يجب أن يكون عنوان URL HTTPS صالح';
}

// Path: TextToQrCodeScreen
class _StringsTextToQrCodeScreenAr implements _StringsTextToQrCodeScreenEn {
	_StringsTextToQrCodeScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'رسالة نصية إلى رمز الاستجابة السريعة';
	@override String get convert => 'يتحول';
}

// Path: UrlTestSettingsScreen
class _StringsUrlTestSettingsScreenAr implements _StringsUrlTestSettingsScreenEn {
	_StringsUrlTestSettingsScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'عنوان URL لاكتشاف التأخير';
	@override String get error => 'يجب أن يكون عنوان URL HTTPS صالح';
}

// Path: UserAgreementScreen
class _StringsUserAgreementScreenAr implements _StringsUserAgreementScreenEn {
	_StringsUserAgreementScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'خصوصيتك تأتي أولا';
	@override String get agreeAndContinue => 'قبول ومتابعة';
}

// Path: VersionUpdateScreen
class _StringsVersionUpdateScreenAr implements _StringsVersionUpdateScreenEn {
	_StringsVersionUpdateScreenAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'الإصدار الجديد [${p}] جاهز';
	@override String get update => 'أعد التشغيل للتحديث';
	@override String get cancel => 'ليس الآن';
}

// Path: CommonWidget
class _StringsCommonWidgetAr implements _StringsCommonWidgetEn {
	_StringsCommonWidgetAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'إذا تم تشغيل [Always on VPN]، فيرجى إيقاف تشغيل [Always on VPN] ومحاولة الاتصال مرة أخرى.';
	@override String get resetPort => 'الرجاء تغيير المنفذ إلى منفذ آخر متاح أو إغلاق التطبيق الذي يشغل المنفذ.';
}

// Path: ServerManager
class _StringsServerManagerAr implements _StringsServerManagerEn {
	_StringsServerManagerAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get noServerAvaliable => 'لا يوجد خادم متاح، يرجى التأكد من صلاحية رابط التكوين أو ملف التكوين؛ وإذا كان التكوين الخاص بك يأتي من GitHub، فيرجى الحصول على عنوان الرابط من الزر [Raw] الموجود في الصفحة';
	@override String get filePathCannotEmpty => 'لا يمكن أن يكون مسار الملف فارغًا';
	@override String fileNotExist({required Object p}) => 'الملف غير موجود: ${p}';
	@override String get urlCannotEmpty => 'لا يمكن أن يكون الرابط فارغًا';
	@override String get invalidUrl => 'رابط ملف تعريف غير صالح';
	@override String get parseFailed => 'فشل تحليل الملف الشخصي';
}

// Path: main
class _StringsMainAr implements _StringsMainEn {
	_StringsMainAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override late final _StringsMainTrayAr tray = _StringsMainTrayAr._(_root);
}

// Path: main.tray
class _StringsMainTrayAr implements _StringsMainTrayEn {
	_StringsMainTrayAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => '    يفتح    ';
	@override String get menuExit => '    مخرج    ';
}

// Path: <root>
class _StringsFa implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsFa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
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

	@override late final _StringsFa _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAboutScreenFa AboutScreen = _StringsAboutScreenFa._(_root);
	@override late final _StringsAddProfileByImportFromFileScreenFa AddProfileByImportFromFileScreen = _StringsAddProfileByImportFromFileScreenFa._(_root);
	@override late final _StringsAddProfileByLinkOrContentScreenFa AddProfileByLinkOrContentScreen = _StringsAddProfileByLinkOrContentScreenFa._(_root);
	@override late final _StringsAddProfileByScanQrcodeScanScreenFa AddProfileByScanQrcodeScanScreen = _StringsAddProfileByScanQrcodeScanScreenFa._(_root);
	@override late final _StringsBackupAndSyncLanSyncScreenFa BackupAndSyncLanSyncScreen = _StringsBackupAndSyncLanSyncScreenFa._(_root);
	@override late final _StringsBackupAndSyncWebdavScreenFa BackupAndSyncWebdavScreen = _StringsBackupAndSyncWebdavScreenFa._(_root);
	@override late final _StringsDiversionGroupCustomEditScreenFa DiversionGroupCustomEditScreen = _StringsDiversionGroupCustomEditScreenFa._(_root);
	@override late final _StringsDiversionRuleDetectScreenFa DiversionRuleDetectScreen = _StringsDiversionRuleDetectScreenFa._(_root);
	@override late final _StringsDiversionRulesScreenFa DiversionRulesScreen = _StringsDiversionRulesScreenFa._(_root);
	@override late final _StringsDnsSettingsScreenFa DnsSettingsScreen = _StringsDnsSettingsScreenFa._(_root);
	@override late final _StringsFeedbackScreenFa FeedbackScreen = _StringsFeedbackScreenFa._(_root);
	@override late final _StringsFileContentViewerScreenFa FileContentViewerScreen = _StringsFileContentViewerScreenFa._(_root);
	@override late final _StringsHomeScreenFa HomeScreen = _StringsHomeScreenFa._(_root);
	@override late final _StringsLaunchFailedScreenFa LaunchFailedScreen = _StringsLaunchFailedScreenFa._(_root);
	@override late final _StringsMyProfilesEditScreenFa MyProfilesEditScreen = _StringsMyProfilesEditScreenFa._(_root);
	@override late final _StringsMyProfilesMergeScreenFa MyProfilesMergeScreen = _StringsMyProfilesMergeScreenFa._(_root);
	@override late final _StringsMyProfilesScreenFa MyProfilesScreen = _StringsMyProfilesScreenFa._(_root);
	@override late final _StringsNetCheckScreenFa NetCheckScreen = _StringsNetCheckScreenFa._(_root);
	@override late final _StringsNetConnectionsFilterScreenFa NetConnectionsFilterScreen = _StringsNetConnectionsFilterScreenFa._(_root);
	@override late final _StringsNetConnectionsScreenFa NetConnectionsScreen = _StringsNetConnectionsScreenFa._(_root);
	@override late final _StringsPerAppAndroidScreenFa PerAppAndroidScreen = _StringsPerAppAndroidScreenFa._(_root);
	@override late final _StringsQrcodeScreenFa QrcodeScreen = _StringsQrcodeScreenFa._(_root);
	@override late final _StringsRegionSettingsScreenFa RegionSettingsScreen = _StringsRegionSettingsScreenFa._(_root);
	@override late final _StringsServerSelectScreenFa ServerSelectScreen = _StringsServerSelectScreenFa._(_root);
	@override late final _StringsSettingsScreenFa SettingsScreen = _StringsSettingsScreenFa._(_root);
	@override late final _StringsSpeedTestSettingsScreenFa SpeedTestSettingsScreen = _StringsSpeedTestSettingsScreenFa._(_root);
	@override late final _StringsTextToQrCodeScreenFa TextToQrCodeScreen = _StringsTextToQrCodeScreenFa._(_root);
	@override late final _StringsUrlTestSettingsScreenFa UrlTestSettingsScreen = _StringsUrlTestSettingsScreenFa._(_root);
	@override late final _StringsUserAgreementScreenFa UserAgreementScreen = _StringsUserAgreementScreenFa._(_root);
	@override late final _StringsVersionUpdateScreenFa VersionUpdateScreen = _StringsVersionUpdateScreenFa._(_root);
	@override late final _StringsCommonWidgetFa CommonWidget = _StringsCommonWidgetFa._(_root);
	@override late final _StringsServerManagerFa ServerManager = _StringsServerManagerFa._(_root);
	@override late final _StringsMainFa main = _StringsMainFa._(_root);
	@override String get enable => 'فعال‌سازی';
	@override String get disable => 'غیرفعال';
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
	@override String get account => 'نام‌کاربری';
	@override String get password => 'رمز‌عبور';
	@override String get required => 'الزامی';
	@override String get diversion => 'انحراف';
	@override String get diversionRules => 'قوانین انحراف';
	@override String get diversionRulesEnable => 'قوانین بارگیری [ISP] را فعال کنید';
	@override String get diversionCustomGroup => 'گروه انحراف سفارشی';
	@override String get diversionCustomGroupPreset => 'از پیش تنظیم شده [گروه انحراف سفارشی]';
	@override String get diversionCustomGroupPresetTips => 'توجه: موارد فعال به [گروه انحراف سفارشی] و [قوانین انحراف] اضافه/پوشش داده خواهند شد';
	@override String get diversionCustomGroupAddTips => 'توجه: ممکن است لازم باشد پس از افزودن مرتب‌سازی به‌صورت دستی آن را تنظیم کنید، در غیر این صورت انحراف تازه اضافه‌شده ممکن است اعمال نشود.';
	@override String get urlTestCustomGroup => 'گروه پروکسی سفارشی';
	@override String get rulesetEnableTips => 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد';
	@override String get ispUserAgentTips => '[ISP] انواع مختلف داده های اشتراک را بر اساس [UserAgent] در درخواست [HTTP] ارائه خواهد کرد.';
	@override String get ispDiversionTips => 'قوانین بارگذاری ارائه شده توسط [ISP]، اشتراک های نوع [V2Ray] از قوانین تخلیه پشتیبانی نمی کنند';
	@override String get staticIP => 'IP استاتیک';
	@override String get other => 'دیگر';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get isp => 'ISP';
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
	@override String get appPackage => 'نام بسته‌ی برنامه';
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
	@override String get keywordsOrRegx => 'کلمات کلیدی / معمولی';
	@override String get importFromClipboard => 'افزودن از کلیپ‌برد';
	@override String get exportToClipboard => 'صادرات به کلیپ بورد';
	@override String get server => 'سرور';
	@override String get appleTVConnectTurnOfprivateDirect => 'لطفاً ابتدا [اتصال مستقیم شبکه خصوصی] را فعال کنید';
	@override String targetConnectFailed({required Object p}) => 'اتصال به [${p}] ناموفق بود، لطفاً مطمئن شوید که دستگاه در همان LAN است و [اتصال مستقیم شبکه خصوصی] را فعال کنید.';
	@override String get appleTVSync => 'همگام سازی پیکربندی هسته فعلی با Apple TV - Karing';
	@override String get appleTVSyncDone => 'همگام سازی کامل شد، لطفاً برای باز کردن/راه اندازی مجدد اتصال به Apple TV - Karing بروید';
	@override String get appleTVRemoveCoreConfig => 'حذف Apple TV - Karing Core Configuration';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - نمایه اصلی کارینگ حذف شد';
	@override String get appleTVUrlInvalid => 'URL نامعتبر است، لطفاً Apple TV - Karing را باز کنید، کد QR نمایش داده شده توسط Karing را اسکن کنید';
	@override String get remoteProfileEditConfirm => 'پس از به روز رسانی تنظیمات، تغییرات گره بازیابی می شوند آیا می خواهید ادامه دهید؟';
	@override String invalidFileType({required Object p}) => 'نوع فایل نامعتبر:${p}';
	@override Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
	};
}

// Path: AboutScreen
class _StringsAboutScreenFa implements _StringsAboutScreenEn {
	_StringsAboutScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'مرجع نصب';
	@override String get versionChannel => 'کانال به‌روزرسانی خودکار';
	@override String get disableUAReport => 'خاموش کردن گزارش اطلاعات عملکرد';
	@override String get disableUAReportTip => 'گزارش‌دهی داده‌های رفتاری به ما کمک می‌کند تا نسخه‌های پایین‌تر از نسخه اصلی را بهبود بخشیم، همه گزارش‌های داده را به‌طور خودکار خاموش می‌کند (به‌جز [فعال‌سازی برنامه]).';
	@override String get devOptions => 'تنظیمات توسعه‌دهندگان';
	@override String get enableDebugLog => 'فعال‌سازی گزارش اشکال‌زدایی';
	@override String get viewFilsContent => 'مشاهده فایل‌ها';
	@override String get enablePprof => 'فعال‌سازی pprof';
	@override String get pprofPanel => 'پنل pprof';
	@override String get openDir => 'بازکردن دایرکتوری فایل';
	@override String get useOriginalSBProfile => 'استفاده از پروفایل اصلی سینگ‌باکس';
}

// Path: AddProfileByImportFromFileScreen
class _StringsAddProfileByImportFromFileScreenFa implements _StringsAddProfileByImportFromFileScreenEn {
	_StringsAddProfileByImportFromFileScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'وارد‌کردن فایل پروفایل';
	@override String get chooseFile => 'انتخاب فایل';
	@override String get configExist => 'پروفایل از‌قبل وجود دارد، لطفا آن را به‌طور مکرر اضافه نکنید';
}

// Path: AddProfileByLinkOrContentScreen
class _StringsAddProfileByLinkOrContentScreenFa implements _StringsAddProfileByLinkOrContentScreenEn {
	_StringsAddProfileByLinkOrContentScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'افزودن لینک پروفایل';
	@override String get updateTimerInterval => 'فاصله‌ی به‌روزرسانی';
	@override String get updateTimerIntervalTips => 'برای غیرفعال‌ کردن لطفا تنظیم کنید روی:<5m';
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
class _StringsAddProfileByScanQrcodeScanScreenFa implements _StringsAddProfileByScanQrcodeScanScreenEn {
	_StringsAddProfileByScanQrcodeScanScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get copy => 'کپی‌کردن لینک';
	@override String get open => 'بازکردن لینک';
	@override String get requestCameraPermission => 'لطفا مجوز دسترسی دوربین را فعال کنید';
	@override String get requestScreenAccess => 'لطفا به تنظیمات دستگاه - حریم‌خصوصی و امنیت - ظبط صفحه بروین تا مجوز‌های این نرم‌افزار را اضافه کنید';
	@override String get screenshot => 'اسکرین‌شات';
	@override String get scanFromImage => 'اسکن از عکس';
	@override String get scanNoResult => 'تجزیه عکس ناموفق بود، لطفا مطمعن شوید اسکرین‌شات یک کدQR معتبر است';
	@override String get scanEmptyResult => 'نتیجه اسکن خالی است';
	@override String scanException({required Object p}) => 'تجزیه عکس ناموفق بود، لطفا مطمعن شوید اسکرین‌شات یک کدQR معتبر است: ${p}';
}

// Path: BackupAndSyncLanSyncScreen
class _StringsBackupAndSyncLanSyncScreenFa implements _StringsBackupAndSyncLanSyncScreenEn {
	_StringsBackupAndSyncLanSyncScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'LAN Sync';
	@override String get lanSyncNotQuitTips => 'قبل از تکمیل همگام‌سازی از این قسمت خارج نشوید';
}

// Path: BackupAndSyncWebdavScreen
class _StringsBackupAndSyncWebdavScreenFa implements _StringsBackupAndSyncWebdavScreenEn {
	_StringsBackupAndSyncWebdavScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'آدرس URL سرور';
	@override String get webdavRequired => 'نمی‌تواند خالی باشد';
	@override String get webdavLoginFailed => 'ورود ناموفق بود:';
	@override String get webdavListFailed => 'دریافت لیست فایل ناموفق بود:';
}

// Path: DiversionGroupCustomEditScreen
class _StringsDiversionGroupCustomEditScreenFa implements _StringsDiversionGroupCustomEditScreenEn {
	_StringsDiversionGroupCustomEditScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'نامعتبر [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => 'نامعتبر [IP Cidr]:${p}';
	@override String invalidPort({required Object p}) => 'نامعتبر [Port]:${p}';
	@override String invalidRuleSet({required Object p}) => 'نامعتبر [Rule Set]:${p} باید URL یک URL معتبر https باشد و یک فایل دودویی(binary) با پسوند فایل .srs/.json باشد';
	@override String invalidRuleSetBuildIn({required Object p}) => 'نامعتبر [Rule Set(build-in)]:${p} نامعتبر است، قالب geosite:xxx یا geoip:xxx یا acl:xxx است و xxx باید یک نام قانون معتبر باشد';
	@override String get setDiversionRule => 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد';
}

// Path: DiversionRuleDetectScreen
class _StringsDiversionRuleDetectScreenFa implements _StringsDiversionRuleDetectScreenEn {
	_StringsDiversionRuleDetectScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'کشف قانون انحراف';
	@override String get detect => 'کشف';
	@override String get rule => 'قانون:';
	@override String get outbound => 'سرور پروکسی:';
}

// Path: DiversionRulesScreen
class _StringsDiversionRulesScreenFa implements _StringsDiversionRulesScreenEn {
	_StringsDiversionRulesScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'نکته: سعی کنید قوانین را از بالا به پایین مطابقت دهید، از [نهایی] استفاده کنید.';
}

// Path: DnsSettingsScreen
class _StringsDnsSettingsScreenFa implements _StringsDnsSettingsScreenEn {
	_StringsDnsSettingsScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP نمی‌تواند خالی باشد';
	@override String get urlCanNotEmpty => 'URL نمی‌تواند خالی باشد';
	@override String error({required Object p}) => 'نوع پشتیبانی نشده:${p}';
	@override String get dnsDesc => 'ستون اول داده‌های تأخیر، تأخیر ارتباط مستقیم است؛\nستون دوم: روشن کردن [[ترافیک پروکسی] برای حل و فصل DNS از طریق سرور پراکسی]: داده‌های تأخیر، تأخیر درخواست ارسال شده از طریق سرور پراکسی فعلی است [[ترافیک پروکسی] روشن نیست، از طریق سرور پروکسی DNS را حل می‌کند]: داده‌های تأخیر تأخیر درخواست اتصال مستقیم است';
}

// Path: FeedbackScreen
class _StringsFeedbackScreenFa implements _StringsFeedbackScreenEn {
	_StringsFeedbackScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get content => 'محتوای بازخورد';
	@override String get contentHit => 'الزامی، تا 500 حرف';
	@override String get contentCannotEmpty => 'محتوای بازخورد نمی‌تواند خالی باشد';
}

// Path: FileContentViewerScreen
class _StringsFileContentViewerScreenFa implements _StringsFileContentViewerScreenEn {
	_StringsFileContentViewerScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'نمایش دهنده محتوای فایل';
	@override String get chooseFile => 'انتخاب فایل';
	@override String get clearFileContent => 'آیا از پاکسازی محتوای فایل اطمینان دارید؟';
	@override String get clearFileContentTips => 'آیا از پاکسازی محتوای فایل پروفایل اطمینان دارید؟ پاکسازی محتوای فایل پروفایل ممکن است باعث از دست رفتن داده یا عملیات غیرعادی نرم‌افزار شود؛ لطفا با احتیاط عمل کنید.';
}

// Path: HomeScreen
class _StringsHomeScreenFa implements _StringsHomeScreenEn {
	_StringsHomeScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

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
class _StringsLaunchFailedScreenFa implements _StringsLaunchFailedScreenEn {
	_StringsLaunchFailedScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'اجرای نرم‌افزار ناموفق بود [نام‌ اجرایی پروسه نامعتبر]، لطفا مجدد نرم‌افزار را در دایرکتوری دیگری نصب کنید';
	@override String get invalidProfile => 'اجرای نرم‌افزار ناموفق بود [دسترسی به پروفایل ناموفق بود]، لطفا مجدد نرم افزار را نصب کنید';
	@override String get invalidVersion => 'اجرای نرم‌افزار ناموفق بود [ورژن نامعتبر]، لطفا مجدد نرم‌افزار را نصب کنید';
	@override String get systemVersionLow => 'راه اندازی برنامه ناموفق بود [نسخه سیستم خیلی کم است]';
	@override String get startFromUNC => 'مسیر نصب نامعتبر است، لطفا مجدد در مسیر معتبر نصب کنید';
}

// Path: MyProfilesEditScreen
class _StringsMyProfilesEditScreenFa implements _StringsMyProfilesEditScreenEn {
	_StringsMyProfilesEditScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ویرایش پروفایل';
	@override String get urlExist => 'آدرس URL از‌قبل وجود دارد، لطفا از URL دیگری استفاده کنید';
	@override String get updateTimerInterval => 'فاصله‌ی به‌روزرسانی';
	@override String get updateTimerIntervalTips => 'برای غیرفعال‌ کردن لطفا تنظیم کنید روی:<5m';
	@override String get reloadAfterProfileUpdate => 'بارگذاری مجدد پس‌از به‌روزرسانی پروفایل';
	@override String get testLatencyAfterProfileUpdate => 'شروع تست تاخیر پس‌از به‌روزرسانی خودکار پروفایل';
	@override String get testLatencyAfterProfileUpdateTips => 'وی‌پی‌ان باید روشن و [بارگذاری مجدد پس‌از به‌روزرسانی پروفایل] فعال باشد';
	@override String get testLatencyAutoRemove => 'خودکار سرورهای ناموفق در تست تاخیر را حذف کن';
	@override String get testLatencyAutoRemoveTips => 'تا سه بار امتحان کنید';
}

// Path: MyProfilesMergeScreen
class _StringsMyProfilesMergeScreenFa implements _StringsMyProfilesMergeScreenEn {
	_StringsMyProfilesMergeScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'ادغام پروفایل‌ها';
	@override String get profilesMergeTarget => 'پروفایل هدف';
	@override String get profilesMergeSource => 'پروفایل مرجع';
	@override String get profilesMergeTips => 'راهنمایی: انحراف پروفایل مرجع حذف می‌شود';
}

// Path: MyProfilesScreen
class _StringsMyProfilesScreenFa implements _StringsMyProfilesScreenEn {
	_StringsMyProfilesScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفایل‌ها';
	@override String get atLeastOneEnable => 'نمی‌تواند غیرغعال شود، لطفا حداقل یک پروفایل را فعال نگه دارید';
}

// Path: NetCheckScreen
class _StringsNetCheckScreenFa implements _StringsNetCheckScreenEn {
	_StringsNetCheckScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

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
class _StringsNetConnectionsFilterScreenFa implements _StringsNetConnectionsFilterScreenEn {
	_StringsNetConnectionsFilterScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'فیلتر اتصال‌ها';
	@override String get hostIp => 'دامنه/آی‌پی';
	@override String get app => 'نرم‌افزار';
	@override String get rule => 'قانون';
	@override String get chain => 'Outbound';
}

// Path: NetConnectionsScreen
class _StringsNetConnectionsScreenFa implements _StringsNetConnectionsScreenEn {
	_StringsNetConnectionsScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'اتصال‌ها';
	@override String get copyAsCSV => 'در فرمت CAV کپی شد';
	@override String get selectType => 'انتخاب نوع انحراف';
}

// Path: PerAppAndroidScreen
class _StringsPerAppAndroidScreenFa implements _StringsPerAppAndroidScreenEn {
	_StringsPerAppAndroidScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروکسی به‌تفکیک برنامه';
	@override String get whiteListMode => 'حالت لیست سفید';
	@override String get whiteListModeTip => 'وقتی فعال باشد: فقط برنامه‌هایی که انتخاب شده‌اند پروکسی می‌شوند؛ وقتی فعال نباشد: فقط برنامه‌هایی که انتخاب نشده‌اند پروکسی می‌شوند';
	@override String get hideSystemApp => 'برنامه های سیستم را مخفی کنید';
	@override String get hideAppIcon => 'پنهان کردن نماد برنامه';
	@override String get enableAppQueryPermission => 'مجوز [درخواست لیست نرم‌افزار] را روشن کنید';
}

// Path: QrcodeScreen
class _StringsQrcodeScreenFa implements _StringsQrcodeScreenEn {
	_StringsQrcodeScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get tooLong => 'متن برای نمایش خیلی طولانی است';
	@override String get copy => 'کپی‌کردن لینک';
	@override String get open => 'بازکردن لینک';
	@override String get share => 'اشتراک لینک';
	@override String get shareImage => 'اشتراک کدQR';
}

// Path: RegionSettingsScreen
class _StringsRegionSettingsScreenFa implements _StringsRegionSettingsScreenEn {
	_StringsRegionSettingsScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'کشور یا منطقه';
	@override String get Regions => 'راهنمایی: لطفا کشور یا منطقه فعلی خود را انتخاب کنید درغیراین‌صورت ممکن‌است باعث مشکلات انحراف شبکه شود';
}

// Path: ServerSelectScreen
class _StringsServerSelectScreenFa implements _StringsServerSelectScreenEn {
	_StringsServerSelectScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

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
class _StringsSettingsScreenFa implements _StringsSettingsScreenEn {
	_StringsSettingsScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String ispFaq({required Object p}) => 'سوالات متداول[${p}]';
	@override String cleanISP({required Object p}) => 'پاک‌سازی ISP [${p}]';
	@override String get openISP => 'بازکردن لینک ISP';
	@override String get cleanISPNoParam => 'پاک‌سازی اطلاعات ISP';
	@override String get getTranffic => 'دریافت ترافیک';
	@override String get tutorial => 'آموزش';
	@override String get commonlyUsedRulesets => 'قوانین رایج';
	@override String get howToRemoveAds => 'نحوه حذف تبلیغات';
	@override String get htmlBoard => 'پنل آنلاین';
	@override String get dnsLeakDetection => 'تشخیص نشت DNS';
	@override String get speedTest => 'تست سرعت';
	@override String get downloadProfilePreferProxy => 'برای دانلود پروفایل پروکسی را ترجیح بده';
	@override String get downloadProfilePreferProxyTips => 'اگر اکنون متصل هستین، پروفایل ابتدا از پروکسی متصل دانلود می‌شود';
	@override String get rulesetDirectDownlad => 'دانلود مستقیم مجموعه قوانین';
	@override String get hideUnusedDiversionGroup => 'مخفی‌کردن گروه‌های انحراف به‌کار نرفته';
	@override String get disableISPDiversionGroup => 'قوانین انحراف ISP را غیرفعال کنید';
	@override String get portSetting => 'پورت';
	@override String get portSettingRule => 'قانون محور';
	@override String get portSettingDirectAll => 'مستقیم‌شدن همه';
	@override String get portSettingProxyAll => 'پروکسی‌شدن همه';
	@override String get portSettingControl => 'کنترل و همگام‌سازی';
	@override String get portSettingCluster => 'سرویس کلاستر';
	@override String get modifyPort => 'اصلاح پورت';
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
	@override String get autoSelectServerIgnorePerProxyServer => 'سرور پروکسی [پراکسی جلو] را نادیده بگیرید';
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
	@override String get lanSyncTo => 'همگام‌سازی با دیگران';
	@override String get lanSyncFrom => 'همگام‌سازی از دیگران';
	@override String get lanSyncScanQRcode => 'اسکن کدQR و همگام‌سازی';
	@override String get syncToConfirm => 'همگام سازی را با طرف مقابل تأیید می کنید؟';
	@override String get syncDone => 'همگام سازی تکمیل شد';
	@override String get importSuccess => 'افزودن موفق بود';
	@override String get rewriteConfirm => 'این فایل کانفیگ‌های محلی موجود را بازنویسی می‌کند. آیا می‌خواهید ادامه بدین؟';
	@override String get networkShare => 'اشتراک‌گذاری شبکه';
	@override String get frontProxy => 'پروکسی جلو';
	@override String get frontProxyTips => 'داده‌ها->سرور پروکسی جلو->سرور پروکسی->سرور هدف';
	@override String get allowOtherHostsConnect => 'اجازه اتصال دیگران';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'اگر پس از روشن کردن اشتراک‌گذاری، دیگران نمی‌توانند به این دستگاه دسترسی داشته باشند، لطفاً این سوئیچ را خاموش کنید.';
	@override String get enableCluster => 'فعال‌سازی پروکسی Socks/Http خوشه‌ای';
	@override String get clusterAllowOtherHostsConnect => 'اجازه اتصال دیگران به خوشه';
	@override String clusterAllowOtherHostsConnectTips({required Object hp}) => 'http://127.0.0.1:${hp}/get_proxies';
	@override String get clusterAuth => 'احراز هویت خوشه پروکسی';
	@override String get clusterConfirm => 'لطفا مطمعن شوید تاخیر سرورها بررسی شده و درصورتی‌که بررسی نشده‌باشند یا اشتباه بررسی شده‌باشند سرویس پروکسی ساخته نمی‌شود';
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
	@override String get removeSystemVPNConfig => 'حذف پیکربندی وی‌پی‌ان سیستم';
	@override String get timeConnectOrDisconnect => 'اتصال/قطع اتصال برنامه‌ریزی شده';
	@override String get timeConnectOrDisconnectTips => 'برای اعمال شدن وی‌پی‌ان باید متصل باشد. پس‌از روشن‌شدن [خواب خودکار] غیرفعال می‌شود';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'The connection/disconnection interval cannot be less than ${p} minutes';
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
	@override String get rateInApp => 'امتیاز به ما';
	@override String get rateInAppStore => 'به ما در اپ‌استور امتیاز بدین';
}

// Path: SpeedTestSettingsScreen
class _StringsSpeedTestSettingsScreenFa implements _StringsSpeedTestSettingsScreenEn {
	_StringsSpeedTestSettingsScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL تست سرعت';
	@override String get error => 'باید یک URL معتبر https باشد';
}

// Path: TextToQrCodeScreen
class _StringsTextToQrCodeScreenFa implements _StringsTextToQrCodeScreenEn {
	_StringsTextToQrCodeScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'متن به کد QR';
	@override String get convert => 'تبدیل';
}

// Path: UrlTestSettingsScreen
class _StringsUrlTestSettingsScreenFa implements _StringsUrlTestSettingsScreenEn {
	_StringsUrlTestSettingsScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL بررسی تاخیر';
	@override String get error => 'باید یک URL معتبر https باشد';
}

// Path: UserAgreementScreen
class _StringsUserAgreementScreenFa implements _StringsUserAgreementScreenEn {
	_StringsUserAgreementScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'حریم‌خصوصی شما اولویت دارد';
	@override String get agreeAndContinue => 'پذیرفتن و ادامه';
}

// Path: VersionUpdateScreen
class _StringsVersionUpdateScreenFa implements _StringsVersionUpdateScreenEn {
	_StringsVersionUpdateScreenFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'نسخه جدید [${p}] آماده است';
	@override String get update => 'راه‌اندازی مجدد برای به‌روزرسانی';
	@override String get cancel => 'الان‌ نه';
}

// Path: CommonWidget
class _StringsCommonWidgetFa implements _StringsCommonWidgetEn {
	_StringsCommonWidgetFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'اگر [وی‌پی‌ان همیشه روشن] روشن است لطفا [وی‌پی‌ان همیشه روشن] را خاموش کنید و مجدد برای اتصال تلاش کنید';
	@override String get resetPort => 'لطفاً پورت را به پورت موجود دیگری تغییر دهید یا برنامه ای را که پورت را اشغال می کند ببندید.';
}

// Path: ServerManager
class _StringsServerManagerFa implements _StringsServerManagerEn {
	_StringsServerManagerFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get noServerAvaliable => 'هیچ سروری در دسترس نیست، لطفاً مطمئن شوید که پیوند پیکربندی یا فایل پیکربندی معتبر است، اگر پیکربندی شما از GitHub آمده است، لطفاً آدرس پیوند را از دکمه [Raw] در صفحه دریافت کنید';
	@override String get filePathCannotEmpty => 'مسیر فایل نمی‌تواند خالی باشد';
	@override String fileNotExist({required Object p}) => 'فایل وجود ندارد:${p}';
	@override String get urlCannotEmpty => 'لینک نمی‌تواند خالی باشد';
	@override String get invalidUrl => 'لینک پروفایل نامعتبر است';
	@override String get parseFailed => 'تجزیه پروفایل انجام نشد';
}

// Path: main
class _StringsMainFa implements _StringsMainEn {
	_StringsMainFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override late final _StringsMainTrayFa tray = _StringsMainTrayFa._(_root);
}

// Path: main.tray
class _StringsMainTrayFa implements _StringsMainTrayEn {
	_StringsMainTrayFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => '    بازکردن    ';
	@override String get menuExit => '    بستن    ';
}

// Path: <root>
class _StringsRu implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsRu.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsRu _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAboutScreenRu AboutScreen = _StringsAboutScreenRu._(_root);
	@override late final _StringsAddProfileByImportFromFileScreenRu AddProfileByImportFromFileScreen = _StringsAddProfileByImportFromFileScreenRu._(_root);
	@override late final _StringsAddProfileByLinkOrContentScreenRu AddProfileByLinkOrContentScreen = _StringsAddProfileByLinkOrContentScreenRu._(_root);
	@override late final _StringsAddProfileByScanQrcodeScanScreenRu AddProfileByScanQrcodeScanScreen = _StringsAddProfileByScanQrcodeScanScreenRu._(_root);
	@override late final _StringsBackupAndSyncLanSyncScreenRu BackupAndSyncLanSyncScreen = _StringsBackupAndSyncLanSyncScreenRu._(_root);
	@override late final _StringsBackupAndSyncWebdavScreenRu BackupAndSyncWebdavScreen = _StringsBackupAndSyncWebdavScreenRu._(_root);
	@override late final _StringsDiversionGroupCustomEditScreenRu DiversionGroupCustomEditScreen = _StringsDiversionGroupCustomEditScreenRu._(_root);
	@override late final _StringsDiversionRuleDetectScreenRu DiversionRuleDetectScreen = _StringsDiversionRuleDetectScreenRu._(_root);
	@override late final _StringsDiversionRulesScreenRu DiversionRulesScreen = _StringsDiversionRulesScreenRu._(_root);
	@override late final _StringsDnsSettingsScreenRu DnsSettingsScreen = _StringsDnsSettingsScreenRu._(_root);
	@override late final _StringsFeedbackScreenRu FeedbackScreen = _StringsFeedbackScreenRu._(_root);
	@override late final _StringsFileContentViewerScreenRu FileContentViewerScreen = _StringsFileContentViewerScreenRu._(_root);
	@override late final _StringsHomeScreenRu HomeScreen = _StringsHomeScreenRu._(_root);
	@override late final _StringsLaunchFailedScreenRu LaunchFailedScreen = _StringsLaunchFailedScreenRu._(_root);
	@override late final _StringsMyProfilesEditScreenRu MyProfilesEditScreen = _StringsMyProfilesEditScreenRu._(_root);
	@override late final _StringsMyProfilesMergeScreenRu MyProfilesMergeScreen = _StringsMyProfilesMergeScreenRu._(_root);
	@override late final _StringsMyProfilesScreenRu MyProfilesScreen = _StringsMyProfilesScreenRu._(_root);
	@override late final _StringsNetCheckScreenRu NetCheckScreen = _StringsNetCheckScreenRu._(_root);
	@override late final _StringsNetConnectionsFilterScreenRu NetConnectionsFilterScreen = _StringsNetConnectionsFilterScreenRu._(_root);
	@override late final _StringsNetConnectionsScreenRu NetConnectionsScreen = _StringsNetConnectionsScreenRu._(_root);
	@override late final _StringsPerAppAndroidScreenRu PerAppAndroidScreen = _StringsPerAppAndroidScreenRu._(_root);
	@override late final _StringsQrcodeScreenRu QrcodeScreen = _StringsQrcodeScreenRu._(_root);
	@override late final _StringsRegionSettingsScreenRu RegionSettingsScreen = _StringsRegionSettingsScreenRu._(_root);
	@override late final _StringsServerSelectScreenRu ServerSelectScreen = _StringsServerSelectScreenRu._(_root);
	@override late final _StringsSettingsScreenRu SettingsScreen = _StringsSettingsScreenRu._(_root);
	@override late final _StringsSpeedTestSettingsScreenRu SpeedTestSettingsScreen = _StringsSpeedTestSettingsScreenRu._(_root);
	@override late final _StringsTextToQrCodeScreenRu TextToQrCodeScreen = _StringsTextToQrCodeScreenRu._(_root);
	@override late final _StringsUrlTestSettingsScreenRu UrlTestSettingsScreen = _StringsUrlTestSettingsScreenRu._(_root);
	@override late final _StringsUserAgreementScreenRu UserAgreementScreen = _StringsUserAgreementScreenRu._(_root);
	@override late final _StringsVersionUpdateScreenRu VersionUpdateScreen = _StringsVersionUpdateScreenRu._(_root);
	@override late final _StringsCommonWidgetRu CommonWidget = _StringsCommonWidgetRu._(_root);
	@override late final _StringsServerManagerRu ServerManager = _StringsServerManagerRu._(_root);
	@override late final _StringsMainRu main = _StringsMainRu._(_root);
	@override String get enable => 'Включить';
	@override String get disable => 'Запретить';
	@override String get prefer => 'Приоритет';
	@override String get only => 'Только';
	@override String get open => 'Открыть';
	@override String get close => 'Закрыть';
	@override String get quit => 'Выйти';
	@override String get add => 'Добавить';
	@override String get remove => 'Удалить';
	@override String get edit => 'Редактировать';
	@override String get view => 'Более';
	@override String get more => 'More';
	@override String get addProfile => 'Добавить профиль';
	@override String get addSuccess => 'Добавлено успешно';
	@override String addSuccessThen({required Object p}) => 'Конфигурация сгенерирована успешно. Для просмотра перейдите в [${p}]';
	@override String addFailed({required Object p}) => 'Ошибка при добавлении:${p}';
	@override String get removeConfirm => 'Подтверждаете удаление?';
	@override String get tips => 'Инфо';
	@override String get copy => 'Скопировать';
	@override String get ok => 'Ок';
	@override String get cancel => 'Закрыть';
	@override String get feedback => 'Обратная связь';
	@override String get faq => 'Часто задаваемые вопросы (FAQ)';
	@override String get download => 'Скачать';
	@override String get loading => 'Загрузка...';
	@override String updateFailed({required Object p}) => 'Не удалось обновить:${p}';
	@override String get days => 'дни';
	@override String get hours => 'часы';
	@override String get minutes => 'минуты';
	@override String get seconds => 'Второй';
	@override String get protocol => 'Протокол';
	@override String get search => 'Поиск';
	@override String get custom => 'Настроить самостоятельно';
	@override String get connect => 'Соединить';
	@override String get disconnect => 'Отключить';
	@override String get connected => 'Подключено';
	@override String get disconnected => 'Отключено';
	@override String get connecting => 'Подключение';
	@override String get connectTimeout => 'Таймаут при соединении';
	@override String get timeout => 'тайм-аут';
	@override String get language => 'Язык';
	@override String get next => 'Дальше';
	@override String get done => 'Готово';
	@override String get apply => 'Применить';
	@override String get refresh => 'Обновить';
	@override String get retry => 'Хотите попробовать еще раз?';
	@override String get none => 'Ничего не делать';
	@override String get reset => 'Перезагрузить';
	@override String get submit => 'Отправить';
	@override String get account => 'Аккаунт';
	@override String get password => 'Пароль';
	@override String get required => 'Необходимо';
	@override String get diversion => 'Правила';
	@override String get diversionRules => 'Правила перенаправления';
	@override String get diversionRulesEnable => 'Включить правила разгрузки [ISP]';
	@override String get diversionCustomGroup => 'Личные правила';
	@override String get diversionCustomGroupPreset => 'Шаблоны личных правил';
	@override String get diversionCustomGroupPresetTips => 'Примечание. Включенные элементы будут добавлены или включены в [Личные правила] и [Правила перенаправления].';
	@override String get diversionCustomGroupAddTips => 'Примечание. Возможно, вам придется вручную настроить сортировку после ее добавления, в противном случае добавленное перенаправление может не вступить в силу.';
	@override String get urlTestCustomGroup => 'Личная группа прокси-серверов';
	@override String get rulesetEnableTips => 'Совет: После включения опции перейдите в [Правила перенаправления] и установите их, иначе опция не будет действовать';
	@override String get ispUserAgentTips => '[ISP] будет доставлять различные типы данных о подписке на основе [UserAgent] в запросе [HTTP].';
	@override String get ispDiversionTips => 'Правила разгрузки, предоставляемые подписками типа [ISP] [V2Ray], не поддерживают правила разгрузки;';
	@override String get staticIP => 'Статический IP';
	@override String get other => 'Другой';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get isp => 'ISP';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get urlInvalid => 'Неверный URL';
	@override String get outboundActionCurrentSelected => 'Текущий сервер';
	@override String get outboundActionUrltest => 'Автовыбор сервера';
	@override String get outboundActionDirect => 'Напрямую';
	@override String get outboundActionBlock => 'Блокировать';
	@override String get routeFinal => 'Final';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get setting => 'Настройки';
	@override String get protocolSniff => 'Обнаружение протокола';
	@override String get protocolSniffOverrideDestination => 'Обнаруженное доменное имя охватывает целевой адрес подключения.';
	@override String get remark => 'Примечание';
	@override String get remarkCannotEmpty => 'Примечание не может быть пустым';
	@override String get remarkTooLong => 'Примечания до 32 символов';
	@override String get remarkExist => 'Примечание уже существует, используйте другое имя';
	@override String get domainSuffix => 'Суффикс доменного имени';
	@override String get domain => 'Имя домена';
	@override String get domainKeyword => 'Ключевые слова в имени домена';
	@override String get domainRegex => 'Регулярные выражения для имен доменов';
	@override String get ip => 'IP';
	@override String get port => 'Порт';
	@override String get appPackage => 'Имя пакета приложения';
	@override String get processName => 'Имя процесса';
	@override String get processPath => 'Путь к процессу';
	@override String get systemProxy => 'Системный прокси';
	@override String get netInterfaces => 'Сетевой интерфейс';
	@override String get netSpeed => 'Скорость';
	@override String get website => 'Веб-сайт';
	@override String get rule => 'Правила';
	@override String get global => 'Глобально';
	@override String get qrcode => 'QR-код';
	@override String get scanQrcode => 'Сканировать QR-код';
	@override String get scanResult => 'Результат сканирования';
	@override String get backupAndSync => 'Резервное копирование и синхронизация';
	@override String get importAndExport => 'Импорт и экспорт';
	@override String get import => 'Импорт';
	@override String get export => 'Экспорт';
	@override String get termOfUse => 'Условия использования';
	@override String get privacyPolicy => 'Политика конфиденциальности';
	@override String get about => 'О Karing';
	@override String get name => 'Название';
	@override String get version => 'Версия';
	@override String get notice => 'Уведомления';
	@override String get sort => 'Отсортировать';
	@override String get novice => 'Режим новичка';
	@override String get recommended => 'Рекомендуемые';
	@override String innerError({required Object p}) => 'внутренняя ошибка:${p}';
	@override String get logicOperation => 'логическая операция';
	@override String get share => 'Поделиться';
	@override String get candidateWord => 'Ключевые слова';
	@override String get keywordsOrRegx => 'Ключевые слова/регулярные выражения';
	@override String get importFromClipboard => 'Импорт из буфера обмена';
	@override String get exportToClipboard => 'Экспорт в буфер обмена';
	@override String get server => 'сервер';
	@override String get appleTVConnectTurnOfprivateDirect => 'Пожалуйста, сначала включите [Прямое подключение к частной сети]';
	@override String targetConnectFailed({required Object p}) => 'Не удалось подключиться к [${p}]. Убедитесь, что устройство находится в той же локальной сети, и включите [Прямое подключение к частной сети].';
	@override String get appleTVSync => 'Синхронизация текущей базовой конфигурации с Apple TV - Karing';
	@override String get appleTVSyncDone => 'Синхронизация завершена, перейдите в Apple TV — Karing, чтобы открыть/перезапустить соединение.';
	@override String get appleTVRemoveCoreConfig => 'Удаление Apple TV — базовая конфигурация Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV — основной профиль Karing удален; VPN-сервис отключен;';
	@override String get appleTVUrlInvalid => 'Неверный URL-адрес. Откройте Apple TV — Karing, отсканируйте QR-код, отображаемый Karing.';
	@override String get remoteProfileEditConfirm => 'После обновления конфигурации изменения узла будут восстановлены. Продолжить?';
	@override String invalidFileType({required Object p}) => 'Неверный тип файла:${p}';
	@override Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
	};
}

// Path: AboutScreen
class _StringsAboutScreenRu implements _StringsAboutScreenEn {
	_StringsAboutScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Установленная ссылка';
	@override String get versionChannel => 'Автоматически обновлять канал';
	@override String get disableUAReport => 'Отключить аналитику';
	@override String get disableUAReportTip => 'Отчеты о поведенческих данных помогают нам улучшить работу с продуктом; версии ниже основной версии автоматически отключают все отчеты о данных (кроме [Активации приложения]).';
	@override String get devOptions => 'Параметры разработчика';
	@override String get enableDebugLog => 'Включить debug-лог';
	@override String get viewFilsContent => 'Посмотреть файлы';
	@override String get enablePprof => 'Включить pprof';
	@override String get pprofPanel => 'pprof панель';
	@override String get openDir => 'Открыть каталог файлов';
	@override String get useOriginalSBProfile => 'Использовать исходную конфигурацию Sing-box';
}

// Path: AddProfileByImportFromFileScreen
class _StringsAddProfileByImportFromFileScreenRu implements _StringsAddProfileByImportFromFileScreenEn {
	_StringsAddProfileByImportFromFileScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Импорт файла конфигурации';
	@override String get chooseFile => 'Выбрать файл';
	@override String get configExist => 'Профиль уже существует. Пожалуйста, не добавляйте его повторно';
}

// Path: AddProfileByLinkOrContentScreen
class _StringsAddProfileByLinkOrContentScreenRu implements _StringsAddProfileByLinkOrContentScreenEn {
	_StringsAddProfileByLinkOrContentScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Добавление подписки';
	@override String get updateTimerInterval => 'Интервал обновления';
	@override String get updateTimerIntervalTips => 'Чтобы отключить, установите:< 5 мин';
	@override String get profileLinkContent => 'Ссылка на подписку/содержание';
	@override String get profileLinkContentHit => 'Ссылка на подписку/содержание [обязательно] (Поддерживаются Clash, V2ray(c пакетом поддержки), Stash, Karing, Sing-box, Shadowsocks, Sub; Ссылка на конфигурацию).';
	@override String get subscriptionCannotEmpty => 'Ссылка на подписку не может быть пустой';
	@override String get configExist => 'Профиль уже существует. Пожалуйста, не добавляйте его повторно';
	@override String get invalidUrl => 'Ссылка на подписку слишком длинная';
	@override String addFailedFormatException({required Object p}) => 'Неправильный формат, исправьте его и добавьте еще раз:${p}';
	@override String addFailedThenDownloadAndImport({required Object p}) => 'Не удалось добавить: ${p}. Попробуйте изменить [UserAgent] и повторите попытку, или используйте собственный браузер устройства, чтобы открыть ссылку на конфигурацию и импортировать файл конфигурации, загруженный браузером, в это приложение.';
	@override String addFailedHandshakeException({required Object p}) => 'Не удалось добавить: ${p}, откройте агент или измените текущий узел агента и повторите попытку.';
}

// Path: AddProfileByScanQrcodeScanScreen
class _StringsAddProfileByScanQrcodeScanScreenRu implements _StringsAddProfileByScanQrcodeScanScreenEn {
	_StringsAddProfileByScanQrcodeScanScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get copy => 'Скопировать ссылку';
	@override String get open => 'Открыть ссылку';
	@override String get requestCameraPermission => 'Пожалуйста, разрешите приложению доступ к камере';
	@override String get requestScreenAccess => 'Пожалуйста, перейдите в «Настройки системы» — «Конфиденциальность и безопасность» — «Запись экрана», чтобы добавить разрешения для этого приложения';
	@override String get screenshot => 'Скриншот';
	@override String get scanFromImage => 'Открыть';
	@override String get scanNoResult => 'Не удалось проанализировать изображение. Убедитесь, что снимок экрана представляет собой действительный QR-код.';
	@override String get scanEmptyResult => 'Пустой результат сканирования.';
	@override String scanException({required Object p}) => 'Не удалось проанализировать изображение. Убедитесь, что снимок экрана представляет собой действительный QR-код:${p}';
}

// Path: BackupAndSyncLanSyncScreen
class _StringsBackupAndSyncLanSyncScreenRu implements _StringsBackupAndSyncLanSyncScreenEn {
	_StringsBackupAndSyncLanSyncScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Синхронизация по локальной сети';
	@override String get lanSyncNotQuitTips => 'Не выходите из этого окна до завершения синхронизации.';
}

// Path: BackupAndSyncWebdavScreen
class _StringsBackupAndSyncWebdavScreenRu implements _StringsBackupAndSyncWebdavScreenEn {
	_StringsBackupAndSyncWebdavScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Адрес сервера';
	@override String get webdavRequired => 'Не может быть пустым';
	@override String get webdavLoginFailed => 'Ошибка входа:';
	@override String get webdavListFailed => 'Не удалось получить список файлов:';
}

// Path: DiversionGroupCustomEditScreen
class _StringsDiversionGroupCustomEditScreenRu implements _StringsDiversionGroupCustomEditScreenEn {
	_StringsDiversionGroupCustomEditScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'Неверный [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => 'Неверный [IP Cidr]:${p}';
	@override String invalidPort({required Object p}) => 'Неверный [Port]:${p}';
	@override String invalidRuleSet({required Object p}) => 'Неверный [Rule Set]:${p}, URL-адрес должен быть действительным URL-адресом https двоичного файлом с расширением .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => 'Неверный [RuleSet(build-in)]:${p}, формат: geosite:xxx или geoip:xxx или acl:xxx, а xxx должно быть допустимым именем правила.';
	@override String get setDiversionRule => 'Совет: после сохранения перейдите в раздел [Правила перенаправления] и установите их, иначе изменения не будут действовать.';
}

// Path: DiversionRuleDetectScreen
class _StringsDiversionRuleDetectScreenRu implements _StringsDiversionRuleDetectScreenEn {
	_StringsDiversionRuleDetectScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тест правил перенаправления';
	@override String get detect => 'Тест';
	@override String get rule => 'Правило:';
	@override String get outbound => 'Прокси-сервер:';
}

// Path: DiversionRulesScreen
class _StringsDiversionRulesScreenRu implements _StringsDiversionRulesScreenEn {
	_StringsDiversionRulesScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Совет: Правила применяются по очереди сверху вниз. Если ни одно соответствие не обнаружено, то действует правило [Final]';
}

// Path: DnsSettingsScreen
class _StringsDnsSettingsScreenRu implements _StringsDnsSettingsScreenEn {
	_StringsDnsSettingsScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP не может быть пустой';
	@override String get urlCanNotEmpty => 'URL не может быть пустой';
	@override String error({required Object p}) => 'Неподдерживаемый тип:${p}';
	@override String get dnsDesc => 'Первый столбец данных — это задержка запроса при прямом соединении;\nВторой столбец, если включено [[действующий поток]Разрешать DNS через прокси-сервер]: данные — это задержка запроса, пересылаемого через текущий прокси-сервер; Если выключено [[действующий поток] Разрешать DNS через прокси-сервер]: данные - это задержка запроса при прямом соединении.';
}

// Path: FeedbackScreen
class _StringsFeedbackScreenRu implements _StringsFeedbackScreenEn {
	_StringsFeedbackScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get content => 'Содержание';
	@override String get contentHit => 'Не более 500 символов';
	@override String get contentCannotEmpty => 'Содержание не может быть пустым';
}

// Path: FileContentViewerScreen
class _StringsFileContentViewerScreenRu implements _StringsFileContentViewerScreenEn {
	_StringsFileContentViewerScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Просмотр содержимого файла';
	@override String get chooseFile => 'Выберите файл';
	@override String get clearFileContent => 'Вы уверены, что хотите очистить содержимое файла?';
	@override String get clearFileContentTips => 'Вы уверены, что  хотите очистить содержимое файла профиля? Очистка файла профиля может привести к потере данных или некорректной работе приложения. Действуйте осторожно.';
}

// Path: HomeScreen
class _StringsHomeScreenRu implements _StringsHomeScreenEn {
	_StringsHomeScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Выберите сервер';
	@override String get invalidServer => 'Просрочен. Пожалуйста, выберите другой';
	@override String get disabledServer => 'Был отключен. Пожалуйста, выберите другой';
	@override String get expiredServer => 'Нет доступного сервера: возможно, профиль устарел или отключен';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get trafficTotal => 'Трафик всего';
	@override String get trafficProxy => 'Трафик прокси';
	@override String get myLinkEmpty => 'Пожалуйста, настройте [Быструю ссылку] перед использованием';
	@override String get deviceNoSpace => 'Недостаточно места на диске';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}], и соединение может оказаться невозможным из-за ограничений системной памяти';
}

// Path: LaunchFailedScreen
class _StringsLaunchFailedScreenRu implements _StringsLaunchFailedScreenEn {
	_StringsLaunchFailedScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'Не удалось запустить приложение [Неверное имя процесса], переустановите приложение в отдельную папку';
	@override String get invalidProfile => 'Не удалось запустить приложение [Не удалось получить доступ к профилю], переустановите приложение';
	@override String get invalidVersion => 'Не удалось запустить приложение [Неверная версия], переустановите приложение';
	@override String get systemVersionLow => 'Не удалось запустить приложение [Слишком низкая версия системы]';
	@override String get startFromUNC => 'Путь установки недействителен, переустановите его по допустимому пути';
}

// Path: MyProfilesEditScreen
class _StringsMyProfilesEditScreenRu implements _StringsMyProfilesEditScreenEn {
	_StringsMyProfilesEditScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редактирование профилей';
	@override String get urlExist => 'URL-адрес уже существует, используйте другой URL-адрес';
	@override String get updateTimerInterval => 'Интервал обновления';
	@override String get updateTimerIntervalTips => 'Чтобы отключить, установите <5 мин';
	@override String get reloadAfterProfileUpdate => 'Перезагрузить после обновления профиля';
	@override String get testLatencyAfterProfileUpdate => 'Начать тестирование задержек после обновления профиля';
	@override String get testLatencyAfterProfileUpdateTips => 'VPN необходимо подключить, и включить [Перезагрузить после обновления профиля]';
	@override String get testLatencyAutoRemove => 'Автоматически удалять серверы, не прошедшие тесты на задержку';
	@override String get testLatencyAutoRemoveTips => 'Попробуйте до 3 раз';
}

// Path: MyProfilesMergeScreen
class _StringsMyProfilesMergeScreenRu implements _StringsMyProfilesMergeScreenEn {
	_StringsMyProfilesMergeScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Объединение профилей';
	@override String get profilesMergeTarget => 'Целевой профиль';
	@override String get profilesMergeSource => 'Профиль - источник';
	@override String get profilesMergeTips => 'Совет: Настройки перенаправления для профиля - источника будут удалены.';
}

// Path: MyProfilesScreen
class _StringsMyProfilesScreenRu implements _StringsMyProfilesScreenEn {
	_StringsMyProfilesScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профили';
	@override String get atLeastOneEnable => 'Невозможно отключить, оставьте включенным хотя бы один профиль';
}

// Path: NetCheckScreen
class _StringsNetCheckScreenRu implements _StringsNetCheckScreenEn {
	_StringsNetCheckScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Диагностика сети';
	@override String get warn => 'Примечание. Из-за влияния сетевой среды и правил перенаправления результаты теста не полностью эквивалентны фактическим результатам.';
	@override String get check => 'Тест';
	@override String get invalidDomain => 'Неверное имя домена';
	@override String get connectivity => 'Подключение к сети';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4 Тест подключения[${p}] неудачен';
	@override String get connectivityTestIpv4Ok => 'Ipv4 Соединение выполнено успешно';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6 Тест подключения[${p}] неудачен. Возможно, ваша сеть не поддерживает ipv6.';
	@override String get connectivityTestIpv6Ok => 'Ipv6 Соединение выполнено успешно';
	@override String get connectivityTestOk => 'Сеть подключена к Интернету';
	@override String get connectivityTestFailed => 'Ваша сеть не подключена к Интернету';
	@override String get remoteRulesetsDownloadOk => 'Все успешно скачано';
	@override String get remoteRulesetsDownloadNotOk => 'Загрузка или сбой';
	@override String get outbound => 'Прокси-сервер';
	@override String outboundOk({required Object p}) => '[${p}]Соединение установлено успешно';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}]Соединение не удалось\nошибка:[${p2}]';
	@override String get dnsServer => 'DNS сервер';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS Разобрано успешно\nDNS правило:[${p2}]\nЗадержка:[${p3} ms]\nадрес:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS Не удалось выполнить синтаксический анализ\n правило:[${p2}]\nошибка:[${p3}]';
	@override String get host => 'HTTP соединение';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nПравила перенаправления:[${p2}]\nПрокси-сервер:[${p3}]';
	@override String get hostConnectionOk => 'Соединение установлено успешно';
	@override String hostConnectionFailed({required Object p}) => 'Соединение не удалось:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _StringsNetConnectionsFilterScreenRu implements _StringsNetConnectionsFilterScreenEn {
	_StringsNetConnectionsFilterScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Фильтр соединений';
	@override String get hostIp => 'Domain/IP';
	@override String get app => 'Приложение';
	@override String get rule => 'Правило';
	@override String get chain => 'Исходящий';
}

// Path: NetConnectionsScreen
class _StringsNetConnectionsScreenRu implements _StringsNetConnectionsScreenEn {
	_StringsNetConnectionsScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Соединения';
	@override String get copyAsCSV => 'Скопировано в CSV формате';
	@override String get selectType => 'Выберите тип перенаправления';
}

// Path: PerAppAndroidScreen
class _StringsPerAppAndroidScreenRu implements _StringsPerAppAndroidScreenEn {
	_StringsPerAppAndroidScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Проксируемые приложения';
	@override String get whiteListMode => 'Режим белого списка';
	@override String get whiteListModeTip => 'Если включено: перенаправляются через прокси-сервер только те приложения, которые были отмечены. Если выключено: перенаправляются через прокси-сервер только те приложения, которые не были отмечены.';
	@override String get hideSystemApp => 'Скрыть системные приложения';
	@override String get hideAppIcon => 'Скрыть значок приложения';
	@override String get enableAppQueryPermission => 'Включать разрешения [на запросы списка приложений]';
}

// Path: QrcodeScreen
class _StringsQrcodeScreenRu implements _StringsQrcodeScreenEn {
	_StringsQrcodeScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get tooLong => 'Слишком большой текст для отображения';
	@override String get copy => 'Скопировать ссылку';
	@override String get open => 'Открыть ссылку';
	@override String get share => 'Поделиться ссылкой';
	@override String get shareImage => 'Поделиться QR-кодом';
}

// Path: RegionSettingsScreen
class _StringsRegionSettingsScreenRu implements _StringsRegionSettingsScreenEn {
	_StringsRegionSettingsScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Страна или регион';
	@override String get Regions => 'Совет: Пожалуйста, правильно укажите текущую страну или регион. В противном случае это может вызвать проблемы с перенаправлением в сети';
}

// Path: ServerSelectScreen
class _StringsServerSelectScreenRu implements _StringsServerSelectScreenEn {
	_StringsServerSelectScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Выбор сервера';
	@override String get autoSelectServer => 'Автовыбор сервера с наименьшей задержкой';
	@override String get recentUse => 'Недавно использованные';
	@override String get myFav => 'Мои избранные';
	@override String selectLocal({required Object p}) => 'Выбранный сервер является локальным, и может работать неправильно:${p}';
	@override String get selectRequireEnableIPv6 => 'Выбранный сервер имеет адрес IPv6 и требует [Включить IPv6]';
	@override String get selectDisabled => 'Сервер отключен';
	@override String get error404 => 'При  измерении задержки произошла ошибка. Проверьте, существует ли профиль с таким содержимым.';
}

// Path: SettingsScreen
class _StringsSettingsScreenRu implements _StringsSettingsScreenEn {
	_StringsSettingsScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String ispFaq({required Object p}) => 'FAQ[${p}]';
	@override String cleanISP({required Object p}) => 'Очистить ISP[${p}]';
	@override String get openISP => 'Открыть ссылку на провайдера';
	@override String get cleanISPNoParam => 'Очистить информацию об интернет-провайдере';
	@override String get getTranffic => 'Получить трафик';
	@override String get tutorial => 'Руководство';
	@override String get commonlyUsedRulesets => 'Часто используемые наборы правил';
	@override String get howToRemoveAds => 'Как удалить рекламу';
	@override String get htmlBoard => 'Веб-панель';
	@override String get dnsLeakDetection => 'Обнаружение утечки DNS';
	@override String get speedTest => 'Тест скорости';
	@override String get downloadProfilePreferProxy => 'Настройка приоритетного выбора прокси-сервера';
	@override String get downloadProfilePreferProxyTips => 'Если подключение установлено, профиль вначале будет загружен через подключенный прокси-сервер';
	@override String get rulesetDirectDownlad => 'Rule Set Прямой доступ';
	@override String get hideUnusedDiversionGroup => 'Скрыть неактивные правила перенаправления';
	@override String get disableISPDiversionGroup => 'Отключить правила перенаправления ISP';
	@override String get portSetting => 'Порт';
	@override String get portSettingRule => 'Основано на правилах';
	@override String get portSettingDirectAll => 'Полное прямое соединение';
	@override String get portSettingProxyAll => 'Прокси для всего';
	@override String get portSettingControl => 'Управление и синхронизация';
	@override String get portSettingCluster => 'Кластерный сервис';
	@override String get modifyPort => 'Изменить порт';
	@override String get ipStrategyTips => 'Перед включением убедитесь, что ваша сеть поддерживает IPv6, в противном случае нормальный доступ к части трафика будет невозможен';
	@override String get tunAppendHttpProxy => 'Подключите HTTP-прокси к VPN';
	@override String get tunAppendHttpProxyTips => 'Некоторые приложения будут обходить устройство виртуальной сетевой карты и напрямую подключаться к HTTP-прокси.';
	@override String get tlsInsecureEnable => 'Пропустить проверку сертификата';
	@override String get tlsFragmentEnable => 'Включить сегментацию TLS';
	@override String get tlsFragmentSize => 'Размер сегмента TLS';
	@override String get tlsFragmentSleep => 'Сегментированный сон TLS';
	@override String get tlsMixedCaseSNIEnable => 'Включить гибридный SNI TLS';
	@override String get tlsPaddingEnable => 'Включить заполнение TLS';
	@override String get tlsPaddingSize => 'Размер заполнения TLS';
	@override String get dnsEnableRule => 'Включить правила DNS';
	@override String get dnsEnableFakeIp => 'Включить FakeIP';
	@override String get dnsEnableClientSubnet => 'Включить ECS';
	@override String get dnsEnableProxyResolveByProxy => '[действующий поток] Разрешать DNS через прокси-сервер';
	@override String get dnsEnableFinalResolveByProxy => '[final] Разрешать DNS через прокси-сервер';
	@override String get dnsTestDomain => 'Тестовое доменное имя';
	@override String get dnsTestDomainInvalid => 'Неверное доменное имя';
	@override String get dnsTypeOutbound => 'Прокси-сервер';
	@override String get dnsTypeDirect => 'Прямой поток';
	@override String get dnsTypeProxy => 'Действующий поток';
	@override String get dnsTypeResolver => 'DNS-сервер';
	@override String get dnsEnableRuleTips => 'После включения, доменное имя выберет соответствующий DNS-сервер для разрешения в соответствии с правилами перенаправления.';
	@override String get dnsEnableFakeIpTips => 'После включения FakeIP, если VPN-соединение отключено, возможно, потребуется перезапустить приложение, эту функцию необходимо включить [Режим TUN];';
	@override String get dnsTypeOutboundTips => 'Для разрешения доменных имен прокси-сервера рекомендуется использовать безопасный DNS';
	@override String get dnsTypeDirectTips => 'Разрешение доменных имен для прямого потока';
	@override String get dnsTypeProxyTips => 'Разрешение доменных имен для действующего потока';
	@override String get dnsTypeResolverTips => 'Разрешение доменных имен для DNS-серверов';
	@override String get dnsTypeFinalTips => 'Разрешение доменных имен для потока Final';
	@override String get dnsAutoSetServer => 'Автоматически настроить сервер';
	@override String get dnsResetServer => 'Сбросить сервер';
	@override String get inboundDomainResolve => 'Разрешение входящих доменных имен';
	@override String get privateDirect => 'Прямое подключение к частной сети';
	@override String inboundDomainResolveTips({required Object p}) => 'Некоторые доменные имена без настроенных правил переадресации необходимо разрешить, прежде чем они смогут соответствовать правилам переадресации на основе IP; эта функция влияет на входящие запросы к порту прокси [${p}]';
	@override String get useRomoteRes => 'Использовать удаленные ресурсы';
	@override String get autoSelect => 'Автовыбор';
	@override String get autoSelectServerIgnorePerProxyServer => 'Игнорировать прокси-сервер [передний прокси]';
	@override String get autoSelectServerInterval => 'Интервал проверок задержки';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Перетестировать после смены сети';
	@override String get autoSelectServerIntervalTips => 'Чем короче временной интервал, тем чаще обновляются данные о задержке сервера. Но это потребует больше ресурсов и энергии';
	@override String get autoSelectServerFavFirst => 'Приоритетно [Мои избранные]';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Обновить текущий сервер после измерения задержки вручную';
	@override String get autoSelectServerFavFirstTips => 'Если список [Мои избранные] не пуст, то будут использоваться серверы из [Мои избранные]';
	@override String get autoSelectServerFilter => 'Отфильтровать сервера';
	@override String autoSelectServerFilterTips({required Object p}) => 'Ошибки превышения задержки сервера будут отфильтрованы; если после фильтрации ни один сервер не будет доступен, вместо него будут использоваться первые [${p}] серверы';
	@override String get autoSelectServerLimitedNum => 'Максимальное количество серверов';
	@override String get autoSelectServerLimitedNumTips => 'Серверы, превышающие это число, будут отфильтрованы.';
	@override String get numInvalid => 'Неправильный номер';
	@override String get hideInvalidServer => 'Скрыть нерабочие серверы';
	@override String get sortServer => 'Сортировка серверов';
	@override String get sortServerTips => 'Сортировать по задержке от низкой к высокой';
	@override String get selectServerHideRecommand => 'Скрыть [Рекомендуемые]';
	@override String get selectServerHideRecent => 'Скрыть [Недавно использованные]';
	@override String get selectServerHideFav => 'Скрыть [Мои избранные]';
	@override String get homeScreen => 'Домашний экран';
	@override String get theme => 'Тема';
	@override String get myLink => 'Быстрая ссылка';
	@override String get myLinkInvalid => 'Неверный URL';
	@override String get autoConnectAfterLaunch => 'Автоматическое подключение после запуска';
	@override String get hideAfterLaunch => 'Скрыть окно после запуска';
	@override String get autoSetSystemProxy => 'Установить прокси после подключения';
	@override String get disconnectWhenQuit => 'Отключаться при выходе из приложения';
	@override String get allowBypass => 'Разрешить приложениям обходить VPN';
	@override String get lanSyncTo => 'Синхронизировать на другие устройства';
	@override String get lanSyncFrom => 'Синхронизация с других устройств';
	@override String get lanSyncScanQRcode => 'Сканируйте QR-код для синхронизации';
	@override String get syncToConfirm => 'Подтвердить синхронизацию с собеседником?';
	@override String get syncDone => 'Синхронизация завершена';
	@override String get importSuccess => 'Импорт выполнен успешно';
	@override String get rewriteConfirm => 'Этот файл перезапишет существующую локальную конфигурацию. Продолжить?';
	@override String get networkShare => 'Общий доступ к сети';
	@override String get frontProxy => 'Фронт-прокси';
	@override String get frontProxyTips => 'Запрос -> фронт-прокси сервер -> прокси-сервер -> целевой сервер';
	@override String get allowOtherHostsConnect => 'Разрешить подключаться другим';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'Если после включения общего доступа другие люди не смогут получить доступ к этому устройству, попробуйте отключить этот переключатель.';
	@override String get enableCluster => 'Включить кластер прокси Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Разрешить подключаться другим';
	@override String clusterAllowOtherHostsConnectTips({required Object hp}) => 'http://127.0.0.1:${hp}/get_proxies';
	@override String get clusterAuth => 'Аутентификация прокси-кластера';
	@override String get clusterConfirm => 'Пожалуйста, подтвердите, что задержка серверов проверена. Прокси-сервисы не будут созданы, если они не проверены или проверены неверно';
	@override String get tunMode => 'Режим TUN';
	@override String get tunModeTips => 'В режиме TUN весь трафик системы будет перенаправлен через соединение [В этом режиме вы можете оставить системный прокси отключенным]';
	@override String get tunModeRunAsAdmin => 'Для режима TUN требуются права администратора. Перезапустите приложение от имени администратора';
	@override String get tunStack => 'Stack';
	@override String get launchAtStartup => 'Запуск при включении';
	@override String get quitWhenSwitchSystemUser => 'Переключить пользователя для выхода';
	@override String get handleScheme => 'Использовать схему системы с предварительным звонком';
	@override String get portableMode => 'Портативный режим';
	@override String get portableModeDisableTips => 'Если вам нужно выйти из портативного режима, выйдите из [karing] и вручную удалите папку [profiles] в том же каталоге, что и [karing.exe]';
	@override String get handleKaringScheme => 'Кнопка karing:// Позвонить';
	@override String get handleClashScheme => 'Кнопка clash:// Позвонить';
	@override String get handleSingboxScheme => 'Кнопка sing-box:// Позвонить';
	@override String get removeSystemVPNConfig => 'Удалить профиль VPN';
	@override String get timeConnectOrDisconnect => 'Запланированное подключение/отключение';
	@override String get timeConnectOrDisconnectTips => 'Чтобы это заработало, необходимо подключить VPN; после его подключения [автоматическое засыпание] будет отключено';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Интервал подключения/отключения не может быть меньше ${p} минут.';
	@override String get disableFontScaler => 'Отключить масштабирование шрифта';
	@override String get autoOrientation => 'Следите за поворотом экрана';
	@override String get restartTakesEffect => 'Требуется перезапуск';
	@override String get resetSettings => 'Сброс настроек';
	@override String get cleanCache => 'Очистка кэша';
	@override String get cleanCacheDone => 'Очистка завершена';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Обновить версию ${p}';
	@override String get follow => 'Подписаться на нас';
	@override String get contactUs => 'Связаться с нами';
	@override String get rateInApp => 'Оценить нас';
	@override String get rateInAppStore => 'Оценить нас в App Store';
}

// Path: SpeedTestSettingsScreen
class _StringsSpeedTestSettingsScreenRu implements _StringsSpeedTestSettingsScreenEn {
	_StringsSpeedTestSettingsScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL-адрес теста скорости';
	@override String get error => 'https URL должен быть действительным';
}

// Path: TextToQrCodeScreen
class _StringsTextToQrCodeScreenRu implements _StringsTextToQrCodeScreenEn {
	_StringsTextToQrCodeScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Преобразование текста в QR-код';
	@override String get convert => 'Конвертировать';
}

// Path: UrlTestSettingsScreen
class _StringsUrlTestSettingsScreenRu implements _StringsUrlTestSettingsScreenEn {
	_StringsUrlTestSettingsScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL-адрес измерения задержки';
	@override String get error => 'https URL должен быть действительным';
}

// Path: UserAgreementScreen
class _StringsUserAgreementScreenRu implements _StringsUserAgreementScreenEn {
	_StringsUserAgreementScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Ваша конфиденциальность превыше всего';
	@override String get agreeAndContinue => 'Принять и продолжить';
}

// Path: VersionUpdateScreen
class _StringsVersionUpdateScreenRu implements _StringsVersionUpdateScreenEn {
	_StringsVersionUpdateScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'Новая версия [${p}] доступна';
	@override String get update => 'Перезапустить';
	@override String get cancel => 'Не сейчас';
}

// Path: CommonWidget
class _StringsCommonWidgetRu implements _StringsCommonWidgetEn {
	_StringsCommonWidgetRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Если параметр [VPN всегда включен] включен, отключите его и попробуйте подключиться еще раз';
	@override String get resetPort => 'Пожалуйста, измените порт на другой доступный порт или закройте приложение, занимающее порт.';
}

// Path: ServerManager
class _StringsServerManagerRu implements _StringsServerManagerEn {
	_StringsServerManagerRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get noServerAvaliable => 'Нет доступных серверов, убедитесь что подписка или файл профиля корректен. Если ваша конфигурация взята из GitHub, получите адрес ссылки, нажав кнопку [Raw] на странице.';
	@override String get filePathCannotEmpty => 'Путь к файлу не может быть пустым';
	@override String fileNotExist({required Object p}) => 'Файла не существует:${p}';
	@override String get urlCannotEmpty => 'Ссылка не может быть пустой';
	@override String get invalidUrl => 'Некорректная ссылка на подписку';
	@override String get parseFailed => 'Получение подписки не удалось';
}

// Path: main
class _StringsMainRu implements _StringsMainEn {
	_StringsMainRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsMainTrayRu tray = _StringsMainTrayRu._(_root);
}

// Path: main.tray
class _StringsMainTrayRu implements _StringsMainTrayEn {
	_StringsMainTrayRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => '    Открыть    ';
	@override String get menuExit => '    Выйти    ';
}

// Path: <root>
class _StringsZhCn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsZhCn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsZhCn _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAboutScreenZhCn AboutScreen = _StringsAboutScreenZhCn._(_root);
	@override late final _StringsAddProfileByImportFromFileScreenZhCn AddProfileByImportFromFileScreen = _StringsAddProfileByImportFromFileScreenZhCn._(_root);
	@override late final _StringsAddProfileByLinkOrContentScreenZhCn AddProfileByLinkOrContentScreen = _StringsAddProfileByLinkOrContentScreenZhCn._(_root);
	@override late final _StringsAddProfileByScanQrcodeScanScreenZhCn AddProfileByScanQrcodeScanScreen = _StringsAddProfileByScanQrcodeScanScreenZhCn._(_root);
	@override late final _StringsBackupAndSyncLanSyncScreenZhCn BackupAndSyncLanSyncScreen = _StringsBackupAndSyncLanSyncScreenZhCn._(_root);
	@override late final _StringsBackupAndSyncWebdavScreenZhCn BackupAndSyncWebdavScreen = _StringsBackupAndSyncWebdavScreenZhCn._(_root);
	@override late final _StringsDiversionGroupCustomEditScreenZhCn DiversionGroupCustomEditScreen = _StringsDiversionGroupCustomEditScreenZhCn._(_root);
	@override late final _StringsDiversionRuleDetectScreenZhCn DiversionRuleDetectScreen = _StringsDiversionRuleDetectScreenZhCn._(_root);
	@override late final _StringsDiversionRulesScreenZhCn DiversionRulesScreen = _StringsDiversionRulesScreenZhCn._(_root);
	@override late final _StringsDnsSettingsScreenZhCn DnsSettingsScreen = _StringsDnsSettingsScreenZhCn._(_root);
	@override late final _StringsFeedbackScreenZhCn FeedbackScreen = _StringsFeedbackScreenZhCn._(_root);
	@override late final _StringsFileContentViewerScreenZhCn FileContentViewerScreen = _StringsFileContentViewerScreenZhCn._(_root);
	@override late final _StringsHomeScreenZhCn HomeScreen = _StringsHomeScreenZhCn._(_root);
	@override late final _StringsLaunchFailedScreenZhCn LaunchFailedScreen = _StringsLaunchFailedScreenZhCn._(_root);
	@override late final _StringsMyProfilesEditScreenZhCn MyProfilesEditScreen = _StringsMyProfilesEditScreenZhCn._(_root);
	@override late final _StringsMyProfilesMergeScreenZhCn MyProfilesMergeScreen = _StringsMyProfilesMergeScreenZhCn._(_root);
	@override late final _StringsMyProfilesScreenZhCn MyProfilesScreen = _StringsMyProfilesScreenZhCn._(_root);
	@override late final _StringsNetCheckScreenZhCn NetCheckScreen = _StringsNetCheckScreenZhCn._(_root);
	@override late final _StringsNetConnectionsFilterScreenZhCn NetConnectionsFilterScreen = _StringsNetConnectionsFilterScreenZhCn._(_root);
	@override late final _StringsNetConnectionsScreenZhCn NetConnectionsScreen = _StringsNetConnectionsScreenZhCn._(_root);
	@override late final _StringsPerAppAndroidScreenZhCn PerAppAndroidScreen = _StringsPerAppAndroidScreenZhCn._(_root);
	@override late final _StringsQrcodeScreenZhCn QrcodeScreen = _StringsQrcodeScreenZhCn._(_root);
	@override late final _StringsRegionSettingsScreenZhCn RegionSettingsScreen = _StringsRegionSettingsScreenZhCn._(_root);
	@override late final _StringsServerSelectScreenZhCn ServerSelectScreen = _StringsServerSelectScreenZhCn._(_root);
	@override late final _StringsSettingsScreenZhCn SettingsScreen = _StringsSettingsScreenZhCn._(_root);
	@override late final _StringsSpeedTestSettingsScreenZhCn SpeedTestSettingsScreen = _StringsSpeedTestSettingsScreenZhCn._(_root);
	@override late final _StringsTextToQrCodeScreenZhCn TextToQrCodeScreen = _StringsTextToQrCodeScreenZhCn._(_root);
	@override late final _StringsUrlTestSettingsScreenZhCn UrlTestSettingsScreen = _StringsUrlTestSettingsScreenZhCn._(_root);
	@override late final _StringsUserAgreementScreenZhCn UserAgreementScreen = _StringsUserAgreementScreenZhCn._(_root);
	@override late final _StringsVersionUpdateScreenZhCn VersionUpdateScreen = _StringsVersionUpdateScreenZhCn._(_root);
	@override late final _StringsCommonWidgetZhCn CommonWidget = _StringsCommonWidgetZhCn._(_root);
	@override late final _StringsServerManagerZhCn ServerManager = _StringsServerManagerZhCn._(_root);
	@override late final _StringsMainZhCn main = _StringsMainZhCn._(_root);
	@override String get enable => '启用';
	@override String get disable => '禁用';
	@override String get prefer => '优先';
	@override String get only => '仅';
	@override String get open => '打开';
	@override String get close => '关闭';
	@override String get quit => '退出';
	@override String get add => '添加';
	@override String get remove => '删除';
	@override String get edit => '编辑';
	@override String get view => '查看';
	@override String get more => '更多';
	@override String get addProfile => '添加配置';
	@override String get addSuccess => '添加成功';
	@override String addSuccessThen({required Object p}) => '配置生成成功,请到[${p}]查看';
	@override String addFailed({required Object p}) => '添加失败:${p}';
	@override String get removeConfirm => '确认删除?';
	@override String get tips => '提示';
	@override String get copy => '拷贝';
	@override String get ok => '确定';
	@override String get cancel => '取消';
	@override String get feedback => '反馈';
	@override String get faq => '常见问题';
	@override String get download => '下载';
	@override String get loading => '加载中...';
	@override String updateFailed({required Object p}) => '更新失败:${p}';
	@override String get days => '天';
	@override String get hours => '时';
	@override String get minutes => '分';
	@override String get seconds => '秒';
	@override String get protocol => '协议';
	@override String get search => '搜索';
	@override String get custom => '自定义';
	@override String get connect => '连接';
	@override String get disconnect => '断开';
	@override String get connected => '已连接';
	@override String get disconnected => '未连接';
	@override String get connecting => '连接中';
	@override String get connectTimeout => '连接超时';
	@override String get timeout => '超时';
	@override String get language => '语言';
	@override String get next => '下一步';
	@override String get done => '完成';
	@override String get apply => '应用';
	@override String get refresh => '刷新';
	@override String get retry => '是否重试?';
	@override String get none => '无';
	@override String get reset => '重置';
	@override String get submit => '提交';
	@override String get account => '账号';
	@override String get password => '密码';
	@override String get required => '必填';
	@override String get diversion => '分流';
	@override String get diversionRules => '分流规则';
	@override String get diversionRulesEnable => '启用[ISP]分流规则';
	@override String get diversionCustomGroup => '自定义分流组';
	@override String get diversionCustomGroupPreset => '预置[自定义分流组]';
	@override String get diversionCustomGroupPresetTips => '注意:启用的项会添加/覆盖到[自定义分流组]和[分流规则]';
	@override String get diversionCustomGroupAddTips => '注意:添加完毕后可能需要手动调整排序,否则新添加的分流可能不会生效';
	@override String get urlTestCustomGroup => '自定义代理组';
	@override String get rulesetEnableTips => '提示:开启选项后,请到[分流规则]设置相关规则,否则不会生效';
	@override String get ispUserAgentTips => '[ISP]会根据[HTTP]请求里的[UserAgent]下发不同订阅类型的数据';
	@override String get ispDiversionTips => '[ISP]提供的分流规则;[V2Ray]类型的订阅不支持分流规则';
	@override String get staticIP => '静态IP';
	@override String get other => '其他';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get isp => 'ISP';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get urlInvalid => '无效URL';
	@override String get outboundActionCurrentSelected => '当前选择';
	@override String get outboundActionUrltest => '自动选择';
	@override String get outboundActionDirect => '直连';
	@override String get outboundActionBlock => '拦截';
	@override String get routeFinal => 'final';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get setting => '设置';
	@override String get protocolSniff => '协议探测';
	@override String get protocolSniffOverrideDestination => '探测的域名覆盖连接目标地址';
	@override String get remark => '备注';
	@override String get remarkCannotEmpty => '备注不能为空';
	@override String get remarkTooLong => '备注最长32字符';
	@override String get remarkExist => '备注已存在,请使用其他名称';
	@override String get domainSuffix => '域名后缀';
	@override String get domain => '域名';
	@override String get domainKeyword => '域名关键词';
	@override String get domainRegex => '域名正则';
	@override String get ip => 'IP';
	@override String get port => '端口';
	@override String get appPackage => '应用包名';
	@override String get processName => '进程名称';
	@override String get processPath => '进程路径';
	@override String get systemProxy => '系统代理';
	@override String get netInterfaces => '网络接口';
	@override String get netSpeed => '速度';
	@override String get website => '官网';
	@override String get rule => '规则';
	@override String get global => '全局';
	@override String get qrcode => '二维码';
	@override String get scanQrcode => '扫描二维码';
	@override String get scanResult => '扫描结果';
	@override String get backupAndSync => '备份与同步';
	@override String get importAndExport => '导入/导出';
	@override String get import => '导入';
	@override String get export => '导出';
	@override String get termOfUse => '使用条款';
	@override String get privacyPolicy => '隐私政策';
	@override String get about => '关于';
	@override String get name => '名称';
	@override String get version => '版本';
	@override String get notice => '通知';
	@override String get sort => '排序';
	@override String get novice => '新手模式';
	@override String get recommended => '推荐';
	@override String innerError({required Object p}) => '内部错误:${p}';
	@override String get logicOperation => '逻辑运算';
	@override String get share => '分享';
	@override String get candidateWord => '候选词';
	@override String get keywordsOrRegx => '关键词/正则';
	@override String get importFromClipboard => '从剪切板导入';
	@override String get exportToClipboard => '导出到剪切板';
	@override String get server => '服务器';
	@override String get appleTVConnectTurnOfprivateDirect => '请先开启[私有网络直连]';
	@override String targetConnectFailed({required Object p}) => '连接[${p}]失败,请确保设备在同一个局域网内,并且开启[私有网络直连]';
	@override String get appleTVSync => '同步当前核心配置到Apple TV - Karing';
	@override String get appleTVSyncDone => '同步完成,请到Apple TV - Karing开启连接/重启连接';
	@override String get appleTVRemoveCoreConfig => '删除Apple TV - Karing核心配置';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing的核心配置文件已删除;VPN服务已断开连接';
	@override String get appleTVUrlInvalid => '无效的URL,请打开Apple TV - Karing,扫描Karing显示的二维码';
	@override String get remoteProfileEditConfirm => '配置更新后,节点的修改将会被还原,是否继续?';
	@override String invalidFileType({required Object p}) => '无效的文件类型:${p}';
	@override Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
	};
}

// Path: AboutScreen
class _StringsAboutScreenZhCn implements _StringsAboutScreenEn {
	_StringsAboutScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get installRefer => '安装参考';
	@override String get versionChannel => '自动更新通道';
	@override String get disableUAReport => '关闭行为数据上报';
	@override String get disableUAReportTip => '行为数据上报有助于我们改进产品体验;低于主版本的版本将自动关闭的所有数据上报([应用激活]除外)';
	@override String get devOptions => '开发者选项';
	@override String get enableDebugLog => '开启调试日志';
	@override String get viewFilsContent => '查看文件';
	@override String get enablePprof => '启用pprof';
	@override String get pprofPanel => 'pprof面板';
	@override String get openDir => '打开文件目录';
	@override String get useOriginalSBProfile => '使用原始sing-box配置';
}

// Path: AddProfileByImportFromFileScreen
class _StringsAddProfileByImportFromFileScreenZhCn implements _StringsAddProfileByImportFromFileScreenEn {
	_StringsAddProfileByImportFromFileScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '导入配置文件';
	@override String get chooseFile => '选择文件';
	@override String get configExist => '配置已存在,请勿重复添加';
}

// Path: AddProfileByLinkOrContentScreen
class _StringsAddProfileByLinkOrContentScreenZhCn implements _StringsAddProfileByLinkOrContentScreenEn {
	_StringsAddProfileByLinkOrContentScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '添加配置链接';
	@override String get updateTimerInterval => '更新时间间隔';
	@override String get updateTimerIntervalTips => '禁用请设置为:<5m';
	@override String get profileLinkContent => '配置链接/内容';
	@override String get profileLinkContentHit => '配置链接/内容[必填] (支持Clash,V2ray(支持批量),Stash,Karing,Sing-box,Shadowsocks,Sub,Github配置链接)';
	@override String get subscriptionCannotEmpty => '配置链接不能为空';
	@override String get configExist => '配置已存在,请勿重复添加';
	@override String get invalidUrl => '配置链接长度过长';
	@override String addFailedFormatException({required Object p}) => '格式错误,请订正后重新添加:${p}';
	@override String addFailedThenDownloadAndImport({required Object p}) => '添加失败:${p}, 请尝试修改[UserAgent]后重试,或者用设备自带的浏览器打开配置链接,并将浏览器下载的配置文件导入到本应用';
	@override String addFailedHandshakeException({required Object p}) => '添加失败:${p}, 请打开代理或者修改当前代理节点后重试';
}

// Path: AddProfileByScanQrcodeScanScreen
class _StringsAddProfileByScanQrcodeScanScreenZhCn implements _StringsAddProfileByScanQrcodeScanScreenEn {
	_StringsAddProfileByScanQrcodeScanScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get copy => '拷贝链接';
	@override String get open => '打开链接';
	@override String get requestCameraPermission => '请开启摄像头权限';
	@override String get requestScreenAccess => '请到系统设置-隐私与安全-屏幕录制 为本应用添加权限';
	@override String get screenshot => '截图';
	@override String get scanFromImage => '打开二维码图片';
	@override String get scanNoResult => '解析图片失败,请确保截图为有效的二维码';
	@override String get scanEmptyResult => '扫描结果为空';
	@override String scanException({required Object p}) => '解析图片异常,请确保截图为有效的二维码:${p}';
}

// Path: BackupAndSyncLanSyncScreen
class _StringsBackupAndSyncLanSyncScreenZhCn implements _StringsBackupAndSyncLanSyncScreenEn {
	_StringsBackupAndSyncLanSyncScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '局域网同步';
	@override String get lanSyncNotQuitTips => '同步完成前请勿退出此界面';
}

// Path: BackupAndSyncWebdavScreen
class _StringsBackupAndSyncWebdavScreenZhCn implements _StringsBackupAndSyncWebdavScreenEn {
	_StringsBackupAndSyncWebdavScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => '服务器地址';
	@override String get webdavRequired => '不能为空';
	@override String get webdavLoginFailed => '登录失败:';
	@override String get webdavListFailed => '获取文件列表失败:';
}

// Path: DiversionGroupCustomEditScreen
class _StringsDiversionGroupCustomEditScreenZhCn implements _StringsDiversionGroupCustomEditScreenEn {
	_StringsDiversionGroupCustomEditScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => '无效的 [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => '无效的 [IP Cidr]:${p}';
	@override String invalidPort({required Object p}) => '无效的 [Port]:${p}';
	@override String invalidRuleSet({required Object p}) => '无效的 [Rule Set]:${p}, URL必须是有效的https URL,并且文件扩展名为.srs/.json的binary文件';
	@override String invalidRuleSetBuildIn({required Object p}) => '无效的 [Rule Set(build-in)]:${p}, 格式为geosite:xxx 或 geoip:xxx 或 acl:xxx,并且xxx应为有效的规则名';
	@override String get setDiversionRule => '提示:保存后,请到[分流规则]设置相关规则,否则不会生效';
}

// Path: DiversionRuleDetectScreen
class _StringsDiversionRuleDetectScreenZhCn implements _StringsDiversionRuleDetectScreenEn {
	_StringsDiversionRuleDetectScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '分流规则探测';
	@override String get detect => '探测';
	@override String get rule => '规则:';
	@override String get outbound => '代理服务器:';
}

// Path: DiversionRulesScreen
class _StringsDiversionRulesScreenZhCn implements _StringsDiversionRulesScreenEn {
	_StringsDiversionRulesScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => '提示:从上到下依次尝试匹配规则,如果没有匹配到规则,则使用[final]';
}

// Path: DnsSettingsScreen
class _StringsDnsSettingsScreenZhCn implements _StringsDnsSettingsScreenEn {
	_StringsDnsSettingsScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP 不能为空';
	@override String get urlCanNotEmpty => 'URL 不能为空';
	@override String error({required Object p}) => '不支持的类型:${p}';
	@override String get dnsDesc => '第一列延迟数据为直连查询延迟;\n第二列:开启[[代理流量]通过代理服务器解析DNS]:延迟数据为通过当前代理服务器转发的查询延迟;未开启[[代理流量]通过代理服务器解析DNS]:延迟数据为直连查询延迟';
}

// Path: FeedbackScreen
class _StringsFeedbackScreenZhCn implements _StringsFeedbackScreenEn {
	_StringsFeedbackScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get content => '反馈内容';
	@override String get contentHit => '必填, 最长500字符';
	@override String get contentCannotEmpty => '反馈内容不能为空';
}

// Path: FileContentViewerScreen
class _StringsFileContentViewerScreenZhCn implements _StringsFileContentViewerScreenEn {
	_StringsFileContentViewerScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '文件内容查看';
	@override String get chooseFile => '选择文件';
	@override String get clearFileContent => '确认清空文件内容?';
	@override String get clearFileContentTips => '确认清空配置文件内容? 清空配置文件可能会导致数据丢失或应用功能异常, 请谨慎操作';
}

// Path: HomeScreen
class _StringsHomeScreenZhCn implements _StringsHomeScreenEn {
	_StringsHomeScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => '请选择服务器';
	@override String get invalidServer => '已失效,请重新选择';
	@override String get disabledServer => '已被禁用,请重新选择';
	@override String get expiredServer => '无可用服务器:配置可能已过期或被禁用';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get trafficTotal => '总流量';
	@override String get trafficProxy => '代理流量';
	@override String get myLinkEmpty => '请先设置[快捷链接]后再使用';
	@override String get deviceNoSpace => '磁盘空间不足';
	@override String tooMuchServers({required Object p, required Object p1}) => '代理服务器[${p}>${p1}]过多,可能因系统内存限制而无法连接';
}

// Path: LaunchFailedScreen
class _StringsLaunchFailedScreenZhCn implements _StringsLaunchFailedScreenEn {
	_StringsLaunchFailedScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => '应用启动失败[无效的进程名称],请重新安装应用到独立目录';
	@override String get invalidProfile => '应用启动失败[访问配置文件失败],请重新安装应用';
	@override String get invalidVersion => '应用启动失败[无效版本],请重新安装应用';
	@override String get systemVersionLow => '应用启动失败[系统版本过低]';
	@override String get startFromUNC => '无效的安装路径,请重新安装到有效路径';
}

// Path: MyProfilesEditScreen
class _StringsMyProfilesEditScreenZhCn implements _StringsMyProfilesEditScreenEn {
	_StringsMyProfilesEditScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '编辑配置';
	@override String get urlExist => 'URL已存在,请使用其他URL';
	@override String get updateTimerInterval => '更新时间间隔';
	@override String get updateTimerIntervalTips => '禁用请设置为:<5m';
	@override String get reloadAfterProfileUpdate => '配置更新后重新加载';
	@override String get testLatencyAfterProfileUpdate => '配置自动更新后启动延迟测试';
	@override String get testLatencyAfterProfileUpdateTips => 'VPN需要处于已连接状态,并且开启[配置更新后重新加载]';
	@override String get testLatencyAutoRemove => '自动移除延迟测试失败的服务器';
	@override String get testLatencyAutoRemoveTips => '最多尝试3次';
}

// Path: MyProfilesMergeScreen
class _StringsMyProfilesMergeScreenZhCn implements _StringsMyProfilesMergeScreenEn {
	_StringsMyProfilesMergeScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => '配置合并';
	@override String get profilesMergeTarget => '目标配置';
	@override String get profilesMergeSource => '源配置';
	@override String get profilesMergeTips => '提示:源配置的分流信息将会被丢弃';
}

// Path: MyProfilesScreen
class _StringsMyProfilesScreenZhCn implements _StringsMyProfilesScreenEn {
	_StringsMyProfilesScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '我的配置';
	@override String get atLeastOneEnable => '无法禁用,请至少保留一个配置可用';
}

// Path: NetCheckScreen
class _StringsNetCheckScreenZhCn implements _StringsNetCheckScreenEn {
	_StringsNetCheckScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '网络检测';
	@override String get warn => '注意:由于受网络环境及分流规则等影响,测试结果并不完全等价实际中使用的效果';
	@override String get check => '检测';
	@override String get invalidDomain => '无效域名';
	@override String get connectivity => '网络联通性';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4 连接测试[${p}]全部失败';
	@override String get connectivityTestIpv4Ok => 'Ipv4 连接成功';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6 连接测试[${p}]全部失败, 你的网络可能不支持ipv6';
	@override String get connectivityTestIpv6Ok => 'Ipv6 连接成功';
	@override String get connectivityTestOk => '网络已接入互联网';
	@override String get connectivityTestFailed => '网络尚未接入互联网';
	@override String get remoteRulesetsDownloadOk => '全部下载成功';
	@override String get remoteRulesetsDownloadNotOk => '正在下载或下载失败';
	@override String get outbound => '代理服务器';
	@override String outboundOk({required Object p}) => '[${p}]连接成功';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}]连接失败\n错误:[${p2}]';
	@override String get dnsServer => 'DNS服务器';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]域名解析成功\nDNS规则:[${p2}]\n延迟:[${p3} ms]\n地址:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]域名解析失败\n规则:[${p2}]\n错误:[${p3}]';
	@override String get host => 'HTTP连接';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\n分流规则:[${p2}]\n代理服务器:[${p3}]';
	@override String get hostConnectionOk => '连接成功';
	@override String hostConnectionFailed({required Object p}) => '连接失败:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _StringsNetConnectionsFilterScreenZhCn implements _StringsNetConnectionsFilterScreenEn {
	_StringsNetConnectionsFilterScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '连接状态筛选';
	@override String get hostIp => '域名/IP';
	@override String get app => '应用';
	@override String get rule => '规则';
	@override String get chain => '出站';
}

// Path: NetConnectionsScreen
class _StringsNetConnectionsScreenZhCn implements _StringsNetConnectionsScreenEn {
	_StringsNetConnectionsScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '连接状态';
	@override String get copyAsCSV => '已复制为CSV格式';
	@override String get selectType => '选择分流类型';
}

// Path: PerAppAndroidScreen
class _StringsPerAppAndroidScreenZhCn implements _StringsPerAppAndroidScreenEn {
	_StringsPerAppAndroidScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '分应用代理';
	@override String get whiteListMode => '白名单模式';
	@override String get whiteListModeTip => '启用后:仅代理已勾选的App;未启用:仅代理未勾选的App';
	@override String get hideSystemApp => '隐藏系统应用';
	@override String get hideAppIcon => '隐藏应用图标';
	@override String get enableAppQueryPermission => '开启 [获取应用列表] 权限';
}

// Path: QrcodeScreen
class _StringsQrcodeScreenZhCn implements _StringsQrcodeScreenEn {
	_StringsQrcodeScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get tooLong => '文本过长,无法展示';
	@override String get copy => '拷贝链接';
	@override String get open => '打开链接';
	@override String get share => '分享链接';
	@override String get shareImage => '分享二维码';
}

// Path: RegionSettingsScreen
class _StringsRegionSettingsScreenZhCn implements _StringsRegionSettingsScreenEn {
	_StringsRegionSettingsScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '国家与地区';
	@override String get Regions => '提示:请正确设置你当前所在国家或地区,否则可能会导致分流错误';
}

// Path: ServerSelectScreen
class _StringsServerSelectScreenZhCn implements _StringsServerSelectScreenEn {
	_StringsServerSelectScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '选择服务器';
	@override String get autoSelectServer => '自动选择延迟最低的服务器';
	@override String get recentUse => '最近使用';
	@override String get myFav => '我的收藏';
	@override String selectLocal({required Object p}) => '所选服务器为本地地址,可能无法正常使用:${p}';
	@override String get selectRequireEnableIPv6 => '所选服务器为IPv6地址,需要[启用IPv6]';
	@override String get selectDisabled => '该服务器已被禁用';
	@override String get error404 => '延迟检测遇到错误,请检查是否存在内容相同的配置';
}

// Path: SettingsScreen
class _StringsSettingsScreenZhCn implements _StringsSettingsScreenEn {
	_StringsSettingsScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String ispFaq({required Object p}) => 'FAQ[${p}]';
	@override String cleanISP({required Object p}) => '清除ISP[${p}]';
	@override String get openISP => '打开ISP链接';
	@override String get cleanISPNoParam => '清除ISP信息';
	@override String get getTranffic => '获取流量';
	@override String get tutorial => '使用教程';
	@override String get commonlyUsedRulesets => '常用规则集';
	@override String get howToRemoveAds => '如何移除广告';
	@override String get htmlBoard => '在线面板';
	@override String get dnsLeakDetection => 'DNS泄露检测';
	@override String get speedTest => '测速';
	@override String get downloadProfilePreferProxy => '优先使用代理下载配置';
	@override String get downloadProfilePreferProxyTips => '如果当前已连接,则优先通过已连接的代理下载配置';
	@override String get rulesetDirectDownlad => 'Rule Set直连下载';
	@override String get hideUnusedDiversionGroup => '隐藏未启用的分流组';
	@override String get disableISPDiversionGroup => '禁用ISP分流规则';
	@override String get portSetting => '端口';
	@override String get portSettingRule => '基于规则';
	@override String get portSettingDirectAll => '全直连';
	@override String get portSettingProxyAll => '全代理';
	@override String get portSettingControl => '控制与同步';
	@override String get portSettingCluster => '集群服务';
	@override String get modifyPort => '修改端口';
	@override String get ipStrategyTips => '启用前,请先确认你的网络已支持IPv6,否则某些流量无法正常访问';
	@override String get tunAppendHttpProxy => '附加HTTP代理到VPN';
	@override String get tunAppendHttpProxyTips => '一些App会绕过虚拟网卡设备直连HTTP代理';
	@override String get tlsInsecureEnable => '跳过证书验证';
	@override String get tlsFragmentEnable => '启用TLS分段';
	@override String get tlsFragmentSize => 'TLS分段大小';
	@override String get tlsFragmentSleep => 'TLS分段休眠';
	@override String get tlsMixedCaseSNIEnable => '启用TLS混合SNI';
	@override String get tlsPaddingEnable => '启用TLS填充';
	@override String get tlsPaddingSize => 'TLS填充大小';
	@override String get dnsEnableRule => '启用DNS分流规则';
	@override String get dnsEnableFakeIp => '启用FakeIP';
	@override String get dnsEnableClientSubnet => '启用ECS';
	@override String get dnsEnableProxyResolveByProxy => '[代理流量]通过代理服务器解析DNS';
	@override String get dnsEnableFinalResolveByProxy => '[final]通过代理服务器解析DNS';
	@override String get dnsTestDomain => '测试域名';
	@override String get dnsTestDomainInvalid => '无效的域名';
	@override String get dnsTypeOutbound => '代理服务器';
	@override String get dnsTypeDirect => '直连流量';
	@override String get dnsTypeProxy => '代理流量';
	@override String get dnsTypeResolver => 'DNS服务器';
	@override String get dnsEnableRuleTips => '启用后,域名会根据分流规则选择对应的DNS服务器进行解析';
	@override String get dnsEnableFakeIpTips => '启用FakeIP后,如果断开VPN连接,你的应用可能需要重启;此功能需要开启[TUN模式]';
	@override String get dnsTypeOutboundTips => '用于代理服务器的域名解析';
	@override String get dnsTypeDirectTips => '用于直连流量的域名解析';
	@override String get dnsTypeProxyTips => '用于代理流量的域名解析';
	@override String get dnsTypeResolverTips => '用于DNS服务器的域名解析';
	@override String get dnsTypeFinalTips => '用于其他流量的域名解析';
	@override String get dnsAutoSetServer => '自动设置服务器';
	@override String get dnsResetServer => '重置服务器';
	@override String get inboundDomainResolve => '解析入站域名';
	@override String get privateDirect => '私有网络直连';
	@override String inboundDomainResolveTips({required Object p}) => '某些未配置分流规则的域名需要解析后才可能命中基于IP的分流规则;此功能影响代理端口[${p}]的入站请求';
	@override String get useRomoteRes => '使用远程资源';
	@override String get autoSelect => '自动选择';
	@override String get autoSelectServerIgnorePerProxyServer => '忽略[前置代理]代理服务器';
	@override String get autoSelectServerInterval => '延迟检测时间间隔';
	@override String get autoSelectServerReTestIfNetworkUpdate => '网络变化时重新检测';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => '手动延时检测后更新当前服务器';
	@override String get autoSelectServerIntervalTips => '延迟检测时间间隔越短,服务器延迟数据更新越及时,但会占用更多资源,耗电更快';
	@override String get autoSelectServerFavFirst => '优先使用[我的收藏]';
	@override String get autoSelectServerFavFirstTips => '如果[我的收藏]列表不为空,则使用[我的收藏]里的服务器';
	@override String get autoSelectServerFilter => '过滤无效服务器';
	@override String autoSelectServerFilterTips({required Object p}) => '服务器延迟检测失败的将会被过滤掉;如果过滤后无服务器可用,则改用前[${p}]个服务器';
	@override String get autoSelectServerLimitedNum => '服务器数量上限';
	@override String get autoSelectServerLimitedNumTips => '超过该数量的服务器将被过滤掉';
	@override String get numInvalid => '无效的数字';
	@override String get hideInvalidServer => '隐藏无效服务器';
	@override String get sortServer => '服务器排序';
	@override String get sortServerTips => '按延迟由低到高排序';
	@override String get selectServerHideRecommand => '隐藏[推荐]';
	@override String get selectServerHideRecent => '隐藏[最近使用]';
	@override String get selectServerHideFav => '隐藏[我的收藏]';
	@override String get homeScreen => '主屏';
	@override String get theme => '主题';
	@override String get myLink => '快捷链接';
	@override String get myLinkInvalid => '无效的URL';
	@override String get autoConnectAfterLaunch => '启动后自动连接';
	@override String get hideAfterLaunch => '启动后隐藏窗口';
	@override String get autoSetSystemProxy => '连接后自动设置系统代理';
	@override String get disconnectWhenQuit => '退出应用时关闭连接';
	@override String get allowBypass => '允许应用绕过VPN';
	@override String get lanSyncTo => '同步给他人';
	@override String get lanSyncFrom => '从他人同步';
	@override String get lanSyncScanQRcode => '扫码同步';
	@override String get syncToConfirm => '确认同步给对方?';
	@override String get syncDone => '同步完成';
	@override String get importSuccess => '导入成功';
	@override String get rewriteConfirm => '该文件将覆盖本地已有配置,是否继续?';
	@override String get networkShare => '网络共享';
	@override String get frontProxy => '前置代理';
	@override String get frontProxyTips => '数据->前置代理服务器->代理服务器->目标服务器';
	@override String get allowOtherHostsConnect => '允许其他主机接入';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => '严格路由';
	@override String get tunStrictRouteTips => '如果开启共享后,其他无法接入此设备,请尝试关闭此开关';
	@override String get enableCluster => '开启Socks/Http代理集群';
	@override String get clusterAllowOtherHostsConnect => '允许其他主机接入代理集群';
	@override String clusterAllowOtherHostsConnectTips({required Object hp}) => 'http://127.0.0.1:${hp}/get_proxies';
	@override String get clusterAuth => '代理集群认证';
	@override String get clusterConfirm => '请确认服务器已经过服务器延迟检测,未检测或者检测出错的将不会创建代理服务';
	@override String get tunMode => 'TUN模式';
	@override String get tunModeTips => 'TUN模式将接管系统所有流量[此模式下无需开启系统代理]';
	@override String get tunModeRunAsAdmin => 'TUN模式需要系统管理员权限,请以管理员身份重新启动应用';
	@override String get tunStack => '网络栈';
	@override String get launchAtStartup => '开机启动';
	@override String get quitWhenSwitchSystemUser => '切换系统用户时退出应用';
	@override String get handleScheme => '系统Scheme调用';
	@override String get portableMode => '便携模式';
	@override String get portableModeDisableTips => '如需退出便携模式,请退出[karing]后,手动删除[karing.exe]同目录下的[profiles]文件夹即可';
	@override String get handleKaringScheme => '处理karing://调用';
	@override String get handleClashScheme => '处理clash://调用';
	@override String get handleSingboxScheme => '处理sing-box://调用';
	@override String get removeSystemVPNConfig => '删除系统VPN配置';
	@override String get timeConnectOrDisconnect => '定时连接/断开';
	@override String get timeConnectOrDisconnectTips => 'VPN必须处于连接状态才会生效;开启后,[自动休眠]将失效';
	@override String timeConnectAndDisconnectInterval({required Object p}) => '连接/断开时间间隔不能低于${p}分钟';
	@override String get disableFontScaler => '禁用字体缩放';
	@override String get autoOrientation => '跟随屏幕旋转';
	@override String get restartTakesEffect => '重启生效';
	@override String get resetSettings => '重置设置';
	@override String get cleanCache => '清理缓存';
	@override String get cleanCacheDone => '清理完成';
	@override String get appleTestFlight => '苹果 TestFlight';
	@override String get appleAppStore => '苹果 AppStore';
	@override String hasNewVersion({required Object p}) => '更新版本 ${p}';
	@override String get follow => '关注我们';
	@override String get contactUs => '联系我们';
	@override String get rateInApp => '评分';
	@override String get rateInAppStore => '在App Store上评分';
}

// Path: SpeedTestSettingsScreen
class _StringsSpeedTestSettingsScreenZhCn implements _StringsSpeedTestSettingsScreenEn {
	_StringsSpeedTestSettingsScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '测速URL';
	@override String get error => '必须为有效的 https URL';
}

// Path: TextToQrCodeScreen
class _StringsTextToQrCodeScreenZhCn implements _StringsTextToQrCodeScreenEn {
	_StringsTextToQrCodeScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '文本转二维码';
	@override String get convert => '转换';
}

// Path: UrlTestSettingsScreen
class _StringsUrlTestSettingsScreenZhCn implements _StringsUrlTestSettingsScreenEn {
	_StringsUrlTestSettingsScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '延迟检测URL';
	@override String get error => '必须为有效的 https URL';
}

// Path: UserAgreementScreen
class _StringsUserAgreementScreenZhCn implements _StringsUserAgreementScreenEn {
	_StringsUserAgreementScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => '您的隐私很重要';
	@override String get agreeAndContinue => '接受并继续';
}

// Path: VersionUpdateScreen
class _StringsVersionUpdateScreenZhCn implements _StringsVersionUpdateScreenEn {
	_StringsVersionUpdateScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => '新版本[${p}]已就绪';
	@override String get update => '重启更新';
	@override String get cancel => '暂不更新';
}

// Path: CommonWidget
class _StringsCommonWidgetZhCn implements _StringsCommonWidgetEn {
	_StringsCommonWidgetZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => '如果开启了[始终开启VPN], 请关闭[始终开启VPN]后重试连接';
	@override String get resetPort => '请将端口改为其他可用端口或者关闭占用该端口的应用';
}

// Path: ServerManager
class _StringsServerManagerZhCn implements _StringsServerManagerEn {
	_StringsServerManagerZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get noServerAvaliable => '无可用服务器,请确保配置链接或配置文件有效;如果你的配置来源于GitHub,请从页面上的[Raw]按钮获取链接地址';
	@override String get filePathCannotEmpty => '文件路径不能为空';
	@override String fileNotExist({required Object p}) => '文件不存在:${p}';
	@override String get urlCannotEmpty => '链接不能为空';
	@override String get invalidUrl => '错误的配置链接';
	@override String get parseFailed => '解析配置失败';
}

// Path: main
class _StringsMainZhCn implements _StringsMainEn {
	_StringsMainZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _StringsMainTrayZhCn tray = _StringsMainTrayZhCn._(_root);
}

// Path: main.tray
class _StringsMainTrayZhCn implements _StringsMainTrayEn {
	_StringsMainTrayZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => '    打开    ';
	@override String get menuExit => '    退出    ';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'AboutScreen.installRefer': return 'Install Refer';
			case 'AboutScreen.versionChannel': return 'Auto Update Channel';
			case 'AboutScreen.disableUAReport': return 'Turn Off Action Data Report';
			case 'AboutScreen.disableUAReportTip': return 'Behavioral data reporting helps us improve the product experience; versions lower than the main version will automatically turn off all data reporting (except [App Activation])';
			case 'AboutScreen.devOptions': return 'Developer Options';
			case 'AboutScreen.enableDebugLog': return 'Enable Debug Log';
			case 'AboutScreen.viewFilsContent': return 'View Files';
			case 'AboutScreen.enablePprof': return 'Enable pprof';
			case 'AboutScreen.pprofPanel': return 'pprof Panel';
			case 'AboutScreen.openDir': return 'Open File Directory';
			case 'AboutScreen.useOriginalSBProfile': return 'Use original sing-box Profile';
			case 'AddProfileByImportFromFileScreen.title': return 'Import Profile File';
			case 'AddProfileByImportFromFileScreen.chooseFile': return 'Select File';
			case 'AddProfileByImportFromFileScreen.configExist': return 'The Profile already exists, please do not add it repeatedly';
			case 'AddProfileByLinkOrContentScreen.title': return 'Add Profile Link';
			case 'AddProfileByLinkOrContentScreen.updateTimerInterval': return 'Update interval';
			case 'AddProfileByLinkOrContentScreen.updateTimerIntervalTips': return 'To disable please set to:<5m';
			case 'AddProfileByLinkOrContentScreen.profileLinkContent': return 'Profile Link/Content';
			case 'AddProfileByLinkOrContentScreen.profileLinkContentHit': return 'Profile Link/Content [Required] (Support Clash,V2ray(batch supported),Stash,Karing,Sing-box,Shadowsocks,Sub Profile links)';
			case 'AddProfileByLinkOrContentScreen.subscriptionCannotEmpty': return 'Profile Link can not be empty';
			case 'AddProfileByLinkOrContentScreen.configExist': return 'The Profile already exists, please do not add it repeatedly';
			case 'AddProfileByLinkOrContentScreen.invalidUrl': return 'The Profile Link is too long';
			case 'AddProfileByLinkOrContentScreen.addFailedFormatException': return ({required Object p}) => 'The format is wrong, please correct it and add it again:${p}';
			case 'AddProfileByLinkOrContentScreen.addFailedThenDownloadAndImport': return ({required Object p}) => 'Add failed: ${p}, please try to modify the [UserAgent] and try again, or use the device\'s built-in browser to open the configuration link and import the configuration file downloaded by the browser into this application';
			case 'AddProfileByLinkOrContentScreen.addFailedHandshakeException': return ({required Object p}) => 'Add failed: ${p}, please tun on the proxy or modify the current proxy node and try again';
			case 'AddProfileByScanQrcodeScanScreen.copy': return 'Copy Link';
			case 'AddProfileByScanQrcodeScanScreen.open': return 'Open Link';
			case 'AddProfileByScanQrcodeScanScreen.requestCameraPermission': return 'Please enable camera permission';
			case 'AddProfileByScanQrcodeScanScreen.requestScreenAccess': return 'Please go to System Settings - Privacy and Security - Screen Recording to add permissions for this application';
			case 'AddProfileByScanQrcodeScanScreen.screenshot': return 'Screenshot';
			case 'AddProfileByScanQrcodeScanScreen.scanFromImage': return 'Scan From Image';
			case 'AddProfileByScanQrcodeScanScreen.scanNoResult': return 'Failed to parse the image, please make sure the screenshot is a valid QR code';
			case 'AddProfileByScanQrcodeScanScreen.scanEmptyResult': return 'Scan Result is empty';
			case 'AddProfileByScanQrcodeScanScreen.scanException': return ({required Object p}) => 'Failed to parse the image, please make sure the screenshot is a valid QR code:${p}';
			case 'BackupAndSyncLanSyncScreen.title': return 'LAN Sync';
			case 'BackupAndSyncLanSyncScreen.lanSyncNotQuitTips': return 'Do not exit this interface before synchronization is completed';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return 'Server Url';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return 'Can not be empty';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return 'Login failed:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return 'Failed to get file list:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => 'Invalid [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => 'Invalid [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => 'Invalid [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => 'Invalid [Rule Set]:${p}, The URL must be a valid https URL and a binary file with the file extension .srs/.json';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => 'Invalid [Rule Set(build-in)]:${p}, The format is geosite:xxx or geoip:xxx or acl:xxx, and xxx should be a valid rule name';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return 'Tip: After saving, please go to [Diversion Rules] to set relevant rules, otherwise they will not take effect';
			case 'DiversionRuleDetectScreen.title': return 'Diversion Rule Detect';
			case 'DiversionRuleDetectScreen.detect': return 'Detect';
			case 'DiversionRuleDetectScreen.rule': return 'Rule:';
			case 'DiversionRuleDetectScreen.outbound': return 'Proxy Server:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return 'Tip: Try to match the rules from top to bottom. If no rule is matched, use [final]';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'ISP can not be empty';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'URL can not be empty';
			case 'DnsSettingsScreen.error': return ({required Object p}) => 'Unsupported type:${p}';
			case 'DnsSettingsScreen.dnsDesc': return 'The first column of delay data is the direct connection query delay;\nThe second column: Turn on [[Proxy Traffic]Resolve DNS through proxy server]: the delay data is the query delay forwarded through the current proxy server; if the [[Proxy Traffic]Resolve DNS through proxy server]: The delay data is the direct connection query delay';
			case 'FeedbackScreen.content': return 'Feedback Content';
			case 'FeedbackScreen.contentHit': return 'Required, up to 500 characters';
			case 'FeedbackScreen.contentCannotEmpty': return 'Feedback content can not be empty';
			case 'FileContentViewerScreen.title': return 'File Content Viewer';
			case 'FileContentViewerScreen.chooseFile': return 'Select File';
			case 'FileContentViewerScreen.clearFileContent': return 'Are you sure to clear the content of the file?';
			case 'FileContentViewerScreen.clearFileContentTips': return 'Are you sure to clear the content of the Profile file? Clearing the Profile file may cause data loss or abnormal application functions, please operate with caution';
			case 'HomeScreen.toSelectServer': return 'Please Select a Server';
			case 'HomeScreen.invalidServer': return 'is invalid, please choose again';
			case 'HomeScreen.disabledServer': return 'is disabled, please choose again';
			case 'HomeScreen.expiredServer': return 'No servers available, profiles may be expired or disabled';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'HomeScreen.trafficTotal': return 'Traffic Total';
			case 'HomeScreen.trafficProxy': return 'Traffic Proxy';
			case 'HomeScreen.myLinkEmpty': return 'Please set up [Shortcut Link] before using it';
			case 'HomeScreen.deviceNoSpace': return 'Not enough disk space';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}], and the connection may fail due to system memory limitations';
			case 'LaunchFailedScreen.invalidProcess': return 'The app failed to start [Invalid process name], please reinstall the app to a separate directory';
			case 'LaunchFailedScreen.invalidProfile': return 'The app failed to start [Failed to access the profile], please reinstall the app';
			case 'LaunchFailedScreen.invalidVersion': return 'The app failed to start [Invalid version], please reinstall the app';
			case 'LaunchFailedScreen.systemVersionLow': return 'The app failed to start [system version too low]';
			case 'LaunchFailedScreen.startFromUNC': return 'The installation path is invalid, please reinstall it to a valid path';
			case 'MyProfilesEditScreen.title': return 'Profile Edit';
			case 'MyProfilesEditScreen.urlExist': return 'URL already exists, please use another URL';
			case 'MyProfilesEditScreen.updateTimerInterval': return 'Update interval';
			case 'MyProfilesEditScreen.updateTimerIntervalTips': return 'To disable please set to:<5m';
			case 'MyProfilesEditScreen.reloadAfterProfileUpdate': return 'Reload after Profile update';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdate': return 'Start latency tests after Profile Automatically update';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdateTips': return 'VPN needs to be connected, and [Reload after Profile update] Enabled';
			case 'MyProfilesEditScreen.testLatencyAutoRemove': return 'Automatically remove servers that fail latency tests';
			case 'MyProfilesEditScreen.testLatencyAutoRemoveTips': return 'Try up to 3 times';
			case 'MyProfilesMergeScreen.profilesMerge': return 'Profiles Merge';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return 'Target Profile';
			case 'MyProfilesMergeScreen.profilesMergeSource': return 'Source Profiles';
			case 'MyProfilesMergeScreen.profilesMergeTips': return 'Tip: Diversion of the source profiles will be discarded';
			case 'MyProfilesScreen.title': return 'Profiles';
			case 'MyProfilesScreen.atLeastOneEnable': return 'Cannot be disabled, please keep at least one profile enable';
			case 'NetCheckScreen.title': return 'Net Check';
			case 'NetCheckScreen.warn': return 'Note: Due to the influence of network environment and diversion rules, the test results are not completely equivalent to the actual results.';
			case 'NetCheckScreen.check': return 'Check';
			case 'NetCheckScreen.invalidDomain': return 'Invalid Domain Name';
			case 'NetCheckScreen.connectivity': return 'Network Connectivity';
			case 'NetCheckScreen.connectivityTestIpv4AllFailed': return ({required Object p}) => 'Ipv4 Connection test [${p}] all failed';
			case 'NetCheckScreen.connectivityTestIpv4Ok': return 'Ipv4 connection succeeded';
			case 'NetCheckScreen.connectivityTestIpv6AllFailed': return ({required Object p}) => 'Ipv6 Connection test [${p}] all failed, Your network may not support ipv6';
			case 'NetCheckScreen.connectivityTestIpv6Ok': return 'Ipv6 connection succeeded';
			case 'NetCheckScreen.connectivityTestOk': return 'The network is connected to the Internet';
			case 'NetCheckScreen.connectivityTestFailed': return 'The network is not yet connected to the Internet';
			case 'NetCheckScreen.remoteRulesetsDownloadOk': return 'All downloaded successfully';
			case 'NetCheckScreen.remoteRulesetsDownloadNotOk': return 'Downloading or download failed';
			case 'NetCheckScreen.outbound': return 'Proxy Server';
			case 'NetCheckScreen.outboundOk': return ({required Object p}) => '[${p}] connection succeeded';
			case 'NetCheckScreen.outboundFailed': return ({required Object p1, required Object p2}) => '[${p1}] connection failed\nError:[${p2}]';
			case 'NetCheckScreen.dnsServer': return 'DNS Server';
			case 'NetCheckScreen.dnsOk': return ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS query succeeded\nDNS Rule:[${p2}]\nLatency:[${p3} ms]\nAddress:[${p4}]';
			case 'NetCheckScreen.dnsFailed': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS query succeeded\n nDNS Rule:[${p2}]\nError:[${p3}]';
			case 'NetCheckScreen.host': return 'HTTP Connection';
			case 'NetCheckScreen.hostConnection': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nDiversionRule:[${p2}]\nProxy Server:[${p3}]';
			case 'NetCheckScreen.hostConnectionOk': return 'connection succeeded';
			case 'NetCheckScreen.hostConnectionFailed': return ({required Object p}) => 'connection failed:[${p}]';
			case 'NetConnectionsFilterScreen.title': return 'Connections Filter';
			case 'NetConnectionsFilterScreen.hostIp': return 'Domain/IP';
			case 'NetConnectionsFilterScreen.app': return 'App';
			case 'NetConnectionsFilterScreen.rule': return 'Rule';
			case 'NetConnectionsFilterScreen.chain': return 'Outbound';
			case 'NetConnectionsScreen.title': return 'Connections';
			case 'NetConnectionsScreen.copyAsCSV': return 'Copied to CSV format';
			case 'NetConnectionsScreen.selectType': return 'Select Diversion Type';
			case 'PerAppAndroidScreen.title': return 'Per-App Proxy';
			case 'PerAppAndroidScreen.whiteListMode': return 'Whitelist Mode';
			case 'PerAppAndroidScreen.whiteListModeTip': return 'When enabled: only the apps that have been checked are proxies; when not enabled: only the apps that are not checked are proxies';
			case 'PerAppAndroidScreen.hideSystemApp': return 'Hide System Apps';
			case 'PerAppAndroidScreen.hideAppIcon': return 'Hide App Icons';
			case 'PerAppAndroidScreen.enableAppQueryPermission': return 'Turn on [App list query] Permission';
			case 'QrcodeScreen.tooLong': return 'The text is too long to display';
			case 'QrcodeScreen.copy': return 'Copy Link';
			case 'QrcodeScreen.open': return 'Open Link';
			case 'QrcodeScreen.share': return 'Share Link';
			case 'QrcodeScreen.shareImage': return 'Share QR Code';
			case 'RegionSettingsScreen.title': return 'Country Or Region';
			case 'RegionSettingsScreen.Regions': return 'Tip: Please set your current country or region correctly, otherwise it may cause network diversion problems';
			case 'ServerSelectScreen.title': return 'Select Server';
			case 'ServerSelectScreen.autoSelectServer': return 'Auto select the server with the lowest latency';
			case 'ServerSelectScreen.recentUse': return 'Recently Used';
			case 'ServerSelectScreen.myFav': return 'My Favs';
			case 'ServerSelectScreen.selectLocal': return ({required Object p}) => 'The selected server is a local address and may not work properly:${p}';
			case 'ServerSelectScreen.selectRequireEnableIPv6': return 'The selected server is an IPv6 address and requires [Enable IPv6]';
			case 'ServerSelectScreen.selectDisabled': return 'This server has been disabled';
			case 'ServerSelectScreen.error404': return 'Latency detection encountered an error, please check if there is a configuration with the same content';
			case 'SettingsScreen.ispFaq': return ({required Object p}) => 'FAQ[${p}]';
			case 'SettingsScreen.cleanISP': return ({required Object p}) => 'Clear ISP[${p}]';
			case 'SettingsScreen.openISP': return 'Open ISP link';
			case 'SettingsScreen.cleanISPNoParam': return 'Clear ISP Info';
			case 'SettingsScreen.getTranffic': return 'Get Traffic';
			case 'SettingsScreen.tutorial': return 'Tutorial';
			case 'SettingsScreen.commonlyUsedRulesets': return 'Commonly Used Rulesets';
			case 'SettingsScreen.howToRemoveAds': return 'How to remove ads';
			case 'SettingsScreen.htmlBoard': return 'Online Panel';
			case 'SettingsScreen.dnsLeakDetection': return 'DNS Leaks Detection';
			case 'SettingsScreen.speedTest': return 'Speed Test';
			case 'SettingsScreen.downloadProfilePreferProxy': return 'Prefer Proxy to Download Profile';
			case 'SettingsScreen.downloadProfilePreferProxyTips': return 'If currently connected, the profile will be downloaded through the connected proxy first';
			case 'SettingsScreen.rulesetDirectDownlad': return 'Rule Set Direct Download';
			case 'SettingsScreen.hideUnusedDiversionGroup': return 'Hide Unused Diversion Groups';
			case 'SettingsScreen.disableISPDiversionGroup': return 'Disable ISP Diversion Rules';
			case 'SettingsScreen.portSetting': return 'Port';
			case 'SettingsScreen.portSettingRule': return 'Rule Based';
			case 'SettingsScreen.portSettingDirectAll': return 'Direct All';
			case 'SettingsScreen.portSettingProxyAll': return 'Proxy All';
			case 'SettingsScreen.portSettingControl': return 'Control and Sync';
			case 'SettingsScreen.portSettingCluster': return 'Cluster Service';
			case 'SettingsScreen.modifyPort': return 'Modify Port';
			case 'SettingsScreen.ipStrategyTips': return 'Before enabling, please confirm that your network supports IPv6, otherwise some traffic cannot be accessed normally.';
			case 'SettingsScreen.tunAppendHttpProxy': return 'Append HTTP Proxy to VPN';
			case 'SettingsScreen.tunAppendHttpProxyTips': return 'Some apps will bypass virtual NIC Device and directly connect to HTTP proxy';
			case 'SettingsScreen.tlsInsecureEnable': return 'Skip Certificate Verification';
			case 'SettingsScreen.tlsFragmentEnable': return 'Enable TLS Fragment';
			case 'SettingsScreen.tlsFragmentSize': return 'TLS Fragment Size';
			case 'SettingsScreen.tlsFragmentSleep': return 'TLS Fragment Sleep';
			case 'SettingsScreen.tlsMixedCaseSNIEnable': return 'Enable TLS Mixed SNI';
			case 'SettingsScreen.tlsPaddingEnable': return 'Enable TLS Padding';
			case 'SettingsScreen.tlsPaddingSize': return 'TLS Padding Size';
			case 'SettingsScreen.dnsEnableRule': return 'Enable DNS Diversion rules';
			case 'SettingsScreen.dnsEnableFakeIp': return 'Enable FakeIP';
			case 'SettingsScreen.dnsEnableClientSubnet': return 'Enable ECS';
			case 'SettingsScreen.dnsEnableProxyResolveByProxy': return '[Proxy Traffic]Resolve DNS through proxy server';
			case 'SettingsScreen.dnsEnableFinalResolveByProxy': return '[final]Resolve DNS through proxy server';
			case 'SettingsScreen.dnsTestDomain': return 'Test Domain';
			case 'SettingsScreen.dnsTestDomainInvalid': return 'Invalid Domain';
			case 'SettingsScreen.dnsTypeOutbound': return 'Proxy Server';
			case 'SettingsScreen.dnsTypeDirect': return 'Direct Traffic';
			case 'SettingsScreen.dnsTypeProxy': return 'Proxy Traffic';
			case 'SettingsScreen.dnsTypeResolver': return 'DNS Server';
			case 'SettingsScreen.dnsEnableRuleTips': return 'After enabling, the domain name will select the corresponding DNS server for resolution according to the diversion rules';
			case 'SettingsScreen.dnsEnableFakeIpTips': return 'After enabling FakeIP, if you disconnect from VPN, your app may need to be restarted; this feature requires [TUN mode] to be enabled';
			case 'SettingsScreen.dnsTypeOutboundTips': return 'Domain name resolution for Proxy Server';
			case 'SettingsScreen.dnsTypeDirectTips': return 'Domain name resolution for Direct Traffic';
			case 'SettingsScreen.dnsTypeProxyTips': return 'Domain name resolution for Proxy Traffic';
			case 'SettingsScreen.dnsTypeResolverTips': return 'Domain name resolution for Other DNS Server';
			case 'SettingsScreen.dnsTypeFinalTips': return 'Domain name resolution for Other Traffic';
			case 'SettingsScreen.dnsAutoSetServer': return 'Auto Setup Server';
			case 'SettingsScreen.dnsResetServer': return 'Reset Server';
			case 'SettingsScreen.inboundDomainResolve': return 'Resolve Inbound Domain names';
			case 'SettingsScreen.privateDirect': return 'Private Network Direct connection';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => 'Some domain names that are not configured with diversion rules need to be resolved before they can hit the IP-based diversion rules; this feature affects inbound requests to the proxy port [${p}]';
			case 'SettingsScreen.useRomoteRes': return 'Use Remote Resources';
			case 'SettingsScreen.autoSelect': return 'Auto Select';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'Ignore [Per-Proxy] proxy server';
			case 'SettingsScreen.autoSelectServerInterval': return 'Latency Checks Interval';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return 'Re-check Latency when Network Changes';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return 'Update the Current Server after Manual Latency Check';
			case 'SettingsScreen.autoSelectServerIntervalTips': return 'The shorter the time interval, the more timely the server latency data updates, which will occupy more resources and consume more power';
			case 'SettingsScreen.autoSelectServerFavFirst': return 'Pri-Use [My Favs]';
			case 'SettingsScreen.autoSelectServerFavFirstTips': return 'If the [My Favs] list is not empty, Then use the servers in [My Favs]';
			case 'SettingsScreen.autoSelectServerFilter': return 'Filter Invalid Servers';
			case 'SettingsScreen.autoSelectServerFilterTips': return ({required Object p}) => 'Server latency checks that fail will be filtered out; if no server is available after filtering, the first [${p}] servers will be used instead';
			case 'SettingsScreen.autoSelectServerLimitedNum': return 'Maximum number of servers';
			case 'SettingsScreen.autoSelectServerLimitedNumTips': return 'Servers exceeding this number will be filtered out';
			case 'SettingsScreen.numInvalid': return 'Invalid number';
			case 'SettingsScreen.hideInvalidServer': return 'Hide Invalid Servers';
			case 'SettingsScreen.sortServer': return 'Servers Sorting';
			case 'SettingsScreen.sortServerTips': return 'Sort by latency from low to high';
			case 'SettingsScreen.selectServerHideRecommand': return 'Hide [Recommend]';
			case 'SettingsScreen.selectServerHideRecent': return 'Hide [Recently Used]';
			case 'SettingsScreen.selectServerHideFav': return 'Hide [My Favs]';
			case 'SettingsScreen.homeScreen': return 'Home Screen';
			case 'SettingsScreen.theme': return 'Theme';
			case 'SettingsScreen.myLink': return 'Shortcut Link';
			case 'SettingsScreen.myLinkInvalid': return 'Invalid URL';
			case 'SettingsScreen.autoConnectAfterLaunch': return 'Auto Connection after Launch';
			case 'SettingsScreen.hideAfterLaunch': return 'Hide window after startup';
			case 'SettingsScreen.autoSetSystemProxy': return 'Auto Set System Proxy when Connected';
			case 'SettingsScreen.disconnectWhenQuit': return 'Disconnect when App Exits';
			case 'SettingsScreen.allowBypass': return 'Allow Apps to Bypass VPN';
			case 'SettingsScreen.lanSyncTo': return 'Sync to others';
			case 'SettingsScreen.lanSyncFrom': return 'Sync from others';
			case 'SettingsScreen.lanSyncScanQRcode': return 'Scan QR code to Sync';
			case 'SettingsScreen.syncToConfirm': return 'Confirm sync to the other party?';
			case 'SettingsScreen.syncDone': return 'Sync completed';
			case 'SettingsScreen.importSuccess': return 'Import Success';
			case 'SettingsScreen.rewriteConfirm': return 'This file will overwrite the existing local configuration. Do you want to continue?';
			case 'SettingsScreen.networkShare': return 'Network Sharing';
			case 'SettingsScreen.frontProxy': return 'Per-Proxy';
			case 'SettingsScreen.frontProxyTips': return 'Data->Per-Proxy server->Proxy server->Target server';
			case 'SettingsScreen.allowOtherHostsConnect': return 'Allow Others to Connect';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'If after turning on sharing, others cannot access this device, please try turning off this switch';
			case 'SettingsScreen.enableCluster': return 'Enable Socks/Http Proxy Cluster';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'Allow Others to Connect to Cluster';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object hp}) => 'http://127.0.0.1:${hp}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'Proxy Cluster Authentication';
			case 'SettingsScreen.clusterConfirm': return 'Please confirm that the servers latency have been checked, and proxy services will not be created if they are not checked or checked incorrectly';
			case 'SettingsScreen.tunMode': return 'TUN Mode';
			case 'SettingsScreen.tunModeTips': return 'The TUN mode will take over all the traffic of the system [In this mode, you can leave the system proxy unenabled]';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'The TUN mode requires system administrator permissions, please restart the app as an administrator';
			case 'SettingsScreen.tunStack': return 'Stack';
			case 'SettingsScreen.launchAtStartup': return 'Launch at Startup';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return 'Exit App when Switch System Users';
			case 'SettingsScreen.handleScheme': return 'System Scheme Call';
			case 'SettingsScreen.portableMode': return 'Portable Mode';
			case 'SettingsScreen.portableModeDisableTips': return 'If you need to exit portable mode, please exit [karing] and manually delete the [profiles] folder in the same directory as [karing.exe]';
			case 'SettingsScreen.handleKaringScheme': return 'Handle karing:// Call';
			case 'SettingsScreen.handleClashScheme': return 'Handle clash:// Call';
			case 'SettingsScreen.handleSingboxScheme': return 'Handle sing-box:// Call';
			case 'SettingsScreen.removeSystemVPNConfig': return 'Delete system VPN configuration';
			case 'SettingsScreen.timeConnectOrDisconnect': return 'Scheduled connect/disconnect';
			case 'SettingsScreen.timeConnectOrDisconnectTips': return 'VPN must be connected to take effect; after it is turned on, [Automatic Sleep] will be disabled';
			case 'SettingsScreen.timeConnectAndDisconnectInterval': return ({required Object p}) => 'The connection/disconnection interval cannot be less than ${p} minutes';
			case 'SettingsScreen.disableFontScaler': return 'Disable Font scaling(Restart takes effect)';
			case 'SettingsScreen.autoOrientation': return 'Rotate with the screen';
			case 'SettingsScreen.restartTakesEffect': return 'Restart takes effect';
			case 'SettingsScreen.resetSettings': return 'Reset Settings';
			case 'SettingsScreen.cleanCache': return 'Cleanup Cache';
			case 'SettingsScreen.cleanCacheDone': return 'Cleanup completed';
			case 'SettingsScreen.appleTestFlight': return 'Apple TestFlight';
			case 'SettingsScreen.appleAppStore': return 'Apple AppStore';
			case 'SettingsScreen.hasNewVersion': return ({required Object p}) => 'Update Version ${p}';
			case 'SettingsScreen.follow': return 'Follow Us';
			case 'SettingsScreen.contactUs': return 'Contact Us';
			case 'SettingsScreen.rateInApp': return 'Rate Us';
			case 'SettingsScreen.rateInAppStore': return 'Rate Us in AppStore';
			case 'SpeedTestSettingsScreen.title': return 'Speed Test URL';
			case 'SpeedTestSettingsScreen.error': return 'Must be Valid https URL';
			case 'TextToQrCodeScreen.title': return 'Text To QR Code';
			case 'TextToQrCodeScreen.convert': return 'Convert';
			case 'UrlTestSettingsScreen.title': return 'Latency Checks URL';
			case 'UrlTestSettingsScreen.error': return 'Must be Valid https URL';
			case 'UserAgreementScreen.privacyFirst': return 'Your Privacy Comes First';
			case 'UserAgreementScreen.agreeAndContinue': return 'Accept & Continue';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => 'The new version[${p}] is ready';
			case 'VersionUpdateScreen.update': return 'Restart To Update';
			case 'VersionUpdateScreen.cancel': return 'Not Now';
			case 'CommonWidget.diableAlwayOnVPN': return 'If [Always on VPN] is turned on, please turn off [Always on VPN] and try connecting again';
			case 'CommonWidget.resetPort': return 'Please change the port to another available port or close the application occupying the port.';
			case 'ServerManager.noServerAvaliable': return 'No server avaliable, Make sure the Profile Link or Profile File is valid;  if your Profile comes from GitHub, please obtain the link from the [Raw] button on the page';
			case 'ServerManager.filePathCannotEmpty': return 'The file path can not be empty';
			case 'ServerManager.fileNotExist': return ({required Object p}) => 'File does not exist:${p}';
			case 'ServerManager.urlCannotEmpty': return 'Link can not be empty';
			case 'ServerManager.invalidUrl': return 'Invalid Profile Link';
			case 'ServerManager.parseFailed': return 'Parsing Profile failed';
			case 'main.tray.menuOpen': return '    Open    ';
			case 'main.tray.menuExit': return '    Exit    ';
			case 'enable': return 'Enable';
			case 'disable': return 'Disable';
			case 'prefer': return 'Prefer';
			case 'only': return 'Only';
			case 'open': return 'Open';
			case 'close': return 'Close';
			case 'quit': return 'Quit';
			case 'add': return 'Add';
			case 'remove': return 'Remove';
			case 'edit': return 'Edit';
			case 'view': return 'View';
			case 'more': return 'More';
			case 'addProfile': return 'Add Profile';
			case 'addSuccess': return 'Added successfully';
			case 'addSuccessThen': return ({required Object p}) => 'Profile generated successfully, please go to [${p}] to view';
			case 'addFailed': return ({required Object p}) => 'Add failed:${p}';
			case 'removeConfirm': return 'Are you sure to delete?';
			case 'tips': return 'Info';
			case 'copy': return 'Copy';
			case 'ok': return 'Ok';
			case 'cancel': return 'Cancel';
			case 'feedback': return 'Feedback';
			case 'faq': return 'FAQ';
			case 'download': return 'Download';
			case 'loading': return 'Loading...';
			case 'updateFailed': return ({required Object p}) => 'Update failed:${p}';
			case 'days': return 'Days';
			case 'hours': return 'Hours';
			case 'minutes': return 'Minutes';
			case 'seconds': return 'Seconds';
			case 'protocol': return 'Protocol';
			case 'search': return 'Search';
			case 'custom': return 'Custom';
			case 'connect': return 'Connect';
			case 'disconnect': return 'Disconnect';
			case 'connected': return 'Connected';
			case 'disconnected': return 'Disconnected';
			case 'connecting': return 'Connecting';
			case 'connectTimeout': return 'Connect Timeout';
			case 'timeout': return 'Timeout';
			case 'language': return 'Language';
			case 'next': return 'Next';
			case 'done': return 'Done';
			case 'apply': return 'Apply';
			case 'refresh': return 'Refresh';
			case 'retry': return 'Retry?';
			case 'none': return 'None';
			case 'reset': return 'Reset';
			case 'submit': return 'Submit';
			case 'account': return 'Account';
			case 'password': return 'Password';
			case 'required': return 'Required';
			case 'diversion': return 'Diversion';
			case 'diversionRules': return 'Diversion Rules';
			case 'diversionRulesEnable': return 'Enable [ISP] Diversion Rules';
			case 'diversionCustomGroup': return 'Custom Diversion Group';
			case 'diversionCustomGroupPreset': return 'Preset [Custom Diversion Group]';
			case 'diversionCustomGroupPresetTips': return 'Note: Enabled items will be added/overwritten to [Custom Diversion Group] and [Diversion Rules]';
			case 'diversionCustomGroupAddTips': return 'Note: After adding, you may need to manually adjust the order, otherwise the newly added diversion may not take effect';
			case 'urlTestCustomGroup': return 'Custom Proxy Group';
			case 'rulesetEnableTips': return 'Tip: After turning on the options, please go to[Diversion Rules]to set the relevant rules, otherwise they will not take effect';
			case 'ispUserAgentTips': return '[ISP] will send data of different subscription types based on [UserAgent] in [HTTP] request';
			case 'ispDiversionTips': return '[ISP] provides traffic diversion rules; [V2Ray] type subscriptions do not support traffic diversion rules';
			case 'staticIP': return 'Static IP';
			case 'other': return 'Other';
			case 'dns': return 'DNS';
			case 'url': return 'URL';
			case 'isp': return 'ISP';
			case 'tls': return 'TLS';
			case 'userAgent': return 'UserAgent';
			case 'urlInvalid': return 'Invalid URL';
			case 'outboundActionCurrentSelected': return 'Current Selected';
			case 'outboundActionUrltest': return 'Auto Select';
			case 'outboundActionDirect': return 'Direct';
			case 'outboundActionBlock': return 'Block';
			case 'routeFinal': return 'final';
			case 'rulesetGeoSite': return 'GeoSite';
			case 'rulesetGeoIp': return 'GeoIP';
			case 'rulesetAcl': return 'ACL';
			case 'iCloud': return 'iCloud';
			case 'appleTV': return 'Apple TV';
			case 'webdav': return 'Webdav';
			case 'setting': return 'Settings';
			case 'protocolSniff': return 'Protocol Sniff';
			case 'protocolSniffOverrideDestination': return 'The Sniff domain name override the connection target address';
			case 'remark': return 'Remark';
			case 'remarkCannotEmpty': return 'Remarks can not be empty';
			case 'remarkTooLong': return 'Remarks up to 32 characters';
			case 'remarkExist': return 'Remark already exists, please use another name';
			case 'domainSuffix': return 'Domain Suffix';
			case 'domain': return 'Domain';
			case 'domainKeyword': return 'Domain Keyword';
			case 'domainRegex': return 'Domain Regex';
			case 'ip': return 'IP';
			case 'port': return 'Port';
			case 'appPackage': return 'App Package Name';
			case 'processName': return 'Process Name';
			case 'processPath': return 'Process Path';
			case 'systemProxy': return 'System Proxy';
			case 'netInterfaces': return 'Net Interfaces';
			case 'netSpeed': return 'Speed';
			case 'website': return 'Website';
			case 'rule': return 'Rule';
			case 'global': return 'Global';
			case 'qrcode': return 'QR Code';
			case 'scanQrcode': return 'Scan QR Code';
			case 'scanResult': return 'Scan Result';
			case 'backupAndSync': return 'Backup and Sync';
			case 'importAndExport': return 'Import and Export';
			case 'import': return 'Import';
			case 'export': return 'Export';
			case 'termOfUse': return 'Terms of Service';
			case 'privacyPolicy': return 'Privacy & Policy';
			case 'about': return 'About';
			case 'name': return 'Name';
			case 'version': return 'Version';
			case 'notice': return 'Notice';
			case 'sort': return 'Reorder';
			case 'novice': return 'Novice Mode';
			case 'recommended': return 'Recommend';
			case 'innerError': return ({required Object p}) => 'Inner Error:${p}';
			case 'logicOperation': return 'Logic Operation';
			case 'share': return 'Share';
			case 'candidateWord': return 'Candidate Words';
			case 'keywordsOrRegx': return 'Keywords/Regular';
			case 'importFromClipboard': return 'Import From Clipboard';
			case 'exportToClipboard': return 'Export to Clipboard';
			case 'server': return 'Server';
			case 'appleTVConnectTurnOfprivateDirect': return 'Please turn on [Private network direct connection] first';
			case 'targetConnectFailed': return ({required Object p}) => 'Failed to connect to [${p}]. Please make sure the devices are in the same LAN and enable [Private Network Direct Connection]';
			case 'appleTVSync': return 'Synchronize the current core configuration to Apple TV - Karing';
			case 'appleTVSyncDone': return 'Synchronization is complete. Please go to Apple TV - Karing to start the connection/restart the connection';
			case 'appleTVRemoveCoreConfig': return 'Delete Apple TV - Karing Core Configuration';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - Karing\'s Core Configuration deleted; VPN service disconnected';
			case 'appleTVUrlInvalid': return 'Invalid URL, please open Apple TV - Karing and scan the QR code displayed by Karing';
			case 'remoteProfileEditConfirm': return 'After the Profile is updated, the node changes will be restored. Continue?';
			case 'invalidFileType': return ({required Object p}) => 'Invalid file type:${p}';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

extension on _StringsAr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'AboutScreen.installRefer': return 'تثبيت الرجوع';
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
			case 'AddProfileByLinkOrContentScreen.updateTimerIntervalTips': return 'لتعطيل من فضلك ضبط على:<5m';
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
			case 'LaunchFailedScreen.startFromUNC': return 'مسار التثبيت غير صالح ، يرجى إعادة تثبيته إلى مسار صالح';
			case 'MyProfilesEditScreen.title': return 'تحرير الملف الشخصي';
			case 'MyProfilesEditScreen.urlExist': return 'عنوان URL موجود بالفعل ، يرجى استخدام عنوان URL آخر';
			case 'MyProfilesEditScreen.updateTimerInterval': return 'الفاصل الزمني للتحديث';
			case 'MyProfilesEditScreen.updateTimerIntervalTips': return 'لتعطيل يرجى تعيين:<5m';
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
			case 'SettingsScreen.ispFaq': return ({required Object p}) => 'أسئلة مكررة[${p}]';
			case 'SettingsScreen.cleanISP': return ({required Object p}) => 'ISP واضح[${p}]';
			case 'SettingsScreen.openISP': return 'فتح ISP رابط';
			case 'SettingsScreen.cleanISPNoParam': return 'مسح معلومات مزود خدمة الإنترنت ';
			case 'SettingsScreen.getTranffic': return 'احصل على حركة المرور';
			case 'SettingsScreen.tutorial': return 'درس تعليمي';
			case 'SettingsScreen.commonlyUsedRulesets': return 'مجموعات القواعد شائعة الاستخدام';
			case 'SettingsScreen.howToRemoveAds': return 'كيفية إزالة الإعلانات';
			case 'SettingsScreen.htmlBoard': return 'لوحة على الانترنت';
			case 'SettingsScreen.dnsLeakDetection': return 'كشف تسرب DNS';
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
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'تجاهل الخادم الوكيل [الوكيل الأمامي].';
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
			case 'SettingsScreen.lanSyncTo': return 'مزامنة للآخرين ';
			case 'SettingsScreen.lanSyncFrom': return 'مزامنة من الآخرين';
			case 'SettingsScreen.lanSyncScanQRcode': return 'مسح رمز الاستجابة السريعة للمزامنة ';
			case 'SettingsScreen.syncToConfirm': return 'هل تريد تأكيد المزامنة مع الطرف الآخر؟';
			case 'SettingsScreen.syncDone': return 'اكتملت المزامنة';
			case 'SettingsScreen.importSuccess': return 'استيراد نجاح ';
			case 'SettingsScreen.rewriteConfirm': return 'سيقوم هذا الملف بكتابة التكوين المحلي الحالي.هل تريد الاستمرار؟';
			case 'SettingsScreen.networkShare': return 'مشاركة الشبكة';
			case 'SettingsScreen.frontProxy': return 'الوكيل الأمامي';
			case 'SettingsScreen.frontProxyTips': return 'بيانات->خادم الوكيل الأمامي->مخدم بروكسي->الخادم الهدف';
			case 'SettingsScreen.allowOtherHostsConnect': return 'اسمح للآخرين بالاتصال';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'إذا لم يتمكن الآخرون من الوصول إلى هذا الجهاز بعد تشغيل المشاركة، فيرجى محاولة إيقاف تشغيل هذا المفتاح.';
			case 'SettingsScreen.enableCluster': return 'تمكين مجموعة الوكيل الجوارب/HTTP';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'السماح للآخرين بالاتصال بـ CLUSTER';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object hp}) => 'http://127.0.0.1:${hp}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'مصادقة مجموعة الوكيل';
			case 'SettingsScreen.clusterConfirm': return 'يرجى التأكيد على أنه تم فحص زمن انتقال الخوادم ، ولن يتم إنشاء خدمات الوكيل إذا لم يتم فحصها أو فحصها بشكل غير صحيح';
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
			case 'SettingsScreen.rateInApp': return 'قيمنا';
			case 'SettingsScreen.rateInAppStore': return 'قيمنا في متجر التطبيقات';
			case 'SpeedTestSettingsScreen.title': return 'URL اختبار السرعة';
			case 'SpeedTestSettingsScreen.error': return 'يجب أن يكون عنوان URL HTTPS صالح';
			case 'TextToQrCodeScreen.title': return 'رسالة نصية إلى رمز الاستجابة السريعة';
			case 'TextToQrCodeScreen.convert': return 'يتحول';
			case 'UrlTestSettingsScreen.title': return 'عنوان URL لاكتشاف التأخير';
			case 'UrlTestSettingsScreen.error': return 'يجب أن يكون عنوان URL HTTPS صالح';
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
			case 'keywordsOrRegx': return 'الكلمات الرئيسية/العادية';
			case 'importFromClipboard': return 'استيراد من الحافظة';
			case 'exportToClipboard': return 'تصدير إلى الحافظة';
			case 'server': return 'الخادم';
			case 'appleTVConnectTurnOfprivateDirect': return 'يرجى تمكين [الاتصال المباشر بالشبكة الخاصة] أولاً';
			case 'targetConnectFailed': return ({required Object p}) => 'فشل الاتصال بـ [${p}]، يرجى التأكد من وجود الجهاز في نفس الشبكة المحلية (LAN) وتمكين [الاتصال المباشر بالشبكة الخاصة]';
			case 'appleTVSync': return 'مزامنة التكوين الأساسي الحالي مع Apple TV - Karing';
			case 'appleTVSyncDone': return 'اكتملت المزامنة، برجاء الانتقال إلى Apple TV - Karing لفتح/إعادة تشغيل الاتصال';
			case 'appleTVRemoveCoreConfig': return 'إزالة Apple TV - Karing Core Configuration';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - تم حذف الملف التعريفي الأساسي لـ Karing؛ وتم قطع اتصال خدمة VPN';
			case 'appleTVUrlInvalid': return 'عنوان URL غير صالح، يرجى فتح Apple TV - Karing، ومسح رمز QR الذي يعرضه Karing';
			case 'remoteProfileEditConfirm': return 'بعد تحديث التكوين، ستتم استعادة تعديلات العقدة. هل تريد المتابعة؟';
			case 'invalidFileType': return ({required Object p}) => 'نوع الملف غير صالح:${p}';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

extension on _StringsFa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'AboutScreen.installRefer': return 'مرجع نصب';
			case 'AboutScreen.versionChannel': return 'کانال به‌روزرسانی خودکار';
			case 'AboutScreen.disableUAReport': return 'خاموش کردن گزارش اطلاعات عملکرد';
			case 'AboutScreen.disableUAReportTip': return 'گزارش‌دهی داده‌های رفتاری به ما کمک می‌کند تا نسخه‌های پایین‌تر از نسخه اصلی را بهبود بخشیم، همه گزارش‌های داده را به‌طور خودکار خاموش می‌کند (به‌جز [فعال‌سازی برنامه]).';
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
			case 'AddProfileByLinkOrContentScreen.updateTimerIntervalTips': return 'برای غیرفعال‌ کردن لطفا تنظیم کنید روی:<5m';
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
			case 'AddProfileByScanQrcodeScanScreen.requestCameraPermission': return 'لطفا مجوز دسترسی دوربین را فعال کنید';
			case 'AddProfileByScanQrcodeScanScreen.requestScreenAccess': return 'لطفا به تنظیمات دستگاه - حریم‌خصوصی و امنیت - ظبط صفحه بروین تا مجوز‌های این نرم‌افزار را اضافه کنید';
			case 'AddProfileByScanQrcodeScanScreen.screenshot': return 'اسکرین‌شات';
			case 'AddProfileByScanQrcodeScanScreen.scanFromImage': return 'اسکن از عکس';
			case 'AddProfileByScanQrcodeScanScreen.scanNoResult': return 'تجزیه عکس ناموفق بود، لطفا مطمعن شوید اسکرین‌شات یک کدQR معتبر است';
			case 'AddProfileByScanQrcodeScanScreen.scanEmptyResult': return 'نتیجه اسکن خالی است';
			case 'AddProfileByScanQrcodeScanScreen.scanException': return ({required Object p}) => 'تجزیه عکس ناموفق بود، لطفا مطمعن شوید اسکرین‌شات یک کدQR معتبر است: ${p}';
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
			case 'LaunchFailedScreen.startFromUNC': return 'مسیر نصب نامعتبر است، لطفا مجدد در مسیر معتبر نصب کنید';
			case 'MyProfilesEditScreen.title': return 'ویرایش پروفایل';
			case 'MyProfilesEditScreen.urlExist': return 'آدرس URL از‌قبل وجود دارد، لطفا از URL دیگری استفاده کنید';
			case 'MyProfilesEditScreen.updateTimerInterval': return 'فاصله‌ی به‌روزرسانی';
			case 'MyProfilesEditScreen.updateTimerIntervalTips': return 'برای غیرفعال‌ کردن لطفا تنظیم کنید روی:<5m';
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
			case 'SettingsScreen.ispFaq': return ({required Object p}) => 'سوالات متداول[${p}]';
			case 'SettingsScreen.cleanISP': return ({required Object p}) => 'پاک‌سازی ISP [${p}]';
			case 'SettingsScreen.openISP': return 'بازکردن لینک ISP';
			case 'SettingsScreen.cleanISPNoParam': return 'پاک‌سازی اطلاعات ISP';
			case 'SettingsScreen.getTranffic': return 'دریافت ترافیک';
			case 'SettingsScreen.tutorial': return 'آموزش';
			case 'SettingsScreen.commonlyUsedRulesets': return 'قوانین رایج';
			case 'SettingsScreen.howToRemoveAds': return 'نحوه حذف تبلیغات';
			case 'SettingsScreen.htmlBoard': return 'پنل آنلاین';
			case 'SettingsScreen.dnsLeakDetection': return 'تشخیص نشت DNS';
			case 'SettingsScreen.speedTest': return 'تست سرعت';
			case 'SettingsScreen.downloadProfilePreferProxy': return 'برای دانلود پروفایل پروکسی را ترجیح بده';
			case 'SettingsScreen.downloadProfilePreferProxyTips': return 'اگر اکنون متصل هستین، پروفایل ابتدا از پروکسی متصل دانلود می‌شود';
			case 'SettingsScreen.rulesetDirectDownlad': return 'دانلود مستقیم مجموعه قوانین';
			case 'SettingsScreen.hideUnusedDiversionGroup': return 'مخفی‌کردن گروه‌های انحراف به‌کار نرفته';
			case 'SettingsScreen.disableISPDiversionGroup': return 'قوانین انحراف ISP را غیرفعال کنید';
			case 'SettingsScreen.portSetting': return 'پورت';
			case 'SettingsScreen.portSettingRule': return 'قانون محور';
			case 'SettingsScreen.portSettingDirectAll': return 'مستقیم‌شدن همه';
			case 'SettingsScreen.portSettingProxyAll': return 'پروکسی‌شدن همه';
			case 'SettingsScreen.portSettingControl': return 'کنترل و همگام‌سازی';
			case 'SettingsScreen.portSettingCluster': return 'سرویس کلاستر';
			case 'SettingsScreen.modifyPort': return 'اصلاح پورت';
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
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'سرور پروکسی [پراکسی جلو] را نادیده بگیرید';
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
			case 'SettingsScreen.lanSyncTo': return 'همگام‌سازی با دیگران';
			case 'SettingsScreen.lanSyncFrom': return 'همگام‌سازی از دیگران';
			case 'SettingsScreen.lanSyncScanQRcode': return 'اسکن کدQR و همگام‌سازی';
			case 'SettingsScreen.syncToConfirm': return 'همگام سازی را با طرف مقابل تأیید می کنید؟';
			case 'SettingsScreen.syncDone': return 'همگام سازی تکمیل شد';
			case 'SettingsScreen.importSuccess': return 'افزودن موفق بود';
			case 'SettingsScreen.rewriteConfirm': return 'این فایل کانفیگ‌های محلی موجود را بازنویسی می‌کند. آیا می‌خواهید ادامه بدین؟';
			case 'SettingsScreen.networkShare': return 'اشتراک‌گذاری شبکه';
			case 'SettingsScreen.frontProxy': return 'پروکسی جلو';
			case 'SettingsScreen.frontProxyTips': return 'داده‌ها->سرور پروکسی جلو->سرور پروکسی->سرور هدف';
			case 'SettingsScreen.allowOtherHostsConnect': return 'اجازه اتصال دیگران';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'اگر پس از روشن کردن اشتراک‌گذاری، دیگران نمی‌توانند به این دستگاه دسترسی داشته باشند، لطفاً این سوئیچ را خاموش کنید.';
			case 'SettingsScreen.enableCluster': return 'فعال‌سازی پروکسی Socks/Http خوشه‌ای';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'اجازه اتصال دیگران به خوشه';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object hp}) => 'http://127.0.0.1:${hp}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'احراز هویت خوشه پروکسی';
			case 'SettingsScreen.clusterConfirm': return 'لطفا مطمعن شوید تاخیر سرورها بررسی شده و درصورتی‌که بررسی نشده‌باشند یا اشتباه بررسی شده‌باشند سرویس پروکسی ساخته نمی‌شود';
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
			case 'SettingsScreen.removeSystemVPNConfig': return 'حذف پیکربندی وی‌پی‌ان سیستم';
			case 'SettingsScreen.timeConnectOrDisconnect': return 'اتصال/قطع اتصال برنامه‌ریزی شده';
			case 'SettingsScreen.timeConnectOrDisconnectTips': return 'برای اعمال شدن وی‌پی‌ان باید متصل باشد. پس‌از روشن‌شدن [خواب خودکار] غیرفعال می‌شود';
			case 'SettingsScreen.timeConnectAndDisconnectInterval': return ({required Object p}) => 'The connection/disconnection interval cannot be less than ${p} minutes';
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
			case 'SettingsScreen.rateInApp': return 'امتیاز به ما';
			case 'SettingsScreen.rateInAppStore': return 'به ما در اپ‌استور امتیاز بدین';
			case 'SpeedTestSettingsScreen.title': return 'URL تست سرعت';
			case 'SpeedTestSettingsScreen.error': return 'باید یک URL معتبر https باشد';
			case 'TextToQrCodeScreen.title': return 'متن به کد QR';
			case 'TextToQrCodeScreen.convert': return 'تبدیل';
			case 'UrlTestSettingsScreen.title': return 'URL بررسی تاخیر';
			case 'UrlTestSettingsScreen.error': return 'باید یک URL معتبر https باشد';
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
			case 'account': return 'نام‌کاربری';
			case 'password': return 'رمز‌عبور';
			case 'required': return 'الزامی';
			case 'diversion': return 'انحراف';
			case 'diversionRules': return 'قوانین انحراف';
			case 'diversionRulesEnable': return 'قوانین بارگیری [ISP] را فعال کنید';
			case 'diversionCustomGroup': return 'گروه انحراف سفارشی';
			case 'diversionCustomGroupPreset': return 'از پیش تنظیم شده [گروه انحراف سفارشی]';
			case 'diversionCustomGroupPresetTips': return 'توجه: موارد فعال به [گروه انحراف سفارشی] و [قوانین انحراف] اضافه/پوشش داده خواهند شد';
			case 'diversionCustomGroupAddTips': return 'توجه: ممکن است لازم باشد پس از افزودن مرتب‌سازی به‌صورت دستی آن را تنظیم کنید، در غیر این صورت انحراف تازه اضافه‌شده ممکن است اعمال نشود.';
			case 'urlTestCustomGroup': return 'گروه پروکسی سفارشی';
			case 'rulesetEnableTips': return 'راهنمایی: پس‌از ذخیره کردن لطفا به [قوانین انحراف] رفته و قوانین مربوط زا تنظیم کنید؛ درغیراین صورت اعمال نخواهند شد';
			case 'ispUserAgentTips': return '[ISP] انواع مختلف داده های اشتراک را بر اساس [UserAgent] در درخواست [HTTP] ارائه خواهد کرد.';
			case 'ispDiversionTips': return 'قوانین بارگذاری ارائه شده توسط [ISP]، اشتراک های نوع [V2Ray] از قوانین تخلیه پشتیبانی نمی کنند';
			case 'staticIP': return 'IP استاتیک';
			case 'other': return 'دیگر';
			case 'dns': return 'DNS';
			case 'url': return 'URL';
			case 'isp': return 'ISP';
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
			case 'appPackage': return 'نام بسته‌ی برنامه';
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
			case 'keywordsOrRegx': return 'کلمات کلیدی / معمولی';
			case 'importFromClipboard': return 'افزودن از کلیپ‌برد';
			case 'exportToClipboard': return 'صادرات به کلیپ بورد';
			case 'server': return 'سرور';
			case 'appleTVConnectTurnOfprivateDirect': return 'لطفاً ابتدا [اتصال مستقیم شبکه خصوصی] را فعال کنید';
			case 'targetConnectFailed': return ({required Object p}) => 'اتصال به [${p}] ناموفق بود، لطفاً مطمئن شوید که دستگاه در همان LAN است و [اتصال مستقیم شبکه خصوصی] را فعال کنید.';
			case 'appleTVSync': return 'همگام سازی پیکربندی هسته فعلی با Apple TV - Karing';
			case 'appleTVSyncDone': return 'همگام سازی کامل شد، لطفاً برای باز کردن/راه اندازی مجدد اتصال به Apple TV - Karing بروید';
			case 'appleTVRemoveCoreConfig': return 'حذف Apple TV - Karing Core Configuration';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - نمایه اصلی کارینگ حذف شد';
			case 'appleTVUrlInvalid': return 'URL نامعتبر است، لطفاً Apple TV - Karing را باز کنید، کد QR نمایش داده شده توسط Karing را اسکن کنید';
			case 'remoteProfileEditConfirm': return 'پس از به روز رسانی تنظیمات، تغییرات گره بازیابی می شوند آیا می خواهید ادامه دهید؟';
			case 'invalidFileType': return ({required Object p}) => 'نوع فایل نامعتبر:${p}';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

extension on _StringsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'AboutScreen.installRefer': return 'Установленная ссылка';
			case 'AboutScreen.versionChannel': return 'Автоматически обновлять канал';
			case 'AboutScreen.disableUAReport': return 'Отключить аналитику';
			case 'AboutScreen.disableUAReportTip': return 'Отчеты о поведенческих данных помогают нам улучшить работу с продуктом; версии ниже основной версии автоматически отключают все отчеты о данных (кроме [Активации приложения]).';
			case 'AboutScreen.devOptions': return 'Параметры разработчика';
			case 'AboutScreen.enableDebugLog': return 'Включить debug-лог';
			case 'AboutScreen.viewFilsContent': return 'Посмотреть файлы';
			case 'AboutScreen.enablePprof': return 'Включить pprof';
			case 'AboutScreen.pprofPanel': return 'pprof панель';
			case 'AboutScreen.openDir': return 'Открыть каталог файлов';
			case 'AboutScreen.useOriginalSBProfile': return 'Использовать исходную конфигурацию Sing-box';
			case 'AddProfileByImportFromFileScreen.title': return 'Импорт файла конфигурации';
			case 'AddProfileByImportFromFileScreen.chooseFile': return 'Выбрать файл';
			case 'AddProfileByImportFromFileScreen.configExist': return 'Профиль уже существует. Пожалуйста, не добавляйте его повторно';
			case 'AddProfileByLinkOrContentScreen.title': return 'Добавление подписки';
			case 'AddProfileByLinkOrContentScreen.updateTimerInterval': return 'Интервал обновления';
			case 'AddProfileByLinkOrContentScreen.updateTimerIntervalTips': return 'Чтобы отключить, установите:< 5 мин';
			case 'AddProfileByLinkOrContentScreen.profileLinkContent': return 'Ссылка на подписку/содержание';
			case 'AddProfileByLinkOrContentScreen.profileLinkContentHit': return 'Ссылка на подписку/содержание [обязательно] (Поддерживаются Clash, V2ray(c пакетом поддержки), Stash, Karing, Sing-box, Shadowsocks, Sub; Ссылка на конфигурацию).';
			case 'AddProfileByLinkOrContentScreen.subscriptionCannotEmpty': return 'Ссылка на подписку не может быть пустой';
			case 'AddProfileByLinkOrContentScreen.configExist': return 'Профиль уже существует. Пожалуйста, не добавляйте его повторно';
			case 'AddProfileByLinkOrContentScreen.invalidUrl': return 'Ссылка на подписку слишком длинная';
			case 'AddProfileByLinkOrContentScreen.addFailedFormatException': return ({required Object p}) => 'Неправильный формат, исправьте его и добавьте еще раз:${p}';
			case 'AddProfileByLinkOrContentScreen.addFailedThenDownloadAndImport': return ({required Object p}) => 'Не удалось добавить: ${p}. Попробуйте изменить [UserAgent] и повторите попытку, или используйте собственный браузер устройства, чтобы открыть ссылку на конфигурацию и импортировать файл конфигурации, загруженный браузером, в это приложение.';
			case 'AddProfileByLinkOrContentScreen.addFailedHandshakeException': return ({required Object p}) => 'Не удалось добавить: ${p}, откройте агент или измените текущий узел агента и повторите попытку.';
			case 'AddProfileByScanQrcodeScanScreen.copy': return 'Скопировать ссылку';
			case 'AddProfileByScanQrcodeScanScreen.open': return 'Открыть ссылку';
			case 'AddProfileByScanQrcodeScanScreen.requestCameraPermission': return 'Пожалуйста, разрешите приложению доступ к камере';
			case 'AddProfileByScanQrcodeScanScreen.requestScreenAccess': return 'Пожалуйста, перейдите в «Настройки системы» — «Конфиденциальность и безопасность» — «Запись экрана», чтобы добавить разрешения для этого приложения';
			case 'AddProfileByScanQrcodeScanScreen.screenshot': return 'Скриншот';
			case 'AddProfileByScanQrcodeScanScreen.scanFromImage': return 'Открыть';
			case 'AddProfileByScanQrcodeScanScreen.scanNoResult': return 'Не удалось проанализировать изображение. Убедитесь, что снимок экрана представляет собой действительный QR-код.';
			case 'AddProfileByScanQrcodeScanScreen.scanEmptyResult': return 'Пустой результат сканирования.';
			case 'AddProfileByScanQrcodeScanScreen.scanException': return ({required Object p}) => 'Не удалось проанализировать изображение. Убедитесь, что снимок экрана представляет собой действительный QR-код:${p}';
			case 'BackupAndSyncLanSyncScreen.title': return 'Синхронизация по локальной сети';
			case 'BackupAndSyncLanSyncScreen.lanSyncNotQuitTips': return 'Не выходите из этого окна до завершения синхронизации.';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return 'Адрес сервера';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return 'Не может быть пустым';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return 'Ошибка входа:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return 'Не удалось получить список файлов:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => 'Неверный [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => 'Неверный [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => 'Неверный [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => 'Неверный [Rule Set]:${p}, URL-адрес должен быть действительным URL-адресом https двоичного файлом с расширением .srs/.json';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => 'Неверный [RuleSet(build-in)]:${p}, формат: geosite:xxx или geoip:xxx или acl:xxx, а xxx должно быть допустимым именем правила.';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return 'Совет: после сохранения перейдите в раздел [Правила перенаправления] и установите их, иначе изменения не будут действовать.';
			case 'DiversionRuleDetectScreen.title': return 'Тест правил перенаправления';
			case 'DiversionRuleDetectScreen.detect': return 'Тест';
			case 'DiversionRuleDetectScreen.rule': return 'Правило:';
			case 'DiversionRuleDetectScreen.outbound': return 'Прокси-сервер:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return 'Совет: Правила применяются по очереди сверху вниз. Если ни одно соответствие не обнаружено, то действует правило [Final]';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'ISP не может быть пустой';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'URL не может быть пустой';
			case 'DnsSettingsScreen.error': return ({required Object p}) => 'Неподдерживаемый тип:${p}';
			case 'DnsSettingsScreen.dnsDesc': return 'Первый столбец данных — это задержка запроса при прямом соединении;\nВторой столбец, если включено [[действующий поток]Разрешать DNS через прокси-сервер]: данные — это задержка запроса, пересылаемого через текущий прокси-сервер; Если выключено [[действующий поток] Разрешать DNS через прокси-сервер]: данные - это задержка запроса при прямом соединении.';
			case 'FeedbackScreen.content': return 'Содержание';
			case 'FeedbackScreen.contentHit': return 'Не более 500 символов';
			case 'FeedbackScreen.contentCannotEmpty': return 'Содержание не может быть пустым';
			case 'FileContentViewerScreen.title': return 'Просмотр содержимого файла';
			case 'FileContentViewerScreen.chooseFile': return 'Выберите файл';
			case 'FileContentViewerScreen.clearFileContent': return 'Вы уверены, что хотите очистить содержимое файла?';
			case 'FileContentViewerScreen.clearFileContentTips': return 'Вы уверены, что  хотите очистить содержимое файла профиля? Очистка файла профиля может привести к потере данных или некорректной работе приложения. Действуйте осторожно.';
			case 'HomeScreen.toSelectServer': return 'Выберите сервер';
			case 'HomeScreen.invalidServer': return 'Просрочен. Пожалуйста, выберите другой';
			case 'HomeScreen.disabledServer': return 'Был отключен. Пожалуйста, выберите другой';
			case 'HomeScreen.expiredServer': return 'Нет доступного сервера: возможно, профиль устарел или отключен';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'HomeScreen.trafficTotal': return 'Трафик всего';
			case 'HomeScreen.trafficProxy': return 'Трафик прокси';
			case 'HomeScreen.myLinkEmpty': return 'Пожалуйста, настройте [Быструю ссылку] перед использованием';
			case 'HomeScreen.deviceNoSpace': return 'Недостаточно места на диске';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}], и соединение может оказаться невозможным из-за ограничений системной памяти';
			case 'LaunchFailedScreen.invalidProcess': return 'Не удалось запустить приложение [Неверное имя процесса], переустановите приложение в отдельную папку';
			case 'LaunchFailedScreen.invalidProfile': return 'Не удалось запустить приложение [Не удалось получить доступ к профилю], переустановите приложение';
			case 'LaunchFailedScreen.invalidVersion': return 'Не удалось запустить приложение [Неверная версия], переустановите приложение';
			case 'LaunchFailedScreen.systemVersionLow': return 'Не удалось запустить приложение [Слишком низкая версия системы]';
			case 'LaunchFailedScreen.startFromUNC': return 'Путь установки недействителен, переустановите его по допустимому пути';
			case 'MyProfilesEditScreen.title': return 'Редактирование профилей';
			case 'MyProfilesEditScreen.urlExist': return 'URL-адрес уже существует, используйте другой URL-адрес';
			case 'MyProfilesEditScreen.updateTimerInterval': return 'Интервал обновления';
			case 'MyProfilesEditScreen.updateTimerIntervalTips': return 'Чтобы отключить, установите <5 мин';
			case 'MyProfilesEditScreen.reloadAfterProfileUpdate': return 'Перезагрузить после обновления профиля';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdate': return 'Начать тестирование задержек после обновления профиля';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdateTips': return 'VPN необходимо подключить, и включить [Перезагрузить после обновления профиля]';
			case 'MyProfilesEditScreen.testLatencyAutoRemove': return 'Автоматически удалять серверы, не прошедшие тесты на задержку';
			case 'MyProfilesEditScreen.testLatencyAutoRemoveTips': return 'Попробуйте до 3 раз';
			case 'MyProfilesMergeScreen.profilesMerge': return 'Объединение профилей';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return 'Целевой профиль';
			case 'MyProfilesMergeScreen.profilesMergeSource': return 'Профиль - источник';
			case 'MyProfilesMergeScreen.profilesMergeTips': return 'Совет: Настройки перенаправления для профиля - источника будут удалены.';
			case 'MyProfilesScreen.title': return 'Профили';
			case 'MyProfilesScreen.atLeastOneEnable': return 'Невозможно отключить, оставьте включенным хотя бы один профиль';
			case 'NetCheckScreen.title': return 'Диагностика сети';
			case 'NetCheckScreen.warn': return 'Примечание. Из-за влияния сетевой среды и правил перенаправления результаты теста не полностью эквивалентны фактическим результатам.';
			case 'NetCheckScreen.check': return 'Тест';
			case 'NetCheckScreen.invalidDomain': return 'Неверное имя домена';
			case 'NetCheckScreen.connectivity': return 'Подключение к сети';
			case 'NetCheckScreen.connectivityTestIpv4AllFailed': return ({required Object p}) => 'Ipv4 Тест подключения[${p}] неудачен';
			case 'NetCheckScreen.connectivityTestIpv4Ok': return 'Ipv4 Соединение выполнено успешно';
			case 'NetCheckScreen.connectivityTestIpv6AllFailed': return ({required Object p}) => 'Ipv6 Тест подключения[${p}] неудачен. Возможно, ваша сеть не поддерживает ipv6.';
			case 'NetCheckScreen.connectivityTestIpv6Ok': return 'Ipv6 Соединение выполнено успешно';
			case 'NetCheckScreen.connectivityTestOk': return 'Сеть подключена к Интернету';
			case 'NetCheckScreen.connectivityTestFailed': return 'Ваша сеть не подключена к Интернету';
			case 'NetCheckScreen.remoteRulesetsDownloadOk': return 'Все успешно скачано';
			case 'NetCheckScreen.remoteRulesetsDownloadNotOk': return 'Загрузка или сбой';
			case 'NetCheckScreen.outbound': return 'Прокси-сервер';
			case 'NetCheckScreen.outboundOk': return ({required Object p}) => '[${p}]Соединение установлено успешно';
			case 'NetCheckScreen.outboundFailed': return ({required Object p1, required Object p2}) => '[${p1}]Соединение не удалось\nошибка:[${p2}]';
			case 'NetCheckScreen.dnsServer': return 'DNS сервер';
			case 'NetCheckScreen.dnsOk': return ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS Разобрано успешно\nDNS правило:[${p2}]\nЗадержка:[${p3} ms]\nадрес:[${p4}]';
			case 'NetCheckScreen.dnsFailed': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS Не удалось выполнить синтаксический анализ\n правило:[${p2}]\nошибка:[${p3}]';
			case 'NetCheckScreen.host': return 'HTTP соединение';
			case 'NetCheckScreen.hostConnection': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nПравила перенаправления:[${p2}]\nПрокси-сервер:[${p3}]';
			case 'NetCheckScreen.hostConnectionOk': return 'Соединение установлено успешно';
			case 'NetCheckScreen.hostConnectionFailed': return ({required Object p}) => 'Соединение не удалось:[${p}]';
			case 'NetConnectionsFilterScreen.title': return 'Фильтр соединений';
			case 'NetConnectionsFilterScreen.hostIp': return 'Domain/IP';
			case 'NetConnectionsFilterScreen.app': return 'Приложение';
			case 'NetConnectionsFilterScreen.rule': return 'Правило';
			case 'NetConnectionsFilterScreen.chain': return 'Исходящий';
			case 'NetConnectionsScreen.title': return 'Соединения';
			case 'NetConnectionsScreen.copyAsCSV': return 'Скопировано в CSV формате';
			case 'NetConnectionsScreen.selectType': return 'Выберите тип перенаправления';
			case 'PerAppAndroidScreen.title': return 'Проксируемые приложения';
			case 'PerAppAndroidScreen.whiteListMode': return 'Режим белого списка';
			case 'PerAppAndroidScreen.whiteListModeTip': return 'Если включено: перенаправляются через прокси-сервер только те приложения, которые были отмечены. Если выключено: перенаправляются через прокси-сервер только те приложения, которые не были отмечены.';
			case 'PerAppAndroidScreen.hideSystemApp': return 'Скрыть системные приложения';
			case 'PerAppAndroidScreen.hideAppIcon': return 'Скрыть значок приложения';
			case 'PerAppAndroidScreen.enableAppQueryPermission': return 'Включать разрешения [на запросы списка приложений]';
			case 'QrcodeScreen.tooLong': return 'Слишком большой текст для отображения';
			case 'QrcodeScreen.copy': return 'Скопировать ссылку';
			case 'QrcodeScreen.open': return 'Открыть ссылку';
			case 'QrcodeScreen.share': return 'Поделиться ссылкой';
			case 'QrcodeScreen.shareImage': return 'Поделиться QR-кодом';
			case 'RegionSettingsScreen.title': return 'Страна или регион';
			case 'RegionSettingsScreen.Regions': return 'Совет: Пожалуйста, правильно укажите текущую страну или регион. В противном случае это может вызвать проблемы с перенаправлением в сети';
			case 'ServerSelectScreen.title': return 'Выбор сервера';
			case 'ServerSelectScreen.autoSelectServer': return 'Автовыбор сервера с наименьшей задержкой';
			case 'ServerSelectScreen.recentUse': return 'Недавно использованные';
			case 'ServerSelectScreen.myFav': return 'Мои избранные';
			case 'ServerSelectScreen.selectLocal': return ({required Object p}) => 'Выбранный сервер является локальным, и может работать неправильно:${p}';
			case 'ServerSelectScreen.selectRequireEnableIPv6': return 'Выбранный сервер имеет адрес IPv6 и требует [Включить IPv6]';
			case 'ServerSelectScreen.selectDisabled': return 'Сервер отключен';
			case 'ServerSelectScreen.error404': return 'При  измерении задержки произошла ошибка. Проверьте, существует ли профиль с таким содержимым.';
			case 'SettingsScreen.ispFaq': return ({required Object p}) => 'FAQ[${p}]';
			case 'SettingsScreen.cleanISP': return ({required Object p}) => 'Очистить ISP[${p}]';
			case 'SettingsScreen.openISP': return 'Открыть ссылку на провайдера';
			case 'SettingsScreen.cleanISPNoParam': return 'Очистить информацию об интернет-провайдере';
			case 'SettingsScreen.getTranffic': return 'Получить трафик';
			case 'SettingsScreen.tutorial': return 'Руководство';
			case 'SettingsScreen.commonlyUsedRulesets': return 'Часто используемые наборы правил';
			case 'SettingsScreen.howToRemoveAds': return 'Как удалить рекламу';
			case 'SettingsScreen.htmlBoard': return 'Веб-панель';
			case 'SettingsScreen.dnsLeakDetection': return 'Обнаружение утечки DNS';
			case 'SettingsScreen.speedTest': return 'Тест скорости';
			case 'SettingsScreen.downloadProfilePreferProxy': return 'Настройка приоритетного выбора прокси-сервера';
			case 'SettingsScreen.downloadProfilePreferProxyTips': return 'Если подключение установлено, профиль вначале будет загружен через подключенный прокси-сервер';
			case 'SettingsScreen.rulesetDirectDownlad': return 'Rule Set Прямой доступ';
			case 'SettingsScreen.hideUnusedDiversionGroup': return 'Скрыть неактивные правила перенаправления';
			case 'SettingsScreen.disableISPDiversionGroup': return 'Отключить правила перенаправления ISP';
			case 'SettingsScreen.portSetting': return 'Порт';
			case 'SettingsScreen.portSettingRule': return 'Основано на правилах';
			case 'SettingsScreen.portSettingDirectAll': return 'Полное прямое соединение';
			case 'SettingsScreen.portSettingProxyAll': return 'Прокси для всего';
			case 'SettingsScreen.portSettingControl': return 'Управление и синхронизация';
			case 'SettingsScreen.portSettingCluster': return 'Кластерный сервис';
			case 'SettingsScreen.modifyPort': return 'Изменить порт';
			case 'SettingsScreen.ipStrategyTips': return 'Перед включением убедитесь, что ваша сеть поддерживает IPv6, в противном случае нормальный доступ к части трафика будет невозможен';
			case 'SettingsScreen.tunAppendHttpProxy': return 'Подключите HTTP-прокси к VPN';
			case 'SettingsScreen.tunAppendHttpProxyTips': return 'Некоторые приложения будут обходить устройство виртуальной сетевой карты и напрямую подключаться к HTTP-прокси.';
			case 'SettingsScreen.tlsInsecureEnable': return 'Пропустить проверку сертификата';
			case 'SettingsScreen.tlsFragmentEnable': return 'Включить сегментацию TLS';
			case 'SettingsScreen.tlsFragmentSize': return 'Размер сегмента TLS';
			case 'SettingsScreen.tlsFragmentSleep': return 'Сегментированный сон TLS';
			case 'SettingsScreen.tlsMixedCaseSNIEnable': return 'Включить гибридный SNI TLS';
			case 'SettingsScreen.tlsPaddingEnable': return 'Включить заполнение TLS';
			case 'SettingsScreen.tlsPaddingSize': return 'Размер заполнения TLS';
			case 'SettingsScreen.dnsEnableRule': return 'Включить правила DNS';
			case 'SettingsScreen.dnsEnableFakeIp': return 'Включить FakeIP';
			case 'SettingsScreen.dnsEnableClientSubnet': return 'Включить ECS';
			case 'SettingsScreen.dnsEnableProxyResolveByProxy': return '[действующий поток] Разрешать DNS через прокси-сервер';
			case 'SettingsScreen.dnsEnableFinalResolveByProxy': return '[final] Разрешать DNS через прокси-сервер';
			case 'SettingsScreen.dnsTestDomain': return 'Тестовое доменное имя';
			case 'SettingsScreen.dnsTestDomainInvalid': return 'Неверное доменное имя';
			case 'SettingsScreen.dnsTypeOutbound': return 'Прокси-сервер';
			case 'SettingsScreen.dnsTypeDirect': return 'Прямой поток';
			case 'SettingsScreen.dnsTypeProxy': return 'Действующий поток';
			case 'SettingsScreen.dnsTypeResolver': return 'DNS-сервер';
			case 'SettingsScreen.dnsEnableRuleTips': return 'После включения, доменное имя выберет соответствующий DNS-сервер для разрешения в соответствии с правилами перенаправления.';
			case 'SettingsScreen.dnsEnableFakeIpTips': return 'После включения FakeIP, если VPN-соединение отключено, возможно, потребуется перезапустить приложение, эту функцию необходимо включить [Режим TUN];';
			case 'SettingsScreen.dnsTypeOutboundTips': return 'Для разрешения доменных имен прокси-сервера рекомендуется использовать безопасный DNS';
			case 'SettingsScreen.dnsTypeDirectTips': return 'Разрешение доменных имен для прямого потока';
			case 'SettingsScreen.dnsTypeProxyTips': return 'Разрешение доменных имен для действующего потока';
			case 'SettingsScreen.dnsTypeResolverTips': return 'Разрешение доменных имен для DNS-серверов';
			case 'SettingsScreen.dnsTypeFinalTips': return 'Разрешение доменных имен для потока Final';
			case 'SettingsScreen.dnsAutoSetServer': return 'Автоматически настроить сервер';
			case 'SettingsScreen.dnsResetServer': return 'Сбросить сервер';
			case 'SettingsScreen.inboundDomainResolve': return 'Разрешение входящих доменных имен';
			case 'SettingsScreen.privateDirect': return 'Прямое подключение к частной сети';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => 'Некоторые доменные имена без настроенных правил переадресации необходимо разрешить, прежде чем они смогут соответствовать правилам переадресации на основе IP; эта функция влияет на входящие запросы к порту прокси [${p}]';
			case 'SettingsScreen.useRomoteRes': return 'Использовать удаленные ресурсы';
			case 'SettingsScreen.autoSelect': return 'Автовыбор';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'Игнорировать прокси-сервер [передний прокси]';
			case 'SettingsScreen.autoSelectServerInterval': return 'Интервал проверок задержки';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return 'Перетестировать после смены сети';
			case 'SettingsScreen.autoSelectServerIntervalTips': return 'Чем короче временной интервал, тем чаще обновляются данные о задержке сервера. Но это потребует больше ресурсов и энергии';
			case 'SettingsScreen.autoSelectServerFavFirst': return 'Приоритетно [Мои избранные]';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return 'Обновить текущий сервер после измерения задержки вручную';
			case 'SettingsScreen.autoSelectServerFavFirstTips': return 'Если список [Мои избранные] не пуст, то будут использоваться серверы из [Мои избранные]';
			case 'SettingsScreen.autoSelectServerFilter': return 'Отфильтровать сервера';
			case 'SettingsScreen.autoSelectServerFilterTips': return ({required Object p}) => 'Ошибки превышения задержки сервера будут отфильтрованы; если после фильтрации ни один сервер не будет доступен, вместо него будут использоваться первые [${p}] серверы';
			case 'SettingsScreen.autoSelectServerLimitedNum': return 'Максимальное количество серверов';
			case 'SettingsScreen.autoSelectServerLimitedNumTips': return 'Серверы, превышающие это число, будут отфильтрованы.';
			case 'SettingsScreen.numInvalid': return 'Неправильный номер';
			case 'SettingsScreen.hideInvalidServer': return 'Скрыть нерабочие серверы';
			case 'SettingsScreen.sortServer': return 'Сортировка серверов';
			case 'SettingsScreen.sortServerTips': return 'Сортировать по задержке от низкой к высокой';
			case 'SettingsScreen.selectServerHideRecommand': return 'Скрыть [Рекомендуемые]';
			case 'SettingsScreen.selectServerHideRecent': return 'Скрыть [Недавно использованные]';
			case 'SettingsScreen.selectServerHideFav': return 'Скрыть [Мои избранные]';
			case 'SettingsScreen.homeScreen': return 'Домашний экран';
			case 'SettingsScreen.theme': return 'Тема';
			case 'SettingsScreen.myLink': return 'Быстрая ссылка';
			case 'SettingsScreen.myLinkInvalid': return 'Неверный URL';
			case 'SettingsScreen.autoConnectAfterLaunch': return 'Автоматическое подключение после запуска';
			case 'SettingsScreen.hideAfterLaunch': return 'Скрыть окно после запуска';
			case 'SettingsScreen.autoSetSystemProxy': return 'Установить прокси после подключения';
			case 'SettingsScreen.disconnectWhenQuit': return 'Отключаться при выходе из приложения';
			case 'SettingsScreen.allowBypass': return 'Разрешить приложениям обходить VPN';
			case 'SettingsScreen.lanSyncTo': return 'Синхронизировать на другие устройства';
			case 'SettingsScreen.lanSyncFrom': return 'Синхронизация с других устройств';
			case 'SettingsScreen.lanSyncScanQRcode': return 'Сканируйте QR-код для синхронизации';
			case 'SettingsScreen.syncToConfirm': return 'Подтвердить синхронизацию с собеседником?';
			case 'SettingsScreen.syncDone': return 'Синхронизация завершена';
			case 'SettingsScreen.importSuccess': return 'Импорт выполнен успешно';
			case 'SettingsScreen.rewriteConfirm': return 'Этот файл перезапишет существующую локальную конфигурацию. Продолжить?';
			case 'SettingsScreen.networkShare': return 'Общий доступ к сети';
			case 'SettingsScreen.frontProxy': return 'Фронт-прокси';
			case 'SettingsScreen.frontProxyTips': return 'Запрос -> фронт-прокси сервер -> прокси-сервер -> целевой сервер';
			case 'SettingsScreen.allowOtherHostsConnect': return 'Разрешить подключаться другим';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'Если после включения общего доступа другие люди не смогут получить доступ к этому устройству, попробуйте отключить этот переключатель.';
			case 'SettingsScreen.enableCluster': return 'Включить кластер прокси Socks/Http';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'Разрешить подключаться другим';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object hp}) => 'http://127.0.0.1:${hp}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'Аутентификация прокси-кластера';
			case 'SettingsScreen.clusterConfirm': return 'Пожалуйста, подтвердите, что задержка серверов проверена. Прокси-сервисы не будут созданы, если они не проверены или проверены неверно';
			case 'SettingsScreen.tunMode': return 'Режим TUN';
			case 'SettingsScreen.tunModeTips': return 'В режиме TUN весь трафик системы будет перенаправлен через соединение [В этом режиме вы можете оставить системный прокси отключенным]';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'Для режима TUN требуются права администратора. Перезапустите приложение от имени администратора';
			case 'SettingsScreen.tunStack': return 'Stack';
			case 'SettingsScreen.launchAtStartup': return 'Запуск при включении';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return 'Переключить пользователя для выхода';
			case 'SettingsScreen.handleScheme': return 'Использовать схему системы с предварительным звонком';
			case 'SettingsScreen.portableMode': return 'Портативный режим';
			case 'SettingsScreen.portableModeDisableTips': return 'Если вам нужно выйти из портативного режима, выйдите из [karing] и вручную удалите папку [profiles] в том же каталоге, что и [karing.exe]';
			case 'SettingsScreen.handleKaringScheme': return 'Кнопка karing:// Позвонить';
			case 'SettingsScreen.handleClashScheme': return 'Кнопка clash:// Позвонить';
			case 'SettingsScreen.handleSingboxScheme': return 'Кнопка sing-box:// Позвонить';
			case 'SettingsScreen.removeSystemVPNConfig': return 'Удалить профиль VPN';
			case 'SettingsScreen.timeConnectOrDisconnect': return 'Запланированное подключение/отключение';
			case 'SettingsScreen.timeConnectOrDisconnectTips': return 'Чтобы это заработало, необходимо подключить VPN; после его подключения [автоматическое засыпание] будет отключено';
			case 'SettingsScreen.timeConnectAndDisconnectInterval': return ({required Object p}) => 'Интервал подключения/отключения не может быть меньше ${p} минут.';
			case 'SettingsScreen.disableFontScaler': return 'Отключить масштабирование шрифта';
			case 'SettingsScreen.autoOrientation': return 'Следите за поворотом экрана';
			case 'SettingsScreen.restartTakesEffect': return 'Требуется перезапуск';
			case 'SettingsScreen.resetSettings': return 'Сброс настроек';
			case 'SettingsScreen.cleanCache': return 'Очистка кэша';
			case 'SettingsScreen.cleanCacheDone': return 'Очистка завершена';
			case 'SettingsScreen.appleTestFlight': return 'Apple TestFlight';
			case 'SettingsScreen.appleAppStore': return 'Apple AppStore';
			case 'SettingsScreen.hasNewVersion': return ({required Object p}) => 'Обновить версию ${p}';
			case 'SettingsScreen.follow': return 'Подписаться на нас';
			case 'SettingsScreen.contactUs': return 'Связаться с нами';
			case 'SettingsScreen.rateInApp': return 'Оценить нас';
			case 'SettingsScreen.rateInAppStore': return 'Оценить нас в App Store';
			case 'SpeedTestSettingsScreen.title': return 'URL-адрес теста скорости';
			case 'SpeedTestSettingsScreen.error': return 'https URL должен быть действительным';
			case 'TextToQrCodeScreen.title': return 'Преобразование текста в QR-код';
			case 'TextToQrCodeScreen.convert': return 'Конвертировать';
			case 'UrlTestSettingsScreen.title': return 'URL-адрес измерения задержки';
			case 'UrlTestSettingsScreen.error': return 'https URL должен быть действительным';
			case 'UserAgreementScreen.privacyFirst': return 'Ваша конфиденциальность превыше всего';
			case 'UserAgreementScreen.agreeAndContinue': return 'Принять и продолжить';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => 'Новая версия [${p}] доступна';
			case 'VersionUpdateScreen.update': return 'Перезапустить';
			case 'VersionUpdateScreen.cancel': return 'Не сейчас';
			case 'CommonWidget.diableAlwayOnVPN': return 'Если параметр [VPN всегда включен] включен, отключите его и попробуйте подключиться еще раз';
			case 'CommonWidget.resetPort': return 'Пожалуйста, измените порт на другой доступный порт или закройте приложение, занимающее порт.';
			case 'ServerManager.noServerAvaliable': return 'Нет доступных серверов, убедитесь что подписка или файл профиля корректен. Если ваша конфигурация взята из GitHub, получите адрес ссылки, нажав кнопку [Raw] на странице.';
			case 'ServerManager.filePathCannotEmpty': return 'Путь к файлу не может быть пустым';
			case 'ServerManager.fileNotExist': return ({required Object p}) => 'Файла не существует:${p}';
			case 'ServerManager.urlCannotEmpty': return 'Ссылка не может быть пустой';
			case 'ServerManager.invalidUrl': return 'Некорректная ссылка на подписку';
			case 'ServerManager.parseFailed': return 'Получение подписки не удалось';
			case 'main.tray.menuOpen': return '    Открыть    ';
			case 'main.tray.menuExit': return '    Выйти    ';
			case 'enable': return 'Включить';
			case 'disable': return 'Запретить';
			case 'prefer': return 'Приоритет';
			case 'only': return 'Только';
			case 'open': return 'Открыть';
			case 'close': return 'Закрыть';
			case 'quit': return 'Выйти';
			case 'add': return 'Добавить';
			case 'remove': return 'Удалить';
			case 'edit': return 'Редактировать';
			case 'view': return 'Более';
			case 'more': return 'More';
			case 'addProfile': return 'Добавить профиль';
			case 'addSuccess': return 'Добавлено успешно';
			case 'addSuccessThen': return ({required Object p}) => 'Конфигурация сгенерирована успешно. Для просмотра перейдите в [${p}]';
			case 'addFailed': return ({required Object p}) => 'Ошибка при добавлении:${p}';
			case 'removeConfirm': return 'Подтверждаете удаление?';
			case 'tips': return 'Инфо';
			case 'copy': return 'Скопировать';
			case 'ok': return 'Ок';
			case 'cancel': return 'Закрыть';
			case 'feedback': return 'Обратная связь';
			case 'faq': return 'Часто задаваемые вопросы (FAQ)';
			case 'download': return 'Скачать';
			case 'loading': return 'Загрузка...';
			case 'updateFailed': return ({required Object p}) => 'Не удалось обновить:${p}';
			case 'days': return 'дни';
			case 'hours': return 'часы';
			case 'minutes': return 'минуты';
			case 'seconds': return 'Второй';
			case 'protocol': return 'Протокол';
			case 'search': return 'Поиск';
			case 'custom': return 'Настроить самостоятельно';
			case 'connect': return 'Соединить';
			case 'disconnect': return 'Отключить';
			case 'connected': return 'Подключено';
			case 'disconnected': return 'Отключено';
			case 'connecting': return 'Подключение';
			case 'connectTimeout': return 'Таймаут при соединении';
			case 'timeout': return 'тайм-аут';
			case 'language': return 'Язык';
			case 'next': return 'Дальше';
			case 'done': return 'Готово';
			case 'apply': return 'Применить';
			case 'refresh': return 'Обновить';
			case 'retry': return 'Хотите попробовать еще раз?';
			case 'none': return 'Ничего не делать';
			case 'reset': return 'Перезагрузить';
			case 'submit': return 'Отправить';
			case 'account': return 'Аккаунт';
			case 'password': return 'Пароль';
			case 'required': return 'Необходимо';
			case 'diversion': return 'Правила';
			case 'diversionRules': return 'Правила перенаправления';
			case 'diversionRulesEnable': return 'Включить правила разгрузки [ISP]';
			case 'diversionCustomGroup': return 'Личные правила';
			case 'diversionCustomGroupPreset': return 'Шаблоны личных правил';
			case 'diversionCustomGroupPresetTips': return 'Примечание. Включенные элементы будут добавлены или включены в [Личные правила] и [Правила перенаправления].';
			case 'diversionCustomGroupAddTips': return 'Примечание. Возможно, вам придется вручную настроить сортировку после ее добавления, в противном случае добавленное перенаправление может не вступить в силу.';
			case 'urlTestCustomGroup': return 'Личная группа прокси-серверов';
			case 'rulesetEnableTips': return 'Совет: После включения опции перейдите в [Правила перенаправления] и установите их, иначе опция не будет действовать';
			case 'ispUserAgentTips': return '[ISP] будет доставлять различные типы данных о подписке на основе [UserAgent] в запросе [HTTP].';
			case 'ispDiversionTips': return 'Правила разгрузки, предоставляемые подписками типа [ISP] [V2Ray], не поддерживают правила разгрузки;';
			case 'staticIP': return 'Статический IP';
			case 'other': return 'Другой';
			case 'dns': return 'DNS';
			case 'url': return 'URL';
			case 'isp': return 'ISP';
			case 'tls': return 'TLS';
			case 'userAgent': return 'UserAgent';
			case 'urlInvalid': return 'Неверный URL';
			case 'outboundActionCurrentSelected': return 'Текущий сервер';
			case 'outboundActionUrltest': return 'Автовыбор сервера';
			case 'outboundActionDirect': return 'Напрямую';
			case 'outboundActionBlock': return 'Блокировать';
			case 'routeFinal': return 'Final';
			case 'rulesetGeoSite': return 'GeoSite';
			case 'rulesetGeoIp': return 'GeoIP';
			case 'rulesetAcl': return 'ACL';
			case 'iCloud': return 'iCloud';
			case 'appleTV': return 'Apple TV';
			case 'webdav': return 'Webdav';
			case 'setting': return 'Настройки';
			case 'protocolSniff': return 'Обнаружение протокола';
			case 'protocolSniffOverrideDestination': return 'Обнаруженное доменное имя охватывает целевой адрес подключения.';
			case 'remark': return 'Примечание';
			case 'remarkCannotEmpty': return 'Примечание не может быть пустым';
			case 'remarkTooLong': return 'Примечания до 32 символов';
			case 'remarkExist': return 'Примечание уже существует, используйте другое имя';
			case 'domainSuffix': return 'Суффикс доменного имени';
			case 'domain': return 'Имя домена';
			case 'domainKeyword': return 'Ключевые слова в имени домена';
			case 'domainRegex': return 'Регулярные выражения для имен доменов';
			case 'ip': return 'IP';
			case 'port': return 'Порт';
			case 'appPackage': return 'Имя пакета приложения';
			case 'processName': return 'Имя процесса';
			case 'processPath': return 'Путь к процессу';
			case 'systemProxy': return 'Системный прокси';
			case 'netInterfaces': return 'Сетевой интерфейс';
			case 'netSpeed': return 'Скорость';
			case 'website': return 'Веб-сайт';
			case 'rule': return 'Правила';
			case 'global': return 'Глобально';
			case 'qrcode': return 'QR-код';
			case 'scanQrcode': return 'Сканировать QR-код';
			case 'scanResult': return 'Результат сканирования';
			case 'backupAndSync': return 'Резервное копирование и синхронизация';
			case 'importAndExport': return 'Импорт и экспорт';
			case 'import': return 'Импорт';
			case 'export': return 'Экспорт';
			case 'termOfUse': return 'Условия использования';
			case 'privacyPolicy': return 'Политика конфиденциальности';
			case 'about': return 'О Karing';
			case 'name': return 'Название';
			case 'version': return 'Версия';
			case 'notice': return 'Уведомления';
			case 'sort': return 'Отсортировать';
			case 'novice': return 'Режим новичка';
			case 'recommended': return 'Рекомендуемые';
			case 'innerError': return ({required Object p}) => 'внутренняя ошибка:${p}';
			case 'logicOperation': return 'логическая операция';
			case 'share': return 'Поделиться';
			case 'candidateWord': return 'Ключевые слова';
			case 'keywordsOrRegx': return 'Ключевые слова/регулярные выражения';
			case 'importFromClipboard': return 'Импорт из буфера обмена';
			case 'exportToClipboard': return 'Экспорт в буфер обмена';
			case 'server': return 'сервер';
			case 'appleTVConnectTurnOfprivateDirect': return 'Пожалуйста, сначала включите [Прямое подключение к частной сети]';
			case 'targetConnectFailed': return ({required Object p}) => 'Не удалось подключиться к [${p}]. Убедитесь, что устройство находится в той же локальной сети, и включите [Прямое подключение к частной сети].';
			case 'appleTVSync': return 'Синхронизация текущей базовой конфигурации с Apple TV - Karing';
			case 'appleTVSyncDone': return 'Синхронизация завершена, перейдите в Apple TV — Karing, чтобы открыть/перезапустить соединение.';
			case 'appleTVRemoveCoreConfig': return 'Удаление Apple TV — базовая конфигурация Karing';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV — основной профиль Karing удален; VPN-сервис отключен;';
			case 'appleTVUrlInvalid': return 'Неверный URL-адрес. Откройте Apple TV — Karing, отсканируйте QR-код, отображаемый Karing.';
			case 'remoteProfileEditConfirm': return 'После обновления конфигурации изменения узла будут восстановлены. Продолжить?';
			case 'invalidFileType': return ({required Object p}) => 'Неверный тип файла:${p}';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

extension on _StringsZhCn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'AboutScreen.installRefer': return '安装参考';
			case 'AboutScreen.versionChannel': return '自动更新通道';
			case 'AboutScreen.disableUAReport': return '关闭行为数据上报';
			case 'AboutScreen.disableUAReportTip': return '行为数据上报有助于我们改进产品体验;低于主版本的版本将自动关闭的所有数据上报([应用激活]除外)';
			case 'AboutScreen.devOptions': return '开发者选项';
			case 'AboutScreen.enableDebugLog': return '开启调试日志';
			case 'AboutScreen.viewFilsContent': return '查看文件';
			case 'AboutScreen.enablePprof': return '启用pprof';
			case 'AboutScreen.pprofPanel': return 'pprof面板';
			case 'AboutScreen.openDir': return '打开文件目录';
			case 'AboutScreen.useOriginalSBProfile': return '使用原始sing-box配置';
			case 'AddProfileByImportFromFileScreen.title': return '导入配置文件';
			case 'AddProfileByImportFromFileScreen.chooseFile': return '选择文件';
			case 'AddProfileByImportFromFileScreen.configExist': return '配置已存在,请勿重复添加';
			case 'AddProfileByLinkOrContentScreen.title': return '添加配置链接';
			case 'AddProfileByLinkOrContentScreen.updateTimerInterval': return '更新时间间隔';
			case 'AddProfileByLinkOrContentScreen.updateTimerIntervalTips': return '禁用请设置为:<5m';
			case 'AddProfileByLinkOrContentScreen.profileLinkContent': return '配置链接/内容';
			case 'AddProfileByLinkOrContentScreen.profileLinkContentHit': return '配置链接/内容[必填] (支持Clash,V2ray(支持批量),Stash,Karing,Sing-box,Shadowsocks,Sub,Github配置链接)';
			case 'AddProfileByLinkOrContentScreen.subscriptionCannotEmpty': return '配置链接不能为空';
			case 'AddProfileByLinkOrContentScreen.configExist': return '配置已存在,请勿重复添加';
			case 'AddProfileByLinkOrContentScreen.invalidUrl': return '配置链接长度过长';
			case 'AddProfileByLinkOrContentScreen.addFailedFormatException': return ({required Object p}) => '格式错误,请订正后重新添加:${p}';
			case 'AddProfileByLinkOrContentScreen.addFailedThenDownloadAndImport': return ({required Object p}) => '添加失败:${p}, 请尝试修改[UserAgent]后重试,或者用设备自带的浏览器打开配置链接,并将浏览器下载的配置文件导入到本应用';
			case 'AddProfileByLinkOrContentScreen.addFailedHandshakeException': return ({required Object p}) => '添加失败:${p}, 请打开代理或者修改当前代理节点后重试';
			case 'AddProfileByScanQrcodeScanScreen.copy': return '拷贝链接';
			case 'AddProfileByScanQrcodeScanScreen.open': return '打开链接';
			case 'AddProfileByScanQrcodeScanScreen.requestCameraPermission': return '请开启摄像头权限';
			case 'AddProfileByScanQrcodeScanScreen.requestScreenAccess': return '请到系统设置-隐私与安全-屏幕录制 为本应用添加权限';
			case 'AddProfileByScanQrcodeScanScreen.screenshot': return '截图';
			case 'AddProfileByScanQrcodeScanScreen.scanFromImage': return '打开二维码图片';
			case 'AddProfileByScanQrcodeScanScreen.scanNoResult': return '解析图片失败,请确保截图为有效的二维码';
			case 'AddProfileByScanQrcodeScanScreen.scanEmptyResult': return '扫描结果为空';
			case 'AddProfileByScanQrcodeScanScreen.scanException': return ({required Object p}) => '解析图片异常,请确保截图为有效的二维码:${p}';
			case 'BackupAndSyncLanSyncScreen.title': return '局域网同步';
			case 'BackupAndSyncLanSyncScreen.lanSyncNotQuitTips': return '同步完成前请勿退出此界面';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return '服务器地址';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return '不能为空';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return '登录失败:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return '获取文件列表失败:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => '无效的 [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => '无效的 [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => '无效的 [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => '无效的 [Rule Set]:${p}, URL必须是有效的https URL,并且文件扩展名为.srs/.json的binary文件';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => '无效的 [Rule Set(build-in)]:${p}, 格式为geosite:xxx 或 geoip:xxx 或 acl:xxx,并且xxx应为有效的规则名';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return '提示:保存后,请到[分流规则]设置相关规则,否则不会生效';
			case 'DiversionRuleDetectScreen.title': return '分流规则探测';
			case 'DiversionRuleDetectScreen.detect': return '探测';
			case 'DiversionRuleDetectScreen.rule': return '规则:';
			case 'DiversionRuleDetectScreen.outbound': return '代理服务器:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return '提示:从上到下依次尝试匹配规则,如果没有匹配到规则,则使用[final]';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'ISP 不能为空';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'URL 不能为空';
			case 'DnsSettingsScreen.error': return ({required Object p}) => '不支持的类型:${p}';
			case 'DnsSettingsScreen.dnsDesc': return '第一列延迟数据为直连查询延迟;\n第二列:开启[[代理流量]通过代理服务器解析DNS]:延迟数据为通过当前代理服务器转发的查询延迟;未开启[[代理流量]通过代理服务器解析DNS]:延迟数据为直连查询延迟';
			case 'FeedbackScreen.content': return '反馈内容';
			case 'FeedbackScreen.contentHit': return '必填, 最长500字符';
			case 'FeedbackScreen.contentCannotEmpty': return '反馈内容不能为空';
			case 'FileContentViewerScreen.title': return '文件内容查看';
			case 'FileContentViewerScreen.chooseFile': return '选择文件';
			case 'FileContentViewerScreen.clearFileContent': return '确认清空文件内容?';
			case 'FileContentViewerScreen.clearFileContentTips': return '确认清空配置文件内容? 清空配置文件可能会导致数据丢失或应用功能异常, 请谨慎操作';
			case 'HomeScreen.toSelectServer': return '请选择服务器';
			case 'HomeScreen.invalidServer': return '已失效,请重新选择';
			case 'HomeScreen.disabledServer': return '已被禁用,请重新选择';
			case 'HomeScreen.expiredServer': return '无可用服务器:配置可能已过期或被禁用';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'HomeScreen.trafficTotal': return '总流量';
			case 'HomeScreen.trafficProxy': return '代理流量';
			case 'HomeScreen.myLinkEmpty': return '请先设置[快捷链接]后再使用';
			case 'HomeScreen.deviceNoSpace': return '磁盘空间不足';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => '代理服务器[${p}>${p1}]过多,可能因系统内存限制而无法连接';
			case 'LaunchFailedScreen.invalidProcess': return '应用启动失败[无效的进程名称],请重新安装应用到独立目录';
			case 'LaunchFailedScreen.invalidProfile': return '应用启动失败[访问配置文件失败],请重新安装应用';
			case 'LaunchFailedScreen.invalidVersion': return '应用启动失败[无效版本],请重新安装应用';
			case 'LaunchFailedScreen.systemVersionLow': return '应用启动失败[系统版本过低]';
			case 'LaunchFailedScreen.startFromUNC': return '无效的安装路径,请重新安装到有效路径';
			case 'MyProfilesEditScreen.title': return '编辑配置';
			case 'MyProfilesEditScreen.urlExist': return 'URL已存在,请使用其他URL';
			case 'MyProfilesEditScreen.updateTimerInterval': return '更新时间间隔';
			case 'MyProfilesEditScreen.updateTimerIntervalTips': return '禁用请设置为:<5m';
			case 'MyProfilesEditScreen.reloadAfterProfileUpdate': return '配置更新后重新加载';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdate': return '配置自动更新后启动延迟测试';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdateTips': return 'VPN需要处于已连接状态,并且开启[配置更新后重新加载]';
			case 'MyProfilesEditScreen.testLatencyAutoRemove': return '自动移除延迟测试失败的服务器';
			case 'MyProfilesEditScreen.testLatencyAutoRemoveTips': return '最多尝试3次';
			case 'MyProfilesMergeScreen.profilesMerge': return '配置合并';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return '目标配置';
			case 'MyProfilesMergeScreen.profilesMergeSource': return '源配置';
			case 'MyProfilesMergeScreen.profilesMergeTips': return '提示:源配置的分流信息将会被丢弃';
			case 'MyProfilesScreen.title': return '我的配置';
			case 'MyProfilesScreen.atLeastOneEnable': return '无法禁用,请至少保留一个配置可用';
			case 'NetCheckScreen.title': return '网络检测';
			case 'NetCheckScreen.warn': return '注意:由于受网络环境及分流规则等影响,测试结果并不完全等价实际中使用的效果';
			case 'NetCheckScreen.check': return '检测';
			case 'NetCheckScreen.invalidDomain': return '无效域名';
			case 'NetCheckScreen.connectivity': return '网络联通性';
			case 'NetCheckScreen.connectivityTestIpv4AllFailed': return ({required Object p}) => 'Ipv4 连接测试[${p}]全部失败';
			case 'NetCheckScreen.connectivityTestIpv4Ok': return 'Ipv4 连接成功';
			case 'NetCheckScreen.connectivityTestIpv6AllFailed': return ({required Object p}) => 'Ipv6 连接测试[${p}]全部失败, 你的网络可能不支持ipv6';
			case 'NetCheckScreen.connectivityTestIpv6Ok': return 'Ipv6 连接成功';
			case 'NetCheckScreen.connectivityTestOk': return '网络已接入互联网';
			case 'NetCheckScreen.connectivityTestFailed': return '网络尚未接入互联网';
			case 'NetCheckScreen.remoteRulesetsDownloadOk': return '全部下载成功';
			case 'NetCheckScreen.remoteRulesetsDownloadNotOk': return '正在下载或下载失败';
			case 'NetCheckScreen.outbound': return '代理服务器';
			case 'NetCheckScreen.outboundOk': return ({required Object p}) => '[${p}]连接成功';
			case 'NetCheckScreen.outboundFailed': return ({required Object p1, required Object p2}) => '[${p1}]连接失败\n错误:[${p2}]';
			case 'NetCheckScreen.dnsServer': return 'DNS服务器';
			case 'NetCheckScreen.dnsOk': return ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]域名解析成功\nDNS规则:[${p2}]\n延迟:[${p3} ms]\n地址:[${p4}]';
			case 'NetCheckScreen.dnsFailed': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]域名解析失败\n规则:[${p2}]\n错误:[${p3}]';
			case 'NetCheckScreen.host': return 'HTTP连接';
			case 'NetCheckScreen.hostConnection': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\n分流规则:[${p2}]\n代理服务器:[${p3}]';
			case 'NetCheckScreen.hostConnectionOk': return '连接成功';
			case 'NetCheckScreen.hostConnectionFailed': return ({required Object p}) => '连接失败:[${p}]';
			case 'NetConnectionsFilterScreen.title': return '连接状态筛选';
			case 'NetConnectionsFilterScreen.hostIp': return '域名/IP';
			case 'NetConnectionsFilterScreen.app': return '应用';
			case 'NetConnectionsFilterScreen.rule': return '规则';
			case 'NetConnectionsFilterScreen.chain': return '出站';
			case 'NetConnectionsScreen.title': return '连接状态';
			case 'NetConnectionsScreen.copyAsCSV': return '已复制为CSV格式';
			case 'NetConnectionsScreen.selectType': return '选择分流类型';
			case 'PerAppAndroidScreen.title': return '分应用代理';
			case 'PerAppAndroidScreen.whiteListMode': return '白名单模式';
			case 'PerAppAndroidScreen.whiteListModeTip': return '启用后:仅代理已勾选的App;未启用:仅代理未勾选的App';
			case 'PerAppAndroidScreen.hideSystemApp': return '隐藏系统应用';
			case 'PerAppAndroidScreen.hideAppIcon': return '隐藏应用图标';
			case 'PerAppAndroidScreen.enableAppQueryPermission': return '开启 [获取应用列表] 权限';
			case 'QrcodeScreen.tooLong': return '文本过长,无法展示';
			case 'QrcodeScreen.copy': return '拷贝链接';
			case 'QrcodeScreen.open': return '打开链接';
			case 'QrcodeScreen.share': return '分享链接';
			case 'QrcodeScreen.shareImage': return '分享二维码';
			case 'RegionSettingsScreen.title': return '国家与地区';
			case 'RegionSettingsScreen.Regions': return '提示:请正确设置你当前所在国家或地区,否则可能会导致分流错误';
			case 'ServerSelectScreen.title': return '选择服务器';
			case 'ServerSelectScreen.autoSelectServer': return '自动选择延迟最低的服务器';
			case 'ServerSelectScreen.recentUse': return '最近使用';
			case 'ServerSelectScreen.myFav': return '我的收藏';
			case 'ServerSelectScreen.selectLocal': return ({required Object p}) => '所选服务器为本地地址,可能无法正常使用:${p}';
			case 'ServerSelectScreen.selectRequireEnableIPv6': return '所选服务器为IPv6地址,需要[启用IPv6]';
			case 'ServerSelectScreen.selectDisabled': return '该服务器已被禁用';
			case 'ServerSelectScreen.error404': return '延迟检测遇到错误,请检查是否存在内容相同的配置';
			case 'SettingsScreen.ispFaq': return ({required Object p}) => 'FAQ[${p}]';
			case 'SettingsScreen.cleanISP': return ({required Object p}) => '清除ISP[${p}]';
			case 'SettingsScreen.openISP': return '打开ISP链接';
			case 'SettingsScreen.cleanISPNoParam': return '清除ISP信息';
			case 'SettingsScreen.getTranffic': return '获取流量';
			case 'SettingsScreen.tutorial': return '使用教程';
			case 'SettingsScreen.commonlyUsedRulesets': return '常用规则集';
			case 'SettingsScreen.howToRemoveAds': return '如何移除广告';
			case 'SettingsScreen.htmlBoard': return '在线面板';
			case 'SettingsScreen.dnsLeakDetection': return 'DNS泄露检测';
			case 'SettingsScreen.speedTest': return '测速';
			case 'SettingsScreen.downloadProfilePreferProxy': return '优先使用代理下载配置';
			case 'SettingsScreen.downloadProfilePreferProxyTips': return '如果当前已连接,则优先通过已连接的代理下载配置';
			case 'SettingsScreen.rulesetDirectDownlad': return 'Rule Set直连下载';
			case 'SettingsScreen.hideUnusedDiversionGroup': return '隐藏未启用的分流组';
			case 'SettingsScreen.disableISPDiversionGroup': return '禁用ISP分流规则';
			case 'SettingsScreen.portSetting': return '端口';
			case 'SettingsScreen.portSettingRule': return '基于规则';
			case 'SettingsScreen.portSettingDirectAll': return '全直连';
			case 'SettingsScreen.portSettingProxyAll': return '全代理';
			case 'SettingsScreen.portSettingControl': return '控制与同步';
			case 'SettingsScreen.portSettingCluster': return '集群服务';
			case 'SettingsScreen.modifyPort': return '修改端口';
			case 'SettingsScreen.ipStrategyTips': return '启用前,请先确认你的网络已支持IPv6,否则某些流量无法正常访问';
			case 'SettingsScreen.tunAppendHttpProxy': return '附加HTTP代理到VPN';
			case 'SettingsScreen.tunAppendHttpProxyTips': return '一些App会绕过虚拟网卡设备直连HTTP代理';
			case 'SettingsScreen.tlsInsecureEnable': return '跳过证书验证';
			case 'SettingsScreen.tlsFragmentEnable': return '启用TLS分段';
			case 'SettingsScreen.tlsFragmentSize': return 'TLS分段大小';
			case 'SettingsScreen.tlsFragmentSleep': return 'TLS分段休眠';
			case 'SettingsScreen.tlsMixedCaseSNIEnable': return '启用TLS混合SNI';
			case 'SettingsScreen.tlsPaddingEnable': return '启用TLS填充';
			case 'SettingsScreen.tlsPaddingSize': return 'TLS填充大小';
			case 'SettingsScreen.dnsEnableRule': return '启用DNS分流规则';
			case 'SettingsScreen.dnsEnableFakeIp': return '启用FakeIP';
			case 'SettingsScreen.dnsEnableClientSubnet': return '启用ECS';
			case 'SettingsScreen.dnsEnableProxyResolveByProxy': return '[代理流量]通过代理服务器解析DNS';
			case 'SettingsScreen.dnsEnableFinalResolveByProxy': return '[final]通过代理服务器解析DNS';
			case 'SettingsScreen.dnsTestDomain': return '测试域名';
			case 'SettingsScreen.dnsTestDomainInvalid': return '无效的域名';
			case 'SettingsScreen.dnsTypeOutbound': return '代理服务器';
			case 'SettingsScreen.dnsTypeDirect': return '直连流量';
			case 'SettingsScreen.dnsTypeProxy': return '代理流量';
			case 'SettingsScreen.dnsTypeResolver': return 'DNS服务器';
			case 'SettingsScreen.dnsEnableRuleTips': return '启用后,域名会根据分流规则选择对应的DNS服务器进行解析';
			case 'SettingsScreen.dnsEnableFakeIpTips': return '启用FakeIP后,如果断开VPN连接,你的应用可能需要重启;此功能需要开启[TUN模式]';
			case 'SettingsScreen.dnsTypeOutboundTips': return '用于代理服务器的域名解析';
			case 'SettingsScreen.dnsTypeDirectTips': return '用于直连流量的域名解析';
			case 'SettingsScreen.dnsTypeProxyTips': return '用于代理流量的域名解析';
			case 'SettingsScreen.dnsTypeResolverTips': return '用于DNS服务器的域名解析';
			case 'SettingsScreen.dnsTypeFinalTips': return '用于其他流量的域名解析';
			case 'SettingsScreen.dnsAutoSetServer': return '自动设置服务器';
			case 'SettingsScreen.dnsResetServer': return '重置服务器';
			case 'SettingsScreen.inboundDomainResolve': return '解析入站域名';
			case 'SettingsScreen.privateDirect': return '私有网络直连';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => '某些未配置分流规则的域名需要解析后才可能命中基于IP的分流规则;此功能影响代理端口[${p}]的入站请求';
			case 'SettingsScreen.useRomoteRes': return '使用远程资源';
			case 'SettingsScreen.autoSelect': return '自动选择';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return '忽略[前置代理]代理服务器';
			case 'SettingsScreen.autoSelectServerInterval': return '延迟检测时间间隔';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return '网络变化时重新检测';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return '手动延时检测后更新当前服务器';
			case 'SettingsScreen.autoSelectServerIntervalTips': return '延迟检测时间间隔越短,服务器延迟数据更新越及时,但会占用更多资源,耗电更快';
			case 'SettingsScreen.autoSelectServerFavFirst': return '优先使用[我的收藏]';
			case 'SettingsScreen.autoSelectServerFavFirstTips': return '如果[我的收藏]列表不为空,则使用[我的收藏]里的服务器';
			case 'SettingsScreen.autoSelectServerFilter': return '过滤无效服务器';
			case 'SettingsScreen.autoSelectServerFilterTips': return ({required Object p}) => '服务器延迟检测失败的将会被过滤掉;如果过滤后无服务器可用,则改用前[${p}]个服务器';
			case 'SettingsScreen.autoSelectServerLimitedNum': return '服务器数量上限';
			case 'SettingsScreen.autoSelectServerLimitedNumTips': return '超过该数量的服务器将被过滤掉';
			case 'SettingsScreen.numInvalid': return '无效的数字';
			case 'SettingsScreen.hideInvalidServer': return '隐藏无效服务器';
			case 'SettingsScreen.sortServer': return '服务器排序';
			case 'SettingsScreen.sortServerTips': return '按延迟由低到高排序';
			case 'SettingsScreen.selectServerHideRecommand': return '隐藏[推荐]';
			case 'SettingsScreen.selectServerHideRecent': return '隐藏[最近使用]';
			case 'SettingsScreen.selectServerHideFav': return '隐藏[我的收藏]';
			case 'SettingsScreen.homeScreen': return '主屏';
			case 'SettingsScreen.theme': return '主题';
			case 'SettingsScreen.myLink': return '快捷链接';
			case 'SettingsScreen.myLinkInvalid': return '无效的URL';
			case 'SettingsScreen.autoConnectAfterLaunch': return '启动后自动连接';
			case 'SettingsScreen.hideAfterLaunch': return '启动后隐藏窗口';
			case 'SettingsScreen.autoSetSystemProxy': return '连接后自动设置系统代理';
			case 'SettingsScreen.disconnectWhenQuit': return '退出应用时关闭连接';
			case 'SettingsScreen.allowBypass': return '允许应用绕过VPN';
			case 'SettingsScreen.lanSyncTo': return '同步给他人';
			case 'SettingsScreen.lanSyncFrom': return '从他人同步';
			case 'SettingsScreen.lanSyncScanQRcode': return '扫码同步';
			case 'SettingsScreen.syncToConfirm': return '确认同步给对方?';
			case 'SettingsScreen.syncDone': return '同步完成';
			case 'SettingsScreen.importSuccess': return '导入成功';
			case 'SettingsScreen.rewriteConfirm': return '该文件将覆盖本地已有配置,是否继续?';
			case 'SettingsScreen.networkShare': return '网络共享';
			case 'SettingsScreen.frontProxy': return '前置代理';
			case 'SettingsScreen.frontProxyTips': return '数据->前置代理服务器->代理服务器->目标服务器';
			case 'SettingsScreen.allowOtherHostsConnect': return '允许其他主机接入';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return '严格路由';
			case 'SettingsScreen.tunStrictRouteTips': return '如果开启共享后,其他无法接入此设备,请尝试关闭此开关';
			case 'SettingsScreen.enableCluster': return '开启Socks/Http代理集群';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return '允许其他主机接入代理集群';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object hp}) => 'http://127.0.0.1:${hp}/get_proxies';
			case 'SettingsScreen.clusterAuth': return '代理集群认证';
			case 'SettingsScreen.clusterConfirm': return '请确认服务器已经过服务器延迟检测,未检测或者检测出错的将不会创建代理服务';
			case 'SettingsScreen.tunMode': return 'TUN模式';
			case 'SettingsScreen.tunModeTips': return 'TUN模式将接管系统所有流量[此模式下无需开启系统代理]';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'TUN模式需要系统管理员权限,请以管理员身份重新启动应用';
			case 'SettingsScreen.tunStack': return '网络栈';
			case 'SettingsScreen.launchAtStartup': return '开机启动';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return '切换系统用户时退出应用';
			case 'SettingsScreen.handleScheme': return '系统Scheme调用';
			case 'SettingsScreen.portableMode': return '便携模式';
			case 'SettingsScreen.portableModeDisableTips': return '如需退出便携模式,请退出[karing]后,手动删除[karing.exe]同目录下的[profiles]文件夹即可';
			case 'SettingsScreen.handleKaringScheme': return '处理karing://调用';
			case 'SettingsScreen.handleClashScheme': return '处理clash://调用';
			case 'SettingsScreen.handleSingboxScheme': return '处理sing-box://调用';
			case 'SettingsScreen.removeSystemVPNConfig': return '删除系统VPN配置';
			case 'SettingsScreen.timeConnectOrDisconnect': return '定时连接/断开';
			case 'SettingsScreen.timeConnectOrDisconnectTips': return 'VPN必须处于连接状态才会生效;开启后,[自动休眠]将失效';
			case 'SettingsScreen.timeConnectAndDisconnectInterval': return ({required Object p}) => '连接/断开时间间隔不能低于${p}分钟';
			case 'SettingsScreen.disableFontScaler': return '禁用字体缩放';
			case 'SettingsScreen.autoOrientation': return '跟随屏幕旋转';
			case 'SettingsScreen.restartTakesEffect': return '重启生效';
			case 'SettingsScreen.resetSettings': return '重置设置';
			case 'SettingsScreen.cleanCache': return '清理缓存';
			case 'SettingsScreen.cleanCacheDone': return '清理完成';
			case 'SettingsScreen.appleTestFlight': return '苹果 TestFlight';
			case 'SettingsScreen.appleAppStore': return '苹果 AppStore';
			case 'SettingsScreen.hasNewVersion': return ({required Object p}) => '更新版本 ${p}';
			case 'SettingsScreen.follow': return '关注我们';
			case 'SettingsScreen.contactUs': return '联系我们';
			case 'SettingsScreen.rateInApp': return '评分';
			case 'SettingsScreen.rateInAppStore': return '在App Store上评分';
			case 'SpeedTestSettingsScreen.title': return '测速URL';
			case 'SpeedTestSettingsScreen.error': return '必须为有效的 https URL';
			case 'TextToQrCodeScreen.title': return '文本转二维码';
			case 'TextToQrCodeScreen.convert': return '转换';
			case 'UrlTestSettingsScreen.title': return '延迟检测URL';
			case 'UrlTestSettingsScreen.error': return '必须为有效的 https URL';
			case 'UserAgreementScreen.privacyFirst': return '您的隐私很重要';
			case 'UserAgreementScreen.agreeAndContinue': return '接受并继续';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => '新版本[${p}]已就绪';
			case 'VersionUpdateScreen.update': return '重启更新';
			case 'VersionUpdateScreen.cancel': return '暂不更新';
			case 'CommonWidget.diableAlwayOnVPN': return '如果开启了[始终开启VPN], 请关闭[始终开启VPN]后重试连接';
			case 'CommonWidget.resetPort': return '请将端口改为其他可用端口或者关闭占用该端口的应用';
			case 'ServerManager.noServerAvaliable': return '无可用服务器,请确保配置链接或配置文件有效;如果你的配置来源于GitHub,请从页面上的[Raw]按钮获取链接地址';
			case 'ServerManager.filePathCannotEmpty': return '文件路径不能为空';
			case 'ServerManager.fileNotExist': return ({required Object p}) => '文件不存在:${p}';
			case 'ServerManager.urlCannotEmpty': return '链接不能为空';
			case 'ServerManager.invalidUrl': return '错误的配置链接';
			case 'ServerManager.parseFailed': return '解析配置失败';
			case 'main.tray.menuOpen': return '    打开    ';
			case 'main.tray.menuExit': return '    退出    ';
			case 'enable': return '启用';
			case 'disable': return '禁用';
			case 'prefer': return '优先';
			case 'only': return '仅';
			case 'open': return '打开';
			case 'close': return '关闭';
			case 'quit': return '退出';
			case 'add': return '添加';
			case 'remove': return '删除';
			case 'edit': return '编辑';
			case 'view': return '查看';
			case 'more': return '更多';
			case 'addProfile': return '添加配置';
			case 'addSuccess': return '添加成功';
			case 'addSuccessThen': return ({required Object p}) => '配置生成成功,请到[${p}]查看';
			case 'addFailed': return ({required Object p}) => '添加失败:${p}';
			case 'removeConfirm': return '确认删除?';
			case 'tips': return '提示';
			case 'copy': return '拷贝';
			case 'ok': return '确定';
			case 'cancel': return '取消';
			case 'feedback': return '反馈';
			case 'faq': return '常见问题';
			case 'download': return '下载';
			case 'loading': return '加载中...';
			case 'updateFailed': return ({required Object p}) => '更新失败:${p}';
			case 'days': return '天';
			case 'hours': return '时';
			case 'minutes': return '分';
			case 'seconds': return '秒';
			case 'protocol': return '协议';
			case 'search': return '搜索';
			case 'custom': return '自定义';
			case 'connect': return '连接';
			case 'disconnect': return '断开';
			case 'connected': return '已连接';
			case 'disconnected': return '未连接';
			case 'connecting': return '连接中';
			case 'connectTimeout': return '连接超时';
			case 'timeout': return '超时';
			case 'language': return '语言';
			case 'next': return '下一步';
			case 'done': return '完成';
			case 'apply': return '应用';
			case 'refresh': return '刷新';
			case 'retry': return '是否重试?';
			case 'none': return '无';
			case 'reset': return '重置';
			case 'submit': return '提交';
			case 'account': return '账号';
			case 'password': return '密码';
			case 'required': return '必填';
			case 'diversion': return '分流';
			case 'diversionRules': return '分流规则';
			case 'diversionRulesEnable': return '启用[ISP]分流规则';
			case 'diversionCustomGroup': return '自定义分流组';
			case 'diversionCustomGroupPreset': return '预置[自定义分流组]';
			case 'diversionCustomGroupPresetTips': return '注意:启用的项会添加/覆盖到[自定义分流组]和[分流规则]';
			case 'diversionCustomGroupAddTips': return '注意:添加完毕后可能需要手动调整排序,否则新添加的分流可能不会生效';
			case 'urlTestCustomGroup': return '自定义代理组';
			case 'rulesetEnableTips': return '提示:开启选项后,请到[分流规则]设置相关规则,否则不会生效';
			case 'ispUserAgentTips': return '[ISP]会根据[HTTP]请求里的[UserAgent]下发不同订阅类型的数据';
			case 'ispDiversionTips': return '[ISP]提供的分流规则;[V2Ray]类型的订阅不支持分流规则';
			case 'staticIP': return '静态IP';
			case 'other': return '其他';
			case 'dns': return 'DNS';
			case 'url': return 'URL';
			case 'isp': return 'ISP';
			case 'tls': return 'TLS';
			case 'userAgent': return 'UserAgent';
			case 'urlInvalid': return '无效URL';
			case 'outboundActionCurrentSelected': return '当前选择';
			case 'outboundActionUrltest': return '自动选择';
			case 'outboundActionDirect': return '直连';
			case 'outboundActionBlock': return '拦截';
			case 'routeFinal': return 'final';
			case 'rulesetGeoSite': return 'GeoSite';
			case 'rulesetGeoIp': return 'GeoIP';
			case 'rulesetAcl': return 'ACL';
			case 'iCloud': return 'iCloud';
			case 'appleTV': return 'Apple TV';
			case 'webdav': return 'Webdav';
			case 'setting': return '设置';
			case 'protocolSniff': return '协议探测';
			case 'protocolSniffOverrideDestination': return '探测的域名覆盖连接目标地址';
			case 'remark': return '备注';
			case 'remarkCannotEmpty': return '备注不能为空';
			case 'remarkTooLong': return '备注最长32字符';
			case 'remarkExist': return '备注已存在,请使用其他名称';
			case 'domainSuffix': return '域名后缀';
			case 'domain': return '域名';
			case 'domainKeyword': return '域名关键词';
			case 'domainRegex': return '域名正则';
			case 'ip': return 'IP';
			case 'port': return '端口';
			case 'appPackage': return '应用包名';
			case 'processName': return '进程名称';
			case 'processPath': return '进程路径';
			case 'systemProxy': return '系统代理';
			case 'netInterfaces': return '网络接口';
			case 'netSpeed': return '速度';
			case 'website': return '官网';
			case 'rule': return '规则';
			case 'global': return '全局';
			case 'qrcode': return '二维码';
			case 'scanQrcode': return '扫描二维码';
			case 'scanResult': return '扫描结果';
			case 'backupAndSync': return '备份与同步';
			case 'importAndExport': return '导入/导出';
			case 'import': return '导入';
			case 'export': return '导出';
			case 'termOfUse': return '使用条款';
			case 'privacyPolicy': return '隐私政策';
			case 'about': return '关于';
			case 'name': return '名称';
			case 'version': return '版本';
			case 'notice': return '通知';
			case 'sort': return '排序';
			case 'novice': return '新手模式';
			case 'recommended': return '推荐';
			case 'innerError': return ({required Object p}) => '内部错误:${p}';
			case 'logicOperation': return '逻辑运算';
			case 'share': return '分享';
			case 'candidateWord': return '候选词';
			case 'keywordsOrRegx': return '关键词/正则';
			case 'importFromClipboard': return '从剪切板导入';
			case 'exportToClipboard': return '导出到剪切板';
			case 'server': return '服务器';
			case 'appleTVConnectTurnOfprivateDirect': return '请先开启[私有网络直连]';
			case 'targetConnectFailed': return ({required Object p}) => '连接[${p}]失败,请确保设备在同一个局域网内,并且开启[私有网络直连]';
			case 'appleTVSync': return '同步当前核心配置到Apple TV - Karing';
			case 'appleTVSyncDone': return '同步完成,请到Apple TV - Karing开启连接/重启连接';
			case 'appleTVRemoveCoreConfig': return '删除Apple TV - Karing核心配置';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - Karing的核心配置文件已删除;VPN服务已断开连接';
			case 'appleTVUrlInvalid': return '无效的URL,请打开Apple TV - Karing,扫描Karing显示的二维码';
			case 'remoteProfileEditConfirm': return '配置更新后,节点的修改将会被还原,是否继续?';
			case 'invalidFileType': return ({required Object p}) => '无效的文件类型:${p}';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}
