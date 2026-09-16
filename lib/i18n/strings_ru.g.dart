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
		  _meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	final TranslationMetadata<AppLocale, Translations> _meta;
	@override TranslationMetadata<AppLocale, Translations> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$AboutScreen$ru AboutScreen = _Translations$AboutScreen$ru._(_root);
	@override late final _Translations$BackupAndSyncWebdavScreen$ru BackupAndSyncWebdavScreen = _Translations$BackupAndSyncWebdavScreen$ru._(_root);
	@override late final _Translations$DiversionGroupCustomEditScreen$ru DiversionGroupCustomEditScreen = _Translations$DiversionGroupCustomEditScreen$ru._(_root);
	@override late final _Translations$DiversionRuleDetectScreen$ru DiversionRuleDetectScreen = _Translations$DiversionRuleDetectScreen$ru._(_root);
	@override late final _Translations$DiversionRulesScreen$ru DiversionRulesScreen = _Translations$DiversionRulesScreen$ru._(_root);
	@override late final _Translations$DnsSettingsScreen$ru DnsSettingsScreen = _Translations$DnsSettingsScreen$ru._(_root);
	@override late final _Translations$FileContentViewerScreen$ru FileContentViewerScreen = _Translations$FileContentViewerScreen$ru._(_root);
	@override late final _Translations$HomeScreen$ru HomeScreen = _Translations$HomeScreen$ru._(_root);
	@override late final _Translations$LaunchFailedScreen$ru LaunchFailedScreen = _Translations$LaunchFailedScreen$ru._(_root);
	@override late final _Translations$MyProfilesMergeScreen$ru MyProfilesMergeScreen = _Translations$MyProfilesMergeScreen$ru._(_root);
	@override late final _Translations$NetCheckScreen$ru NetCheckScreen = _Translations$NetCheckScreen$ru._(_root);
	@override late final _Translations$NetConnectionsFilterScreen$ru NetConnectionsFilterScreen = _Translations$NetConnectionsFilterScreen$ru._(_root);
	@override late final _Translations$NetConnectionsScreen$ru NetConnectionsScreen = _Translations$NetConnectionsScreen$ru._(_root);
	@override late final _Translations$PerAppAndroidScreen$ru PerAppAndroidScreen = _Translations$PerAppAndroidScreen$ru._(_root);
	@override late final _Translations$RegionSettingsScreen$ru RegionSettingsScreen = _Translations$RegionSettingsScreen$ru._(_root);
	@override late final _Translations$ServerSelectScreen$ru ServerSelectScreen = _Translations$ServerSelectScreen$ru._(_root);
	@override late final _Translations$SettingsScreen$ru SettingsScreen = _Translations$SettingsScreen$ru._(_root);
	@override late final _Translations$UserAgreementScreen$ru UserAgreementScreen = _Translations$UserAgreementScreen$ru._(_root);
	@override late final _Translations$VersionUpdateScreen$ru VersionUpdateScreen = _Translations$VersionUpdateScreen$ru._(_root);
	@override late final _Translations$loginScreen$ru loginScreen = _Translations$loginScreen$ru._(_root);
	@override late final _Translations$CommonWidget$ru CommonWidget = _Translations$CommonWidget$ru._(_root);
	@override late final _Translations$main$ru main = _Translations$main$ru._(_root);
	@override late final _Translations$meta$ru meta = _Translations$meta$ru._(_root);
	@override String get diversionRulesKeep => 'Сохраните [${_root.meta.isp}]${_root.meta.diversionRules}';
	@override String get diversionCustomGroupPreset => 'Шаблоны для личных правил';
	@override String get diversionCustomGroupPresetTips => 'На основе выбранных шаблонов будут созданы/перезаписаны правила в[${_root.meta.diversionCustomGroup}] и в [${_root.meta.diversionRules}].';
	@override String get diversionCustomGroupAddTips => 'Примечание. Возможно, вам придется вручную настроить порядок правил после их добавления, иначе добавленное перенаправление может работать не так, как ожидалось.';
	@override String get rulesetEnableTips => 'Совет: После включения опции перейдите в [${_root.meta.diversionRules}] и установите их, иначе опция не будет действовать';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] будет доставлять различные типы данных о подписке на основе [UserAgent] в запросе [HTTP].';
	@override String get ispDiversionTips => '${_root.meta.diversionRules}, предоставляемые подписками [${_root.meta.isp}] типа [V2Ray], не поддерживаются.';
	@override late final _Translations$isp$ru isp = _Translations$isp$ru._(_root);
	@override late final _Translations$permission$ru permission = _Translations$permission$ru._(_root);
	@override late final _Translations$tls$ru tls = _Translations$tls$ru._(_root);
	@override late final _Translations$outboundRuleMode$ru outboundRuleMode = _Translations$outboundRuleMode$ru._(_root);
	@override late final _Translations$dnsProxyResolveMode$ru dnsProxyResolveMode = _Translations$dnsProxyResolveMode$ru._(_root);
	@override late final _Translations$proxyStrategy$ru proxyStrategy = _Translations$proxyStrategy$ru._(_root);
	@override late final _Translations$reloadReason$ru reloadReason = _Translations$reloadReason$ru._(_root);
	@override late final _Translations$theme$ru theme = _Translations$theme$ru._(_root);
	@override String get downloadProxyStrategy => 'Канал загрузки';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: подключиться к DNS-серверу через прокси-сервер для разрешения доменного имени\n[${_root.dnsProxyResolveMode.direct}]: подключиться напрямую к DNS-серверу для разрешения доменного имени\n[ ${_root.dnsProxyResolveMode.fakeip}]: через прокси-сервер Сервер разрешает доменное имя от вашего имени; если вы отключитесь от VPN, может потребоваться перезапуск вашего приложения; применяется только к входящему трафику из [TUN]';
	@override String get routeFinal => 'Final';
	@override String get protocolSniff => 'Перехват и анализ протокола (Sniffing)';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Используйте [${p}]';
	@override String get turnOffPrivateDirect => 'Сначала включите [Прямое подключение к частной сети]';
	@override String targetConnectFailed({required Object p}) => 'Не удалось подключиться к [${p}]. Убедитесь, что устройство находится в той же локальной сети.';
	@override String get appleTVSync => 'Синхронизация текущей базовой конфигурации с Apple TV - Karing';
	@override String get appleTVSyncDone => 'Синхронизация завершена, перейдите в Apple TV - Karing и запустите подключение.';
	@override String get appleTVRemoveCoreConfig => 'Удаление конфигурации Karing из Apple TV';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV — основной профиль Karing удален; VPN-сервис отключен;';
	@override String get appleTVUrlInvalid => 'Неверный URL-адрес. Откройте Apple TV — Karing, отсканируйте QR-код, отображаемый Karing.';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] не имеет этой функции, обновите его и повторите попытку.';
	@override String appleCoreVersionNotMatch({required Object p}) => 'Основная версия ядра не совпадает, пожалуйста, обновите [${p}] и попробуйте еще раз';
	@override String get remoteProfileEditConfirm => 'После обновления конфигурации изменения узла будут сброшены. Продолжить?';
	@override String get continueConnectConfirm => 'Продолжить подключение?';
	@override String get mustBeValidHttpsURL => 'https URL должен быть действительным';
	@override String fileNotExistReinstall({required Object p}) => 'Отсутствует файл [${p}], переустановите приложение';
	@override String get noNetworkConnect => 'Нет подключения к Интернету';
	@override String get sudoPassword => 'Пароль sudo (требуется для режима TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Перед установкой обновления рекомендуется переключиться в [Режим полета].';
	@override String get latencyTestResolveIP => 'При ручной проверке определять исходящий IP';
	@override String get latencyTestConcurrency => 'Параллелизм (потоки)';
	@override String get edgeRuntimeNotInstalled => 'На устройстве не установлен Edge WebView2, страница не может быть отображена. Скачайте и установите Edge WebView2 runtime (x64), перезапустите приложение и попробуйте снова.';
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
		'id': 'Bahasa Indonesia',
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
class _Translations$AboutScreen$ru implements Translations$AboutScreen$en {
	_Translations$AboutScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Источник установки';
	@override String get installTime => 'Время установки';
	@override String get versionChannel => 'Канал автоматического обновления';
	@override String get updateWhenConnected => 'Проверять наличие обновлений после подключения.';
	@override String get autoDownloadPkg => 'Автоматически загружать пакеты обновлений';
	@override String get disableAppImproveData => 'Использовать данные для улучшения приложения';
	@override String get disableUAReportTip => 'Включение параметра [${_root.AboutScreen.disableAppImproveData}] помогает нам улучшать стабильность и удобство приложения. Мы не собираем личные данные. Отключение этого параметра предотвратит сбор каких-либо данных приложением.';
	@override String get devOptions => 'Параметры разработчика';
	@override String get enableDebugLog => 'Включить debug-лог';
	@override String get viewFilsContent => 'Посмотр файлов';
	@override String get enablePprof => 'Включить pprof';
	@override String get pprofPanel => 'Панель pprof';
	@override String get allowRemoteAccessPprof => 'Разрешить удаленный доступ к ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Разрешить удаленный доступ к ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Использовать исходную конфигурацию Sing-box';
}

// Path: BackupAndSyncWebdavScreen
class _Translations$BackupAndSyncWebdavScreen$ru implements Translations$BackupAndSyncWebdavScreen$en {
	_Translations$BackupAndSyncWebdavScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Адрес сервера';
	@override String get webdavRequired => 'Не может быть пустым';
	@override String get webdavLoginFailed => 'Ошибка входа:';
	@override String get webdavListFailed => 'Не удалось получить список файлов:';
}

// Path: DiversionGroupCustomEditScreen
class _Translations$DiversionGroupCustomEditScreen$ru implements Translations$DiversionGroupCustomEditScreen$en {
	_Translations$DiversionGroupCustomEditScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'Неверный [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => 'Неверный [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => 'Неверный [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => 'Неверный [Rule Set]:${p}, URL-адрес должен быть действительным URL-адресом https двоичного файла с расширением .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => 'Неверный [RuleSet(build-in)]:${p}, формат: geosite:xxx или geoip:xxx или acl:xxx, а xxx должно быть допустимым именем правила.';
	@override String invalidPackageId({required Object p}) => 'Неверный [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => 'Совет: после сохранения перейдите в раздел [${_root.meta.diversionRules}] и настройте их, иначе изменения не будут действовать.';
}

// Path: DiversionRuleDetectScreen
class _Translations$DiversionRuleDetectScreen$ru implements Translations$DiversionRuleDetectScreen$en {
	_Translations$DiversionRuleDetectScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тест правил маршрутизации';
	@override String get rule => 'Правило:';
	@override String get outbound => 'Прокси-сервер:';
}

// Path: DiversionRulesScreen
class _Translations$DiversionRulesScreen$ru implements Translations$DiversionRulesScreen$en {
	_Translations$DiversionRulesScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Совет: Правила применяются по очереди сверху вниз. Если ни одно соответствие не обнаружено, то действует правило [Final]';
}

// Path: DnsSettingsScreen
class _Translations$DnsSettingsScreen$ru implements Translations$DnsSettingsScreen$en {
	_Translations$DnsSettingsScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'Имя провайдера не может быть пустым';
	@override String get urlCanNotEmpty => 'URL не может быть пустой';
	@override String error({required Object p}) => 'Неподдерживаемый тип:${p}';
	@override String get dnsDesc => 'Первый столбец данных — это задержка запроса при прямом соединении;\nВторой столбец, если включено [[действующий поток] Разрешать DNS через прокси-сервер]: показывает задержку запроса, пересылаемого через текущий прокси-сервер; Если выключено [[действующий поток] Разрешать DNS через прокси-сервер]: показывает задержку запроса при прямом соединении.';
}

// Path: FileContentViewerScreen
class _Translations$FileContentViewerScreen$ru implements Translations$FileContentViewerScreen$en {
	_Translations$FileContentViewerScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Просмотр содержимого файла';
	@override String get clearFileContent => 'Вы уверены, что хотите очистить содержимое файла?';
	@override String get clearFileContentTips => 'Вы точно хотите очистить файл профиля? Это может привести к потере данных или сбоям в работе приложения, делайте это осмотрительно.';
}

// Path: HomeScreen
class _Translations$HomeScreen$ru implements Translations$HomeScreen$en {
	_Translations$HomeScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String invalidServer({required Object p}) => '[${p}] больше недоступен. Выберите другой сервер.';
	@override String disabledServer({required Object p}) => '[${p}] отключен. Выберите другой сервер.';
	@override String get expiredServer => 'Нет доступного сервера: возможно, профиль устарел или отключен.';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'Сначала настройте [Быструю ссылку]';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}]. Подключение может не работать из-за ограничений системной памяти';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}]. Это может замедлить работу или привести к обрывам соединения.';
}

// Path: LaunchFailedScreen
class _Translations$LaunchFailedScreen$ru implements Translations$LaunchFailedScreen$en {
	_Translations$LaunchFailedScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'Не удалось запустить приложение [Неверное имя процесса], переустановите приложение в отдельную папку';
	@override String get invalidProfile => 'Не удалось запустить приложение [Нет доступа к профилю], переустановите приложение';
	@override String get invalidVersion => 'Не удалось запустить приложение [Неверная версия], переустановите приложение';
	@override String get systemVersionLow => 'Не удалось запустить приложение [Версия системы слишком старая]';
	@override String get invalidInstallPath => 'Неверный путь установки, переустановите приложение в правильную директорию';
}

// Path: MyProfilesMergeScreen
class _Translations$MyProfilesMergeScreen$ru implements Translations$MyProfilesMergeScreen$en {
	_Translations$MyProfilesMergeScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Объединение профилей';
	@override String get profilesMergeTarget => 'Целевой профиль';
	@override String get profilesMergeSource => 'Профили - источники';
	@override String get profilesMergeTips => 'Совет: Настройки маршрутизации для профилей - источников будут удалены.';
}

// Path: NetCheckScreen
class _Translations$NetCheckScreen$ru implements Translations$NetCheckScreen$en {
	_Translations$NetCheckScreen$ru._(this._root);

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
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nПравило маршрутизации:[${p2}]\nПрокси-сервер:[${p3}]';
	@override String get hostConnectionOk => 'Соединение установлено успешно';
	@override String hostConnectionFailed({required Object p}) => 'Соединение не удалось:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _Translations$NetConnectionsFilterScreen$ru implements Translations$NetConnectionsFilterScreen$en {
	_Translations$NetConnectionsFilterScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domain/IP';
	@override String get app => 'Приложение';
	@override String get rule => 'Правило';
	@override String get chain => 'Исходящий';
}

// Path: NetConnectionsScreen
class _Translations$NetConnectionsScreen$ru implements Translations$NetConnectionsScreen$en {
	_Translations$NetConnectionsScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Скопировано в CSV формате';
	@override String get selectType => 'Выберите тип маршрутизации';
	@override String get loopbackWarning => 'Возможно, возникла сетевая петля. Проверьте настройки сетевого адаптера.';
}

// Path: PerAppAndroidScreen
class _Translations$PerAppAndroidScreen$ru implements Translations$PerAppAndroidScreen$en {
	_Translations$PerAppAndroidScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Проксируемые приложения';
	@override String get whiteListMode => 'Режим белого списка';
	@override String get whiteListModeTip => 'Если включено: проксируются только отмеченные приложения. Если выключено: проксируется всё, кроме отмеченных приложений.';
}

// Path: RegionSettingsScreen
class _Translations$RegionSettingsScreen$ru implements Translations$RegionSettingsScreen$en {
	_Translations$RegionSettingsScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Страна или регион';
	@override String get Regions => 'Совет: Правильно укажите текущую страну или регион. Иначе это может вызвать проблемы с маршрутизацией.';
}

// Path: ServerSelectScreen
class _Translations$ServerSelectScreen$ru implements Translations$ServerSelectScreen$en {
	_Translations$ServerSelectScreen$ru._(this._root);

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
class _Translations$SettingsScreen$ru implements Translations$SettingsScreen$en {
	_Translations$SettingsScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Купить трафик';
	@override String get tutorial => 'Инструкция';
	@override String get commonlyUsedRulesets => 'Коллекция наборов правил';
	@override String get htmlBoard => 'Веб-панель';
	@override String get dnsLeakDetection => 'Тест утечки DNS';
	@override String get proxyLeakDetection => 'Тест утечки прокси';
	@override String get speedTest => 'Тест скорости';
	@override String get rulesetDirectDownlad => 'Правила прямой загрузки';
	@override String get hideUnusedDiversionGroup => 'Скрывать неиспользуемые правила маршрутизации';
	@override String get disableISPDiversionGroup => 'Отключить правила маршрутизации [${_root.meta.isp}]';
	@override String get portSettingRule => 'Действуют все правила';
	@override String get portSettingDirectAll => 'Всё подключено напрямую';
	@override String get portSettingProxyAll => 'Всё идёт через прокси';
	@override String get portSettingControl => 'Управление и синхронизация';
	@override String get portSettingCluster => 'Кластерный сервис';
	@override String get modifyPort => 'Изменить порт';
	@override String get modifyPortOccupied => 'Порт занят, используйте другой порт';
	@override String get ipStrategyTips => 'Перед включением убедитесь, что ваша сеть поддерживает IPv6,  иначе часть трафика будет недоступна.';
	@override String get tunAppendHttpProxy => 'Добавить HTTP-прокси в VPN.';
	@override String get tunAppendHttpProxyTips => 'Некоторые приложения будут обходить виртуальный адаптер и подключаться к HTTP-прокси напрямую.';
	@override String get tunAllowBypassHttpProxyDomain => 'Домены, которым разрешено обходить HTTP-прокси';
	@override String get dnsEnableRule => 'Включить правила маршрутизации DNS';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] Способ разрешения в DNS';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] Включить ECS';
	@override String get dnsTestDomain => 'Тестовый домен';
	@override String get dnsTestDomainInvalid => 'Неверный домен';
	@override String get dnsTypeOutbound => 'Прокси-сервер';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS-сервер';
	@override String get dnsEnableRuleTips => 'Если включено, домен будет разрешаться через DNS-сервер, указанный в правилаах маршрутизации DNS.';
	@override String get dnsEnableFakeIpTips => 'После включения FakeIP и отключения от VPN может потребоваться перезапуск приложений. Работает только при включенном [Режиме TUN].';
	@override String get dnsTypeOutboundTips => 'Для разрешения доменных имен прокси-сервера рекомендуется использовать безопасный DNS';
	@override String get dnsTypeDirectTips => 'Разрешение доменного имени для [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Разрешение доменных имен для трафика через Proxy';
	@override String get dnsTypeResolverTips => 'Разрешение доменных имен для DNS-серверов';
	@override String get dnsAutoSetServer => 'Автоматически настроить сервер';
	@override String get dnsResetServer => 'Сбросить сервер';
	@override String get dnsEnableStaticIPForResolver => 'Предпочитать статическое разрешение IP';
	@override String get dnsEnableStaticIPForResolverTips => 'Эффективно предотвратить загрязнение самого DNS-сервера во время разрешения';
	@override String get inboundDomainResolve => 'Разрешение входящих доменных имен';
	@override String get privateDirect => 'Прямое подключение к частной сети';
	@override String inboundDomainResolveTips({required Object p}) => 'Домены без настроенных правил маршрутизации нужно сначала разрешить в IP, чтобы сработали правила маршрутизации на основе IP. Эта функция влияет на входящие запросы к порту прокси [${p}]';
	@override String get useRomoteRes => 'Использовать удаленные ресурсы';
	@override String get autoAppendRegion => 'Автоматически добавлять основные правила';
	@override String get autoSelect => 'Автовыбор';
	@override String get autoSelectServerIgnorePerProxyServer => 'Игнорировать [фронт/цепные] прокси-серверы';
	@override String get autoSelectServerInterval => 'Интервал проверок задержки';
	@override String get autoSelectSelectedHealthCheckInterval => 'Текущий интервал проверки работоспособности сервера';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Перетестировать после смены сети';
	@override String get autoSelectServerIntervalTips => 'Чем короче временной интервал, тем чаще обновляются данные о задержке сервера. Но это потребует больше ресурсов и энергии';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Если тест не удался, узел переключается; если при переключении не найдено ни одного доступного узла, в группе заново запускается тест задержки.';
	@override String get autoSelectServerFavFirst => 'Предпочитать [Мои избранные]';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Обновить текущий сервер после измерения задержки вручную';
	@override String get autoSelectServerFavFirstTips => 'Если список [Мои избранные] не пуст, то будут использоваться серверы из [Мои избранные]';
	@override String get autoSelectServerFilter => 'Отфильтровать недоступные сервера';
	@override String autoSelectServerFilterTips({required Object p}) => 'Сервера с превышением задержки будут отфильтрованы; если после фильтрации ни один сервер не будет доступен, вместо него будут использоваться первые [${p}] серверов';
	@override String get autoSelectServerLimitedNum => 'Максимальное количество серверов';
	@override String get autoSelectServerLimitedNumTips => 'Если серверов больше этого числа, лишние будут отброшены.';
	@override String get numInvalid => 'Некорректное число';
	@override String get hideInvalidServer => 'Скрыть недоступные серверы';
	@override String get sortServer => 'Сортировка серверов';
	@override String get sortServerTips => 'Сортировать по задержке от меньшей к большей';
	@override String get selectServerHideRecommand => 'Скрыть [Рекомендуемые]';
	@override String get selectServerHideRecent => 'Скрыть [Недавно использованные]';
	@override String get selectServerHideFav => 'Скрыть [Мои избранные]';
	@override String get homeScreen => 'Оформление главного экрана';
	@override String get theme => 'Тема';
	@override String get widgetsAlpha => 'Прозрачность виджетов';
	@override String get widgetsEmpty => 'Нет доступных виджетов';
	@override String get backgroundImage => 'Фоновое изображение';
	@override String get myLink => 'Быстрая ссылка';
	@override String get autoConnectAfterLaunch => 'Автоподключение при запуске';
	@override String get autoConnectAtBoot => 'Автоматическое подключение при запуске системы';
	@override String get automationWhitelist => 'Белый список автоматизации';
	@override String get autoConnectAtBootTips => 'Требуется поддержка системы; некоторые системы могут потребовать включения [автозапуска].';
	@override String get hideAfterLaunch => 'Сворачивать окно при запуске';
	@override String get autoSetSystemProxy => 'Установить системный прокси после подключения';
	@override String get bypassSystemProxy => 'Домены, которым разрешено обходить системный прокси-сервер';
	@override String get disconnectWhenQuit => 'Отключаться при выходе из приложения';
	@override String get autoAddToFirewall => 'Автоматическое добавление правил брандмауэра';
	@override String get excludeFromRecent => 'Скрыть из недавних задач';
	@override String get wakeLock => 'Блокировка засыпания';
	@override String get hideVpn => 'Скрыть значок VPN';
	@override String get hideVpnTips => 'Включение IPv6 приведет к сбою этой функции.';
	@override String get allowBypass => 'Разрешить приложениям обходить VPN';
	@override String get overrideAndroidVPN => 'Переопределить Android VPN';
	@override String get importSuccess => 'Импорт выполнен успешно';
	@override String get rewriteConfirm => 'Этот файл перезапишет существующую локальную конфигурацию. Продолжить?';
	@override String get mergePerapp => 'Объединить локальные списки [${_root.PerAppAndroidScreen.title}]';
	@override String get networkShare => 'Общий доступ к сети';
	@override String get chainProxy => 'Цепочный прокси';
	@override String get frontProxy => 'Фронтальный/цепной прокси';
	@override String frontProxyTips({required Object p}) => 'Данные-> Фронтальный/цепной прокси-сервер [Несколько прокси-серверов: сверху вниз]-> Прокси-сервер [${p}]-> Целевой сервер';
	@override String postProxyTips({required Object p}) => 'Данные-> Прокси-сервер[${p}]-> Цепочный прокси-сервер [Несколько прокси-серверов: сверху вниз]-> Целевой сервер';
	@override String get allowOtherHostsConnect => 'Разрешить подключение по локальной сети';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'Из-за системных ограничений после включения этой функции приложения на этом устройстве, использующие HTTP, могут потерять доступ в сеть.';
	@override String get tunAutoRoute => 'Автоматическая маршрутизация';
	@override String get tunDefaultRoute => 'Маршрут по умолчанию';
	@override String get tunAutoRedirect => 'Автоматическое перенаправление';
	@override String get tunStrictRoute => 'Строгая маршрутизация';
	@override String get tunStrictRouteTips => 'Если после включения общего доступа другие люди не смогут получить доступ к этому устройству, попробуйте отключить этот переключатель.';
	@override String get tunRouteExclude => 'Исключения маршрутизации';
	@override String get tunRouteExcludeTips => 'Трафик в исключённых диапазонах адресов больше не будет попадать в TUN';
	@override String get tunRouteExcludeMulticast => 'Многоадресная передача (Multicast)';
	@override String get tunRouteExcludeTUN => 'TUN';
	@override String get loopbackAddress => 'Петлевой адрес (loopback)';
	@override String get enableCluster => 'Включить кластер прокси Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Разрешить подключение по локальной сети к кластеру';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Аутентификация прокси-кластера';
	@override String get tunMode => 'Режим TUN';
	@override String get tuni4Address => 'IP-адрес';
	@override String get tunModeTips => 'В режиме TUN весь трафик системы будет перенаправлен через соединение [В этом режиме вы можете оставить системный прокси отключенным]';
	@override String get tunModeRunAsAdmin => 'Для режима TUN требуются права администратора. Перезапустите приложение от имени администратора';
	@override String get tunStack => 'Stack';
	@override String get tunHijackTips => 'Если отключить, DNS-запросы из TUN будут пересылаться напрямую на соответствующий DNS-сервер.';
	@override String get launchAtStartup => 'Автозапуск при старте системы';
	@override String get quitWhenSwitchSystemUser => 'Закрывать приложение при смене пользователя системы';
	@override String get handleScheme => 'Схемы системного вызова';
	@override String get portableMode => 'Портативный режим';
	@override String get portableModeDisableTips => 'Чтобы выйти из портативного режима, закройте [karing] и вручную удалите папку [profiles] в директории с [karing.exe]';
	@override String get accessibility => 'Специальные возможности';
	@override String get handleKaringScheme => 'Вызов karing://[параметры]';
	@override String get handleClashScheme => 'Вызов clash://[параметры]';
	@override String get handleSingboxScheme => 'Вызов sing-box://[параметры]';
	@override String get alwayOnVPN => 'VPN всегда включен';
	@override String get disconnectAfterSleep => 'Отключать при переходе системы в спящий режим';
	@override String get removeSystemVPNConfig => 'Удалить профиль VPN';
	@override String get timeConnectOrDisconnect => 'Подключение/отключение по расписанию';
	@override String get timeConnectOrDisconnectTips => 'Работает только при активном VPN. После включения [Автоматический спящий режим] отключится';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Интервал между подключением и отключением не может быть меньше ${p} минут.';
	@override String get disableFontScaler => 'Отключить масштабирование шрифта';
	@override String get autoOrientation => 'Следовать за поворотом экрана';
	@override String get restartTakesEffect => 'Требуется перезапуск';
	@override String get reconnectTakesEffect => 'Изменения вступят в силу после повторного подключения.';
	@override String get resetSettings => 'Сброс настроек';
	@override String get cleanCache => 'Очистка кэша';
	@override String get cleanCacheDone => 'Очистка завершена';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Обновить до версии ${p}';
	@override String get follow => 'Подписаться на нас';
	@override String get contactUs => 'Связаться с нами';
	@override String get supportUs => 'Поддержать проект';
	@override String get rateInApp => 'Оценить приложение';
	@override String get rateInAppStore => 'Оценить нас в App Store';
}

// Path: UserAgreementScreen
class _Translations$UserAgreementScreen$ru implements Translations$UserAgreementScreen$en {
	_Translations$UserAgreementScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Ваша конфиденциальность превыше всего';
	@override String get agreeAndContinue => 'Принять и продолжить';
}

// Path: VersionUpdateScreen
class _Translations$VersionUpdateScreen$ru implements Translations$VersionUpdateScreen$en {
	_Translations$VersionUpdateScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'Новая версия [${p}] доступна';
	@override String get update => 'Перезапустить и обновить';
	@override String get cancel => 'Отменить';
}

// Path: loginScreen
class _Translations$loginScreen$ru implements Translations$loginScreen$en {
	_Translations$loginScreen$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get provider => 'VPN-провайдер';
	@override String get providerName => 'Код, логин или URL ${_root.loginScreen.provider}';
	@override String get providerNameRequired => 'Введите код, логин или URL ${_root.loginScreen.provider}';
	@override String get unsupportedProvider => 'Неподдерживаемый ${_root.loginScreen.provider}';
	@override String get unsupportedProviderType => 'Неподдерживаемый тип ${_root.loginScreen.provider}';
	@override String get unActivedProvider => 'Привязка провайдера не активирована';
	@override String providerLoginSupportRequired({required Object p}) => 'Для получения кода или логина обратитесь к вашему ${_root.loginScreen.provider}\nПодробнее об интеграции с ${_root.loginScreen.provider}: ${p}';
	@override String get providerDisclaimer => 'Отказ от ответственности: ${_root.loginScreen.provider} является сторонним сервисом и не связан с этим приложением';
}

// Path: CommonWidget
class _Translations$CommonWidget$ru implements Translations$CommonWidget$en {
	_Translations$CommonWidget$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Если параметр [Постоянный VPN] включен, отключите его и попробуйте подключиться еще раз';
	@override String get resetPort => 'Измените порт на другой свободный порт или закройте приложение, занимающее порт.';
}

// Path: main
class _Translations$main$ru implements Translations$main$en {
	_Translations$main$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$main$tray$ru tray = _Translations$main$tray$ru._(_root);
}

// Path: meta
class _Translations$meta$ru implements Translations$meta$en {
	_Translations$meta$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Включить';
	@override String get disable => 'Отключить';
	@override String get bydefault => 'По умолчанию';
	@override String get filter => 'Фильтр';
	@override String get filterMethod => 'Метод фильтрации';
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
	@override String get removed => 'Удалено';
	@override String get edit => 'Редактировать';
	@override String get view => 'Просмотр';
	@override String get more => 'Больше';
	@override String get tips => 'Инфо';
	@override String get selectAll => 'Выбрать все';
	@override String get copy => 'Скопировать';
	@override String get paste => 'Вставить';
	@override String get cut => 'Вырезать';
	@override String get save => 'Сохранить';
	@override String get ok => 'Ок';
	@override String get cancel => 'Закрыть';
	@override String get feedback => 'Обратная связь';
	@override String get feedbackContent => 'Содержание';
	@override String get feedbackContentHit => 'Не более 500 символов';
	@override String get feedbackContentCannotEmpty => 'Содержание не может быть пустым';
	@override String get faq => 'Часто задаваемые вопросы (FAQ)';
	@override String get htmlTools => 'Набор HTML-утилит';
	@override String get download => 'Скачать';
	@override String get upload => 'Загрузить';
	@override String get downloadSpeed => 'Скорость загрузки';
	@override String get uploadSpeed => 'Скорость загрузки';
	@override String get loading => 'Загрузка...';
	@override String get convert => 'Конвертировать';
	@override String get check => 'Тест';
	@override String get detect => 'Тест';
	@override String get cache => 'кэш';
	@override String get cacheLimit => 'Лимит кэша';
	@override String get days => 'дни';
	@override String get hours => 'часы';
	@override String get minutes => 'минуты';
	@override String get seconds => 'секунды';
	@override String get milliseconds => 'миллисекунды';
	@override String get tolerance => 'Допустимая погрешность';
	@override String get dateTimePeriod => 'Период времени';
	@override String get protocol => 'Протокол';
	@override String get search => 'Поиск';
	@override String get custom => 'Свой вариант';
	@override String get inbound => 'Вход';
	@override String get outbound => 'Выход';
	@override String get destination => 'Цель';
	@override String get outletIpByCurrentSelected => 'Выходной IP';
	@override String get outletIpByDirect => 'Выходной IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Соединения';
	@override String get disconnect => 'Отключить';
	@override String get reconnect => 'Повторное подключение';
	@override String get connected => 'Подключено';
	@override String get disconnected => 'Отключено';
	@override String get connecting => 'Подключение';
	@override String get connectTimeout => 'Таймаут при соединении';
	@override String get timeout => 'Тайм-аут';
	@override String get timeoutDuration => 'Длительность тайм-аута';
	@override String get runDuration => 'Время работы';
	@override String get latency => 'Задержка';
	@override String get latencyTest => 'Измерение задержки';
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
	@override String get decryptPassword => 'Пароль расшифровки';
	@override String get overwriteOutboundDns => 'DNS: Переопределить [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get required => 'Необходимо';
	@override String get type => 'тип';
	@override String get path => 'путь';
	@override String get local => 'локальный';
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
	@override String get isp => _root.loginScreen.provider;
	@override String get domainSuffix => 'Суффикс доменного имени';
	@override String get domain => 'Имя домена';
	@override String get domainKeyword => 'Ключевые слова в имени домена';
	@override String get domainRegex => 'Регулярные выражения для имен доменов (RegEx)';
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
	@override String get statisticsDataDesensitizeTips => 'Имена процессов, ID пакетов, целевые домены и IP будут заменены на * при сохранении';
	@override String get records => 'Записи';
	@override String get requestRecords => 'История запросов';
	@override String get netInterfaces => 'Сетевые интерфейсы';
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
	@override String get requestNeedsUserApproval => '1. [Разрешить] Karing устанавливать системные расширения в [Системные настройки]-[Конфиденциальность и безопасность]\n2. [Системные настройки]-[Основные]-[Объекты входа и расширения]-[Сетевое расширение] включите [karingServiceSE]\nподключитесь снова после завершения\n3. [Системные настройки]-[Основные]-[Объекты входа и расширения]-[Расширения] включите [karingServiceSE]\nподключитесь снова после завершения';
	@override String get FullDiskAccessPermissionRequired => 'Включите разрешение [karingServiceSE] в [Системные настройки]-[Конфиденциальность и безопасность]-[Разрешение на полный доступ к диску] и переподключитесь.';
	@override String get tvMode => 'Режим ТВ';
	@override String get recommended => 'Рекомендуемые';
	@override String innerError({required Object p}) => 'Внутренняя ошибка:${p}';
	@override String get logicOperation => 'Логическая опреация';
	@override String get share => 'Поделиться';
	@override String get candidateWord => 'Ключевые слова';
	@override String get keywordOrRegx => 'Ключевые слова/регулярные выражения (RegExp)';
	@override String get importFromClipboard => 'Импорт из буфера обмена';
	@override String get exportToClipboard => 'Экспорт в буфер обмена';
	@override String get server => 'Сервер';
	@override String get ads => 'Реклама';
	@override String get adsRemove => 'Удалить рекламу';
	@override String get donate => 'Пожертвовать';
	@override String get diversion => 'Маршрутизация';
	@override String get diversionRules => 'Правила маршрутизации';
	@override String get diversionCustomGroup => 'Личные правила';
	@override String get urlTestCustomGroup => 'Пользовательский автоматический выбор';
	@override String get setting => 'Настройки';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Синхронизация через LAN с помощью QR-кода';
	@override String get lanSyncNotQuitTips => 'Не выходите из этого окна до завершения синхронизации.';
	@override String get deviceNoSpace => 'Недостаточно места на диске';
	@override String get hideSystemApp => 'Скрыть системные приложения';
	@override String get hideAppIcon => 'Скрыть значок приложения';
	@override String get hideDockIcon => 'Скрыть значок из Dock';
	@override String get remark => 'Примечание';
	@override String get remarkExist => 'Примечание уже существует, используйте другое имя';
	@override String get remarkCannotEmpty => 'Примечание не может быть пустым';
	@override String get remarkTooLong => 'Примечания до 32 символов';
	@override String get openDir => 'Открыть каталог файлов';
	@override String get fileChoose => 'Выбрать файл';
	@override String get filePathCannotEmpty => 'Путь к файлу не может быть пустым';
	@override String fileNotExist({required Object p}) => 'Файла не существует:${p}';
	@override String fileTypeInvalid({required Object p}) => 'Неверный тип файла:${p}';
	@override String get uwpExemption => 'Исключение приложений UWP из изоляции сети';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Получить конфигурацию';
	@override String get addProfile => 'Добавить профиль';
	@override String get myProfiles => 'Профили';
	@override String get profileEdit => 'Редактирование профилей';
	@override String get profileEditUrlExist => 'Этот URL уже добавлен, укажите другой';
	@override String get profileEditReloadAfterProfileUpdate => 'Перезагрузить после обновления профиля';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Начать тестирование задержек после обновления профиля';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN необходимо подключить, и включить [Перезагрузить после обновления профиля]';
	@override String get profileEditTestLatencyAutoRemove => 'Автоматически удалять серверы, не прошедшие тесты на задержку';
	@override String get profileEditTestLatencyAutoRemoveTips => 'До 3 попыток';
	@override String get profileImport => 'Импорт файла конфигурации';
	@override String get profileAddUrlOrContent => 'Добавление подписки';
	@override String get profileExists => 'Профиль уже существует. Пожалуйста, не добавляйте его повторно';
	@override String get profileUrlOrContent => 'Ссылка на подписку/содержание';
	@override String get profileUrlOrContentHit => 'Ссылка на подписку/содержание [обязательно] (Поддерживаются Clash, V2ray(пакетом), Stash, Karing, Sing-box, Shadowsocks, Sub, ссылки на конфигурацию).';
	@override String get profileUrlOrContentCannotEmpty => 'Ссылка на подписку не может быть пустой';
	@override String profileAddFailedFormatException({required Object p}) => 'Неправильный формат, исправьте его и добавьте еще раз:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Не удалось добавить: ${p}. Попробуйте изменить [UserAgent] и повторите попытку, либо откройте ссылку в браузере и импортируйте скачанный файл вручную.';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Не удалось добавить: ${p}, Включите прокси или смените текущий прокси-узел и попробуйте снова.';
	@override String get profileAddParseFailed => 'Получение подписки не удалось';
	@override String get profileAddNoServerAvaliable => 'Нет доступных серверов. Убедитесь что подписка или файл конфигурации корректен. Если ваша конфигурация взята из GitHub, копируйте ссылку по кнопке [Raw].';
	@override String get profileAddWrapSuccess => 'Профиль успешно создан, проверьте в разделе [${_root.meta.myProfiles}]';
}

// Path: isp
class _Translations$isp$ru implements Translations$isp$en {
	_Translations$isp$ru._(this._root);

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
class _Translations$permission$ru implements Translations$permission$en {
	_Translations$permission$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Камера';
	@override String get screen => 'Запись экрана';
	@override String get appQuery => 'Получить список приложений';
	@override String request({required Object p}) => 'Включить разрешения [${p}]';
	@override String requestNeed({required Object p}) => 'Пожалуйста, включите разрешение [${p}]';
}

// Path: tls
class _Translations$tls$ru implements Translations$tls$en {
	_Translations$tls$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Пропустить проверку сертификата';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Включить TLS Fragment';
	@override String get fragmentSize => 'Размер фрагмента TLS';
	@override String get fragmentSleep => 'Задержка фрагментации TLS';
	@override String get mixedCaseSNIEnable => 'Включить TLS Mixed SNI';
	@override String get paddingEnable => 'Включить TLS Padding';
	@override String get paddingSize => 'Размер TLS Padding';
}

// Path: outboundRuleMode
class _Translations$outboundRuleMode$ru implements Translations$outboundRuleMode$en {
	_Translations$outboundRuleMode$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Текущий сервер';
	@override String get urltest => 'Автовыбор';
	@override String get direct => 'Напрямую';
	@override String get block => 'Блокировать';
}

// Path: dnsProxyResolveMode
class _Translations$dnsProxyResolveMode$ru implements Translations$dnsProxyResolveMode$en {
	_Translations$dnsProxyResolveMode$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _Translations$proxyStrategy$ru implements Translations$proxyStrategy$en {
	_Translations$proxyStrategy$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _Translations$reloadReason$ru implements Translations$reloadReason$en {
	_Translations$reloadReason$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Обновления конфигурации';
}

// Path: theme
class _Translations$theme$ru implements Translations$theme$en {
	_Translations$theme$ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get light => 'Светлая';
	@override String get dark => 'Тёмная';
	@override String get auto => 'Автоматически';
}

// Path: main.tray
class _Translations$main$tray$ru implements Translations$main$tray$en {
	_Translations$main$tray$ru._(this._root);

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
			'AboutScreen.installRefer' => 'Источник установки',
			'AboutScreen.installTime' => 'Время установки',
			'AboutScreen.versionChannel' => 'Канал автоматического обновления',
			'AboutScreen.updateWhenConnected' => 'Проверять наличие обновлений после подключения.',
			'AboutScreen.autoDownloadPkg' => 'Автоматически загружать пакеты обновлений',
			'AboutScreen.disableAppImproveData' => 'Использовать данные для улучшения приложения',
			'AboutScreen.disableUAReportTip' => 'Включение параметра [${_root.AboutScreen.disableAppImproveData}] помогает нам улучшать стабильность и удобство приложения. Мы не собираем личные данные. Отключение этого параметра предотвратит сбор каких-либо данных приложением.',
			'AboutScreen.devOptions' => 'Параметры разработчика',
			'AboutScreen.enableDebugLog' => 'Включить debug-лог',
			'AboutScreen.viewFilsContent' => 'Посмотр файлов',
			'AboutScreen.enablePprof' => 'Включить pprof',
			'AboutScreen.pprofPanel' => 'Панель pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'Разрешить удаленный доступ к ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Разрешить удаленный доступ к ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Использовать исходную конфигурацию Sing-box',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'Адрес сервера',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Не может быть пустым',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Ошибка входа:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Не удалось получить список файлов:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'Неверный [Domain]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'Неверный [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Неверный [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'Неверный [Rule Set]:${p}, URL-адрес должен быть действительным URL-адресом https двоичного файла с расширением .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'Неверный [RuleSet(build-in)]:${p}, формат: geosite:xxx или geoip:xxx или acl:xxx, а xxx должно быть допустимым именем правила.',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'Неверный [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Совет: после сохранения перейдите в раздел [${_root.meta.diversionRules}] и настройте их, иначе изменения не будут действовать.',
			'DiversionRuleDetectScreen.title' => 'Тест правил маршрутизации',
			'DiversionRuleDetectScreen.rule' => 'Правило:',
			'DiversionRuleDetectScreen.outbound' => 'Прокси-сервер:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Совет: Правила применяются по очереди сверху вниз. Если ни одно соответствие не обнаружено, то действует правило [Final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'Имя провайдера не может быть пустым',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL не может быть пустой',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Неподдерживаемый тип:${p}',
			'DnsSettingsScreen.dnsDesc' => 'Первый столбец данных — это задержка запроса при прямом соединении;\nВторой столбец, если включено [[действующий поток] Разрешать DNS через прокси-сервер]: показывает задержку запроса, пересылаемого через текущий прокси-сервер; Если выключено [[действующий поток] Разрешать DNS через прокси-сервер]: показывает задержку запроса при прямом соединении.',
			'FileContentViewerScreen.title' => 'Просмотр содержимого файла',
			'FileContentViewerScreen.clearFileContent' => 'Вы уверены, что хотите очистить содержимое файла?',
			'FileContentViewerScreen.clearFileContentTips' => 'Вы точно хотите очистить файл профиля? Это может привести к потере данных или сбоям в работе приложения, делайте это осмотрительно.',
			'HomeScreen.invalidServer' => ({required Object p}) => '[${p}] больше недоступен. Выберите другой сервер.',
			'HomeScreen.disabledServer' => ({required Object p}) => '[${p}] отключен. Выберите другой сервер.',
			'HomeScreen.expiredServer' => 'Нет доступного сервера: возможно, профиль устарел или отключен.',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'Сначала настройте [Быструю ссылку]',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}]. Подключение может не работать из-за ограничений системной памяти',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}]. Это может замедлить работу или привести к обрывам соединения.',
			'LaunchFailedScreen.invalidProcess' => 'Не удалось запустить приложение [Неверное имя процесса], переустановите приложение в отдельную папку',
			'LaunchFailedScreen.invalidProfile' => 'Не удалось запустить приложение [Нет доступа к профилю], переустановите приложение',
			'LaunchFailedScreen.invalidVersion' => 'Не удалось запустить приложение [Неверная версия], переустановите приложение',
			'LaunchFailedScreen.systemVersionLow' => 'Не удалось запустить приложение [Версия системы слишком старая]',
			'LaunchFailedScreen.invalidInstallPath' => 'Неверный путь установки, переустановите приложение в правильную директорию',
			'MyProfilesMergeScreen.profilesMerge' => 'Объединение профилей',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Целевой профиль',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Профили - источники',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Совет: Настройки маршрутизации для профилей - источников будут удалены.',
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
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nПравило маршрутизации:[${p2}]\nПрокси-сервер:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'Соединение установлено успешно',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'Соединение не удалось:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Domain/IP',
			'NetConnectionsFilterScreen.app' => 'Приложение',
			'NetConnectionsFilterScreen.rule' => 'Правило',
			'NetConnectionsFilterScreen.chain' => 'Исходящий',
			'NetConnectionsScreen.copyAsCSV' => 'Скопировано в CSV формате',
			'NetConnectionsScreen.selectType' => 'Выберите тип маршрутизации',
			'NetConnectionsScreen.loopbackWarning' => 'Возможно, возникла сетевая петля. Проверьте настройки сетевого адаптера.',
			'PerAppAndroidScreen.title' => 'Проксируемые приложения',
			'PerAppAndroidScreen.whiteListMode' => 'Режим белого списка',
			'PerAppAndroidScreen.whiteListModeTip' => 'Если включено: проксируются только отмеченные приложения. Если выключено: проксируется всё, кроме отмеченных приложений.',
			'RegionSettingsScreen.title' => 'Страна или регион',
			'RegionSettingsScreen.Regions' => 'Совет: Правильно укажите текущую страну или регион. Иначе это может вызвать проблемы с маршрутизацией.',
			'ServerSelectScreen.title' => 'Выбор сервера',
			'ServerSelectScreen.autoSelectServer' => 'Автовыбор сервера с наименьшей задержкой',
			'ServerSelectScreen.recentUse' => 'Недавно использованные',
			'ServerSelectScreen.myFav' => 'Мои избранные',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Выбранный сервер является локальным, и может работать неправильно:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Выбранный сервер имеет адрес IPv6 и требует [Включить IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Сервер отключен',
			'ServerSelectScreen.error404' => 'При  измерении задержки произошла ошибка. Проверьте, существует ли профиль с таким содержимым.',
			'SettingsScreen.getTranffic' => 'Купить трафик',
			'SettingsScreen.tutorial' => 'Инструкция',
			'SettingsScreen.commonlyUsedRulesets' => 'Коллекция наборов правил',
			'SettingsScreen.htmlBoard' => 'Веб-панель',
			'SettingsScreen.dnsLeakDetection' => 'Тест утечки DNS',
			'SettingsScreen.proxyLeakDetection' => 'Тест утечки прокси',
			'SettingsScreen.speedTest' => 'Тест скорости',
			'SettingsScreen.rulesetDirectDownlad' => 'Правила прямой загрузки',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Скрывать неиспользуемые правила маршрутизации',
			'SettingsScreen.disableISPDiversionGroup' => 'Отключить правила маршрутизации [${_root.meta.isp}]',
			'SettingsScreen.portSettingRule' => 'Действуют все правила',
			'SettingsScreen.portSettingDirectAll' => 'Всё подключено напрямую',
			'SettingsScreen.portSettingProxyAll' => 'Всё идёт через прокси',
			'SettingsScreen.portSettingControl' => 'Управление и синхронизация',
			'SettingsScreen.portSettingCluster' => 'Кластерный сервис',
			'SettingsScreen.modifyPort' => 'Изменить порт',
			'SettingsScreen.modifyPortOccupied' => 'Порт занят, используйте другой порт',
			'SettingsScreen.ipStrategyTips' => 'Перед включением убедитесь, что ваша сеть поддерживает IPv6,  иначе часть трафика будет недоступна.',
			'SettingsScreen.tunAppendHttpProxy' => 'Добавить HTTP-прокси в VPN.',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Некоторые приложения будут обходить виртуальный адаптер и подключаться к HTTP-прокси напрямую.',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Домены, которым разрешено обходить HTTP-прокси',
			'SettingsScreen.dnsEnableRule' => 'Включить правила маршрутизации DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] Способ разрешения в DNS',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] Включить ECS',
			'SettingsScreen.dnsTestDomain' => 'Тестовый домен',
			'SettingsScreen.dnsTestDomainInvalid' => 'Неверный домен',
			'SettingsScreen.dnsTypeOutbound' => 'Прокси-сервер',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS-сервер',
			'SettingsScreen.dnsEnableRuleTips' => 'Если включено, домен будет разрешаться через DNS-сервер, указанный в правилаах маршрутизации DNS.',
			'SettingsScreen.dnsEnableFakeIpTips' => 'После включения FakeIP и отключения от VPN может потребоваться перезапуск приложений. Работает только при включенном [Режиме TUN].',
			'SettingsScreen.dnsTypeOutboundTips' => 'Для разрешения доменных имен прокси-сервера рекомендуется использовать безопасный DNS',
			'SettingsScreen.dnsTypeDirectTips' => 'Разрешение доменного имени для [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Разрешение доменных имен для трафика через Proxy',
			'SettingsScreen.dnsTypeResolverTips' => 'Разрешение доменных имен для DNS-серверов',
			'SettingsScreen.dnsAutoSetServer' => 'Автоматически настроить сервер',
			'SettingsScreen.dnsResetServer' => 'Сбросить сервер',
			'SettingsScreen.dnsEnableStaticIPForResolver' => 'Предпочитать статическое разрешение IP',
			'SettingsScreen.dnsEnableStaticIPForResolverTips' => 'Эффективно предотвратить загрязнение самого DNS-сервера во время разрешения',
			'SettingsScreen.inboundDomainResolve' => 'Разрешение входящих доменных имен',
			'SettingsScreen.privateDirect' => 'Прямое подключение к частной сети',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Домены без настроенных правил маршрутизации нужно сначала разрешить в IP, чтобы сработали правила маршрутизации на основе IP. Эта функция влияет на входящие запросы к порту прокси [${p}]',
			'SettingsScreen.useRomoteRes' => 'Использовать удаленные ресурсы',
			'SettingsScreen.autoAppendRegion' => 'Автоматически добавлять основные правила',
			'SettingsScreen.autoSelect' => 'Автовыбор',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Игнорировать [фронт/цепные] прокси-серверы',
			'SettingsScreen.autoSelectServerInterval' => 'Интервал проверок задержки',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Текущий интервал проверки работоспособности сервера',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Перетестировать после смены сети',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Чем короче временной интервал, тем чаще обновляются данные о задержке сервера. Но это потребует больше ресурсов и энергии',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Если тест не удался, узел переключается; если при переключении не найдено ни одного доступного узла, в группе заново запускается тест задержки.',
			'SettingsScreen.autoSelectServerFavFirst' => 'Предпочитать [Мои избранные]',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Обновить текущий сервер после измерения задержки вручную',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Если список [Мои избранные] не пуст, то будут использоваться серверы из [Мои избранные]',
			'SettingsScreen.autoSelectServerFilter' => 'Отфильтровать недоступные сервера',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Сервера с превышением задержки будут отфильтрованы; если после фильтрации ни один сервер не будет доступен, вместо него будут использоваться первые [${p}] серверов',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Максимальное количество серверов',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Если серверов больше этого числа, лишние будут отброшены.',
			'SettingsScreen.numInvalid' => 'Некорректное число',
			'SettingsScreen.hideInvalidServer' => 'Скрыть недоступные серверы',
			'SettingsScreen.sortServer' => 'Сортировка серверов',
			'SettingsScreen.sortServerTips' => 'Сортировать по задержке от меньшей к большей',
			'SettingsScreen.selectServerHideRecommand' => 'Скрыть [Рекомендуемые]',
			'SettingsScreen.selectServerHideRecent' => 'Скрыть [Недавно использованные]',
			'SettingsScreen.selectServerHideFav' => 'Скрыть [Мои избранные]',
			'SettingsScreen.homeScreen' => 'Оформление главного экрана',
			'SettingsScreen.theme' => 'Тема',
			'SettingsScreen.widgetsAlpha' => 'Прозрачность виджетов',
			'SettingsScreen.widgetsEmpty' => 'Нет доступных виджетов',
			'SettingsScreen.backgroundImage' => 'Фоновое изображение',
			'SettingsScreen.myLink' => 'Быстрая ссылка',
			'SettingsScreen.autoConnectAfterLaunch' => 'Автоподключение при запуске',
			'SettingsScreen.autoConnectAtBoot' => 'Автоматическое подключение при запуске системы',
			'SettingsScreen.automationWhitelist' => 'Белый список автоматизации',
			'SettingsScreen.autoConnectAtBootTips' => 'Требуется поддержка системы; некоторые системы могут потребовать включения [автозапуска].',
			'SettingsScreen.hideAfterLaunch' => 'Сворачивать окно при запуске',
			'SettingsScreen.autoSetSystemProxy' => 'Установить системный прокси после подключения',
			'SettingsScreen.bypassSystemProxy' => 'Домены, которым разрешено обходить системный прокси-сервер',
			'SettingsScreen.disconnectWhenQuit' => 'Отключаться при выходе из приложения',
			'SettingsScreen.autoAddToFirewall' => 'Автоматическое добавление правил брандмауэра',
			'SettingsScreen.excludeFromRecent' => 'Скрыть из недавних задач',
			'SettingsScreen.wakeLock' => 'Блокировка засыпания',
			'SettingsScreen.hideVpn' => 'Скрыть значок VPN',
			'SettingsScreen.hideVpnTips' => 'Включение IPv6 приведет к сбою этой функции.',
			'SettingsScreen.allowBypass' => 'Разрешить приложениям обходить VPN',
			'SettingsScreen.overrideAndroidVPN' => 'Переопределить Android VPN',
			'SettingsScreen.importSuccess' => 'Импорт выполнен успешно',
			'SettingsScreen.rewriteConfirm' => 'Этот файл перезапишет существующую локальную конфигурацию. Продолжить?',
			'SettingsScreen.mergePerapp' => 'Объединить локальные списки [${_root.PerAppAndroidScreen.title}]',
			'SettingsScreen.networkShare' => 'Общий доступ к сети',
			'SettingsScreen.chainProxy' => 'Цепочный прокси',
			'SettingsScreen.frontProxy' => 'Фронтальный/цепной прокси',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Данные-> Фронтальный/цепной прокси-сервер [Несколько прокси-серверов: сверху вниз]-> Прокси-сервер [${p}]-> Целевой сервер',
			'SettingsScreen.postProxyTips' => ({required Object p}) => 'Данные-> Прокси-сервер[${p}]-> Цепочный прокси-сервер [Несколько прокси-серверов: сверху вниз]-> Целевой сервер',
			'SettingsScreen.allowOtherHostsConnect' => 'Разрешить подключение по локальной сети',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Из-за системных ограничений после включения этой функции приложения на этом устройстве, использующие HTTP, могут потерять доступ в сеть.',
			'SettingsScreen.tunAutoRoute' => 'Автоматическая маршрутизация',
			'SettingsScreen.tunDefaultRoute' => 'Маршрут по умолчанию',
			'SettingsScreen.tunAutoRedirect' => 'Автоматическое перенаправление',
			'SettingsScreen.tunStrictRoute' => 'Строгая маршрутизация',
			'SettingsScreen.tunStrictRouteTips' => 'Если после включения общего доступа другие люди не смогут получить доступ к этому устройству, попробуйте отключить этот переключатель.',
			'SettingsScreen.tunRouteExclude' => 'Исключения маршрутизации',
			'SettingsScreen.tunRouteExcludeTips' => 'Трафик в исключённых диапазонах адресов больше не будет попадать в TUN',
			'SettingsScreen.tunRouteExcludeMulticast' => 'Многоадресная передача (Multicast)',
			'SettingsScreen.tunRouteExcludeTUN' => 'TUN',
			'SettingsScreen.loopbackAddress' => 'Петлевой адрес (loopback)',
			'SettingsScreen.enableCluster' => 'Включить кластер прокси Socks/Http',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Разрешить подключение по локальной сети к кластеру',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Аутентификация прокси-кластера',
			'SettingsScreen.tunMode' => 'Режим TUN',
			'SettingsScreen.tuni4Address' => 'IP-адрес',
			'SettingsScreen.tunModeTips' => 'В режиме TUN весь трафик системы будет перенаправлен через соединение [В этом режиме вы можете оставить системный прокси отключенным]',
			'SettingsScreen.tunModeRunAsAdmin' => 'Для режима TUN требуются права администратора. Перезапустите приложение от имени администратора',
			'SettingsScreen.tunStack' => 'Stack',
			'SettingsScreen.tunHijackTips' => 'Если отключить, DNS-запросы из TUN будут пересылаться напрямую на соответствующий DNS-сервер.',
			'SettingsScreen.launchAtStartup' => 'Автозапуск при старте системы',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Закрывать приложение при смене пользователя системы',
			'SettingsScreen.handleScheme' => 'Схемы системного вызова',
			'SettingsScreen.portableMode' => 'Портативный режим',
			'SettingsScreen.portableModeDisableTips' => 'Чтобы выйти из портативного режима, закройте [karing] и вручную удалите папку [profiles] в директории с [karing.exe]',
			'SettingsScreen.accessibility' => 'Специальные возможности',
			'SettingsScreen.handleKaringScheme' => 'Вызов karing://[параметры]',
			'SettingsScreen.handleClashScheme' => 'Вызов clash://[параметры]',
			'SettingsScreen.handleSingboxScheme' => 'Вызов sing-box://[параметры]',
			'SettingsScreen.alwayOnVPN' => 'VPN всегда включен',
			'SettingsScreen.disconnectAfterSleep' => 'Отключать при переходе системы в спящий режим',
			'SettingsScreen.removeSystemVPNConfig' => 'Удалить профиль VPN',
			'SettingsScreen.timeConnectOrDisconnect' => 'Подключение/отключение по расписанию',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'Работает только при активном VPN. После включения [Автоматический спящий режим] отключится',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'Интервал между подключением и отключением не может быть меньше ${p} минут.',
			'SettingsScreen.disableFontScaler' => 'Отключить масштабирование шрифта',
			'SettingsScreen.autoOrientation' => 'Следовать за поворотом экрана',
			'SettingsScreen.restartTakesEffect' => 'Требуется перезапуск',
			'SettingsScreen.reconnectTakesEffect' => 'Изменения вступят в силу после повторного подключения.',
			'SettingsScreen.resetSettings' => 'Сброс настроек',
			'SettingsScreen.cleanCache' => 'Очистка кэша',
			'SettingsScreen.cleanCacheDone' => 'Очистка завершена',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Обновить до версии ${p}',
			'SettingsScreen.follow' => 'Подписаться на нас',
			'SettingsScreen.contactUs' => 'Связаться с нами',
			'SettingsScreen.supportUs' => 'Поддержать проект',
			'SettingsScreen.rateInApp' => 'Оценить приложение',
			'SettingsScreen.rateInAppStore' => 'Оценить нас в App Store',
			'UserAgreementScreen.privacyFirst' => 'Ваша конфиденциальность превыше всего',
			'UserAgreementScreen.agreeAndContinue' => 'Принять и продолжить',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'Новая версия [${p}] доступна',
			'VersionUpdateScreen.update' => 'Перезапустить и обновить',
			'VersionUpdateScreen.cancel' => 'Отменить',
			'loginScreen.provider' => 'VPN-провайдер',
			'loginScreen.providerName' => 'Код, логин или URL ${_root.loginScreen.provider}',
			'loginScreen.providerNameRequired' => 'Введите код, логин или URL ${_root.loginScreen.provider}',
			'loginScreen.unsupportedProvider' => 'Неподдерживаемый ${_root.loginScreen.provider}',
			'loginScreen.unsupportedProviderType' => 'Неподдерживаемый тип ${_root.loginScreen.provider}',
			'loginScreen.unActivedProvider' => 'Привязка провайдера не активирована',
			'loginScreen.providerLoginSupportRequired' => ({required Object p}) => 'Для получения кода или логина обратитесь к вашему ${_root.loginScreen.provider}\nПодробнее об интеграции с ${_root.loginScreen.provider}: ${p}',
			'loginScreen.providerDisclaimer' => 'Отказ от ответственности: ${_root.loginScreen.provider} является сторонним сервисом и не связан с этим приложением',
			'CommonWidget.diableAlwayOnVPN' => 'Если параметр [Постоянный VPN] включен, отключите его и попробуйте подключиться еще раз',
			'CommonWidget.resetPort' => 'Измените порт на другой свободный порт или закройте приложение, занимающее порт.',
			'main.tray.menuOpen' => 'Открыть',
			'main.tray.menuExit' => 'Выйти',
			'meta.enable' => 'Включить',
			'meta.disable' => 'Отключить',
			'meta.bydefault' => 'По умолчанию',
			'meta.filter' => 'Фильтр',
			'meta.filterMethod' => 'Метод фильтрации',
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
			'meta.removed' => 'Удалено',
			'meta.edit' => 'Редактировать',
			'meta.view' => 'Просмотр',
			'meta.more' => 'Больше',
			'meta.tips' => 'Инфо',
			'meta.selectAll' => 'Выбрать все',
			'meta.copy' => 'Скопировать',
			'meta.paste' => 'Вставить',
			'meta.cut' => 'Вырезать',
			'meta.save' => 'Сохранить',
			'meta.ok' => 'Ок',
			'meta.cancel' => 'Закрыть',
			'meta.feedback' => 'Обратная связь',
			'meta.feedbackContent' => 'Содержание',
			'meta.feedbackContentHit' => 'Не более 500 символов',
			'meta.feedbackContentCannotEmpty' => 'Содержание не может быть пустым',
			'meta.faq' => 'Часто задаваемые вопросы (FAQ)',
			'meta.htmlTools' => 'Набор HTML-утилит',
			'meta.download' => 'Скачать',
			'meta.upload' => 'Загрузить',
			'meta.downloadSpeed' => 'Скорость загрузки',
			'meta.uploadSpeed' => 'Скорость загрузки',
			'meta.loading' => 'Загрузка...',
			'meta.convert' => 'Конвертировать',
			'meta.check' => 'Тест',
			'meta.detect' => 'Тест',
			'meta.cache' => 'кэш',
			'meta.cacheLimit' => 'Лимит кэша',
			'meta.days' => 'дни',
			'meta.hours' => 'часы',
			'meta.minutes' => 'минуты',
			'meta.seconds' => 'секунды',
			'meta.milliseconds' => 'миллисекунды',
			'meta.tolerance' => 'Допустимая погрешность',
			'meta.dateTimePeriod' => 'Период времени',
			'meta.protocol' => 'Протокол',
			'meta.search' => 'Поиск',
			'meta.custom' => 'Свой вариант',
			'meta.inbound' => 'Вход',
			'meta.outbound' => 'Выход',
			'meta.destination' => 'Цель',
			'meta.outletIpByCurrentSelected' => 'Выходной IP',
			'meta.outletIpByDirect' => 'Выходной IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Соединения',
			'meta.disconnect' => 'Отключить',
			'meta.reconnect' => 'Повторное подключение',
			'meta.connected' => 'Подключено',
			'meta.disconnected' => 'Отключено',
			'meta.connecting' => 'Подключение',
			'meta.connectTimeout' => 'Таймаут при соединении',
			'meta.timeout' => 'Тайм-аут',
			'meta.timeoutDuration' => 'Длительность тайм-аута',
			'meta.runDuration' => 'Время работы',
			'meta.latency' => 'Задержка',
			'meta.latencyTest' => 'Измерение задержки',
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
			'meta.decryptPassword' => 'Пароль расшифровки',
			'meta.overwriteOutboundDns' => 'DNS: Переопределить [${_root.SettingsScreen.dnsTypeOutbound}]',
			'meta.required' => 'Необходимо',
			'meta.type' => 'тип',
			'meta.path' => 'путь',
			'meta.local' => 'локальный',
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
			'meta.isp' => _root.loginScreen.provider,
			'meta.domainSuffix' => 'Суффикс доменного имени',
			'meta.domain' => 'Имя домена',
			'meta.domainKeyword' => 'Ключевые слова в имени домена',
			'meta.domainRegex' => 'Регулярные выражения для имен доменов (RegEx)',
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
			'meta.statisticsDataDesensitizeTips' => 'Имена процессов, ID пакетов, целевые домены и IP будут заменены на * при сохранении',
			'meta.records' => 'Записи',
			'meta.requestRecords' => 'История запросов',
			'meta.netInterfaces' => 'Сетевые интерфейсы',
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
			'meta.requestNeedsUserApproval' => '1. [Разрешить] Karing устанавливать системные расширения в [Системные настройки]-[Конфиденциальность и безопасность]\n2. [Системные настройки]-[Основные]-[Объекты входа и расширения]-[Сетевое расширение] включите [karingServiceSE]\nподключитесь снова после завершения\n3. [Системные настройки]-[Основные]-[Объекты входа и расширения]-[Расширения] включите [karingServiceSE]\nподключитесь снова после завершения',
			'meta.FullDiskAccessPermissionRequired' => 'Включите разрешение [karingServiceSE] в [Системные настройки]-[Конфиденциальность и безопасность]-[Разрешение на полный доступ к диску] и переподключитесь.',
			'meta.tvMode' => 'Режим ТВ',
			'meta.recommended' => 'Рекомендуемые',
			'meta.innerError' => ({required Object p}) => 'Внутренняя ошибка:${p}',
			'meta.logicOperation' => 'Логическая опреация',
			'meta.share' => 'Поделиться',
			'meta.candidateWord' => 'Ключевые слова',
			'meta.keywordOrRegx' => 'Ключевые слова/регулярные выражения (RegExp)',
			'meta.importFromClipboard' => 'Импорт из буфера обмена',
			'meta.exportToClipboard' => 'Экспорт в буфер обмена',
			'meta.server' => 'Сервер',
			'meta.ads' => 'Реклама',
			'meta.adsRemove' => 'Удалить рекламу',
			'meta.donate' => 'Пожертвовать',
			'meta.diversion' => 'Маршрутизация',
			'meta.diversionRules' => 'Правила маршрутизации',
			'meta.diversionCustomGroup' => 'Личные правила',
			'meta.urlTestCustomGroup' => 'Пользовательский автоматический выбор',
			'meta.setting' => 'Настройки',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Синхронизация через LAN с помощью QR-кода',
			'meta.lanSyncNotQuitTips' => 'Не выходите из этого окна до завершения синхронизации.',
			'meta.deviceNoSpace' => 'Недостаточно места на диске',
			'meta.hideSystemApp' => 'Скрыть системные приложения',
			'meta.hideAppIcon' => 'Скрыть значок приложения',
			'meta.hideDockIcon' => 'Скрыть значок из Dock',
			'meta.remark' => 'Примечание',
			'meta.remarkExist' => 'Примечание уже существует, используйте другое имя',
			'meta.remarkCannotEmpty' => 'Примечание не может быть пустым',
			'meta.remarkTooLong' => 'Примечания до 32 символов',
			'meta.openDir' => 'Открыть каталог файлов',
			'meta.fileChoose' => 'Выбрать файл',
			'meta.filePathCannotEmpty' => 'Путь к файлу не может быть пустым',
			'meta.fileNotExist' => ({required Object p}) => 'Файла не существует:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Неверный тип файла:${p}',
			'meta.uwpExemption' => 'Исключение приложений UWP из изоляции сети',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Получить конфигурацию',
			'meta.addProfile' => 'Добавить профиль',
			'meta.myProfiles' => 'Профили',
			'meta.profileEdit' => 'Редактирование профилей',
			'meta.profileEditUrlExist' => 'Этот URL уже добавлен, укажите другой',
			'meta.profileEditReloadAfterProfileUpdate' => 'Перезагрузить после обновления профиля',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Начать тестирование задержек после обновления профиля',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN необходимо подключить, и включить [Перезагрузить после обновления профиля]',
			'meta.profileEditTestLatencyAutoRemove' => 'Автоматически удалять серверы, не прошедшие тесты на задержку',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'До 3 попыток',
			'meta.profileImport' => 'Импорт файла конфигурации',
			'meta.profileAddUrlOrContent' => 'Добавление подписки',
			'meta.profileExists' => 'Профиль уже существует. Пожалуйста, не добавляйте его повторно',
			'meta.profileUrlOrContent' => 'Ссылка на подписку/содержание',
			'meta.profileUrlOrContentHit' => 'Ссылка на подписку/содержание [обязательно] (Поддерживаются Clash, V2ray(пакетом), Stash, Karing, Sing-box, Shadowsocks, Sub, ссылки на конфигурацию).',
			'meta.profileUrlOrContentCannotEmpty' => 'Ссылка на подписку не может быть пустой',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Неправильный формат, исправьте его и добавьте еще раз:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Не удалось добавить: ${p}. Попробуйте изменить [UserAgent] и повторите попытку, либо откройте ссылку в браузере и импортируйте скачанный файл вручную.',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Не удалось добавить: ${p}, Включите прокси или смените текущий прокси-узел и попробуйте снова.',
			'meta.profileAddParseFailed' => 'Получение подписки не удалось',
			'meta.profileAddNoServerAvaliable' => 'Нет доступных серверов. Убедитесь что подписка или файл конфигурации корректен. Если ваша конфигурация взята из GitHub, копируйте ссылку по кнопке [Raw].',
			'meta.profileAddWrapSuccess' => 'Профиль успешно создан, проверьте в разделе [${_root.meta.myProfiles}]',
			_ => null,
		} ?? switch (path) {
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
			'tls.fragmentEnable' => 'Включить TLS Fragment',
			'tls.fragmentSize' => 'Размер фрагмента TLS',
			'tls.fragmentSleep' => 'Задержка фрагментации TLS',
			'tls.mixedCaseSNIEnable' => 'Включить TLS Mixed SNI',
			'tls.paddingEnable' => 'Включить TLS Padding',
			'tls.paddingSize' => 'Размер TLS Padding',
			'outboundRuleMode.currentSelected' => 'Текущий сервер',
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
			'theme.light' => 'Светлая',
			'theme.dark' => 'Тёмная',
			'theme.auto' => 'Автоматически',
			'downloadProxyStrategy' => 'Канал загрузки',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: подключиться к DNS-серверу через прокси-сервер для разрешения доменного имени\n[${_root.dnsProxyResolveMode.direct}]: подключиться напрямую к DNS-серверу для разрешения доменного имени\n[ ${_root.dnsProxyResolveMode.fakeip}]: через прокси-сервер Сервер разрешает доменное имя от вашего имени; если вы отключитесь от VPN, может потребоваться перезапуск вашего приложения; применяется только к входящему трафику из [TUN]',
			'routeFinal' => 'Final',
			'protocolSniff' => 'Перехват и анализ протокола (Sniffing)',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Используйте [${p}]',
			'turnOffPrivateDirect' => 'Сначала включите [Прямое подключение к частной сети]',
			'targetConnectFailed' => ({required Object p}) => 'Не удалось подключиться к [${p}]. Убедитесь, что устройство находится в той же локальной сети.',
			'appleTVSync' => 'Синхронизация текущей базовой конфигурации с Apple TV - Karing',
			'appleTVSyncDone' => 'Синхронизация завершена, перейдите в Apple TV - Karing и запустите подключение.',
			'appleTVRemoveCoreConfig' => 'Удаление конфигурации Karing из Apple TV',
			'appleTVRemoveCoreConfigDone' => 'Apple TV — основной профиль Karing удален; VPN-сервис отключен;',
			'appleTVUrlInvalid' => 'Неверный URL-адрес. Откройте Apple TV — Karing, отсканируйте QR-код, отображаемый Karing.',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] не имеет этой функции, обновите его и повторите попытку.',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'Основная версия ядра не совпадает, пожалуйста, обновите [${p}] и попробуйте еще раз',
			'remoteProfileEditConfirm' => 'После обновления конфигурации изменения узла будут сброшены. Продолжить?',
			'continueConnectConfirm' => 'Продолжить подключение?',
			'mustBeValidHttpsURL' => 'https URL должен быть действительным',
			'fileNotExistReinstall' => ({required Object p}) => 'Отсутствует файл [${p}], переустановите приложение',
			'noNetworkConnect' => 'Нет подключения к Интернету',
			'sudoPassword' => 'Пароль sudo (требуется для режима TUN)',
			'turnOffNetworkBeforeInstall' => 'Перед установкой обновления рекомендуется переключиться в [Режим полета].',
			'latencyTestResolveIP' => 'При ручной проверке определять исходящий IP',
			'latencyTestConcurrency' => 'Параллелизм (потоки)',
			'edgeRuntimeNotInstalled' => 'На устройстве не установлен Edge WebView2, страница не может быть отображена. Скачайте и установите Edge WebView2 runtime (x64), перезапустите приложение и попробуйте снова.',
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
			'locales.id' => 'Bahasa Indonesia',
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
