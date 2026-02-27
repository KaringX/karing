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
class TranslationsZhTw with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhTw({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhTw,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-TW>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsZhTw _root = this; // ignore: unused_field

	@override 
	TranslationsZhTw $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhTw(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenZhTw AboutScreen = _TranslationsAboutScreenZhTw._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenZhTw BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenZhTw._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenZhTw DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenZhTw._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenZhTw DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenZhTw._(_root);
	@override late final _TranslationsDiversionRulesScreenZhTw DiversionRulesScreen = _TranslationsDiversionRulesScreenZhTw._(_root);
	@override late final _TranslationsDnsSettingsScreenZhTw DnsSettingsScreen = _TranslationsDnsSettingsScreenZhTw._(_root);
	@override late final _TranslationsFileContentViewerScreenZhTw FileContentViewerScreen = _TranslationsFileContentViewerScreenZhTw._(_root);
	@override late final _TranslationsHomeScreenZhTw HomeScreen = _TranslationsHomeScreenZhTw._(_root);
	@override late final _TranslationsLaunchFailedScreenZhTw LaunchFailedScreen = _TranslationsLaunchFailedScreenZhTw._(_root);
	@override late final _TranslationsMyProfilesMergeScreenZhTw MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenZhTw._(_root);
	@override late final _TranslationsNetCheckScreenZhTw NetCheckScreen = _TranslationsNetCheckScreenZhTw._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenZhTw NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenZhTw._(_root);
	@override late final _TranslationsNetConnectionsScreenZhTw NetConnectionsScreen = _TranslationsNetConnectionsScreenZhTw._(_root);
	@override late final _TranslationsPerAppAndroidScreenZhTw PerAppAndroidScreen = _TranslationsPerAppAndroidScreenZhTw._(_root);
	@override late final _TranslationsRegionSettingsScreenZhTw RegionSettingsScreen = _TranslationsRegionSettingsScreenZhTw._(_root);
	@override late final _TranslationsServerSelectScreenZhTw ServerSelectScreen = _TranslationsServerSelectScreenZhTw._(_root);
	@override late final _TranslationsSettingsScreenZhTw SettingsScreen = _TranslationsSettingsScreenZhTw._(_root);
	@override late final _TranslationsUserAgreementScreenZhTw UserAgreementScreen = _TranslationsUserAgreementScreenZhTw._(_root);
	@override late final _TranslationsVersionUpdateScreenZhTw VersionUpdateScreen = _TranslationsVersionUpdateScreenZhTw._(_root);
	@override late final _TranslationsCommonWidgetZhTw CommonWidget = _TranslationsCommonWidgetZhTw._(_root);
	@override late final _TranslationsMainZhTw main = _TranslationsMainZhTw._(_root);
	@override late final _TranslationsMetaZhTw meta = _TranslationsMetaZhTw._(_root);
	@override String get diversionRulesKeep => '保留 [${_root.meta.isp}] ${_root.meta.diversionRules}';
	@override String get diversionCustomGroupPreset => '預置 [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => '注意: 啟用的項會新增/覆蓋到 [${_root.meta.diversionCustomGroup}] 和 [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => '注意: 新增完畢後可能需要手動調整排序, 否則新新增的分流可能不會生效';
	@override String get rulesetEnableTips => '提示: 開啟選項後, 請到 [${_root.meta.diversionRules}] 設定相關規則, 否則不會生效';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] 會根據 [HTTP] 請求裡的 [UserAgent] 下發不同訂閱類型的數據';
	@override String get ispDiversionTips => '[${_root.meta.isp}] 提供的分流規則; [V2Ray] 類型的訂閱不支援分流規則';
	@override late final _TranslationsIspZhTw isp = _TranslationsIspZhTw._(_root);
	@override late final _TranslationsPermissionZhTw permission = _TranslationsPermissionZhTw._(_root);
	@override late final _TranslationsTlsZhTw tls = _TranslationsTlsZhTw._(_root);
	@override late final _TranslationsOutboundRuleModeZhTw outboundRuleMode = _TranslationsOutboundRuleModeZhTw._(_root);
	@override late final _TranslationsDnsProxyResolveModeZhTw dnsProxyResolveMode = _TranslationsDnsProxyResolveModeZhTw._(_root);
	@override late final _TranslationsProxyStrategyZhTw proxyStrategy = _TranslationsProxyStrategyZhTw._(_root);
	@override late final _TranslationsReloadReasonZhTw reloadReason = _TranslationsReloadReasonZhTw._(_root);
	@override late final _TranslationsThemeZhTw theme = _TranslationsThemeZhTw._(_root);
	@override String get downloadProxyStrategy => '下載通道';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: 通過代理伺服器連線 DNS 伺服器解析網域\n[${_root.dnsProxyResolveMode.direct}]: 直接連線 DNS 伺服器解析網域\n[${_root.dnsProxyResolveMode.fakeip}]: 由代理伺服器代為解析網域; 如果中斷 VPN 連線, 你的應用程式可能需要重新啟動; 僅對 [TUN] 入站的流量生效';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => '協定探測';
	@override String sendOrReceiveNotMatch({required Object p}) => '請使用 [${p}]';
	@override String get turnOffPrivateDirect => '請先開啟 [私有網路直連]';
	@override String targetConnectFailed({required Object p}) => '連線 [${p}] 失敗, 請確保設備在同一個區域網路內';
	@override String get appleTVSync => '同步當前核心配置到 Apple TV - Karing';
	@override String get appleTVSyncDone => '同步完成, 請到 Apple TV - Karing 開啟連線/重啟連線';
	@override String get appleTVRemoveCoreConfig => '刪除 Apple TV - Karing 核心配置';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing 的核心設定檔已刪除; VPN 服務已中斷連線';
	@override String get appleTVUrlInvalid => '無效的 URL, 請開啟 Apple TV - Karing, 掃描 Karing 顯示的二維碼';
	@override String appleTV404({required Object p}) => 'AppleTV: Karing[${p}] 無此功能, 請升級後再試';
	@override String appleCoreVersionNotMatch({required Object p}) => '核心主版本不匹配, 請升級 [${p}] 後再試';
	@override String get remoteProfileEditConfirm => '配置更新後, 節點的修改將會被還原, 是否繼續?';
	@override String get mustBeValidHttpsURL => '必須為有效的 https URL';
	@override String fileNotExistReinstall({required Object p}) => '檔案缺失 [${p}], 請重新安裝';
	@override String get noNetworkConnect => '無網路連線';
	@override String get sudoPassword => 'sudo 密碼 (TUN 模式需要)';
	@override String get turnOffNetworkBeforeInstall => '建議切換到 [飛航模式] 後再安裝更新';
	@override String get latencyTestResolveIP => '手動檢測時, 同時解析出口 IP';
	@override String get latencyTestConcurrency => '並發數量';
	@override String get edgeRuntimeNotInstalled => '當前設備尚未安裝 Edge WebView2 執行階段, 無法展示頁面, 請下載安裝 Edge WebView2 執行階段 (x64) 後, 重新啟動 App 再試';
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
class _TranslationsAboutScreenZhTw implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get installRefer => '安裝參考';
	@override String get installTime => '安裝時間';
	@override String get versionChannel => '自動更新通道';
	@override String get updateWhenConnected => '連接後再檢查更新';
	@override String get autoDownloadPkg => '自動下載更新包';
	@override String get disableAppImproveData => '應用改進數據';
	@override String get disableUAReportTip => '開啟[${_root.AboutScreen.disableAppImproveData}]有助於我們改進產品穩定性與可用性，我們不會收集任何個人隱私數據；停用後，應用程式將不會再收集任何數據';
	@override String get devOptions => '開發者選項';
	@override String get enableDebugLog => '開啟偵錯日誌';
	@override String get viewFilsContent => '查看檔案';
	@override String get enablePprof => '啟用 pprof';
	@override String get pprofPanel => 'pprof 面板';
	@override String get allowRemoteAccessPprof => '允許遠端存取 ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => '允許遠端存取 ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => '使用原始 sing-box 配置';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenZhTw implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => '伺服器位址';
	@override String get webdavRequired => '不能為空';
	@override String get webdavLoginFailed => '登入失敗:';
	@override String get webdavListFailed => '獲取檔案列表失敗:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenZhTw implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => '無效的 [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => '無效的 [IP Cidr]:${p}';
	@override String invalid({required Object p0, required Object p}) => '無效的 [${p0}]:${p}';
	@override String invalidRuleSet({required Object p}) => '無效的 [Rule Set]:${p}, URL 必須是有效的 https URL, 並且檔案副檔名為 .srs/.json 的 binary 檔案';
	@override String invalidRuleSetBuildIn({required Object p}) => '無效的 [Rule Set(build-in)]:${p}, 格式為 geosite:xxx 或 geoip:xxx 或 acl:xxx, 並且 xxx 應為有效的規則名稱';
	@override String invalidPackageId({required Object p}) => '無效的 [${_root.meta.appPackage}]:${p}';
	@override String get setDiversionRule => '提示: 保存後, 請到 [${_root.meta.diversionRules}] 設定相關規則, 否則不會生效';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenZhTw implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '分流規則探測';
	@override String get rule => '規則:';
	@override String get outbound => '代理伺服器:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenZhTw implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => '提示: 從上到下依次嘗試匹配規則, 如果沒有匹配到規則, 則使用 [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenZhTw implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => '機場不能為空';
	@override String get urlCanNotEmpty => 'URL 不能為空';
	@override String error({required Object p}) => '不支援的類型:${p}';
	@override String get dnsDesc => '第一列延遲數據為直連查詢延遲;\n第二列: 開啟 [[代理流量] 通過代理伺服器解析 DNS]: 延遲數據為通過當前代理伺服器轉發的查詢延遲; 未開啟 [[代理流量] 通過代理伺服器解析 DNS]: 延遲數據為直連查詢延遲';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenZhTw implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '檔案內容查看';
	@override String get clearFileContent => '確認清空檔案內容?';
	@override String get clearFileContentTips => '確認清空設定檔內容? 清空設定檔可能會導致數據丟失或應用功能異常, 請謹慎操作';
}

// Path: HomeScreen
class _TranslationsHomeScreenZhTw implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => '請選擇伺服器';
	@override String get invalidServer => '已失效, 請重新選擇';
	@override String get disabledServer => '已被停用, 請重新選擇';
	@override String get expiredServer => '無可用伺服器: 設定可能已過期或被停用';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp}, http(s):${hp}';
	@override String get myLinkEmpty => '請先設定 [快捷連結] 後再使用';
	@override String tooMuchServers({required Object p, required Object p1}) => '代理伺服器 [${p}>${p1}] 過多, 可能因系統記憶體限制而無法連線';
	@override String tooMuchServers2({required Object p, required Object p1}) => '代理伺服器 [${p}>${p1}] 過多, 可能導致連線緩慢或無法連線';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenZhTw implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => '應用程式啟動失敗 [無效的程序名稱], 請重新安裝應用程式到獨立目錄';
	@override String get invalidProfile => '應用程式啟動失敗 [存取設定檔失敗], 請重新安裝應用程式';
	@override String get invalidVersion => '應用程式啟動失敗 [無效版本], 請重新安裝應用程式';
	@override String get systemVersionLow => '應用程式啟動失敗 [系統版本過低]';
	@override String get invalidInstallPath => '無效的安裝路徑, 請重新安裝到有效路徑';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenZhTw implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => '配置合併';
	@override String get profilesMergeTarget => '目標配置';
	@override String get profilesMergeSource => '源配置';
	@override String get profilesMergeTips => '提示: 源配置的分流資訊將會被丟棄';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenZhTw implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '網路檢測';
	@override String get warn => '注意: 由於受網路環境及分流規則等影響, 測試結果並不完全等價實際中使用的效果';
	@override String get invalidDomain => '無效網域';
	@override String get connectivity => '網路連通性';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'IPv4 連線測試 [${p}] 全部失敗';
	@override String get connectivityTestIpv4Ok => 'IPv4 連線成功';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'IPv6 連線測試 [${p}] 全部失敗, 你的網路可能不支援 IPv6';
	@override String get connectivityTestIpv6Ok => 'IPv6 連線成功';
	@override String get connectivityTestOk => '網路已接入網際網路';
	@override String get connectivityTestFailed => '網路尚未接入網際網路';
	@override String get remoteRulesetsDownloadOk => '全部下載成功';
	@override String get remoteRulesetsDownloadNotOk => '正在下載或下載失敗';
	@override String get outbound => '代理伺服器';
	@override String outboundOk({required Object p}) => '[${p}] 連線成功';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] 連線失敗\n錯誤: [${p2}]';
	@override String get dnsServer => 'DNS 伺服器';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] 網域解析成功\nDNS 規則: [${p2}]\n延遲: [${p3} ms]\n位址: [${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}] 網域解析失敗\n規則: [${p2}]\n錯誤: [${p3}]';
	@override String get host => 'HTTP 連線';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\n分流規則: [${p2}]\n代理伺服器: [${p3}]';
	@override String get hostConnectionOk => '連線成功';
	@override String hostConnectionFailed({required Object p}) => '連線失敗: [${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenZhTw implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get hostIp => '網域/IP';
	@override String get app => '應用程式';
	@override String get rule => '規則';
	@override String get chain => '出站';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenZhTw implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => '已複製為 CSV 格式';
	@override String get selectType => '選擇分流類型';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenZhTw implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '分應用代理';
	@override String get whiteListMode => '白名單模式';
	@override String get whiteListModeTip => '啟用後: 僅代理已勾選的 App; 未啟用: 僅代理未勾選的 App';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenZhTw implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '國家與地區';
	@override String get Regions => '提示: 請正確設定你當前所在國家或地區, 否則可能會導致分流錯誤';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenZhTw implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '選擇伺服器';
	@override String get autoSelectServer => '自動選擇延遲最低的伺服器';
	@override String get recentUse => '最近使用';
	@override String get myFav => '我的收藏';
	@override String selectLocal({required Object p}) => '所選伺服器為本地位址, 可能無法正常使用: ${p}';
	@override String get selectRequireEnableIPv6 => '所選伺服器為 IPv6 位址, 需要 [啟用 IPv6]';
	@override String get selectDisabled => '該伺服器已被停用';
	@override String get error404 => '延遲檢測遇到錯誤, 請檢查是否存在內容相同的配置';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenZhTw implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => '獲取流量';
	@override String get tutorial => '使用教學';
	@override String get commonlyUsedRulesets => '常用規則集';
	@override String get htmlBoard => '線上面板';
	@override String get dnsLeakDetection => 'DNS 洩漏檢測';
	@override String get proxyLeakDetection => '代理洩漏檢測';
	@override String get speedTest => '測速';
	@override String get rulesetDirectDownlad => 'Rule Set 直連下載';
	@override String get hideUnusedDiversionGroup => '隱藏未啟用的分流規則';
	@override String get disableISPDiversionGroup => '停用 [${_root.meta.isp}] ${_root.meta.diversionRules}';
	@override String get portSettingRule => '基於規則';
	@override String get portSettingDirectAll => '全直連';
	@override String get portSettingProxyAll => '全代理';
	@override String get portSettingControl => '控制與同步';
	@override String get portSettingCluster => '集群服務';
	@override String get modifyPort => '修改連接埠';
	@override String get modifyPortOccupied => '連接埠已被佔用, 請使用其他連接埠';
	@override String get ipStrategyTips => '啟用前, 請先確認你的網路已支援 IPv6, 否則某些流量無法正常存取';
	@override String get tunAppendHttpProxy => '附加 HTTP 代理到 VPN';
	@override String get tunAppendHttpProxyTips => '一些 App 會繞過虛擬網卡設備直連 HTTP 代理';
	@override String get tunAllowBypassHttpProxyDomain => '允許繞過 HTTP 代理的網域';
	@override String get dnsEnableRule => '啟用 DNS 分流規則';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] 解析通道';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] 啟用 ECS';
	@override String get dnsTestDomain => '測試網域';
	@override String get dnsTestDomainInvalid => '無效的網域';
	@override String get dnsTypeOutbound => '代理伺服器';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS 伺服器';
	@override String get dnsEnableRuleTips => '啟用後, 網域會根據分流規則選擇對應的 DNS 伺服器進行解析';
	@override String get dnsEnableFakeIpTips => '啟用 FakeIP 後, 如果中斷 VPN 連線, 你的應用程式可能需要重新啟動; 此功能需要開啟 [TUN 模式]';
	@override String get dnsTypeOutboundTips => '用於 [${_root.SettingsScreen.dnsTypeOutbound}] 的網域解析';
	@override String get dnsTypeDirectTips => '用於 [${_root.meta.trafficDirect}] 的網域解析';
	@override String get dnsTypeProxyTips => '用於 [${_root.meta.trafficProxy}] 的網域解析';
	@override String get dnsTypeResolverTips => '用於 [${_root.SettingsScreen.dnsTypeResolver}] 的網域解析';
	@override String get dnsAutoSetServer => '自動設定伺服器';
	@override String get dnsResetServer => '重設伺服器';
	@override String get inboundDomainResolve => '解析入站網域';
	@override String get privateDirect => '私有網路直連';
	@override String inboundDomainResolveTips({required Object p}) => '某些未配置分流規則的網域需要解析後才可能命中基於 IP 的分流規則; 此功能影響代理連接埠 [${p}] 的入站請求';
	@override String get useRomoteRes => '使用遠端資源';
	@override String get autoAppendRegion => '自動附加基礎規則';
	@override String get autoSelect => '自動選擇';
	@override String get autoSelectServerIgnorePerProxyServer => '忽略 [前置/鏈式] 代理伺服器';
	@override String get autoSelectServerInterval => '延遲檢測時間間隔';
	@override String get autoSelectSelectedHealthCheckInterval => '當前伺服器健康檢測時間間隔';
	@override String get autoSelectServerReTestIfNetworkUpdate => '網路變化時重新檢測';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => '手動延遲檢測後更新當前伺服器';
	@override String get autoSelectServerIntervalTips => '延遲檢測時間間隔越短, 伺服器延遲數據更新越及時, 但會佔用更多資源, 耗電更快';
	@override String get autoSelectSelectedHealthCheckIntervalTips => '如果檢測失敗, 則切換節點; 如果切換節點時, 未找到可用節點, 則對該組重新進行延遲檢測';
	@override String get autoSelectServerFavFirst => '優先使用 [我的收藏]';
	@override String get autoSelectServerFavFirstTips => '如果 [我的收藏] 列表不為空, 則使用 [我的收藏] 裡的伺服器';
	@override String get autoSelectServerFilter => '過濾無效伺服器';
	@override String autoSelectServerFilterTips({required Object p}) => '伺服器延遲檢測失敗的將會被過濾掉; 如果過濾後無伺服器可用, 則改用前 [${p}] 個伺服器';
	@override String get autoSelectServerLimitedNum => '伺服器數量上限';
	@override String get autoSelectServerLimitedNumTips => '超過該數量的伺服器將被過濾掉';
	@override String get numInvalid => '無效的數字';
	@override String get hideInvalidServer => '隱藏無效伺服器';
	@override String get sortServer => '伺服器排序';
	@override String get sortServerTips => '按延遲由低到高排序';
	@override String get selectServerHideRecommand => '隱藏 [推薦]';
	@override String get selectServerHideRecent => '隱藏 [最近使用]';
	@override String get selectServerHideFav => '隱藏 [我的收藏]';
	@override String get homeScreen => '主螢幕';
	@override String get theme => '主題';
	@override String get widgetsAlpha => 'Widgets 透明度';
	@override String get widgetsEmpty => '無可用 Widget';
	@override String get backgroundImage => '背景圖';
	@override String get myLink => '快捷連結';
	@override String get autoConnectAfterLaunch => '啟動後自動連線';
	@override String get autoConnectAtBoot => '系統啟動後自動連線';
	@override String get autoConnectAtBootTips => '需要系統支援, 部分系統可能還需要開啟 [自啟動]';
	@override String get hideAfterLaunch => '啟動後隱藏視窗';
	@override String get autoSetSystemProxy => '連線後自動設定系統代理';
	@override String get bypassSystemProxy => '允許繞過系統代理的網域';
	@override String get disconnectWhenQuit => '退出應用程式時關閉連線';
	@override String get autoAddToFirewall => '自動新增防火牆規則';
	@override String get excludeFromRecent => '從 [最近任務] 中隱藏';
	@override String get wakeLock => '喚醒鎖';
	@override String get hideVpn => '隱藏 VPN 圖示';
	@override String get hideVpnTips => '開啟 IPv6 會導致此功能失效';
	@override String get allowBypass => '允許應用程式繞過 VPN';
	@override String get importSuccess => '匯入成功';
	@override String get rewriteConfirm => '該檔案將覆蓋本地已有配置, 是否繼續?';
	@override String get mergePerapp => '合併本地 [${_root.PerAppAndroidScreen.title}] 列表';
	@override String get networkShare => '網路共享';
	@override String get frontProxy => '前置/鏈式代理';
	@override String frontProxyTips({required Object p}) => '數據 -> 前置/鏈式代理伺服器 [多個代理伺服器: 由上到下] -> 代理伺服器 [${p}] -> 目標伺服器';
	@override String get allowOtherHostsConnect => '允許其他主機接入';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp}, http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => '由於系統限制, 開啟後, 本設備上使用 http 存取網路的應用程式可能無法正常連線網路';
	@override String get tunAutoRoute => '自動路由';
	@override String get tunAutoRedirect => '自動重新導向';
	@override String get tunStrictRoute => '嚴格路由';
	@override String get tunStrictRouteTips => '如果開啟共享後, 其他無法接入此設備, 請嘗試關閉此開關';
	@override String get loopbackAddress => '環回位址';
	@override String get enableCluster => '開啟 Socks/Http 代理集群';
	@override String get clusterAllowOtherHostsConnect => '允許其他主機接入代理集群';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => '代理集群認證';
	@override String get tunMode => 'TUN 模式';
	@override String get tuni4Address => 'IP 位址';
	@override String get tunModeTips => 'TUN 模式將接管系統所有流量 [此模式下無需開啟系統代理]';
	@override String get tunModeRunAsAdmin => 'TUN 模式需要系統管理員權限, 請以管理員身份重新啟動應用程式';
	@override String get tunStack => '網路棧';
	@override String get tunHijackTips => '關閉後, 來自 TUN 的 DNS 請求將會被直接轉發給對應的 DNS 伺服器';
	@override String get launchAtStartup => '開機啟動';
	@override String get quitWhenSwitchSystemUser => '切換系統用戶時退出應用程式';
	@override String get handleScheme => '系統 Scheme 調用';
	@override String get portableMode => '可攜式模式';
	@override String get portableModeDisableTips => '如需退出可攜式模式, 請退出 [karing] 後, 手動刪除 [karing.exe] 同目錄下的 [profiles] 資料夾即可';
	@override String get accessibility => '無障礙';
	@override String get handleKaringScheme => '處理 karing:// 調用';
	@override String get handleClashScheme => '處理 clash:// 調用';
	@override String get handleSingboxScheme => '處理 sing-box:// 調用';
	@override String get alwayOnVPN => '始終開啟連線';
	@override String get disconnectAfterSleep => '系統休眠後中斷連線';
	@override String get removeSystemVPNConfig => '刪除系統 VPN 設定';
	@override String get timeConnectOrDisconnect => '定時連線/中斷';
	@override String get timeConnectOrDisconnectTips => 'VPN 必須處於連線狀態才會生效; 開啟後, [自動休眠] 將失效';
	@override String timeConnectAndDisconnectInterval({required Object p}) => '連線/中斷時間間隔不能低於 ${p} 分鐘';
	@override String get disableFontScaler => '停用字體縮放';
	@override String get autoOrientation => '跟隨螢幕旋轉';
	@override String get restartTakesEffect => '重啟生效';
	@override String get reconnectTakesEffect => '重新連線後生效';
	@override String get resetSettings => '重設設定';
	@override String get cleanCache => '清理快取';
	@override String get cleanCacheDone => '清理完成';
	@override String get appleTestFlight => '蘋果 TestFlight';
	@override String get appleAppStore => '蘋果 AppStore';
	@override String hasNewVersion({required Object p}) => '更新版本 ${p}';
	@override String get follow => '關注我們';
	@override String get contactUs => '聯繫我們';
	@override String get supportUs => '支持我們';
	@override String get rateInApp => '評分';
	@override String get rateInAppStore => '在 App Store 上評分';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenZhTw implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => '您的隱私很重要';
	@override String get agreeAndContinue => '接受並繼續';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenZhTw implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => '新版本 [${p}] 已就緒';
	@override String get update => '重啟更新';
	@override String get cancel => '暫不更新';
}

// Path: CommonWidget
class _TranslationsCommonWidgetZhTw implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => '如果開啟了 [始終開啟 VPN], 請關閉 [始終開啟 VPN] 後重試連線';
	@override String get resetPort => '請將連接埠改為其他可用連接埠或者關閉佔用該連接埠的應用程式';
}

// Path: main
class _TranslationsMainZhTw implements TranslationsMainEn {
	_TranslationsMainZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayZhTw tray = _TranslationsMainTrayZhTw._(_root);
}

// Path: meta
class _TranslationsMetaZhTw implements TranslationsMetaEn {
	_TranslationsMetaZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get enable => '啟用';
	@override String get disable => '停用';
	@override String get bydefault => '預設';
	@override String get filter => '過濾';
	@override String get filterMethod => '過濾方式';
	@override String get include => '包含';
	@override String get exclude => '排除';
	@override String get all => '所有';
	@override String get prefer => '優先';
	@override String get only => '僅';
	@override String get open => '開啟';
	@override String get close => '關閉';
	@override String get quit => '退出';
	@override String get add => '新增';
	@override String get addSuccess => '新增成功';
	@override String addFailed({required Object p}) => '新增失敗: ${p}';
	@override String get remove => '刪除';
	@override String get removeConfirm => '確認刪除?';
	@override String get edit => '編輯';
	@override String get view => '查看';
	@override String get more => '更多';
	@override String get tips => '提示';
	@override String get copy => '複製';
	@override String get paste => '貼上';
	@override String get cut => '剪切';
	@override String get save => '儲存';
	@override String get ok => '確定';
	@override String get cancel => '取消';
	@override String get feedback => '回饋';
	@override String get feedbackContent => '回饋內容';
	@override String get feedbackContentHit => '必填, 最長 500 字元';
	@override String get feedbackContentCannotEmpty => '回饋內容不能為空';
	@override String get faq => '常見問題';
	@override String get htmlTools => 'HTML 工具集';
	@override String get download => '下載';
	@override String get upload => '上傳';
	@override String get downloadSpeed => '下載速度';
	@override String get uploadSpeed => '上傳速度';
	@override String get loading => '載入中...';
	@override String get convert => '轉換';
	@override String get check => '檢測';
	@override String get detect => '探測';
	@override String get cache => '快取';
	@override String get days => '天';
	@override String get hours => '時';
	@override String get minutes => '分';
	@override String get seconds => '秒';
	@override String get milliseconds => '毫秒';
	@override String get tolerance => '容差';
	@override String get dateTimePeriod => '時間段';
	@override String get protocol => '協定';
	@override String get search => '搜尋';
	@override String get custom => '自訂';
	@override String get inbound => '入站';
	@override String get outbound => '出站';
	@override String get destination => '目標';
	@override String get outletIpByCurrentSelected => '出口 IP';
	@override String get outletIpByDirect => '出口 IP:${_root.outboundRuleMode.direct}';
	@override String get connect => '連線';
	@override String get disconnect => '中斷';
	@override String get reconnect => '重新連線';
	@override String get connected => '已連線';
	@override String get disconnected => '未連線';
	@override String get connecting => '連線中';
	@override String get connectTimeout => '連線超時';
	@override String get timeout => '超時';
	@override String get timeoutDuration => '超時時長';
	@override String get runDuration => '運行時長';
	@override String get latency => '延遲';
	@override String get latencyTest => '延遲檢測';
	@override String get language => '語言';
	@override String get next => '下一步';
	@override String get done => '完成';
	@override String get apply => '套用';
	@override String get refresh => '重新整理';
	@override String get retry => '是否重試?';
	@override String get update => '更新';
	@override String get updateInterval => '更新時間間隔';
	@override String get updateInterval5mTips => '最小: 5m';
	@override String updateFailed({required Object p}) => '更新失敗: ${p}';
	@override String get samplingUnit => '採樣時間單位';
	@override String get queryResultCount => '查詢結果數量';
	@override String queryLimit({required Object p}) => '最多展示 ${p} 數據';
	@override String get none => '無';
	@override String get start => '開始';
	@override String get pause => '暫停';
	@override String get reset => '重設';
	@override String get submit => '提交';
	@override String get user => '用戶';
	@override String get account => '帳號';
	@override String get password => '密碼';
	@override String get required => '必填';
	@override String get type => '類型';
	@override String get path => '路徑';
	@override String get local => '本地';
	@override String get remote => '遠端';
	@override String get other => '其他';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL 無效';
	@override String get urlCannotEmpty => 'URL 不能為空';
	@override String get urlTooLong => 'URL 過長 (>8182)';
	@override String get copyUrl => '複製連結';
	@override String get openUrl => '開啟連結';
	@override String get shareUrl => '分享連結';
	@override String get speedTestUrl => '測速 URL';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => '靜態 IP';
	@override String get staticIPTips => '需要開啟 [TUN HijackDNS] 或 [${_root.SettingsScreen.inboundDomainResolve}]';
	@override String get isp => '機場';
	@override String get domainSuffix => '網域後綴';
	@override String get domain => '網域';
	@override String get domainKeyword => '網域關鍵詞';
	@override String get domainRegex => '網域正則';
	@override String get ip => 'IP';
	@override String get port => '連接埠';
	@override String get portRange => '連接埠範圍';
	@override String get appPackage => '應用程式包 Id';
	@override String get processName => '程序名稱';
	@override String get processPath => '程序路徑';
	@override String get processDir => '程序目錄';
	@override String get systemProxy => '系統代理';
	@override String get percentage => '百分比';
	@override String get statistics => '統計';
	@override String get statisticsAndAnalysis => '統計與分析';
	@override String get statisticsDataDesensitize => '數據脫敏';
	@override String get statisticsDataDesensitizeTips => '程序/包 ID/目標網域/目標 IP 等將會被 * 替代脫敏後保存';
	@override String get records => '記錄';
	@override String get requestRecords => '請求記錄';
	@override String get netInterfaces => '網路介面';
	@override String get netSpeed => '速度';
	@override String get memoryTrendChart => '記憶體趨勢圖';
	@override String get goroutinesTrendChart => 'GoRoutines 趨勢圖';
	@override String get trafficTrendChart => '流量趨勢圖';
	@override String get trafficDistributionChart => '流量分布圖';
	@override String get connectionChart => '連線趨勢圖';
	@override String get memoryChart => '記憶體趨勢圖';
	@override String get trafficStatistics => '流量統計';
	@override String get traffic => '流量';
	@override String get trafficTotal => '總流量';
	@override String get trafficProxy => '代理流量';
	@override String get trafficDirect => '直連流量';
	@override String get website => '官網';
	@override String get memory => '記憶體';
	@override String get outboundMode => '出站模式';
	@override String get rule => '規則';
	@override String get global => '全域';
	@override String get qrcode => '二維碼';
	@override String get qrcodeTooLong => '文本過長, 無法展示';
	@override String get qrcodeShare => '分享二維碼';
	@override String get textToQrcode => '文本轉二維碼';
	@override String get qrcodeScan => '掃描二維碼';
	@override String get qrcodeScanResult => '掃描結果';
	@override String get qrcodeScanFromImage => '開啟二維碼圖片';
	@override String get qrcodeScanResultFailed => '解析圖片失敗, 請確保截圖為有效的二維碼';
	@override String get qrcodeScanResultEmpty => '掃描結果為空';
	@override String get screenshot => '截圖';
	@override String get backupAndSync => '備份與同步';
	@override String get autoBackup => '自動備份';
	@override String get noProfileGotAutoBackup => '如果 [${_root.meta.myProfiles}] 等數據丟失, 可以從 [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] 或其他備份源 (比如 iCloud 或 Webdav 等) 恢復數據';
	@override String get autoBackupAddProfile => '新增配置後';
	@override String get autoBackupRemoveProfile => '刪除配置後';
	@override String get profile => '配置';
	@override String get currentProfile => '當前配置';
	@override String get importAndExport => '匯入/匯出';
	@override String get import => '匯入';
	@override String get importFromUrl => '從 URL 匯入';
	@override String get export => '匯出';
	@override String get send => '發送';
	@override String get receive => '接收';
	@override String get sendConfirm => '確認發送?';
	@override String get termOfUse => '使用條款';
	@override String get privacyPolicy => '隱私政策';
	@override String get about => '關於';
	@override String get name => '名稱';
	@override String get version => '版本';
	@override String get notice => '通知';
	@override String appNotifyWithReason({required Object p, required Object p1}) => '動作: ${p}\n原因: ${p1}';
	@override String get sort => '排序';
	@override String get novice => '新手模式';
	@override String get willCompleteAfterRebootInstall => '請重啟設備, 以便完成系統擴充安裝';
	@override String get willCompleteAfterRebootUninstall => '請重啟設備, 以便完成系統擴充解除安裝';
	@override String get requestNeedsUserApproval => '1. [系統設定]-[隱私權與安全性] 裡 [允許] Karing 安裝系統擴充\n2. [系統設定]-[一般]-[登入項目與擴充功能-網路擴充功能] 啟用 [karingServiceSE]\n完成後重新連線';
	@override String get FullDiskAccessPermissionRequired => '請在 [系統設定]-[隱私權與安全性]-[全磁碟存取權限] 裡開啟 [karingServiceSE] 權限後, 重新連線';
	@override String get tvMode => 'TV 模式';
	@override String get recommended => '推薦';
	@override String innerError({required Object p}) => '內部錯誤: ${p}';
	@override String get logicOperation => '邏輯運算';
	@override String get share => '分享';
	@override String get candidateWord => '候選詞';
	@override String get keywordOrRegx => '關鍵詞/正則';
	@override String get importFromClipboard => '從剪貼簿匯入';
	@override String get exportToClipboard => '匯出到剪貼簿';
	@override String get server => '伺服器';
	@override String get ads => '廣告';
	@override String get adsRemove => '移除廣告';
	@override String get donate => '贊助';
	@override String get diversion => '分流';
	@override String get diversionRules => '分流規則';
	@override String get diversionCustomGroup => '自訂分流組';
	@override String get urlTestCustomGroup => '自訂自動選擇';
	@override String get setting => '設定';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => '區域網路同步';
	@override String get lanSyncNotQuitTips => '同步完成前請勿退出此介面';
	@override String get deviceNoSpace => '磁碟空間不足';
	@override String get hideSystemApp => '隱藏系統應用程式';
	@override String get hideAppIcon => '隱藏應用程式圖示';
	@override String get hideDockIcon => '隱藏 Dock 圖示';
	@override String get remark => '備註';
	@override String get remarkExist => '備註已存在, 請使用其他名稱';
	@override String get remarkCannotEmpty => '備註不能為空';
	@override String get remarkTooLong => '備註最長 32 字元';
	@override String get openDir => '開啟檔案目錄';
	@override String get fileChoose => '選擇檔案';
	@override String get filePathCannotEmpty => '檔案路徑不能為空';
	@override String fileNotExist({required Object p}) => '檔案不存在: ${p}';
	@override String fileTypeInvalid({required Object p}) => '無效的檔案類型: ${p}';
	@override String get uwpExemption => 'UWP 網路隔離豁免';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => '獲取配置';
	@override String get addProfile => '新增配置';
	@override String get myProfiles => '我的配置';
	@override String get profileEdit => '編輯配置';
	@override String get profileEditUrlExist => 'URL 已存在, 請使用其他 URL';
	@override String get profileEditReloadAfterProfileUpdate => '配置更新後重新載入';
	@override String get profileEditTestLatencyAfterProfileUpdate => '配置自動更新後啟動延遲檢測';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN 需要處於已連線狀態, 並且開啟 [配置更新後重新載入]';
	@override String get profileEditTestLatencyAutoRemove => '自動移除延遲檢測失敗的伺服器';
	@override String get profileEditTestLatencyAutoRemoveTips => '最多嘗試 3 次';
	@override String get profileImport => '匯入設定檔';
	@override String get profileAddUrlOrContent => '新增配置連結';
	@override String get profileExists => '配置已存在, 請勿重複新增';
	@override String get profileUrlOrContent => '配置連結/內容';
	@override String get profileUrlOrContentHit => '配置連結/內容 [必填] (支援 Clash, V2ray(支援批量), Stash, Karing, Sing-box, Shadowsocks, Sub, Github 配置連結)';
	@override String get profileUrlOrContentCannotEmpty => '配置連結不能為空';
	@override String profileAddFailedFormatException({required Object p}) => '格式錯誤, 請訂正後重新新增: ${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => '新增失敗: ${p}, 請嘗試修改 [UserAgent] 後重試, 或者用設備自帶的瀏覽器開啟配置連結, 並將瀏覽器下載的設定檔匯入到本應用程式';
	@override String profileAddFailedHandshakeException({required Object p}) => '新增失敗: ${p}, 請開啟代理或者修改當前代理節點後重試';
	@override String get profileAddParseFailed => '解析配置失敗';
	@override String get profileAddNoServerAvaliable => '無可用伺服器, 請確保配置連結或設定檔有效; 如果你的配置來源於 GitHub, 請從頁面上的 [Raw] 按鈕獲取連結位址';
	@override String get profileAddWrapSuccess => '配置生成成功, 請到 [${_root.meta.myProfiles}] 查看';
}

// Path: isp
class _TranslationsIspZhTw implements TranslationsIspEn {
	_TranslationsIspZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get bind => '綁定到 [${_root.meta.isp}]';
	@override String unbind({required Object p}) => '解除綁定 [${p}]';
	@override String faq({required Object p}) => '常見問題 [${p}]';
	@override String customerService({required Object p}) => '客服 [${p}]';
	@override String follow({required Object p}) => '關注 [${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] 無效或已過期';
}

// Path: permission
class _TranslationsPermissionZhTw implements TranslationsPermissionEn {
	_TranslationsPermissionZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get camera => '攝像頭';
	@override String get screen => '螢幕錄製';
	@override String get appQuery => '獲取應用程式列表';
	@override String request({required Object p}) => '開啟 [${p}] 權限';
	@override String requestNeed({required Object p}) => '請開啟 [${p}] 權限';
}

// Path: tls
class _TranslationsTlsZhTw implements TranslationsTlsEn {
	_TranslationsTlsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get insecure => '跳過證書驗證';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => '啟用 TLS 分段';
	@override String get fragmentSize => 'TLS 分段大小';
	@override String get fragmentSleep => 'TLS 分段休眠';
	@override String get mixedCaseSNIEnable => '啟用 TLS 混合 SNI';
	@override String get paddingEnable => '啟用 TLS 填充';
	@override String get paddingSize => 'TLS 填充大小';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeZhTw implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => '當前選擇';
	@override String get urltest => '自動選擇';
	@override String get direct => '直連';
	@override String get block => '攔截';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeZhTw implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyZhTw implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonZhTw implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => '配置更新';
}

// Path: theme
class _TranslationsThemeZhTw implements TranslationsThemeEn {
	_TranslationsThemeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get light => '淺色';
	@override String get dark => '深色';
	@override String get auto => '自動';
}

// Path: main.tray
class _TranslationsMainTrayZhTw implements TranslationsMainTrayEn {
	_TranslationsMainTrayZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => '開啟';
	@override String get menuExit => '退出';
}

/// The flat map containing all translations for locale <zh-TW>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZhTw {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => '安裝參考',
			'AboutScreen.installTime' => '安裝時間',
			'AboutScreen.versionChannel' => '自動更新通道',
			'AboutScreen.updateWhenConnected' => '連接後再檢查更新',
			'AboutScreen.autoDownloadPkg' => '自動下載更新包',
			'AboutScreen.disableAppImproveData' => '應用改進數據',
			'AboutScreen.disableUAReportTip' => '開啟[${_root.AboutScreen.disableAppImproveData}]有助於我們改進產品穩定性與可用性，我們不會收集任何個人隱私數據；停用後，應用程式將不會再收集任何數據',
			'AboutScreen.devOptions' => '開發者選項',
			'AboutScreen.enableDebugLog' => '開啟偵錯日誌',
			'AboutScreen.viewFilsContent' => '查看檔案',
			'AboutScreen.enablePprof' => '啟用 pprof',
			'AboutScreen.pprofPanel' => 'pprof 面板',
			'AboutScreen.allowRemoteAccessPprof' => '允許遠端存取 ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => '允許遠端存取 ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => '使用原始 sing-box 配置',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => '伺服器位址',
			'BackupAndSyncWebdavScreen.webdavRequired' => '不能為空',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => '登入失敗:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => '獲取檔案列表失敗:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => '無效的 [Domain]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => '無效的 [IP Cidr]:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => '無效的 [${p0}]:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => '無效的 [Rule Set]:${p}, URL 必須是有效的 https URL, 並且檔案副檔名為 .srs/.json 的 binary 檔案',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => '無效的 [Rule Set(build-in)]:${p}, 格式為 geosite:xxx 或 geoip:xxx 或 acl:xxx, 並且 xxx 應為有效的規則名稱',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => '無效的 [${_root.meta.appPackage}]:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => '提示: 保存後, 請到 [${_root.meta.diversionRules}] 設定相關規則, 否則不會生效',
			'DiversionRuleDetectScreen.title' => '分流規則探測',
			'DiversionRuleDetectScreen.rule' => '規則:',
			'DiversionRuleDetectScreen.outbound' => '代理伺服器:',
			'DiversionRulesScreen.diversionRulesMatchTips' => '提示: 從上到下依次嘗試匹配規則, 如果沒有匹配到規則, 則使用 [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => '機場不能為空',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL 不能為空',
			'DnsSettingsScreen.error' => ({required Object p}) => '不支援的類型:${p}',
			'DnsSettingsScreen.dnsDesc' => '第一列延遲數據為直連查詢延遲;\n第二列: 開啟 [[代理流量] 通過代理伺服器解析 DNS]: 延遲數據為通過當前代理伺服器轉發的查詢延遲; 未開啟 [[代理流量] 通過代理伺服器解析 DNS]: 延遲數據為直連查詢延遲',
			'FileContentViewerScreen.title' => '檔案內容查看',
			'FileContentViewerScreen.clearFileContent' => '確認清空檔案內容?',
			'FileContentViewerScreen.clearFileContentTips' => '確認清空設定檔內容? 清空設定檔可能會導致數據丟失或應用功能異常, 請謹慎操作',
			'HomeScreen.toSelectServer' => '請選擇伺服器',
			'HomeScreen.invalidServer' => '已失效, 請重新選擇',
			'HomeScreen.disabledServer' => '已被停用, 請重新選擇',
			'HomeScreen.expiredServer' => '無可用伺服器: 設定可能已過期或被停用',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp}, http(s):${hp}',
			'HomeScreen.myLinkEmpty' => '請先設定 [快捷連結] 後再使用',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => '代理伺服器 [${p}>${p1}] 過多, 可能因系統記憶體限制而無法連線',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => '代理伺服器 [${p}>${p1}] 過多, 可能導致連線緩慢或無法連線',
			'LaunchFailedScreen.invalidProcess' => '應用程式啟動失敗 [無效的程序名稱], 請重新安裝應用程式到獨立目錄',
			'LaunchFailedScreen.invalidProfile' => '應用程式啟動失敗 [存取設定檔失敗], 請重新安裝應用程式',
			'LaunchFailedScreen.invalidVersion' => '應用程式啟動失敗 [無效版本], 請重新安裝應用程式',
			'LaunchFailedScreen.systemVersionLow' => '應用程式啟動失敗 [系統版本過低]',
			'LaunchFailedScreen.invalidInstallPath' => '無效的安裝路徑, 請重新安裝到有效路徑',
			'MyProfilesMergeScreen.profilesMerge' => '配置合併',
			'MyProfilesMergeScreen.profilesMergeTarget' => '目標配置',
			'MyProfilesMergeScreen.profilesMergeSource' => '源配置',
			'MyProfilesMergeScreen.profilesMergeTips' => '提示: 源配置的分流資訊將會被丟棄',
			'NetCheckScreen.title' => '網路檢測',
			'NetCheckScreen.warn' => '注意: 由於受網路環境及分流規則等影響, 測試結果並不完全等價實際中使用的效果',
			'NetCheckScreen.invalidDomain' => '無效網域',
			'NetCheckScreen.connectivity' => '網路連通性',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'IPv4 連線測試 [${p}] 全部失敗',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'IPv4 連線成功',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'IPv6 連線測試 [${p}] 全部失敗, 你的網路可能不支援 IPv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'IPv6 連線成功',
			'NetCheckScreen.connectivityTestOk' => '網路已接入網際網路',
			'NetCheckScreen.connectivityTestFailed' => '網路尚未接入網際網路',
			'NetCheckScreen.remoteRulesetsDownloadOk' => '全部下載成功',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => '正在下載或下載失敗',
			'NetCheckScreen.outbound' => '代理伺服器',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] 連線成功',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] 連線失敗\n錯誤: [${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS 伺服器',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] 網域解析成功\nDNS 規則: [${p2}]\n延遲: [${p3} ms]\n位址: [${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}] 網域解析失敗\n規則: [${p2}]\n錯誤: [${p3}]',
			'NetCheckScreen.host' => 'HTTP 連線',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\n分流規則: [${p2}]\n代理伺服器: [${p3}]',
			'NetCheckScreen.hostConnectionOk' => '連線成功',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => '連線失敗: [${p}]',
			'NetConnectionsFilterScreen.hostIp' => '網域/IP',
			'NetConnectionsFilterScreen.app' => '應用程式',
			'NetConnectionsFilterScreen.rule' => '規則',
			'NetConnectionsFilterScreen.chain' => '出站',
			'NetConnectionsScreen.copyAsCSV' => '已複製為 CSV 格式',
			'NetConnectionsScreen.selectType' => '選擇分流類型',
			'PerAppAndroidScreen.title' => '分應用代理',
			'PerAppAndroidScreen.whiteListMode' => '白名單模式',
			'PerAppAndroidScreen.whiteListModeTip' => '啟用後: 僅代理已勾選的 App; 未啟用: 僅代理未勾選的 App',
			'RegionSettingsScreen.title' => '國家與地區',
			'RegionSettingsScreen.Regions' => '提示: 請正確設定你當前所在國家或地區, 否則可能會導致分流錯誤',
			'ServerSelectScreen.title' => '選擇伺服器',
			'ServerSelectScreen.autoSelectServer' => '自動選擇延遲最低的伺服器',
			'ServerSelectScreen.recentUse' => '最近使用',
			'ServerSelectScreen.myFav' => '我的收藏',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => '所選伺服器為本地位址, 可能無法正常使用: ${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => '所選伺服器為 IPv6 位址, 需要 [啟用 IPv6]',
			'ServerSelectScreen.selectDisabled' => '該伺服器已被停用',
			'ServerSelectScreen.error404' => '延遲檢測遇到錯誤, 請檢查是否存在內容相同的配置',
			'SettingsScreen.getTranffic' => '獲取流量',
			'SettingsScreen.tutorial' => '使用教學',
			'SettingsScreen.commonlyUsedRulesets' => '常用規則集',
			'SettingsScreen.htmlBoard' => '線上面板',
			'SettingsScreen.dnsLeakDetection' => 'DNS 洩漏檢測',
			'SettingsScreen.proxyLeakDetection' => '代理洩漏檢測',
			'SettingsScreen.speedTest' => '測速',
			'SettingsScreen.rulesetDirectDownlad' => 'Rule Set 直連下載',
			'SettingsScreen.hideUnusedDiversionGroup' => '隱藏未啟用的分流規則',
			'SettingsScreen.disableISPDiversionGroup' => '停用 [${_root.meta.isp}] ${_root.meta.diversionRules}',
			'SettingsScreen.portSettingRule' => '基於規則',
			'SettingsScreen.portSettingDirectAll' => '全直連',
			'SettingsScreen.portSettingProxyAll' => '全代理',
			'SettingsScreen.portSettingControl' => '控制與同步',
			'SettingsScreen.portSettingCluster' => '集群服務',
			'SettingsScreen.modifyPort' => '修改連接埠',
			'SettingsScreen.modifyPortOccupied' => '連接埠已被佔用, 請使用其他連接埠',
			'SettingsScreen.ipStrategyTips' => '啟用前, 請先確認你的網路已支援 IPv6, 否則某些流量無法正常存取',
			'SettingsScreen.tunAppendHttpProxy' => '附加 HTTP 代理到 VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => '一些 App 會繞過虛擬網卡設備直連 HTTP 代理',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => '允許繞過 HTTP 代理的網域',
			'SettingsScreen.dnsEnableRule' => '啟用 DNS 分流規則',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] 解析通道',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] 啟用 ECS',
			'SettingsScreen.dnsTestDomain' => '測試網域',
			'SettingsScreen.dnsTestDomainInvalid' => '無效的網域',
			'SettingsScreen.dnsTypeOutbound' => '代理伺服器',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS 伺服器',
			'SettingsScreen.dnsEnableRuleTips' => '啟用後, 網域會根據分流規則選擇對應的 DNS 伺服器進行解析',
			'SettingsScreen.dnsEnableFakeIpTips' => '啟用 FakeIP 後, 如果中斷 VPN 連線, 你的應用程式可能需要重新啟動; 此功能需要開啟 [TUN 模式]',
			'SettingsScreen.dnsTypeOutboundTips' => '用於 [${_root.SettingsScreen.dnsTypeOutbound}] 的網域解析',
			'SettingsScreen.dnsTypeDirectTips' => '用於 [${_root.meta.trafficDirect}] 的網域解析',
			'SettingsScreen.dnsTypeProxyTips' => '用於 [${_root.meta.trafficProxy}] 的網域解析',
			'SettingsScreen.dnsTypeResolverTips' => '用於 [${_root.SettingsScreen.dnsTypeResolver}] 的網域解析',
			'SettingsScreen.dnsAutoSetServer' => '自動設定伺服器',
			'SettingsScreen.dnsResetServer' => '重設伺服器',
			'SettingsScreen.inboundDomainResolve' => '解析入站網域',
			'SettingsScreen.privateDirect' => '私有網路直連',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => '某些未配置分流規則的網域需要解析後才可能命中基於 IP 的分流規則; 此功能影響代理連接埠 [${p}] 的入站請求',
			'SettingsScreen.useRomoteRes' => '使用遠端資源',
			'SettingsScreen.autoAppendRegion' => '自動附加基礎規則',
			'SettingsScreen.autoSelect' => '自動選擇',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => '忽略 [前置/鏈式] 代理伺服器',
			'SettingsScreen.autoSelectServerInterval' => '延遲檢測時間間隔',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => '當前伺服器健康檢測時間間隔',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => '網路變化時重新檢測',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => '手動延遲檢測後更新當前伺服器',
			'SettingsScreen.autoSelectServerIntervalTips' => '延遲檢測時間間隔越短, 伺服器延遲數據更新越及時, 但會佔用更多資源, 耗電更快',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => '如果檢測失敗, 則切換節點; 如果切換節點時, 未找到可用節點, 則對該組重新進行延遲檢測',
			'SettingsScreen.autoSelectServerFavFirst' => '優先使用 [我的收藏]',
			'SettingsScreen.autoSelectServerFavFirstTips' => '如果 [我的收藏] 列表不為空, 則使用 [我的收藏] 裡的伺服器',
			'SettingsScreen.autoSelectServerFilter' => '過濾無效伺服器',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => '伺服器延遲檢測失敗的將會被過濾掉; 如果過濾後無伺服器可用, 則改用前 [${p}] 個伺服器',
			'SettingsScreen.autoSelectServerLimitedNum' => '伺服器數量上限',
			'SettingsScreen.autoSelectServerLimitedNumTips' => '超過該數量的伺服器將被過濾掉',
			'SettingsScreen.numInvalid' => '無效的數字',
			'SettingsScreen.hideInvalidServer' => '隱藏無效伺服器',
			'SettingsScreen.sortServer' => '伺服器排序',
			'SettingsScreen.sortServerTips' => '按延遲由低到高排序',
			'SettingsScreen.selectServerHideRecommand' => '隱藏 [推薦]',
			'SettingsScreen.selectServerHideRecent' => '隱藏 [最近使用]',
			'SettingsScreen.selectServerHideFav' => '隱藏 [我的收藏]',
			'SettingsScreen.homeScreen' => '主螢幕',
			'SettingsScreen.theme' => '主題',
			'SettingsScreen.widgetsAlpha' => 'Widgets 透明度',
			'SettingsScreen.widgetsEmpty' => '無可用 Widget',
			'SettingsScreen.backgroundImage' => '背景圖',
			'SettingsScreen.myLink' => '快捷連結',
			'SettingsScreen.autoConnectAfterLaunch' => '啟動後自動連線',
			'SettingsScreen.autoConnectAtBoot' => '系統啟動後自動連線',
			'SettingsScreen.autoConnectAtBootTips' => '需要系統支援, 部分系統可能還需要開啟 [自啟動]',
			'SettingsScreen.hideAfterLaunch' => '啟動後隱藏視窗',
			'SettingsScreen.autoSetSystemProxy' => '連線後自動設定系統代理',
			'SettingsScreen.bypassSystemProxy' => '允許繞過系統代理的網域',
			'SettingsScreen.disconnectWhenQuit' => '退出應用程式時關閉連線',
			'SettingsScreen.autoAddToFirewall' => '自動新增防火牆規則',
			'SettingsScreen.excludeFromRecent' => '從 [最近任務] 中隱藏',
			'SettingsScreen.wakeLock' => '喚醒鎖',
			'SettingsScreen.hideVpn' => '隱藏 VPN 圖示',
			'SettingsScreen.hideVpnTips' => '開啟 IPv6 會導致此功能失效',
			'SettingsScreen.allowBypass' => '允許應用程式繞過 VPN',
			'SettingsScreen.importSuccess' => '匯入成功',
			'SettingsScreen.rewriteConfirm' => '該檔案將覆蓋本地已有配置, 是否繼續?',
			'SettingsScreen.mergePerapp' => '合併本地 [${_root.PerAppAndroidScreen.title}] 列表',
			'SettingsScreen.networkShare' => '網路共享',
			'SettingsScreen.frontProxy' => '前置/鏈式代理',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => '數據 -> 前置/鏈式代理伺服器 [多個代理伺服器: 由上到下] -> 代理伺服器 [${p}] -> 目標伺服器',
			'SettingsScreen.allowOtherHostsConnect' => '允許其他主機接入',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp}, http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => '由於系統限制, 開啟後, 本設備上使用 http 存取網路的應用程式可能無法正常連線網路',
			'SettingsScreen.tunAutoRoute' => '自動路由',
			'SettingsScreen.tunAutoRedirect' => '自動重新導向',
			'SettingsScreen.tunStrictRoute' => '嚴格路由',
			'SettingsScreen.tunStrictRouteTips' => '如果開啟共享後, 其他無法接入此設備, 請嘗試關閉此開關',
			'SettingsScreen.loopbackAddress' => '環回位址',
			'SettingsScreen.enableCluster' => '開啟 Socks/Http 代理集群',
			'SettingsScreen.clusterAllowOtherHostsConnect' => '允許其他主機接入代理集群',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => '代理集群認證',
			'SettingsScreen.tunMode' => 'TUN 模式',
			'SettingsScreen.tuni4Address' => 'IP 位址',
			'SettingsScreen.tunModeTips' => 'TUN 模式將接管系統所有流量 [此模式下無需開啟系統代理]',
			'SettingsScreen.tunModeRunAsAdmin' => 'TUN 模式需要系統管理員權限, 請以管理員身份重新啟動應用程式',
			'SettingsScreen.tunStack' => '網路棧',
			'SettingsScreen.tunHijackTips' => '關閉後, 來自 TUN 的 DNS 請求將會被直接轉發給對應的 DNS 伺服器',
			'SettingsScreen.launchAtStartup' => '開機啟動',
			'SettingsScreen.quitWhenSwitchSystemUser' => '切換系統用戶時退出應用程式',
			'SettingsScreen.handleScheme' => '系統 Scheme 調用',
			'SettingsScreen.portableMode' => '可攜式模式',
			'SettingsScreen.portableModeDisableTips' => '如需退出可攜式模式, 請退出 [karing] 後, 手動刪除 [karing.exe] 同目錄下的 [profiles] 資料夾即可',
			'SettingsScreen.accessibility' => '無障礙',
			'SettingsScreen.handleKaringScheme' => '處理 karing:// 調用',
			'SettingsScreen.handleClashScheme' => '處理 clash:// 調用',
			'SettingsScreen.handleSingboxScheme' => '處理 sing-box:// 調用',
			'SettingsScreen.alwayOnVPN' => '始終開啟連線',
			'SettingsScreen.disconnectAfterSleep' => '系統休眠後中斷連線',
			'SettingsScreen.removeSystemVPNConfig' => '刪除系統 VPN 設定',
			'SettingsScreen.timeConnectOrDisconnect' => '定時連線/中斷',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN 必須處於連線狀態才會生效; 開啟後, [自動休眠] 將失效',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => '連線/中斷時間間隔不能低於 ${p} 分鐘',
			'SettingsScreen.disableFontScaler' => '停用字體縮放',
			'SettingsScreen.autoOrientation' => '跟隨螢幕旋轉',
			'SettingsScreen.restartTakesEffect' => '重啟生效',
			'SettingsScreen.reconnectTakesEffect' => '重新連線後生效',
			'SettingsScreen.resetSettings' => '重設設定',
			'SettingsScreen.cleanCache' => '清理快取',
			'SettingsScreen.cleanCacheDone' => '清理完成',
			'SettingsScreen.appleTestFlight' => '蘋果 TestFlight',
			'SettingsScreen.appleAppStore' => '蘋果 AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => '更新版本 ${p}',
			'SettingsScreen.follow' => '關注我們',
			'SettingsScreen.contactUs' => '聯繫我們',
			'SettingsScreen.supportUs' => '支持我們',
			'SettingsScreen.rateInApp' => '評分',
			'SettingsScreen.rateInAppStore' => '在 App Store 上評分',
			'UserAgreementScreen.privacyFirst' => '您的隱私很重要',
			'UserAgreementScreen.agreeAndContinue' => '接受並繼續',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => '新版本 [${p}] 已就緒',
			'VersionUpdateScreen.update' => '重啟更新',
			'VersionUpdateScreen.cancel' => '暫不更新',
			'CommonWidget.diableAlwayOnVPN' => '如果開啟了 [始終開啟 VPN], 請關閉 [始終開啟 VPN] 後重試連線',
			'CommonWidget.resetPort' => '請將連接埠改為其他可用連接埠或者關閉佔用該連接埠的應用程式',
			'main.tray.menuOpen' => '開啟',
			'main.tray.menuExit' => '退出',
			'meta.enable' => '啟用',
			'meta.disable' => '停用',
			'meta.bydefault' => '預設',
			'meta.filter' => '過濾',
			'meta.filterMethod' => '過濾方式',
			'meta.include' => '包含',
			'meta.exclude' => '排除',
			'meta.all' => '所有',
			'meta.prefer' => '優先',
			'meta.only' => '僅',
			'meta.open' => '開啟',
			'meta.close' => '關閉',
			'meta.quit' => '退出',
			'meta.add' => '新增',
			'meta.addSuccess' => '新增成功',
			'meta.addFailed' => ({required Object p}) => '新增失敗: ${p}',
			'meta.remove' => '刪除',
			'meta.removeConfirm' => '確認刪除?',
			'meta.edit' => '編輯',
			'meta.view' => '查看',
			'meta.more' => '更多',
			'meta.tips' => '提示',
			'meta.copy' => '複製',
			'meta.paste' => '貼上',
			'meta.cut' => '剪切',
			'meta.save' => '儲存',
			'meta.ok' => '確定',
			'meta.cancel' => '取消',
			'meta.feedback' => '回饋',
			'meta.feedbackContent' => '回饋內容',
			'meta.feedbackContentHit' => '必填, 最長 500 字元',
			'meta.feedbackContentCannotEmpty' => '回饋內容不能為空',
			'meta.faq' => '常見問題',
			'meta.htmlTools' => 'HTML 工具集',
			'meta.download' => '下載',
			'meta.upload' => '上傳',
			'meta.downloadSpeed' => '下載速度',
			'meta.uploadSpeed' => '上傳速度',
			'meta.loading' => '載入中...',
			'meta.convert' => '轉換',
			'meta.check' => '檢測',
			'meta.detect' => '探測',
			'meta.cache' => '快取',
			'meta.days' => '天',
			'meta.hours' => '時',
			'meta.minutes' => '分',
			'meta.seconds' => '秒',
			'meta.milliseconds' => '毫秒',
			'meta.tolerance' => '容差',
			'meta.dateTimePeriod' => '時間段',
			'meta.protocol' => '協定',
			'meta.search' => '搜尋',
			'meta.custom' => '自訂',
			'meta.inbound' => '入站',
			'meta.outbound' => '出站',
			'meta.destination' => '目標',
			'meta.outletIpByCurrentSelected' => '出口 IP',
			'meta.outletIpByDirect' => '出口 IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => '連線',
			'meta.disconnect' => '中斷',
			'meta.reconnect' => '重新連線',
			'meta.connected' => '已連線',
			'meta.disconnected' => '未連線',
			'meta.connecting' => '連線中',
			'meta.connectTimeout' => '連線超時',
			'meta.timeout' => '超時',
			'meta.timeoutDuration' => '超時時長',
			'meta.runDuration' => '運行時長',
			'meta.latency' => '延遲',
			'meta.latencyTest' => '延遲檢測',
			'meta.language' => '語言',
			'meta.next' => '下一步',
			'meta.done' => '完成',
			'meta.apply' => '套用',
			'meta.refresh' => '重新整理',
			'meta.retry' => '是否重試?',
			'meta.update' => '更新',
			'meta.updateInterval' => '更新時間間隔',
			'meta.updateInterval5mTips' => '最小: 5m',
			'meta.updateFailed' => ({required Object p}) => '更新失敗: ${p}',
			'meta.samplingUnit' => '採樣時間單位',
			'meta.queryResultCount' => '查詢結果數量',
			'meta.queryLimit' => ({required Object p}) => '最多展示 ${p} 數據',
			'meta.none' => '無',
			'meta.start' => '開始',
			'meta.pause' => '暫停',
			'meta.reset' => '重設',
			'meta.submit' => '提交',
			'meta.user' => '用戶',
			'meta.account' => '帳號',
			'meta.password' => '密碼',
			'meta.required' => '必填',
			'meta.type' => '類型',
			'meta.path' => '路徑',
			'meta.local' => '本地',
			'meta.remote' => '遠端',
			'meta.other' => '其他',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL 無效',
			'meta.urlCannotEmpty' => 'URL 不能為空',
			'meta.urlTooLong' => 'URL 過長 (>8182)',
			'meta.copyUrl' => '複製連結',
			'meta.openUrl' => '開啟連結',
			'meta.shareUrl' => '分享連結',
			'meta.speedTestUrl' => '測速 URL',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => '靜態 IP',
			'meta.staticIPTips' => '需要開啟 [TUN HijackDNS] 或 [${_root.SettingsScreen.inboundDomainResolve}]',
			'meta.isp' => '機場',
			'meta.domainSuffix' => '網域後綴',
			'meta.domain' => '網域',
			'meta.domainKeyword' => '網域關鍵詞',
			'meta.domainRegex' => '網域正則',
			'meta.ip' => 'IP',
			'meta.port' => '連接埠',
			'meta.portRange' => '連接埠範圍',
			'meta.appPackage' => '應用程式包 Id',
			'meta.processName' => '程序名稱',
			'meta.processPath' => '程序路徑',
			'meta.processDir' => '程序目錄',
			'meta.systemProxy' => '系統代理',
			'meta.percentage' => '百分比',
			'meta.statistics' => '統計',
			'meta.statisticsAndAnalysis' => '統計與分析',
			'meta.statisticsDataDesensitize' => '數據脫敏',
			'meta.statisticsDataDesensitizeTips' => '程序/包 ID/目標網域/目標 IP 等將會被 * 替代脫敏後保存',
			'meta.records' => '記錄',
			'meta.requestRecords' => '請求記錄',
			'meta.netInterfaces' => '網路介面',
			'meta.netSpeed' => '速度',
			'meta.memoryTrendChart' => '記憶體趨勢圖',
			'meta.goroutinesTrendChart' => 'GoRoutines 趨勢圖',
			'meta.trafficTrendChart' => '流量趨勢圖',
			'meta.trafficDistributionChart' => '流量分布圖',
			'meta.connectionChart' => '連線趨勢圖',
			'meta.memoryChart' => '記憶體趨勢圖',
			'meta.trafficStatistics' => '流量統計',
			'meta.traffic' => '流量',
			'meta.trafficTotal' => '總流量',
			'meta.trafficProxy' => '代理流量',
			'meta.trafficDirect' => '直連流量',
			'meta.website' => '官網',
			'meta.memory' => '記憶體',
			'meta.outboundMode' => '出站模式',
			'meta.rule' => '規則',
			'meta.global' => '全域',
			'meta.qrcode' => '二維碼',
			'meta.qrcodeTooLong' => '文本過長, 無法展示',
			'meta.qrcodeShare' => '分享二維碼',
			'meta.textToQrcode' => '文本轉二維碼',
			'meta.qrcodeScan' => '掃描二維碼',
			'meta.qrcodeScanResult' => '掃描結果',
			'meta.qrcodeScanFromImage' => '開啟二維碼圖片',
			'meta.qrcodeScanResultFailed' => '解析圖片失敗, 請確保截圖為有效的二維碼',
			'meta.qrcodeScanResultEmpty' => '掃描結果為空',
			'meta.screenshot' => '截圖',
			'meta.backupAndSync' => '備份與同步',
			'meta.autoBackup' => '自動備份',
			'meta.noProfileGotAutoBackup' => '如果 [${_root.meta.myProfiles}] 等數據丟失, 可以從 [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] 或其他備份源 (比如 iCloud 或 Webdav 等) 恢復數據',
			'meta.autoBackupAddProfile' => '新增配置後',
			'meta.autoBackupRemoveProfile' => '刪除配置後',
			'meta.profile' => '配置',
			'meta.currentProfile' => '當前配置',
			'meta.importAndExport' => '匯入/匯出',
			'meta.import' => '匯入',
			'meta.importFromUrl' => '從 URL 匯入',
			'meta.export' => '匯出',
			'meta.send' => '發送',
			'meta.receive' => '接收',
			'meta.sendConfirm' => '確認發送?',
			'meta.termOfUse' => '使用條款',
			'meta.privacyPolicy' => '隱私政策',
			'meta.about' => '關於',
			'meta.name' => '名稱',
			'meta.version' => '版本',
			'meta.notice' => '通知',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => '動作: ${p}\n原因: ${p1}',
			'meta.sort' => '排序',
			'meta.novice' => '新手模式',
			'meta.willCompleteAfterRebootInstall' => '請重啟設備, 以便完成系統擴充安裝',
			'meta.willCompleteAfterRebootUninstall' => '請重啟設備, 以便完成系統擴充解除安裝',
			'meta.requestNeedsUserApproval' => '1. [系統設定]-[隱私權與安全性] 裡 [允許] Karing 安裝系統擴充\n2. [系統設定]-[一般]-[登入項目與擴充功能-網路擴充功能] 啟用 [karingServiceSE]\n完成後重新連線',
			'meta.FullDiskAccessPermissionRequired' => '請在 [系統設定]-[隱私權與安全性]-[全磁碟存取權限] 裡開啟 [karingServiceSE] 權限後, 重新連線',
			'meta.tvMode' => 'TV 模式',
			'meta.recommended' => '推薦',
			'meta.innerError' => ({required Object p}) => '內部錯誤: ${p}',
			'meta.logicOperation' => '邏輯運算',
			'meta.share' => '分享',
			'meta.candidateWord' => '候選詞',
			'meta.keywordOrRegx' => '關鍵詞/正則',
			'meta.importFromClipboard' => '從剪貼簿匯入',
			'meta.exportToClipboard' => '匯出到剪貼簿',
			'meta.server' => '伺服器',
			'meta.ads' => '廣告',
			'meta.adsRemove' => '移除廣告',
			'meta.donate' => '贊助',
			'meta.diversion' => '分流',
			'meta.diversionRules' => '分流規則',
			'meta.diversionCustomGroup' => '自訂分流組',
			'meta.urlTestCustomGroup' => '自訂自動選擇',
			'meta.setting' => '設定',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => '區域網路同步',
			'meta.lanSyncNotQuitTips' => '同步完成前請勿退出此介面',
			'meta.deviceNoSpace' => '磁碟空間不足',
			'meta.hideSystemApp' => '隱藏系統應用程式',
			'meta.hideAppIcon' => '隱藏應用程式圖示',
			'meta.hideDockIcon' => '隱藏 Dock 圖示',
			'meta.remark' => '備註',
			'meta.remarkExist' => '備註已存在, 請使用其他名稱',
			'meta.remarkCannotEmpty' => '備註不能為空',
			'meta.remarkTooLong' => '備註最長 32 字元',
			'meta.openDir' => '開啟檔案目錄',
			'meta.fileChoose' => '選擇檔案',
			'meta.filePathCannotEmpty' => '檔案路徑不能為空',
			'meta.fileNotExist' => ({required Object p}) => '檔案不存在: ${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => '無效的檔案類型: ${p}',
			'meta.uwpExemption' => 'UWP 網路隔離豁免',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => '獲取配置',
			'meta.addProfile' => '新增配置',
			'meta.myProfiles' => '我的配置',
			'meta.profileEdit' => '編輯配置',
			'meta.profileEditUrlExist' => 'URL 已存在, 請使用其他 URL',
			'meta.profileEditReloadAfterProfileUpdate' => '配置更新後重新載入',
			'meta.profileEditTestLatencyAfterProfileUpdate' => '配置自動更新後啟動延遲檢測',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN 需要處於已連線狀態, 並且開啟 [配置更新後重新載入]',
			'meta.profileEditTestLatencyAutoRemove' => '自動移除延遲檢測失敗的伺服器',
			'meta.profileEditTestLatencyAutoRemoveTips' => '最多嘗試 3 次',
			'meta.profileImport' => '匯入設定檔',
			'meta.profileAddUrlOrContent' => '新增配置連結',
			'meta.profileExists' => '配置已存在, 請勿重複新增',
			'meta.profileUrlOrContent' => '配置連結/內容',
			'meta.profileUrlOrContentHit' => '配置連結/內容 [必填] (支援 Clash, V2ray(支援批量), Stash, Karing, Sing-box, Shadowsocks, Sub, Github 配置連結)',
			'meta.profileUrlOrContentCannotEmpty' => '配置連結不能為空',
			'meta.profileAddFailedFormatException' => ({required Object p}) => '格式錯誤, 請訂正後重新新增: ${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => '新增失敗: ${p}, 請嘗試修改 [UserAgent] 後重試, 或者用設備自帶的瀏覽器開啟配置連結, 並將瀏覽器下載的設定檔匯入到本應用程式',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => '新增失敗: ${p}, 請開啟代理或者修改當前代理節點後重試',
			'meta.profileAddParseFailed' => '解析配置失敗',
			'meta.profileAddNoServerAvaliable' => '無可用伺服器, 請確保配置連結或設定檔有效; 如果你的配置來源於 GitHub, 請從頁面上的 [Raw] 按鈕獲取連結位址',
			'meta.profileAddWrapSuccess' => '配置生成成功, 請到 [${_root.meta.myProfiles}] 查看',
			'diversionRulesKeep' => '保留 [${_root.meta.isp}] ${_root.meta.diversionRules}',
			'diversionCustomGroupPreset' => '預置 [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => '注意: 啟用的項會新增/覆蓋到 [${_root.meta.diversionCustomGroup}] 和 [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => '注意: 新增完畢後可能需要手動調整排序, 否則新新增的分流可能不會生效',
			'rulesetEnableTips' => '提示: 開啟選項後, 請到 [${_root.meta.diversionRules}] 設定相關規則, 否則不會生效',
			'ispUserAgentTips' => '[${_root.meta.isp}] 會根據 [HTTP] 請求裡的 [UserAgent] 下發不同訂閱類型的數據',
			'ispDiversionTips' => '[${_root.meta.isp}] 提供的分流規則; [V2Ray] 類型的訂閱不支援分流規則',
			'isp.bind' => '綁定到 [${_root.meta.isp}]',
			'isp.unbind' => ({required Object p}) => '解除綁定 [${p}]',
			'isp.faq' => ({required Object p}) => '常見問題 [${p}]',
			'isp.customerService' => ({required Object p}) => '客服 [${p}]',
			'isp.follow' => ({required Object p}) => '關注 [${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] 無效或已過期',
			'permission.camera' => '攝像頭',
			'permission.screen' => '螢幕錄製',
			'permission.appQuery' => '獲取應用程式列表',
			'permission.request' => ({required Object p}) => '開啟 [${p}] 權限',
			'permission.requestNeed' => ({required Object p}) => '請開啟 [${p}] 權限',
			'tls.insecure' => '跳過證書驗證',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => '啟用 TLS 分段',
			'tls.fragmentSize' => 'TLS 分段大小',
			'tls.fragmentSleep' => 'TLS 分段休眠',
			'tls.mixedCaseSNIEnable' => '啟用 TLS 混合 SNI',
			_ => null,
		} ?? switch (path) {
			'tls.paddingEnable' => '啟用 TLS 填充',
			'tls.paddingSize' => 'TLS 填充大小',
			'outboundRuleMode.currentSelected' => '當前選擇',
			'outboundRuleMode.urltest' => '自動選擇',
			'outboundRuleMode.direct' => '直連',
			'outboundRuleMode.block' => '攔截',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => '配置更新',
			'theme.light' => '淺色',
			'theme.dark' => '深色',
			'theme.auto' => '自動',
			'downloadProxyStrategy' => '下載通道',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: 通過代理伺服器連線 DNS 伺服器解析網域\n[${_root.dnsProxyResolveMode.direct}]: 直接連線 DNS 伺服器解析網域\n[${_root.dnsProxyResolveMode.fakeip}]: 由代理伺服器代為解析網域; 如果中斷 VPN 連線, 你的應用程式可能需要重新啟動; 僅對 [TUN] 入站的流量生效',
			'routeFinal' => 'final',
			'protocolSniff' => '協定探測',
			'sendOrReceiveNotMatch' => ({required Object p}) => '請使用 [${p}]',
			'turnOffPrivateDirect' => '請先開啟 [私有網路直連]',
			'targetConnectFailed' => ({required Object p}) => '連線 [${p}] 失敗, 請確保設備在同一個區域網路內',
			'appleTVSync' => '同步當前核心配置到 Apple TV - Karing',
			'appleTVSyncDone' => '同步完成, 請到 Apple TV - Karing 開啟連線/重啟連線',
			'appleTVRemoveCoreConfig' => '刪除 Apple TV - Karing 核心配置',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - Karing 的核心設定檔已刪除; VPN 服務已中斷連線',
			'appleTVUrlInvalid' => '無效的 URL, 請開啟 Apple TV - Karing, 掃描 Karing 顯示的二維碼',
			'appleTV404' => ({required Object p}) => 'AppleTV: Karing[${p}] 無此功能, 請升級後再試',
			'appleCoreVersionNotMatch' => ({required Object p}) => '核心主版本不匹配, 請升級 [${p}] 後再試',
			'remoteProfileEditConfirm' => '配置更新後, 節點的修改將會被還原, 是否繼續?',
			'mustBeValidHttpsURL' => '必須為有效的 https URL',
			'fileNotExistReinstall' => ({required Object p}) => '檔案缺失 [${p}], 請重新安裝',
			'noNetworkConnect' => '無網路連線',
			'sudoPassword' => 'sudo 密碼 (TUN 模式需要)',
			'turnOffNetworkBeforeInstall' => '建議切換到 [飛航模式] 後再安裝更新',
			'latencyTestResolveIP' => '手動檢測時, 同時解析出口 IP',
			'latencyTestConcurrency' => '並發數量',
			'edgeRuntimeNotInstalled' => '當前設備尚未安裝 Edge WebView2 執行階段, 無法展示頁面, 請下載安裝 Edge WebView2 執行階段 (x64) 後, 重新啟動 App 再試',
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
