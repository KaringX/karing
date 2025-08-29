///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsRu implements Translations {
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
	@override String get turnOffNetworkBeforeInstall => 'Перед установкой обновления рекомендуется переключиться в [Режим полета].';
	@override String get latencyTestResolveIP => 'При ручном определении анализируется исходящий IP-адрес';
	@override String get removeBannerAdsByShare => 'Поделиться [Karing] для удаления рекламы';
	@override String get removeBannerAdsByReward => 'Просмотреть рекламу для удаления новой рекламы';
	@override String removeBannerAdsByShareTip({required Object p, required Object d}) => 'Поделитесь ссылкой один раз, и вы получите ${p} дней без рекламных окон (можно суммировать до ${d} дней)';
	@override String removeBannerAdsByRewardTip({required Object p}) => 'Посмотрите рекламу и получите дни без рекламы в размере ${p} (не суммируются).';
	@override String removeBannerAdsDone({required Object p}) => 'Получено вознаграждение в размере ${p} дней без рекламы.';
	@override String get edgeRuntimeNotInstalled => 'Среда выполнения Edge WebView2 не установлена ​​на текущем устройстве, и страница не может быть отображена. Загрузите и установите среду выполнения Edge WebView2 (x64), перезапустите приложение и повторите попытку.';
	@override Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
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
	@override String get disableUAReport => 'Применить данные улучшения';
	@override String get disableUAReportTip => '[Данные для улучшения приложения] помогают нам улучшить работу с продуктом; версии ниже основной версии автоматически отключают все [Данные для улучшения приложения], кроме [Запуска приложения].';
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
	@override String invalidPort({required Object p}) => 'Неверный [Port]:${p}';
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
	@override String get title => 'Фильтр соединений';
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
	@override String get title => 'Соединения';
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
	@override String get howToRemoveAds => 'Как удалить рекламу';
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
	@override String get dnsEnableProxyResolveMode => '[${_root.SettingsScreen.dnsTypeProxy}] Способ разрешения в DNS';
	@override String get dnsEnableClientSubnet => '[${_root.SettingsScreen.dnsTypeDirect}] Включить ECS';
	@override String get dnsTestDomain => 'Тестовое доменное имя';
	@override String get dnsTestDomainInvalid => 'Неверное доменное имя';
	@override String get dnsTypeOutbound => 'Прокси-сервер';
	@override String get dnsTypeDirect => 'Прямой поток';
	@override String get dnsTypeProxy => 'Трафик через Proxy';
	@override String get dnsTypeResolver => 'DNS-сервер';
	@override String get dnsEnableRuleTips => 'Если включено, доменное имя выберет соответствующий DNS-сервер для разрешения в соответствии с правилами перенаправления DNS.';
	@override String get dnsEnableFakeIpTips => 'После включения FakeIP, если VPN-соединение отключено, возможно, потребуется перезапустить приложение. Эту функцию необходимо включить в [Режиме TUN];';
	@override String get dnsTypeOutboundTips => 'Для разрешения доменных имен прокси-сервера рекомендуется использовать безопасный DNS';
	@override String get dnsTypeDirectTips => 'Разрешение доменного имени для [${_root.SettingsScreen.dnsTypeDirect}]';
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
	@override String get hideAfterLaunch => 'Скрыть окно после запуска';
	@override String get autoSetSystemProxy => 'Установить системный прокси после подключения';
	@override String get bypassSystemProxy => 'Доменные имена, которым разрешено обходить системный прокси-сервер';
	@override String get disconnectWhenQuit => 'Отключаться при выходе из приложения';
	@override String get allowBypass => 'Разрешить приложениям обходить VPN';
	@override String get importSuccess => 'Импорт выполнен успешно';
	@override String get rewriteConfirm => 'Этот файл перезапишет существующую локальную конфигурацию. Продолжить?';
	@override String get networkShare => 'Общий доступ к сети';
	@override String get frontProxy => 'Фронтальный/цепной прокси';
	@override String frontProxyTips({required Object p}) => 'Данные-> Фронтальный/цепной прокси-сервер [Несколько прокси-серверов: сверху вниз]-> Прокси-сервер [${p}]-> Целевой сервер';
	@override String get allowOtherHostsConnect => 'Разрешить подключение по локальной сети';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'Из-за системных ограничений после включения этой функции приложения на этом устройстве, использующие http для доступа к сети, могут не иметь возможности правильно подключиться к сети.';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'Если после включения общего доступа другие люди не смогут получить доступ к этому устройству, попробуйте отключить этот переключатель.';
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
	@override String get download => 'Скачать';
	@override String get upload => 'Загрузить';
	@override String get downloadSpeed => 'Скорость загрузки';
	@override String get uploadSpeed => 'Скорость загрузки';
	@override String get loading => 'Загрузка...';
	@override String get convert => 'Конвертировать';
	@override String get check => 'Тест';
	@override String get detect => 'Тест';
	@override String get days => 'дни';
	@override String get hours => 'часы';
	@override String get minutes => 'минуты';
	@override String get seconds => 'Второй';
	@override String get protocol => 'Протокол';
	@override String get search => 'Поиск';
	@override String get custom => 'Самостоятельная настройка';
	@override String get inbound => 'Входящий';
	@override String get outbound => 'Выход';
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
	@override String get netInterfaces => 'Сетевой интерфейс';
	@override String get netSpeed => 'Скорость';
	@override String get trafficTotal => 'Трафик всего';
	@override String get trafficProxy => 'Трафик прокси';
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
	@override String get autoBackupAddProfile => 'После добавления конфигурации';
	@override String get autoBackupRemoveProfile => 'После удаления конфигурации';
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
	@override String get requestNeedsUserApproval => 'Пожалуйста, [разрешите] Karing установить системные расширения в [Системные настройки] - [Конфиденциальность и безопасность] и переподключитесь после завершения установки.';
	@override String get FullDiskAccessPermissionRequired => 'Включите разрешение karingServiceSE в [Системные настройки]-[Конфиденциальность и безопасность]-[Разрешение на полный доступ к диску] и переподключитесь.';
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
	@override String get adsBanner => 'баннерная реклама';
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
	@override String get myProfilesAtLeastOneReserveEnable => 'Невозможно отключить, оставьте включенным хотя бы один профиль';
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
	@override String get menuOpen => '    Открыть    ';
	@override String get menuExit => '    Выйти    ';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'AboutScreen.installRefer': return 'Ссылка на установку';
			case 'AboutScreen.installTime': return 'Время установки';
			case 'AboutScreen.versionChannel': return 'Канал автоматического обновления';
			case 'AboutScreen.disableUAReport': return 'Применить данные улучшения';
			case 'AboutScreen.disableUAReportTip': return '[Данные для улучшения приложения] помогают нам улучшить работу с продуктом; версии ниже основной версии автоматически отключают все [Данные для улучшения приложения], кроме [Запуска приложения].';
			case 'AboutScreen.devOptions': return 'Параметры разработчика';
			case 'AboutScreen.enableDebugLog': return 'Включить debug-лог';
			case 'AboutScreen.viewFilsContent': return 'Посмотреть файлы';
			case 'AboutScreen.enablePprof': return 'Включить pprof';
			case 'AboutScreen.pprofPanel': return 'pprof панель';
			case 'AboutScreen.allowRemoteAccessPprof': return 'Разрешить удаленный доступ к ${_root.AboutScreen.pprofPanel}';
			case 'AboutScreen.allowRemoteAccessHtmlBoard': return 'Разрешить удаленный доступ${_root.SettingsScreen.htmlBoard}';
			case 'AboutScreen.useOriginalSBProfile': return 'Использовать исходную конфигурацию Sing-box';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return 'Адрес сервера';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return 'Не может быть пустым';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return 'Ошибка входа:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return 'Не удалось получить список файлов:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => 'Неверный [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => 'Неверный [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => 'Неверный [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => 'Неверный [Rule Set]:${p}, URL-адрес должен быть действительным URL-адресом https двоичного файлом с расширением .srs/.json';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => 'Неверный [RuleSet(build-in)]:${p}, формат: geosite:xxx или geoip:xxx или acl:xxx, а xxx должно быть допустимым именем правила.';
			case 'DiversionGroupCustomEditScreen.invalidPackageId': return ({required Object p}) => 'Неверный [${_root.meta.appPackage}]:${p}';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return 'Совет: после сохранения перейдите в раздел [${_root.meta.diversionRules}] и настройте их, иначе изменения не будут действовать.';
			case 'DiversionRuleDetectScreen.title': return 'Тест правил перенаправления';
			case 'DiversionRuleDetectScreen.rule': return 'Правило:';
			case 'DiversionRuleDetectScreen.outbound': return 'Прокси-сервер:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return 'Совет: Правила применяются по очереди сверху вниз. Если ни одно соответствие не обнаружено, то действует правило [Final]';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'ISP не может быть пустой';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'URL не может быть пустой';
			case 'DnsSettingsScreen.error': return ({required Object p}) => 'Неподдерживаемый тип:${p}';
			case 'DnsSettingsScreen.dnsDesc': return 'Первый столбец данных — это задержка запроса при прямом соединении;\nВторой столбец, если включено [[действующий поток] Разрешать DNS через прокси-сервер]: данные — это задержка запроса, пересылаемого через текущий прокси-сервер; Если выключено [[действующий поток] Разрешать DNS через прокси-сервер]: данные - это задержка запроса при прямом соединении.';
			case 'FileContentViewerScreen.title': return 'Просмотр содержимого файла';
			case 'FileContentViewerScreen.clearFileContent': return 'Вы уверены, что хотите очистить содержимое файла?';
			case 'FileContentViewerScreen.clearFileContentTips': return 'Вы уверены, что  хотите очистить содержимое файла профиля? Очистка файла профиля может привести к потере данных или некорректной работе приложения. Действуйте осторожно.';
			case 'HomeScreen.toSelectServer': return 'Выберите сервер';
			case 'HomeScreen.invalidServer': return 'Не работает. Пожалуйста, выберите другой';
			case 'HomeScreen.disabledServer': return 'Был отключен. Пожалуйста, выберите другой';
			case 'HomeScreen.expiredServer': return 'Нет доступного сервера: возможно, профиль устарел или отключен';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'HomeScreen.myLinkEmpty': return 'Пожалуйста, настройте [Быструю ссылку] перед использованием';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}], и соединение может оказаться невозможным из-за ограничений системной памяти';
			case 'HomeScreen.tooMuchServers2': return ({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}] могут привести к медленному или недоступному соединению.';
			case 'LaunchFailedScreen.invalidProcess': return 'Не удалось запустить приложение [Неверное имя процесса], переустановите приложение в отдельную папку';
			case 'LaunchFailedScreen.invalidProfile': return 'Не удалось запустить приложение [Не удалось получить доступ к профилю], переустановите приложение';
			case 'LaunchFailedScreen.invalidVersion': return 'Не удалось запустить приложение [Неверная версия], переустановите приложение';
			case 'LaunchFailedScreen.systemVersionLow': return 'Не удалось запустить приложение [Слишком низкая версия системы]';
			case 'LaunchFailedScreen.invalidInstallPath': return 'Путь установки недействителен, переустановите его по допустимому пути';
			case 'MyProfilesMergeScreen.profilesMerge': return 'Объединение профилей';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return 'Целевой профиль';
			case 'MyProfilesMergeScreen.profilesMergeSource': return 'Профиль - источник';
			case 'MyProfilesMergeScreen.profilesMergeTips': return 'Совет: Настройки перенаправления для профиля - источника будут удалены.';
			case 'NetCheckScreen.title': return 'Диагностика сети';
			case 'NetCheckScreen.warn': return 'Примечание. Из-за влияния сетевой среды и правил перенаправления результаты теста не полностью эквивалентны реальным результатам.';
			case 'NetCheckScreen.invalidDomain': return 'Неверное имя домена';
			case 'NetCheckScreen.connectivity': return 'Подключение к сети';
			case 'NetCheckScreen.connectivityTestIpv4AllFailed': return ({required Object p}) => 'Ipv4 Тест подключения[${p}] неудачен';
			case 'NetCheckScreen.connectivityTestIpv4Ok': return 'Ipv4 Соединение выполнено успешно';
			case 'NetCheckScreen.connectivityTestIpv6AllFailed': return ({required Object p}) => 'Ipv6 Тест подключения[${p}] неудачен. Возможно, ваша сеть не поддерживает ipv6.';
			case 'NetCheckScreen.connectivityTestIpv6Ok': return 'Ipv6 Соединение выполнено успешно';
			case 'NetCheckScreen.connectivityTestOk': return 'Сеть подключена к Интернету';
			case 'NetCheckScreen.connectivityTestFailed': return 'Ваша сеть не подключена к Интернету';
			case 'NetCheckScreen.remoteRulesetsDownloadOk': return 'Все успешно скачано';
			case 'NetCheckScreen.remoteRulesetsDownloadNotOk': return 'Сбой загрузки';
			case 'NetCheckScreen.outbound': return 'Прокси-сервер';
			case 'NetCheckScreen.outboundOk': return ({required Object p}) => '[${p}]Соединение установлено успешно';
			case 'NetCheckScreen.outboundFailed': return ({required Object p1, required Object p2}) => '[${p1}]Соединение не удалось\nошибка:[${p2}]';
			case 'NetCheckScreen.dnsServer': return 'DNS сервер';
			case 'NetCheckScreen.dnsOk': return ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]DNS Разобрано успешно\nDNS правило:[${p2}]\nЗадержка:[${p3} ms]\nадрес:[${p4}]';
			case 'NetCheckScreen.dnsFailed': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]DNS Не удалось выполнить синтаксический анализ\n правило:[${p2}]\nошибка:[${p3}]';
			case 'NetCheckScreen.host': return 'HTTP соединение';
			case 'NetCheckScreen.hostConnection': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nПравила перенаправления:[${p2}]\nПрокси-сервер:[${p3}]';
			case 'NetCheckScreen.hostConnectionOk': return 'Соединение установлено успешно';
			case 'NetCheckScreen.hostConnectionFailed': return ({required Object p}) => 'Соединение не удалось:[${p}]';
			case 'NetConnectionsFilterScreen.title': return 'Фильтр соединений';
			case 'NetConnectionsFilterScreen.hostIp': return 'Domain/IP';
			case 'NetConnectionsFilterScreen.app': return 'Приложение';
			case 'NetConnectionsFilterScreen.rule': return 'Правило';
			case 'NetConnectionsFilterScreen.chain': return 'Исходящий';
			case 'NetConnectionsScreen.title': return 'Соединения';
			case 'NetConnectionsScreen.copyAsCSV': return 'Скопировано в CSV формате';
			case 'NetConnectionsScreen.selectType': return 'Выберите тип перенаправления';
			case 'PerAppAndroidScreen.title': return 'Проксируемые приложения';
			case 'PerAppAndroidScreen.whiteListMode': return 'Режим белого списка';
			case 'PerAppAndroidScreen.whiteListModeTip': return 'Если включено: перенаправляются через прокси-сервер только те приложения, которые были отмечены. Если выключено: перенаправляются через прокси-сервер только те приложения, которые не были отмечены.';
			case 'RegionSettingsScreen.title': return 'Страна или регион';
			case 'RegionSettingsScreen.Regions': return 'Совет: Пожалуйста, правильно укажите текущую страну или регион. В противном случае это может вызвать проблемы с перенаправлением в сети';
			case 'ServerSelectScreen.title': return 'Выбор сервера';
			case 'ServerSelectScreen.autoSelectServer': return 'Автовыбор сервера с наименьшей задержкой';
			case 'ServerSelectScreen.recentUse': return 'Недавно использованные';
			case 'ServerSelectScreen.myFav': return 'Мои избранные';
			case 'ServerSelectScreen.selectLocal': return ({required Object p}) => 'Выбранный сервер является локальным, и может работать неправильно:${p}';
			case 'ServerSelectScreen.selectRequireEnableIPv6': return 'Выбранный сервер имеет адрес IPv6 и требует [Включить IPv6]';
			case 'ServerSelectScreen.selectDisabled': return 'Сервер отключен';
			case 'ServerSelectScreen.error404': return 'При  измерении задержки произошла ошибка. Проверьте, существует ли профиль с таким содержимым.';
			case 'SettingsScreen.getTranffic': return 'Получить трафик';
			case 'SettingsScreen.tutorial': return 'Руководство';
			case 'SettingsScreen.commonlyUsedRulesets': return 'Коллекция наборов правил';
			case 'SettingsScreen.howToRemoveAds': return 'Как удалить рекламу';
			case 'SettingsScreen.htmlBoard': return 'Веб-панель';
			case 'SettingsScreen.dnsLeakDetection': return 'Тест утечки DNS';
			case 'SettingsScreen.proxyLeakDetection': return 'Обнаружение утечки наличия прокси';
			case 'SettingsScreen.speedTest': return 'Тест скорости';
			case 'SettingsScreen.rulesetDirectDownlad': return 'Правила прямой загрузки';
			case 'SettingsScreen.hideUnusedDiversionGroup': return 'Скрыть неактивные правила перенаправления трафика';
			case 'SettingsScreen.disableISPDiversionGroup': return 'Отключить правила перенаправления [${_root.meta.isp}]';
			case 'SettingsScreen.portSettingRule': return 'Действуют все правила';
			case 'SettingsScreen.portSettingDirectAll': return 'Всё подключено напрямую';
			case 'SettingsScreen.portSettingProxyAll': return 'Всё идёт через прокси';
			case 'SettingsScreen.portSettingControl': return 'Управление и синхронизация';
			case 'SettingsScreen.portSettingCluster': return 'Кластерный сервис';
			case 'SettingsScreen.modifyPort': return 'Изменить порт';
			case 'SettingsScreen.modifyPortOccupied': return 'Порт занят, используйте другой порт';
			case 'SettingsScreen.ipStrategyTips': return 'Перед включением убедитесь, что ваша сеть поддерживает IPv6, в противном случае нормальный доступ к части трафика будет невозможен';
			case 'SettingsScreen.tunAppendHttpProxy': return 'Подключите HTTP-прокси к VPN';
			case 'SettingsScreen.tunAppendHttpProxyTips': return 'Некоторые приложения будут обходить устройство виртуальной сетевой карты и напрямую подключаться к HTTP-прокси.';
			case 'SettingsScreen.tunAllowBypassHttpProxyDomain': return 'Домены, которым разрешено обходить HTTP-прокси';
			case 'SettingsScreen.dnsEnableRule': return 'Включить правила для DNS';
			case 'SettingsScreen.dnsEnableProxyResolveMode': return '[${_root.SettingsScreen.dnsTypeProxy}] Способ разрешения в DNS';
			case 'SettingsScreen.dnsEnableClientSubnet': return '[${_root.SettingsScreen.dnsTypeDirect}] Включить ECS';
			case 'SettingsScreen.dnsTestDomain': return 'Тестовое доменное имя';
			case 'SettingsScreen.dnsTestDomainInvalid': return 'Неверное доменное имя';
			case 'SettingsScreen.dnsTypeOutbound': return 'Прокси-сервер';
			case 'SettingsScreen.dnsTypeDirect': return 'Прямой поток';
			case 'SettingsScreen.dnsTypeProxy': return 'Трафик через Proxy';
			case 'SettingsScreen.dnsTypeResolver': return 'DNS-сервер';
			case 'SettingsScreen.dnsEnableRuleTips': return 'Если включено, доменное имя выберет соответствующий DNS-сервер для разрешения в соответствии с правилами перенаправления DNS.';
			case 'SettingsScreen.dnsEnableFakeIpTips': return 'После включения FakeIP, если VPN-соединение отключено, возможно, потребуется перезапустить приложение. Эту функцию необходимо включить в [Режиме TUN];';
			case 'SettingsScreen.dnsTypeOutboundTips': return 'Для разрешения доменных имен прокси-сервера рекомендуется использовать безопасный DNS';
			case 'SettingsScreen.dnsTypeDirectTips': return 'Разрешение доменного имени для [${_root.SettingsScreen.dnsTypeDirect}]';
			case 'SettingsScreen.dnsTypeProxyTips': return 'Разрешение доменных имен для трафика через Proxy';
			case 'SettingsScreen.dnsTypeResolverTips': return 'Разрешение доменных имен для DNS-серверов';
			case 'SettingsScreen.dnsAutoSetServer': return 'Автоматически настроить сервер';
			case 'SettingsScreen.dnsResetServer': return 'Сбросить сервер';
			case 'SettingsScreen.inboundDomainResolve': return 'Разрешение входящих доменных имен';
			case 'SettingsScreen.privateDirect': return 'Прямое подключение к частной сети';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => 'Некоторые доменные имена без настроенных правил переадресации необходимо разрешить, прежде чем они смогут соответствовать правилам переадресации на основе IP; эта функция влияет на входящие запросы к порту прокси [${p}]';
			case 'SettingsScreen.useRomoteRes': return 'Использовать удаленные ресурсы';
			case 'SettingsScreen.autoAppendRegion': return 'Автоматически добавлять основные правила';
			case 'SettingsScreen.autoSelect': return 'Автовыбор';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'Игнорировать [фронт/цепные] прокси-серверы';
			case 'SettingsScreen.autoSelectServerInterval': return 'Интервал проверок задержки';
			case 'SettingsScreen.autoSelectSelectedHealthCheckInterval': return 'Текущий интервал проверки работоспособности сервера';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return 'Перетестировать после смены сети';
			case 'SettingsScreen.autoSelectServerIntervalTips': return 'Чем короче временной интервал, тем чаще обновляются данные о задержке сервера. Но это потребует больше ресурсов и энергии';
			case 'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips': return 'Если обнаружение не удалось, узел переключается; если при переключении узла не найдено ни одного доступного узла, группа повторно обнаруживается с задержкой.';
			case 'SettingsScreen.autoSelectServerFavFirst': return 'Предпочитать [Мои избранные]';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return 'Обновить текущий сервер после измерения задержки вручную';
			case 'SettingsScreen.autoSelectServerFavFirstTips': return 'Если список [Мои избранные] не пуст, то будут использоваться серверы из [Мои избранные]';
			case 'SettingsScreen.autoSelectServerFilter': return 'Отфильтровать сервера';
			case 'SettingsScreen.autoSelectServerFilterTips': return ({required Object p}) => 'Сервера с превышением задержки будут отфильтрованы; если после фильтрации ни один сервер не будет доступен, вместо него будут использоваться первые [${p}] серверы';
			case 'SettingsScreen.autoSelectServerLimitedNum': return 'Максимальное количество серверов';
			case 'SettingsScreen.autoSelectServerLimitedNumTips': return 'Если серверов больше этого числа, лишние будут отброшены.';
			case 'SettingsScreen.numInvalid': return 'Неправильный номер';
			case 'SettingsScreen.hideInvalidServer': return 'Скрыть нерабочие серверы';
			case 'SettingsScreen.sortServer': return 'Сортировка серверов';
			case 'SettingsScreen.sortServerTips': return 'Сортировать по задержке от низкой к высокой';
			case 'SettingsScreen.selectServerHideRecommand': return 'Скрыть [Рекомендуемые]';
			case 'SettingsScreen.selectServerHideRecent': return 'Скрыть [Недавно использованные]';
			case 'SettingsScreen.selectServerHideFav': return 'Скрыть [Мои избранные]';
			case 'SettingsScreen.homeScreen': return 'Настройка главного экрана';
			case 'SettingsScreen.theme': return 'Тема';
			case 'SettingsScreen.widgetsAlpha': return 'Прозрачность виджетов';
			case 'SettingsScreen.widgetsEmpty': return 'Виджет недоступен';
			case 'SettingsScreen.backgroundImage': return 'Фоновое изображение';
			case 'SettingsScreen.myLink': return 'Быстрая ссылка';
			case 'SettingsScreen.autoConnectAfterLaunch': return 'Автоматическое подключение после запуска';
			case 'SettingsScreen.hideAfterLaunch': return 'Скрыть окно после запуска';
			case 'SettingsScreen.autoSetSystemProxy': return 'Установить системный прокси после подключения';
			case 'SettingsScreen.bypassSystemProxy': return 'Доменные имена, которым разрешено обходить системный прокси-сервер';
			case 'SettingsScreen.disconnectWhenQuit': return 'Отключаться при выходе из приложения';
			case 'SettingsScreen.allowBypass': return 'Разрешить приложениям обходить VPN';
			case 'SettingsScreen.importSuccess': return 'Импорт выполнен успешно';
			case 'SettingsScreen.rewriteConfirm': return 'Этот файл перезапишет существующую локальную конфигурацию. Продолжить?';
			case 'SettingsScreen.networkShare': return 'Общий доступ к сети';
			case 'SettingsScreen.frontProxy': return 'Фронтальный/цепной прокси';
			case 'SettingsScreen.frontProxyTips': return ({required Object p}) => 'Данные-> Фронтальный/цепной прокси-сервер [Несколько прокси-серверов: сверху вниз]-> Прокси-сервер [${p}]-> Целевой сервер';
			case 'SettingsScreen.allowOtherHostsConnect': return 'Разрешить подключение по локальной сети';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.allowOtherHostsConnectWarn': return 'Из-за системных ограничений после включения этой функции приложения на этом устройстве, использующие http для доступа к сети, могут не иметь возможности правильно подключиться к сети.';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'Если после включения общего доступа другие люди не смогут получить доступ к этому устройству, попробуйте отключить этот переключатель.';
			case 'SettingsScreen.enableCluster': return 'Включить кластер прокси Socks/Http';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'Разрешить подключение по локальной сети к кластеру';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'Аутентификация прокси-кластера';
			case 'SettingsScreen.tunMode': return 'Режим TUN';
			case 'SettingsScreen.tuni4Address': return 'IP-адрес';
			case 'SettingsScreen.tunModeTips': return 'В режиме TUN весь трафик системы будет перенаправлен через соединение [В этом режиме вы можете оставить системный прокси отключенным]';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'Для режима TUN требуются права администратора. Перезапустите приложение от имени администратора';
			case 'SettingsScreen.tunStack': return 'Stack';
			case 'SettingsScreen.tunHijackTips': return 'После закрытия DNS-запросы от TUN будут пересылаться напрямую на соответствующий DNS-сервер.';
			case 'SettingsScreen.launchAtStartup': return 'Запуск при включении';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return 'Выйти из приложения при переключении пользователя';
			case 'SettingsScreen.handleScheme': return 'Схемы системного вызова';
			case 'SettingsScreen.portableMode': return 'Портативный режим';
			case 'SettingsScreen.portableModeDisableTips': return 'Если вам нужно выйти из портативного режима, выйдите из [karing] и вручную удалите папку [profiles] в том же каталоге, что и [karing.exe]';
			case 'SettingsScreen.handleKaringScheme': return 'Вызов karing://[параметры]';
			case 'SettingsScreen.handleClashScheme': return 'Вызов clash://[параметры]';
			case 'SettingsScreen.handleSingboxScheme': return 'Вызов sing-box://[параметры]';
			case 'SettingsScreen.alwayOnVPN': return 'всегда открытое соединение';
			case 'SettingsScreen.disconnectAfterSleep': return 'Отключение после спящего режима системы';
			case 'SettingsScreen.removeSystemVPNConfig': return 'Удалить профиль VPN';
			case 'SettingsScreen.timeConnectOrDisconnect': return 'Запланированное подключение/отключение';
			case 'SettingsScreen.timeConnectOrDisconnectTips': return 'Чтобы это заработало, необходимо подключить VPN; после его подключения [автоматическое засыпание] будет отключено';
			case 'SettingsScreen.timeConnectAndDisconnectInterval': return ({required Object p}) => 'Интервал подключения/отключения не может быть меньше ${p} минут.';
			case 'SettingsScreen.disableFontScaler': return 'Отключить масштабирование шрифта';
			case 'SettingsScreen.autoOrientation': return 'Следовать за поворотом экрана';
			case 'SettingsScreen.restartTakesEffect': return 'Требуется перезапуск';
			case 'SettingsScreen.resetSettings': return 'Сброс настроек';
			case 'SettingsScreen.cleanCache': return 'Очистка кэша';
			case 'SettingsScreen.cleanCacheDone': return 'Очистка завершена';
			case 'SettingsScreen.appleTestFlight': return 'Apple TestFlight';
			case 'SettingsScreen.appleAppStore': return 'Apple AppStore';
			case 'SettingsScreen.hasNewVersion': return ({required Object p}) => 'Обновить версию ${p}';
			case 'SettingsScreen.follow': return 'Подписаться на нас';
			case 'SettingsScreen.contactUs': return 'Связаться с нами';
			case 'SettingsScreen.supportUs': return 'Поддержите нас';
			case 'SettingsScreen.rateInApp': return 'Оценить нас';
			case 'SettingsScreen.rateInAppStore': return 'Оценить нас в App Store';
			case 'UserAgreementScreen.privacyFirst': return 'Ваша конфиденциальность превыше всего';
			case 'UserAgreementScreen.agreeAndContinue': return 'Принять и продолжить';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => 'Новая версия [${p}] доступна';
			case 'VersionUpdateScreen.update': return 'Перезапустить';
			case 'VersionUpdateScreen.cancel': return 'Не сейчас';
			case 'CommonWidget.diableAlwayOnVPN': return 'Если параметр [VPN всегда включен] включен, отключите его и попробуйте подключиться еще раз';
			case 'CommonWidget.resetPort': return 'Пожалуйста, измените порт на другой доступный порт или закройте приложение, занимающее порт.';
			case 'main.tray.menuOpen': return '    Открыть    ';
			case 'main.tray.menuExit': return '    Выйти    ';
			case 'meta.enable': return 'Включить';
			case 'meta.disable': return 'Запретить';
			case 'meta.bydefault': return 'по умолчанию';
			case 'meta.filter': return 'Фильтр';
			case 'meta.filterMethod': return 'Метод фильтра';
			case 'meta.include': return 'Включать';
			case 'meta.exclude': return 'Исключать';
			case 'meta.all': return 'Все';
			case 'meta.prefer': return 'Приоритет';
			case 'meta.only': return 'Только';
			case 'meta.open': return 'Открыть';
			case 'meta.close': return 'Закрыть';
			case 'meta.quit': return 'Выйти';
			case 'meta.add': return 'Добавить';
			case 'meta.addSuccess': return 'Добавлено успешно';
			case 'meta.addFailed': return ({required Object p}) => 'Ошибка при добавлении:${p}';
			case 'meta.remove': return 'Удалить';
			case 'meta.removeConfirm': return 'Подтверждаете удаление?';
			case 'meta.edit': return 'Редактировать';
			case 'meta.view': return 'Просмотр';
			case 'meta.more': return 'Больше';
			case 'meta.tips': return 'Инфо';
			case 'meta.copy': return 'Скопировать';
			case 'meta.save': return 'Сохранить';
			case 'meta.ok': return 'Ок';
			case 'meta.cancel': return 'Закрыть';
			case 'meta.feedback': return 'Обратная связь';
			case 'meta.feedbackContent': return 'Содержание';
			case 'meta.feedbackContentHit': return 'Не более 500 символов';
			case 'meta.feedbackContentCannotEmpty': return 'Содержание не может быть пустым';
			case 'meta.faq': return 'Часто задаваемые вопросы (FAQ)';
			case 'meta.download': return 'Скачать';
			case 'meta.upload': return 'Загрузить';
			case 'meta.downloadSpeed': return 'Скорость загрузки';
			case 'meta.uploadSpeed': return 'Скорость загрузки';
			case 'meta.loading': return 'Загрузка...';
			case 'meta.convert': return 'Конвертировать';
			case 'meta.check': return 'Тест';
			case 'meta.detect': return 'Тест';
			case 'meta.days': return 'дни';
			case 'meta.hours': return 'часы';
			case 'meta.minutes': return 'минуты';
			case 'meta.seconds': return 'Второй';
			case 'meta.protocol': return 'Протокол';
			case 'meta.search': return 'Поиск';
			case 'meta.custom': return 'Самостоятельная настройка';
			case 'meta.inbound': return 'Входящий';
			case 'meta.outbound': return 'Выход';
			case 'meta.connect': return 'Соединить';
			case 'meta.disconnect': return 'Отключить';
			case 'meta.reconnect': return 'Повторное подключение';
			case 'meta.connected': return 'Подключено';
			case 'meta.disconnected': return 'Отключено';
			case 'meta.connecting': return 'Подключение';
			case 'meta.connectTimeout': return 'Таймаут при соединении';
			case 'meta.timeout': return 'Тайм-аут';
			case 'meta.timeoutDuration': return 'Длительность тайм-аута';
			case 'meta.runDuration': return 'Время выполнения';
			case 'meta.latency': return 'Задерживать';
			case 'meta.latencyTest': return 'Обнаружение задержки';
			case 'meta.language': return 'Язык';
			case 'meta.next': return 'Дальше';
			case 'meta.done': return 'Готово';
			case 'meta.apply': return 'Применить';
			case 'meta.refresh': return 'Обновить';
			case 'meta.retry': return 'Хотите попробовать еще раз?';
			case 'meta.update': return 'Обновить';
			case 'meta.updateInterval': return 'Интервал обновления';
			case 'meta.updateInterval5mTips': return 'Минимум: 5 мин';
			case 'meta.updateFailed': return ({required Object p}) => 'Не удалось обновить:${p}';
			case 'meta.none': return 'Ничего не делать';
			case 'meta.start': return 'Начать';
			case 'meta.pause': return 'Пауза';
			case 'meta.reset': return 'Перезагрузить';
			case 'meta.submit': return 'Отправить';
			case 'meta.user': return 'Пользователь';
			case 'meta.account': return 'Аккаунт';
			case 'meta.password': return 'Пароль';
			case 'meta.required': return 'Необходимо';
			case 'meta.type': return 'тип';
			case 'meta.path': return 'путь';
			case 'meta.local': return 'местный';
			case 'meta.remote': return 'удаленный';
			case 'meta.other': return 'Другой';
			case 'meta.dns': return 'DNS';
			case 'meta.url': return 'URL';
			case 'meta.urlInvalid': return 'Неверный URL';
			case 'meta.urlCannotEmpty': return 'Ссылка не может быть пустой';
			case 'meta.urlTooLong': return 'URL слишком длинный (>8182)';
			case 'meta.copyUrl': return 'Скопировать ссылку';
			case 'meta.openUrl': return 'Открыть ссылку';
			case 'meta.shareUrl': return 'Поделиться ссылкой';
			case 'meta.speedTestUrl': return 'URL-адрес теста скорости';
			case 'meta.tls': return 'TLS';
			case 'meta.userAgent': return 'UserAgent';
			case 'meta.staticIP': return 'Статический IP';
			case 'meta.isp': return 'VPN-провайдер';
			case 'meta.domainSuffix': return 'Суффикс доменного имени';
			case 'meta.domain': return 'Имя домена';
			case 'meta.domainKeyword': return 'Ключевые слова в имени домена';
			case 'meta.domainRegex': return 'Регулярные выражения для имен доменов';
			case 'meta.ip': return 'IP';
			case 'meta.port': return 'Порт';
			case 'meta.portRange': return 'Диапазон портов';
			case 'meta.appPackage': return 'Идентификатор пакета приложения';
			case 'meta.processName': return 'Имя процесса';
			case 'meta.processPath': return 'Путь к процессу';
			case 'meta.processDir': return 'Каталог процессов';
			case 'meta.systemProxy': return 'Системный прокси';
			case 'meta.netInterfaces': return 'Сетевой интерфейс';
			case 'meta.netSpeed': return 'Скорость';
			case 'meta.trafficTotal': return 'Трафик всего';
			case 'meta.trafficProxy': return 'Трафик прокси';
			case 'meta.website': return 'Веб-сайт';
			case 'meta.memory': return 'Память';
			case 'meta.outboundMode': return 'Исходящий режим';
			case 'meta.rule': return 'Правила';
			case 'meta.global': return 'Глобально';
			case 'meta.qrcode': return 'QR-код';
			case 'meta.qrcodeTooLong': return 'Слишком большой текст для отображения';
			case 'meta.qrcodeShare': return 'Поделиться QR-кодом';
			case 'meta.textToQrcode': return 'Преобразование текста в QR-код';
			case 'meta.qrcodeScan': return 'Сканировать QR-код';
			case 'meta.qrcodeScanResult': return 'Результат сканирования';
			case 'meta.qrcodeScanFromImage': return 'Открыть';
			case 'meta.qrcodeScanResultFailed': return 'Не удалось проанализировать изображение. Убедитесь, что снимок экрана представляет собой действительный QR-код.';
			case 'meta.qrcodeScanResultEmpty': return 'Пустой результат сканирования.';
			case 'meta.screenshot': return 'Скриншот';
			case 'meta.backupAndSync': return 'Резервное копирование и синхронизация';
			case 'meta.autoBackup': return 'Автоматическое резервное копирование';
			case 'meta.autoBackupAddProfile': return 'После добавления конфигурации';
			case 'meta.autoBackupRemoveProfile': return 'После удаления конфигурации';
			case 'meta.currentProfile': return 'Текущая конфигурация';
			case 'meta.importAndExport': return 'Импорт и экспорт в файл';
			case 'meta.import': return 'Импорт';
			case 'meta.importFromUrl': return 'Импорт из URL';
			case 'meta.export': return 'Экспорт';
			case 'meta.send': return 'Передать';
			case 'meta.receive': return 'Принять';
			case 'meta.sendConfirm': return 'Подтверждаете передачу?';
			case 'meta.termOfUse': return 'Условия использования';
			case 'meta.privacyPolicy': return 'Политика конфиденциальности';
			case 'meta.about': return 'О Karing';
			case 'meta.name': return 'Название';
			case 'meta.version': return 'Версия';
			case 'meta.notice': return 'Уведомления';
			case 'meta.appNotifyWithReason': return ({required Object p, required Object p1}) => 'Действие:${p}\nПричина:${p1}';
			case 'meta.sort': return 'Отсортировать';
			case 'meta.novice': return 'Режим новичка';
			case 'meta.willCompleteAfterRebootInstall': return 'Пожалуйста, перезагрузите устройство, чтобы завершить установку расширения системы.';
			case 'meta.willCompleteAfterRebootUninstall': return 'Пожалуйста, перезагрузите устройство, чтобы завершить удаление системного расширения.';
			case 'meta.requestNeedsUserApproval': return 'Пожалуйста, [разрешите] Karing установить системные расширения в [Системные настройки] - [Конфиденциальность и безопасность] и переподключитесь после завершения установки.';
			case 'meta.FullDiskAccessPermissionRequired': return 'Включите разрешение karingServiceSE в [Системные настройки]-[Конфиденциальность и безопасность]-[Разрешение на полный доступ к диску] и переподключитесь.';
			case 'meta.tvMode': return 'Режим ТВ';
			case 'meta.recommended': return 'Рекомендуемые';
			case 'meta.innerError': return ({required Object p}) => 'Внутренняя ошибка:${p}';
			case 'meta.logicOperation': return 'Логическая опреация';
			case 'meta.share': return 'Поделиться';
			case 'meta.candidateWord': return 'Ключевые слова';
			case 'meta.keywordOrRegx': return 'Ключевые слова/регулярные выражения';
			case 'meta.importFromClipboard': return 'Импорт из буфера обмена';
			case 'meta.exportToClipboard': return 'Экспорт в буфер обмена';
			case 'meta.server': return 'Сервер';
			case 'meta.ads': return 'Удалять';
			case 'meta.adsRemove': return 'Удалить рекламу';
			case 'meta.adsBanner': return 'баннерная реклама';
			case 'meta.donate': return 'Пожертвовать';
			case 'meta.diversion': return 'Правила';
			case 'meta.diversionRules': return 'Правила перенаправления';
			case 'meta.diversionCustomGroup': return 'Личные правила';
			case 'meta.urlTestCustomGroup': return 'Пользовательский автоматический выбор';
			case 'meta.setting': return 'Настройки';
			case 'meta.iCloud': return 'iCloud';
			case 'meta.appleTV': return 'Apple TV';
			case 'meta.webdav': return 'Webdav';
			case 'meta.lanSync': return 'Синхронизация локально (QR-код)';
			case 'meta.lanSyncNotQuitTips': return 'Не выходите из этого окна до завершения синхронизации.';
			case 'meta.deviceNoSpace': return 'Недостаточно места на диске';
			case 'meta.hideSystemApp': return 'Скрыть системные приложения';
			case 'meta.hideAppIcon': return 'Скрыть значок приложения';
			case 'meta.hideDockIcon': return 'Скрыть значок дока';
			case 'meta.remark': return 'Примечание';
			case 'meta.remarkExist': return 'Примечание уже существует, используйте другое имя';
			case 'meta.remarkCannotEmpty': return 'Примечание не может быть пустым';
			case 'meta.remarkTooLong': return 'Примечания до 32 символов';
			case 'meta.openDir': return 'Открыть каталог файлов';
			case 'meta.fileChoose': return 'Выбрать файл';
			case 'meta.filePathCannotEmpty': return 'Путь к файлу не может быть пустым';
			case 'meta.fileNotExist': return ({required Object p}) => 'Файла не существует:${p}';
			case 'meta.fileTypeInvalid': return ({required Object p}) => 'Неверный тип файла:${p}';
			case 'meta.uwpExemption': return 'Исключение из изоляции сети UWP';
			case 'meta.rulesetGeoSite': return 'GeoSite';
			case 'meta.rulesetGeoIp': return 'GeoIP';
			case 'meta.rulesetAcl': return 'ACL';
			case 'meta.getProfile': return 'Получить конфигурацию';
			case 'meta.addProfile': return 'Добавить профиль';
			case 'meta.myProfiles': return 'Профили';
			case 'meta.myProfilesAtLeastOneReserveEnable': return 'Невозможно отключить, оставьте включенным хотя бы один профиль';
			case 'meta.profileEdit': return 'Редактирование профилей';
			case 'meta.profileEditUrlExist': return 'URL-адрес уже существует, используйте другой URL-адрес';
			case 'meta.profileEditReloadAfterProfileUpdate': return 'Перезагрузить после обновления профиля';
			case 'meta.profileEditTestLatencyAfterProfileUpdate': return 'Начать тестирование задержек после обновления профиля';
			case 'meta.profileEditTestLatencyAfterProfileUpdateTips': return 'VPN необходимо подключить, и включить [Перезагрузить после обновления профиля]';
			case 'meta.profileEditTestLatencyAutoRemove': return 'Автоматически удалять серверы, не прошедшие тесты на задержку';
			case 'meta.profileEditTestLatencyAutoRemoveTips': return 'Попробуйте до 3 раз';
			case 'meta.profileImport': return 'Импорт файла конфигурации';
			case 'meta.profileAddUrlOrContent': return 'Добавление подписки';
			case 'meta.profileExists': return 'Профиль уже существует. Пожалуйста, не добавляйте его повторно';
			case 'meta.profileUrlOrContent': return 'Ссылка на подписку/содержание';
			case 'meta.profileUrlOrContentHit': return 'Ссылка на подписку/содержание [обязательно] (Поддерживаются Clash, V2ray(c пакетом поддержки), Stash, Karing, Sing-box, Shadowsocks, Sub; Ссылка на конфигурацию).';
			case 'meta.profileUrlOrContentCannotEmpty': return 'Ссылка на подписку не может быть пустой';
			case 'meta.profileAddFailedFormatException': return ({required Object p}) => 'Неправильный формат, исправьте его и добавьте еще раз:${p}';
			case 'meta.profileAddFailedThenDownloadAndImport': return ({required Object p}) => 'Не удалось добавить: ${p}. Попробуйте изменить [UserAgent] и повторите попытку, или используйте собственный браузер устройства, чтобы открыть ссылку на конфигурацию и импортировать файл конфигурации, загруженный браузером, в это приложение.';
			case 'meta.profileAddFailedHandshakeException': return ({required Object p}) => 'Не удалось добавить: ${p}, откройте агент или измените текущий узел агента и повторите попытку.';
			case 'meta.profileAddParseFailed': return 'Получение подписки не удалось';
			case 'meta.profileAddNoServerAvaliable': return 'Нет доступных серверов, убедитесь что подписка или файл профиля корректен. Если ваша конфигурация взята из GitHub, получите адрес ссылки, нажав кнопку [Raw] на странице.';
			case 'meta.profileAddWrapSuccess': return 'Конфигурация сгенерирована успешно. Для просмотра перейдите в [${_root.meta.myProfiles}]';
			case 'diversionRulesKeep': return 'Сохраните [${_root.meta.isp}]${_root.meta.diversionRules}';
			case 'diversionCustomGroupPreset': return 'Шаблоны для личных правил';
			case 'diversionCustomGroupPresetTips': return 'На основе выбранных шаблонов будут созданы/перезаписаны правила в[${_root.meta.diversionCustomGroup}] и в [${_root.meta.diversionRules}].';
			case 'diversionCustomGroupAddTips': return 'Примечание. Возможно, вам придется вручную настроить порядок правил после их добавления, иначе добавленное перенаправление может работать не так, как ожидалось.';
			case 'rulesetEnableTips': return 'Совет: После включения опции перейдите в [${_root.meta.diversionRules}] и установите их, иначе опция не будет действовать';
			case 'ispUserAgentTips': return '[${_root.meta.isp}] будет доставлять различные типы данных о подписке на основе [UserAgent] в запросе [HTTP].';
			case 'ispDiversionTips': return '${_root.meta.diversionRules}, предоставляемые подписками [${_root.meta.isp}] типа [V2Ray], не поддерживаются.';
			case 'isp.bind': return 'Привязать к [${_root.meta.isp}]';
			case 'isp.unbind': return ({required Object p}) => 'Отвязать[${p}]';
			case 'isp.faq': return ({required Object p}) => 'Часто задаваемые вопросы[${p}]';
			case 'isp.customerService': return ({required Object p}) => 'Служба поддержки клиентов[${p}]';
			case 'isp.follow': return ({required Object p}) => 'Следуйте[${p}]';
			case 'isp.invalidOrExpired': return '[${_root.meta.isp}]Недействительно, или срок действия истек';
			case 'permission.camera': return 'Камера';
			case 'permission.screen': return 'Запись экрана';
			case 'permission.appQuery': return 'Получить список приложений';
			case 'permission.request': return ({required Object p}) => 'Включить разрешения [${p}]';
			case 'permission.requestNeed': return ({required Object p}) => 'Пожалуйста, включите разрешение [${p}]';
			case 'tls.insecure': return 'Пропустить проверку сертификата';
			case 'tls.affectProtocolTips': return 'vless, vmess, trojan';
			case 'tls.fragmentEnable': return 'Включить фрагментацию TLS';
			case 'tls.fragmentSize': return 'Размер фрагмента TLS';
			case 'tls.fragmentSleep': return 'Длина фрагмента паузы TLS';
			case 'tls.mixedCaseSNIEnable': return 'Включить гибридный SNI TLS';
			case 'tls.paddingEnable': return 'Включить заполнение TLS';
			case 'tls.paddingSize': return 'Размер заполнения TLS';
			case 'outboundRuleMode.currentSelected': return 'Текущий сервер';
			case 'outboundRuleMode.urltest': return 'Автовыбор';
			case 'outboundRuleMode.direct': return 'Напрямую';
			case 'outboundRuleMode.block': return 'Блокировать';
			case 'dnsProxyResolveMode.proxy': return _root.outboundRuleMode.currentSelected;
			case 'dnsProxyResolveMode.direct': return _root.outboundRuleMode.direct;
			case 'dnsProxyResolveMode.fakeip': return 'FakeIP';
			case 'proxyStrategy.perferProxy': return '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
			case 'proxyStrategy.perferDirect': return '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
			case 'proxyStrategy.onlyProxy': return '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
			case 'proxyStrategy.onlyDirect': return '${_root.meta.only} ${_root.outboundRuleMode.direct}';
			case 'reloadReason.latencyTest': return '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
			case 'reloadReason.profileUpdate': return 'Обновления конфигурации';
			case 'theme.light': return 'Светлый цвет';
			case 'theme.dark': return 'черный';
			case 'theme.auto': return 'автоматический';
			case 'downloadProxyStrategy': return 'Канал загрузки';
			case 'dnsProxyResolveModeTips': return '[${_root.dnsProxyResolveMode.proxy}]: подключиться к DNS-серверу через прокси-сервер для разрешения доменного имени\n[${_root.dnsProxyResolveMode.direct}]: подключиться напрямую к DNS-серверу для разрешения доменного имени\n[ ${_root.dnsProxyResolveMode.fakeip}]: через прокси-сервер Сервер разрешает доменное имя от вашего имени; если вы отключитесь от VPN, может потребоваться перезапуск вашего приложения; применяется только к входящему трафику из [TUN]';
			case 'routeFinal': return 'Final';
			case 'protocolSniff': return 'Определение протокола';
			case 'sendOrReceiveNotMatch': return ({required Object p}) => 'Пожалуйста, используйте [${p}]';
			case 'turnOffPrivateDirect': return 'Пожалуйста, сначала включите [Прямое подключение к частной сети]';
			case 'targetConnectFailed': return ({required Object p}) => 'Не удалось подключиться к [${p}]. Убедитесь, что устройство находится в той же локальной сети.';
			case 'appleTVSync': return 'Синхронизация текущей базовой конфигурации с Apple TV - Karing';
			case 'appleTVSyncDone': return 'Синхронизация завершена, перейдите в Apple TV — Karing, чтобы открыть/перезапустить соединение.';
			case 'appleTVRemoveCoreConfig': return 'Удаление Apple TV — базовая конфигурация Karing';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV — основной профиль Karing удален; VPN-сервис отключен;';
			case 'appleTVUrlInvalid': return 'Неверный URL-адрес. Откройте Apple TV — Karing, отсканируйте QR-код, отображаемый Karing.';
			case 'appleTV404': return ({required Object p}) => 'AppleTV:Karing[${p}] не имеет этой функции, обновите его и повторите попытку.';
			case 'appleCoreVersionNotMatch': return ({required Object p}) => 'Основная версия ядра не совпадает, пожалуйста, обновите [${p}] и попробуйте еще раз';
			case 'remoteProfileEditConfirm': return 'После обновления конфигурации изменения узла будут восстановлены. Продолжить?';
			case 'mustBeValidHttpsURL': return 'https URL должен быть действительным';
			case 'fileNotExistReinstall': return ({required Object p}) => 'Файл отсутствует [${p}], пожалуйста, переустановите';
			case 'noNetworkConnect': return 'Нет подключения к Интернету';
			case 'turnOffNetworkBeforeInstall': return 'Перед установкой обновления рекомендуется переключиться в [Режим полета].';
			case 'latencyTestResolveIP': return 'При ручном определении анализируется исходящий IP-адрес';
			case 'removeBannerAdsByShare': return 'Поделиться [Karing] для удаления рекламы';
			case 'removeBannerAdsByReward': return 'Просмотреть рекламу для удаления новой рекламы';
			case 'removeBannerAdsByShareTip': return ({required Object p, required Object d}) => 'Поделитесь ссылкой один раз, и вы получите ${p} дней без рекламных окон (можно суммировать до ${d} дней)';
			case 'removeBannerAdsByRewardTip': return ({required Object p}) => 'Посмотрите рекламу и получите дни без рекламы в размере ${p} (не суммируются).';
			case 'removeBannerAdsDone': return ({required Object p}) => 'Получено вознаграждение в размере ${p} дней без рекламы.';
			case 'edgeRuntimeNotInstalled': return 'Среда выполнения Edge WebView2 не установлена ​​на текущем устройстве, и страница не может быть отображена. Загрузите и установите среду выполнения Edge WebView2 (x64), перезапустите приложение и повторите попытку.';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

