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
	String get diversionRulesKeep => 'Keep [${_root.meta.isp}] ${_root.meta.diversionRules}';
	String get diversionCustomGroupPreset => 'Preset [${_root.meta.diversionCustomGroup}]';
	String get diversionCustomGroupPresetTips => 'Note: Enabled items will be added/overwritten to [${_root.meta.diversionCustomGroup}] and [${_root.meta.diversionRules}]';
	String get diversionCustomGroupAddTips => 'Note: After adding, you may need to manually adjust the order, otherwise the newly added diversion may not take effect';
	String get rulesetEnableTips => 'Tip: After turning on the options, please go to[${_root.meta.diversionRules}]to set the relevant rules, otherwise they will not take effect';
	String get ispUserAgentTips => '[${_root.meta.isp}] will send data of different subscription types based on [UserAgent] in [HTTP] request';
	String get ispDiversionTips => '[${_root.meta.isp}] provides traffic diversion rules; [V2Ray] type subscriptions do not support traffic diversion rules';
	late final TranslationsIspEn isp = TranslationsIspEn._(_root);
	late final TranslationsPermissionEn permission = TranslationsPermissionEn._(_root);
	late final TranslationsTlsEn tls = TranslationsTlsEn._(_root);
	late final TranslationsOutboundRuleModeEn outboundRuleMode = TranslationsOutboundRuleModeEn._(_root);
	late final TranslationsDnsProxyResolveModeEn dnsProxyResolveMode = TranslationsDnsProxyResolveModeEn._(_root);
	late final TranslationsProxyStrategyEn proxyStrategy = TranslationsProxyStrategyEn._(_root);
	late final TranslationsReloadReasonEn reloadReason = TranslationsReloadReasonEn._(_root);
	late final TranslationsThemeEn theme = TranslationsThemeEn._(_root);
	String get downloadProxyStrategy => 'Download Channel';
	String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Connect to the DNS server through the proxy server to resolve the domain name\n[${_root.dnsProxyResolveMode.direct}]: Connect directly to the DNS server to resolve the domain name\n[${_root.dnsProxyResolveMode.fakeip}]: The proxy server resolves the domain name on your behalf; if you disconnect the VPN connection, your application may need to be restarted; only effective for [TUN] inbound traffic';
	String get routeFinal => 'final';
	String get protocolSniff => 'Protocol Sniff';
	String sendOrReceiveNotMatch({required Object p}) => 'Please use [${p}]';
	String get turnOffPrivateDirect => 'Please turn on [Private network direct connection] first';
	String targetConnectFailed({required Object p}) => 'Failed to connect to [${p}]. Please make sure the devices are in the same LAN';
	String get appleTVSync => 'Synchronize the current core configuration to Apple TV - Karing';
	String get appleTVSyncDone => 'Synchronization is complete. Please go to Apple TV - Karing to start the connection/restart the connection';
	String get appleTVRemoveCoreConfig => 'Delete Apple TV - Karing Core Configuration';
	String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing\'s Core Configuration deleted; VPN service disconnected';
	String get appleTVUrlInvalid => 'Invalid URL, please open Apple TV - Karing and scan the QR code displayed by Karing';
	String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] does not have this function, please upgrade and try again';
	String appleCoreVersionNotMatch({required Object p}) => 'The core major version does not match, please upgrade [${p}] and try again';
	String get remoteProfileEditConfirm => 'After the Profile is updated, the node changes will be restored. Continue?';
	String get mustBeValidHttpsURL => 'Must be Valid https URL';
	String fileNotExistReinstall({required Object p}) => 'File missing [${p}], please reinstall';
	String get noNetworkConnect => 'No Internet connection';
	String get turnOffNetworkBeforeInstall => 'It is recommended to switch to [Airplane Mode] before installing the update';
	String get latencyTestResolveIP => 'When manually checking, resolve the outlet IP';
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
	String get allowRemoteAccessPprof => 'Allow remote access to ${_root.AboutScreen.pprofPanel}';
	String get allowRemoteAccessHtmlBoard => 'Allow remote access${_root.SettingsScreen.htmlBoard}';
	String get useOriginalSBProfile => 'Use original sing-box Profile';
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
	String invalidPackageId({required Object p}) => 'Invalid [${_root.meta.appPackage}]:${p}';
	String get setDiversionRule => 'Tip: After saving, please go to [${_root.meta.diversionRules}] to set relevant rules, otherwise they will not take effect';
}

// Path: DiversionRuleDetectScreen
class TranslationsDiversionRuleDetectScreenEn {
	TranslationsDiversionRuleDetectScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Diversion Rule Detect';
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

// Path: FileContentViewerScreen
class TranslationsFileContentViewerScreenEn {
	TranslationsFileContentViewerScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'File Content Viewer';
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
	String get myLinkEmpty => 'Please set up [Shortcut Link] before using it';
	String tooMuchServers({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}], and the connection may fail due to system memory limitations';
	String tooMuchServers2({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}] may cause slow or inaccessible connections';
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

// Path: NetCheckScreen
class TranslationsNetCheckScreenEn {
	TranslationsNetCheckScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Net Check';
	String get warn => 'Note: Due to the influence of network environment and diversion rules, the test results are not completely equivalent to the actual results.';
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
	String get rulesetDirectDownlad => 'Rule Set Direct Download';
	String get hideUnusedDiversionGroup => 'Hide Unused Diversion Rules';
	String get disableISPDiversionGroup => 'Disable [${_root.meta.isp}] ${_root.meta.diversionRules}';
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
	String get tunAllowBypassHttpProxyDomain => 'Domains allowed to bypass HTTP proxy';
	String get dnsEnableRule => 'Enable DNS Diversion rules';
	String get dnsEnableProxyResolveMode => '[${_root.SettingsScreen.dnsTypeProxy}] Resolve Channel';
	String get dnsEnableClientSubnet => '[${_root.SettingsScreen.dnsTypeDirect}] Enable ECS';
	String get dnsTestDomain => 'Test Domain';
	String get dnsTestDomainInvalid => 'Invalid Domain';
	String get dnsTypeOutbound => 'Proxy Server';
	String get dnsTypeDirect => 'Direct Traffic';
	String get dnsTypeProxy => 'Proxy Traffic';
	String get dnsTypeResolver => 'DNS Server';
	String get dnsEnableRuleTips => 'After enabling, the domain name will select the corresponding DNS server for resolution according to the diversion rules';
	String get dnsEnableFakeIpTips => 'After enabling FakeIP, if you disconnect from VPN, your app may need to be restarted; this feature requires [TUN mode] to be enabled';
	String get dnsTypeOutboundTips => 'Domain name resolution for Proxy Server';
	String get dnsTypeDirectTips => 'Domain name resolution for [${_root.SettingsScreen.dnsTypeDirect}]';
	String get dnsTypeProxyTips => 'Domain name resolution for Proxy Traffic';
	String get dnsTypeResolverTips => 'Domain name resolution for Other DNS Server';
	String get dnsAutoSetServer => 'Auto Setup Server';
	String get dnsResetServer => 'Reset Server';
	String get inboundDomainResolve => 'Resolve Inbound Domain names';
	String get privateDirect => 'Private Network Direct connection';
	String inboundDomainResolveTips({required Object p}) => 'Some domain names that are not configured with diversion rules need to be resolved before they can hit the IP-based diversion rules; this feature affects inbound requests to the proxy port [${p}]';
	String get useRomoteRes => 'Use Remote Resources';
	String get autoAppendRegion => 'Auto attach basic rules';
	String get autoSelect => 'Auto Select';
	String get autoSelectServerIgnorePerProxyServer => 'Ignore [Front/Chaine] Proxy Servers';
	String get autoSelectServerInterval => 'Latency Checks Interval';
	String get autoSelectSelectedHealthCheckInterval => 'Current server health check interval';
	String get autoSelectServerReTestIfNetworkUpdate => 'Re-check Latency when Network Changes';
	String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Update the Current Server after Manual Latency Check';
	String get autoSelectServerIntervalTips => 'The shorter the time interval, the more timely the server latency data updates, which will occupy more resources and consume more power';
	String get autoSelectSelectedHealthCheckIntervalTips => 'If the check fails, the server is switched; if no available server is found when switching the server, the group will re-check latency';
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
	String get widgetsAlpha => 'Widgets Alpha';
	String get widgetsEmpty => 'No Widget Available';
	String get backgroundImage => 'Background Image';
	String get myLink => 'Shortcut Link';
	String get autoConnectAfterLaunch => 'Auto Connection after Launch';
	String get hideAfterLaunch => 'Hide window after startup';
	String get autoSetSystemProxy => 'Auto Set System Proxy when Connected';
	String get bypassSystemProxy => 'Domain names that are allowed to bypass the system proxy';
	String get disconnectWhenQuit => 'Disconnect when App Exits';
	String get allowBypass => 'Allow Apps to Bypass VPN';
	String get importSuccess => 'Import Success';
	String get rewriteConfirm => 'This file will overwrite the existing local configuration. Do you want to continue?';
	String get networkShare => 'Network Sharing';
	String get frontProxy => 'Front/Chain Proxy';
	String frontProxyTips({required Object p}) => 'Data->Front/Chaine Proxy Server [Multiple Proxy Servers: Top to Bottom]->Proxy Server [${p}]->Target Server';
	String get allowOtherHostsConnect => 'Allow Others to Connect';
	String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	String get allowOtherHostsConnectWarn => 'Due to system limitations, after this is enabled, applications on this device that use http to access the network may not be able to connect to the network properly.';
	String get tunAutoRoute => 'Auto Route';
	String get tunStrictRoute => 'Strict Route';
	String get tunStrictRouteTips => 'If after turning on sharing, others cannot access this device, please try turning off this switch';
	String get enableCluster => 'Enable Socks/Http Proxy Cluster';
	String get clusterAllowOtherHostsConnect => 'Allow Others to Connect to Cluster';
	String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	String get clusterAuth => 'Proxy Cluster Authentication';
	String get tunMode => 'TUN Mode';
	String get tuni4Address => 'IP address';
	String get tunModeTips => 'The TUN mode will take over all the traffic of the system [In this mode, you can leave the system proxy unenabled]';
	String get tunModeRunAsAdmin => 'The TUN mode requires system administrator permissions, please restart the app as an administrator';
	String get tunStack => 'Stack';
	String get tunHijackTips => 'After closing, DNS requests from TUN will be forwarded directly to the corresponding DNS server';
	String get launchAtStartup => 'Launch at Startup';
	String get quitWhenSwitchSystemUser => 'Exit App when Switch System Users';
	String get handleScheme => 'System Scheme Call';
	String get portableMode => 'Portable Mode';
	String get portableModeDisableTips => 'If you need to exit portable mode, please exit [karing] and manually delete the [profiles] folder in the same directory as [karing.exe]';
	String get handleKaringScheme => 'Handle karing:// Call';
	String get handleClashScheme => 'Handle clash:// Call';
	String get handleSingboxScheme => 'Handle sing-box:// Call';
	String get alwayOnVPN => 'Always-on Connection';
	String get disconnectAfterSleep => 'Disconnect after system sleep';
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
	String get enable => 'Enable';
	String get disable => 'Disable';
	String get bydefault => 'Default';
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
	String get addSuccess => 'Added successfully';
	String addFailed({required Object p}) => 'Add failed:${p}';
	String get remove => 'Remove';
	String get removeConfirm => 'Are you sure to delete?';
	String get edit => 'Edit';
	String get view => 'View';
	String get more => 'More';
	String get tips => 'Info';
	String get copy => 'Copy';
	String get save => 'Save';
	String get ok => 'Ok';
	String get cancel => 'Cancel';
	String get feedback => 'Feedback';
	String get feedbackContent => 'Feedback Content';
	String get feedbackContentHit => 'Required, up to 500 characters';
	String get feedbackContentCannotEmpty => 'Feedback content can not be empty';
	String get faq => 'FAQ';
	String get download => 'Download';
	String get upload => 'Upload';
	String get downloadSpeed => 'Download Speed';
	String get uploadSpeed => 'Upload Speed';
	String get loading => 'Loading...';
	String get convert => 'Convert';
	String get check => 'Check';
	String get detect => 'Detect';
	String get days => 'Days';
	String get hours => 'Hours';
	String get minutes => 'Minutes';
	String get seconds => 'Seconds';
	String get protocol => 'Protocol';
	String get search => 'Search';
	String get custom => 'Custom';
	String get inbound => 'Inbound';
	String get outbound => 'Outbound';
	String get connect => 'Connect';
	String get disconnect => 'Disconnect';
	String get reconnect => 'Reconnect';
	String get connected => 'Connected';
	String get disconnected => 'Disconnected';
	String get connecting => 'Connecting';
	String get connectTimeout => 'Connect Timeout';
	String get timeout => 'Timeout';
	String get timeoutDuration => 'Timeout Duration';
	String get runDuration => 'Run Duration';
	String get latency => 'Latency';
	String get latencyTest => 'Latency Checks';
	String get language => 'Language';
	String get next => 'Next';
	String get done => 'Done';
	String get apply => 'Apply';
	String get refresh => 'Refresh';
	String get retry => 'Retry?';
	String get update => 'Update';
	String get updateInterval => 'Update interval';
	String updateFailed({required Object p}) => 'Update failed:${p}';
	String get updateInterval5mTips => 'Minimum: 5m';
	String get none => 'None';
	String get start => 'Start';
	String get pause => 'Pause';
	String get reset => 'Reset';
	String get submit => 'Submit';
	String get user => 'User';
	String get account => 'Account';
	String get password => 'Password';
	String get required => 'Required';
	String get type => 'Type';
	String get path => 'Path';
	String get local => 'Local';
	String get remote => 'Remote';
	String get other => 'Other';
	String get dns => 'DNS';
	String get url => 'URL';
	String get urlInvalid => 'Invalid URL';
	String get urlCannotEmpty => 'Link can not be empty';
	String get urlTooLong => 'URL is too long (>8182)';
	String get copyUrl => 'Copy Link';
	String get openUrl => 'Open Link';
	String get shareUrl => 'Share Link';
	String get speedTestUrl => 'Speed Test URL';
	String get tls => 'TLS';
	String get userAgent => 'UserAgent';
	String get staticIP => 'Static IP';
	String get isp => 'VPN Provider';
	String get domainSuffix => 'Domain Suffix';
	String get domain => 'Domain';
	String get domainKeyword => 'Domain Keyword';
	String get domainRegex => 'Domain Regex';
	String get ip => 'IP';
	String get port => 'Port';
	String get portRange => 'Port range';
	String get appPackage => 'App Package Id';
	String get processName => 'Process Name';
	String get processPath => 'Process Path';
	String get processDir => 'Process Directory';
	String get systemProxy => 'System Proxy';
	String get netInterfaces => 'Net Interfaces';
	String get netSpeed => 'Speed';
	String get trafficTotal => 'Traffic Total';
	String get trafficProxy => 'Traffic Proxy';
	String get website => 'Website';
	String get memory => 'Memory';
	String get outboundMode => 'Outbound Mode';
	String get rule => 'Rule';
	String get global => 'Global';
	String get qrcode => 'QR Code';
	String get qrcodeTooLong => 'The text is too long to display';
	String get qrcodeShare => 'Share QR Code';
	String get textToQrcode => 'Text To QR Code';
	String get qrcodeScan => 'Scan QR Code';
	String get qrcodeScanResult => 'Scan Result';
	String get qrcodeScanFromImage => 'Scan From Image';
	String get qrcodeScanResultFailed => 'Failed to parse the image, please make sure the screenshot is a valid QR code';
	String get qrcodeScanResultEmpty => 'Scan Result is empty';
	String get screenshot => 'Screenshot';
	String get backupAndSync => 'Backup and Sync';
	String get autoBackup => 'Auto backup';
	String get autoBackupAddProfile => 'After adding the Profile';
	String get autoBackupRemoveProfile => 'After deleting the Profile';
	String get currentProfile => 'Current Profile';
	String get importAndExport => 'Import and Export';
	String get import => 'Import';
	String get importFromUrl => 'Import from URL';
	String get export => 'Export';
	String get send => 'Send';
	String get receive => 'Receive';
	String get sendConfirm => 'Confirm to send?';
	String get termOfUse => 'Terms of Service';
	String get privacyPolicy => 'Privacy & Policy';
	String get about => 'About';
	String get name => 'Name';
	String get version => 'Version';
	String get notice => 'Notice';
	String appNotifyWithReason({required Object p, required Object p1}) => 'Action:${p}\nReason:${p1}';
	String get sort => 'Reorder';
	String get novice => 'Novice Mode';
	String get willCompleteAfterRebootInstall => 'Please restart your device to complete the system extension installation';
	String get willCompleteAfterRebootUninstall => 'Please restart your device to complete the the system extension uninstallation';
	String get requestNeedsUserApproval => 'Please [Allow] Karing to install system extensions in [System Settings]-[Privacy and Security], and reconnect after the installation is complete';
	String get FullDiskAccessPermissionRequired => 'Please enable karingServiceSE permission in [System Settings]-[Privacy and Security]-[Full Disk Access Permission] and reconnect';
	String get tvMode => 'TV Mode';
	String get recommended => 'Recommend';
	String innerError({required Object p}) => 'Inner Error:${p}';
	String get logicOperation => 'Logic Operation';
	String get share => 'Share';
	String get candidateWord => 'Candidate Words';
	String get keywordOrRegx => 'Keywords/Regular';
	String get importFromClipboard => 'Import From Clipboard';
	String get exportToClipboard => 'Export to Clipboard';
	String get server => 'Server';
	String get ads => 'Ads';
	String get adsRemove => 'Remove ads';
	String get adsBanner => 'Banner ads';
	String get donate => 'Donate';
	String get diversion => 'Diversion';
	String get diversionRules => 'Diversion Rules';
	String get diversionCustomGroup => 'Custom Diversion Group';
	String get urlTestCustomGroup => 'Custom Auto Select';
	String get setting => 'Settings';
	String get iCloud => 'iCloud';
	String get appleTV => 'Apple TV';
	String get webdav => 'Webdav';
	String get lanSync => 'LAN Sync';
	String get lanSyncNotQuitTips => 'Do not exit this interface before synchronization is completed';
	String get deviceNoSpace => 'Not enough disk space';
	String get hideSystemApp => 'Hide System Apps';
	String get hideAppIcon => 'Hide App Icons';
	String get hideDockIcon => 'Hide Dock Icon';
	String get remark => 'Remark';
	String get remarkExist => 'Remark already exists, please use another name';
	String get remarkCannotEmpty => 'Remarks can not be empty';
	String get remarkTooLong => 'Remarks up to 32 characters';
	String get openDir => 'Open File Directory';
	String get fileChoose => 'Select File';
	String get filePathCannotEmpty => 'The file path can not be empty';
	String fileNotExist({required Object p}) => 'File does not exist:${p}';
	String fileTypeInvalid({required Object p}) => 'Invalid file type:${p}';
	String get uwpExemption => 'UWP Network Isolation Exemptions';
	String get rulesetGeoSite => 'GeoSite';
	String get rulesetGeoIp => 'GeoIP';
	String get rulesetAcl => 'ACL';
	String get getProfile => 'Get Profile';
	String get addProfile => 'Add Profile';
	String get myProfiles => 'My Profiles';
	String get myProfilesAtLeastOneReserveEnable => 'Cannot be disabled, please keep at least one profile enable';
	String get profileEdit => 'Profile Edit';
	String get profileEditUrlExist => 'URL already exists, please use another URL';
	String get profileEditReloadAfterProfileUpdate => 'Reload after Profile update';
	String get profileEditTestLatencyAfterProfileUpdate => 'Start latency tests after Profile Automatically update';
	String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN needs to be connected, and [Reload after Profile update] Enabled';
	String get profileEditTestLatencyAutoRemove => 'Automatically remove servers that fail latency tests';
	String get profileEditTestLatencyAutoRemoveTips => 'Try up to 3 times';
	String get profileImport => 'Import Profile File';
	String get profileAddUrlOrContent => 'Add Profile Link';
	String get profileExists => 'The Profile already exists, please do not add it repeatedly';
	String get profileUrlOrContent => 'Profile Link/Content';
	String get profileUrlOrContentHit => 'Profile Link/Content [Required] (Support Clash,V2ray(batch supported),Stash,Karing,Sing-box,Shadowsocks,Sub Profile links)';
	String get profileUrlOrContentCannotEmpty => 'Profile Link can not be empty';
	String profileAddFailedFormatException({required Object p}) => 'The format is wrong, please correct it and add it again:${p}';
	String profileAddFailedThenDownloadAndImport({required Object p}) => 'Add failed: ${p}, please try to modify the [UserAgent] and try again, or use the device\'s built-in browser to open the configuration link and import the configuration file downloaded by the browser into this application';
	String profileAddFailedHandshakeException({required Object p}) => 'Add failed: ${p}, please tun on the proxy or modify the current proxy node and try again';
	String get profileAddParseFailed => 'Parsing Profile failed';
	String get profileAddNoServerAvaliable => 'No server avaliable, Make sure the Profile Link or Profile File is valid;  if your Profile comes from GitHub, please obtain the link from the [Raw] button on the page';
	String get profileAddWrapSuccess => 'Profile generated successfully, please go to [${_root.meta.myProfiles}] to view';
}

// Path: isp
class TranslationsIspEn {
	TranslationsIspEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get bind => 'Bind To [${_root.meta.isp}] ';
	String unbind({required Object p}) => 'Unbind[${p}]';
	String faq({required Object p}) => 'FAQ[${p}]';
	String customerService({required Object p}) => 'Telegram[${p}]';
	String follow({required Object p}) => 'Follow[${p}]';
	String get invalidOrExpired => '[${_root.meta.isp}] Invalid or expired';
}

// Path: permission
class TranslationsPermissionEn {
	TranslationsPermissionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get camera => 'Camera';
	String get screen => 'Screen Recording';
	String get appQuery => 'Get Application List';
	String request({required Object p}) => 'Turn on [${p}] permission';
	String requestNeed({required Object p}) => 'Please Turn on [${p}] permission';
}

// Path: tls
class TranslationsTlsEn {
	TranslationsTlsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get insecure => 'Skip Certificate Verification';
	String get affectProtocolTips => 'vless, vmess, trojan';
	String get fragmentEnable => 'Enable TLS Fragment';
	String get fragmentSize => 'TLS Fragment Size';
	String get fragmentSleep => 'TLS Fragment Sleep';
	String get mixedCaseSNIEnable => 'Enable TLS Mixed SNI';
	String get paddingEnable => 'Enable TLS Padding';
	String get paddingSize => 'TLS Padding Size';
}

// Path: outboundRuleMode
class TranslationsOutboundRuleModeEn {
	TranslationsOutboundRuleModeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get currentSelected => 'Current Selected';
	String get urltest => 'Auto Select';
	String get direct => 'Direct';
	String get block => 'Block';
}

// Path: dnsProxyResolveMode
class TranslationsDnsProxyResolveModeEn {
	TranslationsDnsProxyResolveModeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get proxy => _root.outboundRuleMode.currentSelected;
	String get direct => _root.outboundRuleMode.direct;
	String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class TranslationsProxyStrategyEn {
	TranslationsProxyStrategyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class TranslationsReloadReasonEn {
	TranslationsReloadReasonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	String get profileUpdate => 'Profile Update';
}

// Path: theme
class TranslationsThemeEn {
	TranslationsThemeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get light => 'Light';
	String get dark => 'Dark';
	String get auto => 'Auto';
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
			case 'SettingsScreen.dnsEnableProxyResolveMode': return '[${_root.SettingsScreen.dnsTypeProxy}] Resolve Channel';
			case 'SettingsScreen.dnsEnableClientSubnet': return '[${_root.SettingsScreen.dnsTypeDirect}] Enable ECS';
			case 'SettingsScreen.dnsTestDomain': return 'Test Domain';
			case 'SettingsScreen.dnsTestDomainInvalid': return 'Invalid Domain';
			case 'SettingsScreen.dnsTypeOutbound': return 'Proxy Server';
			case 'SettingsScreen.dnsTypeDirect': return 'Direct Traffic';
			case 'SettingsScreen.dnsTypeProxy': return 'Proxy Traffic';
			case 'SettingsScreen.dnsTypeResolver': return 'DNS Server';
			case 'SettingsScreen.dnsEnableRuleTips': return 'After enabling, the domain name will select the corresponding DNS server for resolution according to the diversion rules';
			case 'SettingsScreen.dnsEnableFakeIpTips': return 'After enabling FakeIP, if you disconnect from VPN, your app may need to be restarted; this feature requires [TUN mode] to be enabled';
			case 'SettingsScreen.dnsTypeOutboundTips': return 'Domain name resolution for Proxy Server';
			case 'SettingsScreen.dnsTypeDirectTips': return 'Domain name resolution for [${_root.SettingsScreen.dnsTypeDirect}]';
			case 'SettingsScreen.dnsTypeProxyTips': return 'Domain name resolution for Proxy Traffic';
			case 'SettingsScreen.dnsTypeResolverTips': return 'Domain name resolution for Other DNS Server';
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
			case 'SettingsScreen.allowBypass': return 'Allow Apps to Bypass VPN';
			case 'SettingsScreen.importSuccess': return 'Import Success';
			case 'SettingsScreen.rewriteConfirm': return 'This file will overwrite the existing local configuration. Do you want to continue?';
			case 'SettingsScreen.networkShare': return 'Network Sharing';
			case 'SettingsScreen.frontProxy': return 'Front/Chain Proxy';
			case 'SettingsScreen.frontProxyTips': return ({required Object p}) => 'Data->Front/Chaine Proxy Server [Multiple Proxy Servers: Top to Bottom]->Proxy Server [${p}]->Target Server';
			case 'SettingsScreen.allowOtherHostsConnect': return 'Allow Others to Connect';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.allowOtherHostsConnectWarn': return 'Due to system limitations, after this is enabled, applications on this device that use http to access the network may not be able to connect to the network properly.';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'If after turning on sharing, others cannot access this device, please try turning off this switch';
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
			case 'meta.days': return 'Days';
			case 'meta.hours': return 'Hours';
			case 'meta.minutes': return 'Minutes';
			case 'meta.seconds': return 'Seconds';
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
			case 'meta.updateFailed': return ({required Object p}) => 'Update failed:${p}';
			case 'meta.updateInterval5mTips': return 'Minimum: 5m';
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
			case 'meta.netInterfaces': return 'Net Interfaces';
			case 'meta.netSpeed': return 'Speed';
			case 'meta.trafficTotal': return 'Traffic Total';
			case 'meta.trafficProxy': return 'Traffic Proxy';
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
			case 'meta.requestNeedsUserApproval': return 'Please [Allow] Karing to install system extensions in [System Settings]-[Privacy and Security], and reconnect after the installation is complete';
			case 'meta.FullDiskAccessPermissionRequired': return 'Please enable karingServiceSE permission in [System Settings]-[Privacy and Security]-[Full Disk Access Permission] and reconnect';
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
			case 'turnOffNetworkBeforeInstall': return 'It is recommended to switch to [Airplane Mode] before installing the update';
			case 'latencyTestResolveIP': return 'When manually checking, resolve the outlet IP';
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

