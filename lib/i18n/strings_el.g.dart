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
class TranslationsEl with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.el,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <el>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEl _root = this; // ignore: unused_field

	@override 
	TranslationsEl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEl(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenEl AboutScreen = _TranslationsAboutScreenEl._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenEl BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenEl._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenEl DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenEl._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenEl DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenEl._(_root);
	@override late final _TranslationsDiversionRulesScreenEl DiversionRulesScreen = _TranslationsDiversionRulesScreenEl._(_root);
	@override late final _TranslationsDnsSettingsScreenEl DnsSettingsScreen = _TranslationsDnsSettingsScreenEl._(_root);
	@override late final _TranslationsFileContentViewerScreenEl FileContentViewerScreen = _TranslationsFileContentViewerScreenEl._(_root);
	@override late final _TranslationsHomeScreenEl HomeScreen = _TranslationsHomeScreenEl._(_root);
	@override late final _TranslationsLaunchFailedScreenEl LaunchFailedScreen = _TranslationsLaunchFailedScreenEl._(_root);
	@override late final _TranslationsMyProfilesMergeScreenEl MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenEl._(_root);
	@override late final _TranslationsNetCheckScreenEl NetCheckScreen = _TranslationsNetCheckScreenEl._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenEl NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenEl._(_root);
	@override late final _TranslationsNetConnectionsScreenEl NetConnectionsScreen = _TranslationsNetConnectionsScreenEl._(_root);
	@override late final _TranslationsPerAppAndroidScreenEl PerAppAndroidScreen = _TranslationsPerAppAndroidScreenEl._(_root);
	@override late final _TranslationsRegionSettingsScreenEl RegionSettingsScreen = _TranslationsRegionSettingsScreenEl._(_root);
	@override late final _TranslationsServerSelectScreenEl ServerSelectScreen = _TranslationsServerSelectScreenEl._(_root);
	@override late final _TranslationsSettingsScreenEl SettingsScreen = _TranslationsSettingsScreenEl._(_root);
	@override late final _TranslationsUserAgreementScreenEl UserAgreementScreen = _TranslationsUserAgreementScreenEl._(_root);
	@override late final _TranslationsVersionUpdateScreenEl VersionUpdateScreen = _TranslationsVersionUpdateScreenEl._(_root);
	@override late final _TranslationsCommonWidgetEl CommonWidget = _TranslationsCommonWidgetEl._(_root);
	@override late final _TranslationsMainEl main = _TranslationsMainEl._(_root);
	@override late final _TranslationsMetaEl meta = _TranslationsMetaEl._(_root);
	@override String get diversionRulesKeep => 'Διατήρηση [${_root.meta.diversionRules}] του [${_root.meta.isp}]';
	@override String get diversionCustomGroupPreset => 'Προκαθορισμένη [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Σημείωση: Τα ενεργοποιημένα στοιχεία θα προστεθούν/αντικαταστήσουν στο [${_root.meta.diversionCustomGroup}] και στο [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Σημείωση: Μετά την προσθήκη, ίσως χρειαστεί να προσαρμόσετε χειροκίνητα τη σειρά, διαφορετικά η πρόσφατα προστιθέμενη εκτροπή ενδέχεται να μην τεθεί σε ισχύ';
	@override String get rulesetEnableTips => 'Συμβουλή: Μετά την ενεργοποίηση των επιλογών, παρακαλούμε μεταβείτε στο [${_root.meta.diversionRules}] για να ορίσετε τους σχετικούς κανόνες, διαφορετικά δεν θα τεθούν σε ισχύ';
	@override String get ispUserAgentTips => 'Το [${_root.meta.isp}] θα στείλει δεδομένα διαφορετικών τύπων συνδρομής με βάση το [UserAgent] στο αίτημα [HTTP]';
	@override String get ispDiversionTips => 'Το [${_root.meta.isp}] παρέχει κανόνες εκτροπής κίνησης. Οι συνδρομές τύπου [V2Ray] δεν υποστηρίζουν κανόνες εκτροπής κίνησης';
	@override late final _TranslationsIspEl isp = _TranslationsIspEl._(_root);
	@override late final _TranslationsPermissionEl permission = _TranslationsPermissionEl._(_root);
	@override late final _TranslationsTlsEl tls = _TranslationsTlsEl._(_root);
	@override late final _TranslationsOutboundRuleModeEl outboundRuleMode = _TranslationsOutboundRuleModeEl._(_root);
	@override late final _TranslationsDnsProxyResolveModeEl dnsProxyResolveMode = _TranslationsDnsProxyResolveModeEl._(_root);
	@override late final _TranslationsProxyStrategyEl proxyStrategy = _TranslationsProxyStrategyEl._(_root);
	@override late final _TranslationsReloadReasonEl reloadReason = _TranslationsReloadReasonEl._(_root);
	@override late final _TranslationsThemeEl theme = _TranslationsThemeEl._(_root);
	@override String get downloadProxyStrategy => 'Κανάλι λήψης';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Σύνδεση στον διακομιστή DNS μέσω του διακομιστή proxy για την επίλυση του ονόματος τομέα\n[${_root.dnsProxyResolveMode.direct}]: Σύνδεση απευθείας στον διακομιστή DNS για την επίλυση του ονόματος τομέα\n[${_root.dnsProxyResolveMode.fakeip}]: Ο διακομιστής proxy επιλύει το όνομα τομέα για λογαριασμό σας. Εάν αποσυνδέσετε τη σύνδεση VPN, η εφαρμογή σας μπορεί να χρειαστεί επανεκκίνηση. Ισχύει μόνο για την εισερχόμενη κίνηση [TUN]';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'Πρωτόκολλο Sniff';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Παρακαλούμε χρησιμοποιήστε το [${p}]';
	@override String get turnOffPrivateDirect => 'Παρακαλούμε ενεργοποιήστε πρώτα την [Άμεση σύνδεση ιδιωτικού δικτύου]';
	@override String targetConnectFailed({required Object p}) => 'Αποτυχία σύνδεσης στο [${p}]. Παρακαλούμε βεβαιωθείτε ότι οι συσκευές βρίσκονται στο ίδιο LAN';
	@override String get appleTVSync => 'Συγχρονισμός της τρέχουσας διαμόρφωσης πυρήνα στο Apple TV - Karing';
	@override String get appleTVSyncDone => 'Ο συγχρονισμός ολοκληρώθηκε. Παρακαλούμε μεταβείτε στο Apple TV - Karing για να ξεκινήσετε τη σύνδεση/επανεκκινήσετε τη σύνδεση';
	@override String get appleTVRemoveCoreConfig => 'Διαγραφή διαμόρφωσης πυρήνα Apple TV - Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Η διαμόρφωση πυρήνα του Apple TV - Karing διαγράφηκε. Η υπηρεσία VPN αποσυνδέθηκε';
	@override String get appleTVUrlInvalid => 'Μη έγκυρο URL, παρακαλούμε ανοίξτε το Apple TV - Karing και σαρώστε τον κωδικό QR που εμφανίζεται από το Karing';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] δεν έχει αυτή τη λειτουργία, παρακαλούμε ενημερώστε και δοκιμάστε ξανά';
	@override String appleCoreVersionNotMatch({required Object p}) => 'Η κύρια έκδοση του πυρήνα δεν ταιριάζει, παρακαλούμε ενημερώστε το [${p}] και δοκιμάστε ξανά';
	@override String get remoteProfileEditConfirm => 'Μετά την ενημέρωση του προφίλ, οι αλλαγές στον κόμβο θα αποκατασταθούν. Συνέχεια;';
	@override String get mustBeValidHttpsURL => 'Πρέπει να είναι ένα έγκυρο https URL';
	@override String fileNotExistReinstall({required Object p}) => 'Το αρχείο λείπει [${p}], παρακαλούμε επανεγκαταστήστε';
	@override String get noNetworkConnect => 'Δεν υπάρχει σύνδεση στο διαδίκτυο';
	@override String get sudoPassword => 'κωδικός πρόσβασης sudo (απαιτείται για τη λειτουργία TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Συνιστάται η μετάβαση σε [Λειτουργία πτήσης] πριν από την εγκατάσταση της ενημέρωσης';
	@override String get latencyTestResolveIP => 'Κατά τον μη αυτόματο έλεγχο, επίλυση της IP εξόδου';
	@override String get latencyTestConcurrency => 'Ταυτοχρονισμός';
	@override String get edgeRuntimeNotInstalled => 'Η τρέχουσα συσκευή δεν έχει εγκατεστημένο το περιβάλλον εκτέλεσης Edge WebView2, επομένως η σελίδα δεν μπορεί να εμφανιστεί. Παρακαλούμε κατεβάστε και εγκαταστήστε το περιβάλλον εκτέλεσης Edge WebView2 (x64), επανεκκινήστε την εφαρμογή και δοκιμάστε ξανά.';
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
	};
}

// Path: AboutScreen
class _TranslationsAboutScreenEl implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Πηγή εγκατάστασης';
	@override String get installTime => 'Ώρα εγκατάστασης';
	@override String get versionChannel => 'Κανάλι αυτόματης ενημέρωσης';
	@override String get updateWhenConnected => 'Ελέγξτε για ενημερώσεις μετά τη σύνδεση';
	@override String get autoDownloadPkg => 'Αυτόματη λήψη πακέτων ενημέρωσης';
	@override String get disableAppImproveData => 'Δεδομένα βελτίωσης εφαρμογής';
	@override String get disableUAReportTip => 'Η ενεργοποίηση του [${_root.AboutScreen.disableAppImproveData}] μας βοηθά να βελτιώσουμε τη σταθερότητα και τη χρηστικότητα του προϊόντος. Δεν συλλέγουμε προσωπικά δεδομένα απορρήτου. Η απενεργοποίηση θα εμποδίσει την εφαρμογή από τη συλλογή οποιωνδήποτε δεδομένων.';
	@override String get devOptions => 'Επιλογές προγραμματιστή';
	@override String get enableDebugLog => 'Ενεργοποίηση αρχείου καταγραφής σφαλμάτων';
	@override String get viewFilsContent => 'Προβολή αρχείων';
	@override String get enablePprof => 'Ενεργοποίηση pprof';
	@override String get pprofPanel => 'Πίνακας pprof';
	@override String get allowRemoteAccessPprof => 'Να επιτρέπεται η απομακρυσμένη πρόσβαση στο ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Να επιτρέπεται η απομακρυσμένη πρόσβαση στο ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Χρήση αρχικού προφίλ sing-box';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenEl implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'URL διακομιστή';
	@override String get webdavRequired => 'Δεν μπορεί να είναι κενό';
	@override String get webdavLoginFailed => 'Η σύνδεση απέτυχε:';
	@override String get webdavListFailed => 'Αποτυχία λήψης λίστας αρχείων:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenEl implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'Μη έγκυρο [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => 'Μη έγκυρο [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'Μη έγκυρο [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'Μη έγκυρο [Σύνολο κανόνων]:${p}, Το URL πρέπει να είναι ένα έγκυρο https URL και ένα δυαδικό αρχείο με επέκταση .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => 'Μη έγκυρο [Σύνολο κανόνων (ενσωματωμένο)]:${p}, Η μορφή είναι geosite:xxx ή geoip:xxx ή acl:xxx, και το xxx πρέπει να είναι ένα έγκυρο όνομα κανόνα';
	@override String invalidPackageId({required Object p}) => 'Μη έγκυρο [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'Συμβουλή: Μετά την αποθήκευση, μεταβείτε στο [${_root.meta.diversionRules}] για να ορίσετε τους σχετικούς κανόνες, διαφορετικά δεν θα τεθούν σε ισχύ';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenEl implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ανίχνευση κανόνων εκτροπής';
	@override String get rule => 'Κανόνας:';
	@override String get outbound => 'Διακομιστής Proxy:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenEl implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Συμβουλή: Προσπαθήστε να αντιστοιχίσετε τους κανόνες από πάνω προς τα κάτω. Εάν κανένας κανόνας δεν ταιριάζει, χρησιμοποιήστε το [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenEl implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'Το ISP δεν μπορεί να είναι κενό';
	@override String get urlCanNotEmpty => 'Το URL δεν μπορεί να είναι κενό';
	@override String error({required Object p}) => 'Μη υποστηριζόμενος τύπος:${p}';
	@override String get dnsDesc => 'Η πρώτη στήλη δεδομένων καθυστέρησης είναι η καθυστέρηση ερωτήματος άμεσης σύνδεσης.\nΗ δεύτερη στήλη: Ενεργοποιήστε την επιλογή [[Κίνηση Proxy]Επίλυση DNS μέσω διακομιστή proxy]: τα δεδομένα καθυστέρησης είναι η καθυστέρηση ερωτήματος που προωθείται μέσω του τρέχοντος διακομιστή proxy. Εάν η επιλογή [[Κίνηση Proxy]Επίλυση DNS μέσω διακομιστή proxy] είναι απενεργοποιημένη: Τα δεδομένα καθυστέρησης είναι η καθυστέρηση ερωτήματος άμεσης σύνδεσης';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenEl implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Προβολή περιεχομένου αρχείου';
	@override String get clearFileContent => 'Είστε βέβαιοι ότι θέλετε να εκκαθαρίσετε το περιεχόμενο του αρχείου;';
	@override String get clearFileContentTips => 'Είστε βέβαιοι ότι θέλετε να εκκαθαρίσετε το περιεχόμενο του αρχείου Προφίλ; Η εκκαθάριση του αρχείου Προφίλ μπορεί να προκαλέσει απώλεια δεδομένων ή μη φυσιολογικές λειτουργίες της εφαρμογής, παρακαλούμε ενεργήστε με προσοχή';
}

// Path: HomeScreen
class _TranslationsHomeScreenEl implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Παρακαλώ επιλέξτε έναν διακομιστή';
	@override String get invalidServer => 'είναι μη έγκυρο, παρακαλώ επιλέξτε ξανά';
	@override String get disabledServer => 'είναι απενεργοποιημένο, παρακαλώ επιλέξτε ξανά';
	@override String get expiredServer => 'Δεν υπάρχουν διαθέσιμοι διακομιστές, τα προφίλ ενδέχεται να έχουν λήξει ή να είναι απενεργοποιημένα';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'Παρακαλώ ρυθμίστε το [Σύνδεσμο συντόμευσης] πριν τον χρησιμοποιήσετε';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Πάρα πολλοί διακομιστές proxy [${p}>${p1}], και η σύνδεση ενδέχεται να αποτύχει λόγω περιορισμών μνήμης του συστήματος';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Πάρα πολλοί διακομιστές proxy [${p}>${p1}] μπορεί να προκαλέσουν αργές ή απρόσιτες συνδέσεις';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenEl implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'Η εφαρμογή απέτυχε να ξεκινήσει [Μη έγκυρο όνομα διαδικασίας], παρακαλούμε επανεγκαταστήστε την εφαρμογή σε ξεχωριστό κατάλογο';
	@override String get invalidProfile => 'Η εφαρμογή απέτυχε να ξεκινήσει [Αποτυχία πρόσβασης στο προφίλ], παρακαλούμε επανεγκαταστήστε την εφαρμογή';
	@override String get invalidVersion => 'Η εφαρμογή απέτυχε να ξεκινήσει [Μη έγκυρη έκδοση], παρακαλούμε επανεγκαταστήστε την εφαρμογή';
	@override String get systemVersionLow => 'Η εφαρμογή απέτυχε να ξεκινήσει [η έκδοση του συστήματος είναι πολύ χαμηλή]';
	@override String get invalidInstallPath => 'Η διαδρομή εγκατάστασης είναι μη έγκυρη, παρακαλούμε επανεγκαταστήστε την σε μια έγκυρη διαδρομή';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenEl implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Συγχώνευση προφίλ';
	@override String get profilesMergeTarget => 'Προφίλ προορισμού';
	@override String get profilesMergeSource => 'Προφίλ πηγής';
	@override String get profilesMergeTips => 'Συμβουλή: Η εκτροπή των προφίλ πηγής θα απορριφθεί';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenEl implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Έλεγχος δικτύου';
	@override String get warn => 'Σημείωση: Λόγω της επίδρασης του περιβάλλοντος δικτύου και των κανόνων εκτροπής, τα αποτελέσματα των δοκιμών δεν είναι απολύτως ισοδύναμα με τα πραγματικά αποτελέσματα.';
	@override String get invalidDomain => 'Μη έγκυρο όνομα τομέα';
	@override String get connectivity => 'Συνδεσιμότητα δικτύου';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Η δοκιμή σύνδεσης Ipv4 [${p}] απέτυχε όλες';
	@override String get connectivityTestIpv4Ok => 'Η σύνδεση Ipv4 πέτυχε';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Η δοκιμή σύνδεσης Ipv6 [${p}] απέτυχε όλες, το δίκτυό σας ενδέχεται να μην υποστηρίζει ipv6';
	@override String get connectivityTestIpv6Ok => 'Η σύνδεση Ipv6 πέτυχε';
	@override String get connectivityTestOk => 'Το δίκτυο είναι συνδεδεμένο στο διαδίκτυο';
	@override String get connectivityTestFailed => 'Το δίκτυο δεν είναι ακόμη συνδεδεμένο στο διαδίκτυο';
	@override String get remoteRulesetsDownloadOk => 'Όλα κατέβηκαν επιτυχώς';
	@override String get remoteRulesetsDownloadNotOk => 'Λήψη ή αποτυχία λήψης';
	@override String get outbound => 'Διακομιστής Proxy';
	@override String outboundOk({required Object p}) => '[${p}] σύνδεση επιτυχής';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] σύνδεση απέτυχε\nΣφάλμα:[${p2}]';
	@override String get dnsServer => 'Διακομιστής DNS';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] Ερώτημα DNS επιτυχές\nΚανόνας DNS:[${p2}]\nΚαθυστέρηση:[${p3} ms]\nΔιεύθυνση:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}] Ερώτημα DNS επιτυχές\n nΚανόνας DNS:[${p2}]\nΣφάλμα:[${p3}]';
	@override String get host => 'Σύνδεση HTTP';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nΚανόναςΕκτροπής:[${p2}]\nΔιακομιστής Proxy:[${p3}]';
	@override String get hostConnectionOk => 'σύνδεση επιτυχής';
	@override String hostConnectionFailed({required Object p}) => 'αποτυχία σύνδεσης:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenEl implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Τομέας/IP';
	@override String get app => 'Εφαρμογή';
	@override String get rule => 'Κανόνας';
	@override String get chain => 'Εξερχόμενα';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenEl implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Αντιγράφηκε σε μορφή CSV';
	@override String get selectType => 'Επιλογή τύπου εκτροπής';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenEl implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proxy ανά εφαρμογή';
	@override String get whiteListMode => 'Λειτουργία Λευκής Λίστας';
	@override String get whiteListModeTip => 'Όταν είναι ενεργοποιημένο: μόνο οι επισημασμένες εφαρμογές είναι proxies. Όταν δεν είναι ενεργοποιημένο: μόνο οι μη επισημασμένες εφαρμογές είναι proxies';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenEl implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Χώρα ή Περιοχή';
	@override String get Regions => 'Συμβουλή: Παρακαλούμε ρυθμίστε σωστά την τρέχουσα χώρα ή περιοχή σας, διαφορετικά μπορεί να προκαλέσει προβλήματα εκτροπής δικτύου';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenEl implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επιλογή διακομιστή';
	@override String get autoSelectServer => 'Αυτόματη επιλογή του διακομιστή με τη χαμηλότερη καθυστέρηση';
	@override String get recentUse => 'Πρόσφατη χρήση';
	@override String get myFav => 'Τα αγαπημένα μου';
	@override String selectLocal({required Object p}) => 'Ο επιλεγμένος διακομιστής είναι μια τοπική διεύθυνση και ενδέχεται να μην λειτουργεί σωστά:${p}';
	@override String get selectRequireEnableIPv6 => 'Ο επιλεγμένος διακομιστής είναι μια διεύθυνση IPv6 και απαιτεί την επιλογή [Ενεργοποίηση IPv6]';
	@override String get selectDisabled => 'Αυτός ο διακομιστής έχει απενεργοποιηθεί';
	@override String get error404 => 'Η ανίχνευση καθυστέρησης αντιμετώπισε σφάλμα, παρακαλούμε ελέγξτε εάν υπάρχει διαμόρφωση με το ίδιο περιεχόμενο';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenEl implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Λήψη κίνησης';
	@override String get tutorial => 'Οδηγός';
	@override String get commonlyUsedRulesets => 'Συνηθισμένα σύνολα κανόνων';
	@override String get htmlBoard => 'Διαδικτυακός πίνακας';
	@override String get dnsLeakDetection => 'Ανίχνευση διαρροής DNS';
	@override String get proxyLeakDetection => 'Ανίχνευση διαρροής Proxy';
	@override String get speedTest => 'Δοκιμή ταχύτητας';
	@override String get rulesetDirectDownlad => 'Άμεση λήψη συνόλου κανόνων';
	@override String get hideUnusedDiversionGroup => 'Απόκρυψη μη χρησιμοποιούμενων κανόνων εκτροπής';
	@override String get disableISPDiversionGroup => 'Απενεργοποίηση [${_root.meta.diversionRules}] του [${_root.meta.isp}]';
	@override String get portSettingRule => 'Βασισμένο σε κανόνες';
	@override String get portSettingDirectAll => 'Όλα άμεσα';
	@override String get portSettingProxyAll => 'Όλα μέσω Proxy';
	@override String get portSettingControl => 'Έλεγχος και Συγχρονισμός';
	@override String get portSettingCluster => 'Υπηρεσία Cluster';
	@override String get modifyPort => 'Τροποποίηση θύρας';
	@override String get modifyPortOccupied => 'Η θύρα είναι κατειλημμένη, παρακαλούμε χρησιμοποιήστε άλλη θύρα';
	@override String get ipStrategyTips => 'Πριν την ενεργοποίηση, επιβεβαιώστε ότι το δίκτυό σας υποστηρίζει IPv6, διαφορετικά μέρος της κίνησης δεν θα είναι προσβάσιμο κανονικά.';
	@override String get tunAppendHttpProxy => 'Προσθήκη HTTP Proxy στο VPN';
	@override String get tunAppendHttpProxyTips => 'Ορισμένες εφαρμογές θα παρακάμψουν την εικονική συσκευή NIC και θα συνδεθούν απευθείας στο HTTP proxy';
	@override String get tunAllowBypassHttpProxyDomain => 'Τομείς που επιτρέπεται να παρακάμπτουν το HTTP proxy';
	@override String get dnsEnableRule => 'Ενεργοποίηση κανόνων εκτροπής DNS';
	@override String get dnsEnableProxyResolveMode => 'Κανάλι ανάλυσης [${_root.meta.trafficProxy}]';
	@override String get dnsEnableClientSubnet => 'Ενεργοποίηση ECS στο [${_root.meta.trafficDirect}]';
	@override String get dnsTestDomain => 'Τομέας δοκιμής';
	@override String get dnsTestDomainInvalid => 'Μη έγκυρος τομέας';
	@override String get dnsTypeOutbound => 'Διακομιστής Proxy';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'Διακομιστής DNS';
	@override String get dnsEnableRuleTips => 'Μετά την ενεργοποίηση, το όνομα τομέα θα επιλέγει τον αντίστοιχο διακομιστή DNS για ανάλυση σύμφωνα με τους κανόνες εκτροπής';
	@override String get dnsEnableFakeIpTips => 'Μετά την ενεργοποίηση του FakeIP, εάν αποσυνδεθείτε από το VPN, η εφαρμογή σας μπορεί να χρειαστεί επανεκκίνηση. Αυτή η λειτουργία απαιτεί την ενεργοποίηση της [Λειτουργίας TUN]';
	@override String get dnsTypeOutboundTips => 'Ανάλυση ονόματος τομέα για [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Ανάλυση ονόματος τομέα για [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Ανάλυση ονόματος τομέα για [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Ανάλυση ονόματος τομέα για [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Αυτόματη ρύθμιση διακομιστή';
	@override String get dnsResetServer => 'Επαναφορά διακομιστή';
	@override String get inboundDomainResolve => 'Επίλυση εισερχόμενων ονομάτων τομέα';
	@override String get privateDirect => 'Άμεση σύνδεση ιδιωτικού δικτύου';
	@override String inboundDomainResolveTips({required Object p}) => 'Ορισμένα ονόματα τομέα που δεν έχουν διαμορφωθεί με κανόνες εκτροπής πρέπει να επιλυθούν πριν μπορέσουν να χτυπήσουν τους κανόνες εκτροπής που βασίζονται σε IP. Αυτή η λειτουργία επηρεάζει τα εισερχόμενα αιτήματα στη θύρα proxy [${p}]';
	@override String get useRomoteRes => 'Χρήση απομακρυσμένων πόρων';
	@override String get autoAppendRegion => 'Αυτόματη προσάρτηση βασικών κανόνων';
	@override String get autoSelect => 'Αυτόματη επιλογή';
	@override String get autoSelectServerIgnorePerProxyServer => 'Παράβλεψη διακομιστών proxy [Front/Chain]';
	@override String get autoSelectServerInterval => 'Μεσοδιάστημα για ελέγχους καθυστέρησης';
	@override String get autoSelectSelectedHealthCheckInterval => 'Τρέχον μεσοδιάστημα ελέγχου υγείας διακομιστή';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Επανέλεγχος καθυστέρησης κατά την αλλαγή δικτύου';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Ενημέρωση του τρέχοντος διακομιστή μετά από μη αυτόματο έλεγχο καθυστέρησης';
	@override String get autoSelectServerIntervalTips => 'Όσο μικρότερο είναι το χρονικό διάστημα, τόσο πιο έγκαιρα ενημερώνονται τα δεδομένα καθυστέρησης του διακομιστή, γεγονός που θα καταλαμβάνει περισσότερους πόρους και θα καταναλώνει περισσότερη ενέργεια';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Εάν ο έλεγχος αποτύχει, ο διακομιστής αλλάζει. Εάν δεν βρεθεί διαθέσιμος διακομιστής κατά την αλλαγή διακομιστή, η ομάδα θα ελέγξει ξανά την καθυστέρηση';
	@override String get autoSelectServerFavFirst => 'Προτεραιότητα στη χρήση [Τα αγαπημένα μου]';
	@override String get autoSelectServerFavFirstTips => 'Εάν η λίστα [Τα αγαπημένα μου] δεν είναι κενή, χρησιμοποιήστε τους διακομιστές στο [Τα αγαπημένα μου]';
	@override String get autoSelectServerFilter => 'Φιλτράρισμα μη έγκυρων διακομιστών';
	@override String autoSelectServerFilterTips({required Object p}) => 'Οι έλεγχοι καθυστέρησης διακομιστή που αποτυγχάνουν θα φιλτράρονται. Εάν δεν υπάρχει διαθέσιμος διακομιστής μετά το φιλτράρισμα, θα χρησιμοποιηθούν αντ\' αυτού οι πρώτοι [${p}] διακομιστές';
	@override String get autoSelectServerLimitedNum => 'Μέγιστος αριθμός διακομιστών';
	@override String get autoSelectServerLimitedNumTips => 'Οι διακομιστές που υπερβαίνουν αυτόν τον αριθμό θα φιλτράρονται';
	@override String get numInvalid => 'Μη έγκυρος αριθμός';
	@override String get hideInvalidServer => 'Απόκρυψη μη έγκυρων διακομιστών';
	@override String get sortServer => 'Ταξινόμηση διακομιστών';
	@override String get sortServerTips => 'Ταξινόμηση κατά καθυστέρηση από τη χαμηλότερη στην υψηλότερη';
	@override String get selectServerHideRecommand => 'Απόκρυψη [Προτεινόμενα]';
	@override String get selectServerHideRecent => 'Απόκρυψη [Πρόσφατη χρήση]';
	@override String get selectServerHideFav => 'Απόκρυψη [Τα αγαπημένα μου]';
	@override String get homeScreen => 'Αρχική οθόνη';
	@override String get theme => 'Θέμα';
	@override String get widgetsAlpha => 'Διαφάνεια Widgets';
	@override String get widgetsEmpty => 'Δεν υπάρχει διαθέσιμο widget';
	@override String get backgroundImage => 'Εικόνα φόντου';
	@override String get myLink => 'Σύνδεσμος συντόμευσης';
	@override String get autoConnectAfterLaunch => 'Αυτόματη σύνδεση μετά την εκκίνηση';
	@override String get autoConnectAtBoot => 'Αυτόματη σύνδεση κατά την εκκίνηση του συστήματος';
	@override String get autoConnectAtBootTips => 'Απαιτείται υποστήριξη συστήματος. Ορισμένα συστήματα ενδέχεται επίσης να απαιτούν την ενεργοποίηση της [αυτόματης εκκίνησης].';
	@override String get hideAfterLaunch => 'Απόκρυψη παραθύρου μετά την εκκίνηση';
	@override String get autoSetSystemProxy => 'Αυτόματη ρύθμιση proxy συστήματος κατά τη σύνδεση';
	@override String get bypassSystemProxy => 'Ονόματα τομέα που επιτρέπεται να παρακάμπτουν το proxy συστήματος';
	@override String get disconnectWhenQuit => 'Αποσύνδεση κατά την έξοδο από την εφαρμογή';
	@override String get autoAddToFirewall => 'Αυτόματη προσθήκη κανόνων τείχους προστασίας';
	@override String get excludeFromRecent => 'Απόκρυψη από τις [Πρόσφατες εργασίες]';
	@override String get wakeLock => 'Κλείδωμα αφύπνισης';
	@override String get hideVpn => 'Απόκρυψη εικονιδίου VPN';
	@override String get hideVpnTips => 'Η ενεργοποίηση του IPv6 θα προκαλέσει την αποτυχία αυτής της λειτουργίας';
	@override String get allowBypass => 'Να επιτρέπεται στις εφαρμογές να παρακάμπτουν το VPN';
	@override String get importSuccess => 'Η εισαγωγή πέτυχε';
	@override String get rewriteConfirm => 'Αυτό το αρχείο θα αντικαταστήσει την υπάρχουσα τοπική διαμόρφωση. Θέλετε να συνεχίσετε;';
	@override String get mergePerapp => 'Συγχώνευση τοπικών λιστών [${_root.PerAppAndroidScreen.title}]';
	@override String get networkShare => 'Κοινή χρήση δικτύου';
	@override String get frontProxy => 'Front/Chain Proxy';
	@override String frontProxyTips({required Object p}) => 'Δεδομένα->Διακομιστής Front/Chain Proxy [Πολλαπλοί διακομιστές Proxy: Από πάνω προς τα κάτω]->Διακομιστής Proxy [${p}]->Διακομιστής προορισμού';
	@override String get allowOtherHostsConnect => 'Να επιτρέπεται σε άλλους να συνδέονται';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'Λόγω περιορισμών του συστήματος, μετά την ενεργοποίηση αυτού, οι εφαρμογές σε αυτήν τη συσκευή που χρησιμοποιούν http για πρόσβαση στο δίκτυο ενδέχεται να μην μπορούν να συνδεθούν σωστά στο δίκτυο.';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunAutoRedirect => 'Auto Redirect';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'Εάν μετά την ενεργοποίηση της κοινής χρήσης άλλοι δεν μπορούν να έχουν πρόσβαση σε αυτήν τη συσκευή, παρακαλούμε δοκιμάστε να απενεργοποιήσετε αυτόν τον διακόπτη';
	@override String get loopbackAddress => 'Διεύθυνση Loopback';
	@override String get enableCluster => 'Ενεργοποίηση Socks/Http Proxy Cluster';
	@override String get clusterAllowOtherHostsConnect => 'Να επιτρέπεται σε άλλους να συνδέονται στο cluster';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Έλεγχος ταυτότητας Proxy Cluster';
	@override String get tunMode => 'Λειτουργία TUN';
	@override String get tuni4Address => 'Διεύθυνση IP';
	@override String get tunModeTips => 'Η λειτουργία TUN θα αναλάβει όλη την κίνηση του συστήματος [Σε αυτήν τη λειτουργία, μπορείτε να αφήσετε το proxy συστήματος απενεργοποιημένο]';
	@override String get tunModeRunAsAdmin => 'Η λειτουργία TUN απαιτεί δικαιώματα διαχειριστή συστήματος, παρακαλούμε επανεκκινήστε την εφαρμογή ως διαχειριστής';
	@override String get tunStack => 'Στοίβα';
	@override String get tunHijackTips => 'Μετά το κλείσιμο, τα αιτήματα DNS από το TUN θα προωθούνται απευθείας στον αντίστοιχο διακομιστή DNS';
	@override String get launchAtStartup => 'Εκκίνηση κατά την έναρξη';
	@override String get quitWhenSwitchSystemUser => 'Έξοδος από την εφαρμογή κατά την εναλλαγή χρηστών συστήματος';
	@override String get handleScheme => 'Κλήση σχήματος συστήματος';
	@override String get portableMode => 'Φορητή λειτουργία';
	@override String get portableModeDisableTips => 'Εάν πρέπει να βγείτε από τη φορητή λειτουργία, παρακαλούμε βγείτε από το [karing] και διαγράψτε χειροκίνητα το φάκελο [profiles] στον ίδιο κατάλογο με το [karing.exe]';
	@override String get accessibility => 'Προσβασιμότητα';
	@override String get handleKaringScheme => 'Χειρισμός κλήσης karing://';
	@override String get handleClashScheme => 'Χειρισμός κλήσης clash://';
	@override String get handleSingboxScheme => 'Χειρισμός κλήσης sing-box://';
	@override String get alwayOnVPN => 'Σύνδεση πάντα ενεργή';
	@override String get disconnectAfterSleep => 'Αποσύνδεση μετά την αναστολή λειτουργίας του συστήματος';
	@override String get removeSystemVPNConfig => 'Διαγραφή διαμόρφωσης VPN συστήματος';
	@override String get timeConnectOrDisconnect => 'Προγραμματισμένη σύνδεση/αποσύνδεση';
	@override String get timeConnectOrDisconnectTips => 'Το VPN πρέπει να είναι συνδεδεμένο για να τεθεί σε ισχύ. Μετά την ενεργοποίηση, η [Αυτόματη αναστολή λειτουργίας] θα απενεργοποιηθεί';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Το μεσοδιάστημα σύνδεσης/αποσύνδεσης δεν μπορεί να είναι μικρότερο από ${p} λεπτά';
	@override String get disableFontScaler => 'Απενεργοποίηση κλιμάκωσης γραμματοσειράς (απαιτείται επανεκκίνηση)';
	@override String get autoOrientation => 'Περιστροφή με την οθόνη';
	@override String get restartTakesEffect => 'Η επανεκκίνηση τίθεται σε ισχύ';
	@override String get reconnectTakesEffect => 'Η επανασύνδεση τίθεται σε ισχύ';
	@override String get resetSettings => 'Επαναφορά ρυθμίσεων';
	@override String get cleanCache => 'Εκκαθάριση προσωρινής μνήμης';
	@override String get cleanCacheDone => 'Η εκκαθάριση ολοκληρώθηκε';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Ενημέρωση έκδοσης ${p}';
	@override String get follow => 'Ακολουθήστε μας';
	@override String get contactUs => 'Επικοινωνήστε μαζί μας';
	@override String get supportUs => 'Υποστηρίξτε μας';
	@override String get rateInApp => 'Βαθμολογήστε μας';
	@override String get rateInAppStore => 'Βαθμολογήστε μας στο AppStore';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenEl implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Το απόρρητό σας προηγείται';
	@override String get agreeAndContinue => 'Συμφωνώ & Συνέχεια';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenEl implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'Η νέα έκδοση [${p}] είναι έτοιμη';
	@override String get update => 'Επανεκκίνηση για ενημέρωση';
	@override String get cancel => 'Όχι τώρα';
}

// Path: CommonWidget
class _TranslationsCommonWidgetEl implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Εάν η επιλογή [Πάντα ενεργό VPN] είναι ενεργοποιημένη, απενεργοποιήστε την και προσπαθήστε να συνδεθείτε ξανά';
	@override String get resetPort => 'Παρακαλούμε αλλάξτε τη θύρα σε μια άλλη διαθέσιμη θύρα ή κλείστε την εφαρμογή που καταλαμβάνει τη θύρα.';
}

// Path: main
class _TranslationsMainEl implements TranslationsMainEn {
	_TranslationsMainEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayEl tray = _TranslationsMainTrayEl._(_root);
}

// Path: meta
class _TranslationsMetaEl implements TranslationsMetaEn {
	_TranslationsMetaEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Ενεργοποίηση';
	@override String get disable => 'Απενεργοποίηση';
	@override String get bydefault => 'Προεπιλογή';
	@override String get filter => 'Φίλτρο';
	@override String get filterMethod => 'Μέθοδος φίλτρου';
	@override String get include => 'Συμπερίληψη';
	@override String get exclude => 'Εξαίρεση';
	@override String get all => 'Όλα';
	@override String get prefer => 'Προτίμηση';
	@override String get only => 'Μόνο';
	@override String get open => 'Άνοιγμα';
	@override String get close => 'Κλείσιμο';
	@override String get quit => 'Έξοδος';
	@override String get add => 'Προσθήκη';
	@override String get addSuccess => 'Προστέθηκε επιτυχώς';
	@override String addFailed({required Object p}) => 'Η προσθήκη απέτυχε:${p}';
	@override String get remove => 'Κατάργηση';
	@override String get removeConfirm => 'Είστε βέβαιοι ότι θέλετε να διαγράψετε;';
	@override String get edit => 'Επεξεργασία';
	@override String get view => 'Προβολή';
	@override String get more => 'Περισσότερα';
	@override String get tips => 'Πληροφορίες';
	@override String get copy => 'Αντιγραφή';
	@override String get save => 'Αποθήκευση';
	@override String get ok => 'Οκ';
	@override String get cancel => 'Ακύρωση';
	@override String get feedback => 'Σχόλια';
	@override String get feedbackContent => 'Περιεχόμενο σχολίων';
	@override String get feedbackContentHit => 'Απαιτείται, έως 500 χαρακτήρες';
	@override String get feedbackContentCannotEmpty => 'Το περιεχόμενο των σχολίων δεν μπορεί να είναι κενό';
	@override String get faq => 'Συχνές ερωτήσεις';
	@override String get htmlTools => 'Σύνολο εργαλείων HTML';
	@override String get download => 'Λήψη';
	@override String get upload => 'Μεταφόρτωση';
	@override String get downloadSpeed => 'Ταχύτητα λήψης';
	@override String get uploadSpeed => 'Ταχύτητα μεταφόρτωσης';
	@override String get loading => 'Φόρτωση...';
	@override String get convert => 'Μετατροπή';
	@override String get check => 'Έλεγχος';
	@override String get detect => 'Ανίχνευση';
	@override String get cache => 'Προσωρινή μνήμη';
	@override String get days => 'Ημέρες';
	@override String get hours => 'Ώρες';
	@override String get minutes => 'Λεπτά';
	@override String get seconds => 'Δευτερόλεπτα';
	@override String get milliseconds => 'Χιλιοστά του δευτερολέπτου';
	@override String get tolerance => 'Ανοχή';
	@override String get dateTimePeriod => 'Χρονική περίοδος';
	@override String get protocol => 'Πρωτόκολλο';
	@override String get search => 'Αναζήτηση';
	@override String get custom => 'Προσαρμοσμένο';
	@override String get inbound => 'Εισερχόμενα';
	@override String get outbound => 'Εξερχόμενα';
	@override String get destination => 'Προορισμός';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Σύνδεση';
	@override String get disconnect => 'Αποσύνδεση';
	@override String get reconnect => 'Επανασύνδεση';
	@override String get connected => 'Συνδεδεμένο';
	@override String get disconnected => 'Αποσυνδεδεμένο';
	@override String get connecting => 'Σύνδεση σε εξέλιξη';
	@override String get connectTimeout => 'Λήξη χρονικού ορίου σύνδεσης';
	@override String get timeout => 'Λήξη χρονικού ορίου';
	@override String get timeoutDuration => 'Διάρκεια λήξης χρονικού ορίου';
	@override String get runDuration => 'Διάρκεια εκτέλεσης';
	@override String get latency => 'Καθυστέρηση';
	@override String get latencyTest => 'Έλεγχοι καθυστέρησης';
	@override String get language => 'Γλώσσα';
	@override String get next => 'Επόμενο';
	@override String get done => 'Τέλος';
	@override String get apply => 'Εφαρμογή';
	@override String get refresh => 'Ανανέωση';
	@override String get retry => 'Επανάληψη δοκιμής;';
	@override String get update => 'Ενημέρωση';
	@override String get updateInterval => 'Μεσοδιάστημα ενημέρωσης';
	@override String get updateInterval5mTips => 'Ελάχιστο: 5λ';
	@override String updateFailed({required Object p}) => 'Η ενημέρωση απέτυχε:${p}';
	@override String get samplingUnit => 'Μονάδα χρόνου δειγματοληψίας';
	@override String get queryResultCount => 'Αριθμός αποτελεσμάτων ερωτήματος';
	@override String queryLimit({required Object p}) => 'Εμφάνιση έως ${p} δεδομένων';
	@override String get none => 'Κανένα';
	@override String get start => 'Έναρξη';
	@override String get pause => 'Παύση';
	@override String get reset => 'Επαναφορά';
	@override String get submit => 'Υποβολή';
	@override String get user => 'Χρήστης';
	@override String get account => 'Λογαριασμός';
	@override String get password => 'Κωδικός πρόσβασης';
	@override String get required => 'Απαιτείται';
	@override String get type => 'Τύπος';
	@override String get path => 'Διαδρομή';
	@override String get local => 'Τοπικό';
	@override String get remote => 'Απομακρυσμένο';
	@override String get other => 'Άλλο';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'Μη έγκυρο URL';
	@override String get urlCannotEmpty => 'Ο σύνδεσμος δεν μπορεί να είναι κενός';
	@override String get urlTooLong => 'Το URL είναι πολύ μεγάλο (>8182)';
	@override String get copyUrl => 'Αντιγραφή συνδέσμου';
	@override String get openUrl => 'Άνοιγμα συνδέσμου';
	@override String get shareUrl => 'Κοινοποίηση συνδέσμου';
	@override String get speedTestUrl => 'URL δοκιμής ταχύτητας';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'Στατική IP';
	@override String get staticIPTips => 'Πρέπει να ενεργοποιήσετε το [TUN HijackDNS] ή το [${_root.SettingsScreen.inboundDomainResolve}].';
	@override String get isp => 'Πάροχος VPN';
	@override String get domainSuffix => 'Επίθεμα τομέα';
	@override String get domain => 'Τομέας';
	@override String get domainKeyword => 'Λέξη-κλειδί τομέα';
	@override String get domainRegex => 'Regex τομέα';
	@override String get ip => 'IP';
	@override String get port => 'Θύρα';
	@override String get portRange => 'Εύρος θυρών';
	@override String get appPackage => 'ID πακέτου εφαρμογής';
	@override String get processName => 'Όνομα διαδικασίας';
	@override String get processPath => 'Διαδρομή διαδικασίας';
	@override String get processDir => 'Κατάλογος διαδικασίας';
	@override String get systemProxy => 'Proxy συστήματος';
	@override String get percentage => 'Ποσοστό';
	@override String get statistics => 'Στατιστικά';
	@override String get statisticsAndAnalysis => 'Στατιστικά και Ανάλυση';
	@override String get statisticsDataDesensitize => 'Αποευαισθητοποίηση δεδομένων';
	@override String get statisticsDataDesensitizeTips => 'Η διαδικασία/ID πακέτου/όνομα τομέα προορισμού/IP προορισμού κ.λπ. θα αντικατασταθούν από * και θα αποθηκευτούν μετά την αποευαισθητοποίηση';
	@override String get records => 'Εγγραφές';
	@override String get requestRecords => 'Εγγραφές αιτημάτων';
	@override String get netInterfaces => 'Διεπαφές δικτύου';
	@override String get netSpeed => 'Ταχύτητα';
	@override String get memoryTrendChart => 'Διάγραμμα τάσης μνήμης';
	@override String get goroutinesTrendChart => 'Διάγραμμα τάσης GoRoutines';
	@override String get trafficTrendChart => 'Διάγραμμα τάσης κίνησης';
	@override String get trafficDistributionChart => 'Διάγραμμα κατανομής κίνησης';
	@override String get connectionChart => 'Διάγραμμα τάσης σύνδεσης';
	@override String get memoryChart => 'Διάγραμμα τάσης μνήμης';
	@override String get trafficStatistics => 'Στατιστικά κίνησης';
	@override String get traffic => 'Κίνηση';
	@override String get trafficTotal => 'Συνολική κίνηση';
	@override String get trafficProxy => 'Κίνηση Proxy';
	@override String get trafficDirect => 'Άμεση κίνηση';
	@override String get website => 'Ιστότοπος';
	@override String get memory => 'Μνήμη';
	@override String get outboundMode => 'Λειτουργία εξόδου';
	@override String get rule => 'Κανόνας';
	@override String get global => 'Καθολικό';
	@override String get qrcode => 'QR Code';
	@override String get qrcodeTooLong => 'Το κείμενο είναι πολύ μεγάλο για να εμφανιστεί';
	@override String get qrcodeShare => 'Κοινοποίηση QR Code';
	@override String get textToQrcode => 'Κείμενο σε QR Code';
	@override String get qrcodeScan => 'Σάρωση QR Code';
	@override String get qrcodeScanResult => 'Αποτέλεσμα σάρωσης';
	@override String get qrcodeScanFromImage => 'Σάρωση από εικόνα';
	@override String get qrcodeScanResultFailed => 'Αποτυχία ανάλυσης της εικόνας, παρακαλούμε βεβαιωθείτε ότι το στιγμιότυπο οθόνης είναι ένας έγκυρος κώδικας QR';
	@override String get qrcodeScanResultEmpty => 'Το αποτέλεσμα της σάρωσης είναι κενό';
	@override String get screenshot => 'Στιγμιότυπο οθόνης';
	@override String get backupAndSync => 'Δημιουργία αντιγράφων ασφαλείας και Συγχρονισμός';
	@override String get autoBackup => 'Αυτόματη δημιουργία αντιγράφων ασφαλείας';
	@override String get noProfileGotAutoBackup => 'Εάν χαθούν δεδομένα όπως το [${_root.meta.myProfiles}], μπορείτε να τα επαναφέρετε από το [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] ή άλλες πηγές αντιγράφων ασφαλείας (όπως iCloud ή Webdav κ.λπ.)';
	@override String get autoBackupAddProfile => 'Μετά την προσθήκη του προφίλ';
	@override String get autoBackupRemoveProfile => 'Μετά τη διαγραφή του προφίλ';
	@override String get profile => 'Προφίλ';
	@override String get currentProfile => 'Τρέχον προφίλ';
	@override String get importAndExport => 'Εισαγωγή και Εξαγωγή';
	@override String get import => 'Εισαγωγή';
	@override String get importFromUrl => 'Εισαγωγή από URL';
	@override String get export => 'Εξαγωγή';
	@override String get send => 'Αποστολή';
	@override String get receive => 'Λήψη';
	@override String get sendConfirm => 'Επιβεβαίωση αποστολής;';
	@override String get termOfUse => 'Όροι Χρήσης';
	@override String get privacyPolicy => 'Πολιτική Απορρήτου';
	@override String get about => 'Σχετικά';
	@override String get name => 'Όνομα';
	@override String get version => 'Έκδοση';
	@override String get notice => 'Ειδοποίηση';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Ενέργεια:${p}\nΑιτία:${p1}';
	@override String get sort => 'Αναδιάταξη';
	@override String get novice => 'Λειτουργία αρχαρίου';
	@override String get willCompleteAfterRebootInstall => 'Παρακαλούμε επανεκκινήστε τη συσκευή σας για να ολοκληρώσετε την εγκατάσταση της επέκτασης συστήματος';
	@override String get willCompleteAfterRebootUninstall => 'Παρακαλούμε επανεκκινήστε τη συσκευή σας για να ολοκληρώσετε την απεγκατάσταση της επέκτασης συστήματος';
	@override String get requestNeedsUserApproval => '1. Παρακαλούμε [Επιτρέψτε] στο Karing να εγκαταστήσει επεκτάσεις συστήματος στις [Ρυθμίσεις συστήματος]-[Απόρρητο και ασφάλεια]\n2. Στις [Ρυθμίσεις συστήματος]-[Γενικά]-[Στοιχεία σύνδεσης Επεκτάσεις]-[Επέκταση δικτύου] ενεργοποιήστε το [karingServiceSE]\nεπανασυνδεθείτε μετά την ολοκλήρωση';
	@override String get FullDiskAccessPermissionRequired => 'Παρακαλούμε ενεργοποιήστε την άδεια [karingServiceSE] στις [Ρυθμίσεις συστήματος]-[Απόρρητο και ασφάλεια]-[Πλήρης πρόσβαση στο δίσκο] και επανασυνδεθείτε';
	@override String get tvMode => 'Λειτουργία TV';
	@override String get recommended => 'Προτεινόμενα';
	@override String innerError({required Object p}) => 'Εσωτερικό σφάλμα:${p}';
	@override String get logicOperation => 'Λογική λειτουργία';
	@override String get share => 'Κοινοποίηση';
	@override String get candidateWord => 'Υποψήφιες λέξεις';
	@override String get keywordOrRegx => 'Λέξεις-κλειδιά/Κανονική έκφραση';
	@override String get importFromClipboard => 'Εισαγωγή από το πρόχειρο';
	@override String get exportToClipboard => 'Εξαγωγή στο πρόχειρο';
	@override String get server => 'Διακομιστής';
	@override String get ads => 'Διαφημίσεις';
	@override String get adsRemove => 'Κατάργηση διαφημίσεων';
	@override String get donate => 'Δωρεά';
	@override String get diversion => 'Εκτροπή';
	@override String get diversionRules => 'Κανόνες εκτροπής';
	@override String get diversionCustomGroup => 'Προσαρμοσμένη ομάδα εκτροπής';
	@override String get urlTestCustomGroup => 'Προσαρμοσμένη αυτόματη επιλογή';
	@override String get setting => 'Ρυθμίσεις';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Συγχρονισμός LAN';
	@override String get lanSyncNotQuitTips => 'Μην βγείτε από αυτήν τη διεπαφή πριν ολοκληρωθεί ο συγχρονισμός';
	@override String get deviceNoSpace => 'Ανεπαρκής χώρος στο δίσκο';
	@override String get hideSystemApp => 'Απόκρυψη εφαρμογών συστήματος';
	@override String get hideAppIcon => 'Απόκρυψη εικονιδίων εφαρμογών';
	@override String get hideDockIcon => 'Απόκρυψη εικονιδίου Dock';
	@override String get remark => 'Παρατήρηση';
	@override String get remarkExist => 'Η παρατήρηση υπάρχει ήδη, παρακαλούμε χρησιμοποιήστε άλλο όνομα';
	@override String get remarkCannotEmpty => 'Οι παρατηρήσεις δεν μπορούν να είναι κενές';
	@override String get remarkTooLong => 'Παρατηρήσεις έως 32 χαρακτήρες';
	@override String get openDir => 'Άνοιγμα καταλόγου αρχείων';
	@override String get fileChoose => 'Επιλογή αρχείου';
	@override String get filePathCannotEmpty => 'Η διαδρομή αρχείου δεν μπορεί να είναι κενή';
	@override String fileNotExist({required Object p}) => 'Το αρχείο δεν υπάρχει:${p}';
	@override String fileTypeInvalid({required Object p}) => 'Μη έγκυρος τύπος αρχείου:${p}';
	@override String get uwpExemption => 'Εξαιρέσεις απομόνωσης δικτύου UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Λήψη προφίλ';
	@override String get addProfile => 'Προσθήκη προφίλ';
	@override String get myProfiles => 'Τα προφίλ μου';
	@override String get profileEdit => 'Επεξεργασία προφίλ';
	@override String get profileEditUrlExist => 'Το URL υπάρχει ήδη, παρακαλούμε χρησιμοποιήστε άλλο URL';
	@override String get profileEditReloadAfterProfileUpdate => 'Επαναφόρτωση μετά την ενημέρωση του προφίλ';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Έναρξη δοκιμών καθυστέρησης μετά από αυτόματη ενημέρωση προφίλ';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'Το VPN πρέπει να είναι συνδεδεμένο και η [Επαναφόρτωση μετά την ενημέρωση του προφίλ] ενεργοποιημένη';
	@override String get profileEditTestLatencyAutoRemove => 'Αυτόματη κατάργηση διακομιστών που αποτυγχάνουν στις δοκιμές καθυστέρησης';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Έως 3 προσπάθειες';
	@override String get profileImport => 'Εισαγωγή αρχείου προφίλ';
	@override String get profileAddUrlOrContent => 'Προσθήκη συνδέσμου προφίλ';
	@override String get profileExists => 'Το προφίλ υπάρχει ήδη, παρακαλούμε μην το προσθέτετε επανειλημμένα';
	@override String get profileUrlOrContent => 'Σύνδεσμος/Περιεχόμενο προφίλ';
	@override String get profileUrlOrContentHit => 'Σύνδεσμος/Περιεχόμενο προφίλ [Απαιτείται] (Υποστηρίζει συνδέσμους προφίλ Clash, V2ray (υποστήριξη παρτίδας), Stash, Karing, Sing-box, Shadowsocks, Sub)';
	@override String get profileUrlOrContentCannotEmpty => 'Ο σύνδεσμος προφίλ δεν μπορεί να είναι κενός';
	@override String profileAddFailedFormatException({required Object p}) => 'Η μορφή είναι εσφαλμένη, παρακαλούμε διορθώστε την και προσθέστε ξανά:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Η προσθήκη απέτυχε: ${p}, παρακαλούμε δοκιμάστε να τροποποιήσετε το [UserAgent] και δοκιμάστε ξανά, ή χρησιμοποιήστε το ενσωματωμένο πρόγραμμα περιήγησης της συσκευής για να ανοίξετε το σύνδεσμο διαμόρφωσης και να εισαγάγετε το αρχείο διαμόρφωσης που κατέβηκε από το πρόγραμμα περιήγησης σε αυτήν την εφαρμογή';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Η προσθήκη απέτυχε: ${p}, παρακαλούμε ενεργοποιήστε το proxy ή τροποποιήστε τον τρέχοντα κόμβο proxy και δοκιμάστε ξανά';
	@override String get profileAddParseFailed => 'Αποτυχία ανάλυσης προφίλ';
	@override String get profileAddNoServerAvaliable => 'Δεν υπάρχει διαθέσιμος διακομιστής, βεβαιωθείτε ότι ο Σύνδεσμος Προφίλ ή το Αρχείο Προφίλ είναι έγκυρο. Εάν το προφίλ σας προέρχεται από το GitHub, λάβετε το σύνδεσμο μέσω του κουμπιού [Raw] στη σελίδα';
	@override String get profileAddWrapSuccess => 'Το προφίλ δημιουργήθηκε επιτυχώς, παρακαλούμε μεταβείτε στο [${_root.meta.myProfiles}] για προβολή';
}

// Path: isp
class _TranslationsIspEl implements TranslationsIspEn {
	_TranslationsIspEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Σύνδεση με [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'Αποσύνδεση[${p}]';
	@override String faq({required Object p}) => 'Συχνές ερωτήσεις[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'Ακολουθήστε[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] Μη έγκυρο ή ληγμένο';
}

// Path: permission
class _TranslationsPermissionEl implements TranslationsPermissionEn {
	_TranslationsPermissionEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Κάμερα';
	@override String get screen => 'Εγγραφή οθόνης';
	@override String get appQuery => 'Λήψη λίστας εφαρμογών';
	@override String request({required Object p}) => 'Ενεργοποίηση άδειας [${p}]';
	@override String requestNeed({required Object p}) => 'Παρακαλούμε ενεργοποιήστε την άδεια [${p}]';
}

// Path: tls
class _TranslationsTlsEl implements TranslationsTlsEn {
	_TranslationsTlsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Παράλειψη επαλήθευσης πιστοποιητικού';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Ενεργοποίηση TLS Fragment';
	@override String get fragmentSize => 'Μέγεθος TLS Fragment';
	@override String get fragmentSleep => 'Αναστολή TLS Fragment';
	@override String get mixedCaseSNIEnable => 'Ενεργοποίηση TLS Mixed Case SNI';
	@override String get paddingEnable => 'Ενεργοποίηση TLS Padding';
	@override String get paddingSize => 'Μέγεθος TLS Padding';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeEl implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Τρέχουσα επιλογή';
	@override String get urltest => 'Αυτόματη επιλογή';
	@override String get direct => 'Άμεση';
	@override String get block => 'Αποκλεισμός';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeEl implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyEl implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonEl implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Ενημέρωση προφίλ';
}

// Path: theme
class _TranslationsThemeEl implements TranslationsThemeEn {
	_TranslationsThemeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get light => 'Φωτεινό';
	@override String get dark => 'Σκοτεινό';
	@override String get auto => 'Αυτόματο';
}

// Path: main.tray
class _TranslationsMainTrayEl implements TranslationsMainTrayEn {
	_TranslationsMainTrayEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Άνοιγμα';
	@override String get menuExit => 'Έξοδος';
}

/// The flat map containing all translations for locale <el>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Πηγή εγκατάστασης',
			'AboutScreen.installTime' => 'Ώρα εγκατάστασης',
			'AboutScreen.versionChannel' => 'Κανάλι αυτόματης ενημέρωσης',
			'AboutScreen.updateWhenConnected' => 'Ελέγξτε για ενημερώσεις μετά τη σύνδεση',
			'AboutScreen.autoDownloadPkg' => 'Αυτόματη λήψη πακέτων ενημέρωσης',
			'AboutScreen.disableAppImproveData' => 'Δεδομένα βελτίωσης εφαρμογής',
			'AboutScreen.disableUAReportTip' => 'Η ενεργοποίηση του [${_root.AboutScreen.disableAppImproveData}] μας βοηθά να βελτιώσουμε τη σταθερότητα και τη χρηστικότητα του προϊόντος. Δεν συλλέγουμε προσωπικά δεδομένα απορρήτου. Η απενεργοποίηση θα εμποδίσει την εφαρμογή από τη συλλογή οποιωνδήποτε δεδομένων.',
			'AboutScreen.devOptions' => 'Επιλογές προγραμματιστή',
			'AboutScreen.enableDebugLog' => 'Ενεργοποίηση αρχείου καταγραφής σφαλμάτων',
			'AboutScreen.viewFilsContent' => 'Προβολή αρχείων',
			'AboutScreen.enablePprof' => 'Ενεργοποίηση pprof',
			'AboutScreen.pprofPanel' => 'Πίνακας pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'Να επιτρέπεται η απομακρυσμένη πρόσβαση στο ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Να επιτρέπεται η απομακρυσμένη πρόσβαση στο ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Χρήση αρχικού προφίλ sing-box',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'URL διακομιστή',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Δεν μπορεί να είναι κενό',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Η σύνδεση απέτυχε:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Αποτυχία λήψης λίστας αρχείων:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'Μη έγκυρο [Domain]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'Μη έγκυρο [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Μη έγκυρο [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'Μη έγκυρο [Σύνολο κανόνων]:${p}, Το URL πρέπει να είναι ένα έγκυρο https URL και ένα δυαδικό αρχείο με επέκταση .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'Μη έγκυρο [Σύνολο κανόνων (ενσωματωμένο)]:${p}, Η μορφή είναι geosite:xxx ή geoip:xxx ή acl:xxx, και το xxx πρέπει να είναι ένα έγκυρο όνομα κανόνα',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'Μη έγκυρο [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Συμβουλή: Μετά την αποθήκευση, μεταβείτε στο [${_root.meta.diversionRules}] για να ορίσετε τους σχετικούς κανόνες, διαφορετικά δεν θα τεθούν σε ισχύ',
			'DiversionRuleDetectScreen.title' => 'Ανίχνευση κανόνων εκτροπής',
			'DiversionRuleDetectScreen.rule' => 'Κανόνας:',
			'DiversionRuleDetectScreen.outbound' => 'Διακομιστής Proxy:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Συμβουλή: Προσπαθήστε να αντιστοιχίσετε τους κανόνες από πάνω προς τα κάτω. Εάν κανένας κανόνας δεν ταιριάζει, χρησιμοποιήστε το [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'Το ISP δεν μπορεί να είναι κενό',
			'DnsSettingsScreen.urlCanNotEmpty' => 'Το URL δεν μπορεί να είναι κενό',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Μη υποστηριζόμενος τύπος:${p}',
			'DnsSettingsScreen.dnsDesc' => 'Η πρώτη στήλη δεδομένων καθυστέρησης είναι η καθυστέρηση ερωτήματος άμεσης σύνδεσης.\nΗ δεύτερη στήλη: Ενεργοποιήστε την επιλογή [[Κίνηση Proxy]Επίλυση DNS μέσω διακομιστή proxy]: τα δεδομένα καθυστέρησης είναι η καθυστέρηση ερωτήματος που προωθείται μέσω του τρέχοντος διακομιστή proxy. Εάν η επιλογή [[Κίνηση Proxy]Επίλυση DNS μέσω διακομιστή proxy] είναι απενεργοποιημένη: Τα δεδομένα καθυστέρησης είναι η καθυστέρηση ερωτήματος άμεσης σύνδεσης',
			'FileContentViewerScreen.title' => 'Προβολή περιεχομένου αρχείου',
			'FileContentViewerScreen.clearFileContent' => 'Είστε βέβαιοι ότι θέλετε να εκκαθαρίσετε το περιεχόμενο του αρχείου;',
			'FileContentViewerScreen.clearFileContentTips' => 'Είστε βέβαιοι ότι θέλετε να εκκαθαρίσετε το περιεχόμενο του αρχείου Προφίλ; Η εκκαθάριση του αρχείου Προφίλ μπορεί να προκαλέσει απώλεια δεδομένων ή μη φυσιολογικές λειτουργίες της εφαρμογής, παρακαλούμε ενεργήστε με προσοχή',
			'HomeScreen.toSelectServer' => 'Παρακαλώ επιλέξτε έναν διακομιστή',
			'HomeScreen.invalidServer' => 'είναι μη έγκυρο, παρακαλώ επιλέξτε ξανά',
			'HomeScreen.disabledServer' => 'είναι απενεργοποιημένο, παρακαλώ επιλέξτε ξανά',
			'HomeScreen.expiredServer' => 'Δεν υπάρχουν διαθέσιμοι διακομιστές, τα προφίλ ενδέχεται να έχουν λήξει ή να είναι απενεργοποιημένα',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'Παρακαλώ ρυθμίστε το [Σύνδεσμο συντόμευσης] πριν τον χρησιμοποιήσετε',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Πάρα πολλοί διακομιστές proxy [${p}>${p1}], και η σύνδεση ενδέχεται να αποτύχει λόγω περιορισμών μνήμης του συστήματος',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Πάρα πολλοί διακομιστές proxy [${p}>${p1}] μπορεί να προκαλέσουν αργές ή απρόσιτες συνδέσεις',
			'LaunchFailedScreen.invalidProcess' => 'Η εφαρμογή απέτυχε να ξεκινήσει [Μη έγκυρο όνομα διαδικασίας], παρακαλούμε επανεγκαταστήστε την εφαρμογή σε ξεχωριστό κατάλογο',
			'LaunchFailedScreen.invalidProfile' => 'Η εφαρμογή απέτυχε να ξεκινήσει [Αποτυχία πρόσβασης στο προφίλ], παρακαλούμε επανεγκαταστήστε την εφαρμογή',
			'LaunchFailedScreen.invalidVersion' => 'Η εφαρμογή απέτυχε να ξεκινήσει [Μη έγκυρη έκδοση], παρακαλούμε επανεγκαταστήστε την εφαρμογή',
			'LaunchFailedScreen.systemVersionLow' => 'Η εφαρμογή απέτυχε να ξεκινήσει [η έκδοση του συστήματος είναι πολύ χαμηλή]',
			'LaunchFailedScreen.invalidInstallPath' => 'Η διαδρομή εγκατάστασης είναι μη έγκυρη, παρακαλούμε επανεγκαταστήστε την σε μια έγκυρη διαδρομή',
			'MyProfilesMergeScreen.profilesMerge' => 'Συγχώνευση προφίλ',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Προφίλ προορισμού',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Προφίλ πηγής',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Συμβουλή: Η εκτροπή των προφίλ πηγής θα απορριφθεί',
			'NetCheckScreen.title' => 'Έλεγχος δικτύου',
			'NetCheckScreen.warn' => 'Σημείωση: Λόγω της επίδρασης του περιβάλλοντος δικτύου και των κανόνων εκτροπής, τα αποτελέσματα των δοκιμών δεν είναι απολύτως ισοδύναμα με τα πραγματικά αποτελέσματα.',
			'NetCheckScreen.invalidDomain' => 'Μη έγκυρο όνομα τομέα',
			'NetCheckScreen.connectivity' => 'Συνδεσιμότητα δικτύου',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Η δοκιμή σύνδεσης Ipv4 [${p}] απέτυχε όλες',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Η σύνδεση Ipv4 πέτυχε',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Η δοκιμή σύνδεσης Ipv6 [${p}] απέτυχε όλες, το δίκτυό σας ενδέχεται να μην υποστηρίζει ipv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Η σύνδεση Ipv6 πέτυχε',
			'NetCheckScreen.connectivityTestOk' => 'Το δίκτυο είναι συνδεδεμένο στο διαδίκτυο',
			'NetCheckScreen.connectivityTestFailed' => 'Το δίκτυο δεν είναι ακόμη συνδεδεμένο στο διαδίκτυο',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Όλα κατέβηκαν επιτυχώς',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Λήψη ή αποτυχία λήψης',
			'NetCheckScreen.outbound' => 'Διακομιστής Proxy',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] σύνδεση επιτυχής',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] σύνδεση απέτυχε\nΣφάλμα:[${p2}]',
			'NetCheckScreen.dnsServer' => 'Διακομιστής DNS',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] Ερώτημα DNS επιτυχές\nΚανόνας DNS:[${p2}]\nΚαθυστέρηση:[${p3} ms]\nΔιεύθυνση:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}] Ερώτημα DNS επιτυχές\n nΚανόνας DNS:[${p2}]\nΣφάλμα:[${p3}]',
			'NetCheckScreen.host' => 'Σύνδεση HTTP',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nΚανόναςΕκτροπής:[${p2}]\nΔιακομιστής Proxy:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'σύνδεση επιτυχής',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'αποτυχία σύνδεσης:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Τομέας/IP',
			'NetConnectionsFilterScreen.app' => 'Εφαρμογή',
			'NetConnectionsFilterScreen.rule' => 'Κανόνας',
			'NetConnectionsFilterScreen.chain' => 'Εξερχόμενα',
			'NetConnectionsScreen.copyAsCSV' => 'Αντιγράφηκε σε μορφή CSV',
			'NetConnectionsScreen.selectType' => 'Επιλογή τύπου εκτροπής',
			'PerAppAndroidScreen.title' => 'Proxy ανά εφαρμογή',
			'PerAppAndroidScreen.whiteListMode' => 'Λειτουργία Λευκής Λίστας',
			'PerAppAndroidScreen.whiteListModeTip' => 'Όταν είναι ενεργοποιημένο: μόνο οι επισημασμένες εφαρμογές είναι proxies. Όταν δεν είναι ενεργοποιημένο: μόνο οι μη επισημασμένες εφαρμογές είναι proxies',
			'RegionSettingsScreen.title' => 'Χώρα ή Περιοχή',
			'RegionSettingsScreen.Regions' => 'Συμβουλή: Παρακαλούμε ρυθμίστε σωστά την τρέχουσα χώρα ή περιοχή σας, διαφορετικά μπορεί να προκαλέσει προβλήματα εκτροπής δικτύου',
			'ServerSelectScreen.title' => 'Επιλογή διακομιστή',
			'ServerSelectScreen.autoSelectServer' => 'Αυτόματη επιλογή του διακομιστή με τη χαμηλότερη καθυστέρηση',
			'ServerSelectScreen.recentUse' => 'Πρόσφατη χρήση',
			'ServerSelectScreen.myFav' => 'Τα αγαπημένα μου',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Ο επιλεγμένος διακομιστής είναι μια τοπική διεύθυνση και ενδέχεται να μην λειτουργεί σωστά:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Ο επιλεγμένος διακομιστής είναι μια διεύθυνση IPv6 και απαιτεί την επιλογή [Ενεργοποίηση IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Αυτός ο διακομιστής έχει απενεργοποιηθεί',
			'ServerSelectScreen.error404' => 'Η ανίχνευση καθυστέρησης αντιμετώπισε σφάλμα, παρακαλούμε ελέγξτε εάν υπάρχει διαμόρφωση με το ίδιο περιεχόμενο',
			'SettingsScreen.getTranffic' => 'Λήψη κίνησης',
			'SettingsScreen.tutorial' => 'Οδηγός',
			'SettingsScreen.commonlyUsedRulesets' => 'Συνηθισμένα σύνολα κανόνων',
			'SettingsScreen.htmlBoard' => 'Διαδικτυακός πίνακας',
			'SettingsScreen.dnsLeakDetection' => 'Ανίχνευση διαρροής DNS',
			'SettingsScreen.proxyLeakDetection' => 'Ανίχνευση διαρροής Proxy',
			'SettingsScreen.speedTest' => 'Δοκιμή ταχύτητας',
			'SettingsScreen.rulesetDirectDownlad' => 'Άμεση λήψη συνόλου κανόνων',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Απόκρυψη μη χρησιμοποιούμενων κανόνων εκτροπής',
			'SettingsScreen.disableISPDiversionGroup' => 'Απενεργοποίηση [${_root.meta.diversionRules}] του [${_root.meta.isp}]',
			'SettingsScreen.portSettingRule' => 'Βασισμένο σε κανόνες',
			'SettingsScreen.portSettingDirectAll' => 'Όλα άμεσα',
			'SettingsScreen.portSettingProxyAll' => 'Όλα μέσω Proxy',
			'SettingsScreen.portSettingControl' => 'Έλεγχος και Συγχρονισμός',
			'SettingsScreen.portSettingCluster' => 'Υπηρεσία Cluster',
			'SettingsScreen.modifyPort' => 'Τροποποίηση θύρας',
			'SettingsScreen.modifyPortOccupied' => 'Η θύρα είναι κατειλημμένη, παρακαλούμε χρησιμοποιήστε άλλη θύρα',
			'SettingsScreen.ipStrategyTips' => 'Πριν την ενεργοποίηση, επιβεβαιώστε ότι το δίκτυό σας υποστηρίζει IPv6, διαφορετικά μέρος της κίνησης δεν θα είναι προσβάσιμο κανονικά.',
			'SettingsScreen.tunAppendHttpProxy' => 'Προσθήκη HTTP Proxy στο VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Ορισμένες εφαρμογές θα παρακάμψουν την εικονική συσκευή NIC και θα συνδεθούν απευθείας στο HTTP proxy',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Τομείς που επιτρέπεται να παρακάμπτουν το HTTP proxy',
			'SettingsScreen.dnsEnableRule' => 'Ενεργοποίηση κανόνων εκτροπής DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => 'Κανάλι ανάλυσης [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsEnableClientSubnet' => 'Ενεργοποίηση ECS στο [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTestDomain' => 'Τομέας δοκιμής',
			'SettingsScreen.dnsTestDomainInvalid' => 'Μη έγκυρος τομέας',
			'SettingsScreen.dnsTypeOutbound' => 'Διακομιστής Proxy',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'Διακομιστής DNS',
			'SettingsScreen.dnsEnableRuleTips' => 'Μετά την ενεργοποίηση, το όνομα τομέα θα επιλέγει τον αντίστοιχο διακομιστή DNS για ανάλυση σύμφωνα με τους κανόνες εκτροπής',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Μετά την ενεργοποίηση του FakeIP, εάν αποσυνδεθείτε από το VPN, η εφαρμογή σας μπορεί να χρειαστεί επανεκκίνηση. Αυτή η λειτουργία απαιτεί την ενεργοποίηση της [Λειτουργίας TUN]',
			'SettingsScreen.dnsTypeOutboundTips' => 'Ανάλυση ονόματος τομέα για [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Ανάλυση ονόματος τομέα για [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Ανάλυση ονόματος τομέα για [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Ανάλυση ονόματος τομέα για [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Αυτόματη ρύθμιση διακομιστή',
			'SettingsScreen.dnsResetServer' => 'Επαναφορά διακομιστή',
			'SettingsScreen.inboundDomainResolve' => 'Επίλυση εισερχόμενων ονομάτων τομέα',
			'SettingsScreen.privateDirect' => 'Άμεση σύνδεση ιδιωτικού δικτύου',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Ορισμένα ονόματα τομέα που δεν έχουν διαμορφωθεί με κανόνες εκτροπής πρέπει να επιλυθούν πριν μπορέσουν να χτυπήσουν τους κανόνες εκτροπής που βασίζονται σε IP. Αυτή η λειτουργία επηρεάζει τα εισερχόμενα αιτήματα στη θύρα proxy [${p}]',
			'SettingsScreen.useRomoteRes' => 'Χρήση απομακρυσμένων πόρων',
			'SettingsScreen.autoAppendRegion' => 'Αυτόματη προσάρτηση βασικών κανόνων',
			'SettingsScreen.autoSelect' => 'Αυτόματη επιλογή',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Παράβλεψη διακομιστών proxy [Front/Chain]',
			'SettingsScreen.autoSelectServerInterval' => 'Μεσοδιάστημα για ελέγχους καθυστέρησης',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Τρέχον μεσοδιάστημα ελέγχου υγείας διακομιστή',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Επανέλεγχος καθυστέρησης κατά την αλλαγή δικτύου',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Ενημέρωση του τρέχοντος διακομιστή μετά από μη αυτόματο έλεγχο καθυστέρησης',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Όσο μικρότερο είναι το χρονικό διάστημα, τόσο πιο έγκαιρα ενημερώνονται τα δεδομένα καθυστέρησης του διακομιστή, γεγονός που θα καταλαμβάνει περισσότερους πόρους και θα καταναλώνει περισσότερη ενέργεια',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Εάν ο έλεγχος αποτύχει, ο διακομιστής αλλάζει. Εάν δεν βρεθεί διαθέσιμος διακομιστής κατά την αλλαγή διακομιστή, η ομάδα θα ελέγξει ξανά την καθυστέρηση',
			'SettingsScreen.autoSelectServerFavFirst' => 'Προτεραιότητα στη χρήση [Τα αγαπημένα μου]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Εάν η λίστα [Τα αγαπημένα μου] δεν είναι κενή, χρησιμοποιήστε τους διακομιστές στο [Τα αγαπημένα μου]',
			'SettingsScreen.autoSelectServerFilter' => 'Φιλτράρισμα μη έγκυρων διακομιστών',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Οι έλεγχοι καθυστέρησης διακομιστή που αποτυγχάνουν θα φιλτράρονται. Εάν δεν υπάρχει διαθέσιμος διακομιστής μετά το φιλτράρισμα, θα χρησιμοποιηθούν αντ\' αυτού οι πρώτοι [${p}] διακομιστές',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Μέγιστος αριθμός διακομιστών',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Οι διακομιστές που υπερβαίνουν αυτόν τον αριθμό θα φιλτράρονται',
			'SettingsScreen.numInvalid' => 'Μη έγκυρος αριθμός',
			'SettingsScreen.hideInvalidServer' => 'Απόκρυψη μη έγκυρων διακομιστών',
			'SettingsScreen.sortServer' => 'Ταξινόμηση διακομιστών',
			'SettingsScreen.sortServerTips' => 'Ταξινόμηση κατά καθυστέρηση από τη χαμηλότερη στην υψηλότερη',
			'SettingsScreen.selectServerHideRecommand' => 'Απόκρυψη [Προτεινόμενα]',
			'SettingsScreen.selectServerHideRecent' => 'Απόκρυψη [Πρόσφατη χρήση]',
			'SettingsScreen.selectServerHideFav' => 'Απόκρυψη [Τα αγαπημένα μου]',
			'SettingsScreen.homeScreen' => 'Αρχική οθόνη',
			'SettingsScreen.theme' => 'Θέμα',
			'SettingsScreen.widgetsAlpha' => 'Διαφάνεια Widgets',
			'SettingsScreen.widgetsEmpty' => 'Δεν υπάρχει διαθέσιμο widget',
			'SettingsScreen.backgroundImage' => 'Εικόνα φόντου',
			'SettingsScreen.myLink' => 'Σύνδεσμος συντόμευσης',
			'SettingsScreen.autoConnectAfterLaunch' => 'Αυτόματη σύνδεση μετά την εκκίνηση',
			'SettingsScreen.autoConnectAtBoot' => 'Αυτόματη σύνδεση κατά την εκκίνηση του συστήματος',
			'SettingsScreen.autoConnectAtBootTips' => 'Απαιτείται υποστήριξη συστήματος. Ορισμένα συστήματα ενδέχεται επίσης να απαιτούν την ενεργοποίηση της [αυτόματης εκκίνησης].',
			'SettingsScreen.hideAfterLaunch' => 'Απόκρυψη παραθύρου μετά την εκκίνηση',
			'SettingsScreen.autoSetSystemProxy' => 'Αυτόματη ρύθμιση proxy συστήματος κατά τη σύνδεση',
			'SettingsScreen.bypassSystemProxy' => 'Ονόματα τομέα που επιτρέπεται να παρακάμπτουν το proxy συστήματος',
			'SettingsScreen.disconnectWhenQuit' => 'Αποσύνδεση κατά την έξοδο από την εφαρμογή',
			'SettingsScreen.autoAddToFirewall' => 'Αυτόματη προσθήκη κανόνων τείχους προστασίας',
			'SettingsScreen.excludeFromRecent' => 'Απόκρυψη από τις [Πρόσφατες εργασίες]',
			'SettingsScreen.wakeLock' => 'Κλείδωμα αφύπνισης',
			'SettingsScreen.hideVpn' => 'Απόκρυψη εικονιδίου VPN',
			'SettingsScreen.hideVpnTips' => 'Η ενεργοποίηση του IPv6 θα προκαλέσει την αποτυχία αυτής της λειτουργίας',
			'SettingsScreen.allowBypass' => 'Να επιτρέπεται στις εφαρμογές να παρακάμπτουν το VPN',
			'SettingsScreen.importSuccess' => 'Η εισαγωγή πέτυχε',
			'SettingsScreen.rewriteConfirm' => 'Αυτό το αρχείο θα αντικαταστήσει την υπάρχουσα τοπική διαμόρφωση. Θέλετε να συνεχίσετε;',
			'SettingsScreen.mergePerapp' => 'Συγχώνευση τοπικών λιστών [${_root.PerAppAndroidScreen.title}]',
			'SettingsScreen.networkShare' => 'Κοινή χρήση δικτύου',
			'SettingsScreen.frontProxy' => 'Front/Chain Proxy',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Δεδομένα->Διακομιστής Front/Chain Proxy [Πολλαπλοί διακομιστές Proxy: Από πάνω προς τα κάτω]->Διακομιστής Proxy [${p}]->Διακομιστής προορισμού',
			'SettingsScreen.allowOtherHostsConnect' => 'Να επιτρέπεται σε άλλους να συνδέονται',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Λόγω περιορισμών του συστήματος, μετά την ενεργοποίηση αυτού, οι εφαρμογές σε αυτήν τη συσκευή που χρησιμοποιούν http για πρόσβαση στο δίκτυο ενδέχεται να μην μπορούν να συνδεθούν σωστά στο δίκτυο.',
			'SettingsScreen.tunAutoRoute' => 'Auto Route',
			'SettingsScreen.tunAutoRedirect' => 'Auto Redirect',
			'SettingsScreen.tunStrictRoute' => 'Strict Route',
			'SettingsScreen.tunStrictRouteTips' => 'Εάν μετά την ενεργοποίηση της κοινής χρήσης άλλοι δεν μπορούν να έχουν πρόσβαση σε αυτήν τη συσκευή, παρακαλούμε δοκιμάστε να απενεργοποιήσετε αυτόν τον διακόπτη',
			'SettingsScreen.loopbackAddress' => 'Διεύθυνση Loopback',
			'SettingsScreen.enableCluster' => 'Ενεργοποίηση Socks/Http Proxy Cluster',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Να επιτρέπεται σε άλλους να συνδέονται στο cluster',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Έλεγχος ταυτότητας Proxy Cluster',
			'SettingsScreen.tunMode' => 'Λειτουργία TUN',
			'SettingsScreen.tuni4Address' => 'Διεύθυνση IP',
			'SettingsScreen.tunModeTips' => 'Η λειτουργία TUN θα αναλάβει όλη την κίνηση του συστήματος [Σε αυτήν τη λειτουργία, μπορείτε να αφήσετε το proxy συστήματος απενεργοποιημένο]',
			'SettingsScreen.tunModeRunAsAdmin' => 'Η λειτουργία TUN απαιτεί δικαιώματα διαχειριστή συστήματος, παρακαλούμε επανεκκινήστε την εφαρμογή ως διαχειριστής',
			'SettingsScreen.tunStack' => 'Στοίβα',
			'SettingsScreen.tunHijackTips' => 'Μετά το κλείσιμο, τα αιτήματα DNS από το TUN θα προωθούνται απευθείας στον αντίστοιχο διακομιστή DNS',
			'SettingsScreen.launchAtStartup' => 'Εκκίνηση κατά την έναρξη',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Έξοδος από την εφαρμογή κατά την εναλλαγή χρηστών συστήματος',
			'SettingsScreen.handleScheme' => 'Κλήση σχήματος συστήματος',
			'SettingsScreen.portableMode' => 'Φορητή λειτουργία',
			'SettingsScreen.portableModeDisableTips' => 'Εάν πρέπει να βγείτε από τη φορητή λειτουργία, παρακαλούμε βγείτε από το [karing] και διαγράψτε χειροκίνητα το φάκελο [profiles] στον ίδιο κατάλογο με το [karing.exe]',
			'SettingsScreen.accessibility' => 'Προσβασιμότητα',
			'SettingsScreen.handleKaringScheme' => 'Χειρισμός κλήσης karing://',
			'SettingsScreen.handleClashScheme' => 'Χειρισμός κλήσης clash://',
			'SettingsScreen.handleSingboxScheme' => 'Χειρισμός κλήσης sing-box://',
			'SettingsScreen.alwayOnVPN' => 'Σύνδεση πάντα ενεργή',
			'SettingsScreen.disconnectAfterSleep' => 'Αποσύνδεση μετά την αναστολή λειτουργίας του συστήματος',
			'SettingsScreen.removeSystemVPNConfig' => 'Διαγραφή διαμόρφωσης VPN συστήματος',
			'SettingsScreen.timeConnectOrDisconnect' => 'Προγραμματισμένη σύνδεση/αποσύνδεση',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'Το VPN πρέπει να είναι συνδεδεμένο για να τεθεί σε ισχύ. Μετά την ενεργοποίηση, η [Αυτόματη αναστολή λειτουργίας] θα απενεργοποιηθεί',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'Το μεσοδιάστημα σύνδεσης/αποσύνδεσης δεν μπορεί να είναι μικρότερο από ${p} λεπτά',
			'SettingsScreen.disableFontScaler' => 'Απενεργοποίηση κλιμάκωσης γραμματοσειράς (απαιτείται επανεκκίνηση)',
			'SettingsScreen.autoOrientation' => 'Περιστροφή με την οθόνη',
			'SettingsScreen.restartTakesEffect' => 'Η επανεκκίνηση τίθεται σε ισχύ',
			'SettingsScreen.reconnectTakesEffect' => 'Η επανασύνδεση τίθεται σε ισχύ',
			'SettingsScreen.resetSettings' => 'Επαναφορά ρυθμίσεων',
			'SettingsScreen.cleanCache' => 'Εκκαθάριση προσωρινής μνήμης',
			'SettingsScreen.cleanCacheDone' => 'Η εκκαθάριση ολοκληρώθηκε',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Ενημέρωση έκδοσης ${p}',
			'SettingsScreen.follow' => 'Ακολουθήστε μας',
			'SettingsScreen.contactUs' => 'Επικοινωνήστε μαζί μας',
			'SettingsScreen.supportUs' => 'Υποστηρίξτε μας',
			'SettingsScreen.rateInApp' => 'Βαθμολογήστε μας',
			'SettingsScreen.rateInAppStore' => 'Βαθμολογήστε μας στο AppStore',
			'UserAgreementScreen.privacyFirst' => 'Το απόρρητό σας προηγείται',
			'UserAgreementScreen.agreeAndContinue' => 'Συμφωνώ & Συνέχεια',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'Η νέα έκδοση [${p}] είναι έτοιμη',
			'VersionUpdateScreen.update' => 'Επανεκκίνηση για ενημέρωση',
			'VersionUpdateScreen.cancel' => 'Όχι τώρα',
			'CommonWidget.diableAlwayOnVPN' => 'Εάν η επιλογή [Πάντα ενεργό VPN] είναι ενεργοποιημένη, απενεργοποιήστε την και προσπαθήστε να συνδεθείτε ξανά',
			'CommonWidget.resetPort' => 'Παρακαλούμε αλλάξτε τη θύρα σε μια άλλη διαθέσιμη θύρα ή κλείστε την εφαρμογή που καταλαμβάνει τη θύρα.',
			'main.tray.menuOpen' => 'Άνοιγμα',
			'main.tray.menuExit' => 'Έξοδος',
			'meta.enable' => 'Ενεργοποίηση',
			'meta.disable' => 'Απενεργοποίηση',
			'meta.bydefault' => 'Προεπιλογή',
			'meta.filter' => 'Φίλτρο',
			'meta.filterMethod' => 'Μέθοδος φίλτρου',
			'meta.include' => 'Συμπερίληψη',
			'meta.exclude' => 'Εξαίρεση',
			'meta.all' => 'Όλα',
			'meta.prefer' => 'Προτίμηση',
			'meta.only' => 'Μόνο',
			'meta.open' => 'Άνοιγμα',
			'meta.close' => 'Κλείσιμο',
			'meta.quit' => 'Έξοδος',
			'meta.add' => 'Προσθήκη',
			'meta.addSuccess' => 'Προστέθηκε επιτυχώς',
			'meta.addFailed' => ({required Object p}) => 'Η προσθήκη απέτυχε:${p}',
			'meta.remove' => 'Κατάργηση',
			'meta.removeConfirm' => 'Είστε βέβαιοι ότι θέλετε να διαγράψετε;',
			'meta.edit' => 'Επεξεργασία',
			'meta.view' => 'Προβολή',
			'meta.more' => 'Περισσότερα',
			'meta.tips' => 'Πληροφορίες',
			'meta.copy' => 'Αντιγραφή',
			'meta.save' => 'Αποθήκευση',
			'meta.ok' => 'Οκ',
			'meta.cancel' => 'Ακύρωση',
			'meta.feedback' => 'Σχόλια',
			'meta.feedbackContent' => 'Περιεχόμενο σχολίων',
			'meta.feedbackContentHit' => 'Απαιτείται, έως 500 χαρακτήρες',
			'meta.feedbackContentCannotEmpty' => 'Το περιεχόμενο των σχολίων δεν μπορεί να είναι κενό',
			'meta.faq' => 'Συχνές ερωτήσεις',
			'meta.htmlTools' => 'Σύνολο εργαλείων HTML',
			'meta.download' => 'Λήψη',
			'meta.upload' => 'Μεταφόρτωση',
			'meta.downloadSpeed' => 'Ταχύτητα λήψης',
			'meta.uploadSpeed' => 'Ταχύτητα μεταφόρτωσης',
			'meta.loading' => 'Φόρτωση...',
			'meta.convert' => 'Μετατροπή',
			'meta.check' => 'Έλεγχος',
			'meta.detect' => 'Ανίχνευση',
			'meta.cache' => 'Προσωρινή μνήμη',
			'meta.days' => 'Ημέρες',
			'meta.hours' => 'Ώρες',
			'meta.minutes' => 'Λεπτά',
			'meta.seconds' => 'Δευτερόλεπτα',
			'meta.milliseconds' => 'Χιλιοστά του δευτερολέπτου',
			'meta.tolerance' => 'Ανοχή',
			'meta.dateTimePeriod' => 'Χρονική περίοδος',
			'meta.protocol' => 'Πρωτόκολλο',
			'meta.search' => 'Αναζήτηση',
			'meta.custom' => 'Προσαρμοσμένο',
			'meta.inbound' => 'Εισερχόμενα',
			'meta.outbound' => 'Εξερχόμενα',
			'meta.destination' => 'Προορισμός',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Σύνδεση',
			'meta.disconnect' => 'Αποσύνδεση',
			'meta.reconnect' => 'Επανασύνδεση',
			'meta.connected' => 'Συνδεδεμένο',
			'meta.disconnected' => 'Αποσυνδεδεμένο',
			'meta.connecting' => 'Σύνδεση σε εξέλιξη',
			'meta.connectTimeout' => 'Λήξη χρονικού ορίου σύνδεσης',
			'meta.timeout' => 'Λήξη χρονικού ορίου',
			'meta.timeoutDuration' => 'Διάρκεια λήξης χρονικού ορίου',
			'meta.runDuration' => 'Διάρκεια εκτέλεσης',
			'meta.latency' => 'Καθυστέρηση',
			'meta.latencyTest' => 'Έλεγχοι καθυστέρησης',
			'meta.language' => 'Γλώσσα',
			'meta.next' => 'Επόμενο',
			'meta.done' => 'Τέλος',
			'meta.apply' => 'Εφαρμογή',
			'meta.refresh' => 'Ανανέωση',
			'meta.retry' => 'Επανάληψη δοκιμής;',
			'meta.update' => 'Ενημέρωση',
			'meta.updateInterval' => 'Μεσοδιάστημα ενημέρωσης',
			'meta.updateInterval5mTips' => 'Ελάχιστο: 5λ',
			'meta.updateFailed' => ({required Object p}) => 'Η ενημέρωση απέτυχε:${p}',
			'meta.samplingUnit' => 'Μονάδα χρόνου δειγματοληψίας',
			'meta.queryResultCount' => 'Αριθμός αποτελεσμάτων ερωτήματος',
			'meta.queryLimit' => ({required Object p}) => 'Εμφάνιση έως ${p} δεδομένων',
			'meta.none' => 'Κανένα',
			'meta.start' => 'Έναρξη',
			'meta.pause' => 'Παύση',
			'meta.reset' => 'Επαναφορά',
			'meta.submit' => 'Υποβολή',
			'meta.user' => 'Χρήστης',
			'meta.account' => 'Λογαριασμός',
			'meta.password' => 'Κωδικός πρόσβασης',
			'meta.required' => 'Απαιτείται',
			'meta.type' => 'Τύπος',
			'meta.path' => 'Διαδρομή',
			'meta.local' => 'Τοπικό',
			'meta.remote' => 'Απομακρυσμένο',
			'meta.other' => 'Άλλο',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'Μη έγκυρο URL',
			'meta.urlCannotEmpty' => 'Ο σύνδεσμος δεν μπορεί να είναι κενός',
			'meta.urlTooLong' => 'Το URL είναι πολύ μεγάλο (>8182)',
			'meta.copyUrl' => 'Αντιγραφή συνδέσμου',
			'meta.openUrl' => 'Άνοιγμα συνδέσμου',
			'meta.shareUrl' => 'Κοινοποίηση συνδέσμου',
			'meta.speedTestUrl' => 'URL δοκιμής ταχύτητας',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'Στατική IP',
			'meta.staticIPTips' => 'Πρέπει να ενεργοποιήσετε το [TUN HijackDNS] ή το [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'Πάροχος VPN',
			'meta.domainSuffix' => 'Επίθεμα τομέα',
			'meta.domain' => 'Τομέας',
			'meta.domainKeyword' => 'Λέξη-κλειδί τομέα',
			'meta.domainRegex' => 'Regex τομέα',
			'meta.ip' => 'IP',
			'meta.port' => 'Θύρα',
			'meta.portRange' => 'Εύρος θυρών',
			'meta.appPackage' => 'ID πακέτου εφαρμογής',
			'meta.processName' => 'Όνομα διαδικασίας',
			'meta.processPath' => 'Διαδρομή διαδικασίας',
			'meta.processDir' => 'Κατάλογος διαδικασίας',
			'meta.systemProxy' => 'Proxy συστήματος',
			'meta.percentage' => 'Ποσοστό',
			'meta.statistics' => 'Στατιστικά',
			'meta.statisticsAndAnalysis' => 'Στατιστικά και Ανάλυση',
			'meta.statisticsDataDesensitize' => 'Αποευαισθητοποίηση δεδομένων',
			'meta.statisticsDataDesensitizeTips' => 'Η διαδικασία/ID πακέτου/όνομα τομέα προορισμού/IP προορισμού κ.λπ. θα αντικατασταθούν από * και θα αποθηκευτούν μετά την αποευαισθητοποίηση',
			'meta.records' => 'Εγγραφές',
			'meta.requestRecords' => 'Εγγραφές αιτημάτων',
			'meta.netInterfaces' => 'Διεπαφές δικτύου',
			'meta.netSpeed' => 'Ταχύτητα',
			'meta.memoryTrendChart' => 'Διάγραμμα τάσης μνήμης',
			'meta.goroutinesTrendChart' => 'Διάγραμμα τάσης GoRoutines',
			'meta.trafficTrendChart' => 'Διάγραμμα τάσης κίνησης',
			'meta.trafficDistributionChart' => 'Διάγραμμα κατανομής κίνησης',
			'meta.connectionChart' => 'Διάγραμμα τάσης σύνδεσης',
			'meta.memoryChart' => 'Διάγραμμα τάσης μνήμης',
			'meta.trafficStatistics' => 'Στατιστικά κίνησης',
			'meta.traffic' => 'Κίνηση',
			'meta.trafficTotal' => 'Συνολική κίνηση',
			'meta.trafficProxy' => 'Κίνηση Proxy',
			'meta.trafficDirect' => 'Άμεση κίνηση',
			'meta.website' => 'Ιστότοπος',
			'meta.memory' => 'Μνήμη',
			'meta.outboundMode' => 'Λειτουργία εξόδου',
			'meta.rule' => 'Κανόνας',
			'meta.global' => 'Καθολικό',
			'meta.qrcode' => 'QR Code',
			'meta.qrcodeTooLong' => 'Το κείμενο είναι πολύ μεγάλο για να εμφανιστεί',
			'meta.qrcodeShare' => 'Κοινοποίηση QR Code',
			'meta.textToQrcode' => 'Κείμενο σε QR Code',
			'meta.qrcodeScan' => 'Σάρωση QR Code',
			'meta.qrcodeScanResult' => 'Αποτέλεσμα σάρωσης',
			'meta.qrcodeScanFromImage' => 'Σάρωση από εικόνα',
			'meta.qrcodeScanResultFailed' => 'Αποτυχία ανάλυσης της εικόνας, παρακαλούμε βεβαιωθείτε ότι το στιγμιότυπο οθόνης είναι ένας έγκυρος κώδικας QR',
			'meta.qrcodeScanResultEmpty' => 'Το αποτέλεσμα της σάρωσης είναι κενό',
			'meta.screenshot' => 'Στιγμιότυπο οθόνης',
			'meta.backupAndSync' => 'Δημιουργία αντιγράφων ασφαλείας και Συγχρονισμός',
			'meta.autoBackup' => 'Αυτόματη δημιουργία αντιγράφων ασφαλείας',
			'meta.noProfileGotAutoBackup' => 'Εάν χαθούν δεδομένα όπως το [${_root.meta.myProfiles}], μπορείτε να τα επαναφέρετε από το [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] ή άλλες πηγές αντιγράφων ασφαλείας (όπως iCloud ή Webdav κ.λπ.)',
			'meta.autoBackupAddProfile' => 'Μετά την προσθήκη του προφίλ',
			'meta.autoBackupRemoveProfile' => 'Μετά τη διαγραφή του προφίλ',
			'meta.profile' => 'Προφίλ',
			'meta.currentProfile' => 'Τρέχον προφίλ',
			'meta.importAndExport' => 'Εισαγωγή και Εξαγωγή',
			'meta.import' => 'Εισαγωγή',
			'meta.importFromUrl' => 'Εισαγωγή από URL',
			'meta.export' => 'Εξαγωγή',
			'meta.send' => 'Αποστολή',
			'meta.receive' => 'Λήψη',
			'meta.sendConfirm' => 'Επιβεβαίωση αποστολής;',
			'meta.termOfUse' => 'Όροι Χρήσης',
			'meta.privacyPolicy' => 'Πολιτική Απορρήτου',
			'meta.about' => 'Σχετικά',
			'meta.name' => 'Όνομα',
			'meta.version' => 'Έκδοση',
			'meta.notice' => 'Ειδοποίηση',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Ενέργεια:${p}\nΑιτία:${p1}',
			'meta.sort' => 'Αναδιάταξη',
			'meta.novice' => 'Λειτουργία αρχαρίου',
			'meta.willCompleteAfterRebootInstall' => 'Παρακαλούμε επανεκκινήστε τη συσκευή σας για να ολοκληρώσετε την εγκατάσταση της επέκτασης συστήματος',
			'meta.willCompleteAfterRebootUninstall' => 'Παρακαλούμε επανεκκινήστε τη συσκευή σας για να ολοκληρώσετε την απεγκατάσταση της επέκτασης συστήματος',
			'meta.requestNeedsUserApproval' => '1. Παρακαλούμε [Επιτρέψτε] στο Karing να εγκαταστήσει επεκτάσεις συστήματος στις [Ρυθμίσεις συστήματος]-[Απόρρητο και ασφάλεια]\n2. Στις [Ρυθμίσεις συστήματος]-[Γενικά]-[Στοιχεία σύνδεσης Επεκτάσεις]-[Επέκταση δικτύου] ενεργοποιήστε το [karingServiceSE]\nεπανασυνδεθείτε μετά την ολοκλήρωση',
			'meta.FullDiskAccessPermissionRequired' => 'Παρακαλούμε ενεργοποιήστε την άδεια [karingServiceSE] στις [Ρυθμίσεις συστήματος]-[Απόρρητο και ασφάλεια]-[Πλήρης πρόσβαση στο δίσκο] και επανασυνδεθείτε',
			'meta.tvMode' => 'Λειτουργία TV',
			'meta.recommended' => 'Προτεινόμενα',
			'meta.innerError' => ({required Object p}) => 'Εσωτερικό σφάλμα:${p}',
			'meta.logicOperation' => 'Λογική λειτουργία',
			'meta.share' => 'Κοινοποίηση',
			'meta.candidateWord' => 'Υποψήφιες λέξεις',
			'meta.keywordOrRegx' => 'Λέξεις-κλειδιά/Κανονική έκφραση',
			'meta.importFromClipboard' => 'Εισαγωγή από το πρόχειρο',
			'meta.exportToClipboard' => 'Εξαγωγή στο πρόχειρο',
			'meta.server' => 'Διακομιστής',
			'meta.ads' => 'Διαφημίσεις',
			'meta.adsRemove' => 'Κατάργηση διαφημίσεων',
			'meta.donate' => 'Δωρεά',
			'meta.diversion' => 'Εκτροπή',
			'meta.diversionRules' => 'Κανόνες εκτροπής',
			'meta.diversionCustomGroup' => 'Προσαρμοσμένη ομάδα εκτροπής',
			'meta.urlTestCustomGroup' => 'Προσαρμοσμένη αυτόματη επιλογή',
			'meta.setting' => 'Ρυθμίσεις',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Συγχρονισμός LAN',
			'meta.lanSyncNotQuitTips' => 'Μην βγείτε από αυτήν τη διεπαφή πριν ολοκληρωθεί ο συγχρονισμός',
			'meta.deviceNoSpace' => 'Ανεπαρκής χώρος στο δίσκο',
			'meta.hideSystemApp' => 'Απόκρυψη εφαρμογών συστήματος',
			'meta.hideAppIcon' => 'Απόκρυψη εικονιδίων εφαρμογών',
			'meta.hideDockIcon' => 'Απόκρυψη εικονιδίου Dock',
			'meta.remark' => 'Παρατήρηση',
			'meta.remarkExist' => 'Η παρατήρηση υπάρχει ήδη, παρακαλούμε χρησιμοποιήστε άλλο όνομα',
			'meta.remarkCannotEmpty' => 'Οι παρατηρήσεις δεν μπορούν να είναι κενές',
			'meta.remarkTooLong' => 'Παρατηρήσεις έως 32 χαρακτήρες',
			'meta.openDir' => 'Άνοιγμα καταλόγου αρχείων',
			'meta.fileChoose' => 'Επιλογή αρχείου',
			'meta.filePathCannotEmpty' => 'Η διαδρομή αρχείου δεν μπορεί να είναι κενή',
			'meta.fileNotExist' => ({required Object p}) => 'Το αρχείο δεν υπάρχει:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Μη έγκυρος τύπος αρχείου:${p}',
			'meta.uwpExemption' => 'Εξαιρέσεις απομόνωσης δικτύου UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Λήψη προφίλ',
			'meta.addProfile' => 'Προσθήκη προφίλ',
			'meta.myProfiles' => 'Τα προφίλ μου',
			'meta.profileEdit' => 'Επεξεργασία προφίλ',
			'meta.profileEditUrlExist' => 'Το URL υπάρχει ήδη, παρακαλούμε χρησιμοποιήστε άλλο URL',
			'meta.profileEditReloadAfterProfileUpdate' => 'Επαναφόρτωση μετά την ενημέρωση του προφίλ',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Έναρξη δοκιμών καθυστέρησης μετά από αυτόματη ενημέρωση προφίλ',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'Το VPN πρέπει να είναι συνδεδεμένο και η [Επαναφόρτωση μετά την ενημέρωση του προφίλ] ενεργοποιημένη',
			'meta.profileEditTestLatencyAutoRemove' => 'Αυτόματη κατάργηση διακομιστών που αποτυγχάνουν στις δοκιμές καθυστέρησης',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Έως 3 προσπάθειες',
			'meta.profileImport' => 'Εισαγωγή αρχείου προφίλ',
			'meta.profileAddUrlOrContent' => 'Προσθήκη συνδέσμου προφίλ',
			'meta.profileExists' => 'Το προφίλ υπάρχει ήδη, παρακαλούμε μην το προσθέτετε επανειλημμένα',
			'meta.profileUrlOrContent' => 'Σύνδεσμος/Περιεχόμενο προφίλ',
			'meta.profileUrlOrContentHit' => 'Σύνδεσμος/Περιεχόμενο προφίλ [Απαιτείται] (Υποστηρίζει συνδέσμους προφίλ Clash, V2ray (υποστήριξη παρτίδας), Stash, Karing, Sing-box, Shadowsocks, Sub)',
			'meta.profileUrlOrContentCannotEmpty' => 'Ο σύνδεσμος προφίλ δεν μπορεί να είναι κενός',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Η μορφή είναι εσφαλμένη, παρακαλούμε διορθώστε την και προσθέστε ξανά:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Η προσθήκη απέτυχε: ${p}, παρακαλούμε δοκιμάστε να τροποποιήσετε το [UserAgent] και δοκιμάστε ξανά, ή χρησιμοποιήστε το ενσωματωμένο πρόγραμμα περιήγησης της συσκευής για να ανοίξετε το σύνδεσμο διαμόρφωσης και να εισαγάγετε το αρχείο διαμόρφωσης που κατέβηκε από το πρόγραμμα περιήγησης σε αυτήν την εφαρμογή',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Η προσθήκη απέτυχε: ${p}, παρακαλούμε ενεργοποιήστε το proxy ή τροποποιήστε τον τρέχοντα κόμβο proxy και δοκιμάστε ξανά',
			'meta.profileAddParseFailed' => 'Αποτυχία ανάλυσης προφίλ',
			'meta.profileAddNoServerAvaliable' => 'Δεν υπάρχει διαθέσιμος διακομιστής, βεβαιωθείτε ότι ο Σύνδεσμος Προφίλ ή το Αρχείο Προφίλ είναι έγκυρο. Εάν το προφίλ σας προέρχεται από το GitHub, λάβετε το σύνδεσμο μέσω του κουμπιού [Raw] στη σελίδα',
			'meta.profileAddWrapSuccess' => 'Το προφίλ δημιουργήθηκε επιτυχώς, παρακαλούμε μεταβείτε στο [${_root.meta.myProfiles}] για προβολή',
			'diversionRulesKeep' => 'Διατήρηση [${_root.meta.diversionRules}] του [${_root.meta.isp}]',
			'diversionCustomGroupPreset' => 'Προκαθορισμένη [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Σημείωση: Τα ενεργοποιημένα στοιχεία θα προστεθούν/αντικαταστήσουν στο [${_root.meta.diversionCustomGroup}] και στο [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Σημείωση: Μετά την προσθήκη, ίσως χρειαστεί να προσαρμόσετε χειροκίνητα τη σειρά, διαφορετικά η πρόσφατα προστιθέμενη εκτροπή ενδέχεται να μην τεθεί σε ισχύ',
			'rulesetEnableTips' => 'Συμβουλή: Μετά την ενεργοποίηση των επιλογών, παρακαλούμε μεταβείτε στο [${_root.meta.diversionRules}] για να ορίσετε τους σχετικούς κανόνες, διαφορετικά δεν θα τεθούν σε ισχύ',
			'ispUserAgentTips' => 'Το [${_root.meta.isp}] θα στείλει δεδομένα διαφορετικών τύπων συνδρομής με βάση το [UserAgent] στο αίτημα [HTTP]',
			'ispDiversionTips' => 'Το [${_root.meta.isp}] παρέχει κανόνες εκτροπής κίνησης. Οι συνδρομές τύπου [V2Ray] δεν υποστηρίζουν κανόνες εκτροπής κίνησης',
			'isp.bind' => 'Σύνδεση με [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Αποσύνδεση[${p}]',
			'isp.faq' => ({required Object p}) => 'Συχνές ερωτήσεις[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'Ακολουθήστε[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] Μη έγκυρο ή ληγμένο',
			'permission.camera' => 'Κάμερα',
			'permission.screen' => 'Εγγραφή οθόνης',
			'permission.appQuery' => 'Λήψη λίστας εφαρμογών',
			'permission.request' => ({required Object p}) => 'Ενεργοποίηση άδειας [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'Παρακαλούμε ενεργοποιήστε την άδεια [${p}]',
			'tls.insecure' => 'Παράλειψη επαλήθευσης πιστοποιητικού',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Ενεργοποίηση TLS Fragment',
			'tls.fragmentSize' => 'Μέγεθος TLS Fragment',
			'tls.fragmentSleep' => 'Αναστολή TLS Fragment',
			'tls.mixedCaseSNIEnable' => 'Ενεργοποίηση TLS Mixed Case SNI',
			'tls.paddingEnable' => 'Ενεργοποίηση TLS Padding',
			'tls.paddingSize' => 'Μέγεθος TLS Padding',
			_ => null,
		} ?? switch (path) {
			'outboundRuleMode.currentSelected' => 'Τρέχουσα επιλογή',
			'outboundRuleMode.urltest' => 'Αυτόματη επιλογή',
			'outboundRuleMode.direct' => 'Άμεση',
			'outboundRuleMode.block' => 'Αποκλεισμός',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Ενημέρωση προφίλ',
			'theme.light' => 'Φωτεινό',
			'theme.dark' => 'Σκοτεινό',
			'theme.auto' => 'Αυτόματο',
			'downloadProxyStrategy' => 'Κανάλι λήψης',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Σύνδεση στον διακομιστή DNS μέσω του διακομιστή proxy για την επίλυση του ονόματος τομέα\n[${_root.dnsProxyResolveMode.direct}]: Σύνδεση απευθείας στον διακομιστή DNS για την επίλυση του ονόματος τομέα\n[${_root.dnsProxyResolveMode.fakeip}]: Ο διακομιστής proxy επιλύει το όνομα τομέα για λογαριασμό σας. Εάν αποσυνδέσετε τη σύνδεση VPN, η εφαρμογή σας μπορεί να χρειαστεί επανεκκίνηση. Ισχύει μόνο για την εισερχόμενη κίνηση [TUN]',
			'routeFinal' => 'final',
			'protocolSniff' => 'Πρωτόκολλο Sniff',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Παρακαλούμε χρησιμοποιήστε το [${p}]',
			'turnOffPrivateDirect' => 'Παρακαλούμε ενεργοποιήστε πρώτα την [Άμεση σύνδεση ιδιωτικού δικτύου]',
			'targetConnectFailed' => ({required Object p}) => 'Αποτυχία σύνδεσης στο [${p}]. Παρακαλούμε βεβαιωθείτε ότι οι συσκευές βρίσκονται στο ίδιο LAN',
			'appleTVSync' => 'Συγχρονισμός της τρέχουσας διαμόρφωσης πυρήνα στο Apple TV - Karing',
			'appleTVSyncDone' => 'Ο συγχρονισμός ολοκληρώθηκε. Παρακαλούμε μεταβείτε στο Apple TV - Karing για να ξεκινήσετε τη σύνδεση/επανεκκινήσετε τη σύνδεση',
			'appleTVRemoveCoreConfig' => 'Διαγραφή διαμόρφωσης πυρήνα Apple TV - Karing',
			'appleTVRemoveCoreConfigDone' => 'Η διαμόρφωση πυρήνα του Apple TV - Karing διαγράφηκε. Η υπηρεσία VPN αποσυνδέθηκε',
			'appleTVUrlInvalid' => 'Μη έγκυρο URL, παρακαλούμε ανοίξτε το Apple TV - Karing και σαρώστε τον κωδικό QR που εμφανίζεται από το Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] δεν έχει αυτή τη λειτουργία, παρακαλούμε ενημερώστε και δοκιμάστε ξανά',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'Η κύρια έκδοση του πυρήνα δεν ταιριάζει, παρακαλούμε ενημερώστε το [${p}] και δοκιμάστε ξανά',
			'remoteProfileEditConfirm' => 'Μετά την ενημέρωση του προφίλ, οι αλλαγές στον κόμβο θα αποκατασταθούν. Συνέχεια;',
			'mustBeValidHttpsURL' => 'Πρέπει να είναι ένα έγκυρο https URL',
			'fileNotExistReinstall' => ({required Object p}) => 'Το αρχείο λείπει [${p}], παρακαλούμε επανεγκαταστήστε',
			'noNetworkConnect' => 'Δεν υπάρχει σύνδεση στο διαδίκτυο',
			'sudoPassword' => 'κωδικός πρόσβασης sudo (απαιτείται για τη λειτουργία TUN)',
			'turnOffNetworkBeforeInstall' => 'Συνιστάται η μετάβαση σε [Λειτουργία πτήσης] πριν από την εγκατάσταση της ενημέρωσης',
			'latencyTestResolveIP' => 'Κατά τον μη αυτόματο έλεγχο, επίλυση της IP εξόδου',
			'latencyTestConcurrency' => 'Ταυτοχρονισμός',
			'edgeRuntimeNotInstalled' => 'Η τρέχουσα συσκευή δεν έχει εγκατεστημένο το περιβάλλον εκτέλεσης Edge WebView2, επομένως η σελίδα δεν μπορεί να εμφανιστεί. Παρακαλούμε κατεβάστε και εγκαταστήστε το περιβάλλον εκτέλεσης Edge WebView2 (x64), επανεκκινήστε την εφαρμογή και δοκιμάστε ξανά.',
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
			_ => null,
		};
	}
}
