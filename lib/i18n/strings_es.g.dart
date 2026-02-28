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
class TranslationsEs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenEs AboutScreen = _TranslationsAboutScreenEs._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenEs BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenEs._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenEs DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenEs._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenEs DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenEs._(_root);
	@override late final _TranslationsDiversionRulesScreenEs DiversionRulesScreen = _TranslationsDiversionRulesScreenEs._(_root);
	@override late final _TranslationsDnsSettingsScreenEs DnsSettingsScreen = _TranslationsDnsSettingsScreenEs._(_root);
	@override late final _TranslationsFileContentViewerScreenEs FileContentViewerScreen = _TranslationsFileContentViewerScreenEs._(_root);
	@override late final _TranslationsHomeScreenEs HomeScreen = _TranslationsHomeScreenEs._(_root);
	@override late final _TranslationsLaunchFailedScreenEs LaunchFailedScreen = _TranslationsLaunchFailedScreenEs._(_root);
	@override late final _TranslationsMyProfilesMergeScreenEs MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenEs._(_root);
	@override late final _TranslationsNetCheckScreenEs NetCheckScreen = _TranslationsNetCheckScreenEs._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenEs NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenEs._(_root);
	@override late final _TranslationsNetConnectionsScreenEs NetConnectionsScreen = _TranslationsNetConnectionsScreenEs._(_root);
	@override late final _TranslationsPerAppAndroidScreenEs PerAppAndroidScreen = _TranslationsPerAppAndroidScreenEs._(_root);
	@override late final _TranslationsRegionSettingsScreenEs RegionSettingsScreen = _TranslationsRegionSettingsScreenEs._(_root);
	@override late final _TranslationsServerSelectScreenEs ServerSelectScreen = _TranslationsServerSelectScreenEs._(_root);
	@override late final _TranslationsSettingsScreenEs SettingsScreen = _TranslationsSettingsScreenEs._(_root);
	@override late final _TranslationsUserAgreementScreenEs UserAgreementScreen = _TranslationsUserAgreementScreenEs._(_root);
	@override late final _TranslationsVersionUpdateScreenEs VersionUpdateScreen = _TranslationsVersionUpdateScreenEs._(_root);
	@override late final _TranslationsCommonWidgetEs CommonWidget = _TranslationsCommonWidgetEs._(_root);
	@override late final _TranslationsMainEs main = _TranslationsMainEs._(_root);
	@override late final _TranslationsMetaEs meta = _TranslationsMetaEs._(_root);
	@override String get diversionRulesKeep => 'Mantener ${_root.meta.diversionRules} de [${_root.meta.isp}]';
	@override String get diversionCustomGroupPreset => 'Preajuste [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Nota: Los elementos habilitados se agregarán/sobrescribirán en [${_root.meta.diversionCustomGroup}] y [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Nota: Después de agregar, es posible que deba ajustar manualmente el orden; de lo contrario, el nuevo desvío podría no ser efectivo';
	@override String get rulesetEnableTips => 'Consejo: Después de activar las opciones, vaya a [${_root.meta.diversionRules}] para establecer las reglas correspondientes; de lo contrario, no tendrán efecto.';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] enviará datos de diferentes tipos de suscripción basados en el [UserAgent] en la solicitud [HTTP]';
	@override String get ispDiversionTips => '[${_root.meta.isp}] proporciona reglas de desvío de tráfico; las suscripciones de tipo [V2Ray] no admiten reglas de desvío de tráfico';
	@override late final _TranslationsIspEs isp = _TranslationsIspEs._(_root);
	@override late final _TranslationsPermissionEs permission = _TranslationsPermissionEs._(_root);
	@override late final _TranslationsTlsEs tls = _TranslationsTlsEs._(_root);
	@override late final _TranslationsOutboundRuleModeEs outboundRuleMode = _TranslationsOutboundRuleModeEs._(_root);
	@override late final _TranslationsDnsProxyResolveModeEs dnsProxyResolveMode = _TranslationsDnsProxyResolveModeEs._(_root);
	@override late final _TranslationsProxyStrategyEs proxyStrategy = _TranslationsProxyStrategyEs._(_root);
	@override late final _TranslationsReloadReasonEs reloadReason = _TranslationsReloadReasonEs._(_root);
	@override late final _TranslationsThemeEs theme = _TranslationsThemeEs._(_root);
	@override String get downloadProxyStrategy => 'Canal de descarga';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Conectarse al servidor DNS a través del servidor proxy para resolver el nombre de dominio\n[${_root.dnsProxyResolveMode.direct}]: Conectarse directamente al servidor DNS para resolver el nombre de dominio\n[${_root.dnsProxyResolveMode.fakeip}]: El servidor proxy resuelve el nombre de dominio en su nombre; si desconecta la conexión VPN, es posible que deba reiniciar su aplicación; solo efectivo para el tráfico entrante [TUN]';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'Husmeo de protocolo';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Utilice [${p}]';
	@override String get turnOffPrivateDirect => 'Active [Conexión directa de red privada] primero';
	@override String targetConnectFailed({required Object p}) => 'Error al conectar con [${p}]. Asegúrese de que los dispositivos estén en la misma LAN';
	@override String get appleTVSync => 'Sincronizar configuración principal actual con Apple TV - Karing';
	@override String get appleTVSyncDone => 'Sincronización completada. Vaya a Apple TV - Karing para iniciar/reiniciar la conexión';
	@override String get appleTVRemoveCoreConfig => 'Eliminar configuración principal de Apple TV - Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Configuración principal de Apple TV - Karing eliminada; servicio VPN desconectado';
	@override String get appleTVUrlInvalid => 'URL inválida, abra Apple TV - Karing y escanee el código QR mostrado por Karing';
	@override String appleTV404({required Object p}) => 'AppleTV: Karing[${p}] no tiene esta función, actualice e intente de nuevo';
	@override String appleCoreVersionNotMatch({required Object p}) => 'La versión principal del núcleo no coincide, actualice [${p}] e intente de nuevo';
	@override String get remoteProfileEditConfirm => 'Después de la actualización del perfil, se restaurarán los cambios de nodo. ¿Continuar?';
	@override String get mustBeValidHttpsURL => 'Debe ser una URL https válida';
	@override String fileNotExistReinstall({required Object p}) => 'Falta el archivo [${p}], vuelva a instalar';
	@override String get noNetworkConnect => 'Sin conexión a Internet';
	@override String get sudoPassword => 'Contraseña sudo (requerida para el modo TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Se recomienda cambiar al [Modo avión] antes de instalar la actualización';
	@override String get latencyTestResolveIP => 'Al comprobar manualmente, resolver la IP de salida';
	@override String get latencyTestConcurrency => 'Paralelismo';
	@override String get edgeRuntimeNotInstalled => 'El dispositivo actual no tiene instalado el tiempo de ejecución de Edge WebView2, por lo que la página no se puede mostrar. Descargue e instale el tiempo de ejecución de Edge WebView2 (x64), reinicie la aplicación e intente de nuevo.';
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
class _TranslationsAboutScreenEs implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Referente de instalación';
	@override String get installTime => 'Hora de instalación';
	@override String get versionChannel => 'Canal de actualización automática';
	@override String get updateWhenConnected => 'Buscar actualizaciones después de conectarse';
	@override String get autoDownloadPkg => 'Descargar paquetes de actualización automáticamente';
	@override String get disableAppImproveData => 'Datos de mejora de la aplicación';
	@override String get disableUAReportTip => 'Habilitar [${_root.AboutScreen.disableAppImproveData}] nos ayuda a mejorar la estabilidad y usabilidad del producto; no recopilamos ningún dato de privacidad personal. Deshabilitarlo evitará que la aplicación recopile cualquier dato.';
	@override String get devOptions => 'Opciones de desarrollador';
	@override String get enableDebugLog => 'Habilitar registro de depuración';
	@override String get viewFilsContent => 'Ver archivos';
	@override String get enablePprof => 'Habilitar pprof';
	@override String get pprofPanel => 'Panel pprof';
	@override String get allowRemoteAccessPprof => 'Permitir acceso remoto a ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Permitir acceso remoto a ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Usar perfil original de sing-box';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenEs implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'URL del servidor';
	@override String get webdavRequired => 'No puede estar vacío';
	@override String get webdavLoginFailed => 'Error de inicio de sesión:';
	@override String get webdavListFailed => 'Error al obtener la lista de archivos:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenEs implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => '[Dominio] inválido: ${p}';
	@override String invalidIpCidr({required Object p}) => '[IP Cidr] inválido: ${p}';
	@override String invalid({required Object p0, required Object p}) => '[${p0}] inválido: ${p}';
	@override String invalidRuleSet({required Object p}) => '[Conjunto de reglas] inválido: ${p}, la URL debe ser una URL https válida y un archivo binario con extensión .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => '[Conjunto de reglas (integrado)] inválido: ${p}, el formato es geosite:xxx o geoip:xxx o acl:xxx, y xxx debe ser un nombre de regla válido';
	@override String invalidPackageId({required Object p}) => '[${_root.meta.appPackage}] inválido: ${p}';
	@override String get setDiversionRule => 'Consejo: Después de guardar, vaya a [${_root.meta.diversionRules}] para establecer las reglas correspondientes; de lo contrario, no tendrán efecto.';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenEs implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detección de reglas de desvío';
	@override String get rule => 'Regla:';
	@override String get outbound => 'Servidor Proxy:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenEs implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Consejo: Intente hacer coincidir las reglas de arriba hacia abajo. Si ninguna coincide, use [final].';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenEs implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'El ISP no puede estar vacío';
	@override String get urlCanNotEmpty => 'La URL no puede estar vacía';
	@override String error({required Object p}) => 'Tipo no soportado: ${p}';
	@override String get dnsDesc => 'La primera columna de los datos de retraso es el retraso de la consulta de conexión directa;\nLa segunda columna: Active [[Tráfico Proxy] Resolver DNS a través del servidor proxy]: los datos de retraso son el retraso de la consulta reenviada a través del servidor proxy actual; si está desactivado: los datos de retraso son el retraso de la consulta de conexión directa.';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenEs implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visor de contenido de archivos';
	@override String get clearFileContent => '¿Está seguro de que desea borrar el contenido del archivo?';
	@override String get clearFileContentTips => '¿Está seguro de que desea borrar el contenido del archivo de perfil? Borrar el archivo de perfil puede causar pérdida de datos o funciones anormales de la aplicación, proceda con precaución.';
}

// Path: HomeScreen
class _TranslationsHomeScreenEs implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Por favor, seleccione un servidor';
	@override String get invalidServer => 'es inválido, por favor seleccione de nuevo';
	@override String get disabledServer => 'está desactivado, por favor seleccione de nuevo';
	@override String get expiredServer => 'No hay servidores disponibles, los perfiles pueden haber caducado o estar desactivados';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}';
	@override String get myLinkEmpty => 'Por favor, configure [Enlace directo] antes de usarlo';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Demasiados servidores proxy [${p}>${p1}], la conexión puede fallar debido a limitaciones de memoria del sistema';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Demasiados servidores proxy [${p}>${p1}] pueden causar conexiones lentas o inaccesibles';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenEs implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'La aplicación no pudo iniciarse [Nombre de proceso inválido], vuelva a instalar la aplicación en un directorio separado';
	@override String get invalidProfile => 'La aplicación no pudo iniciarse [Error al acceder al perfil], vuelva a instalar la aplicación';
	@override String get invalidVersion => 'La aplicación no pudo iniciarse [Versión inválida], vuelva a instalar la aplicación';
	@override String get systemVersionLow => 'La aplicación no pudo iniciarse [Versión del sistema demasiado baja]';
	@override String get invalidInstallPath => 'La ruta de instalación es inválida, vuelva a instalar en una ruta válida';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenEs implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Fusión de perfiles';
	@override String get profilesMergeTarget => 'Perfil de destino';
	@override String get profilesMergeSource => 'Perfiles de origen';
	@override String get profilesMergeTips => 'Consejo: Se descartará el desvío de los perfiles de origen';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenEs implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verificación de red';
	@override String get warn => 'Nota: Debido a la influencia del entorno de red y las reglas de desvío, los resultados de las pruebas no son totalmente equivalentes a los resultados reales.';
	@override String get invalidDomain => 'Nombre de dominio inválido';
	@override String get connectivity => 'Conectividad de red';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Todas las pruebas de conexión IPv4 [${p}] fallaron';
	@override String get connectivityTestIpv4Ok => 'Conexión IPv4 exitosa';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Todas las pruebas de conexión IPv6 [${p}] fallaron, su red podría no soportar IPv6';
	@override String get connectivityTestIpv6Ok => 'Conexión IPv6 exitosa';
	@override String get connectivityTestOk => 'La red está conectada a Internet';
	@override String get connectivityTestFailed => 'La red aún no está conectada a Internet';
	@override String get remoteRulesetsDownloadOk => 'Todos se descargaron con éxito';
	@override String get remoteRulesetsDownloadNotOk => 'Descargando o error al descargar';
	@override String get outbound => 'Servidor Proxy';
	@override String outboundOk({required Object p}) => 'Conexión a [${p}] exitosa';
	@override String outboundFailed({required Object p1, required Object p2}) => 'Error al conectar con [${p1}]\nError: [${p2}]';
	@override String get dnsServer => 'Servidor DNS';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Consulta DNS para [${p1}] exitosa\nRegla DNS: [${p2}]\nLatencia: [${p3} ms]\nDirección: [${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => 'Consulta DNS para [${p1}] exitosa\nRegla DNS: [${p2}]\nError: [${p3}]';
	@override String get host => 'Conexión HTTP';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nRegla de desvío: [${p2}]\nServidor Proxy: [${p3}]';
	@override String get hostConnectionOk => 'Conexión exitosa';
	@override String hostConnectionFailed({required Object p}) => 'Error de conexión: [${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenEs implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Dominio/IP';
	@override String get app => 'Aplicación';
	@override String get rule => 'Regla';
	@override String get chain => 'Salida';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenEs implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Copiado en formato CSV';
	@override String get selectType => 'Seleccionar tipo de desvío';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenEs implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proxy por aplicación';
	@override String get whiteListMode => 'Modo de lista blanca';
	@override String get whiteListModeTip => 'Si está activado: solo las aplicaciones marcadas pasan por el proxy; si no está activado: solo las aplicaciones no marcadas pasan por el proxy';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenEs implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'País o Región';
	@override String get Regions => 'Consejo: Establezca correctamente su país o región actual; de lo contrario, podría causar problemas de desvío de red.';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenEs implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seleccionar servidor';
	@override String get autoSelectServer => 'Seleccionar automáticamente el servidor con la latencia más baja';
	@override String get recentUse => 'Usados recientemente';
	@override String get myFav => 'Mis favoritos';
	@override String selectLocal({required Object p}) => 'El servidor seleccionado es una dirección local y podría no funcionar correctamente: ${p}';
	@override String get selectRequireEnableIPv6 => 'El servidor seleccionado es una dirección IPv6 y requiere [Habilitar IPv6]';
	@override String get selectDisabled => 'Este servidor ha sido deshabilitado';
	@override String get error404 => 'La detección de latencia encontró un error, verifique si hay una configuración con el mismo contenido';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenEs implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Obtener tráfico';
	@override String get tutorial => 'Tutorial';
	@override String get commonlyUsedRulesets => 'Conjuntos de reglas comunes';
	@override String get htmlBoard => 'Panel en línea';
	@override String get dnsLeakDetection => 'Detección de fugas de DNS';
	@override String get proxyLeakDetection => 'Detección de fugas de proxy';
	@override String get speedTest => 'Prueba de velocidad';
	@override String get rulesetDirectDownlad => 'Descarga directa de conjunto de reglas';
	@override String get hideUnusedDiversionGroup => 'Ocultar grupos de desvío no utilizados';
	@override String get disableISPDiversionGroup => 'Deshabilitar ${_root.meta.diversionRules} de [${_root.meta.isp}]';
	@override String get portSettingRule => 'Basado en reglas';
	@override String get portSettingDirectAll => 'Todo directo';
	@override String get portSettingProxyAll => 'Todo proxy';
	@override String get portSettingControl => 'Control y Sincronización';
	@override String get portSettingCluster => 'Servicio de clúster';
	@override String get modifyPort => 'Modificar puerto';
	@override String get modifyPortOccupied => 'El puerto está ocupado, use otro puerto';
	@override String get ipStrategyTips => 'Antes de habilitar, confirme que su red soporta IPv6; de lo contrario, parte del tráfico no podrá accederse normalmente.';
	@override String get tunAppendHttpProxy => 'Adjuntar Proxy HTTP a VPN';
	@override String get tunAppendHttpProxyTips => 'Algunas aplicaciones omitirán el dispositivo NIC virtual y se conectarán directamente al proxy HTTP';
	@override String get tunAllowBypassHttpProxyDomain => 'Dominios permitidos para omitir el proxy HTTP';
	@override String get dnsEnableRule => 'Habilitar reglas de desvío de DNS';
	@override String get dnsEnableProxyResolveMode => 'Canal de resolución [${_root.meta.trafficProxy}]';
	@override String get dnsEnableClientSubnet => 'Habilitar ECS [${_root.meta.trafficDirect}]';
	@override String get dnsTestDomain => 'Dominio de prueba';
	@override String get dnsTestDomainInvalid => 'Dominio inválido';
	@override String get dnsTypeOutbound => 'Servidor Proxy';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'Servidor DNS';
	@override String get dnsEnableRuleTips => 'Una vez activado, el nombre de dominio seleccionará el servidor DNS correspondiente para la resolución según las reglas de desvío';
	@override String get dnsEnableFakeIpTips => 'Después de habilitar FakeIP, si desconecta la conexión VPN, es posible que deba reiniciar su aplicación; esta función requiere habilitar el [Modo TUN]';
	@override String get dnsTypeOutboundTips => 'Resolución de nombres de dominio para [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Resolución de nombres de dominio para [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Resolución de nombres de dominio para [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Resolución de nombres de dominio para [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Configuración automática del servidor';
	@override String get dnsResetServer => 'Restablecer servidor';
	@override String get dnsEnableStaticIPForResolver => 'Preferir resolución de IP estática';
	@override String get dnsEnableStaticIPForResolverTips => 'Impedir efectivamente que el servidor DNS se contamine durante la resolución';
	@override String get inboundDomainResolve => 'Resolver nombres de dominio entrantes';
	@override String get privateDirect => 'Conexión directa de red privada';
	@override String inboundDomainResolveTips({required Object p}) => 'Algunos nombres de dominio que no están configurados con reglas de desvío deben resolverse antes de poder coincidir con las reglas de desvío basadas en IP; esta función afecta a las solicitudes entrantes al puerto proxy [${p}]';
	@override String get useRomoteRes => 'Usar recursos remotos';
	@override String get autoAppendRegion => 'Adjuntar automáticamente reglas básicas';
	@override String get autoSelect => 'Selección automática';
	@override String get autoSelectServerIgnorePerProxyServer => 'Ignorar servidores proxy [Front/Chain]';
	@override String get autoSelectServerInterval => 'Intervalo de comprobación de latencia';
	@override String get autoSelectSelectedHealthCheckInterval => 'Intervalle de comprobación de salud del servidor actual';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Comprobar latencia de nuevo al cambiar de red';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Actualizar el servidor actual después de la comprobación manual de latencia';
	@override String get autoSelectServerIntervalTips => 'Cuanto más corto sea el intervalo, más actualizados estarán los datos de latencia del servidor, lo que ocupará más recursos y consumirá más energía';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Si la comprobación falla, el servidor se cambia; si no se encuentra ningún servidor disponible al cambiar, el grupo volverá a comprobar la latencia';
	@override String get autoSelectServerFavFirst => 'Uso prioritario de [Mis favoritos]';
	@override String get autoSelectServerFavFirstTips => 'Si la lista [Mis favoritos] no está vacía, use los servidores en [Mis favoritos]';
	@override String get autoSelectServerFilter => 'Filtrar servidores inválidos';
	@override String autoSelectServerFilterTips({required Object p}) => 'Los servidores cuya comprobación de latencia falle serán filtrados; si no hay servidores disponibles después del filtrado, se usarán los primeros [${p}] servidores en su lugar';
	@override String get autoSelectServerLimitedNum => 'Número máximo de servidores';
	@override String get autoSelectServerLimitedNumTips => 'Los servidores que excedan este número serán filtrados';
	@override String get numInvalid => 'Número inválido';
	@override String get hideInvalidServer => 'Ocultar servidores inválidos';
	@override String get sortServer => 'Clasificación de servidores';
	@override String get sortServerTips => 'Ordenar por latencia de menor a mayor';
	@override String get selectServerHideRecommand => 'Ocultar [Recomendado]';
	@override String get selectServerHideRecent => 'Ocultar [Usados recientemente]';
	@override String get selectServerHideFav => 'Ocultar [Mis favoritos]';
	@override String get homeScreen => 'Pantalla de inicio';
	@override String get theme => 'Tema';
	@override String get widgetsAlpha => 'Transparencia de widgets';
	@override String get widgetsEmpty => 'No hay widgets disponibles';
	@override String get backgroundImage => 'Imagen de fondo';
	@override String get myLink => 'Enlace directo';
	@override String get autoConnectAfterLaunch => 'Conexión automática después del lanzamiento';
	@override String get autoConnectAtBoot => 'Conexión automática al iniciar el sistema';
	@override String get autoConnectAtBootTips => 'Se requiere soporte del sistema; algunos sistemas también pueden requerir habilitar [inicio automático].';
	@override String get hideAfterLaunch => 'Ocultar ventana después de iniciar';
	@override String get autoSetSystemProxy => 'Establecer automáticamente el proxy del sistema al conectar';
	@override String get bypassSystemProxy => 'Nombres de dominio permitidos para omitir el proxy del sistema';
	@override String get disconnectWhenQuit => 'Desconectar cuando la aplicación se cierre';
	@override String get autoAddToFirewall => 'Agregar automáticamente reglas de firewall';
	@override String get excludeFromRecent => 'Ocultar de [Tareas recientes]';
	@override String get wakeLock => 'Bloqueo de vigilia';
	@override String get hideVpn => 'Ocultar icono de VPN';
	@override String get hideVpnTips => 'Habilitar IPv6 hará que esta función falle';
	@override String get allowBypass => 'Permitir que las aplicaciones omitan la VPN';
	@override String get importSuccess => 'Importación exitosa';
	@override String get rewriteConfirm => 'Este archivo sobrescribirá la configuración local existente. ¿Desea continuar?';
	@override String get mergePerapp => 'Fusionar listas locales de [${_root.PerAppAndroidScreen.title}]';
	@override String get networkShare => 'Compartir red';
	@override String get frontProxy => 'Proxy Front/Chain';
	@override String frontProxyTips({required Object p}) => 'Datos -> Servidor Proxy Front/Chain [Múltiples servidores: de arriba a abajo] -> Servidor Proxy [${p}] -> Servidor de destino';
	@override String get allowOtherHostsConnect => 'Permitir que otros se conecten';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}';
	@override String get allowOtherHostsConnectWarn => 'Debido a limitaciones del sistema, una vez activado, las aplicaciones de este dispositivo que usan http para acceder a la red podrían no conectarse correctamente.';
	@override String get tunAutoRoute => 'Ruta automática';
	@override String get tunAutoRedirect => 'Redirección automática';
	@override String get tunStrictRoute => 'Ruta estricta';
	@override String get tunStrictRouteTips => 'Si después de activar el intercambio otros no pueden acceder a este dispositivo, intente desactivar este interruptor';
	@override String get loopbackAddress => 'Dirección de bucle invertido';
	@override String get enableCluster => 'Habilitar clúster de proxy Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Permitir que otros se conecten al clúster';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Autenticación de clúster de proxy';
	@override String get tunMode => 'Modo TUN';
	@override String get tuni4Address => 'Dirección IP';
	@override String get tunModeTips => 'El modo TUN se encargará de todo el tráfico del sistema [En este modo, puede dejar el proxy del sistema sin activar]';
	@override String get tunModeRunAsAdmin => 'El modo TUN requiere permisos de administrador del sistema, reinicie la aplicación como administrador';
	@override String get tunStack => 'Pila';
	@override String get tunHijackTips => 'Después de cerrar, las solicitudes DNS de TUN se reenviarán directamente al servidor DNS correspondiente';
	@override String get launchAtStartup => 'Ejecutar al inicio';
	@override String get quitWhenSwitchSystemUser => 'Cerrar aplicación al cambiar de usuario del sistema';
	@override String get handleScheme => 'Llamada de esquema del sistema';
	@override String get portableMode => 'Modo portátil';
	@override String get portableModeDisableTips => 'Si necesita salir del modo portátil, salga de [karing] y elimine manualmente la carpeta [profiles] en el mismo directorio que [karing.exe]';
	@override String get accessibility => 'Accesibilidad';
	@override String get handleKaringScheme => 'Manejar llamada karing://';
	@override String get handleClashScheme => 'Manejar llamada clash://';
	@override String get handleSingboxScheme => 'Manejar llamada sing-box://';
	@override String get alwayOnVPN => 'Conexión permanente';
	@override String get disconnectAfterSleep => 'Desconectar después de la suspensión del sistema';
	@override String get removeSystemVPNConfig => 'Eliminar configuración de VPN del sistema';
	@override String get timeConnectOrDisconnect => 'Conexión/desconexión programada';
	@override String get timeConnectOrDisconnectTips => 'La VPN debe estar conectada para que surta efecto; una vez activada, se deshabilitará la [Suspensión automática]';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'El intervalo de conexión/desconexión no puede ser inferior a ${p} minutos';
	@override String get disableFontScaler => 'Deshabilitar escalado de fuentes (requiere reinicio)';
	@override String get autoOrientation => 'Rotar con la pantalla';
	@override String get restartTakesEffect => 'El reinicio surte efecto';
	@override String get reconnectTakesEffect => 'La reconexión surte efecto';
	@override String get resetSettings => 'Restablecer ajustes';
	@override String get cleanCache => 'Limpiar caché';
	@override String get cleanCacheDone => 'Limpieza completada';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Actualizar a versión ${p}';
	@override String get follow => 'Síganos';
	@override String get contactUs => 'Contáctenos';
	@override String get supportUs => 'Apóyenos';
	@override String get rateInAppStore => 'Califíquenos en AppStore';
	@override String get rateInApp => 'Califíquenos';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenEs implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Su privacidad es lo primero';
	@override String get agreeAndContinue => 'Aceptar y continuar';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenEs implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'La nueva versión [${p}] está lista';
	@override String get update => 'Reiniciar para actualizar';
	@override String get cancel => 'Ahora no';
}

// Path: CommonWidget
class _TranslationsCommonWidgetEs implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Si [VPN siempre activa] está activada, desactívela e intente conectar de nuevo';
	@override String get resetPort => 'Cambie el puerto a otro disponible o cierre la aplicación que ocupa el puerto.';
}

// Path: main
class _TranslationsMainEs implements TranslationsMainEn {
	_TranslationsMainEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayEs tray = _TranslationsMainTrayEs._(_root);
}

// Path: meta
class _TranslationsMetaEs implements TranslationsMetaEn {
	_TranslationsMetaEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Habilitar';
	@override String get disable => 'Deshabilitar';
	@override String get bydefault => 'Por defecto';
	@override String get filter => 'Filtrar';
	@override String get filterMethod => 'Método de filtrado';
	@override String get include => 'Incluir';
	@override String get exclude => 'Excluir';
	@override String get all => 'Todo';
	@override String get prefer => 'Preferir';
	@override String get only => 'Solo';
	@override String get open => 'Abrir';
	@override String get close => 'Cerrar';
	@override String get quit => 'Cerrar';
	@override String get add => 'Agregar';
	@override String get addSuccess => 'Agregado con éxito';
	@override String addFailed({required Object p}) => 'Error al agregar: ${p}';
	@override String get remove => 'Eliminar';
	@override String get removeConfirm => '¿Está seguro de que desea eliminar?';
	@override String get edit => 'Editar';
	@override String get view => 'Ver';
	@override String get more => 'Más';
	@override String get tips => 'Información';
	@override String get copy => 'Copiar';
	@override String get paste => 'Pasta';
	@override String get cut => 'Cortar';
	@override String get save => 'Guardar';
	@override String get ok => 'OK';
	@override String get cancel => 'Cancelar';
	@override String get feedback => 'Comentarios';
	@override String get feedbackContent => 'Contenido del comentario';
	@override String get feedbackContentHit => 'Requerido, hasta 500 caracteres';
	@override String get feedbackContentCannotEmpty => 'El contenido del comentario no puede estar vacío';
	@override String get faq => 'Preguntas frecuentes';
	@override String get htmlTools => 'Caja de herramientas HTML';
	@override String get download => 'Descargar';
	@override String get upload => 'Subir';
	@override String get downloadSpeed => 'Velocidad de descarga';
	@override String get uploadSpeed => 'Velocidad de subida';
	@override String get loading => 'Cargando...';
	@override String get convert => 'Convertir';
	@override String get check => 'Comprobar';
	@override String get detect => 'Detectar';
	@override String get cache => 'Caché';
	@override String get days => 'Días';
	@override String get hours => 'Horas';
	@override String get minutes => 'Minutos';
	@override String get seconds => 'Segundos';
	@override String get milliseconds => 'Milisegundos';
	@override String get tolerance => 'Tolerancia';
	@override String get dateTimePeriod => 'Período';
	@override String get protocol => 'Protocolo';
	@override String get search => 'Buscar';
	@override String get custom => 'Personalizado';
	@override String get inbound => 'Entrante';
	@override String get outbound => 'Saliente';
	@override String get destination => 'Destino';
	@override String get outletIpByCurrentSelected => 'IP de salida';
	@override String get outletIpByDirect => 'IP: ${_root.outboundRuleMode.direct}';
	@override String get connect => 'Conectar';
	@override String get disconnect => 'Desconectar';
	@override String get reconnect => 'Reconectar';
	@override String get connected => 'Conectado';
	@override String get disconnected => 'Desconectado';
	@override String get connecting => 'Conectando';
	@override String get connectTimeout => 'Tiempo de conexión agotado';
	@override String get timeout => 'Tiempo agotado';
	@override String get timeoutDuration => 'Duración del tiempo agotado';
	@override String get runDuration => 'Duración de ejecución';
	@override String get latency => 'Latencia';
	@override String get latencyTest => 'Pruebas de latencia';
	@override String get language => 'Idioma';
	@override String get next => 'Siguiente';
	@override String get done => 'Hecho';
	@override String get apply => 'Aplicar';
	@override String get refresh => 'Actualizar';
	@override String get retry => '¿Reintentar?';
	@override String get update => 'Actualizar';
	@override String get updateInterval => 'Intervalo de actualización';
	@override String get updateInterval5mTips => 'Mínimo: 5m';
	@override String updateFailed({required Object p}) => 'Error al actualizar: ${p}';
	@override String get samplingUnit => 'Unidad de tiempo de muestreo';
	@override String get queryResultCount => 'Recuento de resultados de consulta';
	@override String queryLimit({required Object p}) => 'Mostrar hasta ${p} datos';
	@override String get none => 'Ninguno';
	@override String get start => 'Iniciar';
	@override String get pause => 'Pausa';
	@override String get reset => 'Restablecer';
	@override String get submit => 'Enviar';
	@override String get user => 'Usuario';
	@override String get account => 'Cuenta';
	@override String get password => 'Contraseña';
	@override String get decryptPassword => 'Contraseña de descifrado';
	@override String get required => 'Requerido';
	@override String get type => 'Tipo';
	@override String get path => 'Ruta';
	@override String get local => 'Local';
	@override String get remote => 'Remoto';
	@override String get other => 'Otro';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL inválida';
	@override String get urlCannotEmpty => 'El enlace no puede estar vacío';
	@override String get urlTooLong => 'La URL es demasiado larga (>8182)';
	@override String get copyUrl => 'Copiar enlace';
	@override String get openUrl => 'Abrir enlace';
	@override String get shareUrl => 'Compartir enlace';
	@override String get speedTestUrl => 'URL de prueba de velocidad';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'IP estática';
	@override String get staticIPTips => 'Debe habilitar [TUN HijackDNS] o [${_root.SettingsScreen.inboundDomainResolve}].';
	@override String get isp => 'Proveedor VPN';
	@override String get domainSuffix => 'Sufijo de dominio';
	@override String get domain => 'Dominio';
	@override String get domainKeyword => 'Palabra clave de dominio';
	@override String get domainRegex => 'Regex de dominio';
	@override String get ip => 'IP';
	@override String get port => 'Puerto';
	@override String get portRange => 'Rango de puertos';
	@override String get appPackage => 'ID de paquete de aplicación';
	@override String get processName => 'Nombre del proceso';
	@override String get processPath => 'Ruta del proceso';
	@override String get processDir => 'Directorio del proceso';
	@override String get systemProxy => 'Proxy del sistema';
	@override String get percentage => 'Porcentaje';
	@override String get statistics => 'Estadísticas';
	@override String get statisticsAndAnalysis => 'Estadísticas y análisis';
	@override String get statisticsDataDesensitize => 'Desensibilización de datos';
	@override String get statisticsDataDesensitizeTips => 'El ID de proceso/paquete/nombre de dominio de destino/IP de destino, etc., se reemplazarán por * y se guardarán después de la desensibilización';
	@override String get records => 'Registros';
	@override String get requestRecords => 'Registros de solicitudes';
	@override String get netInterfaces => 'Interfaces de red';
	@override String get netSpeed => 'Velocidad';
	@override String get memoryTrendChart => 'Gráfico de tendencia de memoria';
	@override String get goroutinesTrendChart => 'Gráfico de tendencia de GoRoutines';
	@override String get trafficTrendChart => 'Gráfico de tendencia de tráfico';
	@override String get trafficDistributionChart => 'Gráfico de distribución de tráfico';
	@override String get connectionChart => 'Gráfico de tendencia de conexiones';
	@override String get memoryChart => 'Gráfico de tendencia de memoria';
	@override String get trafficStatistics => 'Estadísticas de tráfico';
	@override String get traffic => 'Tráfico';
	@override String get trafficTotal => 'Tráfico total';
	@override String get trafficProxy => 'Tráfico proxy';
	@override String get trafficDirect => 'Tráfico directo';
	@override String get website => 'Sitio web';
	@override String get memory => 'Memoria';
	@override String get outboundMode => 'Modo de salida';
	@override String get rule => 'Regla';
	@override String get global => 'Global';
	@override String get qrcode => 'Código QR';
	@override String get qrcodeTooLong => 'El texto es demasiado largo para mostrarse';
	@override String get qrcodeShare => 'Compartir código QR';
	@override String get textToQrcode => 'Texto a código QR';
	@override String get qrcodeScan => 'Escanear código QR';
	@override String get qrcodeScanResult => 'Resultado del escaneo';
	@override String get qrcodeScanFromImage => 'Escanear desde imagen';
	@override String get qrcodeScanResultFailed => 'Error al analizar la imagen, asegúrese de que la captura de pantalla sea un código QR válido';
	@override String get qrcodeScanResultEmpty => 'El resultado del escaneo está vacío';
	@override String get screenshot => 'Captura de pantalla';
	@override String get backupAndSync => 'Copia de seguridad y sincronización';
	@override String get autoBackup => 'Copia de seguridad automática';
	@override String get noProfileGotAutoBackup => 'Si se pierden datos como [${_root.meta.myProfiles}], puede restaurarlos desde [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] u otras fuentes de copia de seguridad (como iCloud o Webdav, etc.)';
	@override String get autoBackupAddProfile => 'Después de agregar el perfil';
	@override String get autoBackupRemoveProfile => 'Después de eliminar el perfil';
	@override String get profile => 'Perfil';
	@override String get currentProfile => 'Perfil actual';
	@override String get importAndExport => 'Importar y Exportar';
	@override String get import => 'Importar';
	@override String get importFromUrl => 'Importar desde URL';
	@override String get export => 'Exportar';
	@override String get send => 'Enviar';
	@override String get receive => 'Recibir';
	@override String get sendConfirm => '¿Confirmar envío?';
	@override String get termOfUse => 'Condiciones de uso';
	@override String get privacyPolicy => 'Política de privacidad';
	@override String get about => 'Acerca de';
	@override String get name => 'Nombre';
	@override String get version => 'Versión';
	@override String get notice => 'Aviso';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Acción: ${p}\nRazón: ${p1}';
	@override String get sort => 'Reordenar';
	@override String get novice => 'Modo principiante';
	@override String get willCompleteAfterRebootInstall => 'Reinicie su dispositivo para completar la instalación de la extensión del sistema';
	@override String get willCompleteAfterRebootUninstall => 'Reinicie su dispositivo para completar la desinstalación de la extensión del sistema';
	@override String get requestNeedsUserApproval => '1. [Permita] que Karing instale extensiones del sistema en [Ajustes del sistema]-[Privacidad y seguridad]\n2. [Ajustes del sistema]-[General]-[Elementos de inicio y extensiones-Extensión de red] active [karingServiceSE]\nreconnecte después de completar';
	@override String get FullDiskAccessPermissionRequired => 'Habilite el permiso [karingServiceSE] en [Ajustes del sistema]-[Privacidad y seguridad]-[Acceso total al disco] y vuelva a conectarse';
	@override String get tvMode => 'Modo TV';
	@override String get recommended => 'Recomendado';
	@override String innerError({required Object p}) => 'Error interno: ${p}';
	@override String get logicOperation => 'Operación lógica';
	@override String get share => 'Compartir';
	@override String get candidateWord => 'Palabras candidatas';
	@override String get keywordOrRegx => 'Palabras clave/Regex';
	@override String get importFromClipboard => 'Importar desde portapapeles';
	@override String get exportToClipboard => 'Exportar a portapapeles';
	@override String get server => 'Servidor';
	@override String get ads => 'Anuncios';
	@override String get adsRemove => 'Eliminar anuncios';
	@override String get donate => 'Donaciones';
	@override String get diversion => 'Enrutamiento';
	@override String get diversionRules => 'Reglas de enrutamiento';
	@override String get diversionCustomGroup => 'Grupo de desvío personalizado';
	@override String get urlTestCustomGroup => 'Selección automática personalizada';
	@override String get setting => 'Ajustes';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Sincronización LAN';
	@override String get lanSyncNotQuitTips => 'No salga de esta interfaz antes de que se complete la sincronización';
	@override String get deviceNoSpace => 'Espacio en disco insuficiente';
	@override String get hideSystemApp => 'Ocultar aplicaciones del sistema';
	@override String get hideAppIcon => 'Ocultar iconos de aplicaciones';
	@override String get hideDockIcon => 'Ocultar icono del Dock';
	@override String get remark => 'Observación';
	@override String get remarkExist => 'La observación ya existe, use otro nombre';
	@override String get remarkCannotEmpty => 'La observación no puede estar vacía';
	@override String get remarkTooLong => 'Observaciones de hasta 32 caracteres';
	@override String get openDir => 'Abrir directorio de archivos';
	@override String get fileChoose => 'Seleccionar archivo';
	@override String get filePathCannotEmpty => 'La ruta del archivo no puede estar vacía';
	@override String fileNotExist({required Object p}) => 'El archivo no existe: ${p}';
	@override String fileTypeInvalid({required Object p}) => 'Tipo de archivo inválido: ${p}';
	@override String get uwpExemption => 'Exenciones de aislamiento de red UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Obtener perfil';
	@override String get addProfile => 'Agregar perfil';
	@override String get myProfiles => 'Mis perfiles';
	@override String get profileEdit => 'Editar perfil';
	@override String get profileEditUrlExist => 'La URL ya existe, use otra URL';
	@override String get profileEditReloadAfterProfileUpdate => 'Recargar después de la actualización del perfil';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Iniciar pruebas de latencia después de la actualización automática del perfil';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'La VPN debe estar conectada y [Recargar después de la actualización del perfil] activado';
	@override String get profileEditTestLatencyAutoRemove => 'Eliminar automáticamente servidores que fallen en las pruebas de latencia';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Intentar hasta 3 veces';
	@override String get profileImport => 'Importar archivo de perfil';
	@override String get profileAddUrlOrContent => 'Agregar enlace de perfil';
	@override String get profileExists => 'El perfil ya existe, no lo agregue repetidamente';
	@override String get profileUrlOrContent => 'Enlace/Contenido del perfil';
	@override String get profileUrlOrContentHit => 'Enlace/Contenido del perfil [Requerido] (Soporta Clash, V2ray (soporte por lotes), Stash, Karing, Sing-box, Shadowsocks, enlaces de subperfil)';
	@override String get profileUrlOrContentCannotEmpty => 'El enlace del perfil no puede estar vacío';
	@override String profileAddFailedFormatException({required Object p}) => 'El formato es incorrecto, corríjalo y agréguelo de nuevo: ${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Error al agregar: ${p}, intente modificar el [UserAgent] e intente de nuevo, o use el navegador integrado del dispositivo para abrir el enlace de configuración e importar el archivo de configuración descargado por el navegador en esta aplicación';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Error al agregar: ${p}, active el proxy o modifique el nodo proxy actual e intente de nuevo';
	@override String get profileAddParseFailed => 'Error al analizar el perfil';
	@override String get profileAddNoServerAvaliable => 'No hay servidores disponibles, asegúrese de que el enlace o archivo de perfil sea válido; si su perfil proviene de GitHub, obtenga el enlace del botón [Raw] en la página';
	@override String get profileAddWrapSuccess => 'Perfil generado con éxito, vaya a [${_root.meta.myProfiles}] para ver';
}

// Path: isp
class _TranslationsIspEs implements TranslationsIspEn {
	_TranslationsIspEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Vincular a [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'Desvincular [${p}]';
	@override String faq({required Object p}) => 'Preguntas frecuentes [${p}]';
	@override String customerService({required Object p}) => 'Telegram [${p}]';
	@override String follow({required Object p}) => 'Seguir [${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] inválido o caducado';
}

// Path: permission
class _TranslationsPermissionEs implements TranslationsPermissionEn {
	_TranslationsPermissionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Cámara';
	@override String get screen => 'Grabación de pantalla';
	@override String get appQuery => 'Obtener lista de aplicaciones';
	@override String request({required Object p}) => 'Activar permiso [${p}]';
	@override String requestNeed({required Object p}) => 'Active el permiso [${p}]';
}

// Path: tls
class _TranslationsTlsEs implements TranslationsTlsEn {
	_TranslationsTlsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Omitir verificación de certificado';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Habilitar fragmento TLS';
	@override String get fragmentSize => 'Tamaño de fragmento TLS';
	@override String get fragmentSleep => 'Espera de fragmento TLS';
	@override String get mixedCaseSNIEnable => 'Habilitar SNI mixto TLS';
	@override String get paddingEnable => 'Habilitar padding TLS';
	@override String get paddingSize => 'Tamaño de padding TLS';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeEs implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Seleccionado actualmente';
	@override String get urltest => 'Selección automática';
	@override String get direct => 'Directo';
	@override String get block => 'Bloquear';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeEs implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyEs implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonEs implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Actualización del perfil';
}

// Path: theme
class _TranslationsThemeEs implements TranslationsThemeEn {
	_TranslationsThemeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get light => 'Claro';
	@override String get dark => 'Oscuro';
	@override String get auto => 'Auto';
}

// Path: main.tray
class _TranslationsMainTrayEs implements TranslationsMainTrayEn {
	_TranslationsMainTrayEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Abrir';
	@override String get menuExit => 'Salir';
}

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Referente de instalación',
			'AboutScreen.installTime' => 'Hora de instalación',
			'AboutScreen.versionChannel' => 'Canal de actualización automática',
			'AboutScreen.updateWhenConnected' => 'Buscar actualizaciones después de conectarse',
			'AboutScreen.autoDownloadPkg' => 'Descargar paquetes de actualización automáticamente',
			'AboutScreen.disableAppImproveData' => 'Datos de mejora de la aplicación',
			'AboutScreen.disableUAReportTip' => 'Habilitar [${_root.AboutScreen.disableAppImproveData}] nos ayuda a mejorar la estabilidad y usabilidad del producto; no recopilamos ningún dato de privacidad personal. Deshabilitarlo evitará que la aplicación recopile cualquier dato.',
			'AboutScreen.devOptions' => 'Opciones de desarrollador',
			'AboutScreen.enableDebugLog' => 'Habilitar registro de depuración',
			'AboutScreen.viewFilsContent' => 'Ver archivos',
			'AboutScreen.enablePprof' => 'Habilitar pprof',
			'AboutScreen.pprofPanel' => 'Panel pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'Permitir acceso remoto a ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Permitir acceso remoto a ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Usar perfil original de sing-box',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'URL del servidor',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'No puede estar vacío',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Error de inicio de sesión:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Error al obtener la lista de archivos:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => '[Dominio] inválido: ${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => '[IP Cidr] inválido: ${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => '[${p0}] inválido: ${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => '[Conjunto de reglas] inválido: ${p}, la URL debe ser una URL https válida y un archivo binario con extensión .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => '[Conjunto de reglas (integrado)] inválido: ${p}, el formato es geosite:xxx o geoip:xxx o acl:xxx, y xxx debe ser un nombre de regla válido',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => '[${_root.meta.appPackage}] inválido: ${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Consejo: Después de guardar, vaya a [${_root.meta.diversionRules}] para establecer las reglas correspondientes; de lo contrario, no tendrán efecto.',
			'DiversionRuleDetectScreen.title' => 'Detección de reglas de desvío',
			'DiversionRuleDetectScreen.rule' => 'Regla:',
			'DiversionRuleDetectScreen.outbound' => 'Servidor Proxy:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Consejo: Intente hacer coincidir las reglas de arriba hacia abajo. Si ninguna coincide, use [final].',
			'DnsSettingsScreen.ispCanNotEmpty' => 'El ISP no puede estar vacío',
			'DnsSettingsScreen.urlCanNotEmpty' => 'La URL no puede estar vacía',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Tipo no soportado: ${p}',
			'DnsSettingsScreen.dnsDesc' => 'La primera columna de los datos de retraso es el retraso de la consulta de conexión directa;\nLa segunda columna: Active [[Tráfico Proxy] Resolver DNS a través del servidor proxy]: los datos de retraso son el retraso de la consulta reenviada a través del servidor proxy actual; si está desactivado: los datos de retraso son el retraso de la consulta de conexión directa.',
			'FileContentViewerScreen.title' => 'Visor de contenido de archivos',
			'FileContentViewerScreen.clearFileContent' => '¿Está seguro de que desea borrar el contenido del archivo?',
			'FileContentViewerScreen.clearFileContentTips' => '¿Está seguro de que desea borrar el contenido del archivo de perfil? Borrar el archivo de perfil puede causar pérdida de datos o funciones anormales de la aplicación, proceda con precaución.',
			'HomeScreen.toSelectServer' => 'Por favor, seleccione un servidor',
			'HomeScreen.invalidServer' => 'es inválido, por favor seleccione de nuevo',
			'HomeScreen.disabledServer' => 'está desactivado, por favor seleccione de nuevo',
			'HomeScreen.expiredServer' => 'No hay servidores disponibles, los perfiles pueden haber caducado o estar desactivados',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}',
			'HomeScreen.myLinkEmpty' => 'Por favor, configure [Enlace directo] antes de usarlo',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Demasiados servidores proxy [${p}>${p1}], la conexión puede fallar debido a limitaciones de memoria del sistema',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Demasiados servidores proxy [${p}>${p1}] pueden causar conexiones lentas o inaccesibles',
			'LaunchFailedScreen.invalidProcess' => 'La aplicación no pudo iniciarse [Nombre de proceso inválido], vuelva a instalar la aplicación en un directorio separado',
			'LaunchFailedScreen.invalidProfile' => 'La aplicación no pudo iniciarse [Error al acceder al perfil], vuelva a instalar la aplicación',
			'LaunchFailedScreen.invalidVersion' => 'La aplicación no pudo iniciarse [Versión inválida], vuelva a instalar la aplicación',
			'LaunchFailedScreen.systemVersionLow' => 'La aplicación no pudo iniciarse [Versión del sistema demasiado baja]',
			'LaunchFailedScreen.invalidInstallPath' => 'La ruta de instalación es inválida, vuelva a instalar en una ruta válida',
			'MyProfilesMergeScreen.profilesMerge' => 'Fusión de perfiles',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Perfil de destino',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Perfiles de origen',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Consejo: Se descartará el desvío de los perfiles de origen',
			'NetCheckScreen.title' => 'Verificación de red',
			'NetCheckScreen.warn' => 'Nota: Debido a la influencia del entorno de red y las reglas de desvío, los resultados de las pruebas no son totalmente equivalentes a los resultados reales.',
			'NetCheckScreen.invalidDomain' => 'Nombre de dominio inválido',
			'NetCheckScreen.connectivity' => 'Conectividad de red',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Todas las pruebas de conexión IPv4 [${p}] fallaron',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Conexión IPv4 exitosa',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Todas las pruebas de conexión IPv6 [${p}] fallaron, su red podría no soportar IPv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Conexión IPv6 exitosa',
			'NetCheckScreen.connectivityTestOk' => 'La red está conectada a Internet',
			'NetCheckScreen.connectivityTestFailed' => 'La red aún no está conectada a Internet',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Todos se descargaron con éxito',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Descargando o error al descargar',
			'NetCheckScreen.outbound' => 'Servidor Proxy',
			'NetCheckScreen.outboundOk' => ({required Object p}) => 'Conexión a [${p}] exitosa',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => 'Error al conectar con [${p1}]\nError: [${p2}]',
			'NetCheckScreen.dnsServer' => 'Servidor DNS',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Consulta DNS para [${p1}] exitosa\nRegla DNS: [${p2}]\nLatencia: [${p3} ms]\nDirección: [${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => 'Consulta DNS para [${p1}] exitosa\nRegla DNS: [${p2}]\nError: [${p3}]',
			'NetCheckScreen.host' => 'Conexión HTTP',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nRegla de desvío: [${p2}]\nServidor Proxy: [${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'Conexión exitosa',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'Error de conexión: [${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Dominio/IP',
			'NetConnectionsFilterScreen.app' => 'Aplicación',
			'NetConnectionsFilterScreen.rule' => 'Regla',
			'NetConnectionsFilterScreen.chain' => 'Salida',
			'NetConnectionsScreen.copyAsCSV' => 'Copiado en formato CSV',
			'NetConnectionsScreen.selectType' => 'Seleccionar tipo de desvío',
			'PerAppAndroidScreen.title' => 'Proxy por aplicación',
			'PerAppAndroidScreen.whiteListMode' => 'Modo de lista blanca',
			'PerAppAndroidScreen.whiteListModeTip' => 'Si está activado: solo las aplicaciones marcadas pasan por el proxy; si no está activado: solo las aplicaciones no marcadas pasan por el proxy',
			'RegionSettingsScreen.title' => 'País o Región',
			'RegionSettingsScreen.Regions' => 'Consejo: Establezca correctamente su país o región actual; de lo contrario, podría causar problemas de desvío de red.',
			'ServerSelectScreen.title' => 'Seleccionar servidor',
			'ServerSelectScreen.autoSelectServer' => 'Seleccionar automáticamente el servidor con la latencia más baja',
			'ServerSelectScreen.recentUse' => 'Usados recientemente',
			'ServerSelectScreen.myFav' => 'Mis favoritos',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'El servidor seleccionado es una dirección local y podría no funcionar correctamente: ${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'El servidor seleccionado es una dirección IPv6 y requiere [Habilitar IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Este servidor ha sido deshabilitado',
			'ServerSelectScreen.error404' => 'La detección de latencia encontró un error, verifique si hay una configuración con el mismo contenido',
			'SettingsScreen.getTranffic' => 'Obtener tráfico',
			'SettingsScreen.tutorial' => 'Tutorial',
			'SettingsScreen.commonlyUsedRulesets' => 'Conjuntos de reglas comunes',
			'SettingsScreen.htmlBoard' => 'Panel en línea',
			'SettingsScreen.dnsLeakDetection' => 'Detección de fugas de DNS',
			'SettingsScreen.proxyLeakDetection' => 'Detección de fugas de proxy',
			'SettingsScreen.speedTest' => 'Prueba de velocidad',
			'SettingsScreen.rulesetDirectDownlad' => 'Descarga directa de conjunto de reglas',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Ocultar grupos de desvío no utilizados',
			'SettingsScreen.disableISPDiversionGroup' => 'Deshabilitar ${_root.meta.diversionRules} de [${_root.meta.isp}]',
			'SettingsScreen.portSettingRule' => 'Basado en reglas',
			'SettingsScreen.portSettingDirectAll' => 'Todo directo',
			'SettingsScreen.portSettingProxyAll' => 'Todo proxy',
			'SettingsScreen.portSettingControl' => 'Control y Sincronización',
			'SettingsScreen.portSettingCluster' => 'Servicio de clúster',
			'SettingsScreen.modifyPort' => 'Modificar puerto',
			'SettingsScreen.modifyPortOccupied' => 'El puerto está ocupado, use otro puerto',
			'SettingsScreen.ipStrategyTips' => 'Antes de habilitar, confirme que su red soporta IPv6; de lo contrario, parte del tráfico no podrá accederse normalmente.',
			'SettingsScreen.tunAppendHttpProxy' => 'Adjuntar Proxy HTTP a VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Algunas aplicaciones omitirán el dispositivo NIC virtual y se conectarán directamente al proxy HTTP',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Dominios permitidos para omitir el proxy HTTP',
			'SettingsScreen.dnsEnableRule' => 'Habilitar reglas de desvío de DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => 'Canal de resolución [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsEnableClientSubnet' => 'Habilitar ECS [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTestDomain' => 'Dominio de prueba',
			'SettingsScreen.dnsTestDomainInvalid' => 'Dominio inválido',
			'SettingsScreen.dnsTypeOutbound' => 'Servidor Proxy',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'Servidor DNS',
			'SettingsScreen.dnsEnableRuleTips' => 'Una vez activado, el nombre de dominio seleccionará el servidor DNS correspondiente para la resolución según las reglas de desvío',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Después de habilitar FakeIP, si desconecta la conexión VPN, es posible que deba reiniciar su aplicación; esta función requiere habilitar el [Modo TUN]',
			'SettingsScreen.dnsTypeOutboundTips' => 'Resolución de nombres de dominio para [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Resolución de nombres de dominio para [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Resolución de nombres de dominio para [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Resolución de nombres de dominio para [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Configuración automática del servidor',
			'SettingsScreen.dnsResetServer' => 'Restablecer servidor',
			'SettingsScreen.dnsEnableStaticIPForResolver' => 'Preferir resolución de IP estática',
			'SettingsScreen.dnsEnableStaticIPForResolverTips' => 'Impedir efectivamente que el servidor DNS se contamine durante la resolución',
			'SettingsScreen.inboundDomainResolve' => 'Resolver nombres de dominio entrantes',
			'SettingsScreen.privateDirect' => 'Conexión directa de red privada',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Algunos nombres de dominio que no están configurados con reglas de desvío deben resolverse antes de poder coincidir con las reglas de desvío basadas en IP; esta función afecta a las solicitudes entrantes al puerto proxy [${p}]',
			'SettingsScreen.useRomoteRes' => 'Usar recursos remotos',
			'SettingsScreen.autoAppendRegion' => 'Adjuntar automáticamente reglas básicas',
			'SettingsScreen.autoSelect' => 'Selección automática',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Ignorar servidores proxy [Front/Chain]',
			'SettingsScreen.autoSelectServerInterval' => 'Intervalo de comprobación de latencia',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Intervalle de comprobación de salud del servidor actual',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Comprobar latencia de nuevo al cambiar de red',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Actualizar el servidor actual después de la comprobación manual de latencia',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Cuanto más corto sea el intervalo, más actualizados estarán los datos de latencia del servidor, lo que ocupará más recursos y consumirá más energía',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Si la comprobación falla, el servidor se cambia; si no se encuentra ningún servidor disponible al cambiar, el grupo volverá a comprobar la latencia',
			'SettingsScreen.autoSelectServerFavFirst' => 'Uso prioritario de [Mis favoritos]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Si la lista [Mis favoritos] no está vacía, use los servidores en [Mis favoritos]',
			'SettingsScreen.autoSelectServerFilter' => 'Filtrar servidores inválidos',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Los servidores cuya comprobación de latencia falle serán filtrados; si no hay servidores disponibles después del filtrado, se usarán los primeros [${p}] servidores en su lugar',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Número máximo de servidores',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Los servidores que excedan este número serán filtrados',
			'SettingsScreen.numInvalid' => 'Número inválido',
			'SettingsScreen.hideInvalidServer' => 'Ocultar servidores inválidos',
			'SettingsScreen.sortServer' => 'Clasificación de servidores',
			'SettingsScreen.sortServerTips' => 'Ordenar por latencia de menor a mayor',
			'SettingsScreen.selectServerHideRecommand' => 'Ocultar [Recomendado]',
			'SettingsScreen.selectServerHideRecent' => 'Ocultar [Usados recientemente]',
			'SettingsScreen.selectServerHideFav' => 'Ocultar [Mis favoritos]',
			'SettingsScreen.homeScreen' => 'Pantalla de inicio',
			'SettingsScreen.theme' => 'Tema',
			'SettingsScreen.widgetsAlpha' => 'Transparencia de widgets',
			'SettingsScreen.widgetsEmpty' => 'No hay widgets disponibles',
			'SettingsScreen.backgroundImage' => 'Imagen de fondo',
			'SettingsScreen.myLink' => 'Enlace directo',
			'SettingsScreen.autoConnectAfterLaunch' => 'Conexión automática después del lanzamiento',
			'SettingsScreen.autoConnectAtBoot' => 'Conexión automática al iniciar el sistema',
			'SettingsScreen.autoConnectAtBootTips' => 'Se requiere soporte del sistema; algunos sistemas también pueden requerir habilitar [inicio automático].',
			'SettingsScreen.hideAfterLaunch' => 'Ocultar ventana después de iniciar',
			'SettingsScreen.autoSetSystemProxy' => 'Establecer automáticamente el proxy del sistema al conectar',
			'SettingsScreen.bypassSystemProxy' => 'Nombres de dominio permitidos para omitir el proxy del sistema',
			'SettingsScreen.disconnectWhenQuit' => 'Desconectar cuando la aplicación se cierre',
			'SettingsScreen.autoAddToFirewall' => 'Agregar automáticamente reglas de firewall',
			'SettingsScreen.excludeFromRecent' => 'Ocultar de [Tareas recientes]',
			'SettingsScreen.wakeLock' => 'Bloqueo de vigilia',
			'SettingsScreen.hideVpn' => 'Ocultar icono de VPN',
			'SettingsScreen.hideVpnTips' => 'Habilitar IPv6 hará que esta función falle',
			'SettingsScreen.allowBypass' => 'Permitir que las aplicaciones omitan la VPN',
			'SettingsScreen.importSuccess' => 'Importación exitosa',
			'SettingsScreen.rewriteConfirm' => 'Este archivo sobrescribirá la configuración local existente. ¿Desea continuar?',
			'SettingsScreen.mergePerapp' => 'Fusionar listas locales de [${_root.PerAppAndroidScreen.title}]',
			'SettingsScreen.networkShare' => 'Compartir red',
			'SettingsScreen.frontProxy' => 'Proxy Front/Chain',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Datos -> Servidor Proxy Front/Chain [Múltiples servidores: de arriba a abajo] -> Servidor Proxy [${p}] -> Servidor de destino',
			'SettingsScreen.allowOtherHostsConnect' => 'Permitir que otros se conecten',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Debido a limitaciones del sistema, una vez activado, las aplicaciones de este dispositivo que usan http para acceder a la red podrían no conectarse correctamente.',
			'SettingsScreen.tunAutoRoute' => 'Ruta automática',
			'SettingsScreen.tunAutoRedirect' => 'Redirección automática',
			'SettingsScreen.tunStrictRoute' => 'Ruta estricta',
			'SettingsScreen.tunStrictRouteTips' => 'Si después de activar el intercambio otros no pueden acceder a este dispositivo, intente desactivar este interruptor',
			'SettingsScreen.loopbackAddress' => 'Dirección de bucle invertido',
			'SettingsScreen.enableCluster' => 'Habilitar clúster de proxy Socks/Http',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Permitir que otros se conecten al clúster',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Autenticación de clúster de proxy',
			'SettingsScreen.tunMode' => 'Modo TUN',
			'SettingsScreen.tuni4Address' => 'Dirección IP',
			'SettingsScreen.tunModeTips' => 'El modo TUN se encargará de todo el tráfico del sistema [En este modo, puede dejar el proxy del sistema sin activar]',
			'SettingsScreen.tunModeRunAsAdmin' => 'El modo TUN requiere permisos de administrador del sistema, reinicie la aplicación como administrador',
			'SettingsScreen.tunStack' => 'Pila',
			'SettingsScreen.tunHijackTips' => 'Después de cerrar, las solicitudes DNS de TUN se reenviarán directamente al servidor DNS correspondiente',
			'SettingsScreen.launchAtStartup' => 'Ejecutar al inicio',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Cerrar aplicación al cambiar de usuario del sistema',
			'SettingsScreen.handleScheme' => 'Llamada de esquema del sistema',
			'SettingsScreen.portableMode' => 'Modo portátil',
			'SettingsScreen.portableModeDisableTips' => 'Si necesita salir del modo portátil, salga de [karing] y elimine manualmente la carpeta [profiles] en el mismo directorio que [karing.exe]',
			'SettingsScreen.accessibility' => 'Accesibilidad',
			'SettingsScreen.handleKaringScheme' => 'Manejar llamada karing://',
			'SettingsScreen.handleClashScheme' => 'Manejar llamada clash://',
			'SettingsScreen.handleSingboxScheme' => 'Manejar llamada sing-box://',
			'SettingsScreen.alwayOnVPN' => 'Conexión permanente',
			'SettingsScreen.disconnectAfterSleep' => 'Desconectar después de la suspensión del sistema',
			'SettingsScreen.removeSystemVPNConfig' => 'Eliminar configuración de VPN del sistema',
			'SettingsScreen.timeConnectOrDisconnect' => 'Conexión/desconexión programada',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'La VPN debe estar conectada para que surta efecto; una vez activada, se deshabilitará la [Suspensión automática]',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'El intervalo de conexión/desconexión no puede ser inferior a ${p} minutos',
			'SettingsScreen.disableFontScaler' => 'Deshabilitar escalado de fuentes (requiere reinicio)',
			'SettingsScreen.autoOrientation' => 'Rotar con la pantalla',
			'SettingsScreen.restartTakesEffect' => 'El reinicio surte efecto',
			'SettingsScreen.reconnectTakesEffect' => 'La reconexión surte efecto',
			'SettingsScreen.resetSettings' => 'Restablecer ajustes',
			'SettingsScreen.cleanCache' => 'Limpiar caché',
			'SettingsScreen.cleanCacheDone' => 'Limpieza completada',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Actualizar a versión ${p}',
			'SettingsScreen.follow' => 'Síganos',
			'SettingsScreen.contactUs' => 'Contáctenos',
			'SettingsScreen.supportUs' => 'Apóyenos',
			'SettingsScreen.rateInAppStore' => 'Califíquenos en AppStore',
			'SettingsScreen.rateInApp' => 'Califíquenos',
			'UserAgreementScreen.privacyFirst' => 'Su privacidad es lo primero',
			'UserAgreementScreen.agreeAndContinue' => 'Aceptar y continuar',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'La nueva versión [${p}] está lista',
			'VersionUpdateScreen.update' => 'Reiniciar para actualizar',
			'VersionUpdateScreen.cancel' => 'Ahora no',
			'CommonWidget.diableAlwayOnVPN' => 'Si [VPN siempre activa] está activada, desactívela e intente conectar de nuevo',
			'CommonWidget.resetPort' => 'Cambie el puerto a otro disponible o cierre la aplicación que ocupa el puerto.',
			'main.tray.menuOpen' => 'Abrir',
			'main.tray.menuExit' => 'Salir',
			'meta.enable' => 'Habilitar',
			'meta.disable' => 'Deshabilitar',
			'meta.bydefault' => 'Por defecto',
			'meta.filter' => 'Filtrar',
			'meta.filterMethod' => 'Método de filtrado',
			'meta.include' => 'Incluir',
			'meta.exclude' => 'Excluir',
			'meta.all' => 'Todo',
			'meta.prefer' => 'Preferir',
			'meta.only' => 'Solo',
			'meta.open' => 'Abrir',
			'meta.close' => 'Cerrar',
			'meta.quit' => 'Cerrar',
			'meta.add' => 'Agregar',
			'meta.addSuccess' => 'Agregado con éxito',
			'meta.addFailed' => ({required Object p}) => 'Error al agregar: ${p}',
			'meta.remove' => 'Eliminar',
			'meta.removeConfirm' => '¿Está seguro de que desea eliminar?',
			'meta.edit' => 'Editar',
			'meta.view' => 'Ver',
			'meta.more' => 'Más',
			'meta.tips' => 'Información',
			'meta.copy' => 'Copiar',
			'meta.paste' => 'Pasta',
			'meta.cut' => 'Cortar',
			'meta.save' => 'Guardar',
			'meta.ok' => 'OK',
			'meta.cancel' => 'Cancelar',
			'meta.feedback' => 'Comentarios',
			'meta.feedbackContent' => 'Contenido del comentario',
			'meta.feedbackContentHit' => 'Requerido, hasta 500 caracteres',
			'meta.feedbackContentCannotEmpty' => 'El contenido del comentario no puede estar vacío',
			'meta.faq' => 'Preguntas frecuentes',
			'meta.htmlTools' => 'Caja de herramientas HTML',
			'meta.download' => 'Descargar',
			'meta.upload' => 'Subir',
			'meta.downloadSpeed' => 'Velocidad de descarga',
			'meta.uploadSpeed' => 'Velocidad de subida',
			'meta.loading' => 'Cargando...',
			'meta.convert' => 'Convertir',
			'meta.check' => 'Comprobar',
			'meta.detect' => 'Detectar',
			'meta.cache' => 'Caché',
			'meta.days' => 'Días',
			'meta.hours' => 'Horas',
			'meta.minutes' => 'Minutos',
			'meta.seconds' => 'Segundos',
			'meta.milliseconds' => 'Milisegundos',
			'meta.tolerance' => 'Tolerancia',
			'meta.dateTimePeriod' => 'Período',
			'meta.protocol' => 'Protocolo',
			'meta.search' => 'Buscar',
			'meta.custom' => 'Personalizado',
			'meta.inbound' => 'Entrante',
			'meta.outbound' => 'Saliente',
			'meta.destination' => 'Destino',
			'meta.outletIpByCurrentSelected' => 'IP de salida',
			'meta.outletIpByDirect' => 'IP: ${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Conectar',
			'meta.disconnect' => 'Desconectar',
			'meta.reconnect' => 'Reconectar',
			'meta.connected' => 'Conectado',
			'meta.disconnected' => 'Desconectado',
			'meta.connecting' => 'Conectando',
			'meta.connectTimeout' => 'Tiempo de conexión agotado',
			'meta.timeout' => 'Tiempo agotado',
			'meta.timeoutDuration' => 'Duración del tiempo agotado',
			'meta.runDuration' => 'Duración de ejecución',
			'meta.latency' => 'Latencia',
			'meta.latencyTest' => 'Pruebas de latencia',
			'meta.language' => 'Idioma',
			'meta.next' => 'Siguiente',
			'meta.done' => 'Hecho',
			'meta.apply' => 'Aplicar',
			'meta.refresh' => 'Actualizar',
			'meta.retry' => '¿Reintentar?',
			'meta.update' => 'Actualizar',
			'meta.updateInterval' => 'Intervalo de actualización',
			'meta.updateInterval5mTips' => 'Mínimo: 5m',
			'meta.updateFailed' => ({required Object p}) => 'Error al actualizar: ${p}',
			'meta.samplingUnit' => 'Unidad de tiempo de muestreo',
			'meta.queryResultCount' => 'Recuento de resultados de consulta',
			'meta.queryLimit' => ({required Object p}) => 'Mostrar hasta ${p} datos',
			'meta.none' => 'Ninguno',
			'meta.start' => 'Iniciar',
			'meta.pause' => 'Pausa',
			'meta.reset' => 'Restablecer',
			'meta.submit' => 'Enviar',
			'meta.user' => 'Usuario',
			'meta.account' => 'Cuenta',
			'meta.password' => 'Contraseña',
			'meta.decryptPassword' => 'Contraseña de descifrado',
			'meta.required' => 'Requerido',
			'meta.type' => 'Tipo',
			'meta.path' => 'Ruta',
			'meta.local' => 'Local',
			'meta.remote' => 'Remoto',
			'meta.other' => 'Otro',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL inválida',
			'meta.urlCannotEmpty' => 'El enlace no puede estar vacío',
			'meta.urlTooLong' => 'La URL es demasiado larga (>8182)',
			'meta.copyUrl' => 'Copiar enlace',
			'meta.openUrl' => 'Abrir enlace',
			'meta.shareUrl' => 'Compartir enlace',
			'meta.speedTestUrl' => 'URL de prueba de velocidad',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'IP estática',
			'meta.staticIPTips' => 'Debe habilitar [TUN HijackDNS] o [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'Proveedor VPN',
			'meta.domainSuffix' => 'Sufijo de dominio',
			'meta.domain' => 'Dominio',
			'meta.domainKeyword' => 'Palabra clave de dominio',
			'meta.domainRegex' => 'Regex de dominio',
			'meta.ip' => 'IP',
			'meta.port' => 'Puerto',
			'meta.portRange' => 'Rango de puertos',
			'meta.appPackage' => 'ID de paquete de aplicación',
			'meta.processName' => 'Nombre del proceso',
			'meta.processPath' => 'Ruta del proceso',
			'meta.processDir' => 'Directorio del proceso',
			'meta.systemProxy' => 'Proxy del sistema',
			'meta.percentage' => 'Porcentaje',
			'meta.statistics' => 'Estadísticas',
			'meta.statisticsAndAnalysis' => 'Estadísticas y análisis',
			'meta.statisticsDataDesensitize' => 'Desensibilización de datos',
			'meta.statisticsDataDesensitizeTips' => 'El ID de proceso/paquete/nombre de dominio de destino/IP de destino, etc., se reemplazarán por * y se guardarán después de la desensibilización',
			'meta.records' => 'Registros',
			'meta.requestRecords' => 'Registros de solicitudes',
			'meta.netInterfaces' => 'Interfaces de red',
			'meta.netSpeed' => 'Velocidad',
			'meta.memoryTrendChart' => 'Gráfico de tendencia de memoria',
			'meta.goroutinesTrendChart' => 'Gráfico de tendencia de GoRoutines',
			'meta.trafficTrendChart' => 'Gráfico de tendencia de tráfico',
			'meta.trafficDistributionChart' => 'Gráfico de distribución de tráfico',
			'meta.connectionChart' => 'Gráfico de tendencia de conexiones',
			'meta.memoryChart' => 'Gráfico de tendencia de memoria',
			'meta.trafficStatistics' => 'Estadísticas de tráfico',
			'meta.traffic' => 'Tráfico',
			'meta.trafficTotal' => 'Tráfico total',
			'meta.trafficProxy' => 'Tráfico proxy',
			'meta.trafficDirect' => 'Tráfico directo',
			'meta.website' => 'Sitio web',
			'meta.memory' => 'Memoria',
			'meta.outboundMode' => 'Modo de salida',
			'meta.rule' => 'Regla',
			'meta.global' => 'Global',
			'meta.qrcode' => 'Código QR',
			'meta.qrcodeTooLong' => 'El texto es demasiado largo para mostrarse',
			'meta.qrcodeShare' => 'Compartir código QR',
			'meta.textToQrcode' => 'Texto a código QR',
			'meta.qrcodeScan' => 'Escanear código QR',
			'meta.qrcodeScanResult' => 'Resultado del escaneo',
			'meta.qrcodeScanFromImage' => 'Escanear desde imagen',
			'meta.qrcodeScanResultFailed' => 'Error al analizar la imagen, asegúrese de que la captura de pantalla sea un código QR válido',
			'meta.qrcodeScanResultEmpty' => 'El resultado del escaneo está vacío',
			'meta.screenshot' => 'Captura de pantalla',
			'meta.backupAndSync' => 'Copia de seguridad y sincronización',
			'meta.autoBackup' => 'Copia de seguridad automática',
			'meta.noProfileGotAutoBackup' => 'Si se pierden datos como [${_root.meta.myProfiles}], puede restaurarlos desde [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] u otras fuentes de copia de seguridad (como iCloud o Webdav, etc.)',
			'meta.autoBackupAddProfile' => 'Después de agregar el perfil',
			'meta.autoBackupRemoveProfile' => 'Después de eliminar el perfil',
			'meta.profile' => 'Perfil',
			'meta.currentProfile' => 'Perfil actual',
			'meta.importAndExport' => 'Importar y Exportar',
			'meta.import' => 'Importar',
			'meta.importFromUrl' => 'Importar desde URL',
			'meta.export' => 'Exportar',
			'meta.send' => 'Enviar',
			'meta.receive' => 'Recibir',
			'meta.sendConfirm' => '¿Confirmar envío?',
			'meta.termOfUse' => 'Condiciones de uso',
			'meta.privacyPolicy' => 'Política de privacidad',
			'meta.about' => 'Acerca de',
			'meta.name' => 'Nombre',
			'meta.version' => 'Versión',
			'meta.notice' => 'Aviso',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Acción: ${p}\nRazón: ${p1}',
			'meta.sort' => 'Reordenar',
			'meta.novice' => 'Modo principiante',
			'meta.willCompleteAfterRebootInstall' => 'Reinicie su dispositivo para completar la instalación de la extensión del sistema',
			'meta.willCompleteAfterRebootUninstall' => 'Reinicie su dispositivo para completar la desinstalación de la extensión del sistema',
			'meta.requestNeedsUserApproval' => '1. [Permita] que Karing instale extensiones del sistema en [Ajustes del sistema]-[Privacidad y seguridad]\n2. [Ajustes del sistema]-[General]-[Elementos de inicio y extensiones-Extensión de red] active [karingServiceSE]\nreconnecte después de completar',
			'meta.FullDiskAccessPermissionRequired' => 'Habilite el permiso [karingServiceSE] en [Ajustes del sistema]-[Privacidad y seguridad]-[Acceso total al disco] y vuelva a conectarse',
			'meta.tvMode' => 'Modo TV',
			'meta.recommended' => 'Recomendado',
			'meta.innerError' => ({required Object p}) => 'Error interno: ${p}',
			'meta.logicOperation' => 'Operación lógica',
			'meta.share' => 'Compartir',
			'meta.candidateWord' => 'Palabras candidatas',
			'meta.keywordOrRegx' => 'Palabras clave/Regex',
			'meta.importFromClipboard' => 'Importar desde portapapeles',
			'meta.exportToClipboard' => 'Exportar a portapapeles',
			'meta.server' => 'Servidor',
			'meta.ads' => 'Anuncios',
			'meta.adsRemove' => 'Eliminar anuncios',
			'meta.donate' => 'Donaciones',
			'meta.diversion' => 'Enrutamiento',
			'meta.diversionRules' => 'Reglas de enrutamiento',
			'meta.diversionCustomGroup' => 'Grupo de desvío personalizado',
			'meta.urlTestCustomGroup' => 'Selección automática personalizada',
			'meta.setting' => 'Ajustes',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Sincronización LAN',
			'meta.lanSyncNotQuitTips' => 'No salga de esta interfaz antes de que se complete la sincronización',
			'meta.deviceNoSpace' => 'Espacio en disco insuficiente',
			'meta.hideSystemApp' => 'Ocultar aplicaciones del sistema',
			'meta.hideAppIcon' => 'Ocultar iconos de aplicaciones',
			'meta.hideDockIcon' => 'Ocultar icono del Dock',
			'meta.remark' => 'Observación',
			'meta.remarkExist' => 'La observación ya existe, use otro nombre',
			'meta.remarkCannotEmpty' => 'La observación no puede estar vacía',
			'meta.remarkTooLong' => 'Observaciones de hasta 32 caracteres',
			'meta.openDir' => 'Abrir directorio de archivos',
			'meta.fileChoose' => 'Seleccionar archivo',
			'meta.filePathCannotEmpty' => 'La ruta del archivo no puede estar vacía',
			'meta.fileNotExist' => ({required Object p}) => 'El archivo no existe: ${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Tipo de archivo inválido: ${p}',
			'meta.uwpExemption' => 'Exenciones de aislamiento de red UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Obtener perfil',
			'meta.addProfile' => 'Agregar perfil',
			'meta.myProfiles' => 'Mis perfiles',
			'meta.profileEdit' => 'Editar perfil',
			'meta.profileEditUrlExist' => 'La URL ya existe, use otra URL',
			'meta.profileEditReloadAfterProfileUpdate' => 'Recargar después de la actualización del perfil',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Iniciar pruebas de latencia después de la actualización automática del perfil',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'La VPN debe estar conectada y [Recargar después de la actualización del perfil] activado',
			'meta.profileEditTestLatencyAutoRemove' => 'Eliminar automáticamente servidores que fallen en las pruebas de latencia',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Intentar hasta 3 veces',
			'meta.profileImport' => 'Importar archivo de perfil',
			'meta.profileAddUrlOrContent' => 'Agregar enlace de perfil',
			'meta.profileExists' => 'El perfil ya existe, no lo agregue repetidamente',
			'meta.profileUrlOrContent' => 'Enlace/Contenido del perfil',
			'meta.profileUrlOrContentHit' => 'Enlace/Contenido del perfil [Requerido] (Soporta Clash, V2ray (soporte por lotes), Stash, Karing, Sing-box, Shadowsocks, enlaces de subperfil)',
			'meta.profileUrlOrContentCannotEmpty' => 'El enlace del perfil no puede estar vacío',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'El formato es incorrecto, corríjalo y agréguelo de nuevo: ${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Error al agregar: ${p}, intente modificar el [UserAgent] e intente de nuevo, o use el navegador integrado del dispositivo para abrir el enlace de configuración e importar el archivo de configuración descargado por el navegador en esta aplicación',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Error al agregar: ${p}, active el proxy o modifique el nodo proxy actual e intente de nuevo',
			'meta.profileAddParseFailed' => 'Error al analizar el perfil',
			'meta.profileAddNoServerAvaliable' => 'No hay servidores disponibles, asegúrese de que el enlace o archivo de perfil sea válido; si su perfil proviene de GitHub, obtenga el enlace del botón [Raw] en la página',
			'meta.profileAddWrapSuccess' => 'Perfil generado con éxito, vaya a [${_root.meta.myProfiles}] para ver',
			'diversionRulesKeep' => 'Mantener ${_root.meta.diversionRules} de [${_root.meta.isp}]',
			'diversionCustomGroupPreset' => 'Preajuste [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Nota: Los elementos habilitados se agregarán/sobrescribirán en [${_root.meta.diversionCustomGroup}] y [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Nota: Después de agregar, es posible que deba ajustar manualmente el orden; de lo contrario, el nuevo desvío podría no ser efectivo',
			'rulesetEnableTips' => 'Consejo: Después de activar las opciones, vaya a [${_root.meta.diversionRules}] para establecer las reglas correspondientes; de lo contrario, no tendrán efecto.',
			'ispUserAgentTips' => '[${_root.meta.isp}] enviará datos de diferentes tipos de suscripción basados en el [UserAgent] en la solicitud [HTTP]',
			'ispDiversionTips' => '[${_root.meta.isp}] proporciona reglas de desvío de tráfico; las suscripciones de tipo [V2Ray] no admiten reglas de desvío de tráfico',
			'isp.bind' => 'Vincular a [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Desvincular [${p}]',
			'isp.faq' => ({required Object p}) => 'Preguntas frecuentes [${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram [${p}]',
			'isp.follow' => ({required Object p}) => 'Seguir [${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] inválido o caducado',
			'permission.camera' => 'Cámara',
			'permission.screen' => 'Grabación de pantalla',
			'permission.appQuery' => 'Obtener lista de aplicaciones',
			'permission.request' => ({required Object p}) => 'Activar permiso [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'Active el permiso [${p}]',
			'tls.insecure' => 'Omitir verificación de certificado',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Habilitar fragmento TLS',
			_ => null,
		} ?? switch (path) {
			'tls.fragmentSize' => 'Tamaño de fragmento TLS',
			'tls.fragmentSleep' => 'Espera de fragmento TLS',
			'tls.mixedCaseSNIEnable' => 'Habilitar SNI mixto TLS',
			'tls.paddingEnable' => 'Habilitar padding TLS',
			'tls.paddingSize' => 'Tamaño de padding TLS',
			'outboundRuleMode.currentSelected' => 'Seleccionado actualmente',
			'outboundRuleMode.urltest' => 'Selección automática',
			'outboundRuleMode.direct' => 'Directo',
			'outboundRuleMode.block' => 'Bloquear',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Actualización del perfil',
			'theme.light' => 'Claro',
			'theme.dark' => 'Oscuro',
			'theme.auto' => 'Auto',
			'downloadProxyStrategy' => 'Canal de descarga',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Conectarse al servidor DNS a través del servidor proxy para resolver el nombre de dominio\n[${_root.dnsProxyResolveMode.direct}]: Conectarse directamente al servidor DNS para resolver el nombre de dominio\n[${_root.dnsProxyResolveMode.fakeip}]: El servidor proxy resuelve el nombre de dominio en su nombre; si desconecta la conexión VPN, es posible que deba reiniciar su aplicación; solo efectivo para el tráfico entrante [TUN]',
			'routeFinal' => 'final',
			'protocolSniff' => 'Husmeo de protocolo',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Utilice [${p}]',
			'turnOffPrivateDirect' => 'Active [Conexión directa de red privada] primero',
			'targetConnectFailed' => ({required Object p}) => 'Error al conectar con [${p}]. Asegúrese de que los dispositivos estén en la misma LAN',
			'appleTVSync' => 'Sincronizar configuración principal actual con Apple TV - Karing',
			'appleTVSyncDone' => 'Sincronización completada. Vaya a Apple TV - Karing para iniciar/reiniciar la conexión',
			'appleTVRemoveCoreConfig' => 'Eliminar configuración principal de Apple TV - Karing',
			'appleTVRemoveCoreConfigDone' => 'Configuración principal de Apple TV - Karing eliminada; servicio VPN desconectado',
			'appleTVUrlInvalid' => 'URL inválida, abra Apple TV - Karing y escanee el código QR mostrado por Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV: Karing[${p}] no tiene esta función, actualice e intente de nuevo',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'La versión principal del núcleo no coincide, actualice [${p}] e intente de nuevo',
			'remoteProfileEditConfirm' => 'Después de la actualización del perfil, se restaurarán los cambios de nodo. ¿Continuar?',
			'mustBeValidHttpsURL' => 'Debe ser una URL https válida',
			'fileNotExistReinstall' => ({required Object p}) => 'Falta el archivo [${p}], vuelva a instalar',
			'noNetworkConnect' => 'Sin conexión a Internet',
			'sudoPassword' => 'Contraseña sudo (requerida para el modo TUN)',
			'turnOffNetworkBeforeInstall' => 'Se recomienda cambiar al [Modo avión] antes de instalar la actualización',
			'latencyTestResolveIP' => 'Al comprobar manualmente, resolver la IP de salida',
			'latencyTestConcurrency' => 'Paralelismo',
			'edgeRuntimeNotInstalled' => 'El dispositivo actual no tiene instalado el tiempo de ejecución de Edge WebView2, por lo que la página no se puede mostrar. Descargue e instale el tiempo de ejecución de Edge WebView2 (x64), reinicie la aplicación e intente de nuevo.',
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
