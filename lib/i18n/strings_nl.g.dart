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
class TranslationsNl with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsNl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.nl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <nl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsNl _root = this; // ignore: unused_field

	@override 
	TranslationsNl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsNl(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenNl AboutScreen = _TranslationsAboutScreenNl._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenNl BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenNl._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenNl DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenNl._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenNl DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenNl._(_root);
	@override late final _TranslationsDiversionRulesScreenNl DiversionRulesScreen = _TranslationsDiversionRulesScreenNl._(_root);
	@override late final _TranslationsDnsSettingsScreenNl DnsSettingsScreen = _TranslationsDnsSettingsScreenNl._(_root);
	@override late final _TranslationsFileContentViewerScreenNl FileContentViewerScreen = _TranslationsFileContentViewerScreenNl._(_root);
	@override late final _TranslationsHomeScreenNl HomeScreen = _TranslationsHomeScreenNl._(_root);
	@override late final _TranslationsLaunchFailedScreenNl LaunchFailedScreen = _TranslationsLaunchFailedScreenNl._(_root);
	@override late final _TranslationsMyProfilesMergeScreenNl MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenNl._(_root);
	@override late final _TranslationsNetCheckScreenNl NetCheckScreen = _TranslationsNetCheckScreenNl._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenNl NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenNl._(_root);
	@override late final _TranslationsNetConnectionsScreenNl NetConnectionsScreen = _TranslationsNetConnectionsScreenNl._(_root);
	@override late final _TranslationsPerAppAndroidScreenNl PerAppAndroidScreen = _TranslationsPerAppAndroidScreenNl._(_root);
	@override late final _TranslationsRegionSettingsScreenNl RegionSettingsScreen = _TranslationsRegionSettingsScreenNl._(_root);
	@override late final _TranslationsServerSelectScreenNl ServerSelectScreen = _TranslationsServerSelectScreenNl._(_root);
	@override late final _TranslationsSettingsScreenNl SettingsScreen = _TranslationsSettingsScreenNl._(_root);
	@override late final _TranslationsUserAgreementScreenNl UserAgreementScreen = _TranslationsUserAgreementScreenNl._(_root);
	@override late final _TranslationsVersionUpdateScreenNl VersionUpdateScreen = _TranslationsVersionUpdateScreenNl._(_root);
	@override late final _TranslationsCommonWidgetNl CommonWidget = _TranslationsCommonWidgetNl._(_root);
	@override late final _TranslationsMainNl main = _TranslationsMainNl._(_root);
	@override late final _TranslationsMetaNl meta = _TranslationsMetaNl._(_root);
	@override String get diversionRulesKeep => '[${_root.meta.diversionRules}] van [${_root.meta.isp}] behouden';
	@override String get diversionCustomGroupPreset => 'Voorinstelling [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Opmerking: Ingeschakelde items worden toegevoegd aan/overschreven in [${_root.meta.diversionCustomGroup}] en [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Opmerking: Na het toevoegen moet u mogelijk handmatig de volgorde aanpassen, anders werkt de nieuw toegevoegde omleiding mogelijk niet';
	@override String get rulesetEnableTips => 'Tip: Ga na het inschakelen van de opties naar [${_root.meta.diversionRules}] om de relevante regels in te stellen, anders treden ze niet in werking';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] zal gegevens van verschillende abonnementstypen verzenden op basis van de [UserAgent] in het [HTTP]-verzoek';
	@override String get ispDiversionTips => '[${_root.meta.isp}] biedt verkeersomleidingsregels; [V2Ray]-type abonnementen ondersteunen geen verkeersomleidingsregels';
	@override late final _TranslationsIspNl isp = _TranslationsIspNl._(_root);
	@override late final _TranslationsPermissionNl permission = _TranslationsPermissionNl._(_root);
	@override late final _TranslationsTlsNl tls = _TranslationsTlsNl._(_root);
	@override late final _TranslationsOutboundRuleModeNl outboundRuleMode = _TranslationsOutboundRuleModeNl._(_root);
	@override late final _TranslationsDnsProxyResolveModeNl dnsProxyResolveMode = _TranslationsDnsProxyResolveModeNl._(_root);
	@override late final _TranslationsProxyStrategyNl proxyStrategy = _TranslationsProxyStrategyNl._(_root);
	@override late final _TranslationsReloadReasonNl reloadReason = _TranslationsReloadReasonNl._(_root);
	@override late final _TranslationsThemeNl theme = _TranslationsThemeNl._(_root);
	@override String get downloadProxyStrategy => 'Downloadkanaal';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Maak verbinding met de DNS-server via de proxyserver om de domeinnaam op te lossen\n[${_root.dnsProxyResolveMode.direct}]: Maak rechtstreeks verbinding met de DNS-server om de domeinnaam op te lossen\n[${_root.dnsProxyResolveMode.fakeip}]: De proxyserver lost de domeinnaam voor u op; als u de VPN-verbinding verbreekt, moet uw app mogelijk opnieuw worden opgestart; alleen effectief voor [TUN] inkomend verkeer';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'Protocol Sniff';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Gebruik a.u.b. [${p}]';
	@override String get turnOffPrivateDirect => 'Schakel eerst [Directe verbinding met privénetwerk] in';
	@override String targetConnectFailed({required Object p}) => 'Verbinding met [${p}] mislukt. Zorg ervoor dat de apparaten zich in hetzelfde LAN bevinden';
	@override String get appleTVSync => 'De huidige kernconfiguratie synchroniseren naar Apple TV - Karing';
	@override String get appleTVSyncDone => 'Synchronisatie is voltooid. Ga naar Apple TV - Karing om de verbinding te starten/herstarten';
	@override String get appleTVRemoveCoreConfig => 'Apple TV - Karing kernconfiguratie verwijderen';
	@override String get appleTVRemoveCoreConfigDone => 'Kernconfiguratie van Apple TV - Karing verwijderd; VPN-service uitgeschakeld';
	@override String get appleTVUrlInvalid => 'Ongeldige URL, open Apple TV - Karing en scan de QR-code die door Karing wordt weergegeven';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] heeft deze functie niet, werk bij en probeer het opnieuw';
	@override String appleCoreVersionNotMatch({required Object p}) => 'De kernhoofdversie komt niet overeen, werk [${p}] bij en probeer het opnieuw';
	@override String get remoteProfileEditConfirm => 'Nadat het profiel is bijgewerkt, worden de knooppuntwijzigingen hersteld. Doorgaan?';
	@override String get mustBeValidHttpsURL => 'Moet een geldige https-URL zijn';
	@override String fileNotExistReinstall({required Object p}) => 'Bestand ontbreekt [${p}], installeer opnieuw a.u.b.';
	@override String get noNetworkConnect => 'Geen internetverbinding';
	@override String get sudoPassword => 'sudo-wachtwoord (vereist voor TUN-modus)';
	@override String get turnOffNetworkBeforeInstall => 'Het wordt aanbevolen om naar [Vliegtuigmodus] te schakelen voordat u de update installeert';
	@override String get latencyTestResolveIP => 'Bij handmatige controle het uitgaande IP oplossen';
	@override String get latencyTestConcurrency => 'Gelijktijdigheid';
	@override String get edgeRuntimeNotInstalled => 'Het huidige apparaat heeft de Edge WebView2-runtime niet geïnstalleerd, dus de pagina kan niet worden weergegeven. Download en installeer de Edge WebView2-runtime (x64), start de app opnieuw en probeer het opnieuw.';
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
class _TranslationsAboutScreenNl implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Installatiebron';
	@override String get installTime => 'Installatietijd';
	@override String get versionChannel => 'Auto Update-kanaal';
	@override String get updateWhenConnected => 'Controleer na het verbinden op updates.';
	@override String get autoDownloadPkg => 'Updatepakketten automatisch downloaden';
	@override String get disableAppImproveData => 'App-verbeteringsgegevens';
	@override String get disableUAReportTip => 'Het inschakelen van [${_root.AboutScreen.disableAppImproveData}] helpt ons de stabiliteit en bruikbaarheid van het product te verbeteren; we verzamelen geen persoonlijke privacygegevens. Uitschakelen voorkomt dat de app gegevens verzamelt.';
	@override String get devOptions => 'Ontwikkelaarsopties';
	@override String get enableDebugLog => 'Debug-logboek inschakelen';
	@override String get viewFilsContent => 'Bestanden bekijken';
	@override String get enablePprof => 'pprof inschakelen';
	@override String get pprofPanel => 'pprof-paneel';
	@override String get allowRemoteAccessPprof => 'Externe toegang tot ${_root.AboutScreen.pprofPanel} toestaan';
	@override String get allowRemoteAccessHtmlBoard => 'Externe toegang tot ${_root.SettingsScreen.htmlBoard} toestaan';
	@override String get useOriginalSBProfile => 'Origineel sing-box profiel gebruiken';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenNl implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Server-URL';
	@override String get webdavRequired => 'Mag niet leeg zijn';
	@override String get webdavLoginFailed => 'Inloggen mislukt:';
	@override String get webdavListFailed => 'Bestandslijst ophalen mislukt:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenNl implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'Ongeldig [Domein]:${p}';
	@override String invalidIpCidr({required Object p}) => 'Ongeldig [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'Ongeldig [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'Ongeldige [Regelset]:${p}, De URL moet een geldige https-URL zijn en een binair bestand met de extensie .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => 'Ongeldige [Regelset (ingebouwd)]:${p}, Het formaat is geosite:xxx of geoip:xxx of acl:xxx, en xxx moet een geldige regelnaam zijn';
	@override String invalidPackageId({required Object p}) => 'Ongeldige [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'Tip: Ga na het opslaan naar [${_root.meta.diversionRules}] om relevante regels in te stellen, anders treden ze niet in werking';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenNl implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Omleidingsregel detectie';
	@override String get rule => 'Regel:';
	@override String get outbound => 'Proxy-server:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenNl implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Tip: Probeer de regels van boven naar beneden te matchen. Als er geen regel overeenkomt, gebruik dan [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenNl implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP mag niet leeg zijn';
	@override String get urlCanNotEmpty => 'URL mag niet leeg zijn';
	@override String error({required Object p}) => 'Niet-ondersteund type:${p}';
	@override String get dnsDesc => 'De eerste kolom met vertragingsgegevens is de vertraging van de directe verbindingsquery;\nDe tweede kolom: Schakel [[Proxy-verkeer]DNS oplossen via proxy-server] in: de vertragingsgegevens zijn de queryvertraging die via de huidige proxy-server wordt doorgestuurd; als [[Proxy-verkeer]DNS oplossen via proxy-server] uit staat: de vertragingsgegevens zijn de vertraging van de directe verbindingsquery';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenNl implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bestandsinhoud bekijken';
	@override String get clearFileContent => 'Weet u zeker dat u de inhoud van het bestand wilt wissen?';
	@override String get clearFileContentTips => 'Weet u zeker dat u de inhoud van het profielbestand wilt wissen? Het wissen van het profielbestand kan leiden tot gegevensverlies of abnormale app-functies, ga voorzichtig te werk';
}

// Path: HomeScreen
class _TranslationsHomeScreenNl implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Selecteer een server';
	@override String get invalidServer => 'is ongeldig, selecteer opnieuw';
	@override String get disabledServer => 'is uitgeschakeld, selecteer opnieuw';
	@override String get expiredServer => 'Geen servers beschikbaar, profielen kunnen verlopen of uitgeschakeld zijn';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'Stel [Snelkoppeling] in voordat u deze gebruikt';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Te veel proxy-servers [${p}>${p1}], de verbinding kan mislukken vanwege geheugenbeperkingen van het systeem';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Te veel proxy-servers [${p}>${p1}] kunnen trage of ontoegankelijke verbindingen veroorzaken';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenNl implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'De app kon niet worden gestart [Ongeldige procesnaam], installeer de app opnieuw in een aparte map';
	@override String get invalidProfile => 'De app kon niet worden gestart [Geen toegang tot het profiel], installeer de app opnieuw';
	@override String get invalidVersion => 'De app kon niet worden gestart [Ongeldige versie], installeer de app opnieuw';
	@override String get systemVersionLow => 'De app kon niet worden gestart [systeemversie te laag]';
	@override String get invalidInstallPath => 'Het installatiepad is ongeldig, installeer het opnieuw in een geldig pad';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenNl implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Profielen samenvoegen';
	@override String get profilesMergeTarget => 'Doelprofiel';
	@override String get profilesMergeSource => 'Bronprofielen';
	@override String get profilesMergeTips => 'Tip: Omleiding van de bronprofielen wordt weggegooid';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenNl implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Netwerkcontrole';
	@override String get warn => 'Opmerking: Vanwege de invloed van de netwerkomgeving en omleidingsregels zijn de testresultaten niet volledig gelijk aan de werkelijke resultaten.';
	@override String get invalidDomain => 'Ongeldige domeinnaam';
	@override String get connectivity => 'Netwerkconnectiviteit';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4-verbindingstest [${p}] allemaal mislukt';
	@override String get connectivityTestIpv4Ok => 'Ipv4-verbinding geslaagd';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6-verbindingstest [${p}] allemaal mislukt, uw netwerk ondersteunt mogelijk geen ipv6';
	@override String get connectivityTestIpv6Ok => 'Ipv6-verbinding geslaagd';
	@override String get connectivityTestOk => 'Het netwerk is verbonden met internet';
	@override String get connectivityTestFailed => 'Het netwerk is nog niet verbonden met internet';
	@override String get remoteRulesetsDownloadOk => 'Alle succesvol gedownload';
	@override String get remoteRulesetsDownloadNotOk => 'Downloaden of download mislukt';
	@override String get outbound => 'Proxy-server';
	@override String outboundOk({required Object p}) => '[${p}] verbinding geslaagd';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] verbinding mislukt\nFout:[${p2}]';
	@override String get dnsServer => 'DNS-server';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS-query geslaagd\nDNS-regel:[${p2}]\nVertraging:[${p3} ms]\nAdres:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS-query geslaagd\n nDNS-regel:[${p2}]\nFout:[${p3}]';
	@override String get host => 'HTTP-verbinding';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nOmleidingsregel:[${p2}]\nProxy-server:[${p3}]';
	@override String get hostConnectionOk => 'verbinding geslaagd';
	@override String hostConnectionFailed({required Object p}) => 'verbinding mislukt:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenNl implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domein/IP';
	@override String get app => 'App';
	@override String get rule => 'Regel';
	@override String get chain => 'Uitgaand';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenNl implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Gekopieerd naar CSV-formaat';
	@override String get selectType => 'Selecteer omleidingstype';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenNl implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proxy per app';
	@override String get whiteListMode => 'Whitelist-modus';
	@override String get whiteListModeTip => 'Indien ingeschakeld: alleen de geselecteerde apps gebruiken de proxy; indien niet ingeschakeld: alleen de niet-geselecteerde apps gebruiken de proxy';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenNl implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Land of regio';
	@override String get Regions => 'Tip: Stel uw huidige land of regio correct in, anders kan dit netwerkomleidingsproblemen veroorzaken';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenNl implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selecteer server';
	@override String get autoSelectServer => 'Automatisch de server met de laagste vertraging selecteren';
	@override String get recentUse => 'Recent gebruikt';
	@override String get myFav => 'Mijn favorieten';
	@override String selectLocal({required Object p}) => 'De geselecteerde server is een lokaal adres en werkt mogelijk niet goed:${p}';
	@override String get selectRequireEnableIPv6 => 'De geselecteerde server is een IPv6-adres en vereist [IPv6 inschakelen]';
	@override String get selectDisabled => 'Deze server is uitgeschakeld';
	@override String get error404 => 'Vertragingsdetectie heeft een fout aangetroffen, controleer of er een configuratie met dezelfde inhoud bestaat';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenNl implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Verkeer ophalen';
	@override String get tutorial => 'Handleiding';
	@override String get commonlyUsedRulesets => 'Veelgebruikte regelsets';
	@override String get htmlBoard => 'Online paneel';
	@override String get dnsLeakDetection => 'DNS-lekdetectie';
	@override String get proxyLeakDetection => 'Proxy-lekdetectie';
	@override String get speedTest => 'Snelheidstest';
	@override String get rulesetDirectDownlad => 'Regelset direct downloaden';
	@override String get hideUnusedDiversionGroup => 'Ongebruikte omleidingsregels verbergen';
	@override String get disableISPDiversionGroup => '[${_root.meta.diversionRules}] van [${_root.meta.isp}] uitschakelen';
	@override String get portSettingRule => 'Op regels gebaseerd';
	@override String get portSettingDirectAll => 'Alles direct';
	@override String get portSettingProxyAll => 'Alles via proxy';
	@override String get portSettingControl => 'Controle en synchronisatie';
	@override String get portSettingCluster => 'Cluster-service';
	@override String get modifyPort => 'Poort wijzigen';
	@override String get modifyPortOccupied => 'De poort is bezet, gebruik een andere poort';
	@override String get ipStrategyTips => 'Bevestig voordat u dit inschakelt dat uw netwerk IPv6 ondersteunt, anders kan een deel van het verkeer niet normaal worden bezocht.';
	@override String get tunAppendHttpProxy => 'HTTP-proxy toevoegen aan VPN';
	@override String get tunAppendHttpProxyTips => 'Sommige apps zullen het virtuele NIC-apparaat omzeilen en rechtstreeks verbinding maken met de HTTP-proxy';
	@override String get tunAllowBypassHttpProxyDomain => 'Domeinen die de HTTP-proxy mogen omzeilen';
	@override String get dnsEnableRule => 'DNS-omleidingsregels inschakelen';
	@override String get dnsEnableProxyResolveMode => 'Oplossingskanaal voor [${_root.meta.trafficProxy}]';
	@override String get dnsEnableClientSubnet => 'ECS inschakelen voor [${_root.meta.trafficDirect}]';
	@override String get dnsTestDomain => 'Testdomein';
	@override String get dnsTestDomainInvalid => 'Ongeldig domein';
	@override String get dnsTypeOutbound => 'Proxy-server';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS-server';
	@override String get dnsEnableRuleTips => 'Na inschakeling zal de domeinnaam de bijbehorende DNS-server voor oplossing selecteren volgens de omleidingsregels';
	@override String get dnsEnableFakeIpTips => 'Na het inschakelen van FakeIP moet uw app mogelijk opnieuw worden opgestart als u de VPN-verbinding verbreekt; deze functie vereist dat [TUN-modus] is ingeschakeld';
	@override String get dnsTypeOutboundTips => 'Domeinnaamoplossing voor [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Domeinnaamoplossing voor [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Domeinnaamoplossing for [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Domeinnaamoplossing voor [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Server automatisch instellen';
	@override String get dnsResetServer => 'Server resetten';
	@override String get dnsEnableStaticIPForResolver => 'Statische IP-resolutie voorkeur';
	@override String get dnsEnableStaticIPForResolverTips => 'Voorkomen dat de DNS-server zelf tijdens het omzetten wordt vervuild';
	@override String get inboundDomainResolve => 'Inkomende domeinnamen oplossen';
	@override String get privateDirect => 'Directe verbinding met privénetwerk';
	@override String inboundDomainResolveTips({required Object p}) => 'Sommige domeinnamen die niet zijn geconfigureerd met omleidingsregels, moeten worden opgelost voordat ze de op IP gebaseerde omleidingsregels kunnen raken; deze functie is van invloed op inkomende verzoeken naar de proxypoort [${p}]';
	@override String get useRomoteRes => 'Externe bronnen gebruiken';
	@override String get autoAppendRegion => 'Basisregels automatisch toevoegen';
	@override String get autoSelect => 'Automatische selectie';
	@override String get autoSelectServerIgnorePerProxyServer => '[Front/Chain] proxy-servers negeren';
	@override String get autoSelectServerInterval => 'Interval voor vertragingscontroles';
	@override String get autoSelectSelectedHealthCheckInterval => 'Huidige interval voor statuscontrole van de server';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Vertraging opnieuw controleren bij netwerkwijzigingen';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'De huidige server bijwerken na handmatige vertragingscontrole';
	@override String get autoSelectServerIntervalTips => 'Hoe korter het tijdsinterval, hoe tijdiger de vertragingsgegevens van de server worden bijgewerkt, wat meer bronnen in beslag neemt en meer stroom verbruikt';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Als de controle mislukt, wordt de server gewisseld; als er geen beschikbare server wordt gevonden bij het wisselen, zal de groep de vertraging opnieuw controleren';
	@override String get autoSelectServerFavFirst => 'Prioriteit voor [Mijn favorieten]';
	@override String get autoSelectServerFavFirstTips => 'Als de lijst [Mijn favorieten] niet leeg is, gebruik dan de servers in [Mijn favorieten]';
	@override String get autoSelectServerFilter => 'Ongeldige servers filteren';
	@override String autoSelectServerFilterTips({required Object p}) => 'Servers waarvan de vertragingscontrole mislukt, worden uitgefilterd; als er na het filteren geen server beschikbaar is, worden in plaats daarvan de eerste [${p}] servers gebruikt';
	@override String get autoSelectServerLimitedNum => 'Maximum aantal servers';
	@override String get autoSelectServerLimitedNumTips => 'Servers die dit aantal overschrijden, worden uitgefilterd';
	@override String get numInvalid => 'Ongeldig nummer';
	@override String get hideInvalidServer => 'Ongeldige servers verbergen';
	@override String get sortServer => 'Servers sorteren';
	@override String get sortServerTips => 'Sorteren op vertraging van laag naar hoog';
	@override String get selectServerHideRecommand => '[Aanbevolen] verbergen';
	@override String get selectServerHideRecent => '[Recent gebruikt] verbergen';
	@override String get selectServerHideFav => '[Mijn favorieten] verbergen';
	@override String get homeScreen => 'Startscherm';
	@override String get theme => 'Thema';
	@override String get widgetsAlpha => 'Transparantie van widgets';
	@override String get widgetsEmpty => 'Geen widget beschikbaar';
	@override String get backgroundImage => 'Achtergrondafbeelding';
	@override String get myLink => 'Snelkoppeling';
	@override String get autoConnectAfterLaunch => 'Automatische verbinding na opstarten';
	@override String get autoConnectAtBoot => 'Automatische verbinding na systeemstart';
	@override String get autoConnectAtBootTips => 'Systeemondersteuning is vereist; sommige systemen kunnen ook vereisen dat [automatisch starten] is ingeschakeld.';
	@override String get hideAfterLaunch => 'Venster verbergen na opstarten';
	@override String get autoSetSystemProxy => 'Systeemproxy automatisch instellen bij verbinding';
	@override String get bypassSystemProxy => 'Domeinnamen die de systeemproxy mogen omzeilen';
	@override String get disconnectWhenQuit => 'Verbinding verbreken bij afsluiten app';
	@override String get autoAddToFirewall => 'Firewallregels automatisch toevoegen';
	@override String get excludeFromRecent => 'Verbergen voor [Recente taken]';
	@override String get wakeLock => 'Wake Lock';
	@override String get hideVpn => 'VPN-pictogram verbergen';
	@override String get hideVpnTips => 'Het inschakelen van IPv6 zal ervoor zorgen dat deze functie mislukt';
	@override String get allowBypass => 'Apps toestaan VPN te omzeilen';
	@override String get importSuccess => 'Import geslaagd';
	@override String get rewriteConfirm => 'Dit bestand zal de bestaande lokale configuratie overschrijven. Wilt u doorgaan?';
	@override String get mergePerapp => 'Lokale [${_root.PerAppAndroidScreen.title}] lijsten samenvoegen';
	@override String get networkShare => 'Netwerk delen';
	@override String get frontProxy => 'Front/Chain Proxy';
	@override String frontProxyTips({required Object p}) => 'Gegevens->Front/Chain Proxy-server [Meerdere proxy-servers: boven naar beneden]->Proxy-server [${p}]->Doelserver';
	@override String get allowOtherHostsConnect => 'Anderen toestaan verbinding te maken';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'Vanwege systeembeperkingen kunnen toepassingen op dit apparaat die http gebruiken voor netwerktoegang, na inschakeling mogelijk niet correct verbinding maken met het netwerk.';
	@override String get tunAutoRoute => 'Automatische route';
	@override String get tunAutoRedirect => 'Automatische omleiding';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'Als na het inschakelen van delen anderen geen toegang hebben tot dit apparaat, probeer dan deze schakelaar uit te schakelen';
	@override String get loopbackAddress => 'Loopback-adres';
	@override String get enableCluster => 'Socks/Http Proxy Cluster inschakelen';
	@override String get clusterAllowOtherHostsConnect => 'Anderen toestaan verbinding te maken met cluster';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Proxy Cluster Authenticatie';
	@override String get tunMode => 'TUN-modus';
	@override String get tuni4Address => 'IP-adres';
	@override String get tunModeTips => 'De TUN-modus neemt al het verkeer van het systeem over [In deze modus kunt u de systeemproxy uitgeschakeld laten]';
	@override String get tunModeRunAsAdmin => 'De TUN-modus vereist systeembeheerdersrechten, start de app opnieuw als beheerder';
	@override String get tunStack => 'Stack';
	@override String get tunHijackTips => 'Na het sluiten worden DNS-verzoeken van TUN rechtstreeks doorgestuurd naar de bijbehorende DNS-server';
	@override String get launchAtStartup => 'Opstarten bij systeemstart';
	@override String get quitWhenSwitchSystemUser => 'App afsluiten bij wisselen van systeemgebruiker';
	@override String get handleScheme => 'Systeem-schema aanroep';
	@override String get portableMode => 'Draagbare modus';
	@override String get portableModeDisableTips => 'Als u de draagbare modus wilt verlaten, sluit dan [karing] af en verwijder handmatig de map [profiles] in dezelfde map als [karing.exe]';
	@override String get accessibility => 'Toegankelijkheid';
	@override String get handleKaringScheme => 'karing:// aanroep afhandelen';
	@override String get handleClashScheme => 'clash:// aanroep afhandelen';
	@override String get handleSingboxScheme => 'sing-box:// aanroep afhandelen';
	@override String get alwayOnVPN => 'Altijd-aan verbinding';
	@override String get disconnectAfterSleep => 'Verbinding verbreken na slaapstand systeem';
	@override String get removeSystemVPNConfig => 'Systeem VPN-configuratie verwijderen';
	@override String get timeConnectOrDisconnect => 'Gepland verbinden/verbreken';
	@override String get timeConnectOrDisconnectTips => 'VPN moet verbonden zijn om effect te hebben; na inschakeling wordt [Automatische slaapstand] uitgeschakeld';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Het verbindings-/verbrekingsinterval mag niet minder zijn dan ${p} minuten';
	@override String get disableFontScaler => 'Lettertype-schaling uitschakelen (herstart vereist)';
	@override String get autoOrientation => 'Draaien met het scherm';
	@override String get restartTakesEffect => 'Herstart vereist';
	@override String get reconnectTakesEffect => 'Opnieuw verbinden vereist';
	@override String get resetSettings => 'Instellingen resetten';
	@override String get cleanCache => 'Cache opschonen';
	@override String get cleanCacheDone => 'Opschonen voltooid';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Update versie ${p}';
	@override String get follow => 'Volg ons';
	@override String get contactUs => 'Neem contact met ons op';
	@override String get supportUs => 'Steun ons';
	@override String get rateInApp => 'Beoordeel ons';
	@override String get rateInAppStore => 'Beoordeel ons in de AppStore';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenNl implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Uw privacy komt eerst';
	@override String get agreeAndContinue => 'Accepteren en doorgaan';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenNl implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'De nieuwe versie [${p}] is gereed';
	@override String get update => 'Herstarten om bij te werken';
	@override String get cancel => 'Niet nu';
}

// Path: CommonWidget
class _TranslationsCommonWidgetNl implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Als [Altijd aan VPN] is ingeschakeld, schakel dit dan uit en probeer opnieuw verbinding te maken';
	@override String get resetPort => 'Wijzig de poort naar een andere beschikbare poort of sluit de app die de poort bezet.';
}

// Path: main
class _TranslationsMainNl implements TranslationsMainEn {
	_TranslationsMainNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayNl tray = _TranslationsMainTrayNl._(_root);
}

// Path: meta
class _TranslationsMetaNl implements TranslationsMetaEn {
	_TranslationsMetaNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Inschakelen';
	@override String get disable => 'Uitschakelen';
	@override String get bydefault => 'Standaard';
	@override String get filter => 'Filteren';
	@override String get filterMethod => 'Filtermethode';
	@override String get include => 'Opnemen';
	@override String get exclude => 'Uitsluiten';
	@override String get all => 'Alle';
	@override String get prefer => 'Voorkeur';
	@override String get only => 'Alleen';
	@override String get open => 'Openen';
	@override String get close => 'Sluiten';
	@override String get quit => 'Afsluiten';
	@override String get add => 'Toevoegen';
	@override String get addSuccess => 'Succesvol toegevoegd';
	@override String addFailed({required Object p}) => 'Toevoegen mislukt:${p}';
	@override String get remove => 'Verwijderen';
	@override String get removeConfirm => 'Weet u zeker dat u wilt verwijderen?';
	@override String get edit => 'Bewerken';
	@override String get view => 'Bekijken';
	@override String get more => 'Meer';
	@override String get tips => 'Info';
	@override String get copy => 'Kopiëren';
	@override String get paste => 'Plakken';
	@override String get cut => 'Snee';
	@override String get save => 'Opslaan';
	@override String get ok => 'Ok';
	@override String get cancel => 'Annuleren';
	@override String get feedback => 'Feedback';
	@override String get feedbackContent => 'Inhoud feedback';
	@override String get feedbackContentHit => 'Vereist, maximaal 500 tekens';
	@override String get feedbackContentCannotEmpty => 'Feedbackinhoud mag niet leeg zijn';
	@override String get faq => 'FAQ';
	@override String get htmlTools => 'HTML-gereedschapset';
	@override String get download => 'Downloaden';
	@override String get upload => 'Uploaden';
	@override String get downloadSpeed => 'Downloadsnelheid';
	@override String get uploadSpeed => 'Uploadsnelheid';
	@override String get loading => 'Laden...';
	@override String get convert => 'Converteren';
	@override String get check => 'Controleren';
	@override String get detect => 'Detecteren';
	@override String get cache => 'Cache';
	@override String get days => 'Dagen';
	@override String get hours => 'Uren';
	@override String get minutes => 'Minuten';
	@override String get seconds => 'Seconden';
	@override String get milliseconds => 'Milliseconden';
	@override String get tolerance => 'Tolerantie';
	@override String get dateTimePeriod => 'Tijdsperiode';
	@override String get protocol => 'Protocol';
	@override String get search => 'Zoeken';
	@override String get custom => 'Aangepast';
	@override String get inbound => 'Inkomend';
	@override String get outbound => 'Uitgaand';
	@override String get destination => 'Bestemming';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Verbinden';
	@override String get disconnect => 'Verbinding verbreken';
	@override String get reconnect => 'Opnieuw verbinden';
	@override String get connected => 'Verbonden';
	@override String get disconnected => 'Verbinding verbroken';
	@override String get connecting => 'Verbinden';
	@override String get connectTimeout => 'Verbindingstime-out';
	@override String get timeout => 'Time-out';
	@override String get timeoutDuration => 'Time-outduur';
	@override String get runDuration => 'Looptijd';
	@override String get latency => 'Vertraging';
	@override String get latencyTest => 'Vertragingscontroles';
	@override String get language => 'Taal';
	@override String get next => 'Volgende';
	@override String get done => 'Gereed';
	@override String get apply => 'Toepassen';
	@override String get refresh => 'Vernieuwen';
	@override String get retry => 'Opnieuw proberen?';
	@override String get update => 'Bijwerken';
	@override String get updateInterval => 'Update-interval';
	@override String get updateInterval5mTips => 'Minimum: 5m';
	@override String updateFailed({required Object p}) => 'Bijwerken mislukt:${p}';
	@override String get samplingUnit => 'Bemonsteringstijdeenheid';
	@override String get queryResultCount => 'Aantal zoekresultaten';
	@override String queryLimit({required Object p}) => 'Maximaal ${p} gegevens weergeven';
	@override String get none => 'Geen';
	@override String get start => 'Start';
	@override String get pause => 'Pauze';
	@override String get reset => 'Resetten';
	@override String get submit => 'Verzenden';
	@override String get user => 'Gebruiker';
	@override String get account => 'Account';
	@override String get password => 'Wachtwoord';
	@override String get decryptPassword => 'Ontcijferingswachtwoord';
	@override String get required => 'Vereist';
	@override String get type => 'Type';
	@override String get path => 'Pad';
	@override String get local => 'Lokaal';
	@override String get remote => 'Extern';
	@override String get other => 'Overig';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'Ongeldige URL';
	@override String get urlCannotEmpty => 'Link mag niet leeg zijn';
	@override String get urlTooLong => 'URL is te lang (>8182)';
	@override String get copyUrl => 'Link kopiëren';
	@override String get openUrl => 'Link openen';
	@override String get shareUrl => 'Link delen';
	@override String get speedTestUrl => 'Snelheidstest URL';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'Statisch IP';
	@override String get staticIPTips => 'U moet [TUN HijackDNS] of [${_root.SettingsScreen.inboundDomainResolve}] inschakelen.';
	@override String get isp => 'VPN-provider';
	@override String get domainSuffix => 'Domein-suffix';
	@override String get domain => 'Domein';
	@override String get domainKeyword => 'Domein trefwoord';
	@override String get domainRegex => 'Domein regex';
	@override String get ip => 'IP';
	@override String get port => 'Poort';
	@override String get portRange => 'Poortbereik';
	@override String get appPackage => 'App pakket-ID';
	@override String get processName => 'Procesnaam';
	@override String get processPath => 'Procespad';
	@override String get processDir => 'Procesmap';
	@override String get systemProxy => 'Systeemproxy';
	@override String get percentage => 'Percentage';
	@override String get statistics => 'Statistieken';
	@override String get statisticsAndAnalysis => 'Statistieken en analyse';
	@override String get statisticsDataDesensitize => 'Gegevensanonimisering';
	@override String get statisticsDataDesensitizeTips => 'Proces/pakket-ID/doeldomeinnaam/doel-IP enz. worden vervangen door * en opgeslagen na anonimisering';
	@override String get records => 'Records';
	@override String get requestRecords => 'Verzoekrecords';
	@override String get netInterfaces => 'Netwerkinterfaces';
	@override String get netSpeed => 'Snelheid';
	@override String get memoryTrendChart => 'Geheugentrend grafiek';
	@override String get goroutinesTrendChart => 'GoRoutines trend grafiek';
	@override String get trafficTrendChart => 'Verkeerstrend grafiek';
	@override String get trafficDistributionChart => 'Verkeersdistributie grafiek';
	@override String get connectionChart => 'Verbindingstrend grafiek';
	@override String get memoryChart => 'Geheugentrend grafiek';
	@override String get trafficStatistics => 'Verkeersstatistieken';
	@override String get traffic => 'Verkeer';
	@override String get trafficTotal => 'Totaal verkeer';
	@override String get trafficProxy => 'Proxy-verkeer';
	@override String get trafficDirect => 'Direct verkeer';
	@override String get website => 'Website';
	@override String get memory => 'Geheugen';
	@override String get outboundMode => 'Uitgaande modus';
	@override String get rule => 'Regel';
	@override String get global => 'Globaal';
	@override String get qrcode => 'QR-code';
	@override String get qrcodeTooLong => 'De tekst is te lang om weer te geven';
	@override String get qrcodeShare => 'QR-code delen';
	@override String get textToQrcode => 'Tekst naar QR-code';
	@override String get qrcodeScan => 'QR-code scannen';
	@override String get qrcodeScanResult => 'Scanresultaat';
	@override String get qrcodeScanFromImage => 'Scannen van afbeelding';
	@override String get qrcodeScanResultFailed => 'Afbeelding kon niet worden geanalyseerd, zorg ervoor dat de screenshot een geldige QR-code is';
	@override String get qrcodeScanResultEmpty => 'Scanresultaat is leeg';
	@override String get screenshot => 'Screenshot';
	@override String get backupAndSync => 'Back-up en synchronisatie';
	@override String get autoBackup => 'Automatische back-up';
	@override String get noProfileGotAutoBackup => 'Als gegevens zoals [${_root.meta.myProfiles}] verloren gaan, kunt u deze herstellen via [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] of andere back-upbronnen (zoals iCloud of Webdav, enz.)';
	@override String get autoBackupAddProfile => 'Na toevoegen van het profiel';
	@override String get autoBackupRemoveProfile => 'Na verwijderen van het profiel';
	@override String get profile => 'Profiel';
	@override String get currentProfile => 'Huidig profiel';
	@override String get importAndExport => 'Importeren en exporteren';
	@override String get import => 'Importeren';
	@override String get importFromUrl => 'Importeren van URL';
	@override String get export => 'Exporteren';
	@override String get send => 'Verzenden';
	@override String get receive => 'Ontvangen';
	@override String get sendConfirm => 'Bevestigen om te verzenden?';
	@override String get termOfUse => 'Servicevoorwaarden';
	@override String get privacyPolicy => 'Privacybeleid';
	@override String get about => 'Over';
	@override String get name => 'Naam';
	@override String get version => 'Versie';
	@override String get notice => 'Aankondiging';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Actie:${p}\nReden:${p1}';
	@override String get sort => 'Herschikken';
	@override String get novice => 'Beginnersmodus';
	@override String get willCompleteAfterRebootInstall => 'Start uw apparaat opnieuw op om de installatie van de systeemextensie te voltooien';
	@override String get willCompleteAfterRebootUninstall => 'Start uw apparaat opnieuw op om de verwijdering van de systeemextensie te voltooien';
	@override String get requestNeedsUserApproval => '1. [Sta toe] dat Karing systeemextensies installeert in [Systeeminstellingen]-[Privacy en beveiliging]\n2. [Systeeminstellingen]-[Algemeen]-[Inlogitems Extensies]-[Netwerkextensie] schakel [karingServiceSE] in\nopnieuw verbinden na voltooiing';
	@override String get FullDiskAccessPermissionRequired => 'Schakel de machtiging [karingServiceSE] in bij [Systeeminstellingen]-[Privacy en beveiliging]-[Volledige schijf toegang] en verbind opnieuw';
	@override String get tvMode => 'TV-modus';
	@override String get recommended => 'Aanbevolen';
	@override String innerError({required Object p}) => 'Interne fout:${p}';
	@override String get logicOperation => 'Logische bewerking';
	@override String get share => 'Delen';
	@override String get candidateWord => 'Kandidaat-woorden';
	@override String get keywordOrRegx => 'Trefwoorden/Regex';
	@override String get importFromClipboard => 'Importeren van klembord';
	@override String get exportToClipboard => 'Exporteren naar klembord';
	@override String get server => 'Server';
	@override String get ads => 'Advertenties';
	@override String get adsRemove => 'Advertenties verwijderen';
	@override String get donate => 'Doneren';
	@override String get diversion => 'Omleiding';
	@override String get diversionRules => 'Omleidingsregels';
	@override String get diversionCustomGroup => 'Aangepaste omleidingsgroep';
	@override String get urlTestCustomGroup => 'Aangepaste automatische selectie';
	@override String get setting => 'Instellingen';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN-synchronisatie';
	@override String get lanSyncNotQuitTips => 'Verlaat deze interface niet voordat de synchronisatie is voltooid';
	@override String get deviceNoSpace => 'Onvoldoende schijfruimte';
	@override String get hideSystemApp => 'Systeem-apps verbergen';
	@override String get hideAppIcon => 'App-pictogrammen verbergen';
	@override String get hideDockIcon => 'Dock-pictogram verbergen';
	@override String get remark => 'Opmerking';
	@override String get remarkExist => 'Opmerking bestaat al, gebruik een andere naam';
	@override String get remarkCannotEmpty => 'Opmerkingen mogen niet leeg zijn';
	@override String get remarkTooLong => 'Opmerkingen tot 32 tekens';
	@override String get openDir => 'Bestandsmap openen';
	@override String get fileChoose => 'Bestand selecteren';
	@override String get filePathCannotEmpty => 'Het bestandspad mag niet leeg zijn';
	@override String fileNotExist({required Object p}) => 'Bestand bestaat niet:${p}';
	@override String fileTypeInvalid({required Object p}) => 'Ongeldig bestandstype:${p}';
	@override String get uwpExemption => 'UWP-netwerkisolatie vrijstellingen';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Profiel ophalen';
	@override String get addProfile => 'Profiel toevoegen';
	@override String get myProfiles => 'Mijn profielen';
	@override String get profileEdit => 'Profiel bewerken';
	@override String get profileEditUrlExist => 'URL bestaat al, gebruik een andere URL';
	@override String get profileEditReloadAfterProfileUpdate => 'Herladen na profielupdate';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Vertragingscontroles starten na automatische profielupdate';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN moet verbonden zijn en [Herladen na profielupdate] ingeschakeld';
	@override String get profileEditTestLatencyAutoRemove => 'Servers die de vertragingstest niet halen automatisch verwijderen';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Maximaal 3 pogingen';
	@override String get profileImport => 'Profielbestand importeren';
	@override String get profileAddUrlOrContent => 'Profiellink toevoegen';
	@override String get profileExists => 'Het profiel bestaat al, voeg het niet herhaaldelijk toe';
	@override String get profileUrlOrContent => 'Profiellink/Inhoud';
	@override String get profileUrlOrContentHit => 'Profiellink/Inhoud [Vereist] (Ondersteunt Clash, V2ray (batch ondersteund), Stash, Karing, Sing-box, Shadowsocks, Sub profiellinks)';
	@override String get profileUrlOrContentCannotEmpty => 'Profiellink mag niet leeg zijn';
	@override String profileAddFailedFormatException({required Object p}) => 'Het formaat is onjuist, corrigeer het en voeg het opnieuw toe:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Toevoegen mislukt: ${p}, probeer de [UserAgent] te wijzigen en probeer het opnieuw, of gebruik de ingebouwde browser van het apparaat om de configuratielink te openen en importeer het door de browser gedownloade configuratiebestand in deze app';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Toevoegen mislukt: ${p}, schakel de proxy in of wijzig de huidige proxynode en probeer het opnieuw';
	@override String get profileAddParseFailed => 'Analyseren van profiel mislukt';
	@override String get profileAddNoServerAvaliable => 'Geen server beschikbaar, zorg ervoor dat de profiellink of het profielbestand geldig is; als uw profiel van GitHub komt, haal dan de link op via de [Raw]-knop op de pagina';
	@override String get profileAddWrapSuccess => 'Profiel succesvol gegenereerd, ga naar [${_root.meta.myProfiles}] om het te bekijken';
}

// Path: isp
class _TranslationsIspNl implements TranslationsIspEn {
	_TranslationsIspNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Koppelen aan [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'Ontkoppelen[${p}]';
	@override String faq({required Object p}) => 'FAQ[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'Volgen[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] Ongeldig of verlopen';
}

// Path: permission
class _TranslationsPermissionNl implements TranslationsPermissionEn {
	_TranslationsPermissionNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Camera';
	@override String get screen => 'Schermopname';
	@override String get appQuery => 'App-lijst ophalen';
	@override String request({required Object p}) => 'Schakel machtiging [${p}] in';
	@override String requestNeed({required Object p}) => 'Schakel machtiging [${p}] in a.u.b.';
}

// Path: tls
class _TranslationsTlsNl implements TranslationsTlsEn {
	_TranslationsTlsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Certificaatverificatie overslaan';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'TLS Fragment inschakelen';
	@override String get fragmentSize => 'TLS Fragment grootte';
	@override String get fragmentSleep => 'TLS Fragment slaap';
	@override String get mixedCaseSNIEnable => 'TLS Mixed SNI inschakelen';
	@override String get paddingEnable => 'TLS Padding inschakelen';
	@override String get paddingSize => 'TLS Padding grootte';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeNl implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Huidige geselecteerde';
	@override String get urltest => 'Automatische selectie';
	@override String get direct => 'Direct';
	@override String get block => 'Blokkeren';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeNl implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyNl implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonNl implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Profielupdate';
}

// Path: theme
class _TranslationsThemeNl implements TranslationsThemeEn {
	_TranslationsThemeNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get light => 'Licht';
	@override String get dark => 'Donker';
	@override String get auto => 'Auto';
}

// Path: main.tray
class _TranslationsMainTrayNl implements TranslationsMainTrayEn {
	_TranslationsMainTrayNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Openen';
	@override String get menuExit => 'Afsluiten';
}

/// The flat map containing all translations for locale <nl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsNl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Installatiebron',
			'AboutScreen.installTime' => 'Installatietijd',
			'AboutScreen.versionChannel' => 'Auto Update-kanaal',
			'AboutScreen.updateWhenConnected' => 'Controleer na het verbinden op updates.',
			'AboutScreen.autoDownloadPkg' => 'Updatepakketten automatisch downloaden',
			'AboutScreen.disableAppImproveData' => 'App-verbeteringsgegevens',
			'AboutScreen.disableUAReportTip' => 'Het inschakelen van [${_root.AboutScreen.disableAppImproveData}] helpt ons de stabiliteit en bruikbaarheid van het product te verbeteren; we verzamelen geen persoonlijke privacygegevens. Uitschakelen voorkomt dat de app gegevens verzamelt.',
			'AboutScreen.devOptions' => 'Ontwikkelaarsopties',
			'AboutScreen.enableDebugLog' => 'Debug-logboek inschakelen',
			'AboutScreen.viewFilsContent' => 'Bestanden bekijken',
			'AboutScreen.enablePprof' => 'pprof inschakelen',
			'AboutScreen.pprofPanel' => 'pprof-paneel',
			'AboutScreen.allowRemoteAccessPprof' => 'Externe toegang tot ${_root.AboutScreen.pprofPanel} toestaan',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Externe toegang tot ${_root.SettingsScreen.htmlBoard} toestaan',
			'AboutScreen.useOriginalSBProfile' => 'Origineel sing-box profiel gebruiken',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'Server-URL',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Mag niet leeg zijn',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Inloggen mislukt:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Bestandslijst ophalen mislukt:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'Ongeldig [Domein]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'Ongeldig [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Ongeldig [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'Ongeldige [Regelset]:${p}, De URL moet een geldige https-URL zijn en een binair bestand met de extensie .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'Ongeldige [Regelset (ingebouwd)]:${p}, Het formaat is geosite:xxx of geoip:xxx of acl:xxx, en xxx moet een geldige regelnaam zijn',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'Ongeldige [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Tip: Ga na het opslaan naar [${_root.meta.diversionRules}] om relevante regels in te stellen, anders treden ze niet in werking',
			'DiversionRuleDetectScreen.title' => 'Omleidingsregel detectie',
			'DiversionRuleDetectScreen.rule' => 'Regel:',
			'DiversionRuleDetectScreen.outbound' => 'Proxy-server:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Tip: Probeer de regels van boven naar beneden te matchen. Als er geen regel overeenkomt, gebruik dan [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP mag niet leeg zijn',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL mag niet leeg zijn',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Niet-ondersteund type:${p}',
			'DnsSettingsScreen.dnsDesc' => 'De eerste kolom met vertragingsgegevens is de vertraging van de directe verbindingsquery;\nDe tweede kolom: Schakel [[Proxy-verkeer]DNS oplossen via proxy-server] in: de vertragingsgegevens zijn de queryvertraging die via de huidige proxy-server wordt doorgestuurd; als [[Proxy-verkeer]DNS oplossen via proxy-server] uit staat: de vertragingsgegevens zijn de vertraging van de directe verbindingsquery',
			'FileContentViewerScreen.title' => 'Bestandsinhoud bekijken',
			'FileContentViewerScreen.clearFileContent' => 'Weet u zeker dat u de inhoud van het bestand wilt wissen?',
			'FileContentViewerScreen.clearFileContentTips' => 'Weet u zeker dat u de inhoud van het profielbestand wilt wissen? Het wissen van het profielbestand kan leiden tot gegevensverlies of abnormale app-functies, ga voorzichtig te werk',
			'HomeScreen.toSelectServer' => 'Selecteer een server',
			'HomeScreen.invalidServer' => 'is ongeldig, selecteer opnieuw',
			'HomeScreen.disabledServer' => 'is uitgeschakeld, selecteer opnieuw',
			'HomeScreen.expiredServer' => 'Geen servers beschikbaar, profielen kunnen verlopen of uitgeschakeld zijn',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'Stel [Snelkoppeling] in voordat u deze gebruikt',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Te veel proxy-servers [${p}>${p1}], de verbinding kan mislukken vanwege geheugenbeperkingen van het systeem',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Te veel proxy-servers [${p}>${p1}] kunnen trage of ontoegankelijke verbindingen veroorzaken',
			'LaunchFailedScreen.invalidProcess' => 'De app kon niet worden gestart [Ongeldige procesnaam], installeer de app opnieuw in een aparte map',
			'LaunchFailedScreen.invalidProfile' => 'De app kon niet worden gestart [Geen toegang tot het profiel], installeer de app opnieuw',
			'LaunchFailedScreen.invalidVersion' => 'De app kon niet worden gestart [Ongeldige versie], installeer de app opnieuw',
			'LaunchFailedScreen.systemVersionLow' => 'De app kon niet worden gestart [systeemversie te laag]',
			'LaunchFailedScreen.invalidInstallPath' => 'Het installatiepad is ongeldig, installeer het opnieuw in een geldig pad',
			'MyProfilesMergeScreen.profilesMerge' => 'Profielen samenvoegen',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Doelprofiel',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Bronprofielen',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Tip: Omleiding van de bronprofielen wordt weggegooid',
			'NetCheckScreen.title' => 'Netwerkcontrole',
			'NetCheckScreen.warn' => 'Opmerking: Vanwege de invloed van de netwerkomgeving en omleidingsregels zijn de testresultaten niet volledig gelijk aan de werkelijke resultaten.',
			'NetCheckScreen.invalidDomain' => 'Ongeldige domeinnaam',
			'NetCheckScreen.connectivity' => 'Netwerkconnectiviteit',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Ipv4-verbindingstest [${p}] allemaal mislukt',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Ipv4-verbinding geslaagd',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Ipv6-verbindingstest [${p}] allemaal mislukt, uw netwerk ondersteunt mogelijk geen ipv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Ipv6-verbinding geslaagd',
			'NetCheckScreen.connectivityTestOk' => 'Het netwerk is verbonden met internet',
			'NetCheckScreen.connectivityTestFailed' => 'Het netwerk is nog niet verbonden met internet',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Alle succesvol gedownload',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Downloaden of download mislukt',
			'NetCheckScreen.outbound' => 'Proxy-server',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] verbinding geslaagd',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] verbinding mislukt\nFout:[${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS-server',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS-query geslaagd\nDNS-regel:[${p2}]\nVertraging:[${p3} ms]\nAdres:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS-query geslaagd\n nDNS-regel:[${p2}]\nFout:[${p3}]',
			'NetCheckScreen.host' => 'HTTP-verbinding',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nOmleidingsregel:[${p2}]\nProxy-server:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'verbinding geslaagd',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'verbinding mislukt:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Domein/IP',
			'NetConnectionsFilterScreen.app' => 'App',
			'NetConnectionsFilterScreen.rule' => 'Regel',
			'NetConnectionsFilterScreen.chain' => 'Uitgaand',
			'NetConnectionsScreen.copyAsCSV' => 'Gekopieerd naar CSV-formaat',
			'NetConnectionsScreen.selectType' => 'Selecteer omleidingstype',
			'PerAppAndroidScreen.title' => 'Proxy per app',
			'PerAppAndroidScreen.whiteListMode' => 'Whitelist-modus',
			'PerAppAndroidScreen.whiteListModeTip' => 'Indien ingeschakeld: alleen de geselecteerde apps gebruiken de proxy; indien niet ingeschakeld: alleen de niet-geselecteerde apps gebruiken de proxy',
			'RegionSettingsScreen.title' => 'Land of regio',
			'RegionSettingsScreen.Regions' => 'Tip: Stel uw huidige land of regio correct in, anders kan dit netwerkomleidingsproblemen veroorzaken',
			'ServerSelectScreen.title' => 'Selecteer server',
			'ServerSelectScreen.autoSelectServer' => 'Automatisch de server met de laagste vertraging selecteren',
			'ServerSelectScreen.recentUse' => 'Recent gebruikt',
			'ServerSelectScreen.myFav' => 'Mijn favorieten',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'De geselecteerde server is een lokaal adres en werkt mogelijk niet goed:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'De geselecteerde server is een IPv6-adres en vereist [IPv6 inschakelen]',
			'ServerSelectScreen.selectDisabled' => 'Deze server is uitgeschakeld',
			'ServerSelectScreen.error404' => 'Vertragingsdetectie heeft een fout aangetroffen, controleer of er een configuratie met dezelfde inhoud bestaat',
			'SettingsScreen.getTranffic' => 'Verkeer ophalen',
			'SettingsScreen.tutorial' => 'Handleiding',
			'SettingsScreen.commonlyUsedRulesets' => 'Veelgebruikte regelsets',
			'SettingsScreen.htmlBoard' => 'Online paneel',
			'SettingsScreen.dnsLeakDetection' => 'DNS-lekdetectie',
			'SettingsScreen.proxyLeakDetection' => 'Proxy-lekdetectie',
			'SettingsScreen.speedTest' => 'Snelheidstest',
			'SettingsScreen.rulesetDirectDownlad' => 'Regelset direct downloaden',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Ongebruikte omleidingsregels verbergen',
			'SettingsScreen.disableISPDiversionGroup' => '[${_root.meta.diversionRules}] van [${_root.meta.isp}] uitschakelen',
			'SettingsScreen.portSettingRule' => 'Op regels gebaseerd',
			'SettingsScreen.portSettingDirectAll' => 'Alles direct',
			'SettingsScreen.portSettingProxyAll' => 'Alles via proxy',
			'SettingsScreen.portSettingControl' => 'Controle en synchronisatie',
			'SettingsScreen.portSettingCluster' => 'Cluster-service',
			'SettingsScreen.modifyPort' => 'Poort wijzigen',
			'SettingsScreen.modifyPortOccupied' => 'De poort is bezet, gebruik een andere poort',
			'SettingsScreen.ipStrategyTips' => 'Bevestig voordat u dit inschakelt dat uw netwerk IPv6 ondersteunt, anders kan een deel van het verkeer niet normaal worden bezocht.',
			'SettingsScreen.tunAppendHttpProxy' => 'HTTP-proxy toevoegen aan VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Sommige apps zullen het virtuele NIC-apparaat omzeilen en rechtstreeks verbinding maken met de HTTP-proxy',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Domeinen die de HTTP-proxy mogen omzeilen',
			'SettingsScreen.dnsEnableRule' => 'DNS-omleidingsregels inschakelen',
			'SettingsScreen.dnsEnableProxyResolveMode' => 'Oplossingskanaal voor [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsEnableClientSubnet' => 'ECS inschakelen voor [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTestDomain' => 'Testdomein',
			'SettingsScreen.dnsTestDomainInvalid' => 'Ongeldig domein',
			'SettingsScreen.dnsTypeOutbound' => 'Proxy-server',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS-server',
			'SettingsScreen.dnsEnableRuleTips' => 'Na inschakeling zal de domeinnaam de bijbehorende DNS-server voor oplossing selecteren volgens de omleidingsregels',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Na het inschakelen van FakeIP moet uw app mogelijk opnieuw worden opgestart als u de VPN-verbinding verbreekt; deze functie vereist dat [TUN-modus] is ingeschakeld',
			'SettingsScreen.dnsTypeOutboundTips' => 'Domeinnaamoplossing voor [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Domeinnaamoplossing voor [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Domeinnaamoplossing for [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Domeinnaamoplossing voor [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Server automatisch instellen',
			'SettingsScreen.dnsResetServer' => 'Server resetten',
			'SettingsScreen.dnsEnableStaticIPForResolver' => 'Statische IP-resolutie voorkeur',
			'SettingsScreen.dnsEnableStaticIPForResolverTips' => 'Voorkomen dat de DNS-server zelf tijdens het omzetten wordt vervuild',
			'SettingsScreen.inboundDomainResolve' => 'Inkomende domeinnamen oplossen',
			'SettingsScreen.privateDirect' => 'Directe verbinding met privénetwerk',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Sommige domeinnamen die niet zijn geconfigureerd met omleidingsregels, moeten worden opgelost voordat ze de op IP gebaseerde omleidingsregels kunnen raken; deze functie is van invloed op inkomende verzoeken naar de proxypoort [${p}]',
			'SettingsScreen.useRomoteRes' => 'Externe bronnen gebruiken',
			'SettingsScreen.autoAppendRegion' => 'Basisregels automatisch toevoegen',
			'SettingsScreen.autoSelect' => 'Automatische selectie',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => '[Front/Chain] proxy-servers negeren',
			'SettingsScreen.autoSelectServerInterval' => 'Interval voor vertragingscontroles',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Huidige interval voor statuscontrole van de server',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Vertraging opnieuw controleren bij netwerkwijzigingen',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'De huidige server bijwerken na handmatige vertragingscontrole',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Hoe korter het tijdsinterval, hoe tijdiger de vertragingsgegevens van de server worden bijgewerkt, wat meer bronnen in beslag neemt en meer stroom verbruikt',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Als de controle mislukt, wordt de server gewisseld; als er geen beschikbare server wordt gevonden bij het wisselen, zal de groep de vertraging opnieuw controleren',
			'SettingsScreen.autoSelectServerFavFirst' => 'Prioriteit voor [Mijn favorieten]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Als de lijst [Mijn favorieten] niet leeg is, gebruik dan de servers in [Mijn favorieten]',
			'SettingsScreen.autoSelectServerFilter' => 'Ongeldige servers filteren',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Servers waarvan de vertragingscontrole mislukt, worden uitgefilterd; als er na het filteren geen server beschikbaar is, worden in plaats daarvan de eerste [${p}] servers gebruikt',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Maximum aantal servers',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Servers die dit aantal overschrijden, worden uitgefilterd',
			'SettingsScreen.numInvalid' => 'Ongeldig nummer',
			'SettingsScreen.hideInvalidServer' => 'Ongeldige servers verbergen',
			'SettingsScreen.sortServer' => 'Servers sorteren',
			'SettingsScreen.sortServerTips' => 'Sorteren op vertraging van laag naar hoog',
			'SettingsScreen.selectServerHideRecommand' => '[Aanbevolen] verbergen',
			'SettingsScreen.selectServerHideRecent' => '[Recent gebruikt] verbergen',
			'SettingsScreen.selectServerHideFav' => '[Mijn favorieten] verbergen',
			'SettingsScreen.homeScreen' => 'Startscherm',
			'SettingsScreen.theme' => 'Thema',
			'SettingsScreen.widgetsAlpha' => 'Transparantie van widgets',
			'SettingsScreen.widgetsEmpty' => 'Geen widget beschikbaar',
			'SettingsScreen.backgroundImage' => 'Achtergrondafbeelding',
			'SettingsScreen.myLink' => 'Snelkoppeling',
			'SettingsScreen.autoConnectAfterLaunch' => 'Automatische verbinding na opstarten',
			'SettingsScreen.autoConnectAtBoot' => 'Automatische verbinding na systeemstart',
			'SettingsScreen.autoConnectAtBootTips' => 'Systeemondersteuning is vereist; sommige systemen kunnen ook vereisen dat [automatisch starten] is ingeschakeld.',
			'SettingsScreen.hideAfterLaunch' => 'Venster verbergen na opstarten',
			'SettingsScreen.autoSetSystemProxy' => 'Systeemproxy automatisch instellen bij verbinding',
			'SettingsScreen.bypassSystemProxy' => 'Domeinnamen die de systeemproxy mogen omzeilen',
			'SettingsScreen.disconnectWhenQuit' => 'Verbinding verbreken bij afsluiten app',
			'SettingsScreen.autoAddToFirewall' => 'Firewallregels automatisch toevoegen',
			'SettingsScreen.excludeFromRecent' => 'Verbergen voor [Recente taken]',
			'SettingsScreen.wakeLock' => 'Wake Lock',
			'SettingsScreen.hideVpn' => 'VPN-pictogram verbergen',
			'SettingsScreen.hideVpnTips' => 'Het inschakelen van IPv6 zal ervoor zorgen dat deze functie mislukt',
			'SettingsScreen.allowBypass' => 'Apps toestaan VPN te omzeilen',
			'SettingsScreen.importSuccess' => 'Import geslaagd',
			'SettingsScreen.rewriteConfirm' => 'Dit bestand zal de bestaande lokale configuratie overschrijven. Wilt u doorgaan?',
			'SettingsScreen.mergePerapp' => 'Lokale [${_root.PerAppAndroidScreen.title}] lijsten samenvoegen',
			'SettingsScreen.networkShare' => 'Netwerk delen',
			'SettingsScreen.frontProxy' => 'Front/Chain Proxy',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Gegevens->Front/Chain Proxy-server [Meerdere proxy-servers: boven naar beneden]->Proxy-server [${p}]->Doelserver',
			'SettingsScreen.allowOtherHostsConnect' => 'Anderen toestaan verbinding te maken',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Vanwege systeembeperkingen kunnen toepassingen op dit apparaat die http gebruiken voor netwerktoegang, na inschakeling mogelijk niet correct verbinding maken met het netwerk.',
			'SettingsScreen.tunAutoRoute' => 'Automatische route',
			'SettingsScreen.tunAutoRedirect' => 'Automatische omleiding',
			'SettingsScreen.tunStrictRoute' => 'Strict Route',
			'SettingsScreen.tunStrictRouteTips' => 'Als na het inschakelen van delen anderen geen toegang hebben tot dit apparaat, probeer dan deze schakelaar uit te schakelen',
			'SettingsScreen.loopbackAddress' => 'Loopback-adres',
			'SettingsScreen.enableCluster' => 'Socks/Http Proxy Cluster inschakelen',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Anderen toestaan verbinding te maken met cluster',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Proxy Cluster Authenticatie',
			'SettingsScreen.tunMode' => 'TUN-modus',
			'SettingsScreen.tuni4Address' => 'IP-adres',
			'SettingsScreen.tunModeTips' => 'De TUN-modus neemt al het verkeer van het systeem over [In deze modus kunt u de systeemproxy uitgeschakeld laten]',
			'SettingsScreen.tunModeRunAsAdmin' => 'De TUN-modus vereist systeembeheerdersrechten, start de app opnieuw als beheerder',
			'SettingsScreen.tunStack' => 'Stack',
			'SettingsScreen.tunHijackTips' => 'Na het sluiten worden DNS-verzoeken van TUN rechtstreeks doorgestuurd naar de bijbehorende DNS-server',
			'SettingsScreen.launchAtStartup' => 'Opstarten bij systeemstart',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'App afsluiten bij wisselen van systeemgebruiker',
			'SettingsScreen.handleScheme' => 'Systeem-schema aanroep',
			'SettingsScreen.portableMode' => 'Draagbare modus',
			'SettingsScreen.portableModeDisableTips' => 'Als u de draagbare modus wilt verlaten, sluit dan [karing] af en verwijder handmatig de map [profiles] in dezelfde map als [karing.exe]',
			'SettingsScreen.accessibility' => 'Toegankelijkheid',
			'SettingsScreen.handleKaringScheme' => 'karing:// aanroep afhandelen',
			'SettingsScreen.handleClashScheme' => 'clash:// aanroep afhandelen',
			'SettingsScreen.handleSingboxScheme' => 'sing-box:// aanroep afhandelen',
			'SettingsScreen.alwayOnVPN' => 'Altijd-aan verbinding',
			'SettingsScreen.disconnectAfterSleep' => 'Verbinding verbreken na slaapstand systeem',
			'SettingsScreen.removeSystemVPNConfig' => 'Systeem VPN-configuratie verwijderen',
			'SettingsScreen.timeConnectOrDisconnect' => 'Gepland verbinden/verbreken',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN moet verbonden zijn om effect te hebben; na inschakeling wordt [Automatische slaapstand] uitgeschakeld',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'Het verbindings-/verbrekingsinterval mag niet minder zijn dan ${p} minuten',
			'SettingsScreen.disableFontScaler' => 'Lettertype-schaling uitschakelen (herstart vereist)',
			'SettingsScreen.autoOrientation' => 'Draaien met het scherm',
			'SettingsScreen.restartTakesEffect' => 'Herstart vereist',
			'SettingsScreen.reconnectTakesEffect' => 'Opnieuw verbinden vereist',
			'SettingsScreen.resetSettings' => 'Instellingen resetten',
			'SettingsScreen.cleanCache' => 'Cache opschonen',
			'SettingsScreen.cleanCacheDone' => 'Opschonen voltooid',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Update versie ${p}',
			'SettingsScreen.follow' => 'Volg ons',
			'SettingsScreen.contactUs' => 'Neem contact met ons op',
			'SettingsScreen.supportUs' => 'Steun ons',
			'SettingsScreen.rateInApp' => 'Beoordeel ons',
			'SettingsScreen.rateInAppStore' => 'Beoordeel ons in de AppStore',
			'UserAgreementScreen.privacyFirst' => 'Uw privacy komt eerst',
			'UserAgreementScreen.agreeAndContinue' => 'Accepteren en doorgaan',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'De nieuwe versie [${p}] is gereed',
			'VersionUpdateScreen.update' => 'Herstarten om bij te werken',
			'VersionUpdateScreen.cancel' => 'Niet nu',
			'CommonWidget.diableAlwayOnVPN' => 'Als [Altijd aan VPN] is ingeschakeld, schakel dit dan uit en probeer opnieuw verbinding te maken',
			'CommonWidget.resetPort' => 'Wijzig de poort naar een andere beschikbare poort of sluit de app die de poort bezet.',
			'main.tray.menuOpen' => 'Openen',
			'main.tray.menuExit' => 'Afsluiten',
			'meta.enable' => 'Inschakelen',
			'meta.disable' => 'Uitschakelen',
			'meta.bydefault' => 'Standaard',
			'meta.filter' => 'Filteren',
			'meta.filterMethod' => 'Filtermethode',
			'meta.include' => 'Opnemen',
			'meta.exclude' => 'Uitsluiten',
			'meta.all' => 'Alle',
			'meta.prefer' => 'Voorkeur',
			'meta.only' => 'Alleen',
			'meta.open' => 'Openen',
			'meta.close' => 'Sluiten',
			'meta.quit' => 'Afsluiten',
			'meta.add' => 'Toevoegen',
			'meta.addSuccess' => 'Succesvol toegevoegd',
			'meta.addFailed' => ({required Object p}) => 'Toevoegen mislukt:${p}',
			'meta.remove' => 'Verwijderen',
			'meta.removeConfirm' => 'Weet u zeker dat u wilt verwijderen?',
			'meta.edit' => 'Bewerken',
			'meta.view' => 'Bekijken',
			'meta.more' => 'Meer',
			'meta.tips' => 'Info',
			'meta.copy' => 'Kopiëren',
			'meta.paste' => 'Plakken',
			'meta.cut' => 'Snee',
			'meta.save' => 'Opslaan',
			'meta.ok' => 'Ok',
			'meta.cancel' => 'Annuleren',
			'meta.feedback' => 'Feedback',
			'meta.feedbackContent' => 'Inhoud feedback',
			'meta.feedbackContentHit' => 'Vereist, maximaal 500 tekens',
			'meta.feedbackContentCannotEmpty' => 'Feedbackinhoud mag niet leeg zijn',
			'meta.faq' => 'FAQ',
			'meta.htmlTools' => 'HTML-gereedschapset',
			'meta.download' => 'Downloaden',
			'meta.upload' => 'Uploaden',
			'meta.downloadSpeed' => 'Downloadsnelheid',
			'meta.uploadSpeed' => 'Uploadsnelheid',
			'meta.loading' => 'Laden...',
			'meta.convert' => 'Converteren',
			'meta.check' => 'Controleren',
			'meta.detect' => 'Detecteren',
			'meta.cache' => 'Cache',
			'meta.days' => 'Dagen',
			'meta.hours' => 'Uren',
			'meta.minutes' => 'Minuten',
			'meta.seconds' => 'Seconden',
			'meta.milliseconds' => 'Milliseconden',
			'meta.tolerance' => 'Tolerantie',
			'meta.dateTimePeriod' => 'Tijdsperiode',
			'meta.protocol' => 'Protocol',
			'meta.search' => 'Zoeken',
			'meta.custom' => 'Aangepast',
			'meta.inbound' => 'Inkomend',
			'meta.outbound' => 'Uitgaand',
			'meta.destination' => 'Bestemming',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Verbinden',
			'meta.disconnect' => 'Verbinding verbreken',
			'meta.reconnect' => 'Opnieuw verbinden',
			'meta.connected' => 'Verbonden',
			'meta.disconnected' => 'Verbinding verbroken',
			'meta.connecting' => 'Verbinden',
			'meta.connectTimeout' => 'Verbindingstime-out',
			'meta.timeout' => 'Time-out',
			'meta.timeoutDuration' => 'Time-outduur',
			'meta.runDuration' => 'Looptijd',
			'meta.latency' => 'Vertraging',
			'meta.latencyTest' => 'Vertragingscontroles',
			'meta.language' => 'Taal',
			'meta.next' => 'Volgende',
			'meta.done' => 'Gereed',
			'meta.apply' => 'Toepassen',
			'meta.refresh' => 'Vernieuwen',
			'meta.retry' => 'Opnieuw proberen?',
			'meta.update' => 'Bijwerken',
			'meta.updateInterval' => 'Update-interval',
			'meta.updateInterval5mTips' => 'Minimum: 5m',
			'meta.updateFailed' => ({required Object p}) => 'Bijwerken mislukt:${p}',
			'meta.samplingUnit' => 'Bemonsteringstijdeenheid',
			'meta.queryResultCount' => 'Aantal zoekresultaten',
			'meta.queryLimit' => ({required Object p}) => 'Maximaal ${p} gegevens weergeven',
			'meta.none' => 'Geen',
			'meta.start' => 'Start',
			'meta.pause' => 'Pauze',
			'meta.reset' => 'Resetten',
			'meta.submit' => 'Verzenden',
			'meta.user' => 'Gebruiker',
			'meta.account' => 'Account',
			'meta.password' => 'Wachtwoord',
			'meta.decryptPassword' => 'Ontcijferingswachtwoord',
			'meta.required' => 'Vereist',
			'meta.type' => 'Type',
			'meta.path' => 'Pad',
			'meta.local' => 'Lokaal',
			'meta.remote' => 'Extern',
			'meta.other' => 'Overig',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'Ongeldige URL',
			'meta.urlCannotEmpty' => 'Link mag niet leeg zijn',
			'meta.urlTooLong' => 'URL is te lang (>8182)',
			'meta.copyUrl' => 'Link kopiëren',
			'meta.openUrl' => 'Link openen',
			'meta.shareUrl' => 'Link delen',
			'meta.speedTestUrl' => 'Snelheidstest URL',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'Statisch IP',
			'meta.staticIPTips' => 'U moet [TUN HijackDNS] of [${_root.SettingsScreen.inboundDomainResolve}] inschakelen.',
			'meta.isp' => 'VPN-provider',
			'meta.domainSuffix' => 'Domein-suffix',
			'meta.domain' => 'Domein',
			'meta.domainKeyword' => 'Domein trefwoord',
			'meta.domainRegex' => 'Domein regex',
			'meta.ip' => 'IP',
			'meta.port' => 'Poort',
			'meta.portRange' => 'Poortbereik',
			'meta.appPackage' => 'App pakket-ID',
			'meta.processName' => 'Procesnaam',
			'meta.processPath' => 'Procespad',
			'meta.processDir' => 'Procesmap',
			'meta.systemProxy' => 'Systeemproxy',
			'meta.percentage' => 'Percentage',
			'meta.statistics' => 'Statistieken',
			'meta.statisticsAndAnalysis' => 'Statistieken en analyse',
			'meta.statisticsDataDesensitize' => 'Gegevensanonimisering',
			'meta.statisticsDataDesensitizeTips' => 'Proces/pakket-ID/doeldomeinnaam/doel-IP enz. worden vervangen door * en opgeslagen na anonimisering',
			'meta.records' => 'Records',
			'meta.requestRecords' => 'Verzoekrecords',
			'meta.netInterfaces' => 'Netwerkinterfaces',
			'meta.netSpeed' => 'Snelheid',
			'meta.memoryTrendChart' => 'Geheugentrend grafiek',
			'meta.goroutinesTrendChart' => 'GoRoutines trend grafiek',
			'meta.trafficTrendChart' => 'Verkeerstrend grafiek',
			'meta.trafficDistributionChart' => 'Verkeersdistributie grafiek',
			'meta.connectionChart' => 'Verbindingstrend grafiek',
			'meta.memoryChart' => 'Geheugentrend grafiek',
			'meta.trafficStatistics' => 'Verkeersstatistieken',
			'meta.traffic' => 'Verkeer',
			'meta.trafficTotal' => 'Totaal verkeer',
			'meta.trafficProxy' => 'Proxy-verkeer',
			'meta.trafficDirect' => 'Direct verkeer',
			'meta.website' => 'Website',
			'meta.memory' => 'Geheugen',
			'meta.outboundMode' => 'Uitgaande modus',
			'meta.rule' => 'Regel',
			'meta.global' => 'Globaal',
			'meta.qrcode' => 'QR-code',
			'meta.qrcodeTooLong' => 'De tekst is te lang om weer te geven',
			'meta.qrcodeShare' => 'QR-code delen',
			'meta.textToQrcode' => 'Tekst naar QR-code',
			'meta.qrcodeScan' => 'QR-code scannen',
			'meta.qrcodeScanResult' => 'Scanresultaat',
			'meta.qrcodeScanFromImage' => 'Scannen van afbeelding',
			'meta.qrcodeScanResultFailed' => 'Afbeelding kon niet worden geanalyseerd, zorg ervoor dat de screenshot een geldige QR-code is',
			'meta.qrcodeScanResultEmpty' => 'Scanresultaat is leeg',
			'meta.screenshot' => 'Screenshot',
			'meta.backupAndSync' => 'Back-up en synchronisatie',
			'meta.autoBackup' => 'Automatische back-up',
			'meta.noProfileGotAutoBackup' => 'Als gegevens zoals [${_root.meta.myProfiles}] verloren gaan, kunt u deze herstellen via [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] of andere back-upbronnen (zoals iCloud of Webdav, enz.)',
			'meta.autoBackupAddProfile' => 'Na toevoegen van het profiel',
			'meta.autoBackupRemoveProfile' => 'Na verwijderen van het profiel',
			'meta.profile' => 'Profiel',
			'meta.currentProfile' => 'Huidig profiel',
			'meta.importAndExport' => 'Importeren en exporteren',
			'meta.import' => 'Importeren',
			'meta.importFromUrl' => 'Importeren van URL',
			'meta.export' => 'Exporteren',
			'meta.send' => 'Verzenden',
			'meta.receive' => 'Ontvangen',
			'meta.sendConfirm' => 'Bevestigen om te verzenden?',
			'meta.termOfUse' => 'Servicevoorwaarden',
			'meta.privacyPolicy' => 'Privacybeleid',
			'meta.about' => 'Over',
			'meta.name' => 'Naam',
			'meta.version' => 'Versie',
			'meta.notice' => 'Aankondiging',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Actie:${p}\nReden:${p1}',
			'meta.sort' => 'Herschikken',
			'meta.novice' => 'Beginnersmodus',
			'meta.willCompleteAfterRebootInstall' => 'Start uw apparaat opnieuw op om de installatie van de systeemextensie te voltooien',
			'meta.willCompleteAfterRebootUninstall' => 'Start uw apparaat opnieuw op om de verwijdering van de systeemextensie te voltooien',
			'meta.requestNeedsUserApproval' => '1. [Sta toe] dat Karing systeemextensies installeert in [Systeeminstellingen]-[Privacy en beveiliging]\n2. [Systeeminstellingen]-[Algemeen]-[Inlogitems Extensies]-[Netwerkextensie] schakel [karingServiceSE] in\nopnieuw verbinden na voltooiing',
			'meta.FullDiskAccessPermissionRequired' => 'Schakel de machtiging [karingServiceSE] in bij [Systeeminstellingen]-[Privacy en beveiliging]-[Volledige schijf toegang] en verbind opnieuw',
			'meta.tvMode' => 'TV-modus',
			'meta.recommended' => 'Aanbevolen',
			'meta.innerError' => ({required Object p}) => 'Interne fout:${p}',
			'meta.logicOperation' => 'Logische bewerking',
			'meta.share' => 'Delen',
			'meta.candidateWord' => 'Kandidaat-woorden',
			'meta.keywordOrRegx' => 'Trefwoorden/Regex',
			'meta.importFromClipboard' => 'Importeren van klembord',
			'meta.exportToClipboard' => 'Exporteren naar klembord',
			'meta.server' => 'Server',
			'meta.ads' => 'Advertenties',
			'meta.adsRemove' => 'Advertenties verwijderen',
			'meta.donate' => 'Doneren',
			'meta.diversion' => 'Omleiding',
			'meta.diversionRules' => 'Omleidingsregels',
			'meta.diversionCustomGroup' => 'Aangepaste omleidingsgroep',
			'meta.urlTestCustomGroup' => 'Aangepaste automatische selectie',
			'meta.setting' => 'Instellingen',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN-synchronisatie',
			'meta.lanSyncNotQuitTips' => 'Verlaat deze interface niet voordat de synchronisatie is voltooid',
			'meta.deviceNoSpace' => 'Onvoldoende schijfruimte',
			'meta.hideSystemApp' => 'Systeem-apps verbergen',
			'meta.hideAppIcon' => 'App-pictogrammen verbergen',
			'meta.hideDockIcon' => 'Dock-pictogram verbergen',
			'meta.remark' => 'Opmerking',
			'meta.remarkExist' => 'Opmerking bestaat al, gebruik een andere naam',
			'meta.remarkCannotEmpty' => 'Opmerkingen mogen niet leeg zijn',
			'meta.remarkTooLong' => 'Opmerkingen tot 32 tekens',
			'meta.openDir' => 'Bestandsmap openen',
			'meta.fileChoose' => 'Bestand selecteren',
			'meta.filePathCannotEmpty' => 'Het bestandspad mag niet leeg zijn',
			'meta.fileNotExist' => ({required Object p}) => 'Bestand bestaat niet:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Ongeldig bestandstype:${p}',
			'meta.uwpExemption' => 'UWP-netwerkisolatie vrijstellingen',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Profiel ophalen',
			'meta.addProfile' => 'Profiel toevoegen',
			'meta.myProfiles' => 'Mijn profielen',
			'meta.profileEdit' => 'Profiel bewerken',
			'meta.profileEditUrlExist' => 'URL bestaat al, gebruik een andere URL',
			'meta.profileEditReloadAfterProfileUpdate' => 'Herladen na profielupdate',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Vertragingscontroles starten na automatische profielupdate',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN moet verbonden zijn en [Herladen na profielupdate] ingeschakeld',
			'meta.profileEditTestLatencyAutoRemove' => 'Servers die de vertragingstest niet halen automatisch verwijderen',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Maximaal 3 pogingen',
			'meta.profileImport' => 'Profielbestand importeren',
			'meta.profileAddUrlOrContent' => 'Profiellink toevoegen',
			'meta.profileExists' => 'Het profiel bestaat al, voeg het niet herhaaldelijk toe',
			'meta.profileUrlOrContent' => 'Profiellink/Inhoud',
			'meta.profileUrlOrContentHit' => 'Profiellink/Inhoud [Vereist] (Ondersteunt Clash, V2ray (batch ondersteund), Stash, Karing, Sing-box, Shadowsocks, Sub profiellinks)',
			'meta.profileUrlOrContentCannotEmpty' => 'Profiellink mag niet leeg zijn',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Het formaat is onjuist, corrigeer het en voeg het opnieuw toe:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Toevoegen mislukt: ${p}, probeer de [UserAgent] te wijzigen en probeer het opnieuw, of gebruik de ingebouwde browser van het apparaat om de configuratielink te openen en importeer het door de browser gedownloade configuratiebestand in deze app',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Toevoegen mislukt: ${p}, schakel de proxy in of wijzig de huidige proxynode en probeer het opnieuw',
			'meta.profileAddParseFailed' => 'Analyseren van profiel mislukt',
			'meta.profileAddNoServerAvaliable' => 'Geen server beschikbaar, zorg ervoor dat de profiellink of het profielbestand geldig is; als uw profiel van GitHub komt, haal dan de link op via de [Raw]-knop op de pagina',
			'meta.profileAddWrapSuccess' => 'Profiel succesvol gegenereerd, ga naar [${_root.meta.myProfiles}] om het te bekijken',
			'diversionRulesKeep' => '[${_root.meta.diversionRules}] van [${_root.meta.isp}] behouden',
			'diversionCustomGroupPreset' => 'Voorinstelling [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Opmerking: Ingeschakelde items worden toegevoegd aan/overschreven in [${_root.meta.diversionCustomGroup}] en [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Opmerking: Na het toevoegen moet u mogelijk handmatig de volgorde aanpassen, anders werkt de nieuw toegevoegde omleiding mogelijk niet',
			'rulesetEnableTips' => 'Tip: Ga na het inschakelen van de opties naar [${_root.meta.diversionRules}] om de relevante regels in te stellen, anders treden ze niet in werking',
			'ispUserAgentTips' => '[${_root.meta.isp}] zal gegevens van verschillende abonnementstypen verzenden op basis van de [UserAgent] in het [HTTP]-verzoek',
			'ispDiversionTips' => '[${_root.meta.isp}] biedt verkeersomleidingsregels; [V2Ray]-type abonnementen ondersteunen geen verkeersomleidingsregels',
			'isp.bind' => 'Koppelen aan [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Ontkoppelen[${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'Volgen[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] Ongeldig of verlopen',
			'permission.camera' => 'Camera',
			'permission.screen' => 'Schermopname',
			'permission.appQuery' => 'App-lijst ophalen',
			'permission.request' => ({required Object p}) => 'Schakel machtiging [${p}] in',
			'permission.requestNeed' => ({required Object p}) => 'Schakel machtiging [${p}] in a.u.b.',
			'tls.insecure' => 'Certificaatverificatie overslaan',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'TLS Fragment inschakelen',
			_ => null,
		} ?? switch (path) {
			'tls.fragmentSize' => 'TLS Fragment grootte',
			'tls.fragmentSleep' => 'TLS Fragment slaap',
			'tls.mixedCaseSNIEnable' => 'TLS Mixed SNI inschakelen',
			'tls.paddingEnable' => 'TLS Padding inschakelen',
			'tls.paddingSize' => 'TLS Padding grootte',
			'outboundRuleMode.currentSelected' => 'Huidige geselecteerde',
			'outboundRuleMode.urltest' => 'Automatische selectie',
			'outboundRuleMode.direct' => 'Direct',
			'outboundRuleMode.block' => 'Blokkeren',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Profielupdate',
			'theme.light' => 'Licht',
			'theme.dark' => 'Donker',
			'theme.auto' => 'Auto',
			'downloadProxyStrategy' => 'Downloadkanaal',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Maak verbinding met de DNS-server via de proxyserver om de domeinnaam op te lossen\n[${_root.dnsProxyResolveMode.direct}]: Maak rechtstreeks verbinding met de DNS-server om de domeinnaam op te lossen\n[${_root.dnsProxyResolveMode.fakeip}]: De proxyserver lost de domeinnaam voor u op; als u de VPN-verbinding verbreekt, moet uw app mogelijk opnieuw worden opgestart; alleen effectief voor [TUN] inkomend verkeer',
			'routeFinal' => 'final',
			'protocolSniff' => 'Protocol Sniff',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Gebruik a.u.b. [${p}]',
			'turnOffPrivateDirect' => 'Schakel eerst [Directe verbinding met privénetwerk] in',
			'targetConnectFailed' => ({required Object p}) => 'Verbinding met [${p}] mislukt. Zorg ervoor dat de apparaten zich in hetzelfde LAN bevinden',
			'appleTVSync' => 'De huidige kernconfiguratie synchroniseren naar Apple TV - Karing',
			'appleTVSyncDone' => 'Synchronisatie is voltooid. Ga naar Apple TV - Karing om de verbinding te starten/herstarten',
			'appleTVRemoveCoreConfig' => 'Apple TV - Karing kernconfiguratie verwijderen',
			'appleTVRemoveCoreConfigDone' => 'Kernconfiguratie van Apple TV - Karing verwijderd; VPN-service uitgeschakeld',
			'appleTVUrlInvalid' => 'Ongeldige URL, open Apple TV - Karing en scan de QR-code die door Karing wordt weergegeven',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] heeft deze functie niet, werk bij en probeer het opnieuw',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'De kernhoofdversie komt niet overeen, werk [${p}] bij en probeer het opnieuw',
			'remoteProfileEditConfirm' => 'Nadat het profiel is bijgewerkt, worden de knooppuntwijzigingen hersteld. Doorgaan?',
			'mustBeValidHttpsURL' => 'Moet een geldige https-URL zijn',
			'fileNotExistReinstall' => ({required Object p}) => 'Bestand ontbreekt [${p}], installeer opnieuw a.u.b.',
			'noNetworkConnect' => 'Geen internetverbinding',
			'sudoPassword' => 'sudo-wachtwoord (vereist voor TUN-modus)',
			'turnOffNetworkBeforeInstall' => 'Het wordt aanbevolen om naar [Vliegtuigmodus] te schakelen voordat u de update installeert',
			'latencyTestResolveIP' => 'Bij handmatige controle het uitgaande IP oplossen',
			'latencyTestConcurrency' => 'Gelijktijdigheid',
			'edgeRuntimeNotInstalled' => 'Het huidige apparaat heeft de Edge WebView2-runtime niet geïnstalleerd, dus de pagina kan niet worden weergegeven. Download en installeer de Edge WebView2-runtime (x64), start de app opnieuw en probeer het opnieuw.',
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
