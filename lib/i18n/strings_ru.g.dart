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
class TranslationsRu with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenRu AboutScreen = _TranslationsAboutScreenRu._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenRu BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenRu._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenRu DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenRu._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenRu DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenRu._(_root);
	@override late final _TranslationsDiversionRulesScreenRu DiversionRulesScreen = _TranslationsDiversionRulesScreenRu._(_root);
	@override late final _TranslationsDnsSettingsScreenRu DnsSettingsScreen = _TranslationsDnsSettingsScreenRu._(_root);
	@override late final _TranslationsFileContentViewerScreenRu FileContentViewerScreen = _TranslationsFileContentViewerScreenRu._(_root);
	@override late final _TranslationsHomeScreenRu HomeScreen = _TranslationsHomeScreenRu._(_root);
	@override late final _TranslationsLaunchFailedScreenRu LaunchFailedScreen = _TranslationsLaunchFailedScreenRu._(_root);
	@override late final _TranslationsMyProfilesMergeScreenRu MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenRu._(_root);
	@override late final _TranslationsNetCheckScreenRu NetCheckScreen = _TranslationsNetCheckScreenRu._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenRu NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenRu._(_root);
	@override late final _TranslationsNetConnectionsScreenRu NetConnectionsScreen = _TranslationsNetConnectionsScreenRu._(_root);
	@override late final _TranslationsPerAppAndroidScreenRu PerAppAndroidScreen = _TranslationsPerAppAndroidScreenRu._(_root);
	@override late final _TranslationsRegionSettingsScreenRu RegionSettingsScreen = _TranslationsRegionSettingsScreenRu._(_root);
	@override late final _TranslationsServerSelectScreenRu ServerSelectScreen = _TranslationsServerSelectScreenRu._(_root);
	@override late final _TranslationsSettingsScreenRu SettingsScreen = _TranslationsSettingsScreenRu._(_root);
	@override late final _TranslationsUserAgreementScreenRu UserAgreementScreen = _TranslationsUserAgreementScreenRu._(_root);
	@override late final _TranslationsVersionUpdateScreenRu VersionUpdateScreen = _TranslationsVersionUpdateScreenRu._(_root);
	@override late final _TranslationsCommonWidgetRu CommonWidget = _TranslationsCommonWidgetRu._(_root);
	@override late final _TranslationsMainRu main = _TranslationsMainRu._(_root);
	@override late final _TranslationsMetaRu meta = _TranslationsMetaRu._(_root);
	@override String get diversionRulesKeep => 'Сохраните [${_root.meta.isp}]${_root.meta.diversionRules}';
	@override String get diversionCustomGroupPreset => 'Шаблоны для личных правил';
	@override String get diversionCustomGroupPresetTips => 'На основе выбранных шаблонов будут созданы/перезаписаны правила в[${_root.meta.diversionCustomGroup}] и в [${_root.meta.diversionRules}].';
	@override String get diversionCustomGroupAddTips => 'Примечание. Возможно, вам придется вручную настроить порядок правил после их добавления, иначе добавленное перенаправление может работать не так, как ожидалось.';
	@override String get rulesetEnableTips => 'Совет: После включения опции перейдите в [${_root.meta.diversionRules}] и установите их, иначе опция не будет действовать';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] будет доставлять различные типы данных о подписке на основе [UserAgent] в запросе [HTTP].';
	@override String get ispDiversionTips => '${_root.meta.diversionRules}, предоставляемые подписками [${_root.meta.isp}] типа [V2Ray], не поддерживаются.';
	@override late final _TranslationsIspRu isp = _TranslationsIspRu._(_root);
	@override late final _TranslationsPermissionRu permission = _TranslationsPermissionRu._(_root);
	@override late final _TranslationsTlsRu tls = _TranslationsTlsRu._(_root);
	@override late final _TranslationsOutboundRuleModeRu outboundRuleMode = _TranslationsOutboundRuleModeRu._(_root);
	@override late final _TranslationsDnsProxyResolveModeRu dnsProxyResolveMode = _TranslationsDnsProxyResolveModeRu._(_root);
	@override late final _TranslationsProxyStrategyRu proxyStrategy = _TranslationsProxyStrategyRu._(_root);
	@override late final _TranslationsReloadReasonRu reloadReason = _TranslationsReloadReasonRu._(_root);
	@override late final _TranslationsThemeRu theme = _TranslationsThemeRu._(_root);
	@override String get downloadProxyStrategy => 'Канал загрузки';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: подключиться к DNS-серверу через прокси-сервер для разрешения доменного имени\n[${_root.dnsProxyResolveMode.direct}]: подключиться напрямую к DNS-серверу для разрешения доменного имени\n[ ${_root.dnsProxyResolveMode.fakeip}]: через прокси-сервер Сервер разрешает доменное имя от вашего имени; если вы отключитесь от VPN, может потребоваться перезапуск вашего приложения; применяется только к входящему трафику из [TUN]';
	@override String get routeFinal => 'Final';
	@override String get protocolSniff => 'Определение протокола';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Пожалуйста, используйте [${p}]';
	@override String get turnOffPrivateDirect => 'Пожалуйста, сначала включите [Прямое подключение к частной сети]';
	@override String targetConnectFailed({required Object p}) => 'Не удалось подключиться к [${p}]. Убедитесь, что устройство находится в той же локальной сети.';
	@override String get appleTVSync => 'Синхронизация текущей базовой конфигурации с Apple TV - Karing';
	@override String get appleTVSyncDone => 'Синхронизация завершена, перейдите в Apple TV — Karing, чтобы открыть/перезапустить соединение.';
	@override String get appleTVRemoveCoreConfig => 'Удаление Apple TV — базовая конфигурация Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV — основной профиль Karing удален; VPN-сервис отключен;';
	@override String get appleTVUrlInvalid => 'Неверный URL-адрес. Откройте Apple TV — Karing, отсканируйте QR-код, отображаемый Karing.';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] не имеет этой функции, обновите его и повторите попытку.';
	@override String appleCoreVersionNotMatch({required Object p}) => 'Основная версия ядра не совпадает, пожалуйста, обновите [${p}] и попробуйте еще раз';
	@override String get remoteProfileEditConfirm => 'После обновления конфигурации изменения узла будут восстановлены. Продолжить?';
	@override String get mustBeValidHttpsURL => 'https URL должен быть действительным';
	@override String fileNotExistReinstall({required Object p}) => 'Файл отсутствует [${p}], пожалуйста, переустановите';
	@override String get noNetworkConnect => 'Нет подключения к Интернету';
	@override String get sudoPassword => 'Пароль sudo (требуется для режима TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Перед установкой обновления рекомендуется переключиться в [Режим полета].';
	@override String get latencyTestResolveIP => 'При ручном определении анализируется исходящий IP-адрес';
	@override String get latencyTestConcurrency => 'Параллелизм';
	@override String get edgeRuntimeNotInstalled => 'Среда выполнения Edge WebView2 не установлена ​​на текущем устройстве, и страница не может быть отображена. Загрузите и установите среду выполнения Edge WebView2 (x64), перезапустите приложение и повторите попытку.';
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
class _TranslationsAboutScreenRu implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Ссылка на установку';
	@override String get installTime => 'Время установки';
	@override String get versionChannel => 'Канал автоматического обновления';
	@override String get autoDownloadPkg => 'Автоматически загружать пакеты обновлений';
	@override String get disableAppImproveData => 'Применить данные улучшения';
	@override String get disableUAReportTip => 'Включение параметра [${_root.AboutScreen.disableAppImproveData}] помогает нам улучшить стабильность и удобство использования продукта; мы не собираем никаких персональных данных. Отключение этого параметра предотвратит сбор каких-либо данных приложением.';
	@override String get devOptions => 'Параметры разработчика';
	@override String get enableDebugLog => 'Включить debug-лог';
	@override String get viewFilsContent => 'Посмотреть файлы';
	@override String get enablePprof => 'Включить pprof';
	@override String get pprofPanel => 'pprof панель';
	@override String get allowRemoteAccessPprof => 'Разрешить удаленный доступ к ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Разрешить удаленный доступ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Использовать исходную конфигурацию Sing-box';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenRu implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Адрес сервера';
	@override String get webdavRequired => 'Не может быть пустым';
	@override String get webdavLoginFailed => 'Ошибка входа:';
	@override String get webdavListFailed => 'Не удалось получить список файлов:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenRu implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'Неверный [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => 'Неверный [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'Неверный [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'Неверный [Rule Set]:${p}, URL-адрес должен быть действительным URL-адресом https двоичного файлом с расширением .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => 'Неверный [RuleSet(build-in)]:${p}, формат: geosite:xxx или geoip:xxx или acl:xxx, а xxx должно быть допустимым именем правила.';
	@override String invalidPackageId({required Object p}) => 'Неверный [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'Совет: после сохранения перейдите в раздел [${_root.meta.diversionRules}] и настройте их, иначе изменения не будут действовать.';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenRu implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тест правил перенаправления';
	@override String get rule => 'Правило:';
	@override String get outbound => 'Прокси-сервер:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenRu implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Совет: Правила применяются по очереди сверху вниз. Если ни одно соответствие не обнаружено, то действует правило [Final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenRu implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP не может быть пустой';
	@override String get urlCanNotEmpty => 'URL не может быть пустой';
	@override String error({required Object p}) => 'Неподдерживаемый тип:${p}';
	@override String get dnsDesc => 'Первый столбец данных — это задержка запроса при прямом соединении;\nВторой столбец, если включено [[действующий поток] Разрешать DNS через прокси-сервер]: данные — это задержка запроса, пересылаемого через текущий прокси-сервер; Если выключено [[действующий поток] Разрешать DNS через прокси-сервер]: данные - это задержка запроса при прямом соединении.';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenRu implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Просмотр содержимого файла';
	@override String get clearFileContent => 'Вы уверены, что хотите очистить содержимое файла?';
	@override String get clearFileContentTips => 'Вы уверены, что  хотите очистить содержимое файла профиля? Очистка файла профиля может привести к потере данных или некорректной работе приложения. Действуйте осторожно.';
}

// Path: HomeScreen
class _TranslationsHomeScreenRu implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Выберите сервер';
	@override String get invalidServer => 'Не работает. Пожалуйста, выберите другой';
	@override String get disabledServer => 'Был отключен. Пожалуйста, выберите другой';
	@override String get expiredServer => 'Нет доступного сервера: возможно, профиль устарел или отключен';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'Пожалуйста, настройте [Быструю ссылку] перед использованием';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}], и соединение может оказаться невозможным из-за ограничений системной памяти';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}] могут привести к медленному или недоступному соединению.';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenRu implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'Не удалось запустить приложение [Неверное имя процесса], переустановите приложение в отдельную папку';
	@override String get invalidProfile => 'Не удалось запустить приложение [Не удалось получить доступ к профилю], переустановите приложение';
	@override String get invalidVersion => 'Не удалось запустить приложение [Неверная версия], переустановите приложение';
	@override String get systemVersionLow => 'Не удалось запустить приложение [Слишком низкая версия системы]';
	@override String get invalidInstallPath => 'Путь установки недействителен, переустановите его по допустимому пути';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenRu implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Объединение профилей';
	@override String get profilesMergeTarget => 'Целевой профиль';
	@override String get profilesMergeSource => 'Профиль - источник';
	@override String get profilesMergeTips => 'Совет: Настройки перенаправления для профиля - источника будут удалены.';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenRu implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Диагностика сети';
	@override String get warn => 'Примечание. Из-за влияния сетевой среды и правил перенаправления результаты теста не полностью эквивалентны реальным результатам.';
	@override String get invalidDomain => 'Неверное имя домена';
	@override String get connectivity => 'Подключение к сети';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4 Тест подключения[${p}] неудачен';
	@override String get connectivityTestIpv4Ok => 'Ipv4 Соединение выполнено успешно';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6 Тест подключения[${p}] неудачен. Возможно, ваша сеть не поддерживает ipv6.';
	@override String get connectivityTestIpv6Ok => 'Ipv6 Соединение выполнено успешно';
	@override String get connectivityTestOk => 'Сеть подключена к Интернету';
	@override String get connectivityTestFailed => 'Ваша сеть не подключена к Интернету';
	@override String get remoteRulesetsDownloadOk => 'Все успешно скачано';
	@override String get remoteRulesetsDownloadNotOk => 'Сбой загрузки';
	@override String get outbound => 'Прокси-сервер';
	@override String outboundOk({required Object p}) => '[${p}]Соединение установлено успешно';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}]Соединение не удалось\nошибка:[${p2}]';
	@override String get dnsServer => 'DNS сервер';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS Разобрано успешно\nDNS правило:[${p2}]\nЗадержка:[${p3} ms]\nадрес:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS Не удалось выполнить синтаксический анализ\n правило:[${p2}]\nошибка:[${p3}]';
	@override String get host => 'HTTP соединение';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nПравила перенаправления:[${p2}]\nПрокси-сервер:[${p3}]';
	@override String get hostConnectionOk => 'Соединение установлено успешно';
	@override String hostConnectionFailed({required Object p}) => 'Соединение не удалось:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenRu implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domain/IP';
	@override String get app => 'Приложение';
	@override String get rule => 'Правило';
	@override String get chain => 'Исходящий';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenRu implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Скопировано в CSV формате';
	@override String get selectType => 'Выберите тип перенаправления';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenRu implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Проксируемые приложения';
	@override String get whiteListMode => 'Режим белого списка';
	@override String get whiteListModeTip => 'Если включено: перенаправляются через прокси-сервер только те приложения, которые были отмечены. Если выключено: перенаправляются через прокси-сервер только те приложения, которые не были отмечены.';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenRu implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Страна или регион';
	@override String get Regions => 'Совет: Пожалуйста, правильно укажите текущую страну или регион. В противном случае это может вызвать проблемы с перенаправлением в сети';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenRu implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Выбор сервера';
	@override String get autoSelectServer => 'Автовыбор сервера с наименьшей задержкой';
	@override String get recentUse => 'Недавно использованные';
	@override String get myFav => 'Мои избранные';
	@override String selectLocal({required Object p}) => 'Выбранный сервер является локальным, и может работать неправильно:${p}';
	@override String get selectRequireEnableIPv6 => 'Выбранный сервер имеет адрес IPv6 и требует [Включить IPv6]';
	@override String get selectDisabled => 'Сервер отключен';
	@override String get error404 => 'При  измерении задержки произошла ошибка. Проверьте, существует ли профиль с таким содержимым.';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenRu implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Получить трафик';
	@override String get tutorial => 'Руководство';
	@override String get commonlyUsedRulesets => 'Коллекция наборов правил';
	@override String get htmlBoard => 'Веб-панель';
	@override String get dnsLeakDetection => 'Тест утечки DNS';
	@override String get proxyLeakDetection => 'Обнаружение утечки наличия прокси';
	@override String get speedTest => 'Тест скорости';
	@override String get rulesetDirectDownlad => 'Правила прямой загрузки';
	@override String get hideUnusedDiversionGroup => 'Скрыть неактивные правила перенаправления трафика';
	@override String get disableISPDiversionGroup => 'Отключить правила перенаправления [${_root.meta.isp}]';
	@override String get portSettingRule => 'Действуют все правила';
	@override String get portSettingDirectAll => 'Всё подключено напрямую';
	@override String get portSettingProxyAll => 'Всё идёт через прокси';
	@override String get portSettingControl => 'Управление и синхронизация';
	@override String get portSettingCluster => 'Кластерный сервис';
	@override String get modifyPort => 'Изменить порт';
	@override String get modifyPortOccupied => 'Порт занят, используйте другой порт';
	@override String get ipStrategyTips => 'Перед включением убедитесь, что ваша сеть поддерживает IPv6, в противном случае нормальный доступ к части трафика будет невозможен';
	@override String get tunAppendHttpProxy => 'Подключите HTTP-прокси к VPN';
	@override String get tunAppendHttpProxyTips => 'Некоторые приложения будут обходить устройство виртуальной сетевой карты и напрямую подключаться к HTTP-прокси.';
	@override String get tunAllowBypassHttpProxyDomain => 'Домены, которым разрешено обходить HTTP-прокси';
	@override String get dnsEnableRule => 'Включить правила для DNS';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] Способ разрешения в DNS';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] Включить ECS';
	@override String get dnsTestDomain => 'Тестовое доменное имя';
	@override String get dnsTestDomainInvalid => 'Неверное доменное имя';
	@override String get dnsTypeOutbound => 'Прокси-сервер';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS-сервер';
	@override String get dnsEnableRuleTips => 'Если включено, доменное имя выберет соответствующий DNS-сервер для разрешения в соответствии с правилами перенаправления DNS.';
	@override String get dnsEnableFakeIpTips => 'После включения FakeIP, если VPN-соединение отключено, возможно, потребуется перезапустить приложение. Эту функцию необходимо включить в [Режиме TUN];';
	@override String get dnsTypeOutboundTips => 'Для разрешения доменных имен прокси-сервера рекомендуется использовать безопасный DNS';
	@override String get dnsTypeDirectTips => 'Разрешение доменного имени для [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Разрешение доменных имен для трафика через Proxy';
	@override String get dnsTypeResolverTips => 'Разрешение доменных имен для DNS-серверов';
	@override String get dnsAutoSetServer => 'Автоматически настроить сервер';
	@override String get dnsResetServer => 'Сбросить сервер';
	@override String get inboundDomainResolve => 'Разрешение входящих доменных имен';
	@override String get privateDirect => 'Прямое подключение к частной сети';
	@override String inboundDomainResolveTips({required Object p}) => 'Некоторые доменные имена без настроенных правил переадресации необходимо разрешить, прежде чем они смогут соответствовать правилам переадресации на основе IP; эта функция влияет на входящие запросы к порту прокси [${p}]';
	@override String get useRomoteRes => 'Использовать удаленные ресурсы';
	@override String get autoAppendRegion => 'Автоматически добавлять основные правила';
	@override String get autoSelect => 'Автовыбор';
	@override String get autoSelectServerIgnorePerProxyServer => 'Игнорировать [фронт/цепные] прокси-серверы';
	@override String get autoSelectServerInterval => 'Интервал проверок задержки';
	@override String get autoSelectSelectedHealthCheckInterval => 'Текущий интервал проверки работоспособности сервера';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Перетестировать после смены сети';
	@override String get autoSelectServerIntervalTips => 'Чем короче временной интервал, тем чаще обновляются данные о задержке сервера. Но это потребует больше ресурсов и энергии';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Если обнаружение не удалось, узел переключается; если при переключении узла не найдено ни одного доступного узла, группа повторно обнаруживается с задержкой.';
	@override String get autoSelectServerFavFirst => 'Предпочитать [Мои избранные]';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Обновить текущий сервер после измерения задержки вручную';
	@override String get autoSelectServerFavFirstTips => 'Если список [Мои избранные] не пуст, то будут использоваться серверы из [Мои избранные]';
	@override String get autoSelectServerFilter => 'Отфильтровать сервера';
	@override String autoSelectServerFilterTips({required Object p}) => 'Сервера с превышением задержки будут отфильтрованы; если после фильтрации ни один сервер не будет доступен, вместо него будут использоваться первые [${p}] серверы';
	@override String get autoSelectServerLimitedNum => 'Максимальное количество серверов';
	@override String get autoSelectServerLimitedNumTips => 'Если серверов больше этого числа, лишние будут отброшены.';
	@override String get numInvalid => 'Неправильный номер';
	@override String get hideInvalidServer => 'Скрыть нерабочие серверы';
	@override String get sortServer => 'Сортировка серверов';
	@override String get sortServerTips => 'Сортировать по задержке от низкой к высокой';
	@override String get selectServerHideRecommand => 'Скрыть [Рекомендуемые]';
	@override String get selectServerHideRecent => 'Скрыть [Недавно использованные]';
	@override String get selectServerHideFav => 'Скрыть [Мои избранные]';
	@override String get homeScreen => 'Настройка главного экрана';
	@override String get theme => 'Тема';
	@override String get widgetsAlpha => 'Прозрачность виджетов';
	@override String get widgetsEmpty => 'Виджет недоступен';
	@override String get backgroundImage => 'Фоновое изображение';
	@override String get myLink => 'Быстрая ссылка';
	@override String get autoConnectAfterLaunch => 'Автоматическое подключение после запуска';
	@override String get autoConnectAtBoot => 'Автоматическое подключение после запуска системы';
	@override String get autoConnectAtBootTips => 'Требуется поддержка системы; некоторые системы также могут потребовать включения [автозапуска].';
	@override String get hideAfterLaunch => 'Скрыть окно после запуска';
	@override String get autoSetSystemProxy => 'Установить системный прокси после подключения';
	@override String get bypassSystemProxy => 'Доменные имена, которым разрешено обходить системный прокси-сервер';
	@override String get disconnectWhenQuit => 'Отключаться при выходе из приложения';
	@override String get autoAddToFirewall => 'Автоматическое добавление правил брандмауэра';
	@override String get excludeFromRecent => 'Скрыть из недавних задач';
	@override String get wakeLock => 'Блокировка пробуждения';
	@override String get hideVpn => 'Скрыть значок VPN';
	@override String get hideVpnTips => 'Включение IPv6 приведет к сбою этой функции.';
	@override String get allowBypass => 'Разрешить приложениям обходить VPN';
	@override String get importSuccess => 'Импорт выполнен успешно';
	@override String get rewriteConfirm => 'Этот файл перезапишет существующую локальную конфигурацию. Продолжить?';
	@override String get mergePerapp => 'Объединить локальные списки [${_root.PerAppAndroidScreen.title}]';
	@override String get networkShare => 'Общий доступ к сети';
	@override String get frontProxy => 'Фронтальный/цепной прокси';
	@override String frontProxyTips({required Object p}) => 'Данные-> Фронтальный/цепной прокси-сервер [Несколько прокси-серверов: сверху вниз]-> Прокси-сервер [${p}]-> Целевой сервер';
	@override String get allowOtherHostsConnect => 'Разрешить подключение по локальной сети';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'Из-за системных ограничений после включения этой функции приложения на этом устройстве, использующие http для доступа к сети, могут не иметь возможности правильно подключиться к сети.';
	@override String get tunAutoRoute => 'Автоматический маршрут';
	@override String get tunAutoRedirect => 'Автоматическое перенаправление';
	@override String get tunStrictRoute => 'Строгий маршрут';
	@override String get tunStrictRouteTips => 'Если после включения общего доступа другие люди не смогут получить доступ к этому устройству, попробуйте отключить этот переключатель.';
	@override String get loopbackAddress => 'Петлевой адрес';
	@override String get enableCluster => 'Включить кластер прокси Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Разрешить подключение по локальной сети к кластеру';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Аутентификация прокси-кластера';
	@override String get tunMode => 'Режим TUN';
	@override String get tuni4Address => 'IP-адрес';
	@override String get tunModeTips => 'В режиме TUN весь трафик системы будет перенаправлен через соединение [В этом режиме вы можете оставить системный прокси отключенным]';
	@override String get tunModeRunAsAdmin => 'Для режима TUN требуются права администратора. Перезапустите приложение от имени администратора';
	@override String get tunStack => 'Stack';
	@override String get tunHijackTips => 'После закрытия DNS-запросы от TUN будут пересылаться напрямую на соответствующий DNS-сервер.';
	@override String get launchAtStartup => 'Запуск при включении';
	@override String get quitWhenSwitchSystemUser => 'Выйти из приложения при переключении пользователя';
	@override String get handleScheme => 'Схемы системного вызова';
	@override String get portableMode => 'Портативный режим';
	@override String get portableModeDisableTips => 'Если вам нужно выйти из портативного режима, выйдите из [karing] и вручную удалите папку [profiles] в том же каталоге, что и [karing.exe]';
	@override String get accessibility => 'Доступность';
	@override String get handleKaringScheme => 'Вызов karing://[параметры]';
	@override String get handleClashScheme => 'Вызов clash://[параметры]';
	@override String get handleSingboxScheme => 'Вызов sing-box://[параметры]';
	@override String get alwayOnVPN => 'всегда открытое соединение';
	@override String get disconnectAfterSleep => 'Отключение после спящего режима системы';
	@override String get removeSystemVPNConfig => 'Удалить профиль VPN';
	@override String get timeConnectOrDisconnect => 'Запланированное подключение/отключение';
	@override String get timeConnectOrDisconnectTips => 'Чтобы это заработало, необходимо подключить VPN; после его подключения [автоматическое засыпание] будет отключено';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Интервал подключения/отключения не может быть меньше ${p} минут.';
	@override String get disableFontScaler => 'Отключить масштабирование шрифта';
	@override String get autoOrientation => 'Следовать за поворотом экрана';
	@override String get restartTakesEffect => 'Требуется перезапуск';
	@override String get reconnectTakesEffect => 'Изменения вступят в силу после повторного подключения.';
	@override String get resetSettings => 'Сброс настроек';
	@override String get cleanCache => 'Очистка кэша';
	@override String get cleanCacheDone => 'Очистка завершена';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Обновить версию ${p}';
	@override String get follow => 'Подписаться на нас';
	@override String get contactUs => 'Связаться с нами';
	@override String get supportUs => 'Поддержите нас';
	@override String get rateInApp => 'Оценить нас';
	@override String get rateInAppStore => 'Оценить нас в App Store';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenRu implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Ваша конфиденциальность превыше всего';
	@override String get agreeAndContinue => 'Принять и продолжить';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenRu implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'Новая версия [${p}] доступна';
	@override String get update => 'Перезапустить';
	@override String get cancel => 'Не сейчас';
}

// Path: CommonWidget
class _TranslationsCommonWidgetRu implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Если параметр [VPN всегда включен] включен, отключите его и попробуйте подключиться еще раз';
	@override String get resetPort => 'Пожалуйста, измените порт на другой доступный порт или закройте приложение, занимающее порт.';
}

// Path: main
class _TranslationsMainRu implements TranslationsMainEn {
	_TranslationsMainRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayRu tray = _TranslationsMainTrayRu._(_root);
}

// Path: meta
class _TranslationsMetaRu implements TranslationsMetaEn {
	_TranslationsMetaRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Включить';
	@override String get disable => 'Запретить';
	@override String get bydefault => 'по умолчанию';
	@override String get filter => 'Фильтр';
	@override String get filterMethod => 'Метод фильтра';
	@override String get include => 'Включать';
	@override String get exclude => 'Исключать';
	@override String get all => 'Все';
	@override String get prefer => 'Приоритет';
	@override String get only => 'Только';
	@override String get open => 'Открыть';
	@override String get close => 'Закрыть';
	@override String get quit => 'Выйти';
	@override String get add => 'Добавить';
	@override String get addSuccess => 'Добавлено успешно';
	@override String addFailed({required Object p}) => 'Ошибка при добавлении:${p}';
	@override String get remove => 'Удалить';
	@override String get removeConfirm => 'Подтверждаете удаление?';
	@override String get edit => 'Редактировать';
	@override String get view => 'Просмотр';
	@override String get more => 'Больше';
	@override String get tips => 'Инфо';
	@override String get copy => 'Скопировать';
	@override String get save => 'Сохранить';
	@override String get ok => 'Ок';
	@override String get cancel => 'Закрыть';
	@override String get feedback => 'Обратная связь';
	@override String get feedbackContent => 'Содержание';
	@override String get feedbackContentHit => 'Не более 500 символов';
	@override String get feedbackContentCannotEmpty => 'Содержание не может быть пустым';
	@override String get faq => 'Часто задаваемые вопросы (FAQ)';
	@override String get htmlTools => 'HTML Toolset';
	@override String get download => 'Скачать';
	@override String get upload => 'Загрузить';
	@override String get downloadSpeed => 'Скорость загрузки';
	@override String get uploadSpeed => 'Скорость загрузки';
	@override String get loading => 'Загрузка...';
	@override String get convert => 'Конвертировать';
	@override String get check => 'Тест';
	@override String get detect => 'Тест';
	@override String get cache => 'кэш';
	@override String get days => 'дни';
	@override String get hours => 'часы';
	@override String get minutes => 'минуты';
	@override String get seconds => 'Второй';
	@override String get milliseconds => 'миллисекунда';
	@override String get tolerance => 'Толерантность';
	@override String get dateTimePeriod => 'Период времени';
	@override String get protocol => 'Протокол';
	@override String get search => 'Поиск';
	@override String get custom => 'Самостоятельная настройка';
	@override String get inbound => 'Входящий';
	@override String get outbound => 'Выход';
	@override String get destination => 'Цель';
	@override String get outletIpByCurrentSelected => 'Выходной IP';
	@override String get outletIpByDirect => 'Выходной IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Соединить';
	@override String get disconnect => 'Отключить';
	@override String get reconnect => 'Повторное подключение';
	@override String get connected => 'Подключено';
	@override String get disconnected => 'Отключено';
	@override String get connecting => 'Подключение';
	@override String get connectTimeout => 'Таймаут при соединении';
	@override String get timeout => 'Тайм-аут';
	@override String get timeoutDuration => 'Длительность тайм-аута';
	@override String get runDuration => 'Время выполнения';
	@override String get latency => 'Задерживать';
	@override String get latencyTest => 'Обнаружение задержки';
	@override String get language => 'Язык';
	@override String get next => 'Дальше';
	@override String get done => 'Готово';
	@override String get apply => 'Применить';
	@override String get refresh => 'Обновить';
	@override String get retry => 'Хотите попробовать еще раз?';
	@override String get update => 'Обновить';
	@override String get updateInterval => 'Интервал обновления';
	@override String get updateInterval5mTips => 'Минимум: 5 мин';
	@override String updateFailed({required Object p}) => 'Не удалось обновить:${p}';
	@override String get samplingUnit => 'Единица времени выборки';
	@override String get queryResultCount => 'Количество результатов запроса';
	@override String queryLimit({required Object p}) => 'Отображение данных до ${p}';
	@override String get none => 'Ничего не делать';
	@override String get start => 'Начать';
	@override String get pause => 'Пауза';
	@override String get reset => 'Перезагрузить';
	@override String get submit => 'Отправить';
	@override String get user => 'Пользователь';
	@override String get account => 'Аккаунт';
	@override String get password => 'Пароль';
	@override String get required => 'Необходимо';
	@override String get type => 'тип';
	@override String get path => 'путь';
	@override String get local => 'местный';
	@override String get remote => 'удаленный';
	@override String get other => 'Другой';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'Неверный URL';
	@override String get urlCannotEmpty => 'Ссылка не может быть пустой';
	@override String get urlTooLong => 'URL слишком длинный (>8182)';
	@override String get copyUrl => 'Скопировать ссылку';
	@override String get openUrl => 'Открыть ссылку';
	@override String get shareUrl => 'Поделиться ссылкой';
	@override String get speedTestUrl => 'URL-адрес теста скорости';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'Статический IP';
	@override String get staticIPTips => 'Вам необходимо включить [TUN HijackDNS] или [${_root.SettingsScreen.inboundDomainResolve}].';
	@override String get isp => 'VPN-провайдер';
	@override String get domainSuffix => 'Суффикс доменного имени';
	@override String get domain => 'Имя домена';
	@override String get domainKeyword => 'Ключевые слова в имени домена';
	@override String get domainRegex => 'Регулярные выражения для имен доменов';
	@override String get ip => 'IP';
	@override String get port => 'Порт';
	@override String get portRange => 'Диапазон портов';
	@override String get appPackage => 'Идентификатор пакета приложения';
	@override String get processName => 'Имя процесса';
	@override String get processPath => 'Путь к процессу';
	@override String get processDir => 'Каталог процессов';
	@override String get systemProxy => 'Системный прокси';
	@override String get percentage => 'процент';
	@override String get statistics => 'статистика';
	@override String get statisticsAndAnalysis => 'Статистика и анализ';
	@override String get statisticsDataDesensitize => 'Анонимизация данных';
	@override String get statisticsDataDesensitizeTips => 'Идентификатор процесса/пакета/имя целевого домена/целевой IP-адрес и т. д. будут заменены на * и сохранены после десенсибилизации.';
	@override String get records => 'Записывать';
	@override String get requestRecords => 'Запросить записи';
	@override String get netInterfaces => 'Сетевой интерфейс';
	@override String get netSpeed => 'Скорость';
	@override String get memoryTrendChart => 'Диаграмма тренда памяти';
	@override String get goroutinesTrendChart => 'График трендов GoRoutines';
	@override String get trafficTrendChart => 'График тенденций трафика';
	@override String get trafficDistributionChart => 'Карта распределения трафика';
	@override String get connectionChart => 'Диаграмма тренда подключений';
	@override String get memoryChart => 'Диаграмма тренда памяти';
	@override String get trafficStatistics => 'Статистика трафика';
	@override String get traffic => 'поток';
	@override String get trafficTotal => 'Трафик всего';
	@override String get trafficProxy => 'Трафик прокси';
	@override String get trafficDirect => 'Прямой поток';
	@override String get website => 'Веб-сайт';
	@override String get memory => 'Память';
	@override String get outboundMode => 'Исходящий режим';
	@override String get rule => 'Правила';
	@override String get global => 'Глобально';
	@override String get qrcode => 'QR-код';
	@override String get qrcodeTooLong => 'Слишком большой текст для отображения';
	@override String get qrcodeShare => 'Поделиться QR-кодом';
	@override String get textToQrcode => 'Преобразование текста в QR-код';
	@override String get qrcodeScan => 'Сканировать QR-код';
	@override String get qrcodeScanResult => 'Результат сканирования';
	@override String get qrcodeScanFromImage => 'Открыть';
	@override String get qrcodeScanResultFailed => 'Не удалось проанализировать изображение. Убедитесь, что снимок экрана представляет собой действительный QR-код.';
	@override String get qrcodeScanResultEmpty => 'Пустой результат сканирования.';
	@override String get screenshot => 'Скриншот';
	@override String get backupAndSync => 'Резервное копирование и синхронизация';
	@override String get autoBackup => 'Автоматическое резервное копирование';
	@override String get noProfileGotAutoBackup => 'Если данные, такие как [${_root.meta.myProfiles}], утеряны, вы можете восстановить их из [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] или других источников резервного копирования (например, iCloud или WebDAV и т. д.)';
	@override String get autoBackupAddProfile => 'После добавления конфигурации';
	@override String get autoBackupRemoveProfile => 'После удаления конфигурации';
	@override String get profile => 'конфигурация';
	@override String get currentProfile => 'Текущая конфигурация';
	@override String get importAndExport => 'Импорт и экспорт в файл';
	@override String get import => 'Импорт';
	@override String get importFromUrl => 'Импорт из URL';
	@override String get export => 'Экспорт';
	@override String get send => 'Передать';
	@override String get receive => 'Принять';
	@override String get sendConfirm => 'Подтверждаете передачу?';
	@override String get termOfUse => 'Условия использования';
	@override String get privacyPolicy => 'Политика конфиденциальности';
	@override String get about => 'О Karing';
	@override String get name => 'Название';
	@override String get version => 'Версия';
	@override String get notice => 'Уведомления';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Действие:${p}\nПричина:${p1}';
	@override String get sort => 'Отсортировать';
	@override String get novice => 'Режим новичка';
	@override String get willCompleteAfterRebootInstall => 'Пожалуйста, перезагрузите устройство, чтобы завершить установку расширения системы.';
	@override String get willCompleteAfterRebootUninstall => 'Пожалуйста, перезагрузите устройство, чтобы завершить удаление системного расширения.';
	@override String get requestNeedsUserApproval => '1. [Системные настройки] - [Конфиденциальность и безопасность] - [Разрешить] Karing устанавливать системные расширения. 2. [Системные настройки] - [Общие] - [Вход и расширения - Сетевые расширения] - [karingServiceSE] - [Подключиться снова после завершения]';
	@override String get FullDiskAccessPermissionRequired => 'Включите разрешение [karingServiceSE] в [Системные настройки]-[Конфиденциальность и безопасность]-[Разрешение на полный доступ к диску] и переподключитесь.';
	@override String get tvMode => 'Режим ТВ';
	@override String get recommended => 'Рекомендуемые';
	@override String innerError({required Object p}) => 'Внутренняя ошибка:${p}';
	@override String get logicOperation => 'Логическая опреация';
	@override String get share => 'Поделиться';
	@override String get candidateWord => 'Ключевые слова';
	@override String get keywordOrRegx => 'Ключевые слова/регулярные выражения';
	@override String get importFromClipboard => 'Импорт из буфера обмена';
	@override String get exportToClipboard => 'Экспорт в буфер обмена';
	@override String get server => 'Сервер';
	@override String get ads => 'Удалять';
	@override String get adsRemove => 'Удалить рекламу';
	@override String get donate => 'Пожертвовать';
	@override String get diversion => 'Правила';
	@override String get diversionRules => 'Правила перенаправления';
	@override String get diversionCustomGroup => 'Личные правила';
	@override String get urlTestCustomGroup => 'Пользовательский автоматический выбор';
	@override String get setting => 'Настройки';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Синхронизация локально (QR-код)';
	@override String get lanSyncNotQuitTips => 'Не выходите из этого окна до завершения синхронизации.';
	@override String get deviceNoSpace => 'Недостаточно места на диске';
	@override String get hideSystemApp => 'Скрыть системные приложения';
	@override String get hideAppIcon => 'Скрыть значок приложения';
	@override String get hideDockIcon => 'Скрыть значок дока';
	@override String get remark => 'Примечание';
	@override String get remarkExist => 'Примечание уже существует, используйте другое имя';
	@override String get remarkCannotEmpty => 'Примечание не может быть пустым';
	@override String get remarkTooLong => 'Примечания до 32 символов';
	@override String get openDir => 'Открыть каталог файлов';
	@override String get fileChoose => 'Выбрать файл';
	@override String get filePathCannotEmpty => 'Путь к файлу не может быть пустым';
	@override String fileNotExist({required Object p}) => 'Файла не существует:${p}';
	@override String fileTypeInvalid({required Object p}) => 'Неверный тип файла:${p}';
	@override String get uwpExemption => 'Исключение из изоляции сети UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Получить конфигурацию';
	@override String get addProfile => 'Добавить профиль';
	@override String get myProfiles => 'Профили';
	@override String get profileEdit => 'Редактирование профилей';
	@override String get profileEditUrlExist => 'URL-адрес уже существует, используйте другой URL-адрес';
	@override String get profileEditReloadAfterProfileUpdate => 'Перезагрузить после обновления профиля';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Начать тестирование задержек после обновления профиля';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN необходимо подключить, и включить [Перезагрузить после обновления профиля]';
	@override String get profileEditTestLatencyAutoRemove => 'Автоматически удалять серверы, не прошедшие тесты на задержку';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Попробуйте до 3 раз';
	@override String get profileImport => 'Импорт файла конфигурации';
	@override String get profileAddUrlOrContent => 'Добавление подписки';
	@override String get profileExists => 'Профиль уже существует. Пожалуйста, не добавляйте его повторно';
	@override String get profileUrlOrContent => 'Ссылка на подписку/содержание';
	@override String get profileUrlOrContentHit => 'Ссылка на подписку/содержание [обязательно] (Поддерживаются Clash, V2ray(c пакетом поддержки), Stash, Karing, Sing-box, Shadowsocks, Sub; Ссылка на конфигурацию).';
	@override String get profileUrlOrContentCannotEmpty => 'Ссылка на подписку не может быть пустой';
	@override String profileAddFailedFormatException({required Object p}) => 'Неправильный формат, исправьте его и добавьте еще раз:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Не удалось добавить: ${p}. Попробуйте изменить [UserAgent] и повторите попытку, или используйте собственный браузер устройства, чтобы открыть ссылку на конфигурацию и импортировать файл конфигурации, загруженный браузером, в это приложение.';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Не удалось добавить: ${p}, откройте агент или измените текущий узел агента и повторите попытку.';
	@override String get profileAddParseFailed => 'Получение подписки не удалось';
	@override String get profileAddNoServerAvaliable => 'Нет доступных серверов, убедитесь что подписка или файл профиля корректен. Если ваша конфигурация взята из GitHub, получите адрес ссылки, нажав кнопку [Raw] на странице.';
	@override String get profileAddWrapSuccess => 'Конфигурация сгенерирована успешно. Для просмотра перейдите в [${_root.meta.myProfiles}]';
}

// Path: isp
class _TranslationsIspRu implements TranslationsIspEn {
	_TranslationsIspRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Привязать к [${_root.meta.isp}]';
	@override String unbind({required Object p}) => 'Отвязать[${p}]';
	@override String faq({required Object p}) => 'Часто задаваемые вопросы[${p}]';
	@override String customerService({required Object p}) => 'Служба поддержки клиентов[${p}]';
	@override String follow({required Object p}) => 'Следуйте[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}]Недействительно, или срок действия истек';
}

// Path: permission
class _TranslationsPermissionRu implements TranslationsPermissionEn {
	_TranslationsPermissionRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Камера';
	@override String get screen => 'Запись экрана';
	@override String get appQuery => 'Получить список приложений';
	@override String request({required Object p}) => 'Включить разрешения [${p}]';
	@override String requestNeed({required Object p}) => 'Пожалуйста, включите разрешение [${p}]';
}

// Path: tls
class _TranslationsTlsRu implements TranslationsTlsEn {
	_TranslationsTlsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Пропустить проверку сертификата';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Включить фрагментацию TLS';
	@override String get fragmentSize => 'Размер фрагмента TLS';
	@override String get fragmentSleep => 'Длина фрагмента паузы TLS';
	@override String get mixedCaseSNIEnable => 'Включить гибридный SNI TLS';
	@override String get paddingEnable => 'Включить заполнение TLS';
	@override String get paddingSize => 'Размер заполнения TLS';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeRu implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Текущий сервер';
	@override String get urltest => 'Автовыбор';
	@override String get direct => 'Напрямую';
	@override String get block => 'Блокировать';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeRu implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyRu implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonRu implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Обновления конфигурации';
}

// Path: theme
class _TranslationsThemeRu implements TranslationsThemeEn {
	_TranslationsThemeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get light => 'Светлый цвет';
	@override String get dark => 'черный';
	@override String get auto => 'автоматический';
}

// Path: main.tray
class _TranslationsMainTrayRu implements TranslationsMainTrayEn {
	_TranslationsMainTrayRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Открыть';
	@override String get menuExit => 'Выйти';
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Ссылка на установку',
			'AboutScreen.installTime' => 'Время установки',
			'AboutScreen.versionChannel' => 'Канал автоматического обновления',
			'AboutScreen.autoDownloadPkg' => 'Автоматически загружать пакеты обновлений',
			'AboutScreen.disableAppImproveData' => 'Применить данные улучшения',
			'AboutScreen.disableUAReportTip' => 'Включение параметра [${_root.AboutScreen.disableAppImproveData}] помогает нам улучшить стабильность и удобство использования продукта; мы не собираем никаких персональных данных. Отключение этого параметра предотвратит сбор каких-либо данных приложением.',
			'AboutScreen.devOptions' => 'Параметры разработчика',
			'AboutScreen.enableDebugLog' => 'Включить debug-лог',
			'AboutScreen.viewFilsContent' => 'Посмотреть файлы',
			'AboutScreen.enablePprof' => 'Включить pprof',
			'AboutScreen.pprofPanel' => 'pprof панель',
			'AboutScreen.allowRemoteAccessPprof' => 'Разрешить удаленный доступ к ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Разрешить удаленный доступ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Использовать исходную конфигурацию Sing-box',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'Адрес сервера',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Не может быть пустым',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Ошибка входа:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Не удалось получить список файлов:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'Неверный [Domain]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'Неверный [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Неверный [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'Неверный [Rule Set]:${p}, URL-адрес должен быть действительным URL-адресом https двоичного файлом с расширением .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'Неверный [RuleSet(build-in)]:${p}, формат: geosite:xxx или geoip:xxx или acl:xxx, а xxx должно быть допустимым именем правила.',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'Неверный [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Совет: после сохранения перейдите в раздел [${_root.meta.diversionRules}] и настройте их, иначе изменения не будут действовать.',
			'DiversionRuleDetectScreen.title' => 'Тест правил перенаправления',
			'DiversionRuleDetectScreen.rule' => 'Правило:',
			'DiversionRuleDetectScreen.outbound' => 'Прокси-сервер:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Совет: Правила применяются по очереди сверху вниз. Если ни одно соответствие не обнаружено, то действует правило [Final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP не может быть пустой',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL не может быть пустой',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Неподдерживаемый тип:${p}',
			'DnsSettingsScreen.dnsDesc' => 'Первый столбец данных — это задержка запроса при прямом соединении;\nВторой столбец, если включено [[действующий поток] Разрешать DNS через прокси-сервер]: данные — это задержка запроса, пересылаемого через текущий прокси-сервер; Если выключено [[действующий поток] Разрешать DNS через прокси-сервер]: данные - это задержка запроса при прямом соединении.',
			'FileContentViewerScreen.title' => 'Просмотр содержимого файла',
			'FileContentViewerScreen.clearFileContent' => 'Вы уверены, что хотите очистить содержимое файла?',
			'FileContentViewerScreen.clearFileContentTips' => 'Вы уверены, что  хотите очистить содержимое файла профиля? Очистка файла профиля может привести к потере данных или некорректной работе приложения. Действуйте осторожно.',
			'HomeScreen.toSelectServer' => 'Выберите сервер',
			'HomeScreen.invalidServer' => 'Не работает. Пожалуйста, выберите другой',
			'HomeScreen.disabledServer' => 'Был отключен. Пожалуйста, выберите другой',
			'HomeScreen.expiredServer' => 'Нет доступного сервера: возможно, профиль устарел или отключен',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'Пожалуйста, настройте [Быструю ссылку] перед использованием',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}], и соединение может оказаться невозможным из-за ограничений системной памяти',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}] могут привести к медленному или недоступному соединению.',
			'LaunchFailedScreen.invalidProcess' => 'Не удалось запустить приложение [Неверное имя процесса], переустановите приложение в отдельную папку',
			'LaunchFailedScreen.invalidProfile' => 'Не удалось запустить приложение [Не удалось получить доступ к профилю], переустановите приложение',
			'LaunchFailedScreen.invalidVersion' => 'Не удалось запустить приложение [Неверная версия], переустановите приложение',
			'LaunchFailedScreen.systemVersionLow' => 'Не удалось запустить приложение [Слишком низкая версия системы]',
			'LaunchFailedScreen.invalidInstallPath' => 'Путь установки недействителен, переустановите его по допустимому пути',
			'MyProfilesMergeScreen.profilesMerge' => 'Объединение профилей',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Целевой профиль',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Профиль - источник',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Совет: Настройки перенаправления для профиля - источника будут удалены.',
			'NetCheckScreen.title' => 'Диагностика сети',
			'NetCheckScreen.warn' => 'Примечание. Из-за влияния сетевой среды и правил перенаправления результаты теста не полностью эквивалентны реальным результатам.',
			'NetCheckScreen.invalidDomain' => 'Неверное имя домена',
			'NetCheckScreen.connectivity' => 'Подключение к сети',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Ipv4 Тест подключения[${p}] неудачен',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Ipv4 Соединение выполнено успешно',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Ipv6 Тест подключения[${p}] неудачен. Возможно, ваша сеть не поддерживает ipv6.',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Ipv6 Соединение выполнено успешно',
			'NetCheckScreen.connectivityTestOk' => 'Сеть подключена к Интернету',
			'NetCheckScreen.connectivityTestFailed' => 'Ваша сеть не подключена к Интернету',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Все успешно скачано',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Сбой загрузки',
			'NetCheckScreen.outbound' => 'Прокси-сервер',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}]Соединение установлено успешно',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}]Соединение не удалось\nошибка:[${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS сервер',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS Разобрано успешно\nDNS правило:[${p2}]\nЗадержка:[${p3} ms]\nадрес:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS Не удалось выполнить синтаксический анализ\n правило:[${p2}]\nошибка:[${p3}]',
			'NetCheckScreen.host' => 'HTTP соединение',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nПравила перенаправления:[${p2}]\nПрокси-сервер:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'Соединение установлено успешно',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'Соединение не удалось:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Domain/IP',
			'NetConnectionsFilterScreen.app' => 'Приложение',
			'NetConnectionsFilterScreen.rule' => 'Правило',
			'NetConnectionsFilterScreen.chain' => 'Исходящий',
			'NetConnectionsScreen.copyAsCSV' => 'Скопировано в CSV формате',
			'NetConnectionsScreen.selectType' => 'Выберите тип перенаправления',
			'PerAppAndroidScreen.title' => 'Проксируемые приложения',
			'PerAppAndroidScreen.whiteListMode' => 'Режим белого списка',
			'PerAppAndroidScreen.whiteListModeTip' => 'Если включено: перенаправляются через прокси-сервер только те приложения, которые были отмечены. Если выключено: перенаправляются через прокси-сервер только те приложения, которые не были отмечены.',
			'RegionSettingsScreen.title' => 'Страна или регион',
			'RegionSettingsScreen.Regions' => 'Совет: Пожалуйста, правильно укажите текущую страну или регион. В противном случае это может вызвать проблемы с перенаправлением в сети',
			'ServerSelectScreen.title' => 'Выбор сервера',
			'ServerSelectScreen.autoSelectServer' => 'Автовыбор сервера с наименьшей задержкой',
			'ServerSelectScreen.recentUse' => 'Недавно использованные',
			'ServerSelectScreen.myFav' => 'Мои избранные',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Выбранный сервер является локальным, и может работать неправильно:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Выбранный сервер имеет адрес IPv6 и требует [Включить IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Сервер отключен',
			'ServerSelectScreen.error404' => 'При  измерении задержки произошла ошибка. Проверьте, существует ли профиль с таким содержимым.',
			'SettingsScreen.getTranffic' => 'Получить трафик',
			'SettingsScreen.tutorial' => 'Руководство',
			'SettingsScreen.commonlyUsedRulesets' => 'Коллекция наборов правил',
			'SettingsScreen.htmlBoard' => 'Веб-панель',
			'SettingsScreen.dnsLeakDetection' => 'Тест утечки DNS',
			'SettingsScreen.proxyLeakDetection' => 'Обнаружение утечки наличия прокси',
			'SettingsScreen.speedTest' => 'Тест скорости',
			'SettingsScreen.rulesetDirectDownlad' => 'Правила прямой загрузки',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Скрыть неактивные правила перенаправления трафика',
			'SettingsScreen.disableISPDiversionGroup' => 'Отключить правила перенаправления [${_root.meta.isp}]',
			'SettingsScreen.portSettingRule' => 'Действуют все правила',
			'SettingsScreen.portSettingDirectAll' => 'Всё подключено напрямую',
			'SettingsScreen.portSettingProxyAll' => 'Всё идёт через прокси',
			'SettingsScreen.portSettingControl' => 'Управление и синхронизация',
			'SettingsScreen.portSettingCluster' => 'Кластерный сервис',
			'SettingsScreen.modifyPort' => 'Изменить порт',
			'SettingsScreen.modifyPortOccupied' => 'Порт занят, используйте другой порт',
			'SettingsScreen.ipStrategyTips' => 'Перед включением убедитесь, что ваша сеть поддерживает IPv6, в противном случае нормальный доступ к части трафика будет невозможен',
			'SettingsScreen.tunAppendHttpProxy' => 'Подключите HTTP-прокси к VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Некоторые приложения будут обходить устройство виртуальной сетевой карты и напрямую подключаться к HTTP-прокси.',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Домены, которым разрешено обходить HTTP-прокси',
			'SettingsScreen.dnsEnableRule' => 'Включить правила для DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] Способ разрешения в DNS',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] Включить ECS',
			'SettingsScreen.dnsTestDomain' => 'Тестовое доменное имя',
			'SettingsScreen.dnsTestDomainInvalid' => 'Неверное доменное имя',
			'SettingsScreen.dnsTypeOutbound' => 'Прокси-сервер',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS-сервер',
			'SettingsScreen.dnsEnableRuleTips' => 'Если включено, доменное имя выберет соответствующий DNS-сервер для разрешения в соответствии с правилами перенаправления DNS.',
			'SettingsScreen.dnsEnableFakeIpTips' => 'После включения FakeIP, если VPN-соединение отключено, возможно, потребуется перезапустить приложение. Эту функцию необходимо включить в [Режиме TUN];',
			'SettingsScreen.dnsTypeOutboundTips' => 'Для разрешения доменных имен прокси-сервера рекомендуется использовать безопасный DNS',
			'SettingsScreen.dnsTypeDirectTips' => 'Разрешение доменного имени для [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Разрешение доменных имен для трафика через Proxy',
			'SettingsScreen.dnsTypeResolverTips' => 'Разрешение доменных имен для DNS-серверов',
			'SettingsScreen.dnsAutoSetServer' => 'Автоматически настроить сервер',
			'SettingsScreen.dnsResetServer' => 'Сбросить сервер',
			'SettingsScreen.inboundDomainResolve' => 'Разрешение входящих доменных имен',
			'SettingsScreen.privateDirect' => 'Прямое подключение к частной сети',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Некоторые доменные имена без настроенных правил переадресации необходимо разрешить, прежде чем они смогут соответствовать правилам переадресации на основе IP; эта функция влияет на входящие запросы к порту прокси [${p}]',
			'SettingsScreen.useRomoteRes' => 'Использовать удаленные ресурсы',
			'SettingsScreen.autoAppendRegion' => 'Автоматически добавлять основные правила',
			'SettingsScreen.autoSelect' => 'Автовыбор',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Игнорировать [фронт/цепные] прокси-серверы',
			'SettingsScreen.autoSelectServerInterval' => 'Интервал проверок задержки',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Текущий интервал проверки работоспособности сервера',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Перетестировать после смены сети',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Чем короче временной интервал, тем чаще обновляются данные о задержке сервера. Но это потребует больше ресурсов и энергии',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Если обнаружение не удалось, узел переключается; если при переключении узла не найдено ни одного доступного узла, группа повторно обнаруживается с задержкой.',
			'SettingsScreen.autoSelectServerFavFirst' => 'Предпочитать [Мои избранные]',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Обновить текущий сервер после измерения задержки вручную',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Если список [Мои избранные] не пуст, то будут использоваться серверы из [Мои избранные]',
			'SettingsScreen.autoSelectServerFilter' => 'Отфильтровать сервера',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Сервера с превышением задержки будут отфильтрованы; если после фильтрации ни один сервер не будет доступен, вместо него будут использоваться первые [${p}] серверы',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Максимальное количество серверов',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Если серверов больше этого числа, лишние будут отброшены.',
			'SettingsScreen.numInvalid' => 'Неправильный номер',
			'SettingsScreen.hideInvalidServer' => 'Скрыть нерабочие серверы',
			'SettingsScreen.sortServer' => 'Сортировка серверов',
			'SettingsScreen.sortServerTips' => 'Сортировать по задержке от низкой к высокой',
			'SettingsScreen.selectServerHideRecommand' => 'Скрыть [Рекомендуемые]',
			'SettingsScreen.selectServerHideRecent' => 'Скрыть [Недавно использованные]',
			'SettingsScreen.selectServerHideFav' => 'Скрыть [Мои избранные]',
			'SettingsScreen.homeScreen' => 'Настройка главного экрана',
			'SettingsScreen.theme' => 'Тема',
			'SettingsScreen.widgetsAlpha' => 'Прозрачность виджетов',
			'SettingsScreen.widgetsEmpty' => 'Виджет недоступен',
			'SettingsScreen.backgroundImage' => 'Фоновое изображение',
			'SettingsScreen.myLink' => 'Быстрая ссылка',
			'SettingsScreen.autoConnectAfterLaunch' => 'Автоматическое подключение после запуска',
			'SettingsScreen.autoConnectAtBoot' => 'Автоматическое подключение после запуска системы',
			'SettingsScreen.autoConnectAtBootTips' => 'Требуется поддержка системы; некоторые системы также могут потребовать включения [автозапуска].',
			'SettingsScreen.hideAfterLaunch' => 'Скрыть окно после запуска',
			'SettingsScreen.autoSetSystemProxy' => 'Установить системный прокси после подключения',
			'SettingsScreen.bypassSystemProxy' => 'Доменные имена, которым разрешено обходить системный прокси-сервер',
			'SettingsScreen.disconnectWhenQuit' => 'Отключаться при выходе из приложения',
			'SettingsScreen.autoAddToFirewall' => 'Автоматическое добавление правил брандмауэра',
			'SettingsScreen.excludeFromRecent' => 'Скрыть из недавних задач',
			'SettingsScreen.wakeLock' => 'Блокировка пробуждения',
			'SettingsScreen.hideVpn' => 'Скрыть значок VPN',
			'SettingsScreen.hideVpnTips' => 'Включение IPv6 приведет к сбою этой функции.',
			'SettingsScreen.allowBypass' => 'Разрешить приложениям обходить VPN',
			'SettingsScreen.importSuccess' => 'Импорт выполнен успешно',
			'SettingsScreen.rewriteConfirm' => 'Этот файл перезапишет существующую локальную конфигурацию. Продолжить?',
			'SettingsScreen.mergePerapp' => 'Объединить локальные списки [${_root.PerAppAndroidScreen.title}]',
			'SettingsScreen.networkShare' => 'Общий доступ к сети',
			'SettingsScreen.frontProxy' => 'Фронтальный/цепной прокси',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Данные-> Фронтальный/цепной прокси-сервер [Несколько прокси-серверов: сверху вниз]-> Прокси-сервер [${p}]-> Целевой сервер',
			'SettingsScreen.allowOtherHostsConnect' => 'Разрешить подключение по локальной сети',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Из-за системных ограничений после включения этой функции приложения на этом устройстве, использующие http для доступа к сети, могут не иметь возможности правильно подключиться к сети.',
			'SettingsScreen.tunAutoRoute' => 'Автоматический маршрут',
			'SettingsScreen.tunAutoRedirect' => 'Автоматическое перенаправление',
			'SettingsScreen.tunStrictRoute' => 'Строгий маршрут',
			'SettingsScreen.tunStrictRouteTips' => 'Если после включения общего доступа другие люди не смогут получить доступ к этому устройству, попробуйте отключить этот переключатель.',
			'SettingsScreen.loopbackAddress' => 'Петлевой адрес',
			'SettingsScreen.enableCluster' => 'Включить кластер прокси Socks/Http',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Разрешить подключение по локальной сети к кластеру',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Аутентификация прокси-кластера',
			'SettingsScreen.tunMode' => 'Режим TUN',
			'SettingsScreen.tuni4Address' => 'IP-адрес',
			'SettingsScreen.tunModeTips' => 'В режиме TUN весь трафик системы будет перенаправлен через соединение [В этом режиме вы можете оставить системный прокси отключенным]',
			'SettingsScreen.tunModeRunAsAdmin' => 'Для режима TUN требуются права администратора. Перезапустите приложение от имени администратора',
			'SettingsScreen.tunStack' => 'Stack',
			'SettingsScreen.tunHijackTips' => 'После закрытия DNS-запросы от TUN будут пересылаться напрямую на соответствующий DNS-сервер.',
			'SettingsScreen.launchAtStartup' => 'Запуск при включении',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Выйти из приложения при переключении пользователя',
			'SettingsScreen.handleScheme' => 'Схемы системного вызова',
			'SettingsScreen.portableMode' => 'Портативный режим',
			'SettingsScreen.portableModeDisableTips' => 'Если вам нужно выйти из портативного режима, выйдите из [karing] и вручную удалите папку [profiles] в том же каталоге, что и [karing.exe]',
			'SettingsScreen.accessibility' => 'Доступность',
			'SettingsScreen.handleKaringScheme' => 'Вызов karing://[параметры]',
			'SettingsScreen.handleClashScheme' => 'Вызов clash://[параметры]',
			'SettingsScreen.handleSingboxScheme' => 'Вызов sing-box://[параметры]',
			'SettingsScreen.alwayOnVPN' => 'всегда открытое соединение',
			'SettingsScreen.disconnectAfterSleep' => 'Отключение после спящего режима системы',
			'SettingsScreen.removeSystemVPNConfig' => 'Удалить профиль VPN',
			'SettingsScreen.timeConnectOrDisconnect' => 'Запланированное подключение/отключение',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'Чтобы это заработало, необходимо подключить VPN; после его подключения [автоматическое засыпание] будет отключено',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'Интервал подключения/отключения не может быть меньше ${p} минут.',
			'SettingsScreen.disableFontScaler' => 'Отключить масштабирование шрифта',
			'SettingsScreen.autoOrientation' => 'Следовать за поворотом экрана',
			'SettingsScreen.restartTakesEffect' => 'Требуется перезапуск',
			'SettingsScreen.reconnectTakesEffect' => 'Изменения вступят в силу после повторного подключения.',
			'SettingsScreen.resetSettings' => 'Сброс настроек',
			'SettingsScreen.cleanCache' => 'Очистка кэша',
			'SettingsScreen.cleanCacheDone' => 'Очистка завершена',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Обновить версию ${p}',
			'SettingsScreen.follow' => 'Подписаться на нас',
			'SettingsScreen.contactUs' => 'Связаться с нами',
			'SettingsScreen.supportUs' => 'Поддержите нас',
			'SettingsScreen.rateInApp' => 'Оценить нас',
			'SettingsScreen.rateInAppStore' => 'Оценить нас в App Store',
			'UserAgreementScreen.privacyFirst' => 'Ваша конфиденциальность превыше всего',
			'UserAgreementScreen.agreeAndContinue' => 'Принять и продолжить',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'Новая версия [${p}] доступна',
			'VersionUpdateScreen.update' => 'Перезапустить',
			'VersionUpdateScreen.cancel' => 'Не сейчас',
			'CommonWidget.diableAlwayOnVPN' => 'Если параметр [VPN всегда включен] включен, отключите его и попробуйте подключиться еще раз',
			'CommonWidget.resetPort' => 'Пожалуйста, измените порт на другой доступный порт или закройте приложение, занимающее порт.',
			'main.tray.menuOpen' => 'Открыть',
			'main.tray.menuExit' => 'Выйти',
			'meta.enable' => 'Включить',
			'meta.disable' => 'Запретить',
			'meta.bydefault' => 'по умолчанию',
			'meta.filter' => 'Фильтр',
			'meta.filterMethod' => 'Метод фильтра',
			'meta.include' => 'Включать',
			'meta.exclude' => 'Исключать',
			'meta.all' => 'Все',
			'meta.prefer' => 'Приоритет',
			'meta.only' => 'Только',
			'meta.open' => 'Открыть',
			'meta.close' => 'Закрыть',
			'meta.quit' => 'Выйти',
			'meta.add' => 'Добавить',
			'meta.addSuccess' => 'Добавлено успешно',
			'meta.addFailed' => ({required Object p}) => 'Ошибка при добавлении:${p}',
			'meta.remove' => 'Удалить',
			'meta.removeConfirm' => 'Подтверждаете удаление?',
			'meta.edit' => 'Редактировать',
			'meta.view' => 'Просмотр',
			'meta.more' => 'Больше',
			'meta.tips' => 'Инфо',
			'meta.copy' => 'Скопировать',
			'meta.save' => 'Сохранить',
			'meta.ok' => 'Ок',
			'meta.cancel' => 'Закрыть',
			'meta.feedback' => 'Обратная связь',
			'meta.feedbackContent' => 'Содержание',
			'meta.feedbackContentHit' => 'Не более 500 символов',
			'meta.feedbackContentCannotEmpty' => 'Содержание не может быть пустым',
			'meta.faq' => 'Часто задаваемые вопросы (FAQ)',
			'meta.htmlTools' => 'HTML Toolset',
			'meta.download' => 'Скачать',
			'meta.upload' => 'Загрузить',
			'meta.downloadSpeed' => 'Скорость загрузки',
			'meta.uploadSpeed' => 'Скорость загрузки',
			'meta.loading' => 'Загрузка...',
			'meta.convert' => 'Конвертировать',
			'meta.check' => 'Тест',
			'meta.detect' => 'Тест',
			'meta.cache' => 'кэш',
			'meta.days' => 'дни',
			'meta.hours' => 'часы',
			'meta.minutes' => 'минуты',
			'meta.seconds' => 'Второй',
			'meta.milliseconds' => 'миллисекунда',
			'meta.tolerance' => 'Толерантность',
			'meta.dateTimePeriod' => 'Период времени',
			'meta.protocol' => 'Протокол',
			'meta.search' => 'Поиск',
			'meta.custom' => 'Самостоятельная настройка',
			'meta.inbound' => 'Входящий',
			'meta.outbound' => 'Выход',
			'meta.destination' => 'Цель',
			'meta.outletIpByCurrentSelected' => 'Выходной IP',
			'meta.outletIpByDirect' => 'Выходной IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Соединить',
			'meta.disconnect' => 'Отключить',
			'meta.reconnect' => 'Повторное подключение',
			'meta.connected' => 'Подключено',
			'meta.disconnected' => 'Отключено',
			'meta.connecting' => 'Подключение',
			'meta.connectTimeout' => 'Таймаут при соединении',
			'meta.timeout' => 'Тайм-аут',
			'meta.timeoutDuration' => 'Длительность тайм-аута',
			'meta.runDuration' => 'Время выполнения',
			'meta.latency' => 'Задерживать',
			'meta.latencyTest' => 'Обнаружение задержки',
			'meta.language' => 'Язык',
			'meta.next' => 'Дальше',
			'meta.done' => 'Готово',
			'meta.apply' => 'Применить',
			'meta.refresh' => 'Обновить',
			'meta.retry' => 'Хотите попробовать еще раз?',
			'meta.update' => 'Обновить',
			'meta.updateInterval' => 'Интервал обновления',
			'meta.updateInterval5mTips' => 'Минимум: 5 мин',
			'meta.updateFailed' => ({required Object p}) => 'Не удалось обновить:${p}',
			'meta.samplingUnit' => 'Единица времени выборки',
			'meta.queryResultCount' => 'Количество результатов запроса',
			'meta.queryLimit' => ({required Object p}) => 'Отображение данных до ${p}',
			'meta.none' => 'Ничего не делать',
			'meta.start' => 'Начать',
			'meta.pause' => 'Пауза',
			'meta.reset' => 'Перезагрузить',
			'meta.submit' => 'Отправить',
			'meta.user' => 'Пользователь',
			'meta.account' => 'Аккаунт',
			'meta.password' => 'Пароль',
			'meta.required' => 'Необходимо',
			'meta.type' => 'тип',
			'meta.path' => 'путь',
			'meta.local' => 'местный',
			'meta.remote' => 'удаленный',
			'meta.other' => 'Другой',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'Неверный URL',
			'meta.urlCannotEmpty' => 'Ссылка не может быть пустой',
			'meta.urlTooLong' => 'URL слишком длинный (>8182)',
			'meta.copyUrl' => 'Скопировать ссылку',
			'meta.openUrl' => 'Открыть ссылку',
			'meta.shareUrl' => 'Поделиться ссылкой',
			'meta.speedTestUrl' => 'URL-адрес теста скорости',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'Статический IP',
			'meta.staticIPTips' => 'Вам необходимо включить [TUN HijackDNS] или [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'VPN-провайдер',
			'meta.domainSuffix' => 'Суффикс доменного имени',
			'meta.domain' => 'Имя домена',
			'meta.domainKeyword' => 'Ключевые слова в имени домена',
			'meta.domainRegex' => 'Регулярные выражения для имен доменов',
			'meta.ip' => 'IP',
			'meta.port' => 'Порт',
			'meta.portRange' => 'Диапазон портов',
			'meta.appPackage' => 'Идентификатор пакета приложения',
			'meta.processName' => 'Имя процесса',
			'meta.processPath' => 'Путь к процессу',
			'meta.processDir' => 'Каталог процессов',
			'meta.systemProxy' => 'Системный прокси',
			'meta.percentage' => 'процент',
			'meta.statistics' => 'статистика',
			'meta.statisticsAndAnalysis' => 'Статистика и анализ',
			'meta.statisticsDataDesensitize' => 'Анонимизация данных',
			'meta.statisticsDataDesensitizeTips' => 'Идентификатор процесса/пакета/имя целевого домена/целевой IP-адрес и т. д. будут заменены на * и сохранены после десенсибилизации.',
			'meta.records' => 'Записывать',
			'meta.requestRecords' => 'Запросить записи',
			'meta.netInterfaces' => 'Сетевой интерфейс',
			'meta.netSpeed' => 'Скорость',
			'meta.memoryTrendChart' => 'Диаграмма тренда памяти',
			'meta.goroutinesTrendChart' => 'График трендов GoRoutines',
			'meta.trafficTrendChart' => 'График тенденций трафика',
			'meta.trafficDistributionChart' => 'Карта распределения трафика',
			'meta.connectionChart' => 'Диаграмма тренда подключений',
			'meta.memoryChart' => 'Диаграмма тренда памяти',
			'meta.trafficStatistics' => 'Статистика трафика',
			'meta.traffic' => 'поток',
			'meta.trafficTotal' => 'Трафик всего',
			'meta.trafficProxy' => 'Трафик прокси',
			'meta.trafficDirect' => 'Прямой поток',
			'meta.website' => 'Веб-сайт',
			'meta.memory' => 'Память',
			'meta.outboundMode' => 'Исходящий режим',
			'meta.rule' => 'Правила',
			'meta.global' => 'Глобально',
			'meta.qrcode' => 'QR-код',
			'meta.qrcodeTooLong' => 'Слишком большой текст для отображения',
			'meta.qrcodeShare' => 'Поделиться QR-кодом',
			'meta.textToQrcode' => 'Преобразование текста в QR-код',
			'meta.qrcodeScan' => 'Сканировать QR-код',
			'meta.qrcodeScanResult' => 'Результат сканирования',
			'meta.qrcodeScanFromImage' => 'Открыть',
			'meta.qrcodeScanResultFailed' => 'Не удалось проанализировать изображение. Убедитесь, что снимок экрана представляет собой действительный QR-код.',
			'meta.qrcodeScanResultEmpty' => 'Пустой результат сканирования.',
			'meta.screenshot' => 'Скриншот',
			'meta.backupAndSync' => 'Резервное копирование и синхронизация',
			'meta.autoBackup' => 'Автоматическое резервное копирование',
			'meta.noProfileGotAutoBackup' => 'Если данные, такие как [${_root.meta.myProfiles}], утеряны, вы можете восстановить их из [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] или других источников резервного копирования (например, iCloud или WebDAV и т. д.)',
			'meta.autoBackupAddProfile' => 'После добавления конфигурации',
			'meta.autoBackupRemoveProfile' => 'После удаления конфигурации',
			'meta.profile' => 'конфигурация',
			'meta.currentProfile' => 'Текущая конфигурация',
			'meta.importAndExport' => 'Импорт и экспорт в файл',
			'meta.import' => 'Импорт',
			'meta.importFromUrl' => 'Импорт из URL',
			'meta.export' => 'Экспорт',
			'meta.send' => 'Передать',
			'meta.receive' => 'Принять',
			'meta.sendConfirm' => 'Подтверждаете передачу?',
			'meta.termOfUse' => 'Условия использования',
			'meta.privacyPolicy' => 'Политика конфиденциальности',
			'meta.about' => 'О Karing',
			'meta.name' => 'Название',
			'meta.version' => 'Версия',
			'meta.notice' => 'Уведомления',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Действие:${p}\nПричина:${p1}',
			'meta.sort' => 'Отсортировать',
			'meta.novice' => 'Режим новичка',
			'meta.willCompleteAfterRebootInstall' => 'Пожалуйста, перезагрузите устройство, чтобы завершить установку расширения системы.',
			'meta.willCompleteAfterRebootUninstall' => 'Пожалуйста, перезагрузите устройство, чтобы завершить удаление системного расширения.',
			'meta.requestNeedsUserApproval' => '1. [Системные настройки] - [Конфиденциальность и безопасность] - [Разрешить] Karing устанавливать системные расширения. 2. [Системные настройки] - [Общие] - [Вход и расширения - Сетевые расширения] - [karingServiceSE] - [Подключиться снова после завершения]',
			'meta.FullDiskAccessPermissionRequired' => 'Включите разрешение [karingServiceSE] в [Системные настройки]-[Конфиденциальность и безопасность]-[Разрешение на полный доступ к диску] и переподключитесь.',
			'meta.tvMode' => 'Режим ТВ',
			'meta.recommended' => 'Рекомендуемые',
			'meta.innerError' => ({required Object p}) => 'Внутренняя ошибка:${p}',
			'meta.logicOperation' => 'Логическая опреация',
			'meta.share' => 'Поделиться',
			'meta.candidateWord' => 'Ключевые слова',
			'meta.keywordOrRegx' => 'Ключевые слова/регулярные выражения',
			'meta.importFromClipboard' => 'Импорт из буфера обмена',
			'meta.exportToClipboard' => 'Экспорт в буфер обмена',
			'meta.server' => 'Сервер',
			'meta.ads' => 'Удалять',
			'meta.adsRemove' => 'Удалить рекламу',
			'meta.donate' => 'Пожертвовать',
			'meta.diversion' => 'Правила',
			'meta.diversionRules' => 'Правила перенаправления',
			'meta.diversionCustomGroup' => 'Личные правила',
			'meta.urlTestCustomGroup' => 'Пользовательский автоматический выбор',
			'meta.setting' => 'Настройки',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Синхронизация локально (QR-код)',
			'meta.lanSyncNotQuitTips' => 'Не выходите из этого окна до завершения синхронизации.',
			'meta.deviceNoSpace' => 'Недостаточно места на диске',
			'meta.hideSystemApp' => 'Скрыть системные приложения',
			'meta.hideAppIcon' => 'Скрыть значок приложения',
			'meta.hideDockIcon' => 'Скрыть значок дока',
			'meta.remark' => 'Примечание',
			'meta.remarkExist' => 'Примечание уже существует, используйте другое имя',
			'meta.remarkCannotEmpty' => 'Примечание не может быть пустым',
			'meta.remarkTooLong' => 'Примечания до 32 символов',
			'meta.openDir' => 'Открыть каталог файлов',
			'meta.fileChoose' => 'Выбрать файл',
			'meta.filePathCannotEmpty' => 'Путь к файлу не может быть пустым',
			'meta.fileNotExist' => ({required Object p}) => 'Файла не существует:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Неверный тип файла:${p}',
			'meta.uwpExemption' => 'Исключение из изоляции сети UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Получить конфигурацию',
			'meta.addProfile' => 'Добавить профиль',
			'meta.myProfiles' => 'Профили',
			'meta.profileEdit' => 'Редактирование профилей',
			'meta.profileEditUrlExist' => 'URL-адрес уже существует, используйте другой URL-адрес',
			'meta.profileEditReloadAfterProfileUpdate' => 'Перезагрузить после обновления профиля',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Начать тестирование задержек после обновления профиля',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN необходимо подключить, и включить [Перезагрузить после обновления профиля]',
			'meta.profileEditTestLatencyAutoRemove' => 'Автоматически удалять серверы, не прошедшие тесты на задержку',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Попробуйте до 3 раз',
			'meta.profileImport' => 'Импорт файла конфигурации',
			'meta.profileAddUrlOrContent' => 'Добавление подписки',
			'meta.profileExists' => 'Профиль уже существует. Пожалуйста, не добавляйте его повторно',
			'meta.profileUrlOrContent' => 'Ссылка на подписку/содержание',
			'meta.profileUrlOrContentHit' => 'Ссылка на подписку/содержание [обязательно] (Поддерживаются Clash, V2ray(c пакетом поддержки), Stash, Karing, Sing-box, Shadowsocks, Sub; Ссылка на конфигурацию).',
			'meta.profileUrlOrContentCannotEmpty' => 'Ссылка на подписку не может быть пустой',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Неправильный формат, исправьте его и добавьте еще раз:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Не удалось добавить: ${p}. Попробуйте изменить [UserAgent] и повторите попытку, или используйте собственный браузер устройства, чтобы открыть ссылку на конфигурацию и импортировать файл конфигурации, загруженный браузером, в это приложение.',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Не удалось добавить: ${p}, откройте агент или измените текущий узел агента и повторите попытку.',
			'meta.profileAddParseFailed' => 'Получение подписки не удалось',
			'meta.profileAddNoServerAvaliable' => 'Нет доступных серверов, убедитесь что подписка или файл профиля корректен. Если ваша конфигурация взята из GitHub, получите адрес ссылки, нажав кнопку [Raw] на странице.',
			'meta.profileAddWrapSuccess' => 'Конфигурация сгенерирована успешно. Для просмотра перейдите в [${_root.meta.myProfiles}]',
			'diversionRulesKeep' => 'Сохраните [${_root.meta.isp}]${_root.meta.diversionRules}',
			'diversionCustomGroupPreset' => 'Шаблоны для личных правил',
			'diversionCustomGroupPresetTips' => 'На основе выбранных шаблонов будут созданы/перезаписаны правила в[${_root.meta.diversionCustomGroup}] и в [${_root.meta.diversionRules}].',
			'diversionCustomGroupAddTips' => 'Примечание. Возможно, вам придется вручную настроить порядок правил после их добавления, иначе добавленное перенаправление может работать не так, как ожидалось.',
			'rulesetEnableTips' => 'Совет: После включения опции перейдите в [${_root.meta.diversionRules}] и установите их, иначе опция не будет действовать',
			'ispUserAgentTips' => '[${_root.meta.isp}] будет доставлять различные типы данных о подписке на основе [UserAgent] в запросе [HTTP].',
			'ispDiversionTips' => '${_root.meta.diversionRules}, предоставляемые подписками [${_root.meta.isp}] типа [V2Ray], не поддерживаются.',
			'isp.bind' => 'Привязать к [${_root.meta.isp}]',
			'isp.unbind' => ({required Object p}) => 'Отвязать[${p}]',
			'isp.faq' => ({required Object p}) => 'Часто задаваемые вопросы[${p}]',
			'isp.customerService' => ({required Object p}) => 'Служба поддержки клиентов[${p}]',
			'isp.follow' => ({required Object p}) => 'Следуйте[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}]Недействительно, или срок действия истек',
			'permission.camera' => 'Камера',
			'permission.screen' => 'Запись экрана',
			'permission.appQuery' => 'Получить список приложений',
			'permission.request' => ({required Object p}) => 'Включить разрешения [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'Пожалуйста, включите разрешение [${p}]',
			'tls.insecure' => 'Пропустить проверку сертификата',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Включить фрагментацию TLS',
			'tls.fragmentSize' => 'Размер фрагмента TLS',
			'tls.fragmentSleep' => 'Длина фрагмента паузы TLS',
			'tls.mixedCaseSNIEnable' => 'Включить гибридный SNI TLS',
			'tls.paddingEnable' => 'Включить заполнение TLS',
			'tls.paddingSize' => 'Размер заполнения TLS',
			'outboundRuleMode.currentSelected' => 'Текущий сервер',
			_ => null,
		} ?? switch (path) {
			'outboundRuleMode.urltest' => 'Автовыбор',
			'outboundRuleMode.direct' => 'Напрямую',
			'outboundRuleMode.block' => 'Блокировать',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Обновления конфигурации',
			'theme.light' => 'Светлый цвет',
			'theme.dark' => 'черный',
			'theme.auto' => 'автоматический',
			'downloadProxyStrategy' => 'Канал загрузки',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: подключиться к DNS-серверу через прокси-сервер для разрешения доменного имени\n[${_root.dnsProxyResolveMode.direct}]: подключиться напрямую к DNS-серверу для разрешения доменного имени\n[ ${_root.dnsProxyResolveMode.fakeip}]: через прокси-сервер Сервер разрешает доменное имя от вашего имени; если вы отключитесь от VPN, может потребоваться перезапуск вашего приложения; применяется только к входящему трафику из [TUN]',
			'routeFinal' => 'Final',
			'protocolSniff' => 'Определение протокола',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Пожалуйста, используйте [${p}]',
			'turnOffPrivateDirect' => 'Пожалуйста, сначала включите [Прямое подключение к частной сети]',
			'targetConnectFailed' => ({required Object p}) => 'Не удалось подключиться к [${p}]. Убедитесь, что устройство находится в той же локальной сети.',
			'appleTVSync' => 'Синхронизация текущей базовой конфигурации с Apple TV - Karing',
			'appleTVSyncDone' => 'Синхронизация завершена, перейдите в Apple TV — Karing, чтобы открыть/перезапустить соединение.',
			'appleTVRemoveCoreConfig' => 'Удаление Apple TV — базовая конфигурация Karing',
			'appleTVRemoveCoreConfigDone' => 'Apple TV — основной профиль Karing удален; VPN-сервис отключен;',
			'appleTVUrlInvalid' => 'Неверный URL-адрес. Откройте Apple TV — Karing, отсканируйте QR-код, отображаемый Karing.',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] не имеет этой функции, обновите его и повторите попытку.',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'Основная версия ядра не совпадает, пожалуйста, обновите [${p}] и попробуйте еще раз',
			'remoteProfileEditConfirm' => 'После обновления конфигурации изменения узла будут восстановлены. Продолжить?',
			'mustBeValidHttpsURL' => 'https URL должен быть действительным',
			'fileNotExistReinstall' => ({required Object p}) => 'Файл отсутствует [${p}], пожалуйста, переустановите',
			'noNetworkConnect' => 'Нет подключения к Интернету',
			'sudoPassword' => 'Пароль sudo (требуется для режима TUN)',
			'turnOffNetworkBeforeInstall' => 'Перед установкой обновления рекомендуется переключиться в [Режим полета].',
			'latencyTestResolveIP' => 'При ручном определении анализируется исходящий IP-адрес',
			'latencyTestConcurrency' => 'Параллелизм',
			'edgeRuntimeNotInstalled' => 'Среда выполнения Edge WebView2 не установлена ​​на текущем устройстве, и страница не может быть отображена. Загрузите и установите среду выполнения Edge WebView2 (x64), перезапустите приложение и повторите попытку.',
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
