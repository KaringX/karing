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
class TranslationsIt with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsIt _root = this; // ignore: unused_field

	@override 
	TranslationsIt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsIt(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenIt AboutScreen = _TranslationsAboutScreenIt._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenIt BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenIt._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenIt DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenIt._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenIt DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenIt._(_root);
	@override late final _TranslationsDiversionRulesScreenIt DiversionRulesScreen = _TranslationsDiversionRulesScreenIt._(_root);
	@override late final _TranslationsDnsSettingsScreenIt DnsSettingsScreen = _TranslationsDnsSettingsScreenIt._(_root);
	@override late final _TranslationsFileContentViewerScreenIt FileContentViewerScreen = _TranslationsFileContentViewerScreenIt._(_root);
	@override late final _TranslationsHomeScreenIt HomeScreen = _TranslationsHomeScreenIt._(_root);
	@override late final _TranslationsLaunchFailedScreenIt LaunchFailedScreen = _TranslationsLaunchFailedScreenIt._(_root);
	@override late final _TranslationsMyProfilesMergeScreenIt MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenIt._(_root);
	@override late final _TranslationsNetCheckScreenIt NetCheckScreen = _TranslationsNetCheckScreenIt._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenIt NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenIt._(_root);
	@override late final _TranslationsNetConnectionsScreenIt NetConnectionsScreen = _TranslationsNetConnectionsScreenIt._(_root);
	@override late final _TranslationsPerAppAndroidScreenIt PerAppAndroidScreen = _TranslationsPerAppAndroidScreenIt._(_root);
	@override late final _TranslationsRegionSettingsScreenIt RegionSettingsScreen = _TranslationsRegionSettingsScreenIt._(_root);
	@override late final _TranslationsServerSelectScreenIt ServerSelectScreen = _TranslationsServerSelectScreenIt._(_root);
	@override late final _TranslationsSettingsScreenIt SettingsScreen = _TranslationsSettingsScreenIt._(_root);
	@override late final _TranslationsUserAgreementScreenIt UserAgreementScreen = _TranslationsUserAgreementScreenIt._(_root);
	@override late final _TranslationsVersionUpdateScreenIt VersionUpdateScreen = _TranslationsVersionUpdateScreenIt._(_root);
	@override late final _TranslationsCommonWidgetIt CommonWidget = _TranslationsCommonWidgetIt._(_root);
	@override late final _TranslationsMainIt main = _TranslationsMainIt._(_root);
	@override late final _TranslationsMetaIt meta = _TranslationsMetaIt._(_root);
	@override String get diversionRulesKeep => 'Mantieni [${_root.meta.diversionRules}] di [${_root.meta.isp}]';
	@override String get diversionCustomGroupPreset => 'Predefinito [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Nota: gli elementi abilitati verranno aggiunti/sovrascritti a [${_root.meta.diversionCustomGroup}] e [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Nota: dopo l\'aggiunta, potrebbe essere necessario regolare manualmente l\'ordine, altrimenti la diversione appena aggiunta potrebbe non avere effetto';
	@override String get rulesetEnableTips => 'Suggerimento: dopo aver attivato le opzioni, vai su [${_root.meta.diversionRules}] per impostare le regole pertinenti, altrimenti non avranno effetto';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] invierà dati di diversi tipi di abbonamento in base allo [UserAgent] nella richiesta [HTTP]';
	@override String get ispDiversionTips => '[${_root.meta.isp}] fornisce regole di diversione del traffico; gli abbonamenti di tipo [V2Ray] non supportano le regole di diversione del traffico';
	@override late final _TranslationsIspIt isp = _TranslationsIspIt._(_root);
	@override late final _TranslationsPermissionIt permission = _TranslationsPermissionIt._(_root);
	@override late final _TranslationsTlsIt tls = _TranslationsTlsIt._(_root);
	@override late final _TranslationsOutboundRuleModeIt outboundRuleMode = _TranslationsOutboundRuleModeIt._(_root);
	@override late final _TranslationsDnsProxyResolveModeIt dnsProxyResolveMode = _TranslationsDnsProxyResolveModeIt._(_root);
	@override late final _TranslationsProxyStrategyIt proxyStrategy = _TranslationsProxyStrategyIt._(_root);
	@override late final _TranslationsReloadReasonIt reloadReason = _TranslationsReloadReasonIt._(_root);
	@override late final _TranslationsThemeIt theme = _TranslationsThemeIt._(_root);
	@override String get downloadProxyStrategy => 'Canale Download';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: connettiti al server DNS tramite il server proxy per risolvere il nome di dominio\n[${_root.dnsProxyResolveMode.direct}]: connettiti direttamente al server DNS per risolvere il nome di dominio\n[${_root.dnsProxyResolveMode.fakeip}]: il server proxy risolve il nome di dominio per tuo conto; se disconnetti la connessione VPN, l\'applicazione potrebbe dover essere riavviata; efficace solo per il traffico in entrata [TUN]';
	@override String get routeFinal => 'finale';
	@override String get protocolSniff => 'Sniff Protocollo';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Usa [${p}]';
	@override String get turnOffPrivateDirect => 'Attiva prima [Connessione diretta rete privata]';
	@override String targetConnectFailed({required Object p}) => 'Impossibile connettersi a [${p}]. Assicurati che i dispositivi siano nella stessa LAN';
	@override String get appleTVSync => 'Sincronizza l\'attuale configurazione core su Apple TV - Karing';
	@override String get appleTVSyncDone => 'Sincronizzazione completata. Vai su Apple TV - Karing per avviare la connessione/riavviare la connessione';
	@override String get appleTVRemoveCoreConfig => 'Elimina Configurazione Core Apple TV - Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Configurazione Core di Apple TV - Karing eliminata; servizio VPN disconnesso';
	@override String get appleTVUrlInvalid => 'URL non valido, apri Apple TV - Karing e scansiona il codice QR visualizzato da Karing';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] non ha questa funzione, aggiorna e riprova';
	@override String appleCoreVersionNotMatch({required Object p}) => 'La versione principale del core non corrisponde, aggiorna [${p}] e riprova';
	@override String get remoteProfileEditConfirm => 'Dopo l\'aggiornamento del Profilo, le modifiche ai nodi verranno ripristinate. Continuare?';
	@override String get mustBeValidHttpsURL => 'Deve essere un URL https Valido';
	@override String fileNotExistReinstall({required Object p}) => 'File mancante [${p}], reinstalla';
	@override String get noNetworkConnect => 'Nessuna connessione Internet';
	@override String get sudoPassword => 'password sudo (richiesta per la modalità TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Si consiglia di passare alla [Modalità Aereo] prima di installare l\'aggiornamento';
	@override String get latencyTestResolveIP => 'Durante il controllo manuale, risolvi l\'IP di uscita';
	@override String get latencyTestConcurrency => 'Concorrenza';
	@override String get edgeRuntimeNotInstalled => 'L\'attuale dispositivo non ha installato il runtime Edge WebView2, quindi la pagina non può essere visualizzata. Scarica e installa il runtime Edge WebView2 (x64), riavvia l\'app e riprova.';
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
	};
}

// Path: AboutScreen
class _TranslationsAboutScreenIt implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Riferimento di Installazione';
	@override String get installTime => 'Ora di Installazione';
	@override String get versionChannel => 'Canale di Aggiornamento Automatico';
	@override String get updateWhenConnected => 'Controlla gli aggiornamenti dopo la connessione';
	@override String get autoDownloadPkg => 'Scarica Automaticamente i Pacchetti di Aggiornamento';
	@override String get disableAppImproveData => 'Dati di Miglioramento dell\'Applicazione';
	@override String get disableUAReportTip => 'L\'abilitazione di [${_root.AboutScreen.disableAppImproveData}] ci aiuta a migliorare la stabilità e l\'usabilità del prodotto; non raccogliamo dati sulla privacy personale. La disattivazione impedirà all\'app di raccogliere qualsiasi dato.';
	@override String get devOptions => 'Opzioni Sviluppatore';
	@override String get enableDebugLog => 'Abilita Log di Debug';
	@override String get viewFilsContent => 'Visualizza File';
	@override String get enablePprof => 'Abilita pprof';
	@override String get pprofPanel => 'Pannello pprof';
	@override String get allowRemoteAccessPprof => 'Consenti l\'accesso remoto a ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Consenti l\'accesso remoto a ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Usa Profilo sing-box originale';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenIt implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'URL del Server';
	@override String get webdavRequired => 'Non può essere vuoto';
	@override String get webdavLoginFailed => 'Accesso fallito:';
	@override String get webdavListFailed => 'Impossibile ottenere l\'elenco dei file:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenIt implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => '[Dominio] non valido:${p}';
	@override String invalidIpCidr({required Object p}) => '[IP Cidr] non valido:${p}';
	@override String invalid({required Object p0, required Object p}) => 'Non valido [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => '[Set di Regole] non valido:${p}, l\'URL deve essere un URL https valido e un file binario con estensione .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => '[Set di Regole (integrato)] non valido:${p}, il formato è geosite:xxx o geoip:xxx o acl:xxx, e xxx deve essere un nome di regola valido';
	@override String invalidPackageId({required Object p}) => '[${_root.meta.appPackage}] non valido:${p}';
	@override String get setDiversionRule => 'Suggerimento: dopo il salvataggio, vai su [${_root.meta.diversionRules}] per impostare le regole pertinenti, altrimenti non avranno effetto';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenIt implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rilevamento Regole di Diversione';
	@override String get rule => 'Regola:';
	@override String get outbound => 'Server Proxy:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenIt implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Suggerimento: prova a far corrispondere le regole dall\'alto verso il basso. Se nessuna regola corrisponde, usa [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenIt implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'L\'ISP non può essere vuoto';
	@override String get urlCanNotEmpty => 'L\'URL non può essere vuoto';
	@override String error({required Object p}) => 'Tipo non supportato:${p}';
	@override String get dnsDesc => 'La prima colonna dei dati di ritardo è il ritardo della query di connessione diretta;\nLa seconda colonna: attiva [[Traffico Proxy]Risolvi DNS tramite server proxy]: i dati di ritardo sono il ritardo della query inoltrata tramite l\'attuale server proxy; se [[Traffico Proxy]Risolvi DNS tramite server proxy] è disattivato: i dati di ritardo sono il ritardo della query di connessione diretta';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenIt implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visualizzatore Contenuto File';
	@override String get clearFileContent => 'Sei sicuro di voler cancellare il contenuto del file?';
	@override String get clearFileContentTips => 'Sei sicuro di voler cancellare il contenuto del file di Profilo? La cancellazione del file di Profilo può causare la perdita di dati o funzioni anomale dell\'applicazione, procedere con cautela';
}

// Path: HomeScreen
class _TranslationsHomeScreenIt implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Seleziona un Server';
	@override String get invalidServer => 'non è valido, seleziona di nuovo';
	@override String get disabledServer => 'è disabilitato, seleziona di nuovo';
	@override String get expiredServer => 'Nessun server disponibile, i profili potrebbero essere scaduti o disabilitati';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'Configura [Link Rapido] prima di usarlo';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Troppi server proxy [${p}>${p1}], la connessione potrebbe fallire a causa delle limitazioni della memoria di sistema';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Troppi server proxy [${p}>${p1}] possono causare connessioni lente o inaccessibili';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenIt implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'L\'app non è riuscita ad avviarsi [Nome processo non valido], reinstalla l\'app in una directory separata';
	@override String get invalidProfile => 'L\'app non è riuscita ad avviarsi [Accesso al profilo fallito], reinstalla l\'app';
	@override String get invalidVersion => 'L\'app non è riuscita ad avviarsi [Versione non valida], reinstalla l\'app';
	@override String get systemVersionLow => 'L\'app non è riuscita ad avviarsi [versione del sistema troppo bassa]';
	@override String get invalidInstallPath => 'Il percorso di installazione non è valido, reinstalla l\'app in un percorso valido';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenIt implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Unisci Profili';
	@override String get profilesMergeTarget => 'Profilo di Destinazione';
	@override String get profilesMergeSource => 'Profili Sorgente';
	@override String get profilesMergeTips => 'Suggerimento: la diversione dei profili sorgente verrà scartata';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenIt implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Controllo Rete';
	@override String get warn => 'Nota: a causa dell\'influenza dell\'ambiente di rete e delle regole di diversione, i risultati del test non sono completamente equivalenti ai risultati effettivi.';
	@override String get invalidDomain => 'Nome Dominio Non Valido';
	@override String get connectivity => 'Connettività di Rete';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Test connessione Ipv4 [${p}] tutti falliti';
	@override String get connectivityTestIpv4Ok => 'Connessione Ipv4 riuscita';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Test connessione Ipv6 [${p}] tutti falliti, la tua rete potrebbe non supportare ipv6';
	@override String get connectivityTestIpv6Ok => 'Connessione Ipv6 riuscita';
	@override String get connectivityTestOk => 'La rete è connessa a Internet';
	@override String get connectivityTestFailed => 'La rete non è ancora connessa a Internet';
	@override String get remoteRulesetsDownloadOk => 'Tutti scaricati con successo';
	@override String get remoteRulesetsDownloadNotOk => 'Download in corso o fallito';
	@override String get outbound => 'Server Proxy';
	@override String outboundOk({required Object p}) => 'Connessione [${p}] riuscita';
	@override String outboundFailed({required Object p1, required Object p2}) => 'Connessione [${p1}] fallita\nErrore:[${p2}]';
	@override String get dnsServer => 'Server DNS';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Query DNS [${p1}] riuscita\nRegola DNS:[${p2}]\nLatenza:[${p3} ms]\nIndirizzo:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => 'Query DNS [${p1}] riuscita\n nRegola DNS:[${p2}]\nErrore:[${p3}]';
	@override String get host => 'Connessione HTTP';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nRegolaDiversione:[${p2}]\nServer Proxy:[${p3}]';
	@override String get hostConnectionOk => 'connessione riuscita';
	@override String hostConnectionFailed({required Object p}) => 'connessione fallita:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenIt implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Dominio/IP';
	@override String get app => 'App';
	@override String get rule => 'Regola';
	@override String get chain => 'In uscita';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenIt implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Copiato in formato CSV';
	@override String get selectType => 'Seleziona Tipo di Diversione';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenIt implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proxy per App';
	@override String get whiteListMode => 'Modalità Whitelist';
	@override String get whiteListModeTip => 'Se abilitata: solo le app selezionate usano il proxy; se disabilitata: solo le app non selezionate usano il proxy';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenIt implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paese o Regione';
	@override String get Regions => 'Suggerimento: imposta correttamente il tuo paese o regione attuale, altrimenti potrebbero verificarsi problemi di diversione della rete';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenIt implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seleziona Server';
	@override String get autoSelectServer => 'Seleziona automaticamente il server con la latenza più bassa';
	@override String get recentUse => 'Usati Recentemente';
	@override String get myFav => 'I Miei Preferiti';
	@override String selectLocal({required Object p}) => 'Il server selezionato è un indirizzo locale e potrebbe non funzionare correttamente:${p}';
	@override String get selectRequireEnableIPv6 => 'Il server selezionato è un indirizzo IPv6 e richiede [Abilita IPv6]';
	@override String get selectDisabled => 'Questo server è stato disabilitato';
	@override String get error404 => 'Il rilevamento della latenza ha riscontrato un errore, controlla se esiste una configurazione con lo stesso contenuto';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenIt implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Ottieni Traffico';
	@override String get tutorial => 'Tutorial';
	@override String get commonlyUsedRulesets => 'Set di Regole Comuni';
	@override String get htmlBoard => 'Pannello Online';
	@override String get dnsLeakDetection => 'Rilevamento Leak DNS';
	@override String get proxyLeakDetection => 'Rilevamento Leak Proxy';
	@override String get speedTest => 'Test Velocità';
	@override String get rulesetDirectDownlad => 'Download Diretto Set di Regole';
	@override String get hideUnusedDiversionGroup => 'Nascondi Regole di Diversione Non Utilizzate';
	@override String get disableISPDiversionGroup => 'Disabilita [${_root.meta.diversionRules}] di [${_root.meta.isp}]';
	@override String get portSettingRule => 'Basato su Regole';
	@override String get portSettingDirectAll => 'Diretto per Tutti';
	@override String get portSettingProxyAll => 'Proxy per Tutti';
	@override String get portSettingControl => 'Controllo e Sincronizzazione';
	@override String get portSettingCluster => 'Servizio Cluster';
	@override String get modifyPort => 'Modifica Porta';
	@override String get modifyPortOccupied => 'La porta è occupata, usa un\'altra porta';
	@override String get ipStrategyTips => 'Prima di abilitare, conferma che la tua rete supporti IPv6, altrimenti parte del traffico non sarà accessibile normalmente.';
	@override String get tunAppendHttpProxy => 'Aggiungi Proxy HTTP alla VPN';
	@override String get tunAppendHttpProxyTips => 'Alcune app bypassano il dispositivo NIC virtuale e si connettono direttamente al proxy HTTP';
	@override String get tunAllowBypassHttpProxyDomain => 'Domini autorizzati a bypassare il proxy HTTP';
	@override String get dnsEnableRule => 'Abilita regole di Diversione DNS';
	@override String get dnsEnableProxyResolveMode => 'Canale di Risoluzione [${_root.meta.trafficProxy}]';
	@override String get dnsEnableClientSubnet => 'Abilita ECS su [${_root.meta.trafficDirect}]';
	@override String get dnsTestDomain => 'Dominio di Test';
	@override String get dnsTestDomainInvalid => 'Dominio Non Valido';
	@override String get dnsTypeOutbound => 'Server Proxy';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'Server DNS';
	@override String get dnsEnableRuleTips => 'Dopo l\'abilitazione, il nome di dominio selezionerà il server DNS corrispondente per la risoluzione in base alle regole di diversione';
	@override String get dnsEnableFakeIpTips => 'Dopo aver abilitato FakeIP, se ti disconnetti dalla VPN, l\'app potrebbe dover essere riavviata; questa funzione richiede l\'abilitazione della [modalità TUN]';
	@override String get dnsTypeOutboundTips => 'Risoluzione del nome di dominio per [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Risoluzione del nome di dominio per [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Risoluzione del nome di dominio per [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Risoluzione del nome di dominio per [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Configurazione Automatica Server';
	@override String get dnsResetServer => 'Ripristina Server';
	@override String get inboundDomainResolve => 'Risolvi nomi di Dominio in entrata';
	@override String get privateDirect => 'Connessione Diretta Rete Privata';
	@override String inboundDomainResolveTips({required Object p}) => 'Alcuni nomi di dominio che non sono configurati con regole di diversione devono essere risolti prima di poter colpire le regole di diversione basate su IP; questa funzione influisce sulle richieste in entrata alla porta proxy [${p}]';
	@override String get useRomoteRes => 'Usa Risorse Remote';
	@override String get autoAppendRegion => 'Allega automaticamente regole di base';
	@override String get autoSelect => 'Selezione Automatica';
	@override String get autoSelectServerIgnorePerProxyServer => 'Ignora i server Proxy [Front/Chain]';
	@override String get autoSelectServerInterval => 'Intervallo Controlli Latenza';
	@override String get autoSelectSelectedHealthCheckInterval => 'Intervallo di controllo integrità del server attuale';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Ricontrolla Latenza al Cambio di Rete';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Aggiorna il Server Attuale dopo il Controllo Manuale della Latenza';
	@override String get autoSelectServerIntervalTips => 'Più breve è l\'intervallo di tempo, più tempestivamente vengono aggiornati i dati sulla latenza del server, il che occuperà più risorse e consumerà più energia';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Se il controllo fallisce, il server viene cambiato; se non viene trovato alcun server disponibile durante il cambio, il gruppo ricontrollerà la latenza';
	@override String get autoSelectServerFavFirst => 'Priorità a [I Miei Preferiti]';
	@override String get autoSelectServerFavFirstTips => 'Se l\'elenco [I Miei Preferiti] non è vuoto, usa i server in [I Miei Preferiti]';
	@override String get autoSelectServerFilter => 'Filtra Server Non Validi';
	@override String autoSelectServerFilterTips({required Object p}) => 'I controlli di latenza del server che falliscono verranno filtrati; se nessun server è disponibile dopo il filtraggio, verranno utilizzati i primi [${p}] server';
	@override String get autoSelectServerLimitedNum => 'Numero massimo di server';
	@override String get autoSelectServerLimitedNumTips => 'I server che superano questo numero verranno filtrati';
	@override String get numInvalid => 'Numero non valido';
	@override String get hideInvalidServer => 'Nascondi Server Non Validi';
	@override String get sortServer => 'Ordinamento Server';
	@override String get sortServerTips => 'Ordina per latenza dalla più bassa alla più alta';
	@override String get selectServerHideRecommand => 'Nascondi [Consigliati]';
	@override String get selectServerHideRecent => 'Nascondi [Usati Recentemente]';
	@override String get selectServerHideFav => 'Nascondi [I Miei Preferiti]';
	@override String get homeScreen => 'Schermata Home';
	@override String get theme => 'Tema';
	@override String get widgetsAlpha => 'Trasparenza Widget';
	@override String get widgetsEmpty => 'Nessun Widget Disponibile';
	@override String get backgroundImage => 'Immagine di Sfondo';
	@override String get myLink => 'Link Rapido';
	@override String get autoConnectAfterLaunch => 'Connessione Automatica dopo l\'Avvio';
	@override String get autoConnectAtBoot => 'Connessione Automatica all\'Avvio del Sistema';
	@override String get autoConnectAtBootTips => 'È richiesto il supporto del sistema; alcuni sistemi potrebbero richiedere anche l\'abilitazione dell\' [auto-avvio].';
	@override String get hideAfterLaunch => 'Nascondi finestra dopo l\'avvio';
	@override String get autoSetSystemProxy => 'Imposta Automaticamente il Proxy di Sistema quando Connesso';
	@override String get bypassSystemProxy => 'Nomi di dominio autorizzati a bypassare il proxy di sistema';
	@override String get disconnectWhenQuit => 'Disconnetti all\'Uscita dell\'App';
	@override String get autoAddToFirewall => 'Aggiungi Automaticamente Regole Firewall';
	@override String get excludeFromRecent => 'Nascondi da [Attività Recenti]';
	@override String get wakeLock => 'Blocco Risveglio';
	@override String get hideVpn => 'Nascondi Icona VPN';
	@override String get hideVpnTips => 'L\'abilitazione di IPv6 farà fallire questa funzione';
	@override String get allowBypass => 'Consenti alle App di Bypassare la VPN';
	@override String get importSuccess => 'Importazione Riuscita';
	@override String get rewriteConfirm => 'Questo file sovrascriverà la configurazione locale esistente. Vuoi continuare?';
	@override String get mergePerapp => 'Unisci elenchi locali [${_root.PerAppAndroidScreen.title}]';
	@override String get networkShare => 'Condivisione di Rete';
	@override String get frontProxy => 'Proxy Front/Chain';
	@override String frontProxyTips({required Object p}) => 'Dati->Server Proxy Front/Chain [Più Server Proxy: Dall\'alto al basso]->Server Proxy [${p}]->Server di Destinazione';
	@override String get allowOtherHostsConnect => 'Consenti ad Altri di Connettersi';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'A causa delle limitazioni del sistema, dopo l\'abilitazione, le applicazioni su questo dispositivo che utilizzano http per accedere alla rete potrebbero non essere in grado di connettersi correttamente.';
	@override String get tunAutoRoute => 'Percorso automatico';
	@override String get tunAutoRedirect => 'Reindirizzamento automatico';
	@override String get tunStrictRoute => 'Percorso rigoroso';
	@override String get tunStrictRouteTips => 'Se dopo aver attivato la condivisione altri non riescono ad accedere a questo dispositivo, prova a disattivare questo interruttore';
	@override String get loopbackAddress => 'Indirizzo di Loopback';
	@override String get enableCluster => 'Abilita Cluster Proxy Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Consenti ad Altri di Connettersi al Cluster';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Autenticazione Cluster Proxy';
	@override String get tunMode => 'Modalità TUN';
	@override String get tuni4Address => 'Indirizzo IP';
	@override String get tunModeTips => 'La modalità TUN prenderà il controllo di tutto il traffico del sistema [In questa modalità, puoi lasciare il proxy di sistema disabilitato]';
	@override String get tunModeRunAsAdmin => 'La modalità TUN richiede i permessi di amministratore del sistema, riavvia l\'app come amministratore';
	@override String get tunStack => 'Stack';
	@override String get tunHijackTips => 'Dopo la chiusura, le richieste DNS dal TUN verranno inoltrate direttamente al server DNS corrispondente';
	@override String get launchAtStartup => 'Avvia all\'Avvio del Sistema';
	@override String get quitWhenSwitchSystemUser => 'Esci dall\'App al Cambio Utente del Sistema';
	@override String get handleScheme => 'Chiamata Schema di Sistema';
	@override String get portableMode => 'Modalità Portatile';
	@override String get portableModeDisableTips => 'Se devi uscire dalla modalità portatile, esci da [karing] ed elimina manualmente la cartella [profiles] nella stessa directory di [karing.exe]';
	@override String get accessibility => 'Accessibilità';
	@override String get handleKaringScheme => 'Gestisci Chiamata karing://';
	@override String get handleClashScheme => 'Gestisci Chiamata clash://';
	@override String get handleSingboxScheme => 'Gestisci Chiamata sing-box://';
	@override String get alwayOnVPN => 'Connessione Sempre Attiva';
	@override String get disconnectAfterSleep => 'Disconnetti dopo la sospensione del sistema';
	@override String get removeSystemVPNConfig => 'Elimina configurazione VPN di sistema';
	@override String get timeConnectOrDisconnect => 'Connessione/disconnessione pianificata';
	@override String get timeConnectOrDisconnectTips => 'La VPN deve essere connessa per avere effetto; dopo l\'attivazione, la [Sospensione Automatica] sarà disabilitata';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'L\'intervallo di connessione/disconnessione non può essere inferiore a ${p} minuti';
	@override String get disableFontScaler => 'Disabilita ridimensionamento caratteri (Riavvio necessario)';
	@override String get autoOrientation => 'Ruota con lo schermo';
	@override String get restartTakesEffect => 'Il riavvio ha effetto';
	@override String get reconnectTakesEffect => 'La riconnessione ha effetto';
	@override String get resetSettings => 'Ripristina Impostazioni';
	@override String get cleanCache => 'Pulisci Cache';
	@override String get cleanCacheDone => 'Pulizia completata';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Aggiorna Versione ${p}';
	@override String get follow => 'Seguici';
	@override String get contactUs => 'Contattaci';
	@override String get supportUs => 'Supportaci';
	@override String get rateInApp => 'Valutaci';
	@override String get rateInAppStore => 'Valutaci su AppStore';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenIt implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'La Tua Privacy Prima di Tutto';
	@override String get agreeAndContinue => 'Accetta e Continua';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenIt implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'La nuova versione [${p}] è pronta';
	@override String get update => 'Riavvia per Aggiornare';
	@override String get cancel => 'Non Ora';
}

// Path: CommonWidget
class _TranslationsCommonWidgetIt implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Se [VPN sempre attiva] è attiva, disabilitala e riprova a connetterti';
	@override String get resetPort => 'Cambia la porta con un\'altra disponibile o chiudi l\'applicazione che la occupa.';
}

// Path: main
class _TranslationsMainIt implements TranslationsMainEn {
	_TranslationsMainIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayIt tray = _TranslationsMainTrayIt._(_root);
}

// Path: meta
class _TranslationsMetaIt implements TranslationsMetaEn {
	_TranslationsMetaIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Abilita';
	@override String get disable => 'Disabilita';
	@override String get bydefault => 'Predefinito';
	@override String get filter => 'Filtra';
	@override String get filterMethod => 'Metodo Filtro';
	@override String get include => 'Includi';
	@override String get exclude => 'Escludi';
	@override String get all => 'Tutti';
	@override String get prefer => 'Preferisci';
	@override String get only => 'Solo';
	@override String get open => 'Apri';
	@override String get close => 'Chiudi';
	@override String get quit => 'Esci';
	@override String get add => 'Aggiungi';
	@override String get addSuccess => 'Aggiunto con successo';
	@override String addFailed({required Object p}) => 'Aggiunta fallita:${p}';
	@override String get remove => 'Rimuovi';
	@override String get removeConfirm => 'Sei sicuro di voler eliminare?';
	@override String get edit => 'Modifica';
	@override String get view => 'Visualizza';
	@override String get more => 'Altro';
	@override String get tips => 'Info';
	@override String get copy => 'Copia';
	@override String get paste => 'Impasto';
	@override String get cut => 'Taglio';
	@override String get save => 'Salva';
	@override String get ok => 'Ok';
	@override String get cancel => 'Annulla';
	@override String get feedback => 'Feedback';
	@override String get feedbackContent => 'Contenuto Feedback';
	@override String get feedbackContentHit => 'Richiesto, fino a 500 caratteri';
	@override String get feedbackContentCannotEmpty => 'Il contenuto del feedback non può essere vuoto';
	@override String get faq => 'FAQ';
	@override String get htmlTools => 'Set di Strumenti HTML';
	@override String get download => 'Scarica';
	@override String get upload => 'Carica';
	@override String get downloadSpeed => 'Velocità Download';
	@override String get uploadSpeed => 'Velocità Caricamento';
	@override String get loading => 'Caricamento...';
	@override String get convert => 'Converti';
	@override String get check => 'Controlla';
	@override String get detect => 'Rileva';
	@override String get cache => 'Cache';
	@override String get days => 'Giorni';
	@override String get hours => 'Ore';
	@override String get minutes => 'Minuti';
	@override String get seconds => 'Secondi';
	@override String get milliseconds => 'Millisecondi';
	@override String get tolerance => 'Tolleranza';
	@override String get dateTimePeriod => 'Periodo di tempo';
	@override String get protocol => 'Protocollo';
	@override String get search => 'Cerca';
	@override String get custom => 'Personalizzato';
	@override String get inbound => 'In entrata';
	@override String get outbound => 'In uscita';
	@override String get destination => 'Destinazione';
	@override String get outletIpByCurrentSelected => 'IP di uscita';
	@override String get outletIpByDirect => 'IP di uscita:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Connetti';
	@override String get disconnect => 'Disconnetti';
	@override String get reconnect => 'Riconnetti';
	@override String get connected => 'Connesso';
	@override String get disconnected => 'Disconnesso';
	@override String get connecting => 'Connessione in corso';
	@override String get connectTimeout => 'Timeout Connessione';
	@override String get timeout => 'Timeout';
	@override String get timeoutDuration => 'Durata Timeout';
	@override String get runDuration => 'Durata Esecuzione';
	@override String get latency => 'Latenza';
	@override String get latencyTest => 'Controlli Latenza';
	@override String get language => 'Lingua';
	@override String get next => 'Avanti';
	@override String get done => 'Fatto';
	@override String get apply => 'Applica';
	@override String get refresh => 'Aggiorna';
	@override String get retry => 'Riprovare?';
	@override String get update => 'Aggiorna';
	@override String get updateInterval => 'Intervallo aggiornamento';
	@override String get updateInterval5mTips => 'Minimo: 5m';
	@override String updateFailed({required Object p}) => 'Aggiornamento fallito:${p}';
	@override String get samplingUnit => 'Unità di Tempo di Campionamento';
	@override String get queryResultCount => 'Numero di Risultati Query';
	@override String queryLimit({required Object p}) => 'Visualizza fino a ${p} dati';
	@override String get none => 'Nessuno';
	@override String get start => 'Inizia';
	@override String get pause => 'Pausa';
	@override String get reset => 'Ripristina';
	@override String get submit => 'Invia';
	@override String get user => 'Utente';
	@override String get account => 'Account';
	@override String get password => 'Password';
	@override String get required => 'Richiesto';
	@override String get type => 'Tipo';
	@override String get path => 'Percorso';
	@override String get local => 'Locale';
	@override String get remote => 'Remoto';
	@override String get other => 'Altro';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL Non Valido';
	@override String get urlCannotEmpty => 'Il link non può essere vuoto';
	@override String get urlTooLong => 'L\'URL è troppo lungo (>8182)';
	@override String get copyUrl => 'Copia Link';
	@override String get openUrl => 'Apri Link';
	@override String get shareUrl => 'Condividi Link';
	@override String get speedTestUrl => 'URL Test Velocità';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'IP Statico';
	@override String get staticIPTips => 'Devi abilitare [TUN HijackDNS] o [${_root.SettingsScreen.inboundDomainResolve}].';
	@override String get isp => 'Provider VPN';
	@override String get domainSuffix => 'Suffisso Dominio';
	@override String get domain => 'Dominio';
	@override String get domainKeyword => 'Parola Chiave Dominio';
	@override String get domainRegex => 'Regex Dominio';
	@override String get ip => 'IP';
	@override String get port => 'Porta';
	@override String get portRange => 'Intervallo porte';
	@override String get appPackage => 'Id Pacchetto App';
	@override String get processName => 'Nome Processo';
	@override String get processPath => 'Percorso Processo';
	@override String get processDir => 'Directory Processo';
	@override String get systemProxy => 'Proxy di Sistema';
	@override String get percentage => 'Percentuale';
	@override String get statistics => 'Statistiche';
	@override String get statisticsAndAnalysis => 'Statistiche e Analisi';
	@override String get statisticsDataDesensitize => 'Desensibilizzazione Dati';
	@override String get statisticsDataDesensitizeTips => 'Processo/id pacchetto/nome dominio target/IP target ecc. verranno sostituiti con * e salvati dopo la desensibilizzazione';
	@override String get records => 'Record';
	@override String get requestRecords => 'Record Richieste';
	@override String get netInterfaces => 'Interfacce di Rete';
	@override String get netSpeed => 'Velocità';
	@override String get memoryTrendChart => 'Grafico Tendenza Memoria';
	@override String get goroutinesTrendChart => 'Grafico Tendenza GoRoutines';
	@override String get trafficTrendChart => 'Grafico Tendenza Traffico';
	@override String get trafficDistributionChart => 'Grafico Distribuzione Traffico';
	@override String get connectionChart => 'Grafico Tendenza Connessione';
	@override String get memoryChart => 'Grafico Tendenza Memoria';
	@override String get trafficStatistics => 'Statistiche traffico';
	@override String get traffic => 'Traffico';
	@override String get trafficTotal => 'Traffico Totale';
	@override String get trafficProxy => 'Traffico Proxy';
	@override String get trafficDirect => 'Traffico Diretto';
	@override String get website => 'Sito Web';
	@override String get memory => 'Memoria';
	@override String get outboundMode => 'Modalità in uscita';
	@override String get rule => 'Regola';
	@override String get global => 'Globale';
	@override String get qrcode => 'Codice QR';
	@override String get qrcodeTooLong => 'Il testo è troppo lungo per essere visualizzato';
	@override String get qrcodeShare => 'Condividi Codice QR';
	@override String get textToQrcode => 'Testo in Codice QR';
	@override String get qrcodeScan => 'Scansiona Codice QR';
	@override String get qrcodeScanResult => 'Risultato Scansione';
	@override String get qrcodeScanFromImage => 'Scansiona da Immagine';
	@override String get qrcodeScanResultFailed => 'Impossibile analizzare l\'immagine, assicurati che lo screenshot sia un codice QR valido';
	@override String get qrcodeScanResultEmpty => 'Il risultato della scansione è vuoto';
	@override String get screenshot => 'Screenshot';
	@override String get backupAndSync => 'Backup e Sincronizzazione';
	@override String get autoBackup => 'Backup automatico';
	@override String get noProfileGotAutoBackup => 'Se dati come [${_root.meta.myProfiles}] vengono persi, puoi ripristinarli da [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] o altre fonti di backup (come iCloud o Webdav, ecc.)';
	@override String get autoBackupAddProfile => 'Dopo l\'aggiunta del Profilo';
	@override String get autoBackupRemoveProfile => 'Dopo l\'eliminazione del Profilo';
	@override String get profile => 'Profilo';
	@override String get currentProfile => 'Profilo Corrente';
	@override String get importAndExport => 'Importa ed Esporta';
	@override String get import => 'Importa';
	@override String get importFromUrl => 'Importa da URL';
	@override String get export => 'Esporta';
	@override String get send => 'Invia';
	@override String get receive => 'Ricevi';
	@override String get sendConfirm => 'Confermi l\'invio?';
	@override String get termOfUse => 'Termini di Servizio';
	@override String get privacyPolicy => 'Privacy e Politica';
	@override String get about => 'Informazioni';
	@override String get name => 'Nome';
	@override String get version => 'Versione';
	@override String get notice => 'Avviso';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Azione:${p}\nMotivo:${p1}';
	@override String get sort => 'Riordina';
	@override String get novice => 'Modalità Novizio';
	@override String get willCompleteAfterRebootInstall => 'Riavvia il dispositivo per completare l\'installazione dell\'estensione di sistema';
	@override String get willCompleteAfterRebootUninstall => 'Riavvia il dispositivo per completare la disinstallazione dell\'estensione di sistema';
	@override String get requestNeedsUserApproval => '1. Consenti a Karing di installare estensioni di sistema in [Impostazioni di Sistema]-[Privacy e Sicurezza]\n2. In [Impostazioni di Sistema]-[Generali]-[Elementi Login Estensioni]-[Estensione di Rete] abilita [karingServiceSE]\nriconnetti al termine';
	@override String get FullDiskAccessPermissionRequired => 'Abilita il permesso [karingServiceSE] in [Impostazioni di Sistema]-[Privacy e Sicurezza]-[Accesso Completo al Disco] e riconnetti';
	@override String get tvMode => 'Modalità TV';
	@override String get recommended => 'Consigliato';
	@override String innerError({required Object p}) => 'Errore Interno:${p}';
	@override String get logicOperation => 'Operazione Logica';
	@override String get share => 'Condividi';
	@override String get candidateWord => 'Parole Candidate';
	@override String get keywordOrRegx => 'Parole Chiave/Regolari';
	@override String get importFromClipboard => 'Importa dagli Appunti';
	@override String get exportToClipboard => 'Esporta negli Appunti';
	@override String get server => 'Server';
	@override String get ads => 'Annunci';
	@override String get adsRemove => 'Rimuovi annunci';
	@override String get donate => 'Dona';
	@override String get diversion => 'Diversione';
	@override String get diversionRules => 'Regole di Diversione';
	@override String get diversionCustomGroup => 'Gruppo di Diversione Personalizzato';
	@override String get urlTestCustomGroup => 'Selezione Automatica Personalizzata';
	@override String get setting => 'Impostazioni';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Sincronizzazione LAN';
	@override String get lanSyncNotQuitTips => 'Non uscire da questa interfaccia prima che la sincronizzazione sia completata';
	@override String get deviceNoSpace => 'Spazio su disco insufficiente';
	@override String get hideSystemApp => 'Nascondi App di Sistema';
	@override String get hideAppIcon => 'Nascondi Icone App';
	@override String get hideDockIcon => 'Nascondi Icona Dock';
	@override String get remark => 'Nota';
	@override String get remarkExist => 'La nota esiste già, usa un altro nome';
	@override String get remarkCannotEmpty => 'Le note non possono essere vuote';
	@override String get remarkTooLong => 'Note fino a 32 caratteri';
	@override String get openDir => 'Apri Directory File';
	@override String get fileChoose => 'Seleziona File';
	@override String get filePathCannotEmpty => 'Il percorso del file non può essere vuoto';
	@override String fileNotExist({required Object p}) => 'Il file non esiste:${p}';
	@override String fileTypeInvalid({required Object p}) => 'Tipo di file non valido:${p}';
	@override String get uwpExemption => 'Esenzioni Isolamento Rete UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Ottieni Profilo';
	@override String get addProfile => 'Aggiungi Profilo';
	@override String get myProfiles => 'I Miei Profili';
	@override String get profileEdit => 'Modifica Profilo';
	@override String get profileEditUrlExist => 'L\'URL esiste già, usa un altro URL';
	@override String get profileEditReloadAfterProfileUpdate => 'Ricarica dopo l\'aggiornamento del Profilo';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Avvia test latenza dopo l\'aggiornamento automatico del Profilo';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'La VPN deve essere connessa e [Ricarica dopo l\'aggiornamento del Profilo] abilitato';
	@override String get profileEditTestLatencyAutoRemove => 'Rimuovi automaticamente i server che falliscono i test di latenza';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Prova fino a 3 volte';
	@override String get profileImport => 'Importa File Profilo';
	@override String get profileAddUrlOrContent => 'Aggiungi Link Profilo';
	@override String get profileExists => 'Il Profilo esiste già, non aggiungerlo ripetutamente';
	@override String get profileUrlOrContent => 'Link/Contenuto Profilo';
	@override String get profileUrlOrContentHit => 'Link/Contenuto Profilo [Richiesto] (Supporta link Profilo Clash, V2ray (supportato in batch), Stash, Karing, Sing-box, Shadowsocks, Sub)';
	@override String get profileUrlOrContentCannotEmpty => 'Il link del Profilo non può essere vuoto';
	@override String profileAddFailedFormatException({required Object p}) => 'Il formato è errato, correggilo e aggiungilo di nuovo:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Aggiunta fallita: ${p}, prova a modificare lo [UserAgent] e riprova, oppure usa il browser integrato del dispositivo per aprire il link di configurazione e importare il file di configurazione scaricato dal browser in questa applicazione';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Aggiunta fallita: ${p}, attiva il proxy o modifica l\'attuale nodo proxy e riprova';
	@override String get profileAddParseFailed => 'Analisi del Profilo fallita';
	@override String get profileAddNoServerAvaliable => 'Nessun server disponibile, assicurati che il Link o il File del Profilo sia valido; se il tuo Profilo proviene da GitHub, ottieni il link dal pulsante [Raw] sulla pagina';
	@override String get profileAddWrapSuccess => 'Profilo generato con successo, vai su [${_root.meta.myProfiles}] per visualizzarlo';
}

// Path: isp
class _TranslationsIspIt implements TranslationsIspEn {
	_TranslationsIspIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Associa A [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'Disassocia[${p}]';
	@override String faq({required Object p}) => 'FAQ[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'Segui[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] Non valido o scaduto';
}

// Path: permission
class _TranslationsPermissionIt implements TranslationsPermissionEn {
	_TranslationsPermissionIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Fotocamera';
	@override String get screen => 'Registrazione Schermo';
	@override String get appQuery => 'Ottieni Elenco Applicazioni';
	@override String request({required Object p}) => 'Attiva permesso [${p}]';
	@override String requestNeed({required Object p}) => 'Attiva il permesso [${p}]';
}

// Path: tls
class _TranslationsTlsIt implements TranslationsTlsEn {
	_TranslationsTlsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Salta Verifica Certificato';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Abilita Frammento TLS';
	@override String get fragmentSize => 'Dimensione Frammento TLS';
	@override String get fragmentSleep => 'Pausa Frammento TLS';
	@override String get mixedCaseSNIEnable => 'Abilita SNI TLS Case Misto';
	@override String get paddingEnable => 'Abilita Padding TLS';
	@override String get paddingSize => 'Dimensione Padding TLS';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeIt implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Attuale Selezionato';
	@override String get urltest => 'Selezione Automatica';
	@override String get direct => 'Diretto';
	@override String get block => 'Blocca';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeIt implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyIt implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonIt implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Aggiornamento Profilo';
}

// Path: theme
class _TranslationsThemeIt implements TranslationsThemeEn {
	_TranslationsThemeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get light => 'Chiaro';
	@override String get dark => 'Scuro';
	@override String get auto => 'Automatico';
}

// Path: main.tray
class _TranslationsMainTrayIt implements TranslationsMainTrayEn {
	_TranslationsMainTrayIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Apri';
	@override String get menuExit => 'Esci';
}

/// The flat map containing all translations for locale <it>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsIt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Riferimento di Installazione',
			'AboutScreen.installTime' => 'Ora di Installazione',
			'AboutScreen.versionChannel' => 'Canale di Aggiornamento Automatico',
			'AboutScreen.updateWhenConnected' => 'Controlla gli aggiornamenti dopo la connessione',
			'AboutScreen.autoDownloadPkg' => 'Scarica Automaticamente i Pacchetti di Aggiornamento',
			'AboutScreen.disableAppImproveData' => 'Dati di Miglioramento dell\'Applicazione',
			'AboutScreen.disableUAReportTip' => 'L\'abilitazione di [${_root.AboutScreen.disableAppImproveData}] ci aiuta a migliorare la stabilità e l\'usabilità del prodotto; non raccogliamo dati sulla privacy personale. La disattivazione impedirà all\'app di raccogliere qualsiasi dato.',
			'AboutScreen.devOptions' => 'Opzioni Sviluppatore',
			'AboutScreen.enableDebugLog' => 'Abilita Log di Debug',
			'AboutScreen.viewFilsContent' => 'Visualizza File',
			'AboutScreen.enablePprof' => 'Abilita pprof',
			'AboutScreen.pprofPanel' => 'Pannello pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'Consenti l\'accesso remoto a ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Consenti l\'accesso remoto a ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Usa Profilo sing-box originale',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'URL del Server',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Non può essere vuoto',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Accesso fallito:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Impossibile ottenere l\'elenco dei file:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => '[Dominio] non valido:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => '[IP Cidr] non valido:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Non valido [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => '[Set di Regole] non valido:${p}, l\'URL deve essere un URL https valido e un file binario con estensione .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => '[Set di Regole (integrato)] non valido:${p}, il formato è geosite:xxx o geoip:xxx o acl:xxx, e xxx deve essere un nome di regola valido',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => '[${_root.meta.appPackage}] non valido:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Suggerimento: dopo il salvataggio, vai su [${_root.meta.diversionRules}] per impostare le regole pertinenti, altrimenti non avranno effetto',
			'DiversionRuleDetectScreen.title' => 'Rilevamento Regole di Diversione',
			'DiversionRuleDetectScreen.rule' => 'Regola:',
			'DiversionRuleDetectScreen.outbound' => 'Server Proxy:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Suggerimento: prova a far corrispondere le regole dall\'alto verso il basso. Se nessuna regola corrisponde, usa [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'L\'ISP non può essere vuoto',
			'DnsSettingsScreen.urlCanNotEmpty' => 'L\'URL non può essere vuoto',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Tipo non supportato:${p}',
			'DnsSettingsScreen.dnsDesc' => 'La prima colonna dei dati di ritardo è il ritardo della query di connessione diretta;\nLa seconda colonna: attiva [[Traffico Proxy]Risolvi DNS tramite server proxy]: i dati di ritardo sono il ritardo della query inoltrata tramite l\'attuale server proxy; se [[Traffico Proxy]Risolvi DNS tramite server proxy] è disattivato: i dati di ritardo sono il ritardo della query di connessione diretta',
			'FileContentViewerScreen.title' => 'Visualizzatore Contenuto File',
			'FileContentViewerScreen.clearFileContent' => 'Sei sicuro di voler cancellare il contenuto del file?',
			'FileContentViewerScreen.clearFileContentTips' => 'Sei sicuro di voler cancellare il contenuto del file di Profilo? La cancellazione del file di Profilo può causare la perdita di dati o funzioni anomale dell\'applicazione, procedere con cautela',
			'HomeScreen.toSelectServer' => 'Seleziona un Server',
			'HomeScreen.invalidServer' => 'non è valido, seleziona di nuovo',
			'HomeScreen.disabledServer' => 'è disabilitato, seleziona di nuovo',
			'HomeScreen.expiredServer' => 'Nessun server disponibile, i profili potrebbero essere scaduti o disabilitati',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'Configura [Link Rapido] prima di usarlo',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Troppi server proxy [${p}>${p1}], la connessione potrebbe fallire a causa delle limitazioni della memoria di sistema',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Troppi server proxy [${p}>${p1}] possono causare connessioni lente o inaccessibili',
			'LaunchFailedScreen.invalidProcess' => 'L\'app non è riuscita ad avviarsi [Nome processo non valido], reinstalla l\'app in una directory separata',
			'LaunchFailedScreen.invalidProfile' => 'L\'app non è riuscita ad avviarsi [Accesso al profilo fallito], reinstalla l\'app',
			'LaunchFailedScreen.invalidVersion' => 'L\'app non è riuscita ad avviarsi [Versione non valida], reinstalla l\'app',
			'LaunchFailedScreen.systemVersionLow' => 'L\'app non è riuscita ad avviarsi [versione del sistema troppo bassa]',
			'LaunchFailedScreen.invalidInstallPath' => 'Il percorso di installazione non è valido, reinstalla l\'app in un percorso valido',
			'MyProfilesMergeScreen.profilesMerge' => 'Unisci Profili',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Profilo di Destinazione',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Profili Sorgente',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Suggerimento: la diversione dei profili sorgente verrà scartata',
			'NetCheckScreen.title' => 'Controllo Rete',
			'NetCheckScreen.warn' => 'Nota: a causa dell\'influenza dell\'ambiente di rete e delle regole di diversione, i risultati del test non sono completamente equivalenti ai risultati effettivi.',
			'NetCheckScreen.invalidDomain' => 'Nome Dominio Non Valido',
			'NetCheckScreen.connectivity' => 'Connettività di Rete',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Test connessione Ipv4 [${p}] tutti falliti',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Connessione Ipv4 riuscita',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Test connessione Ipv6 [${p}] tutti falliti, la tua rete potrebbe non supportare ipv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Connessione Ipv6 riuscita',
			'NetCheckScreen.connectivityTestOk' => 'La rete è connessa a Internet',
			'NetCheckScreen.connectivityTestFailed' => 'La rete non è ancora connessa a Internet',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Tutti scaricati con successo',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Download in corso o fallito',
			'NetCheckScreen.outbound' => 'Server Proxy',
			'NetCheckScreen.outboundOk' => ({required Object p}) => 'Connessione [${p}] riuscita',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => 'Connessione [${p1}] fallita\nErrore:[${p2}]',
			'NetCheckScreen.dnsServer' => 'Server DNS',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Query DNS [${p1}] riuscita\nRegola DNS:[${p2}]\nLatenza:[${p3} ms]\nIndirizzo:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => 'Query DNS [${p1}] riuscita\n nRegola DNS:[${p2}]\nErrore:[${p3}]',
			'NetCheckScreen.host' => 'Connessione HTTP',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nRegolaDiversione:[${p2}]\nServer Proxy:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'connessione riuscita',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'connessione fallita:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Dominio/IP',
			'NetConnectionsFilterScreen.app' => 'App',
			'NetConnectionsFilterScreen.rule' => 'Regola',
			'NetConnectionsFilterScreen.chain' => 'In uscita',
			'NetConnectionsScreen.copyAsCSV' => 'Copiato in formato CSV',
			'NetConnectionsScreen.selectType' => 'Seleziona Tipo di Diversione',
			'PerAppAndroidScreen.title' => 'Proxy per App',
			'PerAppAndroidScreen.whiteListMode' => 'Modalità Whitelist',
			'PerAppAndroidScreen.whiteListModeTip' => 'Se abilitata: solo le app selezionate usano il proxy; se disabilitata: solo le app non selezionate usano il proxy',
			'RegionSettingsScreen.title' => 'Paese o Regione',
			'RegionSettingsScreen.Regions' => 'Suggerimento: imposta correttamente il tuo paese o regione attuale, altrimenti potrebbero verificarsi problemi di diversione della rete',
			'ServerSelectScreen.title' => 'Seleziona Server',
			'ServerSelectScreen.autoSelectServer' => 'Seleziona automaticamente il server con la latenza più bassa',
			'ServerSelectScreen.recentUse' => 'Usati Recentemente',
			'ServerSelectScreen.myFav' => 'I Miei Preferiti',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Il server selezionato è un indirizzo locale e potrebbe non funzionare correttamente:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Il server selezionato è un indirizzo IPv6 e richiede [Abilita IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Questo server è stato disabilitato',
			'ServerSelectScreen.error404' => 'Il rilevamento della latenza ha riscontrato un errore, controlla se esiste una configurazione con lo stesso contenuto',
			'SettingsScreen.getTranffic' => 'Ottieni Traffico',
			'SettingsScreen.tutorial' => 'Tutorial',
			'SettingsScreen.commonlyUsedRulesets' => 'Set di Regole Comuni',
			'SettingsScreen.htmlBoard' => 'Pannello Online',
			'SettingsScreen.dnsLeakDetection' => 'Rilevamento Leak DNS',
			'SettingsScreen.proxyLeakDetection' => 'Rilevamento Leak Proxy',
			'SettingsScreen.speedTest' => 'Test Velocità',
			'SettingsScreen.rulesetDirectDownlad' => 'Download Diretto Set di Regole',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Nascondi Regole di Diversione Non Utilizzate',
			'SettingsScreen.disableISPDiversionGroup' => 'Disabilita [${_root.meta.diversionRules}] di [${_root.meta.isp}]',
			'SettingsScreen.portSettingRule' => 'Basato su Regole',
			'SettingsScreen.portSettingDirectAll' => 'Diretto per Tutti',
			'SettingsScreen.portSettingProxyAll' => 'Proxy per Tutti',
			'SettingsScreen.portSettingControl' => 'Controllo e Sincronizzazione',
			'SettingsScreen.portSettingCluster' => 'Servizio Cluster',
			'SettingsScreen.modifyPort' => 'Modifica Porta',
			'SettingsScreen.modifyPortOccupied' => 'La porta è occupata, usa un\'altra porta',
			'SettingsScreen.ipStrategyTips' => 'Prima di abilitare, conferma che la tua rete supporti IPv6, altrimenti parte del traffico non sarà accessibile normalmente.',
			'SettingsScreen.tunAppendHttpProxy' => 'Aggiungi Proxy HTTP alla VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Alcune app bypassano il dispositivo NIC virtuale e si connettono direttamente al proxy HTTP',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Domini autorizzati a bypassare il proxy HTTP',
			'SettingsScreen.dnsEnableRule' => 'Abilita regole di Diversione DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => 'Canale di Risoluzione [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsEnableClientSubnet' => 'Abilita ECS su [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTestDomain' => 'Dominio di Test',
			'SettingsScreen.dnsTestDomainInvalid' => 'Dominio Non Valido',
			'SettingsScreen.dnsTypeOutbound' => 'Server Proxy',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'Server DNS',
			'SettingsScreen.dnsEnableRuleTips' => 'Dopo l\'abilitazione, il nome di dominio selezionerà il server DNS corrispondente per la risoluzione in base alle regole di diversione',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Dopo aver abilitato FakeIP, se ti disconnetti dalla VPN, l\'app potrebbe dover essere riavviata; questa funzione richiede l\'abilitazione della [modalità TUN]',
			'SettingsScreen.dnsTypeOutboundTips' => 'Risoluzione del nome di dominio per [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Risoluzione del nome di dominio per [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Risoluzione del nome di dominio per [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Risoluzione del nome di dominio per [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Configurazione Automatica Server',
			'SettingsScreen.dnsResetServer' => 'Ripristina Server',
			'SettingsScreen.inboundDomainResolve' => 'Risolvi nomi di Dominio in entrata',
			'SettingsScreen.privateDirect' => 'Connessione Diretta Rete Privata',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Alcuni nomi di dominio che non sono configurati con regole di diversione devono essere risolti prima di poter colpire le regole di diversione basate su IP; questa funzione influisce sulle richieste in entrata alla porta proxy [${p}]',
			'SettingsScreen.useRomoteRes' => 'Usa Risorse Remote',
			'SettingsScreen.autoAppendRegion' => 'Allega automaticamente regole di base',
			'SettingsScreen.autoSelect' => 'Selezione Automatica',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Ignora i server Proxy [Front/Chain]',
			'SettingsScreen.autoSelectServerInterval' => 'Intervallo Controlli Latenza',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Intervallo di controllo integrità del server attuale',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Ricontrolla Latenza al Cambio di Rete',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Aggiorna il Server Attuale dopo il Controllo Manuale della Latenza',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Più breve è l\'intervallo di tempo, più tempestivamente vengono aggiornati i dati sulla latenza del server, il che occuperà più risorse e consumerà più energia',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Se il controllo fallisce, il server viene cambiato; se non viene trovato alcun server disponibile durante il cambio, il gruppo ricontrollerà la latenza',
			'SettingsScreen.autoSelectServerFavFirst' => 'Priorità a [I Miei Preferiti]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Se l\'elenco [I Miei Preferiti] non è vuoto, usa i server in [I Miei Preferiti]',
			'SettingsScreen.autoSelectServerFilter' => 'Filtra Server Non Validi',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'I controlli di latenza del server che falliscono verranno filtrati; se nessun server è disponibile dopo il filtraggio, verranno utilizzati i primi [${p}] server',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Numero massimo di server',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'I server che superano questo numero verranno filtrati',
			'SettingsScreen.numInvalid' => 'Numero non valido',
			'SettingsScreen.hideInvalidServer' => 'Nascondi Server Non Validi',
			'SettingsScreen.sortServer' => 'Ordinamento Server',
			'SettingsScreen.sortServerTips' => 'Ordina per latenza dalla più bassa alla più alta',
			'SettingsScreen.selectServerHideRecommand' => 'Nascondi [Consigliati]',
			'SettingsScreen.selectServerHideRecent' => 'Nascondi [Usati Recentemente]',
			'SettingsScreen.selectServerHideFav' => 'Nascondi [I Miei Preferiti]',
			'SettingsScreen.homeScreen' => 'Schermata Home',
			'SettingsScreen.theme' => 'Tema',
			'SettingsScreen.widgetsAlpha' => 'Trasparenza Widget',
			'SettingsScreen.widgetsEmpty' => 'Nessun Widget Disponibile',
			'SettingsScreen.backgroundImage' => 'Immagine di Sfondo',
			'SettingsScreen.myLink' => 'Link Rapido',
			'SettingsScreen.autoConnectAfterLaunch' => 'Connessione Automatica dopo l\'Avvio',
			'SettingsScreen.autoConnectAtBoot' => 'Connessione Automatica all\'Avvio del Sistema',
			'SettingsScreen.autoConnectAtBootTips' => 'È richiesto il supporto del sistema; alcuni sistemi potrebbero richiedere anche l\'abilitazione dell\' [auto-avvio].',
			'SettingsScreen.hideAfterLaunch' => 'Nascondi finestra dopo l\'avvio',
			'SettingsScreen.autoSetSystemProxy' => 'Imposta Automaticamente il Proxy di Sistema quando Connesso',
			'SettingsScreen.bypassSystemProxy' => 'Nomi di dominio autorizzati a bypassare il proxy di sistema',
			'SettingsScreen.disconnectWhenQuit' => 'Disconnetti all\'Uscita dell\'App',
			'SettingsScreen.autoAddToFirewall' => 'Aggiungi Automaticamente Regole Firewall',
			'SettingsScreen.excludeFromRecent' => 'Nascondi da [Attività Recenti]',
			'SettingsScreen.wakeLock' => 'Blocco Risveglio',
			'SettingsScreen.hideVpn' => 'Nascondi Icona VPN',
			'SettingsScreen.hideVpnTips' => 'L\'abilitazione di IPv6 farà fallire questa funzione',
			'SettingsScreen.allowBypass' => 'Consenti alle App di Bypassare la VPN',
			'SettingsScreen.importSuccess' => 'Importazione Riuscita',
			'SettingsScreen.rewriteConfirm' => 'Questo file sovrascriverà la configurazione locale esistente. Vuoi continuare?',
			'SettingsScreen.mergePerapp' => 'Unisci elenchi locali [${_root.PerAppAndroidScreen.title}]',
			'SettingsScreen.networkShare' => 'Condivisione di Rete',
			'SettingsScreen.frontProxy' => 'Proxy Front/Chain',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Dati->Server Proxy Front/Chain [Più Server Proxy: Dall\'alto al basso]->Server Proxy [${p}]->Server di Destinazione',
			'SettingsScreen.allowOtherHostsConnect' => 'Consenti ad Altri di Connettersi',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'A causa delle limitazioni del sistema, dopo l\'abilitazione, le applicazioni su questo dispositivo che utilizzano http per accedere alla rete potrebbero non essere in grado di connettersi correttamente.',
			'SettingsScreen.tunAutoRoute' => 'Percorso automatico',
			'SettingsScreen.tunAutoRedirect' => 'Reindirizzamento automatico',
			'SettingsScreen.tunStrictRoute' => 'Percorso rigoroso',
			'SettingsScreen.tunStrictRouteTips' => 'Se dopo aver attivato la condivisione altri non riescono ad accedere a questo dispositivo, prova a disattivare questo interruttore',
			'SettingsScreen.loopbackAddress' => 'Indirizzo di Loopback',
			'SettingsScreen.enableCluster' => 'Abilita Cluster Proxy Socks/Http',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Consenti ad Altri di Connettersi al Cluster',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Autenticazione Cluster Proxy',
			'SettingsScreen.tunMode' => 'Modalità TUN',
			'SettingsScreen.tuni4Address' => 'Indirizzo IP',
			'SettingsScreen.tunModeTips' => 'La modalità TUN prenderà il controllo di tutto il traffico del sistema [In questa modalità, puoi lasciare il proxy di sistema disabilitato]',
			'SettingsScreen.tunModeRunAsAdmin' => 'La modalità TUN richiede i permessi di amministratore del sistema, riavvia l\'app come amministratore',
			'SettingsScreen.tunStack' => 'Stack',
			'SettingsScreen.tunHijackTips' => 'Dopo la chiusura, le richieste DNS dal TUN verranno inoltrate direttamente al server DNS corrispondente',
			'SettingsScreen.launchAtStartup' => 'Avvia all\'Avvio del Sistema',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Esci dall\'App al Cambio Utente del Sistema',
			'SettingsScreen.handleScheme' => 'Chiamata Schema di Sistema',
			'SettingsScreen.portableMode' => 'Modalità Portatile',
			'SettingsScreen.portableModeDisableTips' => 'Se devi uscire dalla modalità portatile, esci da [karing] ed elimina manualmente la cartella [profiles] nella stessa directory di [karing.exe]',
			'SettingsScreen.accessibility' => 'Accessibilità',
			'SettingsScreen.handleKaringScheme' => 'Gestisci Chiamata karing://',
			'SettingsScreen.handleClashScheme' => 'Gestisci Chiamata clash://',
			'SettingsScreen.handleSingboxScheme' => 'Gestisci Chiamata sing-box://',
			'SettingsScreen.alwayOnVPN' => 'Connessione Sempre Attiva',
			'SettingsScreen.disconnectAfterSleep' => 'Disconnetti dopo la sospensione del sistema',
			'SettingsScreen.removeSystemVPNConfig' => 'Elimina configurazione VPN di sistema',
			'SettingsScreen.timeConnectOrDisconnect' => 'Connessione/disconnessione pianificata',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'La VPN deve essere connessa per avere effetto; dopo l\'attivazione, la [Sospensione Automatica] sarà disabilitata',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'L\'intervallo di connessione/disconnessione non può essere inferiore a ${p} minuti',
			'SettingsScreen.disableFontScaler' => 'Disabilita ridimensionamento caratteri (Riavvio necessario)',
			'SettingsScreen.autoOrientation' => 'Ruota con lo schermo',
			'SettingsScreen.restartTakesEffect' => 'Il riavvio ha effetto',
			'SettingsScreen.reconnectTakesEffect' => 'La riconnessione ha effetto',
			'SettingsScreen.resetSettings' => 'Ripristina Impostazioni',
			'SettingsScreen.cleanCache' => 'Pulisci Cache',
			'SettingsScreen.cleanCacheDone' => 'Pulizia completata',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Aggiorna Versione ${p}',
			'SettingsScreen.follow' => 'Seguici',
			'SettingsScreen.contactUs' => 'Contattaci',
			'SettingsScreen.supportUs' => 'Supportaci',
			'SettingsScreen.rateInApp' => 'Valutaci',
			'SettingsScreen.rateInAppStore' => 'Valutaci su AppStore',
			'UserAgreementScreen.privacyFirst' => 'La Tua Privacy Prima di Tutto',
			'UserAgreementScreen.agreeAndContinue' => 'Accetta e Continua',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'La nuova versione [${p}] è pronta',
			'VersionUpdateScreen.update' => 'Riavvia per Aggiornare',
			'VersionUpdateScreen.cancel' => 'Non Ora',
			'CommonWidget.diableAlwayOnVPN' => 'Se [VPN sempre attiva] è attiva, disabilitala e riprova a connetterti',
			'CommonWidget.resetPort' => 'Cambia la porta con un\'altra disponibile o chiudi l\'applicazione che la occupa.',
			'main.tray.menuOpen' => 'Apri',
			'main.tray.menuExit' => 'Esci',
			'meta.enable' => 'Abilita',
			'meta.disable' => 'Disabilita',
			'meta.bydefault' => 'Predefinito',
			'meta.filter' => 'Filtra',
			'meta.filterMethod' => 'Metodo Filtro',
			'meta.include' => 'Includi',
			'meta.exclude' => 'Escludi',
			'meta.all' => 'Tutti',
			'meta.prefer' => 'Preferisci',
			'meta.only' => 'Solo',
			'meta.open' => 'Apri',
			'meta.close' => 'Chiudi',
			'meta.quit' => 'Esci',
			'meta.add' => 'Aggiungi',
			'meta.addSuccess' => 'Aggiunto con successo',
			'meta.addFailed' => ({required Object p}) => 'Aggiunta fallita:${p}',
			'meta.remove' => 'Rimuovi',
			'meta.removeConfirm' => 'Sei sicuro di voler eliminare?',
			'meta.edit' => 'Modifica',
			'meta.view' => 'Visualizza',
			'meta.more' => 'Altro',
			'meta.tips' => 'Info',
			'meta.copy' => 'Copia',
			'meta.paste' => 'Impasto',
			'meta.cut' => 'Taglio',
			'meta.save' => 'Salva',
			'meta.ok' => 'Ok',
			'meta.cancel' => 'Annulla',
			'meta.feedback' => 'Feedback',
			'meta.feedbackContent' => 'Contenuto Feedback',
			'meta.feedbackContentHit' => 'Richiesto, fino a 500 caratteri',
			'meta.feedbackContentCannotEmpty' => 'Il contenuto del feedback non può essere vuoto',
			'meta.faq' => 'FAQ',
			'meta.htmlTools' => 'Set di Strumenti HTML',
			'meta.download' => 'Scarica',
			'meta.upload' => 'Carica',
			'meta.downloadSpeed' => 'Velocità Download',
			'meta.uploadSpeed' => 'Velocità Caricamento',
			'meta.loading' => 'Caricamento...',
			'meta.convert' => 'Converti',
			'meta.check' => 'Controlla',
			'meta.detect' => 'Rileva',
			'meta.cache' => 'Cache',
			'meta.days' => 'Giorni',
			'meta.hours' => 'Ore',
			'meta.minutes' => 'Minuti',
			'meta.seconds' => 'Secondi',
			'meta.milliseconds' => 'Millisecondi',
			'meta.tolerance' => 'Tolleranza',
			'meta.dateTimePeriod' => 'Periodo di tempo',
			'meta.protocol' => 'Protocollo',
			'meta.search' => 'Cerca',
			'meta.custom' => 'Personalizzato',
			'meta.inbound' => 'In entrata',
			'meta.outbound' => 'In uscita',
			'meta.destination' => 'Destinazione',
			'meta.outletIpByCurrentSelected' => 'IP di uscita',
			'meta.outletIpByDirect' => 'IP di uscita:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Connetti',
			'meta.disconnect' => 'Disconnetti',
			'meta.reconnect' => 'Riconnetti',
			'meta.connected' => 'Connesso',
			'meta.disconnected' => 'Disconnesso',
			'meta.connecting' => 'Connessione in corso',
			'meta.connectTimeout' => 'Timeout Connessione',
			'meta.timeout' => 'Timeout',
			'meta.timeoutDuration' => 'Durata Timeout',
			'meta.runDuration' => 'Durata Esecuzione',
			'meta.latency' => 'Latenza',
			'meta.latencyTest' => 'Controlli Latenza',
			'meta.language' => 'Lingua',
			'meta.next' => 'Avanti',
			'meta.done' => 'Fatto',
			'meta.apply' => 'Applica',
			'meta.refresh' => 'Aggiorna',
			'meta.retry' => 'Riprovare?',
			'meta.update' => 'Aggiorna',
			'meta.updateInterval' => 'Intervallo aggiornamento',
			'meta.updateInterval5mTips' => 'Minimo: 5m',
			'meta.updateFailed' => ({required Object p}) => 'Aggiornamento fallito:${p}',
			'meta.samplingUnit' => 'Unità di Tempo di Campionamento',
			'meta.queryResultCount' => 'Numero di Risultati Query',
			'meta.queryLimit' => ({required Object p}) => 'Visualizza fino a ${p} dati',
			'meta.none' => 'Nessuno',
			'meta.start' => 'Inizia',
			'meta.pause' => 'Pausa',
			'meta.reset' => 'Ripristina',
			'meta.submit' => 'Invia',
			'meta.user' => 'Utente',
			'meta.account' => 'Account',
			'meta.password' => 'Password',
			'meta.required' => 'Richiesto',
			'meta.type' => 'Tipo',
			'meta.path' => 'Percorso',
			'meta.local' => 'Locale',
			'meta.remote' => 'Remoto',
			'meta.other' => 'Altro',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL Non Valido',
			'meta.urlCannotEmpty' => 'Il link non può essere vuoto',
			'meta.urlTooLong' => 'L\'URL è troppo lungo (>8182)',
			'meta.copyUrl' => 'Copia Link',
			'meta.openUrl' => 'Apri Link',
			'meta.shareUrl' => 'Condividi Link',
			'meta.speedTestUrl' => 'URL Test Velocità',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'IP Statico',
			'meta.staticIPTips' => 'Devi abilitare [TUN HijackDNS] o [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'Provider VPN',
			'meta.domainSuffix' => 'Suffisso Dominio',
			'meta.domain' => 'Dominio',
			'meta.domainKeyword' => 'Parola Chiave Dominio',
			'meta.domainRegex' => 'Regex Dominio',
			'meta.ip' => 'IP',
			'meta.port' => 'Porta',
			'meta.portRange' => 'Intervallo porte',
			'meta.appPackage' => 'Id Pacchetto App',
			'meta.processName' => 'Nome Processo',
			'meta.processPath' => 'Percorso Processo',
			'meta.processDir' => 'Directory Processo',
			'meta.systemProxy' => 'Proxy di Sistema',
			'meta.percentage' => 'Percentuale',
			'meta.statistics' => 'Statistiche',
			'meta.statisticsAndAnalysis' => 'Statistiche e Analisi',
			'meta.statisticsDataDesensitize' => 'Desensibilizzazione Dati',
			'meta.statisticsDataDesensitizeTips' => 'Processo/id pacchetto/nome dominio target/IP target ecc. verranno sostituiti con * e salvati dopo la desensibilizzazione',
			'meta.records' => 'Record',
			'meta.requestRecords' => 'Record Richieste',
			'meta.netInterfaces' => 'Interfacce di Rete',
			'meta.netSpeed' => 'Velocità',
			'meta.memoryTrendChart' => 'Grafico Tendenza Memoria',
			'meta.goroutinesTrendChart' => 'Grafico Tendenza GoRoutines',
			'meta.trafficTrendChart' => 'Grafico Tendenza Traffico',
			'meta.trafficDistributionChart' => 'Grafico Distribuzione Traffico',
			'meta.connectionChart' => 'Grafico Tendenza Connessione',
			'meta.memoryChart' => 'Grafico Tendenza Memoria',
			'meta.trafficStatistics' => 'Statistiche traffico',
			'meta.traffic' => 'Traffico',
			'meta.trafficTotal' => 'Traffico Totale',
			'meta.trafficProxy' => 'Traffico Proxy',
			'meta.trafficDirect' => 'Traffico Diretto',
			'meta.website' => 'Sito Web',
			'meta.memory' => 'Memoria',
			'meta.outboundMode' => 'Modalità in uscita',
			'meta.rule' => 'Regola',
			'meta.global' => 'Globale',
			'meta.qrcode' => 'Codice QR',
			'meta.qrcodeTooLong' => 'Il testo è troppo lungo per essere visualizzato',
			'meta.qrcodeShare' => 'Condividi Codice QR',
			'meta.textToQrcode' => 'Testo in Codice QR',
			'meta.qrcodeScan' => 'Scansiona Codice QR',
			'meta.qrcodeScanResult' => 'Risultato Scansione',
			'meta.qrcodeScanFromImage' => 'Scansiona da Immagine',
			'meta.qrcodeScanResultFailed' => 'Impossibile analizzare l\'immagine, assicurati che lo screenshot sia un codice QR valido',
			'meta.qrcodeScanResultEmpty' => 'Il risultato della scansione è vuoto',
			'meta.screenshot' => 'Screenshot',
			'meta.backupAndSync' => 'Backup e Sincronizzazione',
			'meta.autoBackup' => 'Backup automatico',
			'meta.noProfileGotAutoBackup' => 'Se dati come [${_root.meta.myProfiles}] vengono persi, puoi ripristinarli da [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] o altre fonti di backup (come iCloud o Webdav, ecc.)',
			'meta.autoBackupAddProfile' => 'Dopo l\'aggiunta del Profilo',
			'meta.autoBackupRemoveProfile' => 'Dopo l\'eliminazione del Profilo',
			'meta.profile' => 'Profilo',
			'meta.currentProfile' => 'Profilo Corrente',
			'meta.importAndExport' => 'Importa ed Esporta',
			'meta.import' => 'Importa',
			'meta.importFromUrl' => 'Importa da URL',
			'meta.export' => 'Esporta',
			'meta.send' => 'Invia',
			'meta.receive' => 'Ricevi',
			'meta.sendConfirm' => 'Confermi l\'invio?',
			'meta.termOfUse' => 'Termini di Servizio',
			'meta.privacyPolicy' => 'Privacy e Politica',
			'meta.about' => 'Informazioni',
			'meta.name' => 'Nome',
			'meta.version' => 'Versione',
			'meta.notice' => 'Avviso',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Azione:${p}\nMotivo:${p1}',
			'meta.sort' => 'Riordina',
			'meta.novice' => 'Modalità Novizio',
			'meta.willCompleteAfterRebootInstall' => 'Riavvia il dispositivo per completare l\'installazione dell\'estensione di sistema',
			'meta.willCompleteAfterRebootUninstall' => 'Riavvia il dispositivo per completare la disinstallazione dell\'estensione di sistema',
			'meta.requestNeedsUserApproval' => '1. Consenti a Karing di installare estensioni di sistema in [Impostazioni di Sistema]-[Privacy e Sicurezza]\n2. In [Impostazioni di Sistema]-[Generali]-[Elementi Login Estensioni]-[Estensione di Rete] abilita [karingServiceSE]\nriconnetti al termine',
			'meta.FullDiskAccessPermissionRequired' => 'Abilita il permesso [karingServiceSE] in [Impostazioni di Sistema]-[Privacy e Sicurezza]-[Accesso Completo al Disco] e riconnetti',
			'meta.tvMode' => 'Modalità TV',
			'meta.recommended' => 'Consigliato',
			'meta.innerError' => ({required Object p}) => 'Errore Interno:${p}',
			'meta.logicOperation' => 'Operazione Logica',
			'meta.share' => 'Condividi',
			'meta.candidateWord' => 'Parole Candidate',
			'meta.keywordOrRegx' => 'Parole Chiave/Regolari',
			'meta.importFromClipboard' => 'Importa dagli Appunti',
			'meta.exportToClipboard' => 'Esporta negli Appunti',
			'meta.server' => 'Server',
			'meta.ads' => 'Annunci',
			'meta.adsRemove' => 'Rimuovi annunci',
			'meta.donate' => 'Dona',
			'meta.diversion' => 'Diversione',
			'meta.diversionRules' => 'Regole di Diversione',
			'meta.diversionCustomGroup' => 'Gruppo di Diversione Personalizzato',
			'meta.urlTestCustomGroup' => 'Selezione Automatica Personalizzata',
			'meta.setting' => 'Impostazioni',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Sincronizzazione LAN',
			'meta.lanSyncNotQuitTips' => 'Non uscire da questa interfaccia prima che la sincronizzazione sia completata',
			'meta.deviceNoSpace' => 'Spazio su disco insufficiente',
			'meta.hideSystemApp' => 'Nascondi App di Sistema',
			'meta.hideAppIcon' => 'Nascondi Icone App',
			'meta.hideDockIcon' => 'Nascondi Icona Dock',
			'meta.remark' => 'Nota',
			'meta.remarkExist' => 'La nota esiste già, usa un altro nome',
			'meta.remarkCannotEmpty' => 'Le note non possono essere vuote',
			'meta.remarkTooLong' => 'Note fino a 32 caratteri',
			'meta.openDir' => 'Apri Directory File',
			'meta.fileChoose' => 'Seleziona File',
			'meta.filePathCannotEmpty' => 'Il percorso del file non può essere vuoto',
			'meta.fileNotExist' => ({required Object p}) => 'Il file non esiste:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Tipo di file non valido:${p}',
			'meta.uwpExemption' => 'Esenzioni Isolamento Rete UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Ottieni Profilo',
			'meta.addProfile' => 'Aggiungi Profilo',
			'meta.myProfiles' => 'I Miei Profili',
			'meta.profileEdit' => 'Modifica Profilo',
			'meta.profileEditUrlExist' => 'L\'URL esiste già, usa un altro URL',
			'meta.profileEditReloadAfterProfileUpdate' => 'Ricarica dopo l\'aggiornamento del Profilo',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Avvia test latenza dopo l\'aggiornamento automatico del Profilo',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'La VPN deve essere connessa e [Ricarica dopo l\'aggiornamento del Profilo] abilitato',
			'meta.profileEditTestLatencyAutoRemove' => 'Rimuovi automaticamente i server che falliscono i test di latenza',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Prova fino a 3 volte',
			'meta.profileImport' => 'Importa File Profilo',
			'meta.profileAddUrlOrContent' => 'Aggiungi Link Profilo',
			'meta.profileExists' => 'Il Profilo esiste già, non aggiungerlo ripetutamente',
			'meta.profileUrlOrContent' => 'Link/Contenuto Profilo',
			'meta.profileUrlOrContentHit' => 'Link/Contenuto Profilo [Richiesto] (Supporta link Profilo Clash, V2ray (supportato in batch), Stash, Karing, Sing-box, Shadowsocks, Sub)',
			'meta.profileUrlOrContentCannotEmpty' => 'Il link del Profilo non può essere vuoto',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Il formato è errato, correggilo e aggiungilo di nuovo:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Aggiunta fallita: ${p}, prova a modificare lo [UserAgent] e riprova, oppure usa il browser integrato del dispositivo per aprire il link di configurazione e importare il file di configurazione scaricato dal browser in questa applicazione',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Aggiunta fallita: ${p}, attiva il proxy o modifica l\'attuale nodo proxy e riprova',
			'meta.profileAddParseFailed' => 'Analisi del Profilo fallita',
			'meta.profileAddNoServerAvaliable' => 'Nessun server disponibile, assicurati che il Link o il File del Profilo sia valido; se il tuo Profilo proviene da GitHub, ottieni il link dal pulsante [Raw] sulla pagina',
			'meta.profileAddWrapSuccess' => 'Profilo generato con successo, vai su [${_root.meta.myProfiles}] per visualizzarlo',
			'diversionRulesKeep' => 'Mantieni [${_root.meta.diversionRules}] di [${_root.meta.isp}]',
			'diversionCustomGroupPreset' => 'Predefinito [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Nota: gli elementi abilitati verranno aggiunti/sovrascritti a [${_root.meta.diversionCustomGroup}] e [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Nota: dopo l\'aggiunta, potrebbe essere necessario regolare manualmente l\'ordine, altrimenti la diversione appena aggiunta potrebbe non avere effetto',
			'rulesetEnableTips' => 'Suggerimento: dopo aver attivato le opzioni, vai su [${_root.meta.diversionRules}] per impostare le regole pertinenti, altrimenti non avranno effetto',
			'ispUserAgentTips' => '[${_root.meta.isp}] invierà dati di diversi tipi di abbonamento in base allo [UserAgent] nella richiesta [HTTP]',
			'ispDiversionTips' => '[${_root.meta.isp}] fornisce regole di diversione del traffico; gli abbonamenti di tipo [V2Ray] non supportano le regole di diversione del traffico',
			'isp.bind' => 'Associa A [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Disassocia[${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'Segui[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] Non valido o scaduto',
			'permission.camera' => 'Fotocamera',
			'permission.screen' => 'Registrazione Schermo',
			'permission.appQuery' => 'Ottieni Elenco Applicazioni',
			'permission.request' => ({required Object p}) => 'Attiva permesso [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'Attiva il permesso [${p}]',
			'tls.insecure' => 'Salta Verifica Certificato',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Abilita Frammento TLS',
			'tls.fragmentSize' => 'Dimensione Frammento TLS',
			'tls.fragmentSleep' => 'Pausa Frammento TLS',
			'tls.mixedCaseSNIEnable' => 'Abilita SNI TLS Case Misto',
			_ => null,
		} ?? switch (path) {
			'tls.paddingEnable' => 'Abilita Padding TLS',
			'tls.paddingSize' => 'Dimensione Padding TLS',
			'outboundRuleMode.currentSelected' => 'Attuale Selezionato',
			'outboundRuleMode.urltest' => 'Selezione Automatica',
			'outboundRuleMode.direct' => 'Diretto',
			'outboundRuleMode.block' => 'Blocca',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Aggiornamento Profilo',
			'theme.light' => 'Chiaro',
			'theme.dark' => 'Scuro',
			'theme.auto' => 'Automatico',
			'downloadProxyStrategy' => 'Canale Download',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: connettiti al server DNS tramite il server proxy per risolvere il nome di dominio\n[${_root.dnsProxyResolveMode.direct}]: connettiti direttamente al server DNS per risolvere il nome di dominio\n[${_root.dnsProxyResolveMode.fakeip}]: il server proxy risolve il nome di dominio per tuo conto; se disconnetti la connessione VPN, l\'applicazione potrebbe dover essere riavviata; efficace solo per il traffico in entrata [TUN]',
			'routeFinal' => 'finale',
			'protocolSniff' => 'Sniff Protocollo',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Usa [${p}]',
			'turnOffPrivateDirect' => 'Attiva prima [Connessione diretta rete privata]',
			'targetConnectFailed' => ({required Object p}) => 'Impossibile connettersi a [${p}]. Assicurati che i dispositivi siano nella stessa LAN',
			'appleTVSync' => 'Sincronizza l\'attuale configurazione core su Apple TV - Karing',
			'appleTVSyncDone' => 'Sincronizzazione completata. Vai su Apple TV - Karing per avviare la connessione/riavviare la connessione',
			'appleTVRemoveCoreConfig' => 'Elimina Configurazione Core Apple TV - Karing',
			'appleTVRemoveCoreConfigDone' => 'Configurazione Core di Apple TV - Karing eliminata; servizio VPN disconnesso',
			'appleTVUrlInvalid' => 'URL non valido, apri Apple TV - Karing e scansiona il codice QR visualizzato da Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] non ha questa funzione, aggiorna e riprova',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'La versione principale del core non corrisponde, aggiorna [${p}] e riprova',
			'remoteProfileEditConfirm' => 'Dopo l\'aggiornamento del Profilo, le modifiche ai nodi verranno ripristinate. Continuare?',
			'mustBeValidHttpsURL' => 'Deve essere un URL https Valido',
			'fileNotExistReinstall' => ({required Object p}) => 'File mancante [${p}], reinstalla',
			'noNetworkConnect' => 'Nessuna connessione Internet',
			'sudoPassword' => 'password sudo (richiesta per la modalità TUN)',
			'turnOffNetworkBeforeInstall' => 'Si consiglia di passare alla [Modalità Aereo] prima di installare l\'aggiornamento',
			'latencyTestResolveIP' => 'Durante il controllo manuale, risolvi l\'IP di uscita',
			'latencyTestConcurrency' => 'Concorrenza',
			'edgeRuntimeNotInstalled' => 'L\'attuale dispositivo non ha installato il runtime Edge WebView2, quindi la pagina non può essere visualizzata. Scarica e installa il runtime Edge WebView2 (x64), riavvia l\'app e riprova.',
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
			_ => null,
		};
	}
}
