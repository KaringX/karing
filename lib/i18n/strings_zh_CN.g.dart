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
class TranslationsZhCn implements Translations {
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
	@override String get turnOffNetworkBeforeInstall => '建议切换到[飞行模式]后再安装更新';
	@override String get latencyTestResolveIP => '手动检测时,同时解析出口IP';
	@override String get removeBannerAdsByShare => '分享[Karing]去广告';
	@override String get removeBannerAdsByReward => '观看广告去广告';
	@override String removeBannerAdsByShareTip({required Object p, required Object d}) => '分享一次,将会获得${p}天无广告奖励(可叠加,最多${d}天)';
	@override String removeBannerAdsByRewardTip({required Object p}) => '观看一段广告,将会获得${p}天无广告奖励(不可叠加)';
	@override String removeBannerAdsDone({required Object p}) => '已获得${p}天无广告奖励';
	@override String get edgeRuntimeNotInstalled => '当前设备尚未安装Edge WebView2运行时,无法展示页面,请下载安装Edge WebView2运行时(x64)后,重启App再试';
	@override Map<String, String> get locales => {
		'en': 'English',
		'zh-CN': '简体中文',
		'ar': 'عربي',
		'ru': 'Русский',
		'fa': 'فارسی',
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
	@override String get disableUAReport => '应用改进数据';
	@override String get disableUAReportTip => '[应用改进数据]有助于我们改进产品体验; 低于主版本的版本将自动关闭除[应用激活]以外的所有[应用改进数据]';
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
	@override String invalidPort({required Object p}) => '无效的 [Port]:${p}';
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
	@override String get title => '连接状态筛选';
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
	@override String get title => '连接状态';
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
	@override String get howToRemoveAds => '如何移除广告';
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
	@override String get dnsEnableProxyResolveMode => '[${_root.SettingsScreen.dnsTypeProxy}]解析通道';
	@override String get dnsEnableClientSubnet => '[${_root.SettingsScreen.dnsTypeDirect}]启用ECS';
	@override String get dnsTestDomain => '测试域名';
	@override String get dnsTestDomainInvalid => '无效的域名';
	@override String get dnsTypeOutbound => '代理服务器';
	@override String get dnsTypeDirect => '直连流量';
	@override String get dnsTypeProxy => '代理流量';
	@override String get dnsTypeResolver => 'DNS服务器';
	@override String get dnsEnableRuleTips => '启用后,域名会根据分流规则选择对应的DNS服务器进行解析';
	@override String get dnsEnableFakeIpTips => '启用FakeIP后,如果断开VPN连接,你的应用可能需要重启;此功能需要开启[TUN模式]';
	@override String get dnsTypeOutboundTips => '用于代理服务器的域名解析';
	@override String get dnsTypeDirectTips => '用于[${_root.SettingsScreen.dnsTypeDirect}]的域名解析';
	@override String get dnsTypeProxyTips => '用于代理流量的域名解析';
	@override String get dnsTypeResolverTips => '用于DNS服务器的域名解析';
	@override String get dnsAutoSetServer => '自动设置服务器';
	@override String get dnsResetServer => '重置服务器';
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
	@override String get hideAfterLaunch => '启动后隐藏窗口';
	@override String get autoSetSystemProxy => '连接后自动设置系统代理';
	@override String get bypassSystemProxy => '允许绕过系统代理的域名';
	@override String get disconnectWhenQuit => '退出应用时关闭连接';
	@override String get allowBypass => '允许应用绕过VPN';
	@override String get importSuccess => '导入成功';
	@override String get rewriteConfirm => '该文件将覆盖本地已有配置,是否继续?';
	@override String get networkShare => '网络共享';
	@override String get frontProxy => '前置/链式代理';
	@override String frontProxyTips({required Object p}) => '数据->前置/链式代理服务器[多个代理服务器:由上到下]->代理服务器[${p}]->目标服务器';
	@override String get allowOtherHostsConnect => '允许其他主机接入';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => '由于系统限制,开启后,本设备上使用http访问网络的应用可能无法正常连接网络';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => '严格路由';
	@override String get tunStrictRouteTips => '如果开启共享后,其他无法接入此设备,请尝试关闭此开关';
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
	@override String get save => '保存';
	@override String get ok => '确定';
	@override String get cancel => '取消';
	@override String get feedback => '反馈';
	@override String get feedbackContent => '反馈内容';
	@override String get feedbackContentHit => '必填, 最长500字符';
	@override String get feedbackContentCannotEmpty => '反馈内容不能为空';
	@override String get faq => '常见问题';
	@override String get download => '下载';
	@override String get upload => '上传';
	@override String get downloadSpeed => '下载速度';
	@override String get uploadSpeed => '上传速度';
	@override String get loading => '加载中...';
	@override String get convert => '转换';
	@override String get check => '检测';
	@override String get detect => '探测';
	@override String get days => '天';
	@override String get hours => '时';
	@override String get minutes => '分';
	@override String get seconds => '秒';
	@override String get protocol => '协议';
	@override String get search => '搜索';
	@override String get custom => '自定义';
	@override String get inbound => '入站';
	@override String get outbound => '出站';
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
	@override String get none => '无';
	@override String get start => '开始';
	@override String get pause => '暂停';
	@override String get reset => '重置';
	@override String get submit => '提交';
	@override String get user => '用户';
	@override String get account => '账号';
	@override String get password => '密码';
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
	@override String get netInterfaces => '网络接口';
	@override String get netSpeed => '速度';
	@override String get trafficTotal => '总流量';
	@override String get trafficProxy => '代理流量';
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
	@override String get autoBackupAddProfile => '添加配置后';
	@override String get autoBackupRemoveProfile => '删除配置后';
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
	@override String get requestNeedsUserApproval => '请在[系统设置]-[隐私与安全性]里[允许] Karing安装系统扩展,安装完成后重新连接';
	@override String get FullDiskAccessPermissionRequired => '请在[系统设置]-[隐私与安全性]-[完全磁盘访问权限]里开启karingServiceSE权限后,重新连接';
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
	@override String get adsBanner => '横幅广告';
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
	@override String get myProfilesAtLeastOneReserveEnable => '无法禁用,请至少保留一个配置可用';
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
	@override String get menuOpen => '    打开    ';
	@override String get menuExit => '    退出    ';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhCn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'AboutScreen.installRefer': return '安装参考';
			case 'AboutScreen.installTime': return '安装时间';
			case 'AboutScreen.versionChannel': return '自动更新通道';
			case 'AboutScreen.disableUAReport': return '应用改进数据';
			case 'AboutScreen.disableUAReportTip': return '[应用改进数据]有助于我们改进产品体验; 低于主版本的版本将自动关闭除[应用激活]以外的所有[应用改进数据]';
			case 'AboutScreen.devOptions': return '开发者选项';
			case 'AboutScreen.enableDebugLog': return '开启调试日志';
			case 'AboutScreen.viewFilsContent': return '查看文件';
			case 'AboutScreen.enablePprof': return '启用pprof';
			case 'AboutScreen.pprofPanel': return 'pprof面板';
			case 'AboutScreen.allowRemoteAccessPprof': return '允许远程访问${_root.AboutScreen.pprofPanel}';
			case 'AboutScreen.allowRemoteAccessHtmlBoard': return '允许远程访问${_root.SettingsScreen.htmlBoard}';
			case 'AboutScreen.useOriginalSBProfile': return '使用原始sing-box配置';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return '服务器地址';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return '不能为空';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return '登录失败:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return '获取文件列表失败:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => '无效的 [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => '无效的 [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => '无效的 [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => '无效的 [Rule Set]:${p}, URL必须是有效的https URL,并且文件扩展名为.srs/.json的binary文件';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => '无效的 [Rule Set(build-in)]:${p}, 格式为geosite:xxx 或 geoip:xxx 或 acl:xxx,并且xxx应为有效的规则名';
			case 'DiversionGroupCustomEditScreen.invalidPackageId': return ({required Object p}) => '无效的 [${_root.meta.appPackage}]:${p}';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return '提示:保存后,请到[${_root.meta.diversionRules}]设置相关规则,否则不会生效';
			case 'DiversionRuleDetectScreen.title': return '分流规则探测';
			case 'DiversionRuleDetectScreen.rule': return '规则:';
			case 'DiversionRuleDetectScreen.outbound': return '代理服务器:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return '提示:从上到下依次尝试匹配规则,如果没有匹配到规则,则使用[final]';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'ISP 不能为空';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'URL 不能为空';
			case 'DnsSettingsScreen.error': return ({required Object p}) => '不支持的类型:${p}';
			case 'DnsSettingsScreen.dnsDesc': return '第一列延迟数据为直连查询延迟;\n第二列:开启[[代理流量]通过代理服务器解析DNS]:延迟数据为通过当前代理服务器转发的查询延迟;未开启[[代理流量]通过代理服务器解析DNS]:延迟数据为直连查询延迟';
			case 'FileContentViewerScreen.title': return '文件内容查看';
			case 'FileContentViewerScreen.clearFileContent': return '确认清空文件内容?';
			case 'FileContentViewerScreen.clearFileContentTips': return '确认清空配置文件内容? 清空配置文件可能会导致数据丢失或应用功能异常, 请谨慎操作';
			case 'HomeScreen.toSelectServer': return '请选择服务器';
			case 'HomeScreen.invalidServer': return '已失效,请重新选择';
			case 'HomeScreen.disabledServer': return '已被禁用,请重新选择';
			case 'HomeScreen.expiredServer': return '无可用服务器:配置可能已过期或被禁用';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'HomeScreen.myLinkEmpty': return '请先设置[快捷链接]后再使用';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => '代理服务器[${p}>${p1}]过多,可能因系统内存限制而无法连接';
			case 'HomeScreen.tooMuchServers2': return ({required Object p, required Object p1}) => '代理服务器[${p}>${p1}]过多,可能导致连接缓慢或无法连接';
			case 'LaunchFailedScreen.invalidProcess': return '应用启动失败[无效的进程名称],请重新安装应用到独立目录';
			case 'LaunchFailedScreen.invalidProfile': return '应用启动失败[访问配置文件失败],请重新安装应用';
			case 'LaunchFailedScreen.invalidVersion': return '应用启动失败[无效版本],请重新安装应用';
			case 'LaunchFailedScreen.systemVersionLow': return '应用启动失败[系统版本过低]';
			case 'LaunchFailedScreen.invalidInstallPath': return '无效的安装路径,请重新安装到有效路径';
			case 'MyProfilesMergeScreen.profilesMerge': return '配置合并';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return '目标配置';
			case 'MyProfilesMergeScreen.profilesMergeSource': return '源配置';
			case 'MyProfilesMergeScreen.profilesMergeTips': return '提示:源配置的分流信息将会被丢弃';
			case 'NetCheckScreen.title': return '网络检测';
			case 'NetCheckScreen.warn': return '注意:由于受网络环境及分流规则等影响,测试结果并不完全等价实际中使用的效果';
			case 'NetCheckScreen.invalidDomain': return '无效域名';
			case 'NetCheckScreen.connectivity': return '网络联通性';
			case 'NetCheckScreen.connectivityTestIpv4AllFailed': return ({required Object p}) => 'Ipv4 连接测试[${p}]全部失败';
			case 'NetCheckScreen.connectivityTestIpv4Ok': return 'Ipv4 连接成功';
			case 'NetCheckScreen.connectivityTestIpv6AllFailed': return ({required Object p}) => 'Ipv6 连接测试[${p}]全部失败, 你的网络可能不支持ipv6';
			case 'NetCheckScreen.connectivityTestIpv6Ok': return 'Ipv6 连接成功';
			case 'NetCheckScreen.connectivityTestOk': return '网络已接入互联网';
			case 'NetCheckScreen.connectivityTestFailed': return '网络尚未接入互联网';
			case 'NetCheckScreen.remoteRulesetsDownloadOk': return '全部下载成功';
			case 'NetCheckScreen.remoteRulesetsDownloadNotOk': return '正在下载或下载失败';
			case 'NetCheckScreen.outbound': return '代理服务器';
			case 'NetCheckScreen.outboundOk': return ({required Object p}) => '[${p}]连接成功';
			case 'NetCheckScreen.outboundFailed': return ({required Object p1, required Object p2}) => '[${p1}]连接失败\n错误:[${p2}]';
			case 'NetCheckScreen.dnsServer': return 'DNS服务器';
			case 'NetCheckScreen.dnsOk': return ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]域名解析成功\nDNS规则:[${p2}]\n延迟:[${p3} ms]\n地址:[${p4}]';
			case 'NetCheckScreen.dnsFailed': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]域名解析失败\n规则:[${p2}]\n错误:[${p3}]';
			case 'NetCheckScreen.host': return 'HTTP连接';
			case 'NetCheckScreen.hostConnection': return ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\n分流规则:[${p2}]\n代理服务器:[${p3}]';
			case 'NetCheckScreen.hostConnectionOk': return '连接成功';
			case 'NetCheckScreen.hostConnectionFailed': return ({required Object p}) => '连接失败:[${p}]';
			case 'NetConnectionsFilterScreen.title': return '连接状态筛选';
			case 'NetConnectionsFilterScreen.hostIp': return '域名/IP';
			case 'NetConnectionsFilterScreen.app': return '应用';
			case 'NetConnectionsFilterScreen.rule': return '规则';
			case 'NetConnectionsFilterScreen.chain': return '出站';
			case 'NetConnectionsScreen.title': return '连接状态';
			case 'NetConnectionsScreen.copyAsCSV': return '已复制为CSV格式';
			case 'NetConnectionsScreen.selectType': return '选择分流类型';
			case 'PerAppAndroidScreen.title': return '分应用代理';
			case 'PerAppAndroidScreen.whiteListMode': return '白名单模式';
			case 'PerAppAndroidScreen.whiteListModeTip': return '启用后:仅代理已勾选的App;未启用:仅代理未勾选的App';
			case 'RegionSettingsScreen.title': return '国家与地区';
			case 'RegionSettingsScreen.Regions': return '提示:请正确设置你当前所在国家或地区,否则可能会导致分流错误';
			case 'ServerSelectScreen.title': return '选择服务器';
			case 'ServerSelectScreen.autoSelectServer': return '自动选择延迟最低的服务器';
			case 'ServerSelectScreen.recentUse': return '最近使用';
			case 'ServerSelectScreen.myFav': return '我的收藏';
			case 'ServerSelectScreen.selectLocal': return ({required Object p}) => '所选服务器为本地地址,可能无法正常使用:${p}';
			case 'ServerSelectScreen.selectRequireEnableIPv6': return '所选服务器为IPv6地址,需要[启用IPv6]';
			case 'ServerSelectScreen.selectDisabled': return '该服务器已被禁用';
			case 'ServerSelectScreen.error404': return '延迟检测遇到错误,请检查是否存在内容相同的配置';
			case 'SettingsScreen.getTranffic': return '获取流量';
			case 'SettingsScreen.tutorial': return '使用教程';
			case 'SettingsScreen.commonlyUsedRulesets': return '常用规则集';
			case 'SettingsScreen.howToRemoveAds': return '如何移除广告';
			case 'SettingsScreen.htmlBoard': return '在线面板';
			case 'SettingsScreen.dnsLeakDetection': return 'DNS泄露检测';
			case 'SettingsScreen.proxyLeakDetection': return '代理泄露检测';
			case 'SettingsScreen.speedTest': return '测速';
			case 'SettingsScreen.rulesetDirectDownlad': return 'Rule Set直连下载';
			case 'SettingsScreen.hideUnusedDiversionGroup': return '隐藏未启用的分流规则';
			case 'SettingsScreen.disableISPDiversionGroup': return '禁用[${_root.meta.isp}]${_root.meta.diversionRules}';
			case 'SettingsScreen.portSettingRule': return '基于规则';
			case 'SettingsScreen.portSettingDirectAll': return '全直连';
			case 'SettingsScreen.portSettingProxyAll': return '全代理';
			case 'SettingsScreen.portSettingControl': return '控制与同步';
			case 'SettingsScreen.portSettingCluster': return '集群服务';
			case 'SettingsScreen.modifyPort': return '修改端口';
			case 'SettingsScreen.modifyPortOccupied': return '端口已被占用,请使用其他端口';
			case 'SettingsScreen.ipStrategyTips': return '启用前,请先确认你的网络已支持IPv6,否则某些流量无法正常访问';
			case 'SettingsScreen.tunAppendHttpProxy': return '附加HTTP代理到VPN';
			case 'SettingsScreen.tunAppendHttpProxyTips': return '一些App会绕过虚拟网卡设备直连HTTP代理';
			case 'SettingsScreen.tunAllowBypassHttpProxyDomain': return '允许绕过HTTP代理的域名';
			case 'SettingsScreen.dnsEnableRule': return '启用DNS分流规则';
			case 'SettingsScreen.dnsEnableProxyResolveMode': return '[${_root.SettingsScreen.dnsTypeProxy}]解析通道';
			case 'SettingsScreen.dnsEnableClientSubnet': return '[${_root.SettingsScreen.dnsTypeDirect}]启用ECS';
			case 'SettingsScreen.dnsTestDomain': return '测试域名';
			case 'SettingsScreen.dnsTestDomainInvalid': return '无效的域名';
			case 'SettingsScreen.dnsTypeOutbound': return '代理服务器';
			case 'SettingsScreen.dnsTypeDirect': return '直连流量';
			case 'SettingsScreen.dnsTypeProxy': return '代理流量';
			case 'SettingsScreen.dnsTypeResolver': return 'DNS服务器';
			case 'SettingsScreen.dnsEnableRuleTips': return '启用后,域名会根据分流规则选择对应的DNS服务器进行解析';
			case 'SettingsScreen.dnsEnableFakeIpTips': return '启用FakeIP后,如果断开VPN连接,你的应用可能需要重启;此功能需要开启[TUN模式]';
			case 'SettingsScreen.dnsTypeOutboundTips': return '用于代理服务器的域名解析';
			case 'SettingsScreen.dnsTypeDirectTips': return '用于[${_root.SettingsScreen.dnsTypeDirect}]的域名解析';
			case 'SettingsScreen.dnsTypeProxyTips': return '用于代理流量的域名解析';
			case 'SettingsScreen.dnsTypeResolverTips': return '用于DNS服务器的域名解析';
			case 'SettingsScreen.dnsAutoSetServer': return '自动设置服务器';
			case 'SettingsScreen.dnsResetServer': return '重置服务器';
			case 'SettingsScreen.inboundDomainResolve': return '解析入站域名';
			case 'SettingsScreen.privateDirect': return '私有网络直连';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => '某些未配置分流规则的域名需要解析后才可能命中基于IP的分流规则;此功能影响代理端口[${p}]的入站请求';
			case 'SettingsScreen.useRomoteRes': return '使用远程资源';
			case 'SettingsScreen.autoAppendRegion': return '自动附加基础规则';
			case 'SettingsScreen.autoSelect': return '自动选择';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return '忽略[前置/链式]代理服务器';
			case 'SettingsScreen.autoSelectServerInterval': return '延迟检测时间间隔';
			case 'SettingsScreen.autoSelectSelectedHealthCheckInterval': return '当前服务器健康检测时间间隔';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return '网络变化时重新检测';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return '手动延时检测后更新当前服务器';
			case 'SettingsScreen.autoSelectServerIntervalTips': return '延迟检测时间间隔越短,服务器延迟数据更新越及时,但会占用更多资源,耗电更快';
			case 'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips': return '如果检测失败,则切换节点;如果切换节点时,未找到可用节点,则对该组重新进行延迟检测';
			case 'SettingsScreen.autoSelectServerFavFirst': return '优先使用[我的收藏]';
			case 'SettingsScreen.autoSelectServerFavFirstTips': return '如果[我的收藏]列表不为空,则使用[我的收藏]里的服务器';
			case 'SettingsScreen.autoSelectServerFilter': return '过滤无效服务器';
			case 'SettingsScreen.autoSelectServerFilterTips': return ({required Object p}) => '服务器延迟检测失败的将会被过滤掉;如果过滤后无服务器可用,则改用前[${p}]个服务器';
			case 'SettingsScreen.autoSelectServerLimitedNum': return '服务器数量上限';
			case 'SettingsScreen.autoSelectServerLimitedNumTips': return '超过该数量的服务器将被过滤掉';
			case 'SettingsScreen.numInvalid': return '无效的数字';
			case 'SettingsScreen.hideInvalidServer': return '隐藏无效服务器';
			case 'SettingsScreen.sortServer': return '服务器排序';
			case 'SettingsScreen.sortServerTips': return '按延迟由低到高排序';
			case 'SettingsScreen.selectServerHideRecommand': return '隐藏[推荐]';
			case 'SettingsScreen.selectServerHideRecent': return '隐藏[最近使用]';
			case 'SettingsScreen.selectServerHideFav': return '隐藏[我的收藏]';
			case 'SettingsScreen.homeScreen': return '主屏';
			case 'SettingsScreen.theme': return '主题';
			case 'SettingsScreen.widgetsAlpha': return 'Widgets 透明度';
			case 'SettingsScreen.widgetsEmpty': return '无可用Widget';
			case 'SettingsScreen.backgroundImage': return '背景图';
			case 'SettingsScreen.myLink': return '快捷链接';
			case 'SettingsScreen.autoConnectAfterLaunch': return '启动后自动连接';
			case 'SettingsScreen.hideAfterLaunch': return '启动后隐藏窗口';
			case 'SettingsScreen.autoSetSystemProxy': return '连接后自动设置系统代理';
			case 'SettingsScreen.bypassSystemProxy': return '允许绕过系统代理的域名';
			case 'SettingsScreen.disconnectWhenQuit': return '退出应用时关闭连接';
			case 'SettingsScreen.allowBypass': return '允许应用绕过VPN';
			case 'SettingsScreen.importSuccess': return '导入成功';
			case 'SettingsScreen.rewriteConfirm': return '该文件将覆盖本地已有配置,是否继续?';
			case 'SettingsScreen.networkShare': return '网络共享';
			case 'SettingsScreen.frontProxy': return '前置/链式代理';
			case 'SettingsScreen.frontProxyTips': return ({required Object p}) => '数据->前置/链式代理服务器[多个代理服务器:由上到下]->代理服务器[${p}]->目标服务器';
			case 'SettingsScreen.allowOtherHostsConnect': return '允许其他主机接入';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.allowOtherHostsConnectWarn': return '由于系统限制,开启后,本设备上使用http访问网络的应用可能无法正常连接网络';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return '严格路由';
			case 'SettingsScreen.tunStrictRouteTips': return '如果开启共享后,其他无法接入此设备,请尝试关闭此开关';
			case 'SettingsScreen.enableCluster': return '开启Socks/Http代理集群';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return '允许其他主机接入代理集群';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
			case 'SettingsScreen.clusterAuth': return '代理集群认证';
			case 'SettingsScreen.tunMode': return 'TUN模式';
			case 'SettingsScreen.tuni4Address': return 'IP地址';
			case 'SettingsScreen.tunModeTips': return 'TUN模式将接管系统所有流量[此模式下无需开启系统代理]';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'TUN模式需要系统管理员权限,请以管理员身份重新启动应用';
			case 'SettingsScreen.tunStack': return '网络栈';
			case 'SettingsScreen.tunHijackTips': return '关闭后,来自TUN的DNS请求将会被直接转发给对应的DNS服务器';
			case 'SettingsScreen.launchAtStartup': return '开机启动';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return '切换系统用户时退出应用';
			case 'SettingsScreen.handleScheme': return '系统Scheme调用';
			case 'SettingsScreen.portableMode': return '便携模式';
			case 'SettingsScreen.portableModeDisableTips': return '如需退出便携模式,请退出[karing]后,手动删除[karing.exe]同目录下的[profiles]文件夹即可';
			case 'SettingsScreen.handleKaringScheme': return '处理karing://调用';
			case 'SettingsScreen.handleClashScheme': return '处理clash://调用';
			case 'SettingsScreen.handleSingboxScheme': return '处理sing-box://调用';
			case 'SettingsScreen.alwayOnVPN': return '始终开启连接';
			case 'SettingsScreen.disconnectAfterSleep': return '系统休眠后断开连接';
			case 'SettingsScreen.removeSystemVPNConfig': return '删除系统VPN配置';
			case 'SettingsScreen.timeConnectOrDisconnect': return '定时连接/断开';
			case 'SettingsScreen.timeConnectOrDisconnectTips': return 'VPN必须处于连接状态才会生效;开启后,[自动休眠]将失效';
			case 'SettingsScreen.timeConnectAndDisconnectInterval': return ({required Object p}) => '连接/断开时间间隔不能低于${p}分钟';
			case 'SettingsScreen.disableFontScaler': return '禁用字体缩放';
			case 'SettingsScreen.autoOrientation': return '跟随屏幕旋转';
			case 'SettingsScreen.restartTakesEffect': return '重启生效';
			case 'SettingsScreen.resetSettings': return '重置设置';
			case 'SettingsScreen.cleanCache': return '清理缓存';
			case 'SettingsScreen.cleanCacheDone': return '清理完成';
			case 'SettingsScreen.appleTestFlight': return '苹果 TestFlight';
			case 'SettingsScreen.appleAppStore': return '苹果 AppStore';
			case 'SettingsScreen.hasNewVersion': return ({required Object p}) => '更新版本 ${p}';
			case 'SettingsScreen.follow': return '关注我们';
			case 'SettingsScreen.contactUs': return '联系我们';
			case 'SettingsScreen.supportUs': return '支持我们';
			case 'SettingsScreen.rateInApp': return '评分';
			case 'SettingsScreen.rateInAppStore': return '在App Store上评分';
			case 'UserAgreementScreen.privacyFirst': return '您的隐私很重要';
			case 'UserAgreementScreen.agreeAndContinue': return '接受并继续';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => '新版本[${p}]已就绪';
			case 'VersionUpdateScreen.update': return '重启更新';
			case 'VersionUpdateScreen.cancel': return '暂不更新';
			case 'CommonWidget.diableAlwayOnVPN': return '如果开启了[始终开启VPN], 请关闭[始终开启VPN]后重试连接';
			case 'CommonWidget.resetPort': return '请将端口改为其他可用端口或者关闭占用该端口的应用';
			case 'main.tray.menuOpen': return '    打开    ';
			case 'main.tray.menuExit': return '    退出    ';
			case 'meta.enable': return '启用';
			case 'meta.disable': return '禁用';
			case 'meta.bydefault': return '默认';
			case 'meta.filter': return '过滤';
			case 'meta.filterMethod': return '过滤方式';
			case 'meta.include': return '包含';
			case 'meta.exclude': return '排除';
			case 'meta.all': return '所有';
			case 'meta.prefer': return '优先';
			case 'meta.only': return '仅';
			case 'meta.open': return '打开';
			case 'meta.close': return '关闭';
			case 'meta.quit': return '退出';
			case 'meta.add': return '添加';
			case 'meta.addSuccess': return '添加成功';
			case 'meta.addFailed': return ({required Object p}) => '添加失败:${p}';
			case 'meta.remove': return '删除';
			case 'meta.removeConfirm': return '确认删除?';
			case 'meta.edit': return '编辑';
			case 'meta.view': return '查看';
			case 'meta.more': return '更多';
			case 'meta.tips': return '提示';
			case 'meta.copy': return '拷贝';
			case 'meta.save': return '保存';
			case 'meta.ok': return '确定';
			case 'meta.cancel': return '取消';
			case 'meta.feedback': return '反馈';
			case 'meta.feedbackContent': return '反馈内容';
			case 'meta.feedbackContentHit': return '必填, 最长500字符';
			case 'meta.feedbackContentCannotEmpty': return '反馈内容不能为空';
			case 'meta.faq': return '常见问题';
			case 'meta.download': return '下载';
			case 'meta.upload': return '上传';
			case 'meta.downloadSpeed': return '下载速度';
			case 'meta.uploadSpeed': return '上传速度';
			case 'meta.loading': return '加载中...';
			case 'meta.convert': return '转换';
			case 'meta.check': return '检测';
			case 'meta.detect': return '探测';
			case 'meta.days': return '天';
			case 'meta.hours': return '时';
			case 'meta.minutes': return '分';
			case 'meta.seconds': return '秒';
			case 'meta.protocol': return '协议';
			case 'meta.search': return '搜索';
			case 'meta.custom': return '自定义';
			case 'meta.inbound': return '入站';
			case 'meta.outbound': return '出站';
			case 'meta.connect': return '连接';
			case 'meta.disconnect': return '断开';
			case 'meta.reconnect': return '重新连接';
			case 'meta.connected': return '已连接';
			case 'meta.disconnected': return '未连接';
			case 'meta.connecting': return '连接中';
			case 'meta.connectTimeout': return '连接超时';
			case 'meta.timeout': return '超时';
			case 'meta.timeoutDuration': return '超时时长';
			case 'meta.runDuration': return '运行时长';
			case 'meta.latency': return '延迟';
			case 'meta.latencyTest': return '延迟检测';
			case 'meta.language': return '语言';
			case 'meta.next': return '下一步';
			case 'meta.done': return '完成';
			case 'meta.apply': return '应用';
			case 'meta.refresh': return '刷新';
			case 'meta.retry': return '是否重试?';
			case 'meta.update': return '更新';
			case 'meta.updateInterval': return '更新时间间隔';
			case 'meta.updateInterval5mTips': return '最小:5m';
			case 'meta.updateFailed': return ({required Object p}) => '更新失败:${p}';
			case 'meta.none': return '无';
			case 'meta.start': return '开始';
			case 'meta.pause': return '暂停';
			case 'meta.reset': return '重置';
			case 'meta.submit': return '提交';
			case 'meta.user': return '用户';
			case 'meta.account': return '账号';
			case 'meta.password': return '密码';
			case 'meta.required': return '必填';
			case 'meta.type': return '类型';
			case 'meta.path': return '路径';
			case 'meta.local': return '本地';
			case 'meta.remote': return '远程';
			case 'meta.other': return '其他';
			case 'meta.dns': return 'DNS';
			case 'meta.url': return 'URL';
			case 'meta.urlInvalid': return 'URL无效';
			case 'meta.urlCannotEmpty': return 'URL不能为空';
			case 'meta.urlTooLong': return 'URL过长(>8182)';
			case 'meta.copyUrl': return '拷贝链接';
			case 'meta.openUrl': return '打开链接';
			case 'meta.shareUrl': return '分享链接';
			case 'meta.speedTestUrl': return '测速URL';
			case 'meta.tls': return 'TLS';
			case 'meta.userAgent': return 'UserAgent';
			case 'meta.staticIP': return '静态IP';
			case 'meta.isp': return '机场';
			case 'meta.domainSuffix': return '域名后缀';
			case 'meta.domain': return '域名';
			case 'meta.domainKeyword': return '域名关键词';
			case 'meta.domainRegex': return '域名正则';
			case 'meta.ip': return 'IP';
			case 'meta.port': return '端口';
			case 'meta.portRange': return '端口范围';
			case 'meta.appPackage': return '应用包Id';
			case 'meta.processName': return '进程名称';
			case 'meta.processPath': return '进程路径';
			case 'meta.processDir': return '进程目录';
			case 'meta.systemProxy': return '系统代理';
			case 'meta.netInterfaces': return '网络接口';
			case 'meta.netSpeed': return '速度';
			case 'meta.trafficTotal': return '总流量';
			case 'meta.trafficProxy': return '代理流量';
			case 'meta.website': return '官网';
			case 'meta.memory': return '内存';
			case 'meta.outboundMode': return '出站模式';
			case 'meta.rule': return '规则';
			case 'meta.global': return '全局';
			case 'meta.qrcode': return '二维码';
			case 'meta.qrcodeTooLong': return '文本过长,无法展示';
			case 'meta.qrcodeShare': return '分享二维码';
			case 'meta.textToQrcode': return '文本转二维码';
			case 'meta.qrcodeScan': return '扫描二维码';
			case 'meta.qrcodeScanResult': return '扫描结果';
			case 'meta.qrcodeScanFromImage': return '打开二维码图片';
			case 'meta.qrcodeScanResultFailed': return '解析图片失败,请确保截图为有效的二维码';
			case 'meta.qrcodeScanResultEmpty': return '扫描结果为空';
			case 'meta.screenshot': return '截图';
			case 'meta.backupAndSync': return '备份与同步';
			case 'meta.autoBackup': return '自动备份';
			case 'meta.autoBackupAddProfile': return '添加配置后';
			case 'meta.autoBackupRemoveProfile': return '删除配置后';
			case 'meta.currentProfile': return '当前配置';
			case 'meta.importAndExport': return '导入/导出';
			case 'meta.import': return '导入';
			case 'meta.importFromUrl': return '从URL导入';
			case 'meta.export': return '导出';
			case 'meta.send': return '发送';
			case 'meta.receive': return '接收';
			case 'meta.sendConfirm': return '确认发送?';
			case 'meta.termOfUse': return '使用条款';
			case 'meta.privacyPolicy': return '隐私政策';
			case 'meta.about': return '关于';
			case 'meta.name': return '名称';
			case 'meta.version': return '版本';
			case 'meta.notice': return '通知';
			case 'meta.appNotifyWithReason': return ({required Object p, required Object p1}) => '动作:${p}\n原因:${p1}';
			case 'meta.sort': return '排序';
			case 'meta.novice': return '新手模式';
			case 'meta.willCompleteAfterRebootInstall': return '请重启设备,以便完成系统扩展安装';
			case 'meta.willCompleteAfterRebootUninstall': return '请重启设备,以便完成系统扩展卸载';
			case 'meta.requestNeedsUserApproval': return '请在[系统设置]-[隐私与安全性]里[允许] Karing安装系统扩展,安装完成后重新连接';
			case 'meta.FullDiskAccessPermissionRequired': return '请在[系统设置]-[隐私与安全性]-[完全磁盘访问权限]里开启karingServiceSE权限后,重新连接';
			case 'meta.tvMode': return 'TV模式';
			case 'meta.recommended': return '推荐';
			case 'meta.innerError': return ({required Object p}) => '内部错误:${p}';
			case 'meta.logicOperation': return '逻辑运算';
			case 'meta.share': return '分享';
			case 'meta.candidateWord': return '候选词';
			case 'meta.keywordOrRegx': return '关键词/正则';
			case 'meta.importFromClipboard': return '从剪贴板导入';
			case 'meta.exportToClipboard': return '导出到剪贴板';
			case 'meta.server': return '服务器';
			case 'meta.ads': return '广告';
			case 'meta.adsRemove': return '移除广告';
			case 'meta.adsBanner': return '横幅广告';
			case 'meta.donate': return '捐助';
			case 'meta.diversion': return '分流';
			case 'meta.diversionRules': return '分流规则';
			case 'meta.diversionCustomGroup': return '自定义分流组';
			case 'meta.urlTestCustomGroup': return '自定义自动选择';
			case 'meta.setting': return '设置';
			case 'meta.iCloud': return 'iCloud';
			case 'meta.appleTV': return 'Apple TV';
			case 'meta.webdav': return 'Webdav';
			case 'meta.lanSync': return '局域网同步';
			case 'meta.lanSyncNotQuitTips': return '同步完成前请勿退出此界面';
			case 'meta.deviceNoSpace': return '磁盘空间不足';
			case 'meta.hideSystemApp': return '隐藏系统应用';
			case 'meta.hideAppIcon': return '隐藏应用图标';
			case 'meta.hideDockIcon': return '隐藏Dock图标';
			case 'meta.remark': return '备注';
			case 'meta.remarkExist': return '备注已存在,请使用其他名称';
			case 'meta.remarkCannotEmpty': return '备注不能为空';
			case 'meta.remarkTooLong': return '备注最长32字符';
			case 'meta.openDir': return '打开文件目录';
			case 'meta.fileChoose': return '选择文件';
			case 'meta.filePathCannotEmpty': return '文件路径不能为空';
			case 'meta.fileNotExist': return ({required Object p}) => '文件不存在:${p}';
			case 'meta.fileTypeInvalid': return ({required Object p}) => '无效的文件类型:${p}';
			case 'meta.uwpExemption': return 'UWP网络隔离豁免';
			case 'meta.rulesetGeoSite': return 'GeoSite';
			case 'meta.rulesetGeoIp': return 'GeoIP';
			case 'meta.rulesetAcl': return 'ACL';
			case 'meta.getProfile': return '获取配置';
			case 'meta.addProfile': return '添加配置';
			case 'meta.myProfiles': return '我的配置';
			case 'meta.myProfilesAtLeastOneReserveEnable': return '无法禁用,请至少保留一个配置可用';
			case 'meta.profileEdit': return '编辑配置';
			case 'meta.profileEditUrlExist': return 'URL已存在,请使用其他URL';
			case 'meta.profileEditReloadAfterProfileUpdate': return '配置更新后重新加载';
			case 'meta.profileEditTestLatencyAfterProfileUpdate': return '配置自动更新后启动延迟检测';
			case 'meta.profileEditTestLatencyAfterProfileUpdateTips': return 'VPN需要处于已连接状态,并且开启[配置更新后重新加载]';
			case 'meta.profileEditTestLatencyAutoRemove': return '自动移除延迟检测失败的服务器';
			case 'meta.profileEditTestLatencyAutoRemoveTips': return '最多尝试3次';
			case 'meta.profileImport': return '导入配置文件';
			case 'meta.profileAddUrlOrContent': return '添加配置链接';
			case 'meta.profileExists': return '配置已存在,请勿重复添加';
			case 'meta.profileUrlOrContent': return '配置链接/内容';
			case 'meta.profileUrlOrContentHit': return '配置链接/内容[必填] (支持Clash,V2ray(支持批量),Stash,Karing,Sing-box,Shadowsocks,Sub,Github配置链接)';
			case 'meta.profileUrlOrContentCannotEmpty': return '配置链接不能为空';
			case 'meta.profileAddFailedFormatException': return ({required Object p}) => '格式错误,请订正后重新添加:${p}';
			case 'meta.profileAddFailedThenDownloadAndImport': return ({required Object p}) => '添加失败:${p}, 请尝试修改[UserAgent]后重试,或者用设备自带的浏览器打开配置链接,并将浏览器下载的配置文件导入到本应用';
			case 'meta.profileAddFailedHandshakeException': return ({required Object p}) => '添加失败:${p}, 请打开代理或者修改当前代理节点后重试';
			case 'meta.profileAddParseFailed': return '解析配置失败';
			case 'meta.profileAddNoServerAvaliable': return '无可用服务器,请确保配置链接或配置文件有效;如果你的配置来源于GitHub,请从页面上的[Raw]按钮获取链接地址';
			case 'meta.profileAddWrapSuccess': return '配置生成成功,请到[${_root.meta.myProfiles}]查看';
			case 'diversionRulesKeep': return '保留[${_root.meta.isp}]${_root.meta.diversionRules}';
			case 'diversionCustomGroupPreset': return '预置[${_root.meta.diversionCustomGroup}]';
			case 'diversionCustomGroupPresetTips': return '注意:启用的项会添加/覆盖到[${_root.meta.diversionCustomGroup}]和[${_root.meta.diversionRules}]';
			case 'diversionCustomGroupAddTips': return '注意:添加完毕后可能需要手动调整排序,否则新添加的分流可能不会生效';
			case 'rulesetEnableTips': return '提示:开启选项后,请到[${_root.meta.diversionRules}]设置相关规则,否则不会生效';
			case 'ispUserAgentTips': return '[${_root.meta.isp}]会根据[HTTP]请求里的[UserAgent]下发不同订阅类型的数据';
			case 'ispDiversionTips': return '[${_root.meta.isp}]提供的分流规则;[V2Ray]类型的订阅不支持分流规则';
			case 'isp.bind': return '绑定到[${_root.meta.isp}]';
			case 'isp.unbind': return ({required Object p}) => '解除绑定[${p}]';
			case 'isp.faq': return ({required Object p}) => '常见问题[${p}]';
			case 'isp.customerService': return ({required Object p}) => '客服[${p}]';
			case 'isp.follow': return ({required Object p}) => '关注[${p}]';
			case 'isp.invalidOrExpired': return '[${_root.meta.isp}]无效或已过期';
			case 'permission.camera': return '摄像头';
			case 'permission.screen': return '屏幕录制';
			case 'permission.appQuery': return '获取应用列表';
			case 'permission.request': return ({required Object p}) => '开启[${p}]权限';
			case 'permission.requestNeed': return ({required Object p}) => '请开启[${p}]权限';
			case 'tls.insecure': return '跳过证书验证';
			case 'tls.affectProtocolTips': return 'vless, vmess, trojan';
			case 'tls.fragmentEnable': return '启用TLS分段';
			case 'tls.fragmentSize': return 'TLS分段大小';
			case 'tls.fragmentSleep': return 'TLS分段休眠';
			case 'tls.mixedCaseSNIEnable': return '启用TLS混合SNI';
			case 'tls.paddingEnable': return '启用TLS填充';
			case 'tls.paddingSize': return 'TLS填充大小';
			case 'outboundRuleMode.currentSelected': return '当前选择';
			case 'outboundRuleMode.urltest': return '自动选择';
			case 'outboundRuleMode.direct': return '直连';
			case 'outboundRuleMode.block': return '拦截';
			case 'dnsProxyResolveMode.proxy': return _root.outboundRuleMode.currentSelected;
			case 'dnsProxyResolveMode.direct': return _root.outboundRuleMode.direct;
			case 'dnsProxyResolveMode.fakeip': return 'FakeIP';
			case 'proxyStrategy.perferProxy': return '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
			case 'proxyStrategy.perferDirect': return '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
			case 'proxyStrategy.onlyProxy': return '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
			case 'proxyStrategy.onlyDirect': return '${_root.meta.only} ${_root.outboundRuleMode.direct}';
			case 'reloadReason.latencyTest': return '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
			case 'reloadReason.profileUpdate': return '配置更新';
			case 'theme.light': return '浅色';
			case 'theme.dark': return '黑色';
			case 'theme.auto': return '自动';
			case 'downloadProxyStrategy': return '下载通道';
			case 'dnsProxyResolveModeTips': return '[${_root.dnsProxyResolveMode.proxy}]:通过代理服务器连接DNS服务器解析域名\n[${_root.dnsProxyResolveMode.direct}]:直接连接DNS服务器解析域名\n[${_root.dnsProxyResolveMode.fakeip}]:由代理服务器代为解析域名;如果断开VPN连接,你的应用可能需要重启;仅对[TUN]入站的流量生效';
			case 'routeFinal': return 'final';
			case 'protocolSniff': return '协议探测';
			case 'sendOrReceiveNotMatch': return ({required Object p}) => '请使用[${p}]';
			case 'turnOffPrivateDirect': return '请先开启[私有网络直连]';
			case 'targetConnectFailed': return ({required Object p}) => '连接[${p}]失败,请确保设备在同一个局域网内';
			case 'appleTVSync': return '同步当前核心配置到Apple TV - Karing';
			case 'appleTVSyncDone': return '同步完成,请到Apple TV - Karing开启连接/重启连接';
			case 'appleTVRemoveCoreConfig': return '删除Apple TV - Karing核心配置';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - Karing的核心配置文件已删除;VPN服务已断开连接';
			case 'appleTVUrlInvalid': return '无效的URL,请打开Apple TV - Karing,扫描Karing显示的二维码';
			case 'appleTV404': return ({required Object p}) => 'AppleTV:Karing[${p}]无此功能,请升级后再试';
			case 'appleCoreVersionNotMatch': return ({required Object p}) => '核心主版本不匹配,请升级[${p}]后再试';
			case 'remoteProfileEditConfirm': return '配置更新后,节点的修改将会被还原,是否继续?';
			case 'mustBeValidHttpsURL': return '必须为有效的 https URL';
			case 'fileNotExistReinstall': return ({required Object p}) => '文件缺失[${p}],请重新安装';
			case 'noNetworkConnect': return '无网络连接';
			case 'turnOffNetworkBeforeInstall': return '建议切换到[飞行模式]后再安装更新';
			case 'latencyTestResolveIP': return '手动检测时,同时解析出口IP';
			case 'removeBannerAdsByShare': return '分享[Karing]去广告';
			case 'removeBannerAdsByReward': return '观看广告去广告';
			case 'removeBannerAdsByShareTip': return ({required Object p, required Object d}) => '分享一次,将会获得${p}天无广告奖励(可叠加,最多${d}天)';
			case 'removeBannerAdsByRewardTip': return ({required Object p}) => '观看一段广告,将会获得${p}天无广告奖励(不可叠加)';
			case 'removeBannerAdsDone': return ({required Object p}) => '已获得${p}天无广告奖励';
			case 'edgeRuntimeNotInstalled': return '当前设备尚未安装Edge WebView2运行时,无法展示页面,请下载安装Edge WebView2运行时(x64)后,重启App再试';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

