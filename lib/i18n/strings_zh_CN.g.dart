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
	TranslationsZhCn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
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

	// Translations
	@override late final _TranslationsAboutScreenZhCn AboutScreen = _TranslationsAboutScreenZhCn._(_root);
	@override late final _TranslationsAddProfileByImportFromFileScreenZhCn AddProfileByImportFromFileScreen = _TranslationsAddProfileByImportFromFileScreenZhCn._(_root);
	@override late final _TranslationsAddProfileByLinkOrContentScreenZhCn AddProfileByLinkOrContentScreen = _TranslationsAddProfileByLinkOrContentScreenZhCn._(_root);
	@override late final _TranslationsAddProfileByScanQrcodeScanScreenZhCn AddProfileByScanQrcodeScanScreen = _TranslationsAddProfileByScanQrcodeScanScreenZhCn._(_root);
	@override late final _TranslationsBackupAndSyncLanSyncScreenZhCn BackupAndSyncLanSyncScreen = _TranslationsBackupAndSyncLanSyncScreenZhCn._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenZhCn BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenZhCn._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenZhCn DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenZhCn._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenZhCn DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenZhCn._(_root);
	@override late final _TranslationsDiversionRulesScreenZhCn DiversionRulesScreen = _TranslationsDiversionRulesScreenZhCn._(_root);
	@override late final _TranslationsDnsSettingsScreenZhCn DnsSettingsScreen = _TranslationsDnsSettingsScreenZhCn._(_root);
	@override late final _TranslationsFeedbackScreenZhCn FeedbackScreen = _TranslationsFeedbackScreenZhCn._(_root);
	@override late final _TranslationsFileContentViewerScreenZhCn FileContentViewerScreen = _TranslationsFileContentViewerScreenZhCn._(_root);
	@override late final _TranslationsHomeScreenZhCn HomeScreen = _TranslationsHomeScreenZhCn._(_root);
	@override late final _TranslationsLaunchFailedScreenZhCn LaunchFailedScreen = _TranslationsLaunchFailedScreenZhCn._(_root);
	@override late final _TranslationsMyProfilesEditScreenZhCn MyProfilesEditScreen = _TranslationsMyProfilesEditScreenZhCn._(_root);
	@override late final _TranslationsMyProfilesMergeScreenZhCn MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenZhCn._(_root);
	@override late final _TranslationsMyProfilesScreenZhCn MyProfilesScreen = _TranslationsMyProfilesScreenZhCn._(_root);
	@override late final _TranslationsNetCheckScreenZhCn NetCheckScreen = _TranslationsNetCheckScreenZhCn._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenZhCn NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenZhCn._(_root);
	@override late final _TranslationsNetConnectionsScreenZhCn NetConnectionsScreen = _TranslationsNetConnectionsScreenZhCn._(_root);
	@override late final _TranslationsPerAppAndroidScreenZhCn PerAppAndroidScreen = _TranslationsPerAppAndroidScreenZhCn._(_root);
	@override late final _TranslationsQrcodeScreenZhCn QrcodeScreen = _TranslationsQrcodeScreenZhCn._(_root);
	@override late final _TranslationsRegionSettingsScreenZhCn RegionSettingsScreen = _TranslationsRegionSettingsScreenZhCn._(_root);
	@override late final _TranslationsServerSelectScreenZhCn ServerSelectScreen = _TranslationsServerSelectScreenZhCn._(_root);
	@override late final _TranslationsSettingsScreenZhCn SettingsScreen = _TranslationsSettingsScreenZhCn._(_root);
	@override late final _TranslationsSpeedTestSettingsScreenZhCn SpeedTestSettingsScreen = _TranslationsSpeedTestSettingsScreenZhCn._(_root);
	@override late final _TranslationsTextToQrCodeScreenZhCn TextToQrCodeScreen = _TranslationsTextToQrCodeScreenZhCn._(_root);
	@override late final _TranslationsUserAgreementScreenZhCn UserAgreementScreen = _TranslationsUserAgreementScreenZhCn._(_root);
	@override late final _TranslationsVersionUpdateScreenZhCn VersionUpdateScreen = _TranslationsVersionUpdateScreenZhCn._(_root);
	@override late final _TranslationsCommonWidgetZhCn CommonWidget = _TranslationsCommonWidgetZhCn._(_root);
	@override late final _TranslationsServerManagerZhCn ServerManager = _TranslationsServerManagerZhCn._(_root);
	@override late final _TranslationsMainZhCn main = _TranslationsMainZhCn._(_root);
	@override String get enable => '启用';
	@override String get disable => '禁用';
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
	@override String get remove => '删除';
	@override String get edit => '编辑';
	@override String get view => '查看';
	@override String get more => '更多';
	@override String get getProfile => '获取配置';
	@override String get addProfile => '添加配置';
	@override String get addSuccess => '添加成功';
	@override String addSuccessThen({required Object p}) => '配置生成成功,请到[${p}]查看';
	@override String addFailed({required Object p}) => '添加失败:${p}';
	@override String get removeConfirm => '确认删除?';
	@override String get tips => '提示';
	@override String get copy => '拷贝';
	@override String get ok => '确定';
	@override String get cancel => '取消';
	@override String get feedback => '反馈';
	@override String get faq => '常见问题';
	@override String get download => '下载';
	@override String get loading => '加载中...';
	@override String updateFailed({required Object p}) => '更新失败:${p}';
	@override String get days => '天';
	@override String get hours => '时';
	@override String get minutes => '分';
	@override String get seconds => '秒';
	@override String get protocol => '协议';
	@override String get search => '搜索';
	@override String get custom => '自定义';
	@override String get connect => '连接';
	@override String get disconnect => '断开';
	@override String get connected => '已连接';
	@override String get disconnected => '未连接';
	@override String get connecting => '连接中';
	@override String get connectTimeout => '连接超时';
	@override String get timeout => '超时';
	@override String get language => '语言';
	@override String get next => '下一步';
	@override String get done => '完成';
	@override String get apply => '应用';
	@override String get refresh => '刷新';
	@override String get retry => '是否重试?';
	@override String get none => '无';
	@override String get reset => '重置';
	@override String get submit => '提交';
	@override String get account => '账号';
	@override String get password => '密码';
	@override String get required => '必填';
	@override String get diversion => '分流';
	@override String get diversionRules => '分流规则';
	@override String get diversionRulesEnable => '启用[ISP]分流规则';
	@override String get diversionCustomGroup => '自定义分流组';
	@override String get diversionCustomGroupPreset => '预置[自定义分流组]';
	@override String get diversionCustomGroupPresetTips => '注意:启用的项会添加/覆盖到[自定义分流组]和[分流规则]';
	@override String get diversionCustomGroupAddTips => '注意:添加完毕后可能需要手动调整排序,否则新添加的分流可能不会生效';
	@override String get urlTestCustomGroup => '自定义代理组';
	@override String get rulesetEnableTips => '提示:开启选项后,请到[分流规则]设置相关规则,否则不会生效';
	@override String get ispUserAgentTips => '[ISP]会根据[HTTP]请求里的[UserAgent]下发不同订阅类型的数据';
	@override String get ispDiversionTips => '[ISP]提供的分流规则;[V2Ray]类型的订阅不支持分流规则';
	@override String get staticIP => '静态IP';
	@override String get other => '其他';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get isp => 'ISP';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get urlInvalid => '无效URL';
	@override String get outboundActionCurrentSelected => '当前选择';
	@override String get outboundActionUrltest => '自动选择';
	@override String get outboundActionDirect => '直连';
	@override String get outboundActionBlock => '拦截';
	@override String get routeFinal => 'final';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get setting => '设置';
	@override String get protocolSniff => '协议探测';
	@override String get protocolSniffOverrideDestination => '探测的域名覆盖连接目标地址';
	@override String get remark => '备注';
	@override String get remarkCannotEmpty => '备注不能为空';
	@override String get remarkTooLong => '备注最长32字符';
	@override String get remarkExist => '备注已存在,请使用其他名称';
	@override String get domainSuffix => '域名后缀';
	@override String get domain => '域名';
	@override String get domainKeyword => '域名关键词';
	@override String get domainRegex => '域名正则';
	@override String get ip => 'IP';
	@override String get port => '端口';
	@override String get appPackage => '应用包名';
	@override String get processName => '进程名称';
	@override String get processPath => '进程路径';
	@override String get systemProxy => '系统代理';
	@override String get netInterfaces => '网络接口';
	@override String get netSpeed => '速度';
	@override String get website => '官网';
	@override String get rule => '规则';
	@override String get global => '全局';
	@override String get qrcode => '二维码';
	@override String get scanQrcode => '扫描二维码';
	@override String get scanResult => '扫描结果';
	@override String get backupAndSync => '备份与同步';
	@override String get importAndExport => '导入/导出';
	@override String get import => '导入';
	@override String get export => '导出';
	@override String get send => '发送';
	@override String get receive => '接收';
	@override String sendOrReceiveNotMatch({required Object p}) => '请使用[${p}]';
	@override String get sendConfirm => '确认发送?';
	@override String get termOfUse => '使用条款';
	@override String get privacyPolicy => '隐私政策';
	@override String get about => '关于';
	@override String get name => '名称';
	@override String get version => '版本';
	@override String get notice => '通知';
	@override String get sort => '排序';
	@override String get novice => '新手模式';
	@override String get recommended => '推荐';
	@override String innerError({required Object p}) => '内部错误:${p}';
	@override String get logicOperation => '逻辑运算';
	@override String get share => '分享';
	@override String get candidateWord => '候选词';
	@override String get keywordOrRegx => '关键词/正则';
	@override String get importFromClipboard => '从剪贴板导入';
	@override String get exportToClipboard => '导出到剪贴板';
	@override String get server => '服务器';
	@override String get turnOffPrivateDirect => '请先开启[私有网络直连]';
	@override String targetConnectFailed({required Object p}) => '连接[${p}]失败,请确保设备在同一个局域网内';
	@override String get appleTVSync => '同步当前核心配置到Apple TV - Karing';
	@override String get appleTVSyncDone => '同步完成,请到Apple TV - Karing开启连接/重启连接';
	@override String get appleTVRemoveCoreConfig => '删除Apple TV - Karing核心配置';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing的核心配置文件已删除;VPN服务已断开连接';
	@override String get appleTVUrlInvalid => '无效的URL,请打开Apple TV - Karing,扫描Karing显示的二维码';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}]无此功能,请升级后再试';
	@override String get remoteProfileEditConfirm => '配置更新后,节点的修改将会被还原,是否继续?';
	@override String invalidFileType({required Object p}) => '无效的文件类型:${p}';
	@override String get mustBeValidHttpsURL => '必须为有效的 https URL';
	@override String fileNotExistReinstall({required Object p}) => '文件缺失[${p}],请重新安装';
	@override String get latencyTest => '延迟检测';
	@override String get latencyTestResolveIP => '手动检测时,同时解析出口IP';
	@override String get latencyTestTimeout => '超时时间';
	@override String get uwpExemption => 'UWP网络隔离豁免';
	@override String get ads => '广告';
	@override String get removeBannerAdsByShare => '分享[Karing]去广告';
	@override String get removeBannerAdsByReward => '观看广告去广告';
	@override String removeBannerAdsByShareTip({required Object p, required Object d}) => '分享一次,将会获得${p}天无广告奖励(可叠加,最多${d}天)';
	@override String removeBannerAdsByRewardTip({required Object p}) => '观看一段广告,将会获得${p}天无广告奖励(不可叠加)';
	@override String removeBannerAdsDone({required Object p}) => '已获得${p}天无广告奖励';
	@override String get edgeRuntimeNotInstalled => '当前设备尚未安装Edge或Edge WebView2运行时,无法展示页面,请下载安装Edge WebView2运行时(x64)后,重启app再试';
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
	@override String get versionChannel => '自动更新通道';
	@override String get disableUAReport => '关闭行为数据上报';
	@override String get disableUAReportTip => '行为数据上报有助于我们改进产品体验;低于主版本的版本将自动关闭的所有数据上报([应用激活]除外)';
	@override String get devOptions => '开发者选项';
	@override String get enableDebugLog => '开启调试日志';
	@override String get viewFilsContent => '查看文件';
	@override String get enablePprof => '启用pprof';
	@override String get pprofPanel => 'pprof面板';
	@override String get openDir => '打开文件目录';
	@override String get useOriginalSBProfile => '使用原始sing-box配置';
}

// Path: AddProfileByImportFromFileScreen
class _TranslationsAddProfileByImportFromFileScreenZhCn implements TranslationsAddProfileByImportFromFileScreenEn {
	_TranslationsAddProfileByImportFromFileScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '导入配置文件';
	@override String get chooseFile => '选择文件';
	@override String get configExist => '配置已存在,请勿重复添加';
}

// Path: AddProfileByLinkOrContentScreen
class _TranslationsAddProfileByLinkOrContentScreenZhCn implements TranslationsAddProfileByLinkOrContentScreenEn {
	_TranslationsAddProfileByLinkOrContentScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '添加配置链接';
	@override String get updateTimerInterval => '更新时间间隔';
	@override String get updateTimerIntervalTips => '最小:5m';
	@override String get profileLinkContent => '配置链接/内容';
	@override String get profileLinkContentHit => '配置链接/内容[必填] (支持Clash,V2ray(支持批量),Stash,Karing,Sing-box,Shadowsocks,Sub,Github配置链接)';
	@override String get subscriptionCannotEmpty => '配置链接不能为空';
	@override String get configExist => '配置已存在,请勿重复添加';
	@override String get invalidUrl => '配置链接长度过长';
	@override String addFailedFormatException({required Object p}) => '格式错误,请订正后重新添加:${p}';
	@override String addFailedThenDownloadAndImport({required Object p}) => '添加失败:${p}, 请尝试修改[UserAgent]后重试,或者用设备自带的浏览器打开配置链接,并将浏览器下载的配置文件导入到本应用';
	@override String addFailedHandshakeException({required Object p}) => '添加失败:${p}, 请打开代理或者修改当前代理节点后重试';
}

// Path: AddProfileByScanQrcodeScanScreen
class _TranslationsAddProfileByScanQrcodeScanScreenZhCn implements TranslationsAddProfileByScanQrcodeScanScreenEn {
	_TranslationsAddProfileByScanQrcodeScanScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get copy => '拷贝链接';
	@override String get open => '打开链接';
	@override String get requestCameraPermission => '请开启摄像头权限';
	@override String get requestScreenAccess => '请到系统设置-隐私与安全-屏幕录制 为本应用添加权限';
	@override String get screenshot => '截图';
	@override String get scanFromImage => '打开二维码图片';
	@override String get scanNoResult => '解析图片失败,请确保截图为有效的二维码';
	@override String get scanEmptyResult => '扫描结果为空';
	@override String scanException({required Object p}) => '解析图片异常,请确保截图为有效的二维码:${p}';
}

// Path: BackupAndSyncLanSyncScreen
class _TranslationsBackupAndSyncLanSyncScreenZhCn implements TranslationsBackupAndSyncLanSyncScreenEn {
	_TranslationsBackupAndSyncLanSyncScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '局域网同步';
	@override String get lanSyncNotQuitTips => '同步完成前请勿退出此界面';
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
	@override String get setDiversionRule => '提示:保存后,请到[分流规则]设置相关规则,否则不会生效';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenZhCn implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '分流规则探测';
	@override String get detect => '探测';
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

// Path: FeedbackScreen
class _TranslationsFeedbackScreenZhCn implements TranslationsFeedbackScreenEn {
	_TranslationsFeedbackScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get content => '反馈内容';
	@override String get contentHit => '必填, 最长500字符';
	@override String get contentCannotEmpty => '反馈内容不能为空';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenZhCn implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '文件内容查看';
	@override String get chooseFile => '选择文件';
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
	@override String get trafficTotal => '总流量';
	@override String get trafficProxy => '代理流量';
	@override String get myLinkEmpty => '请先设置[快捷链接]后再使用';
	@override String get deviceNoSpace => '磁盘空间不足';
	@override String tooMuchServers({required Object p, required Object p1}) => '代理服务器[${p}>${p1}]过多,可能因系统内存限制而无法连接';
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

// Path: MyProfilesEditScreen
class _TranslationsMyProfilesEditScreenZhCn implements TranslationsMyProfilesEditScreenEn {
	_TranslationsMyProfilesEditScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '编辑配置';
	@override String get urlExist => 'URL已存在,请使用其他URL';
	@override String get updateTimerInterval => '更新时间间隔';
	@override String get updateTimerIntervalTips => '最小:5m';
	@override String get reloadAfterProfileUpdate => '配置更新后重新加载';
	@override String get testLatencyAfterProfileUpdate => '配置自动更新后启动延迟测试';
	@override String get testLatencyAfterProfileUpdateTips => 'VPN需要处于已连接状态,并且开启[配置更新后重新加载]';
	@override String get testLatencyAutoRemove => '自动移除延迟测试失败的服务器';
	@override String get testLatencyAutoRemoveTips => '最多尝试3次';
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

// Path: MyProfilesScreen
class _TranslationsMyProfilesScreenZhCn implements TranslationsMyProfilesScreenEn {
	_TranslationsMyProfilesScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '我的配置';
	@override String get atLeastOneEnable => '无法禁用,请至少保留一个配置可用';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenZhCn implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '网络检测';
	@override String get warn => '注意:由于受网络环境及分流规则等影响,测试结果并不完全等价实际中使用的效果';
	@override String get check => '检测';
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
	@override String get hideSystemApp => '隐藏系统应用';
	@override String get hideAppIcon => '隐藏应用图标';
	@override String get enableAppQueryPermission => '开启 [获取应用列表] 权限';
}

// Path: QrcodeScreen
class _TranslationsQrcodeScreenZhCn implements TranslationsQrcodeScreenEn {
	_TranslationsQrcodeScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get tooLong => '文本过长,无法展示';
	@override String get copy => '拷贝链接';
	@override String get open => '打开链接';
	@override String get share => '分享链接';
	@override String get shareImage => '分享二维码';
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
	@override String ispFaq({required Object p}) => 'FAQ[${p}]';
	@override String cleanISP({required Object p}) => '清除ISP[${p}]';
	@override String get openISP => '打开ISP链接';
	@override String get cleanISPNoParam => '清除ISP信息';
	@override String get getTranffic => '获取流量';
	@override String get tutorial => '使用教程';
	@override String get commonlyUsedRulesets => '常用规则集';
	@override String get howToRemoveAds => '如何移除广告';
	@override String get htmlBoard => '在线面板';
	@override String get dnsLeakDetection => 'DNS泄露检测';
	@override String get speedTest => '测速';
	@override String get downloadProfilePreferProxy => '优先使用代理下载配置';
	@override String get downloadProfilePreferProxyTips => '如果当前已连接,则优先通过已连接的代理下载配置';
	@override String get rulesetDirectDownlad => 'Rule Set直连下载';
	@override String get hideUnusedDiversionGroup => '隐藏未启用的分流组';
	@override String get disableISPDiversionGroup => '禁用ISP分流规则';
	@override String get portSetting => '端口';
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
	@override String get tlsInsecureEnable => '跳过证书验证';
	@override String get tlsFragmentEnable => '启用TLS分段';
	@override String get tlsFragmentSize => 'TLS分段大小';
	@override String get tlsFragmentSleep => 'TLS分段休眠';
	@override String get tlsMixedCaseSNIEnable => '启用TLS混合SNI';
	@override String get tlsPaddingEnable => '启用TLS填充';
	@override String get tlsPaddingSize => 'TLS填充大小';
	@override String get dnsEnableRule => '启用DNS分流规则';
	@override String get dnsEnableFakeIp => '启用FakeIP';
	@override String get dnsEnableClientSubnet => '启用ECS';
	@override String get dnsEnableProxyResolveByProxy => '[代理流量]通过代理服务器解析DNS';
	@override String get dnsEnableFinalResolveByProxy => '[final]通过代理服务器解析DNS';
	@override String get dnsTestDomain => '测试域名';
	@override String get dnsTestDomainInvalid => '无效的域名';
	@override String get dnsTypeOutbound => '代理服务器';
	@override String get dnsTypeDirect => '直连流量';
	@override String get dnsTypeProxy => '代理流量';
	@override String get dnsTypeResolver => 'DNS服务器';
	@override String get dnsEnableRuleTips => '启用后,域名会根据分流规则选择对应的DNS服务器进行解析';
	@override String get dnsEnableFakeIpTips => '启用FakeIP后,如果断开VPN连接,你的应用可能需要重启;此功能需要开启[TUN模式]';
	@override String get dnsTypeOutboundTips => '用于代理服务器的域名解析';
	@override String get dnsTypeDirectTips => '用于直连流量的域名解析';
	@override String get dnsTypeProxyTips => '用于代理流量的域名解析';
	@override String get dnsTypeResolverTips => '用于DNS服务器的域名解析';
	@override String get dnsTypeFinalTips => '用于其他流量的域名解析';
	@override String get dnsAutoSetServer => '自动设置服务器';
	@override String get dnsResetServer => '重置服务器';
	@override String get inboundDomainResolve => '解析入站域名';
	@override String get privateDirect => '私有网络直连';
	@override String inboundDomainResolveTips({required Object p}) => '某些未配置分流规则的域名需要解析后才可能命中基于IP的分流规则;此功能影响代理端口[${p}]的入站请求';
	@override String get useRomoteRes => '使用远程资源';
	@override String get autoSelect => '自动选择';
	@override String get autoSelectServerIgnorePerProxyServer => '忽略[前置代理]代理服务器';
	@override String get autoSelectServerInterval => '延迟检测时间间隔';
	@override String get autoSelectServerReTestIfNetworkUpdate => '网络变化时重新检测';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => '手动延时检测后更新当前服务器';
	@override String get autoSelectServerIntervalTips => '延迟检测时间间隔越短,服务器延迟数据更新越及时,但会占用更多资源,耗电更快';
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
	@override String get myLink => '快捷链接';
	@override String get myLinkInvalid => '无效的URL';
	@override String get autoConnectAfterLaunch => '启动后自动连接';
	@override String get hideAfterLaunch => '启动后隐藏窗口';
	@override String get autoSetSystemProxy => '连接后自动设置系统代理';
	@override String get disconnectWhenQuit => '退出应用时关闭连接';
	@override String get allowBypass => '允许应用绕过VPN';
	@override String get importSuccess => '导入成功';
	@override String get rewriteConfirm => '该文件将覆盖本地已有配置,是否继续?';
	@override String get networkShare => '网络共享';
	@override String get frontProxy => '前置代理';
	@override String frontProxyTips({required Object p}) => '数据->前置代理服务器[多个前置代理服务器:由上到下]->代理服务器[${p}]->目标服务器';
	@override String get allowOtherHostsConnect => '允许其他主机接入';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get tunAutoRoute => 'Auto Route';
	@override String get tunStrictRoute => '严格路由';
	@override String get tunStrictRouteTips => '如果开启共享后,其他无法接入此设备,请尝试关闭此开关';
	@override String get enableCluster => '开启Socks/Http代理集群';
	@override String get clusterAllowOtherHostsConnect => '允许其他主机接入代理集群';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => '代理集群认证';
	@override String get tunMode => 'TUN模式';
	@override String get tunModeTips => 'TUN模式将接管系统所有流量[此模式下无需开启系统代理]';
	@override String get tunModeRunAsAdmin => 'TUN模式需要系统管理员权限,请以管理员身份重新启动应用';
	@override String get tunStack => '网络栈';
	@override String get launchAtStartup => '开机启动';
	@override String get quitWhenSwitchSystemUser => '切换系统用户时退出应用';
	@override String get handleScheme => '系统Scheme调用';
	@override String get portableMode => '便携模式';
	@override String get portableModeDisableTips => '如需退出便携模式,请退出[karing]后,手动删除[karing.exe]同目录下的[profiles]文件夹即可';
	@override String get handleKaringScheme => '处理karing://调用';
	@override String get handleClashScheme => '处理clash://调用';
	@override String get handleSingboxScheme => '处理sing-box://调用';
	@override String get alwayOnVPN => '始终开启连接';
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
	@override String get rateInApp => '评分';
	@override String get rateInAppStore => '在App Store上评分';
}

// Path: SpeedTestSettingsScreen
class _TranslationsSpeedTestSettingsScreenZhCn implements TranslationsSpeedTestSettingsScreenEn {
	_TranslationsSpeedTestSettingsScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '测速URL';
}

// Path: TextToQrCodeScreen
class _TranslationsTextToQrCodeScreenZhCn implements TranslationsTextToQrCodeScreenEn {
	_TranslationsTextToQrCodeScreenZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '文本转二维码';
	@override String get convert => '转换';
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

// Path: ServerManager
class _TranslationsServerManagerZhCn implements TranslationsServerManagerEn {
	_TranslationsServerManagerZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get noServerAvaliable => '无可用服务器,请确保配置链接或配置文件有效;如果你的配置来源于GitHub,请从页面上的[Raw]按钮获取链接地址';
	@override String get filePathCannotEmpty => '文件路径不能为空';
	@override String fileNotExist({required Object p}) => '文件不存在:${p}';
	@override String get urlCannotEmpty => '链接不能为空';
	@override String get invalidUrl => '错误的配置链接';
	@override String get parseFailed => '解析配置失败';
}

// Path: main
class _TranslationsMainZhCn implements TranslationsMainEn {
	_TranslationsMainZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayZhCn tray = _TranslationsMainTrayZhCn._(_root);
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
			case 'AboutScreen.versionChannel': return '自动更新通道';
			case 'AboutScreen.disableUAReport': return '关闭行为数据上报';
			case 'AboutScreen.disableUAReportTip': return '行为数据上报有助于我们改进产品体验;低于主版本的版本将自动关闭的所有数据上报([应用激活]除外)';
			case 'AboutScreen.devOptions': return '开发者选项';
			case 'AboutScreen.enableDebugLog': return '开启调试日志';
			case 'AboutScreen.viewFilsContent': return '查看文件';
			case 'AboutScreen.enablePprof': return '启用pprof';
			case 'AboutScreen.pprofPanel': return 'pprof面板';
			case 'AboutScreen.openDir': return '打开文件目录';
			case 'AboutScreen.useOriginalSBProfile': return '使用原始sing-box配置';
			case 'AddProfileByImportFromFileScreen.title': return '导入配置文件';
			case 'AddProfileByImportFromFileScreen.chooseFile': return '选择文件';
			case 'AddProfileByImportFromFileScreen.configExist': return '配置已存在,请勿重复添加';
			case 'AddProfileByLinkOrContentScreen.title': return '添加配置链接';
			case 'AddProfileByLinkOrContentScreen.updateTimerInterval': return '更新时间间隔';
			case 'AddProfileByLinkOrContentScreen.updateTimerIntervalTips': return '最小:5m';
			case 'AddProfileByLinkOrContentScreen.profileLinkContent': return '配置链接/内容';
			case 'AddProfileByLinkOrContentScreen.profileLinkContentHit': return '配置链接/内容[必填] (支持Clash,V2ray(支持批量),Stash,Karing,Sing-box,Shadowsocks,Sub,Github配置链接)';
			case 'AddProfileByLinkOrContentScreen.subscriptionCannotEmpty': return '配置链接不能为空';
			case 'AddProfileByLinkOrContentScreen.configExist': return '配置已存在,请勿重复添加';
			case 'AddProfileByLinkOrContentScreen.invalidUrl': return '配置链接长度过长';
			case 'AddProfileByLinkOrContentScreen.addFailedFormatException': return ({required Object p}) => '格式错误,请订正后重新添加:${p}';
			case 'AddProfileByLinkOrContentScreen.addFailedThenDownloadAndImport': return ({required Object p}) => '添加失败:${p}, 请尝试修改[UserAgent]后重试,或者用设备自带的浏览器打开配置链接,并将浏览器下载的配置文件导入到本应用';
			case 'AddProfileByLinkOrContentScreen.addFailedHandshakeException': return ({required Object p}) => '添加失败:${p}, 请打开代理或者修改当前代理节点后重试';
			case 'AddProfileByScanQrcodeScanScreen.copy': return '拷贝链接';
			case 'AddProfileByScanQrcodeScanScreen.open': return '打开链接';
			case 'AddProfileByScanQrcodeScanScreen.requestCameraPermission': return '请开启摄像头权限';
			case 'AddProfileByScanQrcodeScanScreen.requestScreenAccess': return '请到系统设置-隐私与安全-屏幕录制 为本应用添加权限';
			case 'AddProfileByScanQrcodeScanScreen.screenshot': return '截图';
			case 'AddProfileByScanQrcodeScanScreen.scanFromImage': return '打开二维码图片';
			case 'AddProfileByScanQrcodeScanScreen.scanNoResult': return '解析图片失败,请确保截图为有效的二维码';
			case 'AddProfileByScanQrcodeScanScreen.scanEmptyResult': return '扫描结果为空';
			case 'AddProfileByScanQrcodeScanScreen.scanException': return ({required Object p}) => '解析图片异常,请确保截图为有效的二维码:${p}';
			case 'BackupAndSyncLanSyncScreen.title': return '局域网同步';
			case 'BackupAndSyncLanSyncScreen.lanSyncNotQuitTips': return '同步完成前请勿退出此界面';
			case 'BackupAndSyncWebdavScreen.webdavServerUrl': return '服务器地址';
			case 'BackupAndSyncWebdavScreen.webdavRequired': return '不能为空';
			case 'BackupAndSyncWebdavScreen.webdavLoginFailed': return '登录失败:';
			case 'BackupAndSyncWebdavScreen.webdavListFailed': return '获取文件列表失败:';
			case 'DiversionGroupCustomEditScreen.invalidDomain': return ({required Object p}) => '无效的 [Domain]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidIpCidr': return ({required Object p}) => '无效的 [IP Cidr]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidPort': return ({required Object p}) => '无效的 [Port]:${p}';
			case 'DiversionGroupCustomEditScreen.invalidRuleSet': return ({required Object p}) => '无效的 [Rule Set]:${p}, URL必须是有效的https URL,并且文件扩展名为.srs/.json的binary文件';
			case 'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn': return ({required Object p}) => '无效的 [Rule Set(build-in)]:${p}, 格式为geosite:xxx 或 geoip:xxx 或 acl:xxx,并且xxx应为有效的规则名';
			case 'DiversionGroupCustomEditScreen.setDiversionRule': return '提示:保存后,请到[分流规则]设置相关规则,否则不会生效';
			case 'DiversionRuleDetectScreen.title': return '分流规则探测';
			case 'DiversionRuleDetectScreen.detect': return '探测';
			case 'DiversionRuleDetectScreen.rule': return '规则:';
			case 'DiversionRuleDetectScreen.outbound': return '代理服务器:';
			case 'DiversionRulesScreen.diversionRulesMatchTips': return '提示:从上到下依次尝试匹配规则,如果没有匹配到规则,则使用[final]';
			case 'DnsSettingsScreen.ispCanNotEmpty': return 'ISP 不能为空';
			case 'DnsSettingsScreen.urlCanNotEmpty': return 'URL 不能为空';
			case 'DnsSettingsScreen.error': return ({required Object p}) => '不支持的类型:${p}';
			case 'DnsSettingsScreen.dnsDesc': return '第一列延迟数据为直连查询延迟;\n第二列:开启[[代理流量]通过代理服务器解析DNS]:延迟数据为通过当前代理服务器转发的查询延迟;未开启[[代理流量]通过代理服务器解析DNS]:延迟数据为直连查询延迟';
			case 'FeedbackScreen.content': return '反馈内容';
			case 'FeedbackScreen.contentHit': return '必填, 最长500字符';
			case 'FeedbackScreen.contentCannotEmpty': return '反馈内容不能为空';
			case 'FileContentViewerScreen.title': return '文件内容查看';
			case 'FileContentViewerScreen.chooseFile': return '选择文件';
			case 'FileContentViewerScreen.clearFileContent': return '确认清空文件内容?';
			case 'FileContentViewerScreen.clearFileContentTips': return '确认清空配置文件内容? 清空配置文件可能会导致数据丢失或应用功能异常, 请谨慎操作';
			case 'HomeScreen.toSelectServer': return '请选择服务器';
			case 'HomeScreen.invalidServer': return '已失效,请重新选择';
			case 'HomeScreen.disabledServer': return '已被禁用,请重新选择';
			case 'HomeScreen.expiredServer': return '无可用服务器:配置可能已过期或被禁用';
			case 'HomeScreen.systemProxyTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'HomeScreen.trafficTotal': return '总流量';
			case 'HomeScreen.trafficProxy': return '代理流量';
			case 'HomeScreen.myLinkEmpty': return '请先设置[快捷链接]后再使用';
			case 'HomeScreen.deviceNoSpace': return '磁盘空间不足';
			case 'HomeScreen.tooMuchServers': return ({required Object p, required Object p1}) => '代理服务器[${p}>${p1}]过多,可能因系统内存限制而无法连接';
			case 'LaunchFailedScreen.invalidProcess': return '应用启动失败[无效的进程名称],请重新安装应用到独立目录';
			case 'LaunchFailedScreen.invalidProfile': return '应用启动失败[访问配置文件失败],请重新安装应用';
			case 'LaunchFailedScreen.invalidVersion': return '应用启动失败[无效版本],请重新安装应用';
			case 'LaunchFailedScreen.systemVersionLow': return '应用启动失败[系统版本过低]';
			case 'LaunchFailedScreen.invalidInstallPath': return '无效的安装路径,请重新安装到有效路径';
			case 'MyProfilesEditScreen.title': return '编辑配置';
			case 'MyProfilesEditScreen.urlExist': return 'URL已存在,请使用其他URL';
			case 'MyProfilesEditScreen.updateTimerInterval': return '更新时间间隔';
			case 'MyProfilesEditScreen.updateTimerIntervalTips': return '最小:5m';
			case 'MyProfilesEditScreen.reloadAfterProfileUpdate': return '配置更新后重新加载';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdate': return '配置自动更新后启动延迟测试';
			case 'MyProfilesEditScreen.testLatencyAfterProfileUpdateTips': return 'VPN需要处于已连接状态,并且开启[配置更新后重新加载]';
			case 'MyProfilesEditScreen.testLatencyAutoRemove': return '自动移除延迟测试失败的服务器';
			case 'MyProfilesEditScreen.testLatencyAutoRemoveTips': return '最多尝试3次';
			case 'MyProfilesMergeScreen.profilesMerge': return '配置合并';
			case 'MyProfilesMergeScreen.profilesMergeTarget': return '目标配置';
			case 'MyProfilesMergeScreen.profilesMergeSource': return '源配置';
			case 'MyProfilesMergeScreen.profilesMergeTips': return '提示:源配置的分流信息将会被丢弃';
			case 'MyProfilesScreen.title': return '我的配置';
			case 'MyProfilesScreen.atLeastOneEnable': return '无法禁用,请至少保留一个配置可用';
			case 'NetCheckScreen.title': return '网络检测';
			case 'NetCheckScreen.warn': return '注意:由于受网络环境及分流规则等影响,测试结果并不完全等价实际中使用的效果';
			case 'NetCheckScreen.check': return '检测';
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
			case 'PerAppAndroidScreen.hideSystemApp': return '隐藏系统应用';
			case 'PerAppAndroidScreen.hideAppIcon': return '隐藏应用图标';
			case 'PerAppAndroidScreen.enableAppQueryPermission': return '开启 [获取应用列表] 权限';
			case 'QrcodeScreen.tooLong': return '文本过长,无法展示';
			case 'QrcodeScreen.copy': return '拷贝链接';
			case 'QrcodeScreen.open': return '打开链接';
			case 'QrcodeScreen.share': return '分享链接';
			case 'QrcodeScreen.shareImage': return '分享二维码';
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
			case 'SettingsScreen.ispFaq': return ({required Object p}) => 'FAQ[${p}]';
			case 'SettingsScreen.cleanISP': return ({required Object p}) => '清除ISP[${p}]';
			case 'SettingsScreen.openISP': return '打开ISP链接';
			case 'SettingsScreen.cleanISPNoParam': return '清除ISP信息';
			case 'SettingsScreen.getTranffic': return '获取流量';
			case 'SettingsScreen.tutorial': return '使用教程';
			case 'SettingsScreen.commonlyUsedRulesets': return '常用规则集';
			case 'SettingsScreen.howToRemoveAds': return '如何移除广告';
			case 'SettingsScreen.htmlBoard': return '在线面板';
			case 'SettingsScreen.dnsLeakDetection': return 'DNS泄露检测';
			case 'SettingsScreen.speedTest': return '测速';
			case 'SettingsScreen.downloadProfilePreferProxy': return '优先使用代理下载配置';
			case 'SettingsScreen.downloadProfilePreferProxyTips': return '如果当前已连接,则优先通过已连接的代理下载配置';
			case 'SettingsScreen.rulesetDirectDownlad': return 'Rule Set直连下载';
			case 'SettingsScreen.hideUnusedDiversionGroup': return '隐藏未启用的分流组';
			case 'SettingsScreen.disableISPDiversionGroup': return '禁用ISP分流规则';
			case 'SettingsScreen.portSetting': return '端口';
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
			case 'SettingsScreen.tlsInsecureEnable': return '跳过证书验证';
			case 'SettingsScreen.tlsFragmentEnable': return '启用TLS分段';
			case 'SettingsScreen.tlsFragmentSize': return 'TLS分段大小';
			case 'SettingsScreen.tlsFragmentSleep': return 'TLS分段休眠';
			case 'SettingsScreen.tlsMixedCaseSNIEnable': return '启用TLS混合SNI';
			case 'SettingsScreen.tlsPaddingEnable': return '启用TLS填充';
			case 'SettingsScreen.tlsPaddingSize': return 'TLS填充大小';
			case 'SettingsScreen.dnsEnableRule': return '启用DNS分流规则';
			case 'SettingsScreen.dnsEnableFakeIp': return '启用FakeIP';
			case 'SettingsScreen.dnsEnableClientSubnet': return '启用ECS';
			case 'SettingsScreen.dnsEnableProxyResolveByProxy': return '[代理流量]通过代理服务器解析DNS';
			case 'SettingsScreen.dnsEnableFinalResolveByProxy': return '[final]通过代理服务器解析DNS';
			case 'SettingsScreen.dnsTestDomain': return '测试域名';
			case 'SettingsScreen.dnsTestDomainInvalid': return '无效的域名';
			case 'SettingsScreen.dnsTypeOutbound': return '代理服务器';
			case 'SettingsScreen.dnsTypeDirect': return '直连流量';
			case 'SettingsScreen.dnsTypeProxy': return '代理流量';
			case 'SettingsScreen.dnsTypeResolver': return 'DNS服务器';
			case 'SettingsScreen.dnsEnableRuleTips': return '启用后,域名会根据分流规则选择对应的DNS服务器进行解析';
			case 'SettingsScreen.dnsEnableFakeIpTips': return '启用FakeIP后,如果断开VPN连接,你的应用可能需要重启;此功能需要开启[TUN模式]';
			case 'SettingsScreen.dnsTypeOutboundTips': return '用于代理服务器的域名解析';
			case 'SettingsScreen.dnsTypeDirectTips': return '用于直连流量的域名解析';
			case 'SettingsScreen.dnsTypeProxyTips': return '用于代理流量的域名解析';
			case 'SettingsScreen.dnsTypeResolverTips': return '用于DNS服务器的域名解析';
			case 'SettingsScreen.dnsTypeFinalTips': return '用于其他流量的域名解析';
			case 'SettingsScreen.dnsAutoSetServer': return '自动设置服务器';
			case 'SettingsScreen.dnsResetServer': return '重置服务器';
			case 'SettingsScreen.inboundDomainResolve': return '解析入站域名';
			case 'SettingsScreen.privateDirect': return '私有网络直连';
			case 'SettingsScreen.inboundDomainResolveTips': return ({required Object p}) => '某些未配置分流规则的域名需要解析后才可能命中基于IP的分流规则;此功能影响代理端口[${p}]的入站请求';
			case 'SettingsScreen.useRomoteRes': return '使用远程资源';
			case 'SettingsScreen.autoSelect': return '自动选择';
			case 'SettingsScreen.autoSelectServerIgnorePerProxyServer': return '忽略[前置代理]代理服务器';
			case 'SettingsScreen.autoSelectServerInterval': return '延迟检测时间间隔';
			case 'SettingsScreen.autoSelectServerReTestIfNetworkUpdate': return '网络变化时重新检测';
			case 'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest': return '手动延时检测后更新当前服务器';
			case 'SettingsScreen.autoSelectServerIntervalTips': return '延迟检测时间间隔越短,服务器延迟数据更新越及时,但会占用更多资源,耗电更快';
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
			case 'SettingsScreen.myLink': return '快捷链接';
			case 'SettingsScreen.myLinkInvalid': return '无效的URL';
			case 'SettingsScreen.autoConnectAfterLaunch': return '启动后自动连接';
			case 'SettingsScreen.hideAfterLaunch': return '启动后隐藏窗口';
			case 'SettingsScreen.autoSetSystemProxy': return '连接后自动设置系统代理';
			case 'SettingsScreen.disconnectWhenQuit': return '退出应用时关闭连接';
			case 'SettingsScreen.allowBypass': return '允许应用绕过VPN';
			case 'SettingsScreen.importSuccess': return '导入成功';
			case 'SettingsScreen.rewriteConfirm': return '该文件将覆盖本地已有配置,是否继续?';
			case 'SettingsScreen.networkShare': return '网络共享';
			case 'SettingsScreen.frontProxy': return '前置代理';
			case 'SettingsScreen.frontProxyTips': return ({required Object p}) => '数据->前置代理服务器[多个前置代理服务器:由上到下]->代理服务器[${p}]->目标服务器';
			case 'SettingsScreen.allowOtherHostsConnect': return '允许其他主机接入';
			case 'SettingsScreen.allowOtherHostsConnectTips': return ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
			case 'SettingsScreen.tunAutoRoute': return 'Auto Route';
			case 'SettingsScreen.tunStrictRoute': return '严格路由';
			case 'SettingsScreen.tunStrictRouteTips': return '如果开启共享后,其他无法接入此设备,请尝试关闭此开关';
			case 'SettingsScreen.enableCluster': return '开启Socks/Http代理集群';
			case 'SettingsScreen.clusterAllowOtherHostsConnect': return '允许其他主机接入代理集群';
			case 'SettingsScreen.clusterAllowOtherHostsConnectTips': return ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
			case 'SettingsScreen.clusterAuth': return '代理集群认证';
			case 'SettingsScreen.tunMode': return 'TUN模式';
			case 'SettingsScreen.tunModeTips': return 'TUN模式将接管系统所有流量[此模式下无需开启系统代理]';
			case 'SettingsScreen.tunModeRunAsAdmin': return 'TUN模式需要系统管理员权限,请以管理员身份重新启动应用';
			case 'SettingsScreen.tunStack': return '网络栈';
			case 'SettingsScreen.launchAtStartup': return '开机启动';
			case 'SettingsScreen.quitWhenSwitchSystemUser': return '切换系统用户时退出应用';
			case 'SettingsScreen.handleScheme': return '系统Scheme调用';
			case 'SettingsScreen.portableMode': return '便携模式';
			case 'SettingsScreen.portableModeDisableTips': return '如需退出便携模式,请退出[karing]后,手动删除[karing.exe]同目录下的[profiles]文件夹即可';
			case 'SettingsScreen.handleKaringScheme': return '处理karing://调用';
			case 'SettingsScreen.handleClashScheme': return '处理clash://调用';
			case 'SettingsScreen.handleSingboxScheme': return '处理sing-box://调用';
			case 'SettingsScreen.alwayOnVPN': return '始终开启连接';
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
			case 'SettingsScreen.rateInApp': return '评分';
			case 'SettingsScreen.rateInAppStore': return '在App Store上评分';
			case 'SpeedTestSettingsScreen.title': return '测速URL';
			case 'TextToQrCodeScreen.title': return '文本转二维码';
			case 'TextToQrCodeScreen.convert': return '转换';
			case 'UserAgreementScreen.privacyFirst': return '您的隐私很重要';
			case 'UserAgreementScreen.agreeAndContinue': return '接受并继续';
			case 'VersionUpdateScreen.versionReady': return ({required Object p}) => '新版本[${p}]已就绪';
			case 'VersionUpdateScreen.update': return '重启更新';
			case 'VersionUpdateScreen.cancel': return '暂不更新';
			case 'CommonWidget.diableAlwayOnVPN': return '如果开启了[始终开启VPN], 请关闭[始终开启VPN]后重试连接';
			case 'CommonWidget.resetPort': return '请将端口改为其他可用端口或者关闭占用该端口的应用';
			case 'ServerManager.noServerAvaliable': return '无可用服务器,请确保配置链接或配置文件有效;如果你的配置来源于GitHub,请从页面上的[Raw]按钮获取链接地址';
			case 'ServerManager.filePathCannotEmpty': return '文件路径不能为空';
			case 'ServerManager.fileNotExist': return ({required Object p}) => '文件不存在:${p}';
			case 'ServerManager.urlCannotEmpty': return '链接不能为空';
			case 'ServerManager.invalidUrl': return '错误的配置链接';
			case 'ServerManager.parseFailed': return '解析配置失败';
			case 'main.tray.menuOpen': return '    打开    ';
			case 'main.tray.menuExit': return '    退出    ';
			case 'enable': return '启用';
			case 'disable': return '禁用';
			case 'filter': return '过滤';
			case 'filterMethod': return '过滤方式';
			case 'include': return '包含';
			case 'exclude': return '排除';
			case 'all': return '所有';
			case 'prefer': return '优先';
			case 'only': return '仅';
			case 'open': return '打开';
			case 'close': return '关闭';
			case 'quit': return '退出';
			case 'add': return '添加';
			case 'remove': return '删除';
			case 'edit': return '编辑';
			case 'view': return '查看';
			case 'more': return '更多';
			case 'getProfile': return '获取配置';
			case 'addProfile': return '添加配置';
			case 'addSuccess': return '添加成功';
			case 'addSuccessThen': return ({required Object p}) => '配置生成成功,请到[${p}]查看';
			case 'addFailed': return ({required Object p}) => '添加失败:${p}';
			case 'removeConfirm': return '确认删除?';
			case 'tips': return '提示';
			case 'copy': return '拷贝';
			case 'ok': return '确定';
			case 'cancel': return '取消';
			case 'feedback': return '反馈';
			case 'faq': return '常见问题';
			case 'download': return '下载';
			case 'loading': return '加载中...';
			case 'updateFailed': return ({required Object p}) => '更新失败:${p}';
			case 'days': return '天';
			case 'hours': return '时';
			case 'minutes': return '分';
			case 'seconds': return '秒';
			case 'protocol': return '协议';
			case 'search': return '搜索';
			case 'custom': return '自定义';
			case 'connect': return '连接';
			case 'disconnect': return '断开';
			case 'connected': return '已连接';
			case 'disconnected': return '未连接';
			case 'connecting': return '连接中';
			case 'connectTimeout': return '连接超时';
			case 'timeout': return '超时';
			case 'language': return '语言';
			case 'next': return '下一步';
			case 'done': return '完成';
			case 'apply': return '应用';
			case 'refresh': return '刷新';
			case 'retry': return '是否重试?';
			case 'none': return '无';
			case 'reset': return '重置';
			case 'submit': return '提交';
			case 'account': return '账号';
			case 'password': return '密码';
			case 'required': return '必填';
			case 'diversion': return '分流';
			case 'diversionRules': return '分流规则';
			case 'diversionRulesEnable': return '启用[ISP]分流规则';
			case 'diversionCustomGroup': return '自定义分流组';
			case 'diversionCustomGroupPreset': return '预置[自定义分流组]';
			case 'diversionCustomGroupPresetTips': return '注意:启用的项会添加/覆盖到[自定义分流组]和[分流规则]';
			case 'diversionCustomGroupAddTips': return '注意:添加完毕后可能需要手动调整排序,否则新添加的分流可能不会生效';
			case 'urlTestCustomGroup': return '自定义代理组';
			case 'rulesetEnableTips': return '提示:开启选项后,请到[分流规则]设置相关规则,否则不会生效';
			case 'ispUserAgentTips': return '[ISP]会根据[HTTP]请求里的[UserAgent]下发不同订阅类型的数据';
			case 'ispDiversionTips': return '[ISP]提供的分流规则;[V2Ray]类型的订阅不支持分流规则';
			case 'staticIP': return '静态IP';
			case 'other': return '其他';
			case 'dns': return 'DNS';
			case 'url': return 'URL';
			case 'isp': return 'ISP';
			case 'tls': return 'TLS';
			case 'userAgent': return 'UserAgent';
			case 'urlInvalid': return '无效URL';
			case 'outboundActionCurrentSelected': return '当前选择';
			case 'outboundActionUrltest': return '自动选择';
			case 'outboundActionDirect': return '直连';
			case 'outboundActionBlock': return '拦截';
			case 'routeFinal': return 'final';
			case 'rulesetGeoSite': return 'GeoSite';
			case 'rulesetGeoIp': return 'GeoIP';
			case 'rulesetAcl': return 'ACL';
			case 'iCloud': return 'iCloud';
			case 'appleTV': return 'Apple TV';
			case 'webdav': return 'Webdav';
			case 'setting': return '设置';
			case 'protocolSniff': return '协议探测';
			case 'protocolSniffOverrideDestination': return '探测的域名覆盖连接目标地址';
			case 'remark': return '备注';
			case 'remarkCannotEmpty': return '备注不能为空';
			case 'remarkTooLong': return '备注最长32字符';
			case 'remarkExist': return '备注已存在,请使用其他名称';
			case 'domainSuffix': return '域名后缀';
			case 'domain': return '域名';
			case 'domainKeyword': return '域名关键词';
			case 'domainRegex': return '域名正则';
			case 'ip': return 'IP';
			case 'port': return '端口';
			case 'appPackage': return '应用包名';
			case 'processName': return '进程名称';
			case 'processPath': return '进程路径';
			case 'systemProxy': return '系统代理';
			case 'netInterfaces': return '网络接口';
			case 'netSpeed': return '速度';
			case 'website': return '官网';
			case 'rule': return '规则';
			case 'global': return '全局';
			case 'qrcode': return '二维码';
			case 'scanQrcode': return '扫描二维码';
			case 'scanResult': return '扫描结果';
			case 'backupAndSync': return '备份与同步';
			case 'importAndExport': return '导入/导出';
			case 'import': return '导入';
			case 'export': return '导出';
			case 'send': return '发送';
			case 'receive': return '接收';
			case 'sendOrReceiveNotMatch': return ({required Object p}) => '请使用[${p}]';
			case 'sendConfirm': return '确认发送?';
			case 'termOfUse': return '使用条款';
			case 'privacyPolicy': return '隐私政策';
			case 'about': return '关于';
			case 'name': return '名称';
			case 'version': return '版本';
			case 'notice': return '通知';
			case 'sort': return '排序';
			case 'novice': return '新手模式';
			case 'recommended': return '推荐';
			case 'innerError': return ({required Object p}) => '内部错误:${p}';
			case 'logicOperation': return '逻辑运算';
			case 'share': return '分享';
			case 'candidateWord': return '候选词';
			case 'keywordOrRegx': return '关键词/正则';
			case 'importFromClipboard': return '从剪贴板导入';
			case 'exportToClipboard': return '导出到剪贴板';
			case 'server': return '服务器';
			case 'turnOffPrivateDirect': return '请先开启[私有网络直连]';
			case 'targetConnectFailed': return ({required Object p}) => '连接[${p}]失败,请确保设备在同一个局域网内';
			case 'appleTVSync': return '同步当前核心配置到Apple TV - Karing';
			case 'appleTVSyncDone': return '同步完成,请到Apple TV - Karing开启连接/重启连接';
			case 'appleTVRemoveCoreConfig': return '删除Apple TV - Karing核心配置';
			case 'appleTVRemoveCoreConfigDone': return 'Apple TV - Karing的核心配置文件已删除;VPN服务已断开连接';
			case 'appleTVUrlInvalid': return '无效的URL,请打开Apple TV - Karing,扫描Karing显示的二维码';
			case 'appleTV404': return ({required Object p}) => 'AppleTV:Karing[${p}]无此功能,请升级后再试';
			case 'remoteProfileEditConfirm': return '配置更新后,节点的修改将会被还原,是否继续?';
			case 'invalidFileType': return ({required Object p}) => '无效的文件类型:${p}';
			case 'mustBeValidHttpsURL': return '必须为有效的 https URL';
			case 'fileNotExistReinstall': return ({required Object p}) => '文件缺失[${p}],请重新安装';
			case 'latencyTest': return '延迟检测';
			case 'latencyTestResolveIP': return '手动检测时,同时解析出口IP';
			case 'latencyTestTimeout': return '超时时间';
			case 'uwpExemption': return 'UWP网络隔离豁免';
			case 'ads': return '广告';
			case 'removeBannerAdsByShare': return '分享[Karing]去广告';
			case 'removeBannerAdsByReward': return '观看广告去广告';
			case 'removeBannerAdsByShareTip': return ({required Object p, required Object d}) => '分享一次,将会获得${p}天无广告奖励(可叠加,最多${d}天)';
			case 'removeBannerAdsByRewardTip': return ({required Object p}) => '观看一段广告,将会获得${p}天无广告奖励(不可叠加)';
			case 'removeBannerAdsDone': return ({required Object p}) => '已获得${p}天无广告奖励';
			case 'edgeRuntimeNotInstalled': return '当前设备尚未安装Edge或Edge WebView2运行时,无法展示页面,请下载安装Edge WebView2运行时(x64)后,重启app再试';
			case 'locales.en': return 'English';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.ar': return 'عربي';
			case 'locales.ru': return 'Русский';
			case 'locales.fa': return 'فارسی';
			default: return null;
		}
	}
}

