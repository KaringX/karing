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
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsAboutScreenEn AboutScreen = TranslationsAboutScreenEn._(_root);
	late final TranslationsBackupAndSyncWebdavScreenEn BackupAndSyncWebdavScreen = TranslationsBackupAndSyncWebdavScreenEn._(_root);
	late final TranslationsDiversionGroupCustomEditScreenEn DiversionGroupCustomEditScreen = TranslationsDiversionGroupCustomEditScreenEn._(_root);
	late final TranslationsDiversionRuleDetectScreenEn DiversionRuleDetectScreen = TranslationsDiversionRuleDetectScreenEn._(_root);
	late final TranslationsDiversionRulesScreenEn DiversionRulesScreen = TranslationsDiversionRulesScreenEn._(_root);
	late final TranslationsDnsSettingsScreenEn DnsSettingsScreen = TranslationsDnsSettingsScreenEn._(_root);
	late final TranslationsFileContentViewerScreenEn FileContentViewerScreen = TranslationsFileContentViewerScreenEn._(_root);
	late final TranslationsHomeScreenEn HomeScreen = TranslationsHomeScreenEn._(_root);
	late final TranslationsLaunchFailedScreenEn LaunchFailedScreen = TranslationsLaunchFailedScreenEn._(_root);
	late final TranslationsMyProfilesMergeScreenEn MyProfilesMergeScreen = TranslationsMyProfilesMergeScreenEn._(_root);
	late final TranslationsNetCheckScreenEn NetCheckScreen = TranslationsNetCheckScreenEn._(_root);
	late final TranslationsNetConnectionsFilterScreenEn NetConnectionsFilterScreen = TranslationsNetConnectionsFilterScreenEn._(_root);
	late final TranslationsNetConnectionsScreenEn NetConnectionsScreen = TranslationsNetConnectionsScreenEn._(_root);
	late final TranslationsPerAppAndroidScreenEn PerAppAndroidScreen = TranslationsPerAppAndroidScreenEn._(_root);
	late final TranslationsRegionSettingsScreenEn RegionSettingsScreen = TranslationsRegionSettingsScreenEn._(_root);
	late final TranslationsServerSelectScreenEn ServerSelectScreen = TranslationsServerSelectScreenEn._(_root);
	late final TranslationsSettingsScreenEn SettingsScreen = TranslationsSettingsScreenEn._(_root);
	late final TranslationsUserAgreementScreenEn UserAgreementScreen = TranslationsUserAgreementScreenEn._(_root);
	late final TranslationsVersionUpdateScreenEn VersionUpdateScreen = TranslationsVersionUpdateScreenEn._(_root);
	late final TranslationsCommonWidgetEn CommonWidget = TranslationsCommonWidgetEn._(_root);
	late final TranslationsMainEn main = TranslationsMainEn._(_root);
	late final TranslationsMetaEn meta = TranslationsMetaEn._(_root);

	/// en: 'Keep [VPN Provider] Diversion Rules'
	String get diversionRulesKeep => 'Keep [${_root.meta.isp}] ${_root.meta.diversionRules}';

	/// en: 'Preset [Custom Diversion Group]'
	String get diversionCustomGroupPreset => 'Preset [${_root.meta.diversionCustomGroup}]';

	/// en: 'Note: Enabled items will be added/overwritten to [Custom Diversion Group] and [Diversion Rules]'
	String get diversionCustomGroupPresetTips => 'Note: Enabled items will be added/overwritten to [${_root.meta.diversionCustomGroup}] and [${_root.meta.diversionRules}]';

	/// en: 'Note: After adding, you may need to manually adjust the order, otherwise the newly added diversion may not take effect'
	String get diversionCustomGroupAddTips => 'Note: After adding, you may need to manually adjust the order, otherwise the newly added diversion may not take effect';

	/// en: 'Tip: After turning on the options, please go to[Diversion Rules]to set the relevant rules, otherwise they will not take effect'
	String get rulesetEnableTips => 'Tip: After turning on the options, please go to[${_root.meta.diversionRules}]to set the relevant rules, otherwise they will not take effect';

	/// en: '[VPN Provider] will send data of different subscription types based on [UserAgent] in [HTTP] request'
	String get ispUserAgentTips => '[${_root.meta.isp}] will send data of different subscription types based on [UserAgent] in [HTTP] request';

	/// en: '[VPN Provider] provides traffic diversion rules; [V2Ray] type subscriptions do not support traffic diversion rules'
	String get ispDiversionTips => '[${_root.meta.isp}] provides traffic diversion rules; [V2Ray] type subscriptions do not support traffic diversion rules';

	late final TranslationsIspEn isp = TranslationsIspEn._(_root);
	late final TranslationsPermissionEn permission = TranslationsPermissionEn._(_root);
	late final TranslationsTlsEn tls = TranslationsTlsEn._(_root);
	late final TranslationsOutboundRuleModeEn outboundRuleMode = TranslationsOutboundRuleModeEn._(_root);
	late final TranslationsDnsProxyResolveModeEn dnsProxyResolveMode = TranslationsDnsProxyResolveModeEn._(_root);
	late final TranslationsProxyStrategyEn proxyStrategy = TranslationsProxyStrategyEn._(_root);
	late final TranslationsReloadReasonEn reloadReason = TranslationsReloadReasonEn._(_root);
	late final TranslationsThemeEn theme = TranslationsThemeEn._(_root);

	/// en: 'Download Channel'
	String get downloadProxyStrategy => 'Download Channel';

	/// en: '[Current Selected]: Connect to the DNS server through the proxy server to resolve the domain name [Direct]: Connect directly to the DNS server to resolve the domain name [FakeIP]: The proxy server resolves the domain name on your behalf; if you disconnect the VPN connection, your application may need to be restarted; only effective for [TUN] inbound traffic'
	String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Connect to the DNS server through the proxy server to resolve the domain name\n[${_root.dnsProxyResolveMode.direct}]: Connect directly to the DNS server to resolve the domain name\n[${_root.dnsProxyResolveMode.fakeip}]: The proxy server resolves the domain name on your behalf; if you disconnect the VPN connection, your application may need to be restarted; only effective for [TUN] inbound traffic';

	/// en: 'final'
	String get routeFinal => 'final';

	/// en: 'Protocol Sniff'
	String get protocolSniff => 'Protocol Sniff';

	/// en: 'Please use [$p]'
	String sendOrReceiveNotMatch({required Object p}) => 'Please use [${p}]';

	/// en: 'Please turn on [Private network direct connection] first'
	String get turnOffPrivateDirect => 'Please turn on [Private network direct connection] first';

	/// en: 'Failed to connect to [$p]. Please make sure the devices are in the same LAN'
	String targetConnectFailed({required Object p}) => 'Failed to connect to [${p}]. Please make sure the devices are in the same LAN';

	/// en: 'Synchronize the current core configuration to Apple TV - Karing'
	String get appleTVSync => 'Synchronize the current core configuration to Apple TV - Karing';

	/// en: 'Synchronization is complete. Please go to Apple TV - Karing to start the connection/restart the connection'
	String get appleTVSyncDone => 'Synchronization is complete. Please go to Apple TV - Karing to start the connection/restart the connection';

	/// en: 'Delete Apple TV - Karing Core Configuration'
	String get appleTVRemoveCoreConfig => 'Delete Apple TV - Karing Core Configuration';

	/// en: 'Apple TV - Karing's Core Configuration deleted; VPN service disconnected'
	String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing\'s Core Configuration deleted; VPN service disconnected';

	/// en: 'Invalid URL, please open Apple TV - Karing and scan the QR code displayed by Karing'
	String get appleTVUrlInvalid => 'Invalid URL, please open Apple TV - Karing and scan the QR code displayed by Karing';

	/// en: 'AppleTV:Karing[$p] does not have this function, please upgrade and try again'
	String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] does not have this function, please upgrade and try again';

	/// en: 'The core major version does not match, please upgrade [$p] and try again'
	String appleCoreVersionNotMatch({required Object p}) => 'The core major version does not match, please upgrade [${p}] and try again';

	/// en: 'After the Profile is updated, the node changes will be restored. Continue?'
	String get remoteProfileEditConfirm => 'After the Profile is updated, the node changes will be restored. Continue?';

	/// en: 'Must be Valid https URL'
	String get mustBeValidHttpsURL => 'Must be Valid https URL';

	/// en: 'File missing [$p], please reinstall'
	String fileNotExistReinstall({required Object p}) => 'File missing [${p}], please reinstall';

	/// en: 'No Internet connection'
	String get noNetworkConnect => 'No Internet connection';

	/// en: 'sudo password (required for TUN mode)'
	String get sudoPassword => 'sudo password (required for TUN mode)';

	/// en: 'It is recommended to switch to [Airplane Mode] before installing the update'
	String get turnOffNetworkBeforeInstall => 'It is recommended to switch to [Airplane Mode] before installing the update';

	/// en: 'When manually checking, resolve the outlet IP'
	String get latencyTestResolveIP => 'When manually checking, resolve the outlet IP';

	/// en: 'Share [Karing] to remove ads'
	String get removeBannerAdsByShare => 'Share [Karing] to remove ads';

	/// en: 'Watch an ad to remove ads'
	String get removeBannerAdsByReward => 'Watch an ad to remove ads';

	/// en: 'Share once and you will get $p days of ad-free rewards (can be stacked, up to $d days)'
	String removeBannerAdsByShareTip({required Object p, required Object d}) => 'Share once and you will get ${p} days of ad-free rewards (can be stacked, up to ${d} days)';

	/// en: 'Watch an ad and you will get $p days of ad-free rewards (not cumulative)'
	String removeBannerAdsByRewardTip({required Object p}) => 'Watch an ad and you will get ${p} days of ad-free rewards (not cumulative)';

	/// en: 'Received $p days of ad-free rewards'
	String removeBannerAdsDone({required Object p}) => 'Received ${p} days of ad-free rewards';

	/// en: 'You may need to watch an ad before using this feature. Click [Ok] to continue'
	String get maybeAdsByReward => 'You may need to watch an ad before using this feature. Click [${_root.meta.ok}] to continue';

	/// en: 'The current device has not installed the Edge WebView2 runtime, so the page cannot be displayed. Please download and install the Edge WebView2 runtime (x64), restart the App and try again.'
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

	/// en: 'Install Refer'
	String get installRefer => 'Install Refer';

	/// en: 'Install Time'
	String get installTime => 'Install Time';

	/// en: 'Auto Update Channel'
	String get versionChannel => 'Auto Update Channel';

	/// en: 'Application Improvement Data'
	String get disableUAReport => 'Application Improvement Data';

	/// en: '[App Improvement Data] helps us improve the product experience; versions lower than the main version will automatically turn off all [App Improvement Data] except [App Activation]'
	String get disableUAReportTip => '[App Improvement Data] helps us improve the product experience; versions lower than the main version will automatically turn off all [App Improvement Data] except [App Activation]';

	/// en: 'Developer Options'
	String get devOptions => 'Developer Options';

	/// en: 'Enable Debug Log'
	String get enableDebugLog => 'Enable Debug Log';

	/// en: 'View Files'
	String get viewFilsContent => 'View Files';

	/// en: 'Enable pprof'
	String get enablePprof => 'Enable pprof';

	/// en: 'pprof Panel'
	String get pprofPanel => 'pprof Panel';

	/// en: 'Allow remote access to pprof Panel'
	String get allowRemoteAccessPprof => 'Allow remote access to ${_root.AboutScreen.pprofPanel}';

	/// en: 'Allow remote accessOnline Panel'
	String get allowRemoteAccessHtmlBoard => 'Allow remote access${_root.SettingsScreen.htmlBoard}';

	/// en: 'Use original sing-box Profile'
	String get useOriginalSBProfile => 'Use original sing-box Profile';
}

// Path: BackupAndSyncWebdavScreen
class TranslationsBackupAndSyncWebdavScreenEn {
	TranslationsBackupAndSyncWebdavScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Server Url'
	String get webdavServerUrl => 'Server Url';

	/// en: 'Can not be empty'
	String get webdavRequired => 'Can not be empty';

	/// en: 'Login failed:'
	String get webdavLoginFailed => 'Login failed:';

	/// en: 'Failed to get file list:'
	String get webdavListFailed => 'Failed to get file list:';
}

// Path: DiversionGroupCustomEditScreen
class TranslationsDiversionGroupCustomEditScreenEn {
	TranslationsDiversionGroupCustomEditScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Invalid [Domain]:$p'
	String invalidDomain({required Object p}) => 'Invalid [Domain]:${p}';

	/// en: 'Invalid [IP Cidr]:$p'
	String invalidIpCidr({required Object p}) => 'Invalid [IP Cidr]:${p}';

	/// en: 'Invalid [Port]:$p'
	String invalidPort({required Object p}) => 'Invalid [Port]:${p}';

	/// en: 'Invalid [Rule Set]:$p, The URL must be a valid https URL and a binary file with the file extension .srs/.json'
	String invalidRuleSet({required Object p}) => 'Invalid [Rule Set]:${p}, The URL must be a valid https URL and a binary file with the file extension .srs/.json';

	/// en: 'Invalid [Rule Set(build-in)]:$p, The format is geosite:xxx or geoip:xxx or acl:xxx, and xxx should be a valid rule name'
	String invalidRuleSetBuildIn({required Object p}) => 'Invalid [Rule Set(build-in)]:${p}, The format is geosite:xxx or geoip:xxx or acl:xxx, and xxx should be a valid rule name';

	/// en: 'Invalid [App Package Id]:$p'
	String invalidPackageId({required Object p}) => 'Invalid [${_root.meta.appPackage}]:${p}';

	/// en: 'Tip: After saving, please go to [Diversion Rules] to set relevant rules, otherwise they will not take effect'
	String get setDiversionRule => 'Tip: After saving, please go to [${_root.meta.diversionRules}] to set relevant rules, otherwise they will not take effect';
}

// Path: DiversionRuleDetectScreen
class TranslationsDiversionRuleDetectScreenEn {
	TranslationsDiversionRuleDetectScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Diversion Rule Detect'
	String get title => 'Diversion Rule Detect';

	/// en: 'Rule:'
	String get rule => 'Rule:';

	/// en: 'Proxy Server:'
	String get outbound => 'Proxy Server:';
}

// Path: DiversionRulesScreen
class TranslationsDiversionRulesScreenEn {
	TranslationsDiversionRulesScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Tip: Try to match the rules from top to bottom. If no rule is matched, use [final]'
	String get diversionRulesMatchTips => 'Tip: Try to match the rules from top to bottom. If no rule is matched, use [final]';
}

// Path: DnsSettingsScreen
class TranslationsDnsSettingsScreenEn {
	TranslationsDnsSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'ISP can not be empty'
	String get ispCanNotEmpty => 'ISP can not be empty';

	/// en: 'URL can not be empty'
	String get urlCanNotEmpty => 'URL can not be empty';

	/// en: 'Unsupported type:$p'
	String error({required Object p}) => 'Unsupported type:${p}';

	/// en: 'The first column of delay data is the direct connection query delay; The second column: Turn on [[Proxy Traffic]Resolve DNS through proxy server]: the delay data is the query delay forwarded through the current proxy server; if the [[Proxy Traffic]Resolve DNS through proxy server]: The delay data is the direct connection query delay'
	String get dnsDesc => 'The first column of delay data is the direct connection query delay;\nThe second column: Turn on [[Proxy Traffic]Resolve DNS through proxy server]: the delay data is the query delay forwarded through the current proxy server; if the [[Proxy Traffic]Resolve DNS through proxy server]: The delay data is the direct connection query delay';
}

// Path: FileContentViewerScreen
class TranslationsFileContentViewerScreenEn {
	TranslationsFileContentViewerScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'File Content Viewer'
	String get title => 'File Content Viewer';

	/// en: 'Are you sure to clear the content of the file?'
	String get clearFileContent => 'Are you sure to clear the content of the file?';

	/// en: 'Are you sure to clear the content of the Profile file? Clearing the Profile file may cause data loss or abnormal application functions, please operate with caution'
	String get clearFileContentTips => 'Are you sure to clear the content of the Profile file? Clearing the Profile file may cause data loss or abnormal application functions, please operate with caution';
}

// Path: HomeScreen
class TranslationsHomeScreenEn {
	TranslationsHomeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please Select a Server'
	String get toSelectServer => 'Please Select a Server';

	/// en: 'is invalid, please select again'
	String get invalidServer => 'is invalid, please select again';

	/// en: 'is disabled, please select again'
	String get disabledServer => 'is disabled, please select again';

	/// en: 'No servers available, profiles may be expired or disabled'
	String get expiredServer => 'No servers available, profiles may be expired or disabled';

	/// en: 'socks:$sp,http(s):$hp'
	String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';

	/// en: 'Please set up [Shortcut Link] before using it'
	String get myLinkEmpty => 'Please set up [Shortcut Link] before using it';

	/// en: 'Too many proxy servers [$p>$p1], and the connection may fail due to system memory limitations'
	String tooMuchServers({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}], and the connection may fail due to system memory limitations';

	/// en: 'Too many proxy servers [$p>$p1] may cause slow or inaccessible connections'
	String tooMuchServers2({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}] may cause slow or inaccessible connections';
}

// Path: LaunchFailedScreen
class TranslationsLaunchFailedScreenEn {
	TranslationsLaunchFailedScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The app failed to start [Invalid process name], please reinstall the app to a separate directory'
	String get invalidProcess => 'The app failed to start [Invalid process name], please reinstall the app to a separate directory';

	/// en: 'The app failed to start [Failed to access the profile], please reinstall the app'
	String get invalidProfile => 'The app failed to start [Failed to access the profile], please reinstall the app';

	/// en: 'The app failed to start [Invalid version], please reinstall the app'
	String get invalidVersion => 'The app failed to start [Invalid version], please reinstall the app';

	/// en: 'The app failed to start [system version too low]'
	String get systemVersionLow => 'The app failed to start [system version too low]';

	/// en: 'The installation path is invalid, please reinstall it to a valid path'
	String get invalidInstallPath => 'The installation path is invalid, please reinstall it to a valid path';
}

// Path: MyProfilesMergeScreen
class TranslationsMyProfilesMergeScreenEn {
	TranslationsMyProfilesMergeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profiles Merge'
	String get profilesMerge => 'Profiles Merge';

	/// en: 'Target Profile'
	String get profilesMergeTarget => 'Target Profile';

	/// en: 'Source Profiles'
	String get profilesMergeSource => 'Source Profiles';

	/// en: 'Tip: Diversion of the source profiles will be discarded'
	String get profilesMergeTips => 'Tip: Diversion of the source profiles will be discarded';
}

// Path: NetCheckScreen
class TranslationsNetCheckScreenEn {
	TranslationsNetCheckScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Net Check'
	String get title => 'Net Check';

	/// en: 'Note: Due to the influence of network environment and diversion rules, the test results are not completely equivalent to the actual results.'
	String get warn => 'Note: Due to the influence of network environment and diversion rules, the test results are not completely equivalent to the actual results.';

	/// en: 'Invalid Domain Name'
	String get invalidDomain => 'Invalid Domain Name';

	/// en: 'Network Connectivity'
	String get connectivity => 'Network Connectivity';

	/// en: 'Ipv4 Connection test [$p] all failed'
	String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4 Connection test [${p}] all failed';

	/// en: 'Ipv4 connection succeeded'
	String get connectivityTestIpv4Ok => 'Ipv4 connection succeeded';

	/// en: 'Ipv6 Connection test [$p] all failed, Your network may not support ipv6'
	String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6 Connection test [${p}] all failed, Your network may not support ipv6';

	/// en: 'Ipv6 connection succeeded'
	String get connectivityTestIpv6Ok => 'Ipv6 connection succeeded';

	/// en: 'The network is connected to the Internet'
	String get connectivityTestOk => 'The network is connected to the Internet';

	/// en: 'The network is not yet connected to the Internet'
	String get connectivityTestFailed => 'The network is not yet connected to the Internet';

	/// en: 'All downloaded successfully'
	String get remoteRulesetsDownloadOk => 'All downloaded successfully';

	/// en: 'Downloading or download failed'
	String get remoteRulesetsDownloadNotOk => 'Downloading or download failed';

	/// en: 'Proxy Server'
	String get outbound => 'Proxy Server';

	/// en: '[$p] connection succeeded'
	String outboundOk({required Object p}) => '[${p}] connection succeeded';

	/// en: '[$p1] connection failed Error:[$p2]'
	String outboundFailed({required Object p1, required Object p2}) => '[${p1}] connection failed\nError:[${p2}]';

	/// en: 'DNS Server'
	String get dnsServer => 'DNS Server';

	/// en: '[$p1]DNS query succeeded DNS Rule:[$p2] Latency:[$p3 ms] Address:[$p4]'
	String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS query succeeded\nDNS Rule:[${p2}]\nLatency:[${p3} ms]\nAddress:[${p4}]';

	/// en: '[$p1]DNS query succeeded nDNS Rule:[$p2] Error:[$p3]'
	String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS query succeeded\n nDNS Rule:[${p2}]\nError:[${p3}]';

	/// en: 'HTTP Connection'
	String get host => 'HTTP Connection';

	/// en: '[$p1] DiversionRule:[$p2] Proxy Server:[$p3]'
	String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nDiversionRule:[${p2}]\nProxy Server:[${p3}]';

	/// en: 'connection succeeded'
	String get hostConnectionOk => 'connection succeeded';

	/// en: 'connection failed:[$p]'
	String hostConnectionFailed({required Object p}) => 'connection failed:[${p}]';
}

// Path: NetConnectionsFilterScreen
class TranslationsNetConnectionsFilterScreenEn {
	TranslationsNetConnectionsFilterScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Domain/IP'
	String get hostIp => 'Domain/IP';

	/// en: 'App'
	String get app => 'App';

	/// en: 'Rule'
	String get rule => 'Rule';

	/// en: 'Outbound'
	String get chain => 'Outbound';
}

// Path: NetConnectionsScreen
class TranslationsNetConnectionsScreenEn {
	TranslationsNetConnectionsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Copied to CSV format'
	String get copyAsCSV => 'Copied to CSV format';

	/// en: 'Select Diversion Type'
	String get selectType => 'Select Diversion Type';
}

// Path: PerAppAndroidScreen
class TranslationsPerAppAndroidScreenEn {
	TranslationsPerAppAndroidScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Per-App Proxy'
	String get title => 'Per-App Proxy';

	/// en: 'Whitelist Mode'
	String get whiteListMode => 'Whitelist Mode';

	/// en: 'When enabled: only the apps that have been checked are proxies; when not enabled: only the apps that are not checked are proxies'
	String get whiteListModeTip => 'When enabled: only the apps that have been checked are proxies; when not enabled: only the apps that are not checked are proxies';
}

// Path: RegionSettingsScreen
class TranslationsRegionSettingsScreenEn {
	TranslationsRegionSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Country Or Region'
	String get title => 'Country Or Region';

	/// en: 'Tip: Please set your current country or region correctly, otherwise it may cause network diversion problems'
	String get Regions => 'Tip: Please set your current country or region correctly, otherwise it may cause network diversion problems';
}

// Path: ServerSelectScreen
class TranslationsServerSelectScreenEn {
	TranslationsServerSelectScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select Server'
	String get title => 'Select Server';

	/// en: 'Auto select the server with the lowest latency'
	String get autoSelectServer => 'Auto select the server with the lowest latency';

	/// en: 'Recently Used'
	String get recentUse => 'Recently Used';

	/// en: 'My Favs'
	String get myFav => 'My Favs';

	/// en: 'The selected server is a local address and may not work properly:$p'
	String selectLocal({required Object p}) => 'The selected server is a local address and may not work properly:${p}';

	/// en: 'The selected server is an IPv6 address and requires [Enable IPv6]'
	String get selectRequireEnableIPv6 => 'The selected server is an IPv6 address and requires [Enable IPv6]';

	/// en: 'This server has been disabled'
	String get selectDisabled => 'This server has been disabled';

	/// en: 'Latency detection encountered an error, please check if there is a configuration with the same content'
	String get error404 => 'Latency detection encountered an error, please check if there is a configuration with the same content';
}

// Path: SettingsScreen
class TranslationsSettingsScreenEn {
	TranslationsSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Get Traffic'
	String get getTranffic => 'Get Traffic';

	/// en: 'Tutorial'
	String get tutorial => 'Tutorial';

	/// en: 'Commonly Used Rulesets'
	String get commonlyUsedRulesets => 'Commonly Used Rulesets';

	/// en: 'How to remove ads'
	String get howToRemoveAds => 'How to remove ads';

	/// en: 'Online Panel'
	String get htmlBoard => 'Online Panel';

	/// en: 'DNS Leaks Detection'
	String get dnsLeakDetection => 'DNS Leaks Detection';

	/// en: 'Proxy Leaks Detection'
	String get proxyLeakDetection => 'Proxy Leaks Detection';

	/// en: 'Speed Test'
	String get speedTest => 'Speed Test';

	/// en: 'Rule Set Direct Download'
	String get rulesetDirectDownlad => 'Rule Set Direct Download';

	/// en: 'Hide Unused Diversion Rules'
	String get hideUnusedDiversionGroup => 'Hide Unused Diversion Rules';

	/// en: 'Disable [VPN Provider] Diversion Rules'
	String get disableISPDiversionGroup => 'Disable [${_root.meta.isp}] ${_root.meta.diversionRules}';

	/// en: 'Rule Based'
	String get portSettingRule => 'Rule Based';

	/// en: 'Direct All'
	String get portSettingDirectAll => 'Direct All';

	/// en: 'Proxy All'
	String get portSettingProxyAll => 'Proxy All';

	/// en: 'Control and Sync'
	String get portSettingControl => 'Control and Sync';

	/// en: 'Cluster Service'
	String get portSettingCluster => 'Cluster Service';

	/// en: 'Modify Port'
	String get modifyPort => 'Modify Port';

	/// en: 'The port is occupied, please use another port'
	String get modifyPortOccupied => 'The port is occupied, please use another port';

	/// en: 'Before enabling, please confirm that your network supports IPv6, otherwise some traffic cannot be accessed normally.'
	String get ipStrategyTips => 'Before enabling, please confirm that your network supports IPv6, otherwise some traffic cannot be accessed normally.';

	/// en: 'Append HTTP Proxy to VPN'
	String get tunAppendHttpProxy => 'Append HTTP Proxy to VPN';

	/// en: 'Some apps will bypass virtual NIC Device and directly connect to HTTP proxy'
	String get tunAppendHttpProxyTips => 'Some apps will bypass virtual NIC Device and directly connect to HTTP proxy';

	/// en: 'Domains allowed to bypass HTTP proxy'
	String get tunAllowBypassHttpProxyDomain => 'Domains allowed to bypass HTTP proxy';

	/// en: 'Enable DNS Diversion rules'
	String get dnsEnableRule => 'Enable DNS Diversion rules';

	/// en: '[Proxy Traffic] Resolve Channel'
	String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] Resolve Channel';

	/// en: '[Direct Traffic] Enable ECS'
	String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] Enable ECS';

	/// en: 'Test Domain'
	String get dnsTestDomain => 'Test Domain';

	/// en: 'Invalid Domain'
	String get dnsTestDomainInvalid => 'Invalid Domain';

	/// en: 'Proxy Server'
	String get dnsTypeOutbound => 'Proxy Server';

	/// en: 'Direct Traffic'
	String get dnsTypeDirect => _root.meta.trafficDirect;

	/// en: 'Proxy Traffic'
	String get dnsTypeProxy => _root.meta.trafficProxy;

	/// en: 'DNS Server'
	String get dnsTypeResolver => 'DNS Server';

	/// en: 'After enabling, the domain name will select the corresponding DNS server for resolution according to the diversion rules'
	String get dnsEnableRuleTips => 'After enabling, the domain name will select the corresponding DNS server for resolution according to the diversion rules';

	/// en: 'After enabling FakeIP, if you disconnect from VPN, your app may need to be restarted; this feature requires [TUN mode] to be enabled'
	String get dnsEnableFakeIpTips => 'After enabling FakeIP, if you disconnect from VPN, your app may need to be restarted; this feature requires [TUN mode] to be enabled';

	/// en: 'Domain name resolution for [Proxy Server]'
	String get dnsTypeOutboundTips => 'Domain name resolution for [${_root.SettingsScreen.dnsTypeOutbound}]';

	/// en: 'Domain name resolution for [Direct Traffic]'
	String get dnsTypeDirectTips => 'Domain name resolution for [${_root.meta.trafficDirect}]';

	/// en: 'Domain name resolution for [Proxy Traffic]'
	String get dnsTypeProxyTips => 'Domain name resolution for [${_root.meta.trafficProxy}]';

	/// en: 'Domain name resolution for [DNS Server]'
	String get dnsTypeResolverTips => 'Domain name resolution for [${_root.SettingsScreen.dnsTypeResolver}]';

	/// en: 'Auto Setup Server'
	String get dnsAutoSetServer => 'Auto Setup Server';

	/// en: 'Reset Server'
	String get dnsResetServer => 'Reset Server';

	/// en: 'Resolve Inbound Domain names'
	String get inboundDomainResolve => 'Resolve Inbound Domain names';

	/// en: 'Private Network Direct connection'
	String get privateDirect => 'Private Network Direct connection';

	/// en: 'Some domain names that are not configured with diversion rules need to be resolved before they can hit the IP-based diversion rules; this feature affects inbound requests to the proxy port [$p]'
	String inboundDomainResolveTips({required Object p}) => 'Some domain names that are not configured with diversion rules need to be resolved before they can hit the IP-based diversion rules; this feature affects inbound requests to the proxy port [${p}]';

	/// en: 'Use Remote Resources'
	String get useRomoteRes => 'Use Remote Resources';

	/// en: 'Auto attach basic rules'
	String get autoAppendRegion => 'Auto attach basic rules';

	/// en: 'Auto Select'
	String get autoSelect => 'Auto Select';

	/// en: 'Ignore [Front/Chaine] Proxy Servers'
	String get autoSelectServerIgnorePerProxyServer => 'Ignore [Front/Chaine] Proxy Servers';

	/// en: 'Latency Checks Interval'
	String get autoSelectServerInterval => 'Latency Checks Interval';

	/// en: 'Current server health check interval'
	String get autoSelectSelectedHealthCheckInterval => 'Current server health check interval';

	/// en: 'Re-check Latency when Network Changes'
	String get autoSelectServerReTestIfNetworkUpdate => 'Re-check Latency when Network Changes';

	/// en: 'Update the Current Server after Manual Latency Check'
	String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Update the Current Server after Manual Latency Check';

	/// en: 'The shorter the time interval, the more timely the server latency data updates, which will occupy more resources and consume more power'
	String get autoSelectServerIntervalTips => 'The shorter the time interval, the more timely the server latency data updates, which will occupy more resources and consume more power';

	/// en: 'If the check fails, the server is switched; if no available server is found when switching the server, the group will re-check latency'
	String get autoSelectSelectedHealthCheckIntervalTips => 'If the check fails, the server is switched; if no available server is found when switching the server, the group will re-check latency';

	/// en: 'Pri-Use [My Favs]'
	String get autoSelectServerFavFirst => 'Pri-Use [My Favs]';

	/// en: 'If the [My Favs] list is not empty, Then use the servers in [My Favs]'
	String get autoSelectServerFavFirstTips => 'If the [My Favs] list is not empty, Then use the servers in [My Favs]';

	/// en: 'Filter Invalid Servers'
	String get autoSelectServerFilter => 'Filter Invalid Servers';

	/// en: 'Server latency checks that fail will be filtered out; if no server is available after filtering, the first [$p] servers will be used instead'
	String autoSelectServerFilterTips({required Object p}) => 'Server latency checks that fail will be filtered out; if no server is available after filtering, the first [${p}] servers will be used instead';

	/// en: 'Maximum number of servers'
	String get autoSelectServerLimitedNum => 'Maximum number of servers';

	/// en: 'Servers exceeding this number will be filtered out'
	String get autoSelectServerLimitedNumTips => 'Servers exceeding this number will be filtered out';

	/// en: 'Invalid number'
	String get numInvalid => 'Invalid number';

	/// en: 'Hide Invalid Servers'
	String get hideInvalidServer => 'Hide Invalid Servers';

	/// en: 'Servers Sorting'
	String get sortServer => 'Servers Sorting';

	/// en: 'Sort by latency from low to high'
	String get sortServerTips => 'Sort by latency from low to high';

	/// en: 'Hide [Recommend]'
	String get selectServerHideRecommand => 'Hide [Recommend]';

	/// en: 'Hide [Recently Used]'
	String get selectServerHideRecent => 'Hide [Recently Used]';

	/// en: 'Hide [My Favs]'
	String get selectServerHideFav => 'Hide [My Favs]';

	/// en: 'Home Screen'
	String get homeScreen => 'Home Screen';

	/// en: 'Theme'
	String get theme => 'Theme';

	/// en: 'Widgets Alpha'
	String get widgetsAlpha => 'Widgets Alpha';

	/// en: 'No Widget Available'
	String get widgetsEmpty => 'No Widget Available';

	/// en: 'Background Image'
	String get backgroundImage => 'Background Image';

	/// en: 'Shortcut Link'
	String get myLink => 'Shortcut Link';

	/// en: 'Auto Connection after Launch'
	String get autoConnectAfterLaunch => 'Auto Connection after Launch';

	/// en: 'Hide window after startup'
	String get hideAfterLaunch => 'Hide window after startup';

	/// en: 'Auto Set System Proxy when Connected'
	String get autoSetSystemProxy => 'Auto Set System Proxy when Connected';

	/// en: 'Domain names that are allowed to bypass the system proxy'
	String get bypassSystemProxy => 'Domain names that are allowed to bypass the system proxy';

	/// en: 'Disconnect when App Exits'
	String get disconnectWhenQuit => 'Disconnect when App Exits';

	/// en: 'Hide from [Recent Tasks]'
	String get excludeFromRecent => 'Hide from [Recent Tasks]';

	/// en: 'Wake Lock'
	String get wakeLock => 'Wake Lock';

	/// en: 'Hide VPN Icon'
	String get hideVpn => 'Hide VPN Icon';

	/// en: 'Enabling IPv6 will cause this function to fail'
	String get hideVpnTips => 'Enabling IPv6 will cause this function to fail';

	/// en: 'Allow Apps to Bypass VPN'
	String get allowBypass => 'Allow Apps to Bypass VPN';

	/// en: 'Import Success'
	String get importSuccess => 'Import Success';

	/// en: 'This file will overwrite the existing local configuration. Do you want to continue?'
	String get rewriteConfirm => 'This file will overwrite the existing local configuration. Do you want to continue?';

	/// en: 'Merge local [Per-App Proxy] lists'
	String get mergePerapp => 'Merge local [${_root.PerAppAndroidScreen.title}] lists';

	/// en: 'Network Sharing'
	String get networkShare => 'Network Sharing';

	/// en: 'Front/Chain Proxy'
	String get frontProxy => 'Front/Chain Proxy';

	/// en: 'Data->Front/Chaine Proxy Server [Multiple Proxy Servers: Top to Bottom]->Proxy Server [$p]->Target Server'
	String frontProxyTips({required Object p}) => 'Data->Front/Chaine Proxy Server [Multiple Proxy Servers: Top to Bottom]->Proxy Server [${p}]->Target Server';

	/// en: 'Allow Others to Connect'
	String get allowOtherHostsConnect => 'Allow Others to Connect';

	/// en: 'socks:$sp,http(s):$hp'
	String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';

	/// en: 'Due to system limitations, after this is enabled, applications on this device that use http to access the network may not be able to connect to the network properly.'
	String get allowOtherHostsConnectWarn => 'Due to system limitations, after this is enabled, applications on this device that use http to access the network may not be able to connect to the network properly.';

	/// en: 'Auto Route'
	String get tunAutoRoute => 'Auto Route';

	/// en: 'Auto Redirect'
	String get tunAutoRedirect => 'Auto Redirect';

	/// en: 'Strict Route'
	String get tunStrictRoute => 'Strict Route';

	/// en: 'If after turning on sharing, others cannot access this device, please try turning off this switch'
	String get tunStrictRouteTips => 'If after turning on sharing, others cannot access this device, please try turning off this switch';

	/// en: 'Loopback Address'
	String get loopbackAddress => 'Loopback Address';

	/// en: 'Enable Socks/Http Proxy Cluster'
	String get enableCluster => 'Enable Socks/Http Proxy Cluster';

	/// en: 'Allow Others to Connect to Cluster'
	String get clusterAllowOtherHostsConnect => 'Allow Others to Connect to Cluster';

	/// en: 'http://$ip:$port/get_proxies'
	String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';

	/// en: 'Proxy Cluster Authentication'
	String get clusterAuth => 'Proxy Cluster Authentication';

	/// en: 'TUN Mode'
	String get tunMode => 'TUN Mode';

	/// en: 'IP address'
	String get tuni4Address => 'IP address';

	/// en: 'The TUN mode will take over all the traffic of the system [In this mode, you can leave the system proxy unenabled]'
	String get tunModeTips => 'The TUN mode will take over all the traffic of the system [In this mode, you can leave the system proxy unenabled]';

	/// en: 'The TUN mode requires system administrator permissions, please restart the app as an administrator'
	String get tunModeRunAsAdmin => 'The TUN mode requires system administrator permissions, please restart the app as an administrator';

	/// en: 'Stack'
	String get tunStack => 'Stack';

	/// en: 'After closing, DNS requests from TUN will be forwarded directly to the corresponding DNS server'
	String get tunHijackTips => 'After closing, DNS requests from TUN will be forwarded directly to the corresponding DNS server';

	/// en: 'Launch at Startup'
	String get launchAtStartup => 'Launch at Startup';

	/// en: 'Exit App when Switch System Users'
	String get quitWhenSwitchSystemUser => 'Exit App when Switch System Users';

	/// en: 'System Scheme Call'
	String get handleScheme => 'System Scheme Call';

	/// en: 'Portable Mode'
	String get portableMode => 'Portable Mode';

	/// en: 'If you need to exit portable mode, please exit [karing] and manually delete the [profiles] folder in the same directory as [karing.exe]'
	String get portableModeDisableTips => 'If you need to exit portable mode, please exit [karing] and manually delete the [profiles] folder in the same directory as [karing.exe]';

	/// en: 'Handle karing:// Call'
	String get handleKaringScheme => 'Handle karing:// Call';

	/// en: 'Handle clash:// Call'
	String get handleClashScheme => 'Handle clash:// Call';

	/// en: 'Handle sing-box:// Call'
	String get handleSingboxScheme => 'Handle sing-box:// Call';

	/// en: 'Always-on Connection'
	String get alwayOnVPN => 'Always-on Connection';

	/// en: 'Disconnect after system sleep'
	String get disconnectAfterSleep => 'Disconnect after system sleep';

	/// en: 'Delete system VPN configuration'
	String get removeSystemVPNConfig => 'Delete system VPN configuration';

	/// en: 'Scheduled connect/disconnect'
	String get timeConnectOrDisconnect => 'Scheduled connect/disconnect';

	/// en: 'VPN must be connected to take effect; after it is turned on, [Automatic Sleep] will be disabled'
	String get timeConnectOrDisconnectTips => 'VPN must be connected to take effect; after it is turned on, [Automatic Sleep] will be disabled';

	/// en: 'The connection/disconnection interval cannot be less than $p minutes'
	String timeConnectAndDisconnectInterval({required Object p}) => 'The connection/disconnection interval cannot be less than ${p} minutes';

	/// en: 'Disable Font scaling(Restart takes effect)'
	String get disableFontScaler => 'Disable Font scaling(Restart takes effect)';

	/// en: 'Rotate with the screen'
	String get autoOrientation => 'Rotate with the screen';

	/// en: 'Restart takes effect'
	String get restartTakesEffect => 'Restart takes effect';

	/// en: 'Reset Settings'
	String get resetSettings => 'Reset Settings';

	/// en: 'Cleanup Cache'
	String get cleanCache => 'Cleanup Cache';

	/// en: 'Cleanup completed'
	String get cleanCacheDone => 'Cleanup completed';

	/// en: 'Apple TestFlight'
	String get appleTestFlight => 'Apple TestFlight';

	/// en: 'Apple AppStore'
	String get appleAppStore => 'Apple AppStore';

	/// en: 'Update Version $p'
	String hasNewVersion({required Object p}) => 'Update Version ${p}';

	/// en: 'Follow Us'
	String get follow => 'Follow Us';

	/// en: 'Contact Us'
	String get contactUs => 'Contact Us';

	/// en: 'Support Us'
	String get supportUs => 'Support Us';

	/// en: 'Rate Us'
	String get rateInApp => 'Rate Us';

	/// en: 'Rate Us in AppStore'
	String get rateInAppStore => 'Rate Us in AppStore';
}

// Path: UserAgreementScreen
class TranslationsUserAgreementScreenEn {
	TranslationsUserAgreementScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your Privacy Comes First'
	String get privacyFirst => 'Your Privacy Comes First';

	/// en: 'Accept & Continue'
	String get agreeAndContinue => 'Accept & Continue';
}

// Path: VersionUpdateScreen
class TranslationsVersionUpdateScreenEn {
	TranslationsVersionUpdateScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The new version[$p] is ready'
	String versionReady({required Object p}) => 'The new version[${p}] is ready';

	/// en: 'Restart To Update'
	String get update => 'Restart To Update';

	/// en: 'Not Now'
	String get cancel => 'Not Now';
}

// Path: CommonWidget
class TranslationsCommonWidgetEn {
	TranslationsCommonWidgetEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'If [Always on VPN] is turned on, please turn off [Always on VPN] and try connecting again'
	String get diableAlwayOnVPN => 'If [Always on VPN] is turned on, please turn off [Always on VPN] and try connecting again';

	/// en: 'Please change the port to another available port or close the application occupying the port.'
	String get resetPort => 'Please change the port to another available port or close the application occupying the port.';
}

// Path: main
class TranslationsMainEn {
	TranslationsMainEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMainTrayEn tray = TranslationsMainTrayEn._(_root);
}

// Path: meta
class TranslationsMetaEn {
	TranslationsMetaEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enable'
	String get enable => 'Enable';

	/// en: 'Disable'
	String get disable => 'Disable';

	/// en: 'Default'
	String get bydefault => 'Default';

	/// en: 'Filter'
	String get filter => 'Filter';

	/// en: 'Filter Method'
	String get filterMethod => 'Filter Method';

	/// en: 'Include'
	String get include => 'Include';

	/// en: 'Exclude'
	String get exclude => 'Exclude';

	/// en: 'All'
	String get all => 'All';

	/// en: 'Prefer'
	String get prefer => 'Prefer';

	/// en: 'Only'
	String get only => 'Only';

	/// en: 'Open'
	String get open => 'Open';

	/// en: 'Close'
	String get close => 'Close';

	/// en: 'Quit'
	String get quit => 'Quit';

	/// en: 'Add'
	String get add => 'Add';

	/// en: 'Added successfully'
	String get addSuccess => 'Added successfully';

	/// en: 'Add failed:$p'
	String addFailed({required Object p}) => 'Add failed:${p}';

	/// en: 'Remove'
	String get remove => 'Remove';

	/// en: 'Are you sure to delete?'
	String get removeConfirm => 'Are you sure to delete?';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'View'
	String get view => 'View';

	/// en: 'More'
	String get more => 'More';

	/// en: 'Info'
	String get tips => 'Info';

	/// en: 'Copy'
	String get copy => 'Copy';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Ok'
	String get ok => 'Ok';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Feedback'
	String get feedback => 'Feedback';

	/// en: 'Feedback Content'
	String get feedbackContent => 'Feedback Content';

	/// en: 'Required, up to 500 characters'
	String get feedbackContentHit => 'Required, up to 500 characters';

	/// en: 'Feedback content can not be empty'
	String get feedbackContentCannotEmpty => 'Feedback content can not be empty';

	/// en: 'FAQ'
	String get faq => 'FAQ';

	/// en: 'Download'
	String get download => 'Download';

	/// en: 'Upload'
	String get upload => 'Upload';

	/// en: 'Download Speed'
	String get downloadSpeed => 'Download Speed';

	/// en: 'Upload Speed'
	String get uploadSpeed => 'Upload Speed';

	/// en: 'Loading...'
	String get loading => 'Loading...';

	/// en: 'Convert'
	String get convert => 'Convert';

	/// en: 'Check'
	String get check => 'Check';

	/// en: 'Detect'
	String get detect => 'Detect';

	/// en: 'Cache'
	String get cache => 'Cache';

	/// en: 'Days'
	String get days => 'Days';

	/// en: 'Hours'
	String get hours => 'Hours';

	/// en: 'Minutes'
	String get minutes => 'Minutes';

	/// en: 'Seconds'
	String get seconds => 'Seconds';

	/// en: 'Time period'
	String get dateTimePeriod => 'Time period';

	/// en: 'Protocol'
	String get protocol => 'Protocol';

	/// en: 'Search'
	String get search => 'Search';

	/// en: 'Custom'
	String get custom => 'Custom';

	/// en: 'Inbound'
	String get inbound => 'Inbound';

	/// en: 'Outbound'
	String get outbound => 'Outbound';

	/// en: 'Connect'
	String get connect => 'Connect';

	/// en: 'Disconnect'
	String get disconnect => 'Disconnect';

	/// en: 'Reconnect'
	String get reconnect => 'Reconnect';

	/// en: 'Connected'
	String get connected => 'Connected';

	/// en: 'Disconnected'
	String get disconnected => 'Disconnected';

	/// en: 'Connecting'
	String get connecting => 'Connecting';

	/// en: 'Connect Timeout'
	String get connectTimeout => 'Connect Timeout';

	/// en: 'Timeout'
	String get timeout => 'Timeout';

	/// en: 'Timeout Duration'
	String get timeoutDuration => 'Timeout Duration';

	/// en: 'Run Duration'
	String get runDuration => 'Run Duration';

	/// en: 'Latency'
	String get latency => 'Latency';

	/// en: 'Latency Checks'
	String get latencyTest => 'Latency Checks';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Done'
	String get done => 'Done';

	/// en: 'Apply'
	String get apply => 'Apply';

	/// en: 'Refresh'
	String get refresh => 'Refresh';

	/// en: 'Retry?'
	String get retry => 'Retry?';

	/// en: 'Update'
	String get update => 'Update';

	/// en: 'Update interval'
	String get updateInterval => 'Update interval';

	/// en: 'Minimum: 5m'
	String get updateInterval5mTips => 'Minimum: 5m';

	/// en: 'Update failed:$p'
	String updateFailed({required Object p}) => 'Update failed:${p}';

	/// en: 'Sampling Time Unit'
	String get samplingUnit => 'Sampling Time Unit';

	/// en: 'Number of Query Results'
	String get queryResultCount => 'Number of Query Results';

	/// en: 'Display up to $p data'
	String queryLimit({required Object p}) => 'Display up to ${p} data';

	/// en: 'None'
	String get none => 'None';

	/// en: 'Start'
	String get start => 'Start';

	/// en: 'Pause'
	String get pause => 'Pause';

	/// en: 'Reset'
	String get reset => 'Reset';

	/// en: 'Submit'
	String get submit => 'Submit';

	/// en: 'User'
	String get user => 'User';

	/// en: 'Account'
	String get account => 'Account';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'Required'
	String get required => 'Required';

	/// en: 'Type'
	String get type => 'Type';

	/// en: 'Path'
	String get path => 'Path';

	/// en: 'Local'
	String get local => 'Local';

	/// en: 'Remote'
	String get remote => 'Remote';

	/// en: 'Other'
	String get other => 'Other';

	/// en: 'DNS'
	String get dns => 'DNS';

	/// en: 'URL'
	String get url => 'URL';

	/// en: 'Invalid URL'
	String get urlInvalid => 'Invalid URL';

	/// en: 'Link can not be empty'
	String get urlCannotEmpty => 'Link can not be empty';

	/// en: 'URL is too long (>8182)'
	String get urlTooLong => 'URL is too long (>8182)';

	/// en: 'Copy Link'
	String get copyUrl => 'Copy Link';

	/// en: 'Open Link'
	String get openUrl => 'Open Link';

	/// en: 'Share Link'
	String get shareUrl => 'Share Link';

	/// en: 'Speed Test URL'
	String get speedTestUrl => 'Speed Test URL';

	/// en: 'TLS'
	String get tls => 'TLS';

	/// en: 'UserAgent'
	String get userAgent => 'UserAgent';

	/// en: 'Static IP'
	String get staticIP => 'Static IP';

	/// en: 'VPN Provider'
	String get isp => 'VPN Provider';

	/// en: 'Domain Suffix'
	String get domainSuffix => 'Domain Suffix';

	/// en: 'Domain'
	String get domain => 'Domain';

	/// en: 'Domain Keyword'
	String get domainKeyword => 'Domain Keyword';

	/// en: 'Domain Regex'
	String get domainRegex => 'Domain Regex';

	/// en: 'IP'
	String get ip => 'IP';

	/// en: 'Port'
	String get port => 'Port';

	/// en: 'Port range'
	String get portRange => 'Port range';

	/// en: 'App Package Id'
	String get appPackage => 'App Package Id';

	/// en: 'Process Name'
	String get processName => 'Process Name';

	/// en: 'Process Path'
	String get processPath => 'Process Path';

	/// en: 'Process Directory'
	String get processDir => 'Process Directory';

	/// en: 'System Proxy'
	String get systemProxy => 'System Proxy';

	/// en: 'Statistics'
	String get statistics => 'Statistics';

	/// en: 'Statistics and Analysis'
	String get statisticsAndAnalysis => 'Statistics and Analysis';

	/// en: 'Privacy Desensitization'
	String get statisticsPrivacyDesensitize => 'Privacy Desensitization';

	/// en: 'Process/package ID/target domain name/target IP etc. will be replaced with * and saved after desensitization'
	String get statisticsPrivacyDesensitizeTips => 'Process/package ID/target domain name/target IP etc. will be replaced with * and saved after desensitization';

	/// en: 'Records'
	String get records => 'Records';

	/// en: 'Request Records'
	String get requestRecords => 'Request Records';

	/// en: 'Net Interfaces'
	String get netInterfaces => 'Net Interfaces';

	/// en: 'Speed'
	String get netSpeed => 'Speed';

	/// en: 'Traffic Trend Chart'
	String get trafficTrendChart => 'Traffic Trend Chart';

	/// en: 'Traffic Distribution Chart'
	String get trafficDistributionChart => 'Traffic Distribution Chart';

	/// en: 'Connection Trend Chart'
	String get connectionChart => 'Connection Trend Chart';

	/// en: 'Memory Trend chart'
	String get memoryChart => 'Memory Trend chart';

	/// en: 'Traffic'
	String get traffic => 'Traffic';

	/// en: 'Total Traffic'
	String get trafficTotal => 'Total Traffic';

	/// en: 'Proxy Traffic'
	String get trafficProxy => 'Proxy Traffic';

	/// en: 'Direct Traffic'
	String get trafficDirect => 'Direct Traffic';

	/// en: 'Website'
	String get website => 'Website';

	/// en: 'Memory'
	String get memory => 'Memory';

	/// en: 'Outbound Mode'
	String get outboundMode => 'Outbound Mode';

	/// en: 'Rule'
	String get rule => 'Rule';

	/// en: 'Global'
	String get global => 'Global';

	/// en: 'QR Code'
	String get qrcode => 'QR Code';

	/// en: 'The text is too long to display'
	String get qrcodeTooLong => 'The text is too long to display';

	/// en: 'Share QR Code'
	String get qrcodeShare => 'Share QR Code';

	/// en: 'Text To QR Code'
	String get textToQrcode => 'Text To QR Code';

	/// en: 'Scan QR Code'
	String get qrcodeScan => 'Scan QR Code';

	/// en: 'Scan Result'
	String get qrcodeScanResult => 'Scan Result';

	/// en: 'Scan From Image'
	String get qrcodeScanFromImage => 'Scan From Image';

	/// en: 'Failed to parse the image, please make sure the screenshot is a valid QR code'
	String get qrcodeScanResultFailed => 'Failed to parse the image, please make sure the screenshot is a valid QR code';

	/// en: 'Scan Result is empty'
	String get qrcodeScanResultEmpty => 'Scan Result is empty';

	/// en: 'Screenshot'
	String get screenshot => 'Screenshot';

	/// en: 'Backup and Sync'
	String get backupAndSync => 'Backup and Sync';

	/// en: 'Auto backup'
	String get autoBackup => 'Auto backup';

	/// en: 'If data such as [My Profiles] is lost, you can restore it from [Backup and Sync-Auto backup] or other backup sources (such as iCloud or Webdav, etc.)'
	String get noProfileGotAutoBackup => 'If data such as [${_root.meta.myProfiles}] is lost, you can restore it from [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] or other backup sources (such as iCloud or Webdav, etc.)';

	/// en: 'After adding the Profile'
	String get autoBackupAddProfile => 'After adding the Profile';

	/// en: 'After deleting the Profile'
	String get autoBackupRemoveProfile => 'After deleting the Profile';

	/// en: 'Current Profile'
	String get currentProfile => 'Current Profile';

	/// en: 'Import and Export'
	String get importAndExport => 'Import and Export';

	/// en: 'Import'
	String get import => 'Import';

	/// en: 'Import from URL'
	String get importFromUrl => 'Import from URL';

	/// en: 'Export'
	String get export => 'Export';

	/// en: 'Send'
	String get send => 'Send';

	/// en: 'Receive'
	String get receive => 'Receive';

	/// en: 'Confirm to send?'
	String get sendConfirm => 'Confirm to send?';

	/// en: 'Terms of Service'
	String get termOfUse => 'Terms of Service';

	/// en: 'Privacy & Policy'
	String get privacyPolicy => 'Privacy & Policy';

	/// en: 'About'
	String get about => 'About';

	/// en: 'Name'
	String get name => 'Name';

	/// en: 'Version'
	String get version => 'Version';

	/// en: 'Notice'
	String get notice => 'Notice';

	/// en: 'Action:$p Reason:$p1'
	String appNotifyWithReason({required Object p, required Object p1}) => 'Action:${p}\nReason:${p1}';

	/// en: 'Reorder'
	String get sort => 'Reorder';

	/// en: 'Novice Mode'
	String get novice => 'Novice Mode';

	/// en: 'Please restart your device to complete the system extension installation'
	String get willCompleteAfterRebootInstall => 'Please restart your device to complete the system extension installation';

	/// en: 'Please restart your device to complete the the system extension uninstallation'
	String get willCompleteAfterRebootUninstall => 'Please restart your device to complete the the system extension uninstallation';

	/// en: '1. Please [Allow] Karing to install system extensions in [System Settings]-[Privacy and Security] 2. [System Settings]-[General]-[Login Items Extensions]-[Network Extension] enable [karingServiceSE] reconnect after completion'
	String get requestNeedsUserApproval => '1. Please [Allow] Karing to install system extensions in [System Settings]-[Privacy and Security]\n2. [System Settings]-[General]-[Login Items Extensions]-[Network Extension] enable [karingServiceSE]\nreconnect after completion';

	/// en: 'Please enable [karingServiceSE] permission in [System Settings]-[Privacy and Security]-[Full Disk Access Permission] and reconnect'
	String get FullDiskAccessPermissionRequired => 'Please enable [karingServiceSE] permission in [System Settings]-[Privacy and Security]-[Full Disk Access Permission] and reconnect';

	/// en: 'TV Mode'
	String get tvMode => 'TV Mode';

	/// en: 'Recommend'
	String get recommended => 'Recommend';

	/// en: 'Inner Error:$p'
	String innerError({required Object p}) => 'Inner Error:${p}';

	/// en: 'Logic Operation'
	String get logicOperation => 'Logic Operation';

	/// en: 'Share'
	String get share => 'Share';

	/// en: 'Candidate Words'
	String get candidateWord => 'Candidate Words';

	/// en: 'Keywords/Regular'
	String get keywordOrRegx => 'Keywords/Regular';

	/// en: 'Import From Clipboard'
	String get importFromClipboard => 'Import From Clipboard';

	/// en: 'Export to Clipboard'
	String get exportToClipboard => 'Export to Clipboard';

	/// en: 'Server'
	String get server => 'Server';

	/// en: 'Ads'
	String get ads => 'Ads';

	/// en: 'Remove ads'
	String get adsRemove => 'Remove ads';

	/// en: 'Banner ads'
	String get adsBanner => 'Banner ads';

	/// en: 'Donate'
	String get donate => 'Donate';

	/// en: 'Diversion'
	String get diversion => 'Diversion';

	/// en: 'Diversion Rules'
	String get diversionRules => 'Diversion Rules';

	/// en: 'Custom Diversion Group'
	String get diversionCustomGroup => 'Custom Diversion Group';

	/// en: 'Custom Auto Select'
	String get urlTestCustomGroup => 'Custom Auto Select';

	/// en: 'Settings'
	String get setting => 'Settings';

	/// en: 'iCloud'
	String get iCloud => 'iCloud';

	/// en: 'Apple TV'
	String get appleTV => 'Apple TV';

	/// en: 'Webdav'
	String get webdav => 'Webdav';

	/// en: 'LAN Sync'
	String get lanSync => 'LAN Sync';

	/// en: 'Do not exit this interface before synchronization is completed'
	String get lanSyncNotQuitTips => 'Do not exit this interface before synchronization is completed';

	/// en: 'Not enough disk space'
	String get deviceNoSpace => 'Not enough disk space';

	/// en: 'Hide System Apps'
	String get hideSystemApp => 'Hide System Apps';

	/// en: 'Hide App Icons'
	String get hideAppIcon => 'Hide App Icons';

	/// en: 'Hide Dock Icon'
	String get hideDockIcon => 'Hide Dock Icon';

	/// en: 'Remark'
	String get remark => 'Remark';

	/// en: 'Remark already exists, please use another name'
	String get remarkExist => 'Remark already exists, please use another name';

	/// en: 'Remarks can not be empty'
	String get remarkCannotEmpty => 'Remarks can not be empty';

	/// en: 'Remarks up to 32 characters'
	String get remarkTooLong => 'Remarks up to 32 characters';

	/// en: 'Open File Directory'
	String get openDir => 'Open File Directory';

	/// en: 'Select File'
	String get fileChoose => 'Select File';

	/// en: 'The file path can not be empty'
	String get filePathCannotEmpty => 'The file path can not be empty';

	/// en: 'File does not exist:$p'
	String fileNotExist({required Object p}) => 'File does not exist:${p}';

	/// en: 'Invalid file type:$p'
	String fileTypeInvalid({required Object p}) => 'Invalid file type:${p}';

	/// en: 'UWP Network Isolation Exemptions'
	String get uwpExemption => 'UWP Network Isolation Exemptions';

	/// en: 'GeoSite'
	String get rulesetGeoSite => 'GeoSite';

	/// en: 'GeoIP'
	String get rulesetGeoIp => 'GeoIP';

	/// en: 'ACL'
	String get rulesetAcl => 'ACL';

	/// en: 'Get Profile'
	String get getProfile => 'Get Profile';

	/// en: 'Add Profile'
	String get addProfile => 'Add Profile';

	/// en: 'My Profiles'
	String get myProfiles => 'My Profiles';

	/// en: 'Cannot be disabled, please keep at least one profile enable'
	String get myProfilesAtLeastOneReserveEnable => 'Cannot be disabled, please keep at least one profile enable';

	/// en: 'Profile Edit'
	String get profileEdit => 'Profile Edit';

	/// en: 'URL already exists, please use another URL'
	String get profileEditUrlExist => 'URL already exists, please use another URL';

	/// en: 'Reload after Profile update'
	String get profileEditReloadAfterProfileUpdate => 'Reload after Profile update';

	/// en: 'Start latency tests after Profile Automatically update'
	String get profileEditTestLatencyAfterProfileUpdate => 'Start latency tests after Profile Automatically update';

	/// en: 'VPN needs to be connected, and [Reload after Profile update] Enabled'
	String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN needs to be connected, and [Reload after Profile update] Enabled';

	/// en: 'Automatically remove servers that fail latency tests'
	String get profileEditTestLatencyAutoRemove => 'Automatically remove servers that fail latency tests';

	/// en: 'Try up to 3 times'
	String get profileEditTestLatencyAutoRemoveTips => 'Try up to 3 times';

	/// en: 'Import Profile File'
	String get profileImport => 'Import Profile File';

	/// en: 'Add Profile Link'
	String get profileAddUrlOrContent => 'Add Profile Link';

	/// en: 'The Profile already exists, please do not add it repeatedly'
	String get profileExists => 'The Profile already exists, please do not add it repeatedly';

	/// en: 'Profile Link/Content'
	String get profileUrlOrContent => 'Profile Link/Content';

	/// en: 'Profile Link/Content [Required] (Support Clash,V2ray(batch supported),Stash,Karing,Sing-box,Shadowsocks,Sub Profile links)'
	String get profileUrlOrContentHit => 'Profile Link/Content [Required] (Support Clash,V2ray(batch supported),Stash,Karing,Sing-box,Shadowsocks,Sub Profile links)';

	/// en: 'Profile Link can not be empty'
	String get profileUrlOrContentCannotEmpty => 'Profile Link can not be empty';

	/// en: 'The format is wrong, please correct it and add it again:$p'
	String profileAddFailedFormatException({required Object p}) => 'The format is wrong, please correct it and add it again:${p}';

	/// en: 'Add failed: $p, please try to modify the [UserAgent] and try again, or use the device's built-in browser to open the configuration link and import the configuration file downloaded by the browser into this application'
	String profileAddFailedThenDownloadAndImport({required Object p}) => 'Add failed: ${p}, please try to modify the [UserAgent] and try again, or use the device\'s built-in browser to open the configuration link and import the configuration file downloaded by the browser into this application';

	/// en: 'Add failed: $p, please tun on the proxy or modify the current proxy node and try again'
	String profileAddFailedHandshakeException({required Object p}) => 'Add failed: ${p}, please tun on the proxy or modify the current proxy node and try again';

	/// en: 'Parsing Profile failed'
	String get profileAddParseFailed => 'Parsing Profile failed';

	/// en: 'No server avaliable, Make sure the Profile Link or Profile File is valid; if your Profile comes from GitHub, please obtain the link from the [Raw] button on the page'
	String get profileAddNoServerAvaliable => 'No server avaliable, Make sure the Profile Link or Profile File is valid;  if your Profile comes from GitHub, please obtain the link from the [Raw] button on the page';

	/// en: 'Profile generated successfully, please go to [My Profiles] to view'
	String get profileAddWrapSuccess => 'Profile generated successfully, please go to [${_root.meta.myProfiles}] to view';
}

// Path: isp
class TranslationsIspEn {
	TranslationsIspEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Bind To [VPN Provider] '
	String get bind => 'Bind To [${_root.meta.isp}] ';

	/// en: 'Unbind[$p]'
	String unbind({required Object p}) => 'Unbind[${p}]';

	/// en: 'FAQ[$p]'
	String faq({required Object p}) => 'FAQ[${p}]';

	/// en: 'Telegram[$p]'
	String customerService({required Object p}) => 'Telegram[${p}]';

	/// en: 'Follow[$p]'
	String follow({required Object p}) => 'Follow[${p}]';

	/// en: '[VPN Provider] Invalid or expired'
	String get invalidOrExpired => '[${_root.meta.isp}] Invalid or expired';
}

// Path: permission
class TranslationsPermissionEn {
	TranslationsPermissionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Camera'
	String get camera => 'Camera';

	/// en: 'Screen Recording'
	String get screen => 'Screen Recording';

	/// en: 'Get Application List'
	String get appQuery => 'Get Application List';

	/// en: 'Turn on [$p] permission'
	String request({required Object p}) => 'Turn on [${p}] permission';

	/// en: 'Please Turn on [$p] permission'
	String requestNeed({required Object p}) => 'Please Turn on [${p}] permission';
}

// Path: tls
class TranslationsTlsEn {
	TranslationsTlsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Skip Certificate Verification'
	String get insecure => 'Skip Certificate Verification';

	/// en: 'vless, vmess, trojan'
	String get affectProtocolTips => 'vless, vmess, trojan';

	/// en: 'Enable TLS Fragment'
	String get fragmentEnable => 'Enable TLS Fragment';

	/// en: 'TLS Fragment Size'
	String get fragmentSize => 'TLS Fragment Size';

	/// en: 'TLS Fragment Sleep'
	String get fragmentSleep => 'TLS Fragment Sleep';

	/// en: 'Enable TLS Mixed SNI'
	String get mixedCaseSNIEnable => 'Enable TLS Mixed SNI';

	/// en: 'Enable TLS Padding'
	String get paddingEnable => 'Enable TLS Padding';

	/// en: 'TLS Padding Size'
	String get paddingSize => 'TLS Padding Size';
}

// Path: outboundRuleMode
class TranslationsOutboundRuleModeEn {
	TranslationsOutboundRuleModeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Current Selected'
	String get currentSelected => 'Current Selected';

	/// en: 'Auto Select'
	String get urltest => 'Auto Select';

	/// en: 'Direct'
	String get direct => 'Direct';

	/// en: 'Block'
	String get block => 'Block';
}

// Path: dnsProxyResolveMode
class TranslationsDnsProxyResolveModeEn {
	TranslationsDnsProxyResolveModeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Current Selected'
	String get proxy => _root.outboundRuleMode.currentSelected;

	/// en: 'Direct'
	String get direct => _root.outboundRuleMode.direct;

	/// en: 'FakeIP'
	String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class TranslationsProxyStrategyEn {
	TranslationsProxyStrategyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Prefer Current Selected'
	String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';

	/// en: 'Prefer Direct'
	String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';

	/// en: 'Only Current Selected'
	String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';

	/// en: 'Only Direct'
	String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class TranslationsReloadReasonEn {
	TranslationsReloadReasonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Latency Checks-Automatically remove servers that fail latency tests'
	String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';

	/// en: 'Profile Update'
	String get profileUpdate => 'Profile Update';
}

// Path: theme
class TranslationsThemeEn {
	TranslationsThemeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Light'
	String get light => 'Light';

	/// en: 'Dark'
	String get dark => 'Dark';

	/// en: 'Auto'
	String get auto => 'Auto';
}

// Path: main.tray
class TranslationsMainTrayEn {
	TranslationsMainTrayEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: ' Open '
	String get menuOpen => '    Open    ';

	/// en: ' Exit '
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
			case 'AboutScreen.allowRemoteAccessPprof': return 'Allow remote access to ${_root.AboutScreen.pprofPanel}';
			case 'AboutScreen.allowRemoteAccessHtmlBoard': return 'Allow remote access${_root.SettingsScreen.htmlBoard}';
			case 'AboutScreen.useOriginalSBProfile': return 'Use original sing-box Profile';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return 'Server Url';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return 'Can not be empty';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return 'Login failed:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return 'Failed to get file list:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => 'Invalid [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => 'Invalid [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => 'Invalid [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => 'Invalid [Rule Set]:${p}, The URL must be a valid https URL and a binary file with the file extension .srs/.json';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => 'Invalid [Rule Set(build-in)]:${p}, The format is geosite:xxx or geoip:xxx or acl:xxx, and xxx should be a valid rule name';
			case 'DiversionGroupCustomEditScreen.invalidPackageId': return ({required Object p}) => 'Invalid [${_root.meta.appPackage}]:${p}';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return 'Tip: After saving, please go to [${_root.meta.diversionRules}] to set relevant rules, otherwise they will not take effect';
			case 'DiversionRuleDetectScreen.title': return 'Diversion Rule Detect';
			case 'DiversionRuleDetectScreen.rule': return 'Rule:';
			case 'DiversionRuleDetectScreen.outbound': return 'Proxy Server:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return 'Tip: Try to match the rules from top to bottom. If no rule is matched, use [final]';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'ISP can not be empty';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'URL can not be empty';
			case 'DnsSettingsScreen.error': return ({required Object p}) => 'Unsupported type:${p}';
			case 'DnsSettingsScreen.dnsDesc': return 'The first column of delay data is the direct connection query delay;\nThe second column: Turn on [[Proxy Traffic]Resolve DNS through proxy server]: the delay data is the query delay forwarded through the current proxy server; if the [[Proxy Traffic]Resolve DNS through proxy server]: The delay data is the direct connection query delay';
			case 'FileContentViewerScreen.title': return 'File Content Viewer';
			case 'FileContentViewerScreen.clearFileContent': return 'Are you sure to clear the content of the file?';
			case 'FileContentViewerScreen.clearFileContentTips': return 'Are you sure to clear the content of the Profile file? Clearing the Profile file may cause data loss or abnormal application functions, please operate with caution';
			case 'HomeScreen.toSelectServer': return 'Please Select a Server';
			case 'HomeScreen.invalidServer': return 'is invalid, please select again';
			case 'HomeScreen.disabledServer': return 'is disabled, please select again';
			case 'HomeScreen.expiredServer': return 'No servers available, profiles may be expired or disabled';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'HomeScreen.myLinkEmpty': return 'Please set up [Shortcut Link] before using it';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}], and the connection may fail due to system memory limitations';
			case 'HomeScreen.tooMuchServers2': return ({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}] may cause slow or inaccessible connections';
			case 'LaunchFailedScreen.invalidProcess': return 'The app failed to start [Invalid process name], please reinstall the app to a separate directory';
			case 'LaunchFailedScreen.invalidProfile': return 'The app failed to start [Failed to access the profile], please reinstall the app';
			case 'LaunchFailedScreen.invalidVersion': return 'The app failed to start [Invalid version], please reinstall the app';
			case 'LaunchFailedScreen.systemVersionLow': return 'The app failed to start [system version too low]';
			case 'LaunchFailedScreen.invalidInstallPath': return 'The installation path is invalid, please reinstall it to a valid path';
			case 'MyProfilesMergeScreen.profilesMerge': return 'Profiles Merge';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return 'Target Profile';
			case 'MyProfilesMergeScreen.profilesMergeSource': return 'Source Profiles';
			case 'MyProfilesMergeScreen.profilesMergeTips': return 'Tip: Diversion of the source profiles will be discarded';
			case 'NetCheckScreen.title': return 'Net Check';
			case 'NetCheckScreen.warn': return 'Note: Due to the influence of network environment and diversion rules, the test results are not completely equivalent to the actual results.';
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
			case 'NetConnectionsFilterScreen.hostIp': return 'Domain/IP';
			case 'NetConnectionsFilterScreen.app': return 'App';
			case 'NetConnectionsFilterScreen.rule': return 'Rule';
			case 'NetConnectionsFilterScreen.chain': return 'Outbound';
			case 'NetConnectionsScreen.copyAsCSV': return 'Copied to CSV format';
			case 'NetConnectionsScreen.selectType': return 'Select Diversion Type';
			case 'PerAppAndroidScreen.title': return 'Per-App Proxy';
			case 'PerAppAndroidScreen.whiteListMode': return 'Whitelist Mode';
			case 'PerAppAndroidScreen.whiteListModeTip': return 'When enabled: only the apps that have been checked are proxies; when not enabled: only the apps that are not checked are proxies';
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
			case 'SettingsScreen.rulesetDirectDownlad': return 'Rule Set Direct Download';
			case 'SettingsScreen.hideUnusedDiversionGroup': return 'Hide Unused Diversion Rules';
			case 'SettingsScreen.disableISPDiversionGroup': return 'Disable [${_root.meta.isp}] ${_root.meta.diversionRules}';
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
			case 'SettingsScreen.tunAllowBypassHttpProxyDomain': return 'Domains allowed to bypass HTTP proxy';
			case 'SettingsScreen.dnsEnableRule': return 'Enable DNS Diversion rules';
			case 'SettingsScreen.dnsEnableProxyResolveMode': return '[${_root.meta.trafficProxy}] Resolve Channel';
			case 'SettingsScreen.dnsEnableClientSubnet': return '[${_root.meta.trafficDirect}] Enable ECS';
			case 'SettingsScreen.dnsTestDomain': return 'Test Domain';
			case 'SettingsScreen.dnsTestDomainInvalid': return 'Invalid Domain';
			case 'SettingsScreen.dnsTypeOutbound': return 'Proxy Server';
			case 'SettingsScreen.dnsTypeDirect': return _root.meta.trafficDirect;
			case 'SettingsScreen.dnsTypeProxy': return _root.meta.trafficProxy;
			case 'SettingsScreen.dnsTypeResolver': return 'DNS Server';
			case 'SettingsScreen.dnsEnableRuleTips': return 'After enabling, the domain name will select the corresponding DNS server for resolution according to the diversion rules';
			case 'SettingsScreen.dnsEnableFakeIpTips': return 'After enabling FakeIP, if you disconnect from VPN, your app may need to be restarted; this feature requires [TUN mode] to be enabled';
			case 'SettingsScreen.dnsTypeOutboundTips': return 'Domain name resolution for [${_root.SettingsScreen.dnsTypeOutbound}]';
			case 'SettingsScreen.dnsTypeDirectTips': return 'Domain name resolution for [${_root.meta.trafficDirect}]';
			case 'SettingsScreen.dnsTypeProxyTips': return 'Domain name resolution for [${_root.meta.trafficProxy}]';
			case 'SettingsScreen.dnsTypeResolverTips': return 'Domain name resolution for [${_root.SettingsScreen.dnsTypeResolver}]';
			case 'SettingsScreen.dnsAutoSetServer': return 'Auto Setup Server';
			case 'SettingsScreen.dnsResetServer': return 'Reset Server';
			case 'SettingsScreen.inboundDomainResolve': return 'Resolve Inbound Domain names';
			case 'SettingsScreen.privateDirect': return 'Private Network Direct connection';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => 'Some domain names that are not configured with diversion rules need to be resolved before they can hit the IP-based diversion rules; this feature affects inbound requests to the proxy port [${p}]';
			case 'SettingsScreen.useRomoteRes': return 'Use Remote Resources';
			case 'SettingsScreen.autoAppendRegion': return 'Auto attach basic rules';
			case 'SettingsScreen.autoSelect': return 'Auto Select';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'Ignore [Front/Chaine] Proxy Servers';
			case 'SettingsScreen.autoSelectServerInterval': return 'Latency Checks Interval';
			case 'SettingsScreen.autoSelectSelectedHealthCheckInterval': return 'Current server health check interval';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return 'Re-check Latency when Network Changes';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return 'Update the Current Server after Manual Latency Check';
			case 'SettingsScreen.autoSelectServerIntervalTips': return 'The shorter the time interval, the more timely the server latency data updates, which will occupy more resources and consume more power';
			case 'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips': return 'If the check fails, the server is switched; if no available server is found when switching the server, the group will re-check latency';
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
			case 'SettingsScreen.widgetsAlpha': return 'Widgets Alpha';
			case 'SettingsScreen.widgetsEmpty': return 'No Widget Available';
			case 'SettingsScreen.backgroundImage': return 'Background Image';
			case 'SettingsScreen.myLink': return 'Shortcut Link';
			case 'SettingsScreen.autoConnectAfterLaunch': return 'Auto Connection after Launch';
			case 'SettingsScreen.hideAfterLaunch': return 'Hide window after startup';
			case 'SettingsScreen.autoSetSystemProxy': return 'Auto Set System Proxy when Connected';
			case 'SettingsScreen.bypassSystemProxy': return 'Domain names that are allowed to bypass the system proxy';
			case 'SettingsScreen.disconnectWhenQuit': return 'Disconnect when App Exits';
			case 'SettingsScreen.excludeFromRecent': return 'Hide from [Recent Tasks]';
			case 'SettingsScreen.wakeLock': return 'Wake Lock';
			case 'SettingsScreen.hideVpn': return 'Hide VPN Icon';
			case 'SettingsScreen.hideVpnTips': return 'Enabling IPv6 will cause this function to fail';
			case 'SettingsScreen.allowBypass': return 'Allow Apps to Bypass VPN';
			case 'SettingsScreen.importSuccess': return 'Import Success';
			case 'SettingsScreen.rewriteConfirm': return 'This file will overwrite the existing local configuration. Do you want to continue?';
			case 'SettingsScreen.mergePerapp': return 'Merge local [${_root.PerAppAndroidScreen.title}] lists';
			case 'SettingsScreen.networkShare': return 'Network Sharing';
			case 'SettingsScreen.frontProxy': return 'Front/Chain Proxy';
			case 'SettingsScreen.frontProxyTips': return ({required Object p}) => 'Data->Front/Chaine Proxy Server [Multiple Proxy Servers: Top to Bottom]->Proxy Server [${p}]->Target Server';
			case 'SettingsScreen.allowOtherHostsConnect': return 'Allow Others to Connect';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.allowOtherHostsConnectWarn': return 'Due to system limitations, after this is enabled, applications on this device that use http to access the network may not be able to connect to the network properly.';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunAutoRedirect': return 'Auto Redirect';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'If after turning on sharing, others cannot access this device, please try turning off this switch';
			case 'SettingsScreen.loopbackAddress': return 'Loopback Address';
			case 'SettingsScreen.enableCluster': return 'Enable Socks/Http Proxy Cluster';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'Allow Others to Connect to Cluster';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'Proxy Cluster Authentication';
			case 'SettingsScreen.tunMode': return 'TUN Mode';
			case 'SettingsScreen.tuni4Address': return 'IP address';
			case 'SettingsScreen.tunModeTips': return 'The TUN mode will take over all the traffic of the system [In this mode, you can leave the system proxy unenabled]';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'The TUN mode requires system administrator permissions, please restart the app as an administrator';
			case 'SettingsScreen.tunStack': return 'Stack';
			case 'SettingsScreen.tunHijackTips': return 'After closing, DNS requests from TUN will be forwarded directly to the corresponding DNS server';
			case 'SettingsScreen.launchAtStartup': return 'Launch at Startup';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return 'Exit App when Switch System Users';
			case 'SettingsScreen.handleScheme': return 'System Scheme Call';
			case 'SettingsScreen.portableMode': return 'Portable Mode';
			case 'SettingsScreen.portableModeDisableTips': return 'If you need to exit portable mode, please exit [karing] and manually delete the [profiles] folder in the same directory as [karing.exe]';
			case 'SettingsScreen.handleKaringScheme': return 'Handle karing:// Call';
			case 'SettingsScreen.handleClashScheme': return 'Handle clash:// Call';
			case 'SettingsScreen.handleSingboxScheme': return 'Handle sing-box:// Call';
			case 'SettingsScreen.alwayOnVPN': return 'Always-on Connection';
			case 'SettingsScreen.disconnectAfterSleep': return 'Disconnect after system sleep';
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
			case 'UserAgreementScreen.privacyFirst': return 'Your Privacy Comes First';
			case 'UserAgreementScreen.agreeAndContinue': return 'Accept & Continue';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => 'The new version[${p}] is ready';
			case 'VersionUpdateScreen.update': return 'Restart To Update';
			case 'VersionUpdateScreen.cancel': return 'Not Now';
			case 'CommonWidget.diableAlwayOnVPN': return 'If [Always on VPN] is turned on, please turn off [Always on VPN] and try connecting again';
			case 'CommonWidget.resetPort': return 'Please change the port to another available port or close the application occupying the port.';
			case 'main.tray.menuOpen': return '    Open    ';
			case 'main.tray.menuExit': return '    Exit    ';
			case 'meta.enable': return 'Enable';
			case 'meta.disable': return 'Disable';
			case 'meta.bydefault': return 'Default';
			case 'meta.filter': return 'Filter';
			case 'meta.filterMethod': return 'Filter Method';
			case 'meta.include': return 'Include';
			case 'meta.exclude': return 'Exclude';
			case 'meta.all': return 'All';
			case 'meta.prefer': return 'Prefer';
			case 'meta.only': return 'Only';
			case 'meta.open': return 'Open';
			case 'meta.close': return 'Close';
			case 'meta.quit': return 'Quit';
			case 'meta.add': return 'Add';
			case 'meta.addSuccess': return 'Added successfully';
			case 'meta.addFailed': return ({required Object p}) => 'Add failed:${p}';
			case 'meta.remove': return 'Remove';
			case 'meta.removeConfirm': return 'Are you sure to delete?';
			case 'meta.edit': return 'Edit';
			case 'meta.view': return 'View';
			case 'meta.more': return 'More';
			case 'meta.tips': return 'Info';
			case 'meta.copy': return 'Copy';
			case 'meta.save': return 'Save';
			case 'meta.ok': return 'Ok';
			case 'meta.cancel': return 'Cancel';
			case 'meta.feedback': return 'Feedback';
			case 'meta.feedbackContent': return 'Feedback Content';
			case 'meta.feedbackContentHit': return 'Required, up to 500 characters';
			case 'meta.feedbackContentCannotEmpty': return 'Feedback content can not be empty';
			case 'meta.faq': return 'FAQ';
			case 'meta.download': return 'Download';
			case 'meta.upload': return 'Upload';
			case 'meta.downloadSpeed': return 'Download Speed';
			case 'meta.uploadSpeed': return 'Upload Speed';
			case 'meta.loading': return 'Loading...';
			case 'meta.convert': return 'Convert';
			case 'meta.check': return 'Check';
			case 'meta.detect': return 'Detect';
			case 'meta.cache': return 'Cache';
			case 'meta.days': return 'Days';
			case 'meta.hours': return 'Hours';
			case 'meta.minutes': return 'Minutes';
			case 'meta.seconds': return 'Seconds';
			case 'meta.dateTimePeriod': return 'Time period';
			case 'meta.protocol': return 'Protocol';
			case 'meta.search': return 'Search';
			case 'meta.custom': return 'Custom';
			case 'meta.inbound': return 'Inbound';
			case 'meta.outbound': return 'Outbound';
			case 'meta.connect': return 'Connect';
			case 'meta.disconnect': return 'Disconnect';
			case 'meta.reconnect': return 'Reconnect';
			case 'meta.connected': return 'Connected';
			case 'meta.disconnected': return 'Disconnected';
			case 'meta.connecting': return 'Connecting';
			case 'meta.connectTimeout': return 'Connect Timeout';
			case 'meta.timeout': return 'Timeout';
			case 'meta.timeoutDuration': return 'Timeout Duration';
			case 'meta.runDuration': return 'Run Duration';
			case 'meta.latency': return 'Latency';
			case 'meta.latencyTest': return 'Latency Checks';
			case 'meta.language': return 'Language';
			case 'meta.next': return 'Next';
			case 'meta.done': return 'Done';
			case 'meta.apply': return 'Apply';
			case 'meta.refresh': return 'Refresh';
			case 'meta.retry': return 'Retry?';
			case 'meta.update': return 'Update';
			case 'meta.updateInterval': return 'Update interval';
			case 'meta.updateInterval5mTips': return 'Minimum: 5m';
			case 'meta.updateFailed': return ({required Object p}) => 'Update failed:${p}';
			case 'meta.samplingUnit': return 'Sampling Time Unit';
			case 'meta.queryResultCount': return 'Number of Query Results';
			case 'meta.queryLimit': return ({required Object p}) => 'Display up to ${p} data';
			case 'meta.none': return 'None';
			case 'meta.start': return 'Start';
			case 'meta.pause': return 'Pause';
			case 'meta.reset': return 'Reset';
			case 'meta.submit': return 'Submit';
			case 'meta.user': return 'User';
			case 'meta.account': return 'Account';
			case 'meta.password': return 'Password';
			case 'meta.required': return 'Required';
			case 'meta.type': return 'Type';
			case 'meta.path': return 'Path';
			case 'meta.local': return 'Local';
			case 'meta.remote': return 'Remote';
			case 'meta.other': return 'Other';
			case 'meta.dns': return 'DNS';
			case 'meta.url': return 'URL';
			case 'meta.urlInvalid': return 'Invalid URL';
			case 'meta.urlCannotEmpty': return 'Link can not be empty';
			case 'meta.urlTooLong': return 'URL is too long (>8182)';
			case 'meta.copyUrl': return 'Copy Link';
			case 'meta.openUrl': return 'Open Link';
			case 'meta.shareUrl': return 'Share Link';
			case 'meta.speedTestUrl': return 'Speed Test URL';
			case 'meta.tls': return 'TLS';
			case 'meta.userAgent': return 'UserAgent';
			case 'meta.staticIP': return 'Static IP';
			case 'meta.isp': return 'VPN Provider';
			case 'meta.domainSuffix': return 'Domain Suffix';
			case 'meta.domain': return 'Domain';
			case 'meta.domainKeyword': return 'Domain Keyword';
			case 'meta.domainRegex': return 'Domain Regex';
			case 'meta.ip': return 'IP';
			case 'meta.port': return 'Port';
			case 'meta.portRange': return 'Port range';
			case 'meta.appPackage': return 'App Package Id';
			case 'meta.processName': return 'Process Name';
			case 'meta.processPath': return 'Process Path';
			case 'meta.processDir': return 'Process Directory';
			case 'meta.systemProxy': return 'System Proxy';
			case 'meta.statistics': return 'Statistics';
			case 'meta.statisticsAndAnalysis': return 'Statistics and Analysis';
			case 'meta.statisticsPrivacyDesensitize': return 'Privacy Desensitization';
			case 'meta.statisticsPrivacyDesensitizeTips': return 'Process/package ID/target domain name/target IP etc. will be replaced with * and saved after desensitization';
			case 'meta.records': return 'Records';
			case 'meta.requestRecords': return 'Request Records';
			case 'meta.netInterfaces': return 'Net Interfaces';
			case 'meta.netSpeed': return 'Speed';
			case 'meta.trafficTrendChart': return 'Traffic Trend Chart';
			case 'meta.trafficDistributionChart': return 'Traffic Distribution Chart';
			case 'meta.connectionChart': return 'Connection Trend Chart';
			case 'meta.memoryChart': return 'Memory Trend chart';
			case 'meta.traffic': return 'Traffic';
			case 'meta.trafficTotal': return 'Total Traffic';
			case 'meta.trafficProxy': return 'Proxy Traffic';
			case 'meta.trafficDirect': return 'Direct Traffic';
			case 'meta.website': return 'Website';
			case 'meta.memory': return 'Memory';
			case 'meta.outboundMode': return 'Outbound Mode';
			case 'meta.rule': return 'Rule';
			case 'meta.global': return 'Global';
			case 'meta.qrcode': return 'QR Code';
			case 'meta.qrcodeTooLong': return 'The text is too long to display';
			case 'meta.qrcodeShare': return 'Share QR Code';
			case 'meta.textToQrcode': return 'Text To QR Code';
			case 'meta.qrcodeScan': return 'Scan QR Code';
			case 'meta.qrcodeScanResult': return 'Scan Result';
			case 'meta.qrcodeScanFromImage': return 'Scan From Image';
			case 'meta.qrcodeScanResultFailed': return 'Failed to parse the image, please make sure the screenshot is a valid QR code';
			case 'meta.qrcodeScanResultEmpty': return 'Scan Result is empty';
			case 'meta.screenshot': return 'Screenshot';
			case 'meta.backupAndSync': return 'Backup and Sync';
			case 'meta.autoBackup': return 'Auto backup';
			case 'meta.noProfileGotAutoBackup': return 'If data such as [${_root.meta.myProfiles}] is lost, you can restore it from [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] or other backup sources (such as iCloud or Webdav, etc.)';
			case 'meta.autoBackupAddProfile': return 'After adding the Profile';
			case 'meta.autoBackupRemoveProfile': return 'After deleting the Profile';
			case 'meta.currentProfile': return 'Current Profile';
			case 'meta.importAndExport': return 'Import and Export';
			case 'meta.import': return 'Import';
			case 'meta.importFromUrl': return 'Import from URL';
			case 'meta.export': return 'Export';
			case 'meta.send': return 'Send';
			case 'meta.receive': return 'Receive';
			case 'meta.sendConfirm': return 'Confirm to send?';
			case 'meta.termOfUse': return 'Terms of Service';
			case 'meta.privacyPolicy': return 'Privacy & Policy';
			case 'meta.about': return 'About';
			case 'meta.name': return 'Name';
			case 'meta.version': return 'Version';
			case 'meta.notice': return 'Notice';
			case 'meta.appNotifyWithReason': return ({required Object p, required Object p1}) => 'Action:${p}\nReason:${p1}';
			case 'meta.sort': return 'Reorder';
			case 'meta.novice': return 'Novice Mode';
			case 'meta.willCompleteAfterRebootInstall': return 'Please restart your device to complete the system extension installation';
			case 'meta.willCompleteAfterRebootUninstall': return 'Please restart your device to complete the the system extension uninstallation';
			case 'meta.requestNeedsUserApproval': return '1. Please [Allow] Karing to install system extensions in [System Settings]-[Privacy and Security]\n2. [System Settings]-[General]-[Login Items Extensions]-[Network Extension] enable [karingServiceSE]\nreconnect after completion';
			case 'meta.FullDiskAccessPermissionRequired': return 'Please enable [karingServiceSE] permission in [System Settings]-[Privacy and Security]-[Full Disk Access Permission] and reconnect';
			case 'meta.tvMode': return 'TV Mode';
			case 'meta.recommended': return 'Recommend';
			case 'meta.innerError': return ({required Object p}) => 'Inner Error:${p}';
			case 'meta.logicOperation': return 'Logic Operation';
			case 'meta.share': return 'Share';
			case 'meta.candidateWord': return 'Candidate Words';
			case 'meta.keywordOrRegx': return 'Keywords/Regular';
			case 'meta.importFromClipboard': return 'Import From Clipboard';
			case 'meta.exportToClipboard': return 'Export to Clipboard';
			case 'meta.server': return 'Server';
			case 'meta.ads': return 'Ads';
			case 'meta.adsRemove': return 'Remove ads';
			case 'meta.adsBanner': return 'Banner ads';
			case 'meta.donate': return 'Donate';
			case 'meta.diversion': return 'Diversion';
			case 'meta.diversionRules': return 'Diversion Rules';
			case 'meta.diversionCustomGroup': return 'Custom Diversion Group';
			case 'meta.urlTestCustomGroup': return 'Custom Auto Select';
			case 'meta.setting': return 'Settings';
			case 'meta.iCloud': return 'iCloud';
			case 'meta.appleTV': return 'Apple TV';
			case 'meta.webdav': return 'Webdav';
			case 'meta.lanSync': return 'LAN Sync';
			case 'meta.lanSyncNotQuitTips': return 'Do not exit this interface before synchronization is completed';
			case 'meta.deviceNoSpace': return 'Not enough disk space';
			case 'meta.hideSystemApp': return 'Hide System Apps';
			case 'meta.hideAppIcon': return 'Hide App Icons';
			case 'meta.hideDockIcon': return 'Hide Dock Icon';
			case 'meta.remark': return 'Remark';
			case 'meta.remarkExist': return 'Remark already exists, please use another name';
			case 'meta.remarkCannotEmpty': return 'Remarks can not be empty';
			case 'meta.remarkTooLong': return 'Remarks up to 32 characters';
			case 'meta.openDir': return 'Open File Directory';
			case 'meta.fileChoose': return 'Select File';
			case 'meta.filePathCannotEmpty': return 'The file path can not be empty';
			case 'meta.fileNotExist': return ({required Object p}) => 'File does not exist:${p}';
			case 'meta.fileTypeInvalid': return ({required Object p}) => 'Invalid file type:${p}';
			case 'meta.uwpExemption': return 'UWP Network Isolation Exemptions';
			case 'meta.rulesetGeoSite': return 'GeoSite';
			case 'meta.rulesetGeoIp': return 'GeoIP';
			case 'meta.rulesetAcl': return 'ACL';
			case 'meta.getProfile': return 'Get Profile';
			case 'meta.addProfile': return 'Add Profile';
			case 'meta.myProfiles': return 'My Profiles';
			case 'meta.myProfilesAtLeastOneReserveEnable': return 'Cannot be disabled, please keep at least one profile enable';
			case 'meta.profileEdit': return 'Profile Edit';
			case 'meta.profileEditUrlExist': return 'URL already exists, please use another URL';
			case 'meta.profileEditReloadAfterProfileUpdate': return 'Reload after Profile update';
			case 'meta.profileEditTestLatencyAfterProfileUpdate': return 'Start latency tests after Profile Automatically update';
			case 'meta.profileEditTestLatencyAfterProfileUpdateTips': return 'VPN needs to be connected, and [Reload after Profile update] Enabled';
			case 'meta.profileEditTestLatencyAutoRemove': return 'Automatically remove servers that fail latency tests';
			case 'meta.profileEditTestLatencyAutoRemoveTips': return 'Try up to 3 times';
			case 'meta.profileImport': return 'Import Profile File';
			case 'meta.profileAddUrlOrContent': return 'Add Profile Link';
			case 'meta.profileExists': return 'The Profile already exists, please do not add it repeatedly';
			case 'meta.profileUrlOrContent': return 'Profile Link/Content';
			case 'meta.profileUrlOrContentHit': return 'Profile Link/Content [Required] (Support Clash,V2ray(batch supported),Stash,Karing,Sing-box,Shadowsocks,Sub Profile links)';
			case 'meta.profileUrlOrContentCannotEmpty': return 'Profile Link can not be empty';
			case 'meta.profileAddFailedFormatException': return ({required Object p}) => 'The format is wrong, please correct it and add it again:${p}';
			case 'meta.profileAddFailedThenDownloadAndImport': return ({required Object p}) => 'Add failed: ${p}, please try to modify the [UserAgent] and try again, or use the device\'s built-in browser to open the configuration link and import the configuration file downloaded by the browser into this application';
			case 'meta.profileAddFailedHandshakeException': return ({required Object p}) => 'Add failed: ${p}, please tun on the proxy or modify the current proxy node and try again';
			case 'meta.profileAddParseFailed': return 'Parsing Profile failed';
			case 'meta.profileAddNoServerAvaliable': return 'No server avaliable, Make sure the Profile Link or Profile File is valid;  if your Profile comes from GitHub, please obtain the link from the [Raw] button on the page';
			case 'meta.profileAddWrapSuccess': return 'Profile generated successfully, please go to [${_root.meta.myProfiles}] to view';
			case 'diversionRulesKeep': return 'Keep [${_root.meta.isp}] ${_root.meta.diversionRules}';
			case 'diversionCustomGroupPreset': return 'Preset [${_root.meta.diversionCustomGroup}]';
			case 'diversionCustomGroupPresetTips': return 'Note: Enabled items will be added/overwritten to [${_root.meta.diversionCustomGroup}] and [${_root.meta.diversionRules}]';
			case 'diversionCustomGroupAddTips': return 'Note: After adding, you may need to manually adjust the order, otherwise the newly added diversion may not take effect';
			case 'rulesetEnableTips': return 'Tip: After turning on the options, please go to[${_root.meta.diversionRules}]to set the relevant rules, otherwise they will not take effect';
			case 'ispUserAgentTips': return '[${_root.meta.isp}] will send data of different subscription types based on [UserAgent] in [HTTP] request';
			case 'ispDiversionTips': return '[${_root.meta.isp}] provides traffic diversion rules; [V2Ray] type subscriptions do not support traffic diversion rules';
			case 'isp.bind': return 'Bind To [${_root.meta.isp}] ';
			case 'isp.unbind': return ({required Object p}) => 'Unbind[${p}]';
			case 'isp.faq': return ({required Object p}) => 'FAQ[${p}]';
			case 'isp.customerService': return ({required Object p}) => 'Telegram[${p}]';
			case 'isp.follow': return ({required Object p}) => 'Follow[${p}]';
			case 'isp.invalidOrExpired': return '[${_root.meta.isp}] Invalid or expired';
			case 'permission.camera': return 'Camera';
			case 'permission.screen': return 'Screen Recording';
			case 'permission.appQuery': return 'Get Application List';
			case 'permission.request': return ({required Object p}) => 'Turn on [${p}] permission';
			case 'permission.requestNeed': return ({required Object p}) => 'Please Turn on [${p}] permission';
			case 'tls.insecure': return 'Skip Certificate Verification';
			case 'tls.affectProtocolTips': return 'vless, vmess, trojan';
			case 'tls.fragmentEnable': return 'Enable TLS Fragment';
			case 'tls.fragmentSize': return 'TLS Fragment Size';
			case 'tls.fragmentSleep': return 'TLS Fragment Sleep';
			case 'tls.mixedCaseSNIEnable': return 'Enable TLS Mixed SNI';
			case 'tls.paddingEnable': return 'Enable TLS Padding';
			case 'tls.paddingSize': return 'TLS Padding Size';
			case 'outboundRuleMode.currentSelected': return 'Current Selected';
			case 'outboundRuleMode.urltest': return 'Auto Select';
			case 'outboundRuleMode.direct': return 'Direct';
			case 'outboundRuleMode.block': return 'Block';
			case 'dnsProxyResolveMode.proxy': return _root.outboundRuleMode.currentSelected;
			case 'dnsProxyResolveMode.direct': return _root.outboundRuleMode.direct;
			case 'dnsProxyResolveMode.fakeip': return 'FakeIP';
			case 'proxyStrategy.perferProxy': return '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
			case 'proxyStrategy.perferDirect': return '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
			case 'proxyStrategy.onlyProxy': return '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
			case 'proxyStrategy.onlyDirect': return '${_root.meta.only} ${_root.outboundRuleMode.direct}';
			case 'reloadReason.latencyTest': return '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
			case 'reloadReason.profileUpdate': return 'Profile Update';
			case 'theme.light': return 'Light';
			case 'theme.dark': return 'Dark';
			case 'theme.auto': return 'Auto';
			case 'downloadProxyStrategy': return 'Download Channel';
			case 'dnsProxyResolveModeTips': return '[${_root.dnsProxyResolveMode.proxy}]: Connect to the DNS server through the proxy server to resolve the domain name\n[${_root.dnsProxyResolveMode.direct}]: Connect directly to the DNS server to resolve the domain name\n[${_root.dnsProxyResolveMode.fakeip}]: The proxy server resolves the domain name on your behalf; if you disconnect the VPN connection, your application may need to be restarted; only effective for [TUN] inbound traffic';
			case 'routeFinal': return 'final';
			case 'protocolSniff': return 'Protocol Sniff';
			case 'sendOrReceiveNotMatch': return ({required Object p}) => 'Please use [${p}]';
			case 'turnOffPrivateDirect': return 'Please turn on [Private network direct connection] first';
			case 'targetConnectFailed': return ({required Object p}) => 'Failed to connect to [${p}]. Please make sure the devices are in the same LAN';
			case 'appleTVSync': return 'Synchronize the current core configuration to Apple TV - Karing';
			case 'appleTVSyncDone': return 'Synchronization is complete. Please go to Apple TV - Karing to start the connection/restart the connection';
			case 'appleTVRemoveCoreConfig': return 'Delete Apple TV - Karing Core Configuration';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - Karing\'s Core Configuration deleted; VPN service disconnected';
			case 'appleTVUrlInvalid': return 'Invalid URL, please open Apple TV - Karing and scan the QR code displayed by Karing';
			case 'appleTV404': return ({required Object p}) => 'AppleTV:Karing[${p}] does not have this function, please upgrade and try again';
			case 'appleCoreVersionNotMatch': return ({required Object p}) => 'The core major version does not match, please upgrade [${p}] and try again';
			case 'remoteProfileEditConfirm': return 'After the Profile is updated, the node changes will be restored. Continue?';
			case 'mustBeValidHttpsURL': return 'Must be Valid https URL';
			case 'fileNotExistReinstall': return ({required Object p}) => 'File missing [${p}], please reinstall';
			case 'noNetworkConnect': return 'No Internet connection';
			case 'sudoPassword': return 'sudo password (required for TUN mode)';
			case 'turnOffNetworkBeforeInstall': return 'It is recommended to switch to [Airplane Mode] before installing the update';
			case 'latencyTestResolveIP': return 'When manually checking, resolve the outlet IP';
			case 'removeBannerAdsByShare': return 'Share [Karing] to remove ads';
			case 'removeBannerAdsByReward': return 'Watch an ad to remove ads';
			case 'removeBannerAdsByShareTip': return ({required Object p, required Object d}) => 'Share once and you will get ${p} days of ad-free rewards (can be stacked, up to ${d} days)';
			case 'removeBannerAdsByRewardTip': return ({required Object p}) => 'Watch an ad and you will get ${p} days of ad-free rewards (not cumulative)';
			case 'removeBannerAdsDone': return ({required Object p}) => 'Received ${p} days of ad-free rewards';
			case 'maybeAdsByReward': return 'You may need to watch an ad before using this feature. Click [${_root.meta.ok}] to continue';
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

