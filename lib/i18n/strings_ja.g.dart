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
class TranslationsJa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenJa AboutScreen = _TranslationsAboutScreenJa._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenJa BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenJa._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenJa DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenJa._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenJa DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenJa._(_root);
	@override late final _TranslationsDiversionRulesScreenJa DiversionRulesScreen = _TranslationsDiversionRulesScreenJa._(_root);
	@override late final _TranslationsDnsSettingsScreenJa DnsSettingsScreen = _TranslationsDnsSettingsScreenJa._(_root);
	@override late final _TranslationsFileContentViewerScreenJa FileContentViewerScreen = _TranslationsFileContentViewerScreenJa._(_root);
	@override late final _TranslationsHomeScreenJa HomeScreen = _TranslationsHomeScreenJa._(_root);
	@override late final _TranslationsLaunchFailedScreenJa LaunchFailedScreen = _TranslationsLaunchFailedScreenJa._(_root);
	@override late final _TranslationsMyProfilesMergeScreenJa MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenJa._(_root);
	@override late final _TranslationsNetCheckScreenJa NetCheckScreen = _TranslationsNetCheckScreenJa._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenJa NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenJa._(_root);
	@override late final _TranslationsNetConnectionsScreenJa NetConnectionsScreen = _TranslationsNetConnectionsScreenJa._(_root);
	@override late final _TranslationsPerAppAndroidScreenJa PerAppAndroidScreen = _TranslationsPerAppAndroidScreenJa._(_root);
	@override late final _TranslationsRegionSettingsScreenJa RegionSettingsScreen = _TranslationsRegionSettingsScreenJa._(_root);
	@override late final _TranslationsServerSelectScreenJa ServerSelectScreen = _TranslationsServerSelectScreenJa._(_root);
	@override late final _TranslationsSettingsScreenJa SettingsScreen = _TranslationsSettingsScreenJa._(_root);
	@override late final _TranslationsUserAgreementScreenJa UserAgreementScreen = _TranslationsUserAgreementScreenJa._(_root);
	@override late final _TranslationsVersionUpdateScreenJa VersionUpdateScreen = _TranslationsVersionUpdateScreenJa._(_root);
	@override late final _TranslationsCommonWidgetJa CommonWidget = _TranslationsCommonWidgetJa._(_root);
	@override late final _TranslationsMainJa main = _TranslationsMainJa._(_root);
	@override late final _TranslationsMetaJa meta = _TranslationsMetaJa._(_root);
	@override String get diversionRulesKeep => '[${_root.meta.isp}] ${_root.meta.diversionRules} を保持';
	@override String get diversionCustomGroupPreset => 'プリセット [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => '注意: 有効にした項目は [${_root.meta.diversionCustomGroup}] と [${_root.meta.diversionRules}] に追加/上書きされます';
	@override String get diversionCustomGroupAddTips => '注意: 追加後、手動で順序を調整する必要がある場合があります。そうしないと、新しく追加された分流が有効にならない場合があります';
	@override String get rulesetEnableTips => 'ヒント: オプションをオンにした後、[${_root.meta.diversionRules}] に移動して関連するルールを設定してください。設定しないと有効になりません';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] は、[HTTP] リクエストの [UserAgent] に基づいて、異なるサブスクリプションタイプのデータを送信します';
	@override String get ispDiversionTips => '[${_root.meta.isp}] はトラフィック分流ルールを提供します。[V2Ray] タイプのサブスクリプションはトラフィック分流ルールをサポートしていません';
	@override late final _TranslationsIspJa isp = _TranslationsIspJa._(_root);
	@override late final _TranslationsPermissionJa permission = _TranslationsPermissionJa._(_root);
	@override late final _TranslationsTlsJa tls = _TranslationsTlsJa._(_root);
	@override late final _TranslationsOutboundRuleModeJa outboundRuleMode = _TranslationsOutboundRuleModeJa._(_root);
	@override late final _TranslationsDnsProxyResolveModeJa dnsProxyResolveMode = _TranslationsDnsProxyResolveModeJa._(_root);
	@override late final _TranslationsProxyStrategyJa proxyStrategy = _TranslationsProxyStrategyJa._(_root);
	@override late final _TranslationsReloadReasonJa reloadReason = _TranslationsReloadReasonJa._(_root);
	@override late final _TranslationsThemeJa theme = _TranslationsThemeJa._(_root);
	@override String get downloadProxyStrategy => 'ダウンロードチャネル';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: プロキシサーバー経由でDNSサーバーに接続してドメイン名を解決します\n[${_root.dnsProxyResolveMode.direct}]: DNSサーバーに直接接続してドメイン名を解決します\n[${_root.dnsProxyResolveMode.fakeip}]: プロキシサーバーがあなたに代わってドメイン名を解決します。VPNを切断した場合、アプリの再起動が必要になる場合があります。[TUN] インバウンドトラフィックにのみ有効です';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'プロトコル検出';
	@override String sendOrReceiveNotMatch({required Object p}) => '[${p}] を使用してください';
	@override String get turnOffPrivateDirect => 'まず [私有ネットワーク直連] を有効にしてください';
	@override String targetConnectFailed({required Object p}) => '[${p}] への接続に失敗しました。デバイスが同じLAN内にあることを確認してください';
	@override String get appleTVSync => '現在のコア設定を Apple TV - Karing に同期';
	@override String get appleTVSyncDone => '同期が完了しました。Apple TV - Karing に移動して接続を開始/再起動してください';
	@override String get appleTVRemoveCoreConfig => 'Apple TV - Karing コア設定を削除';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing のコア設定ファイルが削除されました。VPNサービスが切断されました';
	@override String get appleTVUrlInvalid => '無効なURLです。Apple TV - Karing を開き、Karing が表示するQRコードをスキャンしてください';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] にはこの機能がありません。アップグレードして再度試してください';
	@override String appleCoreVersionNotMatch({required Object p}) => 'コアのメジャーバージョンが一致しません。[${p}] をアップグレードして再度試してください';
	@override String get remoteProfileEditConfirm => 'プロファイル更新後、ノードの変更は元に戻ります。続行しますか？';
	@override String get mustBeValidHttpsURL => '有効な https URL である必要があります';
	@override String fileNotExistReinstall({required Object p}) => 'ファイル [${p}] が見つかりません。再インストールしてください';
	@override String get noNetworkConnect => 'インターネット接続なし';
	@override String get sudoPassword => 'sudo パスワード (TUNモードで必要)';
	@override String get turnOffNetworkBeforeInstall => 'アップデートをインストールする前に [機内モード] に切り替えることをお勧めします';
	@override String get latencyTestResolveIP => '手動チェック時に、アウトレットIPを解決する';
	@override String get latencyTestConcurrency => '並列数';
	@override String get edgeRuntimeNotInstalled => '現在のデバイスに Edge WebView2 ランタイムがインストールされていないため、ページを表示できません。Edge WebView2 ランタイム (x64) をダウンロードしてインストールし、アプリを再起動してから再度試してください。';
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
	};
}

// Path: AboutScreen
class _TranslationsAboutScreenJa implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Install Refer';
	@override String get installTime => 'Install Time';
	@override String get versionChannel => 'Auto Update Channel';
	@override String get autoDownloadPkg => 'Auto Download Update Packages';
	@override String get disableAppImproveData => 'Application Improvement Data';
	@override String get disableUAReportTip => 'Enabling [${_root.AboutScreen.disableAppImproveData}] helps us improve product stability and usability; we do not collect any personal privacy data. Disabling it will prevent the app from collecting any data.';
	@override String get devOptions => 'Developer Options';
	@override String get enableDebugLog => 'Enable Debug Log';
	@override String get viewFilsContent => 'View Files';
	@override String get enablePprof => 'Enable pprof';
	@override String get pprofPanel => 'pprof Panel';
	@override String get allowRemoteAccessPprof => 'Allow remote access to ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Allow remote access${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Use original sing-box Profile';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenJa implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Server Url';
	@override String get webdavRequired => 'Can not be empty';
	@override String get webdavLoginFailed => 'Login failed:';
	@override String get webdavListFailed => 'Failed to get file list:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenJa implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'Invalid [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => 'Invalid [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'Invalid [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'Invalid [Rule Set]:${p}, The URL must be a valid https URL and a binary file with the file extension .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => 'Invalid [Rule Set(build-in)]:${p}, The format is geosite:xxx or geoip:xxx or acl:xxx, and xxx should be a valid rule name';
	@override String invalidPackageId({required Object p}) => 'Invalid [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'Tip: After saving, please go to [${_root.meta.diversionRules}] to set relevant rules, otherwise they will not take effect';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenJa implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diversion Rule Detect';
	@override String get rule => 'Rule:';
	@override String get outbound => 'Proxy Server:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenJa implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Tip: Try to match the rules from top to bottom. If no rule is matched, use [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenJa implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP can not be empty';
	@override String get urlCanNotEmpty => 'URL can not be empty';
	@override String error({required Object p}) => 'Unsupported type:${p}';
	@override String get dnsDesc => 'The first column of delay data is the direct connection query delay;\nThe second column: Turn on [[Proxy Traffic]Resolve DNS through proxy server]: the delay data is the query delay forwarded through the current proxy server; if the [[Proxy Traffic]Resolve DNS through proxy server]: The delay data is the direct connection query delay';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenJa implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'File Content Viewer';
	@override String get clearFileContent => 'Are you sure to clear the content of the file?';
	@override String get clearFileContentTips => 'Are you sure to clear the content of the Profile file? Clearing the Profile file may cause data loss or abnormal application functions, please operate with caution';
}

// Path: HomeScreen
class _TranslationsHomeScreenJa implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Please Select a Server';
	@override String get invalidServer => 'is invalid, please select again';
	@override String get disabledServer => 'is disabled, please select again';
	@override String get expiredServer => 'No servers available, profiles may be expired or disabled';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'Please set up [Shortcut Link] before using it';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}], and the connection may fail due to system memory limitations';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Too many proxy servers [${p}>${p1}] may cause slow or inaccessible connections';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenJa implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'The app failed to start [Invalid process name], please reinstall the app to a separate directory';
	@override String get invalidProfile => 'The app failed to start [Failed to access the profile], please reinstall the app';
	@override String get invalidVersion => 'The app failed to start [Invalid version], please reinstall the app';
	@override String get systemVersionLow => 'The app failed to start [system version too low]';
	@override String get invalidInstallPath => 'The installation path is invalid, please reinstall it to a valid path';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenJa implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Profiles Merge';
	@override String get profilesMergeTarget => 'Target Profile';
	@override String get profilesMergeSource => 'Source Profiles';
	@override String get profilesMergeTips => 'Tip: Diversion of the source profiles will be discarded';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenJa implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Net Check';
	@override String get warn => 'Note: Due to the influence of network environment and diversion rules, the test results are not completely equivalent to the actual results.';
	@override String get invalidDomain => 'Invalid Domain Name';
	@override String get connectivity => 'Network Connectivity';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4 Connection test [${p}] all failed';
	@override String get connectivityTestIpv4Ok => 'Ipv4 connection succeeded';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6 Connection test [${p}] all failed, Your network may not support ipv6';
	@override String get connectivityTestIpv6Ok => 'Ipv6 connection succeeded';
	@override String get connectivityTestOk => 'The network is connected to the Internet';
	@override String get connectivityTestFailed => 'The network is not yet connected to the Internet';
	@override String get remoteRulesetsDownloadOk => 'All downloaded successfully';
	@override String get remoteRulesetsDownloadNotOk => 'Downloading or download failed';
	@override String get outbound => 'Proxy Server';
	@override String outboundOk({required Object p}) => '[${p}] connection succeeded';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] connection failed\nError:[${p2}]';
	@override String get dnsServer => 'DNS Server';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS query succeeded\nDNS Rule:[${p2}]\nLatency:[${p3} ms]\nAddress:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS query succeeded\n nDNS Rule:[${p2}]\nError:[${p3}]';
	@override String get host => 'HTTP Connection';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nDiversionRule:[${p2}]\nProxy Server:[${p3}]';
	@override String get hostConnectionOk => 'connection succeeded';
	@override String hostConnectionFailed({required Object p}) => 'connection failed:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenJa implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domain/IP';
	@override String get app => 'App';
	@override String get rule => 'Rule';
	@override String get chain => 'Outbound';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenJa implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Copied to CSV format';
	@override String get selectType => 'Select Diversion Type';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenJa implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Per-App Proxy';
	@override String get whiteListMode => 'Whitelist Mode';
	@override String get whiteListModeTip => 'When enabled: only the apps that have been checked are proxies; when not enabled: only the apps that are not checked are proxies';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenJa implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Country Or Region';
	@override String get Regions => 'Tip: Please set your current country or region correctly, otherwise it may cause network diversion problems';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenJa implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Select Server';
	@override String get autoSelectServer => 'Auto select the server with the lowest latency';
	@override String get recentUse => 'Recently Used';
	@override String get myFav => 'My Favs';
	@override String selectLocal({required Object p}) => 'The selected server is a local address and may not work properly:${p}';
	@override String get selectRequireEnableIPv6 => 'The selected server is an IPv6 address and requires [Enable IPv6]';
	@override String get selectDisabled => 'This server has been disabled';
	@override String get error404 => 'Latency detection encountered an error, please check if there is a configuration with the same content';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenJa implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Get Traffic';
	@override String get tutorial => 'Tutorial';
	@override String get commonlyUsedRulesets => 'Commonly Used Rulesets';
	@override String get htmlBoard => 'Online Panel';
	@override String get dnsLeakDetection => 'DNS Leaks Detection';
	@override String get proxyLeakDetection => 'Proxy Leaks Detection';
	@override String get speedTest => 'Speed Test';
	@override String get rulesetDirectDownlad => 'Rule Set Direct Download';
	@override String get hideUnusedDiversionGroup => 'Hide Unused Diversion Rules';
	@override String get disableISPDiversionGroup => 'Disable [${_root.meta.isp}] ${_root.meta.diversionRules}';
	@override String get portSettingRule => 'Rule Based';
	@override String get portSettingDirectAll => 'Direct All';
	@override String get portSettingProxyAll => 'Proxy All';
	@override String get portSettingControl => 'Control and Sync';
	@override String get portSettingCluster => 'Cluster Service';
	@override String get modifyPort => 'Modify Port';
	@override String get modifyPortOccupied => 'The port is occupied, please use another port';
	@override String get ipStrategyTips => 'Before enabling, please confirm that your network supports IPv6, otherwise some traffic cannot be accessed normally.';
	@override String get tunAppendHttpProxy => 'Append HTTP Proxy to VPN';
	@override String get tunAppendHttpProxyTips => 'Some apps will bypass virtual NIC Device and directly connect to HTTP proxy';
	@override String get tunAllowBypassHttpProxyDomain => 'Domains allowed to bypass HTTP proxy';
	@override String get dnsEnableRule => 'Enable DNS Diversion rules';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] Resolve Channel';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] Enable ECS';
	@override String get dnsTestDomain => 'Test Domain';
	@override String get dnsTestDomainInvalid => 'Invalid Domain';
	@override String get dnsTypeOutbound => 'Proxy Server';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS Server';
	@override String get dnsEnableRuleTips => 'After enabling, the domain name will select the corresponding DNS server for resolution according to the diversion rules';
	@override String get dnsEnableFakeIpTips => 'After enabling FakeIP, if you disconnect from VPN, your app may need to be restarted; this feature requires [TUN mode] to be enabled';
	@override String get dnsTypeOutboundTips => 'Domain name resolution for [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Domain name resolution for [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Domain name resolution for [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Domain name resolution for [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Auto Setup Server';
	@override String get dnsResetServer => 'Reset Server';
	@override String get inboundDomainResolve => 'Resolve Inbound Domain names';
	@override String get privateDirect => 'Private Network Direct connection';
	@override String inboundDomainResolveTips({required Object p}) => 'Some domain names that are not configured with diversion rules need to be resolved before they can hit the IP-based diversion rules; this feature affects inbound requests to the proxy port [${p}]';
	@override String get useRomoteRes => 'Use Remote Resources';
	@override String get autoAppendRegion => 'Auto attach basic rules';
	@override String get autoSelect => 'Auto Select';
	@override String get autoSelectServerIgnorePerProxyServer => 'Ignore [Front/Chaine] Proxy Servers';
	@override String get autoSelectServerInterval => 'Latency Checks Interval';
	@override String get autoSelectSelectedHealthCheckInterval => 'Current server health check interval';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Re-check Latency when Network Changes';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Update the Current Server after Manual Latency Check';
	@override String get autoSelectServerIntervalTips => 'The shorter the time interval, the more timely the server latency data updates, which will occupy more resources and consume more power';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'If the check fails, the server is switched; if no available server is found when switching the server, the group will re-check latency';
	@override String get autoSelectServerFavFirst => 'Pri-Use [My Favs]';
	@override String get autoSelectServerFavFirstTips => 'If the [My Favs] list is not empty, Then use the servers in [My Favs]';
	@override String get autoSelectServerFilter => 'Filter Invalid Servers';
	@override String autoSelectServerFilterTips({required Object p}) => 'Server latency checks that fail will be filtered out; if no server is available after filtering, the first [${p}] servers will be used instead';
	@override String get autoSelectServerLimitedNum => 'Maximum number of servers';
	@override String get autoSelectServerLimitedNumTips => 'Servers exceeding this number will be filtered out';
	@override String get numInvalid => 'Invalid number';
	@override String get hideInvalidServer => 'Hide Invalid Servers';
	@override String get sortServer => 'Servers Sorting';
	@override String get sortServerTips => 'Sort by latency from low to high';
	@override String get selectServerHideRecommand => 'Hide [Recommend]';
	@override String get selectServerHideRecent => 'Hide [Recently Used]';
	@override String get selectServerHideFav => 'Hide [My Favs]';
	@override String get homeScreen => 'Home Screen';
	@override String get theme => 'Theme';
	@override String get widgetsAlpha => 'Widgets Alpha';
	@override String get widgetsEmpty => 'No Widget Available';
	@override String get backgroundImage => 'Background Image';
	@override String get myLink => 'Shortcut Link';
	@override String get autoConnectAfterLaunch => 'Auto Connection after Launch';
	@override String get autoConnectAtBoot => 'Auto Connection after System Startup';
	@override String get autoConnectAtBootTips => 'System support is required; some systems may also require [auto-start] to be enabled.';
	@override String get hideAfterLaunch => 'Hide window after startup';
	@override String get autoSetSystemProxy => 'Auto Set System Proxy when Connected';
	@override String get bypassSystemProxy => 'Domain names that are allowed to bypass the system proxy';
	@override String get disconnectWhenQuit => 'Disconnect when App Exits';
	@override String get autoAddToFirewall => 'Auto Add Firewall Rules';
	@override String get excludeFromRecent => 'Hide from [Recent Tasks]';
	@override String get wakeLock => 'Wake Lock';
	@override String get hideVpn => 'Hide VPN Icon';
	@override String get hideVpnTips => 'Enabling IPv6 will cause this function to fail';
	@override String get allowBypass => 'Allow Apps to Bypass VPN';
	@override String get importSuccess => 'Import Success';
	@override String get rewriteConfirm => 'This file will overwrite the existing local configuration. Do you want to continue?';
	@override String get mergePerapp => 'Merge local [${_root.PerAppAndroidScreen.title}] lists';
	@override String get networkShare => 'Network Sharing';
	@override String get frontProxy => 'Front/Chain Proxy';
	@override String frontProxyTips({required Object p}) => 'Data->Front/Chaine Proxy Server [Multiple Proxy Servers: Top to Bottom]->Proxy Server [${p}]->Target Server';
	@override String get allowOtherHostsConnect => 'Allow Others to Connect';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'Due to system limitations, after this is enabled, applications on this device that use http to access the network may not be able to connect to the network properly.';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunAutoRedirect => 'Auto Redirect';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'If after turning on sharing, others cannot access this device, please try turning off this switch';
	@override String get loopbackAddress => 'Loopback Address';
	@override String get enableCluster => 'Enable Socks/Http Proxy Cluster';
	@override String get clusterAllowOtherHostsConnect => 'Allow Others to Connect to Cluster';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Proxy Cluster Authentication';
	@override String get tunMode => 'TUN Mode';
	@override String get tuni4Address => 'IP address';
	@override String get tunModeTips => 'The TUN mode will take over all the traffic of the system [In this mode, you can leave the system proxy unenabled]';
	@override String get tunModeRunAsAdmin => 'The TUN mode requires system administrator permissions, please restart the app as an administrator';
	@override String get tunStack => 'Stack';
	@override String get tunHijackTips => 'After closing, DNS requests from TUN will be forwarded directly to the corresponding DNS server';
	@override String get launchAtStartup => 'Launch at Startup';
	@override String get quitWhenSwitchSystemUser => 'Exit App when Switch System Users';
	@override String get handleScheme => 'System Scheme Call';
	@override String get portableMode => 'Portable Mode';
	@override String get portableModeDisableTips => 'If you need to exit portable mode, please exit [karing] and manually delete the [profiles] folder in the same directory as [karing.exe]';
	@override String get accessibility => 'Accessibility';
	@override String get handleKaringScheme => 'Handle karing:// Call';
	@override String get handleClashScheme => 'Handle clash:// Call';
	@override String get handleSingboxScheme => 'Handle sing-box:// Call';
	@override String get alwayOnVPN => 'Always-on Connection';
	@override String get disconnectAfterSleep => 'Disconnect after system sleep';
	@override String get removeSystemVPNConfig => 'Delete system VPN configuration';
	@override String get timeConnectOrDisconnect => 'Scheduled connect/disconnect';
	@override String get timeConnectOrDisconnectTips => 'VPN must be connected to take effect; after it is turned on, [Automatic Sleep] will be disabled';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'The connection/disconnection interval cannot be less than ${p} minutes';
	@override String get disableFontScaler => 'Disable Font scaling(Restart takes effect)';
	@override String get autoOrientation => 'Rotate with the screen';
	@override String get restartTakesEffect => 'Restart takes effect';
	@override String get reconnectTakesEffect => 'Reconnect takes effect';
	@override String get resetSettings => 'Reset Settings';
	@override String get cleanCache => 'Cleanup Cache';
	@override String get cleanCacheDone => 'Cleanup completed';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Update Version ${p}';
	@override String get follow => 'Follow Us';
	@override String get contactUs => 'Contact Us';
	@override String get supportUs => 'Support Us';
	@override String get rateInApp => 'Rate Us';
	@override String get rateInAppStore => 'Rate Us in AppStore';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenJa implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Your Privacy Comes First';
	@override String get agreeAndContinue => 'Accept & Continue';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenJa implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'The new version[${p}] is ready';
	@override String get update => 'Restart To Update';
	@override String get cancel => 'Not Now';
}

// Path: CommonWidget
class _TranslationsCommonWidgetJa implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'If [Always on VPN] is turned on, please turn off [Always on VPN] and try connecting again';
	@override String get resetPort => 'Please change the port to another available port or close the application occupying the port.';
}

// Path: main
class _TranslationsMainJa implements TranslationsMainEn {
	_TranslationsMainJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayJa tray = _TranslationsMainTrayJa._(_root);
}

// Path: meta
class _TranslationsMetaJa implements TranslationsMetaEn {
	_TranslationsMetaJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get enable => '有効';
	@override String get disable => '無効';
	@override String get bydefault => 'デフォルト';
	@override String get filter => 'フィルタ';
	@override String get filterMethod => 'フィルタ方法';
	@override String get include => '含める';
	@override String get exclude => '除外';
	@override String get all => 'すべて';
	@override String get prefer => '優先';
	@override String get only => 'のみ';
	@override String get open => '開く';
	@override String get close => '閉じる';
	@override String get quit => '終了';
	@override String get add => '追加';
	@override String get addSuccess => '追加成功';
	@override String addFailed({required Object p}) => '追加失敗:${p}';
	@override String get remove => '削除';
	@override String get removeConfirm => '本当に削除しますか？';
	@override String get edit => '編集';
	@override String get view => '表示';
	@override String get more => '詳細';
	@override String get tips => '情報';
	@override String get copy => 'コピー';
	@override String get save => '保存';
	@override String get ok => '確定';
	@override String get cancel => 'キャンセル';
	@override String get feedback => 'フィードバック';
	@override String get feedbackContent => 'フィードバック内容';
	@override String get feedbackContentHit => '必須、最大500文字';
	@override String get feedbackContentCannotEmpty => 'フィードバック内容は空にできません';
	@override String get faq => 'よくある質問';
	@override String get htmlTools => 'HTMLツールセット';
	@override String get download => 'ダウンロード';
	@override String get upload => 'アップロード';
	@override String get downloadSpeed => 'ダウンロード速度';
	@override String get uploadSpeed => 'アップロード速度';
	@override String get loading => '読み込み中...';
	@override String get convert => '変換';
	@override String get check => 'チェック';
	@override String get detect => '検出';
	@override String get cache => 'キャッシュ';
	@override String get days => '日';
	@override String get hours => '時間';
	@override String get minutes => '分';
	@override String get seconds => '秒';
	@override String get milliseconds => 'ミリ秒';
	@override String get tolerance => '許容範囲';
	@override String get dateTimePeriod => '期間';
	@override String get protocol => 'プロトコル';
	@override String get search => '検索';
	@override String get custom => 'カスタム';
	@override String get inbound => 'インバウンド';
	@override String get outbound => 'アウトバウンド';
	@override String get destination => '送信先';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => '接続';
	@override String get disconnect => '切断';
	@override String get reconnect => '再接続';
	@override String get connected => '接続済み';
	@override String get disconnected => '未接続';
	@override String get connecting => '接続中';
	@override String get connectTimeout => '接続タイムアウト';
	@override String get timeout => 'タイムアウト';
	@override String get timeoutDuration => 'タイムアウト期間';
	@override String get runDuration => '実行時間';
	@override String get latency => '遅延';
	@override String get latencyTest => '遅延チェック';
	@override String get language => '言語';
	@override String get next => '次へ';
	@override String get done => '完了';
	@override String get apply => '適用';
	@override String get refresh => '更新';
	@override String get retry => '再試行しますか？';
	@override String get update => '更新';
	@override String get updateInterval => '更新間隔';
	@override String get updateInterval5mTips => '最小: 5m';
	@override String updateFailed({required Object p}) => '更新失敗:${p}';
	@override String get samplingUnit => 'サンプリング時間単位';
	@override String get queryResultCount => 'クエリ結果数';
	@override String queryLimit({required Object p}) => '最大 ${p} 件表示';
	@override String get none => 'なし';
	@override String get start => '開始';
	@override String get pause => '一時停止';
	@override String get reset => 'リセット';
	@override String get submit => '送信';
	@override String get user => 'ユーザー';
	@override String get account => 'アカウント';
	@override String get password => 'パスワード';
	@override String get required => '必須';
	@override String get type => 'タイプ';
	@override String get path => 'パス';
	@override String get local => 'ローカル';
	@override String get remote => 'リモート';
	@override String get other => 'その他';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => '無効なURL';
	@override String get urlCannotEmpty => 'リンクは空にできません';
	@override String get urlTooLong => 'URLが長すぎます (>8182)';
	@override String get copyUrl => 'リンクをコピー';
	@override String get openUrl => 'リンクを開く';
	@override String get shareUrl => 'リンクを共有';
	@override String get speedTestUrl => '速度テストURL';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => '静的IP';
	@override String get staticIPTips => '[TUN HijackDNS] または [${_root.SettingsScreen.inboundDomainResolve}] を有効にする必要があります。';
	@override String get isp => 'VPNプロバイダー';
	@override String get domainSuffix => 'ドメインサフィックス';
	@override String get domain => 'ドメイン';
	@override String get domainKeyword => 'ドメインキーワード';
	@override String get domainRegex => 'ドメイン正規表現';
	@override String get ip => 'IP';
	@override String get port => 'ポート';
	@override String get portRange => 'ポート範囲';
	@override String get appPackage => 'アプリパッケージID';
	@override String get processName => 'プロセス名';
	@override String get processPath => 'プロセスパス';
	@override String get processDir => 'プロセスディレクトリ';
	@override String get systemProxy => 'システムプロキシ';
	@override String get percentage => 'パーセンテージ';
	@override String get statistics => '統計';
	@override String get statisticsAndAnalysis => '統計と分析';
	@override String get statisticsDataDesensitize => 'データ匿名化';
	@override String get statisticsDataDesensitizeTips => 'プロセス/パッケージID/送信先ドメイン/送信先IPなどは、匿名化後に * で置き換えられて保存されます';
	@override String get records => '記録';
	@override String get requestRecords => 'リクエスト記録';
	@override String get netInterfaces => 'ネットワークインターフェース';
	@override String get netSpeed => '速度';
	@override String get memoryTrendChart => 'メモリトレンドチャート';
	@override String get goroutinesTrendChart => 'GoRoutinesトレンドチャート';
	@override String get trafficTrendChart => 'トラフィックトレンドチャート';
	@override String get trafficDistributionChart => 'トラフィック分布チャート';
	@override String get connectionChart => '接続トレンドチャート';
	@override String get memoryChart => 'メモリトレンドチャート';
	@override String get trafficStatistics => 'トラフィック統計';
	@override String get traffic => 'トラフィック';
	@override String get trafficTotal => '総トラフィック';
	@override String get trafficProxy => 'プロキシトラフィック';
	@override String get trafficDirect => '直接トラフィック';
	@override String get website => 'ウェブサイト';
	@override String get memory => 'メモリ';
	@override String get outboundMode => 'アウトバウンドモード';
	@override String get rule => 'ルール';
	@override String get global => 'グローバル';
	@override String get qrcode => 'QRコード';
	@override String get qrcodeTooLong => 'テキストが長すぎて表示できません';
	@override String get qrcodeShare => 'QRコードを共有';
	@override String get textToQrcode => 'テキストをQRコードに変換';
	@override String get qrcodeScan => 'QRコードをスキャン';
	@override String get qrcodeScanResult => 'スキャン結果';
	@override String get qrcodeScanFromImage => '画像からスキャン';
	@override String get qrcodeScanResultFailed => '画像の解析に失敗しました。スクリーンショットが有効なQRコードであることを確認してください';
	@override String get qrcodeScanResultEmpty => 'スキャン結果が空です';
	@override String get screenshot => 'スクリーンショット';
	@override String get backupAndSync => 'バックアップと同期';
	@override String get autoBackup => '自動バックアップ';
	@override String get noProfileGotAutoBackup => '[${_root.meta.myProfiles}] などのデータが失われた場合は、[${_root.meta.backupAndSync}-${_root.meta.autoBackup}] または他のバックアップソース（iCloudやWebdavなど）から復元できます';
	@override String get autoBackupAddProfile => 'プロファイル追加後';
	@override String get autoBackupRemoveProfile => 'プロファイル削除後';
	@override String get profile => 'プロファイル';
	@override String get currentProfile => '現在のプロファイル';
	@override String get importAndExport => 'インポートとエクスポート';
	@override String get import => 'インポート';
	@override String get importFromUrl => 'URLからインポート';
	@override String get export => 'エクスポート';
	@override String get send => '送信';
	@override String get receive => '受信';
	@override String get sendConfirm => '送信しますか？';
	@override String get termOfUse => '利用規約';
	@override String get privacyPolicy => 'プライバシーポリシー';
	@override String get about => '詳細';
	@override String get name => '名前';
	@override String get version => 'バージョン';
	@override String get notice => '通知';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'アクション:${p}\n理由:${p1}';
	@override String get sort => '並べ替え';
	@override String get novice => '初心者モード';
	@override String get willCompleteAfterRebootInstall => 'システム拡張機能のインストールを完了するには、デバイスを再起動してください';
	@override String get willCompleteAfterRebootUninstall => 'システム拡張機能のアンインストールを完了するには、デバイスを再起動してください';
	@override String get requestNeedsUserApproval => '1. [システム設定]-[プライバシーとセキュリティ] で Karing によるシステム拡張機能のインストールを [許可] してください\n2. [システム設定]-[一般]-[ログイン項目と拡張機能-ネットワーク拡張機能] で [karingServiceSE] を有効にしてください\n完了後に再接続してください';
	@override String get FullDiskAccessPermissionRequired => '[システム設定]-[プライバシーとセキュリティ]-[フルディスクアクセス] で [karingServiceSE] の権限を有効にして、再接続してください';
	@override String get tvMode => 'TVモード';
	@override String get recommended => 'おすすめ';
	@override String innerError({required Object p}) => '内部エラー:${p}';
	@override String get logicOperation => '論理演算';
	@override String get share => '共有';
	@override String get candidateWord => '候補語';
	@override String get keywordOrRegx => 'キーワード/正規表現';
	@override String get importFromClipboard => 'クリップボードからインポート';
	@override String get exportToClipboard => 'クリップボードへエクスポート';
	@override String get server => 'サーバー';
	@override String get ads => '広告';
	@override String get adsRemove => '広告を削除';
	@override String get donate => '寄付';
	@override String get diversion => '分流';
	@override String get diversionRules => '分流ルール';
	@override String get diversionCustomGroup => 'カスタム分流グループ';
	@override String get urlTestCustomGroup => 'カスタム自動選択';
	@override String get setting => '設定';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN同期';
	@override String get lanSyncNotQuitTips => '同期が完了するまでこの画面を閉じないでください';
	@override String get deviceNoSpace => 'ディスク容量不足';
	@override String get hideSystemApp => 'システムアプリを非表示';
	@override String get hideAppIcon => 'アプリ名を表示しない';
	@override String get hideDockIcon => 'Dockアイコンを非表示';
	@override String get remark => '備考';
	@override String get remarkExist => '備考が既に存在します。別の名前を使用してください';
	@override String get remarkCannotEmpty => '備考は空にできません';
	@override String get remarkTooLong => '備考は最大32文字です';
	@override String get openDir => 'ファイルディレクトリを開く';
	@override String get fileChoose => 'ファイルを選択';
	@override String get filePathCannotEmpty => 'ファイルパスは空にできません';
	@override String fileNotExist({required Object p}) => 'ファイルが存在しません:${p}';
	@override String fileTypeInvalid({required Object p}) => '無効なファイル形式です:${p}';
	@override String get uwpExemption => 'UWPネットワーク分離免除';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'プロファイルを取得';
	@override String get addProfile => 'プロファイルを追加';
	@override String get myProfiles => 'マイプロファイル';
	@override String get profileEdit => 'プロファイル編集';
	@override String get profileEditUrlExist => 'URLが既に存在します。別のURLを使用してください';
	@override String get profileEditReloadAfterProfileUpdate => 'プロファイル更新後にリロード';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'プロファイル自動更新後に遅延テストを開始';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPNが接続されている必要があり、[プロファイル更新後にリロード] が有効である必要があります';
	@override String get profileEditTestLatencyAutoRemove => '遅延テストに失敗したサーバーを自動的に削除';
	@override String get profileEditTestLatencyAutoRemoveTips => '最大3回試行します';
	@override String get profileImport => 'プロファイルファイルをインポート';
	@override String get profileAddUrlOrContent => 'プロファイルリンクを追加';
	@override String get profileExists => 'プロファイルは既に存在します。繰り返し追加しないでください';
	@override String get profileUrlOrContent => 'プロファイルリンク/内容';
	@override String get profileUrlOrContentHit => 'プロファイルリンク/内容 [必須] (Clash, V2ray(バッチ対応), Stash, Karing, Sing-box, Shadowsocks, サブプロファイルリンク対応)';
	@override String get profileUrlOrContentCannotEmpty => 'プロファイルリンクは空にできません';
	@override String profileAddFailedFormatException({required Object p}) => '形式が正しくありません。修正して再度追加してください:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => '追加失敗: ${p}。 [UserAgent] を変更して再試行するか、デバイスの内蔵ブラウザを使用して設定リンクを開き、ブラウザでダウンロードした設定ファイルをこのアプリにインポートしてください';
	@override String profileAddFailedHandshakeException({required Object p}) => '追加失敗: ${p}。プロキシを有効にするか、現在のプロキシノードを変更して再試行してください';
	@override String get profileAddParseFailed => 'プロファイルの解析に失敗しました';
	@override String get profileAddNoServerAvaliable => '利用可能なサーバーがありません。プロファイルリンクまたはプロファイルファイルが有効であることを確認してください。プロファイルがGitHubからのものである場合は、ページの [Raw] ボタンからリンクを取得してください';
	@override String get profileAddWrapSuccess => 'プロファイルが正常に生成されました。 [${_root.meta.myProfiles}] で確認してください';
}

// Path: isp
class _TranslationsIspJa implements TranslationsIspEn {
	_TranslationsIspJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get bind => '[${_root.meta.isp}] にバインド ';
	@override String unbind({required Object p}) => 'バインド解除 [${p}]';
	@override String faq({required Object p}) => 'よくある質問 [${p}]';
	@override String customerService({required Object p}) => 'Telegram [${p}]';
	@override String follow({required Object p}) => 'フォロー [${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] 無効または期限切れ';
}

// Path: permission
class _TranslationsPermissionJa implements TranslationsPermissionEn {
	_TranslationsPermissionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get camera => 'カメラ';
	@override String get screen => '画面収録';
	@override String get appQuery => 'アプリ一覧を取得';
	@override String request({required Object p}) => '[${p}] 権限をオンにする';
	@override String requestNeed({required Object p}) => '[${p}] 権限をオンにしてください';
}

// Path: tls
class _TranslationsTlsJa implements TranslationsTlsEn {
	_TranslationsTlsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get insecure => '証明書の検証をスキップ';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'TLSフラグメントを有効化';
	@override String get fragmentSize => 'TLSフラグメントサイズ';
	@override String get fragmentSleep => 'TLSフラグメントスリープ';
	@override String get mixedCaseSNIEnable => 'TLS混合SNIを有効化';
	@override String get paddingEnable => 'TLSパディングを有効化';
	@override String get paddingSize => 'TLSパディングサイズ';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeJa implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => '現在の選択';
	@override String get urltest => '自動選択';
	@override String get direct => '直連';
	@override String get block => 'ブロック';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeJa implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyJa implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonJa implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'プロファイル更新';
}

// Path: theme
class _TranslationsThemeJa implements TranslationsThemeEn {
	_TranslationsThemeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get light => 'ライト';
	@override String get dark => 'ダーク';
	@override String get auto => '自動';
}

// Path: main.tray
class _TranslationsMainTrayJa implements TranslationsMainTrayEn {
	_TranslationsMainTrayJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Open';
	@override String get menuExit => 'Exit';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Install Refer',
			'AboutScreen.installTime' => 'Install Time',
			'AboutScreen.versionChannel' => 'Auto Update Channel',
			'AboutScreen.autoDownloadPkg' => 'Auto Download Update Packages',
			'AboutScreen.disableAppImproveData' => 'Application Improvement Data',
			'AboutScreen.disableUAReportTip' => 'Enabling [${_root.AboutScreen.disableAppImproveData}] helps us improve product stability and usability; we do not collect any personal privacy data. Disabling it will prevent the app from collecting any data.',
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
			'SettingsScreen.autoAddToFirewall' => 'Auto Add Firewall Rules',
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
			'SettingsScreen.accessibility' => 'Accessibility',
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
			'main.tray.menuOpen' => 'Open',
			'main.tray.menuExit' => 'Exit',
			'meta.enable' => '有効',
			'meta.disable' => '無効',
			'meta.bydefault' => 'デフォルト',
			'meta.filter' => 'フィルタ',
			'meta.filterMethod' => 'フィルタ方法',
			'meta.include' => '含める',
			'meta.exclude' => '除外',
			'meta.all' => 'すべて',
			'meta.prefer' => '優先',
			'meta.only' => 'のみ',
			'meta.open' => '開く',
			'meta.close' => '閉じる',
			'meta.quit' => '終了',
			'meta.add' => '追加',
			'meta.addSuccess' => '追加成功',
			'meta.addFailed' => ({required Object p}) => '追加失敗:${p}',
			'meta.remove' => '削除',
			'meta.removeConfirm' => '本当に削除しますか？',
			'meta.edit' => '編集',
			'meta.view' => '表示',
			'meta.more' => '詳細',
			'meta.tips' => '情報',
			'meta.copy' => 'コピー',
			'meta.save' => '保存',
			'meta.ok' => '確定',
			'meta.cancel' => 'キャンセル',
			'meta.feedback' => 'フィードバック',
			'meta.feedbackContent' => 'フィードバック内容',
			'meta.feedbackContentHit' => '必須、最大500文字',
			'meta.feedbackContentCannotEmpty' => 'フィードバック内容は空にできません',
			'meta.faq' => 'よくある質問',
			'meta.htmlTools' => 'HTMLツールセット',
			'meta.download' => 'ダウンロード',
			'meta.upload' => 'アップロード',
			'meta.downloadSpeed' => 'ダウンロード速度',
			'meta.uploadSpeed' => 'アップロード速度',
			'meta.loading' => '読み込み中...',
			'meta.convert' => '変換',
			'meta.check' => 'チェック',
			'meta.detect' => '検出',
			'meta.cache' => 'キャッシュ',
			'meta.days' => '日',
			'meta.hours' => '時間',
			'meta.minutes' => '分',
			'meta.seconds' => '秒',
			'meta.milliseconds' => 'ミリ秒',
			'meta.tolerance' => '許容範囲',
			'meta.dateTimePeriod' => '期間',
			'meta.protocol' => 'プロトコル',
			'meta.search' => '検索',
			'meta.custom' => 'カスタム',
			'meta.inbound' => 'インバウンド',
			'meta.outbound' => 'アウトバウンド',
			'meta.destination' => '送信先',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => '接続',
			'meta.disconnect' => '切断',
			'meta.reconnect' => '再接続',
			'meta.connected' => '接続済み',
			'meta.disconnected' => '未接続',
			'meta.connecting' => '接続中',
			'meta.connectTimeout' => '接続タイムアウト',
			'meta.timeout' => 'タイムアウト',
			'meta.timeoutDuration' => 'タイムアウト期間',
			'meta.runDuration' => '実行時間',
			'meta.latency' => '遅延',
			'meta.latencyTest' => '遅延チェック',
			'meta.language' => '言語',
			'meta.next' => '次へ',
			'meta.done' => '完了',
			'meta.apply' => '適用',
			'meta.refresh' => '更新',
			'meta.retry' => '再試行しますか？',
			'meta.update' => '更新',
			'meta.updateInterval' => '更新間隔',
			'meta.updateInterval5mTips' => '最小: 5m',
			'meta.updateFailed' => ({required Object p}) => '更新失敗:${p}',
			'meta.samplingUnit' => 'サンプリング時間単位',
			'meta.queryResultCount' => 'クエリ結果数',
			'meta.queryLimit' => ({required Object p}) => '最大 ${p} 件表示',
			'meta.none' => 'なし',
			'meta.start' => '開始',
			'meta.pause' => '一時停止',
			'meta.reset' => 'リセット',
			'meta.submit' => '送信',
			'meta.user' => 'ユーザー',
			'meta.account' => 'アカウント',
			'meta.password' => 'パスワード',
			'meta.required' => '必須',
			'meta.type' => 'タイプ',
			'meta.path' => 'パス',
			'meta.local' => 'ローカル',
			'meta.remote' => 'リモート',
			'meta.other' => 'その他',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => '無効なURL',
			'meta.urlCannotEmpty' => 'リンクは空にできません',
			'meta.urlTooLong' => 'URLが長すぎます (>8182)',
			'meta.copyUrl' => 'リンクをコピー',
			'meta.openUrl' => 'リンクを開く',
			'meta.shareUrl' => 'リンクを共有',
			'meta.speedTestUrl' => '速度テストURL',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => '静的IP',
			'meta.staticIPTips' => '[TUN HijackDNS] または [${_root.SettingsScreen.inboundDomainResolve}] を有効にする必要があります。',
			'meta.isp' => 'VPNプロバイダー',
			'meta.domainSuffix' => 'ドメインサフィックス',
			'meta.domain' => 'ドメイン',
			'meta.domainKeyword' => 'ドメインキーワード',
			'meta.domainRegex' => 'ドメイン正規表現',
			'meta.ip' => 'IP',
			'meta.port' => 'ポート',
			'meta.portRange' => 'ポート範囲',
			'meta.appPackage' => 'アプリパッケージID',
			'meta.processName' => 'プロセス名',
			'meta.processPath' => 'プロセスパス',
			'meta.processDir' => 'プロセスディレクトリ',
			'meta.systemProxy' => 'システムプロキシ',
			'meta.percentage' => 'パーセンテージ',
			'meta.statistics' => '統計',
			'meta.statisticsAndAnalysis' => '統計と分析',
			'meta.statisticsDataDesensitize' => 'データ匿名化',
			'meta.statisticsDataDesensitizeTips' => 'プロセス/パッケージID/送信先ドメイン/送信先IPなどは、匿名化後に * で置き換えられて保存されます',
			'meta.records' => '記録',
			'meta.requestRecords' => 'リクエスト記録',
			'meta.netInterfaces' => 'ネットワークインターフェース',
			'meta.netSpeed' => '速度',
			'meta.memoryTrendChart' => 'メモリトレンドチャート',
			'meta.goroutinesTrendChart' => 'GoRoutinesトレンドチャート',
			'meta.trafficTrendChart' => 'トラフィックトレンドチャート',
			'meta.trafficDistributionChart' => 'トラフィック分布チャート',
			'meta.connectionChart' => '接続トレンドチャート',
			'meta.memoryChart' => 'メモリトレンドチャート',
			'meta.trafficStatistics' => 'トラフィック統計',
			'meta.traffic' => 'トラフィック',
			'meta.trafficTotal' => '総トラフィック',
			'meta.trafficProxy' => 'プロキシトラフィック',
			'meta.trafficDirect' => '直接トラフィック',
			'meta.website' => 'ウェブサイト',
			'meta.memory' => 'メモリ',
			'meta.outboundMode' => 'アウトバウンドモード',
			'meta.rule' => 'ルール',
			'meta.global' => 'グローバル',
			'meta.qrcode' => 'QRコード',
			'meta.qrcodeTooLong' => 'テキストが長すぎて表示できません',
			'meta.qrcodeShare' => 'QRコードを共有',
			'meta.textToQrcode' => 'テキストをQRコードに変換',
			'meta.qrcodeScan' => 'QRコードをスキャン',
			'meta.qrcodeScanResult' => 'スキャン結果',
			'meta.qrcodeScanFromImage' => '画像からスキャン',
			'meta.qrcodeScanResultFailed' => '画像の解析に失敗しました。スクリーンショットが有効なQRコードであることを確認してください',
			'meta.qrcodeScanResultEmpty' => 'スキャン結果が空です',
			'meta.screenshot' => 'スクリーンショット',
			'meta.backupAndSync' => 'バックアップと同期',
			'meta.autoBackup' => '自動バックアップ',
			'meta.noProfileGotAutoBackup' => '[${_root.meta.myProfiles}] などのデータが失われた場合は、[${_root.meta.backupAndSync}-${_root.meta.autoBackup}] または他のバックアップソース（iCloudやWebdavなど）から復元できます',
			'meta.autoBackupAddProfile' => 'プロファイル追加後',
			'meta.autoBackupRemoveProfile' => 'プロファイル削除後',
			'meta.profile' => 'プロファイル',
			'meta.currentProfile' => '現在のプロファイル',
			'meta.importAndExport' => 'インポートとエクスポート',
			'meta.import' => 'インポート',
			'meta.importFromUrl' => 'URLからインポート',
			'meta.export' => 'エクスポート',
			'meta.send' => '送信',
			'meta.receive' => '受信',
			'meta.sendConfirm' => '送信しますか？',
			'meta.termOfUse' => '利用規約',
			'meta.privacyPolicy' => 'プライバシーポリシー',
			'meta.about' => '詳細',
			'meta.name' => '名前',
			'meta.version' => 'バージョン',
			'meta.notice' => '通知',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'アクション:${p}\n理由:${p1}',
			'meta.sort' => '並べ替え',
			'meta.novice' => '初心者モード',
			'meta.willCompleteAfterRebootInstall' => 'システム拡張機能のインストールを完了するには、デバイスを再起動してください',
			'meta.willCompleteAfterRebootUninstall' => 'システム拡張機能のアンインストールを完了するには、デバイスを再起動してください',
			'meta.requestNeedsUserApproval' => '1. [システム設定]-[プライバシーとセキュリティ] で Karing によるシステム拡張機能のインストールを [許可] してください\n2. [システム設定]-[一般]-[ログイン項目と拡張機能-ネットワーク拡張機能] で [karingServiceSE] を有効にしてください\n完了後に再接続してください',
			'meta.FullDiskAccessPermissionRequired' => '[システム設定]-[プライバシーとセキュリティ]-[フルディスクアクセス] で [karingServiceSE] の権限を有効にして、再接続してください',
			'meta.tvMode' => 'TVモード',
			'meta.recommended' => 'おすすめ',
			'meta.innerError' => ({required Object p}) => '内部エラー:${p}',
			'meta.logicOperation' => '論理演算',
			'meta.share' => '共有',
			'meta.candidateWord' => '候補語',
			'meta.keywordOrRegx' => 'キーワード/正規表現',
			'meta.importFromClipboard' => 'クリップボードからインポート',
			'meta.exportToClipboard' => 'クリップボードへエクスポート',
			'meta.server' => 'サーバー',
			'meta.ads' => '広告',
			'meta.adsRemove' => '広告を削除',
			'meta.donate' => '寄付',
			'meta.diversion' => '分流',
			'meta.diversionRules' => '分流ルール',
			'meta.diversionCustomGroup' => 'カスタム分流グループ',
			'meta.urlTestCustomGroup' => 'カスタム自動選択',
			'meta.setting' => '設定',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN同期',
			'meta.lanSyncNotQuitTips' => '同期が完了するまでこの画面を閉じないでください',
			'meta.deviceNoSpace' => 'ディスク容量不足',
			'meta.hideSystemApp' => 'システムアプリを非表示',
			'meta.hideAppIcon' => 'アプリ名を表示しない',
			'meta.hideDockIcon' => 'Dockアイコンを非表示',
			'meta.remark' => '備考',
			'meta.remarkExist' => '備考が既に存在します。別の名前を使用してください',
			'meta.remarkCannotEmpty' => '備考は空にできません',
			'meta.remarkTooLong' => '備考は最大32文字です',
			'meta.openDir' => 'ファイルディレクトリを開く',
			'meta.fileChoose' => 'ファイルを選択',
			'meta.filePathCannotEmpty' => 'ファイルパスは空にできません',
			'meta.fileNotExist' => ({required Object p}) => 'ファイルが存在しません:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => '無効なファイル形式です:${p}',
			'meta.uwpExemption' => 'UWPネットワーク分離免除',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'プロファイルを取得',
			'meta.addProfile' => 'プロファイルを追加',
			'meta.myProfiles' => 'マイプロファイル',
			'meta.profileEdit' => 'プロファイル編集',
			'meta.profileEditUrlExist' => 'URLが既に存在します。別のURLを使用してください',
			'meta.profileEditReloadAfterProfileUpdate' => 'プロファイル更新後にリロード',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'プロファイル自動更新後に遅延テストを開始',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPNが接続されている必要があり、[プロファイル更新後にリロード] が有効である必要があります',
			'meta.profileEditTestLatencyAutoRemove' => '遅延テストに失敗したサーバーを自動的に削除',
			'meta.profileEditTestLatencyAutoRemoveTips' => '最大3回試行します',
			'meta.profileImport' => 'プロファイルファイルをインポート',
			'meta.profileAddUrlOrContent' => 'プロファイルリンクを追加',
			'meta.profileExists' => 'プロファイルは既に存在します。繰り返し追加しないでください',
			'meta.profileUrlOrContent' => 'プロファイルリンク/内容',
			'meta.profileUrlOrContentHit' => 'プロファイルリンク/内容 [必須] (Clash, V2ray(バッチ対応), Stash, Karing, Sing-box, Shadowsocks, サブプロファイルリンク対応)',
			'meta.profileUrlOrContentCannotEmpty' => 'プロファイルリンクは空にできません',
			'meta.profileAddFailedFormatException' => ({required Object p}) => '形式が正しくありません。修正して再度追加してください:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => '追加失敗: ${p}。 [UserAgent] を変更して再試行するか、デバイスの内蔵ブラウザを使用して設定リンクを開き、ブラウザでダウンロードした設定ファイルをこのアプリにインポートしてください',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => '追加失敗: ${p}。プロキシを有効にするか、現在のプロキシノードを変更して再試行してください',
			'meta.profileAddParseFailed' => 'プロファイルの解析に失敗しました',
			'meta.profileAddNoServerAvaliable' => '利用可能なサーバーがありません。プロファイルリンクまたはプロファイルファイルが有効であることを確認してください。プロファイルがGitHubからのものである場合は、ページの [Raw] ボタンからリンクを取得してください',
			'meta.profileAddWrapSuccess' => 'プロファイルが正常に生成されました。 [${_root.meta.myProfiles}] で確認してください',
			'diversionRulesKeep' => '[${_root.meta.isp}] ${_root.meta.diversionRules} を保持',
			'diversionCustomGroupPreset' => 'プリセット [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => '注意: 有効にした項目は [${_root.meta.diversionCustomGroup}] と [${_root.meta.diversionRules}] に追加/上書きされます',
			'diversionCustomGroupAddTips' => '注意: 追加後、手動で順序を調整する必要がある場合があります。そうしないと、新しく追加された分流が有効にならない場合があります',
			'rulesetEnableTips' => 'ヒント: オプションをオンにした後、[${_root.meta.diversionRules}] に移動して関連するルールを設定してください。設定しないと有効になりません',
			'ispUserAgentTips' => '[${_root.meta.isp}] は、[HTTP] リクエストの [UserAgent] に基づいて、異なるサブスクリプションタイプのデータを送信します',
			'ispDiversionTips' => '[${_root.meta.isp}] はトラフィック分流ルールを提供します。[V2Ray] タイプのサブスクリプションはトラフィック分流ルールをサポートしていません',
			'isp.bind' => '[${_root.meta.isp}] にバインド ',
			'isp.unbind' => ({required Object p}) => 'バインド解除 [${p}]',
			'isp.faq' => ({required Object p}) => 'よくある質問 [${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram [${p}]',
			'isp.follow' => ({required Object p}) => 'フォロー [${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] 無効または期限切れ',
			'permission.camera' => 'カメラ',
			'permission.screen' => '画面収録',
			'permission.appQuery' => 'アプリ一覧を取得',
			'permission.request' => ({required Object p}) => '[${p}] 権限をオンにする',
			'permission.requestNeed' => ({required Object p}) => '[${p}] 権限をオンにしてください',
			'tls.insecure' => '証明書の検証をスキップ',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'TLSフラグメントを有効化',
			'tls.fragmentSize' => 'TLSフラグメントサイズ',
			'tls.fragmentSleep' => 'TLSフラグメントスリープ',
			'tls.mixedCaseSNIEnable' => 'TLS混合SNIを有効化',
			'tls.paddingEnable' => 'TLSパディングを有効化',
			'tls.paddingSize' => 'TLSパディングサイズ',
			'outboundRuleMode.currentSelected' => '現在の選択',
			_ => null,
		} ?? switch (path) {
			'outboundRuleMode.urltest' => '自動選択',
			'outboundRuleMode.direct' => '直連',
			'outboundRuleMode.block' => 'ブロック',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'プロファイル更新',
			'theme.light' => 'ライト',
			'theme.dark' => 'ダーク',
			'theme.auto' => '自動',
			'downloadProxyStrategy' => 'ダウンロードチャネル',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: プロキシサーバー経由でDNSサーバーに接続してドメイン名を解決します\n[${_root.dnsProxyResolveMode.direct}]: DNSサーバーに直接接続してドメイン名を解決します\n[${_root.dnsProxyResolveMode.fakeip}]: プロキシサーバーがあなたに代わってドメイン名を解決します。VPNを切断した場合、アプリの再起動が必要になる場合があります。[TUN] インバウンドトラフィックにのみ有効です',
			'routeFinal' => 'final',
			'protocolSniff' => 'プロトコル検出',
			'sendOrReceiveNotMatch' => ({required Object p}) => '[${p}] を使用してください',
			'turnOffPrivateDirect' => 'まず [私有ネットワーク直連] を有効にしてください',
			'targetConnectFailed' => ({required Object p}) => '[${p}] への接続に失敗しました。デバイスが同じLAN内にあることを確認してください',
			'appleTVSync' => '現在のコア設定を Apple TV - Karing に同期',
			'appleTVSyncDone' => '同期が完了しました。Apple TV - Karing に移動して接続を開始/再起動してください',
			'appleTVRemoveCoreConfig' => 'Apple TV - Karing コア設定を削除',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - Karing のコア設定ファイルが削除されました。VPNサービスが切断されました',
			'appleTVUrlInvalid' => '無効なURLです。Apple TV - Karing を開き、Karing が表示するQRコードをスキャンしてください',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] にはこの機能がありません。アップグレードして再度試してください',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'コアのメジャーバージョンが一致しません。[${p}] をアップグレードして再度試してください',
			'remoteProfileEditConfirm' => 'プロファイル更新後、ノードの変更は元に戻ります。続行しますか？',
			'mustBeValidHttpsURL' => '有効な https URL である必要があります',
			'fileNotExistReinstall' => ({required Object p}) => 'ファイル [${p}] が見つかりません。再インストールしてください',
			'noNetworkConnect' => 'インターネット接続なし',
			'sudoPassword' => 'sudo パスワード (TUNモードで必要)',
			'turnOffNetworkBeforeInstall' => 'アップデートをインストールする前に [機内モード] に切り替えることをお勧めします',
			'latencyTestResolveIP' => '手動チェック時に、アウトレットIPを解決する',
			'latencyTestConcurrency' => '並列数',
			'edgeRuntimeNotInstalled' => '現在のデバイスに Edge WebView2 ランタイムがインストールされていないため、ページを表示できません。Edge WebView2 ランタイム (x64) をダウンロードしてインストールし、アプリを再起動してから再度試してください。',
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
			_ => null,
		};
	}
}
