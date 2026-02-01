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
class TranslationsFr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenFr AboutScreen = _TranslationsAboutScreenFr._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenFr BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenFr._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenFr DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenFr._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenFr DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenFr._(_root);
	@override late final _TranslationsDiversionRulesScreenFr DiversionRulesScreen = _TranslationsDiversionRulesScreenFr._(_root);
	@override late final _TranslationsDnsSettingsScreenFr DnsSettingsScreen = _TranslationsDnsSettingsScreenFr._(_root);
	@override late final _TranslationsFileContentViewerScreenFr FileContentViewerScreen = _TranslationsFileContentViewerScreenFr._(_root);
	@override late final _TranslationsHomeScreenFr HomeScreen = _TranslationsHomeScreenFr._(_root);
	@override late final _TranslationsLaunchFailedScreenFr LaunchFailedScreen = _TranslationsLaunchFailedScreenFr._(_root);
	@override late final _TranslationsMyProfilesMergeScreenFr MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenFr._(_root);
	@override late final _TranslationsNetCheckScreenFr NetCheckScreen = _TranslationsNetCheckScreenFr._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenFr NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenFr._(_root);
	@override late final _TranslationsNetConnectionsScreenFr NetConnectionsScreen = _TranslationsNetConnectionsScreenFr._(_root);
	@override late final _TranslationsPerAppAndroidScreenFr PerAppAndroidScreen = _TranslationsPerAppAndroidScreenFr._(_root);
	@override late final _TranslationsRegionSettingsScreenFr RegionSettingsScreen = _TranslationsRegionSettingsScreenFr._(_root);
	@override late final _TranslationsServerSelectScreenFr ServerSelectScreen = _TranslationsServerSelectScreenFr._(_root);
	@override late final _TranslationsSettingsScreenFr SettingsScreen = _TranslationsSettingsScreenFr._(_root);
	@override late final _TranslationsUserAgreementScreenFr UserAgreementScreen = _TranslationsUserAgreementScreenFr._(_root);
	@override late final _TranslationsVersionUpdateScreenFr VersionUpdateScreen = _TranslationsVersionUpdateScreenFr._(_root);
	@override late final _TranslationsCommonWidgetFr CommonWidget = _TranslationsCommonWidgetFr._(_root);
	@override late final _TranslationsMainFr main = _TranslationsMainFr._(_root);
	@override late final _TranslationsMetaFr meta = _TranslationsMetaFr._(_root);
	@override String get diversionRulesKeep => 'Conserver [${_root.meta.isp}] ${_root.meta.diversionRules}';
	@override String get diversionCustomGroupPreset => 'Préréglage [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Note : Les éléments activés seront ajoutés/écrasés dans [${_root.meta.diversionCustomGroup}] et [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Note : Après l\'ajout, vous devrez peut-être ajuster manuellement l\'ordre, sinon la nouvelle diversion pourrait ne pas être effective';
	@override String get rulesetEnableTips => 'Conseil : Après avoir activé les options, veuillez aller dans [${_root.meta.diversionRules}] pour définir les règles pertinentes, sinon elles ne seront pas effectives';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] enverra des données de différents types d\'abonnement en fonction de l\' [UserAgent] dans la requête [HTTP]';
	@override String get ispDiversionTips => '[${_root.meta.isp}] fournit des règles de diversion de trafic ; les abonnements de type [V2Ray] ne supportent pas les règles de diversion de trafic';
	@override late final _TranslationsIspFr isp = _TranslationsIspFr._(_root);
	@override late final _TranslationsPermissionFr permission = _TranslationsPermissionFr._(_root);
	@override late final _TranslationsTlsFr tls = _TranslationsTlsFr._(_root);
	@override late final _TranslationsOutboundRuleModeFr outboundRuleMode = _TranslationsOutboundRuleModeFr._(_root);
	@override late final _TranslationsDnsProxyResolveModeFr dnsProxyResolveMode = _TranslationsDnsProxyResolveModeFr._(_root);
	@override late final _TranslationsProxyStrategyFr proxyStrategy = _TranslationsProxyStrategyFr._(_root);
	@override late final _TranslationsReloadReasonFr reloadReason = _TranslationsReloadReasonFr._(_root);
	@override late final _TranslationsThemeFr theme = _TranslationsThemeFr._(_root);
	@override String get downloadProxyStrategy => 'Canal de téléchargement';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}] : Se connecter au serveur DNS via le serveur proxy pour résoudre le nom de domaine\n[${_root.dnsProxyResolveMode.direct}] : Se connecter directement au serveur DNS pour résoudre le nom de domaine\n[${_root.dnsProxyResolveMode.fakeip}] : Le serveur proxy résout le nom de domaine en votre nom ; si vous déconnectez la connexion VPN, votre application pourrait avoir besoin d\'être redémarrée ; effectif seulement pour le trafic entrant [TUN]';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'Reniflage de protocole';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Veuillez utiliser [${p}]';
	@override String get turnOffPrivateDirect => 'Veuillez d\'abord activer [Connexion directe au réseau privé]';
	@override String targetConnectFailed({required Object p}) => 'Échec de la connexion à [${p}]. Veuillez vous assurer que les appareils sont sur le même réseau local';
	@override String get appleTVSync => 'Synchroniser la configuration de base actuelle vers Apple TV - Karing';
	@override String get appleTVSyncDone => 'La synchronisation est terminée. Veuillez aller sur Apple TV - Karing pour démarrer la connexion/redémarrer la connexion';
	@override String get appleTVRemoveCoreConfig => 'Supprimer la configuration de base Apple TV - Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Configuration de base Apple TV - Karing supprimée ; service VPN déconnecté';
	@override String get appleTVUrlInvalid => 'URL invalide, veuillez ouvrir Apple TV - Karing et scanner le code QR affiché par Karing';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] n\'a pas cette fonction, veuillez mettre à jour et réessayer';
	@override String appleCoreVersionNotMatch({required Object p}) => 'La version majeure du noyau ne correspond pas, veuillez mettre à jour [${p}] et réessayer';
	@override String get remoteProfileEditConfirm => 'Après la mise à jour du profil, les modifications de nœud seront restaurées. Continuer ?';
	@override String get mustBeValidHttpsURL => 'Doit être une URL https valide';
	@override String fileNotExistReinstall({required Object p}) => 'Fichier manquant [${p}], veuillez réinstaller';
	@override String get noNetworkConnect => 'Pas de connexion Internet';
	@override String get sudoPassword => 'Mot de passe sudo (requis pour le mode TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Il est recommandé de passer en [Mode Avion] avant d\'installer la mise à jour';
	@override String get latencyTestResolveIP => 'Lors de la vérification manuelle, résoudre l\'IP de sortie';
	@override String get latencyTestConcurrency => 'Parallélisme';
	@override String get edgeRuntimeNotInstalled => 'L\'appareil actuel n\'a pas installé le runtime Edge WebView2, la page ne peut donc pas être affichée. Veuillez télécharger et installer le runtime Edge WebView2 (x64), redémarrer l\'application et réessayer.';
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
class _TranslationsAboutScreenFr implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

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
class _TranslationsBackupAndSyncWebdavScreenFr implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Server Url';
	@override String get webdavRequired => 'Can not be empty';
	@override String get webdavLoginFailed => 'Login failed:';
	@override String get webdavListFailed => 'Failed to get file list:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenFr implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

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
class _TranslationsDiversionRuleDetectScreenFr implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diversion Rule Detect';
	@override String get rule => 'Rule:';
	@override String get outbound => 'Proxy Server:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenFr implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Tip: Try to match the rules from top to bottom. If no rule is matched, use [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenFr implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP can not be empty';
	@override String get urlCanNotEmpty => 'URL can not be empty';
	@override String error({required Object p}) => 'Unsupported type:${p}';
	@override String get dnsDesc => 'The first column of delay data is the direct connection query delay;\nThe second column: Turn on [[Proxy Traffic]Resolve DNS through proxy server]: the delay data is the query delay forwarded through the current proxy server; if the [[Proxy Traffic]Resolve DNS through proxy server]: The delay data is the direct connection query delay';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenFr implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'File Content Viewer';
	@override String get clearFileContent => 'Are you sure to clear the content of the file?';
	@override String get clearFileContentTips => 'Are you sure to clear the content of the Profile file? Clearing the Profile file may cause data loss or abnormal application functions, please operate with caution';
}

// Path: HomeScreen
class _TranslationsHomeScreenFr implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

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
class _TranslationsLaunchFailedScreenFr implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'The app failed to start [Invalid process name], please reinstall the app to a separate directory';
	@override String get invalidProfile => 'The app failed to start [Failed to access the profile], please reinstall the app';
	@override String get invalidVersion => 'The app failed to start [Invalid version], please reinstall the app';
	@override String get systemVersionLow => 'The app failed to start [system version too low]';
	@override String get invalidInstallPath => 'The installation path is invalid, please reinstall it to a valid path';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenFr implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Profiles Merge';
	@override String get profilesMergeTarget => 'Target Profile';
	@override String get profilesMergeSource => 'Source Profiles';
	@override String get profilesMergeTips => 'Tip: Diversion of the source profiles will be discarded';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenFr implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

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
class _TranslationsNetConnectionsFilterScreenFr implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domain/IP';
	@override String get app => 'App';
	@override String get rule => 'Rule';
	@override String get chain => 'Outbound';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenFr implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Copied to CSV format';
	@override String get selectType => 'Select Diversion Type';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenFr implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Per-App Proxy';
	@override String get whiteListMode => 'Whitelist Mode';
	@override String get whiteListModeTip => 'When enabled: only the apps that have been checked are proxies; when not enabled: only the apps that are not checked are proxies';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenFr implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Country Or Region';
	@override String get Regions => 'Tip: Please set your current country or region correctly, otherwise it may cause network diversion problems';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenFr implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

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
class _TranslationsSettingsScreenFr implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

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
class _TranslationsUserAgreementScreenFr implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Your Privacy Comes First';
	@override String get agreeAndContinue => 'Accept & Continue';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenFr implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'The new version[${p}] is ready';
	@override String get update => 'Restart To Update';
	@override String get cancel => 'Not Now';
}

// Path: CommonWidget
class _TranslationsCommonWidgetFr implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'If [Always on VPN] is turned on, please turn off [Always on VPN] and try connecting again';
	@override String get resetPort => 'Please change the port to another available port or close the application occupying the port.';
}

// Path: main
class _TranslationsMainFr implements TranslationsMainEn {
	_TranslationsMainFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayFr tray = _TranslationsMainTrayFr._(_root);
}

// Path: meta
class _TranslationsMetaFr implements TranslationsMetaEn {
	_TranslationsMetaFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Activer';
	@override String get disable => 'Désactiver';
	@override String get bydefault => 'Par défaut';
	@override String get filter => 'Filtrer';
	@override String get filterMethod => 'Méthode de filtrage';
	@override String get include => 'Inclure';
	@override String get exclude => 'Exclure';
	@override String get all => 'Tout';
	@override String get prefer => 'Préférer';
	@override String get only => 'Seulement';
	@override String get open => 'Ouvrir';
	@override String get close => 'Fermer';
	@override String get quit => 'Quitter';
	@override String get add => 'Ajouter';
	@override String get addSuccess => 'Ajouté avec succès';
	@override String addFailed({required Object p}) => 'Échec de l\'ajout : ${p}';
	@override String get remove => 'Supprimer';
	@override String get removeConfirm => 'Êtes-vous sûr de vouloir supprimer ?';
	@override String get edit => 'Modifier';
	@override String get view => 'Voir';
	@override String get more => 'Plus';
	@override String get tips => 'Info';
	@override String get copy => 'Copier';
	@override String get save => 'Enregistrer';
	@override String get ok => 'OK';
	@override String get cancel => 'Annuler';
	@override String get feedback => 'Commentaires';
	@override String get feedbackContent => 'Contenu du commentaire';
	@override String get feedbackContentHit => 'Requis, jusqu\'à 500 caractères';
	@override String get feedbackContentCannotEmpty => 'Le contenu du commentaire ne peut pas être vide';
	@override String get faq => 'FAQ';
	@override String get htmlTools => 'Boîte à outils HTML';
	@override String get download => 'Télécharger';
	@override String get upload => 'Téléverser';
	@override String get downloadSpeed => 'Vitesse de téléchargement';
	@override String get uploadSpeed => 'Vitesse de téléversement';
	@override String get loading => 'Chargement...';
	@override String get convert => 'Convertir';
	@override String get check => 'Vérifier';
	@override String get detect => 'Détecter';
	@override String get cache => 'Cache';
	@override String get days => 'Jours';
	@override String get hours => 'Heures';
	@override String get minutes => 'Minutes';
	@override String get seconds => 'Secondes';
	@override String get milliseconds => 'Millisecondes';
	@override String get tolerance => 'Tolérance';
	@override String get dateTimePeriod => 'Période';
	@override String get protocol => 'Protocole';
	@override String get search => 'Rechercher';
	@override String get custom => 'Personnalisé';
	@override String get inbound => 'Entrant';
	@override String get outbound => 'Sortant';
	@override String get destination => 'Destination';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Connecter';
	@override String get disconnect => 'Déconnecter';
	@override String get reconnect => 'Reconnecter';
	@override String get connected => 'Connecté';
	@override String get disconnected => 'Déconnecté';
	@override String get connecting => 'Connexion en cours';
	@override String get connectTimeout => 'Délai de connexion dépassé';
	@override String get timeout => 'Délai dépassé';
	@override String get timeoutDuration => 'Durée du délai';
	@override String get runDuration => 'Durée d\'exécution';
	@override String get latency => 'Latence';
	@override String get latencyTest => 'Tests de latence';
	@override String get language => 'Langue';
	@override String get next => 'Suivant';
	@override String get done => 'Terminé';
	@override String get apply => 'Appliquer';
	@override String get refresh => 'Actualiser';
	@override String get retry => 'Réessayer ?';
	@override String get update => 'Mettre à jour';
	@override String get updateInterval => 'Intervalle de mise à jour';
	@override String get updateInterval5mTips => 'Minimum : 5m';
	@override String updateFailed({required Object p}) => 'Échec de la mise à jour : ${p}';
	@override String get samplingUnit => 'Unité de temps d\'échantillonnage';
	@override String get queryResultCount => 'Nombre de résultats de requête';
	@override String queryLimit({required Object p}) => 'Afficher jusqu\'à ${p} données';
	@override String get none => 'Aucun';
	@override String get start => 'Démarrer';
	@override String get pause => 'Pause';
	@override String get reset => 'Réinitialiser';
	@override String get submit => 'Soumettre';
	@override String get user => 'Utilisateur';
	@override String get account => 'Compte';
	@override String get password => 'Mot de passe';
	@override String get required => 'Requis';
	@override String get type => 'Type';
	@override String get path => 'Chemin';
	@override String get local => 'Local';
	@override String get remote => 'Distant';
	@override String get other => 'Autre';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL invalide';
	@override String get urlCannotEmpty => 'Le lien ne peut pas être vide';
	@override String get urlTooLong => 'L\'URL est trop longue (>8182)';
	@override String get copyUrl => 'Copier le lien';
	@override String get openUrl => 'Ouvrir le lien';
	@override String get shareUrl => 'Partager le lien';
	@override String get speedTestUrl => 'URL de test de vitesse';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'IP statique';
	@override String get staticIPTips => 'Vous devez activer [TUN HijackDNS] ou [${_root.SettingsScreen.inboundDomainResolve}].';
	@override String get isp => 'Fournisseur VPN';
	@override String get domainSuffix => 'Suffixe de domaine';
	@override String get domain => 'Domaine';
	@override String get domainKeyword => 'Mot-clé de domaine';
	@override String get domainRegex => 'Regex de domaine';
	@override String get ip => 'IP';
	@override String get port => 'Port';
	@override String get portRange => 'Plage de ports';
	@override String get appPackage => 'ID de package d\'application';
	@override String get processName => 'Nom du processus';
	@override String get processPath => 'Chemin du processus';
	@override String get processDir => 'Répertoire du processus';
	@override String get systemProxy => 'Proxy système';
	@override String get percentage => 'Pourcentage';
	@override String get statistics => 'Statistiques';
	@override String get statisticsAndAnalysis => 'Statistiques et analyse';
	@override String get statisticsDataDesensitize => 'Désensibilisation des données';
	@override String get statisticsDataDesensitizeTips => 'L\'ID de processus/package/nom de domaine cible/IP cible, etc. seront remplacés par * et enregistrés après désensibilisation';
	@override String get records => 'Enregistrements';
	@override String get requestRecords => 'Enregistrements de requêtes';
	@override String get netInterfaces => 'Interfaces réseau';
	@override String get netSpeed => 'Vitesse';
	@override String get memoryTrendChart => 'Graphique de tendance de la mémoire';
	@override String get goroutinesTrendChart => 'Graphique de tendance GoRoutines';
	@override String get trafficTrendChart => 'Graphique de tendance du trafic';
	@override String get trafficDistributionChart => 'Graphique de distribution du trafic';
	@override String get connectionChart => 'Graphique de tendance des connexions';
	@override String get memoryChart => 'Graphique de tendance de la mémoire';
	@override String get trafficStatistics => 'Statistiques du trafic';
	@override String get traffic => 'Trafic';
	@override String get trafficTotal => 'Trafic total';
	@override String get trafficProxy => 'Trafic proxy';
	@override String get trafficDirect => 'Trafic direct';
	@override String get website => 'Site web';
	@override String get memory => 'Mémoire';
	@override String get outboundMode => 'Mode sortant';
	@override String get rule => 'Règle';
	@override String get global => 'Global';
	@override String get qrcode => 'Code QR';
	@override String get qrcodeTooLong => 'Le texte est trop long pour être affiché';
	@override String get qrcodeShare => 'Partager le code QR';
	@override String get textToQrcode => 'Texte en code QR';
	@override String get qrcodeScan => 'Scanner le code QR';
	@override String get qrcodeScanResult => 'Résultat du scan';
	@override String get qrcodeScanFromImage => 'Scanner depuis une image';
	@override String get qrcodeScanResultFailed => 'Échec de l\'analyse de l\'image, assurez-vous que la capture d\'écran est un code QR valide';
	@override String get qrcodeScanResultEmpty => 'Le résultat du scan est vide';
	@override String get screenshot => 'Capture d\'écran';
	@override String get backupAndSync => 'Sauvegarde et synchronisation';
	@override String get autoBackup => 'Sauvegarde automatique';
	@override String get noProfileGotAutoBackup => 'Si des données telles que [${_root.meta.myProfiles}] sont perdues, vous pouvez les restaurer à partir de [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] ou d\'autres sources de sauvegarde (telles que iCloud ou Webdav, etc.)';
	@override String get autoBackupAddProfile => 'Après avoir ajouté le profil';
	@override String get autoBackupRemoveProfile => 'Après avoir supprimé le profil';
	@override String get profile => 'Profil';
	@override String get currentProfile => 'Profil actuel';
	@override String get importAndExport => 'Importer et exporter';
	@override String get import => 'Importer';
	@override String get importFromUrl => 'Importer depuis une URL';
	@override String get export => 'Exporter';
	@override String get send => 'Envoyer';
	@override String get receive => 'Recevoir';
	@override String get sendConfirm => 'Confirmer l\'envoi ?';
	@override String get termOfUse => 'Conditions d\'utilisation';
	@override String get privacyPolicy => 'Politique de confidentialité';
	@override String get about => 'À propos';
	@override String get name => 'Nom';
	@override String get version => 'Version';
	@override String get notice => 'Avis';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Action : ${p}\nRaison : ${p1}';
	@override String get sort => 'Réorganiser';
	@override String get novice => 'Mode novice';
	@override String get willCompleteAfterRebootInstall => 'Veuillez redémarrer votre appareil pour terminer l\'installation de l\'extension système';
	@override String get willCompleteAfterRebootUninstall => 'Veuillez redémarrer votre appareil pour terminer la désinstallation de l\'extension système';
	@override String get requestNeedsUserApproval => '1. Veuillez [Autoriser] Karing à installer des extensions système dans [Paramètres système]-[Confidentialité et sécurité]\n2. [Paramètres système]-[Général]-[Éléments de connexion et extensions-Extension réseau] activez [karingServiceSE]\nreconnectez-vous après avoir terminé';
	@override String get FullDiskAccessPermissionRequired => 'Veuillez activer l\'autorisation [karingServiceSE] dans [Paramètres système]-[Confidentialité et sécurité]-[Accès complet au disque] et vous reconnecter';
	@override String get tvMode => 'Mode TV';
	@override String get recommended => 'Recommandé';
	@override String innerError({required Object p}) => 'Erreur interne : ${p}';
	@override String get logicOperation => 'Opération logique';
	@override String get share => 'Partager';
	@override String get candidateWord => 'Mots candidats';
	@override String get keywordOrRegx => 'Mots-clés/Regex';
	@override String get importFromClipboard => 'Importer depuis le presse-papiers';
	@override String get exportToClipboard => 'Exporter vers le presse-papiers';
	@override String get server => 'Serveur';
	@override String get ads => 'Publicités';
	@override String get adsRemove => 'Supprimer les publicités';
	@override String get donate => 'Faire un don';
	@override String get diversion => 'Diversion';
	@override String get diversionRules => 'Règles de diversion';
	@override String get diversionCustomGroup => 'Groupe de diversion personnalisé';
	@override String get urlTestCustomGroup => 'Sélection automatique personnalisée';
	@override String get setting => 'Paramètres';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Synchronisation LAN';
	@override String get lanSyncNotQuitTips => 'Ne quittez pas cette interface avant la fin de la synchronisation';
	@override String get deviceNoSpace => 'Espace disque insuffisant';
	@override String get hideSystemApp => 'Masquer les applications système';
	@override String get hideAppIcon => 'Masquer les icônes d\'application';
	@override String get hideDockIcon => 'Masquer l\'icône du Dock';
	@override String get remark => 'Remarque';
	@override String get remarkExist => 'La remarque existe déjà, veuillez utiliser un autre nom';
	@override String get remarkCannotEmpty => 'La remarque ne peut pas être vide';
	@override String get remarkTooLong => 'Remarques jusqu\'à 32 caractères';
	@override String get openDir => 'Ouvrir le répertoire du fichier';
	@override String get fileChoose => 'Sélectionner un fichier';
	@override String get filePathCannotEmpty => 'Le chemin du fichier ne peut pas être vide';
	@override String fileNotExist({required Object p}) => 'Le fichier n\'existe pas : ${p}';
	@override String fileTypeInvalid({required Object p}) => 'Type de fichier invalide : ${p}';
	@override String get uwpExemption => 'Exemptions d\'isolation réseau UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Obtenir le profil';
	@override String get addProfile => 'Ajouter un profil';
	@override String get myProfiles => 'Mes profils';
	@override String get profileEdit => 'Modifier le profil';
	@override String get profileEditUrlExist => 'L\'URL existe déjà, veuillez utiliser une autre URL';
	@override String get profileEditReloadAfterProfileUpdate => 'Recharger après la mise à jour du profil';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Démarrer les tests de latence après la mise à jour automatique du profil';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'Le VPN doit être connecté, et [Recharger après la mise à jour du profil] activé';
	@override String get profileEditTestLatencyAutoRemove => 'Supprimer automatiquement les serveurs échouant aux tests de latence';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Essayer jusqu\'à 3 fois';
	@override String get profileImport => 'Importer un fichier de profil';
	@override String get profileAddUrlOrContent => 'Ajouter un lien de profil';
	@override String get profileExists => 'Le profil existe déjà, veuillez ne pas l\'ajouter à plusieurs reprises';
	@override String get profileUrlOrContent => 'Lien/Contenu du profil';
	@override String get profileUrlOrContentHit => 'Lien/Contenu du profil [Requis] (Supporte Clash, V2ray (supporté par lot), Stash, Karing, Sing-box, Shadowsocks, Liens de sous-profil)';
	@override String get profileUrlOrContentCannotEmpty => 'Le lien du profil ne peut pas être vide';
	@override String profileAddFailedFormatException({required Object p}) => 'Le format est incorrect, veuillez le corriger et l\'ajouter à nouveau : ${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Échec de l\'ajout : ${p}, veuillez essayer de modifier l\' [UserAgent] et réessayez, ou utilisez le navigateur intégré de l\'appareil pour ouvrir le lien de configuration et importer le fichier de configuration téléchargé par le navigateur dans cette application';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Échec de l\'ajout : ${p}, veuillez activer le proxy ou modifier le nœud proxy actuel et réessayez';
	@override String get profileAddParseFailed => 'Échec de l\'analyse du profil';
	@override String get profileAddNoServerAvaliable => 'Aucun serveur disponible, assurez-vous que le lien du profil ou le fichier du profil est valide ; si votre profil provient de GitHub, veuillez obtenir le lien à partir du bouton [Raw] de la page';
	@override String get profileAddWrapSuccess => 'Profil généré avec succès, veuillez aller dans [${_root.meta.myProfiles}] pour voir';
}

// Path: isp
class _TranslationsIspFr implements TranslationsIspEn {
	_TranslationsIspFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Lier à [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'Délier [${p}]';
	@override String faq({required Object p}) => 'FAQ [${p}]';
	@override String customerService({required Object p}) => 'Telegram [${p}]';
	@override String follow({required Object p}) => 'Suivre [${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] Invalide ou expiré';
}

// Path: permission
class _TranslationsPermissionFr implements TranslationsPermissionEn {
	_TranslationsPermissionFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Appareil photo';
	@override String get screen => 'Enregistrement d\'écran';
	@override String get appQuery => 'Obtenir la liste des applications';
	@override String request({required Object p}) => 'Activer l\'autorisation [${p}]';
	@override String requestNeed({required Object p}) => 'Veuillez activer l\'autorisation [${p}]';
}

// Path: tls
class _TranslationsTlsFr implements TranslationsTlsEn {
	_TranslationsTlsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Passer la vérification du certificat';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Activer le fragment TLS';
	@override String get fragmentSize => 'Taille du fragment TLS';
	@override String get fragmentSleep => 'Sommeil du fragment TLS';
	@override String get mixedCaseSNIEnable => 'Activer le SNI mixte TLS';
	@override String get paddingEnable => 'Activer le remplissage TLS';
	@override String get paddingSize => 'Taille du remplissage TLS';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeFr implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Actuellement sélectionné';
	@override String get urltest => 'Sélection automatique';
	@override String get direct => 'Direct';
	@override String get block => 'Bloquer';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeFr implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyFr implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonFr implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Mise à jour du profil';
}

// Path: theme
class _TranslationsThemeFr implements TranslationsThemeEn {
	_TranslationsThemeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get light => 'Clair';
	@override String get dark => 'Sombre';
	@override String get auto => 'Auto';
}

// Path: main.tray
class _TranslationsMainTrayFr implements TranslationsMainTrayEn {
	_TranslationsMainTrayFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Open';
	@override String get menuExit => 'Exit';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
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
			'meta.enable' => 'Activer',
			'meta.disable' => 'Désactiver',
			'meta.bydefault' => 'Par défaut',
			'meta.filter' => 'Filtrer',
			'meta.filterMethod' => 'Méthode de filtrage',
			'meta.include' => 'Inclure',
			'meta.exclude' => 'Exclure',
			'meta.all' => 'Tout',
			'meta.prefer' => 'Préférer',
			'meta.only' => 'Seulement',
			'meta.open' => 'Ouvrir',
			'meta.close' => 'Fermer',
			'meta.quit' => 'Quitter',
			'meta.add' => 'Ajouter',
			'meta.addSuccess' => 'Ajouté avec succès',
			'meta.addFailed' => ({required Object p}) => 'Échec de l\'ajout : ${p}',
			'meta.remove' => 'Supprimer',
			'meta.removeConfirm' => 'Êtes-vous sûr de vouloir supprimer ?',
			'meta.edit' => 'Modifier',
			'meta.view' => 'Voir',
			'meta.more' => 'Plus',
			'meta.tips' => 'Info',
			'meta.copy' => 'Copier',
			'meta.save' => 'Enregistrer',
			'meta.ok' => 'OK',
			'meta.cancel' => 'Annuler',
			'meta.feedback' => 'Commentaires',
			'meta.feedbackContent' => 'Contenu du commentaire',
			'meta.feedbackContentHit' => 'Requis, jusqu\'à 500 caractères',
			'meta.feedbackContentCannotEmpty' => 'Le contenu du commentaire ne peut pas être vide',
			'meta.faq' => 'FAQ',
			'meta.htmlTools' => 'Boîte à outils HTML',
			'meta.download' => 'Télécharger',
			'meta.upload' => 'Téléverser',
			'meta.downloadSpeed' => 'Vitesse de téléchargement',
			'meta.uploadSpeed' => 'Vitesse de téléversement',
			'meta.loading' => 'Chargement...',
			'meta.convert' => 'Convertir',
			'meta.check' => 'Vérifier',
			'meta.detect' => 'Détecter',
			'meta.cache' => 'Cache',
			'meta.days' => 'Jours',
			'meta.hours' => 'Heures',
			'meta.minutes' => 'Minutes',
			'meta.seconds' => 'Secondes',
			'meta.milliseconds' => 'Millisecondes',
			'meta.tolerance' => 'Tolérance',
			'meta.dateTimePeriod' => 'Période',
			'meta.protocol' => 'Protocole',
			'meta.search' => 'Rechercher',
			'meta.custom' => 'Personnalisé',
			'meta.inbound' => 'Entrant',
			'meta.outbound' => 'Sortant',
			'meta.destination' => 'Destination',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Connecter',
			'meta.disconnect' => 'Déconnecter',
			'meta.reconnect' => 'Reconnecter',
			'meta.connected' => 'Connecté',
			'meta.disconnected' => 'Déconnecté',
			'meta.connecting' => 'Connexion en cours',
			'meta.connectTimeout' => 'Délai de connexion dépassé',
			'meta.timeout' => 'Délai dépassé',
			'meta.timeoutDuration' => 'Durée du délai',
			'meta.runDuration' => 'Durée d\'exécution',
			'meta.latency' => 'Latence',
			'meta.latencyTest' => 'Tests de latence',
			'meta.language' => 'Langue',
			'meta.next' => 'Suivant',
			'meta.done' => 'Terminé',
			'meta.apply' => 'Appliquer',
			'meta.refresh' => 'Actualiser',
			'meta.retry' => 'Réessayer ?',
			'meta.update' => 'Mettre à jour',
			'meta.updateInterval' => 'Intervalle de mise à jour',
			'meta.updateInterval5mTips' => 'Minimum : 5m',
			'meta.updateFailed' => ({required Object p}) => 'Échec de la mise à jour : ${p}',
			'meta.samplingUnit' => 'Unité de temps d\'échantillonnage',
			'meta.queryResultCount' => 'Nombre de résultats de requête',
			'meta.queryLimit' => ({required Object p}) => 'Afficher jusqu\'à ${p} données',
			'meta.none' => 'Aucun',
			'meta.start' => 'Démarrer',
			'meta.pause' => 'Pause',
			'meta.reset' => 'Réinitialiser',
			'meta.submit' => 'Soumettre',
			'meta.user' => 'Utilisateur',
			'meta.account' => 'Compte',
			'meta.password' => 'Mot de passe',
			'meta.required' => 'Requis',
			'meta.type' => 'Type',
			'meta.path' => 'Chemin',
			'meta.local' => 'Local',
			'meta.remote' => 'Distant',
			'meta.other' => 'Autre',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL invalide',
			'meta.urlCannotEmpty' => 'Le lien ne peut pas être vide',
			'meta.urlTooLong' => 'L\'URL est trop longue (>8182)',
			'meta.copyUrl' => 'Copier le lien',
			'meta.openUrl' => 'Ouvrir le lien',
			'meta.shareUrl' => 'Partager le lien',
			'meta.speedTestUrl' => 'URL de test de vitesse',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'IP statique',
			'meta.staticIPTips' => 'Vous devez activer [TUN HijackDNS] ou [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'Fournisseur VPN',
			'meta.domainSuffix' => 'Suffixe de domaine',
			'meta.domain' => 'Domaine',
			'meta.domainKeyword' => 'Mot-clé de domaine',
			'meta.domainRegex' => 'Regex de domaine',
			'meta.ip' => 'IP',
			'meta.port' => 'Port',
			'meta.portRange' => 'Plage de ports',
			'meta.appPackage' => 'ID de package d\'application',
			'meta.processName' => 'Nom du processus',
			'meta.processPath' => 'Chemin du processus',
			'meta.processDir' => 'Répertoire du processus',
			'meta.systemProxy' => 'Proxy système',
			'meta.percentage' => 'Pourcentage',
			'meta.statistics' => 'Statistiques',
			'meta.statisticsAndAnalysis' => 'Statistiques et analyse',
			'meta.statisticsDataDesensitize' => 'Désensibilisation des données',
			'meta.statisticsDataDesensitizeTips' => 'L\'ID de processus/package/nom de domaine cible/IP cible, etc. seront remplacés par * et enregistrés après désensibilisation',
			'meta.records' => 'Enregistrements',
			'meta.requestRecords' => 'Enregistrements de requêtes',
			'meta.netInterfaces' => 'Interfaces réseau',
			'meta.netSpeed' => 'Vitesse',
			'meta.memoryTrendChart' => 'Graphique de tendance de la mémoire',
			'meta.goroutinesTrendChart' => 'Graphique de tendance GoRoutines',
			'meta.trafficTrendChart' => 'Graphique de tendance du trafic',
			'meta.trafficDistributionChart' => 'Graphique de distribution du trafic',
			'meta.connectionChart' => 'Graphique de tendance des connexions',
			'meta.memoryChart' => 'Graphique de tendance de la mémoire',
			'meta.trafficStatistics' => 'Statistiques du trafic',
			'meta.traffic' => 'Trafic',
			'meta.trafficTotal' => 'Trafic total',
			'meta.trafficProxy' => 'Trafic proxy',
			'meta.trafficDirect' => 'Trafic direct',
			'meta.website' => 'Site web',
			'meta.memory' => 'Mémoire',
			'meta.outboundMode' => 'Mode sortant',
			'meta.rule' => 'Règle',
			'meta.global' => 'Global',
			'meta.qrcode' => 'Code QR',
			'meta.qrcodeTooLong' => 'Le texte est trop long pour être affiché',
			'meta.qrcodeShare' => 'Partager le code QR',
			'meta.textToQrcode' => 'Texte en code QR',
			'meta.qrcodeScan' => 'Scanner le code QR',
			'meta.qrcodeScanResult' => 'Résultat du scan',
			'meta.qrcodeScanFromImage' => 'Scanner depuis une image',
			'meta.qrcodeScanResultFailed' => 'Échec de l\'analyse de l\'image, assurez-vous que la capture d\'écran est un code QR valide',
			'meta.qrcodeScanResultEmpty' => 'Le résultat du scan est vide',
			'meta.screenshot' => 'Capture d\'écran',
			'meta.backupAndSync' => 'Sauvegarde et synchronisation',
			'meta.autoBackup' => 'Sauvegarde automatique',
			'meta.noProfileGotAutoBackup' => 'Si des données telles que [${_root.meta.myProfiles}] sont perdues, vous pouvez les restaurer à partir de [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] ou d\'autres sources de sauvegarde (telles que iCloud ou Webdav, etc.)',
			'meta.autoBackupAddProfile' => 'Après avoir ajouté le profil',
			'meta.autoBackupRemoveProfile' => 'Après avoir supprimé le profil',
			'meta.profile' => 'Profil',
			'meta.currentProfile' => 'Profil actuel',
			'meta.importAndExport' => 'Importer et exporter',
			'meta.import' => 'Importer',
			'meta.importFromUrl' => 'Importer depuis une URL',
			'meta.export' => 'Exporter',
			'meta.send' => 'Envoyer',
			'meta.receive' => 'Recevoir',
			'meta.sendConfirm' => 'Confirmer l\'envoi ?',
			'meta.termOfUse' => 'Conditions d\'utilisation',
			'meta.privacyPolicy' => 'Politique de confidentialité',
			'meta.about' => 'À propos',
			'meta.name' => 'Nom',
			'meta.version' => 'Version',
			'meta.notice' => 'Avis',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Action : ${p}\nRaison : ${p1}',
			'meta.sort' => 'Réorganiser',
			'meta.novice' => 'Mode novice',
			'meta.willCompleteAfterRebootInstall' => 'Veuillez redémarrer votre appareil pour terminer l\'installation de l\'extension système',
			'meta.willCompleteAfterRebootUninstall' => 'Veuillez redémarrer votre appareil pour terminer la désinstallation de l\'extension système',
			'meta.requestNeedsUserApproval' => '1. Veuillez [Autoriser] Karing à installer des extensions système dans [Paramètres système]-[Confidentialité et sécurité]\n2. [Paramètres système]-[Général]-[Éléments de connexion et extensions-Extension réseau] activez [karingServiceSE]\nreconnectez-vous après avoir terminé',
			'meta.FullDiskAccessPermissionRequired' => 'Veuillez activer l\'autorisation [karingServiceSE] dans [Paramètres système]-[Confidentialité et sécurité]-[Accès complet au disque] et vous reconnecter',
			'meta.tvMode' => 'Mode TV',
			'meta.recommended' => 'Recommandé',
			'meta.innerError' => ({required Object p}) => 'Erreur interne : ${p}',
			'meta.logicOperation' => 'Opération logique',
			'meta.share' => 'Partager',
			'meta.candidateWord' => 'Mots candidats',
			'meta.keywordOrRegx' => 'Mots-clés/Regex',
			'meta.importFromClipboard' => 'Importer depuis le presse-papiers',
			'meta.exportToClipboard' => 'Exporter vers le presse-papiers',
			'meta.server' => 'Serveur',
			'meta.ads' => 'Publicités',
			'meta.adsRemove' => 'Supprimer les publicités',
			'meta.donate' => 'Faire un don',
			'meta.diversion' => 'Diversion',
			'meta.diversionRules' => 'Règles de diversion',
			'meta.diversionCustomGroup' => 'Groupe de diversion personnalisé',
			'meta.urlTestCustomGroup' => 'Sélection automatique personnalisée',
			'meta.setting' => 'Paramètres',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Synchronisation LAN',
			'meta.lanSyncNotQuitTips' => 'Ne quittez pas cette interface avant la fin de la synchronisation',
			'meta.deviceNoSpace' => 'Espace disque insuffisant',
			'meta.hideSystemApp' => 'Masquer les applications système',
			'meta.hideAppIcon' => 'Masquer les icônes d\'application',
			'meta.hideDockIcon' => 'Masquer l\'icône du Dock',
			'meta.remark' => 'Remarque',
			'meta.remarkExist' => 'La remarque existe déjà, veuillez utiliser un autre nom',
			'meta.remarkCannotEmpty' => 'La remarque ne peut pas être vide',
			'meta.remarkTooLong' => 'Remarques jusqu\'à 32 caractères',
			'meta.openDir' => 'Ouvrir le répertoire du fichier',
			'meta.fileChoose' => 'Sélectionner un fichier',
			'meta.filePathCannotEmpty' => 'Le chemin du fichier ne peut pas être vide',
			'meta.fileNotExist' => ({required Object p}) => 'Le fichier n\'existe pas : ${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Type de fichier invalide : ${p}',
			'meta.uwpExemption' => 'Exemptions d\'isolation réseau UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Obtenir le profil',
			'meta.addProfile' => 'Ajouter un profil',
			'meta.myProfiles' => 'Mes profils',
			'meta.profileEdit' => 'Modifier le profil',
			'meta.profileEditUrlExist' => 'L\'URL existe déjà, veuillez utiliser une autre URL',
			'meta.profileEditReloadAfterProfileUpdate' => 'Recharger après la mise à jour du profil',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Démarrer les tests de latence après la mise à jour automatique du profil',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'Le VPN doit être connecté, et [Recharger après la mise à jour du profil] activé',
			'meta.profileEditTestLatencyAutoRemove' => 'Supprimer automatiquement les serveurs échouant aux tests de latence',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Essayer jusqu\'à 3 fois',
			'meta.profileImport' => 'Importer un fichier de profil',
			'meta.profileAddUrlOrContent' => 'Ajouter un lien de profil',
			'meta.profileExists' => 'Le profil existe déjà, veuillez ne pas l\'ajouter à plusieurs reprises',
			'meta.profileUrlOrContent' => 'Lien/Contenu du profil',
			'meta.profileUrlOrContentHit' => 'Lien/Contenu du profil [Requis] (Supporte Clash, V2ray (supporté par lot), Stash, Karing, Sing-box, Shadowsocks, Liens de sous-profil)',
			'meta.profileUrlOrContentCannotEmpty' => 'Le lien du profil ne peut pas être vide',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Le format est incorrect, veuillez le corriger et l\'ajouter à nouveau : ${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Échec de l\'ajout : ${p}, veuillez essayer de modifier l\' [UserAgent] et réessayez, ou utilisez le navigateur intégré de l\'appareil pour ouvrir le lien de configuration et importer le fichier de configuration téléchargé par le navigateur dans cette application',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Échec de l\'ajout : ${p}, veuillez activer le proxy ou modifier le nœud proxy actuel et réessayez',
			'meta.profileAddParseFailed' => 'Échec de l\'analyse du profil',
			'meta.profileAddNoServerAvaliable' => 'Aucun serveur disponible, assurez-vous que le lien du profil ou le fichier du profil est valide ; si votre profil provient de GitHub, veuillez obtenir le lien à partir du bouton [Raw] de la page',
			'meta.profileAddWrapSuccess' => 'Profil généré avec succès, veuillez aller dans [${_root.meta.myProfiles}] pour voir',
			'diversionRulesKeep' => 'Conserver [${_root.meta.isp}] ${_root.meta.diversionRules}',
			'diversionCustomGroupPreset' => 'Préréglage [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Note : Les éléments activés seront ajoutés/écrasés dans [${_root.meta.diversionCustomGroup}] et [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Note : Après l\'ajout, vous devrez peut-être ajuster manuellement l\'ordre, sinon la nouvelle diversion pourrait ne pas être effective',
			'rulesetEnableTips' => 'Conseil : Après avoir activé les options, veuillez aller dans [${_root.meta.diversionRules}] pour définir les règles pertinentes, sinon elles ne seront pas effectives',
			'ispUserAgentTips' => '[${_root.meta.isp}] enverra des données de différents types d\'abonnement en fonction de l\' [UserAgent] dans la requête [HTTP]',
			'ispDiversionTips' => '[${_root.meta.isp}] fournit des règles de diversion de trafic ; les abonnements de type [V2Ray] ne supportent pas les règles de diversion de trafic',
			'isp.bind' => 'Lier à [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Délier [${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ [${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram [${p}]',
			'isp.follow' => ({required Object p}) => 'Suivre [${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] Invalide ou expiré',
			'permission.camera' => 'Appareil photo',
			'permission.screen' => 'Enregistrement d\'écran',
			'permission.appQuery' => 'Obtenir la liste des applications',
			'permission.request' => ({required Object p}) => 'Activer l\'autorisation [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'Veuillez activer l\'autorisation [${p}]',
			'tls.insecure' => 'Passer la vérification du certificat',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Activer le fragment TLS',
			'tls.fragmentSize' => 'Taille du fragment TLS',
			'tls.fragmentSleep' => 'Sommeil du fragment TLS',
			'tls.mixedCaseSNIEnable' => 'Activer le SNI mixte TLS',
			'tls.paddingEnable' => 'Activer le remplissage TLS',
			'tls.paddingSize' => 'Taille du remplissage TLS',
			'outboundRuleMode.currentSelected' => 'Actuellement sélectionné',
			_ => null,
		} ?? switch (path) {
			'outboundRuleMode.urltest' => 'Sélection automatique',
			'outboundRuleMode.direct' => 'Direct',
			'outboundRuleMode.block' => 'Bloquer',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Mise à jour du profil',
			'theme.light' => 'Clair',
			'theme.dark' => 'Sombre',
			'theme.auto' => 'Auto',
			'downloadProxyStrategy' => 'Canal de téléchargement',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}] : Se connecter au serveur DNS via le serveur proxy pour résoudre le nom de domaine\n[${_root.dnsProxyResolveMode.direct}] : Se connecter directement au serveur DNS pour résoudre le nom de domaine\n[${_root.dnsProxyResolveMode.fakeip}] : Le serveur proxy résout le nom de domaine en votre nom ; si vous déconnectez la connexion VPN, votre application pourrait avoir besoin d\'être redémarrée ; effectif seulement pour le trafic entrant [TUN]',
			'routeFinal' => 'final',
			'protocolSniff' => 'Reniflage de protocole',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Veuillez utiliser [${p}]',
			'turnOffPrivateDirect' => 'Veuillez d\'abord activer [Connexion directe au réseau privé]',
			'targetConnectFailed' => ({required Object p}) => 'Échec de la connexion à [${p}]. Veuillez vous assurer que les appareils sont sur le même réseau local',
			'appleTVSync' => 'Synchroniser la configuration de base actuelle vers Apple TV - Karing',
			'appleTVSyncDone' => 'La synchronisation est terminée. Veuillez aller sur Apple TV - Karing pour démarrer la connexion/redémarrer la connexion',
			'appleTVRemoveCoreConfig' => 'Supprimer la configuration de base Apple TV - Karing',
			'appleTVRemoveCoreConfigDone' => 'Configuration de base Apple TV - Karing supprimée ; service VPN déconnecté',
			'appleTVUrlInvalid' => 'URL invalide, veuillez ouvrir Apple TV - Karing et scanner le code QR affiché par Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] n\'a pas cette fonction, veuillez mettre à jour et réessayer',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'La version majeure du noyau ne correspond pas, veuillez mettre à jour [${p}] et réessayer',
			'remoteProfileEditConfirm' => 'Après la mise à jour du profil, les modifications de nœud seront restaurées. Continuer ?',
			'mustBeValidHttpsURL' => 'Doit être une URL https valide',
			'fileNotExistReinstall' => ({required Object p}) => 'Fichier manquant [${p}], veuillez réinstaller',
			'noNetworkConnect' => 'Pas de connexion Internet',
			'sudoPassword' => 'Mot de passe sudo (requis pour le mode TUN)',
			'turnOffNetworkBeforeInstall' => 'Il est recommandé de passer en [Mode Avion] avant d\'installer la mise à jour',
			'latencyTestResolveIP' => 'Lors de la vérification manuelle, résoudre l\'IP de sortie',
			'latencyTestConcurrency' => 'Parallélisme',
			'edgeRuntimeNotInstalled' => 'L\'appareil actuel n\'a pas installé le runtime Edge WebView2, la page ne peut donc pas être affichée. Veuillez télécharger et installer le runtime Edge WebView2 (x64), redémarrer l\'application et réessayer.',
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
