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
class TranslationsDe with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenDe AboutScreen = _TranslationsAboutScreenDe._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenDe BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenDe._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenDe DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenDe._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenDe DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenDe._(_root);
	@override late final _TranslationsDiversionRulesScreenDe DiversionRulesScreen = _TranslationsDiversionRulesScreenDe._(_root);
	@override late final _TranslationsDnsSettingsScreenDe DnsSettingsScreen = _TranslationsDnsSettingsScreenDe._(_root);
	@override late final _TranslationsFileContentViewerScreenDe FileContentViewerScreen = _TranslationsFileContentViewerScreenDe._(_root);
	@override late final _TranslationsHomeScreenDe HomeScreen = _TranslationsHomeScreenDe._(_root);
	@override late final _TranslationsLaunchFailedScreenDe LaunchFailedScreen = _TranslationsLaunchFailedScreenDe._(_root);
	@override late final _TranslationsMyProfilesMergeScreenDe MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenDe._(_root);
	@override late final _TranslationsNetCheckScreenDe NetCheckScreen = _TranslationsNetCheckScreenDe._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenDe NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenDe._(_root);
	@override late final _TranslationsNetConnectionsScreenDe NetConnectionsScreen = _TranslationsNetConnectionsScreenDe._(_root);
	@override late final _TranslationsPerAppAndroidScreenDe PerAppAndroidScreen = _TranslationsPerAppAndroidScreenDe._(_root);
	@override late final _TranslationsRegionSettingsScreenDe RegionSettingsScreen = _TranslationsRegionSettingsScreenDe._(_root);
	@override late final _TranslationsServerSelectScreenDe ServerSelectScreen = _TranslationsServerSelectScreenDe._(_root);
	@override late final _TranslationsSettingsScreenDe SettingsScreen = _TranslationsSettingsScreenDe._(_root);
	@override late final _TranslationsUserAgreementScreenDe UserAgreementScreen = _TranslationsUserAgreementScreenDe._(_root);
	@override late final _TranslationsVersionUpdateScreenDe VersionUpdateScreen = _TranslationsVersionUpdateScreenDe._(_root);
	@override late final _TranslationsCommonWidgetDe CommonWidget = _TranslationsCommonWidgetDe._(_root);
	@override late final _TranslationsMainDe main = _TranslationsMainDe._(_root);
	@override late final _TranslationsMetaDe meta = _TranslationsMetaDe._(_root);
	@override String get diversionRulesKeep => '[${_root.meta.isp}] ${_root.meta.diversionRules} beibehalten';
	@override String get diversionCustomGroupPreset => 'Voreingestellte [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Hinweis: Aktivierte Elemente werden zu [${_root.meta.diversionCustomGroup}] und [${_root.meta.diversionRules}] hinzugefügt/überschrieben';
	@override String get diversionCustomGroupAddTips => 'Hinweis: Nach dem Hinzufügen müssen Sie die Reihenfolge möglicherweise manuell anpassen, da die neu hinzugefügte Umleitung sonst möglicherweise nicht wirksam wird';
	@override String get rulesetEnableTips => 'Tipp: Nach dem Einschalten der Optionen gehen Sie bitte zu [${_root.meta.diversionRules}], um die entsprechenden Regeln festzulegen, andernfalls werden sie nicht wirksam';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] sendet Daten verschiedener Abonnementtypen basierend auf dem [UserAgent] in der [HTTP]-Anfrage';
	@override String get ispDiversionTips => '[${_root.meta.isp}] bietet Verkehrs-Umleitungsregeln; [V2Ray]-Abonnements unterstützen keine Verkehrs-Umleitungsregeln';
	@override late final _TranslationsIspDe isp = _TranslationsIspDe._(_root);
	@override late final _TranslationsPermissionDe permission = _TranslationsPermissionDe._(_root);
	@override late final _TranslationsTlsDe tls = _TranslationsTlsDe._(_root);
	@override late final _TranslationsOutboundRuleModeDe outboundRuleMode = _TranslationsOutboundRuleModeDe._(_root);
	@override late final _TranslationsDnsProxyResolveModeDe dnsProxyResolveMode = _TranslationsDnsProxyResolveModeDe._(_root);
	@override late final _TranslationsProxyStrategyDe proxyStrategy = _TranslationsProxyStrategyDe._(_root);
	@override late final _TranslationsReloadReasonDe reloadReason = _TranslationsReloadReasonDe._(_root);
	@override late final _TranslationsThemeDe theme = _TranslationsThemeDe._(_root);
	@override String get downloadProxyStrategy => 'Download-Kanal';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Verbinden Sie sich über den Proxy-Server mit dem DNS-Server, um den Domainnamen aufzulösen\n[${_root.dnsProxyResolveMode.direct}]: Verbinden Sie sich direkt mit dem DNS-Server, um den Domainnamen aufzulösen\n[${_root.dnsProxyResolveMode.fakeip}]: Der Proxy-Server löst den Domainnamen in Ihrem Namen auf; wenn Sie die VPN-Verbindung trennen, muss Ihre Anwendung möglicherweise neu gestartet werden; nur wirksam für [TUN]-eingehenden Verkehr';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'Protokoll-Sniff';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Bitte verwenden Sie [${p}]';
	@override String get turnOffPrivateDirect => 'Bitte schalten Sie zuerst [Private Netzwerk-Direktverbindung] ein';
	@override String targetConnectFailed({required Object p}) => 'Verbindung zu [${p}] fehlgeschlagen. Bitte stellen Sie sicher, dass sich die Geräte im selben LAN befinden';
	@override String get appleTVSync => 'Die aktuelle Kernkonfiguration mit Apple TV - Karing synchronisieren';
	@override String get appleTVSyncDone => 'Synchronisierung abgeschlossen. Bitte gehen Sie zu Apple TV - Karing, um die Verbindung zu starten/neu zu starten';
	@override String get appleTVRemoveCoreConfig => 'Apple TV - Karing Kernkonfiguration löschen';
	@override String get appleTVRemoveCoreConfigDone => 'Kernkonfiguration von Apple TV - Karing gelöscht; VPN-Dienst getrennt';
	@override String get appleTVUrlInvalid => 'Ungültige URL, bitte öffnen Sie Apple TV - Karing und scannen Sie den von Karing angezeigten QR-Code';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] hat diese Funktion nicht, bitte aktualisieren Sie und versuchen Sie es erneut';
	@override String appleCoreVersionNotMatch({required Object p}) => 'Die Hauptversion des Kerns stimmt nicht überein, bitte aktualisieren Sie [${p}] und versuchen Sie es erneut';
	@override String get remoteProfileEditConfirm => 'Nachdem das Profil aktualisiert wurde, werden die Knotenänderungen wiederhergestellt. Fortfahren?';
	@override String get mustBeValidHttpsURL => 'Muss eine gültige https-URL sein';
	@override String fileNotExistReinstall({required Object p}) => 'Datei fehlt [${p}], bitte neu installieren';
	@override String get noNetworkConnect => 'Keine Internetverbindung';
	@override String get sudoPassword => 'sudo-Passwort (erforderlich für den TUN-Modus)';
	@override String get turnOffNetworkBeforeInstall => 'Es wird empfohlen, vor der Installation des Updates in den [Flugmodus] zu wechseln';
	@override String get latencyTestResolveIP => 'Bei manueller Prüfung die Outlet-IP auflösen';
	@override String get latencyTestConcurrency => 'Gleichzeitigkeit';
	@override String get edgeRuntimeNotInstalled => 'Das aktuelle Gerät hat die Edge WebView2-Laufzeitumgebung nicht installiert, daher kann die Seite nicht angezeigt werden. Bitte laden Sie die Edge WebView2-Laufzeitumgebung (x64) herunter und installieren Sie sie, starten Sie die App neu und versuchen Sie es erneut.';
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
class _TranslationsAboutScreenDe implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Installationsquelle';
	@override String get installTime => 'Installationszeit';
	@override String get versionChannel => 'Auto-Update-Kanal';
	@override String get updateWhenConnected => 'Nach dem Verbinden auf Updates prüfen';
	@override String get autoDownloadPkg => 'Update-Pakete automatisch herunterladen';
	@override String get disableAppImproveData => 'Anwendungsverbesserungsdaten';
	@override String get disableUAReportTip => 'Das Aktivieren von [${_root.AboutScreen.disableAppImproveData}] hilft uns, die Stabilität und Benutzerfreundlichkeit des Produkts zu verbessern; wir sammeln keine persönlichen Datenschutzdaten. Das Deaktivieren verhindert, dass die App Daten sammelt.';
	@override String get devOptions => 'Entwickleroptionen';
	@override String get enableDebugLog => 'Debug-Protokoll aktivieren';
	@override String get viewFilsContent => 'Dateien anzeigen';
	@override String get enablePprof => 'pprof aktivieren';
	@override String get pprofPanel => 'pprof-Panel';
	@override String get allowRemoteAccessPprof => 'Remote-Zugriff auf ${_root.AboutScreen.pprofPanel} erlauben';
	@override String get allowRemoteAccessHtmlBoard => 'Remote-Zugriff auf ${_root.SettingsScreen.htmlBoard} erlauben';
	@override String get useOriginalSBProfile => 'Original sing-box Profil verwenden';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenDe implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Server-URL';
	@override String get webdavRequired => 'Darf nicht leer sein';
	@override String get webdavLoginFailed => 'Login fehlgeschlagen:';
	@override String get webdavListFailed => 'Dateiliste konnte nicht abgerufen werden:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenDe implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'Ungültige [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => 'Ungültiges [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'Ungültig [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'Ungültiges [Regelset]:${p}, Die URL muss eine gültige https-URL und eine Binärdatei mit der Endung .srs/.json sein';
	@override String invalidRuleSetBuildIn({required Object p}) => 'Ungültiges [Regelset (integriert)]:${p}, Das Format ist geosite:xxx oder geoip:xxx oder acl:xxx, und xxx sollte ein gültiger Regelname sein';
	@override String invalidPackageId({required Object p}) => 'Ungültige [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'Tipp: Nach dem Speichern gehen Sie bitte zu [${_root.meta.diversionRules}], um relevante Regeln festzulegen, andernfalls werden sie nicht wirksam';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenDe implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erkennung von Umleitungsregeln';
	@override String get rule => 'Regel:';
	@override String get outbound => 'Proxy-Server:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenDe implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Tipp: Versuchen Sie, die Regeln von oben nach unten abzugleichen. Wenn keine Regel übereinstimmt, verwenden Sie [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenDe implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP darf nicht leer sein';
	@override String get urlCanNotEmpty => 'URL darf nicht leer sein';
	@override String error({required Object p}) => 'Nicht unterstützter Typ:${p}';
	@override String get dnsDesc => 'Die erste Spalte der Verzögerungsdaten ist die Verzögerung der direkten Verbindungsabfrage;\nDie zweite Spalte: Schalten Sie [[Proxy-Verkehr]DNS über Proxy-Server auflösen] ein: Die Verzögerungsdaten sind die über den aktuellen Proxy-Server weitergeleitete Abfrageverzögerung; wenn [[Proxy-Verkehr]DNS über Proxy-Server auflösen] aus ist: Die Verzögerungsdaten sind die Verzögerung der direkten Verbindungsabfrage';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenDe implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dateiinhaltsbetrachter';
	@override String get clearFileContent => 'Sind Sie sicher, dass Sie den Inhalt der Datei löschen möchten?';
	@override String get clearFileContentTips => 'Sind Sie sicher, dass Sie den Inhalt der Profil-Datei löschen möchten? Das Löschen der Profil-Datei kann zu Datenverlust oder abnormalen Anwendungsfunktionen führen, bitte gehen Sie mit Vorsicht vor';
}

// Path: HomeScreen
class _TranslationsHomeScreenDe implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Bitte wählen Sie einen Server aus';
	@override String get invalidServer => 'ist ungültig, bitte wählen Sie erneut';
	@override String get disabledServer => 'ist deaktiviert, bitte wählen Sie erneut';
	@override String get expiredServer => 'Keine Server verfügbar, Profile könnten abgelaufen oder deaktiviert sein';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'Bitte richten Sie [Shortcut-Link] ein, bevor Sie ihn verwenden';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Zu viele Proxy-Server [${p}>${p1}], die Verbindung könnte aufgrund von Systemspeicherbeschränkungen fehlschlagen';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Zu viele Proxy-Server [${p}>${p1}] können langsame oder unzugängliche Verbindungen verursachen';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenDe implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'Die App konnte nicht gestartet werden [Ungültiger Prozessname], bitte installieren Sie die App in einem separaten Verzeichnis neu';
	@override String get invalidProfile => 'Die App konnte nicht gestartet werden [Zugriff auf das Profil fehlgeschlagen], bitte installieren Sie die App neu';
	@override String get invalidVersion => 'Die App konnte nicht gestartet werden [Ungültige Version], bitte installieren Sie die App neu';
	@override String get systemVersionLow => 'Die App konnte nicht gestartet werden [Systemversion zu niedrig]';
	@override String get invalidInstallPath => 'Der Installationspfad ist ungültig, bitte installieren Sie ihn an einem gültigen Pfad neu';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenDe implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Profile zusammenführen';
	@override String get profilesMergeTarget => 'Zielprofil';
	@override String get profilesMergeSource => 'Quellprofile';
	@override String get profilesMergeTips => 'Tipp: Die Umleitung der Quellprofile wird verworfen';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenDe implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Netzwerkprüfung';
	@override String get warn => 'Hinweis: Aufgrund der Einflüsse der Netzwerkumgebung und der Umleitungsregeln sind die Testergebnisse nicht vollständig mit den tatsächlichen Ergebnissen gleichzusetzen.';
	@override String get invalidDomain => 'Ungültiger Domainname';
	@override String get connectivity => 'Netzwerkkonnektivität';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4-Verbindungstest [${p}] alle fehlgeschlagen';
	@override String get connectivityTestIpv4Ok => 'Ipv4-Verbindung erfolgreich';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6-Verbindungstest [${p}] alle fehlgeschlagen, Ihr Netzwerk unterstützt möglicherweise kein ipv6';
	@override String get connectivityTestIpv6Ok => 'Ipv6-Verbindung erfolgreich';
	@override String get connectivityTestOk => 'Das Netzwerk ist mit dem Internet verbunden';
	@override String get connectivityTestFailed => 'Das Netzwerk ist noch nicht mit dem Internet verbunden';
	@override String get remoteRulesetsDownloadOk => 'Alle erfolgreich heruntergeladen';
	@override String get remoteRulesetsDownloadNotOk => 'Herunterladen oder Download fehlgeschlagen';
	@override String get outbound => 'Proxy-Server';
	@override String outboundOk({required Object p}) => '[${p}] Verbindung erfolgreich';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] Verbindung fehlgeschlagen\nFehler:[${p2}]';
	@override String get dnsServer => 'DNS-Server';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS-Abfrage erfolgreich\nDNS-Regel:[${p2}]\nLatenz:[${p3} ms]\nAdresse:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS-Abfrage erfolgreich\n nDNS-Regel:[${p2}]\nFehler:[${p3}]';
	@override String get host => 'HTTP-Verbindung';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nUmleitungsregel:[${p2}]\nProxy-Server:[${p3}]';
	@override String get hostConnectionOk => 'Verbindung erfolgreich';
	@override String hostConnectionFailed({required Object p}) => 'Verbindung fehlgeschlagen:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenDe implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domain/IP';
	@override String get app => 'App';
	@override String get rule => 'Regel';
	@override String get chain => 'Ausgehend';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenDe implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'In das CSV-Format kopiert';
	@override String get selectType => 'Umleitungstyp auswählen';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenDe implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pro-App-Proxy';
	@override String get whiteListMode => 'Whitelist-Modus';
	@override String get whiteListModeTip => 'Wenn aktiviert: Nur die markierten Apps sind Proxies; wenn nicht aktiviert: Nur die nicht markierten Apps sind Proxies';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenDe implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Land oder Region';
	@override String get Regions => 'Tipp: Bitte stellen Sie Ihr aktuelles Land oder Ihre aktuelle Region korrekt ein, da dies sonst zu Problemen bei der Netzwerkumleitung führen kann';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenDe implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Server auswählen';
	@override String get autoSelectServer => 'Automatisch den Server mit der niedrigsten Latenz auswählen';
	@override String get recentUse => 'Zuletzt verwendet';
	@override String get myFav => 'Meine Favoriten';
	@override String selectLocal({required Object p}) => 'Der ausgewählte Server ist eine lokale Adresse und funktioniert möglicherweise nicht ordnungsgemäß:${p}';
	@override String get selectRequireEnableIPv6 => 'Der ausgewählte Server ist eine IPv6-Adresse und erfordert [IPv6 aktivieren]';
	@override String get selectDisabled => 'Dieser Server wurde deaktiviert';
	@override String get error404 => 'Latenzerkennung hat einen Fehler festgestellt, bitte prüfen Sie, ob eine Konfiguration mit demselben Inhalt existiert';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenDe implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Verkehr abrufen';
	@override String get tutorial => 'Tutorial';
	@override String get commonlyUsedRulesets => 'Häufig verwendete Regelsets';
	@override String get htmlBoard => 'Online-Panel';
	@override String get dnsLeakDetection => 'DNS-Leck-Erkennung';
	@override String get proxyLeakDetection => 'Proxy-Leck-Erkennung';
	@override String get speedTest => 'Geschwindigkeitstest';
	@override String get rulesetDirectDownlad => 'Regelset direkter Download';
	@override String get hideUnusedDiversionGroup => 'Ungenutzte Umleitungsregeln ausblenden';
	@override String get disableISPDiversionGroup => '[${_root.meta.isp}] ${_root.meta.diversionRules} deaktivieren';
	@override String get portSettingRule => 'Regelbasiert';
	@override String get portSettingDirectAll => 'Alle direkt';
	@override String get portSettingProxyAll => 'Alle Proxy';
	@override String get portSettingControl => 'Steuerung und Synchronisierung';
	@override String get portSettingCluster => 'Cluster-Dienst';
	@override String get modifyPort => 'Port ändern';
	@override String get modifyPortOccupied => 'Der Port ist belegt, bitte verwenden Sie einen anderen Port';
	@override String get ipStrategyTips => 'Vor der Aktivierung bestätigen Sie bitte, dass Ihr Netzwerk IPv6 unterstützt, da sonst ein Teil des Verkehrs nicht normal zugänglich ist.';
	@override String get tunAppendHttpProxy => 'HTTP-Proxy an VPN anhängen';
	@override String get tunAppendHttpProxyTips => 'Einige Apps umgehen das virtuelle NIC-Gerät und verbinden sich direkt mit dem HTTP-Proxy';
	@override String get tunAllowBypassHttpProxyDomain => 'Domains, die den HTTP-Proxy umgehen dürfen';
	@override String get dnsEnableRule => 'DNS-Umleitungsregeln aktivieren';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] Auflösungskanal';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] ECS aktivieren';
	@override String get dnsTestDomain => 'Test-Domain';
	@override String get dnsTestDomainInvalid => 'Ungültige Domain';
	@override String get dnsTypeOutbound => 'Proxy-Server';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS-Server';
	@override String get dnsEnableRuleTips => 'Nach der Aktivierung wählt der Domainname den entsprechenden DNS-Server zur Auflösung gemäß den Umleitungsregeln aus';
	@override String get dnsEnableFakeIpTips => 'Nach der Aktivierung von FakeIP müssen Sie Ihre App möglicherweise neu starten, wenn Sie die VPN-Verbindung trennen; diese Funktion erfordert die Aktivierung des [TUN-Modus]';
	@override String get dnsTypeOutboundTips => 'Domainnamen-Auflösung für [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Domainnamen-Auflösung für [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Domainnamen-Auflösung für [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Domainnamen-Auflösung für [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Server automatisch einrichten';
	@override String get dnsResetServer => 'Server zurücksetzen';
	@override String get inboundDomainResolve => 'Eingehende Domainnamen auflösen';
	@override String get privateDirect => 'Private Netzwerk-Direktverbindung';
	@override String inboundDomainResolveTips({required Object p}) => 'Einige Domainnamen, die nicht mit Umleitungsregeln konfiguriert sind, müssen aufgelöst werden, bevor sie die IP-basierten Umleitungsregeln treffen können; diese Funktion betrifft eingehende Anfragen an den Proxy-Port [${p}]';
	@override String get useRomoteRes => 'Remote-Ressourcen verwenden';
	@override String get autoAppendRegion => 'Basisregeln automatisch anhängen';
	@override String get autoSelect => 'Automatisch auswählen';
	@override String get autoSelectServerIgnorePerProxyServer => '[Front/Chain] Proxy-Server ignorieren';
	@override String get autoSelectServerInterval => 'Intervall für Latenzprüfungen';
	@override String get autoSelectSelectedHealthCheckInterval => 'Prüfintervall für den aktuellen Serverzustand';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Latenz bei Netzwerkänderungen erneut prüfen';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Den aktuellen Server nach manueller Latenzprüfung aktualisieren';
	@override String get autoSelectServerIntervalTips => 'Je kürzer das Zeitintervall, desto aktueller sind die Latenzdaten des Servers, was mehr Ressourcen beansprucht und mehr Strom verbraucht';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Wenn die Prüfung fehlschlägt, wird der Server gewechselt; wenn beim Wechseln des Servers kein verfügbarer Server gefunden wird, prüft die Gruppe die Latenz erneut';
	@override String get autoSelectServerFavFirst => 'Vorrangig [Meine Favoriten] verwenden';
	@override String get autoSelectServerFavFirstTips => 'Wenn die Liste [Meine Favoriten] nicht leer ist, verwenden Sie die Server in [Meine Favoriten]';
	@override String get autoSelectServerFilter => 'Ungültige Server filtern';
	@override String autoSelectServerFilterTips({required Object p}) => 'Server-Latenzprüfungen, die fehlschlagen, werden herausgefiltert; wenn nach dem Filtern kein Server verfügbar ist, werden stattdessen die ersten [${p}] Server verwendet';
	@override String get autoSelectServerLimitedNum => 'Maximale Anzahl an Servern';
	@override String get autoSelectServerLimitedNumTips => 'Server, die diese Anzahl überschreiten, werden herausgefiltert';
	@override String get numInvalid => 'Ungültige Nummer';
	@override String get hideInvalidServer => 'Ungültige Server ausblenden';
	@override String get sortServer => 'Sortierung der Server';
	@override String get sortServerTips => 'Sortieren nach Latenz von niedrig bis hoch';
	@override String get selectServerHideRecommand => '[Empfohlen] ausblenden';
	@override String get selectServerHideRecent => '[Zuletzt verwendet] ausblenden';
	@override String get selectServerHideFav => '[Meine Favoriten] ausblenden';
	@override String get homeScreen => 'Startbildschirm';
	@override String get theme => 'Thema';
	@override String get widgetsAlpha => 'Widgets Alpha';
	@override String get widgetsEmpty => 'Kein Widget verfügbar';
	@override String get backgroundImage => 'Hintergrundbild';
	@override String get myLink => 'Shortcut-Link';
	@override String get autoConnectAfterLaunch => 'Automatische Verbindung nach dem Start';
	@override String get autoConnectAtBoot => 'Automatische Verbindung nach dem Systemstart';
	@override String get autoConnectAtBootTips => 'Systemunterstützung ist erforderlich; einige Systeme erfordern möglicherweise auch die Aktivierung von [Autostart].';
	@override String get hideAfterLaunch => 'Fenster nach dem Start ausblenden';
	@override String get autoSetSystemProxy => 'System-Proxy automatisch einstellen, wenn verbunden';
	@override String get bypassSystemProxy => 'Domainnamen, die den System-Proxy umgehen dürfen';
	@override String get disconnectWhenQuit => 'Trennen, wenn die App beendet wird';
	@override String get autoAddToFirewall => 'Firewall-Regeln automatisch hinzufügen';
	@override String get excludeFromRecent => 'In [Letzte Aufgaben] ausblenden';
	@override String get wakeLock => 'Wach-Sperre';
	@override String get hideVpn => 'VPN-Symbol ausblenden';
	@override String get hideVpnTips => 'Das Aktivieren von IPv6 führt dazu, dass diese Funktion fehlschlägt';
	@override String get allowBypass => 'Apps erlauben, VPN zu umgehen';
	@override String get importSuccess => 'Import erfolgreich';
	@override String get rewriteConfirm => 'Diese Datei wird die bestehende lokale Konfiguration überschreiben. Möchten Sie fortfahren?';
	@override String get mergePerapp => 'Lokale [${_root.PerAppAndroidScreen.title}] Listen zusammenführen';
	@override String get networkShare => 'Netzwerkfreigabe';
	@override String get frontProxy => 'Front/Chain Proxy';
	@override String frontProxyTips({required Object p}) => 'Daten->Front/Chain Proxy-Server [Mehrere Proxy-Server: Oben nach unten]->Proxy-Server [${p}]->Zielserver';
	@override String get allowOtherHostsConnect => 'Anderen die Verbindung erlauben';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'Aufgrund von Systembeschränkungen können Anwendungen auf diesem Gerät, die http für den Netzwerkzugriff verwenden, nach Aktivierung dieser Option möglicherweise nicht mehr ordnungsgemäß mit dem Netzwerk verbunden werden.';
	@override String get tunAutoRoute => 'Automatische Route';
	@override String get tunAutoRedirect => 'Automatische Umleitung';
	@override String get tunStrictRoute => 'Strikte Route';
	@override String get tunStrictRouteTips => 'Wenn nach dem Einschalten der Freigabe andere nicht auf dieses Gerät zugreifen können, versuchen Sie bitte, diesen Schalter auszuschalten';
	@override String get loopbackAddress => 'Loopback-Adresse';
	@override String get enableCluster => 'Socks/Http-Proxy-Cluster aktivieren';
	@override String get clusterAllowOtherHostsConnect => 'Anderen die Verbindung zum Cluster erlauben';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Proxy-Cluster-Authentifizierung';
	@override String get tunMode => 'TUN-Modus';
	@override String get tuni4Address => 'IP-Adresse';
	@override String get tunModeTips => 'Der TUN-Modus übernimmt den gesamten Datenverkehr des Systems [In diesem Modus kann der System-Proxy deaktiviert bleiben]';
	@override String get tunModeRunAsAdmin => 'Der TUN-Modus erfordert Systemadministratorrechte, bitte starten Sie die App als Administrator neu';
	@override String get tunStack => 'Stack';
	@override String get tunHijackTips => 'Nach dem Schließen werden DNS-Anfragen von TUN direkt an den entsprechenden DNS-Server weitergeleitet';
	@override String get launchAtStartup => 'Beim Start ausführen';
	@override String get quitWhenSwitchSystemUser => 'App beenden beim Wechsel der Systembenutzer';
	@override String get handleScheme => 'System-Schema-Aufruf';
	@override String get portableMode => 'Portabler Modus';
	@override String get portableModeDisableTips => 'Wenn Sie den portablen Modus beenden möchten, beenden Sie bitte [karing] und löschen Sie manuell den Ordner [profiles] im selben Verzeichnis wie [karing.exe]';
	@override String get accessibility => 'Barrierefreiheit';
	@override String get handleKaringScheme => 'karing:// Aufruf behandeln';
	@override String get handleClashScheme => 'clash:// Aufruf behandeln';
	@override String get handleSingboxScheme => 'sing-box:// Aufruf behandeln';
	@override String get alwayOnVPN => 'Immer-an-Verbindung';
	@override String get disconnectAfterSleep => 'Verbindung nach dem Systemruhezustand trennen';
	@override String get removeSystemVPNConfig => 'System-VPN-Konfiguration löschen';
	@override String get timeConnectOrDisconnect => 'Geplantes Verbinden/Trennen';
	@override String get timeConnectOrDisconnectTips => 'VPN muss verbunden sein, um wirksam zu sein; nach dem Einschalten wird [Automatischer Ruhezustand] deaktiviert';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Das Verbindungs-/Trennungsintervall darf nicht weniger als ${p} Minuten betragen';
	@override String get disableFontScaler => 'Schriftarten-Skalierung deaktivieren (Neustart erforderlich)';
	@override String get autoOrientation => 'Mit dem Bildschirm drehen';
	@override String get restartTakesEffect => 'Neustart erforderlich';
	@override String get reconnectTakesEffect => 'Wiederverbindung erforderlich';
	@override String get resetSettings => 'Einstellungen zurücksetzen';
	@override String get cleanCache => 'Cache bereinigen';
	@override String get cleanCacheDone => 'Bereinigung abgeschlossen';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Version ${p} aktualisieren';
	@override String get follow => 'Folgen Sie uns';
	@override String get contactUs => 'Kontaktieren Sie uns';
	@override String get supportUs => 'Unterstützen Sie uns';
	@override String get rateInApp => 'Bewerten Sie uns';
	@override String get rateInAppStore => 'Bewerten Sie uns im AppStore';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenDe implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Ihre Privatsphäre steht an erster Stelle';
	@override String get agreeAndContinue => 'Akzeptieren & Weiter';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenDe implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'Die neue Version [${p}] ist bereit';
	@override String get update => 'Zum Aktualisieren neu starten';
	@override String get cancel => 'Nicht jetzt';
}

// Path: CommonWidget
class _TranslationsCommonWidgetDe implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Wenn [Immer an VPN] eingeschaltet ist, schalten Sie bitte [Immer an VPN] aus und versuchen Sie erneut, eine Verbindung herzustellen';
	@override String get resetPort => 'Bitte ändern Sie den Port auf einen anderen verfügbaren Port oder schließen Sie die Anwendung, die den Port belegt.';
}

// Path: main
class _TranslationsMainDe implements TranslationsMainEn {
	_TranslationsMainDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayDe tray = _TranslationsMainTrayDe._(_root);
}

// Path: meta
class _TranslationsMetaDe implements TranslationsMetaEn {
	_TranslationsMetaDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Aktivieren';
	@override String get disable => 'Deaktivieren';
	@override String get bydefault => 'Standard';
	@override String get filter => 'Filtern';
	@override String get filterMethod => 'Filtermethode';
	@override String get include => 'Einschließen';
	@override String get exclude => 'Ausschließen';
	@override String get all => 'Alle';
	@override String get prefer => 'Bevorzugen';
	@override String get only => 'Nur';
	@override String get open => 'Öffnen';
	@override String get close => 'Schließen';
	@override String get quit => 'Beenden';
	@override String get add => 'Hinzufügen';
	@override String get addSuccess => 'Erfolgreich hinzugefügt';
	@override String addFailed({required Object p}) => 'Hinzufügen fehlgeschlagen:${p}';
	@override String get remove => 'Entfernen';
	@override String get removeConfirm => 'Sind Sie sicher, dass Sie löschen möchten?';
	@override String get edit => 'Bearbeiten';
	@override String get view => 'Ansehen';
	@override String get more => 'Mehr';
	@override String get tips => 'Info';
	@override String get copy => 'Kopieren';
	@override String get paste => 'Paste';
	@override String get cut => 'Schneiden';
	@override String get save => 'Speichern';
	@override String get ok => 'Ok';
	@override String get cancel => 'Abbrechen';
	@override String get feedback => 'Feedback';
	@override String get feedbackContent => 'Feedback-Inhalt';
	@override String get feedbackContentHit => 'Erforderlich, bis zu 500 Zeichen';
	@override String get feedbackContentCannotEmpty => 'Feedback-Inhalt darf nicht leer sein';
	@override String get faq => 'FAQ';
	@override String get htmlTools => 'HTML-Toolset';
	@override String get download => 'Herunterladen';
	@override String get upload => 'Hochladen';
	@override String get downloadSpeed => 'Download-Geschwindigkeit';
	@override String get uploadSpeed => 'Upload-Geschwindigkeit';
	@override String get loading => 'Wird geladen...';
	@override String get convert => 'Konvertieren';
	@override String get check => 'Prüfen';
	@override String get detect => 'Erkennen';
	@override String get cache => 'Cache';
	@override String get days => 'Tage';
	@override String get hours => 'Stunden';
	@override String get minutes => 'Minuten';
	@override String get seconds => 'Sekunden';
	@override String get milliseconds => 'Millisekunden';
	@override String get tolerance => 'Toleranz';
	@override String get dateTimePeriod => 'Zeitraum';
	@override String get protocol => 'Protokoll';
	@override String get search => 'Suche';
	@override String get custom => 'Benutzerdefiniert';
	@override String get inbound => 'Eingehend';
	@override String get outbound => 'Ausgehend';
	@override String get destination => 'Ziel';
	@override String get outletIpByCurrentSelected => 'Ausgangs-IP';
	@override String get outletIpByDirect => 'Ausgangs-IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Verbinden';
	@override String get disconnect => 'Trennen';
	@override String get reconnect => 'Wiederverbinden';
	@override String get connected => 'Verbunden';
	@override String get disconnected => 'Getrennt';
	@override String get connecting => 'Verbindung wird hergestellt';
	@override String get connectTimeout => 'Verbindungszeitüberschreitung';
	@override String get timeout => 'Zeitüberschreitung';
	@override String get timeoutDuration => 'Dauer der Zeitüberschreitung';
	@override String get runDuration => 'Laufzeit';
	@override String get latency => 'Latenz';
	@override String get latencyTest => 'Latenzprüfungen';
	@override String get language => 'Sprache';
	@override String get next => 'Weiter';
	@override String get done => 'Fertig';
	@override String get apply => 'Anwenden';
	@override String get refresh => 'Aktualisieren';
	@override String get retry => 'Wiederholen?';
	@override String get update => 'Aktualisieren';
	@override String get updateInterval => 'Aktualisierungsintervall';
	@override String get updateInterval5mTips => 'Minimum: 5m';
	@override String updateFailed({required Object p}) => 'Aktualisierung fehlgeschlagen:${p}';
	@override String get samplingUnit => 'Abtastzeiteinheit';
	@override String get queryResultCount => 'Anzahl der Abfrageergebnisse';
	@override String queryLimit({required Object p}) => 'Bis zu ${p} Daten anzeigen';
	@override String get none => 'Keine';
	@override String get start => 'Start';
	@override String get pause => 'Pause';
	@override String get reset => 'Zurücksetzen';
	@override String get submit => 'Senden';
	@override String get user => 'Benutzer';
	@override String get account => 'Konto';
	@override String get password => 'Passwort';
	@override String get decryptPassword => 'Entschlüsselungspasswort';
	@override String get required => 'Erforderlich';
	@override String get type => 'Typ';
	@override String get path => 'Pfad';
	@override String get local => 'Lokal';
	@override String get remote => 'Remote';
	@override String get other => 'Andere';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'Ungültige URL';
	@override String get urlCannotEmpty => 'Link darf nicht leer sein';
	@override String get urlTooLong => 'URL ist zu lang (>8182)';
	@override String get copyUrl => 'Link kopieren';
	@override String get openUrl => 'Link öffnen';
	@override String get shareUrl => 'Link teilen';
	@override String get speedTestUrl => 'Geschwindigkeitstest-URL';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'Statische IP';
	@override String get staticIPTips => 'Sie müssen [TUN HijackDNS] oder [${_root.SettingsScreen.inboundDomainResolve}] aktivieren.';
	@override String get isp => 'VPN-Anbieter';
	@override String get domainSuffix => 'Domain-Suffix';
	@override String get domain => 'Domain';
	@override String get domainKeyword => 'Domain-Schlüsselwort';
	@override String get domainRegex => 'Domain-Regex';
	@override String get ip => 'IP';
	@override String get port => 'Port';
	@override String get portRange => 'Portbereich';
	@override String get appPackage => 'App-Paket-ID';
	@override String get processName => 'Prozessname';
	@override String get processPath => 'Prozesspfad';
	@override String get processDir => 'Prozessverzeichnis';
	@override String get systemProxy => 'System-Proxy';
	@override String get percentage => 'Prozentsatz';
	@override String get statistics => 'Statistiken';
	@override String get statisticsAndAnalysis => 'Statistiken und Analysen';
	@override String get statisticsDataDesensitize => 'Daten-Desensibilisierung';
	@override String get statisticsDataDesensitizeTips => 'Prozess/Paket-ID/Ziel-Domainname/Ziel-IP usw. werden durch * ersetzt und nach der Desensibilisierung gespeichert';
	@override String get records => 'Aufzeichnungen';
	@override String get requestRecords => 'Anfrageaufzeichnungen';
	@override String get netInterfaces => 'Netzwerkschnittstellen';
	@override String get netSpeed => 'Geschwindigkeit';
	@override String get memoryTrendChart => 'Speichertrend-Diagramm';
	@override String get goroutinesTrendChart => 'GoRoutines-Trend-Diagramm';
	@override String get trafficTrendChart => 'Verkehrstrend-Diagramm';
	@override String get trafficDistributionChart => 'Verkehrsverteilungs-Diagramm';
	@override String get connectionChart => 'Verbindungstrend-Diagramm';
	@override String get memoryChart => 'Speichertrend-Diagramm';
	@override String get trafficStatistics => 'Verkehrsstatistiken';
	@override String get traffic => 'Verkehr';
	@override String get trafficTotal => 'Gesamtverkehr';
	@override String get trafficProxy => 'Proxy-Verkehr';
	@override String get trafficDirect => 'Direkter Verkehr';
	@override String get website => 'Webseite';
	@override String get memory => 'Speicher';
	@override String get outboundMode => 'Ausgangsmodus';
	@override String get rule => 'Regel';
	@override String get global => 'Global';
	@override String get qrcode => 'QR-Code';
	@override String get qrcodeTooLong => 'Der Text ist zu lang zum Anzeigen';
	@override String get qrcodeShare => 'QR-Code teilen';
	@override String get textToQrcode => 'Text zu QR-Code';
	@override String get qrcodeScan => 'QR-Code scannen';
	@override String get qrcodeScanResult => 'Scan-Ergebnis';
	@override String get qrcodeScanFromImage => 'Aus Bild scannen';
	@override String get qrcodeScanResultFailed => 'Das Bild konnte nicht analysiert werden, bitte stellen Sie sicher, dass der Screenshot ein gültiger QR-Code ist';
	@override String get qrcodeScanResultEmpty => 'Scan-Ergebnis ist leer';
	@override String get screenshot => 'Screenshot';
	@override String get backupAndSync => 'Sicherung und Synchronisierung';
	@override String get autoBackup => 'Automatische Sicherung';
	@override String get noProfileGotAutoBackup => 'Wenn Daten wie [${_root.meta.myProfiles}] verloren gehen, können Sie sie aus [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] oder anderen Sicherungsquellen (wie iCloud oder Webdav usw.) wiederherstellen';
	@override String get autoBackupAddProfile => 'Nach dem Hinzufügen des Profils';
	@override String get autoBackupRemoveProfile => 'Nach dem Löschen des Profils';
	@override String get profile => 'Profil';
	@override String get currentProfile => 'Aktuelles Profil';
	@override String get importAndExport => 'Import und Export';
	@override String get import => 'Importieren';
	@override String get importFromUrl => 'Von URL importieren';
	@override String get export => 'Exportieren';
	@override String get send => 'Senden';
	@override String get receive => 'Empfangen';
	@override String get sendConfirm => 'Senden bestätigen?';
	@override String get termOfUse => 'Nutzungsbedingungen';
	@override String get privacyPolicy => 'Datenschutzbestimmungen';
	@override String get about => 'Über';
	@override String get name => 'Name';
	@override String get version => 'Version';
	@override String get notice => 'Hinweis';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Aktion:${p}\nGrund:${p1}';
	@override String get sort => 'Neu ordnen';
	@override String get novice => 'Anfängermodus';
	@override String get willCompleteAfterRebootInstall => 'Bitte starten Sie Ihr Gerät neu, um die Installation der Systemerweiterung abzuschließen';
	@override String get willCompleteAfterRebootUninstall => 'Bitte starten Sie Ihr Gerät neu, um die Deinstallation der Systemerweiterung abzuschließen';
	@override String get requestNeedsUserApproval => '1. Bitte [erlauben] Sie Karing, Systemerweiterungen in [Systemeinstellungen]-[Datenschutz und Sicherheit] zu installieren\n2. [Systemeinstellungen]-[Allgemein]-[Anmeldeobjekte-Erweiterungen]-[Netzwerkerweiterung] aktivieren Sie [karingServiceSE]\nnach Abschluss erneut verbinden';
	@override String get FullDiskAccessPermissionRequired => 'Bitte aktivieren Sie die Berechtigung [karingServiceSE] in [Systemeinstellungen]-[Datenschutz und Sicherheit]-[Festplattenvollzugriff] und verbinden Sie sich erneut';
	@override String get tvMode => 'TV-Modus';
	@override String get recommended => 'Empfohlen';
	@override String innerError({required Object p}) => 'Interner Fehler:${p}';
	@override String get logicOperation => 'Logische Operation';
	@override String get share => 'Teilen';
	@override String get candidateWord => 'Kandidatenwörter';
	@override String get keywordOrRegx => 'Schlüsselwörter/Regulär';
	@override String get importFromClipboard => 'Aus Zwischenablage importieren';
	@override String get exportToClipboard => 'In Zwischenablage exportieren';
	@override String get server => 'Server';
	@override String get ads => 'Werbung';
	@override String get adsRemove => 'Werbung entfernen';
	@override String get donate => 'Spenden';
	@override String get diversion => 'Umleitung';
	@override String get diversionRules => 'Umleitungsregeln';
	@override String get diversionCustomGroup => 'Benutzerdefinierte Umleitungsgruppe';
	@override String get urlTestCustomGroup => 'Benutzerdefinierte automatische Auswahl';
	@override String get setting => 'Einstellungen';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN-Synchronisierung';
	@override String get lanSyncNotQuitTips => 'Beenden Sie diese Oberfläche nicht, bevor die Synchronisierung abgeschlossen ist';
	@override String get deviceNoSpace => 'Nicht genügend Festplattenspeicher';
	@override String get hideSystemApp => 'System-Apps ausblenden';
	@override String get hideAppIcon => 'App-Symbole ausblenden';
	@override String get hideDockIcon => 'Dock-Symbol ausblenden';
	@override String get remark => 'Anmerkung';
	@override String get remarkExist => 'Anmerkung existiert bereits, bitte verwenden Sie einen anderen Namen';
	@override String get remarkCannotEmpty => 'Anmerkungen dürfen nicht leer sein';
	@override String get remarkTooLong => 'Anmerkungen bis zu 32 Zeichen';
	@override String get openDir => 'Dateiverzeichnis öffnen';
	@override String get fileChoose => 'Datei auswählen';
	@override String get filePathCannotEmpty => 'Der Dateipfad darf nicht leer sein';
	@override String fileNotExist({required Object p}) => 'Datei existiert nicht:${p}';
	@override String fileTypeInvalid({required Object p}) => 'Ungültiger Dateityp:${p}';
	@override String get uwpExemption => 'UWP-Netzwerkisolations-Ausnahmen';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Profil abrufen';
	@override String get addProfile => 'Profil hinzufügen';
	@override String get myProfiles => 'Meine Profile';
	@override String get profileEdit => 'Profil bearbeiten';
	@override String get profileEditUrlExist => 'URL existiert bereits, bitte verwenden Sie eine andere URL';
	@override String get profileEditReloadAfterProfileUpdate => 'Nach Profil-Update neu laden';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Latenztests nach automatischem Profil-Update starten';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN muss verbunden sein und [Nach Profil-Update neu laden] aktiviert sein';
	@override String get profileEditTestLatencyAutoRemove => 'Server, die Latenztests nicht bestehen, automatisch entfernen';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Bis zu 3 Versuche';
	@override String get profileImport => 'Profil-Datei importieren';
	@override String get profileAddUrlOrContent => 'Profil-Link hinzufügen';
	@override String get profileExists => 'Das Profil existiert bereits, bitte fügen Sie es nicht wiederholt hinzu';
	@override String get profileUrlOrContent => 'Profil-Link/Inhalt';
	@override String get profileUrlOrContentHit => 'Profil-Link/Inhalt [Erforderlich] (Unterstützt Clash, V2ray (Batch-Unterstützung), Stash, Karing, Sing-box, Shadowsocks, Sub-Profil-Links)';
	@override String get profileUrlOrContentCannotEmpty => 'Profil-Link darf nicht leer sein';
	@override String profileAddFailedFormatException({required Object p}) => 'Das Format ist falsch, bitte korrigieren Sie es und fügen Sie es erneut hinzu:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Hinzufügen fehlgeschlagen: ${p}, bitte versuchen Sie, den [UserAgent] zu ändern und es erneut zu versuchen, oder verwenden Sie den integrierten Browser des Geräts, um den Konfigurationslink zu öffnen und die vom Browser heruntergeladene Konfigurationsdatei in diese Anwendung zu importieren';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Hinzufügen fehlgeschlagen: ${p}, bitte schalten Sie den Proxy ein oder ändern Sie den aktuellen Proxy-Knoten und versuchen Sie es erneut';
	@override String get profileAddParseFailed => 'Parsen des Profils fehlgeschlagen';
	@override String get profileAddNoServerAvaliable => 'Kein Server verfügbar, stellen Sie sicher, dass der Profil-Link oder die Profil-Datei gültig ist; wenn Ihr Profil von GitHub stammt, rufen Sie den Link bitte über die Schaltfläche [Raw] auf der Seite ab';
	@override String get profileAddWrapSuccess => 'Profil erfolgreich generiert, bitte gehen Sie zu [${_root.meta.myProfiles}], um es anzusehen';
}

// Path: isp
class _TranslationsIspDe implements TranslationsIspEn {
	_TranslationsIspDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get bind => 'An [${_root.meta.isp}] binden';
	@override String unbind({required Object p}) => 'Entbinden[${p}]';
	@override String faq({required Object p}) => 'FAQ[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'Folgen[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] Ungültig oder abgelaufen';
}

// Path: permission
class _TranslationsPermissionDe implements TranslationsPermissionEn {
	_TranslationsPermissionDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Kamera';
	@override String get screen => 'Bildschirmaufnahme';
	@override String get appQuery => 'Anwendungsliste abrufen';
	@override String request({required Object p}) => 'Berechtigung [${p}] einschalten';
	@override String requestNeed({required Object p}) => 'Bitte schalten Sie die Berechtigung [${p}] ein';
}

// Path: tls
class _TranslationsTlsDe implements TranslationsTlsEn {
	_TranslationsTlsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Zertifikatsprüfung überspringen';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'TLS-Fragment aktivieren';
	@override String get fragmentSize => 'TLS-Fragmentgröße';
	@override String get fragmentSleep => 'TLS-Fragment-Ruhezeit';
	@override String get mixedCaseSNIEnable => 'Gemischte SNI-Schreibweise aktivieren';
	@override String get paddingEnable => 'TLS-Padding aktivieren';
	@override String get paddingSize => 'TLS-Padding-Größe';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeDe implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Aktuell ausgewählt';
	@override String get urltest => 'Automatische Auswahl';
	@override String get direct => 'Direkt';
	@override String get block => 'Blockieren';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeDe implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyDe implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonDe implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Profil-Update';
}

// Path: theme
class _TranslationsThemeDe implements TranslationsThemeEn {
	_TranslationsThemeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get light => 'Hell';
	@override String get dark => 'Dunkel';
	@override String get auto => 'Auto';
}

// Path: main.tray
class _TranslationsMainTrayDe implements TranslationsMainTrayEn {
	_TranslationsMainTrayDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Öffnen';
	@override String get menuExit => 'Beenden';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Installationsquelle',
			'AboutScreen.installTime' => 'Installationszeit',
			'AboutScreen.versionChannel' => 'Auto-Update-Kanal',
			'AboutScreen.updateWhenConnected' => 'Nach dem Verbinden auf Updates prüfen',
			'AboutScreen.autoDownloadPkg' => 'Update-Pakete automatisch herunterladen',
			'AboutScreen.disableAppImproveData' => 'Anwendungsverbesserungsdaten',
			'AboutScreen.disableUAReportTip' => 'Das Aktivieren von [${_root.AboutScreen.disableAppImproveData}] hilft uns, die Stabilität und Benutzerfreundlichkeit des Produkts zu verbessern; wir sammeln keine persönlichen Datenschutzdaten. Das Deaktivieren verhindert, dass die App Daten sammelt.',
			'AboutScreen.devOptions' => 'Entwickleroptionen',
			'AboutScreen.enableDebugLog' => 'Debug-Protokoll aktivieren',
			'AboutScreen.viewFilsContent' => 'Dateien anzeigen',
			'AboutScreen.enablePprof' => 'pprof aktivieren',
			'AboutScreen.pprofPanel' => 'pprof-Panel',
			'AboutScreen.allowRemoteAccessPprof' => 'Remote-Zugriff auf ${_root.AboutScreen.pprofPanel} erlauben',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Remote-Zugriff auf ${_root.SettingsScreen.htmlBoard} erlauben',
			'AboutScreen.useOriginalSBProfile' => 'Original sing-box Profil verwenden',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'Server-URL',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Darf nicht leer sein',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Login fehlgeschlagen:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Dateiliste konnte nicht abgerufen werden:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'Ungültige [Domain]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'Ungültiges [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Ungültig [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'Ungültiges [Regelset]:${p}, Die URL muss eine gültige https-URL und eine Binärdatei mit der Endung .srs/.json sein',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'Ungültiges [Regelset (integriert)]:${p}, Das Format ist geosite:xxx oder geoip:xxx oder acl:xxx, und xxx sollte ein gültiger Regelname sein',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'Ungültige [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Tipp: Nach dem Speichern gehen Sie bitte zu [${_root.meta.diversionRules}], um relevante Regeln festzulegen, andernfalls werden sie nicht wirksam',
			'DiversionRuleDetectScreen.title' => 'Erkennung von Umleitungsregeln',
			'DiversionRuleDetectScreen.rule' => 'Regel:',
			'DiversionRuleDetectScreen.outbound' => 'Proxy-Server:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Tipp: Versuchen Sie, die Regeln von oben nach unten abzugleichen. Wenn keine Regel übereinstimmt, verwenden Sie [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP darf nicht leer sein',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL darf nicht leer sein',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Nicht unterstützter Typ:${p}',
			'DnsSettingsScreen.dnsDesc' => 'Die erste Spalte der Verzögerungsdaten ist die Verzögerung der direkten Verbindungsabfrage;\nDie zweite Spalte: Schalten Sie [[Proxy-Verkehr]DNS über Proxy-Server auflösen] ein: Die Verzögerungsdaten sind die über den aktuellen Proxy-Server weitergeleitete Abfrageverzögerung; wenn [[Proxy-Verkehr]DNS über Proxy-Server auflösen] aus ist: Die Verzögerungsdaten sind die Verzögerung der direkten Verbindungsabfrage',
			'FileContentViewerScreen.title' => 'Dateiinhaltsbetrachter',
			'FileContentViewerScreen.clearFileContent' => 'Sind Sie sicher, dass Sie den Inhalt der Datei löschen möchten?',
			'FileContentViewerScreen.clearFileContentTips' => 'Sind Sie sicher, dass Sie den Inhalt der Profil-Datei löschen möchten? Das Löschen der Profil-Datei kann zu Datenverlust oder abnormalen Anwendungsfunktionen führen, bitte gehen Sie mit Vorsicht vor',
			'HomeScreen.toSelectServer' => 'Bitte wählen Sie einen Server aus',
			'HomeScreen.invalidServer' => 'ist ungültig, bitte wählen Sie erneut',
			'HomeScreen.disabledServer' => 'ist deaktiviert, bitte wählen Sie erneut',
			'HomeScreen.expiredServer' => 'Keine Server verfügbar, Profile könnten abgelaufen oder deaktiviert sein',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'Bitte richten Sie [Shortcut-Link] ein, bevor Sie ihn verwenden',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Zu viele Proxy-Server [${p}>${p1}], die Verbindung könnte aufgrund von Systemspeicherbeschränkungen fehlschlagen',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Zu viele Proxy-Server [${p}>${p1}] können langsame oder unzugängliche Verbindungen verursachen',
			'LaunchFailedScreen.invalidProcess' => 'Die App konnte nicht gestartet werden [Ungültiger Prozessname], bitte installieren Sie die App in einem separaten Verzeichnis neu',
			'LaunchFailedScreen.invalidProfile' => 'Die App konnte nicht gestartet werden [Zugriff auf das Profil fehlgeschlagen], bitte installieren Sie die App neu',
			'LaunchFailedScreen.invalidVersion' => 'Die App konnte nicht gestartet werden [Ungültige Version], bitte installieren Sie die App neu',
			'LaunchFailedScreen.systemVersionLow' => 'Die App konnte nicht gestartet werden [Systemversion zu niedrig]',
			'LaunchFailedScreen.invalidInstallPath' => 'Der Installationspfad ist ungültig, bitte installieren Sie ihn an einem gültigen Pfad neu',
			'MyProfilesMergeScreen.profilesMerge' => 'Profile zusammenführen',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Zielprofil',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Quellprofile',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Tipp: Die Umleitung der Quellprofile wird verworfen',
			'NetCheckScreen.title' => 'Netzwerkprüfung',
			'NetCheckScreen.warn' => 'Hinweis: Aufgrund der Einflüsse der Netzwerkumgebung und der Umleitungsregeln sind die Testergebnisse nicht vollständig mit den tatsächlichen Ergebnissen gleichzusetzen.',
			'NetCheckScreen.invalidDomain' => 'Ungültiger Domainname',
			'NetCheckScreen.connectivity' => 'Netzwerkkonnektivität',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Ipv4-Verbindungstest [${p}] alle fehlgeschlagen',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Ipv4-Verbindung erfolgreich',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Ipv6-Verbindungstest [${p}] alle fehlgeschlagen, Ihr Netzwerk unterstützt möglicherweise kein ipv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Ipv6-Verbindung erfolgreich',
			'NetCheckScreen.connectivityTestOk' => 'Das Netzwerk ist mit dem Internet verbunden',
			'NetCheckScreen.connectivityTestFailed' => 'Das Netzwerk ist noch nicht mit dem Internet verbunden',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Alle erfolgreich heruntergeladen',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Herunterladen oder Download fehlgeschlagen',
			'NetCheckScreen.outbound' => 'Proxy-Server',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] Verbindung erfolgreich',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] Verbindung fehlgeschlagen\nFehler:[${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS-Server',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS-Abfrage erfolgreich\nDNS-Regel:[${p2}]\nLatenz:[${p3} ms]\nAdresse:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS-Abfrage erfolgreich\n nDNS-Regel:[${p2}]\nFehler:[${p3}]',
			'NetCheckScreen.host' => 'HTTP-Verbindung',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nUmleitungsregel:[${p2}]\nProxy-Server:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'Verbindung erfolgreich',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'Verbindung fehlgeschlagen:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Domain/IP',
			'NetConnectionsFilterScreen.app' => 'App',
			'NetConnectionsFilterScreen.rule' => 'Regel',
			'NetConnectionsFilterScreen.chain' => 'Ausgehend',
			'NetConnectionsScreen.copyAsCSV' => 'In das CSV-Format kopiert',
			'NetConnectionsScreen.selectType' => 'Umleitungstyp auswählen',
			'PerAppAndroidScreen.title' => 'Pro-App-Proxy',
			'PerAppAndroidScreen.whiteListMode' => 'Whitelist-Modus',
			'PerAppAndroidScreen.whiteListModeTip' => 'Wenn aktiviert: Nur die markierten Apps sind Proxies; wenn nicht aktiviert: Nur die nicht markierten Apps sind Proxies',
			'RegionSettingsScreen.title' => 'Land oder Region',
			'RegionSettingsScreen.Regions' => 'Tipp: Bitte stellen Sie Ihr aktuelles Land oder Ihre aktuelle Region korrekt ein, da dies sonst zu Problemen bei der Netzwerkumleitung führen kann',
			'ServerSelectScreen.title' => 'Server auswählen',
			'ServerSelectScreen.autoSelectServer' => 'Automatisch den Server mit der niedrigsten Latenz auswählen',
			'ServerSelectScreen.recentUse' => 'Zuletzt verwendet',
			'ServerSelectScreen.myFav' => 'Meine Favoriten',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Der ausgewählte Server ist eine lokale Adresse und funktioniert möglicherweise nicht ordnungsgemäß:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Der ausgewählte Server ist eine IPv6-Adresse und erfordert [IPv6 aktivieren]',
			'ServerSelectScreen.selectDisabled' => 'Dieser Server wurde deaktiviert',
			'ServerSelectScreen.error404' => 'Latenzerkennung hat einen Fehler festgestellt, bitte prüfen Sie, ob eine Konfiguration mit demselben Inhalt existiert',
			'SettingsScreen.getTranffic' => 'Verkehr abrufen',
			'SettingsScreen.tutorial' => 'Tutorial',
			'SettingsScreen.commonlyUsedRulesets' => 'Häufig verwendete Regelsets',
			'SettingsScreen.htmlBoard' => 'Online-Panel',
			'SettingsScreen.dnsLeakDetection' => 'DNS-Leck-Erkennung',
			'SettingsScreen.proxyLeakDetection' => 'Proxy-Leck-Erkennung',
			'SettingsScreen.speedTest' => 'Geschwindigkeitstest',
			'SettingsScreen.rulesetDirectDownlad' => 'Regelset direkter Download',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Ungenutzte Umleitungsregeln ausblenden',
			'SettingsScreen.disableISPDiversionGroup' => '[${_root.meta.isp}] ${_root.meta.diversionRules} deaktivieren',
			'SettingsScreen.portSettingRule' => 'Regelbasiert',
			'SettingsScreen.portSettingDirectAll' => 'Alle direkt',
			'SettingsScreen.portSettingProxyAll' => 'Alle Proxy',
			'SettingsScreen.portSettingControl' => 'Steuerung und Synchronisierung',
			'SettingsScreen.portSettingCluster' => 'Cluster-Dienst',
			'SettingsScreen.modifyPort' => 'Port ändern',
			'SettingsScreen.modifyPortOccupied' => 'Der Port ist belegt, bitte verwenden Sie einen anderen Port',
			'SettingsScreen.ipStrategyTips' => 'Vor der Aktivierung bestätigen Sie bitte, dass Ihr Netzwerk IPv6 unterstützt, da sonst ein Teil des Verkehrs nicht normal zugänglich ist.',
			'SettingsScreen.tunAppendHttpProxy' => 'HTTP-Proxy an VPN anhängen',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Einige Apps umgehen das virtuelle NIC-Gerät und verbinden sich direkt mit dem HTTP-Proxy',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Domains, die den HTTP-Proxy umgehen dürfen',
			'SettingsScreen.dnsEnableRule' => 'DNS-Umleitungsregeln aktivieren',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] Auflösungskanal',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] ECS aktivieren',
			'SettingsScreen.dnsTestDomain' => 'Test-Domain',
			'SettingsScreen.dnsTestDomainInvalid' => 'Ungültige Domain',
			'SettingsScreen.dnsTypeOutbound' => 'Proxy-Server',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS-Server',
			'SettingsScreen.dnsEnableRuleTips' => 'Nach der Aktivierung wählt der Domainname den entsprechenden DNS-Server zur Auflösung gemäß den Umleitungsregeln aus',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Nach der Aktivierung von FakeIP müssen Sie Ihre App möglicherweise neu starten, wenn Sie die VPN-Verbindung trennen; diese Funktion erfordert die Aktivierung des [TUN-Modus]',
			'SettingsScreen.dnsTypeOutboundTips' => 'Domainnamen-Auflösung für [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Domainnamen-Auflösung für [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Domainnamen-Auflösung für [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Domainnamen-Auflösung für [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Server automatisch einrichten',
			'SettingsScreen.dnsResetServer' => 'Server zurücksetzen',
			'SettingsScreen.inboundDomainResolve' => 'Eingehende Domainnamen auflösen',
			'SettingsScreen.privateDirect' => 'Private Netzwerk-Direktverbindung',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Einige Domainnamen, die nicht mit Umleitungsregeln konfiguriert sind, müssen aufgelöst werden, bevor sie die IP-basierten Umleitungsregeln treffen können; diese Funktion betrifft eingehende Anfragen an den Proxy-Port [${p}]',
			'SettingsScreen.useRomoteRes' => 'Remote-Ressourcen verwenden',
			'SettingsScreen.autoAppendRegion' => 'Basisregeln automatisch anhängen',
			'SettingsScreen.autoSelect' => 'Automatisch auswählen',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => '[Front/Chain] Proxy-Server ignorieren',
			'SettingsScreen.autoSelectServerInterval' => 'Intervall für Latenzprüfungen',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Prüfintervall für den aktuellen Serverzustand',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Latenz bei Netzwerkänderungen erneut prüfen',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Den aktuellen Server nach manueller Latenzprüfung aktualisieren',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Je kürzer das Zeitintervall, desto aktueller sind die Latenzdaten des Servers, was mehr Ressourcen beansprucht und mehr Strom verbraucht',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Wenn die Prüfung fehlschlägt, wird der Server gewechselt; wenn beim Wechseln des Servers kein verfügbarer Server gefunden wird, prüft die Gruppe die Latenz erneut',
			'SettingsScreen.autoSelectServerFavFirst' => 'Vorrangig [Meine Favoriten] verwenden',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Wenn die Liste [Meine Favoriten] nicht leer ist, verwenden Sie die Server in [Meine Favoriten]',
			'SettingsScreen.autoSelectServerFilter' => 'Ungültige Server filtern',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Server-Latenzprüfungen, die fehlschlagen, werden herausgefiltert; wenn nach dem Filtern kein Server verfügbar ist, werden stattdessen die ersten [${p}] Server verwendet',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Maximale Anzahl an Servern',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Server, die diese Anzahl überschreiten, werden herausgefiltert',
			'SettingsScreen.numInvalid' => 'Ungültige Nummer',
			'SettingsScreen.hideInvalidServer' => 'Ungültige Server ausblenden',
			'SettingsScreen.sortServer' => 'Sortierung der Server',
			'SettingsScreen.sortServerTips' => 'Sortieren nach Latenz von niedrig bis hoch',
			'SettingsScreen.selectServerHideRecommand' => '[Empfohlen] ausblenden',
			'SettingsScreen.selectServerHideRecent' => '[Zuletzt verwendet] ausblenden',
			'SettingsScreen.selectServerHideFav' => '[Meine Favoriten] ausblenden',
			'SettingsScreen.homeScreen' => 'Startbildschirm',
			'SettingsScreen.theme' => 'Thema',
			'SettingsScreen.widgetsAlpha' => 'Widgets Alpha',
			'SettingsScreen.widgetsEmpty' => 'Kein Widget verfügbar',
			'SettingsScreen.backgroundImage' => 'Hintergrundbild',
			'SettingsScreen.myLink' => 'Shortcut-Link',
			'SettingsScreen.autoConnectAfterLaunch' => 'Automatische Verbindung nach dem Start',
			'SettingsScreen.autoConnectAtBoot' => 'Automatische Verbindung nach dem Systemstart',
			'SettingsScreen.autoConnectAtBootTips' => 'Systemunterstützung ist erforderlich; einige Systeme erfordern möglicherweise auch die Aktivierung von [Autostart].',
			'SettingsScreen.hideAfterLaunch' => 'Fenster nach dem Start ausblenden',
			'SettingsScreen.autoSetSystemProxy' => 'System-Proxy automatisch einstellen, wenn verbunden',
			'SettingsScreen.bypassSystemProxy' => 'Domainnamen, die den System-Proxy umgehen dürfen',
			'SettingsScreen.disconnectWhenQuit' => 'Trennen, wenn die App beendet wird',
			'SettingsScreen.autoAddToFirewall' => 'Firewall-Regeln automatisch hinzufügen',
			'SettingsScreen.excludeFromRecent' => 'In [Letzte Aufgaben] ausblenden',
			'SettingsScreen.wakeLock' => 'Wach-Sperre',
			'SettingsScreen.hideVpn' => 'VPN-Symbol ausblenden',
			'SettingsScreen.hideVpnTips' => 'Das Aktivieren von IPv6 führt dazu, dass diese Funktion fehlschlägt',
			'SettingsScreen.allowBypass' => 'Apps erlauben, VPN zu umgehen',
			'SettingsScreen.importSuccess' => 'Import erfolgreich',
			'SettingsScreen.rewriteConfirm' => 'Diese Datei wird die bestehende lokale Konfiguration überschreiben. Möchten Sie fortfahren?',
			'SettingsScreen.mergePerapp' => 'Lokale [${_root.PerAppAndroidScreen.title}] Listen zusammenführen',
			'SettingsScreen.networkShare' => 'Netzwerkfreigabe',
			'SettingsScreen.frontProxy' => 'Front/Chain Proxy',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Daten->Front/Chain Proxy-Server [Mehrere Proxy-Server: Oben nach unten]->Proxy-Server [${p}]->Zielserver',
			'SettingsScreen.allowOtherHostsConnect' => 'Anderen die Verbindung erlauben',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Aufgrund von Systembeschränkungen können Anwendungen auf diesem Gerät, die http für den Netzwerkzugriff verwenden, nach Aktivierung dieser Option möglicherweise nicht mehr ordnungsgemäß mit dem Netzwerk verbunden werden.',
			'SettingsScreen.tunAutoRoute' => 'Automatische Route',
			'SettingsScreen.tunAutoRedirect' => 'Automatische Umleitung',
			'SettingsScreen.tunStrictRoute' => 'Strikte Route',
			'SettingsScreen.tunStrictRouteTips' => 'Wenn nach dem Einschalten der Freigabe andere nicht auf dieses Gerät zugreifen können, versuchen Sie bitte, diesen Schalter auszuschalten',
			'SettingsScreen.loopbackAddress' => 'Loopback-Adresse',
			'SettingsScreen.enableCluster' => 'Socks/Http-Proxy-Cluster aktivieren',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Anderen die Verbindung zum Cluster erlauben',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Proxy-Cluster-Authentifizierung',
			'SettingsScreen.tunMode' => 'TUN-Modus',
			'SettingsScreen.tuni4Address' => 'IP-Adresse',
			'SettingsScreen.tunModeTips' => 'Der TUN-Modus übernimmt den gesamten Datenverkehr des Systems [In diesem Modus kann der System-Proxy deaktiviert bleiben]',
			'SettingsScreen.tunModeRunAsAdmin' => 'Der TUN-Modus erfordert Systemadministratorrechte, bitte starten Sie die App als Administrator neu',
			'SettingsScreen.tunStack' => 'Stack',
			'SettingsScreen.tunHijackTips' => 'Nach dem Schließen werden DNS-Anfragen von TUN direkt an den entsprechenden DNS-Server weitergeleitet',
			'SettingsScreen.launchAtStartup' => 'Beim Start ausführen',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'App beenden beim Wechsel der Systembenutzer',
			'SettingsScreen.handleScheme' => 'System-Schema-Aufruf',
			'SettingsScreen.portableMode' => 'Portabler Modus',
			'SettingsScreen.portableModeDisableTips' => 'Wenn Sie den portablen Modus beenden möchten, beenden Sie bitte [karing] und löschen Sie manuell den Ordner [profiles] im selben Verzeichnis wie [karing.exe]',
			'SettingsScreen.accessibility' => 'Barrierefreiheit',
			'SettingsScreen.handleKaringScheme' => 'karing:// Aufruf behandeln',
			'SettingsScreen.handleClashScheme' => 'clash:// Aufruf behandeln',
			'SettingsScreen.handleSingboxScheme' => 'sing-box:// Aufruf behandeln',
			'SettingsScreen.alwayOnVPN' => 'Immer-an-Verbindung',
			'SettingsScreen.disconnectAfterSleep' => 'Verbindung nach dem Systemruhezustand trennen',
			'SettingsScreen.removeSystemVPNConfig' => 'System-VPN-Konfiguration löschen',
			'SettingsScreen.timeConnectOrDisconnect' => 'Geplantes Verbinden/Trennen',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN muss verbunden sein, um wirksam zu sein; nach dem Einschalten wird [Automatischer Ruhezustand] deaktiviert',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'Das Verbindungs-/Trennungsintervall darf nicht weniger als ${p} Minuten betragen',
			'SettingsScreen.disableFontScaler' => 'Schriftarten-Skalierung deaktivieren (Neustart erforderlich)',
			'SettingsScreen.autoOrientation' => 'Mit dem Bildschirm drehen',
			'SettingsScreen.restartTakesEffect' => 'Neustart erforderlich',
			'SettingsScreen.reconnectTakesEffect' => 'Wiederverbindung erforderlich',
			'SettingsScreen.resetSettings' => 'Einstellungen zurücksetzen',
			'SettingsScreen.cleanCache' => 'Cache bereinigen',
			'SettingsScreen.cleanCacheDone' => 'Bereinigung abgeschlossen',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Version ${p} aktualisieren',
			'SettingsScreen.follow' => 'Folgen Sie uns',
			'SettingsScreen.contactUs' => 'Kontaktieren Sie uns',
			'SettingsScreen.supportUs' => 'Unterstützen Sie uns',
			'SettingsScreen.rateInApp' => 'Bewerten Sie uns',
			'SettingsScreen.rateInAppStore' => 'Bewerten Sie uns im AppStore',
			'UserAgreementScreen.privacyFirst' => 'Ihre Privatsphäre steht an erster Stelle',
			'UserAgreementScreen.agreeAndContinue' => 'Akzeptieren & Weiter',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'Die neue Version [${p}] ist bereit',
			'VersionUpdateScreen.update' => 'Zum Aktualisieren neu starten',
			'VersionUpdateScreen.cancel' => 'Nicht jetzt',
			'CommonWidget.diableAlwayOnVPN' => 'Wenn [Immer an VPN] eingeschaltet ist, schalten Sie bitte [Immer an VPN] aus und versuchen Sie erneut, eine Verbindung herzustellen',
			'CommonWidget.resetPort' => 'Bitte ändern Sie den Port auf einen anderen verfügbaren Port oder schließen Sie die Anwendung, die den Port belegt.',
			'main.tray.menuOpen' => 'Öffnen',
			'main.tray.menuExit' => 'Beenden',
			'meta.enable' => 'Aktivieren',
			'meta.disable' => 'Deaktivieren',
			'meta.bydefault' => 'Standard',
			'meta.filter' => 'Filtern',
			'meta.filterMethod' => 'Filtermethode',
			'meta.include' => 'Einschließen',
			'meta.exclude' => 'Ausschließen',
			'meta.all' => 'Alle',
			'meta.prefer' => 'Bevorzugen',
			'meta.only' => 'Nur',
			'meta.open' => 'Öffnen',
			'meta.close' => 'Schließen',
			'meta.quit' => 'Beenden',
			'meta.add' => 'Hinzufügen',
			'meta.addSuccess' => 'Erfolgreich hinzugefügt',
			'meta.addFailed' => ({required Object p}) => 'Hinzufügen fehlgeschlagen:${p}',
			'meta.remove' => 'Entfernen',
			'meta.removeConfirm' => 'Sind Sie sicher, dass Sie löschen möchten?',
			'meta.edit' => 'Bearbeiten',
			'meta.view' => 'Ansehen',
			'meta.more' => 'Mehr',
			'meta.tips' => 'Info',
			'meta.copy' => 'Kopieren',
			'meta.paste' => 'Paste',
			'meta.cut' => 'Schneiden',
			'meta.save' => 'Speichern',
			'meta.ok' => 'Ok',
			'meta.cancel' => 'Abbrechen',
			'meta.feedback' => 'Feedback',
			'meta.feedbackContent' => 'Feedback-Inhalt',
			'meta.feedbackContentHit' => 'Erforderlich, bis zu 500 Zeichen',
			'meta.feedbackContentCannotEmpty' => 'Feedback-Inhalt darf nicht leer sein',
			'meta.faq' => 'FAQ',
			'meta.htmlTools' => 'HTML-Toolset',
			'meta.download' => 'Herunterladen',
			'meta.upload' => 'Hochladen',
			'meta.downloadSpeed' => 'Download-Geschwindigkeit',
			'meta.uploadSpeed' => 'Upload-Geschwindigkeit',
			'meta.loading' => 'Wird geladen...',
			'meta.convert' => 'Konvertieren',
			'meta.check' => 'Prüfen',
			'meta.detect' => 'Erkennen',
			'meta.cache' => 'Cache',
			'meta.days' => 'Tage',
			'meta.hours' => 'Stunden',
			'meta.minutes' => 'Minuten',
			'meta.seconds' => 'Sekunden',
			'meta.milliseconds' => 'Millisekunden',
			'meta.tolerance' => 'Toleranz',
			'meta.dateTimePeriod' => 'Zeitraum',
			'meta.protocol' => 'Protokoll',
			'meta.search' => 'Suche',
			'meta.custom' => 'Benutzerdefiniert',
			'meta.inbound' => 'Eingehend',
			'meta.outbound' => 'Ausgehend',
			'meta.destination' => 'Ziel',
			'meta.outletIpByCurrentSelected' => 'Ausgangs-IP',
			'meta.outletIpByDirect' => 'Ausgangs-IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Verbinden',
			'meta.disconnect' => 'Trennen',
			'meta.reconnect' => 'Wiederverbinden',
			'meta.connected' => 'Verbunden',
			'meta.disconnected' => 'Getrennt',
			'meta.connecting' => 'Verbindung wird hergestellt',
			'meta.connectTimeout' => 'Verbindungszeitüberschreitung',
			'meta.timeout' => 'Zeitüberschreitung',
			'meta.timeoutDuration' => 'Dauer der Zeitüberschreitung',
			'meta.runDuration' => 'Laufzeit',
			'meta.latency' => 'Latenz',
			'meta.latencyTest' => 'Latenzprüfungen',
			'meta.language' => 'Sprache',
			'meta.next' => 'Weiter',
			'meta.done' => 'Fertig',
			'meta.apply' => 'Anwenden',
			'meta.refresh' => 'Aktualisieren',
			'meta.retry' => 'Wiederholen?',
			'meta.update' => 'Aktualisieren',
			'meta.updateInterval' => 'Aktualisierungsintervall',
			'meta.updateInterval5mTips' => 'Minimum: 5m',
			'meta.updateFailed' => ({required Object p}) => 'Aktualisierung fehlgeschlagen:${p}',
			'meta.samplingUnit' => 'Abtastzeiteinheit',
			'meta.queryResultCount' => 'Anzahl der Abfrageergebnisse',
			'meta.queryLimit' => ({required Object p}) => 'Bis zu ${p} Daten anzeigen',
			'meta.none' => 'Keine',
			'meta.start' => 'Start',
			'meta.pause' => 'Pause',
			'meta.reset' => 'Zurücksetzen',
			'meta.submit' => 'Senden',
			'meta.user' => 'Benutzer',
			'meta.account' => 'Konto',
			'meta.password' => 'Passwort',
			'meta.decryptPassword' => 'Entschlüsselungspasswort',
			'meta.required' => 'Erforderlich',
			'meta.type' => 'Typ',
			'meta.path' => 'Pfad',
			'meta.local' => 'Lokal',
			'meta.remote' => 'Remote',
			'meta.other' => 'Andere',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'Ungültige URL',
			'meta.urlCannotEmpty' => 'Link darf nicht leer sein',
			'meta.urlTooLong' => 'URL ist zu lang (>8182)',
			'meta.copyUrl' => 'Link kopieren',
			'meta.openUrl' => 'Link öffnen',
			'meta.shareUrl' => 'Link teilen',
			'meta.speedTestUrl' => 'Geschwindigkeitstest-URL',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'Statische IP',
			'meta.staticIPTips' => 'Sie müssen [TUN HijackDNS] oder [${_root.SettingsScreen.inboundDomainResolve}] aktivieren.',
			'meta.isp' => 'VPN-Anbieter',
			'meta.domainSuffix' => 'Domain-Suffix',
			'meta.domain' => 'Domain',
			'meta.domainKeyword' => 'Domain-Schlüsselwort',
			'meta.domainRegex' => 'Domain-Regex',
			'meta.ip' => 'IP',
			'meta.port' => 'Port',
			'meta.portRange' => 'Portbereich',
			'meta.appPackage' => 'App-Paket-ID',
			'meta.processName' => 'Prozessname',
			'meta.processPath' => 'Prozesspfad',
			'meta.processDir' => 'Prozessverzeichnis',
			'meta.systemProxy' => 'System-Proxy',
			'meta.percentage' => 'Prozentsatz',
			'meta.statistics' => 'Statistiken',
			'meta.statisticsAndAnalysis' => 'Statistiken und Analysen',
			'meta.statisticsDataDesensitize' => 'Daten-Desensibilisierung',
			'meta.statisticsDataDesensitizeTips' => 'Prozess/Paket-ID/Ziel-Domainname/Ziel-IP usw. werden durch * ersetzt und nach der Desensibilisierung gespeichert',
			'meta.records' => 'Aufzeichnungen',
			'meta.requestRecords' => 'Anfrageaufzeichnungen',
			'meta.netInterfaces' => 'Netzwerkschnittstellen',
			'meta.netSpeed' => 'Geschwindigkeit',
			'meta.memoryTrendChart' => 'Speichertrend-Diagramm',
			'meta.goroutinesTrendChart' => 'GoRoutines-Trend-Diagramm',
			'meta.trafficTrendChart' => 'Verkehrstrend-Diagramm',
			'meta.trafficDistributionChart' => 'Verkehrsverteilungs-Diagramm',
			'meta.connectionChart' => 'Verbindungstrend-Diagramm',
			'meta.memoryChart' => 'Speichertrend-Diagramm',
			'meta.trafficStatistics' => 'Verkehrsstatistiken',
			'meta.traffic' => 'Verkehr',
			'meta.trafficTotal' => 'Gesamtverkehr',
			'meta.trafficProxy' => 'Proxy-Verkehr',
			'meta.trafficDirect' => 'Direkter Verkehr',
			'meta.website' => 'Webseite',
			'meta.memory' => 'Speicher',
			'meta.outboundMode' => 'Ausgangsmodus',
			'meta.rule' => 'Regel',
			'meta.global' => 'Global',
			'meta.qrcode' => 'QR-Code',
			'meta.qrcodeTooLong' => 'Der Text ist zu lang zum Anzeigen',
			'meta.qrcodeShare' => 'QR-Code teilen',
			'meta.textToQrcode' => 'Text zu QR-Code',
			'meta.qrcodeScan' => 'QR-Code scannen',
			'meta.qrcodeScanResult' => 'Scan-Ergebnis',
			'meta.qrcodeScanFromImage' => 'Aus Bild scannen',
			'meta.qrcodeScanResultFailed' => 'Das Bild konnte nicht analysiert werden, bitte stellen Sie sicher, dass der Screenshot ein gültiger QR-Code ist',
			'meta.qrcodeScanResultEmpty' => 'Scan-Ergebnis ist leer',
			'meta.screenshot' => 'Screenshot',
			'meta.backupAndSync' => 'Sicherung und Synchronisierung',
			'meta.autoBackup' => 'Automatische Sicherung',
			'meta.noProfileGotAutoBackup' => 'Wenn Daten wie [${_root.meta.myProfiles}] verloren gehen, können Sie sie aus [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] oder anderen Sicherungsquellen (wie iCloud oder Webdav usw.) wiederherstellen',
			'meta.autoBackupAddProfile' => 'Nach dem Hinzufügen des Profils',
			'meta.autoBackupRemoveProfile' => 'Nach dem Löschen des Profils',
			'meta.profile' => 'Profil',
			'meta.currentProfile' => 'Aktuelles Profil',
			'meta.importAndExport' => 'Import und Export',
			'meta.import' => 'Importieren',
			'meta.importFromUrl' => 'Von URL importieren',
			'meta.export' => 'Exportieren',
			'meta.send' => 'Senden',
			'meta.receive' => 'Empfangen',
			'meta.sendConfirm' => 'Senden bestätigen?',
			'meta.termOfUse' => 'Nutzungsbedingungen',
			'meta.privacyPolicy' => 'Datenschutzbestimmungen',
			'meta.about' => 'Über',
			'meta.name' => 'Name',
			'meta.version' => 'Version',
			'meta.notice' => 'Hinweis',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Aktion:${p}\nGrund:${p1}',
			'meta.sort' => 'Neu ordnen',
			'meta.novice' => 'Anfängermodus',
			'meta.willCompleteAfterRebootInstall' => 'Bitte starten Sie Ihr Gerät neu, um die Installation der Systemerweiterung abzuschließen',
			'meta.willCompleteAfterRebootUninstall' => 'Bitte starten Sie Ihr Gerät neu, um die Deinstallation der Systemerweiterung abzuschließen',
			'meta.requestNeedsUserApproval' => '1. Bitte [erlauben] Sie Karing, Systemerweiterungen in [Systemeinstellungen]-[Datenschutz und Sicherheit] zu installieren\n2. [Systemeinstellungen]-[Allgemein]-[Anmeldeobjekte-Erweiterungen]-[Netzwerkerweiterung] aktivieren Sie [karingServiceSE]\nnach Abschluss erneut verbinden',
			'meta.FullDiskAccessPermissionRequired' => 'Bitte aktivieren Sie die Berechtigung [karingServiceSE] in [Systemeinstellungen]-[Datenschutz und Sicherheit]-[Festplattenvollzugriff] und verbinden Sie sich erneut',
			'meta.tvMode' => 'TV-Modus',
			'meta.recommended' => 'Empfohlen',
			'meta.innerError' => ({required Object p}) => 'Interner Fehler:${p}',
			'meta.logicOperation' => 'Logische Operation',
			'meta.share' => 'Teilen',
			'meta.candidateWord' => 'Kandidatenwörter',
			'meta.keywordOrRegx' => 'Schlüsselwörter/Regulär',
			'meta.importFromClipboard' => 'Aus Zwischenablage importieren',
			'meta.exportToClipboard' => 'In Zwischenablage exportieren',
			'meta.server' => 'Server',
			'meta.ads' => 'Werbung',
			'meta.adsRemove' => 'Werbung entfernen',
			'meta.donate' => 'Spenden',
			'meta.diversion' => 'Umleitung',
			'meta.diversionRules' => 'Umleitungsregeln',
			'meta.diversionCustomGroup' => 'Benutzerdefinierte Umleitungsgruppe',
			'meta.urlTestCustomGroup' => 'Benutzerdefinierte automatische Auswahl',
			'meta.setting' => 'Einstellungen',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN-Synchronisierung',
			'meta.lanSyncNotQuitTips' => 'Beenden Sie diese Oberfläche nicht, bevor die Synchronisierung abgeschlossen ist',
			'meta.deviceNoSpace' => 'Nicht genügend Festplattenspeicher',
			'meta.hideSystemApp' => 'System-Apps ausblenden',
			'meta.hideAppIcon' => 'App-Symbole ausblenden',
			'meta.hideDockIcon' => 'Dock-Symbol ausblenden',
			'meta.remark' => 'Anmerkung',
			'meta.remarkExist' => 'Anmerkung existiert bereits, bitte verwenden Sie einen anderen Namen',
			'meta.remarkCannotEmpty' => 'Anmerkungen dürfen nicht leer sein',
			'meta.remarkTooLong' => 'Anmerkungen bis zu 32 Zeichen',
			'meta.openDir' => 'Dateiverzeichnis öffnen',
			'meta.fileChoose' => 'Datei auswählen',
			'meta.filePathCannotEmpty' => 'Der Dateipfad darf nicht leer sein',
			'meta.fileNotExist' => ({required Object p}) => 'Datei existiert nicht:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Ungültiger Dateityp:${p}',
			'meta.uwpExemption' => 'UWP-Netzwerkisolations-Ausnahmen',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Profil abrufen',
			'meta.addProfile' => 'Profil hinzufügen',
			'meta.myProfiles' => 'Meine Profile',
			'meta.profileEdit' => 'Profil bearbeiten',
			'meta.profileEditUrlExist' => 'URL existiert bereits, bitte verwenden Sie eine andere URL',
			'meta.profileEditReloadAfterProfileUpdate' => 'Nach Profil-Update neu laden',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Latenztests nach automatischem Profil-Update starten',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN muss verbunden sein und [Nach Profil-Update neu laden] aktiviert sein',
			'meta.profileEditTestLatencyAutoRemove' => 'Server, die Latenztests nicht bestehen, automatisch entfernen',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Bis zu 3 Versuche',
			'meta.profileImport' => 'Profil-Datei importieren',
			'meta.profileAddUrlOrContent' => 'Profil-Link hinzufügen',
			'meta.profileExists' => 'Das Profil existiert bereits, bitte fügen Sie es nicht wiederholt hinzu',
			'meta.profileUrlOrContent' => 'Profil-Link/Inhalt',
			'meta.profileUrlOrContentHit' => 'Profil-Link/Inhalt [Erforderlich] (Unterstützt Clash, V2ray (Batch-Unterstützung), Stash, Karing, Sing-box, Shadowsocks, Sub-Profil-Links)',
			'meta.profileUrlOrContentCannotEmpty' => 'Profil-Link darf nicht leer sein',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Das Format ist falsch, bitte korrigieren Sie es und fügen Sie es erneut hinzu:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Hinzufügen fehlgeschlagen: ${p}, bitte versuchen Sie, den [UserAgent] zu ändern und es erneut zu versuchen, oder verwenden Sie den integrierten Browser des Geräts, um den Konfigurationslink zu öffnen und die vom Browser heruntergeladene Konfigurationsdatei in diese Anwendung zu importieren',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Hinzufügen fehlgeschlagen: ${p}, bitte schalten Sie den Proxy ein oder ändern Sie den aktuellen Proxy-Knoten und versuchen Sie es erneut',
			'meta.profileAddParseFailed' => 'Parsen des Profils fehlgeschlagen',
			'meta.profileAddNoServerAvaliable' => 'Kein Server verfügbar, stellen Sie sicher, dass der Profil-Link oder die Profil-Datei gültig ist; wenn Ihr Profil von GitHub stammt, rufen Sie den Link bitte über die Schaltfläche [Raw] auf der Seite ab',
			'meta.profileAddWrapSuccess' => 'Profil erfolgreich generiert, bitte gehen Sie zu [${_root.meta.myProfiles}], um es anzusehen',
			'diversionRulesKeep' => '[${_root.meta.isp}] ${_root.meta.diversionRules} beibehalten',
			'diversionCustomGroupPreset' => 'Voreingestellte [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Hinweis: Aktivierte Elemente werden zu [${_root.meta.diversionCustomGroup}] und [${_root.meta.diversionRules}] hinzugefügt/überschrieben',
			'diversionCustomGroupAddTips' => 'Hinweis: Nach dem Hinzufügen müssen Sie die Reihenfolge möglicherweise manuell anpassen, da die neu hinzugefügte Umleitung sonst möglicherweise nicht wirksam wird',
			'rulesetEnableTips' => 'Tipp: Nach dem Einschalten der Optionen gehen Sie bitte zu [${_root.meta.diversionRules}], um die entsprechenden Regeln festzulegen, andernfalls werden sie nicht wirksam',
			'ispUserAgentTips' => '[${_root.meta.isp}] sendet Daten verschiedener Abonnementtypen basierend auf dem [UserAgent] in der [HTTP]-Anfrage',
			'ispDiversionTips' => '[${_root.meta.isp}] bietet Verkehrs-Umleitungsregeln; [V2Ray]-Abonnements unterstützen keine Verkehrs-Umleitungsregeln',
			'isp.bind' => 'An [${_root.meta.isp}] binden',
			'isp.unbind' => ({required Object p}) => 'Entbinden[${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'Folgen[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] Ungültig oder abgelaufen',
			'permission.camera' => 'Kamera',
			'permission.screen' => 'Bildschirmaufnahme',
			'permission.appQuery' => 'Anwendungsliste abrufen',
			'permission.request' => ({required Object p}) => 'Berechtigung [${p}] einschalten',
			'permission.requestNeed' => ({required Object p}) => 'Bitte schalten Sie die Berechtigung [${p}] ein',
			'tls.insecure' => 'Zertifikatsprüfung überspringen',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'TLS-Fragment aktivieren',
			'tls.fragmentSize' => 'TLS-Fragmentgröße',
			'tls.fragmentSleep' => 'TLS-Fragment-Ruhezeit',
			_ => null,
		} ?? switch (path) {
			'tls.mixedCaseSNIEnable' => 'Gemischte SNI-Schreibweise aktivieren',
			'tls.paddingEnable' => 'TLS-Padding aktivieren',
			'tls.paddingSize' => 'TLS-Padding-Größe',
			'outboundRuleMode.currentSelected' => 'Aktuell ausgewählt',
			'outboundRuleMode.urltest' => 'Automatische Auswahl',
			'outboundRuleMode.direct' => 'Direkt',
			'outboundRuleMode.block' => 'Blockieren',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Profil-Update',
			'theme.light' => 'Hell',
			'theme.dark' => 'Dunkel',
			'theme.auto' => 'Auto',
			'downloadProxyStrategy' => 'Download-Kanal',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Verbinden Sie sich über den Proxy-Server mit dem DNS-Server, um den Domainnamen aufzulösen\n[${_root.dnsProxyResolveMode.direct}]: Verbinden Sie sich direkt mit dem DNS-Server, um den Domainnamen aufzulösen\n[${_root.dnsProxyResolveMode.fakeip}]: Der Proxy-Server löst den Domainnamen in Ihrem Namen auf; wenn Sie die VPN-Verbindung trennen, muss Ihre Anwendung möglicherweise neu gestartet werden; nur wirksam für [TUN]-eingehenden Verkehr',
			'routeFinal' => 'final',
			'protocolSniff' => 'Protokoll-Sniff',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Bitte verwenden Sie [${p}]',
			'turnOffPrivateDirect' => 'Bitte schalten Sie zuerst [Private Netzwerk-Direktverbindung] ein',
			'targetConnectFailed' => ({required Object p}) => 'Verbindung zu [${p}] fehlgeschlagen. Bitte stellen Sie sicher, dass sich die Geräte im selben LAN befinden',
			'appleTVSync' => 'Die aktuelle Kernkonfiguration mit Apple TV - Karing synchronisieren',
			'appleTVSyncDone' => 'Synchronisierung abgeschlossen. Bitte gehen Sie zu Apple TV - Karing, um die Verbindung zu starten/neu zu starten',
			'appleTVRemoveCoreConfig' => 'Apple TV - Karing Kernkonfiguration löschen',
			'appleTVRemoveCoreConfigDone' => 'Kernkonfiguration von Apple TV - Karing gelöscht; VPN-Dienst getrennt',
			'appleTVUrlInvalid' => 'Ungültige URL, bitte öffnen Sie Apple TV - Karing und scannen Sie den von Karing angezeigten QR-Code',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] hat diese Funktion nicht, bitte aktualisieren Sie und versuchen Sie es erneut',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'Die Hauptversion des Kerns stimmt nicht überein, bitte aktualisieren Sie [${p}] und versuchen Sie es erneut',
			'remoteProfileEditConfirm' => 'Nachdem das Profil aktualisiert wurde, werden die Knotenänderungen wiederhergestellt. Fortfahren?',
			'mustBeValidHttpsURL' => 'Muss eine gültige https-URL sein',
			'fileNotExistReinstall' => ({required Object p}) => 'Datei fehlt [${p}], bitte neu installieren',
			'noNetworkConnect' => 'Keine Internetverbindung',
			'sudoPassword' => 'sudo-Passwort (erforderlich für den TUN-Modus)',
			'turnOffNetworkBeforeInstall' => 'Es wird empfohlen, vor der Installation des Updates in den [Flugmodus] zu wechseln',
			'latencyTestResolveIP' => 'Bei manueller Prüfung die Outlet-IP auflösen',
			'latencyTestConcurrency' => 'Gleichzeitigkeit',
			'edgeRuntimeNotInstalled' => 'Das aktuelle Gerät hat die Edge WebView2-Laufzeitumgebung nicht installiert, daher kann die Seite nicht angezeigt werden. Bitte laden Sie die Edge WebView2-Laufzeitumgebung (x64) herunter und installieren Sie sie, starten Sie die App neu und versuchen Sie es erneut.',
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
