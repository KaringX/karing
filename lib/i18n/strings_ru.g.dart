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
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
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

	// Translations
	@override late final _TranslationsAboutScreenRu AboutScreen = _TranslationsAboutScreenRu._(_root);
	@override late final _TranslationsAddProfileByImportFromFileScreenRu AddProfileByImportFromFileScreen = _TranslationsAddProfileByImportFromFileScreenRu._(_root);
	@override late final _TranslationsAddProfileByLinkOrContentScreenRu AddProfileByLinkOrContentScreen = _TranslationsAddProfileByLinkOrContentScreenRu._(_root);
	@override late final _TranslationsAddProfileByScanQrcodeScanScreenRu AddProfileByScanQrcodeScanScreen = _TranslationsAddProfileByScanQrcodeScanScreenRu._(_root);
	@override late final _TranslationsBackupAndSyncLanSyncScreenRu BackupAndSyncLanSyncScreen = _TranslationsBackupAndSyncLanSyncScreenRu._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenRu BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenRu._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenRu DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenRu._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenRu DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenRu._(_root);
	@override late final _TranslationsDiversionRulesScreenRu DiversionRulesScreen = _TranslationsDiversionRulesScreenRu._(_root);
	@override late final _TranslationsDnsSettingsScreenRu DnsSettingsScreen = _TranslationsDnsSettingsScreenRu._(_root);
	@override late final _TranslationsFeedbackScreenRu FeedbackScreen = _TranslationsFeedbackScreenRu._(_root);
	@override late final _TranslationsFileContentViewerScreenRu FileContentViewerScreen = _TranslationsFileContentViewerScreenRu._(_root);
	@override late final _TranslationsHomeScreenRu HomeScreen = _TranslationsHomeScreenRu._(_root);
	@override late final _TranslationsLaunchFailedScreenRu LaunchFailedScreen = _TranslationsLaunchFailedScreenRu._(_root);
	@override late final _TranslationsMyProfilesEditScreenRu MyProfilesEditScreen = _TranslationsMyProfilesEditScreenRu._(_root);
	@override late final _TranslationsMyProfilesMergeScreenRu MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenRu._(_root);
	@override late final _TranslationsMyProfilesScreenRu MyProfilesScreen = _TranslationsMyProfilesScreenRu._(_root);
	@override late final _TranslationsNetCheckScreenRu NetCheckScreen = _TranslationsNetCheckScreenRu._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenRu NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenRu._(_root);
	@override late final _TranslationsNetConnectionsScreenRu NetConnectionsScreen = _TranslationsNetConnectionsScreenRu._(_root);
	@override late final _TranslationsPerAppAndroidScreenRu PerAppAndroidScreen = _TranslationsPerAppAndroidScreenRu._(_root);
	@override late final _TranslationsQrcodeScreenRu QrcodeScreen = _TranslationsQrcodeScreenRu._(_root);
	@override late final _TranslationsRegionSettingsScreenRu RegionSettingsScreen = _TranslationsRegionSettingsScreenRu._(_root);
	@override late final _TranslationsServerSelectScreenRu ServerSelectScreen = _TranslationsServerSelectScreenRu._(_root);
	@override late final _TranslationsSettingsScreenRu SettingsScreen = _TranslationsSettingsScreenRu._(_root);
	@override late final _TranslationsSpeedTestSettingsScreenRu SpeedTestSettingsScreen = _TranslationsSpeedTestSettingsScreenRu._(_root);
	@override late final _TranslationsTextToQrCodeScreenRu TextToQrCodeScreen = _TranslationsTextToQrCodeScreenRu._(_root);
	@override late final _TranslationsUserAgreementScreenRu UserAgreementScreen = _TranslationsUserAgreementScreenRu._(_root);
	@override late final _TranslationsVersionUpdateScreenRu VersionUpdateScreen = _TranslationsVersionUpdateScreenRu._(_root);
	@override late final _TranslationsCommonWidgetRu CommonWidget = _TranslationsCommonWidgetRu._(_root);
	@override late final _TranslationsServerManagerRu ServerManager = _TranslationsServerManagerRu._(_root);
	@override late final _TranslationsMainRu main = _TranslationsMainRu._(_root);
	@override String get enable => 'Включить';
	@override String get disable => 'Запретить';
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
	@override String get remove => 'Удалить';
	@override String get edit => 'Редактировать';
	@override String get view => 'Просмотр';
	@override String get more => 'Больше';
	@override String get addProfile => 'Добавить профиль';
	@override String get addSuccess => 'Добавлено успешно';
	@override String addSuccessThen({required Object p}) => 'Конфигурация сгенерирована успешно. Для просмотра перейдите в [${p}]';
	@override String addFailed({required Object p}) => 'Ошибка при добавлении:${p}';
	@override String get removeConfirm => 'Подтверждаете удаление?';
	@override String get tips => 'Инфо';
	@override String get copy => 'Скопировать';
	@override String get ok => 'Ок';
	@override String get cancel => 'Закрыть';
	@override String get feedback => 'Обратная связь';
	@override String get faq => 'Часто задаваемые вопросы (FAQ)';
	@override String get download => 'Скачать';
	@override String get loading => 'Загрузка...';
	@override String updateFailed({required Object p}) => 'Не удалось обновить:${p}';
	@override String get days => 'дни';
	@override String get hours => 'часы';
	@override String get minutes => 'минуты';
	@override String get seconds => 'Второй';
	@override String get protocol => 'Протокол';
	@override String get search => 'Поиск';
	@override String get custom => 'Настроить самостоятельно';
	@override String get connect => 'Соединить';
	@override String get disconnect => 'Отключить';
	@override String get connected => 'Подключено';
	@override String get disconnected => 'Отключено';
	@override String get connecting => 'Подключение';
	@override String get connectTimeout => 'Таймаут при соединении';
	@override String get timeout => 'Тайм-аут';
	@override String get language => 'Язык';
	@override String get next => 'Дальше';
	@override String get done => 'Готово';
	@override String get apply => 'Применить';
	@override String get refresh => 'Обновить';
	@override String get retry => 'Хотите попробовать еще раз?';
	@override String get none => 'Ничего не делать';
	@override String get reset => 'Перезагрузить';
	@override String get submit => 'Отправить';
	@override String get account => 'Аккаунт';
	@override String get password => 'Пароль';
	@override String get required => 'Необходимо';
	@override String get diversion => 'Правила';
	@override String get diversionRules => 'Правила перенаправления';
	@override String get diversionRulesEnable => 'Включить правила перенаправления [ISP]';
	@override String get diversionCustomGroup => 'Личные правила';
	@override String get diversionCustomGroupPreset => 'Шаблоны личных правил';
	@override String get diversionCustomGroupPresetTips => 'Примечание. Включенные элементы будут добавлены в [Личные правила] и [Правила перенаправления].';
	@override String get diversionCustomGroupAddTips => 'Примечание. Возможно, вам придется вручную настроить порядок правил после их добавления, иначе добавленное перенаправление может работать не так, как ожидалось.';
	@override String get urlTestCustomGroup => 'Личная группа прокси-серверов';
	@override String get rulesetEnableTips => 'Совет: После включения опции перейдите в [Правила перенаправления] и установите их, иначе опция не будет действовать';
	@override String get ispUserAgentTips => '[ISP] будет доставлять различные типы данных о подписке на основе [UserAgent] в запросе [HTTP].';
	@override String get ispDiversionTips => 'Правила перенаправления, предоставляемые подписками [ISP] типа [V2Ray], не поддерживаются.';
	@override String get staticIP => 'Статический IP';
	@override String get other => 'Другой';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get isp => 'ISP';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get urlInvalid => 'Неверный URL';
	@override String get outboundActionCurrentSelected => 'Текущий сервер';
	@override String get outboundActionUrltest => 'Автовыбор сервера';
	@override String get outboundActionDirect => 'Напрямую';
	@override String get outboundActionBlock => 'Блокировать';
	@override String get routeFinal => 'Final';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get setting => 'Настройки';
	@override String get protocolSniff => 'Определение протокола';
	@override String get protocolSniffOverrideDestination => 'Обнаруженное имя домена перезаписывает целевой адрес подключения.';
	@override String get remark => 'Примечание';
	@override String get remarkCannotEmpty => 'Примечание не может быть пустым';
	@override String get remarkTooLong => 'Примечания до 32 символов';
	@override String get remarkExist => 'Примечание уже существует, используйте другое имя';
	@override String get domainSuffix => 'Суффикс доменного имени';
	@override String get domain => 'Имя домена';
	@override String get domainKeyword => 'Ключевые слова в имени домена';
	@override String get domainRegex => 'Регулярные выражения для имен доменов';
	@override String get ip => 'IP';
	@override String get port => 'Порт';
	@override String get appPackage => 'Имя пакета приложения';
	@override String get processName => 'Имя процесса';
	@override String get processPath => 'Путь к процессу';
	@override String get systemProxy => 'Системный прокси';
	@override String get netInterfaces => 'Сетевой интерфейс';
	@override String get netSpeed => 'Скорость';
	@override String get website => 'Веб-сайт';
	@override String get rule => 'Правила';
	@override String get global => 'Глобально';
	@override String get qrcode => 'QR-код';
	@override String get scanQrcode => 'Сканировать QR-код';
	@override String get scanResult => 'Результат сканирования';
	@override String get backupAndSync => 'Резервное копирование и синхронизация';
	@override String get importAndExport => 'Импорт и экспорт';
	@override String get import => 'Импорт';
	@override String get export => 'Экспорт';
	@override String get send => 'Передать';
	@override String get receive => 'Принять';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Пожалуйста, используйте [${p}]';
	@override String get sendConfirm => 'Подтверждаете передачу?';
	@override String get termOfUse => 'Условия использования';
	@override String get privacyPolicy => 'Политика конфиденциальности';
	@override String get about => 'О Karing';
	@override String get name => 'Название';
	@override String get version => 'Версия';
	@override String get notice => 'Уведомления';
	@override String get sort => 'Отсортировать';
	@override String get novice => 'Режим новичка';
	@override String get recommended => 'Рекомендуемые';
	@override String innerError({required Object p}) => 'Внутренняя ошибка:${p}';
	@override String get logicOperation => 'Логическая опреация';
	@override String get share => 'Поделиться';
	@override String get candidateWord => 'Ключевые слова';
	@override String get keywordOrRegx => 'Ключевые слова/регулярные выражения';
	@override String get importFromClipboard => 'Импорт из буфера обмена';
	@override String get exportToClipboard => 'Экспорт в буфер обмена';
	@override String get server => 'Сервер';
	@override String get appleTVConnectTurnOfprivateDirect => 'Пожалуйста, сначала включите [Прямое подключение к частной сети]';
	@override String targetConnectFailed({required Object p}) => 'Не удалось подключиться к [${p}]. Убедитесь, что устройство находится в той же локальной сети, и включите [Прямое подключение к частной сети].';
	@override String get appleTVSync => 'Синхронизация текущей базовой конфигурации с Apple TV - Karing';
	@override String get appleTVSyncDone => 'Синхронизация завершена, перейдите в Apple TV — Karing, чтобы открыть/перезапустить соединение.';
	@override String get appleTVRemoveCoreConfig => 'Удаление Apple TV — базовая конфигурация Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV — основной профиль Karing удален; VPN-сервис отключен;';
	@override String get appleTVUrlInvalid => 'Неверный URL-адрес. Откройте Apple TV — Karing, отсканируйте QR-код, отображаемый Karing.';
	@override String get remoteProfileEditConfirm => 'После обновления конфигурации изменения узла будут восстановлены. Продолжить?';
	@override String invalidFileType({required Object p}) => 'Неверный тип файла:${p}';
	@override String get mustBeValidHttpsURL => 'https URL должен быть действительным';
	@override String fileNotExistReinstall({required Object p}) => 'Файл отсутствует [${p}], пожалуйста, переустановите';
	@override String get latencyTest => 'Обнаружение задержки';
	@override String get latencyTestResolveIP => 'При ручном определении также анализируется экспортный IP-адрес.';
	@override String get uwpExemption => 'Исключение из изоляции сети UWP';
	@override String get removeBannerAds => 'Удалить рекламу';
	@override String get removeBannerAdsByReward => 'Посмотрите несколько секунд рекламы, и вы будете вознаграждены 7 днями без рекламы.';
	@override String get removeBannerAdsByRewardDone => 'Получил награду в течение 7 дней без рекламы';
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
	@override String get versionChannel => 'Канал автоматического обновления';
	@override String get disableUAReport => 'Отключить аналитику';
	@override String get disableUAReportTip => 'Данные отчётов о поведении программы помогают нам улучшить её работу; версии младше основной автоматически отключают все отчеты (кроме [Запуска приложения]).';
	@override String get devOptions => 'Параметры разработчика';
	@override String get enableDebugLog => 'Включить debug-лог';
	@override String get viewFilsContent => 'Посмотреть файлы';
	@override String get enablePprof => 'Включить pprof';
	@override String get pprofPanel => 'pprof панель';
	@override String get openDir => 'Открыть каталог файлов';
	@override String get useOriginalSBProfile => 'Использовать исходную конфигурацию Sing-box';
}

// Path: AddProfileByImportFromFileScreen
class _TranslationsAddProfileByImportFromFileScreenRu implements TranslationsAddProfileByImportFromFileScreenEn {
	_TranslationsAddProfileByImportFromFileScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Импорт файла конфигурации';
	@override String get chooseFile => 'Выбрать файл';
	@override String get configExist => 'Профиль уже существует. Пожалуйста, не добавляйте его повторно';
}

// Path: AddProfileByLinkOrContentScreen
class _TranslationsAddProfileByLinkOrContentScreenRu implements TranslationsAddProfileByLinkOrContentScreenEn {
	_TranslationsAddProfileByLinkOrContentScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Добавление подписки';
	@override String get updateTimerInterval => 'Интервал обновления';
	@override String get updateTimerIntervalTips => 'Минимум: 5 м';
	@override String get profileLinkContent => 'Ссылка на подписку/содержание';
	@override String get profileLinkContentHit => 'Ссылка на подписку/содержание [обязательно] (Поддерживаются Clash, V2ray(c пакетом поддержки), Stash, Karing, Sing-box, Shadowsocks, Sub; Ссылка на конфигурацию).';
	@override String get subscriptionCannotEmpty => 'Ссылка на подписку не может быть пустой';
	@override String get configExist => 'Профиль уже существует. Пожалуйста, не добавляйте его повторно';
	@override String get invalidUrl => 'Ссылка на подписку слишком длинная';
	@override String addFailedFormatException({required Object p}) => 'Неправильный формат, исправьте его и добавьте еще раз:${p}';
	@override String addFailedThenDownloadAndImport({required Object p}) => 'Не удалось добавить: ${p}. Попробуйте изменить [UserAgent] и повторите попытку, или используйте собственный браузер устройства, чтобы открыть ссылку на конфигурацию и импортировать файл конфигурации, загруженный браузером, в это приложение.';
	@override String addFailedHandshakeException({required Object p}) => 'Не удалось добавить: ${p}, откройте агент или измените текущий узел агента и повторите попытку.';
}

// Path: AddProfileByScanQrcodeScanScreen
class _TranslationsAddProfileByScanQrcodeScanScreenRu implements TranslationsAddProfileByScanQrcodeScanScreenEn {
	_TranslationsAddProfileByScanQrcodeScanScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get copy => 'Скопировать ссылку';
	@override String get open => 'Открыть ссылку';
	@override String get requestCameraPermission => 'Пожалуйста, разрешите приложению доступ к камере';
	@override String get requestScreenAccess => 'Пожалуйста, перейдите в «Настройки системы» — «Конфиденциальность и безопасность» — «Запись экрана», чтобы добавить разрешения для этого приложения';
	@override String get screenshot => 'Скриншот';
	@override String get scanFromImage => 'Открыть';
	@override String get scanNoResult => 'Не удалось проанализировать изображение. Убедитесь, что снимок экрана представляет собой действительный QR-код.';
	@override String get scanEmptyResult => 'Пустой результат сканирования.';
	@override String scanException({required Object p}) => 'Не удалось проанализировать изображение. Убедитесь, что снимок экрана представляет собой действительный QR-код:${p}';
}

// Path: BackupAndSyncLanSyncScreen
class _TranslationsBackupAndSyncLanSyncScreenRu implements TranslationsBackupAndSyncLanSyncScreenEn {
	_TranslationsBackupAndSyncLanSyncScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Синхронизация по локальной сети';
	@override String get lanSyncNotQuitTips => 'Не выходите из этого окна до завершения синхронизации.';
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
	@override String get setDiversionRule => 'Совет: после сохранения перейдите в раздел [Правила перенаправления] и настройте их, иначе изменения не будут действовать.';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenRu implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тест правил перенаправления';
	@override String get detect => 'Тест';
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

// Path: FeedbackScreen
class _TranslationsFeedbackScreenRu implements TranslationsFeedbackScreenEn {
	_TranslationsFeedbackScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get content => 'Содержание';
	@override String get contentHit => 'Не более 500 символов';
	@override String get contentCannotEmpty => 'Содержание не может быть пустым';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenRu implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Просмотр содержимого файла';
	@override String get chooseFile => 'Выберите файл';
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
	@override String get trafficTotal => 'Трафик всего';
	@override String get trafficProxy => 'Трафик прокси';
	@override String get myLinkEmpty => 'Пожалуйста, настройте [Быструю ссылку] перед использованием';
	@override String get deviceNoSpace => 'Недостаточно места на диске';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}], и соединение может оказаться невозможным из-за ограничений системной памяти';
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

// Path: MyProfilesEditScreen
class _TranslationsMyProfilesEditScreenRu implements TranslationsMyProfilesEditScreenEn {
	_TranslationsMyProfilesEditScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редактирование профилей';
	@override String get urlExist => 'URL-адрес уже существует, используйте другой URL-адрес';
	@override String get updateTimerInterval => 'Интервал обновления';
	@override String get updateTimerIntervalTips => 'Минимум: 5 м';
	@override String get reloadAfterProfileUpdate => 'Перезагрузить после обновления профиля';
	@override String get testLatencyAfterProfileUpdate => 'Начать тестирование задержек после обновления профиля';
	@override String get testLatencyAfterProfileUpdateTips => 'VPN необходимо подключить, и включить [Перезагрузить после обновления профиля]';
	@override String get testLatencyAutoRemove => 'Автоматически удалять серверы, не прошедшие тесты на задержку';
	@override String get testLatencyAutoRemoveTips => 'Попробуйте до 3 раз';
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

// Path: MyProfilesScreen
class _TranslationsMyProfilesScreenRu implements TranslationsMyProfilesScreenEn {
	_TranslationsMyProfilesScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профили';
	@override String get atLeastOneEnable => 'Невозможно отключить, оставьте включенным хотя бы один профиль';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenRu implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Диагностика сети';
	@override String get warn => 'Примечание. Из-за влияния сетевой среды и правил перенаправления результаты теста не полностью эквивалентны фактическим результатам.';
	@override String get check => 'Тест';
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
	@override String get hideSystemApp => 'Скрыть системные приложения';
	@override String get hideAppIcon => 'Скрыть значок приложения';
	@override String get enableAppQueryPermission => 'Включать разрешения [на запросы списка приложений]';
}

// Path: QrcodeScreen
class _TranslationsQrcodeScreenRu implements TranslationsQrcodeScreenEn {
	_TranslationsQrcodeScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get tooLong => 'Слишком большой текст для отображения';
	@override String get copy => 'Скопировать ссылку';
	@override String get open => 'Открыть ссылку';
	@override String get share => 'Поделиться ссылкой';
	@override String get shareImage => 'Поделиться QR-кодом';
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
	@override String ispFaq({required Object p}) => 'FAQ[${p}]';
	@override String cleanISP({required Object p}) => 'Очистить ISP[${p}]';
	@override String get openISP => 'Открыть ссылку на провайдера';
	@override String get cleanISPNoParam => 'Очистить информацию об интернет-провайдере';
	@override String get getTranffic => 'Получить трафик';
	@override String get tutorial => 'Руководство';
	@override String get commonlyUsedRulesets => 'Коллекция наборов правил';
	@override String get howToRemoveAds => 'Как удалить рекламу';
	@override String get htmlBoard => 'Веб-панель';
	@override String get dnsLeakDetection => 'Тест утечки DNS';
	@override String get speedTest => 'Тест скорости';
	@override String get downloadProfilePreferProxy => 'Настройка приоритетного выбора прокси-сервера';
	@override String get downloadProfilePreferProxyTips => 'Если подключение установлено, профиль вначале будет загружен через подключенный прокси-сервер';
	@override String get rulesetDirectDownlad => 'Правила прямой загрузки';
	@override String get hideUnusedDiversionGroup => 'Скрыть неактивные правила перенаправления';
	@override String get disableISPDiversionGroup => 'Отключить правила перенаправления ISP';
	@override String get portSetting => 'Используемые порты';
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
	@override String get tlsInsecureEnable => 'Пропустить проверку сертификата';
	@override String get tlsFragmentEnable => 'Включить фрагментацию TLS';
	@override String get tlsFragmentSize => 'Размер фрагмента TLS';
	@override String get tlsFragmentSleep => 'Длина фрагмента паузы TLS';
	@override String get tlsMixedCaseSNIEnable => 'Включить гибридный SNI TLS';
	@override String get tlsPaddingEnable => 'Включить заполнение TLS';
	@override String get tlsPaddingSize => 'Размер заполнения TLS';
	@override String get dnsEnableRule => 'Включить правила DNS';
	@override String get dnsEnableFakeIp => 'Включить FakeIP';
	@override String get dnsEnableClientSubnet => 'Включить ECS';
	@override String get dnsEnableProxyResolveByProxy => '[действующий поток] Разрешать DNS через прокси-сервер';
	@override String get dnsEnableFinalResolveByProxy => '[final] Разрешать DNS через прокси-сервер';
	@override String get dnsTestDomain => 'Тестовое доменное имя';
	@override String get dnsTestDomainInvalid => 'Неверное доменное имя';
	@override String get dnsTypeOutbound => 'Прокси-сервер';
	@override String get dnsTypeDirect => 'Прямой поток';
	@override String get dnsTypeProxy => 'Действующий поток';
	@override String get dnsTypeResolver => 'DNS-сервер';
	@override String get dnsEnableRuleTips => 'После включения, доменное имя выберет соответствующий DNS-сервер для разрешения в соответствии с правилами перенаправления.';
	@override String get dnsEnableFakeIpTips => 'После включения FakeIP, если VPN-соединение отключено, возможно, потребуется перезапустить приложение, эту функцию необходимо включить [Режим TUN];';
	@override String get dnsTypeOutboundTips => 'Для разрешения доменных имен прокси-сервера рекомендуется использовать безопасный DNS';
	@override String get dnsTypeDirectTips => 'Разрешение доменных имен для прямого потока';
	@override String get dnsTypeProxyTips => 'Разрешение доменных имен для действующего потока';
	@override String get dnsTypeResolverTips => 'Разрешение доменных имен для DNS-серверов';
	@override String get dnsTypeFinalTips => 'Разрешение доменных имен для потока Final';
	@override String get dnsAutoSetServer => 'Автоматически настроить сервер';
	@override String get dnsResetServer => 'Сбросить сервер';
	@override String get inboundDomainResolve => 'Разрешение входящих доменных имен';
	@override String get privateDirect => 'Прямое подключение к частной сети';
	@override String inboundDomainResolveTips({required Object p}) => 'Некоторые доменные имена без настроенных правил переадресации необходимо разрешить, прежде чем они смогут соответствовать правилам переадресации на основе IP; эта функция влияет на входящие запросы к порту прокси [${p}]';
	@override String get useRomoteRes => 'Использовать удаленные ресурсы';
	@override String get autoSelect => 'Автовыбор';
	@override String get autoSelectServerIgnorePerProxyServer => 'Игнорировать прокси-сервер [передний прокси]';
	@override String get autoSelectServerInterval => 'Интервал проверок задержки';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Перетестировать после смены сети';
	@override String get autoSelectServerIntervalTips => 'Чем короче временной интервал, тем чаще обновляются данные о задержке сервера. Но это потребует больше ресурсов и энергии';
	@override String get autoSelectServerFavFirst => 'Приоритетно [Мои избранные]';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Обновить текущий сервер после измерения задержки вручную';
	@override String get autoSelectServerFavFirstTips => 'Если список [Мои избранные] не пуст, то будут использоваться серверы из [Мои избранные]';
	@override String get autoSelectServerFilter => 'Отфильтровать сервера';
	@override String autoSelectServerFilterTips({required Object p}) => 'Ошибки превышения задержки сервера будут отфильтрованы; если после фильтрации ни один сервер не будет доступен, вместо него будут использоваться первые [${p}] серверы';
	@override String get autoSelectServerLimitedNum => 'Максимальное количество серверов';
	@override String get autoSelectServerLimitedNumTips => 'Серверы, превышающие это число, будут отфильтрованы.';
	@override String get numInvalid => 'Неправильный номер';
	@override String get hideInvalidServer => 'Скрыть нерабочие серверы';
	@override String get sortServer => 'Сортировка серверов';
	@override String get sortServerTips => 'Сортировать по задержке от низкой к высокой';
	@override String get selectServerHideRecommand => 'Скрыть [Рекомендуемые]';
	@override String get selectServerHideRecent => 'Скрыть [Недавно использованные]';
	@override String get selectServerHideFav => 'Скрыть [Мои избранные]';
	@override String get homeScreen => 'Настройка главного экрана';
	@override String get theme => 'Тема';
	@override String get myLink => 'Быстрая ссылка';
	@override String get myLinkInvalid => 'Неверный URL';
	@override String get autoConnectAfterLaunch => 'Автоматическое подключение после запуска';
	@override String get hideAfterLaunch => 'Скрыть окно после запуска';
	@override String get autoSetSystemProxy => 'Установить системный прокси после подключения';
	@override String get disconnectWhenQuit => 'Отключаться при выходе из приложения';
	@override String get allowBypass => 'Разрешить приложениям обходить VPN';
	@override String get importSuccess => 'Импорт выполнен успешно';
	@override String get rewriteConfirm => 'Этот файл перезапишет существующую локальную конфигурацию. Продолжить?';
	@override String get networkShare => 'Общий доступ к сети';
	@override String get frontProxy => 'Цепочка прокси';
	@override String frontProxyTips({required Object p}) => 'Запрос -> Фронт-прокси ->[Цепочка прокси-серверов в порядке cверху вниз]-Выходной прокси [${p}] - Целевой сервер';
	@override String get allowOtherHostsConnect => 'Разрешить подключение по локальной сети';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => 'Strict Route';
	@override String get tunStrictRouteTips => 'Если после включения общего доступа другие люди не смогут получить доступ к этому устройству, попробуйте отключить этот переключатель.';
	@override String get enableCluster => 'Включить кластер прокси Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Разрешить подключение по локальной сети к кластеру';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Аутентификация прокси-кластера';
	@override String get tunMode => 'Режим TUN';
	@override String get tunModeTips => 'В режиме TUN весь трафик системы будет перенаправлен через соединение [В этом режиме вы можете оставить системный прокси отключенным]';
	@override String get tunModeRunAsAdmin => 'Для режима TUN требуются права администратора. Перезапустите приложение от имени администратора';
	@override String get tunStack => 'Stack';
	@override String get launchAtStartup => 'Запуск при включении';
	@override String get quitWhenSwitchSystemUser => 'Выйти из приложения при переключении пользователя';
	@override String get handleScheme => 'Схемы системного вызова';
	@override String get portableMode => 'Портативный режим';
	@override String get portableModeDisableTips => 'Если вам нужно выйти из портативного режима, выйдите из [karing] и вручную удалите папку [profiles] в том же каталоге, что и [karing.exe]';
	@override String get handleKaringScheme => 'Вызов karing://[параметры]';
	@override String get handleClashScheme => 'Вызов clash://[параметры]';
	@override String get handleSingboxScheme => 'Вызов sing-box://[параметры]';
	@override String get alwayOnVPN => 'всегда открытое соединение';
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
	@override String get rateInApp => 'Оценить нас';
	@override String get rateInAppStore => 'Оценить нас в App Store';
}

// Path: SpeedTestSettingsScreen
class _TranslationsSpeedTestSettingsScreenRu implements TranslationsSpeedTestSettingsScreenEn {
	_TranslationsSpeedTestSettingsScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL-адрес теста скорости';
}

// Path: TextToQrCodeScreen
class _TranslationsTextToQrCodeScreenRu implements TranslationsTextToQrCodeScreenEn {
	_TranslationsTextToQrCodeScreenRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Преобразование текста в QR-код';
	@override String get convert => 'Конвертировать';
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

// Path: ServerManager
class _TranslationsServerManagerRu implements TranslationsServerManagerEn {
	_TranslationsServerManagerRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get noServerAvaliable => 'Нет доступных серверов, убедитесь что подписка или файл профиля корректен. Если ваша конфигурация взята из GitHub, получите адрес ссылки, нажав кнопку [Raw] на странице.';
	@override String get filePathCannotEmpty => 'Путь к файлу не может быть пустым';
	@override String fileNotExist({required Object p}) => 'Файла не существует:${p}';
	@override String get urlCannotEmpty => 'Ссылка не может быть пустой';
	@override String get invalidUrl => 'Некорректная ссылка на подписку';
	@override String get parseFailed => 'Получение подписки не удалось';
}

// Path: main
class _TranslationsMainRu implements TranslationsMainEn {
	_TranslationsMainRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayRu tray = _TranslationsMainTrayRu._(_root);
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
			case 'AboutScreen.versionChannel': return 'Канал автоматического обновления';
			case 'AboutScreen.disableUAReport': return 'Отключить аналитику';
			case 'AboutScreen.disableUAReportTip': return 'Данные отчётов о поведении программы помогают нам улучшить её работу; версии младше основной автоматически отключают все отчеты (кроме [Запуска приложения]).';
			case 'AboutScreen.devOptions': return 'Параметры разработчика';
			case 'AboutScreen.enableDebugLog': return 'Включить debug-лог';
			case 'AboutScreen.viewFilsContent': return 'Посмотреть файлы';
			case 'AboutScreen.enablePprof': return 'Включить pprof';
			case 'AboutScreen.pprofPanel': return 'pprof панель';
			case 'AboutScreen.openDir': return 'Открыть каталог файлов';
			case 'AboutScreen.useOriginalSBProfile': return 'Использовать исходную конфигурацию Sing-box';
			case 'AddProfileByImportFromFileScreen.title': return 'Импорт файла конфигурации';
			case 'AddProfileByImportFromFileScreen.chooseFile': return 'Выбрать файл';
			case 'AddProfileByImportFromFileScreen.configExist': return 'Профиль уже существует. Пожалуйста, не добавляйте его повторно';
			case 'AddProfileByLinkOrContentScreen.title': return 'Добавление подписки';
			case 'AddProfileByLinkOrContentScreen.updateTimerInterval': return 'Интервал обновления';
			case 'AddProfileByLinkOrContentScreen.updateTimerIntervalTips': return 'Минимум: 5 м';
			case 'AddProfileByLinkOrContentScreen.profileLinkContent': return 'Ссылка на подписку/содержание';
			case 'AddProfileByLinkOrContentScreen.profileLinkContentHit': return 'Ссылка на подписку/содержание [обязательно] (Поддерживаются Clash, V2ray(c пакетом поддержки), Stash, Karing, Sing-box, Shadowsocks, Sub; Ссылка на конфигурацию).';
			case 'AddProfileByLinkOrContentScreen.subscriptionCannotEmpty': return 'Ссылка на подписку не может быть пустой';
			case 'AddProfileByLinkOrContentScreen.configExist': return 'Профиль уже существует. Пожалуйста, не добавляйте его повторно';
			case 'AddProfileByLinkOrContentScreen.invalidUrl': return 'Ссылка на подписку слишком длинная';
			case 'AddProfileByLinkOrContentScreen.addFailedFormatException': return ({required Object p}) => 'Неправильный формат, исправьте его и добавьте еще раз:${p}';
			case 'AddProfileByLinkOrContentScreen.addFailedThenDownloadAndImport': return ({required Object p}) => 'Не удалось добавить: ${p}. Попробуйте изменить [UserAgent] и повторите попытку, или используйте собственный браузер устройства, чтобы открыть ссылку на конфигурацию и импортировать файл конфигурации, загруженный браузером, в это приложение.';
			case 'AddProfileByLinkOrContentScreen.addFailedHandshakeException': return ({required Object p}) => 'Не удалось добавить: ${p}, откройте агент или измените текущий узел агента и повторите попытку.';
			case 'AddProfileByScanQrcodeScanScreen.copy': return 'Скопировать ссылку';
			case 'AddProfileByScanQrcodeScanScreen.open': return 'Открыть ссылку';
			case 'AddProfileByScanQrcodeScanScreen.requestCameraPermission': return 'Пожалуйста, разрешите приложению доступ к камере';
			case 'AddProfileByScanQrcodeScanScreen.requestScreenAccess': return 'Пожалуйста, перейдите в «Настройки системы» — «Конфиденциальность и безопасность» — «Запись экрана», чтобы добавить разрешения для этого приложения';
			case 'AddProfileByScanQrcodeScanScreen.screenshot': return 'Скриншот';
			case 'AddProfileByScanQrcodeScanScreen.scanFromImage': return 'Открыть';
			case 'AddProfileByScanQrcodeScanScreen.scanNoResult': return 'Не удалось проанализировать изображение. Убедитесь, что снимок экрана представляет собой действительный QR-код.';
			case 'AddProfileByScanQrcodeScanScreen.scanEmptyResult': return 'Пустой результат сканирования.';
			case 'AddProfileByScanQrcodeScanScreen.scanException': return ({required Object p}) => 'Не удалось проанализировать изображение. Убедитесь, что снимок экрана представляет собой действительный QR-код:${p}';
			case 'BackupAndSyncLanSyncScreen.title': return 'Синхронизация по локальной сети';
			case 'BackupAndSyncLanSyncScreen.lanSyncNotQuitTips': return 'Не выходите из этого окна до завершения синхронизации.';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return 'Адрес сервера';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return 'Не может быть пустым';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return 'Ошибка входа:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return 'Не удалось получить список файлов:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => 'Неверный [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => 'Неверный [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => 'Неверный [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => 'Неверный [Rule Set]:${p}, URL-адрес должен быть действительным URL-адресом https двоичного файлом с расширением .srs/.json';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => 'Неверный [RuleSet(build-in)]:${p}, формат: geosite:xxx или geoip:xxx или acl:xxx, а xxx должно быть допустимым именем правила.';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return 'Совет: после сохранения перейдите в раздел [Правила перенаправления] и настройте их, иначе изменения не будут действовать.';
			case 'DiversionRuleDetectScreen.title': return 'Тест правил перенаправления';
			case 'DiversionRuleDetectScreen.detect': return 'Тест';
			case 'DiversionRuleDetectScreen.rule': return 'Правило:';
			case 'DiversionRuleDetectScreen.outbound': return 'Прокси-сервер:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return 'Совет: Правила применяются по очереди сверху вниз. Если ни одно соответствие не обнаружено, то действует правило [Final]';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'ISP не может быть пустой';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'URL не может быть пустой';
			case 'DnsSettingsScreen.error': return ({required Object p}) => 'Неподдерживаемый тип:${p}';
			case 'DnsSettingsScreen.dnsDesc': return 'Первый столбец данных — это задержка запроса при прямом соединении;\nВторой столбец, если включено [[действующий поток] Разрешать DNS через прокси-сервер]: данные — это задержка запроса, пересылаемого через текущий прокси-сервер; Если выключено [[действующий поток] Разрешать DNS через прокси-сервер]: данные - это задержка запроса при прямом соединении.';
			case 'FeedbackScreen.content': return 'Содержание';
			case 'FeedbackScreen.contentHit': return 'Не более 500 символов';
			case 'FeedbackScreen.contentCannotEmpty': return 'Содержание не может быть пустым';
			case 'FileContentViewerScreen.title': return 'Просмотр содержимого файла';
			case 'FileContentViewerScreen.chooseFile': return 'Выберите файл';
			case 'FileContentViewerScreen.clearFileContent': return 'Вы уверены, что хотите очистить содержимое файла?';
			case 'FileContentViewerScreen.clearFileContentTips': return 'Вы уверены, что  хотите очистить содержимое файла профиля? Очистка файла профиля может привести к потере данных или некорректной работе приложения. Действуйте осторожно.';
			case 'HomeScreen.toSelectServer': return 'Выберите сервер';
			case 'HomeScreen.invalidServer': return 'Не работает. Пожалуйста, выберите другой';
			case 'HomeScreen.disabledServer': return 'Был отключен. Пожалуйста, выберите другой';
			case 'HomeScreen.expiredServer': return 'Нет доступного сервера: возможно, профиль устарел или отключен';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'HomeScreen.trafficTotal': return 'Трафик всего';
			case 'HomeScreen.trafficProxy': return 'Трафик прокси';
			case 'HomeScreen.myLinkEmpty': return 'Пожалуйста, настройте [Быструю ссылку] перед использованием';
			case 'HomeScreen.deviceNoSpace': return 'Недостаточно места на диске';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => 'Слишком много прокси-серверов [${p}>${p1}], и соединение может оказаться невозможным из-за ограничений системной памяти';
			case 'LaunchFailedScreen.invalidProcess': return 'Не удалось запустить приложение [Неверное имя процесса], переустановите приложение в отдельную папку';
			case 'LaunchFailedScreen.invalidProfile': return 'Не удалось запустить приложение [Не удалось получить доступ к профилю], переустановите приложение';
			case 'LaunchFailedScreen.invalidVersion': return 'Не удалось запустить приложение [Неверная версия], переустановите приложение';
			case 'LaunchFailedScreen.systemVersionLow': return 'Не удалось запустить приложение [Слишком низкая версия системы]';
			case 'LaunchFailedScreen.invalidInstallPath': return 'Путь установки недействителен, переустановите его по допустимому пути';
			case 'MyProfilesEditScreen.title': return 'Редактирование профилей';
			case 'MyProfilesEditScreen.urlExist': return 'URL-адрес уже существует, используйте другой URL-адрес';
			case 'MyProfilesEditScreen.updateTimerInterval': return 'Интервал обновления';
			case 'MyProfilesEditScreen.updateTimerIntervalTips': return 'Минимум: 5 м';
			case 'MyProfilesEditScreen.reloadAfterProfileUpdate': return 'Перезагрузить после обновления профиля';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdate': return 'Начать тестирование задержек после обновления профиля';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdateTips': return 'VPN необходимо подключить, и включить [Перезагрузить после обновления профиля]';
			case 'MyProfilesEditScreen.testLatencyAutoRemove': return 'Автоматически удалять серверы, не прошедшие тесты на задержку';
			case 'MyProfilesEditScreen.testLatencyAutoRemoveTips': return 'Попробуйте до 3 раз';
			case 'MyProfilesMergeScreen.profilesMerge': return 'Объединение профилей';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return 'Целевой профиль';
			case 'MyProfilesMergeScreen.profilesMergeSource': return 'Профиль - источник';
			case 'MyProfilesMergeScreen.profilesMergeTips': return 'Совет: Настройки перенаправления для профиля - источника будут удалены.';
			case 'MyProfilesScreen.title': return 'Профили';
			case 'MyProfilesScreen.atLeastOneEnable': return 'Невозможно отключить, оставьте включенным хотя бы один профиль';
			case 'NetCheckScreen.title': return 'Диагностика сети';
			case 'NetCheckScreen.warn': return 'Примечание. Из-за влияния сетевой среды и правил перенаправления результаты теста не полностью эквивалентны фактическим результатам.';
			case 'NetCheckScreen.check': return 'Тест';
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
			case 'PerAppAndroidScreen.hideSystemApp': return 'Скрыть системные приложения';
			case 'PerAppAndroidScreen.hideAppIcon': return 'Скрыть значок приложения';
			case 'PerAppAndroidScreen.enableAppQueryPermission': return 'Включать разрешения [на запросы списка приложений]';
			case 'QrcodeScreen.tooLong': return 'Слишком большой текст для отображения';
			case 'QrcodeScreen.copy': return 'Скопировать ссылку';
			case 'QrcodeScreen.open': return 'Открыть ссылку';
			case 'QrcodeScreen.share': return 'Поделиться ссылкой';
			case 'QrcodeScreen.shareImage': return 'Поделиться QR-кодом';
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
			case 'SettingsScreen.ispFaq': return ({required Object p}) => 'FAQ[${p}]';
			case 'SettingsScreen.cleanISP': return ({required Object p}) => 'Очистить ISP[${p}]';
			case 'SettingsScreen.openISP': return 'Открыть ссылку на провайдера';
			case 'SettingsScreen.cleanISPNoParam': return 'Очистить информацию об интернет-провайдере';
			case 'SettingsScreen.getTranffic': return 'Получить трафик';
			case 'SettingsScreen.tutorial': return 'Руководство';
			case 'SettingsScreen.commonlyUsedRulesets': return 'Коллекция наборов правил';
			case 'SettingsScreen.howToRemoveAds': return 'Как удалить рекламу';
			case 'SettingsScreen.htmlBoard': return 'Веб-панель';
			case 'SettingsScreen.dnsLeakDetection': return 'Тест утечки DNS';
			case 'SettingsScreen.speedTest': return 'Тест скорости';
			case 'SettingsScreen.downloadProfilePreferProxy': return 'Настройка приоритетного выбора прокси-сервера';
			case 'SettingsScreen.downloadProfilePreferProxyTips': return 'Если подключение установлено, профиль вначале будет загружен через подключенный прокси-сервер';
			case 'SettingsScreen.rulesetDirectDownlad': return 'Правила прямой загрузки';
			case 'SettingsScreen.hideUnusedDiversionGroup': return 'Скрыть неактивные правила перенаправления';
			case 'SettingsScreen.disableISPDiversionGroup': return 'Отключить правила перенаправления ISP';
			case 'SettingsScreen.portSetting': return 'Используемые порты';
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
			case 'SettingsScreen.tlsInsecureEnable': return 'Пропустить проверку сертификата';
			case 'SettingsScreen.tlsFragmentEnable': return 'Включить фрагментацию TLS';
			case 'SettingsScreen.tlsFragmentSize': return 'Размер фрагмента TLS';
			case 'SettingsScreen.tlsFragmentSleep': return 'Длина фрагмента паузы TLS';
			case 'SettingsScreen.tlsMixedCaseSNIEnable': return 'Включить гибридный SNI TLS';
			case 'SettingsScreen.tlsPaddingEnable': return 'Включить заполнение TLS';
			case 'SettingsScreen.tlsPaddingSize': return 'Размер заполнения TLS';
			case 'SettingsScreen.dnsEnableRule': return 'Включить правила DNS';
			case 'SettingsScreen.dnsEnableFakeIp': return 'Включить FakeIP';
			case 'SettingsScreen.dnsEnableClientSubnet': return 'Включить ECS';
			case 'SettingsScreen.dnsEnableProxyResolveByProxy': return '[действующий поток] Разрешать DNS через прокси-сервер';
			case 'SettingsScreen.dnsEnableFinalResolveByProxy': return '[final] Разрешать DNS через прокси-сервер';
			case 'SettingsScreen.dnsTestDomain': return 'Тестовое доменное имя';
			case 'SettingsScreen.dnsTestDomainInvalid': return 'Неверное доменное имя';
			case 'SettingsScreen.dnsTypeOutbound': return 'Прокси-сервер';
			case 'SettingsScreen.dnsTypeDirect': return 'Прямой поток';
			case 'SettingsScreen.dnsTypeProxy': return 'Действующий поток';
			case 'SettingsScreen.dnsTypeResolver': return 'DNS-сервер';
			case 'SettingsScreen.dnsEnableRuleTips': return 'После включения, доменное имя выберет соответствующий DNS-сервер для разрешения в соответствии с правилами перенаправления.';
			case 'SettingsScreen.dnsEnableFakeIpTips': return 'После включения FakeIP, если VPN-соединение отключено, возможно, потребуется перезапустить приложение, эту функцию необходимо включить [Режим TUN];';
			case 'SettingsScreen.dnsTypeOutboundTips': return 'Для разрешения доменных имен прокси-сервера рекомендуется использовать безопасный DNS';
			case 'SettingsScreen.dnsTypeDirectTips': return 'Разрешение доменных имен для прямого потока';
			case 'SettingsScreen.dnsTypeProxyTips': return 'Разрешение доменных имен для действующего потока';
			case 'SettingsScreen.dnsTypeResolverTips': return 'Разрешение доменных имен для DNS-серверов';
			case 'SettingsScreen.dnsTypeFinalTips': return 'Разрешение доменных имен для потока Final';
			case 'SettingsScreen.dnsAutoSetServer': return 'Автоматически настроить сервер';
			case 'SettingsScreen.dnsResetServer': return 'Сбросить сервер';
			case 'SettingsScreen.inboundDomainResolve': return 'Разрешение входящих доменных имен';
			case 'SettingsScreen.privateDirect': return 'Прямое подключение к частной сети';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => 'Некоторые доменные имена без настроенных правил переадресации необходимо разрешить, прежде чем они смогут соответствовать правилам переадресации на основе IP; эта функция влияет на входящие запросы к порту прокси [${p}]';
			case 'SettingsScreen.useRomoteRes': return 'Использовать удаленные ресурсы';
			case 'SettingsScreen.autoSelect': return 'Автовыбор';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return 'Игнорировать прокси-сервер [передний прокси]';
			case 'SettingsScreen.autoSelectServerInterval': return 'Интервал проверок задержки';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return 'Перетестировать после смены сети';
			case 'SettingsScreen.autoSelectServerIntervalTips': return 'Чем короче временной интервал, тем чаще обновляются данные о задержке сервера. Но это потребует больше ресурсов и энергии';
			case 'SettingsScreen.autoSelectServerFavFirst': return 'Приоритетно [Мои избранные]';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return 'Обновить текущий сервер после измерения задержки вручную';
			case 'SettingsScreen.autoSelectServerFavFirstTips': return 'Если список [Мои избранные] не пуст, то будут использоваться серверы из [Мои избранные]';
			case 'SettingsScreen.autoSelectServerFilter': return 'Отфильтровать сервера';
			case 'SettingsScreen.autoSelectServerFilterTips': return ({required Object p}) => 'Ошибки превышения задержки сервера будут отфильтрованы; если после фильтрации ни один сервер не будет доступен, вместо него будут использоваться первые [${p}] серверы';
			case 'SettingsScreen.autoSelectServerLimitedNum': return 'Максимальное количество серверов';
			case 'SettingsScreen.autoSelectServerLimitedNumTips': return 'Серверы, превышающие это число, будут отфильтрованы.';
			case 'SettingsScreen.numInvalid': return 'Неправильный номер';
			case 'SettingsScreen.hideInvalidServer': return 'Скрыть нерабочие серверы';
			case 'SettingsScreen.sortServer': return 'Сортировка серверов';
			case 'SettingsScreen.sortServerTips': return 'Сортировать по задержке от низкой к высокой';
			case 'SettingsScreen.selectServerHideRecommand': return 'Скрыть [Рекомендуемые]';
			case 'SettingsScreen.selectServerHideRecent': return 'Скрыть [Недавно использованные]';
			case 'SettingsScreen.selectServerHideFav': return 'Скрыть [Мои избранные]';
			case 'SettingsScreen.homeScreen': return 'Настройка главного экрана';
			case 'SettingsScreen.theme': return 'Тема';
			case 'SettingsScreen.myLink': return 'Быстрая ссылка';
			case 'SettingsScreen.myLinkInvalid': return 'Неверный URL';
			case 'SettingsScreen.autoConnectAfterLaunch': return 'Автоматическое подключение после запуска';
			case 'SettingsScreen.hideAfterLaunch': return 'Скрыть окно после запуска';
			case 'SettingsScreen.autoSetSystemProxy': return 'Установить системный прокси после подключения';
			case 'SettingsScreen.disconnectWhenQuit': return 'Отключаться при выходе из приложения';
			case 'SettingsScreen.allowBypass': return 'Разрешить приложениям обходить VPN';
			case 'SettingsScreen.importSuccess': return 'Импорт выполнен успешно';
			case 'SettingsScreen.rewriteConfirm': return 'Этот файл перезапишет существующую локальную конфигурацию. Продолжить?';
			case 'SettingsScreen.networkShare': return 'Общий доступ к сети';
			case 'SettingsScreen.frontProxy': return 'Цепочка прокси';
			case 'SettingsScreen.frontProxyTips': return ({required Object p}) => 'Запрос -> Фронт-прокси ->[Цепочка прокси-серверов в порядке cверху вниз]-Выходной прокси [${p}] - Целевой сервер';
			case 'SettingsScreen.allowOtherHostsConnect': return 'Разрешить подключение по локальной сети';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return 'Strict Route';
			case 'SettingsScreen.tunStrictRouteTips': return 'Если после включения общего доступа другие люди не смогут получить доступ к этому устройству, попробуйте отключить этот переключатель.';
			case 'SettingsScreen.enableCluster': return 'Включить кластер прокси Socks/Http';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return 'Разрешить подключение по локальной сети к кластеру';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
			case 'SettingsScreen.clusterAuth': return 'Аутентификация прокси-кластера';
			case 'SettingsScreen.tunMode': return 'Режим TUN';
			case 'SettingsScreen.tunModeTips': return 'В режиме TUN весь трафик системы будет перенаправлен через соединение [В этом режиме вы можете оставить системный прокси отключенным]';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'Для режима TUN требуются права администратора. Перезапустите приложение от имени администратора';
			case 'SettingsScreen.tunStack': return 'Stack';
			case 'SettingsScreen.launchAtStartup': return 'Запуск при включении';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return 'Выйти из приложения при переключении пользователя';
			case 'SettingsScreen.handleScheme': return 'Схемы системного вызова';
			case 'SettingsScreen.portableMode': return 'Портативный режим';
			case 'SettingsScreen.portableModeDisableTips': return 'Если вам нужно выйти из портативного режима, выйдите из [karing] и вручную удалите папку [profiles] в том же каталоге, что и [karing.exe]';
			case 'SettingsScreen.handleKaringScheme': return 'Вызов karing://[параметры]';
			case 'SettingsScreen.handleClashScheme': return 'Вызов clash://[параметры]';
			case 'SettingsScreen.handleSingboxScheme': return 'Вызов sing-box://[параметры]';
			case 'SettingsScreen.alwayOnVPN': return 'всегда открытое соединение';
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
			case 'SettingsScreen.rateInApp': return 'Оценить нас';
			case 'SettingsScreen.rateInAppStore': return 'Оценить нас в App Store';
			case 'SpeedTestSettingsScreen.title': return 'URL-адрес теста скорости';
			case 'TextToQrCodeScreen.title': return 'Преобразование текста в QR-код';
			case 'TextToQrCodeScreen.convert': return 'Конвертировать';
			case 'UserAgreementScreen.privacyFirst': return 'Ваша конфиденциальность превыше всего';
			case 'UserAgreementScreen.agreeAndContinue': return 'Принять и продолжить';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => 'Новая версия [${p}] доступна';
			case 'VersionUpdateScreen.update': return 'Перезапустить';
			case 'VersionUpdateScreen.cancel': return 'Не сейчас';
			case 'CommonWidget.diableAlwayOnVPN': return 'Если параметр [VPN всегда включен] включен, отключите его и попробуйте подключиться еще раз';
			case 'CommonWidget.resetPort': return 'Пожалуйста, измените порт на другой доступный порт или закройте приложение, занимающее порт.';
			case 'ServerManager.noServerAvaliable': return 'Нет доступных серверов, убедитесь что подписка или файл профиля корректен. Если ваша конфигурация взята из GitHub, получите адрес ссылки, нажав кнопку [Raw] на странице.';
			case 'ServerManager.filePathCannotEmpty': return 'Путь к файлу не может быть пустым';
			case 'ServerManager.fileNotExist': return ({required Object p}) => 'Файла не существует:${p}';
			case 'ServerManager.urlCannotEmpty': return 'Ссылка не может быть пустой';
			case 'ServerManager.invalidUrl': return 'Некорректная ссылка на подписку';
			case 'ServerManager.parseFailed': return 'Получение подписки не удалось';
			case 'main.tray.menuOpen': return '    Открыть    ';
			case 'main.tray.menuExit': return '    Выйти    ';
			case 'enable': return 'Включить';
			case 'disable': return 'Запретить';
			case 'filter': return 'Фильтр';
			case 'filterMethod': return 'Метод фильтра';
			case 'include': return 'Включать';
			case 'exclude': return 'Исключать';
			case 'all': return 'Все';
			case 'prefer': return 'Приоритет';
			case 'only': return 'Только';
			case 'open': return 'Открыть';
			case 'close': return 'Закрыть';
			case 'quit': return 'Выйти';
			case 'add': return 'Добавить';
			case 'remove': return 'Удалить';
			case 'edit': return 'Редактировать';
			case 'view': return 'Просмотр';
			case 'more': return 'Больше';
			case 'addProfile': return 'Добавить профиль';
			case 'addSuccess': return 'Добавлено успешно';
			case 'addSuccessThen': return ({required Object p}) => 'Конфигурация сгенерирована успешно. Для просмотра перейдите в [${p}]';
			case 'addFailed': return ({required Object p}) => 'Ошибка при добавлении:${p}';
			case 'removeConfirm': return 'Подтверждаете удаление?';
			case 'tips': return 'Инфо';
			case 'copy': return 'Скопировать';
			case 'ok': return 'Ок';
			case 'cancel': return 'Закрыть';
			case 'feedback': return 'Обратная связь';
			case 'faq': return 'Часто задаваемые вопросы (FAQ)';
			case 'download': return 'Скачать';
			case 'loading': return 'Загрузка...';
			case 'updateFailed': return ({required Object p}) => 'Не удалось обновить:${p}';
			case 'days': return 'дни';
			case 'hours': return 'часы';
			case 'minutes': return 'минуты';
			case 'seconds': return 'Второй';
			case 'protocol': return 'Протокол';
			case 'search': return 'Поиск';
			case 'custom': return 'Настроить самостоятельно';
			case 'connect': return 'Соединить';
			case 'disconnect': return 'Отключить';
			case 'connected': return 'Подключено';
			case 'disconnected': return 'Отключено';
			case 'connecting': return 'Подключение';
			case 'connectTimeout': return 'Таймаут при соединении';
			case 'timeout': return 'Тайм-аут';
			case 'language': return 'Язык';
			case 'next': return 'Дальше';
			case 'done': return 'Готово';
			case 'apply': return 'Применить';
			case 'refresh': return 'Обновить';
			case 'retry': return 'Хотите попробовать еще раз?';
			case 'none': return 'Ничего не делать';
			case 'reset': return 'Перезагрузить';
			case 'submit': return 'Отправить';
			case 'account': return 'Аккаунт';
			case 'password': return 'Пароль';
			case 'required': return 'Необходимо';
			case 'diversion': return 'Правила';
			case 'diversionRules': return 'Правила перенаправления';
			case 'diversionRulesEnable': return 'Включить правила перенаправления [ISP]';
			case 'diversionCustomGroup': return 'Личные правила';
			case 'diversionCustomGroupPreset': return 'Шаблоны личных правил';
			case 'diversionCustomGroupPresetTips': return 'Примечание. Включенные элементы будут добавлены в [Личные правила] и [Правила перенаправления].';
			case 'diversionCustomGroupAddTips': return 'Примечание. Возможно, вам придется вручную настроить порядок правил после их добавления, иначе добавленное перенаправление может работать не так, как ожидалось.';
			case 'urlTestCustomGroup': return 'Личная группа прокси-серверов';
			case 'rulesetEnableTips': return 'Совет: После включения опции перейдите в [Правила перенаправления] и установите их, иначе опция не будет действовать';
			case 'ispUserAgentTips': return '[ISP] будет доставлять различные типы данных о подписке на основе [UserAgent] в запросе [HTTP].';
			case 'ispDiversionTips': return 'Правила перенаправления, предоставляемые подписками [ISP] типа [V2Ray], не поддерживаются.';
			case 'staticIP': return 'Статический IP';
			case 'other': return 'Другой';
			case 'dns': return 'DNS';
			case 'url': return 'URL';
			case 'isp': return 'ISP';
			case 'tls': return 'TLS';
			case 'userAgent': return 'UserAgent';
			case 'urlInvalid': return 'Неверный URL';
			case 'outboundActionCurrentSelected': return 'Текущий сервер';
			case 'outboundActionUrltest': return 'Автовыбор сервера';
			case 'outboundActionDirect': return 'Напрямую';
			case 'outboundActionBlock': return 'Блокировать';
			case 'routeFinal': return 'Final';
			case 'rulesetGeoSite': return 'GeoSite';
			case 'rulesetGeoIp': return 'GeoIP';
			case 'rulesetAcl': return 'ACL';
			case 'iCloud': return 'iCloud';
			case 'appleTV': return 'Apple TV';
			case 'webdav': return 'Webdav';
			case 'setting': return 'Настройки';
			case 'protocolSniff': return 'Определение протокола';
			case 'protocolSniffOverrideDestination': return 'Обнаруженное имя домена перезаписывает целевой адрес подключения.';
			case 'remark': return 'Примечание';
			case 'remarkCannotEmpty': return 'Примечание не может быть пустым';
			case 'remarkTooLong': return 'Примечания до 32 символов';
			case 'remarkExist': return 'Примечание уже существует, используйте другое имя';
			case 'domainSuffix': return 'Суффикс доменного имени';
			case 'domain': return 'Имя домена';
			case 'domainKeyword': return 'Ключевые слова в имени домена';
			case 'domainRegex': return 'Регулярные выражения для имен доменов';
			case 'ip': return 'IP';
			case 'port': return 'Порт';
			case 'appPackage': return 'Имя пакета приложения';
			case 'processName': return 'Имя процесса';
			case 'processPath': return 'Путь к процессу';
			case 'systemProxy': return 'Системный прокси';
			case 'netInterfaces': return 'Сетевой интерфейс';
			case 'netSpeed': return 'Скорость';
			case 'website': return 'Веб-сайт';
			case 'rule': return 'Правила';
			case 'global': return 'Глобально';
			case 'qrcode': return 'QR-код';
			case 'scanQrcode': return 'Сканировать QR-код';
			case 'scanResult': return 'Результат сканирования';
			case 'backupAndSync': return 'Резервное копирование и синхронизация';
			case 'importAndExport': return 'Импорт и экспорт';
			case 'import': return 'Импорт';
			case 'export': return 'Экспорт';
			case 'send': return 'Передать';
			case 'receive': return 'Принять';
			case 'sendOrReceiveNotMatch': return ({required Object p}) => 'Пожалуйста, используйте [${p}]';
			case 'sendConfirm': return 'Подтверждаете передачу?';
			case 'termOfUse': return 'Условия использования';
			case 'privacyPolicy': return 'Политика конфиденциальности';
			case 'about': return 'О Karing';
			case 'name': return 'Название';
			case 'version': return 'Версия';
			case 'notice': return 'Уведомления';
			case 'sort': return 'Отсортировать';
			case 'novice': return 'Режим новичка';
			case 'recommended': return 'Рекомендуемые';
			case 'innerError': return ({required Object p}) => 'Внутренняя ошибка:${p}';
			case 'logicOperation': return 'Логическая опреация';
			case 'share': return 'Поделиться';
			case 'candidateWord': return 'Ключевые слова';
			case 'keywordOrRegx': return 'Ключевые слова/регулярные выражения';
			case 'importFromClipboard': return 'Импорт из буфера обмена';
			case 'exportToClipboard': return 'Экспорт в буфер обмена';
			case 'server': return 'Сервер';
			case 'appleTVConnectTurnOfprivateDirect': return 'Пожалуйста, сначала включите [Прямое подключение к частной сети]';
			case 'targetConnectFailed': return ({required Object p}) => 'Не удалось подключиться к [${p}]. Убедитесь, что устройство находится в той же локальной сети, и включите [Прямое подключение к частной сети].';
			case 'appleTVSync': return 'Синхронизация текущей базовой конфигурации с Apple TV - Karing';
			case 'appleTVSyncDone': return 'Синхронизация завершена, перейдите в Apple TV — Karing, чтобы открыть/перезапустить соединение.';
			case 'appleTVRemoveCoreConfig': return 'Удаление Apple TV — базовая конфигурация Karing';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV — основной профиль Karing удален; VPN-сервис отключен;';
			case 'appleTVUrlInvalid': return 'Неверный URL-адрес. Откройте Apple TV — Karing, отсканируйте QR-код, отображаемый Karing.';
			case 'remoteProfileEditConfirm': return 'После обновления конфигурации изменения узла будут восстановлены. Продолжить?';
			case 'invalidFileType': return ({required Object p}) => 'Неверный тип файла:${p}';
			case 'mustBeValidHttpsURL': return 'https URL должен быть действительным';
			case 'fileNotExistReinstall': return ({required Object p}) => 'Файл отсутствует [${p}], пожалуйста, переустановите';
			case 'latencyTest': return 'Обнаружение задержки';
			case 'latencyTestResolveIP': return 'При ручном определении также анализируется экспортный IP-адрес.';
			case 'uwpExemption': return 'Исключение из изоляции сети UWP';
			case 'removeBannerAds': return 'Удалить рекламу';
			case 'removeBannerAdsByReward': return 'Посмотрите несколько секунд рекламы, и вы будете вознаграждены 7 днями без рекламы.';
			case 'removeBannerAdsByRewardDone': return 'Получил награду в течение 7 дней без рекламы';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

