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
class TranslationsUk with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsUk({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.uk,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <uk>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsUk _root = this; // ignore: unused_field

	@override 
	TranslationsUk $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsUk(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenUk AboutScreen = _TranslationsAboutScreenUk._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenUk BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenUk._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenUk DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenUk._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenUk DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenUk._(_root);
	@override late final _TranslationsDiversionRulesScreenUk DiversionRulesScreen = _TranslationsDiversionRulesScreenUk._(_root);
	@override late final _TranslationsDnsSettingsScreenUk DnsSettingsScreen = _TranslationsDnsSettingsScreenUk._(_root);
	@override late final _TranslationsFileContentViewerScreenUk FileContentViewerScreen = _TranslationsFileContentViewerScreenUk._(_root);
	@override late final _TranslationsHomeScreenUk HomeScreen = _TranslationsHomeScreenUk._(_root);
	@override late final _TranslationsLaunchFailedScreenUk LaunchFailedScreen = _TranslationsLaunchFailedScreenUk._(_root);
	@override late final _TranslationsMyProfilesMergeScreenUk MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenUk._(_root);
	@override late final _TranslationsNetCheckScreenUk NetCheckScreen = _TranslationsNetCheckScreenUk._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenUk NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenUk._(_root);
	@override late final _TranslationsNetConnectionsScreenUk NetConnectionsScreen = _TranslationsNetConnectionsScreenUk._(_root);
	@override late final _TranslationsPerAppAndroidScreenUk PerAppAndroidScreen = _TranslationsPerAppAndroidScreenUk._(_root);
	@override late final _TranslationsRegionSettingsScreenUk RegionSettingsScreen = _TranslationsRegionSettingsScreenUk._(_root);
	@override late final _TranslationsServerSelectScreenUk ServerSelectScreen = _TranslationsServerSelectScreenUk._(_root);
	@override late final _TranslationsSettingsScreenUk SettingsScreen = _TranslationsSettingsScreenUk._(_root);
	@override late final _TranslationsUserAgreementScreenUk UserAgreementScreen = _TranslationsUserAgreementScreenUk._(_root);
	@override late final _TranslationsVersionUpdateScreenUk VersionUpdateScreen = _TranslationsVersionUpdateScreenUk._(_root);
	@override late final _TranslationsCommonWidgetUk CommonWidget = _TranslationsCommonWidgetUk._(_root);
	@override late final _TranslationsMainUk main = _TranslationsMainUk._(_root);
	@override late final _TranslationsMetaUk meta = _TranslationsMetaUk._(_root);
	@override String get diversionRulesKeep => 'Зберегти [${_root.meta.diversionRules}] від [${_root.meta.isp}]';
	@override String get diversionCustomGroupPreset => 'Попередньо встановлена [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Примітка: Увімкнені елементи будуть додані/перезаписані в [${_root.meta.diversionCustomGroup}] та [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Примітка: Після додавання вам може знадобитися вручну відрегулювати порядок, інакше нещодавно додане відхилення може не набрати чинності';
	@override String get rulesetEnableTips => 'Порада: Після ввімкнення параметрів перейдіть до [${_root.meta.diversionRules}], щоб встановити відповідні правила, інакше вони не наберуть чинності';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] надсилатиме дані різних типів підписки на основі [UserAgent] у запиті [HTTP]';
	@override String get ispDiversionTips => '[${_root.meta.isp}] надає правила відхилення трафіку; підписки типу [V2Ray] не підтримують правила відхилення трафіку';
	@override late final _TranslationsIspUk isp = _TranslationsIspUk._(_root);
	@override late final _TranslationsPermissionUk permission = _TranslationsPermissionUk._(_root);
	@override late final _TranslationsTlsUk tls = _TranslationsTlsUk._(_root);
	@override late final _TranslationsOutboundRuleModeUk outboundRuleMode = _TranslationsOutboundRuleModeUk._(_root);
	@override late final _TranslationsDnsProxyResolveModeUk dnsProxyResolveMode = _TranslationsDnsProxyResolveModeUk._(_root);
	@override late final _TranslationsProxyStrategyUk proxyStrategy = _TranslationsProxyStrategyUk._(_root);
	@override late final _TranslationsReloadReasonUk reloadReason = _TranslationsReloadReasonUk._(_root);
	@override late final _TranslationsThemeUk theme = _TranslationsThemeUk._(_root);
	@override String get downloadProxyStrategy => 'Канал завантаження';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Підключитися до DNS-сервера через проксі-сервер для вирішення доменного імені\n[${_root.dnsProxyResolveMode.direct}]: Підключитися безпосередньо до DNS-сервера для вирішення доменного імені\n[${_root.dnsProxyResolveMode.fakeip}]: Проксі-сервер вирішує доменне ім\'я від вашого імені; якщо ви розірвете VPN-з\'єднання, вашу програму, можливо, доведеться перезапустити; ефективно лише для вхідного трафіку [TUN]';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'Сніффінг протоколу';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Будь ласка, використовуйте [${p}]';
	@override String get turnOffPrivateDirect => 'Будь ласка, спочатку увімкніть [Пряме підключення до приватної мережі]';
	@override String targetConnectFailed({required Object p}) => 'Не вдалося підключитися до [${p}]. Будь ласка, переконайтеся, що пристрої знаходяться в одній локальній мережі';
	@override String get appleTVSync => 'Синхронізувати поточну конфігурацію ядра з Apple TV - Karing';
	@override String get appleTVSyncDone => 'Синхронізація завершена. Перейдіть до Apple TV - Karing, щоб розпочати підключення/перезапустити підключення';
	@override String get appleTVRemoveCoreConfig => 'Видалити конфігурацію ядра Apple TV - Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Конфігурацію ядра Apple TV - Karing видалено; службу VPN відключено';
	@override String get appleTVUrlInvalid => 'Некоректний URL, відкрийте Apple TV - Karing і відскануйте QR-код, що відображається в Karing';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] не має цієї функції, оновіться та спробуйте ще раз';
	@override String appleCoreVersionNotMatch({required Object p}) => 'Основна версія ядра не збігається, оновіть [${p}] і спробуйте ще раз';
	@override String get remoteProfileEditConfirm => 'Після оновлення профілю зміни вузлів будуть відновлені. Продовжити?';
	@override String get mustBeValidHttpsURL => 'Має бути коректним https URL';
	@override String fileNotExistReinstall({required Object p}) => 'Файл відсутній [${p}], будь ласка, перевстановіть';
	@override String get noNetworkConnect => 'Немає підключення до Інтернету';
	@override String get sudoPassword => 'пароль sudo (необхідний для режиму TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Рекомендується перейти в [Режим польоту] перед встановленням оновлення';
	@override String get latencyTestResolveIP => 'При ручній перевірці вирішувати вихідний IP';
	@override String get latencyTestConcurrency => 'Паралелізм';
	@override String get edgeRuntimeNotInstalled => 'На поточному пристрої не встановлено середовище виконання Edge WebView2, тому сторінку неможливо відобразити. Будь ласка, завантажте та встановіть середовище виконання Edge WebView2 (x64), перезапустіть програму та спробуйте ще раз.';
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
class _TranslationsAboutScreenUk implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Джерело встановлення';
	@override String get installTime => 'Час встановлення';
	@override String get versionChannel => 'Канал автоматичного оновлення';
	@override String get updateWhenConnected => 'Перевірте наявність оновлень після підключення';
	@override String get autoDownloadPkg => 'Автоматично завантажувати пакети оновлень';
	@override String get disableAppImproveData => 'Дані про покращення програми';
	@override String get disableUAReportTip => 'Увімкнення [${_root.AboutScreen.disableAppImproveData}] допомагає нам покращити стабільність та зручність використання продукту; ми не збираємо жодних особистих конфіденційних даних. Вимкнення запобіжить збору будь-яких даних програмою.';
	@override String get devOptions => 'Параметри розробника';
	@override String get enableDebugLog => 'Увімкнути налагоджувальний журнал';
	@override String get viewFilsContent => 'Переглянути файли';
	@override String get enablePprof => 'Увімкнути pprof';
	@override String get pprofPanel => 'Панель pprof';
	@override String get allowRemoteAccessPprof => 'Дозволити віддалений доступ до ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Дозволити віддалений доступ до ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Використовувати оригінальний профіль sing-box';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenUk implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'URL-адреса сервера';
	@override String get webdavRequired => 'Не може бути порожнім';
	@override String get webdavLoginFailed => 'Помилка входу:';
	@override String get webdavListFailed => 'Не вдалося отримати список файлів:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenUk implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'Некоректний [Домен]:${p}';
	@override String invalidIpCidr({required Object p}) => 'Некоректний [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'Некоректно [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'Некоректний [Набір правил]:${p}, URL-адреса повинна бути коректною https URL-адресою та бінарним файлом з розширенням .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => 'Некоректний [Набір правил (вбудований)]:${p}, Формат: geosite:xxx або geoip:xxx або acl:xxx, де xxx має бути коректною назвою правила';
	@override String invalidPackageId({required Object p}) => 'Некоректний [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'Порада: Після збереження перейдіть до [${_root.meta.diversionRules}], щоб встановити відповідні правила, інакше вони не наберуть чинності';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenUk implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Виявлення правил відхилення';
	@override String get rule => 'Правило:';
	@override String get outbound => 'Проксі-сервер:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenUk implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Порада: Спробуйте зіставити правила зверху вниз. Якщо жодне правило не збігається, використовуйте [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenUk implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP не може бути порожнім';
	@override String get urlCanNotEmpty => 'URL не може бути порожнім';
	@override String error({required Object p}) => 'Непідтримуваний тип:${p}';
	@override String get dnsDesc => 'Перший стовпець даних про затримку — це затримка запиту прямого підключення;\nДругий стовпець: Увімкніть [[Проксі-трафік]Вирішувати DNS через проксі-сервер]: дані про затримку — це затримка запиту, пересланого через поточний проксі-сервер; якщо [[Проксі-трафік]Вирішувати DNS через проксі-сервер] вимкнено: дані про затримку — це затримка запиту прямого підключення';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenUk implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Переглядач вмісту файлів';
	@override String get clearFileContent => 'Ви впевнені, що хочете очистити вміст файлу?';
	@override String get clearFileContentTips => 'Ви впевнені, що хочете очистити вміст файлу профілю? Очищення файлу профілю може призвести до втрати даних або порушення функцій програми, будь ласка, дійте обережно';
}

// Path: HomeScreen
class _TranslationsHomeScreenUk implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Будь ласка, виберіть сервер';
	@override String get invalidServer => 'некоректний, будь ласка, виберіть знову';
	@override String get disabledServer => 'вимкнено, будь ласка, виберіть знову';
	@override String get expiredServer => 'Немає доступних серверів, термін дії профілів може закінчитися або вони вимкнені';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'Будь ласка, налаштуйте [Посилання швидкого доступу] перед використанням';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Занадто багато проксі-серверів [${p}>${p1}], підключення може не вдатися через обмеження системної пам\'яті';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Занадто багато проксі-серверів [${p}>${p1}] може спричинити повільне або недоступне підключення';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenUk implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'Не вдалося запустити програму [Некоректна назва процесу], будь ласка, перевстановіть програму в окрему директорію';
	@override String get invalidProfile => 'Не вдалося запустити програму [Не вдалося отримати доступ до профілю], будь ласка, перевстановіть програму';
	@override String get invalidVersion => 'Не вдалося запустити програму [Некоректна версія], будь ласка, перевстановіть програму';
	@override String get systemVersionLow => 'Не вдалося запустити програму [занадто низька версія системи]';
	@override String get invalidInstallPath => 'Некоректний шлях встановлення, будь ласка, перевстановіть за коректним шляхом';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenUk implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Об\'єднання профілів';
	@override String get profilesMergeTarget => 'Цільовий профіль';
	@override String get profilesMergeSource => 'Вихідні профілі';
	@override String get profilesMergeTips => 'Порада: Відхилення вихідних профілів буде відкинуто';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenUk implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Перевірка мережі';
	@override String get warn => 'Примітка: Через вплив мережевого середовища та правил відхилення результати тесту не є повністю еквівалентними фактичним результатам.';
	@override String get invalidDomain => 'Некоректне доменне ім\'я';
	@override String get connectivity => 'Мережеве підключення';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Тест підключення Ipv4 [${p}] повністю не вдався';
	@override String get connectivityTestIpv4Ok => 'Підключення Ipv4 успішне';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Тест підключення Ipv6 [${p}] повністю не вдався, ваша мережа може не підтримувати ipv6';
	@override String get connectivityTestIpv6Ok => 'Підключення Ipv6 успішне';
	@override String get connectivityTestOk => 'Мережа підключена до Інтернету';
	@override String get connectivityTestFailed => 'Мережа ще не підключена до Інтернету';
	@override String get remoteRulesetsDownloadOk => 'Усе успішно завантажено';
	@override String get remoteRulesetsDownloadNotOk => 'Завантаження або помилка завантаження';
	@override String get outbound => 'Проксі-сервер';
	@override String outboundOk({required Object p}) => 'Підключення [${p}] успішне';
	@override String outboundFailed({required Object p1, required Object p2}) => 'Підключення [${p1}] не вдалося\nПомилка:[${p2}]';
	@override String get dnsServer => 'DNS-сервер';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => 'DNS-запит [${p1}] успішний\nПравило DNS:[${p2}]\nЗатримка:[${p3} мс]\nАдреса:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => 'DNS-запит [${p1}] успішний\n nПравило DNS:[${p2}]\nПомилка:[${p3}]';
	@override String get host => 'HTTP-підключення';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nПравилоВідхилення:[${p2}]\nПроксі-сервер:[${p3}]';
	@override String get hostConnectionOk => 'підключення успішне';
	@override String hostConnectionFailed({required Object p}) => 'помилка підключення:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenUk implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Домен/IP';
	@override String get app => 'Програма';
	@override String get rule => 'Правило';
	@override String get chain => 'Вихідний';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenUk implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Скопійовано у формат CSV';
	@override String get selectType => 'Виберіть тип відхилення';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenUk implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Проксі для окремих програм';
	@override String get whiteListMode => 'Режим білого списку';
	@override String get whiteListModeTip => 'Коли увімкнено: проксі-серверами є лише позначені програми; коли вимкнено: проксі-серверами є лише непозначені програми';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenUk implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Країна або регіон';
	@override String get Regions => 'Порада: Будь ласка, правильно встановіть вашу поточну країну або регіон, інакше це може спричинити проблеми з відхиленням мережі';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenUk implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вибір сервера';
	@override String get autoSelectServer => 'Автоматично вибирати сервер з найменшою затримкою';
	@override String get recentUse => 'Недавно використані';
	@override String get myFav => 'Моє обране';
	@override String selectLocal({required Object p}) => 'Вибраний сервер є локальною адресою і може працювати некоректно:${p}';
	@override String get selectRequireEnableIPv6 => 'Вибраний сервер є IPv6-адресою і вимагає [Увімкнути IPv6]';
	@override String get selectDisabled => 'Цей сервер вимкнено';
	@override String get error404 => 'Під час виявлення затримки сталася помилка, будь ласка, перевірте, чи є конфігурація з таким самим вмістом';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenUk implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Отримати трафік';
	@override String get tutorial => 'Підручник';
	@override String get commonlyUsedRulesets => 'Поширені набори правил';
	@override String get htmlBoard => 'Онлайн-панель';
	@override String get dnsLeakDetection => 'Виявлення витоків DNS';
	@override String get proxyLeakDetection => 'Виявлення витоків проксі';
	@override String get speedTest => 'Тест швидкості';
	@override String get rulesetDirectDownlad => 'Пряме завантаження набору правил';
	@override String get hideUnusedDiversionGroup => 'Приховати невикористані правила відхилення';
	@override String get disableISPDiversionGroup => 'Вимкнути [${_root.meta.diversionRules}] від [${_root.meta.isp}]';
	@override String get portSettingRule => 'На основі правил';
	@override String get portSettingDirectAll => 'Напряму для всіх';
	@override String get portSettingProxyAll => 'Проксі для всіх';
	@override String get portSettingControl => 'Керування та синхронізація';
	@override String get portSettingCluster => 'Кластерна служба';
	@override String get modifyPort => 'Змінити порт';
	@override String get modifyPortOccupied => 'Порт зайнятий, будь ласка, використовуйте інший порт';
	@override String get ipStrategyTips => 'Перед увімкненням переконайтеся, що ваша мережа підтримує IPv6, інакше деякий трафік не буде доступний у звичайному режимі.';
	@override String get tunAppendHttpProxy => 'Додати HTTP-проксі до VPN';
	@override String get tunAppendHttpProxyTips => 'Деякі програми обходять віртуальний пристрій NIC і підключаються безпосередньо до HTTP-проксі';
	@override String get tunAllowBypassHttpProxyDomain => 'Домени, яким дозволено обходити HTTP-проксі';
	@override String get dnsEnableRule => 'Увімкнути правила відхилення DNS';
	@override String get dnsEnableProxyResolveMode => 'Канал вирішення [${_root.meta.trafficProxy}]';
	@override String get dnsEnableClientSubnet => 'Увімкнути ECS на [${_root.meta.trafficDirect}]';
	@override String get dnsTestDomain => 'Тестовий домен';
	@override String get dnsTestDomainInvalid => 'Некоректний домен';
	@override String get dnsTypeOutbound => 'Проксі-сервер';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS-сервер';
	@override String get dnsEnableRuleTips => 'Після увімкнення доменне ім\'я вибиратиме відповідний DNS-сервер для вирішення відповідно до правил відхилення';
	@override String get dnsEnableFakeIpTips => 'Після увімкнення FakeIP, якщо ви відключитеся від VPN, вашу програму, можливо, доведеться перезапустити; ця функція вимагає увімкнення [режиму TUN]';
	@override String get dnsTypeOutboundTips => 'Вирішення доменного імені для [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Вирішення доменного імені для [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Вирішення доменного імені для [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Вирішення доменного імені для [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Автоматичне налаштування сервера';
	@override String get dnsResetServer => 'Скинути сервер';
	@override String get inboundDomainResolve => 'Вирішувати вхідні доменні імена';
	@override String get privateDirect => 'Пряме підключення до приватної мережі';
	@override String inboundDomainResolveTips({required Object p}) => 'Деякі доменні імена, для яких не налаштовані правила відхилення, потрібно вирішити, перш ніж вони зможуть потрапити під правила відхилення на основі IP; ця функція впливає на вхідні запити до проксі-порту [${p}]';
	@override String get useRomoteRes => 'Використовувати віддалені ресурси';
	@override String get autoAppendRegion => 'Автоматично додавати основні правила';
	@override String get autoSelect => 'Автовибір';
	@override String get autoSelectServerIgnorePerProxyServer => 'Ігнорувати проксі-сервери [Front/Chain]';
	@override String get autoSelectServerInterval => 'Інтервал перевірки затримки';
	@override String get autoSelectSelectedHealthCheckInterval => 'Поточний інтервал перевірки працездатності сервера';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Повторно перевіряти затримку при зміні мережі';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Оновити поточний сервер після ручної перевірки затримки';
	@override String get autoSelectServerIntervalTips => 'Чим коротший часовий інтервал, тим своєчасніше оновлюються дані про затримку сервера, що займатиме більше ресурсів і споживатиме більше енергії';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Якщо перевірка не вдалася, сервер перемикається; якщо при перемиканні сервера не знайдено жодного доступного сервера, група повторно перевірить затримку';
	@override String get autoSelectServerFavFirst => 'Пріоритетне використання [Мого обраного]';
	@override String get autoSelectServerFavFirstTips => 'Якщо список [Моє обране] не порожній, використовувати сервери з [Мого обраного]';
	@override String get autoSelectServerFilter => 'Фільтрувати некоректні сервери';
	@override String autoSelectServerFilterTips({required Object p}) => 'Перевірки затримки сервера, які не вдалися, будуть відфільтровані; якщо після фільтрації немає доступних серверів, замість них будуть використані перші [${p}] серверів';
	@override String get autoSelectServerLimitedNum => 'Максимальна кількість серверів';
	@override String get autoSelectServerLimitedNumTips => 'Сервери, кількість яких перевищує це число, будуть відфільтровані';
	@override String get numInvalid => 'Некоректне число';
	@override String get hideInvalidServer => 'Приховати некоректні сервери';
	@override String get sortServer => 'Сортування серверів';
	@override String get sortServerTips => 'Сортувати за затримкою від найменшої до найбільшої';
	@override String get selectServerHideRecommand => 'Приховати [Рекомендовано]';
	@override String get selectServerHideRecent => 'Приховати [Недавно використані]';
	@override String get selectServerHideFav => 'Приховати [Моє обране]';
	@override String get homeScreen => 'Головний екран';
	@override String get theme => 'Тема';
	@override String get widgetsAlpha => 'Прозорість віджетів';
	@override String get widgetsEmpty => 'Немає доступних віджетів';
	@override String get backgroundImage => 'Фонове зображення';
	@override String get myLink => 'Посилання швидкого доступу';
	@override String get autoConnectAfterLaunch => 'Автопідключення після запуску';
	@override String get autoConnectAtBoot => 'Автопідключення після запуску системи';
	@override String get autoConnectAtBootTips => 'Потрібна системна підтримка; деякі системи також можуть вимагати увімкнення [автозапуску].';
	@override String get hideAfterLaunch => 'Приховати вікно після запуску';
	@override String get autoSetSystemProxy => 'Автоматично встановлювати системний проксі при підключенні';
	@override String get bypassSystemProxy => 'Доменні імена, яким дозволено обходити системний проксі';
	@override String get disconnectWhenQuit => 'Відключитися при виході з програми';
	@override String get autoAddToFirewall => 'Автоматично додавати правила брандмауера';
	@override String get excludeFromRecent => 'Приховати з [Недавніх завдань]';
	@override String get wakeLock => 'Заборона сну';
	@override String get hideVpn => 'Приховати піктограму VPN';
	@override String get hideVpnTips => 'Увімкнення IPv6 призведе до помилки цієї функції';
	@override String get allowBypass => 'Дозволити програмам обходити VPN';
	@override String get importSuccess => 'Імпорт успішний';
	@override String get rewriteConfirm => 'Цей файл перезапише існуючу локальну конфігурацію. Продовжити?';
	@override String get mergePerapp => 'Об\'єднати локальні списки [${_root.PerAppAndroidScreen.title}]';
	@override String get networkShare => 'Спільний доступ до мережі';
	@override String get frontProxy => 'Проксі Front/Chain';
	@override String frontProxyTips({required Object p}) => 'Дані->Проксі-сервер Front/Chain [Кілька проксі-серверів: Зверху вниз]->Проксі-сервер [${p}]->Цільовий сервер';
	@override String get allowOtherHostsConnect => 'Дозволити іншим підключатися';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'Через системні обмеження після ввімкнення цієї функції програми на цьому пристрої, які використовують http для доступу до мережі, можуть не мати змоги належним чином підключитися до мережі.';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunAutoRedirect => 'Auto Redirect';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'Якщо після ввімкнення спільного доступу інші не можуть отримати доступ до цього пристрою, спробуйте вимкнути цей перемикач';
	@override String get loopbackAddress => 'Локальна петля (Loopback)';
	@override String get enableCluster => 'Увімкнути кластер проксі Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Дозволити іншим підключатися до кластера';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Автентифікація проксі-кластера';
	@override String get tunMode => 'Режим TUN';
	@override String get tuni4Address => 'IP-адреса';
	@override String get tunModeTips => 'Режим TUN візьме на себе весь трафік системи [У цьому режимі ви можете залишити системний проксі вимкненим]';
	@override String get tunModeRunAsAdmin => 'Режим TUN вимагає прав адміністратора системи, будь ласка, перезапустіть програму від імені адміністратора';
	@override String get tunStack => 'Стек';
	@override String get tunHijackTips => 'Після закриття DNS-запити від TUN будуть пересилатися безпосередньо на відповідний DNS-сервер';
	@override String get launchAtStartup => 'Запускати при старті';
	@override String get quitWhenSwitchSystemUser => 'Виходити з програми при зміні користувачів системи';
	@override String get handleScheme => 'Виклик системної схеми';
	@override String get portableMode => 'Портативний режим';
	@override String get portableModeDisableTips => 'Якщо вам потрібно вийти з портативного режиму, будь ласка, вийдіть з [karing] і вручну видаліть папку [profiles] в тій же директорії, що і [karing.exe]';
	@override String get accessibility => 'Доступність';
	@override String get handleKaringScheme => 'Обробити виклик karing://';
	@override String get handleClashScheme => 'Обробити виклик clash://';
	@override String get handleSingboxScheme => 'Обробити виклик sing-box://';
	@override String get alwayOnVPN => 'Завжди увімкнене з\'єднання';
	@override String get disconnectAfterSleep => 'Відключитися після сну системи';
	@override String get removeSystemVPNConfig => 'Видалити системну конфігурацію VPN';
	@override String get timeConnectOrDisconnect => 'Заплановане підключення/відключення';
	@override String get timeConnectOrDisconnectTips => 'VPN має бути підключений, щоб набрати чинності; після ввімкнення [Автоматичний сон] буде вимкнено';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Інтервал підключення/відключення не може бути меншим за ${p} хвилин';
	@override String get disableFontScaler => 'Вимкнути масштабування шрифтів (Потрібен перезапуск)';
	@override String get autoOrientation => 'Повертати разом з екраном';
	@override String get restartTakesEffect => 'Набере чинності після перезапуску';
	@override String get reconnectTakesEffect => 'Набере чинності після перепідключення';
	@override String get resetSettings => 'Скинути налаштування';
	@override String get cleanCache => 'Очистити кеш';
	@override String get cleanCacheDone => 'Очищення завершено';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Оновити версію ${p}';
	@override String get follow => 'Слідкуйте за нами';
	@override String get contactUs => 'Зв\'яжіться з нами';
	@override String get supportUs => 'Підтримайте нас';
	@override String get rateInApp => 'Оцініть нас';
	@override String get rateInAppStore => 'Оцініть нас в AppStore';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenUk implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Ваша конфіденційність понад усе';
	@override String get agreeAndContinue => 'Прийняти та продовжити';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenUk implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'Нова версія [${p}] готова';
	@override String get update => 'Перезапустити для оновлення';
	@override String get cancel => 'Не зараз';
}

// Path: CommonWidget
class _TranslationsCommonWidgetUk implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Якщо [Завжди увімкнений VPN] увімкнено, вимкніть його та спробуйте підключитися знову';
	@override String get resetPort => 'Будь ласка, змініть порт на інший доступний порт або закрийте програму, що займає порт.';
}

// Path: main
class _TranslationsMainUk implements TranslationsMainEn {
	_TranslationsMainUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayUk tray = _TranslationsMainTrayUk._(_root);
}

// Path: meta
class _TranslationsMetaUk implements TranslationsMetaEn {
	_TranslationsMetaUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Увімкнути';
	@override String get disable => 'Вимкнути';
	@override String get bydefault => 'За замовчуванням';
	@override String get filter => 'Фільтр';
	@override String get filterMethod => 'Метод фільтрації';
	@override String get include => 'Включити';
	@override String get exclude => 'Виключити';
	@override String get all => 'Усі';
	@override String get prefer => 'Переважно';
	@override String get only => 'Лише';
	@override String get open => 'Відкрити';
	@override String get close => 'Закрити';
	@override String get quit => 'Вийти';
	@override String get add => 'Додати';
	@override String get addSuccess => 'Успішно додано';
	@override String addFailed({required Object p}) => 'Не вдалося додати:${p}';
	@override String get remove => 'Видалити';
	@override String get removeConfirm => 'Ви впевнені, що хочете видалити?';
	@override String get edit => 'Редагувати';
	@override String get view => 'Перегляд';
	@override String get more => 'Більше';
	@override String get tips => 'Інфо';
	@override String get copy => 'Копіювати';
	@override String get paste => 'Вставити';
	@override String get cut => 'Вирізати';
	@override String get save => 'Зберегти';
	@override String get ok => 'Ок';
	@override String get cancel => 'Скасувати';
	@override String get feedback => 'Зворотний зв\'язок';
	@override String get feedbackContent => 'Зміст зворотного зв\'язку';
	@override String get feedbackContentHit => 'Обов\'язково, до 500 символів';
	@override String get feedbackContentCannotEmpty => 'Зміст зворотного зв\'язку не може бути порожнім';
	@override String get faq => 'FAQ';
	@override String get htmlTools => 'Набір інструментів HTML';
	@override String get download => 'Завантажити';
	@override String get upload => 'Завантажити';
	@override String get downloadSpeed => 'Швидкість завантаження';
	@override String get uploadSpeed => 'Швидкість відвантаження';
	@override String get loading => 'Завантаження...';
	@override String get convert => 'Конвертувати';
	@override String get check => 'Перевірити';
	@override String get detect => 'Виявити';
	@override String get cache => 'Кеш';
	@override String get days => 'Днів';
	@override String get hours => 'Годин';
	@override String get minutes => 'Хвилин';
	@override String get seconds => 'Секунд';
	@override String get milliseconds => 'Мілісекунд';
	@override String get tolerance => 'Допуск';
	@override String get dateTimePeriod => 'Період часу';
	@override String get protocol => 'Протокол';
	@override String get search => 'Пошук';
	@override String get custom => 'Налаштовуваний';
	@override String get inbound => 'Вхідний';
	@override String get outbound => 'Вихідний';
	@override String get destination => 'Призначення';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Підключити';
	@override String get disconnect => 'Відключити';
	@override String get reconnect => 'Перепідключити';
	@override String get connected => 'Підключено';
	@override String get disconnected => 'Відключено';
	@override String get connecting => 'Підключення';
	@override String get connectTimeout => 'Час очікування підключення';
	@override String get timeout => 'Тайм-аут';
	@override String get timeoutDuration => 'Тривалість тайм-ауту';
	@override String get runDuration => 'Тривалість виконання';
	@override String get latency => 'Затримка';
	@override String get latencyTest => 'Перевірка затримки';
	@override String get language => 'Мова';
	@override String get next => 'Далі';
	@override String get done => 'Готово';
	@override String get apply => 'Застосувати';
	@override String get refresh => 'Оновити';
	@override String get retry => 'Повторити спробу?';
	@override String get update => 'Оновити';
	@override String get updateInterval => 'Інтервал оновлення';
	@override String get updateInterval5mTips => 'Мінімум: 5 хв';
	@override String updateFailed({required Object p}) => 'Помилка оновлення:${p}';
	@override String get samplingUnit => 'Одиниця часу вибірки';
	@override String get queryResultCount => 'Кількість результатів запиту';
	@override String queryLimit({required Object p}) => 'Відображати до ${p} даних';
	@override String get none => 'Немає';
	@override String get start => 'Старт';
	@override String get pause => 'Пауза';
	@override String get reset => 'Скинути';
	@override String get submit => 'Надіслати';
	@override String get user => 'Користувач';
	@override String get account => 'Обліковий запис';
	@override String get password => 'Пароль';
	@override String get decryptPassword => 'Пароль розшифровки';
	@override String get required => 'Обов\'язково';
	@override String get type => 'Тип';
	@override String get path => 'Шлях';
	@override String get local => 'Локальний';
	@override String get remote => 'Віддалений';
	@override String get other => 'Інше';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'Некоректний URL';
	@override String get urlCannotEmpty => 'Посилання не може бути порожнім';
	@override String get urlTooLong => 'URL занадто довгий (>8182)';
	@override String get copyUrl => 'Копіювати посилання';
	@override String get openUrl => 'Відкрити посилання';
	@override String get shareUrl => 'Поділитися посиланням';
	@override String get speedTestUrl => 'URL тесту швидкості';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'Статичний IP';
	@override String get staticIPTips => 'Вам потрібно увімкнути [TUN HijackDNS] або [${_root.SettingsScreen.inboundDomainResolve}].';
	@override String get isp => 'Постачальник VPN';
	@override String get domainSuffix => 'Суфікс домену';
	@override String get domain => 'Домен';
	@override String get domainKeyword => 'Ключове слово домену';
	@override String get domainRegex => 'Регулярний вираз домену';
	@override String get ip => 'IP';
	@override String get port => 'Порт';
	@override String get portRange => 'Діапазон портів';
	@override String get appPackage => 'Id пакета програми';
	@override String get processName => 'Назва процесу';
	@override String get processPath => 'Шлях до процесу';
	@override String get processDir => 'Директорія процесу';
	@override String get systemProxy => 'Системний проксі';
	@override String get percentage => 'Відсоток';
	@override String get statistics => 'Статистика';
	@override String get statisticsAndAnalysis => 'Статистика та аналіз';
	@override String get statisticsDataDesensitize => 'Десенсибілізація даних';
	@override String get statisticsDataDesensitizeTips => 'Назва процесу/ідентифікатор пакета/цільовий домен/цільовий IP тощо будуть замінені на * і збережені після десенсибілізації';
	@override String get records => 'Записи';
	@override String get requestRecords => 'Записи запитів';
	@override String get netInterfaces => 'Мережеві інтерфейси';
	@override String get netSpeed => 'Швидкість';
	@override String get memoryTrendChart => 'Графік тенденції пам\'яті';
	@override String get goroutinesTrendChart => 'Графік тенденції GoRoutines';
	@override String get trafficTrendChart => 'Графік тенденції трафіку';
	@override String get trafficDistributionChart => 'Графік розподілу трафіку';
	@override String get connectionChart => 'Графік тенденції підключень';
	@override String get memoryChart => 'Графік тенденції пам\'яті';
	@override String get trafficStatistics => 'Статистика трафіку';
	@override String get traffic => 'Трафік';
	@override String get trafficTotal => 'Загальний трафік';
	@override String get trafficProxy => 'Проксі-трафік';
	@override String get trafficDirect => 'Прямий трафік';
	@override String get website => 'Веб-сайт';
	@override String get memory => 'Пам\'ять';
	@override String get outboundMode => 'Вихідний режим';
	@override String get rule => 'Правило';
	@override String get global => 'Глобальний';
	@override String get qrcode => 'QR-код';
	@override String get qrcodeTooLong => 'Текст занадто довгий для відображення';
	@override String get qrcodeShare => 'Поділитися QR-кодом';
	@override String get textToQrcode => 'Текст у QR-код';
	@override String get qrcodeScan => 'Сканувати QR-код';
	@override String get qrcodeScanResult => 'Результат сканування';
	@override String get qrcodeScanFromImage => 'Сканувати із зображення';
	@override String get qrcodeScanResultFailed => 'Не вдалося проаналізувати зображення, переконайтеся, що знімок екрана є коректним QR-кодом';
	@override String get qrcodeScanResultEmpty => 'Результат сканування порожній';
	@override String get screenshot => 'Знімок екрана';
	@override String get backupAndSync => 'Резервне копіювання та синхронізація';
	@override String get autoBackup => 'Автоматичне резервне копіювання';
	@override String get noProfileGotAutoBackup => 'Якщо такі дані, як [${_root.meta.myProfiles}], втрачені, ви можете відновити їх із [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] або інших джерел резервного копіювання (таких як iCloud або Webdav тощо)';
	@override String get autoBackupAddProfile => 'Після додавання профілю';
	@override String get autoBackupRemoveProfile => 'Після видалення профілю';
	@override String get profile => 'Профіль';
	@override String get currentProfile => 'Поточний профіль';
	@override String get importAndExport => 'Імпорт та експорт';
	@override String get import => 'Імпорт';
	@override String get importFromUrl => 'Імпорт з URL';
	@override String get export => 'Експорт';
	@override String get send => 'Надіслати';
	@override String get receive => 'Отримати';
	@override String get sendConfirm => 'Підтвердити надсилання?';
	@override String get termOfUse => 'Умови обслуговування';
	@override String get privacyPolicy => 'Політика конфіденційності';
	@override String get about => 'Про програму';
	@override String get name => 'Назва';
	@override String get version => 'Версія';
	@override String get notice => 'Повідомлення';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Дія:${p}\nПричина:${p1}';
	@override String get sort => 'Змінити порядок';
	@override String get novice => 'Режим новачків';
	@override String get willCompleteAfterRebootInstall => 'Будь ласка, перезавантажте пристрій, щоб завершити встановлення системного розширення';
	@override String get willCompleteAfterRebootUninstall => 'Будь ласка, перезавантажте пристрій, щоб завершити видалення системного розширення';
	@override String get requestNeedsUserApproval => '1. Будь ласка, [Дозвольте] Karing встановлювати системні розширення в [Параметри системи]-[Конфіденційність та безпека]\n2. [Параметри системи]-[Загальні]-[Об\'єкти входу Розширення]-[Мережеве розширення] увімкніть [karingServiceSE]\nперепідключіться після завершення';
	@override String get FullDiskAccessPermissionRequired => 'Будь ласка, увімкніть дозвіл [karingServiceSE] у [Параметри системи]-[Конфіденційність та безпека]-[Повний доступ до диска] та перепідключіться';
	@override String get tvMode => 'Режим ТБ';
	@override String get recommended => 'Рекомендовано';
	@override String innerError({required Object p}) => 'Внутрішня помилка:${p}';
	@override String get logicOperation => 'Логічна операція';
	@override String get share => 'Поділитися';
	@override String get candidateWord => 'Слова-кандидати';
	@override String get keywordOrRegx => 'Ключові слова/Регулярні';
	@override String get importFromClipboard => 'Імпорт з буфера обміну';
	@override String get exportToClipboard => 'Експорт у буфер обміну';
	@override String get server => 'Сервер';
	@override String get ads => 'Реклама';
	@override String get adsRemove => 'Видалити рекламу';
	@override String get donate => 'Пожертвувати';
	@override String get diversion => 'Відхилення';
	@override String get diversionRules => 'Правила відхилення';
	@override String get diversionCustomGroup => 'Спеціальна група відхилення';
	@override String get urlTestCustomGroup => 'Спеціальний автовибір';
	@override String get setting => 'Налаштування';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Синхронізація через LAN';
	@override String get lanSyncNotQuitTips => 'Не виходьте з цього інтерфейсу до завершення синхронізації';
	@override String get deviceNoSpace => 'Недостатньо місця на диску';
	@override String get hideSystemApp => 'Приховати системні програми';
	@override String get hideAppIcon => 'Приховати піктограми програм';
	@override String get hideDockIcon => 'Приховати піктограму Dock';
	@override String get remark => 'Примітка';
	@override String get remarkExist => 'Примітка вже існує, будь ласка, використовуйте іншу назву';
	@override String get remarkCannotEmpty => 'Примітки не можуть бути порожніми';
	@override String get remarkTooLong => 'Примітки до 32 символів';
	@override String get openDir => 'Відкрити директорію файлів';
	@override String get fileChoose => 'Вибрати файл';
	@override String get filePathCannotEmpty => 'Шлях до файлу не може бути порожнім';
	@override String fileNotExist({required Object p}) => 'Файл не існує:${p}';
	@override String fileTypeInvalid({required Object p}) => 'Некоректний тип файлу:${p}';
	@override String get uwpExemption => 'Винятки ізоляції мережі UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Отримати профіль';
	@override String get addProfile => 'Додати профіль';
	@override String get myProfiles => 'Мої профілі';
	@override String get profileEdit => 'Редагування профілю';
	@override String get profileEditUrlExist => 'URL-адреса вже існує, будь ласка, використовуйте іншу URL-адресу';
	@override String get profileEditReloadAfterProfileUpdate => 'Перезавантажити після оновлення профілю';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Запускати тести затримки після автоматичного оновлення профілю';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN має бути підключений, а [Перезавантажити після оновлення профілю] увімкнено';
	@override String get profileEditTestLatencyAutoRemove => 'Автоматично видаляти сервери, які не пройшли тести затримки';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Спробуйте до 3 разів';
	@override String get profileImport => 'Імпортувати файл профілю';
	@override String get profileAddUrlOrContent => 'Додати посилання на профіль';
	@override String get profileExists => 'Профіль вже існує, будь ласка, не додавайте його повторно';
	@override String get profileUrlOrContent => 'Посилання/вміст профілю';
	@override String get profileUrlOrContentHit => 'Посилання/вміст профілю [Обов\'язково] (Підтримує посилання на профілі Clash, V2ray (підтримується пакетно), Stash, Karing, Sing-box, Shadowsocks, Sub)';
	@override String get profileUrlOrContentCannotEmpty => 'Посилання на профіль не може бути порожнім';
	@override String profileAddFailedFormatException({required Object p}) => 'Неправильний формат, будь ласка, виправте його та додайте знову:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Не вдалося додати: ${p}, будь ласка, спробуйте змінити [UserAgent] і спробуйте знову, або скористайтеся вбудованим браузером пристрою, щоб відкрити посилання на конфігурацію та імпортувати файл конфігурації, завантажений браузером, у цю програму';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Не вдалося додати: ${p}, будь ласка, увімкніть проксі або змініть поточний проксі-вузол і спробуйте знову';
	@override String get profileAddParseFailed => 'Не вдалося проаналізувати профіль';
	@override String get profileAddNoServerAvaliable => 'Немає доступних серверів, переконайтеся, що посилання на профіль або файл профілю коректні; якщо ваш профіль з GitHub, отримайте посилання за допомогою кнопки [Raw] на сторінці';
	@override String get profileAddWrapSuccess => 'Профіль успішно згенеровано, перейдіть до [${_root.meta.myProfiles}] для перегляду';
}

// Path: isp
class _TranslationsIspUk implements TranslationsIspEn {
	_TranslationsIspUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Прив\'язати до [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'Відв\'язати[${p}]';
	@override String faq({required Object p}) => 'FAQ[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'Слідкувати[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] Некоректний або термін дії закінчився';
}

// Path: permission
class _TranslationsPermissionUk implements TranslationsPermissionEn {
	_TranslationsPermissionUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Камера';
	@override String get screen => 'Запис екрана';
	@override String get appQuery => 'Отримати список програм';
	@override String request({required Object p}) => 'Увімкнути дозвіл [${p}]';
	@override String requestNeed({required Object p}) => 'Будь ласка, увімкніть дозвіл [${p}]';
}

// Path: tls
class _TranslationsTlsUk implements TranslationsTlsEn {
	_TranslationsTlsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Пропустити перевірку сертифіката';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Увімкнути фрагментацію TLS';
	@override String get fragmentSize => 'Розмір фрагмента TLS';
	@override String get fragmentSleep => 'Пауза фрагментації TLS';
	@override String get mixedCaseSNIEnable => 'Увімкнути змішаний регістр SNI TLS';
	@override String get paddingEnable => 'Увімкнути заповнення (Padding) TLS';
	@override String get paddingSize => 'Розмір заповнення (Padding) TLS';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeUk implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Поточний вибраний';
	@override String get urltest => 'Автовибір';
	@override String get direct => 'Прямий';
	@override String get block => 'Блокувати';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeUk implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyUk implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonUk implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Оновлення профілю';
}

// Path: theme
class _TranslationsThemeUk implements TranslationsThemeEn {
	_TranslationsThemeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get light => 'Світла';
	@override String get dark => 'Темна';
	@override String get auto => 'Авто';
}

// Path: main.tray
class _TranslationsMainTrayUk implements TranslationsMainTrayEn {
	_TranslationsMainTrayUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Відкрити';
	@override String get menuExit => 'Вийти';
}

/// The flat map containing all translations for locale <uk>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsUk {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Джерело встановлення',
			'AboutScreen.installTime' => 'Час встановлення',
			'AboutScreen.versionChannel' => 'Канал автоматичного оновлення',
			'AboutScreen.updateWhenConnected' => 'Перевірте наявність оновлень після підключення',
			'AboutScreen.autoDownloadPkg' => 'Автоматично завантажувати пакети оновлень',
			'AboutScreen.disableAppImproveData' => 'Дані про покращення програми',
			'AboutScreen.disableUAReportTip' => 'Увімкнення [${_root.AboutScreen.disableAppImproveData}] допомагає нам покращити стабільність та зручність використання продукту; ми не збираємо жодних особистих конфіденційних даних. Вимкнення запобіжить збору будь-яких даних програмою.',
			'AboutScreen.devOptions' => 'Параметри розробника',
			'AboutScreen.enableDebugLog' => 'Увімкнути налагоджувальний журнал',
			'AboutScreen.viewFilsContent' => 'Переглянути файли',
			'AboutScreen.enablePprof' => 'Увімкнути pprof',
			'AboutScreen.pprofPanel' => 'Панель pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'Дозволити віддалений доступ до ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Дозволити віддалений доступ до ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Використовувати оригінальний профіль sing-box',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'URL-адреса сервера',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Не може бути порожнім',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Помилка входу:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Не вдалося отримати список файлів:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'Некоректний [Домен]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'Некоректний [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Некоректно [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'Некоректний [Набір правил]:${p}, URL-адреса повинна бути коректною https URL-адресою та бінарним файлом з розширенням .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'Некоректний [Набір правил (вбудований)]:${p}, Формат: geosite:xxx або geoip:xxx або acl:xxx, де xxx має бути коректною назвою правила',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'Некоректний [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Порада: Після збереження перейдіть до [${_root.meta.diversionRules}], щоб встановити відповідні правила, інакше вони не наберуть чинності',
			'DiversionRuleDetectScreen.title' => 'Виявлення правил відхилення',
			'DiversionRuleDetectScreen.rule' => 'Правило:',
			'DiversionRuleDetectScreen.outbound' => 'Проксі-сервер:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Порада: Спробуйте зіставити правила зверху вниз. Якщо жодне правило не збігається, використовуйте [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP не може бути порожнім',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL не може бути порожнім',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Непідтримуваний тип:${p}',
			'DnsSettingsScreen.dnsDesc' => 'Перший стовпець даних про затримку — це затримка запиту прямого підключення;\nДругий стовпець: Увімкніть [[Проксі-трафік]Вирішувати DNS через проксі-сервер]: дані про затримку — це затримка запиту, пересланого через поточний проксі-сервер; якщо [[Проксі-трафік]Вирішувати DNS через проксі-сервер] вимкнено: дані про затримку — це затримка запиту прямого підключення',
			'FileContentViewerScreen.title' => 'Переглядач вмісту файлів',
			'FileContentViewerScreen.clearFileContent' => 'Ви впевнені, що хочете очистити вміст файлу?',
			'FileContentViewerScreen.clearFileContentTips' => 'Ви впевнені, що хочете очистити вміст файлу профілю? Очищення файлу профілю може призвести до втрати даних або порушення функцій програми, будь ласка, дійте обережно',
			'HomeScreen.toSelectServer' => 'Будь ласка, виберіть сервер',
			'HomeScreen.invalidServer' => 'некоректний, будь ласка, виберіть знову',
			'HomeScreen.disabledServer' => 'вимкнено, будь ласка, виберіть знову',
			'HomeScreen.expiredServer' => 'Немає доступних серверів, термін дії профілів може закінчитися або вони вимкнені',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'Будь ласка, налаштуйте [Посилання швидкого доступу] перед використанням',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Занадто багато проксі-серверів [${p}>${p1}], підключення може не вдатися через обмеження системної пам\'яті',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Занадто багато проксі-серверів [${p}>${p1}] може спричинити повільне або недоступне підключення',
			'LaunchFailedScreen.invalidProcess' => 'Не вдалося запустити програму [Некоректна назва процесу], будь ласка, перевстановіть програму в окрему директорію',
			'LaunchFailedScreen.invalidProfile' => 'Не вдалося запустити програму [Не вдалося отримати доступ до профілю], будь ласка, перевстановіть програму',
			'LaunchFailedScreen.invalidVersion' => 'Не вдалося запустити програму [Некоректна версія], будь ласка, перевстановіть програму',
			'LaunchFailedScreen.systemVersionLow' => 'Не вдалося запустити програму [занадто низька версія системи]',
			'LaunchFailedScreen.invalidInstallPath' => 'Некоректний шлях встановлення, будь ласка, перевстановіть за коректним шляхом',
			'MyProfilesMergeScreen.profilesMerge' => 'Об\'єднання профілів',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Цільовий профіль',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Вихідні профілі',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Порада: Відхилення вихідних профілів буде відкинуто',
			'NetCheckScreen.title' => 'Перевірка мережі',
			'NetCheckScreen.warn' => 'Примітка: Через вплив мережевого середовища та правил відхилення результати тесту не є повністю еквівалентними фактичним результатам.',
			'NetCheckScreen.invalidDomain' => 'Некоректне доменне ім\'я',
			'NetCheckScreen.connectivity' => 'Мережеве підключення',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Тест підключення Ipv4 [${p}] повністю не вдався',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Підключення Ipv4 успішне',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Тест підключення Ipv6 [${p}] повністю не вдався, ваша мережа може не підтримувати ipv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Підключення Ipv6 успішне',
			'NetCheckScreen.connectivityTestOk' => 'Мережа підключена до Інтернету',
			'NetCheckScreen.connectivityTestFailed' => 'Мережа ще не підключена до Інтернету',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Усе успішно завантажено',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Завантаження або помилка завантаження',
			'NetCheckScreen.outbound' => 'Проксі-сервер',
			'NetCheckScreen.outboundOk' => ({required Object p}) => 'Підключення [${p}] успішне',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => 'Підключення [${p1}] не вдалося\nПомилка:[${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS-сервер',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => 'DNS-запит [${p1}] успішний\nПравило DNS:[${p2}]\nЗатримка:[${p3} мс]\nАдреса:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => 'DNS-запит [${p1}] успішний\n nПравило DNS:[${p2}]\nПомилка:[${p3}]',
			'NetCheckScreen.host' => 'HTTP-підключення',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nПравилоВідхилення:[${p2}]\nПроксі-сервер:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'підключення успішне',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'помилка підключення:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Домен/IP',
			'NetConnectionsFilterScreen.app' => 'Програма',
			'NetConnectionsFilterScreen.rule' => 'Правило',
			'NetConnectionsFilterScreen.chain' => 'Вихідний',
			'NetConnectionsScreen.copyAsCSV' => 'Скопійовано у формат CSV',
			'NetConnectionsScreen.selectType' => 'Виберіть тип відхилення',
			'PerAppAndroidScreen.title' => 'Проксі для окремих програм',
			'PerAppAndroidScreen.whiteListMode' => 'Режим білого списку',
			'PerAppAndroidScreen.whiteListModeTip' => 'Коли увімкнено: проксі-серверами є лише позначені програми; коли вимкнено: проксі-серверами є лише непозначені програми',
			'RegionSettingsScreen.title' => 'Країна або регіон',
			'RegionSettingsScreen.Regions' => 'Порада: Будь ласка, правильно встановіть вашу поточну країну або регіон, інакше це може спричинити проблеми з відхиленням мережі',
			'ServerSelectScreen.title' => 'Вибір сервера',
			'ServerSelectScreen.autoSelectServer' => 'Автоматично вибирати сервер з найменшою затримкою',
			'ServerSelectScreen.recentUse' => 'Недавно використані',
			'ServerSelectScreen.myFav' => 'Моє обране',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Вибраний сервер є локальною адресою і може працювати некоректно:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Вибраний сервер є IPv6-адресою і вимагає [Увімкнути IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Цей сервер вимкнено',
			'ServerSelectScreen.error404' => 'Під час виявлення затримки сталася помилка, будь ласка, перевірте, чи є конфігурація з таким самим вмістом',
			'SettingsScreen.getTranffic' => 'Отримати трафік',
			'SettingsScreen.tutorial' => 'Підручник',
			'SettingsScreen.commonlyUsedRulesets' => 'Поширені набори правил',
			'SettingsScreen.htmlBoard' => 'Онлайн-панель',
			'SettingsScreen.dnsLeakDetection' => 'Виявлення витоків DNS',
			'SettingsScreen.proxyLeakDetection' => 'Виявлення витоків проксі',
			'SettingsScreen.speedTest' => 'Тест швидкості',
			'SettingsScreen.rulesetDirectDownlad' => 'Пряме завантаження набору правил',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Приховати невикористані правила відхилення',
			'SettingsScreen.disableISPDiversionGroup' => 'Вимкнути [${_root.meta.diversionRules}] від [${_root.meta.isp}]',
			'SettingsScreen.portSettingRule' => 'На основі правил',
			'SettingsScreen.portSettingDirectAll' => 'Напряму для всіх',
			'SettingsScreen.portSettingProxyAll' => 'Проксі для всіх',
			'SettingsScreen.portSettingControl' => 'Керування та синхронізація',
			'SettingsScreen.portSettingCluster' => 'Кластерна служба',
			'SettingsScreen.modifyPort' => 'Змінити порт',
			'SettingsScreen.modifyPortOccupied' => 'Порт зайнятий, будь ласка, використовуйте інший порт',
			'SettingsScreen.ipStrategyTips' => 'Перед увімкненням переконайтеся, що ваша мережа підтримує IPv6, інакше деякий трафік не буде доступний у звичайному режимі.',
			'SettingsScreen.tunAppendHttpProxy' => 'Додати HTTP-проксі до VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Деякі програми обходять віртуальний пристрій NIC і підключаються безпосередньо до HTTP-проксі',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Домени, яким дозволено обходити HTTP-проксі',
			'SettingsScreen.dnsEnableRule' => 'Увімкнути правила відхилення DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => 'Канал вирішення [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsEnableClientSubnet' => 'Увімкнути ECS на [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTestDomain' => 'Тестовий домен',
			'SettingsScreen.dnsTestDomainInvalid' => 'Некоректний домен',
			'SettingsScreen.dnsTypeOutbound' => 'Проксі-сервер',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS-сервер',
			'SettingsScreen.dnsEnableRuleTips' => 'Після увімкнення доменне ім\'я вибиратиме відповідний DNS-сервер для вирішення відповідно до правил відхилення',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Після увімкнення FakeIP, якщо ви відключитеся від VPN, вашу програму, можливо, доведеться перезапустити; ця функція вимагає увімкнення [режиму TUN]',
			'SettingsScreen.dnsTypeOutboundTips' => 'Вирішення доменного імені для [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Вирішення доменного імені для [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Вирішення доменного імені для [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Вирішення доменного імені для [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Автоматичне налаштування сервера',
			'SettingsScreen.dnsResetServer' => 'Скинути сервер',
			'SettingsScreen.inboundDomainResolve' => 'Вирішувати вхідні доменні імена',
			'SettingsScreen.privateDirect' => 'Пряме підключення до приватної мережі',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Деякі доменні імена, для яких не налаштовані правила відхилення, потрібно вирішити, перш ніж вони зможуть потрапити під правила відхилення на основі IP; ця функція впливає на вхідні запити до проксі-порту [${p}]',
			'SettingsScreen.useRomoteRes' => 'Використовувати віддалені ресурси',
			'SettingsScreen.autoAppendRegion' => 'Автоматично додавати основні правила',
			'SettingsScreen.autoSelect' => 'Автовибір',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Ігнорувати проксі-сервери [Front/Chain]',
			'SettingsScreen.autoSelectServerInterval' => 'Інтервал перевірки затримки',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Поточний інтервал перевірки працездатності сервера',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Повторно перевіряти затримку при зміні мережі',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Оновити поточний сервер після ручної перевірки затримки',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Чим коротший часовий інтервал, тим своєчасніше оновлюються дані про затримку сервера, що займатиме більше ресурсів і споживатиме більше енергії',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Якщо перевірка не вдалася, сервер перемикається; якщо при перемиканні сервера не знайдено жодного доступного сервера, група повторно перевірить затримку',
			'SettingsScreen.autoSelectServerFavFirst' => 'Пріоритетне використання [Мого обраного]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Якщо список [Моє обране] не порожній, використовувати сервери з [Мого обраного]',
			'SettingsScreen.autoSelectServerFilter' => 'Фільтрувати некоректні сервери',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Перевірки затримки сервера, які не вдалися, будуть відфільтровані; якщо після фільтрації немає доступних серверів, замість них будуть використані перші [${p}] серверів',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Максимальна кількість серверів',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Сервери, кількість яких перевищує це число, будуть відфільтровані',
			'SettingsScreen.numInvalid' => 'Некоректне число',
			'SettingsScreen.hideInvalidServer' => 'Приховати некоректні сервери',
			'SettingsScreen.sortServer' => 'Сортування серверів',
			'SettingsScreen.sortServerTips' => 'Сортувати за затримкою від найменшої до найбільшої',
			'SettingsScreen.selectServerHideRecommand' => 'Приховати [Рекомендовано]',
			'SettingsScreen.selectServerHideRecent' => 'Приховати [Недавно використані]',
			'SettingsScreen.selectServerHideFav' => 'Приховати [Моє обране]',
			'SettingsScreen.homeScreen' => 'Головний екран',
			'SettingsScreen.theme' => 'Тема',
			'SettingsScreen.widgetsAlpha' => 'Прозорість віджетів',
			'SettingsScreen.widgetsEmpty' => 'Немає доступних віджетів',
			'SettingsScreen.backgroundImage' => 'Фонове зображення',
			'SettingsScreen.myLink' => 'Посилання швидкого доступу',
			'SettingsScreen.autoConnectAfterLaunch' => 'Автопідключення після запуску',
			'SettingsScreen.autoConnectAtBoot' => 'Автопідключення після запуску системи',
			'SettingsScreen.autoConnectAtBootTips' => 'Потрібна системна підтримка; деякі системи також можуть вимагати увімкнення [автозапуску].',
			'SettingsScreen.hideAfterLaunch' => 'Приховати вікно після запуску',
			'SettingsScreen.autoSetSystemProxy' => 'Автоматично встановлювати системний проксі при підключенні',
			'SettingsScreen.bypassSystemProxy' => 'Доменні імена, яким дозволено обходити системний проксі',
			'SettingsScreen.disconnectWhenQuit' => 'Відключитися при виході з програми',
			'SettingsScreen.autoAddToFirewall' => 'Автоматично додавати правила брандмауера',
			'SettingsScreen.excludeFromRecent' => 'Приховати з [Недавніх завдань]',
			'SettingsScreen.wakeLock' => 'Заборона сну',
			'SettingsScreen.hideVpn' => 'Приховати піктограму VPN',
			'SettingsScreen.hideVpnTips' => 'Увімкнення IPv6 призведе до помилки цієї функції',
			'SettingsScreen.allowBypass' => 'Дозволити програмам обходити VPN',
			'SettingsScreen.importSuccess' => 'Імпорт успішний',
			'SettingsScreen.rewriteConfirm' => 'Цей файл перезапише існуючу локальну конфігурацію. Продовжити?',
			'SettingsScreen.mergePerapp' => 'Об\'єднати локальні списки [${_root.PerAppAndroidScreen.title}]',
			'SettingsScreen.networkShare' => 'Спільний доступ до мережі',
			'SettingsScreen.frontProxy' => 'Проксі Front/Chain',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Дані->Проксі-сервер Front/Chain [Кілька проксі-серверів: Зверху вниз]->Проксі-сервер [${p}]->Цільовий сервер',
			'SettingsScreen.allowOtherHostsConnect' => 'Дозволити іншим підключатися',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Через системні обмеження після ввімкнення цієї функції програми на цьому пристрої, які використовують http для доступу до мережі, можуть не мати змоги належним чином підключитися до мережі.',
			'SettingsScreen.tunAutoRoute' => 'Auto Route',
			'SettingsScreen.tunAutoRedirect' => 'Auto Redirect',
			'SettingsScreen.tunStrictRoute' => 'Strict Route',
			'SettingsScreen.tunStrictRouteTips' => 'Якщо після ввімкнення спільного доступу інші не можуть отримати доступ до цього пристрою, спробуйте вимкнути цей перемикач',
			'SettingsScreen.loopbackAddress' => 'Локальна петля (Loopback)',
			'SettingsScreen.enableCluster' => 'Увімкнути кластер проксі Socks/Http',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Дозволити іншим підключатися до кластера',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Автентифікація проксі-кластера',
			'SettingsScreen.tunMode' => 'Режим TUN',
			'SettingsScreen.tuni4Address' => 'IP-адреса',
			'SettingsScreen.tunModeTips' => 'Режим TUN візьме на себе весь трафік системи [У цьому режимі ви можете залишити системний проксі вимкненим]',
			'SettingsScreen.tunModeRunAsAdmin' => 'Режим TUN вимагає прав адміністратора системи, будь ласка, перезапустіть програму від імені адміністратора',
			'SettingsScreen.tunStack' => 'Стек',
			'SettingsScreen.tunHijackTips' => 'Після закриття DNS-запити від TUN будуть пересилатися безпосередньо на відповідний DNS-сервер',
			'SettingsScreen.launchAtStartup' => 'Запускати при старті',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Виходити з програми при зміні користувачів системи',
			'SettingsScreen.handleScheme' => 'Виклик системної схеми',
			'SettingsScreen.portableMode' => 'Портативний режим',
			'SettingsScreen.portableModeDisableTips' => 'Якщо вам потрібно вийти з портативного режиму, будь ласка, вийдіть з [karing] і вручну видаліть папку [profiles] в тій же директорії, що і [karing.exe]',
			'SettingsScreen.accessibility' => 'Доступність',
			'SettingsScreen.handleKaringScheme' => 'Обробити виклик karing://',
			'SettingsScreen.handleClashScheme' => 'Обробити виклик clash://',
			'SettingsScreen.handleSingboxScheme' => 'Обробити виклик sing-box://',
			'SettingsScreen.alwayOnVPN' => 'Завжди увімкнене з\'єднання',
			'SettingsScreen.disconnectAfterSleep' => 'Відключитися після сну системи',
			'SettingsScreen.removeSystemVPNConfig' => 'Видалити системну конфігурацію VPN',
			'SettingsScreen.timeConnectOrDisconnect' => 'Заплановане підключення/відключення',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN має бути підключений, щоб набрати чинності; після ввімкнення [Автоматичний сон] буде вимкнено',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'Інтервал підключення/відключення не може бути меншим за ${p} хвилин',
			'SettingsScreen.disableFontScaler' => 'Вимкнути масштабування шрифтів (Потрібен перезапуск)',
			'SettingsScreen.autoOrientation' => 'Повертати разом з екраном',
			'SettingsScreen.restartTakesEffect' => 'Набере чинності після перезапуску',
			'SettingsScreen.reconnectTakesEffect' => 'Набере чинності після перепідключення',
			'SettingsScreen.resetSettings' => 'Скинути налаштування',
			'SettingsScreen.cleanCache' => 'Очистити кеш',
			'SettingsScreen.cleanCacheDone' => 'Очищення завершено',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Оновити версію ${p}',
			'SettingsScreen.follow' => 'Слідкуйте за нами',
			'SettingsScreen.contactUs' => 'Зв\'яжіться з нами',
			'SettingsScreen.supportUs' => 'Підтримайте нас',
			'SettingsScreen.rateInApp' => 'Оцініть нас',
			'SettingsScreen.rateInAppStore' => 'Оцініть нас в AppStore',
			'UserAgreementScreen.privacyFirst' => 'Ваша конфіденційність понад усе',
			'UserAgreementScreen.agreeAndContinue' => 'Прийняти та продовжити',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'Нова версія [${p}] готова',
			'VersionUpdateScreen.update' => 'Перезапустити для оновлення',
			'VersionUpdateScreen.cancel' => 'Не зараз',
			'CommonWidget.diableAlwayOnVPN' => 'Якщо [Завжди увімкнений VPN] увімкнено, вимкніть його та спробуйте підключитися знову',
			'CommonWidget.resetPort' => 'Будь ласка, змініть порт на інший доступний порт або закрийте програму, що займає порт.',
			'main.tray.menuOpen' => 'Відкрити',
			'main.tray.menuExit' => 'Вийти',
			'meta.enable' => 'Увімкнути',
			'meta.disable' => 'Вимкнути',
			'meta.bydefault' => 'За замовчуванням',
			'meta.filter' => 'Фільтр',
			'meta.filterMethod' => 'Метод фільтрації',
			'meta.include' => 'Включити',
			'meta.exclude' => 'Виключити',
			'meta.all' => 'Усі',
			'meta.prefer' => 'Переважно',
			'meta.only' => 'Лише',
			'meta.open' => 'Відкрити',
			'meta.close' => 'Закрити',
			'meta.quit' => 'Вийти',
			'meta.add' => 'Додати',
			'meta.addSuccess' => 'Успішно додано',
			'meta.addFailed' => ({required Object p}) => 'Не вдалося додати:${p}',
			'meta.remove' => 'Видалити',
			'meta.removeConfirm' => 'Ви впевнені, що хочете видалити?',
			'meta.edit' => 'Редагувати',
			'meta.view' => 'Перегляд',
			'meta.more' => 'Більше',
			'meta.tips' => 'Інфо',
			'meta.copy' => 'Копіювати',
			'meta.paste' => 'Вставити',
			'meta.cut' => 'Вирізати',
			'meta.save' => 'Зберегти',
			'meta.ok' => 'Ок',
			'meta.cancel' => 'Скасувати',
			'meta.feedback' => 'Зворотний зв\'язок',
			'meta.feedbackContent' => 'Зміст зворотного зв\'язку',
			'meta.feedbackContentHit' => 'Обов\'язково, до 500 символів',
			'meta.feedbackContentCannotEmpty' => 'Зміст зворотного зв\'язку не може бути порожнім',
			'meta.faq' => 'FAQ',
			'meta.htmlTools' => 'Набір інструментів HTML',
			'meta.download' => 'Завантажити',
			'meta.upload' => 'Завантажити',
			'meta.downloadSpeed' => 'Швидкість завантаження',
			'meta.uploadSpeed' => 'Швидкість відвантаження',
			'meta.loading' => 'Завантаження...',
			'meta.convert' => 'Конвертувати',
			'meta.check' => 'Перевірити',
			'meta.detect' => 'Виявити',
			'meta.cache' => 'Кеш',
			'meta.days' => 'Днів',
			'meta.hours' => 'Годин',
			'meta.minutes' => 'Хвилин',
			'meta.seconds' => 'Секунд',
			'meta.milliseconds' => 'Мілісекунд',
			'meta.tolerance' => 'Допуск',
			'meta.dateTimePeriod' => 'Період часу',
			'meta.protocol' => 'Протокол',
			'meta.search' => 'Пошук',
			'meta.custom' => 'Налаштовуваний',
			'meta.inbound' => 'Вхідний',
			'meta.outbound' => 'Вихідний',
			'meta.destination' => 'Призначення',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Підключити',
			'meta.disconnect' => 'Відключити',
			'meta.reconnect' => 'Перепідключити',
			'meta.connected' => 'Підключено',
			'meta.disconnected' => 'Відключено',
			'meta.connecting' => 'Підключення',
			'meta.connectTimeout' => 'Час очікування підключення',
			'meta.timeout' => 'Тайм-аут',
			'meta.timeoutDuration' => 'Тривалість тайм-ауту',
			'meta.runDuration' => 'Тривалість виконання',
			'meta.latency' => 'Затримка',
			'meta.latencyTest' => 'Перевірка затримки',
			'meta.language' => 'Мова',
			'meta.next' => 'Далі',
			'meta.done' => 'Готово',
			'meta.apply' => 'Застосувати',
			'meta.refresh' => 'Оновити',
			'meta.retry' => 'Повторити спробу?',
			'meta.update' => 'Оновити',
			'meta.updateInterval' => 'Інтервал оновлення',
			'meta.updateInterval5mTips' => 'Мінімум: 5 хв',
			'meta.updateFailed' => ({required Object p}) => 'Помилка оновлення:${p}',
			'meta.samplingUnit' => 'Одиниця часу вибірки',
			'meta.queryResultCount' => 'Кількість результатів запиту',
			'meta.queryLimit' => ({required Object p}) => 'Відображати до ${p} даних',
			'meta.none' => 'Немає',
			'meta.start' => 'Старт',
			'meta.pause' => 'Пауза',
			'meta.reset' => 'Скинути',
			'meta.submit' => 'Надіслати',
			'meta.user' => 'Користувач',
			'meta.account' => 'Обліковий запис',
			'meta.password' => 'Пароль',
			'meta.decryptPassword' => 'Пароль розшифровки',
			'meta.required' => 'Обов\'язково',
			'meta.type' => 'Тип',
			'meta.path' => 'Шлях',
			'meta.local' => 'Локальний',
			'meta.remote' => 'Віддалений',
			'meta.other' => 'Інше',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'Некоректний URL',
			'meta.urlCannotEmpty' => 'Посилання не може бути порожнім',
			'meta.urlTooLong' => 'URL занадто довгий (>8182)',
			'meta.copyUrl' => 'Копіювати посилання',
			'meta.openUrl' => 'Відкрити посилання',
			'meta.shareUrl' => 'Поділитися посиланням',
			'meta.speedTestUrl' => 'URL тесту швидкості',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'Статичний IP',
			'meta.staticIPTips' => 'Вам потрібно увімкнути [TUN HijackDNS] або [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'Постачальник VPN',
			'meta.domainSuffix' => 'Суфікс домену',
			'meta.domain' => 'Домен',
			'meta.domainKeyword' => 'Ключове слово домену',
			'meta.domainRegex' => 'Регулярний вираз домену',
			'meta.ip' => 'IP',
			'meta.port' => 'Порт',
			'meta.portRange' => 'Діапазон портів',
			'meta.appPackage' => 'Id пакета програми',
			'meta.processName' => 'Назва процесу',
			'meta.processPath' => 'Шлях до процесу',
			'meta.processDir' => 'Директорія процесу',
			'meta.systemProxy' => 'Системний проксі',
			'meta.percentage' => 'Відсоток',
			'meta.statistics' => 'Статистика',
			'meta.statisticsAndAnalysis' => 'Статистика та аналіз',
			'meta.statisticsDataDesensitize' => 'Десенсибілізація даних',
			'meta.statisticsDataDesensitizeTips' => 'Назва процесу/ідентифікатор пакета/цільовий домен/цільовий IP тощо будуть замінені на * і збережені після десенсибілізації',
			'meta.records' => 'Записи',
			'meta.requestRecords' => 'Записи запитів',
			'meta.netInterfaces' => 'Мережеві інтерфейси',
			'meta.netSpeed' => 'Швидкість',
			'meta.memoryTrendChart' => 'Графік тенденції пам\'яті',
			'meta.goroutinesTrendChart' => 'Графік тенденції GoRoutines',
			'meta.trafficTrendChart' => 'Графік тенденції трафіку',
			'meta.trafficDistributionChart' => 'Графік розподілу трафіку',
			'meta.connectionChart' => 'Графік тенденції підключень',
			'meta.memoryChart' => 'Графік тенденції пам\'яті',
			'meta.trafficStatistics' => 'Статистика трафіку',
			'meta.traffic' => 'Трафік',
			'meta.trafficTotal' => 'Загальний трафік',
			'meta.trafficProxy' => 'Проксі-трафік',
			'meta.trafficDirect' => 'Прямий трафік',
			'meta.website' => 'Веб-сайт',
			'meta.memory' => 'Пам\'ять',
			'meta.outboundMode' => 'Вихідний режим',
			'meta.rule' => 'Правило',
			'meta.global' => 'Глобальний',
			'meta.qrcode' => 'QR-код',
			'meta.qrcodeTooLong' => 'Текст занадто довгий для відображення',
			'meta.qrcodeShare' => 'Поділитися QR-кодом',
			'meta.textToQrcode' => 'Текст у QR-код',
			'meta.qrcodeScan' => 'Сканувати QR-код',
			'meta.qrcodeScanResult' => 'Результат сканування',
			'meta.qrcodeScanFromImage' => 'Сканувати із зображення',
			'meta.qrcodeScanResultFailed' => 'Не вдалося проаналізувати зображення, переконайтеся, що знімок екрана є коректним QR-кодом',
			'meta.qrcodeScanResultEmpty' => 'Результат сканування порожній',
			'meta.screenshot' => 'Знімок екрана',
			'meta.backupAndSync' => 'Резервне копіювання та синхронізація',
			'meta.autoBackup' => 'Автоматичне резервне копіювання',
			'meta.noProfileGotAutoBackup' => 'Якщо такі дані, як [${_root.meta.myProfiles}], втрачені, ви можете відновити їх із [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] або інших джерел резервного копіювання (таких як iCloud або Webdav тощо)',
			'meta.autoBackupAddProfile' => 'Після додавання профілю',
			'meta.autoBackupRemoveProfile' => 'Після видалення профілю',
			'meta.profile' => 'Профіль',
			'meta.currentProfile' => 'Поточний профіль',
			'meta.importAndExport' => 'Імпорт та експорт',
			'meta.import' => 'Імпорт',
			'meta.importFromUrl' => 'Імпорт з URL',
			'meta.export' => 'Експорт',
			'meta.send' => 'Надіслати',
			'meta.receive' => 'Отримати',
			'meta.sendConfirm' => 'Підтвердити надсилання?',
			'meta.termOfUse' => 'Умови обслуговування',
			'meta.privacyPolicy' => 'Політика конфіденційності',
			'meta.about' => 'Про програму',
			'meta.name' => 'Назва',
			'meta.version' => 'Версія',
			'meta.notice' => 'Повідомлення',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Дія:${p}\nПричина:${p1}',
			'meta.sort' => 'Змінити порядок',
			'meta.novice' => 'Режим новачків',
			'meta.willCompleteAfterRebootInstall' => 'Будь ласка, перезавантажте пристрій, щоб завершити встановлення системного розширення',
			'meta.willCompleteAfterRebootUninstall' => 'Будь ласка, перезавантажте пристрій, щоб завершити видалення системного розширення',
			'meta.requestNeedsUserApproval' => '1. Будь ласка, [Дозвольте] Karing встановлювати системні розширення в [Параметри системи]-[Конфіденційність та безпека]\n2. [Параметри системи]-[Загальні]-[Об\'єкти входу Розширення]-[Мережеве розширення] увімкніть [karingServiceSE]\nперепідключіться після завершення',
			'meta.FullDiskAccessPermissionRequired' => 'Будь ласка, увімкніть дозвіл [karingServiceSE] у [Параметри системи]-[Конфіденційність та безпека]-[Повний доступ до диска] та перепідключіться',
			'meta.tvMode' => 'Режим ТБ',
			'meta.recommended' => 'Рекомендовано',
			'meta.innerError' => ({required Object p}) => 'Внутрішня помилка:${p}',
			'meta.logicOperation' => 'Логічна операція',
			'meta.share' => 'Поділитися',
			'meta.candidateWord' => 'Слова-кандидати',
			'meta.keywordOrRegx' => 'Ключові слова/Регулярні',
			'meta.importFromClipboard' => 'Імпорт з буфера обміну',
			'meta.exportToClipboard' => 'Експорт у буфер обміну',
			'meta.server' => 'Сервер',
			'meta.ads' => 'Реклама',
			'meta.adsRemove' => 'Видалити рекламу',
			'meta.donate' => 'Пожертвувати',
			'meta.diversion' => 'Відхилення',
			'meta.diversionRules' => 'Правила відхилення',
			'meta.diversionCustomGroup' => 'Спеціальна група відхилення',
			'meta.urlTestCustomGroup' => 'Спеціальний автовибір',
			'meta.setting' => 'Налаштування',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Синхронізація через LAN',
			'meta.lanSyncNotQuitTips' => 'Не виходьте з цього інтерфейсу до завершення синхронізації',
			'meta.deviceNoSpace' => 'Недостатньо місця на диску',
			'meta.hideSystemApp' => 'Приховати системні програми',
			'meta.hideAppIcon' => 'Приховати піктограми програм',
			'meta.hideDockIcon' => 'Приховати піктограму Dock',
			'meta.remark' => 'Примітка',
			'meta.remarkExist' => 'Примітка вже існує, будь ласка, використовуйте іншу назву',
			'meta.remarkCannotEmpty' => 'Примітки не можуть бути порожніми',
			'meta.remarkTooLong' => 'Примітки до 32 символів',
			'meta.openDir' => 'Відкрити директорію файлів',
			'meta.fileChoose' => 'Вибрати файл',
			'meta.filePathCannotEmpty' => 'Шлях до файлу не може бути порожнім',
			'meta.fileNotExist' => ({required Object p}) => 'Файл не існує:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Некоректний тип файлу:${p}',
			'meta.uwpExemption' => 'Винятки ізоляції мережі UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Отримати профіль',
			'meta.addProfile' => 'Додати профіль',
			'meta.myProfiles' => 'Мої профілі',
			'meta.profileEdit' => 'Редагування профілю',
			'meta.profileEditUrlExist' => 'URL-адреса вже існує, будь ласка, використовуйте іншу URL-адресу',
			'meta.profileEditReloadAfterProfileUpdate' => 'Перезавантажити після оновлення профілю',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Запускати тести затримки після автоматичного оновлення профілю',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN має бути підключений, а [Перезавантажити після оновлення профілю] увімкнено',
			'meta.profileEditTestLatencyAutoRemove' => 'Автоматично видаляти сервери, які не пройшли тести затримки',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Спробуйте до 3 разів',
			'meta.profileImport' => 'Імпортувати файл профілю',
			'meta.profileAddUrlOrContent' => 'Додати посилання на профіль',
			'meta.profileExists' => 'Профіль вже існує, будь ласка, не додавайте його повторно',
			'meta.profileUrlOrContent' => 'Посилання/вміст профілю',
			'meta.profileUrlOrContentHit' => 'Посилання/вміст профілю [Обов\'язково] (Підтримує посилання на профілі Clash, V2ray (підтримується пакетно), Stash, Karing, Sing-box, Shadowsocks, Sub)',
			'meta.profileUrlOrContentCannotEmpty' => 'Посилання на профіль не може бути порожнім',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Неправильний формат, будь ласка, виправте його та додайте знову:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Не вдалося додати: ${p}, будь ласка, спробуйте змінити [UserAgent] і спробуйте знову, або скористайтеся вбудованим браузером пристрою, щоб відкрити посилання на конфігурацію та імпортувати файл конфігурації, завантажений браузером, у цю програму',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Не вдалося додати: ${p}, будь ласка, увімкніть проксі або змініть поточний проксі-вузол і спробуйте знову',
			'meta.profileAddParseFailed' => 'Не вдалося проаналізувати профіль',
			'meta.profileAddNoServerAvaliable' => 'Немає доступних серверів, переконайтеся, що посилання на профіль або файл профілю коректні; якщо ваш профіль з GitHub, отримайте посилання за допомогою кнопки [Raw] на сторінці',
			'meta.profileAddWrapSuccess' => 'Профіль успішно згенеровано, перейдіть до [${_root.meta.myProfiles}] для перегляду',
			'diversionRulesKeep' => 'Зберегти [${_root.meta.diversionRules}] від [${_root.meta.isp}]',
			'diversionCustomGroupPreset' => 'Попередньо встановлена [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Примітка: Увімкнені елементи будуть додані/перезаписані в [${_root.meta.diversionCustomGroup}] та [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Примітка: Після додавання вам може знадобитися вручну відрегулювати порядок, інакше нещодавно додане відхилення може не набрати чинності',
			'rulesetEnableTips' => 'Порада: Після ввімкнення параметрів перейдіть до [${_root.meta.diversionRules}], щоб встановити відповідні правила, інакше вони не наберуть чинності',
			'ispUserAgentTips' => '[${_root.meta.isp}] надсилатиме дані різних типів підписки на основі [UserAgent] у запиті [HTTP]',
			'ispDiversionTips' => '[${_root.meta.isp}] надає правила відхилення трафіку; підписки типу [V2Ray] не підтримують правила відхилення трафіку',
			'isp.bind' => 'Прив\'язати до [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Відв\'язати[${p}]',
			'isp.faq' => ({required Object p}) => 'FAQ[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'Слідкувати[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] Некоректний або термін дії закінчився',
			'permission.camera' => 'Камера',
			'permission.screen' => 'Запис екрана',
			'permission.appQuery' => 'Отримати список програм',
			'permission.request' => ({required Object p}) => 'Увімкнути дозвіл [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'Будь ласка, увімкніть дозвіл [${p}]',
			'tls.insecure' => 'Пропустити перевірку сертифіката',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Увімкнути фрагментацію TLS',
			'tls.fragmentSize' => 'Розмір фрагмента TLS',
			'tls.fragmentSleep' => 'Пауза фрагментації TLS',
			_ => null,
		} ?? switch (path) {
			'tls.mixedCaseSNIEnable' => 'Увімкнути змішаний регістр SNI TLS',
			'tls.paddingEnable' => 'Увімкнути заповнення (Padding) TLS',
			'tls.paddingSize' => 'Розмір заповнення (Padding) TLS',
			'outboundRuleMode.currentSelected' => 'Поточний вибраний',
			'outboundRuleMode.urltest' => 'Автовибір',
			'outboundRuleMode.direct' => 'Прямий',
			'outboundRuleMode.block' => 'Блокувати',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Оновлення профілю',
			'theme.light' => 'Світла',
			'theme.dark' => 'Темна',
			'theme.auto' => 'Авто',
			'downloadProxyStrategy' => 'Канал завантаження',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Підключитися до DNS-сервера через проксі-сервер для вирішення доменного імені\n[${_root.dnsProxyResolveMode.direct}]: Підключитися безпосередньо до DNS-сервера для вирішення доменного імені\n[${_root.dnsProxyResolveMode.fakeip}]: Проксі-сервер вирішує доменне ім\'я від вашого імені; якщо ви розірвете VPN-з\'єднання, вашу програму, можливо, доведеться перезапустити; ефективно лише для вхідного трафіку [TUN]',
			'routeFinal' => 'final',
			'protocolSniff' => 'Сніффінг протоколу',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Будь ласка, використовуйте [${p}]',
			'turnOffPrivateDirect' => 'Будь ласка, спочатку увімкніть [Пряме підключення до приватної мережі]',
			'targetConnectFailed' => ({required Object p}) => 'Не вдалося підключитися до [${p}]. Будь ласка, переконайтеся, що пристрої знаходяться в одній локальній мережі',
			'appleTVSync' => 'Синхронізувати поточну конфігурацію ядра з Apple TV - Karing',
			'appleTVSyncDone' => 'Синхронізація завершена. Перейдіть до Apple TV - Karing, щоб розпочати підключення/перезапустити підключення',
			'appleTVRemoveCoreConfig' => 'Видалити конфігурацію ядра Apple TV - Karing',
			'appleTVRemoveCoreConfigDone' => 'Конфігурацію ядра Apple TV - Karing видалено; службу VPN відключено',
			'appleTVUrlInvalid' => 'Некоректний URL, відкрийте Apple TV - Karing і відскануйте QR-код, що відображається в Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] не має цієї функції, оновіться та спробуйте ще раз',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'Основна версія ядра не збігається, оновіть [${p}] і спробуйте ще раз',
			'remoteProfileEditConfirm' => 'Після оновлення профілю зміни вузлів будуть відновлені. Продовжити?',
			'mustBeValidHttpsURL' => 'Має бути коректним https URL',
			'fileNotExistReinstall' => ({required Object p}) => 'Файл відсутній [${p}], будь ласка, перевстановіть',
			'noNetworkConnect' => 'Немає підключення до Інтернету',
			'sudoPassword' => 'пароль sudo (необхідний для режиму TUN)',
			'turnOffNetworkBeforeInstall' => 'Рекомендується перейти в [Режим польоту] перед встановленням оновлення',
			'latencyTestResolveIP' => 'При ручній перевірці вирішувати вихідний IP',
			'latencyTestConcurrency' => 'Паралелізм',
			'edgeRuntimeNotInstalled' => 'На поточному пристрої не встановлено середовище виконання Edge WebView2, тому сторінку неможливо відобразити. Будь ласка, завантажте та встановіть середовище виконання Edge WebView2 (x64), перезапустіть програму та спробуйте ще раз.',
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
