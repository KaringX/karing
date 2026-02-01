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
class TranslationsEs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenEs AboutScreen = _TranslationsAboutScreenEs._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenEs BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenEs._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenEs DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenEs._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenEs DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenEs._(_root);
	@override late final _TranslationsDiversionRulesScreenEs DiversionRulesScreen = _TranslationsDiversionRulesScreenEs._(_root);
	@override late final _TranslationsDnsSettingsScreenEs DnsSettingsScreen = _TranslationsDnsSettingsScreenEs._(_root);
	@override late final _TranslationsFileContentViewerScreenEs FileContentViewerScreen = _TranslationsFileContentViewerScreenEs._(_root);
	@override late final _TranslationsHomeScreenEs HomeScreen = _TranslationsHomeScreenEs._(_root);
	@override late final _TranslationsLaunchFailedScreenEs LaunchFailedScreen = _TranslationsLaunchFailedScreenEs._(_root);
	@override late final _TranslationsMyProfilesMergeScreenEs MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenEs._(_root);
	@override late final _TranslationsNetCheckScreenEs NetCheckScreen = _TranslationsNetCheckScreenEs._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenEs NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenEs._(_root);
	@override late final _TranslationsNetConnectionsScreenEs NetConnectionsScreen = _TranslationsNetConnectionsScreenEs._(_root);
	@override late final _TranslationsPerAppAndroidScreenEs PerAppAndroidScreen = _TranslationsPerAppAndroidScreenEs._(_root);
	@override late final _TranslationsRegionSettingsScreenEs RegionSettingsScreen = _TranslationsRegionSettingsScreenEs._(_root);
	@override late final _TranslationsServerSelectScreenEs ServerSelectScreen = _TranslationsServerSelectScreenEs._(_root);
	@override late final _TranslationsSettingsScreenEs SettingsScreen = _TranslationsSettingsScreenEs._(_root);
	@override late final _TranslationsUserAgreementScreenEs UserAgreementScreen = _TranslationsUserAgreementScreenEs._(_root);
	@override late final _TranslationsVersionUpdateScreenEs VersionUpdateScreen = _TranslationsVersionUpdateScreenEs._(_root);
	@override late final _TranslationsCommonWidgetEs CommonWidget = _TranslationsCommonWidgetEs._(_root);
	@override late final _TranslationsMainEs main = _TranslationsMainEs._(_root);
	@override late final _TranslationsMetaEs meta = _TranslationsMetaEs._(_root);
	@override String get diversionRulesKeep => 'Mantener [${_root.meta.isp}] ${_root.meta.diversionRules}';
	@override String get diversionCustomGroupPreset => 'Preajuste [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Nota: Los elementos activados se añadirán/sobrescribirán en [${_root.meta.diversionCustomGroup}] y [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Nota: Tras añadir, puede que necesite ajustar manualmente el orden, de lo contrario el nuevo desvío podría no ser efectivo';
	@override String get rulesetEnableTips => 'Consejo: Tras activar las opciones, vaya a [${_root.meta.diversionRules}] para definir las reglas pertinentes, de lo contrario no serán efectivas';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] enviará datos de diferentes tipos de suscripción según el [UserAgent] en la petición [HTTP]';
	@override String get ispDiversionTips => '[${_root.meta.isp}] proporciona reglas de desvío de tráfico; las suscripciones de tipo [V2Ray] no soportan reglas de desvío de tráfico';
	@override late final _TranslationsIspEs isp = _TranslationsIspEs._(_root);
	@override late final _TranslationsPermissionEs permission = _TranslationsPermissionEs._(_root);
	@override late final _TranslationsTlsEs tls = _TranslationsTlsEs._(_root);
	@override late final _TranslationsOutboundRuleModeEs outboundRuleMode = _TranslationsOutboundRuleModeEs._(_root);
	@override late final _TranslationsDnsProxyResolveModeEs dnsProxyResolveMode = _TranslationsDnsProxyResolveModeEs._(_root);
	@override late final _TranslationsProxyStrategyEs proxyStrategy = _TranslationsProxyStrategyEs._(_root);
	@override late final _TranslationsReloadReasonEs reloadReason = _TranslationsReloadReasonEs._(_root);
	@override late final _TranslationsThemeEs theme = _TranslationsThemeEs._(_root);
	@override String get downloadProxyStrategy => 'Canal de descarga';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Conectar al servidor DNS a través del servidor proxy para resolver el nombre de dominio\n[${_root.dnsProxyResolveMode.direct}]: Conectar directamente al servidor DNS para resolver el nombre de dominio\n[${_root.dnsProxyResolveMode.fakeip}]: El servidor proxy resuelve el nombre de dominio en su nombre; si desconecta la conexión VPN, su aplicación podría necesitar reiniciarse; solo efectivo para tráfico entrante [TUN]';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'Detección de protocolo';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Use [${p}]';
	@override String get turnOffPrivateDirect => 'Active primero [Conexión directa a red privada]';
	@override String targetConnectFailed({required Object p}) => 'Fallo al conectar a [${p}]. Asegúrese de que los dispositivos estén en la misma red local';
	@override String get appleTVSync => 'Sincronizar configuración de núcleo actual con Apple TV - Karing';
	@override String get appleTVSyncDone => 'Sincronización finalizada. Vaya a Apple TV - Karing para iniciar/reiniciar la conexión';
	@override String get appleTVRemoveCoreConfig => 'Eliminar configuración de núcleo de Apple TV - Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Configuración de núcleo de Apple TV - Karing eliminada; servicio VPN desconectado';
	@override String get appleTVUrlInvalid => 'URL no válida, abra Apple TV - Karing y escanee el código QR mostrado por Karing';
	@override String appleTV404({required Object p}) => 'AppleTV: Karing[${p}] no tiene esta función, actualice y reintente';
	@override String appleCoreVersionNotMatch({required Object p}) => 'La versión mayor del núcleo no coincide, actualice [${p}] y reintente';
	@override String get remoteProfileEditConfirm => 'Tras actualizar el perfil, los cambios en los nodos se restaurarán. ¿Continuar?';
	@override String get mustBeValidHttpsURL => 'Debe ser una URL https válida';
	@override String fileNotExistReinstall({required Object p}) => 'Falta el archivo [${p}], reinstale';
	@override String get noNetworkConnect => 'Sin conexión a internet';
	@override String get sudoPassword => 'Contraseña sudo (necesaria para el modo TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Se recomienda cambiar al [Modo Avión] antes de instalar la actualización';
	@override String get latencyTestResolveIP => 'Al verificar manualmente, resolver la IP de salida';
	@override String get latencyTestConcurrency => 'Concurrencia';
	@override String get edgeRuntimeNotInstalled => 'El dispositivo actual no tiene instalado el runtime de Edge WebView2, por lo que no se puede mostrar la página. Descargue e instale el runtime de Edge WebView2 (x64), reinicie la aplicación e inténtelo de nuevo.';
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
class _TranslationsAboutScreenEs implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsBackupAndSyncWebdavScreenEs implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Server Url';
	@override String get webdavRequired => 'Can not be empty';
	@override String get webdavLoginFailed => 'Login failed:';
	@override String get webdavListFailed => 'Failed to get file list:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenEs implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsDiversionRuleDetectScreenEs implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Diversion Rule Detect';
	@override String get rule => 'Rule:';
	@override String get outbound => 'Proxy Server:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenEs implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Tip: Try to match the rules from top to bottom. If no rule is matched, use [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenEs implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP can not be empty';
	@override String get urlCanNotEmpty => 'URL can not be empty';
	@override String error({required Object p}) => 'Unsupported type:${p}';
	@override String get dnsDesc => 'The first column of delay data is the direct connection query delay;\nThe second column: Turn on [[Proxy Traffic]Resolve DNS through proxy server]: the delay data is the query delay forwarded through the current proxy server; if the [[Proxy Traffic]Resolve DNS through proxy server]: The delay data is the direct connection query delay';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenEs implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'File Content Viewer';
	@override String get clearFileContent => 'Are you sure to clear the content of the file?';
	@override String get clearFileContentTips => 'Are you sure to clear the content of the Profile file? Clearing the Profile file may cause data loss or abnormal application functions, please operate with caution';
}

// Path: HomeScreen
class _TranslationsHomeScreenEs implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsLaunchFailedScreenEs implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'The app failed to start [Invalid process name], please reinstall the app to a separate directory';
	@override String get invalidProfile => 'The app failed to start [Failed to access the profile], please reinstall the app';
	@override String get invalidVersion => 'The app failed to start [Invalid version], please reinstall the app';
	@override String get systemVersionLow => 'The app failed to start [system version too low]';
	@override String get invalidInstallPath => 'The installation path is invalid, please reinstall it to a valid path';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenEs implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Profiles Merge';
	@override String get profilesMergeTarget => 'Target Profile';
	@override String get profilesMergeSource => 'Source Profiles';
	@override String get profilesMergeTips => 'Tip: Diversion of the source profiles will be discarded';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenEs implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsNetConnectionsFilterScreenEs implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domain/IP';
	@override String get app => 'App';
	@override String get rule => 'Rule';
	@override String get chain => 'Outbound';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenEs implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Copied to CSV format';
	@override String get selectType => 'Select Diversion Type';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenEs implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Per-App Proxy';
	@override String get whiteListMode => 'Whitelist Mode';
	@override String get whiteListModeTip => 'When enabled: only the apps that have been checked are proxies; when not enabled: only the apps that are not checked are proxies';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenEs implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Country Or Region';
	@override String get Regions => 'Tip: Please set your current country or region correctly, otherwise it may cause network diversion problems';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenEs implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsSettingsScreenEs implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsUserAgreementScreenEs implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Your Privacy Comes First';
	@override String get agreeAndContinue => 'Accept & Continue';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenEs implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'The new version[${p}] is ready';
	@override String get update => 'Restart To Update';
	@override String get cancel => 'Not Now';
}

// Path: CommonWidget
class _TranslationsCommonWidgetEs implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'If [Always on VPN] is turned on, please turn off [Always on VPN] and try connecting again';
	@override String get resetPort => 'Please change the port to another available port or close the application occupying the port.';
}

// Path: main
class _TranslationsMainEs implements TranslationsMainEn {
	_TranslationsMainEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayEs tray = _TranslationsMainTrayEs._(_root);
}

// Path: meta
class _TranslationsMetaEs implements TranslationsMetaEn {
	_TranslationsMetaEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Activar';
	@override String get disable => 'Desactivar';
	@override String get bydefault => 'Por defecto';
	@override String get filter => 'Filtrar';
	@override String get filterMethod => 'Método de filtrado';
	@override String get include => 'Incluir';
	@override String get exclude => 'Excluir';
	@override String get all => 'Todo';
	@override String get prefer => 'Preferir';
	@override String get only => 'Solo';
	@override String get open => 'Abrir';
	@override String get close => 'Cerrar';
	@override String get quit => 'Salir';
	@override String get add => 'Añadir';
	@override String get addSuccess => 'Añadido con éxito';
	@override String addFailed({required Object p}) => 'Error al añadir: ${p}';
	@override String get remove => 'Eliminar';
	@override String get removeConfirm => '¿Confirmar eliminación?';
	@override String get edit => 'Editar';
	@override String get view => 'Ver';
	@override String get more => 'Más';
	@override String get tips => 'Consejo';
	@override String get copy => 'Copiar';
	@override String get save => 'Guardar';
	@override String get ok => 'Aceptar';
	@override String get cancel => 'Cancelar';
	@override String get feedback => 'Comentarios';
	@override String get feedbackContent => 'Contenido del comentario';
	@override String get feedbackContentHit => 'Obligatorio, hasta 500 caracteres';
	@override String get feedbackContentCannotEmpty => 'El contenido del comentario no puede estar vacío';
	@override String get faq => 'Preguntas frecuentes';
	@override String get htmlTools => 'Herramientas HTML';
	@override String get download => 'Descargar';
	@override String get upload => 'Subir';
	@override String get downloadSpeed => 'Velocidad de descarga';
	@override String get uploadSpeed => 'Velocidad de subida';
	@override String get loading => 'Cargando...';
	@override String get convert => 'Convertir';
	@override String get check => 'Verificar';
	@override String get detect => 'Detectar';
	@override String get cache => 'Caché';
	@override String get days => 'Días';
	@override String get hours => 'Horas';
	@override String get minutes => 'Minutos';
	@override String get seconds => 'Segundos';
	@override String get milliseconds => 'Milisegundos';
	@override String get tolerance => 'Tolerancia';
	@override String get dateTimePeriod => 'Periodo';
	@override String get protocol => 'Protocolo';
	@override String get search => 'Buscar';
	@override String get custom => 'Personalizado';
	@override String get inbound => 'Entrante';
	@override String get outbound => 'Saliente';
	@override String get destination => 'Destino';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Conectar';
	@override String get disconnect => 'Desconectar';
	@override String get reconnect => 'Reconectar';
	@override String get connected => 'Conectado';
	@override String get disconnected => 'Desconectado';
	@override String get connecting => 'Conectando';
	@override String get connectTimeout => 'Tiempo de conexión agotado';
	@override String get timeout => 'Tiempo agotado';
	@override String get timeoutDuration => 'Duración del tiempo de espera';
	@override String get runDuration => 'Tiempo de ejecución';
	@override String get latency => 'Latencia';
	@override String get latencyTest => 'Prueba de latencia';
	@override String get language => 'Idioma';
	@override String get next => 'Siguiente';
	@override String get done => 'Hecho';
	@override String get apply => 'Aplicar';
	@override String get refresh => 'Actualizar';
	@override String get retry => '¿Reintentar?';
	@override String get update => 'Actualizar';
	@override String get updateInterval => 'Intervalo de actualización';
	@override String get updateInterval5mTips => 'Mínimo: 5m';
	@override String updateFailed({required Object p}) => 'Error al actualizar: ${p}';
	@override String get samplingUnit => 'Unidad de tiempo de muestreo';
	@override String get queryResultCount => 'Cantidad de resultados';
	@override String queryLimit({required Object p}) => 'Mostrar hasta ${p} datos';
	@override String get none => 'Ninguno';
	@override String get start => 'Empezar';
	@override String get pause => 'Pausar';
	@override String get reset => 'Restablecer';
	@override String get submit => 'Enviar';
	@override String get user => 'Usuario';
	@override String get account => 'Cuenta';
	@override String get password => 'Contraseña';
	@override String get required => 'Obligatorio';
	@override String get type => 'Tipo';
	@override String get path => 'Ruta';
	@override String get local => 'Local';
	@override String get remote => 'Remoto';
	@override String get other => 'Otro';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL no válida';
	@override String get urlCannotEmpty => 'El enlace no puede estar vacío';
	@override String get urlTooLong => 'La URL es demasiado larga (>8182)';
	@override String get copyUrl => 'Copiar enlace';
	@override String get openUrl => 'Abrir enlace';
	@override String get shareUrl => 'Compartir enlace';
	@override String get speedTestUrl => 'URL de prueba de velocidad';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'IP estática';
	@override String get staticIPTips => 'Debe activar [TUN HijackDNS] o [${_root.SettingsScreen.inboundDomainResolve}].';
	@override String get isp => 'Proveedor VPN';
	@override String get domainSuffix => 'Sufijo de dominio';
	@override String get domain => 'Dominio';
	@override String get domainKeyword => 'Palabra clave de dominio';
	@override String get domainRegex => 'Regex de dominio';
	@override String get ip => 'IP';
	@override String get port => 'Puerto';
	@override String get portRange => 'Rango de puertos';
	@override String get appPackage => 'ID de paquete de aplicación';
	@override String get processName => 'Nombre del proceso';
	@override String get processPath => 'Ruta del proceso';
	@override String get processDir => 'Directorio del proceso';
	@override String get systemProxy => 'Proxy del sistema';
	@override String get percentage => 'Porcentaje';
	@override String get statistics => 'Estadísticas';
	@override String get statisticsAndAnalysis => 'Estadísticas y análisis';
	@override String get statisticsDataDesensitize => 'Desensibilización de datos';
	@override String get statisticsDataDesensitizeTips => 'El proceso/ID de paquete/dominio de destino/IP de destino, etc., se sustituirán por * y se guardarán tras la desensibilización';
	@override String get records => 'Registros';
	@override String get requestRecords => 'Registros de peticiones';
	@override String get netInterfaces => 'Interfaces de red';
	@override String get netSpeed => 'Velocidad';
	@override String get memoryTrendChart => 'Gráfico de tendencia de memoria';
	@override String get goroutinesTrendChart => 'Gráfico de tendencia GoRoutines';
	@override String get trafficTrendChart => 'Gráfico de tendencia de tráfico';
	@override String get trafficDistributionChart => 'Gráfico de distribución de tráfico';
	@override String get connectionChart => 'Gráfico de tendencia de conexiones';
	@override String get memoryChart => 'Gráfico de tendencia de memoria';
	@override String get trafficStatistics => 'Estadísticas de tráfico';
	@override String get traffic => 'Tráfico';
	@override String get trafficTotal => 'Tráfico total';
	@override String get trafficProxy => 'Tráfico proxy';
	@override String get trafficDirect => 'Tráfico directo';
	@override String get website => 'Sitio web';
	@override String get memory => 'Memoria';
	@override String get outboundMode => 'Mode saliente';
	@override String get rule => 'Regla';
	@override String get global => 'Global';
	@override String get qrcode => 'Código QR';
	@override String get qrcodeTooLong => 'Texto demasiado largo para mostrar';
	@override String get qrcodeShare => 'Compartir código QR';
	@override String get textToQrcode => 'Texto a código QR';
	@override String get qrcodeScan => 'Escanear código QR';
	@override String get qrcodeScanResult => 'Resultado del escaneo';
	@override String get qrcodeScanFromImage => 'Escanear desde imagen';
	@override String get qrcodeScanResultFailed => 'Error al analizar la imagen, asegúrese de que la captura de pantalla es un código QR válido';
	@override String get qrcodeScanResultEmpty => 'El resultado del escaneo está vacío';
	@override String get screenshot => 'Captura de pantalla';
	@override String get backupAndSync => 'Copia de seguridad y sincronización';
	@override String get autoBackup => 'Copia de seguridad automática';
	@override String get noProfileGotAutoBackup => 'Si se pierden datos como [${_root.meta.myProfiles}], puede restaurarlos desde [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] u otras fuentes de copia de seguridad (como iCloud o Webdav, etc.)';
	@override String get autoBackupAddProfile => 'Tras añadir el perfil';
	@override String get autoBackupRemoveProfile => 'Tras eliminar el perfil';
	@override String get profile => 'Perfil';
	@override String get currentProfile => 'Perfil actual';
	@override String get importAndExport => 'Importar/Exportar';
	@override String get import => 'Importar';
	@override String get importFromUrl => 'Importar desde URL';
	@override String get export => 'Exportar';
	@override String get send => 'Enviar';
	@override String get receive => 'Recibir';
	@override String get sendConfirm => '¿Confirmar envío?';
	@override String get termOfUse => 'Condiciones de uso';
	@override String get privacyPolicy => 'Política de privacidad';
	@override String get about => 'Acerca de';
	@override String get name => 'Nombre';
	@override String get version => 'Versión';
	@override String get notice => 'Aviso';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Acción: ${p}\nMotivo: ${p1}';
	@override String get sort => 'Ordenar';
	@override String get novice => 'Modo principiante';
	@override String get willCompleteAfterRebootInstall => 'Reinicie su dispositivo para completar la instalación de la extensión del sistema';
	@override String get willCompleteAfterRebootUninstall => 'Reinicie su dispositivo para completar la desinstalación de la extensión del sistema';
	@override String get requestNeedsUserApproval => '1. [Permitir] que Karing instale extensiones del sistema en [Ajustes del sistema]-[Privacidad y seguridad]\n2. [Ajustes del sistema]-[General]-[Ítems de inicio y extensiones-Extensión de red] active [karingServiceSE]\nVuelva a conectar tras finalizar';
	@override String get FullDiskAccessPermissionRequired => 'Active el permiso [karingServiceSE] en [Ajustes del sistema]-[Privacidad y seguridad]-[Acceso total al disco] y vuelva a conectar';
	@override String get tvMode => 'Modo TV';
	@override String get recommended => 'Recomendado';
	@override String innerError({required Object p}) => 'Error interno: ${p}';
	@override String get logicOperation => 'Operación lógica';
	@override String get share => 'Compartir';
	@override String get candidateWord => 'Palabras sugeridas';
	@override String get keywordOrRegx => 'Palabras clave/Regex';
	@override String get importFromClipboard => 'Importar desde el portapapeles';
	@override String get exportToClipboard => 'Exportar al portapapeles';
	@override String get server => 'Servidor';
	@override String get ads => 'Publicidad';
	@override String get adsRemove => 'Eliminar publicidad';
	@override String get donate => 'Donar';
	@override String get diversion => 'Desvío';
	@override String get diversionRules => 'Reglas de desvío';
	@override String get diversionCustomGroup => 'Grupo de desvío personalizado';
	@override String get urlTestCustomGroup => 'Selección automática personalizada';
	@override String get setting => 'Ajustes';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Sincronización LAN';
	@override String get lanSyncNotQuitTips => 'No salga de esta pantalla hasta que finalice la sincronización';
	@override String get deviceNoSpace => 'Espacio en disco insuficiente';
	@override String get hideSystemApp => 'Ocultar aplicaciones del sistema';
	@override String get hideAppIcon => 'Ocultar iconos de aplicación';
	@override String get hideDockIcon => 'Ocultar icono del Dock';
	@override String get remark => 'Nota';
	@override String get remarkExist => 'La nota ya existe, use otro nombre';
	@override String get remarkCannotEmpty => 'La nota no puede estar vacía';
	@override String get remarkTooLong => 'Notas de hasta 32 caracteres';
	@override String get openDir => 'Abrir directorio de archivos';
	@override String get fileChoose => 'Seleccionar archivo';
	@override String get filePathCannotEmpty => 'La ruta del archivo no puede estar vacía';
	@override String fileNotExist({required Object p}) => 'El archivo no existe: ${p}';
	@override String fileTypeInvalid({required Object p}) => 'Tipo de archivo no válido: ${p}';
	@override String get uwpExemption => 'Exenciones de aislamiento de red UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Obtener perfil';
	@override String get addProfile => 'Añadir perfil';
	@override String get myProfiles => 'Mis perfiles';
	@override String get profileEdit => 'Editar perfil';
	@override String get profileEditUrlExist => 'La URL ya existe, use otra URL';
	@override String get profileEditReloadAfterProfileUpdate => 'Recargar tras actualizar el perfil';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Iniciar prueba de latencia tras actualización automática de perfil';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'La VPN debe estar conectada y [Recargar tras actualizar el perfil] activado';
	@override String get profileEditTestLatencyAutoRemove => 'Eliminar automáticamente servidores que fallan la prueba de latencia';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Intentar hasta 3 veces';
	@override String get profileImport => 'Importar archivo de perfil';
	@override String get profileAddUrlOrContent => 'Añadir enlace de perfil';
	@override String get profileExists => 'El perfil ya existe, no lo añada repetidamente';
	@override String get profileUrlOrContent => 'Enlace/Contenido del perfil';
	@override String get profileUrlOrContentHit => 'Enlace/Contenido del perfil [Obligatorio] (Soporta Clash, V2ray (soporte por lotes), Stash, Karing, Sing-box, Shadowsocks, enlaces de subperfil)';
	@override String get profileUrlOrContentCannotEmpty => 'El enlace del perfil no puede estar vacío';
	@override String profileAddFailedFormatException({required Object p}) => 'El formato es incorrecto, corríjalo y añádalo de nuevo: ${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Error al añadir: ${p}, intente cambiar el [UserAgent] y reintente, o use el navegador integrado del dispositivo para abrir el enlace de configuración e importe el archivo de configuración descargado por el navegador en esta aplicación';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Error al añadir: ${p}, active el proxy o cambie el nodo de proxy actual y reintente';
	@override String get profileAddParseFailed => 'Error al analizar el perfil';
	@override String get profileAddNoServerAvaliable => 'No hay servidores disponibles, asegúrese de que el enlace o el archivo de perfil sean válidos; si su perfil proviene de GitHub, obtenga el enlace desde el botón [Raw] de la página';
	@override String get profileAddWrapSuccess => 'Perfil generado con éxito, vaya a [${_root.meta.myProfiles}] para verlo';
}

// Path: isp
class _TranslationsIspEs implements TranslationsIspEn {
	_TranslationsIspEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Vincular a [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'Desvincular [${p}]';
	@override String faq({required Object p}) => 'FAQ [${p}]';
	@override String customerService({required Object p}) => 'Telegram [${p}]';
	@override String follow({required Object p}) => 'Seguir [${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] No válido o caducado';
}

// Path: permission
class _TranslationsPermissionEs implements TranslationsPermissionEn {
	_TranslationsPermissionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Cámara';
	@override String get screen => 'Grabación de pantalla';
	@override String get appQuery => 'Obtener lista de aplicaciones';
	@override String request({required Object p}) => 'Activar permiso [${p}]';
	@override String requestNeed({required Object p}) => 'Active el permiso [${p}]';
}

// Path: tls
class _TranslationsTlsEs implements TranslationsTlsEn {
	_TranslationsTlsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Omitir verificación de certificado';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Activar fragmento TLS';
	@override String get fragmentSize => 'Tamaño de fragmento TLS';
	@override String get fragmentSleep => 'Espera de fragmento TLS';
	@override String get mixedCaseSNIEnable => 'Activar SNI mixto TLS';
	@override String get paddingEnable => 'Activar relleno TLS';
	@override String get paddingSize => 'Tamaño de relleno TLS';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeEs implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Seleccionado actualmente';
	@override String get urltest => 'Selección automática';
	@override String get direct => 'Directo';
	@override String get block => 'Bloquear';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeEs implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyEs implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonEs implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Actualización de perfil';
}

// Path: theme
class _TranslationsThemeEs implements TranslationsThemeEn {
	_TranslationsThemeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get light => 'Claro';
	@override String get dark => 'Oscuro';
	@override String get auto => 'Auto';
}

// Path: main.tray
class _TranslationsMainTrayEs implements TranslationsMainTrayEn {
	_TranslationsMainTrayEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Open';
	@override String get menuExit => 'Exit';
}

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
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
			'meta.enable' => 'Activar',
			'meta.disable' => 'Desactivar',
			'meta.bydefault' => 'Por defecto',
			'meta.filter' => 'Filtrar',
			'meta.filterMethod' => 'Método de filtrado',
			'meta.include' => 'Incluir',
			'meta.exclude' => 'Excluir',
			'meta.all' => 'Todo',
			'meta.prefer' => 'Preferir',
			'meta.only' => 'Solo',
			'meta.open' => 'Abrir',
			'meta.close' => 'Cerrar',
			'meta.quit' => 'Salir',
			'meta.add' => 'Añadir',
			'meta.addSuccess' => 'Añadido con éxito',
			'meta.addFailed' => ({required Object p}) => 'Error al añadir: ${p}',
			'meta.remove' => 'Eliminar',
			'meta.removeConfirm' => '¿Confirmar eliminación?',
			'meta.edit' => 'Editar',
			'meta.view' => 'Ver',
			'meta.more' => 'Más',
			'meta.tips' => 'Consejo',
			'meta.copy' => 'Copiar',
			'meta.save' => 'Guardar',
			'meta.ok' => 'Aceptar',
			'meta.cancel' => 'Cancelar',
			'meta.feedback' => 'Comentarios',
			'meta.feedbackContent' => 'Contenido del comentario',
			'meta.feedbackContentHit' => 'Obligatorio, hasta 500 caracteres',
			'meta.feedbackContentCannotEmpty' => 'El contenido del comentario no puede estar vacío',
			'meta.faq' => 'Preguntas frecuentes',
			'meta.htmlTools' => 'Herramientas HTML',
			'meta.download' => 'Descargar',
			'meta.upload' => 'Subir',
			'meta.downloadSpeed' => 'Velocidad de descarga',
			'meta.uploadSpeed' => 'Velocidad de subida',
			'meta.loading' => 'Cargando...',
			'meta.convert' => 'Convertir',
			'meta.check' => 'Verificar',
			'meta.detect' => 'Detectar',
			'meta.cache' => 'Caché',
			'meta.days' => 'Días',
			'meta.hours' => 'Horas',
			'meta.minutes' => 'Minutos',
			'meta.seconds' => 'Segundos',
			'meta.milliseconds' => 'Milisegundos',
			'meta.tolerance' => 'Tolerancia',
			'meta.dateTimePeriod' => 'Periodo',
			'meta.protocol' => 'Protocolo',
			'meta.search' => 'Buscar',
			'meta.custom' => 'Personalizado',
			'meta.inbound' => 'Entrante',
			'meta.outbound' => 'Saliente',
			'meta.destination' => 'Destino',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Conectar',
			'meta.disconnect' => 'Desconectar',
			'meta.reconnect' => 'Reconectar',
			'meta.connected' => 'Conectado',
			'meta.disconnected' => 'Desconectado',
			'meta.connecting' => 'Conectando',
			'meta.connectTimeout' => 'Tiempo de conexión agotado',
			'meta.timeout' => 'Tiempo agotado',
			'meta.timeoutDuration' => 'Duración del tiempo de espera',
			'meta.runDuration' => 'Tiempo de ejecución',
			'meta.latency' => 'Latencia',
			'meta.latencyTest' => 'Prueba de latencia',
			'meta.language' => 'Idioma',
			'meta.next' => 'Siguiente',
			'meta.done' => 'Hecho',
			'meta.apply' => 'Aplicar',
			'meta.refresh' => 'Actualizar',
			'meta.retry' => '¿Reintentar?',
			'meta.update' => 'Actualizar',
			'meta.updateInterval' => 'Intervalo de actualización',
			'meta.updateInterval5mTips' => 'Mínimo: 5m',
			'meta.updateFailed' => ({required Object p}) => 'Error al actualizar: ${p}',
			'meta.samplingUnit' => 'Unidad de tiempo de muestreo',
			'meta.queryResultCount' => 'Cantidad de resultados',
			'meta.queryLimit' => ({required Object p}) => 'Mostrar hasta ${p} datos',
			'meta.none' => 'Ninguno',
			'meta.start' => 'Empezar',
			'meta.pause' => 'Pausar',
			'meta.reset' => 'Restablecer',
			'meta.submit' => 'Enviar',
			'meta.user' => 'Usuario',
			'meta.account' => 'Cuenta',
			'meta.password' => 'Contraseña',
			'meta.required' => 'Obligatorio',
			'meta.type' => 'Tipo',
			'meta.path' => 'Ruta',
			'meta.local' => 'Local',
			'meta.remote' => 'Remoto',
			'meta.other' => 'Otro',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL no válida',
			'meta.urlCannotEmpty' => 'El enlace no puede estar vacío',
			'meta.urlTooLong' => 'La URL es demasiado larga (>8182)',
			'meta.copyUrl' => 'Copiar enlace',
			'meta.openUrl' => 'Abrir enlace',
			'meta.shareUrl' => 'Compartir enlace',
			'meta.speedTestUrl' => 'URL de prueba de velocidad',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'IP estática',
			'meta.staticIPTips' => 'Debe activar [TUN HijackDNS] o [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'Proveedor VPN',
			'meta.domainSuffix' => 'Sufijo de dominio',
			'meta.domain' => 'Dominio',
			'meta.domainKeyword' => 'Palabra clave de dominio',
			'meta.domainRegex' => 'Regex de dominio',
			'meta.ip' => 'IP',
			'meta.port' => 'Puerto',
			'meta.portRange' => 'Rango de puertos',
			'meta.appPackage' => 'ID de paquete de aplicación',
			'meta.processName' => 'Nombre del proceso',
			'meta.processPath' => 'Ruta del proceso',
			'meta.processDir' => 'Directorio del proceso',
			'meta.systemProxy' => 'Proxy del sistema',
			'meta.percentage' => 'Porcentaje',
			'meta.statistics' => 'Estadísticas',
			'meta.statisticsAndAnalysis' => 'Estadísticas y análisis',
			'meta.statisticsDataDesensitize' => 'Desensibilización de datos',
			'meta.statisticsDataDesensitizeTips' => 'El proceso/ID de paquete/dominio de destino/IP de destino, etc., se sustituirán por * y se guardarán tras la desensibilización',
			'meta.records' => 'Registros',
			'meta.requestRecords' => 'Registros de peticiones',
			'meta.netInterfaces' => 'Interfaces de red',
			'meta.netSpeed' => 'Velocidad',
			'meta.memoryTrendChart' => 'Gráfico de tendencia de memoria',
			'meta.goroutinesTrendChart' => 'Gráfico de tendencia GoRoutines',
			'meta.trafficTrendChart' => 'Gráfico de tendencia de tráfico',
			'meta.trafficDistributionChart' => 'Gráfico de distribución de tráfico',
			'meta.connectionChart' => 'Gráfico de tendencia de conexiones',
			'meta.memoryChart' => 'Gráfico de tendencia de memoria',
			'meta.trafficStatistics' => 'Estadísticas de tráfico',
			'meta.traffic' => 'Tráfico',
			'meta.trafficTotal' => 'Tráfico total',
			'meta.trafficProxy' => 'Tráfico proxy',
			'meta.trafficDirect' => 'Tráfico directo',
			'meta.website' => 'Sitio web',
			'meta.memory' => 'Memoria',
			'meta.outboundMode' => 'Mode saliente',
			'meta.rule' => 'Regla',
			'meta.global' => 'Global',
			'meta.qrcode' => 'Código QR',
			'meta.qrcodeTooLong' => 'Texto demasiado largo para mostrar',
			'meta.qrcodeShare' => 'Compartir código QR',
			'meta.textToQrcode' => 'Texto a código QR',
			'meta.qrcodeScan' => 'Escanear código QR',
			'meta.qrcodeScanResult' => 'Resultado del escaneo',
			'meta.qrcodeScanFromImage' => 'Escanear desde imagen',
			'meta.qrcodeScanResultFailed' => 'Error al analizar la imagen, asegúrese de que la captura de pantalla es un código QR válido',
			'meta.qrcodeScanResultEmpty' => 'El resultado del escaneo está vacío',
			'meta.screenshot' => 'Captura de pantalla',
			'meta.backupAndSync' => 'Copia de seguridad y sincronización',
			'meta.autoBackup' => 'Copia de seguridad automática',
			'meta.noProfileGotAutoBackup' => 'Si se pierden datos como [${_root.meta.myProfiles}], puede restaurarlos desde [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] u otras fuentes de copia de seguridad (como iCloud o Webdav, etc.)',
			'meta.autoBackupAddProfile' => 'Tras añadir el perfil',
			'meta.autoBackupRemoveProfile' => 'Tras eliminar el perfil',
			'meta.profile' => 'Perfil',
			'meta.currentProfile' => 'Perfil actual',
			'meta.importAndExport' => 'Importar/Exportar',
			'meta.import' => 'Importar',
			'meta.importFromUrl' => 'Importar desde URL',
			'meta.export' => 'Exportar',
			'meta.send' => 'Enviar',
			'meta.receive' => 'Recibir',
			'meta.sendConfirm' => '¿Confirmar envío?',
			'meta.termOfUse' => 'Condiciones de uso',
			'meta.privacyPolicy' => 'Política de privacidad',
			'meta.about' => 'Acerca de',
			'meta.name' => 'Nombre',
			'meta.version' => 'Versión',
			'meta.notice' => 'Aviso',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Acción: ${p}\nMotivo: ${p1}',
			'meta.sort' => 'Ordenar',
			'meta.novice' => 'Modo principiante',
			'meta.willCompleteAfterRebootInstall' => 'Reinicie su dispositivo para completar la instalación de la extensión del sistema',
			'meta.willCompleteAfterRebootUninstall' => 'Reinicie su dispositivo para completar la desinstalación de la extensión del sistema',
			'meta.requestNeedsUserApproval' => '1. [Permitir] que Karing instale extensiones del sistema en [Ajustes del sistema]-[Privacidad y seguridad]\n2. [Ajustes del sistema]-[General]-[Ítems de inicio y extensiones-Extensión de red] active [karingServiceSE]\nVuelva a conectar tras finalizar',
			'meta.FullDiskAccessPermissionRequired' => 'Active el permiso [karingServiceSE] en [Ajustes del sistema]-[Privacidad y seguridad]-[Acceso total al disco] y vuelva a conectar',
			'meta.tvMode' => 'Modo TV',
			'meta.recommended' => 'Recomendado',
			'meta.innerError' => ({required Object p}) => 'Error interno: ${p}',
			'meta.logicOperation' => 'Operación lógica',
			'meta.share' => 'Compartir',
			'meta.candidateWord' => 'Palabras sugeridas',
			'meta.keywordOrRegx' => 'Palabras clave/Regex',
			'meta.importFromClipboard' => 'Importar desde el portapapeles',
			'meta.exportToClipboard' => 'Exportar al portapapeles',
			'meta.server' => 'Servidor',
			'meta.ads' => 'Publicidad',
			'meta.adsRemove' => 'Eliminar publicidad',
			'meta.donate' => 'Donar',
			'meta.diversion' => 'Desvío',
			'meta.diversionRules' => 'Reglas de desvío',
			'meta.diversionCustomGroup' => 'Grupo de desvío personalizado',
			'meta.urlTestCustomGroup' => 'Selección automática personalizada',
			'meta.setting' => 'Ajustes',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Sincronización LAN',
			'meta.lanSyncNotQuitTips' => 'No salga de esta pantalla hasta que finalice la sincronización',
			'meta.deviceNoSpace' => 'Espacio en disco insuficiente',
			'meta.hideSystemApp' => 'Ocultar aplicaciones del sistema',
			'meta.hideAppIcon' => 'Ocultar iconos de aplicación',
			'meta.hideDockIcon' => 'Ocultar icono del Dock',
			'meta.remark' => 'Nota',
			'meta.remarkExist' => 'La nota ya existe, use otro nombre',
			'meta.remarkCannotEmpty' => 'La nota no puede estar vacía',
			'meta.remarkTooLong' => 'Notas de hasta 32 caracteres',
			'meta.openDir' => 'Abrir directorio de archivos',
			'meta.fileChoose' => 'Seleccionar archivo',
			'meta.filePathCannotEmpty' => 'La ruta del archivo no puede estar vacía',
			'meta.fileNotExist' => ({required Object p}) => 'El archivo no existe: ${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Tipo de archivo no válido: ${p}',
			'meta.uwpExemption' => 'Exenciones de aislamiento de red UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Obtener perfil',
			'meta.addProfile' => 'Añadir perfil',
			'meta.myProfiles' => 'Mis perfiles',
			'meta.profileEdit' => 'Editar perfil',
			'meta.profileEditUrlExist' => 'La URL ya existe, use otra URL',
			'meta.profileEditReloadAfterProfileUpdate' => 'Recargar tras actualizar el perfil',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Iniciar prueba de latencia tras actualización automática de perfil',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'La VPN debe estar conectada y [Recargar tras actualizar el perfil] activado',
			'meta.profileEditTestLatencyAutoRemove' => 'Eliminar automáticamente servidores que fallan la prueba de latencia',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Intentar hasta 3 veces',
			'meta.profileImport' => 'Importar archivo de perfil',
			'meta.profileAddUrlOrContent' => 'Añadir enlace de perfil',
			'meta.profileExists' => 'El perfil ya existe, no lo añada repetidamente',
			'meta.profileUrlOrContent' => 'Enlace/Contenido del perfil',
			'meta.profileUrlOrContentHit' => 'Enlace/Contenido del perfil [Obligatorio] (Soporta Clash, V2ray (soporte por lotes), Stash, Karing, Sing-box, Shadowsocks, enlaces de subperfil)',
			'meta.profileUrlOrContentCannotEmpty' => 'El enlace del perfil no puede estar vacío',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'El formato es incorrecto, corríjalo y añádalo de nuevo: ${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Error al añadir: ${p}, intente cambiar el [UserAgent] y reintente, o use el navegador integrado del dispositivo para abrir el enlace de configuración e importe el archivo de configuración descargado por el navegador en esta aplicación',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Error al añadir: ${p}, active el proxy o cambie el nodo de proxy actual y reintente',
			'meta.profileAddParseFailed' => 'Error al analizar el perfil',
			'meta.profileAddNoServerAvaliable' => 'No hay servidores disponibles, asegúrese de que el enlace o el archivo de perfil sean válidos; si su perfil proviene de GitHub, obtenga el enlace desde el botón [Raw] de la página',
			'meta.profileAddWrapSuccess' => 'Perfil generado con éxito, vaya a [${_root.meta.myProfiles}] para verlo',
			'diversionRulesKeep' => 'Mantener [${_root.meta.isp}] ${_root.meta.diversionRules}',
			'diversionCustomGroupPreset' => 'Preajuste [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Nota: Los elementos activados se añadirán/sobrescribirán en [${_root.meta.diversionCustomGroup}] y [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Nota: Tras añadir, puede que necesite ajustar manualmente el orden, de lo contrario el nuevo desvío podría no ser efectivo',
			'rulesetEnableTips' => 'Consejo: Tras activar las opciones, vaya a [${_root.meta.diversionRules}] para definir las reglas pertinentes, de lo contrario no serán efectivas',
			'ispUserAgentTips' => '[${_root.meta.isp}] enviará datos de diferentes tipos de suscripción según el [UserAgent] en la petición [HTTP]',
			'ispDiversionTips' => '[${_root.meta.isp}] proporciona reglas de desvío de tráfico; las suscripciones de tipo [V2Ray] no soportan reglas de desvío de tráfico',
			'isp.bind' => 'Vincular a [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Desvincular [${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ [${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram [${p}]',
			'isp.follow' => ({required Object p}) => 'Seguir [${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] No válido o caducado',
			'permission.camera' => 'Cámara',
			'permission.screen' => 'Grabación de pantalla',
			'permission.appQuery' => 'Obtener lista de aplicaciones',
			'permission.request' => ({required Object p}) => 'Activar permiso [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'Active el permiso [${p}]',
			'tls.insecure' => 'Omitir verificación de certificado',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Activar fragmento TLS',
			'tls.fragmentSize' => 'Tamaño de fragmento TLS',
			'tls.fragmentSleep' => 'Espera de fragmento TLS',
			'tls.mixedCaseSNIEnable' => 'Activar SNI mixto TLS',
			'tls.paddingEnable' => 'Activar relleno TLS',
			'tls.paddingSize' => 'Tamaño de relleno TLS',
			'outboundRuleMode.currentSelected' => 'Seleccionado actualmente',
			_ => null,
		} ?? switch (path) {
			'outboundRuleMode.urltest' => 'Selección automática',
			'outboundRuleMode.direct' => 'Directo',
			'outboundRuleMode.block' => 'Bloquear',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Actualización de perfil',
			'theme.light' => 'Claro',
			'theme.dark' => 'Oscuro',
			'theme.auto' => 'Auto',
			'downloadProxyStrategy' => 'Canal de descarga',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Conectar al servidor DNS a través del servidor proxy para resolver el nombre de dominio\n[${_root.dnsProxyResolveMode.direct}]: Conectar directamente al servidor DNS para resolver el nombre de dominio\n[${_root.dnsProxyResolveMode.fakeip}]: El servidor proxy resuelve el nombre de dominio en su nombre; si desconecta la conexión VPN, su aplicación podría necesitar reiniciarse; solo efectivo para tráfico entrante [TUN]',
			'routeFinal' => 'final',
			'protocolSniff' => 'Detección de protocolo',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Use [${p}]',
			'turnOffPrivateDirect' => 'Active primero [Conexión directa a red privada]',
			'targetConnectFailed' => ({required Object p}) => 'Fallo al conectar a [${p}]. Asegúrese de que los dispositivos estén en la misma red local',
			'appleTVSync' => 'Sincronizar configuración de núcleo actual con Apple TV - Karing',
			'appleTVSyncDone' => 'Sincronización finalizada. Vaya a Apple TV - Karing para iniciar/reiniciar la conexión',
			'appleTVRemoveCoreConfig' => 'Eliminar configuración de núcleo de Apple TV - Karing',
			'appleTVRemoveCoreConfigDone' => 'Configuración de núcleo de Apple TV - Karing eliminada; servicio VPN desconectado',
			'appleTVUrlInvalid' => 'URL no válida, abra Apple TV - Karing y escanee el código QR mostrado por Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV: Karing[${p}] no tiene esta función, actualice y reintente',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'La versión mayor del núcleo no coincide, actualice [${p}] y reintente',
			'remoteProfileEditConfirm' => 'Tras actualizar el perfil, los cambios en los nodos se restaurarán. ¿Continuar?',
			'mustBeValidHttpsURL' => 'Debe ser una URL https válida',
			'fileNotExistReinstall' => ({required Object p}) => 'Falta el archivo [${p}], reinstale',
			'noNetworkConnect' => 'Sin conexión a internet',
			'sudoPassword' => 'Contraseña sudo (necesaria para el modo TUN)',
			'turnOffNetworkBeforeInstall' => 'Se recomienda cambiar al [Modo Avión] antes de instalar la actualización',
			'latencyTestResolveIP' => 'Al verificar manualmente, resolver la IP de salida',
			'latencyTestConcurrency' => 'Concurrencia',
			'edgeRuntimeNotInstalled' => 'El dispositivo actual no tiene instalado el runtime de Edge WebView2, por lo que no se puede mostrar la página. Descargue e instale el runtime de Edge WebView2 (x64), reinicie la aplicación e inténtelo de nuevo.',
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
