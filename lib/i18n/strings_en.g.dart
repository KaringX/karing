///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
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

	/// en: 'Auto Download Update Packages'
	String get autoDownloadPkg => 'Auto Download Update Packages';

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

	/// en: 'Invalid [$p0]:$p'
	String invalid({required Object p0, required Object p}) => 'Invalid [${p0}]:${p}';

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

	/// en: 'Auto Connection after System Startup'
	String get autoConnectAtBoot => 'Auto Connection after System Startup';

	/// en: 'System support is required; some systems may also require [auto-start] to be enabled.'
	String get autoConnectAtBootTips => 'System support is required; some systems may also require [auto-start] to be enabled.';

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

	/// en: 'Reconnect takes effect'
	String get reconnectTakesEffect => 'Reconnect takes effect';

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

	/// en: 'Milliseconds'
	String get milliseconds => 'Milliseconds';

	/// en: 'Tolerance'
	String get tolerance => 'Tolerance';

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

	/// en: 'Destination'
	String get destination => 'Destination';

	/// en: 'IP'
	String get outletIpByCurrentSelected => 'IP';

	/// en: 'IP:Direct'
	String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';

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

	/// en: 'You need to enable [TUN HijackDNS] or [Resolve Inbound Domain names].'
	String get staticIPTips => 'You need to enable [TUN HijackDNS] or [${_root.SettingsScreen.inboundDomainResolve}].';

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

	/// en: 'Percentage'
	String get percentage => 'Percentage';

	/// en: 'Statistics'
	String get statistics => 'Statistics';

	/// en: 'Statistics and Analysis'
	String get statisticsAndAnalysis => 'Statistics and Analysis';

	/// en: 'Data Desensitization'
	String get statisticsDataDesensitize => 'Data Desensitization';

	/// en: 'Process/package ID/target domain name/target IP etc. will be replaced with * and saved after desensitization'
	String get statisticsDataDesensitizeTips => 'Process/package ID/target domain name/target IP etc. will be replaced with * and saved after desensitization';

	/// en: 'Records'
	String get records => 'Records';

	/// en: 'Request Records'
	String get requestRecords => 'Request Records';

	/// en: 'Net Interfaces'
	String get netInterfaces => 'Net Interfaces';

	/// en: 'Speed'
	String get netSpeed => 'Speed';

	/// en: 'Memory Trend chart'
	String get memoryTrendChart => 'Memory Trend chart';

	/// en: 'GoRoutines Trend chart'
	String get goroutinesTrendChart => 'GoRoutines Trend chart';

	/// en: 'Traffic Trend Chart'
	String get trafficTrendChart => 'Traffic Trend Chart';

	/// en: 'Traffic Distribution Chart'
	String get trafficDistributionChart => 'Traffic Distribution Chart';

	/// en: 'Connection Trend Chart'
	String get connectionChart => 'Connection Trend Chart';

	/// en: 'Memory Trend chart'
	String get memoryChart => 'Memory Trend chart';

	/// en: 'Traffic statistics'
	String get trafficStatistics => 'Traffic statistics';

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

	/// en: 'Profile'
	String get profile => 'Profile';

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

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Install Refer',
			'AboutScreen.installTime' => 'Install Time',
			'AboutScreen.versionChannel' => 'Auto Update Channel',
			'AboutScreen.autoDownloadPkg' => 'Auto Download Update Packages',
			'AboutScreen.disableUAReport' => 'Application Improvement Data',
			'AboutScreen.disableUAReportTip' => '[App Improvement Data] helps us improve the product experience; versions lower than the main version will automatically turn off all [App Improvement Data] except [App Activation]',
			'AboutScreen.devOptions' => 'Developer Options',
			'AboutScreen.enableDebugLog' => 'Enable Debug Log',
			'AboutScreen.viewFilsContent' => 'View Files',
			'AboutScreen.enablePprof' => 'Enable pprof',
			'AboutScreen.pprofPanel' => 'pprof Panel',
			'AboutScreen.allowRemoteAccessPprof' => 'Allow remote access to ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Allow remote access${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Use original sing-box Profile',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'Server Url',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Can not be empty',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Login failed:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Failed to get file list:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'Invalid [Domain]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'Invalid [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Invalid [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'Invalid [Rule Set]:${p}, The URL must be a valid https URL and a binary file with the file extension .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'Invalid [Rule Set(build-in)]:${p}, The format is geosite:xxx or geoip:xxx or acl:xxx, and xxx should be a valid rule name',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'Invalid [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Tip: After saving, please go to [${_root.meta.diversionRules}] to set relevant rules, otherwise they will not take effect',
			'DiversionRuleDetectScreen.title' => 'Diversion Rule Detect',
			'DiversionRuleDetectScreen.rule' => 'Rule:',
			'DiversionRuleDetectScreen.outbound' => 'Proxy Server:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Tip: Try to match the rules from top to bottom. If no rule is matched, use [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP can not be empty',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL can not be empty',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Unsupported type:${p}',
			'DnsSettingsScreen.dnsDesc' => 'The first column of delay data is the direct connection query delay;\nThe second column: Turn on [[Proxy Traffic]Resolve DNS through proxy server]: the delay data is the query delay forwarded through the current proxy server; if the [[Proxy Traffic]Resolve DNS through proxy server]: The delay data is the direct connection query delay',
			'FileContentViewerScreen.title' => 'File Content Viewer',
			'FileContentViewerScreen.clearFileContent' => 'Are you sure to clear the content of the file?',
			'FileContentViewerScreen.clearFileContentTips' => 'Are you sure to clear the content of the Profile file? Clearing the Profile file may cause data loss or abnormal application functions, please operate with caution',
			'HomeScreen.toSelectServer' => 'Please Select a Server',
			'HomeScreen.invalidServer' => 'is invalid, please select again',
			'HomeScreen.disabledServer' => 'is disabled, please select again',
			'HomeScreen.expiredServer' => 'No servers available, profiles may be expired or disabled',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'Please set up [Shortcut Link] before using it',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}], and the connection may fail due to system memory limitations',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}] may cause slow or inaccessible connections',
			'LaunchFailedScreen.invalidProcess' => 'The app failed to start [Invalid process name], please reinstall the app to a separate directory',
			'LaunchFailedScreen.invalidProfile' => 'The app failed to start [Failed to access the profile], please reinstall the app',
			'LaunchFailedScreen.invalidVersion' => 'The app failed to start [Invalid version], please reinstall the app',
			'LaunchFailedScreen.systemVersionLow' => 'The app failed to start [system version too low]',
			'LaunchFailedScreen.invalidInstallPath' => 'The installation path is invalid, please reinstall it to a valid path',
			'MyProfilesMergeScreen.profilesMerge' => 'Profiles Merge',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Target Profile',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Source Profiles',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Tip: Diversion of the source profiles will be discarded',
			'NetCheckScreen.title' => 'Net Check',
			'NetCheckScreen.warn' => 'Note: Due to the influence of network environment and diversion rules, the test results are not completely equivalent to the actual results.',
			'NetCheckScreen.invalidDomain' => 'Invalid Domain Name',
			'NetCheckScreen.connectivity' => 'Network Connectivity',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Ipv4 Connection test [${p}] all failed',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Ipv4 connection succeeded',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Ipv6 Connection test [${p}] all failed, Your network may not support ipv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Ipv6 connection succeeded',
			'NetCheckScreen.connectivityTestOk' => 'The network is connected to the Internet',
			'NetCheckScreen.connectivityTestFailed' => 'The network is not yet connected to the Internet',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'All downloaded successfully',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Downloading or download failed',
			'NetCheckScreen.outbound' => 'Proxy Server',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] connection succeeded',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] connection failed\nError:[${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS Server',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS query succeeded\nDNS Rule:[${p2}]\nLatency:[${p3} ms]\nAddress:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS query succeeded\n nDNS Rule:[${p2}]\nError:[${p3}]',
			'NetCheckScreen.host' => 'HTTP Connection',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nDiversionRule:[${p2}]\nProxy Server:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'connection succeeded',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'connection failed:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Domain/IP',
			'NetConnectionsFilterScreen.app' => 'App',
			'NetConnectionsFilterScreen.rule' => 'Rule',
			'NetConnectionsFilterScreen.chain' => 'Outbound',
			'NetConnectionsScreen.copyAsCSV' => 'Copied to CSV format',
			'NetConnectionsScreen.selectType' => 'Select Diversion Type',
			'PerAppAndroidScreen.title' => 'Per-App Proxy',
			'PerAppAndroidScreen.whiteListMode' => 'Whitelist Mode',
			'PerAppAndroidScreen.whiteListModeTip' => 'When enabled: only the apps that have been checked are proxies; when not enabled: only the apps that are not checked are proxies',
			'RegionSettingsScreen.title' => 'Country Or Region',
			'RegionSettingsScreen.Regions' => 'Tip: Please set your current country or region correctly, otherwise it may cause network diversion problems',
			'ServerSelectScreen.title' => 'Select Server',
			'ServerSelectScreen.autoSelectServer' => 'Auto select the server with the lowest latency',
			'ServerSelectScreen.recentUse' => 'Recently Used',
			'ServerSelectScreen.myFav' => 'My Favs',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'The selected server is a local address and may not work properly:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'The selected server is an IPv6 address and requires [Enable IPv6]',
			'ServerSelectScreen.selectDisabled' => 'This server has been disabled',
			'ServerSelectScreen.error404' => 'Latency detection encountered an error, please check if there is a configuration with the same content',
			'SettingsScreen.getTranffic' => 'Get Traffic',
			'SettingsScreen.tutorial' => 'Tutorial',
			'SettingsScreen.commonlyUsedRulesets' => 'Commonly Used Rulesets',
			'SettingsScreen.howToRemoveAds' => 'How to remove ads',
			'SettingsScreen.htmlBoard' => 'Online Panel',
			'SettingsScreen.dnsLeakDetection' => 'DNS Leaks Detection',
			'SettingsScreen.proxyLeakDetection' => 'Proxy Leaks Detection',
			'SettingsScreen.speedTest' => 'Speed Test',
			'SettingsScreen.rulesetDirectDownlad' => 'Rule Set Direct Download',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Hide Unused Diversion Rules',
			'SettingsScreen.disableISPDiversionGroup' => 'Disable [${_root.meta.isp}] ${_root.meta.diversionRules}',
			'SettingsScreen.portSettingRule' => 'Rule Based',
			'SettingsScreen.portSettingDirectAll' => 'Direct All',
			'SettingsScreen.portSettingProxyAll' => 'Proxy All',
			'SettingsScreen.portSettingControl' => 'Control and Sync',
			'SettingsScreen.portSettingCluster' => 'Cluster Service',
			'SettingsScreen.modifyPort' => 'Modify Port',
			'SettingsScreen.modifyPortOccupied' => 'The port is occupied, please use another port',
			'SettingsScreen.ipStrategyTips' => 'Before enabling, please confirm that your network supports IPv6, otherwise some traffic cannot be accessed normally.',
			'SettingsScreen.tunAppendHttpProxy' => 'Append HTTP Proxy to VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Some apps will bypass virtual NIC Device and directly connect to HTTP proxy',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Domains allowed to bypass HTTP proxy',
			'SettingsScreen.dnsEnableRule' => 'Enable DNS Diversion rules',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] Resolve Channel',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] Enable ECS',
			'SettingsScreen.dnsTestDomain' => 'Test Domain',
			'SettingsScreen.dnsTestDomainInvalid' => 'Invalid Domain',
			'SettingsScreen.dnsTypeOutbound' => 'Proxy Server',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS Server',
			'SettingsScreen.dnsEnableRuleTips' => 'After enabling, the domain name will select the corresponding DNS server for resolution according to the diversion rules',
			'SettingsScreen.dnsEnableFakeIpTips' => 'After enabling FakeIP, if you disconnect from VPN, your app may need to be restarted; this feature requires [TUN mode] to be enabled',
			'SettingsScreen.dnsTypeOutboundTips' => 'Domain name resolution for [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Domain name resolution for [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Domain name resolution for [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Domain name resolution for [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Auto Setup Server',
			'SettingsScreen.dnsResetServer' => 'Reset Server',
			'SettingsScreen.inboundDomainResolve' => 'Resolve Inbound Domain names',
			'SettingsScreen.privateDirect' => 'Private Network Direct connection',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Some domain names that are not configured with diversion rules need to be resolved before they can hit the IP-based diversion rules; this feature affects inbound requests to the proxy port [${p}]',
			'SettingsScreen.useRomoteRes' => 'Use Remote Resources',
			'SettingsScreen.autoAppendRegion' => 'Auto attach basic rules',
			'SettingsScreen.autoSelect' => 'Auto Select',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Ignore [Front/Chaine] Proxy Servers',
			'SettingsScreen.autoSelectServerInterval' => 'Latency Checks Interval',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Current server health check interval',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Re-check Latency when Network Changes',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Update the Current Server after Manual Latency Check',
			'SettingsScreen.autoSelectServerIntervalTips' => 'The shorter the time interval, the more timely the server latency data updates, which will occupy more resources and consume more power',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'If the check fails, the server is switched; if no available server is found when switching the server, the group will re-check latency',
			'SettingsScreen.autoSelectServerFavFirst' => 'Pri-Use [My Favs]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'If the [My Favs] list is not empty, Then use the servers in [My Favs]',
			'SettingsScreen.autoSelectServerFilter' => 'Filter Invalid Servers',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Server latency checks that fail will be filtered out; if no server is available after filtering, the first [${p}] servers will be used instead',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Maximum number of servers',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Servers exceeding this number will be filtered out',
			'SettingsScreen.numInvalid' => 'Invalid number',
			'SettingsScreen.hideInvalidServer' => 'Hide Invalid Servers',
			'SettingsScreen.sortServer' => 'Servers Sorting',
			'SettingsScreen.sortServerTips' => 'Sort by latency from low to high',
			'SettingsScreen.selectServerHideRecommand' => 'Hide [Recommend]',
			'SettingsScreen.selectServerHideRecent' => 'Hide [Recently Used]',
			'SettingsScreen.selectServerHideFav' => 'Hide [My Favs]',
			'SettingsScreen.homeScreen' => 'Home Screen',
			'SettingsScreen.theme' => 'Theme',
			'SettingsScreen.widgetsAlpha' => 'Widgets Alpha',
			'SettingsScreen.widgetsEmpty' => 'No Widget Available',
			'SettingsScreen.backgroundImage' => 'Background Image',
			'SettingsScreen.myLink' => 'Shortcut Link',
			'SettingsScreen.autoConnectAfterLaunch' => 'Auto Connection after Launch',
			'SettingsScreen.autoConnectAtBoot' => 'Auto Connection after System Startup',
			'SettingsScreen.autoConnectAtBootTips' => 'System support is required; some systems may also require [auto-start] to be enabled.',
			'SettingsScreen.hideAfterLaunch' => 'Hide window after startup',
			'SettingsScreen.autoSetSystemProxy' => 'Auto Set System Proxy when Connected',
			'SettingsScreen.bypassSystemProxy' => 'Domain names that are allowed to bypass the system proxy',
			'SettingsScreen.disconnectWhenQuit' => 'Disconnect when App Exits',
			'SettingsScreen.excludeFromRecent' => 'Hide from [Recent Tasks]',
			'SettingsScreen.wakeLock' => 'Wake Lock',
			'SettingsScreen.hideVpn' => 'Hide VPN Icon',
			'SettingsScreen.hideVpnTips' => 'Enabling IPv6 will cause this function to fail',
			'SettingsScreen.allowBypass' => 'Allow Apps to Bypass VPN',
			'SettingsScreen.importSuccess' => 'Import Success',
			'SettingsScreen.rewriteConfirm' => 'This file will overwrite the existing local configuration. Do you want to continue?',
			'SettingsScreen.mergePerapp' => 'Merge local [${_root.PerAppAndroidScreen.title}] lists',
			'SettingsScreen.networkShare' => 'Network Sharing',
			'SettingsScreen.frontProxy' => 'Front/Chain Proxy',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Data->Front/Chaine Proxy Server [Multiple Proxy Servers: Top to Bottom]->Proxy Server [${p}]->Target Server',
			'SettingsScreen.allowOtherHostsConnect' => 'Allow Others to Connect',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Due to system limitations, after this is enabled, applications on this device that use http to access the network may not be able to connect to the network properly.',
			'SettingsScreen.tunAutoRoute' => 'Auto Route',
			'SettingsScreen.tunAutoRedirect' => 'Auto Redirect',
			'SettingsScreen.tunStrictRoute' => 'Strict Route',
			'SettingsScreen.tunStrictRouteTips' => 'If after turning on sharing, others cannot access this device, please try turning off this switch',
			'SettingsScreen.loopbackAddress' => 'Loopback Address',
			'SettingsScreen.enableCluster' => 'Enable Socks/Http Proxy Cluster',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Allow Others to Connect to Cluster',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Proxy Cluster Authentication',
			'SettingsScreen.tunMode' => 'TUN Mode',
			'SettingsScreen.tuni4Address' => 'IP address',
			'SettingsScreen.tunModeTips' => 'The TUN mode will take over all the traffic of the system [In this mode, you can leave the system proxy unenabled]',
			'SettingsScreen.tunModeRunAsAdmin' => 'The TUN mode requires system administrator permissions, please restart the app as an administrator',
			'SettingsScreen.tunStack' => 'Stack',
			'SettingsScreen.tunHijackTips' => 'After closing, DNS requests from TUN will be forwarded directly to the corresponding DNS server',
			'SettingsScreen.launchAtStartup' => 'Launch at Startup',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Exit App when Switch System Users',
			'SettingsScreen.handleScheme' => 'System Scheme Call',
			'SettingsScreen.portableMode' => 'Portable Mode',
			'SettingsScreen.portableModeDisableTips' => 'If you need to exit portable mode, please exit [karing] and manually delete the [profiles] folder in the same directory as [karing.exe]',
			'SettingsScreen.handleKaringScheme' => 'Handle karing:// Call',
			'SettingsScreen.handleClashScheme' => 'Handle clash:// Call',
			'SettingsScreen.handleSingboxScheme' => 'Handle sing-box:// Call',
			'SettingsScreen.alwayOnVPN' => 'Always-on Connection',
			'SettingsScreen.disconnectAfterSleep' => 'Disconnect after system sleep',
			'SettingsScreen.removeSystemVPNConfig' => 'Delete system VPN configuration',
			'SettingsScreen.timeConnectOrDisconnect' => 'Scheduled connect/disconnect',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN must be connected to take effect; after it is turned on, [Automatic Sleep] will be disabled',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'The connection/disconnection interval cannot be less than ${p} minutes',
			'SettingsScreen.disableFontScaler' => 'Disable Font scaling(Restart takes effect)',
			'SettingsScreen.autoOrientation' => 'Rotate with the screen',
			'SettingsScreen.restartTakesEffect' => 'Restart takes effect',
			'SettingsScreen.reconnectTakesEffect' => 'Reconnect takes effect',
			'SettingsScreen.resetSettings' => 'Reset Settings',
			'SettingsScreen.cleanCache' => 'Cleanup Cache',
			'SettingsScreen.cleanCacheDone' => 'Cleanup completed',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Update Version ${p}',
			'SettingsScreen.follow' => 'Follow Us',
			'SettingsScreen.contactUs' => 'Contact Us',
			'SettingsScreen.supportUs' => 'Support Us',
			'SettingsScreen.rateInApp' => 'Rate Us',
			'SettingsScreen.rateInAppStore' => 'Rate Us in AppStore',
			'UserAgreementScreen.privacyFirst' => 'Your Privacy Comes First',
			'UserAgreementScreen.agreeAndContinue' => 'Accept & Continue',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'The new version[${p}] is ready',
			'VersionUpdateScreen.update' => 'Restart To Update',
			'VersionUpdateScreen.cancel' => 'Not Now',
			'CommonWidget.diableAlwayOnVPN' => 'If [Always on VPN] is turned on, please turn off [Always on VPN] and try connecting again',
			'CommonWidget.resetPort' => 'Please change the port to another available port or close the application occupying the port.',
			'main.tray.menuOpen' => '    Open    ',
			'main.tray.menuExit' => '    Exit    ',
			'meta.enable' => 'Enable',
			'meta.disable' => 'Disable',
			'meta.bydefault' => 'Default',
			'meta.filter' => 'Filter',
			'meta.filterMethod' => 'Filter Method',
			'meta.include' => 'Include',
			'meta.exclude' => 'Exclude',
			'meta.all' => 'All',
			'meta.prefer' => 'Prefer',
			'meta.only' => 'Only',
			'meta.open' => 'Open',
			'meta.close' => 'Close',
			'meta.quit' => 'Quit',
			'meta.add' => 'Add',
			'meta.addSuccess' => 'Added successfully',
			'meta.addFailed' => ({required Object p}) => 'Add failed:${p}',
			'meta.remove' => 'Remove',
			'meta.removeConfirm' => 'Are you sure to delete?',
			'meta.edit' => 'Edit',
			'meta.view' => 'View',
			'meta.more' => 'More',
			'meta.tips' => 'Info',
			'meta.copy' => 'Copy',
			'meta.save' => 'Save',
			'meta.ok' => 'Ok',
			'meta.cancel' => 'Cancel',
			'meta.feedback' => 'Feedback',
			'meta.feedbackContent' => 'Feedback Content',
			'meta.feedbackContentHit' => 'Required, up to 500 characters',
			'meta.feedbackContentCannotEmpty' => 'Feedback content can not be empty',
			'meta.faq' => 'FAQ',
			'meta.download' => 'Download',
			'meta.upload' => 'Upload',
			'meta.downloadSpeed' => 'Download Speed',
			'meta.uploadSpeed' => 'Upload Speed',
			'meta.loading' => 'Loading...',
			'meta.convert' => 'Convert',
			'meta.check' => 'Check',
			'meta.detect' => 'Detect',
			'meta.cache' => 'Cache',
			'meta.days' => 'Days',
			'meta.hours' => 'Hours',
			'meta.minutes' => 'Minutes',
			'meta.seconds' => 'Seconds',
			'meta.milliseconds' => 'Milliseconds',
			'meta.tolerance' => 'Tolerance',
			'meta.dateTimePeriod' => 'Time period',
			'meta.protocol' => 'Protocol',
			'meta.search' => 'Search',
			'meta.custom' => 'Custom',
			'meta.inbound' => 'Inbound',
			'meta.outbound' => 'Outbound',
			'meta.destination' => 'Destination',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Connect',
			'meta.disconnect' => 'Disconnect',
			'meta.reconnect' => 'Reconnect',
			'meta.connected' => 'Connected',
			'meta.disconnected' => 'Disconnected',
			'meta.connecting' => 'Connecting',
			'meta.connectTimeout' => 'Connect Timeout',
			'meta.timeout' => 'Timeout',
			'meta.timeoutDuration' => 'Timeout Duration',
			'meta.runDuration' => 'Run Duration',
			'meta.latency' => 'Latency',
			'meta.latencyTest' => 'Latency Checks',
			'meta.language' => 'Language',
			'meta.next' => 'Next',
			'meta.done' => 'Done',
			'meta.apply' => 'Apply',
			'meta.refresh' => 'Refresh',
			'meta.retry' => 'Retry?',
			'meta.update' => 'Update',
			'meta.updateInterval' => 'Update interval',
			'meta.updateInterval5mTips' => 'Minimum: 5m',
			'meta.updateFailed' => ({required Object p}) => 'Update failed:${p}',
			'meta.samplingUnit' => 'Sampling Time Unit',
			'meta.queryResultCount' => 'Number of Query Results',
			'meta.queryLimit' => ({required Object p}) => 'Display up to ${p} data',
			'meta.none' => 'None',
			'meta.start' => 'Start',
			'meta.pause' => 'Pause',
			'meta.reset' => 'Reset',
			'meta.submit' => 'Submit',
			'meta.user' => 'User',
			'meta.account' => 'Account',
			'meta.password' => 'Password',
			'meta.required' => 'Required',
			'meta.type' => 'Type',
			'meta.path' => 'Path',
			'meta.local' => 'Local',
			'meta.remote' => 'Remote',
			'meta.other' => 'Other',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'Invalid URL',
			'meta.urlCannotEmpty' => 'Link can not be empty',
			'meta.urlTooLong' => 'URL is too long (>8182)',
			'meta.copyUrl' => 'Copy Link',
			'meta.openUrl' => 'Open Link',
			'meta.shareUrl' => 'Share Link',
			'meta.speedTestUrl' => 'Speed Test URL',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'Static IP',
			'meta.staticIPTips' => 'You need to enable [TUN HijackDNS] or [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'VPN Provider',
			'meta.domainSuffix' => 'Domain Suffix',
			'meta.domain' => 'Domain',
			'meta.domainKeyword' => 'Domain Keyword',
			'meta.domainRegex' => 'Domain Regex',
			'meta.ip' => 'IP',
			'meta.port' => 'Port',
			'meta.portRange' => 'Port range',
			'meta.appPackage' => 'App Package Id',
			'meta.processName' => 'Process Name',
			'meta.processPath' => 'Process Path',
			'meta.processDir' => 'Process Directory',
			'meta.systemProxy' => 'System Proxy',
			'meta.percentage' => 'Percentage',
			'meta.statistics' => 'Statistics',
			'meta.statisticsAndAnalysis' => 'Statistics and Analysis',
			'meta.statisticsDataDesensitize' => 'Data Desensitization',
			'meta.statisticsDataDesensitizeTips' => 'Process/package ID/target domain name/target IP etc. will be replaced with * and saved after desensitization',
			'meta.records' => 'Records',
			'meta.requestRecords' => 'Request Records',
			'meta.netInterfaces' => 'Net Interfaces',
			'meta.netSpeed' => 'Speed',
			'meta.memoryTrendChart' => 'Memory Trend chart',
			'meta.goroutinesTrendChart' => 'GoRoutines Trend chart',
			'meta.trafficTrendChart' => 'Traffic Trend Chart',
			'meta.trafficDistributionChart' => 'Traffic Distribution Chart',
			'meta.connectionChart' => 'Connection Trend Chart',
			'meta.memoryChart' => 'Memory Trend chart',
			'meta.trafficStatistics' => 'Traffic statistics',
			'meta.traffic' => 'Traffic',
			'meta.trafficTotal' => 'Total Traffic',
			'meta.trafficProxy' => 'Proxy Traffic',
			'meta.trafficDirect' => 'Direct Traffic',
			'meta.website' => 'Website',
			'meta.memory' => 'Memory',
			'meta.outboundMode' => 'Outbound Mode',
			'meta.rule' => 'Rule',
			'meta.global' => 'Global',
			'meta.qrcode' => 'QR Code',
			'meta.qrcodeTooLong' => 'The text is too long to display',
			'meta.qrcodeShare' => 'Share QR Code',
			'meta.textToQrcode' => 'Text To QR Code',
			'meta.qrcodeScan' => 'Scan QR Code',
			'meta.qrcodeScanResult' => 'Scan Result',
			'meta.qrcodeScanFromImage' => 'Scan From Image',
			'meta.qrcodeScanResultFailed' => 'Failed to parse the image, please make sure the screenshot is a valid QR code',
			'meta.qrcodeScanResultEmpty' => 'Scan Result is empty',
			'meta.screenshot' => 'Screenshot',
			'meta.backupAndSync' => 'Backup and Sync',
			'meta.autoBackup' => 'Auto backup',
			'meta.noProfileGotAutoBackup' => 'If data such as [${_root.meta.myProfiles}] is lost, you can restore it from [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] or other backup sources (such as iCloud or Webdav, etc.)',
			'meta.autoBackupAddProfile' => 'After adding the Profile',
			'meta.autoBackupRemoveProfile' => 'After deleting the Profile',
			'meta.profile' => 'Profile',
			'meta.currentProfile' => 'Current Profile',
			'meta.importAndExport' => 'Import and Export',
			'meta.import' => 'Import',
			'meta.importFromUrl' => 'Import from URL',
			'meta.export' => 'Export',
			'meta.send' => 'Send',
			'meta.receive' => 'Receive',
			'meta.sendConfirm' => 'Confirm to send?',
			'meta.termOfUse' => 'Terms of Service',
			'meta.privacyPolicy' => 'Privacy & Policy',
			'meta.about' => 'About',
			'meta.name' => 'Name',
			'meta.version' => 'Version',
			'meta.notice' => 'Notice',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Action:${p}\nReason:${p1}',
			'meta.sort' => 'Reorder',
			'meta.novice' => 'Novice Mode',
			'meta.willCompleteAfterRebootInstall' => 'Please restart your device to complete the system extension installation',
			'meta.willCompleteAfterRebootUninstall' => 'Please restart your device to complete the the system extension uninstallation',
			'meta.requestNeedsUserApproval' => '1. Please [Allow] Karing to install system extensions in [System Settings]-[Privacy and Security]\n2. [System Settings]-[General]-[Login Items Extensions]-[Network Extension] enable [karingServiceSE]\nreconnect after completion',
			'meta.FullDiskAccessPermissionRequired' => 'Please enable [karingServiceSE] permission in [System Settings]-[Privacy and Security]-[Full Disk Access Permission] and reconnect',
			'meta.tvMode' => 'TV Mode',
			'meta.recommended' => 'Recommend',
			'meta.innerError' => ({required Object p}) => 'Inner Error:${p}',
			'meta.logicOperation' => 'Logic Operation',
			'meta.share' => 'Share',
			'meta.candidateWord' => 'Candidate Words',
			'meta.keywordOrRegx' => 'Keywords/Regular',
			'meta.importFromClipboard' => 'Import From Clipboard',
			'meta.exportToClipboard' => 'Export to Clipboard',
			'meta.server' => 'Server',
			'meta.ads' => 'Ads',
			'meta.adsRemove' => 'Remove ads',
			'meta.adsBanner' => 'Banner ads',
			'meta.donate' => 'Donate',
			'meta.diversion' => 'Diversion',
			'meta.diversionRules' => 'Diversion Rules',
			'meta.diversionCustomGroup' => 'Custom Diversion Group',
			'meta.urlTestCustomGroup' => 'Custom Auto Select',
			'meta.setting' => 'Settings',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN Sync',
			'meta.lanSyncNotQuitTips' => 'Do not exit this interface before synchronization is completed',
			'meta.deviceNoSpace' => 'Not enough disk space',
			'meta.hideSystemApp' => 'Hide System Apps',
			'meta.hideAppIcon' => 'Hide App Icons',
			'meta.hideDockIcon' => 'Hide Dock Icon',
			'meta.remark' => 'Remark',
			'meta.remarkExist' => 'Remark already exists, please use another name',
			'meta.remarkCannotEmpty' => 'Remarks can not be empty',
			'meta.remarkTooLong' => 'Remarks up to 32 characters',
			'meta.openDir' => 'Open File Directory',
			'meta.fileChoose' => 'Select File',
			'meta.filePathCannotEmpty' => 'The file path can not be empty',
			'meta.fileNotExist' => ({required Object p}) => 'File does not exist:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Invalid file type:${p}',
			'meta.uwpExemption' => 'UWP Network Isolation Exemptions',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Get Profile',
			'meta.addProfile' => 'Add Profile',
			'meta.myProfiles' => 'My Profiles',
			'meta.myProfilesAtLeastOneReserveEnable' => 'Cannot be disabled, please keep at least one profile enable',
			'meta.profileEdit' => 'Profile Edit',
			'meta.profileEditUrlExist' => 'URL already exists, please use another URL',
			'meta.profileEditReloadAfterProfileUpdate' => 'Reload after Profile update',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Start latency tests after Profile Automatically update',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN needs to be connected, and [Reload after Profile update] Enabled',
			'meta.profileEditTestLatencyAutoRemove' => 'Automatically remove servers that fail latency tests',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Try up to 3 times',
			'meta.profileImport' => 'Import Profile File',
			'meta.profileAddUrlOrContent' => 'Add Profile Link',
			'meta.profileExists' => 'The Profile already exists, please do not add it repeatedly',
			'meta.profileUrlOrContent' => 'Profile Link/Content',
			'meta.profileUrlOrContentHit' => 'Profile Link/Content [Required] (Support Clash,V2ray(batch supported),Stash,Karing,Sing-box,Shadowsocks,Sub Profile links)',
			'meta.profileUrlOrContentCannotEmpty' => 'Profile Link can not be empty',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'The format is wrong, please correct it and add it again:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Add failed: ${p}, please try to modify the [UserAgent] and try again, or use the device\'s built-in browser to open the configuration link and import the configuration file downloaded by the browser into this application',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Add failed: ${p}, please tun on the proxy or modify the current proxy node and try again',
			'meta.profileAddParseFailed' => 'Parsing Profile failed',
			'meta.profileAddNoServerAvaliable' => 'No server avaliable, Make sure the Profile Link or Profile File is valid;  if your Profile comes from GitHub, please obtain the link from the [Raw] button on the page',
			'meta.profileAddWrapSuccess' => 'Profile generated successfully, please go to [${_root.meta.myProfiles}] to view',
			'diversionRulesKeep' => 'Keep [${_root.meta.isp}] ${_root.meta.diversionRules}',
			'diversionCustomGroupPreset' => 'Preset [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Note: Enabled items will be added/overwritten to [${_root.meta.diversionCustomGroup}] and [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Note: After adding, you may need to manually adjust the order, otherwise the newly added diversion may not take effect',
			'rulesetEnableTips' => 'Tip: After turning on the options, please go to[${_root.meta.diversionRules}]to set the relevant rules, otherwise they will not take effect',
			'ispUserAgentTips' => '[${_root.meta.isp}] will send data of different subscription types based on [UserAgent] in [HTTP] request',
			'ispDiversionTips' => '[${_root.meta.isp}] provides traffic diversion rules; [V2Ray] type subscriptions do not support traffic diversion rules',
			'isp.bind' => 'Bind To [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Unbind[${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'Follow[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] Invalid or expired',
			'permission.camera' => 'Camera',
			'permission.screen' => 'Screen Recording',
			'permission.appQuery' => 'Get Application List',
			'permission.request' => ({required Object p}) => 'Turn on [${p}] permission',
			'permission.requestNeed' => ({required Object p}) => 'Please Turn on [${p}] permission',
			'tls.insecure' => 'Skip Certificate Verification',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Enable TLS Fragment',
			'tls.fragmentSize' => 'TLS Fragment Size',
			'tls.fragmentSleep' => 'TLS Fragment Sleep',
			'tls.mixedCaseSNIEnable' => 'Enable TLS Mixed SNI',
			'tls.paddingEnable' => 'Enable TLS Padding',
			'tls.paddingSize' => 'TLS Padding Size',
			'outboundRuleMode.currentSelected' => 'Current Selected',
			_ => null,
		} ?? switch (path) {
			'outboundRuleMode.urltest' => 'Auto Select',
			'outboundRuleMode.direct' => 'Direct',
			'outboundRuleMode.block' => 'Block',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Profile Update',
			'theme.light' => 'Light',
			'theme.dark' => 'Dark',
			'theme.auto' => 'Auto',
			'downloadProxyStrategy' => 'Download Channel',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Connect to the DNS server through the proxy server to resolve the domain name\n[${_root.dnsProxyResolveMode.direct}]: Connect directly to the DNS server to resolve the domain name\n[${_root.dnsProxyResolveMode.fakeip}]: The proxy server resolves the domain name on your behalf; if you disconnect the VPN connection, your application may need to be restarted; only effective for [TUN] inbound traffic',
			'routeFinal' => 'final',
			'protocolSniff' => 'Protocol Sniff',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Please use [${p}]',
			'turnOffPrivateDirect' => 'Please turn on [Private network direct connection] first',
			'targetConnectFailed' => ({required Object p}) => 'Failed to connect to [${p}]. Please make sure the devices are in the same LAN',
			'appleTVSync' => 'Synchronize the current core configuration to Apple TV - Karing',
			'appleTVSyncDone' => 'Synchronization is complete. Please go to Apple TV - Karing to start the connection/restart the connection',
			'appleTVRemoveCoreConfig' => 'Delete Apple TV - Karing Core Configuration',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - Karing\'s Core Configuration deleted; VPN service disconnected',
			'appleTVUrlInvalid' => 'Invalid URL, please open Apple TV - Karing and scan the QR code displayed by Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] does not have this function, please upgrade and try again',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'The core major version does not match, please upgrade [${p}] and try again',
			'remoteProfileEditConfirm' => 'After the Profile is updated, the node changes will be restored. Continue?',
			'mustBeValidHttpsURL' => 'Must be Valid https URL',
			'fileNotExistReinstall' => ({required Object p}) => 'File missing [${p}], please reinstall',
			'noNetworkConnect' => 'No Internet connection',
			'sudoPassword' => 'sudo password (required for TUN mode)',
			'turnOffNetworkBeforeInstall' => 'It is recommended to switch to [Airplane Mode] before installing the update',
			'latencyTestResolveIP' => 'When manually checking, resolve the outlet IP',
			'removeBannerAdsByShare' => 'Share [Karing] to remove ads',
			'removeBannerAdsByReward' => 'Watch an ad to remove ads',
			'removeBannerAdsByShareTip' => ({required Object p, required Object d}) => 'Share once and you will get ${p} days of ad-free rewards (can be stacked, up to ${d} days)',
			'removeBannerAdsByRewardTip' => ({required Object p}) => 'Watch an ad and you will get ${p} days of ad-free rewards (not cumulative)',
			'removeBannerAdsDone' => ({required Object p}) => 'Received ${p} days of ad-free rewards',
			'maybeAdsByReward' => 'You may need to watch an ad before using this feature. Click [${_root.meta.ok}] to continue',
			'edgeRuntimeNotInstalled' => 'The current device has not installed the Edge WebView2 runtime, so the page cannot be displayed. Please download and install the Edge WebView2 runtime (x64), restart the App and try again.',
			'locales.en' => 'English',
			'locales.zh-CN' => '简体中文',
			'locales.ar' => 'عربي',
			'locales.ru' => 'Русский',
			'locales.fa' => 'فارسی',
			_ => null,
		};
	}
}
