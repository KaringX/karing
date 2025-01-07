///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
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
	late final TranslationsAboutScreenEn AboutScreen = TranslationsAboutScreenEn._(_root);
	late final TranslationsAddProfileByImportFromFileScreenEn AddProfileByImportFromFileScreen = TranslationsAddProfileByImportFromFileScreenEn._(_root);
	late final TranslationsAddProfileByLinkOrContentScreenEn AddProfileByLinkOrContentScreen = TranslationsAddProfileByLinkOrContentScreenEn._(_root);
	late final TranslationsAddProfileByScanQrcodeScanScreenEn AddProfileByScanQrcodeScanScreen = TranslationsAddProfileByScanQrcodeScanScreenEn._(_root);
	late final TranslationsBackupAndSyncLanSyncScreenEn BackupAndSyncLanSyncScreen = TranslationsBackupAndSyncLanSyncScreenEn._(_root);
	late final TranslationsBackupAndSyncWebdavScreenEn BackupAndSyncWebdavScreen = TranslationsBackupAndSyncWebdavScreenEn._(_root);
	late final TranslationsDiversionGroupCustomEditScreenEn DiversionGroupCustomEditScreen = TranslationsDiversionGroupCustomEditScreenEn._(_root);
	late final TranslationsDiversionRuleDetectScreenEn DiversionRuleDetectScreen = TranslationsDiversionRuleDetectScreenEn._(_root);
	late final TranslationsDiversionRulesScreenEn DiversionRulesScreen = TranslationsDiversionRulesScreenEn._(_root);
	late final TranslationsDnsSettingsScreenEn DnsSettingsScreen = TranslationsDnsSettingsScreenEn._(_root);
	late final TranslationsFeedbackScreenEn FeedbackScreen = TranslationsFeedbackScreenEn._(_root);
	late final TranslationsFileContentViewerScreenEn FileContentViewerScreen = TranslationsFileContentViewerScreenEn._(_root);
	late final TranslationsHomeScreenEn HomeScreen = TranslationsHomeScreenEn._(_root);
	late final TranslationsLaunchFailedScreenEn LaunchFailedScreen = TranslationsLaunchFailedScreenEn._(_root);
	late final TranslationsMyProfilesEditScreenEn MyProfilesEditScreen = TranslationsMyProfilesEditScreenEn._(_root);
	late final TranslationsMyProfilesMergeScreenEn MyProfilesMergeScreen = TranslationsMyProfilesMergeScreenEn._(_root);
	late final TranslationsMyProfilesScreenEn MyProfilesScreen = TranslationsMyProfilesScreenEn._(_root);
	late final TranslationsNetCheckScreenEn NetCheckScreen = TranslationsNetCheckScreenEn._(_root);
	late final TranslationsNetConnectionsFilterScreenEn NetConnectionsFilterScreen = TranslationsNetConnectionsFilterScreenEn._(_root);
	late final TranslationsNetConnectionsScreenEn NetConnectionsScreen = TranslationsNetConnectionsScreenEn._(_root);
	late final TranslationsPerAppAndroidScreenEn PerAppAndroidScreen = TranslationsPerAppAndroidScreenEn._(_root);
	late final TranslationsQrcodeScreenEn QrcodeScreen = TranslationsQrcodeScreenEn._(_root);
	late final TranslationsRegionSettingsScreenEn RegionSettingsScreen = TranslationsRegionSettingsScreenEn._(_root);
	late final TranslationsServerSelectScreenEn ServerSelectScreen = TranslationsServerSelectScreenEn._(_root);
	late final TranslationsSettingsScreenEn SettingsScreen = TranslationsSettingsScreenEn._(_root);
	late final TranslationsSpeedTestSettingsScreenEn SpeedTestSettingsScreen = TranslationsSpeedTestSettingsScreenEn._(_root);
	late final TranslationsTextToQrCodeScreenEn TextToQrCodeScreen = TranslationsTextToQrCodeScreenEn._(_root);
	late final TranslationsUserAgreementScreenEn UserAgreementScreen = TranslationsUserAgreementScreenEn._(_root);
	late final TranslationsVersionUpdateScreenEn VersionUpdateScreen = TranslationsVersionUpdateScreenEn._(_root);
	late final TranslationsCommonWidgetEn CommonWidget = TranslationsCommonWidgetEn._(_root);
	late final TranslationsServerManagerEn ServerManager = TranslationsServerManagerEn._(_root);
	late final TranslationsMainEn main = TranslationsMainEn._(_root);
	String get enable => 'Enable';
	String get disable => 'Disable';
	String get filter => 'Filter';
	String get filterMethod => 'Filter Method';
	String get include => 'Include';
	String get exclude => 'Exclude';
	String get all => 'All';
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
	String get getProfile => 'Get Profile';
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
	String get user => 'User';
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
	String get urlTestCustomGroup => 'Custom Auto Select';
	String get rulesetEnableTips => 'Tip: After turning on the options, please go to[Diversion Rules]to set the relevant rules, otherwise they will not take effect';
	String get ispUserAgentTips => '[ISP] will send data of different subscription types based on [UserAgent] in [HTTP] request';
	String get ispDiversionTips => '[ISP] provides traffic diversion rules; [V2Ray] type subscriptions do not support traffic diversion rules';
	String get staticIP => 'Static IP';
	String get other => 'Other';
	String get dns => 'DNS';
	String get url => 'URL';
	String get isp => 'ISP';
	String get ispBind => '[ISP] Bind';
	String ispUnbind({required Object p}) => 'Unbind[${p}]';
	String ispFaq({required Object p}) => 'FAQ[${p}]';
	String ispCustomerService({required Object p}) => 'Telegram[${p}]';
	String ispFollow({required Object p}) => 'Follow[${p}]';
	String get ispInvalidOrExpired => '[ISP] Invalid or expired';
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
	String get send => 'Send';
	String get receive => 'Receive';
	String sendOrReceiveNotMatch({required Object p}) => 'Please use [${p}]';
	String get sendConfirm => 'Confirm to send?';
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
	String get keywordOrRegx => 'Keywords/Regular';
	String get importFromClipboard => 'Import From Clipboard';
	String get exportToClipboard => 'Export to Clipboard';
	String get server => 'Server';
	String get turnOffPrivateDirect => 'Please turn on [Private network direct connection] first';
	String targetConnectFailed({required Object p}) => 'Failed to connect to [${p}]. Please make sure the devices are in the same LAN';
	String get appleTVSync => 'Synchronize the current core configuration to Apple TV - Karing';
	String get appleTVSyncDone => 'Synchronization is complete. Please go to Apple TV - Karing to start the connection/restart the connection';
	String get appleTVRemoveCoreConfig => 'Delete Apple TV - Karing Core Configuration';
	String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing\'s Core Configuration deleted; VPN service disconnected';
	String get appleTVUrlInvalid => 'Invalid URL, please open Apple TV - Karing and scan the QR code displayed by Karing';
	String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] does not have this function, please upgrade and try again';
	String get remoteProfileEditConfirm => 'After the Profile is updated, the node changes will be restored. Continue?';
	String invalidFileType({required Object p}) => 'Invalid file type:${p}';
	String get mustBeValidHttpsURL => 'Must be Valid https URL';
	String fileNotExistReinstall({required Object p}) => 'File missing [${p}], please reinstall';
	String get latencyTest => 'Latency Checks';
	String get latencyTestResolveIP => 'When manually checking, resolve the outlet IP';
	String get latencyTestTimeout => 'Timeout';
	String get uwpExemption => 'UWP Network Isolation Exemptions';
	String get ads => 'Remove ads';
	String get adsBanner => 'Banner ads';
	String get donate => 'Donate';
	String get removeBannerAdsByShare => 'Share [Karing] to remove ads';
	String get removeBannerAdsByReward => 'Watch an ad to remove ads';
	String removeBannerAdsByShareTip({required Object p, required Object d}) => 'Share once and you will get ${p} days of ad-free rewards (can be stacked, up to ${d} days)';
	String removeBannerAdsByRewardTip({required Object p}) => 'Watch an ad and you will get ${p} days of ad-free rewards (not cumulative)';
	String removeBannerAdsDone({required Object p}) => 'Received ${p} days of ad-free rewards';
	String get edgeRuntimeNotInstalled => 'The current device has not installed the Edge WebView2 runtime, so the page cannot be displayed. Please download and install the Edge WebView2 runtime (x64), restart the App and try again.';
	Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
	};
}

// Path: AboutScreen
class TranslationsAboutScreenEn {
	TranslationsAboutScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get installRefer => 'Install Refer';
	String get installTime => 'Install Time';
	String get versionChannel => 'Auto Update Channel';
	String get disableUAReport => 'Application Improvement Data';
	String get disableUAReportTip => '[App Improvement Data] helps us improve the product experience; versions lower than the main version will automatically turn off all [App Improvement Data] except [App Activation]';
	String get devOptions => 'Developer Options';
	String get enableDebugLog => 'Enable Debug Log';
	String get viewFilsContent => 'View Files';
	String get enablePprof => 'Enable pprof';
	String get pprofPanel => 'pprof Panel';
	String get openDir => 'Open File Directory';
	String get useOriginalSBProfile => 'Use original sing-box Profile';
}

// Path: AddProfileByImportFromFileScreen
class TranslationsAddProfileByImportFromFileScreenEn {
	TranslationsAddProfileByImportFromFileScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Import Profile File';
	String get chooseFile => 'Select File';
	String get configExist => 'The Profile already exists, please do not add it repeatedly';
}

// Path: AddProfileByLinkOrContentScreen
class TranslationsAddProfileByLinkOrContentScreenEn {
	TranslationsAddProfileByLinkOrContentScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Add Profile Link';
	String get updateTimerInterval => 'Update interval';
	String get updateTimerIntervalTips => 'Minimum: 5m';
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
class TranslationsAddProfileByScanQrcodeScanScreenEn {
	TranslationsAddProfileByScanQrcodeScanScreenEn._(this._root);

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
}

// Path: BackupAndSyncLanSyncScreen
class TranslationsBackupAndSyncLanSyncScreenEn {
	TranslationsBackupAndSyncLanSyncScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'LAN Sync';
	String get lanSyncNotQuitTips => 'Do not exit this interface before synchronization is completed';
}

// Path: BackupAndSyncWebdavScreen
class TranslationsBackupAndSyncWebdavScreenEn {
	TranslationsBackupAndSyncWebdavScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get webdavServerUrl => 'Server Url';
	String get webdavRequired => 'Can not be empty';
	String get webdavLoginFailed => 'Login failed:';
	String get webdavListFailed => 'Failed to get file list:';
}

// Path: DiversionGroupCustomEditScreen
class TranslationsDiversionGroupCustomEditScreenEn {
	TranslationsDiversionGroupCustomEditScreenEn._(this._root);

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
class TranslationsDiversionRuleDetectScreenEn {
	TranslationsDiversionRuleDetectScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Diversion Rule Detect';
	String get detect => 'Detect';
	String get rule => 'Rule:';
	String get outbound => 'Proxy Server:';
}

// Path: DiversionRulesScreen
class TranslationsDiversionRulesScreenEn {
	TranslationsDiversionRulesScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get diversionRulesMatchTips => 'Tip: Try to match the rules from top to bottom. If no rule is matched, use [final]';
}

// Path: DnsSettingsScreen
class TranslationsDnsSettingsScreenEn {
	TranslationsDnsSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ispCanNotEmpty => 'ISP can not be empty';
	String get urlCanNotEmpty => 'URL can not be empty';
	String error({required Object p}) => 'Unsupported type:${p}';
	String get dnsDesc => 'The first column of delay data is the direct connection query delay;\nThe second column: Turn on [[Proxy Traffic]Resolve DNS through proxy server]: the delay data is the query delay forwarded through the current proxy server; if the [[Proxy Traffic]Resolve DNS through proxy server]: The delay data is the direct connection query delay';
}

// Path: FeedbackScreen
class TranslationsFeedbackScreenEn {
	TranslationsFeedbackScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Feedback Content';
	String get contentHit => 'Required, up to 500 characters';
	String get contentCannotEmpty => 'Feedback content can not be empty';
}

// Path: FileContentViewerScreen
class TranslationsFileContentViewerScreenEn {
	TranslationsFileContentViewerScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'File Content Viewer';
	String get chooseFile => 'Select File';
	String get clearFileContent => 'Are you sure to clear the content of the file?';
	String get clearFileContentTips => 'Are you sure to clear the content of the Profile file? Clearing the Profile file may cause data loss or abnormal application functions, please operate with caution';
}

// Path: HomeScreen
class TranslationsHomeScreenEn {
	TranslationsHomeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get toSelectServer => 'Please Select a Server';
	String get invalidServer => 'is invalid, please select again';
	String get disabledServer => 'is disabled, please select again';
	String get expiredServer => 'No servers available, profiles may be expired or disabled';
	String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	String get trafficTotal => 'Traffic Total';
	String get trafficProxy => 'Traffic Proxy';
	String get myLinkEmpty => 'Please set up [Shortcut Link] before using it';
	String get deviceNoSpace => 'Not enough disk space';
	String tooMuchServers({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}], and the connection may fail due to system memory limitations';
}

// Path: LaunchFailedScreen
class TranslationsLaunchFailedScreenEn {
	TranslationsLaunchFailedScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalidProcess => 'The app failed to start [Invalid process name], please reinstall the app to a separate directory';
	String get invalidProfile => 'The app failed to start [Failed to access the profile], please reinstall the app';
	String get invalidVersion => 'The app failed to start [Invalid version], please reinstall the app';
	String get systemVersionLow => 'The app failed to start [system version too low]';
	String get invalidInstallPath => 'The installation path is invalid, please reinstall it to a valid path';
}

// Path: MyProfilesEditScreen
class TranslationsMyProfilesEditScreenEn {
	TranslationsMyProfilesEditScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Profile Edit';
	String get urlExist => 'URL already exists, please use another URL';
	String get updateTimerInterval => 'Update interval';
	String get updateTimerIntervalTips => 'Minimum: 5m';
	String get reloadAfterProfileUpdate => 'Reload after Profile update';
	String get testLatencyAfterProfileUpdate => 'Start latency tests after Profile Automatically update';
	String get testLatencyAfterProfileUpdateTips => 'VPN needs to be connected, and [Reload after Profile update] Enabled';
	String get testLatencyAutoRemove => 'Automatically remove servers that fail latency tests';
	String get testLatencyAutoRemoveTips => 'Try up to 3 times';
}

// Path: MyProfilesMergeScreen
class TranslationsMyProfilesMergeScreenEn {
	TranslationsMyProfilesMergeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get profilesMerge => 'Profiles Merge';
	String get profilesMergeTarget => 'Target Profile';
	String get profilesMergeSource => 'Source Profiles';
	String get profilesMergeTips => 'Tip: Diversion of the source profiles will be discarded';
}

// Path: MyProfilesScreen
class TranslationsMyProfilesScreenEn {
	TranslationsMyProfilesScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Profiles';
	String get atLeastOneEnable => 'Cannot be disabled, please keep at least one profile enable';
}

// Path: NetCheckScreen
class TranslationsNetCheckScreenEn {
	TranslationsNetCheckScreenEn._(this._root);

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
class TranslationsNetConnectionsFilterScreenEn {
	TranslationsNetConnectionsFilterScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Connections Filter';
	String get hostIp => 'Domain/IP';
	String get app => 'App';
	String get rule => 'Rule';
	String get chain => 'Outbound';
}

// Path: NetConnectionsScreen
class TranslationsNetConnectionsScreenEn {
	TranslationsNetConnectionsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Connections';
	String get copyAsCSV => 'Copied to CSV format';
	String get selectType => 'Select Diversion Type';
}

// Path: PerAppAndroidScreen
class TranslationsPerAppAndroidScreenEn {
	TranslationsPerAppAndroidScreenEn._(this._root);

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
class TranslationsQrcodeScreenEn {
	TranslationsQrcodeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get tooLong => 'The text is too long to display';
	String get copy => 'Copy Link';
	String get open => 'Open Link';
	String get share => 'Share Link';
	String get shareImage => 'Share QR Code';
}

// Path: RegionSettingsScreen
class TranslationsRegionSettingsScreenEn {
	TranslationsRegionSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Country Or Region';
	String get Regions => 'Tip: Please set your current country or region correctly, otherwise it may cause network diversion problems';
}

// Path: ServerSelectScreen
class TranslationsServerSelectScreenEn {
	TranslationsServerSelectScreenEn._(this._root);

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
class TranslationsSettingsScreenEn {
	TranslationsSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get getTranffic => 'Get Traffic';
	String get tutorial => 'Tutorial';
	String get commonlyUsedRulesets => 'Commonly Used Rulesets';
	String get howToRemoveAds => 'How to remove ads';
	String get htmlBoard => 'Online Panel';
	String get dnsLeakDetection => 'DNS Leaks Detection';
	String get proxyLeakDetection => 'Proxy Leaks Detection';
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
	String get modifyPortOccupied => 'The port is occupied, please use another port';
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
	String get autoSelectServerIgnorePerProxyServer => 'Ignore [Front/Chaine] Proxy Servers';
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
	String get importSuccess => 'Import Success';
	String get rewriteConfirm => 'This file will overwrite the existing local configuration. Do you want to continue?';
	String get networkShare => 'Network Sharing';
	String get frontProxy => 'Front/Chain Proxy';
	String frontProxyTips({required Object p}) => 'Data->Front/Chaine Proxy Server [Multiple Proxy Servers: Top to Bottom]->Proxy Server [${p}]->Target Server';
	String get allowOtherHostsConnect => 'Allow Others to Connect';
	String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	String get tunAutoRoute => 'Auto Route';
	String get tunStrictRoute => 'Strict Route';
	String get tunStrictRouteTips => 'If after turning on sharing, others cannot access this device, please try turning off this switch';
	String get enableCluster => 'Enable Socks/Http Proxy Cluster';
	String get clusterAllowOtherHostsConnect => 'Allow Others to Connect to Cluster';
	String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	String get clusterAuth => 'Proxy Cluster Authentication';
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
	String get alwayOnVPN => 'Always-on Connection';
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
	String get supportUs => 'Support Us';
	String get rateInApp => 'Rate Us';
	String get rateInAppStore => 'Rate Us in AppStore';
}

// Path: SpeedTestSettingsScreen
class TranslationsSpeedTestSettingsScreenEn {
	TranslationsSpeedTestSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Speed Test URL';
}

// Path: TextToQrCodeScreen
class TranslationsTextToQrCodeScreenEn {
	TranslationsTextToQrCodeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Text To QR Code';
	String get convert => 'Convert';
}

// Path: UserAgreementScreen
class TranslationsUserAgreementScreenEn {
	TranslationsUserAgreementScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get privacyFirst => 'Your Privacy Comes First';
	String get agreeAndContinue => 'Accept & Continue';
}

// Path: VersionUpdateScreen
class TranslationsVersionUpdateScreenEn {
	TranslationsVersionUpdateScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String versionReady({required Object p}) => 'The new version[${p}] is ready';
	String get update => 'Restart To Update';
	String get cancel => 'Not Now';
}

// Path: CommonWidget
class TranslationsCommonWidgetEn {
	TranslationsCommonWidgetEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get diableAlwayOnVPN => 'If [Always on VPN] is turned on, please turn off [Always on VPN] and try connecting again';
	String get resetPort => 'Please change the port to another available port or close the application occupying the port.';
}

// Path: ServerManager
class TranslationsServerManagerEn {
	TranslationsServerManagerEn._(this._root);

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
class TranslationsMainEn {
	TranslationsMainEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMainTrayEn tray = TranslationsMainTrayEn._(_root);
}

// Path: main.tray
class TranslationsMainTrayEn {
	TranslationsMainTrayEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get menuOpen => '    Open    ';
	String get menuExit => '    Exit    ';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'AboutScreen.installRefer': return 'Install Refer';
			case 'AboutScreen.installTime': return 'Install Time';
			case 'AboutScreen.versionChannel': return 'Auto Update Channel';
			case 'AboutScreen.disableUAReport': return 'Application Improvement Data';
			case 'AboutScreen.disableUAReportTip': return '[App Improvement Data] helps us improve the product experience; versions lower than the main version will automatically turn off all [App Improvement Data] except [App Activation]';
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
			case 'AddProfileByLinkOrContentScreen.updateTimerIntervalTips': return 'Minimum: 5m';
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
			case 'HomeScreen.invalidServer': return 'is invalid, please select again';
			case 'HomeScreen.disabledServer': return 'is disabled, please select again';
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
			case 'LaunchFailedScreen.invalidInstallPath': return 'The installation path is invalid, please reinstall it to a valid path';
			case 'MyProfilesEditScreen.title': return 'Profile Edit';
			case 'MyProfilesEditScreen.urlExist': return 'URL already exists, please use another URL';
			case 'MyProfilesEditScreen.updateTimerInterval': return 'Update interval';
			case 'MyProfilesEditScreen.updateTimerIntervalTips': return 'Minimum: 5m';
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
			case 'SettingsScreen.getTranffic': return 'Get Traffic';
			case 'SettingsScreen.tutorial': return 'Tutorial';
			case 'SettingsScreen.commonlyUsedRulesets': return 'Commonly Used Rulesets';
			case 'SettingsScreen.howToRemoveAds': return 'How to remove ads';
			case 'SettingsScreen.htmlBoard': return 'Online Panel';
			case 'SettingsScreen.dnsLeakDetection': return 'DNS Leaks Detection';
			case 'SettingsScreen.proxyLeakDetection': return 'Proxy Leaks Detection';
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
			case 'SettingsScreen.modifyPortOccupied': return 'The port is occupied, please use another port';
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
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'Ignore [Front/Chaine] Proxy Servers';
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
			case 'SettingsScreen.importSuccess': return 'Import Success';
			case 'SettingsScreen.rewriteConfirm': return 'This file will overwrite the existing local configuration. Do you want to continue?';
			case 'SettingsScreen.networkShare': return 'Network Sharing';
			case 'SettingsScreen.frontProxy': return 'Front/Chain Proxy';
			case 'SettingsScreen.frontProxyTips': return ({required Object p}) => 'Data->Front/Chaine Proxy Server [Multiple Proxy Servers: Top to Bottom]->Proxy Server [${p}]->Target Server';
			case 'SettingsScreen.allowOtherHostsConnect': return 'Allow Others to Connect';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'If after turning on sharing, others cannot access this device, please try turning off this switch';
			case 'SettingsScreen.enableCluster': return 'Enable Socks/Http Proxy Cluster';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'Allow Others to Connect to Cluster';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'Proxy Cluster Authentication';
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
			case 'SettingsScreen.alwayOnVPN': return 'Always-on Connection';
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
			case 'SettingsScreen.supportUs': return 'Support Us';
			case 'SettingsScreen.rateInApp': return 'Rate Us';
			case 'SettingsScreen.rateInAppStore': return 'Rate Us in AppStore';
			case 'SpeedTestSettingsScreen.title': return 'Speed Test URL';
			case 'TextToQrCodeScreen.title': return 'Text To QR Code';
			case 'TextToQrCodeScreen.convert': return 'Convert';
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
			case 'filter': return 'Filter';
			case 'filterMethod': return 'Filter Method';
			case 'include': return 'Include';
			case 'exclude': return 'Exclude';
			case 'all': return 'All';
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
			case 'getProfile': return 'Get Profile';
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
			case 'user': return 'User';
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
			case 'urlTestCustomGroup': return 'Custom Auto Select';
			case 'rulesetEnableTips': return 'Tip: After turning on the options, please go to[Diversion Rules]to set the relevant rules, otherwise they will not take effect';
			case 'ispUserAgentTips': return '[ISP] will send data of different subscription types based on [UserAgent] in [HTTP] request';
			case 'ispDiversionTips': return '[ISP] provides traffic diversion rules; [V2Ray] type subscriptions do not support traffic diversion rules';
			case 'staticIP': return 'Static IP';
			case 'other': return 'Other';
			case 'dns': return 'DNS';
			case 'url': return 'URL';
			case 'isp': return 'ISP';
			case 'ispBind': return '[ISP] Bind';
			case 'ispUnbind': return ({required Object p}) => 'Unbind[${p}]';
			case 'ispFaq': return ({required Object p}) => 'FAQ[${p}]';
			case 'ispCustomerService': return ({required Object p}) => 'Telegram[${p}]';
			case 'ispFollow': return ({required Object p}) => 'Follow[${p}]';
			case 'ispInvalidOrExpired': return '[ISP] Invalid or expired';
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
			case 'send': return 'Send';
			case 'receive': return 'Receive';
			case 'sendOrReceiveNotMatch': return ({required Object p}) => 'Please use [${p}]';
			case 'sendConfirm': return 'Confirm to send?';
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
			case 'keywordOrRegx': return 'Keywords/Regular';
			case 'importFromClipboard': return 'Import From Clipboard';
			case 'exportToClipboard': return 'Export to Clipboard';
			case 'server': return 'Server';
			case 'turnOffPrivateDirect': return 'Please turn on [Private network direct connection] first';
			case 'targetConnectFailed': return ({required Object p}) => 'Failed to connect to [${p}]. Please make sure the devices are in the same LAN';
			case 'appleTVSync': return 'Synchronize the current core configuration to Apple TV - Karing';
			case 'appleTVSyncDone': return 'Synchronization is complete. Please go to Apple TV - Karing to start the connection/restart the connection';
			case 'appleTVRemoveCoreConfig': return 'Delete Apple TV - Karing Core Configuration';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - Karing\'s Core Configuration deleted; VPN service disconnected';
			case 'appleTVUrlInvalid': return 'Invalid URL, please open Apple TV - Karing and scan the QR code displayed by Karing';
			case 'appleTV404': return ({required Object p}) => 'AppleTV:Karing[${p}] does not have this function, please upgrade and try again';
			case 'remoteProfileEditConfirm': return 'After the Profile is updated, the node changes will be restored. Continue?';
			case 'invalidFileType': return ({required Object p}) => 'Invalid file type:${p}';
			case 'mustBeValidHttpsURL': return 'Must be Valid https URL';
			case 'fileNotExistReinstall': return ({required Object p}) => 'File missing [${p}], please reinstall';
			case 'latencyTest': return 'Latency Checks';
			case 'latencyTestResolveIP': return 'When manually checking, resolve the outlet IP';
			case 'latencyTestTimeout': return 'Timeout';
			case 'uwpExemption': return 'UWP Network Isolation Exemptions';
			case 'ads': return 'Remove ads';
			case 'adsBanner': return 'Banner ads';
			case 'donate': return 'Donate';
			case 'removeBannerAdsByShare': return 'Share [Karing] to remove ads';
			case 'removeBannerAdsByReward': return 'Watch an ad to remove ads';
			case 'removeBannerAdsByShareTip': return ({required Object p, required Object d}) => 'Share once and you will get ${p} days of ad-free rewards (can be stacked, up to ${d} days)';
			case 'removeBannerAdsByRewardTip': return ({required Object p}) => 'Watch an ad and you will get ${p} days of ad-free rewards (not cumulative)';
			case 'removeBannerAdsDone': return ({required Object p}) => 'Received ${p} days of ad-free rewards';
			case 'edgeRuntimeNotInstalled': return 'The current device has not installed the Edge WebView2 runtime, so the page cannot be displayed. Please download and install the Edge WebView2 runtime (x64), restart the App and try again.';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

