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
class TranslationsPl with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPl _root = this; // ignore: unused_field

	@override 
	TranslationsPl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPl(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenPl AboutScreen = _TranslationsAboutScreenPl._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenPl BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenPl._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenPl DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenPl._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenPl DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenPl._(_root);
	@override late final _TranslationsDiversionRulesScreenPl DiversionRulesScreen = _TranslationsDiversionRulesScreenPl._(_root);
	@override late final _TranslationsDnsSettingsScreenPl DnsSettingsScreen = _TranslationsDnsSettingsScreenPl._(_root);
	@override late final _TranslationsFileContentViewerScreenPl FileContentViewerScreen = _TranslationsFileContentViewerScreenPl._(_root);
	@override late final _TranslationsHomeScreenPl HomeScreen = _TranslationsHomeScreenPl._(_root);
	@override late final _TranslationsLaunchFailedScreenPl LaunchFailedScreen = _TranslationsLaunchFailedScreenPl._(_root);
	@override late final _TranslationsMyProfilesMergeScreenPl MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenPl._(_root);
	@override late final _TranslationsNetCheckScreenPl NetCheckScreen = _TranslationsNetCheckScreenPl._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenPl NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenPl._(_root);
	@override late final _TranslationsNetConnectionsScreenPl NetConnectionsScreen = _TranslationsNetConnectionsScreenPl._(_root);
	@override late final _TranslationsPerAppAndroidScreenPl PerAppAndroidScreen = _TranslationsPerAppAndroidScreenPl._(_root);
	@override late final _TranslationsRegionSettingsScreenPl RegionSettingsScreen = _TranslationsRegionSettingsScreenPl._(_root);
	@override late final _TranslationsServerSelectScreenPl ServerSelectScreen = _TranslationsServerSelectScreenPl._(_root);
	@override late final _TranslationsSettingsScreenPl SettingsScreen = _TranslationsSettingsScreenPl._(_root);
	@override late final _TranslationsUserAgreementScreenPl UserAgreementScreen = _TranslationsUserAgreementScreenPl._(_root);
	@override late final _TranslationsVersionUpdateScreenPl VersionUpdateScreen = _TranslationsVersionUpdateScreenPl._(_root);
	@override late final _TranslationsCommonWidgetPl CommonWidget = _TranslationsCommonWidgetPl._(_root);
	@override late final _TranslationsMainPl main = _TranslationsMainPl._(_root);
	@override late final _TranslationsMetaPl meta = _TranslationsMetaPl._(_root);
	@override String get diversionRulesKeep => 'Zachowaj [${_root.meta.diversionRules}] dla [${_root.meta.isp}]';
	@override String get diversionCustomGroupPreset => 'Predefiniowane [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Uwaga: Włączone elementy zostaną dodane/nadpisane w [${_root.meta.diversionCustomGroup}] i [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Uwaga: Po dodaniu może być konieczne ręczne dostosowanie kolejności, w przeciwnym razie nowo dodane przekierowanie może nie zadziałać';
	@override String get rulesetEnableTips => 'Wskazówka: Po włączeniu opcji przejdź do [${_root.meta.diversionRules}], aby ustawić odpowiednie reguły, w przeciwnym razie nie zaczną obowiązywać';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] wyśle dane różnych typów subskrypcji na podstawie [UserAgent] w żądaniu [HTTP]';
	@override String get ispDiversionTips => '[${_root.meta.isp}] udostępnia reguły przekierowania ruchu; subskrypcje typu [V2Ray] nie obsługują reguł przekierowania ruchu';
	@override late final _TranslationsIspPl isp = _TranslationsIspPl._(_root);
	@override late final _TranslationsPermissionPl permission = _TranslationsPermissionPl._(_root);
	@override late final _TranslationsTlsPl tls = _TranslationsTlsPl._(_root);
	@override late final _TranslationsOutboundRuleModePl outboundRuleMode = _TranslationsOutboundRuleModePl._(_root);
	@override late final _TranslationsDnsProxyResolveModePl dnsProxyResolveMode = _TranslationsDnsProxyResolveModePl._(_root);
	@override late final _TranslationsProxyStrategyPl proxyStrategy = _TranslationsProxyStrategyPl._(_root);
	@override late final _TranslationsReloadReasonPl reloadReason = _TranslationsReloadReasonPl._(_root);
	@override late final _TranslationsThemePl theme = _TranslationsThemePl._(_root);
	@override String get downloadProxyStrategy => 'Kanał pobierania';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Połącz się z serwerem DNS przez serwer proxy, aby rozwiązać nazwę domeny\n[${_root.dnsProxyResolveMode.direct}]: Połącz się bezpośrednio z serwerem DNS, aby rozwiązać nazwę domeny\n[${_root.dnsProxyResolveMode.fakeip}]: Serwer proxy rozwiązuje nazwę domeny w Twoim imieniu; jeśli rozłączysz połączenie VPN, aplikacja może wymagać ponownego uruchomienia; skuteczne tylko dla ruchu przychodzącego [TUN]';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'Sniffing protokołu';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Użyj [${p}]';
	@override String get turnOffPrivateDirect => 'Najpierw włącz [Bezpośrednie połączenie z siecią prywatną]';
	@override String targetConnectFailed({required Object p}) => 'Nie udało się połączyć z [${p}]. Upewnij się, że urządzenia są w tej samej sieci LAN';
	@override String get appleTVSync => 'Zsynchronizuj bieżącą konfigurację core z Apple TV - Karing';
	@override String get appleTVSyncDone => 'Synchronizacja zakończona. Przejdź do Apple TV - Karing, aby rozpocząć/zrestartować połączenie';
	@override String get appleTVRemoveCoreConfig => 'Usuń konfigurację core Apple TV - Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Konfiguracja core Apple TV - Karing usunięta; usługa VPN rozłączona';
	@override String get appleTVUrlInvalid => 'Nieprawidłowy adres URL, otwórz Apple TV - Karing i zeskanuj kod QR wyświetlony przez Karing';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] nie posiada tej funkcji, zaktualizuj i spróbuj ponownie';
	@override String appleCoreVersionNotMatch({required Object p}) => 'Główna wersja core nie zgadza się, zaktualizuj [${p}] i spróbuj ponownie';
	@override String get remoteProfileEditConfirm => 'Po zaktualizowaniu profilu zmiany węzłów zostaną przywrócone. Kontynuować?';
	@override String get mustBeValidHttpsURL => 'Musi być prawidłowym adresem URL https';
	@override String fileNotExistReinstall({required Object p}) => 'Brak pliku [${p}], zainstaluj ponownie';
	@override String get noNetworkConnect => 'Brak połączenia z Internetem';
	@override String get sudoPassword => 'hasło sudo (wymagane dla trybu TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Zaleca się przełączenie w [Tryb samolotowy] przed instalacją aktualizacji';
	@override String get latencyTestResolveIP => 'Podczas ręcznego sprawdzania rozwiązuj IP wyjściowe';
	@override String get latencyTestConcurrency => 'Współbieżność';
	@override String get edgeRuntimeNotInstalled => 'Bieżące urządzenie nie ma zainstalowanego środowiska uruchomieniowego Edge WebView2, więc strona nie może zostać wyświetlona. Pobierz i zainstaluj środowisko uruchomieniowe Edge WebView2 (x64), uruchom ponownie aplikację i spróbuj ponownie.';
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
class _TranslationsAboutScreenPl implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Źródło instalacji';
	@override String get installTime => 'Czas instalacji';
	@override String get versionChannel => 'Kanał automatycznych aktualizacji';
	@override String get updateWhenConnected => 'Sprawdź dostępność aktualizacji po połączeniu';
	@override String get autoDownloadPkg => 'Automatycznie pobieraj pakiety aktualizacji';
	@override String get disableAppImproveData => 'Dane o ulepszaniu aplikacji';
	@override String get disableUAReportTip => 'Włączenie [${_root.AboutScreen.disableAppImproveData}] pomaga nam poprawić stabilność i użyteczność produktu; nie zbieramy żadnych osobistych danych dotyczących prywatności. Wyłączenie tej opcji uniemożliwi aplikacji zbieranie jakichkolwiek danych.';
	@override String get devOptions => 'Opcje programistyczne';
	@override String get enableDebugLog => 'Włącz dziennik debugowania';
	@override String get viewFilsContent => 'Wyświetl pliki';
	@override String get enablePprof => 'Włącz pprof';
	@override String get pprofPanel => 'Panel pprof';
	@override String get allowRemoteAccessPprof => 'Zezwalaj na zdalny dostęp do ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Zezwalaj na zdalny dostęp do ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Użyj oryginalnego profilu sing-box';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenPl implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Adres URL serwera';
	@override String get webdavRequired => 'Nie może być puste';
	@override String get webdavLoginFailed => 'Logowanie nie powiodło się:';
	@override String get webdavListFailed => 'Nie udało się pobrać listy plików:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenPl implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'Nieprawidłowa [Domena]:${p}';
	@override String invalidIpCidr({required Object p}) => 'Nieprawidłowy [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'Nieprawidłowe [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'Nieprawidłowy [Zestaw reguł]:${p}, Adres URL musi być prawidłowym adresem https i plikiem binarnym z rozszerzeniem .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => 'Nieprawidłowy [Zestaw reguł (wbudowany)]:${p}, Format to geosite:xxx lub geoip:xxx lub acl:xxx, gdzie xxx powinno być prawidłową nazwą reguły';
	@override String invalidPackageId({required Object p}) => 'Nieprawidłowy [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'Wskazówka: Po zapisaniu przejdź do [${_root.meta.diversionRules}], aby ustawić odpowiednie reguły, w przeciwnym razie nie zaczną obowiązywać';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenPl implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wykrywanie reguł przekierowania';
	@override String get rule => 'Reguła:';
	@override String get outbound => 'Serwer proxy:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenPl implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Wskazówka: Spróbuj dopasować reguły od góry do dołu. Jeśli żadna reguła nie pasuje, użyj [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenPl implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP nie może być pusty';
	@override String get urlCanNotEmpty => 'Adres URL nie może być pusty';
	@override String error({required Object p}) => 'Nieobsługiwany typ:${p}';
	@override String get dnsDesc => 'Pierwsza kolumna danych o opóźnieniu to opóźnienie zapytania o połączenie bezpośrednie;\nDruga kolumna: Włącz [[Ruch proxy]Rozwiązywanie DNS przez serwer proxy]: dane o opóźnieniu to opóźnienie zapytania przekazywane przez bieżący serwer proxy; jeśli [[Ruch proxy]Rozwiązywanie DNS przez serwer proxy] jest wyłączone: Dane o opóźnieniu to opóźnienie zapytania o połączenie bezpośrednie';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenPl implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Przeglądarka zawartości plików';
	@override String get clearFileContent => 'Czy na pewno chcesz wyczyścić zawartość pliku?';
	@override String get clearFileContentTips => 'Czy na pewno chcesz wyczyścić zawartość pliku profilu? Wyczyszczenie pliku profilu może spowodować utratę danych lub nieprawidłowe działanie aplikacji, prosimy o ostrożność';
}

// Path: HomeScreen
class _TranslationsHomeScreenPl implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Wybierz serwer';
	@override String get invalidServer => 'jest nieprawidłowy, wybierz ponownie';
	@override String get disabledServer => 'jest wyłączony, wybierz ponownie';
	@override String get expiredServer => 'Brak dostępnych serwerów, profile mogą być wygasłe lub wyłączone';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'Skonfiguruj [Skrót] przed użyciem';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Zbyt wiele serwerów proxy [${p}>${p1}], połączenie może się nie udać z powodu ograniczeń pamięci systemowej';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Zbyt wiele serwerów proxy [${p}>${p1}] może spowodować powolne lub niedostępne połączenia';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenPl implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'Aplikacja nie została uruchomiona [Nieprawidłowa nazwa procesu], zainstaluj aplikację ponownie w osobnym katalogu';
	@override String get invalidProfile => 'Aplikacja nie została uruchomiona [Nie udało się uzyskać dostępu do profilu], zainstaluj aplikację ponownie';
	@override String get invalidVersion => 'Aplikacja nie została uruchomiona [Nieprawidłowa wersja], zainstaluj aplikację ponownie';
	@override String get systemVersionLow => 'Aplikacja nie została uruchomiona [zbyt niska wersja systemu]';
	@override String get invalidInstallPath => 'Ścieżka instalacji jest nieprawidłowa, zainstaluj ją ponownie w prawidłowej ścieżce';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenPl implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Scalanie profili';
	@override String get profilesMergeTarget => 'Profil docelowy';
	@override String get profilesMergeSource => 'Profile źródłowe';
	@override String get profilesMergeTips => 'Wskazówka: Przekierowanie profili źródłowych zostanie odrzucone';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenPl implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sprawdzanie sieci';
	@override String get warn => 'Uwaga: Ze względu na wpływ środowiska sieciowego i reguł przekierowania, wyniki testów nie są całkowicie równoważne wynikom rzeczywistym.';
	@override String get invalidDomain => 'Nieprawidłowa nazwa domeny';
	@override String get connectivity => 'Łączność sieciowa';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Test połączenia Ipv4 [${p}] - wszystkie nieudane';
	@override String get connectivityTestIpv4Ok => 'Połączenie Ipv4 powiodło się';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Test połączenia Ipv6 [${p}] - wszystkie nieudane, Twoja sieć może nie obsługiwać ipv6';
	@override String get connectivityTestIpv6Ok => 'Połączenie Ipv6 powiodło się';
	@override String get connectivityTestOk => 'Sieć jest połączona z Internetem';
	@override String get connectivityTestFailed => 'Sieć nie jest jeszcze połączona z Internetem';
	@override String get remoteRulesetsDownloadOk => 'Wszystkie pobrane pomyślnie';
	@override String get remoteRulesetsDownloadNotOk => 'Pobieranie lub pobieranie nie powiodło się';
	@override String get outbound => 'Serwer proxy';
	@override String outboundOk({required Object p}) => 'Połączenie [${p}] powiodło się';
	@override String outboundFailed({required Object p1, required Object p2}) => 'Połączenie [${p1}] nie powiodło się\nBłąd:[${p2}]';
	@override String get dnsServer => 'Serwer DNS';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Zapytanie DNS [${p1}] powiodło się\nReguła DNS:[${p2}]\nOpóźnienie:[${p3} ms]\nAdres:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => 'Zapytanie DNS [${p1}] powiodło się\n nReguła DNS:[${p2}]\nBłąd:[${p3}]';
	@override String get host => 'Połączenie HTTP';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nRegułaPrzekierowania:[${p2}]\nSerwer proxy:[${p3}]';
	@override String get hostConnectionOk => 'połączenie powiodło się';
	@override String hostConnectionFailed({required Object p}) => 'połączenie nie powiodło się:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenPl implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domena/IP';
	@override String get app => 'Aplikacja';
	@override String get rule => 'Reguła';
	@override String get chain => 'Wychodzące';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenPl implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Skopiowano do formatu CSV';
	@override String get selectType => 'Wybierz typ przekierowania';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenPl implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proxy dla poszczególnych aplikacji';
	@override String get whiteListMode => 'Tryb białej listy';
	@override String get whiteListModeTip => 'Gdy włączone: tylko zaznaczone aplikacje używają proxy; gdy wyłączone: tylko niezaznaczone aplikacje używają proxy';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenPl implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kraj lub region';
	@override String get Regions => 'Wskazówka: Ustaw prawidłowo swój aktualny kraj lub region, w przeciwnym razie może to spowodować problemy z przekierowaniem sieci';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenPl implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wybierz serwer';
	@override String get autoSelectServer => 'Automatycznie wybierz serwer o najniższym opóźnieniu';
	@override String get recentUse => 'Ostatnio używane';
	@override String get myFav => 'Moje ulubione';
	@override String selectLocal({required Object p}) => 'Wybrany serwer jest adresem lokalnym i może nie działać prawidłowo:${p}';
	@override String get selectRequireEnableIPv6 => 'Wybrany serwer jest adresem IPv6 i wymaga [Włącz IPv6]';
	@override String get selectDisabled => 'Ten serwer został wyłączony';
	@override String get error404 => 'Wykrywanie opóźnienia napotkało błąd, sprawdź, czy istnieje konfiguracja o tej samej zawartości';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenPl implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Pobierz ruch';
	@override String get tutorial => 'Samouczek';
	@override String get commonlyUsedRulesets => 'Często używane zestawy reguł';
	@override String get htmlBoard => 'Panel online';
	@override String get dnsLeakDetection => 'Wykrywanie wycieków DNS';
	@override String get proxyLeakDetection => 'Wykrywanie wycieków proxy';
	@override String get speedTest => 'Test prędkości';
	@override String get rulesetDirectDownlad => 'Bezpośrednie pobieranie zestawu reguł';
	@override String get hideUnusedDiversionGroup => 'Ukryj nieużywane reguły przekierowania';
	@override String get disableISPDiversionGroup => 'Wyłącz [${_root.meta.diversionRules}] dla [${_root.meta.isp}]';
	@override String get portSettingRule => 'Oparte na regułach';
	@override String get portSettingDirectAll => 'Wszystko bezpośrednio';
	@override String get portSettingProxyAll => 'Wszystko przez proxy';
	@override String get portSettingControl => 'Kontrola i synchronizacja';
	@override String get portSettingCluster => 'Usługa klastra';
	@override String get modifyPort => 'Zmień port';
	@override String get modifyPortOccupied => 'Port jest zajęty, użyj innego portu';
	@override String get ipStrategyTips => 'Przed włączeniem upewnij się, że Twoja sieć obsługuje IPv6, w przeciwnym razie dostęp do części ruchu może być utrudniony.';
	@override String get tunAppendHttpProxy => 'Dołącz proxy HTTP do VPN';
	@override String get tunAppendHttpProxyTips => 'Niektóre aplikacje będą omijać wirtualne urządzenie sieciowe i łączyć się bezpośrednio z proxy HTTP';
	@override String get tunAllowBypassHttpProxyDomain => 'Domeny uprawnione do omijania proxy HTTP';
	@override String get dnsEnableRule => 'Włącz reguły przekierowania DNS';
	@override String get dnsEnableProxyResolveMode => 'Kanał rozwiązywania dla [${_root.meta.trafficProxy}]';
	@override String get dnsEnableClientSubnet => 'Włącz ECS dla [${_root.meta.trafficDirect}]';
	@override String get dnsTestDomain => 'Domena testowa';
	@override String get dnsTestDomainInvalid => 'Nieprawidłowa domena';
	@override String get dnsTypeOutbound => 'Serwer proxy';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'Serwer DNS';
	@override String get dnsEnableRuleTips => 'Po włączeniu nazwa domeny wybierze odpowiedni serwer DNS do rozwiązania zgodnie z regułami przekierowania';
	@override String get dnsEnableFakeIpTips => 'Po włączeniu FakeIP, jeśli rozłączysz się z VPN, aplikacja może wymagać ponownego uruchomienia; ta funkcja wymaga włączenia [Trybu TUN]';
	@override String get dnsTypeOutboundTips => 'Rozwiązywanie nazw domen dla [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Rozwiązywanie nazw domen dla [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Rozwiązywanie nazw domen dla [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Rozwiązywanie nazw domen dla [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Automatyczna konfiguracja serwera';
	@override String get dnsResetServer => 'Resetuj serwer';
	@override String get inboundDomainResolve => 'Rozwiązywanie przychodzących nazw domen';
	@override String get privateDirect => 'Bezpośrednie połączenie z siecią prywatną';
	@override String inboundDomainResolveTips({required Object p}) => 'Niektóre nazwy domen, które nie są skonfigurowane z regułami przekierowania, muszą zostać rozwiązane przed dopasowaniem do reguł przekierowania opartych na IP; ta funkcja wpływa na przychodzące żądania do portu proxy [${p}]';
	@override String get useRomoteRes => 'Użyj zasobów zdalnych';
	@override String get autoAppendRegion => 'Automatycznie dołączaj podstawowe reguły';
	@override String get autoSelect => 'Automatyczny wybór';
	@override String get autoSelectServerIgnorePerProxyServer => 'Ignoruj serwery proxy [Front/Chain]';
	@override String get autoSelectServerInterval => 'Interwał sprawdzania opóźnienia';
	@override String get autoSelectSelectedHealthCheckInterval => 'Bieżący interwał sprawdzania stanu serwera';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Sprawdź ponownie opóźnienie przy zmianie sieci';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Aktualizuj bieżący serwer po ręcznym sprawdzeniu opóźnienia';
	@override String get autoSelectServerIntervalTips => 'Im krótszy interwał czasu, tym szybciej aktualizowane są dane o opóźnieniu serwera, co zajmie więcej zasobów i zużyje więcej energii';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Jeśli sprawdzenie się nie powiedzie, serwer zostanie przełączony; jeśli podczas przełączania serwera nie zostanie znaleziony żaden dostępny serwer, grupa ponownie sprawdzi opóźnienie';
	@override String get autoSelectServerFavFirst => 'Pierwszeństwo dla [Moich ulubionych]';
	@override String get autoSelectServerFavFirstTips => 'Jeśli lista [Moje ulubione] nie jest pusta, użyj serwerów z [Moich ulubionych]';
	@override String get autoSelectServerFilter => 'Filtruj nieprawidłowe serwery';
	@override String autoSelectServerFilterTips({required Object p}) => 'Serwery, których sprawdzanie opóźnienia się nie powiedzie, zostaną odfiltrowane; jeśli po przefiltrowaniu żaden serwer nie będzie dostępny, zostaną użyte pierwsze [${p}] serwery';
	@override String get autoSelectServerLimitedNum => 'Maksymalna liczba serwerów';
	@override String get autoSelectServerLimitedNumTips => 'Serwery przekraczające tę liczbę zostaną odfiltrowane';
	@override String get numInvalid => 'Nieprawidłowy numer';
	@override String get hideInvalidServer => 'Ukryj nieprawidłowe serwery';
	@override String get sortServer => 'Sortowanie serwerów';
	@override String get sortServerTips => 'Sortuj według opóźnienia od najniższego do najwyższego';
	@override String get selectServerHideRecommand => 'Ukryj [Polecane]';
	@override String get selectServerHideRecent => 'Ukryj [Ostatnio używane]';
	@override String get selectServerHideFav => 'Ukryj [Moje ulubione]';
	@override String get homeScreen => 'Ekran główny';
	@override String get theme => 'Motyw';
	@override String get widgetsAlpha => 'Przezroczystość widżetów';
	@override String get widgetsEmpty => 'Brak dostępnych widżetów';
	@override String get backgroundImage => 'Obraz tła';
	@override String get myLink => 'Skrót';
	@override String get autoConnectAfterLaunch => 'Automatyczne połączenie po uruchomieniu';
	@override String get autoConnectAtBoot => 'Automatyczne połączenie po starcie systemu';
	@override String get autoConnectAtBootTips => 'Wymagana jest obsługa systemu; niektóre systemy mogą również wymagać włączenia [autostartu].';
	@override String get hideAfterLaunch => 'Ukryj okno po uruchomieniu';
	@override String get autoSetSystemProxy => 'Automatycznie ustaw proxy systemowe po połączeniu';
	@override String get bypassSystemProxy => 'Nazwy domen uprawnione do omijania proxy systemowego';
	@override String get disconnectWhenQuit => 'Rozłącz przy wyjściu z aplikacji';
	@override String get autoAddToFirewall => 'Automatycznie dodawaj reguły zapory';
	@override String get excludeFromRecent => 'Ukryj z [Ostatnich zadań]';
	@override String get wakeLock => 'Blokada uśpienia';
	@override String get hideVpn => 'Ukryj ikonę VPN';
	@override String get hideVpnTips => 'Włączenie IPv6 spowoduje, że ta funkcja nie będzie działać';
	@override String get allowBypass => 'Zezwalaj aplikacjom na omijanie VPN';
	@override String get importSuccess => 'Import zakończony pomyślnie';
	@override String get rewriteConfirm => 'Ten plik nadpisze istniejącą konfigurację lokalną. Czy chcesz kontynuować?';
	@override String get mergePerapp => 'Scal lokalne listy [${_root.PerAppAndroidScreen.title}]';
	@override String get networkShare => 'Udostępnianie sieciowe';
	@override String get frontProxy => 'Proxy Front/Chain';
	@override String frontProxyTips({required Object p}) => 'Dane->Serwer proxy Front/Chain [Wiele serwerów proxy: od góry do dołu]->Serwer proxy [${p}]->Serwer docelowy';
	@override String get allowOtherHostsConnect => 'Zezwalaj innym na łączenie się';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'Ze względu na ograniczenia systemowe, po włączeniu tej opcji aplikacje na tym urządzeniu używające http do dostępu do sieci mogą nie być w stanie prawidłowo połączyć się z siecią.';
	@override String get tunAutoRoute => 'Automatyczna trasa';
	@override String get tunAutoRedirect => 'Automatyczne przekierowanie';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'Jeśli po włączeniu udostępniania inni nie mogą uzyskać dostępu do tego urządzenia, spróbuj wyłączyć ten przełącznik';
	@override String get loopbackAddress => 'Adres zwrotny';
	@override String get enableCluster => 'Włącz klaster proxy Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Zezwalaj innym na łączenie się z klastrem';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Uwierzytelnianie klastra proxy';
	@override String get tunMode => 'Tryb TUN';
	@override String get tuni4Address => 'Adres IP';
	@override String get tunModeTips => 'Tryb TUN przejmie cały ruch systemowy [W tym trybie można pozostawić proxy systemowe wyłączone]';
	@override String get tunModeRunAsAdmin => 'Tryb TUN wymaga uprawnień administratora systemu, uruchom aplikację ponownie jako administrator';
	@override String get tunStack => 'Stos';
	@override String get tunHijackTips => 'Po zamknięciu żądania DNS z TUN będą przekazywane bezpośrednio do odpowiedniego serwera DNS';
	@override String get launchAtStartup => 'Uruchamiaj przy starcie';
	@override String get quitWhenSwitchSystemUser => 'Zamknij aplikację przy przełączaniu użytkowników systemu';
	@override String get handleScheme => 'Wywołanie schematu systemowego';
	@override String get portableMode => 'Tryb przenośny';
	@override String get portableModeDisableTips => 'Jeśli chcesz wyjść z trybu przenośnego, wyjdź z [karing] i ręcznie usuń folder [profiles] w tym samym katalogu co [karing.exe]';
	@override String get accessibility => 'Dostępność';
	@override String get handleKaringScheme => 'Obsługuj wywołanie karing://';
	@override String get handleClashScheme => 'Obsługuj wywołanie clash://';
	@override String get handleSingboxScheme => 'Obsługuj wywołanie sing-box://';
	@override String get alwayOnVPN => 'Połączenie zawsze aktywne';
	@override String get disconnectAfterSleep => 'Rozłącz po uśpieniu systemu';
	@override String get removeSystemVPNConfig => 'Usuń konfigurację VPN systemu';
	@override String get timeConnectOrDisconnect => 'Zaplanowane połączenie/rozłączenie';
	@override String get timeConnectOrDisconnectTips => 'VPN musi być połączony, aby to zadziałało; po włączeniu [Automatyczne uśpienie] zostanie wyłączone';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Interwał połączenia/rozłączenia nie może być krótszy niż ${p} minut';
	@override String get disableFontScaler => 'Wyłącz skalowanie czcionek (wymaga ponownego uruchomienia)';
	@override String get autoOrientation => 'Obracaj wraz z ekranem';
	@override String get restartTakesEffect => 'Wymaga ponownego uruchomienia';
	@override String get reconnectTakesEffect => 'Wymaga ponownego połączenia';
	@override String get resetSettings => 'Resetuj ustawienia';
	@override String get cleanCache => 'Wyczyść pamięć podręczną';
	@override String get cleanCacheDone => 'Czyszczenie zakończone';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Aktualizuj wersję ${p}';
	@override String get follow => 'Śledź nas';
	@override String get contactUs => 'Skontaktuj się z nami';
	@override String get supportUs => 'Wesprzyj nas';
	@override String get rateInApp => 'Oceń nas';
	@override String get rateInAppStore => 'Oceń nas w AppStore';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenPl implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Twoja prywatność jest najważniejsza';
	@override String get agreeAndContinue => 'Zaakceptuj i kontynuuj';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenPl implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'Nowa wersja [${p}] jest gotowa';
	@override String get update => 'Uruchom ponownie, aby zaktualizować';
	@override String get cancel => 'Nie teraz';
}

// Path: CommonWidget
class _TranslationsCommonWidgetPl implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Jeśli [Zawsze włączony VPN] jest włączony, wyłącz go i spróbuj połączyć się ponownie';
	@override String get resetPort => 'Zmień port na inny dostępny lub zamknij aplikację zajmującą port.';
}

// Path: main
class _TranslationsMainPl implements TranslationsMainEn {
	_TranslationsMainPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayPl tray = _TranslationsMainTrayPl._(_root);
}

// Path: meta
class _TranslationsMetaPl implements TranslationsMetaEn {
	_TranslationsMetaPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Włącz';
	@override String get disable => 'Wyłącz';
	@override String get bydefault => 'Domyślne';
	@override String get filter => 'Filtruj';
	@override String get filterMethod => 'Metoda filtrowania';
	@override String get include => 'Uwzględnij';
	@override String get exclude => 'Wyklucz';
	@override String get all => 'Wszystkie';
	@override String get prefer => 'Preferuj';
	@override String get only => 'Tylko';
	@override String get open => 'Otwórz';
	@override String get close => 'Zamknij';
	@override String get quit => 'Wyjdź';
	@override String get add => 'Dodaj';
	@override String get addSuccess => 'Dodano pomyślnie';
	@override String addFailed({required Object p}) => 'Dodawanie nie powiodło się:${p}';
	@override String get remove => 'Usuń';
	@override String get removeConfirm => 'Czy na pewno chcesz usunąć?';
	@override String get edit => 'Edytuj';
	@override String get view => 'Widok';
	@override String get more => 'Więcej';
	@override String get tips => 'Info';
	@override String get copy => 'Kopiuj';
	@override String get paste => 'Pasta';
	@override String get cut => 'Cięcie';
	@override String get save => 'Zapisz';
	@override String get ok => 'Ok';
	@override String get cancel => 'Anuluj';
	@override String get feedback => 'Opinia';
	@override String get feedbackContent => 'Treść opinii';
	@override String get feedbackContentHit => 'Wymagane, do 500 znaków';
	@override String get feedbackContentCannotEmpty => 'Treść opinii nie może być pusta';
	@override String get faq => 'FAQ';
	@override String get htmlTools => 'Zestaw narzędzi HTML';
	@override String get download => 'Pobierz';
	@override String get upload => 'Prześlij';
	@override String get downloadSpeed => 'Prędkość pobierania';
	@override String get uploadSpeed => 'Prędkość przesyłania';
	@override String get loading => 'Ładowanie...';
	@override String get convert => 'Konwertuj';
	@override String get check => 'Sprawdź';
	@override String get detect => 'Wykryj';
	@override String get cache => 'Pamięć podręczna';
	@override String get days => 'Dni';
	@override String get hours => 'Godziny';
	@override String get minutes => 'Minuty';
	@override String get seconds => 'Sekundy';
	@override String get milliseconds => 'Milisekundy';
	@override String get tolerance => 'Tolerancja';
	@override String get dateTimePeriod => 'Okres czasu';
	@override String get protocol => 'Protokół';
	@override String get search => 'Szukaj';
	@override String get custom => 'Własne';
	@override String get inbound => 'Przychodzące';
	@override String get outbound => 'Wychodzące';
	@override String get destination => 'Cel';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Połącz';
	@override String get disconnect => 'Rozłącz';
	@override String get reconnect => 'Połącz ponownie';
	@override String get connected => 'Połączono';
	@override String get disconnected => 'Rozłączono';
	@override String get connecting => 'Łączenie';
	@override String get connectTimeout => 'Limit czasu połączenia';
	@override String get timeout => 'Limit czasu';
	@override String get timeoutDuration => 'Czas trwania limitu';
	@override String get runDuration => 'Czas działania';
	@override String get latency => 'Opóźnienie';
	@override String get latencyTest => 'Sprawdzanie opóźnienia';
	@override String get language => 'Język';
	@override String get next => 'Dalej';
	@override String get done => 'Gotowe';
	@override String get apply => 'Zastosuj';
	@override String get refresh => 'Odśwież';
	@override String get retry => 'Spróbować ponownie?';
	@override String get update => 'Aktualizuj';
	@override String get updateInterval => 'Interwał aktualizacji';
	@override String get updateInterval5mTips => 'Minimum: 5m';
	@override String updateFailed({required Object p}) => 'Aktualizacja nie powiodła się:${p}';
	@override String get samplingUnit => 'Jednostka czasu próbkowania';
	@override String get queryResultCount => 'Liczba wyników zapytania';
	@override String queryLimit({required Object p}) => 'Wyświetl do ${p} danych';
	@override String get none => 'Brak';
	@override String get start => 'Start';
	@override String get pause => 'Pauza';
	@override String get reset => 'Reset';
	@override String get submit => 'Wyślij';
	@override String get user => 'Użytkownik';
	@override String get account => 'Konto';
	@override String get password => 'Hasło';
	@override String get required => 'Wymagane';
	@override String get type => 'Typ';
	@override String get path => 'Ścieżka';
	@override String get local => 'Lokalne';
	@override String get remote => 'Zdalne';
	@override String get other => 'Inne';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'Nieprawidłowy URL';
	@override String get urlCannotEmpty => 'Link nie może być pusty';
	@override String get urlTooLong => 'Adres URL jest za długi (>8182)';
	@override String get copyUrl => 'Kopiuj link';
	@override String get openUrl => 'Otwórz link';
	@override String get shareUrl => 'Udostępnij link';
	@override String get speedTestUrl => 'Adres URL testu prędkości';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'Statyczne IP';
	@override String get staticIPTips => 'Musisz włączyć [TUN HijackDNS] lub [${_root.SettingsScreen.inboundDomainResolve}].';
	@override String get isp => 'Dostawca VPN';
	@override String get domainSuffix => 'Sufiks domeny';
	@override String get domain => 'Domena';
	@override String get domainKeyword => 'Słowo kluczowe domeny';
	@override String get domainRegex => 'Regex domeny';
	@override String get ip => 'IP';
	@override String get port => 'Port';
	@override String get portRange => 'Zakres portów';
	@override String get appPackage => 'Id pakietu aplikacji';
	@override String get processName => 'Nazwa procesu';
	@override String get processPath => 'Ścieżka procesu';
	@override String get processDir => 'Katalog procesu';
	@override String get systemProxy => 'Proxy systemowe';
	@override String get percentage => 'Procent';
	@override String get statistics => 'Statystyka';
	@override String get statisticsAndAnalysis => 'Statystyka i analiza';
	@override String get statisticsDataDesensitize => 'Desensytyzacja danych';
	@override String get statisticsDataDesensitizeTips => 'Nazwa procesu/id pakietu/docelowa nazwa domeny/docelowe IP itp. zostaną zastąpione przez * i zapisane po desensytyzacji';
	@override String get records => 'Rekordy';
	@override String get requestRecords => 'Rekordy żądań';
	@override String get netInterfaces => 'Interfejsy sieciowe';
	@override String get netSpeed => 'Prędkość';
	@override String get memoryTrendChart => 'Wykres trendu pamięci';
	@override String get goroutinesTrendChart => 'Wykres trendu GoRoutines';
	@override String get trafficTrendChart => 'Wykres trendu ruchu';
	@override String get trafficDistributionChart => 'Wykres rozkładu ruchu';
	@override String get connectionChart => 'Wykres trendu połączeń';
	@override String get memoryChart => 'Wykres trendu pamięci';
	@override String get trafficStatistics => 'Statystyki ruchu';
	@override String get traffic => 'Ruch';
	@override String get trafficTotal => 'Ruch całkowity';
	@override String get trafficProxy => 'Ruch przez proxy';
	@override String get trafficDirect => 'Ruch bezpośredni';
	@override String get website => 'Strona internetowa';
	@override String get memory => 'Pamięć';
	@override String get outboundMode => 'Tryb wychodzący';
	@override String get rule => 'Reguła';
	@override String get global => 'Globalne';
	@override String get qrcode => 'Kod QR';
	@override String get qrcodeTooLong => 'Tekst jest za długi, aby go wyświetlić';
	@override String get qrcodeShare => 'Udostępnij kod QR';
	@override String get textToQrcode => 'Tekst na kod QR';
	@override String get qrcodeScan => 'Skanuj kod QR';
	@override String get qrcodeScanResult => 'Wynik skanowania';
	@override String get qrcodeScanFromImage => 'Skanuj z obrazu';
	@override String get qrcodeScanResultFailed => 'Nie udało się przeanalizować obrazu, upewnij się, że zrzut ekranu jest prawidłowym kodem QR';
	@override String get qrcodeScanResultEmpty => 'Wynik skanowania jest pusty';
	@override String get screenshot => 'Zrzut ekranu';
	@override String get backupAndSync => 'Kopia zapasowa i synchronizacja';
	@override String get autoBackup => 'Automatyczna kopia zapasowa';
	@override String get noProfileGotAutoBackup => 'Jeśli dane takie jak [${_root.meta.myProfiles}] zostaną utracone, możesz je przywrócić z [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] lub innych źródeł kopii zapasowych (takich jak iCloud lub Webdav itp.)';
	@override String get autoBackupAddProfile => 'Po dodaniu profilu';
	@override String get autoBackupRemoveProfile => 'Po usunięciu profilu';
	@override String get profile => 'Profil';
	@override String get currentProfile => 'Bieżący profil';
	@override String get importAndExport => 'Import i eksport';
	@override String get import => 'Importuj';
	@override String get importFromUrl => 'Importuj z adresu URL';
	@override String get export => 'Eksportuj';
	@override String get send => 'Wyślij';
	@override String get receive => 'Odbierz';
	@override String get sendConfirm => 'Potwierdzić wysłanie?';
	@override String get termOfUse => 'Warunki świadczenia usług';
	@override String get privacyPolicy => 'Prywatność i polityka';
	@override String get about => 'O aplikacji';
	@override String get name => 'Nazwa';
	@override String get version => 'Wersja';
	@override String get notice => 'Ogłoszenie';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Akcja:${p}\nPowód:${p1}';
	@override String get sort => 'Zmień kolejność';
	@override String get novice => 'Tryb nowicjusza';
	@override String get willCompleteAfterRebootInstall => 'Uruchom ponownie urządzenie, aby zakończyć instalację rozszerzenia systemowego';
	@override String get willCompleteAfterRebootUninstall => 'Uruchom ponownie urządzenie, aby zakończyć odinstalowywanie rozszerzenia systemowego';
	@override String get requestNeedsUserApproval => '1. Zezwól aplikacji Karing na instalowanie rozszerzeń systemowych w [Ustawienia systemowe]-[Prywatność i bezpieczeństwo]\n2. W [Ustawienia systemowe]-[Ogólne]-[Elementy logowania Rozszerzenia]-[Rozszerzenie sieciowe] włącz [karingServiceSE]\npołącz ponownie po zakończeniu';
	@override String get FullDiskAccessPermissionRequired => 'Włącz uprawnienie [karingServiceSE] w [Ustawienia systemowe]-[Prywatność i bezpieczeństwo]-[Pełny dostęp do dysku] i połącz ponownie';
	@override String get tvMode => 'Tryb TV';
	@override String get recommended => 'Polecane';
	@override String innerError({required Object p}) => 'Błąd wewnętrzny:${p}';
	@override String get logicOperation => 'Operacja logiczna';
	@override String get share => 'Udostępnij';
	@override String get candidateWord => 'Słowa kandydackie';
	@override String get keywordOrRegx => 'Słowa kluczowe/Reguła';
	@override String get importFromClipboard => 'Importuj ze schowka';
	@override String get exportToClipboard => 'Eksportuj do schowka';
	@override String get server => 'Serwer';
	@override String get ads => 'Reklamy';
	@override String get adsRemove => 'Usuń reklamy';
	@override String get donate => 'Przekaż darowiznę';
	@override String get diversion => 'Przekierowanie';
	@override String get diversionRules => 'Reguły przekierowania';
	@override String get diversionCustomGroup => 'Własna grupa przekierowania';
	@override String get urlTestCustomGroup => 'Własny automatyczny wybór';
	@override String get setting => 'Ustawienia';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Synchronizacja LAN';
	@override String get lanSyncNotQuitTips => 'Nie opuszczaj tego interfejsu przed zakończeniem synchronizacji';
	@override String get deviceNoSpace => 'Brak miejsca na dysku';
	@override String get hideSystemApp => 'Ukryj aplikacje systemowe';
	@override String get hideAppIcon => 'Ukryj ikony aplikacji';
	@override String get hideDockIcon => 'Ukryj ikonę Dock';
	@override String get remark => 'Uwaga';
	@override String get remarkExist => 'Uwaga już istnieje, użyj innej nazwy';
	@override String get remarkCannotEmpty => 'Uwagi nie mogą być puste';
	@override String get remarkTooLong => 'Uwagi do 32 znaków';
	@override String get openDir => 'Otwórz katalog plików';
	@override String get fileChoose => 'Wybierz plik';
	@override String get filePathCannotEmpty => 'Ścieżka pliku nie może być pusta';
	@override String fileNotExist({required Object p}) => 'Plik nie istnieje:${p}';
	@override String fileTypeInvalid({required Object p}) => 'Nieprawidłowy typ pliku:${p}';
	@override String get uwpExemption => 'Wyłączenia z izolacji sieciowej UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Pobierz profil';
	@override String get addProfile => 'Dodaj profil';
	@override String get myProfiles => 'Moje profile';
	@override String get profileEdit => 'Edycja profilu';
	@override String get profileEditUrlExist => 'Adres URL już istnieje, użyj innego adresu';
	@override String get profileEditReloadAfterProfileUpdate => 'Przeładuj po aktualizacji profilu';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Uruchom testy opóźnienia po automatycznej aktualizacji profilu';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN musi być połączony, a opcja [Przeładuj po aktualizacji profilu] musi być włączona';
	@override String get profileEditTestLatencyAutoRemove => 'Automatycznie usuwaj serwery, które nie przejdą testów opóźnienia';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Próbuj do 3 razy';
	@override String get profileImport => 'Importuj plik profilu';
	@override String get profileAddUrlOrContent => 'Dodaj link do profilu';
	@override String get profileExists => 'Profil już istnieje, nie dodawaj go wielokrotnie';
	@override String get profileUrlOrContent => 'Link/Zawartość profilu';
	@override String get profileUrlOrContentHit => 'Link/Zawartość profilu [Wymagane] (Obsługuje linki do profili Clash, V2ray (obsługiwane seryjnie), Stash, Karing, Sing-box, Shadowsocks, Sub)';
	@override String get profileUrlOrContentCannotEmpty => 'Link do profilu nie może być pusty';
	@override String profileAddFailedFormatException({required Object p}) => 'Format jest błędny, popraw go i spróbuj dodać ponownie:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Dodawanie nie powiodło się: ${p}, spróbuj zmienić [UserAgent] i spróbuj ponownie, lub użyj wbudowanej przeglądarki urządzenia, aby otworzyć link konfiguracyjny i zaimportuj plik konfiguracyjny pobrany przez przeglądarkę do tej aplikacji';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Dodawanie nie powiodło się: ${p}, włącz proxy lub zmień bieżący węzeł proxy i spróbuj ponownie';
	@override String get profileAddParseFailed => 'Parsowanie profilu nie powiodło się';
	@override String get profileAddNoServerAvaliable => 'Brak dostępnych serwerów. Upewnij się, że link do profilu lub plik profilu jest prawidłowy; jeśli profil pochodzi z GitHub, pobierz link za pomocą przycisku [Raw] na stronie';
	@override String get profileAddWrapSuccess => 'Profil został pomyślnie wygenerowany, przejdź do [${_root.meta.myProfiles}], aby go wyświetlić';
}

// Path: isp
class _TranslationsIspPl implements TranslationsIspEn {
	_TranslationsIspPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Powiąż z [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'Odwiąż[${p}]';
	@override String faq({required Object p}) => 'FAQ[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'Śledź[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] Nieprawidłowy lub wygasły';
}

// Path: permission
class _TranslationsPermissionPl implements TranslationsPermissionEn {
	_TranslationsPermissionPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Aparat';
	@override String get screen => 'Nagrywanie ekranu';
	@override String get appQuery => 'Pobierz listę aplikacji';
	@override String request({required Object p}) => 'Włącz uprawnienie [${p}]';
	@override String requestNeed({required Object p}) => 'Włącz uprawnienie [${p}]';
}

// Path: tls
class _TranslationsTlsPl implements TranslationsTlsEn {
	_TranslationsTlsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Pomiń weryfikację certyfikatu';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Włącz fragmentację TLS';
	@override String get fragmentSize => 'Rozmiar fragmentu TLS';
	@override String get fragmentSleep => 'Pauza fragmentacji TLS';
	@override String get mixedCaseSNIEnable => 'Włącz TLS Mixed SNI';
	@override String get paddingEnable => 'Włącz TLS Padding';
	@override String get paddingSize => 'Rozmiar TLS Padding';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModePl implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Aktualnie wybrany';
	@override String get urltest => 'Automatyczny wybór';
	@override String get direct => 'Bezpośrednio';
	@override String get block => 'Blokuj';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModePl implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyPl implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonPl implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Aktualizacja profilu';
}

// Path: theme
class _TranslationsThemePl implements TranslationsThemeEn {
	_TranslationsThemePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get light => 'Jasny';
	@override String get dark => 'Ciemny';
	@override String get auto => 'Automatyczny';
}

// Path: main.tray
class _TranslationsMainTrayPl implements TranslationsMainTrayEn {
	_TranslationsMainTrayPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Otwórz';
	@override String get menuExit => 'Wyjście';
}

/// The flat map containing all translations for locale <pl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Źródło instalacji',
			'AboutScreen.installTime' => 'Czas instalacji',
			'AboutScreen.versionChannel' => 'Kanał automatycznych aktualizacji',
			'AboutScreen.updateWhenConnected' => 'Sprawdź dostępność aktualizacji po połączeniu',
			'AboutScreen.autoDownloadPkg' => 'Automatycznie pobieraj pakiety aktualizacji',
			'AboutScreen.disableAppImproveData' => 'Dane o ulepszaniu aplikacji',
			'AboutScreen.disableUAReportTip' => 'Włączenie [${_root.AboutScreen.disableAppImproveData}] pomaga nam poprawić stabilność i użyteczność produktu; nie zbieramy żadnych osobistych danych dotyczących prywatności. Wyłączenie tej opcji uniemożliwi aplikacji zbieranie jakichkolwiek danych.',
			'AboutScreen.devOptions' => 'Opcje programistyczne',
			'AboutScreen.enableDebugLog' => 'Włącz dziennik debugowania',
			'AboutScreen.viewFilsContent' => 'Wyświetl pliki',
			'AboutScreen.enablePprof' => 'Włącz pprof',
			'AboutScreen.pprofPanel' => 'Panel pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'Zezwalaj na zdalny dostęp do ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Zezwalaj na zdalny dostęp do ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Użyj oryginalnego profilu sing-box',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'Adres URL serwera',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Nie może być puste',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Logowanie nie powiodło się:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Nie udało się pobrać listy plików:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'Nieprawidłowa [Domena]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'Nieprawidłowy [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Nieprawidłowe [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'Nieprawidłowy [Zestaw reguł]:${p}, Adres URL musi być prawidłowym adresem https i plikiem binarnym z rozszerzeniem .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'Nieprawidłowy [Zestaw reguł (wbudowany)]:${p}, Format to geosite:xxx lub geoip:xxx lub acl:xxx, gdzie xxx powinno być prawidłową nazwą reguły',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'Nieprawidłowy [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Wskazówka: Po zapisaniu przejdź do [${_root.meta.diversionRules}], aby ustawić odpowiednie reguły, w przeciwnym razie nie zaczną obowiązywać',
			'DiversionRuleDetectScreen.title' => 'Wykrywanie reguł przekierowania',
			'DiversionRuleDetectScreen.rule' => 'Reguła:',
			'DiversionRuleDetectScreen.outbound' => 'Serwer proxy:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Wskazówka: Spróbuj dopasować reguły od góry do dołu. Jeśli żadna reguła nie pasuje, użyj [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP nie może być pusty',
			'DnsSettingsScreen.urlCanNotEmpty' => 'Adres URL nie może być pusty',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Nieobsługiwany typ:${p}',
			'DnsSettingsScreen.dnsDesc' => 'Pierwsza kolumna danych o opóźnieniu to opóźnienie zapytania o połączenie bezpośrednie;\nDruga kolumna: Włącz [[Ruch proxy]Rozwiązywanie DNS przez serwer proxy]: dane o opóźnieniu to opóźnienie zapytania przekazywane przez bieżący serwer proxy; jeśli [[Ruch proxy]Rozwiązywanie DNS przez serwer proxy] jest wyłączone: Dane o opóźnieniu to opóźnienie zapytania o połączenie bezpośrednie',
			'FileContentViewerScreen.title' => 'Przeglądarka zawartości plików',
			'FileContentViewerScreen.clearFileContent' => 'Czy na pewno chcesz wyczyścić zawartość pliku?',
			'FileContentViewerScreen.clearFileContentTips' => 'Czy na pewno chcesz wyczyścić zawartość pliku profilu? Wyczyszczenie pliku profilu może spowodować utratę danych lub nieprawidłowe działanie aplikacji, prosimy o ostrożność',
			'HomeScreen.toSelectServer' => 'Wybierz serwer',
			'HomeScreen.invalidServer' => 'jest nieprawidłowy, wybierz ponownie',
			'HomeScreen.disabledServer' => 'jest wyłączony, wybierz ponownie',
			'HomeScreen.expiredServer' => 'Brak dostępnych serwerów, profile mogą być wygasłe lub wyłączone',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'Skonfiguruj [Skrót] przed użyciem',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Zbyt wiele serwerów proxy [${p}>${p1}], połączenie może się nie udać z powodu ograniczeń pamięci systemowej',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Zbyt wiele serwerów proxy [${p}>${p1}] może spowodować powolne lub niedostępne połączenia',
			'LaunchFailedScreen.invalidProcess' => 'Aplikacja nie została uruchomiona [Nieprawidłowa nazwa procesu], zainstaluj aplikację ponownie w osobnym katalogu',
			'LaunchFailedScreen.invalidProfile' => 'Aplikacja nie została uruchomiona [Nie udało się uzyskać dostępu do profilu], zainstaluj aplikację ponownie',
			'LaunchFailedScreen.invalidVersion' => 'Aplikacja nie została uruchomiona [Nieprawidłowa wersja], zainstaluj aplikację ponownie',
			'LaunchFailedScreen.systemVersionLow' => 'Aplikacja nie została uruchomiona [zbyt niska wersja systemu]',
			'LaunchFailedScreen.invalidInstallPath' => 'Ścieżka instalacji jest nieprawidłowa, zainstaluj ją ponownie w prawidłowej ścieżce',
			'MyProfilesMergeScreen.profilesMerge' => 'Scalanie profili',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Profil docelowy',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Profile źródłowe',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Wskazówka: Przekierowanie profili źródłowych zostanie odrzucone',
			'NetCheckScreen.title' => 'Sprawdzanie sieci',
			'NetCheckScreen.warn' => 'Uwaga: Ze względu na wpływ środowiska sieciowego i reguł przekierowania, wyniki testów nie są całkowicie równoważne wynikom rzeczywistym.',
			'NetCheckScreen.invalidDomain' => 'Nieprawidłowa nazwa domeny',
			'NetCheckScreen.connectivity' => 'Łączność sieciowa',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Test połączenia Ipv4 [${p}] - wszystkie nieudane',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Połączenie Ipv4 powiodło się',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Test połączenia Ipv6 [${p}] - wszystkie nieudane, Twoja sieć może nie obsługiwać ipv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Połączenie Ipv6 powiodło się',
			'NetCheckScreen.connectivityTestOk' => 'Sieć jest połączona z Internetem',
			'NetCheckScreen.connectivityTestFailed' => 'Sieć nie jest jeszcze połączona z Internetem',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Wszystkie pobrane pomyślnie',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Pobieranie lub pobieranie nie powiodło się',
			'NetCheckScreen.outbound' => 'Serwer proxy',
			'NetCheckScreen.outboundOk' => ({required Object p}) => 'Połączenie [${p}] powiodło się',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => 'Połączenie [${p1}] nie powiodło się\nBłąd:[${p2}]',
			'NetCheckScreen.dnsServer' => 'Serwer DNS',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Zapytanie DNS [${p1}] powiodło się\nReguła DNS:[${p2}]\nOpóźnienie:[${p3} ms]\nAdres:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => 'Zapytanie DNS [${p1}] powiodło się\n nReguła DNS:[${p2}]\nBłąd:[${p3}]',
			'NetCheckScreen.host' => 'Połączenie HTTP',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nRegułaPrzekierowania:[${p2}]\nSerwer proxy:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'połączenie powiodło się',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'połączenie nie powiodło się:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Domena/IP',
			'NetConnectionsFilterScreen.app' => 'Aplikacja',
			'NetConnectionsFilterScreen.rule' => 'Reguła',
			'NetConnectionsFilterScreen.chain' => 'Wychodzące',
			'NetConnectionsScreen.copyAsCSV' => 'Skopiowano do formatu CSV',
			'NetConnectionsScreen.selectType' => 'Wybierz typ przekierowania',
			'PerAppAndroidScreen.title' => 'Proxy dla poszczególnych aplikacji',
			'PerAppAndroidScreen.whiteListMode' => 'Tryb białej listy',
			'PerAppAndroidScreen.whiteListModeTip' => 'Gdy włączone: tylko zaznaczone aplikacje używają proxy; gdy wyłączone: tylko niezaznaczone aplikacje używają proxy',
			'RegionSettingsScreen.title' => 'Kraj lub region',
			'RegionSettingsScreen.Regions' => 'Wskazówka: Ustaw prawidłowo swój aktualny kraj lub region, w przeciwnym razie może to spowodować problemy z przekierowaniem sieci',
			'ServerSelectScreen.title' => 'Wybierz serwer',
			'ServerSelectScreen.autoSelectServer' => 'Automatycznie wybierz serwer o najniższym opóźnieniu',
			'ServerSelectScreen.recentUse' => 'Ostatnio używane',
			'ServerSelectScreen.myFav' => 'Moje ulubione',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Wybrany serwer jest adresem lokalnym i może nie działać prawidłowo:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Wybrany serwer jest adresem IPv6 i wymaga [Włącz IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Ten serwer został wyłączony',
			'ServerSelectScreen.error404' => 'Wykrywanie opóźnienia napotkało błąd, sprawdź, czy istnieje konfiguracja o tej samej zawartości',
			'SettingsScreen.getTranffic' => 'Pobierz ruch',
			'SettingsScreen.tutorial' => 'Samouczek',
			'SettingsScreen.commonlyUsedRulesets' => 'Często używane zestawy reguł',
			'SettingsScreen.htmlBoard' => 'Panel online',
			'SettingsScreen.dnsLeakDetection' => 'Wykrywanie wycieków DNS',
			'SettingsScreen.proxyLeakDetection' => 'Wykrywanie wycieków proxy',
			'SettingsScreen.speedTest' => 'Test prędkości',
			'SettingsScreen.rulesetDirectDownlad' => 'Bezpośrednie pobieranie zestawu reguł',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Ukryj nieużywane reguły przekierowania',
			'SettingsScreen.disableISPDiversionGroup' => 'Wyłącz [${_root.meta.diversionRules}] dla [${_root.meta.isp}]',
			'SettingsScreen.portSettingRule' => 'Oparte na regułach',
			'SettingsScreen.portSettingDirectAll' => 'Wszystko bezpośrednio',
			'SettingsScreen.portSettingProxyAll' => 'Wszystko przez proxy',
			'SettingsScreen.portSettingControl' => 'Kontrola i synchronizacja',
			'SettingsScreen.portSettingCluster' => 'Usługa klastra',
			'SettingsScreen.modifyPort' => 'Zmień port',
			'SettingsScreen.modifyPortOccupied' => 'Port jest zajęty, użyj innego portu',
			'SettingsScreen.ipStrategyTips' => 'Przed włączeniem upewnij się, że Twoja sieć obsługuje IPv6, w przeciwnym razie dostęp do części ruchu może być utrudniony.',
			'SettingsScreen.tunAppendHttpProxy' => 'Dołącz proxy HTTP do VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Niektóre aplikacje będą omijać wirtualne urządzenie sieciowe i łączyć się bezpośrednio z proxy HTTP',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Domeny uprawnione do omijania proxy HTTP',
			'SettingsScreen.dnsEnableRule' => 'Włącz reguły przekierowania DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => 'Kanał rozwiązywania dla [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsEnableClientSubnet' => 'Włącz ECS dla [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTestDomain' => 'Domena testowa',
			'SettingsScreen.dnsTestDomainInvalid' => 'Nieprawidłowa domena',
			'SettingsScreen.dnsTypeOutbound' => 'Serwer proxy',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'Serwer DNS',
			'SettingsScreen.dnsEnableRuleTips' => 'Po włączeniu nazwa domeny wybierze odpowiedni serwer DNS do rozwiązania zgodnie z regułami przekierowania',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Po włączeniu FakeIP, jeśli rozłączysz się z VPN, aplikacja może wymagać ponownego uruchomienia; ta funkcja wymaga włączenia [Trybu TUN]',
			'SettingsScreen.dnsTypeOutboundTips' => 'Rozwiązywanie nazw domen dla [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Rozwiązywanie nazw domen dla [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Rozwiązywanie nazw domen dla [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Rozwiązywanie nazw domen dla [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Automatyczna konfiguracja serwera',
			'SettingsScreen.dnsResetServer' => 'Resetuj serwer',
			'SettingsScreen.inboundDomainResolve' => 'Rozwiązywanie przychodzących nazw domen',
			'SettingsScreen.privateDirect' => 'Bezpośrednie połączenie z siecią prywatną',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Niektóre nazwy domen, które nie są skonfigurowane z regułami przekierowania, muszą zostać rozwiązane przed dopasowaniem do reguł przekierowania opartych na IP; ta funkcja wpływa na przychodzące żądania do portu proxy [${p}]',
			'SettingsScreen.useRomoteRes' => 'Użyj zasobów zdalnych',
			'SettingsScreen.autoAppendRegion' => 'Automatycznie dołączaj podstawowe reguły',
			'SettingsScreen.autoSelect' => 'Automatyczny wybór',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Ignoruj serwery proxy [Front/Chain]',
			'SettingsScreen.autoSelectServerInterval' => 'Interwał sprawdzania opóźnienia',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Bieżący interwał sprawdzania stanu serwera',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Sprawdź ponownie opóźnienie przy zmianie sieci',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Aktualizuj bieżący serwer po ręcznym sprawdzeniu opóźnienia',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Im krótszy interwał czasu, tym szybciej aktualizowane są dane o opóźnieniu serwera, co zajmie więcej zasobów i zużyje więcej energii',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Jeśli sprawdzenie się nie powiedzie, serwer zostanie przełączony; jeśli podczas przełączania serwera nie zostanie znaleziony żaden dostępny serwer, grupa ponownie sprawdzi opóźnienie',
			'SettingsScreen.autoSelectServerFavFirst' => 'Pierwszeństwo dla [Moich ulubionych]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Jeśli lista [Moje ulubione] nie jest pusta, użyj serwerów z [Moich ulubionych]',
			'SettingsScreen.autoSelectServerFilter' => 'Filtruj nieprawidłowe serwery',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Serwery, których sprawdzanie opóźnienia się nie powiedzie, zostaną odfiltrowane; jeśli po przefiltrowaniu żaden serwer nie będzie dostępny, zostaną użyte pierwsze [${p}] serwery',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Maksymalna liczba serwerów',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Serwery przekraczające tę liczbę zostaną odfiltrowane',
			'SettingsScreen.numInvalid' => 'Nieprawidłowy numer',
			'SettingsScreen.hideInvalidServer' => 'Ukryj nieprawidłowe serwery',
			'SettingsScreen.sortServer' => 'Sortowanie serwerów',
			'SettingsScreen.sortServerTips' => 'Sortuj według opóźnienia od najniższego do najwyższego',
			'SettingsScreen.selectServerHideRecommand' => 'Ukryj [Polecane]',
			'SettingsScreen.selectServerHideRecent' => 'Ukryj [Ostatnio używane]',
			'SettingsScreen.selectServerHideFav' => 'Ukryj [Moje ulubione]',
			'SettingsScreen.homeScreen' => 'Ekran główny',
			'SettingsScreen.theme' => 'Motyw',
			'SettingsScreen.widgetsAlpha' => 'Przezroczystość widżetów',
			'SettingsScreen.widgetsEmpty' => 'Brak dostępnych widżetów',
			'SettingsScreen.backgroundImage' => 'Obraz tła',
			'SettingsScreen.myLink' => 'Skrót',
			'SettingsScreen.autoConnectAfterLaunch' => 'Automatyczne połączenie po uruchomieniu',
			'SettingsScreen.autoConnectAtBoot' => 'Automatyczne połączenie po starcie systemu',
			'SettingsScreen.autoConnectAtBootTips' => 'Wymagana jest obsługa systemu; niektóre systemy mogą również wymagać włączenia [autostartu].',
			'SettingsScreen.hideAfterLaunch' => 'Ukryj okno po uruchomieniu',
			'SettingsScreen.autoSetSystemProxy' => 'Automatycznie ustaw proxy systemowe po połączeniu',
			'SettingsScreen.bypassSystemProxy' => 'Nazwy domen uprawnione do omijania proxy systemowego',
			'SettingsScreen.disconnectWhenQuit' => 'Rozłącz przy wyjściu z aplikacji',
			'SettingsScreen.autoAddToFirewall' => 'Automatycznie dodawaj reguły zapory',
			'SettingsScreen.excludeFromRecent' => 'Ukryj z [Ostatnich zadań]',
			'SettingsScreen.wakeLock' => 'Blokada uśpienia',
			'SettingsScreen.hideVpn' => 'Ukryj ikonę VPN',
			'SettingsScreen.hideVpnTips' => 'Włączenie IPv6 spowoduje, że ta funkcja nie będzie działać',
			'SettingsScreen.allowBypass' => 'Zezwalaj aplikacjom na omijanie VPN',
			'SettingsScreen.importSuccess' => 'Import zakończony pomyślnie',
			'SettingsScreen.rewriteConfirm' => 'Ten plik nadpisze istniejącą konfigurację lokalną. Czy chcesz kontynuować?',
			'SettingsScreen.mergePerapp' => 'Scal lokalne listy [${_root.PerAppAndroidScreen.title}]',
			'SettingsScreen.networkShare' => 'Udostępnianie sieciowe',
			'SettingsScreen.frontProxy' => 'Proxy Front/Chain',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Dane->Serwer proxy Front/Chain [Wiele serwerów proxy: od góry do dołu]->Serwer proxy [${p}]->Serwer docelowy',
			'SettingsScreen.allowOtherHostsConnect' => 'Zezwalaj innym na łączenie się',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Ze względu na ograniczenia systemowe, po włączeniu tej opcji aplikacje na tym urządzeniu używające http do dostępu do sieci mogą nie być w stanie prawidłowo połączyć się z siecią.',
			'SettingsScreen.tunAutoRoute' => 'Automatyczna trasa',
			'SettingsScreen.tunAutoRedirect' => 'Automatyczne przekierowanie',
			'SettingsScreen.tunStrictRoute' => 'Strict Route',
			'SettingsScreen.tunStrictRouteTips' => 'Jeśli po włączeniu udostępniania inni nie mogą uzyskać dostępu do tego urządzenia, spróbuj wyłączyć ten przełącznik',
			'SettingsScreen.loopbackAddress' => 'Adres zwrotny',
			'SettingsScreen.enableCluster' => 'Włącz klaster proxy Socks/Http',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Zezwalaj innym na łączenie się z klastrem',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Uwierzytelnianie klastra proxy',
			'SettingsScreen.tunMode' => 'Tryb TUN',
			'SettingsScreen.tuni4Address' => 'Adres IP',
			'SettingsScreen.tunModeTips' => 'Tryb TUN przejmie cały ruch systemowy [W tym trybie można pozostawić proxy systemowe wyłączone]',
			'SettingsScreen.tunModeRunAsAdmin' => 'Tryb TUN wymaga uprawnień administratora systemu, uruchom aplikację ponownie jako administrator',
			'SettingsScreen.tunStack' => 'Stos',
			'SettingsScreen.tunHijackTips' => 'Po zamknięciu żądania DNS z TUN będą przekazywane bezpośrednio do odpowiedniego serwera DNS',
			'SettingsScreen.launchAtStartup' => 'Uruchamiaj przy starcie',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Zamknij aplikację przy przełączaniu użytkowników systemu',
			'SettingsScreen.handleScheme' => 'Wywołanie schematu systemowego',
			'SettingsScreen.portableMode' => 'Tryb przenośny',
			'SettingsScreen.portableModeDisableTips' => 'Jeśli chcesz wyjść z trybu przenośnego, wyjdź z [karing] i ręcznie usuń folder [profiles] w tym samym katalogu co [karing.exe]',
			'SettingsScreen.accessibility' => 'Dostępność',
			'SettingsScreen.handleKaringScheme' => 'Obsługuj wywołanie karing://',
			'SettingsScreen.handleClashScheme' => 'Obsługuj wywołanie clash://',
			'SettingsScreen.handleSingboxScheme' => 'Obsługuj wywołanie sing-box://',
			'SettingsScreen.alwayOnVPN' => 'Połączenie zawsze aktywne',
			'SettingsScreen.disconnectAfterSleep' => 'Rozłącz po uśpieniu systemu',
			'SettingsScreen.removeSystemVPNConfig' => 'Usuń konfigurację VPN systemu',
			'SettingsScreen.timeConnectOrDisconnect' => 'Zaplanowane połączenie/rozłączenie',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN musi być połączony, aby to zadziałało; po włączeniu [Automatyczne uśpienie] zostanie wyłączone',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'Interwał połączenia/rozłączenia nie może być krótszy niż ${p} minut',
			'SettingsScreen.disableFontScaler' => 'Wyłącz skalowanie czcionek (wymaga ponownego uruchomienia)',
			'SettingsScreen.autoOrientation' => 'Obracaj wraz z ekranem',
			'SettingsScreen.restartTakesEffect' => 'Wymaga ponownego uruchomienia',
			'SettingsScreen.reconnectTakesEffect' => 'Wymaga ponownego połączenia',
			'SettingsScreen.resetSettings' => 'Resetuj ustawienia',
			'SettingsScreen.cleanCache' => 'Wyczyść pamięć podręczną',
			'SettingsScreen.cleanCacheDone' => 'Czyszczenie zakończone',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Aktualizuj wersję ${p}',
			'SettingsScreen.follow' => 'Śledź nas',
			'SettingsScreen.contactUs' => 'Skontaktuj się z nami',
			'SettingsScreen.supportUs' => 'Wesprzyj nas',
			'SettingsScreen.rateInApp' => 'Oceń nas',
			'SettingsScreen.rateInAppStore' => 'Oceń nas w AppStore',
			'UserAgreementScreen.privacyFirst' => 'Twoja prywatność jest najważniejsza',
			'UserAgreementScreen.agreeAndContinue' => 'Zaakceptuj i kontynuuj',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'Nowa wersja [${p}] jest gotowa',
			'VersionUpdateScreen.update' => 'Uruchom ponownie, aby zaktualizować',
			'VersionUpdateScreen.cancel' => 'Nie teraz',
			'CommonWidget.diableAlwayOnVPN' => 'Jeśli [Zawsze włączony VPN] jest włączony, wyłącz go i spróbuj połączyć się ponownie',
			'CommonWidget.resetPort' => 'Zmień port na inny dostępny lub zamknij aplikację zajmującą port.',
			'main.tray.menuOpen' => 'Otwórz',
			'main.tray.menuExit' => 'Wyjście',
			'meta.enable' => 'Włącz',
			'meta.disable' => 'Wyłącz',
			'meta.bydefault' => 'Domyślne',
			'meta.filter' => 'Filtruj',
			'meta.filterMethod' => 'Metoda filtrowania',
			'meta.include' => 'Uwzględnij',
			'meta.exclude' => 'Wyklucz',
			'meta.all' => 'Wszystkie',
			'meta.prefer' => 'Preferuj',
			'meta.only' => 'Tylko',
			'meta.open' => 'Otwórz',
			'meta.close' => 'Zamknij',
			'meta.quit' => 'Wyjdź',
			'meta.add' => 'Dodaj',
			'meta.addSuccess' => 'Dodano pomyślnie',
			'meta.addFailed' => ({required Object p}) => 'Dodawanie nie powiodło się:${p}',
			'meta.remove' => 'Usuń',
			'meta.removeConfirm' => 'Czy na pewno chcesz usunąć?',
			'meta.edit' => 'Edytuj',
			'meta.view' => 'Widok',
			'meta.more' => 'Więcej',
			'meta.tips' => 'Info',
			'meta.copy' => 'Kopiuj',
			'meta.paste' => 'Pasta',
			'meta.cut' => 'Cięcie',
			'meta.save' => 'Zapisz',
			'meta.ok' => 'Ok',
			'meta.cancel' => 'Anuluj',
			'meta.feedback' => 'Opinia',
			'meta.feedbackContent' => 'Treść opinii',
			'meta.feedbackContentHit' => 'Wymagane, do 500 znaków',
			'meta.feedbackContentCannotEmpty' => 'Treść opinii nie może być pusta',
			'meta.faq' => 'FAQ',
			'meta.htmlTools' => 'Zestaw narzędzi HTML',
			'meta.download' => 'Pobierz',
			'meta.upload' => 'Prześlij',
			'meta.downloadSpeed' => 'Prędkość pobierania',
			'meta.uploadSpeed' => 'Prędkość przesyłania',
			'meta.loading' => 'Ładowanie...',
			'meta.convert' => 'Konwertuj',
			'meta.check' => 'Sprawdź',
			'meta.detect' => 'Wykryj',
			'meta.cache' => 'Pamięć podręczna',
			'meta.days' => 'Dni',
			'meta.hours' => 'Godziny',
			'meta.minutes' => 'Minuty',
			'meta.seconds' => 'Sekundy',
			'meta.milliseconds' => 'Milisekundy',
			'meta.tolerance' => 'Tolerancja',
			'meta.dateTimePeriod' => 'Okres czasu',
			'meta.protocol' => 'Protokół',
			'meta.search' => 'Szukaj',
			'meta.custom' => 'Własne',
			'meta.inbound' => 'Przychodzące',
			'meta.outbound' => 'Wychodzące',
			'meta.destination' => 'Cel',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Połącz',
			'meta.disconnect' => 'Rozłącz',
			'meta.reconnect' => 'Połącz ponownie',
			'meta.connected' => 'Połączono',
			'meta.disconnected' => 'Rozłączono',
			'meta.connecting' => 'Łączenie',
			'meta.connectTimeout' => 'Limit czasu połączenia',
			'meta.timeout' => 'Limit czasu',
			'meta.timeoutDuration' => 'Czas trwania limitu',
			'meta.runDuration' => 'Czas działania',
			'meta.latency' => 'Opóźnienie',
			'meta.latencyTest' => 'Sprawdzanie opóźnienia',
			'meta.language' => 'Język',
			'meta.next' => 'Dalej',
			'meta.done' => 'Gotowe',
			'meta.apply' => 'Zastosuj',
			'meta.refresh' => 'Odśwież',
			'meta.retry' => 'Spróbować ponownie?',
			'meta.update' => 'Aktualizuj',
			'meta.updateInterval' => 'Interwał aktualizacji',
			'meta.updateInterval5mTips' => 'Minimum: 5m',
			'meta.updateFailed' => ({required Object p}) => 'Aktualizacja nie powiodła się:${p}',
			'meta.samplingUnit' => 'Jednostka czasu próbkowania',
			'meta.queryResultCount' => 'Liczba wyników zapytania',
			'meta.queryLimit' => ({required Object p}) => 'Wyświetl do ${p} danych',
			'meta.none' => 'Brak',
			'meta.start' => 'Start',
			'meta.pause' => 'Pauza',
			'meta.reset' => 'Reset',
			'meta.submit' => 'Wyślij',
			'meta.user' => 'Użytkownik',
			'meta.account' => 'Konto',
			'meta.password' => 'Hasło',
			'meta.required' => 'Wymagane',
			'meta.type' => 'Typ',
			'meta.path' => 'Ścieżka',
			'meta.local' => 'Lokalne',
			'meta.remote' => 'Zdalne',
			'meta.other' => 'Inne',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'Nieprawidłowy URL',
			'meta.urlCannotEmpty' => 'Link nie może być pusty',
			'meta.urlTooLong' => 'Adres URL jest za długi (>8182)',
			'meta.copyUrl' => 'Kopiuj link',
			'meta.openUrl' => 'Otwórz link',
			'meta.shareUrl' => 'Udostępnij link',
			'meta.speedTestUrl' => 'Adres URL testu prędkości',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'Statyczne IP',
			'meta.staticIPTips' => 'Musisz włączyć [TUN HijackDNS] lub [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'Dostawca VPN',
			'meta.domainSuffix' => 'Sufiks domeny',
			'meta.domain' => 'Domena',
			'meta.domainKeyword' => 'Słowo kluczowe domeny',
			'meta.domainRegex' => 'Regex domeny',
			'meta.ip' => 'IP',
			'meta.port' => 'Port',
			'meta.portRange' => 'Zakres portów',
			'meta.appPackage' => 'Id pakietu aplikacji',
			'meta.processName' => 'Nazwa procesu',
			'meta.processPath' => 'Ścieżka procesu',
			'meta.processDir' => 'Katalog procesu',
			'meta.systemProxy' => 'Proxy systemowe',
			'meta.percentage' => 'Procent',
			'meta.statistics' => 'Statystyka',
			'meta.statisticsAndAnalysis' => 'Statystyka i analiza',
			'meta.statisticsDataDesensitize' => 'Desensytyzacja danych',
			'meta.statisticsDataDesensitizeTips' => 'Nazwa procesu/id pakietu/docelowa nazwa domeny/docelowe IP itp. zostaną zastąpione przez * i zapisane po desensytyzacji',
			'meta.records' => 'Rekordy',
			'meta.requestRecords' => 'Rekordy żądań',
			'meta.netInterfaces' => 'Interfejsy sieciowe',
			'meta.netSpeed' => 'Prędkość',
			'meta.memoryTrendChart' => 'Wykres trendu pamięci',
			'meta.goroutinesTrendChart' => 'Wykres trendu GoRoutines',
			'meta.trafficTrendChart' => 'Wykres trendu ruchu',
			'meta.trafficDistributionChart' => 'Wykres rozkładu ruchu',
			'meta.connectionChart' => 'Wykres trendu połączeń',
			'meta.memoryChart' => 'Wykres trendu pamięci',
			'meta.trafficStatistics' => 'Statystyki ruchu',
			'meta.traffic' => 'Ruch',
			'meta.trafficTotal' => 'Ruch całkowity',
			'meta.trafficProxy' => 'Ruch przez proxy',
			'meta.trafficDirect' => 'Ruch bezpośredni',
			'meta.website' => 'Strona internetowa',
			'meta.memory' => 'Pamięć',
			'meta.outboundMode' => 'Tryb wychodzący',
			'meta.rule' => 'Reguła',
			'meta.global' => 'Globalne',
			'meta.qrcode' => 'Kod QR',
			'meta.qrcodeTooLong' => 'Tekst jest za długi, aby go wyświetlić',
			'meta.qrcodeShare' => 'Udostępnij kod QR',
			'meta.textToQrcode' => 'Tekst na kod QR',
			'meta.qrcodeScan' => 'Skanuj kod QR',
			'meta.qrcodeScanResult' => 'Wynik skanowania',
			'meta.qrcodeScanFromImage' => 'Skanuj z obrazu',
			'meta.qrcodeScanResultFailed' => 'Nie udało się przeanalizować obrazu, upewnij się, że zrzut ekranu jest prawidłowym kodem QR',
			'meta.qrcodeScanResultEmpty' => 'Wynik skanowania jest pusty',
			'meta.screenshot' => 'Zrzut ekranu',
			'meta.backupAndSync' => 'Kopia zapasowa i synchronizacja',
			'meta.autoBackup' => 'Automatyczna kopia zapasowa',
			'meta.noProfileGotAutoBackup' => 'Jeśli dane takie jak [${_root.meta.myProfiles}] zostaną utracone, możesz je przywrócić z [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] lub innych źródeł kopii zapasowych (takich jak iCloud lub Webdav itp.)',
			'meta.autoBackupAddProfile' => 'Po dodaniu profilu',
			'meta.autoBackupRemoveProfile' => 'Po usunięciu profilu',
			'meta.profile' => 'Profil',
			'meta.currentProfile' => 'Bieżący profil',
			'meta.importAndExport' => 'Import i eksport',
			'meta.import' => 'Importuj',
			'meta.importFromUrl' => 'Importuj z adresu URL',
			'meta.export' => 'Eksportuj',
			'meta.send' => 'Wyślij',
			'meta.receive' => 'Odbierz',
			'meta.sendConfirm' => 'Potwierdzić wysłanie?',
			'meta.termOfUse' => 'Warunki świadczenia usług',
			'meta.privacyPolicy' => 'Prywatność i polityka',
			'meta.about' => 'O aplikacji',
			'meta.name' => 'Nazwa',
			'meta.version' => 'Wersja',
			'meta.notice' => 'Ogłoszenie',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Akcja:${p}\nPowód:${p1}',
			'meta.sort' => 'Zmień kolejność',
			'meta.novice' => 'Tryb nowicjusza',
			'meta.willCompleteAfterRebootInstall' => 'Uruchom ponownie urządzenie, aby zakończyć instalację rozszerzenia systemowego',
			'meta.willCompleteAfterRebootUninstall' => 'Uruchom ponownie urządzenie, aby zakończyć odinstalowywanie rozszerzenia systemowego',
			'meta.requestNeedsUserApproval' => '1. Zezwól aplikacji Karing na instalowanie rozszerzeń systemowych w [Ustawienia systemowe]-[Prywatność i bezpieczeństwo]\n2. W [Ustawienia systemowe]-[Ogólne]-[Elementy logowania Rozszerzenia]-[Rozszerzenie sieciowe] włącz [karingServiceSE]\npołącz ponownie po zakończeniu',
			'meta.FullDiskAccessPermissionRequired' => 'Włącz uprawnienie [karingServiceSE] w [Ustawienia systemowe]-[Prywatność i bezpieczeństwo]-[Pełny dostęp do dysku] i połącz ponownie',
			'meta.tvMode' => 'Tryb TV',
			'meta.recommended' => 'Polecane',
			'meta.innerError' => ({required Object p}) => 'Błąd wewnętrzny:${p}',
			'meta.logicOperation' => 'Operacja logiczna',
			'meta.share' => 'Udostępnij',
			'meta.candidateWord' => 'Słowa kandydackie',
			'meta.keywordOrRegx' => 'Słowa kluczowe/Reguła',
			'meta.importFromClipboard' => 'Importuj ze schowka',
			'meta.exportToClipboard' => 'Eksportuj do schowka',
			'meta.server' => 'Serwer',
			'meta.ads' => 'Reklamy',
			'meta.adsRemove' => 'Usuń reklamy',
			'meta.donate' => 'Przekaż darowiznę',
			'meta.diversion' => 'Przekierowanie',
			'meta.diversionRules' => 'Reguły przekierowania',
			'meta.diversionCustomGroup' => 'Własna grupa przekierowania',
			'meta.urlTestCustomGroup' => 'Własny automatyczny wybór',
			'meta.setting' => 'Ustawienia',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Synchronizacja LAN',
			'meta.lanSyncNotQuitTips' => 'Nie opuszczaj tego interfejsu przed zakończeniem synchronizacji',
			'meta.deviceNoSpace' => 'Brak miejsca na dysku',
			'meta.hideSystemApp' => 'Ukryj aplikacje systemowe',
			'meta.hideAppIcon' => 'Ukryj ikony aplikacji',
			'meta.hideDockIcon' => 'Ukryj ikonę Dock',
			'meta.remark' => 'Uwaga',
			'meta.remarkExist' => 'Uwaga już istnieje, użyj innej nazwy',
			'meta.remarkCannotEmpty' => 'Uwagi nie mogą być puste',
			'meta.remarkTooLong' => 'Uwagi do 32 znaków',
			'meta.openDir' => 'Otwórz katalog plików',
			'meta.fileChoose' => 'Wybierz plik',
			'meta.filePathCannotEmpty' => 'Ścieżka pliku nie może być pusta',
			'meta.fileNotExist' => ({required Object p}) => 'Plik nie istnieje:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Nieprawidłowy typ pliku:${p}',
			'meta.uwpExemption' => 'Wyłączenia z izolacji sieciowej UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Pobierz profil',
			'meta.addProfile' => 'Dodaj profil',
			'meta.myProfiles' => 'Moje profile',
			'meta.profileEdit' => 'Edycja profilu',
			'meta.profileEditUrlExist' => 'Adres URL już istnieje, użyj innego adresu',
			'meta.profileEditReloadAfterProfileUpdate' => 'Przeładuj po aktualizacji profilu',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Uruchom testy opóźnienia po automatycznej aktualizacji profilu',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN musi być połączony, a opcja [Przeładuj po aktualizacji profilu] musi być włączona',
			'meta.profileEditTestLatencyAutoRemove' => 'Automatycznie usuwaj serwery, które nie przejdą testów opóźnienia',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Próbuj do 3 razy',
			'meta.profileImport' => 'Importuj plik profilu',
			'meta.profileAddUrlOrContent' => 'Dodaj link do profilu',
			'meta.profileExists' => 'Profil już istnieje, nie dodawaj go wielokrotnie',
			'meta.profileUrlOrContent' => 'Link/Zawartość profilu',
			'meta.profileUrlOrContentHit' => 'Link/Zawartość profilu [Wymagane] (Obsługuje linki do profili Clash, V2ray (obsługiwane seryjnie), Stash, Karing, Sing-box, Shadowsocks, Sub)',
			'meta.profileUrlOrContentCannotEmpty' => 'Link do profilu nie może być pusty',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Format jest błędny, popraw go i spróbuj dodać ponownie:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Dodawanie nie powiodło się: ${p}, spróbuj zmienić [UserAgent] i spróbuj ponownie, lub użyj wbudowanej przeglądarki urządzenia, aby otworzyć link konfiguracyjny i zaimportuj plik konfiguracyjny pobrany przez przeglądarkę do tej aplikacji',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Dodawanie nie powiodło się: ${p}, włącz proxy lub zmień bieżący węzeł proxy i spróbuj ponownie',
			'meta.profileAddParseFailed' => 'Parsowanie profilu nie powiodło się',
			'meta.profileAddNoServerAvaliable' => 'Brak dostępnych serwerów. Upewnij się, że link do profilu lub plik profilu jest prawidłowy; jeśli profil pochodzi z GitHub, pobierz link za pomocą przycisku [Raw] na stronie',
			'meta.profileAddWrapSuccess' => 'Profil został pomyślnie wygenerowany, przejdź do [${_root.meta.myProfiles}], aby go wyświetlić',
			'diversionRulesKeep' => 'Zachowaj [${_root.meta.diversionRules}] dla [${_root.meta.isp}]',
			'diversionCustomGroupPreset' => 'Predefiniowane [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Uwaga: Włączone elementy zostaną dodane/nadpisane w [${_root.meta.diversionCustomGroup}] i [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Uwaga: Po dodaniu może być konieczne ręczne dostosowanie kolejności, w przeciwnym razie nowo dodane przekierowanie może nie zadziałać',
			'rulesetEnableTips' => 'Wskazówka: Po włączeniu opcji przejdź do [${_root.meta.diversionRules}], aby ustawić odpowiednie reguły, w przeciwnym razie nie zaczną obowiązywać',
			'ispUserAgentTips' => '[${_root.meta.isp}] wyśle dane różnych typów subskrypcji na podstawie [UserAgent] w żądaniu [HTTP]',
			'ispDiversionTips' => '[${_root.meta.isp}] udostępnia reguły przekierowania ruchu; subskrypcje typu [V2Ray] nie obsługują reguł przekierowania ruchu',
			'isp.bind' => 'Powiąż z [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Odwiąż[${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'Śledź[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] Nieprawidłowy lub wygasły',
			'permission.camera' => 'Aparat',
			'permission.screen' => 'Nagrywanie ekranu',
			'permission.appQuery' => 'Pobierz listę aplikacji',
			'permission.request' => ({required Object p}) => 'Włącz uprawnienie [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'Włącz uprawnienie [${p}]',
			'tls.insecure' => 'Pomiń weryfikację certyfikatu',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Włącz fragmentację TLS',
			'tls.fragmentSize' => 'Rozmiar fragmentu TLS',
			'tls.fragmentSleep' => 'Pauza fragmentacji TLS',
			'tls.mixedCaseSNIEnable' => 'Włącz TLS Mixed SNI',
			_ => null,
		} ?? switch (path) {
			'tls.paddingEnable' => 'Włącz TLS Padding',
			'tls.paddingSize' => 'Rozmiar TLS Padding',
			'outboundRuleMode.currentSelected' => 'Aktualnie wybrany',
			'outboundRuleMode.urltest' => 'Automatyczny wybór',
			'outboundRuleMode.direct' => 'Bezpośrednio',
			'outboundRuleMode.block' => 'Blokuj',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Aktualizacja profilu',
			'theme.light' => 'Jasny',
			'theme.dark' => 'Ciemny',
			'theme.auto' => 'Automatyczny',
			'downloadProxyStrategy' => 'Kanał pobierania',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Połącz się z serwerem DNS przez serwer proxy, aby rozwiązać nazwę domeny\n[${_root.dnsProxyResolveMode.direct}]: Połącz się bezpośrednio z serwerem DNS, aby rozwiązać nazwę domeny\n[${_root.dnsProxyResolveMode.fakeip}]: Serwer proxy rozwiązuje nazwę domeny w Twoim imieniu; jeśli rozłączysz połączenie VPN, aplikacja może wymagać ponownego uruchomienia; skuteczne tylko dla ruchu przychodzącego [TUN]',
			'routeFinal' => 'final',
			'protocolSniff' => 'Sniffing protokołu',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Użyj [${p}]',
			'turnOffPrivateDirect' => 'Najpierw włącz [Bezpośrednie połączenie z siecią prywatną]',
			'targetConnectFailed' => ({required Object p}) => 'Nie udało się połączyć z [${p}]. Upewnij się, że urządzenia są w tej samej sieci LAN',
			'appleTVSync' => 'Zsynchronizuj bieżącą konfigurację core z Apple TV - Karing',
			'appleTVSyncDone' => 'Synchronizacja zakończona. Przejdź do Apple TV - Karing, aby rozpocząć/zrestartować połączenie',
			'appleTVRemoveCoreConfig' => 'Usuń konfigurację core Apple TV - Karing',
			'appleTVRemoveCoreConfigDone' => 'Konfiguracja core Apple TV - Karing usunięta; usługa VPN rozłączona',
			'appleTVUrlInvalid' => 'Nieprawidłowy adres URL, otwórz Apple TV - Karing i zeskanuj kod QR wyświetlony przez Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] nie posiada tej funkcji, zaktualizuj i spróbuj ponownie',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'Główna wersja core nie zgadza się, zaktualizuj [${p}] i spróbuj ponownie',
			'remoteProfileEditConfirm' => 'Po zaktualizowaniu profilu zmiany węzłów zostaną przywrócone. Kontynuować?',
			'mustBeValidHttpsURL' => 'Musi być prawidłowym adresem URL https',
			'fileNotExistReinstall' => ({required Object p}) => 'Brak pliku [${p}], zainstaluj ponownie',
			'noNetworkConnect' => 'Brak połączenia z Internetem',
			'sudoPassword' => 'hasło sudo (wymagane dla trybu TUN)',
			'turnOffNetworkBeforeInstall' => 'Zaleca się przełączenie w [Tryb samolotowy] przed instalacją aktualizacji',
			'latencyTestResolveIP' => 'Podczas ręcznego sprawdzania rozwiązuj IP wyjściowe',
			'latencyTestConcurrency' => 'Współbieżność',
			'edgeRuntimeNotInstalled' => 'Bieżące urządzenie nie ma zainstalowanego środowiska uruchomieniowego Edge WebView2, więc strona nie może zostać wyświetlona. Pobierz i zainstaluj środowisko uruchomieniowe Edge WebView2 (x64), uruchom ponownie aplikację i spróbuj ponownie.',
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
