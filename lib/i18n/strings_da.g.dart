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
class TranslationsDa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.da,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <da>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDa _root = this; // ignore: unused_field

	@override 
	TranslationsDa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenDa AboutScreen = _TranslationsAboutScreenDa._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenDa BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenDa._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenDa DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenDa._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenDa DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenDa._(_root);
	@override late final _TranslationsDiversionRulesScreenDa DiversionRulesScreen = _TranslationsDiversionRulesScreenDa._(_root);
	@override late final _TranslationsDnsSettingsScreenDa DnsSettingsScreen = _TranslationsDnsSettingsScreenDa._(_root);
	@override late final _TranslationsFileContentViewerScreenDa FileContentViewerScreen = _TranslationsFileContentViewerScreenDa._(_root);
	@override late final _TranslationsHomeScreenDa HomeScreen = _TranslationsHomeScreenDa._(_root);
	@override late final _TranslationsLaunchFailedScreenDa LaunchFailedScreen = _TranslationsLaunchFailedScreenDa._(_root);
	@override late final _TranslationsMyProfilesMergeScreenDa MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenDa._(_root);
	@override late final _TranslationsNetCheckScreenDa NetCheckScreen = _TranslationsNetCheckScreenDa._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenDa NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenDa._(_root);
	@override late final _TranslationsNetConnectionsScreenDa NetConnectionsScreen = _TranslationsNetConnectionsScreenDa._(_root);
	@override late final _TranslationsPerAppAndroidScreenDa PerAppAndroidScreen = _TranslationsPerAppAndroidScreenDa._(_root);
	@override late final _TranslationsRegionSettingsScreenDa RegionSettingsScreen = _TranslationsRegionSettingsScreenDa._(_root);
	@override late final _TranslationsServerSelectScreenDa ServerSelectScreen = _TranslationsServerSelectScreenDa._(_root);
	@override late final _TranslationsSettingsScreenDa SettingsScreen = _TranslationsSettingsScreenDa._(_root);
	@override late final _TranslationsUserAgreementScreenDa UserAgreementScreen = _TranslationsUserAgreementScreenDa._(_root);
	@override late final _TranslationsVersionUpdateScreenDa VersionUpdateScreen = _TranslationsVersionUpdateScreenDa._(_root);
	@override late final _TranslationsCommonWidgetDa CommonWidget = _TranslationsCommonWidgetDa._(_root);
	@override late final _TranslationsMainDa main = _TranslationsMainDa._(_root);
	@override late final _TranslationsMetaDa meta = _TranslationsMetaDa._(_root);
	@override String get diversionRulesKeep => 'Behold [${_root.meta.diversionRules}] fra [${_root.meta.isp}]';
	@override String get diversionCustomGroupPreset => 'Forudindstillet [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Bemærk: Aktiverede elementer vil blive tilføjet til/overskrive [${_root.meta.diversionCustomGroup}] og [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Bemærk: Efter tilføjelse skal du muligvis justere rækkefølgen manuelt, ellers træder den nyligt tilføjede omledning muligvis ikke i kraft';
	@override String get rulesetEnableTips => 'Tip: Gå til [${_root.meta.diversionRules}] efter at have aktiveret indstillingerne for at indstille de relevante regler, ellers træder de ikke i kraft';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] sender data for forskellige abonnementstyper baseret på [UserAgent] i [HTTP]-anmodningen';
	@override String get ispDiversionTips => '[${_root.meta.isp}] leverer trafikomledningsregler; abonnementer af typen [V2Ray] understøtter ikke trafikomledningsregler';
	@override late final _TranslationsIspDa isp = _TranslationsIspDa._(_root);
	@override late final _TranslationsPermissionDa permission = _TranslationsPermissionDa._(_root);
	@override late final _TranslationsTlsDa tls = _TranslationsTlsDa._(_root);
	@override late final _TranslationsOutboundRuleModeDa outboundRuleMode = _TranslationsOutboundRuleModeDa._(_root);
	@override late final _TranslationsDnsProxyResolveModeDa dnsProxyResolveMode = _TranslationsDnsProxyResolveModeDa._(_root);
	@override late final _TranslationsProxyStrategyDa proxyStrategy = _TranslationsProxyStrategyDa._(_root);
	@override late final _TranslationsReloadReasonDa reloadReason = _TranslationsReloadReasonDa._(_root);
	@override late final _TranslationsThemeDa theme = _TranslationsThemeDa._(_root);
	@override String get downloadProxyStrategy => 'Downloadkanal';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Opret forbindelse til DNS-serveren via proxy-serveren for at løse domænenavnet\n[${_root.dnsProxyResolveMode.direct}]: Opret forbindelse direkte til DNS-serveren for at løse domænenavnet\n[${_root.dnsProxyResolveMode.fakeip}]: Proxy-serveren løser domænenavnet på dine vegne; hvis du afbryder VPN-forbindelsen, skal din app muligvis genstartes; kun effektiv for [TUN] indgående trafik';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'Protokol-sniff';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Brug venligst [${p}]';
	@override String get turnOffPrivateDirect => 'Slå venligst [Direkte forbindelse til privat netværk] til først';
	@override String targetConnectFailed({required Object p}) => 'Kunne ikke oprette forbindelse til [${p}]. Sørg for, at enhederne er på det samme LAN';
	@override String get appleTVSync => 'Synkroniser den aktuelle kernekonfiguration til Apple TV - Karing';
	@override String get appleTVSyncDone => 'Synkroniseringen er fuldført. Gå til Apple TV - Karing for at starte forbindelsen/genstarte forbindelsen';
	@override String get appleTVRemoveCoreConfig => 'Slet Apple TV - Karing kernekonfiguration';
	@override String get appleTVRemoveCoreConfigDone => 'Kernekonfiguration for Apple TV - Karing slettet; VPN-tjeneste afbrudt';
	@override String get appleTVUrlInvalid => 'Ugyldig URL, åbn venligst Apple TV - Karing og scan den QR-kode, der vises af Karing';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] har ikke denne funktion, opdater venligst og prøv igen';
	@override String appleCoreVersionNotMatch({required Object p}) => 'Hovedversionen af kernen stemmer ikke overens, opdater venligst [${p}] og prøv igen';
	@override String get remoteProfileEditConfirm => 'Efter profilopdateringen vil nodeændringerne blive gendannet. Fortsæt?';
	@override String get mustBeValidHttpsURL => 'Skal være en gyldig https-URL';
	@override String fileNotExistReinstall({required Object p}) => 'Fil mangler [${p}], geninstaller venligst';
	@override String get noNetworkConnect => 'Ingen internetforbindelse';
	@override String get sudoPassword => 'sudo-adgangskode (påkrævet til TUN-tilstand)';
	@override String get turnOffNetworkBeforeInstall => 'Det anbefales at skifte til [Flytilstand] før installation af opdateringen';
	@override String get latencyTestResolveIP => 'Løs outlet-IP ved manuel kontrol';
	@override String get latencyTestConcurrency => 'Samtidighed';
	@override String get edgeRuntimeNotInstalled => 'Den aktuelle enhed har ikke Edge WebView2-runtime installeret, så siden kan ikke vises. Download og installer Edge WebView2-runtime (x64), genstart appen og prøv igen.';
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
class _TranslationsAboutScreenDa implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Installationskilde';
	@override String get installTime => 'Installationstidspunkt';
	@override String get versionChannel => 'Auto-opdateringskanal';
	@override String get updateWhenConnected => 'Søg efter opdateringer efter tilslutning';
	@override String get autoDownloadPkg => 'Download automatisk opdateringspakker';
	@override String get disableAppImproveData => 'App-forbedringsdata';
	@override String get disableUAReportTip => 'Aktivering af [${_root.AboutScreen.disableAppImproveData}] hjælper os med at forbedre produktets stabilitet og brugervenlighed; vi indsamler ingen personlige privatlivsdata. Deaktivering vil forhindre appen i at indsamle data.';
	@override String get devOptions => 'Udviklerindstillinger';
	@override String get enableDebugLog => 'Aktiver fejlfindingslog';
	@override String get viewFilsContent => 'Vis filer';
	@override String get enablePprof => 'Aktiver pprof';
	@override String get pprofPanel => 'pprof-panel';
	@override String get allowRemoteAccessPprof => 'Tillad fjernadgang til ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Tillad fjernadgang til ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Brug original sing-box-profil';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenDa implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Server-URL';
	@override String get webdavRequired => 'Må ikke være tomt';
	@override String get webdavLoginFailed => 'Login mislykkedes:';
	@override String get webdavListFailed => 'Kunne ikke hente filliste:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenDa implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'Ugyldigt [Domæne]:${p}';
	@override String invalidIpCidr({required Object p}) => 'Ugyldig [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'Ugyldig [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'Ugyldigt [Regelsæt]:${p}, URL\'en skal være en gyldig https-URL og en binær fil med filtypen .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => 'Ugyldigt [Regelsæt (indbygget)]:${p}, Formatet er geosite:xxx eller geoip:xxx eller acl:xxx, og xxx skal være et gyldigt regelnavn';
	@override String invalidPackageId({required Object p}) => 'Ugyldigt [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'Tip: Gå til [${_root.meta.diversionRules}] efter at have gemt for at indstille relevante regler, ellers træder de ikke i kraft';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenDa implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Registrering af omledningsregler';
	@override String get rule => 'Regel:';
	@override String get outbound => 'Proxy-server:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenDa implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Tip: Prøv at matche reglerne fra top til bund. Hvis ingen regel matcher, bruges [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenDa implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP må ikke være tomt';
	@override String get urlCanNotEmpty => 'URL må ikke være tomt';
	@override String error({required Object p}) => 'Ikke-understøttet type:${p}';
	@override String get dnsDesc => 'Den første kolonne med forsinkelsesdata er forsinkelsen for direkte forbindelsesforespørgsel;\nDen anden kolonne: Slå [[Proxy-trafik]Løs DNS via proxy-server] til: forsinkelsesdata er forespørgselsforsinkelsen videresendt via den aktuelle proxy-server; hvis [[Proxy-trafik]Løs DNS via proxy-server] er slået fra: Forsinkelsesdata er forsinkelsen for direkte forbindelsesforespørgsel';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenDa implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Filindholdsvisning';
	@override String get clearFileContent => 'Er du sikker på, at du vil slette filindholdet?';
	@override String get clearFileContentTips => 'Er du sikker på, at du vil slette indholdet af profilfilen? Sletning af profilfilen kan føre til tab af data eller unormale app-funktioner, vær forsigtig';
}

// Path: HomeScreen
class _TranslationsHomeScreenDa implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Vælg venligst en server';
	@override String get invalidServer => 'er ugyldig, vælg venligst igen';
	@override String get disabledServer => 'er deaktiveret, vælg venligst igen';
	@override String get expiredServer => 'Ingen servere tilgængelige, profiler kan være udløbet eller deaktiveret';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'Opsæt venligst [Genvejslink] før brug';
	@override String tooMuchServers({required Object p, required Object p1}) => 'For mange proxy-servere [${p}>${p1}], forbindelsen kan mislykkes på grund af systemets hukommelsesbegrænsninger';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'For mange proxy-servere [${p}>${p1}] kan medføre langsomme eller utilgængelige forbindelser';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenDa implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'Appen kunne ikke starte [Ugyldigt procesnavn], geninstaller venligst appen i en separat mappe';
	@override String get invalidProfile => 'Appen kunne ikke starte [Kunne ikke få adgang til profil], geninstaller venligst appen';
	@override String get invalidVersion => 'Appen kunne ikke starte [Ugyldig version], geninstaller venligst appen';
	@override String get systemVersionLow => 'Appen kunne ikke starte [systemversionen er for lav]';
	@override String get invalidInstallPath => 'Installationsstien er ugyldig, geninstaller venligst på en gyldig sti';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenDa implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Sammenfletning af profiler';
	@override String get profilesMergeTarget => 'Målprofil';
	@override String get profilesMergeSource => 'Kildeprofiler';
	@override String get profilesMergeTips => 'Tip: Omledningen fra kildeprofilerne vil blive kasseret';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenDa implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Netværkstjek';
	@override String get warn => 'Bemærk: På grund af påvirkning fra netværksmiljøet og omledningsregler er testresultaterne ikke helt lig med de faktiske resultater.';
	@override String get invalidDomain => 'Ugyldigt domænenavn';
	@override String get connectivity => 'Netværksforbindelse';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4-forbindelsestest [${p}] mislykkedes for alle';
	@override String get connectivityTestIpv4Ok => 'Ipv4-forbindelse lykkedes';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6-forbindelsestest [${p}] mislykkedes for alle, dit netværk understøtter muligvis ikke ipv6';
	@override String get connectivityTestIpv6Ok => 'Ipv6-forbindelse lykkedes';
	@override String get connectivityTestOk => 'Netværket er forbundet til internettet';
	@override String get connectivityTestFailed => 'Netværket er endnu ikke forbundet til internettet';
	@override String get remoteRulesetsDownloadOk => 'Alle blev downloadet korrekt';
	@override String get remoteRulesetsDownloadNotOk => 'Downloader eller download mislykkedes';
	@override String get outbound => 'Proxy-server';
	@override String outboundOk({required Object p}) => '[${p}] forbindelse lykkedes';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] forbindelse mislykkedes\nFejl:[${p2}]';
	@override String get dnsServer => 'DNS-server';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS-forespørgsel lykkedes\nDNS-regel:[${p2}]\nLatens:[${p3} ms]\nAdresse:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS-forespørsel lykkedes\n nDNS-regel:[${p2}]\nFejl:[${p3}]';
	@override String get host => 'HTTP-forbindelse';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nOmledningsregel:[${p2}]\nProxy-server:[${p3}]';
	@override String get hostConnectionOk => 'forbindelse lykkedes';
	@override String hostConnectionFailed({required Object p}) => 'forbindelse mislykkedes:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenDa implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domæne/IP';
	@override String get app => 'App';
	@override String get rule => 'Regel';
	@override String get chain => 'Udgående';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenDa implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Kopieret til CSV-format';
	@override String get selectType => 'Vælg omledningstype';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenDa implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proxy pr. app';
	@override String get whiteListMode => 'Whitelist-tilstand';
	@override String get whiteListModeTip => 'Når aktiveret: kun de markerede apps bruger proxy; når ikke aktiveret: kun de ikke-markerede apps bruger proxy';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenDa implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Land eller region';
	@override String get Regions => 'Tip: Indstil venligst dit nuværende land eller region korrekt, ellers kan det medføre problemer med netværksomledning';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenDa implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vælg server';
	@override String get autoSelectServer => 'Vælg automatisk serveren med den laveste latens';
	@override String get recentUse => 'Senest brugte';
	@override String get myFav => 'Mine favoritter';
	@override String selectLocal({required Object p}) => 'Den valgte server er en lokal adresse og fungerer muligvis ikke korrekt:${p}';
	@override String get selectRequireEnableIPv6 => 'Den valgte server er en IPv6-adresse og kræver [Aktiver IPv6]';
	@override String get selectDisabled => 'Denne server er blevet deaktiveret';
	@override String get error404 => 'Latensregistrering stødte på en fejl, tjek venligst om der findes en konfiguration med det samme indhold';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenDa implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Hent trafik';
	@override String get tutorial => 'Vejledning';
	@override String get commonlyUsedRulesets => 'Ofte anvendte regelsæt';
	@override String get htmlBoard => 'Online-panel';
	@override String get dnsLeakDetection => 'DNS-lækagedetektion';
	@override String get proxyLeakDetection => 'Proxy-lækagedetektion';
	@override String get speedTest => 'Hastighedstest';
	@override String get rulesetDirectDownlad => 'Direkte download af regelsæt';
	@override String get hideUnusedDiversionGroup => 'Skjul ubrugte omledningsregler';
	@override String get disableISPDiversionGroup => 'Deaktiver [${_root.meta.diversionRules}] fra [${_root.meta.isp}]';
	@override String get portSettingRule => 'Regelbaseret';
	@override String get portSettingDirectAll => 'Alle direkte';
	@override String get portSettingProxyAll => 'Alle proxy';
	@override String get portSettingControl => 'Styring og synkronisering';
	@override String get portSettingCluster => 'Kluster-tjeneste';
	@override String get modifyPort => 'Skift port';
	@override String get modifyPortOccupied => 'Porten er optaget, brug venligst en anden port';
	@override String get ipStrategyTips => 'Bekræft venligst, at dit netværk understøtter IPv6, før du aktiverer, ellers vil en del af trafikken ikke kunne tilgås normalt.';
	@override String get tunAppendHttpProxy => 'Tilføj HTTP-proxy til VPN';
	@override String get tunAppendHttpProxyTips => 'Nogle apps vil omgå den virtuelle NIC-enhed og oprette forbindelse direkte til HTTP-proxyen';
	@override String get tunAllowBypassHttpProxyDomain => 'Domæner, der har tilladelse til at omgå HTTP-proxyen';
	@override String get dnsEnableRule => 'Aktiver DNS-omledningsregler';
	@override String get dnsEnableProxyResolveMode => 'Opløsningskanal for [${_root.meta.trafficProxy}]';
	@override String get dnsEnableClientSubnet => 'Aktiver ECS på [${_root.meta.trafficDirect}]';
	@override String get dnsTestDomain => 'Testdomæne';
	@override String get dnsTestDomainInvalid => 'Ugyldigt domæne';
	@override String get dnsTypeOutbound => 'Proxy-server';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS-server';
	@override String get dnsEnableRuleTips => 'Efter aktivering vil domænenavnet vælge den tilsvarende DNS-server til opløsning i henhold til omledningsreglerne';
	@override String get dnsEnableFakeIpTips => 'Efter aktivering af FakeIP skal din app muligvis genstartes, hvis du afbryder VPN-forbindelsen; denne funktion kræver, at [TUN-tilstand] er aktiveret';
	@override String get dnsTypeOutboundTips => 'Domænenavnsopløsning for [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Domænenavnsopløsning for [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Domænenavnsopløsning for [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Domænenavnsopløsning for [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Opsæt server automatisk';
	@override String get dnsResetServer => 'Nulstil server';
	@override String get inboundDomainResolve => 'Løs indgående domænenavne';
	@override String get privateDirect => 'Direkte forbindelse til privat netværk';
	@override String inboundDomainResolveTips({required Object p}) => 'Nogle domænenavne, der ikke er konfigureret med omledningsregler, skal løses, før de kan ramme de IP-baserede omledningsregler; denne funktion påvirker indgående anmodninger til proxyporten [${p}]';
	@override String get useRomoteRes => 'Brug fjernressourcer';
	@override String get autoAppendRegion => 'Vedhæft automatisk basisregler';
	@override String get autoSelect => 'Automatisk valg';
	@override String get autoSelectServerIgnorePerProxyServer => 'Ignorer [Front/Chain] proxy-servere';
	@override String get autoSelectServerInterval => 'Interval for latenskontrol';
	@override String get autoSelectSelectedHealthCheckInterval => 'Nuværende interval for kontrol af serverens tilstand';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Tjek latens igen ved netværksændring';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Opdater den aktuelle server efter manuel latenskontrol';
	@override String get autoSelectServerIntervalTips => 'Jo kortere tidsinterval, desto mere opdaterede er serverens latensdata, hvilket vil optage flere ressourcer og bruge mere strøm';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Hvis kontrollen mislykkes, skiftes serveren; hvis der ikke findes nogen tilgængelig server ved skift, vil gruppen tjekke latensen igen';
	@override String get autoSelectServerFavFirst => 'Prioritet for [Mine favoritter]';
	@override String get autoSelectServerFavFirstTips => 'Hvis listen [Mine favoritter] ikke er tom, bruges serverne i [Mine favoritter]';
	@override String get autoSelectServerFilter => 'Filtrer ugyldige servere';
	@override String autoSelectServerFilterTips({required Object p}) => 'Serverlatenskontroller, der mislykkes, vil blive filtreret fra; hvis ingen server er tilgængelig efter filtrering, bruges de første [${p}] servere i stedet';
	@override String get autoSelectServerLimitedNum => 'Maksimalt antal servere';
	@override String get autoSelectServerLimitedNumTips => 'Servere, der overstiger dette antal, vil blive filtreret fra';
	@override String get numInvalid => 'Ugyldigt nummer';
	@override String get hideInvalidServer => 'Skjul ugyldige servere';
	@override String get sortServer => 'Sortering af servere';
	@override String get sortServerTips => 'Sorter efter latens fra lav til høj';
	@override String get selectServerHideRecommand => 'Skjul [Anbefalet]';
	@override String get selectServerHideRecent => 'Skjul [Senest brugte]';
	@override String get selectServerHideFav => 'Skjul [Mine favoritter]';
	@override String get homeScreen => 'Hjemmeskærm';
	@override String get theme => 'Tema';
	@override String get widgetsAlpha => 'Widget-gennemsigtighed';
	@override String get widgetsEmpty => 'Ingen widget tilgængelig';
	@override String get backgroundImage => 'Baggrundsbillede';
	@override String get myLink => 'Genvejslink';
	@override String get autoConnectAfterLaunch => 'Automatisk forbindelse efter start';
	@override String get autoConnectAtBoot => 'Automatisk forbindelse efter systemstart';
	@override String get autoConnectAtBootTips => 'Systemunderstøttelse er nødvendig; nogle systemer kan også kræve, at [autostart] er aktiveret.';
	@override String get hideAfterLaunch => 'Skjul vinduet efter start';
	@override String get autoSetSystemProxy => 'Indstil systemproxy automatisk, når der er forbindelse';
	@override String get bypassSystemProxy => 'Domænenavne, der har tilladelse til at omgå systemproxyen';
	@override String get disconnectWhenQuit => 'Afbryd forbindelsen, når appen afsluttes';
	@override String get autoAddToFirewall => 'Tilføj firewall-regler automatisk';
	@override String get excludeFromRecent => 'Skjul fra [Seneste opgaver]';
	@override String get wakeLock => 'Wake Lock';
	@override String get hideVpn => 'Skjul VPN-ikon';
	@override String get hideVpnTips => 'Aktivering af IPv6 vil medføre, at denne funktion mislykkes';
	@override String get allowBypass => 'Tillad apps at omgå VPN';
	@override String get importSuccess => 'Import lykkedes';
	@override String get rewriteConfirm => 'Denne fil vil overskrive den eksisterende lokale konfiguration. Vil du fortsætte?';
	@override String get mergePerapp => 'Sammenflet lokale [${_root.PerAppAndroidScreen.title}]-lister';
	@override String get networkShare => 'Netværksdeling';
	@override String get frontProxy => 'Front/Chain Proxy';
	@override String frontProxyTips({required Object p}) => 'Data->Front/Chain Proxy-server [Flere proxy-servere: Fra top til bund]->Proxy-server [${p}]->Målserver';
	@override String get allowOtherHostsConnect => 'Tillad andre at oprette forbindelse';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'På grund af systembegrænsninger kan det hændte, at programmer på denne enhed, der bruger http til netværksadgang, muligvis ikke kan oprette forbindelse til netværket korrekt, efter at dette er aktiveret.';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunAutoRedirect => 'Auto Redirect';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'Hvis andre ikke kan få adgang til denne enhed, efter at deling er slået til, skal du prøve at slå denne kontakt fra';
	@override String get loopbackAddress => 'Loopback-adresse';
	@override String get enableCluster => 'Aktiver Socks/Http Proxy Cluster';
	@override String get clusterAllowOtherHostsConnect => 'Tillad andre at oprette forbindelse til klusteret';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Proxy Cluster-godkendelse';
	@override String get tunMode => 'TUN-tilstand';
	@override String get tuni4Address => 'IP-adresse';
	@override String get tunModeTips => 'TUN-tilstand vil overtage al trafik fra systemet [I denne tilstand kan du lade systemproxyen være deaktiveret]';
	@override String get tunModeRunAsAdmin => 'TUN-tilstand kræver systemadministratorrettigheder, genstart venligst appen som administrator';
	@override String get tunStack => 'Stack';
	@override String get tunHijackTips => 'Efter lukning vil DNS-anmodninger fra TUN blive videresendt direkte til den tilsvarende DNS-server';
	@override String get launchAtStartup => 'Kør ved start';
	@override String get quitWhenSwitchSystemUser => 'Afslut appen ved skift af systembrugere';
	@override String get handleScheme => 'System-skemaanråb';
	@override String get portableMode => 'Portabel tilstand';
	@override String get portableModeDisableTips => 'Hvis du har brug for at forlade portabel tilstand, skal du afslutte [karing] og manuelt slette mappen [profiles] i den samme mappe som [karing.exe]';
	@override String get accessibility => 'Tilgængelighed';
	@override String get handleKaringScheme => 'Håndter karing://-anråb';
	@override String get handleClashScheme => 'Håndter clash://-anråb';
	@override String get handleSingboxScheme => 'Håndter sing-box://-anråb';
	@override String get alwayOnVPN => 'Altid-tændt forbindelse';
	@override String get disconnectAfterSleep => 'Afbryd forbindelsen efter systemhvile';
	@override String get removeSystemVPNConfig => 'Slet systemets VPN-konfiguration';
	@override String get timeConnectOrDisconnect => 'Planlagt tilslutning/afbrydelse';
	@override String get timeConnectOrDisconnectTips => 'VPN skal være tilsluttet for at træde i kraft; efter aktivering vil [Automatisk hvile] blive deaktiveret';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Intervallet for tilslutning/afbrydelse må ikke være mindre end ${p} minutter';
	@override String get disableFontScaler => 'Deaktiver skrifttypeskalering (kræver genstart)';
	@override String get autoOrientation => 'Roter med skærmen';
	@override String get restartTakesEffect => 'Kræver genstart';
	@override String get reconnectTakesEffect => 'Kræver genforbindelse';
	@override String get resetSettings => 'Nulstil indstillinger';
	@override String get cleanCache => 'Rens cache';
	@override String get cleanCacheDone => 'Rensning færdig';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Opdater version ${p}';
	@override String get follow => 'Følg os';
	@override String get contactUs => 'Kontakt os';
	@override String get supportUs => 'Støt os';
	@override String get rateInApp => 'Bedøm os';
	@override String get rateInAppStore => 'Bedøm os i AppStore';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenDa implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Dit privatliv kommer først';
	@override String get agreeAndContinue => 'Accepter og fortsæt';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenDa implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'Den nye version [${p}] er klar';
	@override String get update => 'Genstart for at opdatere';
	@override String get cancel => 'Ikke nu';
}

// Path: CommonWidget
class _TranslationsCommonWidgetDa implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Hvis [Altid tændt VPN] er slået til, skal du slå det fra og prøve at oprette forbindelse igen';
	@override String get resetPort => 'Skift venligst porten til en anden tilgængelig port eller luk det program, der optager porten.';
}

// Path: main
class _TranslationsMainDa implements TranslationsMainEn {
	_TranslationsMainDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayDa tray = _TranslationsMainTrayDa._(_root);
}

// Path: meta
class _TranslationsMetaDa implements TranslationsMetaEn {
	_TranslationsMetaDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Aktiver';
	@override String get disable => 'Deaktiver';
	@override String get bydefault => 'Standard';
	@override String get filter => 'Filtrer';
	@override String get filterMethod => 'Filtreringsmetode';
	@override String get include => 'Inkluder';
	@override String get exclude => 'Ekskluder';
	@override String get all => 'Alle';
	@override String get prefer => 'Foretræk';
	@override String get only => 'Kun';
	@override String get open => 'Åbn';
	@override String get close => 'Luk';
	@override String get quit => 'Afslut';
	@override String get add => 'Tilføj';
	@override String get addSuccess => 'Tilføjet korrekt';
	@override String addFailed({required Object p}) => 'Kunne ikke tilføje:${p}';
	@override String get remove => 'Fjern';
	@override String get removeConfirm => 'Er du sikker på, at du vil slette?';
	@override String get edit => 'Rediger';
	@override String get view => 'Vis';
	@override String get more => 'Mere';
	@override String get tips => 'Info';
	@override String get copy => 'Kopier';
	@override String get paste => 'Indsæt';
	@override String get cut => 'Skære';
	@override String get save => 'Gem';
	@override String get ok => 'Ok';
	@override String get cancel => 'Annuller';
	@override String get feedback => 'Feedback';
	@override String get feedbackContent => 'Feedbackindhold';
	@override String get feedbackContentHit => 'Påkrævet, op til 500 tegn';
	@override String get feedbackContentCannotEmpty => 'Feedbackindhold må ikke være tomt';
	@override String get faq => 'FAQ';
	@override String get htmlTools => 'HTML-værktøjssæt';
	@override String get download => 'Download';
	@override String get upload => 'Upload';
	@override String get downloadSpeed => 'Downloadhastighed';
	@override String get uploadSpeed => 'Uploadhastighed';
	@override String get loading => 'Indlæser...';
	@override String get convert => 'Konverter';
	@override String get check => 'Tjek';
	@override String get detect => 'Registrer';
	@override String get cache => 'Cache';
	@override String get days => 'Dage';
	@override String get hours => 'Timer';
	@override String get minutes => 'Minutter';
	@override String get seconds => 'Sekunder';
	@override String get milliseconds => 'Millisekunder';
	@override String get tolerance => 'Tolerance';
	@override String get dateTimePeriod => 'Tidsperiode';
	@override String get protocol => 'Protokol';
	@override String get search => 'Søg';
	@override String get custom => 'Brugerdefineret';
	@override String get inbound => 'Indgående';
	@override String get outbound => 'Udgående';
	@override String get destination => 'Destination';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Forbind';
	@override String get disconnect => 'Afbryd forbindelse';
	@override String get reconnect => 'Genforbind';
	@override String get connected => 'Forbundet';
	@override String get disconnected => 'Afbrudt';
	@override String get connecting => 'Forbinder';
	@override String get connectTimeout => 'Timeout for forbindelse';
	@override String get timeout => 'Timeout';
	@override String get timeoutDuration => 'Timeout-varighed';
	@override String get runDuration => 'Køretid';
	@override String get latency => 'Latens';
	@override String get latencyTest => 'Latenskontrol';
	@override String get language => 'Sprog';
	@override String get next => 'Næste';
	@override String get done => 'Færdig';
	@override String get apply => 'Anvend';
	@override String get refresh => 'Opdater';
	@override String get retry => 'Prøv igen?';
	@override String get update => 'Opdater';
	@override String get updateInterval => 'Opdateringsinterval';
	@override String get updateInterval5mTips => 'Minimum: 5m';
	@override String updateFailed({required Object p}) => 'Opdatering mislykkedes:${p}';
	@override String get samplingUnit => 'Prøvetagningsenhed';
	@override String get queryResultCount => 'Antal søgeresultater';
	@override String queryLimit({required Object p}) => 'Vis op til ${p} data';
	@override String get none => 'Ingen';
	@override String get start => 'Start';
	@override String get pause => 'Pause';
	@override String get reset => 'Nulstil';
	@override String get submit => 'Indsend';
	@override String get user => 'Bruger';
	@override String get account => 'Konto';
	@override String get password => 'Adgangskode';
	@override String get decryptPassword => 'Dekryptering adgangskode';
	@override String get required => 'Påkrævet';
	@override String get type => 'Type';
	@override String get path => 'Sti';
	@override String get local => 'Lokal';
	@override String get remote => 'Fjern';
	@override String get other => 'Andet';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'Ugyldig URL';
	@override String get urlCannotEmpty => 'Link må ikke være tomt';
	@override String get urlTooLong => 'URL er for lang (>8182)';
	@override String get copyUrl => 'Kopier link';
	@override String get openUrl => 'Åbn link';
	@override String get shareUrl => 'Del link';
	@override String get speedTestUrl => 'URL til hastighedstest';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'Statisk IP';
	@override String get staticIPTips => 'Du skal aktivere [TUN HijackDNS] eller [${_root.SettingsScreen.inboundDomainResolve}].';
	@override String get isp => 'VPN-udbyder';
	@override String get domainSuffix => 'Domænesuffiks';
	@override String get domain => 'Domæne';
	@override String get domainKeyword => 'Domænenøgleord';
	@override String get domainRegex => 'Domæneregex';
	@override String get ip => 'IP';
	@override String get port => 'Port';
	@override String get portRange => 'Portområde';
	@override String get appPackage => 'App-pakke-ID';
	@override String get processName => 'Procesnavn';
	@override String get processPath => 'Processti';
	@override String get processDir => 'Procesmappe';
	@override String get systemProxy => 'Systemproxy';
	@override String get percentage => 'Procentdel';
	@override String get statistics => 'Statistik';
	@override String get statisticsAndAnalysis => 'Statistik og analyse';
	@override String get statisticsDataDesensitize => 'Datadesensibilisering';
	@override String get statisticsDataDesensitizeTips => 'Proces/pakke-ID/måldomænenavn/mål-IP osv. erstattes med * og gemmes efter desensibilisering';
	@override String get records => 'Optegnelser';
	@override String get requestRecords => 'Anmodningsoptegnelser';
	@override String get netInterfaces => 'Netværksgrænseflader';
	@override String get netSpeed => 'Hastighed';
	@override String get memoryTrendChart => 'Hukommelsestrend-diagram';
	@override String get goroutinesTrendChart => 'GoRoutines-trenddiagram';
	@override String get trafficTrendChart => 'Trafiktrend-diagram';
	@override String get trafficDistributionChart => 'Trafikdistributions-diagram';
	@override String get connectionChart => 'Forbindelsestrend-diagram';
	@override String get memoryChart => 'Hukommelsestrend-diagram';
	@override String get trafficStatistics => 'Trafikstatistik';
	@override String get traffic => 'Trafik';
	@override String get trafficTotal => 'Samlet trafik';
	@override String get trafficProxy => 'Proxy-trafik';
	@override String get trafficDirect => 'Direkte trafik';
	@override String get website => 'Hjemmeside';
	@override String get memory => 'Hukommelse';
	@override String get outboundMode => 'Udgående tilstand';
	@override String get rule => 'Regel';
	@override String get global => 'Global';
	@override String get qrcode => 'QR-kode';
	@override String get qrcodeTooLong => 'Teksten er for lang til at blive vist';
	@override String get qrcodeShare => 'Del QR-kode';
	@override String get textToQrcode => 'Tekst til QR-kode';
	@override String get qrcodeScan => 'Scan QR-kode';
	@override String get qrcodeScanResult => 'Scanningsresultat';
	@override String get qrcodeScanFromImage => 'Scan fra billede';
	@override String get qrcodeScanResultFailed => 'Kunne ikke analysere billedet, sørg for at skærmbilledet er en gyldig QR-kode';
	@override String get qrcodeScanResultEmpty => 'Scanningsresultatet er tomt';
	@override String get screenshot => 'Skærmbillede';
	@override String get backupAndSync => 'Sikkerhedskopiering og synkronisering';
	@override String get autoBackup => 'Automatisk sikkerhedskopiering';
	@override String get noProfileGotAutoBackup => 'Hvis data som [${_root.meta.myProfiles}] går tabt, kan du gendanne dem fra [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] eller andre sikkerhedskopieringskilder (som iCloud eller Webdav osv.)';
	@override String get autoBackupAddProfile => 'Efter tilføjelse af profil';
	@override String get autoBackupRemoveProfile => 'Efter sletning af profil';
	@override String get profile => 'Profil';
	@override String get currentProfile => 'Nuværende profil';
	@override String get importAndExport => 'Importer og eksporter';
	@override String get import => 'Importer';
	@override String get importFromUrl => 'Importer fra URL';
	@override String get export => 'Eksporter';
	@override String get send => 'Send';
	@override String get receive => 'Modtag';
	@override String get sendConfirm => 'Bekræft afsendelse?';
	@override String get termOfUse => 'Betingelser for brug';
	@override String get privacyPolicy => 'Privatliv og politik';
	@override String get about => 'Om';
	@override String get name => 'Navn';
	@override String get version => 'Version';
	@override String get notice => 'Meddelelse';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Handling:${p}\nÅrsag:${p1}';
	@override String get sort => 'Skift rækkefølge';
	@override String get novice => 'Begyndertilstand';
	@override String get willCompleteAfterRebootInstall => 'Genstart venligst din enhed for at gennemføre installationen af systemudvidelsen';
	@override String get willCompleteAfterRebootUninstall => 'Genstart venligst din enhed for at gennemføre afinstallationen af systemudvidelsen';
	@override String get requestNeedsUserApproval => '1. [Tillad] Karing at installere systemudvidelser i [Systemindstillinger]-[Privatliv og sikkerhed]\n2. I [Systemindstillinger]-[Generelt]-[Logonemner Udvidelser]-[Netværksudvidelse] aktiver [karingServiceSE]\ngenforbind efter fuldførelse';
	@override String get FullDiskAccessPermissionRequired => 'Aktiver venligst tilladelsen [karingServiceSE] i [Systemindstillinger]-[Privatliv og sikkerhed]-[Fuld diskadgang] og genforbind';
	@override String get tvMode => 'TV-tilstand';
	@override String get recommended => 'Anbefalet';
	@override String innerError({required Object p}) => 'Intern fejl:${p}';
	@override String get logicOperation => 'Logisk operation';
	@override String get share => 'Del';
	@override String get candidateWord => 'Kandidatord';
	@override String get keywordOrRegx => 'Nøgleord/Regex';
	@override String get importFromClipboard => 'Importer fra udklipsholder';
	@override String get exportToClipboard => 'Eksporter til udklipsholder';
	@override String get server => 'Server';
	@override String get ads => 'Annoncer';
	@override String get adsRemove => 'Fjern annoncer';
	@override String get donate => 'Doner';
	@override String get diversion => 'Omledning';
	@override String get diversionRules => 'Omledningsregler';
	@override String get diversionCustomGroup => 'Brugerdefineret omledningsgruppe';
	@override String get urlTestCustomGroup => 'Brugerdefineret automatisk valg';
	@override String get setting => 'Indstillinger';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN-synkronisering';
	@override String get lanSyncNotQuitTips => 'Forlad ikke denne grænseflade, før synkroniseringen er fuldført';
	@override String get deviceNoSpace => 'Ikke nok diskplads';
	@override String get hideSystemApp => 'Skjul systemapps';
	@override String get hideAppIcon => 'Skjul app-ikoner';
	@override String get hideDockIcon => 'Skjul Dock-ikon';
	@override String get remark => 'Bemærkning';
	@override String get remarkExist => 'Bemærkningen findes allerede, brug venligst et andet navn';
	@override String get remarkCannotEmpty => 'Bemærkninger må ikke være tomme';
	@override String get remarkTooLong => 'Bemærkninger op til 32 tegn';
	@override String get openDir => 'Åbn filmappe';
	@override String get fileChoose => 'Vælg fil';
	@override String get filePathCannotEmpty => 'Filstien må ikke være tom';
	@override String fileNotExist({required Object p}) => 'Filen findes ikke:${p}';
	@override String fileTypeInvalid({required Object p}) => 'Ugyldig filtype:${p}';
	@override String get uwpExemption => 'UWP-netværksisoleringsundtagelser';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Hent profil';
	@override String get addProfile => 'Tilføj profil';
	@override String get myProfiles => 'Mine profiler';
	@override String get profileEdit => 'Rediger profil';
	@override String get profileEditUrlExist => 'URL findes allerede, brug venligst en anden URL';
	@override String get profileEditReloadAfterProfileUpdate => 'Genindlæs efter profilopdatering';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Start latenstest efter automatisk profilopdatering';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN skal være forbundet og [Genindlæs efter profilopdatering] aktiveret';
	@override String get profileEditTestLatencyAutoRemove => 'Fjern automatisk servere, der ikke består latenstest';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Op til 3 forsøg';
	@override String get profileImport => 'Importer profilfil';
	@override String get profileAddUrlOrContent => 'Tilføj profillink';
	@override String get profileExists => 'Profilen findes allerede, tilføj den ikke gentagne gange';
	@override String get profileUrlOrContent => 'Profillink/indhold';
	@override String get profileUrlOrContentHit => 'Profillink/indhold [Påkrævet] (Understøtter Clash, V2ray (batch understøttet), Stash, Karing, Sing-box, Shadowsocks, Sub-profillinks)';
	@override String get profileUrlOrContentCannotEmpty => 'Profillink må ikke være tomt';
	@override String profileAddFailedFormatException({required Object p}) => 'Formatet er forkert, ret det venligst og tilføj igen:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Kunne ikke tilføje: ${p}, prøv venligst at ændre [UserAgent] og prøv igen, eller brug enhedens indbyggede browser til at åbne konfigurationslinket og importere den konfigurationsfil, der er downloadet af browseren, til denne app';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Kunne ikke tilføje: ${p}, slå venligst proxy til eller skift den aktuelle proxynode og prøv igen';
	@override String get profileAddParseFailed => 'Kunne ikke analysere profil';
	@override String get profileAddNoServerAvaliable => 'Ingen server tilgængelig, sørg for at profillinket eller profilfilen er gyldig; hvis din profil kommer fra GitHub, skal du hente linket via [Raw]-knappen på siden';
	@override String get profileAddWrapSuccess => 'Profilen er genereret korrekt, gå til [${_root.meta.myProfiles}] for at se den';
}

// Path: isp
class _TranslationsIspDa implements TranslationsIspEn {
	_TranslationsIspDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Bind til [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'Fjern binding[${p}]';
	@override String faq({required Object p}) => 'FAQ[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'Følg[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] Ugyldig eller udløbet';
}

// Path: permission
class _TranslationsPermissionDa implements TranslationsPermissionEn {
	_TranslationsPermissionDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Kamera';
	@override String get screen => 'Skærmoptagelse';
	@override String get appQuery => 'Hent app-liste';
	@override String request({required Object p}) => 'Slå tilladelse [${p}] til';
	@override String requestNeed({required Object p}) => 'Slå venligst tilladelse [${p}] til';
}

// Path: tls
class _TranslationsTlsDa implements TranslationsTlsEn {
	_TranslationsTlsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Spring certifikatverificering over';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Aktiver TLS-fragment';
	@override String get fragmentSize => 'TLS-fragmentstørrelse';
	@override String get fragmentSleep => 'TLS-fragment-pause';
	@override String get mixedCaseSNIEnable => 'Aktiver TLS Mixed SNI';
	@override String get paddingEnable => 'Aktiver TLS-padding';
	@override String get paddingSize => 'TLS-paddingstørrelse';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeDa implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Nuværende valgte';
	@override String get urltest => 'Automatisk valg';
	@override String get direct => 'Direkte';
	@override String get block => 'Bloker';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeDa implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyDa implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonDa implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Profilopdatering';
}

// Path: theme
class _TranslationsThemeDa implements TranslationsThemeEn {
	_TranslationsThemeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get light => 'Lys';
	@override String get dark => 'Mørk';
	@override String get auto => 'Auto';
}

// Path: main.tray
class _TranslationsMainTrayDa implements TranslationsMainTrayEn {
	_TranslationsMainTrayDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Åbn';
	@override String get menuExit => 'Afslut';
}

/// The flat map containing all translations for locale <da>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Installationskilde',
			'AboutScreen.installTime' => 'Installationstidspunkt',
			'AboutScreen.versionChannel' => 'Auto-opdateringskanal',
			'AboutScreen.updateWhenConnected' => 'Søg efter opdateringer efter tilslutning',
			'AboutScreen.autoDownloadPkg' => 'Download automatisk opdateringspakker',
			'AboutScreen.disableAppImproveData' => 'App-forbedringsdata',
			'AboutScreen.disableUAReportTip' => 'Aktivering af [${_root.AboutScreen.disableAppImproveData}] hjælper os med at forbedre produktets stabilitet og brugervenlighed; vi indsamler ingen personlige privatlivsdata. Deaktivering vil forhindre appen i at indsamle data.',
			'AboutScreen.devOptions' => 'Udviklerindstillinger',
			'AboutScreen.enableDebugLog' => 'Aktiver fejlfindingslog',
			'AboutScreen.viewFilsContent' => 'Vis filer',
			'AboutScreen.enablePprof' => 'Aktiver pprof',
			'AboutScreen.pprofPanel' => 'pprof-panel',
			'AboutScreen.allowRemoteAccessPprof' => 'Tillad fjernadgang til ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Tillad fjernadgang til ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Brug original sing-box-profil',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'Server-URL',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Må ikke være tomt',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Login mislykkedes:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Kunne ikke hente filliste:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'Ugyldigt [Domæne]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'Ugyldig [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Ugyldig [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'Ugyldigt [Regelsæt]:${p}, URL\'en skal være en gyldig https-URL og en binær fil med filtypen .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'Ugyldigt [Regelsæt (indbygget)]:${p}, Formatet er geosite:xxx eller geoip:xxx eller acl:xxx, og xxx skal være et gyldigt regelnavn',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'Ugyldigt [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Tip: Gå til [${_root.meta.diversionRules}] efter at have gemt for at indstille relevante regler, ellers træder de ikke i kraft',
			'DiversionRuleDetectScreen.title' => 'Registrering af omledningsregler',
			'DiversionRuleDetectScreen.rule' => 'Regel:',
			'DiversionRuleDetectScreen.outbound' => 'Proxy-server:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Tip: Prøv at matche reglerne fra top til bund. Hvis ingen regel matcher, bruges [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP må ikke være tomt',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL må ikke være tomt',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Ikke-understøttet type:${p}',
			'DnsSettingsScreen.dnsDesc' => 'Den første kolonne med forsinkelsesdata er forsinkelsen for direkte forbindelsesforespørgsel;\nDen anden kolonne: Slå [[Proxy-trafik]Løs DNS via proxy-server] til: forsinkelsesdata er forespørgselsforsinkelsen videresendt via den aktuelle proxy-server; hvis [[Proxy-trafik]Løs DNS via proxy-server] er slået fra: Forsinkelsesdata er forsinkelsen for direkte forbindelsesforespørgsel',
			'FileContentViewerScreen.title' => 'Filindholdsvisning',
			'FileContentViewerScreen.clearFileContent' => 'Er du sikker på, at du vil slette filindholdet?',
			'FileContentViewerScreen.clearFileContentTips' => 'Er du sikker på, at du vil slette indholdet af profilfilen? Sletning af profilfilen kan føre til tab af data eller unormale app-funktioner, vær forsigtig',
			'HomeScreen.toSelectServer' => 'Vælg venligst en server',
			'HomeScreen.invalidServer' => 'er ugyldig, vælg venligst igen',
			'HomeScreen.disabledServer' => 'er deaktiveret, vælg venligst igen',
			'HomeScreen.expiredServer' => 'Ingen servere tilgængelige, profiler kan være udløbet eller deaktiveret',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'Opsæt venligst [Genvejslink] før brug',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'For mange proxy-servere [${p}>${p1}], forbindelsen kan mislykkes på grund af systemets hukommelsesbegrænsninger',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'For mange proxy-servere [${p}>${p1}] kan medføre langsomme eller utilgængelige forbindelser',
			'LaunchFailedScreen.invalidProcess' => 'Appen kunne ikke starte [Ugyldigt procesnavn], geninstaller venligst appen i en separat mappe',
			'LaunchFailedScreen.invalidProfile' => 'Appen kunne ikke starte [Kunne ikke få adgang til profil], geninstaller venligst appen',
			'LaunchFailedScreen.invalidVersion' => 'Appen kunne ikke starte [Ugyldig version], geninstaller venligst appen',
			'LaunchFailedScreen.systemVersionLow' => 'Appen kunne ikke starte [systemversionen er for lav]',
			'LaunchFailedScreen.invalidInstallPath' => 'Installationsstien er ugyldig, geninstaller venligst på en gyldig sti',
			'MyProfilesMergeScreen.profilesMerge' => 'Sammenfletning af profiler',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Målprofil',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Kildeprofiler',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Tip: Omledningen fra kildeprofilerne vil blive kasseret',
			'NetCheckScreen.title' => 'Netværkstjek',
			'NetCheckScreen.warn' => 'Bemærk: På grund af påvirkning fra netværksmiljøet og omledningsregler er testresultaterne ikke helt lig med de faktiske resultater.',
			'NetCheckScreen.invalidDomain' => 'Ugyldigt domænenavn',
			'NetCheckScreen.connectivity' => 'Netværksforbindelse',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Ipv4-forbindelsestest [${p}] mislykkedes for alle',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Ipv4-forbindelse lykkedes',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Ipv6-forbindelsestest [${p}] mislykkedes for alle, dit netværk understøtter muligvis ikke ipv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Ipv6-forbindelse lykkedes',
			'NetCheckScreen.connectivityTestOk' => 'Netværket er forbundet til internettet',
			'NetCheckScreen.connectivityTestFailed' => 'Netværket er endnu ikke forbundet til internettet',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Alle blev downloadet korrekt',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Downloader eller download mislykkedes',
			'NetCheckScreen.outbound' => 'Proxy-server',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] forbindelse lykkedes',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] forbindelse mislykkedes\nFejl:[${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS-server',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS-forespørgsel lykkedes\nDNS-regel:[${p2}]\nLatens:[${p3} ms]\nAdresse:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS-forespørsel lykkedes\n nDNS-regel:[${p2}]\nFejl:[${p3}]',
			'NetCheckScreen.host' => 'HTTP-forbindelse',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nOmledningsregel:[${p2}]\nProxy-server:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'forbindelse lykkedes',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'forbindelse mislykkedes:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Domæne/IP',
			'NetConnectionsFilterScreen.app' => 'App',
			'NetConnectionsFilterScreen.rule' => 'Regel',
			'NetConnectionsFilterScreen.chain' => 'Udgående',
			'NetConnectionsScreen.copyAsCSV' => 'Kopieret til CSV-format',
			'NetConnectionsScreen.selectType' => 'Vælg omledningstype',
			'PerAppAndroidScreen.title' => 'Proxy pr. app',
			'PerAppAndroidScreen.whiteListMode' => 'Whitelist-tilstand',
			'PerAppAndroidScreen.whiteListModeTip' => 'Når aktiveret: kun de markerede apps bruger proxy; når ikke aktiveret: kun de ikke-markerede apps bruger proxy',
			'RegionSettingsScreen.title' => 'Land eller region',
			'RegionSettingsScreen.Regions' => 'Tip: Indstil venligst dit nuværende land eller region korrekt, ellers kan det medføre problemer med netværksomledning',
			'ServerSelectScreen.title' => 'Vælg server',
			'ServerSelectScreen.autoSelectServer' => 'Vælg automatisk serveren med den laveste latens',
			'ServerSelectScreen.recentUse' => 'Senest brugte',
			'ServerSelectScreen.myFav' => 'Mine favoritter',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Den valgte server er en lokal adresse og fungerer muligvis ikke korrekt:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Den valgte server er en IPv6-adresse og kræver [Aktiver IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Denne server er blevet deaktiveret',
			'ServerSelectScreen.error404' => 'Latensregistrering stødte på en fejl, tjek venligst om der findes en konfiguration med det samme indhold',
			'SettingsScreen.getTranffic' => 'Hent trafik',
			'SettingsScreen.tutorial' => 'Vejledning',
			'SettingsScreen.commonlyUsedRulesets' => 'Ofte anvendte regelsæt',
			'SettingsScreen.htmlBoard' => 'Online-panel',
			'SettingsScreen.dnsLeakDetection' => 'DNS-lækagedetektion',
			'SettingsScreen.proxyLeakDetection' => 'Proxy-lækagedetektion',
			'SettingsScreen.speedTest' => 'Hastighedstest',
			'SettingsScreen.rulesetDirectDownlad' => 'Direkte download af regelsæt',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Skjul ubrugte omledningsregler',
			'SettingsScreen.disableISPDiversionGroup' => 'Deaktiver [${_root.meta.diversionRules}] fra [${_root.meta.isp}]',
			'SettingsScreen.portSettingRule' => 'Regelbaseret',
			'SettingsScreen.portSettingDirectAll' => 'Alle direkte',
			'SettingsScreen.portSettingProxyAll' => 'Alle proxy',
			'SettingsScreen.portSettingControl' => 'Styring og synkronisering',
			'SettingsScreen.portSettingCluster' => 'Kluster-tjeneste',
			'SettingsScreen.modifyPort' => 'Skift port',
			'SettingsScreen.modifyPortOccupied' => 'Porten er optaget, brug venligst en anden port',
			'SettingsScreen.ipStrategyTips' => 'Bekræft venligst, at dit netværk understøtter IPv6, før du aktiverer, ellers vil en del af trafikken ikke kunne tilgås normalt.',
			'SettingsScreen.tunAppendHttpProxy' => 'Tilføj HTTP-proxy til VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Nogle apps vil omgå den virtuelle NIC-enhed og oprette forbindelse direkte til HTTP-proxyen',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Domæner, der har tilladelse til at omgå HTTP-proxyen',
			'SettingsScreen.dnsEnableRule' => 'Aktiver DNS-omledningsregler',
			'SettingsScreen.dnsEnableProxyResolveMode' => 'Opløsningskanal for [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsEnableClientSubnet' => 'Aktiver ECS på [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTestDomain' => 'Testdomæne',
			'SettingsScreen.dnsTestDomainInvalid' => 'Ugyldigt domæne',
			'SettingsScreen.dnsTypeOutbound' => 'Proxy-server',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS-server',
			'SettingsScreen.dnsEnableRuleTips' => 'Efter aktivering vil domænenavnet vælge den tilsvarende DNS-server til opløsning i henhold til omledningsreglerne',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Efter aktivering af FakeIP skal din app muligvis genstartes, hvis du afbryder VPN-forbindelsen; denne funktion kræver, at [TUN-tilstand] er aktiveret',
			'SettingsScreen.dnsTypeOutboundTips' => 'Domænenavnsopløsning for [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Domænenavnsopløsning for [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Domænenavnsopløsning for [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Domænenavnsopløsning for [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Opsæt server automatisk',
			'SettingsScreen.dnsResetServer' => 'Nulstil server',
			'SettingsScreen.inboundDomainResolve' => 'Løs indgående domænenavne',
			'SettingsScreen.privateDirect' => 'Direkte forbindelse til privat netværk',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Nogle domænenavne, der ikke er konfigureret med omledningsregler, skal løses, før de kan ramme de IP-baserede omledningsregler; denne funktion påvirker indgående anmodninger til proxyporten [${p}]',
			'SettingsScreen.useRomoteRes' => 'Brug fjernressourcer',
			'SettingsScreen.autoAppendRegion' => 'Vedhæft automatisk basisregler',
			'SettingsScreen.autoSelect' => 'Automatisk valg',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Ignorer [Front/Chain] proxy-servere',
			'SettingsScreen.autoSelectServerInterval' => 'Interval for latenskontrol',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Nuværende interval for kontrol af serverens tilstand',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Tjek latens igen ved netværksændring',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Opdater den aktuelle server efter manuel latenskontrol',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Jo kortere tidsinterval, desto mere opdaterede er serverens latensdata, hvilket vil optage flere ressourcer og bruge mere strøm',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Hvis kontrollen mislykkes, skiftes serveren; hvis der ikke findes nogen tilgængelig server ved skift, vil gruppen tjekke latensen igen',
			'SettingsScreen.autoSelectServerFavFirst' => 'Prioritet for [Mine favoritter]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Hvis listen [Mine favoritter] ikke er tom, bruges serverne i [Mine favoritter]',
			'SettingsScreen.autoSelectServerFilter' => 'Filtrer ugyldige servere',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Serverlatenskontroller, der mislykkes, vil blive filtreret fra; hvis ingen server er tilgængelig efter filtrering, bruges de første [${p}] servere i stedet',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Maksimalt antal servere',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Servere, der overstiger dette antal, vil blive filtreret fra',
			'SettingsScreen.numInvalid' => 'Ugyldigt nummer',
			'SettingsScreen.hideInvalidServer' => 'Skjul ugyldige servere',
			'SettingsScreen.sortServer' => 'Sortering af servere',
			'SettingsScreen.sortServerTips' => 'Sorter efter latens fra lav til høj',
			'SettingsScreen.selectServerHideRecommand' => 'Skjul [Anbefalet]',
			'SettingsScreen.selectServerHideRecent' => 'Skjul [Senest brugte]',
			'SettingsScreen.selectServerHideFav' => 'Skjul [Mine favoritter]',
			'SettingsScreen.homeScreen' => 'Hjemmeskærm',
			'SettingsScreen.theme' => 'Tema',
			'SettingsScreen.widgetsAlpha' => 'Widget-gennemsigtighed',
			'SettingsScreen.widgetsEmpty' => 'Ingen widget tilgængelig',
			'SettingsScreen.backgroundImage' => 'Baggrundsbillede',
			'SettingsScreen.myLink' => 'Genvejslink',
			'SettingsScreen.autoConnectAfterLaunch' => 'Automatisk forbindelse efter start',
			'SettingsScreen.autoConnectAtBoot' => 'Automatisk forbindelse efter systemstart',
			'SettingsScreen.autoConnectAtBootTips' => 'Systemunderstøttelse er nødvendig; nogle systemer kan også kræve, at [autostart] er aktiveret.',
			'SettingsScreen.hideAfterLaunch' => 'Skjul vinduet efter start',
			'SettingsScreen.autoSetSystemProxy' => 'Indstil systemproxy automatisk, når der er forbindelse',
			'SettingsScreen.bypassSystemProxy' => 'Domænenavne, der har tilladelse til at omgå systemproxyen',
			'SettingsScreen.disconnectWhenQuit' => 'Afbryd forbindelsen, når appen afsluttes',
			'SettingsScreen.autoAddToFirewall' => 'Tilføj firewall-regler automatisk',
			'SettingsScreen.excludeFromRecent' => 'Skjul fra [Seneste opgaver]',
			'SettingsScreen.wakeLock' => 'Wake Lock',
			'SettingsScreen.hideVpn' => 'Skjul VPN-ikon',
			'SettingsScreen.hideVpnTips' => 'Aktivering af IPv6 vil medføre, at denne funktion mislykkes',
			'SettingsScreen.allowBypass' => 'Tillad apps at omgå VPN',
			'SettingsScreen.importSuccess' => 'Import lykkedes',
			'SettingsScreen.rewriteConfirm' => 'Denne fil vil overskrive den eksisterende lokale konfiguration. Vil du fortsætte?',
			'SettingsScreen.mergePerapp' => 'Sammenflet lokale [${_root.PerAppAndroidScreen.title}]-lister',
			'SettingsScreen.networkShare' => 'Netværksdeling',
			'SettingsScreen.frontProxy' => 'Front/Chain Proxy',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Data->Front/Chain Proxy-server [Flere proxy-servere: Fra top til bund]->Proxy-server [${p}]->Målserver',
			'SettingsScreen.allowOtherHostsConnect' => 'Tillad andre at oprette forbindelse',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'På grund af systembegrænsninger kan det hændte, at programmer på denne enhed, der bruger http til netværksadgang, muligvis ikke kan oprette forbindelse til netværket korrekt, efter at dette er aktiveret.',
			'SettingsScreen.tunAutoRoute' => 'Auto Route',
			'SettingsScreen.tunAutoRedirect' => 'Auto Redirect',
			'SettingsScreen.tunStrictRoute' => 'Strict Route',
			'SettingsScreen.tunStrictRouteTips' => 'Hvis andre ikke kan få adgang til denne enhed, efter at deling er slået til, skal du prøve at slå denne kontakt fra',
			'SettingsScreen.loopbackAddress' => 'Loopback-adresse',
			'SettingsScreen.enableCluster' => 'Aktiver Socks/Http Proxy Cluster',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Tillad andre at oprette forbindelse til klusteret',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Proxy Cluster-godkendelse',
			'SettingsScreen.tunMode' => 'TUN-tilstand',
			'SettingsScreen.tuni4Address' => 'IP-adresse',
			'SettingsScreen.tunModeTips' => 'TUN-tilstand vil overtage al trafik fra systemet [I denne tilstand kan du lade systemproxyen være deaktiveret]',
			'SettingsScreen.tunModeRunAsAdmin' => 'TUN-tilstand kræver systemadministratorrettigheder, genstart venligst appen som administrator',
			'SettingsScreen.tunStack' => 'Stack',
			'SettingsScreen.tunHijackTips' => 'Efter lukning vil DNS-anmodninger fra TUN blive videresendt direkte til den tilsvarende DNS-server',
			'SettingsScreen.launchAtStartup' => 'Kør ved start',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Afslut appen ved skift af systembrugere',
			'SettingsScreen.handleScheme' => 'System-skemaanråb',
			'SettingsScreen.portableMode' => 'Portabel tilstand',
			'SettingsScreen.portableModeDisableTips' => 'Hvis du har brug for at forlade portabel tilstand, skal du afslutte [karing] og manuelt slette mappen [profiles] i den samme mappe som [karing.exe]',
			'SettingsScreen.accessibility' => 'Tilgængelighed',
			'SettingsScreen.handleKaringScheme' => 'Håndter karing://-anråb',
			'SettingsScreen.handleClashScheme' => 'Håndter clash://-anråb',
			'SettingsScreen.handleSingboxScheme' => 'Håndter sing-box://-anråb',
			'SettingsScreen.alwayOnVPN' => 'Altid-tændt forbindelse',
			'SettingsScreen.disconnectAfterSleep' => 'Afbryd forbindelsen efter systemhvile',
			'SettingsScreen.removeSystemVPNConfig' => 'Slet systemets VPN-konfiguration',
			'SettingsScreen.timeConnectOrDisconnect' => 'Planlagt tilslutning/afbrydelse',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN skal være tilsluttet for at træde i kraft; efter aktivering vil [Automatisk hvile] blive deaktiveret',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'Intervallet for tilslutning/afbrydelse må ikke være mindre end ${p} minutter',
			'SettingsScreen.disableFontScaler' => 'Deaktiver skrifttypeskalering (kræver genstart)',
			'SettingsScreen.autoOrientation' => 'Roter med skærmen',
			'SettingsScreen.restartTakesEffect' => 'Kræver genstart',
			'SettingsScreen.reconnectTakesEffect' => 'Kræver genforbindelse',
			'SettingsScreen.resetSettings' => 'Nulstil indstillinger',
			'SettingsScreen.cleanCache' => 'Rens cache',
			'SettingsScreen.cleanCacheDone' => 'Rensning færdig',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Opdater version ${p}',
			'SettingsScreen.follow' => 'Følg os',
			'SettingsScreen.contactUs' => 'Kontakt os',
			'SettingsScreen.supportUs' => 'Støt os',
			'SettingsScreen.rateInApp' => 'Bedøm os',
			'SettingsScreen.rateInAppStore' => 'Bedøm os i AppStore',
			'UserAgreementScreen.privacyFirst' => 'Dit privatliv kommer først',
			'UserAgreementScreen.agreeAndContinue' => 'Accepter og fortsæt',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'Den nye version [${p}] er klar',
			'VersionUpdateScreen.update' => 'Genstart for at opdatere',
			'VersionUpdateScreen.cancel' => 'Ikke nu',
			'CommonWidget.diableAlwayOnVPN' => 'Hvis [Altid tændt VPN] er slået til, skal du slå det fra og prøve at oprette forbindelse igen',
			'CommonWidget.resetPort' => 'Skift venligst porten til en anden tilgængelig port eller luk det program, der optager porten.',
			'main.tray.menuOpen' => 'Åbn',
			'main.tray.menuExit' => 'Afslut',
			'meta.enable' => 'Aktiver',
			'meta.disable' => 'Deaktiver',
			'meta.bydefault' => 'Standard',
			'meta.filter' => 'Filtrer',
			'meta.filterMethod' => 'Filtreringsmetode',
			'meta.include' => 'Inkluder',
			'meta.exclude' => 'Ekskluder',
			'meta.all' => 'Alle',
			'meta.prefer' => 'Foretræk',
			'meta.only' => 'Kun',
			'meta.open' => 'Åbn',
			'meta.close' => 'Luk',
			'meta.quit' => 'Afslut',
			'meta.add' => 'Tilføj',
			'meta.addSuccess' => 'Tilføjet korrekt',
			'meta.addFailed' => ({required Object p}) => 'Kunne ikke tilføje:${p}',
			'meta.remove' => 'Fjern',
			'meta.removeConfirm' => 'Er du sikker på, at du vil slette?',
			'meta.edit' => 'Rediger',
			'meta.view' => 'Vis',
			'meta.more' => 'Mere',
			'meta.tips' => 'Info',
			'meta.copy' => 'Kopier',
			'meta.paste' => 'Indsæt',
			'meta.cut' => 'Skære',
			'meta.save' => 'Gem',
			'meta.ok' => 'Ok',
			'meta.cancel' => 'Annuller',
			'meta.feedback' => 'Feedback',
			'meta.feedbackContent' => 'Feedbackindhold',
			'meta.feedbackContentHit' => 'Påkrævet, op til 500 tegn',
			'meta.feedbackContentCannotEmpty' => 'Feedbackindhold må ikke være tomt',
			'meta.faq' => 'FAQ',
			'meta.htmlTools' => 'HTML-værktøjssæt',
			'meta.download' => 'Download',
			'meta.upload' => 'Upload',
			'meta.downloadSpeed' => 'Downloadhastighed',
			'meta.uploadSpeed' => 'Uploadhastighed',
			'meta.loading' => 'Indlæser...',
			'meta.convert' => 'Konverter',
			'meta.check' => 'Tjek',
			'meta.detect' => 'Registrer',
			'meta.cache' => 'Cache',
			'meta.days' => 'Dage',
			'meta.hours' => 'Timer',
			'meta.minutes' => 'Minutter',
			'meta.seconds' => 'Sekunder',
			'meta.milliseconds' => 'Millisekunder',
			'meta.tolerance' => 'Tolerance',
			'meta.dateTimePeriod' => 'Tidsperiode',
			'meta.protocol' => 'Protokol',
			'meta.search' => 'Søg',
			'meta.custom' => 'Brugerdefineret',
			'meta.inbound' => 'Indgående',
			'meta.outbound' => 'Udgående',
			'meta.destination' => 'Destination',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Forbind',
			'meta.disconnect' => 'Afbryd forbindelse',
			'meta.reconnect' => 'Genforbind',
			'meta.connected' => 'Forbundet',
			'meta.disconnected' => 'Afbrudt',
			'meta.connecting' => 'Forbinder',
			'meta.connectTimeout' => 'Timeout for forbindelse',
			'meta.timeout' => 'Timeout',
			'meta.timeoutDuration' => 'Timeout-varighed',
			'meta.runDuration' => 'Køretid',
			'meta.latency' => 'Latens',
			'meta.latencyTest' => 'Latenskontrol',
			'meta.language' => 'Sprog',
			'meta.next' => 'Næste',
			'meta.done' => 'Færdig',
			'meta.apply' => 'Anvend',
			'meta.refresh' => 'Opdater',
			'meta.retry' => 'Prøv igen?',
			'meta.update' => 'Opdater',
			'meta.updateInterval' => 'Opdateringsinterval',
			'meta.updateInterval5mTips' => 'Minimum: 5m',
			'meta.updateFailed' => ({required Object p}) => 'Opdatering mislykkedes:${p}',
			'meta.samplingUnit' => 'Prøvetagningsenhed',
			'meta.queryResultCount' => 'Antal søgeresultater',
			'meta.queryLimit' => ({required Object p}) => 'Vis op til ${p} data',
			'meta.none' => 'Ingen',
			'meta.start' => 'Start',
			'meta.pause' => 'Pause',
			'meta.reset' => 'Nulstil',
			'meta.submit' => 'Indsend',
			'meta.user' => 'Bruger',
			'meta.account' => 'Konto',
			'meta.password' => 'Adgangskode',
			'meta.decryptPassword' => 'Dekryptering adgangskode',
			'meta.required' => 'Påkrævet',
			'meta.type' => 'Type',
			'meta.path' => 'Sti',
			'meta.local' => 'Lokal',
			'meta.remote' => 'Fjern',
			'meta.other' => 'Andet',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'Ugyldig URL',
			'meta.urlCannotEmpty' => 'Link må ikke være tomt',
			'meta.urlTooLong' => 'URL er for lang (>8182)',
			'meta.copyUrl' => 'Kopier link',
			'meta.openUrl' => 'Åbn link',
			'meta.shareUrl' => 'Del link',
			'meta.speedTestUrl' => 'URL til hastighedstest',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'Statisk IP',
			'meta.staticIPTips' => 'Du skal aktivere [TUN HijackDNS] eller [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'VPN-udbyder',
			'meta.domainSuffix' => 'Domænesuffiks',
			'meta.domain' => 'Domæne',
			'meta.domainKeyword' => 'Domænenøgleord',
			'meta.domainRegex' => 'Domæneregex',
			'meta.ip' => 'IP',
			'meta.port' => 'Port',
			'meta.portRange' => 'Portområde',
			'meta.appPackage' => 'App-pakke-ID',
			'meta.processName' => 'Procesnavn',
			'meta.processPath' => 'Processti',
			'meta.processDir' => 'Procesmappe',
			'meta.systemProxy' => 'Systemproxy',
			'meta.percentage' => 'Procentdel',
			'meta.statistics' => 'Statistik',
			'meta.statisticsAndAnalysis' => 'Statistik og analyse',
			'meta.statisticsDataDesensitize' => 'Datadesensibilisering',
			'meta.statisticsDataDesensitizeTips' => 'Proces/pakke-ID/måldomænenavn/mål-IP osv. erstattes med * og gemmes efter desensibilisering',
			'meta.records' => 'Optegnelser',
			'meta.requestRecords' => 'Anmodningsoptegnelser',
			'meta.netInterfaces' => 'Netværksgrænseflader',
			'meta.netSpeed' => 'Hastighed',
			'meta.memoryTrendChart' => 'Hukommelsestrend-diagram',
			'meta.goroutinesTrendChart' => 'GoRoutines-trenddiagram',
			'meta.trafficTrendChart' => 'Trafiktrend-diagram',
			'meta.trafficDistributionChart' => 'Trafikdistributions-diagram',
			'meta.connectionChart' => 'Forbindelsestrend-diagram',
			'meta.memoryChart' => 'Hukommelsestrend-diagram',
			'meta.trafficStatistics' => 'Trafikstatistik',
			'meta.traffic' => 'Trafik',
			'meta.trafficTotal' => 'Samlet trafik',
			'meta.trafficProxy' => 'Proxy-trafik',
			'meta.trafficDirect' => 'Direkte trafik',
			'meta.website' => 'Hjemmeside',
			'meta.memory' => 'Hukommelse',
			'meta.outboundMode' => 'Udgående tilstand',
			'meta.rule' => 'Regel',
			'meta.global' => 'Global',
			'meta.qrcode' => 'QR-kode',
			'meta.qrcodeTooLong' => 'Teksten er for lang til at blive vist',
			'meta.qrcodeShare' => 'Del QR-kode',
			'meta.textToQrcode' => 'Tekst til QR-kode',
			'meta.qrcodeScan' => 'Scan QR-kode',
			'meta.qrcodeScanResult' => 'Scanningsresultat',
			'meta.qrcodeScanFromImage' => 'Scan fra billede',
			'meta.qrcodeScanResultFailed' => 'Kunne ikke analysere billedet, sørg for at skærmbilledet er en gyldig QR-kode',
			'meta.qrcodeScanResultEmpty' => 'Scanningsresultatet er tomt',
			'meta.screenshot' => 'Skærmbillede',
			'meta.backupAndSync' => 'Sikkerhedskopiering og synkronisering',
			'meta.autoBackup' => 'Automatisk sikkerhedskopiering',
			'meta.noProfileGotAutoBackup' => 'Hvis data som [${_root.meta.myProfiles}] går tabt, kan du gendanne dem fra [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] eller andre sikkerhedskopieringskilder (som iCloud eller Webdav osv.)',
			'meta.autoBackupAddProfile' => 'Efter tilføjelse af profil',
			'meta.autoBackupRemoveProfile' => 'Efter sletning af profil',
			'meta.profile' => 'Profil',
			'meta.currentProfile' => 'Nuværende profil',
			'meta.importAndExport' => 'Importer og eksporter',
			'meta.import' => 'Importer',
			'meta.importFromUrl' => 'Importer fra URL',
			'meta.export' => 'Eksporter',
			'meta.send' => 'Send',
			'meta.receive' => 'Modtag',
			'meta.sendConfirm' => 'Bekræft afsendelse?',
			'meta.termOfUse' => 'Betingelser for brug',
			'meta.privacyPolicy' => 'Privatliv og politik',
			'meta.about' => 'Om',
			'meta.name' => 'Navn',
			'meta.version' => 'Version',
			'meta.notice' => 'Meddelelse',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Handling:${p}\nÅrsag:${p1}',
			'meta.sort' => 'Skift rækkefølge',
			'meta.novice' => 'Begyndertilstand',
			'meta.willCompleteAfterRebootInstall' => 'Genstart venligst din enhed for at gennemføre installationen af systemudvidelsen',
			'meta.willCompleteAfterRebootUninstall' => 'Genstart venligst din enhed for at gennemføre afinstallationen af systemudvidelsen',
			'meta.requestNeedsUserApproval' => '1. [Tillad] Karing at installere systemudvidelser i [Systemindstillinger]-[Privatliv og sikkerhed]\n2. I [Systemindstillinger]-[Generelt]-[Logonemner Udvidelser]-[Netværksudvidelse] aktiver [karingServiceSE]\ngenforbind efter fuldførelse',
			'meta.FullDiskAccessPermissionRequired' => 'Aktiver venligst tilladelsen [karingServiceSE] i [Systemindstillinger]-[Privatliv og sikkerhed]-[Fuld diskadgang] og genforbind',
			'meta.tvMode' => 'TV-tilstand',
			'meta.recommended' => 'Anbefalet',
			'meta.innerError' => ({required Object p}) => 'Intern fejl:${p}',
			'meta.logicOperation' => 'Logisk operation',
			'meta.share' => 'Del',
			'meta.candidateWord' => 'Kandidatord',
			'meta.keywordOrRegx' => 'Nøgleord/Regex',
			'meta.importFromClipboard' => 'Importer fra udklipsholder',
			'meta.exportToClipboard' => 'Eksporter til udklipsholder',
			'meta.server' => 'Server',
			'meta.ads' => 'Annoncer',
			'meta.adsRemove' => 'Fjern annoncer',
			'meta.donate' => 'Doner',
			'meta.diversion' => 'Omledning',
			'meta.diversionRules' => 'Omledningsregler',
			'meta.diversionCustomGroup' => 'Brugerdefineret omledningsgruppe',
			'meta.urlTestCustomGroup' => 'Brugerdefineret automatisk valg',
			'meta.setting' => 'Indstillinger',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN-synkronisering',
			'meta.lanSyncNotQuitTips' => 'Forlad ikke denne grænseflade, før synkroniseringen er fuldført',
			'meta.deviceNoSpace' => 'Ikke nok diskplads',
			'meta.hideSystemApp' => 'Skjul systemapps',
			'meta.hideAppIcon' => 'Skjul app-ikoner',
			'meta.hideDockIcon' => 'Skjul Dock-ikon',
			'meta.remark' => 'Bemærkning',
			'meta.remarkExist' => 'Bemærkningen findes allerede, brug venligst et andet navn',
			'meta.remarkCannotEmpty' => 'Bemærkninger må ikke være tomme',
			'meta.remarkTooLong' => 'Bemærkninger op til 32 tegn',
			'meta.openDir' => 'Åbn filmappe',
			'meta.fileChoose' => 'Vælg fil',
			'meta.filePathCannotEmpty' => 'Filstien må ikke være tom',
			'meta.fileNotExist' => ({required Object p}) => 'Filen findes ikke:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Ugyldig filtype:${p}',
			'meta.uwpExemption' => 'UWP-netværksisoleringsundtagelser',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Hent profil',
			'meta.addProfile' => 'Tilføj profil',
			'meta.myProfiles' => 'Mine profiler',
			'meta.profileEdit' => 'Rediger profil',
			'meta.profileEditUrlExist' => 'URL findes allerede, brug venligst en anden URL',
			'meta.profileEditReloadAfterProfileUpdate' => 'Genindlæs efter profilopdatering',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Start latenstest efter automatisk profilopdatering',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN skal være forbundet og [Genindlæs efter profilopdatering] aktiveret',
			'meta.profileEditTestLatencyAutoRemove' => 'Fjern automatisk servere, der ikke består latenstest',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Op til 3 forsøg',
			'meta.profileImport' => 'Importer profilfil',
			'meta.profileAddUrlOrContent' => 'Tilføj profillink',
			'meta.profileExists' => 'Profilen findes allerede, tilføj den ikke gentagne gange',
			'meta.profileUrlOrContent' => 'Profillink/indhold',
			'meta.profileUrlOrContentHit' => 'Profillink/indhold [Påkrævet] (Understøtter Clash, V2ray (batch understøttet), Stash, Karing, Sing-box, Shadowsocks, Sub-profillinks)',
			'meta.profileUrlOrContentCannotEmpty' => 'Profillink må ikke være tomt',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Formatet er forkert, ret det venligst og tilføj igen:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Kunne ikke tilføje: ${p}, prøv venligst at ændre [UserAgent] og prøv igen, eller brug enhedens indbyggede browser til at åbne konfigurationslinket og importere den konfigurationsfil, der er downloadet af browseren, til denne app',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Kunne ikke tilføje: ${p}, slå venligst proxy til eller skift den aktuelle proxynode og prøv igen',
			'meta.profileAddParseFailed' => 'Kunne ikke analysere profil',
			'meta.profileAddNoServerAvaliable' => 'Ingen server tilgængelig, sørg for at profillinket eller profilfilen er gyldig; hvis din profil kommer fra GitHub, skal du hente linket via [Raw]-knappen på siden',
			'meta.profileAddWrapSuccess' => 'Profilen er genereret korrekt, gå til [${_root.meta.myProfiles}] for at se den',
			'diversionRulesKeep' => 'Behold [${_root.meta.diversionRules}] fra [${_root.meta.isp}]',
			'diversionCustomGroupPreset' => 'Forudindstillet [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Bemærk: Aktiverede elementer vil blive tilføjet til/overskrive [${_root.meta.diversionCustomGroup}] og [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Bemærk: Efter tilføjelse skal du muligvis justere rækkefølgen manuelt, ellers træder den nyligt tilføjede omledning muligvis ikke i kraft',
			'rulesetEnableTips' => 'Tip: Gå til [${_root.meta.diversionRules}] efter at have aktiveret indstillingerne for at indstille de relevante regler, ellers træder de ikke i kraft',
			'ispUserAgentTips' => '[${_root.meta.isp}] sender data for forskellige abonnementstyper baseret på [UserAgent] i [HTTP]-anmodningen',
			'ispDiversionTips' => '[${_root.meta.isp}] leverer trafikomledningsregler; abonnementer af typen [V2Ray] understøtter ikke trafikomledningsregler',
			'isp.bind' => 'Bind til [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Fjern binding[${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'Følg[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] Ugyldig eller udløbet',
			'permission.camera' => 'Kamera',
			'permission.screen' => 'Skærmoptagelse',
			'permission.appQuery' => 'Hent app-liste',
			'permission.request' => ({required Object p}) => 'Slå tilladelse [${p}] til',
			'permission.requestNeed' => ({required Object p}) => 'Slå venligst tilladelse [${p}] til',
			'tls.insecure' => 'Spring certifikatverificering over',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Aktiver TLS-fragment',
			'tls.fragmentSize' => 'TLS-fragmentstørrelse',
			'tls.fragmentSleep' => 'TLS-fragment-pause',
			_ => null,
		} ?? switch (path) {
			'tls.mixedCaseSNIEnable' => 'Aktiver TLS Mixed SNI',
			'tls.paddingEnable' => 'Aktiver TLS-padding',
			'tls.paddingSize' => 'TLS-paddingstørrelse',
			'outboundRuleMode.currentSelected' => 'Nuværende valgte',
			'outboundRuleMode.urltest' => 'Automatisk valg',
			'outboundRuleMode.direct' => 'Direkte',
			'outboundRuleMode.block' => 'Bloker',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Profilopdatering',
			'theme.light' => 'Lys',
			'theme.dark' => 'Mørk',
			'theme.auto' => 'Auto',
			'downloadProxyStrategy' => 'Downloadkanal',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Opret forbindelse til DNS-serveren via proxy-serveren for at løse domænenavnet\n[${_root.dnsProxyResolveMode.direct}]: Opret forbindelse direkte til DNS-serveren for at løse domænenavnet\n[${_root.dnsProxyResolveMode.fakeip}]: Proxy-serveren løser domænenavnet på dine vegne; hvis du afbryder VPN-forbindelsen, skal din app muligvis genstartes; kun effektiv for [TUN] indgående trafik',
			'routeFinal' => 'final',
			'protocolSniff' => 'Protokol-sniff',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Brug venligst [${p}]',
			'turnOffPrivateDirect' => 'Slå venligst [Direkte forbindelse til privat netværk] til først',
			'targetConnectFailed' => ({required Object p}) => 'Kunne ikke oprette forbindelse til [${p}]. Sørg for, at enhederne er på det samme LAN',
			'appleTVSync' => 'Synkroniser den aktuelle kernekonfiguration til Apple TV - Karing',
			'appleTVSyncDone' => 'Synkroniseringen er fuldført. Gå til Apple TV - Karing for at starte forbindelsen/genstarte forbindelsen',
			'appleTVRemoveCoreConfig' => 'Slet Apple TV - Karing kernekonfiguration',
			'appleTVRemoveCoreConfigDone' => 'Kernekonfiguration for Apple TV - Karing slettet; VPN-tjeneste afbrudt',
			'appleTVUrlInvalid' => 'Ugyldig URL, åbn venligst Apple TV - Karing og scan den QR-kode, der vises af Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] har ikke denne funktion, opdater venligst og prøv igen',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'Hovedversionen af kernen stemmer ikke overens, opdater venligst [${p}] og prøv igen',
			'remoteProfileEditConfirm' => 'Efter profilopdateringen vil nodeændringerne blive gendannet. Fortsæt?',
			'mustBeValidHttpsURL' => 'Skal være en gyldig https-URL',
			'fileNotExistReinstall' => ({required Object p}) => 'Fil mangler [${p}], geninstaller venligst',
			'noNetworkConnect' => 'Ingen internetforbindelse',
			'sudoPassword' => 'sudo-adgangskode (påkrævet til TUN-tilstand)',
			'turnOffNetworkBeforeInstall' => 'Det anbefales at skifte til [Flytilstand] før installation af opdateringen',
			'latencyTestResolveIP' => 'Løs outlet-IP ved manuel kontrol',
			'latencyTestConcurrency' => 'Samtidighed',
			'edgeRuntimeNotInstalled' => 'Den aktuelle enhed har ikke Edge WebView2-runtime installeret, så siden kan ikke vises. Download og installer Edge WebView2-runtime (x64), genstart appen og prøv igen.',
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
