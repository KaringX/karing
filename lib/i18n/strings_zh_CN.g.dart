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
class TranslationsZhCn with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhCn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsZhCn _root = this; // ignore: unused_field

	@override 
	TranslationsZhCn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhCn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenZhCn AboutScreen = _TranslationsAboutScreenZhCn._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenZhCn BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenZhCn._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenZhCn DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenZhCn._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenZhCn DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenZhCn._(_root);
	@override late final _TranslationsDiversionRulesScreenZhCn DiversionRulesScreen = _TranslationsDiversionRulesScreenZhCn._(_root);
	@override late final _TranslationsDnsSettingsScreenZhCn DnsSettingsScreen = _TranslationsDnsSettingsScreenZhCn._(_root);
	@override late final _TranslationsFileContentViewerScreenZhCn FileContentViewerScreen = _TranslationsFileContentViewerScreenZhCn._(_root);
	@override late final _TranslationsHomeScreenZhCn HomeScreen = _TranslationsHomeScreenZhCn._(_root);
	@override late final _TranslationsLaunchFailedScreenZhCn LaunchFailedScreen = _TranslationsLaunchFailedScreenZhCn._(_root);
	@override late final _TranslationsMyProfilesMergeScreenZhCn MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenZhCn._(_root);
	@override late final _TranslationsNetCheckScreenZhCn NetCheckScreen = _TranslationsNetCheckScreenZhCn._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenZhCn NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenZhCn._(_root);
	@override late final _TranslationsNetConnectionsScreenZhCn NetConnectionsScreen = _TranslationsNetConnectionsScreenZhCn._(_root);
	@override late final _TranslationsPerAppAndroidScreenZhCn PerAppAndroidScreen = _TranslationsPerAppAndroidScreenZhCn._(_root);
	@override late final _TranslationsRegionSettingsScreenZhCn RegionSettingsScreen = _TranslationsRegionSettingsScreenZhCn._(_root);
	@override late final _TranslationsServerSelectScreenZhCn ServerSelectScreen = _TranslationsServerSelectScreenZhCn._(_root);
	@override late final _TranslationsSettingsScreenZhCn SettingsScreen = _TranslationsSettingsScreenZhCn._(_root);
	@override late final _TranslationsUserAgreementScreenZhCn UserAgreementScreen = _TranslationsUserAgreementScreenZhCn._(_root);
	@override late final _TranslationsVersionUpdateScreenZhCn VersionUpdateScreen = _TranslationsVersionUpdateScreenZhCn._(_root);
	@override late final _TranslationsCommonWidgetZhCn CommonWidget = _TranslationsCommonWidgetZhCn._(_root);
	@override late final _TranslationsMainZhCn main = _TranslationsMainZhCn._(_root);
	@override late final _TranslationsMetaZhCn meta = _TranslationsMetaZhCn._(_root);
	@override String get diversionRulesKeep => '保留[${_root.meta.isp}]${_root.meta.diversionRules}';
	@override String get diversionCustomGroupPreset => '预置[${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => '注意:启用的项会添加/覆盖到[${_root.meta.diversionCustomGroup}]和[${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => '注意:添加完毕后可能需要手动调整排序,否则新添加的分流可能不会生效';
	@override String get rulesetEnableTips => '提示:开启选项后,请到[${_root.meta.diversionRules}]设置相关规则,否则不会生效';
	@override String get ispUserAgentTips => '[${_root.meta.isp}]会根据[HTTP]请求里的[UserAgent]下发不同订阅类型的数据';
	@override String get ispDiversionTips => '[${_root.meta.isp}]提供的分流规则;[V2Ray]类型的订阅不支持分流规则';
	@override late final _TranslationsIspZhCn isp = _TranslationsIspZhCn._(_root);
	@override late final _TranslationsPermissionZhCn permission = _TranslationsPermissionZhCn._(_root);
	@override late final _TranslationsTlsZhCn tls = _TranslationsTlsZhCn._(_root);
	@override late final _TranslationsOutboundRuleModeZhCn outboundRuleMode = _TranslationsOutboundRuleModeZhCn._(_root);
	@override late final _TranslationsDnsProxyResolveModeZhCn dnsProxyResolveMode = _TranslationsDnsProxyResolveModeZhCn._(_root);
	@override late final _TranslationsProxyStrategyZhCn proxyStrategy = _TranslationsProxyStrategyZhCn._(_root);
	@override late final _TranslationsReloadReasonZhCn reloadReason = _TranslationsReloadReasonZhCn._(_root);
	@override late final _TranslationsThemeZhCn theme = _TranslationsThemeZhCn._(_root);
	@override String get downloadProxyStrategy => '下载通道';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]:通过代理服务器连接DNS服务器解析域名\n[${_root.dnsProxyResolveMode.direct}]:直接连接DNS服务器解析域名\n[${_root.dnsProxyResolveMode.fakeip}]:由代理服务器代为解析域名;如果断开VPN连接,你的应用可能需要重启;仅对[TUN]入站的流量生效';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => '协议探测';
	@override String sendOrReceiveNotMatch({required Object p}) => '请使用[${p}]';
	@override String get turnOffPrivateDirect => '请先开启[私有网络直连]';
	@override String targetConnectFailed({required Object p}) => '连接[${p}]失败,请确保设备在同一个局域网内';
	@override String get appleTVSync => '同步当前核心配置到Apple TV - Karing';
	@override String get appleTVSyncDone => '同步完成,请到Apple TV - Karing开启连接/重启连接';
	@override String get appleTVRemoveCoreConfig => '删除Apple TV - Karing核心配置';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing的核心配置文件已删除;VPN服务已断开连接';
	@override String get appleTVUrlInvalid => '无效的URL,请打开Apple TV - Karing,扫描Karing显示的二维码';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}]无此功能,请升级后再试';
	@override String appleCoreVersionNotMatch({required Object p}) => '核心主版本不匹配,请升级[${p}]后再试';
	@override String get remoteProfileEditConfirm => '配置更新后,节点的修改将会被还原,是否继续?';
	@override String get mustBeValidHttpsURL => '必须为有效的 https URL';
	@override String fileNotExistReinstall({required Object p}) => '文件缺失[${p}],请重新安装';
	@override String get noNetworkConnect => '无网络连接';
	@override String get sudoPassword => 'sudo 密码(TUN模式需要)';
	@override String get turnOffNetworkBeforeInstall => '建议切换到[飞行模式]后再安装更新';
	@override String get latencyTestResolveIP => '手动检测时,同时解析出口IP';
	@override String get latencyTestConcurrency => '并发数量';
	@override String get edgeRuntimeNotInstalled => '当前设备尚未安装Edge WebView2运行时,无法展示页面,请下载安装Edge WebView2运行时(x64)后,重启App再试';
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
class _TranslationsAboutScreenZhCn implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get installRefer => '安装参考';
	@override String get installTime => '安装时间';
	@override String get versionChannel => '自动更新通道';
	@override String get updateWhenConnected => '连接后再检查更新';
	@override String get autoDownloadPkg => '自动下载更新包';
	@override String get disableAppImproveData => '应用改进数据';
	@override String get disableUAReportTip => '开启[${_root.AboutScreen.disableAppImproveData}]有助于我们改进产品稳定性与可用性,我们不会收集任何个人隐私数据;禁用后,应用将不会再收集任何数据';
	@override String get devOptions => '开发者选项';
	@override String get enableDebugLog => '开启调试日志';
	@override String get viewFilsContent => '查看文件';
	@override String get enablePprof => '启用pprof';
	@override String get pprofPanel => 'pprof面板';
	@override String get allowRemoteAccessPprof => '允许远程访问${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => '允许远程访问${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => '使用原始sing-box配置';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenZhCn implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => '服务器地址';
	@override String get webdavRequired => '不能为空';
	@override String get webdavLoginFailed => '登录失败:';
	@override String get webdavListFailed => '获取文件列表失败:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenZhCn implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => '无效的 [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => '无效的 [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => '无效的 [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => '无效的 [Rule Set]:${p}, URL必须是有效的https URL,并且文件扩展名为.srs/.json的binary文件';
	@override String invalidRuleSetBuildIn({required Object p}) => '无效的 [Rule Set(build-in)]:${p}, 格式为geosite:xxx 或 geoip:xxx 或 acl:xxx,并且xxx应为有效的规则名';
	@override String invalidPackageId({required Object p}) => '无效的 [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => '提示:保存后,请到[${_root.meta.diversionRules}]设置相关规则,否则不会生效';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenZhCn implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '分流规则探测';
	@override String get rule => '规则:';
	@override String get outbound => '代理服务器:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenZhCn implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => '提示:从上到下依次尝试匹配规则,如果没有匹配到规则,则使用[final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenZhCn implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP 不能为空';
	@override String get urlCanNotEmpty => 'URL 不能为空';
	@override String error({required Object p}) => '不支持的类型:${p}';
	@override String get dnsDesc => '第一列延迟数据为直连查询延迟;\n第二列:开启[[代理流量]通过代理服务器解析DNS]:延迟数据为通过当前代理服务器转发的查询延迟;未开启[[代理流量]通过代理服务器解析DNS]:延迟数据为直连查询延迟';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenZhCn implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '文件内容查看';
	@override String get clearFileContent => '确认清空文件内容?';
	@override String get clearFileContentTips => '确认清空配置文件内容? 清空配置文件可能会导致数据丢失或应用功能异常, 请谨慎操作';
}

// Path: HomeScreen
class _TranslationsHomeScreenZhCn implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => '请选择服务器';
	@override String get invalidServer => '已失效,请重新选择';
	@override String get disabledServer => '已被禁用,请重新选择';
	@override String get expiredServer => '无可用服务器:配置可能已过期或被禁用';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => '请先设置[快捷链接]后再使用';
	@override String tooMuchServers({required Object p, required Object p1}) => '代理服务器[${p}>${p1}]过多,可能因系统内存限制而无法连接';
	@override String tooMuchServers2({required Object p, required Object p1}) => '代理服务器[${p}>${p1}]过多,可能导致连接缓慢或无法连接';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenZhCn implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => '应用启动失败[无效的进程名称],请重新安装应用到独立目录';
	@override String get invalidProfile => '应用启动失败[访问配置文件失败],请重新安装应用';
	@override String get invalidVersion => '应用启动失败[无效版本],请重新安装应用';
	@override String get systemVersionLow => '应用启动失败[系统版本过低]';
	@override String get invalidInstallPath => '无效的安装路径,请重新安装到有效路径';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenZhCn implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => '配置合并';
	@override String get profilesMergeTarget => '目标配置';
	@override String get profilesMergeSource => '源配置';
	@override String get profilesMergeTips => '提示:源配置的分流信息将会被丢弃';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenZhCn implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '网络检测';
	@override String get warn => '注意:由于受网络环境及分流规则等影响,测试结果并不完全等价实际中使用的效果';
	@override String get invalidDomain => '无效域名';
	@override String get connectivity => '网络联通性';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Ipv4 连接测试[${p}]全部失败';
	@override String get connectivityTestIpv4Ok => 'Ipv4 连接成功';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Ipv6 连接测试[${p}]全部失败, 你的网络可能不支持ipv6';
	@override String get connectivityTestIpv6Ok => 'Ipv6 连接成功';
	@override String get connectivityTestOk => '网络已接入互联网';
	@override String get connectivityTestFailed => '网络尚未接入互联网';
	@override String get remoteRulesetsDownloadOk => '全部下载成功';
	@override String get remoteRulesetsDownloadNotOk => '正在下载或下载失败';
	@override String get outbound => '代理服务器';
	@override String outboundOk({required Object p}) => '[${p}]连接成功';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}]连接失败\n错误:[${p2}]';
	@override String get dnsServer => 'DNS服务器';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]域名解析成功\nDNS规则:[${p2}]\n延迟:[${p3} ms]\n地址:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]域名解析失败\n规则:[${p2}]\n错误:[${p3}]';
	@override String get host => 'HTTP连接';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\n分流规则:[${p2}]\n代理服务器:[${p3}]';
	@override String get hostConnectionOk => '连接成功';
	@override String hostConnectionFailed({required Object p}) => '连接失败:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenZhCn implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get hostIp => '域名/IP';
	@override String get app => '应用';
	@override String get rule => '规则';
	@override String get chain => '出站';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenZhCn implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => '已复制为CSV格式';
	@override String get selectType => '选择分流类型';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenZhCn implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '分应用代理';
	@override String get whiteListMode => '白名单模式';
	@override String get whiteListModeTip => '启用后:仅代理已勾选的App;未启用:仅代理未勾选的App';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenZhCn implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '国家与地区';
	@override String get Regions => '提示:请正确设置你当前所在国家或地区,否则可能会导致分流错误';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenZhCn implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '选择服务器';
	@override String get autoSelectServer => '自动选择延迟最低的服务器';
	@override String get recentUse => '最近使用';
	@override String get myFav => '我的收藏';
	@override String selectLocal({required Object p}) => '所选服务器为本地地址,可能无法正常使用:${p}';
	@override String get selectRequireEnableIPv6 => '所选服务器为IPv6地址,需要[启用IPv6]';
	@override String get selectDisabled => '该服务器已被禁用';
	@override String get error404 => '延迟检测遇到错误,请检查是否存在内容相同的配置';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenZhCn implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => '获取流量';
	@override String get tutorial => '使用教程';
	@override String get commonlyUsedRulesets => '常用规则集';
	@override String get htmlBoard => '在线面板';
	@override String get dnsLeakDetection => 'DNS泄露检测';
	@override String get proxyLeakDetection => '代理泄露检测';
	@override String get speedTest => '测速';
	@override String get rulesetDirectDownlad => 'Rule Set直连下载';
	@override String get hideUnusedDiversionGroup => '隐藏未启用的分流规则';
	@override String get disableISPDiversionGroup => '禁用[${_root.meta.isp}]${_root.meta.diversionRules}';
	@override String get portSettingRule => '基于规则';
	@override String get portSettingDirectAll => '全直连';
	@override String get portSettingProxyAll => '全代理';
	@override String get portSettingControl => '控制与同步';
	@override String get portSettingCluster => '集群服务';
	@override String get modifyPort => '修改端口';
	@override String get modifyPortOccupied => '端口已被占用,请使用其他端口';
	@override String get ipStrategyTips => '启用前,请先确认你的网络已支持IPv6,否则某些流量无法正常访问';
	@override String get tunAppendHttpProxy => '附加HTTP代理到VPN';
	@override String get tunAppendHttpProxyTips => '一些App会绕过虚拟网卡设备直连HTTP代理';
	@override String get tunAllowBypassHttpProxyDomain => '允许绕过HTTP代理的域名';
	@override String get dnsEnableRule => '启用DNS分流规则';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}]解析通道';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}]启用ECS';
	@override String get dnsTestDomain => '测试域名';
	@override String get dnsTestDomainInvalid => '无效的域名';
	@override String get dnsTypeOutbound => '代理服务器';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS服务器';
	@override String get dnsEnableRuleTips => '启用后,域名会根据分流规则选择对应的DNS服务器进行解析';
	@override String get dnsEnableFakeIpTips => '启用FakeIP后,如果断开VPN连接,你的应用可能需要重启;此功能需要开启[TUN模式]';
	@override String get dnsTypeOutboundTips => '用于[${_root.SettingsScreen.dnsTypeOutbound}]的域名解析';
	@override String get dnsTypeDirectTips => '用于[${_root.meta.trafficDirect}]的域名解析';
	@override String get dnsTypeProxyTips => '用于[${_root.meta.trafficProxy}]的域名解析';
	@override String get dnsTypeResolverTips => '用于[${_root.SettingsScreen.dnsTypeResolver}]的域名解析';
	@override String get dnsAutoSetServer => '自动设置服务器';
	@override String get dnsResetServer => '重置服务器';
	@override String get dnsEnableStaticIPForResolver => '优先静态解析';
	@override String get dnsEnableStaticIPForResolverTips => '有效防止DNS服务器本身解析时被污染';
	@override String get inboundDomainResolve => '解析入站域名';
	@override String get privateDirect => '私有网络直连';
	@override String inboundDomainResolveTips({required Object p}) => '某些未配置分流规则的域名需要解析后才可能命中基于IP的分流规则;此功能影响代理端口[${p}]的入站请求';
	@override String get useRomoteRes => '使用远程资源';
	@override String get autoAppendRegion => '自动附加基础规则';
	@override String get autoSelect => '自动选择';
	@override String get autoSelectServerIgnorePerProxyServer => '忽略[前置/链式]代理服务器';
	@override String get autoSelectServerInterval => '延迟检测时间间隔';
	@override String get autoSelectSelectedHealthCheckInterval => '当前服务器健康检测时间间隔';
	@override String get autoSelectServerReTestIfNetworkUpdate => '网络变化时重新检测';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => '手动延时检测后更新当前服务器';
	@override String get autoSelectServerIntervalTips => '延迟检测时间间隔越短,服务器延迟数据更新越及时,但会占用更多资源,耗电更快';
	@override String get autoSelectSelectedHealthCheckIntervalTips => '如果检测失败,则切换节点;如果切换节点时,未找到可用节点,则对该组重新进行延迟检测';
	@override String get autoSelectServerFavFirst => '优先使用[我的收藏]';
	@override String get autoSelectServerFavFirstTips => '如果[我的收藏]列表不为空,则使用[我的收藏]里的服务器';
	@override String get autoSelectServerFilter => '过滤无效服务器';
	@override String autoSelectServerFilterTips({required Object p}) => '服务器延迟检测失败的将会被过滤掉;如果过滤后无服务器可用,则改用前[${p}]个服务器';
	@override String get autoSelectServerLimitedNum => '服务器数量上限';
	@override String get autoSelectServerLimitedNumTips => '超过该数量的服务器将被过滤掉';
	@override String get numInvalid => '无效的数字';
	@override String get hideInvalidServer => '隐藏无效服务器';
	@override String get sortServer => '服务器排序';
	@override String get sortServerTips => '按延迟由低到高排序';
	@override String get selectServerHideRecommand => '隐藏[推荐]';
	@override String get selectServerHideRecent => '隐藏[最近使用]';
	@override String get selectServerHideFav => '隐藏[我的收藏]';
	@override String get homeScreen => '主屏';
	@override String get theme => '主题';
	@override String get widgetsAlpha => 'Widgets 透明度';
	@override String get widgetsEmpty => '无可用Widget';
	@override String get backgroundImage => '背景图';
	@override String get myLink => '快捷链接';
	@override String get autoConnectAfterLaunch => '启动后自动连接';
	@override String get autoConnectAtBoot => '系统启动后自动连接';
	@override String get autoConnectAtBootTips => '需要系统支持,部分系统可能还需要开启[自启动]';
	@override String get hideAfterLaunch => '启动后隐藏窗口';
	@override String get autoSetSystemProxy => '连接后自动设置系统代理';
	@override String get bypassSystemProxy => '允许绕过系统代理的域名';
	@override String get disconnectWhenQuit => '退出应用时关闭连接';
	@override String get autoAddToFirewall => '自动添加防火墙规则';
	@override String get excludeFromRecent => '从[最近任务]中隐藏';
	@override String get wakeLock => '唤醒锁';
	@override String get hideVpn => '隐藏VPN图标';
	@override String get hideVpnTips => '开启IPv6会导致此功能失效';
	@override String get allowBypass => '允许应用绕过VPN';
	@override String get importSuccess => '导入成功';
	@override String get rewriteConfirm => '该文件将覆盖本地已有配置,是否继续?';
	@override String get mergePerapp => '合并本地[${_root.PerAppAndroidScreen.title}]列表';
	@override String get networkShare => '网络共享';
	@override String get frontProxy => '前置/链式代理';
	@override String frontProxyTips({required Object p}) => '数据->前置/链式代理服务器[多个代理服务器:由上到下]->代理服务器[${p}]->目标服务器';
	@override String get allowOtherHostsConnect => '允许其他主机接入';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => '由于系统限制,开启后,本设备上使用http访问网络的应用可能无法正常连接网络';
	@override String get tunAutoRoute => '自动路由';
	@override String get tunAutoRedirect => '自动重定向';
	@override String get tunStrictRoute => '严格路由';
	@override String get tunStrictRouteTips => '如果开启共享后,其他无法接入此设备,请尝试关闭此开关';
	@override String get loopbackAddress => '环回地址';
	@override String get enableCluster => '开启Socks/Http代理集群';
	@override String get clusterAllowOtherHostsConnect => '允许其他主机接入代理集群';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => '代理集群认证';
	@override String get tunMode => 'TUN模式';
	@override String get tuni4Address => 'IP地址';
	@override String get tunModeTips => 'TUN模式将接管系统所有流量[此模式下无需开启系统代理]';
	@override String get tunModeRunAsAdmin => 'TUN模式需要系统管理员权限,请以管理员身份重新启动应用';
	@override String get tunStack => '网络栈';
	@override String get tunHijackTips => '关闭后,来自TUN的DNS请求将会被直接转发给对应的DNS服务器';
	@override String get launchAtStartup => '开机启动';
	@override String get quitWhenSwitchSystemUser => '切换系统用户时退出应用';
	@override String get handleScheme => '系统Scheme调用';
	@override String get portableMode => '便携模式';
	@override String get portableModeDisableTips => '如需退出便携模式,请退出[karing]后,手动删除[karing.exe]同目录下的[profiles]文件夹即可';
	@override String get accessibility => '无障碍';
	@override String get handleKaringScheme => '处理karing://调用';
	@override String get handleClashScheme => '处理clash://调用';
	@override String get handleSingboxScheme => '处理sing-box://调用';
	@override String get alwayOnVPN => '始终开启连接';
	@override String get disconnectAfterSleep => '系统休眠后断开连接';
	@override String get removeSystemVPNConfig => '删除系统VPN配置';
	@override String get timeConnectOrDisconnect => '定时连接/断开';
	@override String get timeConnectOrDisconnectTips => 'VPN必须处于连接状态才会生效;开启后,[自动休眠]将失效';
	@override String timeConnectAndDisconnectInterval({required Object p}) => '连接/断开时间间隔不能低于${p}分钟';
	@override String get disableFontScaler => '禁用字体缩放';
	@override String get autoOrientation => '跟随屏幕旋转';
	@override String get restartTakesEffect => '重启生效';
	@override String get reconnectTakesEffect => '重新连接后生效';
	@override String get resetSettings => '重置设置';
	@override String get cleanCache => '清理缓存';
	@override String get cleanCacheDone => '清理完成';
	@override String get appleTestFlight => '苹果 TestFlight';
	@override String get appleAppStore => '苹果 AppStore';
	@override String hasNewVersion({required Object p}) => '更新版本 ${p}';
	@override String get follow => '关注我们';
	@override String get contactUs => '联系我们';
	@override String get supportUs => '支持我们';
	@override String get rateInApp => '评分';
	@override String get rateInAppStore => '在App Store上评分';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenZhCn implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => '您的隐私很重要';
	@override String get agreeAndContinue => '接受并继续';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenZhCn implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => '新版本[${p}]已就绪';
	@override String get update => '重启更新';
	@override String get cancel => '暂不更新';
}

// Path: CommonWidget
class _TranslationsCommonWidgetZhCn implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => '如果开启了[始终开启VPN], 请关闭[始终开启VPN]后重试连接';
	@override String get resetPort => '请将端口改为其他可用端口或者关闭占用该端口的应用';
}

// Path: main
class _TranslationsMainZhCn implements TranslationsMainEn {
	_TranslationsMainZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayZhCn tray = _TranslationsMainTrayZhCn._(_root);
}

// Path: meta
class _TranslationsMetaZhCn implements TranslationsMetaEn {
	_TranslationsMetaZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get enable => '启用';
	@override String get disable => '禁用';
	@override String get bydefault => '默认';
	@override String get filter => '过滤';
	@override String get filterMethod => '过滤方式';
	@override String get include => '包含';
	@override String get exclude => '排除';
	@override String get all => '所有';
	@override String get prefer => '优先';
	@override String get only => '仅';
	@override String get open => '打开';
	@override String get close => '关闭';
	@override String get quit => '退出';
	@override String get add => '添加';
	@override String get addSuccess => '添加成功';
	@override String addFailed({required Object p}) => '添加失败:${p}';
	@override String get remove => '删除';
	@override String get removeConfirm => '确认删除?';
	@override String get edit => '编辑';
	@override String get view => '查看';
	@override String get more => '更多';
	@override String get tips => '提示';
	@override String get copy => '拷贝';
	@override String get paste => '粘贴';
	@override String get cut => '剪切';
	@override String get save => '保存';
	@override String get ok => '确定';
	@override String get cancel => '取消';
	@override String get feedback => '反馈';
	@override String get feedbackContent => '反馈内容';
	@override String get feedbackContentHit => '必填, 最长500字符';
	@override String get feedbackContentCannotEmpty => '反馈内容不能为空';
	@override String get faq => '常见问题';
	@override String get htmlTools => 'HTML工具集';
	@override String get download => '下载';
	@override String get upload => '上传';
	@override String get downloadSpeed => '下载速度';
	@override String get uploadSpeed => '上传速度';
	@override String get loading => '加载中...';
	@override String get convert => '转换';
	@override String get check => '检测';
	@override String get detect => '探测';
	@override String get cache => '缓存';
	@override String get days => '天';
	@override String get hours => '时';
	@override String get minutes => '分';
	@override String get seconds => '秒';
	@override String get milliseconds => '毫秒';
	@override String get tolerance => '容差';
	@override String get dateTimePeriod => '时间段';
	@override String get protocol => '协议';
	@override String get search => '搜索';
	@override String get custom => '自定义';
	@override String get inbound => '入站';
	@override String get outbound => '出站';
	@override String get destination => '目标';
	@override String get outletIpByCurrentSelected => '出口IP';
	@override String get outletIpByDirect => '出口IP:${_root.outboundRuleMode.direct}';
	@override String get connect => '连接';
	@override String get disconnect => '断开';
	@override String get reconnect => '重新连接';
	@override String get connected => '已连接';
	@override String get disconnected => '未连接';
	@override String get connecting => '连接中';
	@override String get connectTimeout => '连接超时';
	@override String get timeout => '超时';
	@override String get timeoutDuration => '超时时长';
	@override String get runDuration => '运行时长';
	@override String get latency => '延迟';
	@override String get latencyTest => '延迟检测';
	@override String get language => '语言';
	@override String get next => '下一步';
	@override String get done => '完成';
	@override String get apply => '应用';
	@override String get refresh => '刷新';
	@override String get retry => '是否重试?';
	@override String get update => '更新';
	@override String get updateInterval => '更新时间间隔';
	@override String get updateInterval5mTips => '最小:5m';
	@override String updateFailed({required Object p}) => '更新失败:${p}';
	@override String get samplingUnit => '采样时间单位';
	@override String get queryResultCount => '查询结果数量';
	@override String queryLimit({required Object p}) => '最多展示${p}数据';
	@override String get none => '无';
	@override String get start => '开始';
	@override String get pause => '暂停';
	@override String get reset => '重置';
	@override String get submit => '提交';
	@override String get user => '用户';
	@override String get account => '账号';
	@override String get password => '密码';
	@override String get decryptPassword => '解密密码';
	@override String get required => '必填';
	@override String get type => '类型';
	@override String get path => '路径';
	@override String get local => '本地';
	@override String get remote => '远程';
	@override String get other => '其他';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL无效';
	@override String get urlCannotEmpty => 'URL不能为空';
	@override String get urlTooLong => 'URL过长(>8182)';
	@override String get copyUrl => '拷贝链接';
	@override String get openUrl => '打开链接';
	@override String get shareUrl => '分享链接';
	@override String get speedTestUrl => '测速URL';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => '静态IP';
	@override String get staticIPTips => '需要开启[TUN HijackDNS]或[${_root.SettingsScreen.inboundDomainResolve}]';
	@override String get isp => '机场';
	@override String get domainSuffix => '域名后缀';
	@override String get domain => '域名';
	@override String get domainKeyword => '域名关键词';
	@override String get domainRegex => '域名正则';
	@override String get ip => 'IP';
	@override String get port => '端口';
	@override String get portRange => '端口范围';
	@override String get appPackage => '应用包Id';
	@override String get processName => '进程名称';
	@override String get processPath => '进程路径';
	@override String get processDir => '进程目录';
	@override String get systemProxy => '系统代理';
	@override String get percentage => '百分比';
	@override String get statistics => '统计';
	@override String get statisticsAndAnalysis => '统计与分析';
	@override String get statisticsDataDesensitize => '数据脱敏';
	@override String get statisticsDataDesensitizeTips => '进程/包ID/目标域名/目标IP等将会被*替代脱敏后保存';
	@override String get records => '记录';
	@override String get requestRecords => '请求记录';
	@override String get netInterfaces => '网络接口';
	@override String get netSpeed => '速度';
	@override String get memoryTrendChart => '内存趋势图';
	@override String get goroutinesTrendChart => 'GoRoutines趋势图';
	@override String get trafficTrendChart => '流量趋势图';
	@override String get trafficDistributionChart => '流量分布图';
	@override String get connectionChart => '连接趋势图';
	@override String get memoryChart => '内存趋势图';
	@override String get trafficStatistics => '流量统计';
	@override String get traffic => '流量';
	@override String get trafficTotal => '总流量';
	@override String get trafficProxy => '代理流量';
	@override String get trafficDirect => '直连流量';
	@override String get website => '官网';
	@override String get memory => '内存';
	@override String get outboundMode => '出站模式';
	@override String get rule => '规则';
	@override String get global => '全局';
	@override String get qrcode => '二维码';
	@override String get qrcodeTooLong => '文本过长,无法展示';
	@override String get qrcodeShare => '分享二维码';
	@override String get textToQrcode => '文本转二维码';
	@override String get qrcodeScan => '扫描二维码';
	@override String get qrcodeScanResult => '扫描结果';
	@override String get qrcodeScanFromImage => '打开二维码图片';
	@override String get qrcodeScanResultFailed => '解析图片失败,请确保截图为有效的二维码';
	@override String get qrcodeScanResultEmpty => '扫描结果为空';
	@override String get screenshot => '截图';
	@override String get backupAndSync => '备份与同步';
	@override String get autoBackup => '自动备份';
	@override String get noProfileGotAutoBackup => '如果[${_root.meta.myProfiles}]等数据丢失,可以从[${_root.meta.backupAndSync}-${_root.meta.autoBackup}]或其他备份源(比如iCloud或Webdav等)恢复数据';
	@override String get autoBackupAddProfile => '添加配置后';
	@override String get autoBackupRemoveProfile => '删除配置后';
	@override String get profile => '配置';
	@override String get currentProfile => '当前配置';
	@override String get importAndExport => '导入/导出';
	@override String get import => '导入';
	@override String get importFromUrl => '从URL导入';
	@override String get export => '导出';
	@override String get send => '发送';
	@override String get receive => '接收';
	@override String get sendConfirm => '确认发送?';
	@override String get termOfUse => '使用条款';
	@override String get privacyPolicy => '隐私政策';
	@override String get about => '关于';
	@override String get name => '名称';
	@override String get version => '版本';
	@override String get notice => '通知';
	@override String appNotifyWithReason({required Object p, required Object p1}) => '动作:${p}\n原因:${p1}';
	@override String get sort => '排序';
	@override String get novice => '新手模式';
	@override String get willCompleteAfterRebootInstall => '请重启设备,以便完成系统扩展安装';
	@override String get willCompleteAfterRebootUninstall => '请重启设备,以便完成系统扩展卸载';
	@override String get requestNeedsUserApproval => '1. [系统设置]-[隐私与安全性]里[允许] Karing安装系统扩展\n2. [系统设置]-[通用]-[登录项与扩展-网络扩展]启用[karingServiceSE]\n完成后重新连接';
	@override String get FullDiskAccessPermissionRequired => '请在[系统设置]-[隐私与安全性]-[完全磁盘访问权限]里开启[karingServiceSE]权限后,重新连接';
	@override String get tvMode => 'TV模式';
	@override String get recommended => '推荐';
	@override String innerError({required Object p}) => '内部错误:${p}';
	@override String get logicOperation => '逻辑运算';
	@override String get share => '分享';
	@override String get candidateWord => '候选词';
	@override String get keywordOrRegx => '关键词/正则';
	@override String get importFromClipboard => '从剪贴板导入';
	@override String get exportToClipboard => '导出到剪贴板';
	@override String get server => '服务器';
	@override String get ads => '广告';
	@override String get adsRemove => '移除广告';
	@override String get donate => '捐助';
	@override String get diversion => '分流';
	@override String get diversionRules => '分流规则';
	@override String get diversionCustomGroup => '自定义分流组';
	@override String get urlTestCustomGroup => '自定义自动选择';
	@override String get setting => '设置';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => '局域网同步';
	@override String get lanSyncNotQuitTips => '同步完成前请勿退出此界面';
	@override String get deviceNoSpace => '磁盘空间不足';
	@override String get hideSystemApp => '隐藏系统应用';
	@override String get hideAppIcon => '隐藏应用图标';
	@override String get hideDockIcon => '隐藏Dock图标';
	@override String get remark => '备注';
	@override String get remarkExist => '备注已存在,请使用其他名称';
	@override String get remarkCannotEmpty => '备注不能为空';
	@override String get remarkTooLong => '备注最长32字符';
	@override String get openDir => '打开文件目录';
	@override String get fileChoose => '选择文件';
	@override String get filePathCannotEmpty => '文件路径不能为空';
	@override String fileNotExist({required Object p}) => '文件不存在:${p}';
	@override String fileTypeInvalid({required Object p}) => '无效的文件类型:${p}';
	@override String get uwpExemption => 'UWP网络隔离豁免';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => '获取配置';
	@override String get addProfile => '添加配置';
	@override String get myProfiles => '我的配置';
	@override String get profileEdit => '编辑配置';
	@override String get profileEditUrlExist => 'URL已存在,请使用其他URL';
	@override String get profileEditReloadAfterProfileUpdate => '配置更新后重新加载';
	@override String get profileEditTestLatencyAfterProfileUpdate => '配置自动更新后启动延迟检测';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN需要处于已连接状态,并且开启[配置更新后重新加载]';
	@override String get profileEditTestLatencyAutoRemove => '自动移除延迟检测失败的服务器';
	@override String get profileEditTestLatencyAutoRemoveTips => '最多尝试3次';
	@override String get profileImport => '导入配置文件';
	@override String get profileAddUrlOrContent => '添加配置链接';
	@override String get profileExists => '配置已存在,请勿重复添加';
	@override String get profileUrlOrContent => '配置链接/内容';
	@override String get profileUrlOrContentHit => '配置链接/内容[必填] (支持Clash,V2ray(支持批量),Stash,Karing,Sing-box,Shadowsocks,Sub,Github配置链接)';
	@override String get profileUrlOrContentCannotEmpty => '配置链接不能为空';
	@override String profileAddFailedFormatException({required Object p}) => '格式错误,请订正后重新添加:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => '添加失败:${p}, 请尝试修改[UserAgent]后重试,或者用设备自带的浏览器打开配置链接,并将浏览器下载的配置文件导入到本应用';
	@override String profileAddFailedHandshakeException({required Object p}) => '添加失败:${p}, 请打开代理或者修改当前代理节点后重试';
	@override String get profileAddParseFailed => '解析配置失败';
	@override String get profileAddNoServerAvaliable => '无可用服务器,请确保配置链接或配置文件有效;如果你的配置来源于GitHub,请从页面上的[Raw]按钮获取链接地址';
	@override String get profileAddWrapSuccess => '配置生成成功,请到[${_root.meta.myProfiles}]查看';
}

// Path: isp
class _TranslationsIspZhCn implements TranslationsIspEn {
	_TranslationsIspZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get bind => '绑定到[${_root.meta.isp}]';
	@override String unbind({required Object p}) => '解除绑定[${p}]';
	@override String faq({required Object p}) => '常见问题[${p}]';
	@override String customerService({required Object p}) => '客服[${p}]';
	@override String follow({required Object p}) => '关注[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}]无效或已过期';
}

// Path: permission
class _TranslationsPermissionZhCn implements TranslationsPermissionEn {
	_TranslationsPermissionZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get camera => '摄像头';
	@override String get screen => '屏幕录制';
	@override String get appQuery => '获取应用列表';
	@override String request({required Object p}) => '开启[${p}]权限';
	@override String requestNeed({required Object p}) => '请开启[${p}]权限';
}

// Path: tls
class _TranslationsTlsZhCn implements TranslationsTlsEn {
	_TranslationsTlsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get insecure => '跳过证书验证';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => '启用TLS分段';
	@override String get fragmentSize => 'TLS分段大小';
	@override String get fragmentSleep => 'TLS分段休眠';
	@override String get mixedCaseSNIEnable => '启用TLS混合SNI';
	@override String get paddingEnable => '启用TLS填充';
	@override String get paddingSize => 'TLS填充大小';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeZhCn implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => '当前选择';
	@override String get urltest => '自动选择';
	@override String get direct => '直连';
	@override String get block => '拦截';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeZhCn implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyZhCn implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonZhCn implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => '配置更新';
}

// Path: theme
class _TranslationsThemeZhCn implements TranslationsThemeEn {
	_TranslationsThemeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get light => '浅色';
	@override String get dark => '黑色';
	@override String get auto => '自动';
}

// Path: main.tray
class _TranslationsMainTrayZhCn implements TranslationsMainTrayEn {
	_TranslationsMainTrayZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => '打开';
	@override String get menuExit => '退出';
}

/// The flat map containing all translations for locale <zh-CN>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZhCn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => '安装参考',
			'AboutScreen.installTime' => '安装时间',
			'AboutScreen.versionChannel' => '自动更新通道',
			'AboutScreen.updateWhenConnected' => '连接后再检查更新',
			'AboutScreen.autoDownloadPkg' => '自动下载更新包',
			'AboutScreen.disableAppImproveData' => '应用改进数据',
			'AboutScreen.disableUAReportTip' => '开启[${_root.AboutScreen.disableAppImproveData}]有助于我们改进产品稳定性与可用性,我们不会收集任何个人隐私数据;禁用后,应用将不会再收集任何数据',
			'AboutScreen.devOptions' => '开发者选项',
			'AboutScreen.enableDebugLog' => '开启调试日志',
			'AboutScreen.viewFilsContent' => '查看文件',
			'AboutScreen.enablePprof' => '启用pprof',
			'AboutScreen.pprofPanel' => 'pprof面板',
			'AboutScreen.allowRemoteAccessPprof' => '允许远程访问${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => '允许远程访问${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => '使用原始sing-box配置',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => '服务器地址',
			'BackupAndSyncWebdavScreen.webdavRequired' => '不能为空',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => '登录失败:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => '获取文件列表失败:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => '无效的 [Domain]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => '无效的 [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => '无效的 [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => '无效的 [Rule Set]:${p}, URL必须是有效的https URL,并且文件扩展名为.srs/.json的binary文件',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => '无效的 [Rule Set(build-in)]:${p}, 格式为geosite:xxx 或 geoip:xxx 或 acl:xxx,并且xxx应为有效的规则名',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => '无效的 [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => '提示:保存后,请到[${_root.meta.diversionRules}]设置相关规则,否则不会生效',
			'DiversionRuleDetectScreen.title' => '分流规则探测',
			'DiversionRuleDetectScreen.rule' => '规则:',
			'DiversionRuleDetectScreen.outbound' => '代理服务器:',
			'DiversionRulesScreen.diversionRulesMatchTips' => '提示:从上到下依次尝试匹配规则,如果没有匹配到规则,则使用[final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP 不能为空',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL 不能为空',
			'DnsSettingsScreen.error' => ({required Object p}) => '不支持的类型:${p}',
			'DnsSettingsScreen.dnsDesc' => '第一列延迟数据为直连查询延迟;\n第二列:开启[[代理流量]通过代理服务器解析DNS]:延迟数据为通过当前代理服务器转发的查询延迟;未开启[[代理流量]通过代理服务器解析DNS]:延迟数据为直连查询延迟',
			'FileContentViewerScreen.title' => '文件内容查看',
			'FileContentViewerScreen.clearFileContent' => '确认清空文件内容?',
			'FileContentViewerScreen.clearFileContentTips' => '确认清空配置文件内容? 清空配置文件可能会导致数据丢失或应用功能异常, 请谨慎操作',
			'HomeScreen.toSelectServer' => '请选择服务器',
			'HomeScreen.invalidServer' => '已失效,请重新选择',
			'HomeScreen.disabledServer' => '已被禁用,请重新选择',
			'HomeScreen.expiredServer' => '无可用服务器:配置可能已过期或被禁用',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => '请先设置[快捷链接]后再使用',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => '代理服务器[${p}>${p1}]过多,可能因系统内存限制而无法连接',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => '代理服务器[${p}>${p1}]过多,可能导致连接缓慢或无法连接',
			'LaunchFailedScreen.invalidProcess' => '应用启动失败[无效的进程名称],请重新安装应用到独立目录',
			'LaunchFailedScreen.invalidProfile' => '应用启动失败[访问配置文件失败],请重新安装应用',
			'LaunchFailedScreen.invalidVersion' => '应用启动失败[无效版本],请重新安装应用',
			'LaunchFailedScreen.systemVersionLow' => '应用启动失败[系统版本过低]',
			'LaunchFailedScreen.invalidInstallPath' => '无效的安装路径,请重新安装到有效路径',
			'MyProfilesMergeScreen.profilesMerge' => '配置合并',
			'MyProfilesMergeScreen.profilesMergeTarget' => '目标配置',
			'MyProfilesMergeScreen.profilesMergeSource' => '源配置',
			'MyProfilesMergeScreen.profilesMergeTips' => '提示:源配置的分流信息将会被丢弃',
			'NetCheckScreen.title' => '网络检测',
			'NetCheckScreen.warn' => '注意:由于受网络环境及分流规则等影响,测试结果并不完全等价实际中使用的效果',
			'NetCheckScreen.invalidDomain' => '无效域名',
			'NetCheckScreen.connectivity' => '网络联通性',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Ipv4 连接测试[${p}]全部失败',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Ipv4 连接成功',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Ipv6 连接测试[${p}]全部失败, 你的网络可能不支持ipv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Ipv6 连接成功',
			'NetCheckScreen.connectivityTestOk' => '网络已接入互联网',
			'NetCheckScreen.connectivityTestFailed' => '网络尚未接入互联网',
			'NetCheckScreen.remoteRulesetsDownloadOk' => '全部下载成功',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => '正在下载或下载失败',
			'NetCheckScreen.outbound' => '代理服务器',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}]连接成功',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}]连接失败\n错误:[${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS服务器',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]域名解析成功\nDNS规则:[${p2}]\n延迟:[${p3} ms]\n地址:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]域名解析失败\n规则:[${p2}]\n错误:[${p3}]',
			'NetCheckScreen.host' => 'HTTP连接',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\n分流规则:[${p2}]\n代理服务器:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => '连接成功',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => '连接失败:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => '域名/IP',
			'NetConnectionsFilterScreen.app' => '应用',
			'NetConnectionsFilterScreen.rule' => '规则',
			'NetConnectionsFilterScreen.chain' => '出站',
			'NetConnectionsScreen.copyAsCSV' => '已复制为CSV格式',
			'NetConnectionsScreen.selectType' => '选择分流类型',
			'PerAppAndroidScreen.title' => '分应用代理',
			'PerAppAndroidScreen.whiteListMode' => '白名单模式',
			'PerAppAndroidScreen.whiteListModeTip' => '启用后:仅代理已勾选的App;未启用:仅代理未勾选的App',
			'RegionSettingsScreen.title' => '国家与地区',
			'RegionSettingsScreen.Regions' => '提示:请正确设置你当前所在国家或地区,否则可能会导致分流错误',
			'ServerSelectScreen.title' => '选择服务器',
			'ServerSelectScreen.autoSelectServer' => '自动选择延迟最低的服务器',
			'ServerSelectScreen.recentUse' => '最近使用',
			'ServerSelectScreen.myFav' => '我的收藏',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => '所选服务器为本地地址,可能无法正常使用:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => '所选服务器为IPv6地址,需要[启用IPv6]',
			'ServerSelectScreen.selectDisabled' => '该服务器已被禁用',
			'ServerSelectScreen.error404' => '延迟检测遇到错误,请检查是否存在内容相同的配置',
			'SettingsScreen.getTranffic' => '获取流量',
			'SettingsScreen.tutorial' => '使用教程',
			'SettingsScreen.commonlyUsedRulesets' => '常用规则集',
			'SettingsScreen.htmlBoard' => '在线面板',
			'SettingsScreen.dnsLeakDetection' => 'DNS泄露检测',
			'SettingsScreen.proxyLeakDetection' => '代理泄露检测',
			'SettingsScreen.speedTest' => '测速',
			'SettingsScreen.rulesetDirectDownlad' => 'Rule Set直连下载',
			'SettingsScreen.hideUnusedDiversionGroup' => '隐藏未启用的分流规则',
			'SettingsScreen.disableISPDiversionGroup' => '禁用[${_root.meta.isp}]${_root.meta.diversionRules}',
			'SettingsScreen.portSettingRule' => '基于规则',
			'SettingsScreen.portSettingDirectAll' => '全直连',
			'SettingsScreen.portSettingProxyAll' => '全代理',
			'SettingsScreen.portSettingControl' => '控制与同步',
			'SettingsScreen.portSettingCluster' => '集群服务',
			'SettingsScreen.modifyPort' => '修改端口',
			'SettingsScreen.modifyPortOccupied' => '端口已被占用,请使用其他端口',
			'SettingsScreen.ipStrategyTips' => '启用前,请先确认你的网络已支持IPv6,否则某些流量无法正常访问',
			'SettingsScreen.tunAppendHttpProxy' => '附加HTTP代理到VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => '一些App会绕过虚拟网卡设备直连HTTP代理',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => '允许绕过HTTP代理的域名',
			'SettingsScreen.dnsEnableRule' => '启用DNS分流规则',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}]解析通道',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}]启用ECS',
			'SettingsScreen.dnsTestDomain' => '测试域名',
			'SettingsScreen.dnsTestDomainInvalid' => '无效的域名',
			'SettingsScreen.dnsTypeOutbound' => '代理服务器',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS服务器',
			'SettingsScreen.dnsEnableRuleTips' => '启用后,域名会根据分流规则选择对应的DNS服务器进行解析',
			'SettingsScreen.dnsEnableFakeIpTips' => '启用FakeIP后,如果断开VPN连接,你的应用可能需要重启;此功能需要开启[TUN模式]',
			'SettingsScreen.dnsTypeOutboundTips' => '用于[${_root.SettingsScreen.dnsTypeOutbound}]的域名解析',
			'SettingsScreen.dnsTypeDirectTips' => '用于[${_root.meta.trafficDirect}]的域名解析',
			'SettingsScreen.dnsTypeProxyTips' => '用于[${_root.meta.trafficProxy}]的域名解析',
			'SettingsScreen.dnsTypeResolverTips' => '用于[${_root.SettingsScreen.dnsTypeResolver}]的域名解析',
			'SettingsScreen.dnsAutoSetServer' => '自动设置服务器',
			'SettingsScreen.dnsResetServer' => '重置服务器',
			'SettingsScreen.dnsEnableStaticIPForResolver' => '优先静态解析',
			'SettingsScreen.dnsEnableStaticIPForResolverTips' => '有效防止DNS服务器本身解析时被污染',
			'SettingsScreen.inboundDomainResolve' => '解析入站域名',
			'SettingsScreen.privateDirect' => '私有网络直连',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => '某些未配置分流规则的域名需要解析后才可能命中基于IP的分流规则;此功能影响代理端口[${p}]的入站请求',
			'SettingsScreen.useRomoteRes' => '使用远程资源',
			'SettingsScreen.autoAppendRegion' => '自动附加基础规则',
			'SettingsScreen.autoSelect' => '自动选择',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => '忽略[前置/链式]代理服务器',
			'SettingsScreen.autoSelectServerInterval' => '延迟检测时间间隔',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => '当前服务器健康检测时间间隔',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => '网络变化时重新检测',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => '手动延时检测后更新当前服务器',
			'SettingsScreen.autoSelectServerIntervalTips' => '延迟检测时间间隔越短,服务器延迟数据更新越及时,但会占用更多资源,耗电更快',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => '如果检测失败,则切换节点;如果切换节点时,未找到可用节点,则对该组重新进行延迟检测',
			'SettingsScreen.autoSelectServerFavFirst' => '优先使用[我的收藏]',
			'SettingsScreen.autoSelectServerFavFirstTips' => '如果[我的收藏]列表不为空,则使用[我的收藏]里的服务器',
			'SettingsScreen.autoSelectServerFilter' => '过滤无效服务器',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => '服务器延迟检测失败的将会被过滤掉;如果过滤后无服务器可用,则改用前[${p}]个服务器',
			'SettingsScreen.autoSelectServerLimitedNum' => '服务器数量上限',
			'SettingsScreen.autoSelectServerLimitedNumTips' => '超过该数量的服务器将被过滤掉',
			'SettingsScreen.numInvalid' => '无效的数字',
			'SettingsScreen.hideInvalidServer' => '隐藏无效服务器',
			'SettingsScreen.sortServer' => '服务器排序',
			'SettingsScreen.sortServerTips' => '按延迟由低到高排序',
			'SettingsScreen.selectServerHideRecommand' => '隐藏[推荐]',
			'SettingsScreen.selectServerHideRecent' => '隐藏[最近使用]',
			'SettingsScreen.selectServerHideFav' => '隐藏[我的收藏]',
			'SettingsScreen.homeScreen' => '主屏',
			'SettingsScreen.theme' => '主题',
			'SettingsScreen.widgetsAlpha' => 'Widgets 透明度',
			'SettingsScreen.widgetsEmpty' => '无可用Widget',
			'SettingsScreen.backgroundImage' => '背景图',
			'SettingsScreen.myLink' => '快捷链接',
			'SettingsScreen.autoConnectAfterLaunch' => '启动后自动连接',
			'SettingsScreen.autoConnectAtBoot' => '系统启动后自动连接',
			'SettingsScreen.autoConnectAtBootTips' => '需要系统支持,部分系统可能还需要开启[自启动]',
			'SettingsScreen.hideAfterLaunch' => '启动后隐藏窗口',
			'SettingsScreen.autoSetSystemProxy' => '连接后自动设置系统代理',
			'SettingsScreen.bypassSystemProxy' => '允许绕过系统代理的域名',
			'SettingsScreen.disconnectWhenQuit' => '退出应用时关闭连接',
			'SettingsScreen.autoAddToFirewall' => '自动添加防火墙规则',
			'SettingsScreen.excludeFromRecent' => '从[最近任务]中隐藏',
			'SettingsScreen.wakeLock' => '唤醒锁',
			'SettingsScreen.hideVpn' => '隐藏VPN图标',
			'SettingsScreen.hideVpnTips' => '开启IPv6会导致此功能失效',
			'SettingsScreen.allowBypass' => '允许应用绕过VPN',
			'SettingsScreen.importSuccess' => '导入成功',
			'SettingsScreen.rewriteConfirm' => '该文件将覆盖本地已有配置,是否继续?',
			'SettingsScreen.mergePerapp' => '合并本地[${_root.PerAppAndroidScreen.title}]列表',
			'SettingsScreen.networkShare' => '网络共享',
			'SettingsScreen.frontProxy' => '前置/链式代理',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => '数据->前置/链式代理服务器[多个代理服务器:由上到下]->代理服务器[${p}]->目标服务器',
			'SettingsScreen.allowOtherHostsConnect' => '允许其他主机接入',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => '由于系统限制,开启后,本设备上使用http访问网络的应用可能无法正常连接网络',
			'SettingsScreen.tunAutoRoute' => '自动路由',
			'SettingsScreen.tunAutoRedirect' => '自动重定向',
			'SettingsScreen.tunStrictRoute' => '严格路由',
			'SettingsScreen.tunStrictRouteTips' => '如果开启共享后,其他无法接入此设备,请尝试关闭此开关',
			'SettingsScreen.loopbackAddress' => '环回地址',
			'SettingsScreen.enableCluster' => '开启Socks/Http代理集群',
			'SettingsScreen.clusterAllowOtherHostsConnect' => '允许其他主机接入代理集群',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => '代理集群认证',
			'SettingsScreen.tunMode' => 'TUN模式',
			'SettingsScreen.tuni4Address' => 'IP地址',
			'SettingsScreen.tunModeTips' => 'TUN模式将接管系统所有流量[此模式下无需开启系统代理]',
			'SettingsScreen.tunModeRunAsAdmin' => 'TUN模式需要系统管理员权限,请以管理员身份重新启动应用',
			'SettingsScreen.tunStack' => '网络栈',
			'SettingsScreen.tunHijackTips' => '关闭后,来自TUN的DNS请求将会被直接转发给对应的DNS服务器',
			'SettingsScreen.launchAtStartup' => '开机启动',
			'SettingsScreen.quitWhenSwitchSystemUser' => '切换系统用户时退出应用',
			'SettingsScreen.handleScheme' => '系统Scheme调用',
			'SettingsScreen.portableMode' => '便携模式',
			'SettingsScreen.portableModeDisableTips' => '如需退出便携模式,请退出[karing]后,手动删除[karing.exe]同目录下的[profiles]文件夹即可',
			'SettingsScreen.accessibility' => '无障碍',
			'SettingsScreen.handleKaringScheme' => '处理karing://调用',
			'SettingsScreen.handleClashScheme' => '处理clash://调用',
			'SettingsScreen.handleSingboxScheme' => '处理sing-box://调用',
			'SettingsScreen.alwayOnVPN' => '始终开启连接',
			'SettingsScreen.disconnectAfterSleep' => '系统休眠后断开连接',
			'SettingsScreen.removeSystemVPNConfig' => '删除系统VPN配置',
			'SettingsScreen.timeConnectOrDisconnect' => '定时连接/断开',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN必须处于连接状态才会生效;开启后,[自动休眠]将失效',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => '连接/断开时间间隔不能低于${p}分钟',
			'SettingsScreen.disableFontScaler' => '禁用字体缩放',
			'SettingsScreen.autoOrientation' => '跟随屏幕旋转',
			'SettingsScreen.restartTakesEffect' => '重启生效',
			'SettingsScreen.reconnectTakesEffect' => '重新连接后生效',
			'SettingsScreen.resetSettings' => '重置设置',
			'SettingsScreen.cleanCache' => '清理缓存',
			'SettingsScreen.cleanCacheDone' => '清理完成',
			'SettingsScreen.appleTestFlight' => '苹果 TestFlight',
			'SettingsScreen.appleAppStore' => '苹果 AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => '更新版本 ${p}',
			'SettingsScreen.follow' => '关注我们',
			'SettingsScreen.contactUs' => '联系我们',
			'SettingsScreen.supportUs' => '支持我们',
			'SettingsScreen.rateInApp' => '评分',
			'SettingsScreen.rateInAppStore' => '在App Store上评分',
			'UserAgreementScreen.privacyFirst' => '您的隐私很重要',
			'UserAgreementScreen.agreeAndContinue' => '接受并继续',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => '新版本[${p}]已就绪',
			'VersionUpdateScreen.update' => '重启更新',
			'VersionUpdateScreen.cancel' => '暂不更新',
			'CommonWidget.diableAlwayOnVPN' => '如果开启了[始终开启VPN], 请关闭[始终开启VPN]后重试连接',
			'CommonWidget.resetPort' => '请将端口改为其他可用端口或者关闭占用该端口的应用',
			'main.tray.menuOpen' => '打开',
			'main.tray.menuExit' => '退出',
			'meta.enable' => '启用',
			'meta.disable' => '禁用',
			'meta.bydefault' => '默认',
			'meta.filter' => '过滤',
			'meta.filterMethod' => '过滤方式',
			'meta.include' => '包含',
			'meta.exclude' => '排除',
			'meta.all' => '所有',
			'meta.prefer' => '优先',
			'meta.only' => '仅',
			'meta.open' => '打开',
			'meta.close' => '关闭',
			'meta.quit' => '退出',
			'meta.add' => '添加',
			'meta.addSuccess' => '添加成功',
			'meta.addFailed' => ({required Object p}) => '添加失败:${p}',
			'meta.remove' => '删除',
			'meta.removeConfirm' => '确认删除?',
			'meta.edit' => '编辑',
			'meta.view' => '查看',
			'meta.more' => '更多',
			'meta.tips' => '提示',
			'meta.copy' => '拷贝',
			'meta.paste' => '粘贴',
			'meta.cut' => '剪切',
			'meta.save' => '保存',
			'meta.ok' => '确定',
			'meta.cancel' => '取消',
			'meta.feedback' => '反馈',
			'meta.feedbackContent' => '反馈内容',
			'meta.feedbackContentHit' => '必填, 最长500字符',
			'meta.feedbackContentCannotEmpty' => '反馈内容不能为空',
			'meta.faq' => '常见问题',
			'meta.htmlTools' => 'HTML工具集',
			'meta.download' => '下载',
			'meta.upload' => '上传',
			'meta.downloadSpeed' => '下载速度',
			'meta.uploadSpeed' => '上传速度',
			'meta.loading' => '加载中...',
			'meta.convert' => '转换',
			'meta.check' => '检测',
			'meta.detect' => '探测',
			'meta.cache' => '缓存',
			'meta.days' => '天',
			'meta.hours' => '时',
			'meta.minutes' => '分',
			'meta.seconds' => '秒',
			'meta.milliseconds' => '毫秒',
			'meta.tolerance' => '容差',
			'meta.dateTimePeriod' => '时间段',
			'meta.protocol' => '协议',
			'meta.search' => '搜索',
			'meta.custom' => '自定义',
			'meta.inbound' => '入站',
			'meta.outbound' => '出站',
			'meta.destination' => '目标',
			'meta.outletIpByCurrentSelected' => '出口IP',
			'meta.outletIpByDirect' => '出口IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => '连接',
			'meta.disconnect' => '断开',
			'meta.reconnect' => '重新连接',
			'meta.connected' => '已连接',
			'meta.disconnected' => '未连接',
			'meta.connecting' => '连接中',
			'meta.connectTimeout' => '连接超时',
			'meta.timeout' => '超时',
			'meta.timeoutDuration' => '超时时长',
			'meta.runDuration' => '运行时长',
			'meta.latency' => '延迟',
			'meta.latencyTest' => '延迟检测',
			'meta.language' => '语言',
			'meta.next' => '下一步',
			'meta.done' => '完成',
			'meta.apply' => '应用',
			'meta.refresh' => '刷新',
			'meta.retry' => '是否重试?',
			'meta.update' => '更新',
			'meta.updateInterval' => '更新时间间隔',
			'meta.updateInterval5mTips' => '最小:5m',
			'meta.updateFailed' => ({required Object p}) => '更新失败:${p}',
			'meta.samplingUnit' => '采样时间单位',
			'meta.queryResultCount' => '查询结果数量',
			'meta.queryLimit' => ({required Object p}) => '最多展示${p}数据',
			'meta.none' => '无',
			'meta.start' => '开始',
			'meta.pause' => '暂停',
			'meta.reset' => '重置',
			'meta.submit' => '提交',
			'meta.user' => '用户',
			'meta.account' => '账号',
			'meta.password' => '密码',
			'meta.decryptPassword' => '解密密码',
			'meta.required' => '必填',
			'meta.type' => '类型',
			'meta.path' => '路径',
			'meta.local' => '本地',
			'meta.remote' => '远程',
			'meta.other' => '其他',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL无效',
			'meta.urlCannotEmpty' => 'URL不能为空',
			'meta.urlTooLong' => 'URL过长(>8182)',
			'meta.copyUrl' => '拷贝链接',
			'meta.openUrl' => '打开链接',
			'meta.shareUrl' => '分享链接',
			'meta.speedTestUrl' => '测速URL',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => '静态IP',
			'meta.staticIPTips' => '需要开启[TUN HijackDNS]或[${_root.SettingsScreen.inboundDomainResolve}]',
			'meta.isp' => '机场',
			'meta.domainSuffix' => '域名后缀',
			'meta.domain' => '域名',
			'meta.domainKeyword' => '域名关键词',
			'meta.domainRegex' => '域名正则',
			'meta.ip' => 'IP',
			'meta.port' => '端口',
			'meta.portRange' => '端口范围',
			'meta.appPackage' => '应用包Id',
			'meta.processName' => '进程名称',
			'meta.processPath' => '进程路径',
			'meta.processDir' => '进程目录',
			'meta.systemProxy' => '系统代理',
			'meta.percentage' => '百分比',
			'meta.statistics' => '统计',
			'meta.statisticsAndAnalysis' => '统计与分析',
			'meta.statisticsDataDesensitize' => '数据脱敏',
			'meta.statisticsDataDesensitizeTips' => '进程/包ID/目标域名/目标IP等将会被*替代脱敏后保存',
			'meta.records' => '记录',
			'meta.requestRecords' => '请求记录',
			'meta.netInterfaces' => '网络接口',
			'meta.netSpeed' => '速度',
			'meta.memoryTrendChart' => '内存趋势图',
			'meta.goroutinesTrendChart' => 'GoRoutines趋势图',
			'meta.trafficTrendChart' => '流量趋势图',
			'meta.trafficDistributionChart' => '流量分布图',
			'meta.connectionChart' => '连接趋势图',
			'meta.memoryChart' => '内存趋势图',
			'meta.trafficStatistics' => '流量统计',
			'meta.traffic' => '流量',
			'meta.trafficTotal' => '总流量',
			'meta.trafficProxy' => '代理流量',
			'meta.trafficDirect' => '直连流量',
			'meta.website' => '官网',
			'meta.memory' => '内存',
			'meta.outboundMode' => '出站模式',
			'meta.rule' => '规则',
			'meta.global' => '全局',
			'meta.qrcode' => '二维码',
			'meta.qrcodeTooLong' => '文本过长,无法展示',
			'meta.qrcodeShare' => '分享二维码',
			'meta.textToQrcode' => '文本转二维码',
			'meta.qrcodeScan' => '扫描二维码',
			'meta.qrcodeScanResult' => '扫描结果',
			'meta.qrcodeScanFromImage' => '打开二维码图片',
			'meta.qrcodeScanResultFailed' => '解析图片失败,请确保截图为有效的二维码',
			'meta.qrcodeScanResultEmpty' => '扫描结果为空',
			'meta.screenshot' => '截图',
			'meta.backupAndSync' => '备份与同步',
			'meta.autoBackup' => '自动备份',
			'meta.noProfileGotAutoBackup' => '如果[${_root.meta.myProfiles}]等数据丢失,可以从[${_root.meta.backupAndSync}-${_root.meta.autoBackup}]或其他备份源(比如iCloud或Webdav等)恢复数据',
			'meta.autoBackupAddProfile' => '添加配置后',
			'meta.autoBackupRemoveProfile' => '删除配置后',
			'meta.profile' => '配置',
			'meta.currentProfile' => '当前配置',
			'meta.importAndExport' => '导入/导出',
			'meta.import' => '导入',
			'meta.importFromUrl' => '从URL导入',
			'meta.export' => '导出',
			'meta.send' => '发送',
			'meta.receive' => '接收',
			'meta.sendConfirm' => '确认发送?',
			'meta.termOfUse' => '使用条款',
			'meta.privacyPolicy' => '隐私政策',
			'meta.about' => '关于',
			'meta.name' => '名称',
			'meta.version' => '版本',
			'meta.notice' => '通知',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => '动作:${p}\n原因:${p1}',
			'meta.sort' => '排序',
			'meta.novice' => '新手模式',
			'meta.willCompleteAfterRebootInstall' => '请重启设备,以便完成系统扩展安装',
			'meta.willCompleteAfterRebootUninstall' => '请重启设备,以便完成系统扩展卸载',
			'meta.requestNeedsUserApproval' => '1. [系统设置]-[隐私与安全性]里[允许] Karing安装系统扩展\n2. [系统设置]-[通用]-[登录项与扩展-网络扩展]启用[karingServiceSE]\n完成后重新连接',
			'meta.FullDiskAccessPermissionRequired' => '请在[系统设置]-[隐私与安全性]-[完全磁盘访问权限]里开启[karingServiceSE]权限后,重新连接',
			'meta.tvMode' => 'TV模式',
			'meta.recommended' => '推荐',
			'meta.innerError' => ({required Object p}) => '内部错误:${p}',
			'meta.logicOperation' => '逻辑运算',
			'meta.share' => '分享',
			'meta.candidateWord' => '候选词',
			'meta.keywordOrRegx' => '关键词/正则',
			'meta.importFromClipboard' => '从剪贴板导入',
			'meta.exportToClipboard' => '导出到剪贴板',
			'meta.server' => '服务器',
			'meta.ads' => '广告',
			'meta.adsRemove' => '移除广告',
			'meta.donate' => '捐助',
			'meta.diversion' => '分流',
			'meta.diversionRules' => '分流规则',
			'meta.diversionCustomGroup' => '自定义分流组',
			'meta.urlTestCustomGroup' => '自定义自动选择',
			'meta.setting' => '设置',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => '局域网同步',
			'meta.lanSyncNotQuitTips' => '同步完成前请勿退出此界面',
			'meta.deviceNoSpace' => '磁盘空间不足',
			'meta.hideSystemApp' => '隐藏系统应用',
			'meta.hideAppIcon' => '隐藏应用图标',
			'meta.hideDockIcon' => '隐藏Dock图标',
			'meta.remark' => '备注',
			'meta.remarkExist' => '备注已存在,请使用其他名称',
			'meta.remarkCannotEmpty' => '备注不能为空',
			'meta.remarkTooLong' => '备注最长32字符',
			'meta.openDir' => '打开文件目录',
			'meta.fileChoose' => '选择文件',
			'meta.filePathCannotEmpty' => '文件路径不能为空',
			'meta.fileNotExist' => ({required Object p}) => '文件不存在:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => '无效的文件类型:${p}',
			'meta.uwpExemption' => 'UWP网络隔离豁免',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => '获取配置',
			'meta.addProfile' => '添加配置',
			'meta.myProfiles' => '我的配置',
			'meta.profileEdit' => '编辑配置',
			'meta.profileEditUrlExist' => 'URL已存在,请使用其他URL',
			'meta.profileEditReloadAfterProfileUpdate' => '配置更新后重新加载',
			'meta.profileEditTestLatencyAfterProfileUpdate' => '配置自动更新后启动延迟检测',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN需要处于已连接状态,并且开启[配置更新后重新加载]',
			'meta.profileEditTestLatencyAutoRemove' => '自动移除延迟检测失败的服务器',
			'meta.profileEditTestLatencyAutoRemoveTips' => '最多尝试3次',
			'meta.profileImport' => '导入配置文件',
			'meta.profileAddUrlOrContent' => '添加配置链接',
			'meta.profileExists' => '配置已存在,请勿重复添加',
			'meta.profileUrlOrContent' => '配置链接/内容',
			'meta.profileUrlOrContentHit' => '配置链接/内容[必填] (支持Clash,V2ray(支持批量),Stash,Karing,Sing-box,Shadowsocks,Sub,Github配置链接)',
			'meta.profileUrlOrContentCannotEmpty' => '配置链接不能为空',
			'meta.profileAddFailedFormatException' => ({required Object p}) => '格式错误,请订正后重新添加:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => '添加失败:${p}, 请尝试修改[UserAgent]后重试,或者用设备自带的浏览器打开配置链接,并将浏览器下载的配置文件导入到本应用',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => '添加失败:${p}, 请打开代理或者修改当前代理节点后重试',
			'meta.profileAddParseFailed' => '解析配置失败',
			'meta.profileAddNoServerAvaliable' => '无可用服务器,请确保配置链接或配置文件有效;如果你的配置来源于GitHub,请从页面上的[Raw]按钮获取链接地址',
			'meta.profileAddWrapSuccess' => '配置生成成功,请到[${_root.meta.myProfiles}]查看',
			'diversionRulesKeep' => '保留[${_root.meta.isp}]${_root.meta.diversionRules}',
			'diversionCustomGroupPreset' => '预置[${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => '注意:启用的项会添加/覆盖到[${_root.meta.diversionCustomGroup}]和[${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => '注意:添加完毕后可能需要手动调整排序,否则新添加的分流可能不会生效',
			'rulesetEnableTips' => '提示:开启选项后,请到[${_root.meta.diversionRules}]设置相关规则,否则不会生效',
			'ispUserAgentTips' => '[${_root.meta.isp}]会根据[HTTP]请求里的[UserAgent]下发不同订阅类型的数据',
			'ispDiversionTips' => '[${_root.meta.isp}]提供的分流规则;[V2Ray]类型的订阅不支持分流规则',
			'isp.bind' => '绑定到[${_root.meta.isp}]',
			'isp.unbind' => ({required Object p}) => '解除绑定[${p}]',
			'isp.faq' => ({required Object p}) => '常见问题[${p}]',
			'isp.customerService' => ({required Object p}) => '客服[${p}]',
			'isp.follow' => ({required Object p}) => '关注[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}]无效或已过期',
			'permission.camera' => '摄像头',
			'permission.screen' => '屏幕录制',
			'permission.appQuery' => '获取应用列表',
			'permission.request' => ({required Object p}) => '开启[${p}]权限',
			'permission.requestNeed' => ({required Object p}) => '请开启[${p}]权限',
			'tls.insecure' => '跳过证书验证',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => '启用TLS分段',
			_ => null,
		} ?? switch (path) {
			'tls.fragmentSize' => 'TLS分段大小',
			'tls.fragmentSleep' => 'TLS分段休眠',
			'tls.mixedCaseSNIEnable' => '启用TLS混合SNI',
			'tls.paddingEnable' => '启用TLS填充',
			'tls.paddingSize' => 'TLS填充大小',
			'outboundRuleMode.currentSelected' => '当前选择',
			'outboundRuleMode.urltest' => '自动选择',
			'outboundRuleMode.direct' => '直连',
			'outboundRuleMode.block' => '拦截',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => '配置更新',
			'theme.light' => '浅色',
			'theme.dark' => '黑色',
			'theme.auto' => '自动',
			'downloadProxyStrategy' => '下载通道',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]:通过代理服务器连接DNS服务器解析域名\n[${_root.dnsProxyResolveMode.direct}]:直接连接DNS服务器解析域名\n[${_root.dnsProxyResolveMode.fakeip}]:由代理服务器代为解析域名;如果断开VPN连接,你的应用可能需要重启;仅对[TUN]入站的流量生效',
			'routeFinal' => 'final',
			'protocolSniff' => '协议探测',
			'sendOrReceiveNotMatch' => ({required Object p}) => '请使用[${p}]',
			'turnOffPrivateDirect' => '请先开启[私有网络直连]',
			'targetConnectFailed' => ({required Object p}) => '连接[${p}]失败,请确保设备在同一个局域网内',
			'appleTVSync' => '同步当前核心配置到Apple TV - Karing',
			'appleTVSyncDone' => '同步完成,请到Apple TV - Karing开启连接/重启连接',
			'appleTVRemoveCoreConfig' => '删除Apple TV - Karing核心配置',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - Karing的核心配置文件已删除;VPN服务已断开连接',
			'appleTVUrlInvalid' => '无效的URL,请打开Apple TV - Karing,扫描Karing显示的二维码',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}]无此功能,请升级后再试',
			'appleCoreVersionNotMatch' => ({required Object p}) => '核心主版本不匹配,请升级[${p}]后再试',
			'remoteProfileEditConfirm' => '配置更新后,节点的修改将会被还原,是否继续?',
			'mustBeValidHttpsURL' => '必须为有效的 https URL',
			'fileNotExistReinstall' => ({required Object p}) => '文件缺失[${p}],请重新安装',
			'noNetworkConnect' => '无网络连接',
			'sudoPassword' => 'sudo 密码(TUN模式需要)',
			'turnOffNetworkBeforeInstall' => '建议切换到[飞行模式]后再安装更新',
			'latencyTestResolveIP' => '手动检测时,同时解析出口IP',
			'latencyTestConcurrency' => '并发数量',
			'edgeRuntimeNotInstalled' => '当前设备尚未安装Edge WebView2运行时,无法展示页面,请下载安装Edge WebView2运行时(x64)后,重启App再试',
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
