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
class TranslationsKo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsKo _root = this; // ignore: unused_field

	@override 
	TranslationsKo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKo(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenKo AboutScreen = _TranslationsAboutScreenKo._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenKo BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenKo._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenKo DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenKo._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenKo DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenKo._(_root);
	@override late final _TranslationsDiversionRulesScreenKo DiversionRulesScreen = _TranslationsDiversionRulesScreenKo._(_root);
	@override late final _TranslationsDnsSettingsScreenKo DnsSettingsScreen = _TranslationsDnsSettingsScreenKo._(_root);
	@override late final _TranslationsFileContentViewerScreenKo FileContentViewerScreen = _TranslationsFileContentViewerScreenKo._(_root);
	@override late final _TranslationsHomeScreenKo HomeScreen = _TranslationsHomeScreenKo._(_root);
	@override late final _TranslationsLaunchFailedScreenKo LaunchFailedScreen = _TranslationsLaunchFailedScreenKo._(_root);
	@override late final _TranslationsMyProfilesMergeScreenKo MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenKo._(_root);
	@override late final _TranslationsNetCheckScreenKo NetCheckScreen = _TranslationsNetCheckScreenKo._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenKo NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenKo._(_root);
	@override late final _TranslationsNetConnectionsScreenKo NetConnectionsScreen = _TranslationsNetConnectionsScreenKo._(_root);
	@override late final _TranslationsPerAppAndroidScreenKo PerAppAndroidScreen = _TranslationsPerAppAndroidScreenKo._(_root);
	@override late final _TranslationsRegionSettingsScreenKo RegionSettingsScreen = _TranslationsRegionSettingsScreenKo._(_root);
	@override late final _TranslationsServerSelectScreenKo ServerSelectScreen = _TranslationsServerSelectScreenKo._(_root);
	@override late final _TranslationsSettingsScreenKo SettingsScreen = _TranslationsSettingsScreenKo._(_root);
	@override late final _TranslationsUserAgreementScreenKo UserAgreementScreen = _TranslationsUserAgreementScreenKo._(_root);
	@override late final _TranslationsVersionUpdateScreenKo VersionUpdateScreen = _TranslationsVersionUpdateScreenKo._(_root);
	@override late final _TranslationsCommonWidgetKo CommonWidget = _TranslationsCommonWidgetKo._(_root);
	@override late final _TranslationsMainKo main = _TranslationsMainKo._(_root);
	@override late final _TranslationsMetaKo meta = _TranslationsMetaKo._(_root);
	@override String get diversionRulesKeep => '[${_root.meta.isp}] ${_root.meta.diversionRules} 유지';
	@override String get diversionCustomGroupPreset => '프리셋 [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => '참고: 활성화된 항목은 [${_root.meta.diversionCustomGroup}] 및 [${_root.meta.diversionRules}]에 추가/덮어쓰기됩니다';
	@override String get diversionCustomGroupAddTips => '참고: 추가 후 수동으로 정렬을 조정해야 할 수도 있습니다. 그렇지 않으면 새로 추가된 분류가 적용되지 않을 수 있습니다';
	@override String get rulesetEnableTips => '팁: 옵션을 켠 후 [${_root.meta.diversionRules}]로 이동하여 관련 규칙을 설정하세요. 그렇지 않으면 적용되지 않습니다';
	@override String get ispUserAgentTips => '[${_root.meta.isp}]는 [HTTP] 요청의 [UserAgent]에 따라 다른 구독 유형의 데이터를 보냅니다';
	@override String get ispDiversionTips => '[${_root.meta.isp}]는 트래픽 분류 규칙을 제공합니다. [V2Ray] 유형 구독은 트래픽 분류 규칙을 지원하지 않습니다';
	@override late final _TranslationsIspKo isp = _TranslationsIspKo._(_root);
	@override late final _TranslationsPermissionKo permission = _TranslationsPermissionKo._(_root);
	@override late final _TranslationsTlsKo tls = _TranslationsTlsKo._(_root);
	@override late final _TranslationsOutboundRuleModeKo outboundRuleMode = _TranslationsOutboundRuleModeKo._(_root);
	@override late final _TranslationsDnsProxyResolveModeKo dnsProxyResolveMode = _TranslationsDnsProxyResolveModeKo._(_root);
	@override late final _TranslationsProxyStrategyKo proxyStrategy = _TranslationsProxyStrategyKo._(_root);
	@override late final _TranslationsReloadReasonKo reloadReason = _TranslationsReloadReasonKo._(_root);
	@override late final _TranslationsThemeKo theme = _TranslationsThemeKo._(_root);
	@override String get downloadProxyStrategy => '다운로드 채널';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: 프록시 서버를 통해 DNS 서버에 연결하여 도메인 이름을 확인합니다\n[${_root.dnsProxyResolveMode.direct}]: DNS 서버에 직접 연결하여 도메인 이름을 확인합니다\n[${_root.dnsProxyResolveMode.fakeip}]: 프록시 서버가 대신 도메인 이름을 확인합니다. VPN 연결을 끊으면 앱을 재시작해야 할 수 있습니다. [TUN] 인바운드 트래픽에만 유효합니다';
	@override String get routeFinal => '최종';
	@override String get protocolSniff => '프로토콜 스니핑';
	@override String sendOrReceiveNotMatch({required Object p}) => '[${p}]를 사용하세요';
	@override String get turnOffPrivateDirect => '먼저 [사설 네트워크 직접 연결]을 활성화하세요';
	@override String targetConnectFailed({required Object p}) => '[${p}] 연결 실패. 기기가 동일한 LAN에 있는지 확인하세요';
	@override String get appleTVSync => '현재 코어 설정을 Apple TV - Karing에 동기화';
	@override String get appleTVSyncDone => '동기화가 완료되었습니다. Apple TV - Karing으로 이동하여 연결을 시작/재시작하세요';
	@override String get appleTVRemoveCoreConfig => 'Apple TV - Karing 코어 설정 삭제';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing의 코어 설정 파일이 삭제되었습니다. VPN 서비스가 종료되었습니다';
	@override String get appleTVUrlInvalid => '유효하지 않은 URL입니다. Apple TV - Karing을 열고 Karing에 표시된 QR 코드를 스캔하세요';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}]에 이 기능이 없습니다. 업데이트 후 다시 시도하세요';
	@override String appleCoreVersionNotMatch({required Object p}) => '코어 메이저 버전이 일치하지 않습니다. [${p}]를 업데이트 후 다시 시도하세요';
	@override String get remoteProfileEditConfirm => '프로필 업데이트 후 노드 변경 사항이 복구됩니다. 계속하시겠습니까?';
	@override String get mustBeValidHttpsURL => '유효한 https URL이어야 합니다';
	@override String fileNotExistReinstall({required Object p}) => '파일 [${p}]이 없습니다. 재설치하세요';
	@override String get noNetworkConnect => '인터넷 연결 없음';
	@override String get sudoPassword => 'sudo 비밀번호 (TUN 모드에 필요)';
	@override String get turnOffNetworkBeforeInstall => '업데이트를 설치하기 전에 [비행기 모드]로 전환하는 것을 권장합니다';
	@override String get latencyTestResolveIP => '수동 확인 시, 아웃렛 IP 확인';
	@override String get latencyTestConcurrency => '동시성';
	@override String get edgeRuntimeNotInstalled => '현재 기기에 Edge WebView2 런타임이 설치되어 있지 않아 페이지를 표시할 수 없습니다. Edge WebView2 런타임(x64)을 다운로드하여 설치하고 앱을 재시작한 후 다시 시도하세요.';
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
class _TranslationsAboutScreenKo implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

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
class _TranslationsBackupAndSyncWebdavScreenKo implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Server Url';
	@override String get webdavRequired => 'Can not be empty';
	@override String get webdavLoginFailed => 'Login failed:';
	@override String get webdavListFailed => 'Failed to get file list:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenKo implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

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
class _TranslationsDiversionRuleDetectScreenKo implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diversion Rule Detect';
	@override String get rule => 'Rule:';
	@override String get outbound => 'Proxy Server:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenKo implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Tip: Try to match the rules from top to bottom. If no rule is matched, use [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenKo implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP can not be empty';
	@override String get urlCanNotEmpty => 'URL can not be empty';
	@override String error({required Object p}) => 'Unsupported type:${p}';
	@override String get dnsDesc => 'The first column of delay data is the direct connection query delay;\nThe second column: Turn on [[Proxy Traffic]Resolve DNS through proxy server]: the delay data is the query delay forwarded through the current proxy server; if the [[Proxy Traffic]Resolve DNS through proxy server]: The delay data is the direct connection query delay';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenKo implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'File Content Viewer';
	@override String get clearFileContent => 'Are you sure to clear the content of the file?';
	@override String get clearFileContentTips => 'Are you sure to clear the content of the Profile file? Clearing the Profile file may cause data loss or abnormal application functions, please operate with caution';
}

// Path: HomeScreen
class _TranslationsHomeScreenKo implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

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
class _TranslationsLaunchFailedScreenKo implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'The app failed to start [Invalid process name], please reinstall the app to a separate directory';
	@override String get invalidProfile => 'The app failed to start [Failed to access the profile], please reinstall the app';
	@override String get invalidVersion => 'The app failed to start [Invalid version], please reinstall the app';
	@override String get systemVersionLow => 'The app failed to start [system version too low]';
	@override String get invalidInstallPath => 'The installation path is invalid, please reinstall it to a valid path';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenKo implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Profiles Merge';
	@override String get profilesMergeTarget => 'Target Profile';
	@override String get profilesMergeSource => 'Source Profiles';
	@override String get profilesMergeTips => 'Tip: Diversion of the source profiles will be discarded';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenKo implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

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
class _TranslationsNetConnectionsFilterScreenKo implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domain/IP';
	@override String get app => 'App';
	@override String get rule => 'Rule';
	@override String get chain => 'Outbound';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenKo implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Copied to CSV format';
	@override String get selectType => 'Select Diversion Type';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenKo implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Per-App Proxy';
	@override String get whiteListMode => 'Whitelist Mode';
	@override String get whiteListModeTip => 'When enabled: only the apps that have been checked are proxies; when not enabled: only the apps that are not checked are proxies';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenKo implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Country Or Region';
	@override String get Regions => 'Tip: Please set your current country or region correctly, otherwise it may cause network diversion problems';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenKo implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

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
class _TranslationsSettingsScreenKo implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

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
class _TranslationsUserAgreementScreenKo implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Your Privacy Comes First';
	@override String get agreeAndContinue => 'Accept & Continue';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenKo implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'The new version[${p}] is ready';
	@override String get update => 'Restart To Update';
	@override String get cancel => 'Not Now';
}

// Path: CommonWidget
class _TranslationsCommonWidgetKo implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'If [Always on VPN] is turned on, please turn off [Always on VPN] and try connecting again';
	@override String get resetPort => 'Please change the port to another available port or close the application occupying the port.';
}

// Path: main
class _TranslationsMainKo implements TranslationsMainEn {
	_TranslationsMainKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayKo tray = _TranslationsMainTrayKo._(_root);
}

// Path: meta
class _TranslationsMetaKo implements TranslationsMetaEn {
	_TranslationsMetaKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get enable => '활성화';
	@override String get disable => '비활성화';
	@override String get bydefault => '기본값';
	@override String get filter => '필터';
	@override String get filterMethod => '필터 방법';
	@override String get include => '포함';
	@override String get exclude => '제외';
	@override String get all => '모두';
	@override String get prefer => '우선';
	@override String get only => '전용';
	@override String get open => '열기';
	@override String get close => '닫기';
	@override String get quit => '종료';
	@override String get add => '추가';
	@override String get addSuccess => '추가 성공';
	@override String addFailed({required Object p}) => '추가 실패:${p}';
	@override String get remove => '삭제';
	@override String get removeConfirm => '정말 삭제하시겠습니까?';
	@override String get edit => '편집';
	@override String get view => '보기';
	@override String get more => '더 보기';
	@override String get tips => '정보';
	@override String get copy => '복사';
	@override String get save => '저장';
	@override String get ok => '확인';
	@override String get cancel => '취소';
	@override String get feedback => '피드백';
	@override String get feedbackContent => '피드백 내용';
	@override String get feedbackContentHit => '필수, 최대 500자';
	@override String get feedbackContentCannotEmpty => '피드백 내용은 비워둘 수 없습니다';
	@override String get faq => '자주 묻는 질문';
	@override String get htmlTools => 'HTML 도구 세트';
	@override String get download => '다운로드';
	@override String get upload => '업로드';
	@override String get downloadSpeed => '다운로드 속도';
	@override String get uploadSpeed => '업로드 속도';
	@override String get loading => '로딩 중...';
	@override String get convert => '변환';
	@override String get check => '확인';
	@override String get detect => '탐지';
	@override String get cache => '캐시';
	@override String get days => '일';
	@override String get hours => '시간';
	@override String get minutes => '분';
	@override String get seconds => '초';
	@override String get milliseconds => '밀리초';
	@override String get tolerance => '허용 오차';
	@override String get dateTimePeriod => '기간';
	@override String get protocol => '프로토콜';
	@override String get search => '검색';
	@override String get custom => '사용자 정의';
	@override String get inbound => '인바운드';
	@override String get outbound => '아웃바운드';
	@override String get destination => '목적지';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => '연결';
	@override String get disconnect => '연결 끊기';
	@override String get reconnect => '재연결';
	@override String get connected => '연결됨';
	@override String get disconnected => '연결 끊김';
	@override String get connecting => '연결 중';
	@override String get connectTimeout => '연결 시간 초과';
	@override String get timeout => '시간 초과';
	@override String get timeoutDuration => '시간 초과 기간';
	@override String get runDuration => '실행 시간';
	@override String get latency => '지연 시간';
	@override String get latencyTest => '지연 시간 확인';
	@override String get language => '언어';
	@override String get next => '다음';
	@override String get done => '완료';
	@override String get apply => '적용';
	@override String get refresh => '새로고침';
	@override String get retry => '다시 시도하시겠습니까?';
	@override String get update => '업데이트';
	@override String get updateInterval => '업데이트 간격';
	@override String get updateInterval5mTips => '최소: 5분';
	@override String updateFailed({required Object p}) => '업데이트 실패:${p}';
	@override String get samplingUnit => '샘플링 시간 단위';
	@override String get queryResultCount => '쿼리 결과 수';
	@override String queryLimit({required Object p}) => '최대 ${p}개 데이터 표시';
	@override String get none => '없음';
	@override String get start => '시작';
	@override String get pause => '일시 정지';
	@override String get reset => '초기화';
	@override String get submit => '제출';
	@override String get user => '사용자';
	@override String get account => '계정';
	@override String get password => '비밀번호';
	@override String get required => '필수';
	@override String get type => '유형';
	@override String get path => '경로';
	@override String get local => '로컬';
	@override String get remote => '원격';
	@override String get other => '기타';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => '유효하지 않은 URL';
	@override String get urlCannotEmpty => '링크는 비워둘 수 없습니다';
	@override String get urlTooLong => 'URL이 너무 깁니다 (>8182)';
	@override String get copyUrl => '링크 복사';
	@override String get openUrl => '링크 열기';
	@override String get shareUrl => '링크 공유';
	@override String get speedTestUrl => '속도 테스트 URL';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => '고정 IP';
	@override String get staticIPTips => '[TUN HijackDNS] 또는 [${_root.SettingsScreen.inboundDomainResolve}]를 활성화해야 합니다.';
	@override String get isp => 'VPN 제공업체';
	@override String get domainSuffix => '도메인 접미사';
	@override String get domain => '도메인';
	@override String get domainKeyword => '도메인 키워드';
	@override String get domainRegex => '도메인 정규식';
	@override String get ip => 'IP';
	@override String get port => '포트';
	@override String get portRange => '포트 범위';
	@override String get appPackage => '앱 패키지 ID';
	@override String get processName => '프로세스 이름';
	@override String get processPath => '프로세스 경로';
	@override String get processDir => '프로세스 디렉토리';
	@override String get systemProxy => '시스템 프록시';
	@override String get percentage => '백분율';
	@override String get statistics => '통계';
	@override String get statisticsAndAnalysis => '통계 및 분석';
	@override String get statisticsDataDesensitize => '데이터 비식별화';
	@override String get statisticsDataDesensitizeTips => '프로세스/패키지 ID/대상 도메인/대상 IP 등이 비식별화 후 *로 대체되어 저장됩니다';
	@override String get records => '기록';
	@override String get requestRecords => '요청 기록';
	@override String get netInterfaces => '네트워크 인터페이스';
	@override String get netSpeed => '속도';
	@override String get memoryTrendChart => '메모리 추세 차트';
	@override String get goroutinesTrendChart => 'GoRoutines 추세 차트';
	@override String get trafficTrendChart => '트래픽 추세 차트';
	@override String get trafficDistributionChart => '트래픽 분포 차트';
	@override String get connectionChart => '연결 추세 차트';
	@override String get memoryChart => '메모리 추세 차트';
	@override String get trafficStatistics => '트래픽 통계';
	@override String get traffic => '트래픽';
	@override String get trafficTotal => '총 트래픽';
	@override String get trafficProxy => '프록시 트래픽';
	@override String get trafficDirect => '직접 트래픽';
	@override String get website => '웹사이트';
	@override String get memory => '메모리';
	@override String get outboundMode => '아웃바운드 모드';
	@override String get rule => '규칙';
	@override String get global => '전역';
	@override String get qrcode => 'QR 코드';
	@override String get qrcodeTooLong => '텍스트가 너무 길어 표시할 수 없습니다';
	@override String get qrcodeShare => 'QR 코드 공유';
	@override String get textToQrcode => '텍스트를 QR 코드로 변환';
	@override String get qrcodeScan => 'QR 코드 스캔';
	@override String get qrcodeScanResult => '스캔 결과';
	@override String get qrcodeScanFromImage => '이미지에서 스캔';
	@override String get qrcodeScanResultFailed => '이미지 분석 실패. 스크린샷이 유효한 QR 코드인지 확인하세요';
	@override String get qrcodeScanResultEmpty => '스캔 결과가 비어 있습니다';
	@override String get screenshot => '스크린샷';
	@override String get backupAndSync => '백업 및 동기화';
	@override String get autoBackup => '자동 백업';
	@override String get noProfileGotAutoBackup => '[${_root.meta.myProfiles}] 등의 데이터가 유실된 경우, [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] 또는 기타 백업 소스(iCloud, Webdav 등)에서 복구할 수 있습니다';
	@override String get autoBackupAddProfile => '프로필 추가 후';
	@override String get autoBackupRemoveProfile => '프로필 삭제 후';
	@override String get profile => '프로필';
	@override String get currentProfile => '현재 프로필';
	@override String get importAndExport => '가져오기 및 내보내기';
	@override String get import => '가져오기';
	@override String get importFromUrl => 'URL에서 가져오기';
	@override String get export => '내보내기';
	@override String get send => '전송';
	@override String get receive => '수신';
	@override String get sendConfirm => '전송하시겠습니까?';
	@override String get termOfUse => '서비스 약관';
	@override String get privacyPolicy => '개인정보 처리방침';
	@override String get about => '정보';
	@override String get name => '이름';
	@override String get version => '버전';
	@override String get notice => '알림';
	@override String appNotifyWithReason({required Object p, required Object p1}) => '동작:${p}\n사유:${p1}';
	@override String get sort => '정렬';
	@override String get novice => '초보자 모드';
	@override String get willCompleteAfterRebootInstall => '시스템 확장 프로그램 설치를 완료하려면 기기를 재부팅하세요';
	@override String get willCompleteAfterRebootUninstall => '시스템 확장 프로그램 삭제를 완료하려면 기기를 재부팅하세요';
	@override String get requestNeedsUserApproval => '1. [시스템 설정]-[개인정보 보호 및 보안]에서 Karing의 시스템 확장 프로그램 설치를 [허용]하세요\n2. [시스템 설정]-[일반]-[로그인 항목 및 확장 프로그램-네트워크 확장 프로그램]에서 [karingServiceSE]를 활성화하세요\n완료 후 다시 연결하세요';
	@override String get FullDiskAccessPermissionRequired => '[시스템 설정]-[개인정보 보호 및 보안]-[전체 디스크 접근 권한]에서 [karingServiceSE] 권한을 활성화하고 다시 연결하세요';
	@override String get tvMode => 'TV 모드';
	@override String get recommended => '추천';
	@override String innerError({required Object p}) => '내부 오류:${p}';
	@override String get logicOperation => '논리 연산';
	@override String get share => '공유';
	@override String get candidateWord => '후보 단어';
	@override String get keywordOrRegx => '키워드/정규식';
	@override String get importFromClipboard => '클립보드에서 가져오기';
	@override String get exportToClipboard => '클립보드로 내보내기';
	@override String get server => '서버';
	@override String get ads => '광고';
	@override String get adsRemove => '광고 제거';
	@override String get donate => '후원';
	@override String get diversion => '분류';
	@override String get diversionRules => '분류 규칙';
	@override String get diversionCustomGroup => '사용자 정의 분류 그룹';
	@override String get urlTestCustomGroup => '사용자 정의 자동 선택';
	@override String get setting => '설정';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN 동기화';
	@override String get lanSyncNotQuitTips => '동기화가 완료될 때까지 이 화면을 나가지 마세요';
	@override String get deviceNoSpace => '디스크 공간 부족';
	@override String get hideSystemApp => '시스템 앱 숨기기';
	@override String get hideAppIcon => '앱 아이콘 숨기기';
	@override String get hideDockIcon => 'Dock 아이콘 숨기기';
	@override String get remark => '메모';
	@override String get remarkExist => '메모가 이미 존재합니다. 다른 이름을 사용하세요';
	@override String get remarkCannotEmpty => '메모는 비워둘 수 없습니다';
	@override String get remarkTooLong => '메모는 최대 32자까지 가능합니다';
	@override String get openDir => '파일 디렉토리 열기';
	@override String get fileChoose => '파일 선택';
	@override String get filePathCannotEmpty => '파일 경로는 비워둘 수 없습니다';
	@override String fileNotExist({required Object p}) => '파일이 존재하지 않습니다:${p}';
	@override String fileTypeInvalid({required Object p}) => '유효하지 않은 파일 형식입니다:${p}';
	@override String get uwpExemption => 'UWP 네트워크 격리 예외';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => '프로필 가져오기';
	@override String get addProfile => '프로필 추가';
	@override String get myProfiles => '내 프로필';
	@override String get profileEdit => '프로필 편집';
	@override String get profileEditUrlExist => 'URL이 이미 존재합니다. 다른 URL을 사용하세요';
	@override String get profileEditReloadAfterProfileUpdate => '프로필 업데이트 후 다시 로드';
	@override String get profileEditTestLatencyAfterProfileUpdate => '프로필 자동 업데이트 후 지연 시간 테스트 시작';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN이 연결되어 있어야 하며, [프로필 업데이트 후 다시 로드]가 활성화되어 있어야 합니다';
	@override String get profileEditTestLatencyAutoRemove => '지연 시간 테스트에 실패한 서버 자동 제거';
	@override String get profileEditTestLatencyAutoRemoveTips => '최대 3번 시도합니다';
	@override String get profileImport => '프로필 파일 가져오기';
	@override String get profileAddUrlOrContent => '프로필 링크 추가';
	@override String get profileExists => '프로필이 이미 존재합니다. 중복 추가하지 마세요';
	@override String get profileUrlOrContent => '프로필 링크/내용';
	@override String get profileUrlOrContentHit => '프로필 링크/내용 [필수] (Clash, V2ray(일괄 지원), Stash, Karing, Sing-box, Shadowsocks, 하위 프로필 링크 지원)';
	@override String get profileUrlOrContentCannotEmpty => '프로필 링크는 비워둘 수 없습니다';
	@override String profileAddFailedFormatException({required Object p}) => '형식이 잘못되었습니다. 수정 후 다시 추가하세요:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => '추가 실패: ${p}. [UserAgent]를 변경하여 다시 시도하거나, 기기 기본 브라우저를 사용하여 설정 링크를 열고 브라우저에서 다운로드한 설정 파일을 이 앱으로 가져오세요';
	@override String profileAddFailedHandshakeException({required Object p}) => '추가 실패: ${p}. 프록시를 켜거나 현재 프록시 노드를 변경한 후 다시 시도하세요';
	@override String get profileAddParseFailed => '프로필 분석 실패';
	@override String get profileAddNoServerAvaliable => '사용 가능한 서버가 없습니다. 프로필 링크 또는 프로필 파일이 유효한지 확인하세요. 프로필이 GitHub에서 제공된 경우, 페이지의 [Raw] 버튼에서 링크를 가져오세요';
	@override String get profileAddWrapSuccess => '프로필이 성공적으로 생성되었습니다. [${_root.meta.myProfiles}]에서 확인하세요';
}

// Path: isp
class _TranslationsIspKo implements TranslationsIspEn {
	_TranslationsIspKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get bind => '[${_root.meta.isp}]에 바인딩 ';
	@override String unbind({required Object p}) => '바인딩 해제[${p}]';
	@override String faq({required Object p}) => '자주 묻는 질문[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => '팔로우[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] 유효하지 않거나 만료됨';
}

// Path: permission
class _TranslationsPermissionKo implements TranslationsPermissionEn {
	_TranslationsPermissionKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get camera => '카메라';
	@override String get screen => '화면 녹화';
	@override String get appQuery => '앱 목록 가져오기';
	@override String request({required Object p}) => '[${p}] 권한 켜기';
	@override String requestNeed({required Object p}) => '[${p}] 권한을 켜주세요';
}

// Path: tls
class _TranslationsTlsKo implements TranslationsTlsEn {
	_TranslationsTlsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get insecure => '인증서 검증 건너뛰기';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'TLS 조각화 활성화';
	@override String get fragmentSize => 'TLS 조각 크기';
	@override String get fragmentSleep => 'TLS 조각 대기 시간';
	@override String get mixedCaseSNIEnable => 'TLS 혼합 SNI 활성화';
	@override String get paddingEnable => 'TLS 패딩 활성화';
	@override String get paddingSize => 'TLS 패딩 크기';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeKo implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => '현재 선택됨';
	@override String get urltest => '자동 선택';
	@override String get direct => '직접 연결';
	@override String get block => '차단';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeKo implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyKo implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonKo implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => '프로필 업데이트';
}

// Path: theme
class _TranslationsThemeKo implements TranslationsThemeEn {
	_TranslationsThemeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get light => '라이트';
	@override String get dark => '다크';
	@override String get auto => '자동';
}

// Path: main.tray
class _TranslationsMainTrayKo implements TranslationsMainTrayEn {
	_TranslationsMainTrayKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Open';
	@override String get menuExit => 'Exit';
}

/// The flat map containing all translations for locale <ko>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsKo {
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
			'meta.enable' => '활성화',
			'meta.disable' => '비활성화',
			'meta.bydefault' => '기본값',
			'meta.filter' => '필터',
			'meta.filterMethod' => '필터 방법',
			'meta.include' => '포함',
			'meta.exclude' => '제외',
			'meta.all' => '모두',
			'meta.prefer' => '우선',
			'meta.only' => '전용',
			'meta.open' => '열기',
			'meta.close' => '닫기',
			'meta.quit' => '종료',
			'meta.add' => '추가',
			'meta.addSuccess' => '추가 성공',
			'meta.addFailed' => ({required Object p}) => '추가 실패:${p}',
			'meta.remove' => '삭제',
			'meta.removeConfirm' => '정말 삭제하시겠습니까?',
			'meta.edit' => '편집',
			'meta.view' => '보기',
			'meta.more' => '더 보기',
			'meta.tips' => '정보',
			'meta.copy' => '복사',
			'meta.save' => '저장',
			'meta.ok' => '확인',
			'meta.cancel' => '취소',
			'meta.feedback' => '피드백',
			'meta.feedbackContent' => '피드백 내용',
			'meta.feedbackContentHit' => '필수, 최대 500자',
			'meta.feedbackContentCannotEmpty' => '피드백 내용은 비워둘 수 없습니다',
			'meta.faq' => '자주 묻는 질문',
			'meta.htmlTools' => 'HTML 도구 세트',
			'meta.download' => '다운로드',
			'meta.upload' => '업로드',
			'meta.downloadSpeed' => '다운로드 속도',
			'meta.uploadSpeed' => '업로드 속도',
			'meta.loading' => '로딩 중...',
			'meta.convert' => '변환',
			'meta.check' => '확인',
			'meta.detect' => '탐지',
			'meta.cache' => '캐시',
			'meta.days' => '일',
			'meta.hours' => '시간',
			'meta.minutes' => '분',
			'meta.seconds' => '초',
			'meta.milliseconds' => '밀리초',
			'meta.tolerance' => '허용 오차',
			'meta.dateTimePeriod' => '기간',
			'meta.protocol' => '프로토콜',
			'meta.search' => '검색',
			'meta.custom' => '사용자 정의',
			'meta.inbound' => '인바운드',
			'meta.outbound' => '아웃바운드',
			'meta.destination' => '목적지',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => '연결',
			'meta.disconnect' => '연결 끊기',
			'meta.reconnect' => '재연결',
			'meta.connected' => '연결됨',
			'meta.disconnected' => '연결 끊김',
			'meta.connecting' => '연결 중',
			'meta.connectTimeout' => '연결 시간 초과',
			'meta.timeout' => '시간 초과',
			'meta.timeoutDuration' => '시간 초과 기간',
			'meta.runDuration' => '실행 시간',
			'meta.latency' => '지연 시간',
			'meta.latencyTest' => '지연 시간 확인',
			'meta.language' => '언어',
			'meta.next' => '다음',
			'meta.done' => '완료',
			'meta.apply' => '적용',
			'meta.refresh' => '새로고침',
			'meta.retry' => '다시 시도하시겠습니까?',
			'meta.update' => '업데이트',
			'meta.updateInterval' => '업데이트 간격',
			'meta.updateInterval5mTips' => '최소: 5분',
			'meta.updateFailed' => ({required Object p}) => '업데이트 실패:${p}',
			'meta.samplingUnit' => '샘플링 시간 단위',
			'meta.queryResultCount' => '쿼리 결과 수',
			'meta.queryLimit' => ({required Object p}) => '최대 ${p}개 데이터 표시',
			'meta.none' => '없음',
			'meta.start' => '시작',
			'meta.pause' => '일시 정지',
			'meta.reset' => '초기화',
			'meta.submit' => '제출',
			'meta.user' => '사용자',
			'meta.account' => '계정',
			'meta.password' => '비밀번호',
			'meta.required' => '필수',
			'meta.type' => '유형',
			'meta.path' => '경로',
			'meta.local' => '로컬',
			'meta.remote' => '원격',
			'meta.other' => '기타',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => '유효하지 않은 URL',
			'meta.urlCannotEmpty' => '링크는 비워둘 수 없습니다',
			'meta.urlTooLong' => 'URL이 너무 깁니다 (>8182)',
			'meta.copyUrl' => '링크 복사',
			'meta.openUrl' => '링크 열기',
			'meta.shareUrl' => '링크 공유',
			'meta.speedTestUrl' => '속도 테스트 URL',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => '고정 IP',
			'meta.staticIPTips' => '[TUN HijackDNS] 또는 [${_root.SettingsScreen.inboundDomainResolve}]를 활성화해야 합니다.',
			'meta.isp' => 'VPN 제공업체',
			'meta.domainSuffix' => '도메인 접미사',
			'meta.domain' => '도메인',
			'meta.domainKeyword' => '도메인 키워드',
			'meta.domainRegex' => '도메인 정규식',
			'meta.ip' => 'IP',
			'meta.port' => '포트',
			'meta.portRange' => '포트 범위',
			'meta.appPackage' => '앱 패키지 ID',
			'meta.processName' => '프로세스 이름',
			'meta.processPath' => '프로세스 경로',
			'meta.processDir' => '프로세스 디렉토리',
			'meta.systemProxy' => '시스템 프록시',
			'meta.percentage' => '백분율',
			'meta.statistics' => '통계',
			'meta.statisticsAndAnalysis' => '통계 및 분석',
			'meta.statisticsDataDesensitize' => '데이터 비식별화',
			'meta.statisticsDataDesensitizeTips' => '프로세스/패키지 ID/대상 도메인/대상 IP 등이 비식별화 후 *로 대체되어 저장됩니다',
			'meta.records' => '기록',
			'meta.requestRecords' => '요청 기록',
			'meta.netInterfaces' => '네트워크 인터페이스',
			'meta.netSpeed' => '속도',
			'meta.memoryTrendChart' => '메모리 추세 차트',
			'meta.goroutinesTrendChart' => 'GoRoutines 추세 차트',
			'meta.trafficTrendChart' => '트래픽 추세 차트',
			'meta.trafficDistributionChart' => '트래픽 분포 차트',
			'meta.connectionChart' => '연결 추세 차트',
			'meta.memoryChart' => '메모리 추세 차트',
			'meta.trafficStatistics' => '트래픽 통계',
			'meta.traffic' => '트래픽',
			'meta.trafficTotal' => '총 트래픽',
			'meta.trafficProxy' => '프록시 트래픽',
			'meta.trafficDirect' => '직접 트래픽',
			'meta.website' => '웹사이트',
			'meta.memory' => '메모리',
			'meta.outboundMode' => '아웃바운드 모드',
			'meta.rule' => '규칙',
			'meta.global' => '전역',
			'meta.qrcode' => 'QR 코드',
			'meta.qrcodeTooLong' => '텍스트가 너무 길어 표시할 수 없습니다',
			'meta.qrcodeShare' => 'QR 코드 공유',
			'meta.textToQrcode' => '텍스트를 QR 코드로 변환',
			'meta.qrcodeScan' => 'QR 코드 스캔',
			'meta.qrcodeScanResult' => '스캔 결과',
			'meta.qrcodeScanFromImage' => '이미지에서 스캔',
			'meta.qrcodeScanResultFailed' => '이미지 분석 실패. 스크린샷이 유효한 QR 코드인지 확인하세요',
			'meta.qrcodeScanResultEmpty' => '스캔 결과가 비어 있습니다',
			'meta.screenshot' => '스크린샷',
			'meta.backupAndSync' => '백업 및 동기화',
			'meta.autoBackup' => '자동 백업',
			'meta.noProfileGotAutoBackup' => '[${_root.meta.myProfiles}] 등의 데이터가 유실된 경우, [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] 또는 기타 백업 소스(iCloud, Webdav 등)에서 복구할 수 있습니다',
			'meta.autoBackupAddProfile' => '프로필 추가 후',
			'meta.autoBackupRemoveProfile' => '프로필 삭제 후',
			'meta.profile' => '프로필',
			'meta.currentProfile' => '현재 프로필',
			'meta.importAndExport' => '가져오기 및 내보내기',
			'meta.import' => '가져오기',
			'meta.importFromUrl' => 'URL에서 가져오기',
			'meta.export' => '내보내기',
			'meta.send' => '전송',
			'meta.receive' => '수신',
			'meta.sendConfirm' => '전송하시겠습니까?',
			'meta.termOfUse' => '서비스 약관',
			'meta.privacyPolicy' => '개인정보 처리방침',
			'meta.about' => '정보',
			'meta.name' => '이름',
			'meta.version' => '버전',
			'meta.notice' => '알림',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => '동작:${p}\n사유:${p1}',
			'meta.sort' => '정렬',
			'meta.novice' => '초보자 모드',
			'meta.willCompleteAfterRebootInstall' => '시스템 확장 프로그램 설치를 완료하려면 기기를 재부팅하세요',
			'meta.willCompleteAfterRebootUninstall' => '시스템 확장 프로그램 삭제를 완료하려면 기기를 재부팅하세요',
			'meta.requestNeedsUserApproval' => '1. [시스템 설정]-[개인정보 보호 및 보안]에서 Karing의 시스템 확장 프로그램 설치를 [허용]하세요\n2. [시스템 설정]-[일반]-[로그인 항목 및 확장 프로그램-네트워크 확장 프로그램]에서 [karingServiceSE]를 활성화하세요\n완료 후 다시 연결하세요',
			'meta.FullDiskAccessPermissionRequired' => '[시스템 설정]-[개인정보 보호 및 보안]-[전체 디스크 접근 권한]에서 [karingServiceSE] 권한을 활성화하고 다시 연결하세요',
			'meta.tvMode' => 'TV 모드',
			'meta.recommended' => '추천',
			'meta.innerError' => ({required Object p}) => '내부 오류:${p}',
			'meta.logicOperation' => '논리 연산',
			'meta.share' => '공유',
			'meta.candidateWord' => '후보 단어',
			'meta.keywordOrRegx' => '키워드/정규식',
			'meta.importFromClipboard' => '클립보드에서 가져오기',
			'meta.exportToClipboard' => '클립보드로 내보내기',
			'meta.server' => '서버',
			'meta.ads' => '광고',
			'meta.adsRemove' => '광고 제거',
			'meta.donate' => '후원',
			'meta.diversion' => '분류',
			'meta.diversionRules' => '분류 규칙',
			'meta.diversionCustomGroup' => '사용자 정의 분류 그룹',
			'meta.urlTestCustomGroup' => '사용자 정의 자동 선택',
			'meta.setting' => '설정',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN 동기화',
			'meta.lanSyncNotQuitTips' => '동기화가 완료될 때까지 이 화면을 나가지 마세요',
			'meta.deviceNoSpace' => '디스크 공간 부족',
			'meta.hideSystemApp' => '시스템 앱 숨기기',
			'meta.hideAppIcon' => '앱 아이콘 숨기기',
			'meta.hideDockIcon' => 'Dock 아이콘 숨기기',
			'meta.remark' => '메모',
			'meta.remarkExist' => '메모가 이미 존재합니다. 다른 이름을 사용하세요',
			'meta.remarkCannotEmpty' => '메모는 비워둘 수 없습니다',
			'meta.remarkTooLong' => '메모는 최대 32자까지 가능합니다',
			'meta.openDir' => '파일 디렉토리 열기',
			'meta.fileChoose' => '파일 선택',
			'meta.filePathCannotEmpty' => '파일 경로는 비워둘 수 없습니다',
			'meta.fileNotExist' => ({required Object p}) => '파일이 존재하지 않습니다:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => '유효하지 않은 파일 형식입니다:${p}',
			'meta.uwpExemption' => 'UWP 네트워크 격리 예외',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => '프로필 가져오기',
			'meta.addProfile' => '프로필 추가',
			'meta.myProfiles' => '내 프로필',
			'meta.profileEdit' => '프로필 편집',
			'meta.profileEditUrlExist' => 'URL이 이미 존재합니다. 다른 URL을 사용하세요',
			'meta.profileEditReloadAfterProfileUpdate' => '프로필 업데이트 후 다시 로드',
			'meta.profileEditTestLatencyAfterProfileUpdate' => '프로필 자동 업데이트 후 지연 시간 테스트 시작',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN이 연결되어 있어야 하며, [프로필 업데이트 후 다시 로드]가 활성화되어 있어야 합니다',
			'meta.profileEditTestLatencyAutoRemove' => '지연 시간 테스트에 실패한 서버 자동 제거',
			'meta.profileEditTestLatencyAutoRemoveTips' => '최대 3번 시도합니다',
			'meta.profileImport' => '프로필 파일 가져오기',
			'meta.profileAddUrlOrContent' => '프로필 링크 추가',
			'meta.profileExists' => '프로필이 이미 존재합니다. 중복 추가하지 마세요',
			'meta.profileUrlOrContent' => '프로필 링크/내용',
			'meta.profileUrlOrContentHit' => '프로필 링크/내용 [필수] (Clash, V2ray(일괄 지원), Stash, Karing, Sing-box, Shadowsocks, 하위 프로필 링크 지원)',
			'meta.profileUrlOrContentCannotEmpty' => '프로필 링크는 비워둘 수 없습니다',
			'meta.profileAddFailedFormatException' => ({required Object p}) => '형식이 잘못되었습니다. 수정 후 다시 추가하세요:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => '추가 실패: ${p}. [UserAgent]를 변경하여 다시 시도하거나, 기기 기본 브라우저를 사용하여 설정 링크를 열고 브라우저에서 다운로드한 설정 파일을 이 앱으로 가져오세요',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => '추가 실패: ${p}. 프록시를 켜거나 현재 프록시 노드를 변경한 후 다시 시도하세요',
			'meta.profileAddParseFailed' => '프로필 분석 실패',
			'meta.profileAddNoServerAvaliable' => '사용 가능한 서버가 없습니다. 프로필 링크 또는 프로필 파일이 유효한지 확인하세요. 프로필이 GitHub에서 제공된 경우, 페이지의 [Raw] 버튼에서 링크를 가져오세요',
			'meta.profileAddWrapSuccess' => '프로필이 성공적으로 생성되었습니다. [${_root.meta.myProfiles}]에서 확인하세요',
			'diversionRulesKeep' => '[${_root.meta.isp}] ${_root.meta.diversionRules} 유지',
			'diversionCustomGroupPreset' => '프리셋 [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => '참고: 활성화된 항목은 [${_root.meta.diversionCustomGroup}] 및 [${_root.meta.diversionRules}]에 추가/덮어쓰기됩니다',
			'diversionCustomGroupAddTips' => '참고: 추가 후 수동으로 정렬을 조정해야 할 수도 있습니다. 그렇지 않으면 새로 추가된 분류가 적용되지 않을 수 있습니다',
			'rulesetEnableTips' => '팁: 옵션을 켠 후 [${_root.meta.diversionRules}]로 이동하여 관련 규칙을 설정하세요. 그렇지 않으면 적용되지 않습니다',
			'ispUserAgentTips' => '[${_root.meta.isp}]는 [HTTP] 요청의 [UserAgent]에 따라 다른 구독 유형의 데이터를 보냅니다',
			'ispDiversionTips' => '[${_root.meta.isp}]는 트래픽 분류 규칙을 제공합니다. [V2Ray] 유형 구독은 트래픽 분류 규칙을 지원하지 않습니다',
			'isp.bind' => '[${_root.meta.isp}]에 바인딩 ',
			'isp.unbind' => ({required Object p}) => '바인딩 해제[${p}]',
			'isp.faq' => ({required Object p}) => '자주 묻는 질문[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => '팔로우[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] 유효하지 않거나 만료됨',
			'permission.camera' => '카메라',
			'permission.screen' => '화면 녹화',
			'permission.appQuery' => '앱 목록 가져오기',
			'permission.request' => ({required Object p}) => '[${p}] 권한 켜기',
			'permission.requestNeed' => ({required Object p}) => '[${p}] 권한을 켜주세요',
			'tls.insecure' => '인증서 검증 건너뛰기',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'TLS 조각화 활성화',
			'tls.fragmentSize' => 'TLS 조각 크기',
			'tls.fragmentSleep' => 'TLS 조각 대기 시간',
			'tls.mixedCaseSNIEnable' => 'TLS 혼합 SNI 활성화',
			'tls.paddingEnable' => 'TLS 패딩 활성화',
			'tls.paddingSize' => 'TLS 패딩 크기',
			'outboundRuleMode.currentSelected' => '현재 선택됨',
			_ => null,
		} ?? switch (path) {
			'outboundRuleMode.urltest' => '자동 선택',
			'outboundRuleMode.direct' => '직접 연결',
			'outboundRuleMode.block' => '차단',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => '프로필 업데이트',
			'theme.light' => '라이트',
			'theme.dark' => '다크',
			'theme.auto' => '자동',
			'downloadProxyStrategy' => '다운로드 채널',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: 프록시 서버를 통해 DNS 서버에 연결하여 도메인 이름을 확인합니다\n[${_root.dnsProxyResolveMode.direct}]: DNS 서버에 직접 연결하여 도메인 이름을 확인합니다\n[${_root.dnsProxyResolveMode.fakeip}]: 프록시 서버가 대신 도메인 이름을 확인합니다. VPN 연결을 끊으면 앱을 재시작해야 할 수 있습니다. [TUN] 인바운드 트래픽에만 유효합니다',
			'routeFinal' => '최종',
			'protocolSniff' => '프로토콜 스니핑',
			'sendOrReceiveNotMatch' => ({required Object p}) => '[${p}]를 사용하세요',
			'turnOffPrivateDirect' => '먼저 [사설 네트워크 직접 연결]을 활성화하세요',
			'targetConnectFailed' => ({required Object p}) => '[${p}] 연결 실패. 기기가 동일한 LAN에 있는지 확인하세요',
			'appleTVSync' => '현재 코어 설정을 Apple TV - Karing에 동기화',
			'appleTVSyncDone' => '동기화가 완료되었습니다. Apple TV - Karing으로 이동하여 연결을 시작/재시작하세요',
			'appleTVRemoveCoreConfig' => 'Apple TV - Karing 코어 설정 삭제',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - Karing의 코어 설정 파일이 삭제되었습니다. VPN 서비스가 종료되었습니다',
			'appleTVUrlInvalid' => '유효하지 않은 URL입니다. Apple TV - Karing을 열고 Karing에 표시된 QR 코드를 스캔하세요',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}]에 이 기능이 없습니다. 업데이트 후 다시 시도하세요',
			'appleCoreVersionNotMatch' => ({required Object p}) => '코어 메이저 버전이 일치하지 않습니다. [${p}]를 업데이트 후 다시 시도하세요',
			'remoteProfileEditConfirm' => '프로필 업데이트 후 노드 변경 사항이 복구됩니다. 계속하시겠습니까?',
			'mustBeValidHttpsURL' => '유효한 https URL이어야 합니다',
			'fileNotExistReinstall' => ({required Object p}) => '파일 [${p}]이 없습니다. 재설치하세요',
			'noNetworkConnect' => '인터넷 연결 없음',
			'sudoPassword' => 'sudo 비밀번호 (TUN 모드에 필요)',
			'turnOffNetworkBeforeInstall' => '업데이트를 설치하기 전에 [비행기 모드]로 전환하는 것을 권장합니다',
			'latencyTestResolveIP' => '수동 확인 시, 아웃렛 IP 확인',
			'latencyTestConcurrency' => '동시성',
			'edgeRuntimeNotInstalled' => '현재 기기에 Edge WebView2 런타임이 설치되어 있지 않아 페이지를 표시할 수 없습니다. Edge WebView2 런타임(x64)을 다운로드하여 설치하고 앱을 재시작한 후 다시 시도하세요.',
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
