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
class _TranslationsAboutScreenFr implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Référent d\'installation';
	@override String get installTime => 'Heure d\'installation';
	@override String get versionChannel => 'Canal de mise à jour automatique';
	@override String get updateWhenConnected => 'Vérifiez les mises à jour après la connexion';
	@override String get autoDownloadPkg => 'Téléchargement automatique des packages de mise à jour';
	@override String get disableAppImproveData => 'Données d\'amélioration de l\'application';
	@override String get disableUAReportTip => 'L\'activation de [${_root.AboutScreen.disableAppImproveData}] nous aide à améliorer la stabilité et l\'ergonomie du produit ; nous ne collectons aucune donnée privée. La désactivation empêchera l\'application de collecter toute donnée.';
	@override String get devOptions => 'Options développeur';
	@override String get enableDebugLog => 'Activer le journal de débogage';
	@override String get viewFilsContent => 'Voir les fichiers';
	@override String get enablePprof => 'Activer pprof';
	@override String get pprofPanel => 'Panneau pprof';
	@override String get allowRemoteAccessPprof => 'Autoriser l\'accès à distance à ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Autoriser l\'accès à distance à ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Utiliser le profil sing-box original';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenFr implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'URL du serveur';
	@override String get webdavRequired => 'Ne peut pas être vide';
	@override String get webdavLoginFailed => 'Échec de la connexion :';
	@override String get webdavListFailed => 'Échec de l\'obtention de la liste des fichiers :';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenFr implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => '[Domaine] invalide : ${p}';
	@override String invalidIpCidr({required Object p}) => '[IP Cidr] invalide : ${p}';
	@override String invalid({required Object p0, required Object p}) => '[${p0}] invalide : ${p}';
	@override String invalidRuleSet({required Object p}) => '[Rule Set] invalide : ${p}, l\'URL doit être une URL https valide et un fichier binaire avec l\'extension .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => '[Rule Set(intégré)] invalide : ${p}, le format est geosite:xxx ou geoip:xxx ou acl:xxx, et xxx doit être un nom de règle valide';
	@override String invalidPackageId({required Object p}) => '[${_root.meta.appPackage}] invalide : ${p}';
	@override String get setDiversionRule => 'Conseil : Après l\'enregistrement, veuillez aller dans [${_root.meta.diversionRules}] pour définir les règles correspondantes, sinon elles ne prendront pas effet';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenFr implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Détection de règle de diversion';
	@override String get rule => 'Règle :';
	@override String get outbound => 'Serveur proxy :';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenFr implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Conseil : Essayez de faire correspondre les règles de haut en bas. Si aucune règle ne correspond, utilisez [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenFr implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'L\'ISP ne peut pas être vide';
	@override String get urlCanNotEmpty => 'L\'URL ne peut pas être vide';
	@override String error({required Object p}) => 'Type non supporté : ${p}';
	@override String get dnsDesc => 'La première colonne des données de délai est le délai de requête en connexion directe ;\nLa deuxième colonne : Activez [[Trafic Proxy] Résoudre le DNS via le serveur proxy] : les données de délai correspondent au délai de requête transféré via le serveur proxy actuel ; si désactivé : les données de délai correspondent au délai de requête en connexion directe';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenFr implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visionneuse de contenu de fichier';
	@override String get clearFileContent => 'Êtes-vous sûr de vouloir effacer le contenu du fichier ?';
	@override String get clearFileContentTips => 'Êtes-vous sûr de vouloir effacer le contenu du fichier de profil ? L\'effacement du fichier de profil peut entraîner une perte de données ou des dysfonctionnements de l\'application, veuillez agir avec prudence';
}

// Path: HomeScreen
class _TranslationsHomeScreenFr implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Veuillez sélectionner un serveur';
	@override String get invalidServer => 'est invalide, veuillez sélectionner à nouveau';
	@override String get disabledServer => 'est désactivé, veuillez sélectionner à nouveau';
	@override String get expiredServer => 'Aucun serveur disponible, les profils peuvent être expirés ou désactivés';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks : ${sp}, http(s) : ${hp}';
	@override String get myLinkEmpty => 'Veuillez configurer un [Lien raccourci] avant de l\'utiliser';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Trop de serveurs proxy [${p}>${p1}], la connexion peut échouer en raison des limitations de mémoire système';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Trop de serveurs proxy [${p}>${p1}] peut entraîner des connexions lentes ou inaccessibles';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenFr implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'L\'application n\'a pas pu démarrer [Nom de processus invalide], veuillez réinstaller l\'application dans un répertoire séparé';
	@override String get invalidProfile => 'L\'application n\'a pas pu démarrer [Échec de l\'accès au profil], veuillez réinstaller l\'application';
	@override String get invalidVersion => 'L\'application n\'a pas pu démarrer [Version invalide], veuillez réinstaller l\'application';
	@override String get systemVersionLow => 'L\'application n\'a pas pu démarrer [Version système trop basse]';
	@override String get invalidInstallPath => 'Le chemin d\'installation est invalide, veuillez réinstaller dans un chemin valide';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenFr implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Fusion de profils';
	@override String get profilesMergeTarget => 'Profil cible';
	@override String get profilesMergeSource => 'Profils sources';
	@override String get profilesMergeTips => 'Conseil : La diversion des profils sources sera ignorée';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenFr implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vérification réseau';
	@override String get warn => 'Remarque : En raison de l\'influence de l\'environnement réseau et des règles de diversion, les résultats des tests ne sont pas totalement équivalents aux résultats réels.';
	@override String get invalidDomain => 'Nom de domaine invalide';
	@override String get connectivity => 'Connectivité réseau';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Tous les tests de connexion IPv4 [${p}] ont échoué';
	@override String get connectivityTestIpv4Ok => 'Connexion IPv4 réussie';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Tous les tests de connexion IPv6 [${p}] ont échoué, votre réseau ne supporte peut-être pas l\'IPv6';
	@override String get connectivityTestIpv6Ok => 'Connexion IPv6 réussie';
	@override String get connectivityTestOk => 'Le réseau est connecté à Internet';
	@override String get connectivityTestFailed => 'Le réseau n\'est pas encore connecté à Internet';
	@override String get remoteRulesetsDownloadOk => 'Tous les téléchargements ont réussi';
	@override String get remoteRulesetsDownloadNotOk => 'Téléchargement en cours ou échec du téléchargement';
	@override String get outbound => 'Serveur proxy';
	@override String outboundOk({required Object p}) => 'Connexion à [${p}] réussie';
	@override String outboundFailed({required Object p1, required Object p2}) => 'Échec de la connexion à [${p1}]\nErreur : [${p2}]';
	@override String get dnsServer => 'Serveur DNS';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Requête DNS pour [${p1}] réussie\nRègle DNS : [${p2}]\nLatence : [${p3} ms]\nAdresse : [${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => 'Requête DNS pour [${p1}] réussie\nRègle DNS : [${p2}]\nErreur : [${p3}]';
	@override String get host => 'Connexion HTTP';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nRègle de diversion : [${p2}]\nServeur proxy : [${p3}]';
	@override String get hostConnectionOk => 'Connexion réussie';
	@override String hostConnectionFailed({required Object p}) => 'Échec de la connexion : [${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenFr implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domaine/IP';
	@override String get app => 'Application';
	@override String get rule => 'Règle';
	@override String get chain => 'Sortant';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenFr implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Copié au format CSV';
	@override String get selectType => 'Sélectionner le type de diversion';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenFr implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proxy par application';
	@override String get whiteListMode => 'Mode liste blanche';
	@override String get whiteListModeTip => 'Si activé : seules les applications cochées passent par le proxy ; si désactivé : seules les applications non cochées passent par le proxy';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenFr implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pays ou région';
	@override String get Regions => 'Conseil : Veuillez définir correctement votre pays ou région actuel, sinon cela pourrait causer des problèmes de diversion réseau';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenFr implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sélectionner un serveur';
	@override String get autoSelectServer => 'Sélectionner automatiquement le serveur avec la latence la plus basse';
	@override String get recentUse => 'Récemment utilisés';
	@override String get myFav => 'Mes favoris';
	@override String selectLocal({required Object p}) => 'Le serveur sélectionné est une adresse locale et peut ne pas fonctionner correctement : ${p}';
	@override String get selectRequireEnableIPv6 => 'Le serveur sélectionné est une adresse IPv6 et nécessite [Activer l\'IPv6]';
	@override String get selectDisabled => 'Ce serveur a été désactivé';
	@override String get error404 => 'La détection de latence a rencontré une erreur, veuillez vérifier s\'il existe une configuration avec le même contenu';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenFr implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Obtenir le trafic';
	@override String get tutorial => 'Tutoriel';
	@override String get commonlyUsedRulesets => 'Jeux de règles courants';
	@override String get htmlBoard => 'Panneau en ligne';
	@override String get dnsLeakDetection => 'Détection de fuites DNS';
	@override String get proxyLeakDetection => 'Détection de fuites proxy';
	@override String get speedTest => 'Test de vitesse';
	@override String get rulesetDirectDownlad => 'Téléchargement direct du jeu de règles';
	@override String get hideUnusedDiversionGroup => 'Masquer les groupes de diversion inutilisés';
	@override String get disableISPDiversionGroup => 'Désactiver [${_root.meta.isp}] ${_root.meta.diversionRules}';
	@override String get portSettingRule => 'Basé sur les règles';
	@override String get portSettingDirectAll => 'Tout en direct';
	@override String get portSettingProxyAll => 'Tout en proxy';
	@override String get portSettingControl => 'Contrôle et synchronisation';
	@override String get portSettingCluster => 'Service de cluster';
	@override String get modifyPort => 'Modifier le port';
	@override String get modifyPortOccupied => 'Le port est occupé, veuillez utiliser un autre port';
	@override String get ipStrategyTips => 'Avant d\'activer, veuillez confirmer que votre réseau supporte l\'IPv6, sinon certains trafics ne pourront pas être accédés normalement.';
	@override String get tunAppendHttpProxy => 'Ajouter le proxy HTTP au VPN';
	@override String get tunAppendHttpProxyTips => 'Certaines applications contourneront le périphérique NIC virtuel et se connecteront directement au proxy HTTP';
	@override String get tunAllowBypassHttpProxyDomain => 'Domaines autorisés à contourner le proxy HTTP';
	@override String get dnsEnableRule => 'Activer les règles de diversion DNS';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] Canal de résolution';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] Activer l\'ECS';
	@override String get dnsTestDomain => 'Domaine de test';
	@override String get dnsTestDomainInvalid => 'Domaine invalide';
	@override String get dnsTypeOutbound => 'Serveur proxy';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'Serveur DNS';
	@override String get dnsEnableRuleTips => 'Une fois activé, le nom de domaine sélectionnera le serveur DNS correspondant pour la résolution selon les règles de diversion';
	@override String get dnsEnableFakeIpTips => 'Après avoir activé FakeIP, si vous vous déconnectez du VPN, votre application peut avoir besoin d\'être redémarrée ; cette fonctionnalité nécessite l\'activation du [Mode TUN]';
	@override String get dnsTypeOutboundTips => 'Résolution de nom de domaine pour [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Résolution de nom de domaine pour [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Résolution de nom de domaine pour [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Résolution de nom de domaine pour [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Configuration automatique du serveur';
	@override String get dnsResetServer => 'Réinitialiser le serveur';
	@override String get inboundDomainResolve => 'Résoudre les noms de domaine entrants';
	@override String get privateDirect => 'Connexion directe au réseau privé';
	@override String inboundDomainResolveTips({required Object p}) => 'Certains noms de domaine qui ne sont pas configurés avec des règles de diversion doivent être résolus avant de pouvoir correspondre aux règles de diversion basées sur l\'IP ; cette fonctionnalité affecte les requêtes entrantes sur le port proxy [${p}]';
	@override String get useRomoteRes => 'Utiliser des ressources distantes';
	@override String get autoAppendRegion => 'Attacher automatiquement les règles de base';
	@override String get autoSelect => 'Sélection automatique';
	@override String get autoSelectServerIgnorePerProxyServer => 'Ignorer les serveurs proxy [Front/Chain]';
	@override String get autoSelectServerInterval => 'Intervalle de vérification de latence';
	@override String get autoSelectSelectedHealthCheckInterval => 'Intervalle de vérification de santé du serveur actuel';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Vérifier à nouveau la latence lors d\'un changement de réseau';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Mettre à jour le serveur actuel après une vérification manuelle de latence';
	@override String get autoSelectServerIntervalTips => 'Plus l\'intervalle est court, plus les données de latence du serveur sont mises à jour à temps, ce qui occupera plus de ressources et consommera plus d\'énergie';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Si la vérification échoue, le serveur est commuté ; si aucun serveur disponible n\'est trouvé lors de la commutation, le groupe revérifiera la latence';
	@override String get autoSelectServerFavFirst => 'Utiliser prioritairement [Mes favoris]';
	@override String get autoSelectServerFavFirstTips => 'Si la liste [Mes favoris] n\'est pas vide, alors utiliser les serveurs de [Mes favoris]';
	@override String get autoSelectServerFilter => 'Filtrer les serveurs invalides';
	@override String autoSelectServerFilterTips({required Object p}) => 'Les serveurs dont la vérification de latence échoue seront filtrés ; si aucun serveur n\'est disponible après filtrage, les [${p}] premiers serveurs seront utilisés à la place';
	@override String get autoSelectServerLimitedNum => 'Nombre maximum de serveurs';
	@override String get autoSelectServerLimitedNumTips => 'Les serveurs dépassant ce nombre seront filtrés';
	@override String get numInvalid => 'Nombre invalide';
	@override String get hideInvalidServer => 'Masquer les serveurs invalides';
	@override String get sortServer => 'Tri des serveurs';
	@override String get sortServerTips => 'Trier par latence de la plus basse à la plus haute';
	@override String get selectServerHideRecommand => 'Masquer [Recommandé]';
	@override String get selectServerHideRecent => 'Masquer [Récemment utilisés]';
	@override String get selectServerHideFav => 'Masquer [Mes favoris]';
	@override String get homeScreen => 'Écran d\'accueil';
	@override String get theme => 'Thème';
	@override String get widgetsAlpha => 'Transparence des widgets';
	@override String get widgetsEmpty => 'Aucun widget disponible';
	@override String get backgroundImage => 'Image d\'arrière-plan';
	@override String get myLink => 'Lien raccourci';
	@override String get autoConnectAfterLaunch => 'Connexion automatique après le lancement';
	@override String get autoConnectAtBoot => 'Connexion automatique au démarrage du système';
	@override String get autoConnectAtBootTips => 'Le support du système est requis ; certains systèmes peuvent également nécessiter l\'activation du [lancement automatique].';
	@override String get hideAfterLaunch => 'Masquer la fenêtre après le démarrage';
	@override String get autoSetSystemProxy => 'Définir automatiquement le proxy système lors de la connexion';
	@override String get bypassSystemProxy => 'Noms de domaine autorisés à contourner le proxy système';
	@override String get disconnectWhenQuit => 'Déconnecter lorsque l\'application quitte';
	@override String get autoAddToFirewall => 'Ajouter automatiquement des règles de pare-feu';
	@override String get excludeFromRecent => 'Masquer des [Tâches récentes]';
	@override String get wakeLock => 'Empêcher la mise en veille';
	@override String get hideVpn => 'Masquer l\'icône VPN';
	@override String get hideVpnTips => 'L\'activation de l\'IPv6 fera échouer cette fonction';
	@override String get allowBypass => 'Autoriser les applications à contourner le VPN';
	@override String get importSuccess => 'Importation réussie';
	@override String get rewriteConfirm => 'Ce fichier écrasera la configuration locale existante. Voulez-vous continuer ?';
	@override String get mergePerapp => 'Fusionner les listes [${_root.PerAppAndroidScreen.title}] locales';
	@override String get networkShare => 'Partage réseau';
	@override String get frontProxy => 'Proxy Front/Chain';
	@override String frontProxyTips({required Object p}) => 'Données -> Serveur proxy Front/Chain [Plusieurs serveurs : de haut en bas] -> Serveur proxy [${p}] -> Serveur cible';
	@override String get allowOtherHostsConnect => 'Autoriser les autres à se connecter';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks : ${sp}, http(s) : ${hp}';
	@override String get allowOtherHostsConnectWarn => 'En raison des limitations du système, une fois activé, les applications de cet appareil qui utilisent le http pour accéder au réseau peuvent ne pas être en mesure de se connecter correctement au réseau.';
	@override String get tunAutoRoute => 'Route automatique';
	@override String get tunAutoRedirect => 'Redirection automatique';
	@override String get tunStrictRoute => 'Route stricte';
	@override String get tunStrictRouteTips => 'Si après l\'activation du partage, d\'autres ne peuvent pas accéder à cet appareil, veuillez essayer de désactiver ce commutateur';
	@override String get loopbackAddress => 'Adresse de bouclage';
	@override String get enableCluster => 'Activer le cluster de proxy Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Autoriser les autres à se connecter au cluster';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Authentification du cluster de proxy';
	@override String get tunMode => 'Mode TUN';
	@override String get tuni4Address => 'Adresse IP';
	@override String get tunModeTips => 'Le mode TUN prendra en charge tout le trafic du système [Dans ce mode, vous pouvez laisser le proxy système non activé]';
	@override String get tunModeRunAsAdmin => 'Le mode TUN nécessite des autorisations d\'administrateur système, veuillez redémarrer l\'application en tant qu\'administrateur';
	@override String get tunStack => 'Pile';
	@override String get tunHijackTips => 'Après la fermeture, les requêtes DNS du TUN seront transférées directement au serveur DNS correspondant';
	@override String get launchAtStartup => 'Lancer au démarrage';
	@override String get quitWhenSwitchSystemUser => 'Quitter l\'application lors du changement d\'utilisateur système';
	@override String get handleScheme => 'Appel du schéma système';
	@override String get portableMode => 'Mode portable';
	@override String get portableModeDisableTips => 'Si vous devez quitter le mode portable, veuillez quitter [karing] et supprimer manuellement le dossier [profiles] dans le même répertoire que [karing.exe]';
	@override String get accessibility => 'Accessibilité';
	@override String get handleKaringScheme => 'Gérer l\'appel karing://';
	@override String get handleClashScheme => 'Gérer l\'appel clash://';
	@override String get handleSingboxScheme => 'Gérer l\'appel sing-box://';
	@override String get alwayOnVPN => 'Connexion permanente';
	@override String get disconnectAfterSleep => 'Déconnecter après la mise en veille du système';
	@override String get removeSystemVPNConfig => 'Supprimer la configuration VPN du système';
	@override String get timeConnectOrDisconnect => 'Connexion/déconnexion programmée';
	@override String get timeConnectOrDisconnectTips => 'Le VPN doit être connecté pour prendre effet ; une fois activé, la [Mise en veille automatique] sera désactivée';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'L\'intervalle de connexion/déconnexion ne peut pas être inférieur à ${p} minutes';
	@override String get disableFontScaler => 'Désactiver la mise à l\'échelle des polices (le redémarrage prend effet)';
	@override String get autoOrientation => 'Rotation avec l\'écran';
	@override String get restartTakesEffect => 'Le redémarrage prend effet';
	@override String get reconnectTakesEffect => 'La reconnexion prend effet';
	@override String get resetSettings => 'Réinitialiser les paramètres';
	@override String get cleanCache => 'Nettoyer le cache';
	@override String get cleanCacheDone => 'Nettoyage terminé';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Mettre à jour vers la version ${p}';
	@override String get follow => 'Suivez-nous';
	@override String get contactUs => 'Contactez-nous';
	@override String get supportUs => 'Soutenez-nous';
	@override String get rateInAppStore => 'Évaluez-nous sur l\'AppStore';
	@override String get rateInApp => 'Évaluez-nous';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenFr implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Votre vie privée passe avant tout';
	@override String get agreeAndContinue => 'Accepter et continuer';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenFr implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'La nouvelle version [${p}] est prête';
	@override String get update => 'Redémarrer pour mettre à jour';
	@override String get cancel => 'Pas maintenant';
}

// Path: CommonWidget
class _TranslationsCommonWidgetFr implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Si [VPN toujours activé] est activé, veuillez le désactiver et essayer de vous reconnecter';
	@override String get resetPort => 'Veuillez changer le port pour un autre port disponible ou fermer l\'application occupant le port.';
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
	@override String get paste => 'Coller';
	@override String get cut => 'Couper';
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
	@override String get outletIpByCurrentSelected => 'IP de sortie';
	@override String get outletIpByDirect => 'IP : ${_root.outboundRuleMode.direct}';
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
	@override String get decryptPassword => 'Mot de passe de déchiffrement';
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
	@override String get diversion => 'Routage';
	@override String get diversionRules => 'Règles de routage';
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
	@override String get menuOpen => 'Ouvrir';
	@override String get menuExit => 'Quitter';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Référent d\'installation',
			'AboutScreen.installTime' => 'Heure d\'installation',
			'AboutScreen.versionChannel' => 'Canal de mise à jour automatique',
			'AboutScreen.updateWhenConnected' => 'Vérifiez les mises à jour après la connexion',
			'AboutScreen.autoDownloadPkg' => 'Téléchargement automatique des packages de mise à jour',
			'AboutScreen.disableAppImproveData' => 'Données d\'amélioration de l\'application',
			'AboutScreen.disableUAReportTip' => 'L\'activation de [${_root.AboutScreen.disableAppImproveData}] nous aide à améliorer la stabilité et l\'ergonomie du produit ; nous ne collectons aucune donnée privée. La désactivation empêchera l\'application de collecter toute donnée.',
			'AboutScreen.devOptions' => 'Options développeur',
			'AboutScreen.enableDebugLog' => 'Activer le journal de débogage',
			'AboutScreen.viewFilsContent' => 'Voir les fichiers',
			'AboutScreen.enablePprof' => 'Activer pprof',
			'AboutScreen.pprofPanel' => 'Panneau pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'Autoriser l\'accès à distance à ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Autoriser l\'accès à distance à ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Utiliser le profil sing-box original',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'URL du serveur',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Ne peut pas être vide',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Échec de la connexion :',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Échec de l\'obtention de la liste des fichiers :',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => '[Domaine] invalide : ${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => '[IP Cidr] invalide : ${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => '[${p0}] invalide : ${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => '[Rule Set] invalide : ${p}, l\'URL doit être une URL https valide et un fichier binaire avec l\'extension .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => '[Rule Set(intégré)] invalide : ${p}, le format est geosite:xxx ou geoip:xxx ou acl:xxx, et xxx doit être un nom de règle valide',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => '[${_root.meta.appPackage}] invalide : ${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Conseil : Après l\'enregistrement, veuillez aller dans [${_root.meta.diversionRules}] pour définir les règles correspondantes, sinon elles ne prendront pas effet',
			'DiversionRuleDetectScreen.title' => 'Détection de règle de diversion',
			'DiversionRuleDetectScreen.rule' => 'Règle :',
			'DiversionRuleDetectScreen.outbound' => 'Serveur proxy :',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Conseil : Essayez de faire correspondre les règles de haut en bas. Si aucune règle ne correspond, utilisez [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'L\'ISP ne peut pas être vide',
			'DnsSettingsScreen.urlCanNotEmpty' => 'L\'URL ne peut pas être vide',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Type non supporté : ${p}',
			'DnsSettingsScreen.dnsDesc' => 'La première colonne des données de délai est le délai de requête en connexion directe ;\nLa deuxième colonne : Activez [[Trafic Proxy] Résoudre le DNS via le serveur proxy] : les données de délai correspondent au délai de requête transféré via le serveur proxy actuel ; si désactivé : les données de délai correspondent au délai de requête en connexion directe',
			'FileContentViewerScreen.title' => 'Visionneuse de contenu de fichier',
			'FileContentViewerScreen.clearFileContent' => 'Êtes-vous sûr de vouloir effacer le contenu du fichier ?',
			'FileContentViewerScreen.clearFileContentTips' => 'Êtes-vous sûr de vouloir effacer le contenu du fichier de profil ? L\'effacement du fichier de profil peut entraîner une perte de données ou des dysfonctionnements de l\'application, veuillez agir avec prudence',
			'HomeScreen.toSelectServer' => 'Veuillez sélectionner un serveur',
			'HomeScreen.invalidServer' => 'est invalide, veuillez sélectionner à nouveau',
			'HomeScreen.disabledServer' => 'est désactivé, veuillez sélectionner à nouveau',
			'HomeScreen.expiredServer' => 'Aucun serveur disponible, les profils peuvent être expirés ou désactivés',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks : ${sp}, http(s) : ${hp}',
			'HomeScreen.myLinkEmpty' => 'Veuillez configurer un [Lien raccourci] avant de l\'utiliser',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Trop de serveurs proxy [${p}>${p1}], la connexion peut échouer en raison des limitations de mémoire système',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Trop de serveurs proxy [${p}>${p1}] peut entraîner des connexions lentes ou inaccessibles',
			'LaunchFailedScreen.invalidProcess' => 'L\'application n\'a pas pu démarrer [Nom de processus invalide], veuillez réinstaller l\'application dans un répertoire séparé',
			'LaunchFailedScreen.invalidProfile' => 'L\'application n\'a pas pu démarrer [Échec de l\'accès au profil], veuillez réinstaller l\'application',
			'LaunchFailedScreen.invalidVersion' => 'L\'application n\'a pas pu démarrer [Version invalide], veuillez réinstaller l\'application',
			'LaunchFailedScreen.systemVersionLow' => 'L\'application n\'a pas pu démarrer [Version système trop basse]',
			'LaunchFailedScreen.invalidInstallPath' => 'Le chemin d\'installation est invalide, veuillez réinstaller dans un chemin valide',
			'MyProfilesMergeScreen.profilesMerge' => 'Fusion de profils',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Profil cible',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Profils sources',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Conseil : La diversion des profils sources sera ignorée',
			'NetCheckScreen.title' => 'Vérification réseau',
			'NetCheckScreen.warn' => 'Remarque : En raison de l\'influence de l\'environnement réseau et des règles de diversion, les résultats des tests ne sont pas totalement équivalents aux résultats réels.',
			'NetCheckScreen.invalidDomain' => 'Nom de domaine invalide',
			'NetCheckScreen.connectivity' => 'Connectivité réseau',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Tous les tests de connexion IPv4 [${p}] ont échoué',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Connexion IPv4 réussie',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Tous les tests de connexion IPv6 [${p}] ont échoué, votre réseau ne supporte peut-être pas l\'IPv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Connexion IPv6 réussie',
			'NetCheckScreen.connectivityTestOk' => 'Le réseau est connecté à Internet',
			'NetCheckScreen.connectivityTestFailed' => 'Le réseau n\'est pas encore connecté à Internet',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Tous les téléchargements ont réussi',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Téléchargement en cours ou échec du téléchargement',
			'NetCheckScreen.outbound' => 'Serveur proxy',
			'NetCheckScreen.outboundOk' => ({required Object p}) => 'Connexion à [${p}] réussie',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => 'Échec de la connexion à [${p1}]\nErreur : [${p2}]',
			'NetCheckScreen.dnsServer' => 'Serveur DNS',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Requête DNS pour [${p1}] réussie\nRègle DNS : [${p2}]\nLatence : [${p3} ms]\nAdresse : [${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => 'Requête DNS pour [${p1}] réussie\nRègle DNS : [${p2}]\nErreur : [${p3}]',
			'NetCheckScreen.host' => 'Connexion HTTP',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nRègle de diversion : [${p2}]\nServeur proxy : [${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'Connexion réussie',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'Échec de la connexion : [${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Domaine/IP',
			'NetConnectionsFilterScreen.app' => 'Application',
			'NetConnectionsFilterScreen.rule' => 'Règle',
			'NetConnectionsFilterScreen.chain' => 'Sortant',
			'NetConnectionsScreen.copyAsCSV' => 'Copié au format CSV',
			'NetConnectionsScreen.selectType' => 'Sélectionner le type de diversion',
			'PerAppAndroidScreen.title' => 'Proxy par application',
			'PerAppAndroidScreen.whiteListMode' => 'Mode liste blanche',
			'PerAppAndroidScreen.whiteListModeTip' => 'Si activé : seules les applications cochées passent par le proxy ; si désactivé : seules les applications non cochées passent par le proxy',
			'RegionSettingsScreen.title' => 'Pays ou région',
			'RegionSettingsScreen.Regions' => 'Conseil : Veuillez définir correctement votre pays ou région actuel, sinon cela pourrait causer des problèmes de diversion réseau',
			'ServerSelectScreen.title' => 'Sélectionner un serveur',
			'ServerSelectScreen.autoSelectServer' => 'Sélectionner automatiquement le serveur avec la latence la plus basse',
			'ServerSelectScreen.recentUse' => 'Récemment utilisés',
			'ServerSelectScreen.myFav' => 'Mes favoris',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Le serveur sélectionné est une adresse locale et peut ne pas fonctionner correctement : ${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Le serveur sélectionné est une adresse IPv6 et nécessite [Activer l\'IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Ce serveur a été désactivé',
			'ServerSelectScreen.error404' => 'La détection de latence a rencontré une erreur, veuillez vérifier s\'il existe une configuration avec le même contenu',
			'SettingsScreen.getTranffic' => 'Obtenir le trafic',
			'SettingsScreen.tutorial' => 'Tutoriel',
			'SettingsScreen.commonlyUsedRulesets' => 'Jeux de règles courants',
			'SettingsScreen.htmlBoard' => 'Panneau en ligne',
			'SettingsScreen.dnsLeakDetection' => 'Détection de fuites DNS',
			'SettingsScreen.proxyLeakDetection' => 'Détection de fuites proxy',
			'SettingsScreen.speedTest' => 'Test de vitesse',
			'SettingsScreen.rulesetDirectDownlad' => 'Téléchargement direct du jeu de règles',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Masquer les groupes de diversion inutilisés',
			'SettingsScreen.disableISPDiversionGroup' => 'Désactiver [${_root.meta.isp}] ${_root.meta.diversionRules}',
			'SettingsScreen.portSettingRule' => 'Basé sur les règles',
			'SettingsScreen.portSettingDirectAll' => 'Tout en direct',
			'SettingsScreen.portSettingProxyAll' => 'Tout en proxy',
			'SettingsScreen.portSettingControl' => 'Contrôle et synchronisation',
			'SettingsScreen.portSettingCluster' => 'Service de cluster',
			'SettingsScreen.modifyPort' => 'Modifier le port',
			'SettingsScreen.modifyPortOccupied' => 'Le port est occupé, veuillez utiliser un autre port',
			'SettingsScreen.ipStrategyTips' => 'Avant d\'activer, veuillez confirmer que votre réseau supporte l\'IPv6, sinon certains trafics ne pourront pas être accédés normalement.',
			'SettingsScreen.tunAppendHttpProxy' => 'Ajouter le proxy HTTP au VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Certaines applications contourneront le périphérique NIC virtuel et se connecteront directement au proxy HTTP',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Domaines autorisés à contourner le proxy HTTP',
			'SettingsScreen.dnsEnableRule' => 'Activer les règles de diversion DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] Canal de résolution',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] Activer l\'ECS',
			'SettingsScreen.dnsTestDomain' => 'Domaine de test',
			'SettingsScreen.dnsTestDomainInvalid' => 'Domaine invalide',
			'SettingsScreen.dnsTypeOutbound' => 'Serveur proxy',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'Serveur DNS',
			'SettingsScreen.dnsEnableRuleTips' => 'Une fois activé, le nom de domaine sélectionnera le serveur DNS correspondant pour la résolution selon les règles de diversion',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Après avoir activé FakeIP, si vous vous déconnectez du VPN, votre application peut avoir besoin d\'être redémarrée ; cette fonctionnalité nécessite l\'activation du [Mode TUN]',
			'SettingsScreen.dnsTypeOutboundTips' => 'Résolution de nom de domaine pour [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Résolution de nom de domaine pour [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Résolution de nom de domaine pour [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Résolution de nom de domaine pour [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Configuration automatique du serveur',
			'SettingsScreen.dnsResetServer' => 'Réinitialiser le serveur',
			'SettingsScreen.inboundDomainResolve' => 'Résoudre les noms de domaine entrants',
			'SettingsScreen.privateDirect' => 'Connexion directe au réseau privé',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Certains noms de domaine qui ne sont pas configurés avec des règles de diversion doivent être résolus avant de pouvoir correspondre aux règles de diversion basées sur l\'IP ; cette fonctionnalité affecte les requêtes entrantes sur le port proxy [${p}]',
			'SettingsScreen.useRomoteRes' => 'Utiliser des ressources distantes',
			'SettingsScreen.autoAppendRegion' => 'Attacher automatiquement les règles de base',
			'SettingsScreen.autoSelect' => 'Sélection automatique',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Ignorer les serveurs proxy [Front/Chain]',
			'SettingsScreen.autoSelectServerInterval' => 'Intervalle de vérification de latence',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Intervalle de vérification de santé du serveur actuel',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Vérifier à nouveau la latence lors d\'un changement de réseau',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Mettre à jour le serveur actuel après une vérification manuelle de latence',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Plus l\'intervalle est court, plus les données de latence du serveur sont mises à jour à temps, ce qui occupera plus de ressources et consommera plus d\'énergie',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Si la vérification échoue, le serveur est commuté ; si aucun serveur disponible n\'est trouvé lors de la commutation, le groupe revérifiera la latence',
			'SettingsScreen.autoSelectServerFavFirst' => 'Utiliser prioritairement [Mes favoris]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Si la liste [Mes favoris] n\'est pas vide, alors utiliser les serveurs de [Mes favoris]',
			'SettingsScreen.autoSelectServerFilter' => 'Filtrer les serveurs invalides',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Les serveurs dont la vérification de latence échoue seront filtrés ; si aucun serveur n\'est disponible après filtrage, les [${p}] premiers serveurs seront utilisés à la place',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Nombre maximum de serveurs',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Les serveurs dépassant ce nombre seront filtrés',
			'SettingsScreen.numInvalid' => 'Nombre invalide',
			'SettingsScreen.hideInvalidServer' => 'Masquer les serveurs invalides',
			'SettingsScreen.sortServer' => 'Tri des serveurs',
			'SettingsScreen.sortServerTips' => 'Trier par latence de la plus basse à la plus haute',
			'SettingsScreen.selectServerHideRecommand' => 'Masquer [Recommandé]',
			'SettingsScreen.selectServerHideRecent' => 'Masquer [Récemment utilisés]',
			'SettingsScreen.selectServerHideFav' => 'Masquer [Mes favoris]',
			'SettingsScreen.homeScreen' => 'Écran d\'accueil',
			'SettingsScreen.theme' => 'Thème',
			'SettingsScreen.widgetsAlpha' => 'Transparence des widgets',
			'SettingsScreen.widgetsEmpty' => 'Aucun widget disponible',
			'SettingsScreen.backgroundImage' => 'Image d\'arrière-plan',
			'SettingsScreen.myLink' => 'Lien raccourci',
			'SettingsScreen.autoConnectAfterLaunch' => 'Connexion automatique après le lancement',
			'SettingsScreen.autoConnectAtBoot' => 'Connexion automatique au démarrage du système',
			'SettingsScreen.autoConnectAtBootTips' => 'Le support du système est requis ; certains systèmes peuvent également nécessiter l\'activation du [lancement automatique].',
			'SettingsScreen.hideAfterLaunch' => 'Masquer la fenêtre après le démarrage',
			'SettingsScreen.autoSetSystemProxy' => 'Définir automatiquement le proxy système lors de la connexion',
			'SettingsScreen.bypassSystemProxy' => 'Noms de domaine autorisés à contourner le proxy système',
			'SettingsScreen.disconnectWhenQuit' => 'Déconnecter lorsque l\'application quitte',
			'SettingsScreen.autoAddToFirewall' => 'Ajouter automatiquement des règles de pare-feu',
			'SettingsScreen.excludeFromRecent' => 'Masquer des [Tâches récentes]',
			'SettingsScreen.wakeLock' => 'Empêcher la mise en veille',
			'SettingsScreen.hideVpn' => 'Masquer l\'icône VPN',
			'SettingsScreen.hideVpnTips' => 'L\'activation de l\'IPv6 fera échouer cette fonction',
			'SettingsScreen.allowBypass' => 'Autoriser les applications à contourner le VPN',
			'SettingsScreen.importSuccess' => 'Importation réussie',
			'SettingsScreen.rewriteConfirm' => 'Ce fichier écrasera la configuration locale existante. Voulez-vous continuer ?',
			'SettingsScreen.mergePerapp' => 'Fusionner les listes [${_root.PerAppAndroidScreen.title}] locales',
			'SettingsScreen.networkShare' => 'Partage réseau',
			'SettingsScreen.frontProxy' => 'Proxy Front/Chain',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Données -> Serveur proxy Front/Chain [Plusieurs serveurs : de haut en bas] -> Serveur proxy [${p}] -> Serveur cible',
			'SettingsScreen.allowOtherHostsConnect' => 'Autoriser les autres à se connecter',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks : ${sp}, http(s) : ${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'En raison des limitations du système, une fois activé, les applications de cet appareil qui utilisent le http pour accéder au réseau peuvent ne pas être en mesure de se connecter correctement au réseau.',
			'SettingsScreen.tunAutoRoute' => 'Route automatique',
			'SettingsScreen.tunAutoRedirect' => 'Redirection automatique',
			'SettingsScreen.tunStrictRoute' => 'Route stricte',
			'SettingsScreen.tunStrictRouteTips' => 'Si après l\'activation du partage, d\'autres ne peuvent pas accéder à cet appareil, veuillez essayer de désactiver ce commutateur',
			'SettingsScreen.loopbackAddress' => 'Adresse de bouclage',
			'SettingsScreen.enableCluster' => 'Activer le cluster de proxy Socks/Http',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Autoriser les autres à se connecter au cluster',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Authentification du cluster de proxy',
			'SettingsScreen.tunMode' => 'Mode TUN',
			'SettingsScreen.tuni4Address' => 'Adresse IP',
			'SettingsScreen.tunModeTips' => 'Le mode TUN prendra en charge tout le trafic du système [Dans ce mode, vous pouvez laisser le proxy système non activé]',
			'SettingsScreen.tunModeRunAsAdmin' => 'Le mode TUN nécessite des autorisations d\'administrateur système, veuillez redémarrer l\'application en tant qu\'administrateur',
			'SettingsScreen.tunStack' => 'Pile',
			'SettingsScreen.tunHijackTips' => 'Après la fermeture, les requêtes DNS du TUN seront transférées directement au serveur DNS correspondant',
			'SettingsScreen.launchAtStartup' => 'Lancer au démarrage',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Quitter l\'application lors du changement d\'utilisateur système',
			'SettingsScreen.handleScheme' => 'Appel du schéma système',
			'SettingsScreen.portableMode' => 'Mode portable',
			'SettingsScreen.portableModeDisableTips' => 'Si vous devez quitter le mode portable, veuillez quitter [karing] et supprimer manuellement le dossier [profiles] dans le même répertoire que [karing.exe]',
			'SettingsScreen.accessibility' => 'Accessibilité',
			'SettingsScreen.handleKaringScheme' => 'Gérer l\'appel karing://',
			'SettingsScreen.handleClashScheme' => 'Gérer l\'appel clash://',
			'SettingsScreen.handleSingboxScheme' => 'Gérer l\'appel sing-box://',
			'SettingsScreen.alwayOnVPN' => 'Connexion permanente',
			'SettingsScreen.disconnectAfterSleep' => 'Déconnecter après la mise en veille du système',
			'SettingsScreen.removeSystemVPNConfig' => 'Supprimer la configuration VPN du système',
			'SettingsScreen.timeConnectOrDisconnect' => 'Connexion/déconnexion programmée',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'Le VPN doit être connecté pour prendre effet ; une fois activé, la [Mise en veille automatique] sera désactivée',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'L\'intervalle de connexion/déconnexion ne peut pas être inférieur à ${p} minutes',
			'SettingsScreen.disableFontScaler' => 'Désactiver la mise à l\'échelle des polices (le redémarrage prend effet)',
			'SettingsScreen.autoOrientation' => 'Rotation avec l\'écran',
			'SettingsScreen.restartTakesEffect' => 'Le redémarrage prend effet',
			'SettingsScreen.reconnectTakesEffect' => 'La reconnexion prend effet',
			'SettingsScreen.resetSettings' => 'Réinitialiser les paramètres',
			'SettingsScreen.cleanCache' => 'Nettoyer le cache',
			'SettingsScreen.cleanCacheDone' => 'Nettoyage terminé',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Mettre à jour vers la version ${p}',
			'SettingsScreen.follow' => 'Suivez-nous',
			'SettingsScreen.contactUs' => 'Contactez-nous',
			'SettingsScreen.supportUs' => 'Soutenez-nous',
			'SettingsScreen.rateInAppStore' => 'Évaluez-nous sur l\'AppStore',
			'SettingsScreen.rateInApp' => 'Évaluez-nous',
			'UserAgreementScreen.privacyFirst' => 'Votre vie privée passe avant tout',
			'UserAgreementScreen.agreeAndContinue' => 'Accepter et continuer',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'La nouvelle version [${p}] est prête',
			'VersionUpdateScreen.update' => 'Redémarrer pour mettre à jour',
			'VersionUpdateScreen.cancel' => 'Pas maintenant',
			'CommonWidget.diableAlwayOnVPN' => 'Si [VPN toujours activé] est activé, veuillez le désactiver et essayer de vous reconnecter',
			'CommonWidget.resetPort' => 'Veuillez changer le port pour un autre port disponible ou fermer l\'application occupant le port.',
			'main.tray.menuOpen' => 'Ouvrir',
			'main.tray.menuExit' => 'Quitter',
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
			'meta.paste' => 'Coller',
			'meta.cut' => 'Couper',
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
			'meta.outletIpByCurrentSelected' => 'IP de sortie',
			'meta.outletIpByDirect' => 'IP : ${_root.outboundRuleMode.direct}',
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
			'meta.decryptPassword' => 'Mot de passe de déchiffrement',
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
			'meta.diversion' => 'Routage',
			'meta.diversionRules' => 'Règles de routage',
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
			_ => null,
		} ?? switch (path) {
			'tls.mixedCaseSNIEnable' => 'Activer le SNI mixte TLS',
			'tls.paddingEnable' => 'Activer le remplissage TLS',
			'tls.paddingSize' => 'Taille du remplissage TLS',
			'outboundRuleMode.currentSelected' => 'Actuellement sélectionné',
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
