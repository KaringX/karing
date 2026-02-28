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
class TranslationsVi with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsVi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsVi _root = this; // ignore: unused_field

	@override 
	TranslationsVi $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsVi(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenVi AboutScreen = _TranslationsAboutScreenVi._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenVi BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenVi._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenVi DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenVi._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenVi DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenVi._(_root);
	@override late final _TranslationsDiversionRulesScreenVi DiversionRulesScreen = _TranslationsDiversionRulesScreenVi._(_root);
	@override late final _TranslationsDnsSettingsScreenVi DnsSettingsScreen = _TranslationsDnsSettingsScreenVi._(_root);
	@override late final _TranslationsFileContentViewerScreenVi FileContentViewerScreen = _TranslationsFileContentViewerScreenVi._(_root);
	@override late final _TranslationsHomeScreenVi HomeScreen = _TranslationsHomeScreenVi._(_root);
	@override late final _TranslationsLaunchFailedScreenVi LaunchFailedScreen = _TranslationsLaunchFailedScreenVi._(_root);
	@override late final _TranslationsMyProfilesMergeScreenVi MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenVi._(_root);
	@override late final _TranslationsNetCheckScreenVi NetCheckScreen = _TranslationsNetCheckScreenVi._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenVi NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenVi._(_root);
	@override late final _TranslationsNetConnectionsScreenVi NetConnectionsScreen = _TranslationsNetConnectionsScreenVi._(_root);
	@override late final _TranslationsPerAppAndroidScreenVi PerAppAndroidScreen = _TranslationsPerAppAndroidScreenVi._(_root);
	@override late final _TranslationsRegionSettingsScreenVi RegionSettingsScreen = _TranslationsRegionSettingsScreenVi._(_root);
	@override late final _TranslationsServerSelectScreenVi ServerSelectScreen = _TranslationsServerSelectScreenVi._(_root);
	@override late final _TranslationsSettingsScreenVi SettingsScreen = _TranslationsSettingsScreenVi._(_root);
	@override late final _TranslationsUserAgreementScreenVi UserAgreementScreen = _TranslationsUserAgreementScreenVi._(_root);
	@override late final _TranslationsVersionUpdateScreenVi VersionUpdateScreen = _TranslationsVersionUpdateScreenVi._(_root);
	@override late final _TranslationsCommonWidgetVi CommonWidget = _TranslationsCommonWidgetVi._(_root);
	@override late final _TranslationsMainVi main = _TranslationsMainVi._(_root);
	@override late final _TranslationsMetaVi meta = _TranslationsMetaVi._(_root);
	@override String get diversionRulesKeep => 'Giữ [${_root.meta.isp}] ${_root.meta.diversionRules}';
	@override String get diversionCustomGroupPreset => 'Cài đặt sẵn [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Lưu ý: Các mục được bật sẽ được thêm/ghi đè vào [${_root.meta.diversionCustomGroup}] và [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Lưu ý: Sau khi thêm, bạn có thể cần điều chỉnh thứ tự thủ công, nếu không phân luồng mới thêm có thể không có hiệu lực';
	@override String get rulesetEnableTips => 'Mẹo: Sau khi bật các tùy chọn, vui lòng đi tới [${_root.meta.diversionRules}] để thiết lập các quy tắc liên quan, nếu không chúng sẽ không có hiệu lực';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] sẽ gửi dữ liệu của các loại gói đăng ký khác nhau dựa trên [UserAgent] trong yêu cầu [HTTP]';
	@override String get ispDiversionTips => '[${_root.meta.isp}] cung cấp các quy tắc phân luồng lưu lượng; các gói đăng ký loại [V2Ray] không hỗ trợ quy tắc phân luồng lưu lượng';
	@override late final _TranslationsIspVi isp = _TranslationsIspVi._(_root);
	@override late final _TranslationsPermissionVi permission = _TranslationsPermissionVi._(_root);
	@override late final _TranslationsTlsVi tls = _TranslationsTlsVi._(_root);
	@override late final _TranslationsOutboundRuleModeVi outboundRuleMode = _TranslationsOutboundRuleModeVi._(_root);
	@override late final _TranslationsDnsProxyResolveModeVi dnsProxyResolveMode = _TranslationsDnsProxyResolveModeVi._(_root);
	@override late final _TranslationsProxyStrategyVi proxyStrategy = _TranslationsProxyStrategyVi._(_root);
	@override late final _TranslationsReloadReasonVi reloadReason = _TranslationsReloadReasonVi._(_root);
	@override late final _TranslationsThemeVi theme = _TranslationsThemeVi._(_root);
	@override String get downloadProxyStrategy => 'Kênh tải xuống';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Kết nối với máy chủ DNS thông qua máy chủ proxy để giải quyết tên miền\n[${_root.dnsProxyResolveMode.direct}]: Kết nối trực tiếp với máy chủ DNS để giải quyết tên miền\n[${_root.dnsProxyResolveMode.fakeip}]: Máy chủ proxy thay mặt bạn giải quyết tên miền; nếu bạn ngắt kết nối VPN, ứng dụng của bạn có thể cần được khởi động lại; chỉ hiệu quả cho lưu lượng đến [TUN]';
	@override String get routeFinal => 'cuối cùng';
	@override String get protocolSniff => 'Đánh hơi giao thức';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Vui lòng sử dụng [${p}]';
	@override String get turnOffPrivateDirect => 'Vui lòng bật [Kết nối trực tiếp mạng nội bộ] trước';
	@override String targetConnectFailed({required Object p}) => 'Kết nối với [${p}] thất bại. Vui lòng đảm bảo các thiết bị đang ở cùng mạng LAN';
	@override String get appleTVSync => 'Đồng bộ cấu hình lõi hiện tại sang Apple TV - Karing';
	@override String get appleTVSyncDone => 'Đồng bộ hoàn tất. Vui lòng đi tới Apple TV - Karing để bắt đầu kết nối/khởi động lại kết nối';
	@override String get appleTVRemoveCoreConfig => 'Xóa cấu hình lõi Apple TV - Karing';
	@override String get appleTVRemoveCoreConfigDone => 'Đã xóa cấu hình lõi Apple TV - Karing; dịch vụ VPN đã ngắt kết nối';
	@override String get appleTVUrlInvalid => 'URL không hợp lệ, vui lòng mở Apple TV - Karing và quét mã QR được hiển thị bởi Karing';
	@override String appleTV404({required Object p}) => 'AppleTV: Karing[${p}] không có chức năng này, vui lòng nâng cấp và thử lại';
	@override String appleCoreVersionNotMatch({required Object p}) => 'Phiên bản chính của lõi không khớp, vui lòng nâng cấp [${p}] và thử lại';
	@override String get remoteProfileEditConfirm => 'Sau khi cập nhật cấu hình, các thay đổi nút sẽ được khôi phục. Tiếp tục?';
	@override String get mustBeValidHttpsURL => 'Phải là URL https hợp lệ';
	@override String fileNotExistReinstall({required Object p}) => 'Tệp bị thiếu [${p}], vui lòng cài đặt lại';
	@override String get noNetworkConnect => 'Không có kết nối Internet';
	@override String get sudoPassword => 'mật khẩu sudo (yêu cầu cho chế độ TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Khuyến nghị chuyển sang [Chế độ máy bay] trước khi cài đặt bản cập nhật';
	@override String get latencyTestResolveIP => 'Khi kiểm tra thủ công, giải quyết IP đầu ra';
	@override String get latencyTestConcurrency => 'Độ song song';
	@override String get edgeRuntimeNotInstalled => 'Thiết bị hiện tại chưa cài đặt Edge WebView2 runtime, nên không thể hiển thị trang. Vui lòng tải xuống và cài đặt Edge WebView2 runtime (x64), khởi động lại ứng dụng và thử lại.';
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
class _TranslationsAboutScreenVi implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Mã giới thiệu cài đặt';
	@override String get installTime => 'Thời gian cài đặt';
	@override String get versionChannel => 'Kênh cập nhật tự động';
	@override String get updateWhenConnected => 'Kiểm tra cập nhật sau khi kết nối';
	@override String get autoDownloadPkg => 'Tự động tải gói cập nhật';
	@override String get disableAppImproveData => 'Dữ liệu cải thiện ứng dụng';
	@override String get disableUAReportTip => 'Bật [${_root.AboutScreen.disableAppImproveData}] giúp chúng tôi cải thiện độ ổn định và khả năng sử dụng của sản phẩm; chúng tôi không thu thập bất kỳ dữ liệu riêng tư nào. Tắt tính năng này sẽ ngăn ứng dụng thu thập bất kỳ dữ liệu nào.';
	@override String get devOptions => 'Tùy chọn nhà phát triển';
	@override String get enableDebugLog => 'Bật nhật ký gỡ lỗi';
	@override String get viewFilsContent => 'Xem tệp';
	@override String get enablePprof => 'Bật pprof';
	@override String get pprofPanel => 'Bảng điều khiển pprof';
	@override String get allowRemoteAccessPprof => 'Cho phép truy cập từ xa vào ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Cho phép truy cập từ xa ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Sử dụng cấu hình sing-box gốc';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenVi implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'URL máy chủ';
	@override String get webdavRequired => 'Không được để trống';
	@override String get webdavLoginFailed => 'Đăng nhập thất bại:';
	@override String get webdavListFailed => 'Không thể lấy danh sách tệp:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenVi implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => '[Tên miền] không hợp lệ: ${p}';
	@override String invalidIpCidr({required Object p}) => '[IP Cidr] không hợp lệ: ${p}';
	@override String invalid({required Object p0, required Object p}) => '[${p0}] không hợp lệ: ${p}';
	@override String invalidRuleSet({required Object p}) => '[Rule Set] không hợp lệ: ${p}, URL phải là URL https hợp lệ và là tệp nhị phân có phần mở rộng .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => '[Rule Set (tích hợp)] không hợp lệ: ${p}, định dạng là geosite:xxx hoặc geoip:xxx hoặc acl:xxx, và xxx phải là tên quy tắc hợp lệ';
	@override String invalidPackageId({required Object p}) => '[${_root.meta.appPackage}] không hợp lệ: ${p}';
	@override String get setDiversionRule => 'Mẹo: Sau khi lưu, vui lòng đi tới [${_root.meta.diversionRules}] để thiết lập các quy tắc liên quan, nếu không chúng sẽ không có hiệu lực';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenVi implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phát hiện quy tắc phân luồng';
	@override String get rule => 'Quy tắc:';
	@override String get outbound => 'Máy chủ Proxy:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenVi implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Mẹo: Thử khớp các quy tắc từ trên xuống dưới. Nếu không có quy tắc nào khớp, hãy sử dụng [mặc định]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenVi implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'Nhà cung cấp không được để trống';
	@override String get urlCanNotEmpty => 'URL không được để trống';
	@override String error({required Object p}) => 'Loại không hỗ trợ: ${p}';
	@override String get dnsDesc => 'Cột đầu tiên là độ trễ truy vấn kết nối trực tiếp;\nCột thứ hai: Bật [[Lưu lượng Proxy] Giải quyết DNS qua máy chủ proxy]: dữ liệu độ trễ là độ trễ truy vấn được chuyển tiếp qua máy chủ proxy hiện tại; nếu tắt: dữ liệu độ trễ là độ trễ truy vấn kết nối trực tiếp';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenVi implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trình xem nội dung tệp';
	@override String get clearFileContent => 'Bạn có chắc chắn muốn xóa nội dung tệp không?';
	@override String get clearFileContentTips => 'Bạn có chắc chắn muốn xóa nội dung của tệp cấu hình không? Việc xóa tệp cấu hình có thể gây mất dữ liệu hoặc lỗi ứng dụng, vui lòng thực hiện thận trọng';
}

// Path: HomeScreen
class _TranslationsHomeScreenVi implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Vui lòng chọn một máy chủ';
	@override String get invalidServer => 'không hợp lệ, vui lòng chọn lại';
	@override String get disabledServer => 'đã bị vô hiệu hóa, vui lòng chọn lại';
	@override String get expiredServer => 'Không có máy chủ khả dụng, cấu hình có thể đã hết hạn hoặc bị vô hiệu hóa';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}';
	@override String get myLinkEmpty => 'Vui lòng thiết lập [Liên kết nhanh] trước khi sử dụng';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Quá nhiều máy chủ proxy [${p}>${p1}], kết nối có thể thất bại do giới hạn bộ nhớ hệ thống';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Quá nhiều máy chủ proxy [${p}>${p1}] có thể gây ra kết nối chậm hoặc không thể truy cập';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenVi implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'Ứng dụng không thể khởi động [Tên tiến trình không hợp lệ], vui lòng cài đặt lại ứng dụng vào một thư mục riêng biệt';
	@override String get invalidProfile => 'Ứng dụng không thể khởi động [Không thể truy cập cấu hình], vui lòng cài đặt lại ứng dụng';
	@override String get invalidVersion => 'Ứng dụng không thể khởi động [Phiên bản không hợp lệ], vui lòng cài đặt lại ứng dụng';
	@override String get systemVersionLow => 'Ứng dụng không thể khởi động [Phiên bản hệ thống quá thấp]';
	@override String get invalidInstallPath => 'Đường dẫn cài đặt không hợp lệ, vui lòng cài đặt lại vào đường dẫn hợp lệ';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenVi implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Hợp nhất cấu hình';
	@override String get profilesMergeTarget => 'Cấu hình mục tiêu';
	@override String get profilesMergeSource => 'Cấu hình nguồn';
	@override String get profilesMergeTips => 'Mẹo: Các quy tắc phân luồng của cấu hình nguồn sẽ bị loại bỏ';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenVi implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kiểm tra mạng';
	@override String get warn => 'Lưu ý: Do ảnh hưởng của môi trường mạng và các quy tắc phân luồng, kết quả kiểm tra không hoàn toàn tương đương với kết quả thực tế.';
	@override String get invalidDomain => 'Tên miền không hợp lệ';
	@override String get connectivity => 'Kết nối mạng';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Kiểm tra kết nối IPv4 [${p}] đều thất bại';
	@override String get connectivityTestIpv4Ok => 'Kết nối IPv4 thành công';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Kiểm tra kết nối IPv6 [${p}] đều thất bại, mạng của bạn có thể không hỗ trợ IPv6';
	@override String get connectivityTestIpv6Ok => 'Kết nối IPv6 thành công';
	@override String get connectivityTestOk => 'Mạng đã kết nối Internet';
	@override String get connectivityTestFailed => 'Mạng chưa được kết nối Internet';
	@override String get remoteRulesetsDownloadOk => 'Tất cả đã tải xuống thành công';
	@override String get remoteRulesetsDownloadNotOk => 'Đang tải xuống hoặc tải xuống thất bại';
	@override String get outbound => 'Máy chủ Proxy';
	@override String outboundOk({required Object p}) => 'Kết nối với [${p}] thành công';
	@override String outboundFailed({required Object p1, required Object p2}) => 'Kết nối với [${p1}] thất bại\nLỗi: [${p2}]';
	@override String get dnsServer => 'Máy chủ DNS';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Truy vấn DNS cho [${p1}] thành công\nQuy tắc DNS: [${p2}]\nĐộ trễ: [${p3} ms]\nĐịa chỉ: [${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => 'Truy vấn DNS cho [${p1}] thành công\nQuy tắc DNS: [${p2}]\nLỗi: [${p3}]';
	@override String get host => 'Kết nối HTTP';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nQuy tắc phân luồng: [${p2}]\nMáy chủ Proxy: [${p3}]';
	@override String get hostConnectionOk => 'Kết nối thành công';
	@override String hostConnectionFailed({required Object p}) => 'Kết nối thất bại: [${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenVi implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Tên miền/IP';
	@override String get app => 'Ứng dụng';
	@override String get rule => 'Quy tắc';
	@override String get chain => 'Gửi đi';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenVi implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Đã sao chép định dạng CSV';
	@override String get selectType => 'Chọn loại phân luồng';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenVi implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proxy cho từng ứng dụng';
	@override String get whiteListMode => 'Chế độ danh sách trắng';
	@override String get whiteListModeTip => 'Khi bật: chỉ các ứng dụng đã chọn mới đi qua proxy; khi tắt: chỉ các ứng dụng không được chọn mới đi qua proxy';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenVi implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quốc gia hoặc Khu vực';
	@override String get Regions => 'Mẹo: Vui lòng đặt đúng quốc gia hoặc khu vực hiện tại của bạn, nếu không có thể gây ra vấn đề phân luồng mạng';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenVi implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chọn máy chủ';
	@override String get autoSelectServer => 'Tự động chọn máy chủ có độ trễ thấp nhất';
	@override String get recentUse => 'Sử dụng gần đây';
	@override String get myFav => 'Yêu thích';
	@override String selectLocal({required Object p}) => 'Máy chủ đã chọn là địa chỉ nội bộ và có thể không hoạt động bình thường: ${p}';
	@override String get selectRequireEnableIPv6 => 'Máy chủ đã chọn là địa chỉ IPv6 và yêu cầu [Bật IPv6]';
	@override String get selectDisabled => 'Máy chủ này đã bị vô hiệu hóa';
	@override String get error404 => 'Phát hiện độ trễ gặp lỗi, vui lòng kiểm tra xem có cấu hình nào có nội dung tương tự không';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenVi implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Lấy lưu lượng';
	@override String get tutorial => 'Hướng dẫn';
	@override String get commonlyUsedRulesets => 'Các bộ quy tắc phổ biến';
	@override String get htmlBoard => 'Bảng điều khiển trực tuyến';
	@override String get dnsLeakDetection => 'Kiểm tra rò rỉ DNS';
	@override String get proxyLeakDetection => 'Kiểm tra rò rỉ Proxy';
	@override String get speedTest => 'Kiểm tra tốc độ';
	@override String get rulesetDirectDownlad => 'Tải xuống trực tiếp bộ quy tắc';
	@override String get hideUnusedDiversionGroup => 'Ẩn các quy tắc phân luồng không dùng';
	@override String get disableISPDiversionGroup => 'Vô hiệu hóa [${_root.meta.isp}] ${_root.meta.diversionRules}';
	@override String get portSettingRule => 'Dựa trên quy tắc';
	@override String get portSettingDirectAll => 'Trực tiếp tất cả';
	@override String get portSettingProxyAll => 'Proxy tất cả';
	@override String get portSettingControl => 'Điều khiển và Đồng bộ';
	@override String get portSettingCluster => 'Dịch vụ cụm';
	@override String get modifyPort => 'Sửa đổi cổng';
	@override String get modifyPortOccupied => 'Cổng đã bị chiếm dụng, vui lòng sử dụng cổng khác';
	@override String get ipStrategyTips => 'Trước khi bật, vui lòng xác nhận mạng của bạn hỗ trợ IPv6, nếu không một số lưu lượng không thể truy cập bình thường.';
	@override String get tunAppendHttpProxy => 'Thêm Proxy HTTP vào VPN';
	@override String get tunAppendHttpProxyTips => 'Một số ứng dụng sẽ bỏ qua thiết bị NIC ảo và kết nối trực tiếp với proxy HTTP';
	@override String get tunAllowBypassHttpProxyDomain => 'Các tên miền được phép bỏ qua proxy HTTP';
	@override String get dnsEnableRule => 'Bật quy tắc phân luồng DNS';
	@override String get dnsEnableProxyResolveMode => 'Kênh giải quyết [${_root.meta.trafficProxy}]';
	@override String get dnsEnableClientSubnet => 'Bật ECS cho [${_root.meta.trafficDirect}]';
	@override String get dnsTestDomain => 'Tên miền kiểm tra';
	@override String get dnsTestDomainInvalid => 'Tên miền không hợp lệ';
	@override String get dnsTypeOutbound => 'Máy chủ Proxy';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'Máy chủ DNS';
	@override String get dnsEnableRuleTips => 'Sau khi bật, tên miền sẽ chọn máy chủ DNS tương ứng để giải quyết theo quy tắc phân luồng';
	@override String get dnsEnableFakeIpTips => 'Sau khi bật FakeIP, nếu bạn ngắt kết nối VPN, ứng dụng của bạn có thể cần được khởi động lại; tính năng này yêu cầu bật [Chế độ TUN]';
	@override String get dnsTypeOutboundTips => 'Giải quyết tên miền cho [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Giải quyết tên miền cho [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Giải quyết tên miền cho [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Giải quyết tên miền cho [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Tự động thiết lập máy chủ';
	@override String get dnsResetServer => 'Đặt lại máy chủ';
	@override String get inboundDomainResolve => 'Giải quyết tên miền đến';
	@override String get privateDirect => 'Kết nối trực tiếp mạng nội bộ';
	@override String inboundDomainResolveTips({required Object p}) => 'Một số tên miền không được cấu hình quy tắc phân luồng cần được giải quyết trước khi có thể khớp với các quy tắc dựa trên IP; tính năng này ảnh hưởng đến các yêu cầu đến cổng proxy [${p}]';
	@override String get useRomoteRes => 'Sử dụng tài nguyên từ xa';
	@override String get autoAppendRegion => 'Tự động đính kèm quy tắc cơ bản';
	@override String get autoSelect => 'Tự động chọn';
	@override String get autoSelectServerIgnorePerProxyServer => 'Bỏ qua máy chủ proxy [Front/Chain]';
	@override String get autoSelectServerInterval => 'Khoảng thời gian kiểm tra độ trễ';
	@override String get autoSelectSelectedHealthCheckInterval => 'Khoảng thời gian kiểm tra tình trạng máy chủ hiện tại';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Kiểm tra lại độ trễ khi mạng thay đổi';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Cập nhật máy chủ hiện tại sau khi kiểm tra độ trễ thủ công';
	@override String get autoSelectServerIntervalTips => 'Khoảng thời gian càng ngắn, dữ liệu độ trễ máy chủ càng được cập nhật kịp thời, điều này sẽ chiếm nhiều tài nguyên hơn và tiêu thụ nhiều điện năng hơn';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Nếu kiểm tra thất bại, máy chủ sẽ được chuyển đổi; nếu không tìm thấy máy chủ khả dụng khi chuyển đổi, nhóm sẽ kiểm tra lại độ trễ';
	@override String get autoSelectServerFavFirst => 'Ưu tiên [Yêu thích]';
	@override String get autoSelectServerFavFirstTips => 'Nếu danh sách [Yêu thích] không trống, hãy sử dụng các máy chủ trong [Yêu thích]';
	@override String get autoSelectServerFilter => 'Lọc máy chủ không hợp lệ';
	@override String autoSelectServerFilterTips({required Object p}) => 'Các máy chủ kiểm tra độ trễ thất bại sẽ bị lọc ra; nếu không có máy chủ nào khả dụng sau khi lọc, [${p}] máy chủ đầu tiên sẽ được sử dụng thay thế';
	@override String get autoSelectServerLimitedNum => 'Số lượng máy chủ tối đa';
	@override String get autoSelectServerLimitedNumTips => 'Các máy chủ vượt quá số lượng này sẽ bị lọc ra';
	@override String get numInvalid => 'Số không hợp lệ';
	@override String get hideInvalidServer => 'Ẩn máy chủ không hợp lệ';
	@override String get sortServer => 'Sắp xếp máy chủ';
	@override String get sortServerTips => 'Sắp xếp theo độ trễ từ thấp đến cao';
	@override String get selectServerHideRecommand => 'Ẩn [Đề xuất]';
	@override String get selectServerHideRecent => 'Ẩn [Sử dụng gần đây]';
	@override String get selectServerHideFav => 'Ẩn [Yêu thích]';
	@override String get homeScreen => 'Màn hình chính';
	@override String get theme => 'Chủ đề';
	@override String get widgetsAlpha => 'Độ trong suốt Widget';
	@override String get widgetsEmpty => 'Không có Widget khả dụng';
	@override String get backgroundImage => 'Ảnh nền';
	@override String get myLink => 'Liên kết nhanh';
	@override String get autoConnectAfterLaunch => 'Tự động kết nối sau khi khởi chạy';
	@override String get autoConnectAtBoot => 'Tự động kết nối sau khi khởi động hệ thống';
	@override String get autoConnectAtBootTips => 'Yêu cầu hệ thống hỗ trợ; một số hệ thống cũng có thể yêu cầu bật [tự khởi chạy].';
	@override String get hideAfterLaunch => 'Ẩn cửa sổ sau khi khởi động';
	@override String get autoSetSystemProxy => 'Tự động thiết lập proxy hệ thống khi kết nối';
	@override String get bypassSystemProxy => 'Các tên miền được phép bỏ qua proxy hệ thống';
	@override String get disconnectWhenQuit => 'Ngắt kết nối khi thoát ứng dụng';
	@override String get autoAddToFirewall => 'Tự động thêm quy tắc tường lửa';
	@override String get excludeFromRecent => 'Ẩn khỏi [Nhiệm vụ gần đây]';
	@override String get wakeLock => 'Khóa đánh thức';
	@override String get hideVpn => 'Ẩn biểu tượng VPN';
	@override String get hideVpnTips => 'Bật IPv6 sẽ khiến chức năng này thất bại';
	@override String get allowBypass => 'Cho phép ứng dụng bỏ qua VPN';
	@override String get importSuccess => 'Nhập thành công';
	@override String get rewriteConfirm => 'Tệp này sẽ ghi đè cấu hình cục bộ hiện có. Bạn có muốn tiếp tục không?';
	@override String get mergePerapp => 'Hợp nhất danh sách [${_root.PerAppAndroidScreen.title}] cục bộ';
	@override String get networkShare => 'Chia sẻ mạng';
	@override String get frontProxy => 'Proxy Front/Chain';
	@override String frontProxyTips({required Object p}) => 'Dữ liệu -> Máy chủ Proxy Front/Chain [Nhiều máy chủ: Từ trên xuống dưới] -> Máy chủ Proxy [${p}] -> Máy chủ đích';
	@override String get allowOtherHostsConnect => 'Cho phép thiết bị khác kết nối';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}';
	@override String get allowOtherHostsConnectWarn => 'Do giới hạn của hệ thống, sau khi bật tính năng này, các ứng dụng trên thiết bị này sử dụng http để truy cập mạng có thể không kết nối được mạng bình thường.';
	@override String get tunAutoRoute => 'Tự động định tuyến';
	@override String get tunAutoRedirect => 'Tự động chuyển hướng';
	@override String get tunStrictRoute => 'Định tuyến nghiêm ngặt';
	@override String get tunStrictRouteTips => 'Nếu sau khi bật chia sẻ, các thiết bị khác không thể truy cập thiết bị này, vui lòng thử tắt công tắc này';
	@override String get loopbackAddress => 'Địa chỉ Loopback';
	@override String get enableCluster => 'Bật cụm Proxy Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Cho phép thiết bị khác kết nối với cụm';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Xác thực cụm Proxy';
	@override String get tunMode => 'Chế độ TUN';
	@override String get tuni4Address => 'Địa chỉ IP';
	@override String get tunModeTips => 'Chế độ TUN sẽ tiếp nhận toàn bộ lưu lượng của hệ thống [Trong chế độ này, bạn có thể để proxy hệ thống không bật]';
	@override String get tunModeRunAsAdmin => 'Chế độ TUN yêu cầu quyền quản trị viên hệ thống, vui lòng khởi động lại ứng dụng với tư cách quản trị viên';
	@override String get tunStack => 'Ngăn xếp mạng';
	@override String get tunHijackTips => 'Sau khi đóng, các yêu cầu DNS từ TUN sẽ được chuyển tiếp trực tiếp đến máy chủ DNS tương ứng';
	@override String get launchAtStartup => 'Khởi chạy cùng hệ thống';
	@override String get quitWhenSwitchSystemUser => 'Thoát ứng dụng khi chuyển người dùng hệ thống';
	@override String get handleScheme => 'Gọi Scheme hệ thống';
	@override String get portableMode => 'Chế độ di động';
	@override String get portableModeDisableTips => 'Nếu bạn cần thoát khỏi chế độ di động, vui lòng thoát [karing] và xóa thư mục [profiles] trong cùng thư mục với [karing.exe] một cách thủ công';
	@override String get accessibility => 'Khả năng truy cập';
	@override String get handleKaringScheme => 'Xử lý gọi karing://';
	@override String get handleClashScheme => 'Xử lý gọi clash://';
	@override String get handleSingboxScheme => 'Xử lý gọi sing-box://';
	@override String get alwayOnVPN => 'Kết nối luôn bật';
	@override String get disconnectAfterSleep => 'Ngắt kết nối sau khi hệ thống ngủ';
	@override String get removeSystemVPNConfig => 'Xóa cấu hình VPN hệ thống';
	@override String get timeConnectOrDisconnect => 'Lịch trình kết nối/ngắt kết nối';
	@override String get timeConnectOrDisconnectTips => 'VPN phải được kết nối để có hiệu lực; sau khi bật, [Tự động ngủ] sẽ bị vô hiệu hóa';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Khoảng thời gian kết nối/ngắt kết nối không được ít hơn ${p} phút';
	@override String get disableFontScaler => 'Tắt thu phóng phông chữ (Cần khởi động lại)';
	@override String get autoOrientation => 'Xoay theo màn hình';
	@override String get restartTakesEffect => 'Khởi động lại để có hiệu lực';
	@override String get reconnectTakesEffect => 'Kết nối lại để có hiệu lực';
	@override String get resetSettings => 'Đặt lại cài đặt';
	@override String get cleanCache => 'Xóa bộ nhớ đệm';
	@override String get cleanCacheDone => 'Đã xóa xong';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Cập nhật phiên bản ${p}';
	@override String get follow => 'Theo dõi chúng tôi';
	@override String get contactUs => 'Liên hệ chúng tôi';
	@override String get supportUs => 'Hỗ trợ chúng tôi';
	@override String get rateInApp => 'Đánh giá';
	@override String get rateInAppStore => 'Đánh giá trên AppStore';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenVi implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Quyền riêng tư của bạn là trên hết';
	@override String get agreeAndContinue => 'Đồng ý và Tiếp tục';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenVi implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'Phiên bản mới [${p}] đã sẵn sàng';
	@override String get update => 'Khởi động lại để cập nhật';
	@override String get cancel => 'Để sau';
}

// Path: CommonWidget
class _TranslationsCommonWidgetVi implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Nếu [VPN luôn bật] đang bật, vui lòng tắt nó và thử kết nối lại';
	@override String get resetPort => 'Vui lòng đổi cổng sang cổng khác khả dụng hoặc đóng ứng dụng đang chiếm cổng.';
}

// Path: main
class _TranslationsMainVi implements TranslationsMainEn {
	_TranslationsMainVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayVi tray = _TranslationsMainTrayVi._(_root);
}

// Path: meta
class _TranslationsMetaVi implements TranslationsMetaEn {
	_TranslationsMetaVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Bật';
	@override String get disable => 'Tắt';
	@override String get bydefault => 'Mặc định';
	@override String get filter => 'Lọc';
	@override String get filterMethod => 'Phương pháp lọc';
	@override String get include => 'Bao gồm';
	@override String get exclude => 'Loại trừ';
	@override String get all => 'Tất cả';
	@override String get prefer => 'Ưu tiên';
	@override String get only => 'Chỉ';
	@override String get open => 'Mở';
	@override String get close => 'Đóng';
	@override String get quit => 'Thoát';
	@override String get add => 'Thêm';
	@override String get addSuccess => 'Đã thêm thành công';
	@override String addFailed({required Object p}) => 'Thêm thất bại: ${p}';
	@override String get remove => 'Xóa';
	@override String get removeConfirm => 'Bạn có chắc chắn muốn xóa không?';
	@override String get edit => 'Sửa';
	@override String get view => 'Xem';
	@override String get more => 'Thêm';
	@override String get tips => 'Thông tin';
	@override String get copy => 'Sao chép';
	@override String get paste => 'Dán';
	@override String get cut => 'Cắt';
	@override String get save => 'Lưu';
	@override String get ok => 'Đồng ý';
	@override String get cancel => 'Hủy';
	@override String get feedback => 'Góp ý';
	@override String get feedbackContent => 'Nội dung góp ý';
	@override String get feedbackContentHit => 'Bắt buộc, tối đa 500 ký tự';
	@override String get feedbackContentCannotEmpty => 'Nội dung góp ý không được để trống';
	@override String get faq => 'Câu hỏi thường gặp';
	@override String get htmlTools => 'Bộ công cụ HTML';
	@override String get download => 'Tải xuống';
	@override String get upload => 'Tải lên';
	@override String get downloadSpeed => 'Tốc độ tải xuống';
	@override String get uploadSpeed => 'Tốc độ tải lên';
	@override String get loading => 'Đang tải...';
	@override String get convert => 'Chuyển đổi';
	@override String get check => 'Kiểm tra';
	@override String get detect => 'Phát hiện';
	@override String get cache => 'Bộ nhớ đệm';
	@override String get days => 'Ngày';
	@override String get hours => 'Giờ';
	@override String get minutes => 'Phút';
	@override String get seconds => 'Giây';
	@override String get milliseconds => 'Mili giây';
	@override String get tolerance => 'Dung sai';
	@override String get dateTimePeriod => 'Khoảng thời gian';
	@override String get protocol => 'Giao thức';
	@override String get search => 'Tìm kiếm';
	@override String get custom => 'Tùy chỉnh';
	@override String get inbound => 'Đến';
	@override String get outbound => 'Đi';
	@override String get destination => 'Đích';
	@override String get outletIpByCurrentSelected => 'IP đầu ra';
	@override String get outletIpByDirect => 'IP: ${_root.outboundRuleMode.direct}';
	@override String get connect => 'Kết nối';
	@override String get disconnect => 'Ngắt kết nối';
	@override String get reconnect => 'Kết nối lại';
	@override String get connected => ' Đã kết nối';
	@override String get disconnected => 'Đã ngắt kết nối';
	@override String get connecting => 'Đang kết nối';
	@override String get connectTimeout => 'Kết nối quá hạn';
	@override String get timeout => 'Quá hạn';
	@override String get timeoutDuration => 'Thời gian quá hạn';
	@override String get runDuration => 'Thời gian chạy';
	@override String get latency => 'Độ trễ';
	@override String get latencyTest => 'Kiểm tra độ trễ';
	@override String get language => 'Ngôn ngữ';
	@override String get next => 'Tiếp theo';
	@override String get done => 'Xong';
	@override String get apply => 'Áp dụng';
	@override String get refresh => 'Làm mới';
	@override String get retry => 'Thử lại?';
	@override String get update => 'Cập nhật';
	@override String get updateInterval => 'Khoảng thời gian cập nhật';
	@override String get updateInterval5mTips => 'Tối thiểu: 5m';
	@override String updateFailed({required Object p}) => 'Cập nhật thất bại: ${p}';
	@override String get samplingUnit => 'Đơn vị thời gian lấy mẫu';
	@override String get queryResultCount => 'Số lượng kết quả truy vấn';
	@override String queryLimit({required Object p}) => 'Hiển thị tối đa ${p} dữ liệu';
	@override String get none => 'Không có';
	@override String get start => 'Bắt đầu';
	@override String get pause => 'Tạm dừng';
	@override String get reset => 'Đặt lại';
	@override String get submit => 'Gửi';
	@override String get user => 'Người dùng';
	@override String get account => 'Tài khoản';
	@override String get password => 'Mật khẩu';
	@override String get decryptPassword => 'Mật khẩu giải mã';
	@override String get required => 'Bắt buộc';
	@override String get type => 'Loại';
	@override String get path => 'Đường dẫn';
	@override String get local => 'Cục bộ';
	@override String get remote => 'Từ xa';
	@override String get other => 'Khác';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL không hợp lệ';
	@override String get urlCannotEmpty => 'Liên kết không được để trống';
	@override String get urlTooLong => 'URL quá dài (>8182)';
	@override String get copyUrl => 'Sao chép liên kết';
	@override String get openUrl => 'Mở liên kết';
	@override String get shareUrl => 'Chia sẻ liên kết';
	@override String get speedTestUrl => 'URL kiểm tra tốc độ';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'IP tĩnh';
	@override String get staticIPTips => 'Bạn cần bật [TUN HijackDNS] hoặc [${_root.SettingsScreen.inboundDomainResolve}].';
	@override String get isp => 'Nhà cung cấp VPN';
	@override String get domainSuffix => 'Hậu tố tên miền';
	@override String get domain => 'Tên miền';
	@override String get domainKeyword => 'Từ khóa tên miền';
	@override String get domainRegex => 'Regex tên miền';
	@override String get ip => 'Địa chỉ IP';
	@override String get port => 'Cổng';
	@override String get portRange => 'Khoảng cổng';
	@override String get appPackage => 'ID gói ứng dụng';
	@override String get processName => 'Tên tiến trình';
	@override String get processPath => 'Đường dẫn tiến trình';
	@override String get processDir => 'Thư mục tiến trình';
	@override String get systemProxy => 'Proxy hệ thống';
	@override String get percentage => 'Phần trăm';
	@override String get statistics => 'Thống kê';
	@override String get statisticsAndAnalysis => 'Thống kê và Phân tích';
	@override String get statisticsDataDesensitize => 'Khử nhạy dữ liệu';
	@override String get statisticsDataDesensitizeTips => 'Tiến trình/ID gói/tên miền đích/IP đích, v.v. sẽ được thay thế bằng * và lưu sau khi khử nhạy';
	@override String get records => 'Bản ghi';
	@override String get requestRecords => 'Bản ghi yêu cầu';
	@override String get netInterfaces => 'Giao diện mạng';
	@override String get netSpeed => 'Tốc độ';
	@override String get memoryTrendChart => 'Biểu đồ xu hướng bộ nhớ';
	@override String get goroutinesTrendChart => 'Biểu đồ xu hướng GoRoutines';
	@override String get trafficTrendChart => 'Biểu đồ xu hướng lưu lượng';
	@override String get trafficDistributionChart => 'Biểu đồ phân phối lưu lượng';
	@override String get connectionChart => 'Biểu đồ xu hướng kết nối';
	@override String get memoryChart => 'Biểu đồ xu hướng bộ nhớ';
	@override String get trafficStatistics => 'Thống kê lưu lượng';
	@override String get traffic => 'Lưu lượng';
	@override String get trafficTotal => 'Tổng lưu lượng';
	@override String get trafficProxy => 'Lưu lượng Proxy';
	@override String get trafficDirect => 'Lưu lượng trực tiếp';
	@override String get website => 'Trang web';
	@override String get memory => 'Bộ nhớ';
	@override String get outboundMode => 'Chế độ đi';
	@override String get rule => 'Quy tắc';
	@override String get global => 'Toàn cầu';
	@override String get qrcode => 'Mã QR';
	@override String get qrcodeTooLong => 'Văn bản quá dài để hiển thị';
	@override String get qrcodeShare => 'Chia sẻ mã QR';
	@override String get textToQrcode => 'Văn bản sang mã QR';
	@override String get qrcodeScan => 'Quét mã QR';
	@override String get qrcodeScanResult => 'Kết quả quét';
	@override String get qrcodeScanFromImage => 'Quét từ ảnh';
	@override String get qrcodeScanResultFailed => 'Không thể phân tích ảnh, vui lòng đảm bảo ảnh chụp màn hình là mã QR hợp lệ';
	@override String get qrcodeScanResultEmpty => 'Kết quả quét trống';
	@override String get screenshot => 'Ảnh chụp màn hình';
	@override String get backupAndSync => 'Sao lưu và Đồng bộ';
	@override String get autoBackup => 'Sao lưu tự động';
	@override String get noProfileGotAutoBackup => 'Nếu dữ liệu như [${_root.meta.myProfiles}] bị mất, bạn có thể khôi phục từ [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] hoặc các nguồn sao lưu khác (như iCloud hoặc Webdav, v.v.)';
	@override String get autoBackupAddProfile => 'Sau khi thêm cấu hình';
	@override String get autoBackupRemoveProfile => 'Sau khi xóa cấu hình';
	@override String get profile => 'Cấu hình';
	@override String get currentProfile => 'Cấu hình hiện tại';
	@override String get importAndExport => 'Nhập và Xuất';
	@override String get import => 'Nhập';
	@override String get importFromUrl => 'Nhập từ URL';
	@override String get export => 'Xuất';
	@override String get send => 'Gửi';
	@override String get receive => 'Nhận';
	@override String get sendConfirm => 'Xác nhận gửi?';
	@override String get termOfUse => 'Điều khoản dịch vụ';
	@override String get privacyPolicy => 'Chính sách bảo mật';
	@override String get about => 'Giới thiệu';
	@override String get name => 'Tên';
	@override String get version => 'Phiên bản';
	@override String get notice => 'Thông báo';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Hành động: ${p}\nLý do: ${p1}';
	@override String get sort => 'Sắp xếp lại';
	@override String get novice => 'Chế độ người mới';
	@override String get willCompleteAfterRebootInstall => 'Vui lòng khởi động lại thiết bị của bạn để hoàn tất cài đặt tiện ích hệ thống';
	@override String get willCompleteAfterRebootUninstall => 'Vui lòng khởi động lại thiết bị của bạn để hoàn tất việc gỡ bỏ tiện ích hệ thống';
	@override String get requestNeedsUserApproval => '1. Vui lòng [Cho phép] Karing cài đặt tiện ích hệ thống trong [Cài đặt hệ thống]-[Quyền riêng tư và Bảo mật]\n2. [Cài đặt hệ thống]-[Cài đặt chung]-[Mục đăng nhập và Tiện ích mở rộng-Tiện ích mạng] bật [karingServiceSE]\nkết nối lại sau khi hoàn thành';
	@override String get FullDiskAccessPermissionRequired => 'Vui lòng bật quyền [karingServiceSE] trong [Cài đặt hệ thống]-[Quyền riêng tư và Bảo mật]-[Quyền truy cập toàn bộ ổ đĩa] và kết nối lại';
	@override String get tvMode => 'Chế độ TV';
	@override String get recommended => 'Đề xuất';
	@override String innerError({required Object p}) => 'Lỗi nội bộ: ${p}';
	@override String get logicOperation => 'Thao tác logic';
	@override String get share => 'Chia sẻ';
	@override String get candidateWord => 'Từ ứng cử';
	@override String get keywordOrRegx => 'Từ khóa/Regex';
	@override String get importFromClipboard => 'Nhập từ Clipboard';
	@override String get exportToClipboard => 'Xuất sang Clipboard';
	@override String get server => 'Máy chủ';
	@override String get ads => 'Quảng cáo';
	@override String get adsRemove => 'Gỡ quảng cáo';
	@override String get donate => 'Quyên góp';
	@override String get diversion => 'Định tuyến';
	@override String get diversionRules => 'Quy tắc định tuyến';
	@override String get diversionCustomGroup => 'Nhóm phân luồng tùy chỉnh';
	@override String get urlTestCustomGroup => 'Tự động chọn tùy chỉnh';
	@override String get setting => 'Cài đặt';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Đồng bộ LAN';
	@override String get lanSyncNotQuitTips => 'Không thoát giao diện này trước khi đồng bộ hoàn tất';
	@override String get deviceNoSpace => 'Không đủ không gian đĩa';
	@override String get hideSystemApp => 'Ẩn ứng dụng hệ thống';
	@override String get hideAppIcon => 'Ẩn biểu tượng ứng dụng';
	@override String get hideDockIcon => 'Ẩn biểu tượng Dock';
	@override String get remark => 'Ghi chú';
	@override String get remarkExist => 'Ghi chú đã tồn tại, vui lòng sử dụng tên khác';
	@override String get remarkCannotEmpty => 'Ghi chú không được để trống';
	@override String get remarkTooLong => 'Ghi chú tối đa 32 ký tự';
	@override String get openDir => 'Mở thư mục tệp';
	@override String get fileChoose => 'Chọn tệp';
	@override String get filePathCannotEmpty => 'Đường dẫn tệp không được để trống';
	@override String fileNotExist({required Object p}) => 'Tệp không tồn tại: ${p}';
	@override String fileTypeInvalid({required Object p}) => 'Loại tệp không hợp lệ: ${p}';
	@override String get uwpExemption => 'Miễn trừ cách ly mạng UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Lấy cấu hình';
	@override String get addProfile => 'Thêm cấu hình';
	@override String get myProfiles => 'Cấu hình của tôi';
	@override String get profileEdit => 'Sửa cấu hình';
	@override String get profileEditUrlExist => 'URL đã tồn tại, vui lòng sử dụng URL khác';
	@override String get profileEditReloadAfterProfileUpdate => 'Tải lại sau khi cập nhật cấu hình';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Bắt đầu kiểm tra độ trễ sau khi cấu hình tự động cập nhật';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN cần được kết nối, và bật [Tải lại sau khi cập nhật cấu hình]';
	@override String get profileEditTestLatencyAutoRemove => 'Tự động loại bỏ máy chủ kiểm tra độ trễ thất bại';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Thử tối đa 3 lần';
	@override String get profileImport => 'Nhập tệp cấu hình';
	@override String get profileAddUrlOrContent => 'Thêm liên kết cấu hình';
	@override String get profileExists => 'Cấu hình đã tồn tại, vui lòng không thêm lặp lại';
	@override String get profileUrlOrContent => 'Liên kết/Nội dung cấu hình';
	@override String get profileUrlOrContentHit => 'Liên kết/Nội dung cấu hình [Bắt buộc] (Hỗ trợ Clash, V2ray (hỗ trợ hàng loạt), Stash, Karing, Sing-box, Shadowsocks, liên kết Sub)';
	@override String get profileUrlOrContentCannotEmpty => 'Liên kết cấu hình không được để trống';
	@override String profileAddFailedFormatException({required Object p}) => 'Định dạng sai, vui lòng sửa lại và thêm lại: ${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Thêm thất bại: ${p}, vui lòng thử sửa đổi [UserAgent] và thử lại, hoặc sử dụng trình duyệt tích hợp của thiết bị để mở liên kết cấu hình và nhập tệp cấu hình đã tải xuống vào ứng dụng này';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Thêm thất bại: ${p}, vui lòng bật proxy hoặc sửa đổi nút proxy hiện tại và thử lại';
	@override String get profileAddParseFailed => 'Phân tích cấu hình thất bại';
	@override String get profileAddNoServerAvaliable => 'Không có máy chủ khả dụng, hãy đảm bảo liên kết hoặc tệp cấu hình hợp lệ; nếu cấu hình của bạn từ GitHub, vui lòng lấy liên kết từ nút [Raw] trên trang';
	@override String get profileAddWrapSuccess => 'Tạo cấu hình thành công, vui lòng đi tới [${_root.meta.myProfiles}] để xem';
}

// Path: isp
class _TranslationsIspVi implements TranslationsIspEn {
	_TranslationsIspVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Liên kết với [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'Hủy liên kết [${p}]';
	@override String faq({required Object p}) => 'Câu hỏi thường gặp [${p}]';
	@override String customerService({required Object p}) => 'Telegram [${p}]';
	@override String follow({required Object p}) => 'Theo dõi [${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] không hợp lệ hoặc hết hạn';
}

// Path: permission
class _TranslationsPermissionVi implements TranslationsPermissionEn {
	_TranslationsPermissionVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Máy ảnh';
	@override String get screen => 'Ghi màn hình';
	@override String get appQuery => 'Lấy danh sách ứng dụng';
	@override String request({required Object p}) => 'Bật quyền [${p}]';
	@override String requestNeed({required Object p}) => 'Vui lòng bật quyền [${p}]';
}

// Path: tls
class _TranslationsTlsVi implements TranslationsTlsEn {
	_TranslationsTlsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Bỏ qua xác minh chứng chỉ';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Bật phân đoạn TLS';
	@override String get fragmentSize => 'Kích thước phân đoạn TLS';
	@override String get fragmentSleep => 'Thời gian chờ phân đoạn TLS';
	@override String get mixedCaseSNIEnable => 'Bật SNI hỗn hợp TLS';
	@override String get paddingEnable => 'Bật TLS Padding';
	@override String get paddingSize => 'Kích thước TLS Padding';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeVi implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Đã chọn hiện tại';
	@override String get urltest => 'Tự động chọn';
	@override String get direct => 'Trực tiếp';
	@override String get block => 'Chặn';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeVi implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyVi implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonVi implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Cập nhật cấu hình';
}

// Path: theme
class _TranslationsThemeVi implements TranslationsThemeEn {
	_TranslationsThemeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get light => 'Sáng';
	@override String get dark => 'Tối';
	@override String get auto => 'Tự động';
}

// Path: main.tray
class _TranslationsMainTrayVi implements TranslationsMainTrayEn {
	_TranslationsMainTrayVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Mở';
	@override String get menuExit => 'Thoát';
}

/// The flat map containing all translations for locale <vi>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsVi {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Mã giới thiệu cài đặt',
			'AboutScreen.installTime' => 'Thời gian cài đặt',
			'AboutScreen.versionChannel' => 'Kênh cập nhật tự động',
			'AboutScreen.updateWhenConnected' => 'Kiểm tra cập nhật sau khi kết nối',
			'AboutScreen.autoDownloadPkg' => 'Tự động tải gói cập nhật',
			'AboutScreen.disableAppImproveData' => 'Dữ liệu cải thiện ứng dụng',
			'AboutScreen.disableUAReportTip' => 'Bật [${_root.AboutScreen.disableAppImproveData}] giúp chúng tôi cải thiện độ ổn định và khả năng sử dụng của sản phẩm; chúng tôi không thu thập bất kỳ dữ liệu riêng tư nào. Tắt tính năng này sẽ ngăn ứng dụng thu thập bất kỳ dữ liệu nào.',
			'AboutScreen.devOptions' => 'Tùy chọn nhà phát triển',
			'AboutScreen.enableDebugLog' => 'Bật nhật ký gỡ lỗi',
			'AboutScreen.viewFilsContent' => 'Xem tệp',
			'AboutScreen.enablePprof' => 'Bật pprof',
			'AboutScreen.pprofPanel' => 'Bảng điều khiển pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'Cho phép truy cập từ xa vào ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Cho phép truy cập từ xa ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Sử dụng cấu hình sing-box gốc',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'URL máy chủ',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Không được để trống',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Đăng nhập thất bại:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Không thể lấy danh sách tệp:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => '[Tên miền] không hợp lệ: ${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => '[IP Cidr] không hợp lệ: ${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => '[${p0}] không hợp lệ: ${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => '[Rule Set] không hợp lệ: ${p}, URL phải là URL https hợp lệ và là tệp nhị phân có phần mở rộng .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => '[Rule Set (tích hợp)] không hợp lệ: ${p}, định dạng là geosite:xxx hoặc geoip:xxx hoặc acl:xxx, và xxx phải là tên quy tắc hợp lệ',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => '[${_root.meta.appPackage}] không hợp lệ: ${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Mẹo: Sau khi lưu, vui lòng đi tới [${_root.meta.diversionRules}] để thiết lập các quy tắc liên quan, nếu không chúng sẽ không có hiệu lực',
			'DiversionRuleDetectScreen.title' => 'Phát hiện quy tắc phân luồng',
			'DiversionRuleDetectScreen.rule' => 'Quy tắc:',
			'DiversionRuleDetectScreen.outbound' => 'Máy chủ Proxy:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Mẹo: Thử khớp các quy tắc từ trên xuống dưới. Nếu không có quy tắc nào khớp, hãy sử dụng [mặc định]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'Nhà cung cấp không được để trống',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL không được để trống',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Loại không hỗ trợ: ${p}',
			'DnsSettingsScreen.dnsDesc' => 'Cột đầu tiên là độ trễ truy vấn kết nối trực tiếp;\nCột thứ hai: Bật [[Lưu lượng Proxy] Giải quyết DNS qua máy chủ proxy]: dữ liệu độ trễ là độ trễ truy vấn được chuyển tiếp qua máy chủ proxy hiện tại; nếu tắt: dữ liệu độ trễ là độ trễ truy vấn kết nối trực tiếp',
			'FileContentViewerScreen.title' => 'Trình xem nội dung tệp',
			'FileContentViewerScreen.clearFileContent' => 'Bạn có chắc chắn muốn xóa nội dung tệp không?',
			'FileContentViewerScreen.clearFileContentTips' => 'Bạn có chắc chắn muốn xóa nội dung của tệp cấu hình không? Việc xóa tệp cấu hình có thể gây mất dữ liệu hoặc lỗi ứng dụng, vui lòng thực hiện thận trọng',
			'HomeScreen.toSelectServer' => 'Vui lòng chọn một máy chủ',
			'HomeScreen.invalidServer' => 'không hợp lệ, vui lòng chọn lại',
			'HomeScreen.disabledServer' => 'đã bị vô hiệu hóa, vui lòng chọn lại',
			'HomeScreen.expiredServer' => 'Không có máy chủ khả dụng, cấu hình có thể đã hết hạn hoặc bị vô hiệu hóa',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}',
			'HomeScreen.myLinkEmpty' => 'Vui lòng thiết lập [Liên kết nhanh] trước khi sử dụng',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Quá nhiều máy chủ proxy [${p}>${p1}], kết nối có thể thất bại do giới hạn bộ nhớ hệ thống',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Quá nhiều máy chủ proxy [${p}>${p1}] có thể gây ra kết nối chậm hoặc không thể truy cập',
			'LaunchFailedScreen.invalidProcess' => 'Ứng dụng không thể khởi động [Tên tiến trình không hợp lệ], vui lòng cài đặt lại ứng dụng vào một thư mục riêng biệt',
			'LaunchFailedScreen.invalidProfile' => 'Ứng dụng không thể khởi động [Không thể truy cập cấu hình], vui lòng cài đặt lại ứng dụng',
			'LaunchFailedScreen.invalidVersion' => 'Ứng dụng không thể khởi động [Phiên bản không hợp lệ], vui lòng cài đặt lại ứng dụng',
			'LaunchFailedScreen.systemVersionLow' => 'Ứng dụng không thể khởi động [Phiên bản hệ thống quá thấp]',
			'LaunchFailedScreen.invalidInstallPath' => 'Đường dẫn cài đặt không hợp lệ, vui lòng cài đặt lại vào đường dẫn hợp lệ',
			'MyProfilesMergeScreen.profilesMerge' => 'Hợp nhất cấu hình',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Cấu hình mục tiêu',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Cấu hình nguồn',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Mẹo: Các quy tắc phân luồng của cấu hình nguồn sẽ bị loại bỏ',
			'NetCheckScreen.title' => 'Kiểm tra mạng',
			'NetCheckScreen.warn' => 'Lưu ý: Do ảnh hưởng của môi trường mạng và các quy tắc phân luồng, kết quả kiểm tra không hoàn toàn tương đương với kết quả thực tế.',
			'NetCheckScreen.invalidDomain' => 'Tên miền không hợp lệ',
			'NetCheckScreen.connectivity' => 'Kết nối mạng',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Kiểm tra kết nối IPv4 [${p}] đều thất bại',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Kết nối IPv4 thành công',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Kiểm tra kết nối IPv6 [${p}] đều thất bại, mạng của bạn có thể không hỗ trợ IPv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Kết nối IPv6 thành công',
			'NetCheckScreen.connectivityTestOk' => 'Mạng đã kết nối Internet',
			'NetCheckScreen.connectivityTestFailed' => 'Mạng chưa được kết nối Internet',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Tất cả đã tải xuống thành công',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Đang tải xuống hoặc tải xuống thất bại',
			'NetCheckScreen.outbound' => 'Máy chủ Proxy',
			'NetCheckScreen.outboundOk' => ({required Object p}) => 'Kết nối với [${p}] thành công',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => 'Kết nối với [${p1}] thất bại\nLỗi: [${p2}]',
			'NetCheckScreen.dnsServer' => 'Máy chủ DNS',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Truy vấn DNS cho [${p1}] thành công\nQuy tắc DNS: [${p2}]\nĐộ trễ: [${p3} ms]\nĐịa chỉ: [${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => 'Truy vấn DNS cho [${p1}] thành công\nQuy tắc DNS: [${p2}]\nLỗi: [${p3}]',
			'NetCheckScreen.host' => 'Kết nối HTTP',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nQuy tắc phân luồng: [${p2}]\nMáy chủ Proxy: [${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'Kết nối thành công',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'Kết nối thất bại: [${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Tên miền/IP',
			'NetConnectionsFilterScreen.app' => 'Ứng dụng',
			'NetConnectionsFilterScreen.rule' => 'Quy tắc',
			'NetConnectionsFilterScreen.chain' => 'Gửi đi',
			'NetConnectionsScreen.copyAsCSV' => 'Đã sao chép định dạng CSV',
			'NetConnectionsScreen.selectType' => 'Chọn loại phân luồng',
			'PerAppAndroidScreen.title' => 'Proxy cho từng ứng dụng',
			'PerAppAndroidScreen.whiteListMode' => 'Chế độ danh sách trắng',
			'PerAppAndroidScreen.whiteListModeTip' => 'Khi bật: chỉ các ứng dụng đã chọn mới đi qua proxy; khi tắt: chỉ các ứng dụng không được chọn mới đi qua proxy',
			'RegionSettingsScreen.title' => 'Quốc gia hoặc Khu vực',
			'RegionSettingsScreen.Regions' => 'Mẹo: Vui lòng đặt đúng quốc gia hoặc khu vực hiện tại của bạn, nếu không có thể gây ra vấn đề phân luồng mạng',
			'ServerSelectScreen.title' => 'Chọn máy chủ',
			'ServerSelectScreen.autoSelectServer' => 'Tự động chọn máy chủ có độ trễ thấp nhất',
			'ServerSelectScreen.recentUse' => 'Sử dụng gần đây',
			'ServerSelectScreen.myFav' => 'Yêu thích',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Máy chủ đã chọn là địa chỉ nội bộ và có thể không hoạt động bình thường: ${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Máy chủ đã chọn là địa chỉ IPv6 và yêu cầu [Bật IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Máy chủ này đã bị vô hiệu hóa',
			'ServerSelectScreen.error404' => 'Phát hiện độ trễ gặp lỗi, vui lòng kiểm tra xem có cấu hình nào có nội dung tương tự không',
			'SettingsScreen.getTranffic' => 'Lấy lưu lượng',
			'SettingsScreen.tutorial' => 'Hướng dẫn',
			'SettingsScreen.commonlyUsedRulesets' => 'Các bộ quy tắc phổ biến',
			'SettingsScreen.htmlBoard' => 'Bảng điều khiển trực tuyến',
			'SettingsScreen.dnsLeakDetection' => 'Kiểm tra rò rỉ DNS',
			'SettingsScreen.proxyLeakDetection' => 'Kiểm tra rò rỉ Proxy',
			'SettingsScreen.speedTest' => 'Kiểm tra tốc độ',
			'SettingsScreen.rulesetDirectDownlad' => 'Tải xuống trực tiếp bộ quy tắc',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Ẩn các quy tắc phân luồng không dùng',
			'SettingsScreen.disableISPDiversionGroup' => 'Vô hiệu hóa [${_root.meta.isp}] ${_root.meta.diversionRules}',
			'SettingsScreen.portSettingRule' => 'Dựa trên quy tắc',
			'SettingsScreen.portSettingDirectAll' => 'Trực tiếp tất cả',
			'SettingsScreen.portSettingProxyAll' => 'Proxy tất cả',
			'SettingsScreen.portSettingControl' => 'Điều khiển và Đồng bộ',
			'SettingsScreen.portSettingCluster' => 'Dịch vụ cụm',
			'SettingsScreen.modifyPort' => 'Sửa đổi cổng',
			'SettingsScreen.modifyPortOccupied' => 'Cổng đã bị chiếm dụng, vui lòng sử dụng cổng khác',
			'SettingsScreen.ipStrategyTips' => 'Trước khi bật, vui lòng xác nhận mạng của bạn hỗ trợ IPv6, nếu không một số lưu lượng không thể truy cập bình thường.',
			'SettingsScreen.tunAppendHttpProxy' => 'Thêm Proxy HTTP vào VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Một số ứng dụng sẽ bỏ qua thiết bị NIC ảo và kết nối trực tiếp với proxy HTTP',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Các tên miền được phép bỏ qua proxy HTTP',
			'SettingsScreen.dnsEnableRule' => 'Bật quy tắc phân luồng DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => 'Kênh giải quyết [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsEnableClientSubnet' => 'Bật ECS cho [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTestDomain' => 'Tên miền kiểm tra',
			'SettingsScreen.dnsTestDomainInvalid' => 'Tên miền không hợp lệ',
			'SettingsScreen.dnsTypeOutbound' => 'Máy chủ Proxy',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'Máy chủ DNS',
			'SettingsScreen.dnsEnableRuleTips' => 'Sau khi bật, tên miền sẽ chọn máy chủ DNS tương ứng để giải quyết theo quy tắc phân luồng',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Sau khi bật FakeIP, nếu bạn ngắt kết nối VPN, ứng dụng của bạn có thể cần được khởi động lại; tính năng này yêu cầu bật [Chế độ TUN]',
			'SettingsScreen.dnsTypeOutboundTips' => 'Giải quyết tên miền cho [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Giải quyết tên miền cho [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Giải quyết tên miền cho [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Giải quyết tên miền cho [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Tự động thiết lập máy chủ',
			'SettingsScreen.dnsResetServer' => 'Đặt lại máy chủ',
			'SettingsScreen.inboundDomainResolve' => 'Giải quyết tên miền đến',
			'SettingsScreen.privateDirect' => 'Kết nối trực tiếp mạng nội bộ',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Một số tên miền không được cấu hình quy tắc phân luồng cần được giải quyết trước khi có thể khớp với các quy tắc dựa trên IP; tính năng này ảnh hưởng đến các yêu cầu đến cổng proxy [${p}]',
			'SettingsScreen.useRomoteRes' => 'Sử dụng tài nguyên từ xa',
			'SettingsScreen.autoAppendRegion' => 'Tự động đính kèm quy tắc cơ bản',
			'SettingsScreen.autoSelect' => 'Tự động chọn',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Bỏ qua máy chủ proxy [Front/Chain]',
			'SettingsScreen.autoSelectServerInterval' => 'Khoảng thời gian kiểm tra độ trễ',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Khoảng thời gian kiểm tra tình trạng máy chủ hiện tại',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Kiểm tra lại độ trễ khi mạng thay đổi',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Cập nhật máy chủ hiện tại sau khi kiểm tra độ trễ thủ công',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Khoảng thời gian càng ngắn, dữ liệu độ trễ máy chủ càng được cập nhật kịp thời, điều này sẽ chiếm nhiều tài nguyên hơn và tiêu thụ nhiều điện năng hơn',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Nếu kiểm tra thất bại, máy chủ sẽ được chuyển đổi; nếu không tìm thấy máy chủ khả dụng khi chuyển đổi, nhóm sẽ kiểm tra lại độ trễ',
			'SettingsScreen.autoSelectServerFavFirst' => 'Ưu tiên [Yêu thích]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Nếu danh sách [Yêu thích] không trống, hãy sử dụng các máy chủ trong [Yêu thích]',
			'SettingsScreen.autoSelectServerFilter' => 'Lọc máy chủ không hợp lệ',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Các máy chủ kiểm tra độ trễ thất bại sẽ bị lọc ra; nếu không có máy chủ nào khả dụng sau khi lọc, [${p}] máy chủ đầu tiên sẽ được sử dụng thay thế',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Số lượng máy chủ tối đa',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Các máy chủ vượt quá số lượng này sẽ bị lọc ra',
			'SettingsScreen.numInvalid' => 'Số không hợp lệ',
			'SettingsScreen.hideInvalidServer' => 'Ẩn máy chủ không hợp lệ',
			'SettingsScreen.sortServer' => 'Sắp xếp máy chủ',
			'SettingsScreen.sortServerTips' => 'Sắp xếp theo độ trễ từ thấp đến cao',
			'SettingsScreen.selectServerHideRecommand' => 'Ẩn [Đề xuất]',
			'SettingsScreen.selectServerHideRecent' => 'Ẩn [Sử dụng gần đây]',
			'SettingsScreen.selectServerHideFav' => 'Ẩn [Yêu thích]',
			'SettingsScreen.homeScreen' => 'Màn hình chính',
			'SettingsScreen.theme' => 'Chủ đề',
			'SettingsScreen.widgetsAlpha' => 'Độ trong suốt Widget',
			'SettingsScreen.widgetsEmpty' => 'Không có Widget khả dụng',
			'SettingsScreen.backgroundImage' => 'Ảnh nền',
			'SettingsScreen.myLink' => 'Liên kết nhanh',
			'SettingsScreen.autoConnectAfterLaunch' => 'Tự động kết nối sau khi khởi chạy',
			'SettingsScreen.autoConnectAtBoot' => 'Tự động kết nối sau khi khởi động hệ thống',
			'SettingsScreen.autoConnectAtBootTips' => 'Yêu cầu hệ thống hỗ trợ; một số hệ thống cũng có thể yêu cầu bật [tự khởi chạy].',
			'SettingsScreen.hideAfterLaunch' => 'Ẩn cửa sổ sau khi khởi động',
			'SettingsScreen.autoSetSystemProxy' => 'Tự động thiết lập proxy hệ thống khi kết nối',
			'SettingsScreen.bypassSystemProxy' => 'Các tên miền được phép bỏ qua proxy hệ thống',
			'SettingsScreen.disconnectWhenQuit' => 'Ngắt kết nối khi thoát ứng dụng',
			'SettingsScreen.autoAddToFirewall' => 'Tự động thêm quy tắc tường lửa',
			'SettingsScreen.excludeFromRecent' => 'Ẩn khỏi [Nhiệm vụ gần đây]',
			'SettingsScreen.wakeLock' => 'Khóa đánh thức',
			'SettingsScreen.hideVpn' => 'Ẩn biểu tượng VPN',
			'SettingsScreen.hideVpnTips' => 'Bật IPv6 sẽ khiến chức năng này thất bại',
			'SettingsScreen.allowBypass' => 'Cho phép ứng dụng bỏ qua VPN',
			'SettingsScreen.importSuccess' => 'Nhập thành công',
			'SettingsScreen.rewriteConfirm' => 'Tệp này sẽ ghi đè cấu hình cục bộ hiện có. Bạn có muốn tiếp tục không?',
			'SettingsScreen.mergePerapp' => 'Hợp nhất danh sách [${_root.PerAppAndroidScreen.title}] cục bộ',
			'SettingsScreen.networkShare' => 'Chia sẻ mạng',
			'SettingsScreen.frontProxy' => 'Proxy Front/Chain',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Dữ liệu -> Máy chủ Proxy Front/Chain [Nhiều máy chủ: Từ trên xuống dưới] -> Máy chủ Proxy [${p}] -> Máy chủ đích',
			'SettingsScreen.allowOtherHostsConnect' => 'Cho phép thiết bị khác kết nối',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Do giới hạn của hệ thống, sau khi bật tính năng này, các ứng dụng trên thiết bị này sử dụng http để truy cập mạng có thể không kết nối được mạng bình thường.',
			'SettingsScreen.tunAutoRoute' => 'Tự động định tuyến',
			'SettingsScreen.tunAutoRedirect' => 'Tự động chuyển hướng',
			'SettingsScreen.tunStrictRoute' => 'Định tuyến nghiêm ngặt',
			'SettingsScreen.tunStrictRouteTips' => 'Nếu sau khi bật chia sẻ, các thiết bị khác không thể truy cập thiết bị này, vui lòng thử tắt công tắc này',
			'SettingsScreen.loopbackAddress' => 'Địa chỉ Loopback',
			'SettingsScreen.enableCluster' => 'Bật cụm Proxy Socks/Http',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Cho phép thiết bị khác kết nối với cụm',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Xác thực cụm Proxy',
			'SettingsScreen.tunMode' => 'Chế độ TUN',
			'SettingsScreen.tuni4Address' => 'Địa chỉ IP',
			'SettingsScreen.tunModeTips' => 'Chế độ TUN sẽ tiếp nhận toàn bộ lưu lượng của hệ thống [Trong chế độ này, bạn có thể để proxy hệ thống không bật]',
			'SettingsScreen.tunModeRunAsAdmin' => 'Chế độ TUN yêu cầu quyền quản trị viên hệ thống, vui lòng khởi động lại ứng dụng với tư cách quản trị viên',
			'SettingsScreen.tunStack' => 'Ngăn xếp mạng',
			'SettingsScreen.tunHijackTips' => 'Sau khi đóng, các yêu cầu DNS từ TUN sẽ được chuyển tiếp trực tiếp đến máy chủ DNS tương ứng',
			'SettingsScreen.launchAtStartup' => 'Khởi chạy cùng hệ thống',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Thoát ứng dụng khi chuyển người dùng hệ thống',
			'SettingsScreen.handleScheme' => 'Gọi Scheme hệ thống',
			'SettingsScreen.portableMode' => 'Chế độ di động',
			'SettingsScreen.portableModeDisableTips' => 'Nếu bạn cần thoát khỏi chế độ di động, vui lòng thoát [karing] và xóa thư mục [profiles] trong cùng thư mục với [karing.exe] một cách thủ công',
			'SettingsScreen.accessibility' => 'Khả năng truy cập',
			'SettingsScreen.handleKaringScheme' => 'Xử lý gọi karing://',
			'SettingsScreen.handleClashScheme' => 'Xử lý gọi clash://',
			'SettingsScreen.handleSingboxScheme' => 'Xử lý gọi sing-box://',
			'SettingsScreen.alwayOnVPN' => 'Kết nối luôn bật',
			'SettingsScreen.disconnectAfterSleep' => 'Ngắt kết nối sau khi hệ thống ngủ',
			'SettingsScreen.removeSystemVPNConfig' => 'Xóa cấu hình VPN hệ thống',
			'SettingsScreen.timeConnectOrDisconnect' => 'Lịch trình kết nối/ngắt kết nối',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN phải được kết nối để có hiệu lực; sau khi bật, [Tự động ngủ] sẽ bị vô hiệu hóa',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'Khoảng thời gian kết nối/ngắt kết nối không được ít hơn ${p} phút',
			'SettingsScreen.disableFontScaler' => 'Tắt thu phóng phông chữ (Cần khởi động lại)',
			'SettingsScreen.autoOrientation' => 'Xoay theo màn hình',
			'SettingsScreen.restartTakesEffect' => 'Khởi động lại để có hiệu lực',
			'SettingsScreen.reconnectTakesEffect' => 'Kết nối lại để có hiệu lực',
			'SettingsScreen.resetSettings' => 'Đặt lại cài đặt',
			'SettingsScreen.cleanCache' => 'Xóa bộ nhớ đệm',
			'SettingsScreen.cleanCacheDone' => 'Đã xóa xong',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Cập nhật phiên bản ${p}',
			'SettingsScreen.follow' => 'Theo dõi chúng tôi',
			'SettingsScreen.contactUs' => 'Liên hệ chúng tôi',
			'SettingsScreen.supportUs' => 'Hỗ trợ chúng tôi',
			'SettingsScreen.rateInApp' => 'Đánh giá',
			'SettingsScreen.rateInAppStore' => 'Đánh giá trên AppStore',
			'UserAgreementScreen.privacyFirst' => 'Quyền riêng tư của bạn là trên hết',
			'UserAgreementScreen.agreeAndContinue' => 'Đồng ý và Tiếp tục',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'Phiên bản mới [${p}] đã sẵn sàng',
			'VersionUpdateScreen.update' => 'Khởi động lại để cập nhật',
			'VersionUpdateScreen.cancel' => 'Để sau',
			'CommonWidget.diableAlwayOnVPN' => 'Nếu [VPN luôn bật] đang bật, vui lòng tắt nó và thử kết nối lại',
			'CommonWidget.resetPort' => 'Vui lòng đổi cổng sang cổng khác khả dụng hoặc đóng ứng dụng đang chiếm cổng.',
			'main.tray.menuOpen' => 'Mở',
			'main.tray.menuExit' => 'Thoát',
			'meta.enable' => 'Bật',
			'meta.disable' => 'Tắt',
			'meta.bydefault' => 'Mặc định',
			'meta.filter' => 'Lọc',
			'meta.filterMethod' => 'Phương pháp lọc',
			'meta.include' => 'Bao gồm',
			'meta.exclude' => 'Loại trừ',
			'meta.all' => 'Tất cả',
			'meta.prefer' => 'Ưu tiên',
			'meta.only' => 'Chỉ',
			'meta.open' => 'Mở',
			'meta.close' => 'Đóng',
			'meta.quit' => 'Thoát',
			'meta.add' => 'Thêm',
			'meta.addSuccess' => 'Đã thêm thành công',
			'meta.addFailed' => ({required Object p}) => 'Thêm thất bại: ${p}',
			'meta.remove' => 'Xóa',
			'meta.removeConfirm' => 'Bạn có chắc chắn muốn xóa không?',
			'meta.edit' => 'Sửa',
			'meta.view' => 'Xem',
			'meta.more' => 'Thêm',
			'meta.tips' => 'Thông tin',
			'meta.copy' => 'Sao chép',
			'meta.paste' => 'Dán',
			'meta.cut' => 'Cắt',
			'meta.save' => 'Lưu',
			'meta.ok' => 'Đồng ý',
			'meta.cancel' => 'Hủy',
			'meta.feedback' => 'Góp ý',
			'meta.feedbackContent' => 'Nội dung góp ý',
			'meta.feedbackContentHit' => 'Bắt buộc, tối đa 500 ký tự',
			'meta.feedbackContentCannotEmpty' => 'Nội dung góp ý không được để trống',
			'meta.faq' => 'Câu hỏi thường gặp',
			'meta.htmlTools' => 'Bộ công cụ HTML',
			'meta.download' => 'Tải xuống',
			'meta.upload' => 'Tải lên',
			'meta.downloadSpeed' => 'Tốc độ tải xuống',
			'meta.uploadSpeed' => 'Tốc độ tải lên',
			'meta.loading' => 'Đang tải...',
			'meta.convert' => 'Chuyển đổi',
			'meta.check' => 'Kiểm tra',
			'meta.detect' => 'Phát hiện',
			'meta.cache' => 'Bộ nhớ đệm',
			'meta.days' => 'Ngày',
			'meta.hours' => 'Giờ',
			'meta.minutes' => 'Phút',
			'meta.seconds' => 'Giây',
			'meta.milliseconds' => 'Mili giây',
			'meta.tolerance' => 'Dung sai',
			'meta.dateTimePeriod' => 'Khoảng thời gian',
			'meta.protocol' => 'Giao thức',
			'meta.search' => 'Tìm kiếm',
			'meta.custom' => 'Tùy chỉnh',
			'meta.inbound' => 'Đến',
			'meta.outbound' => 'Đi',
			'meta.destination' => 'Đích',
			'meta.outletIpByCurrentSelected' => 'IP đầu ra',
			'meta.outletIpByDirect' => 'IP: ${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Kết nối',
			'meta.disconnect' => 'Ngắt kết nối',
			'meta.reconnect' => 'Kết nối lại',
			'meta.connected' => ' Đã kết nối',
			'meta.disconnected' => 'Đã ngắt kết nối',
			'meta.connecting' => 'Đang kết nối',
			'meta.connectTimeout' => 'Kết nối quá hạn',
			'meta.timeout' => 'Quá hạn',
			'meta.timeoutDuration' => 'Thời gian quá hạn',
			'meta.runDuration' => 'Thời gian chạy',
			'meta.latency' => 'Độ trễ',
			'meta.latencyTest' => 'Kiểm tra độ trễ',
			'meta.language' => 'Ngôn ngữ',
			'meta.next' => 'Tiếp theo',
			'meta.done' => 'Xong',
			'meta.apply' => 'Áp dụng',
			'meta.refresh' => 'Làm mới',
			'meta.retry' => 'Thử lại?',
			'meta.update' => 'Cập nhật',
			'meta.updateInterval' => 'Khoảng thời gian cập nhật',
			'meta.updateInterval5mTips' => 'Tối thiểu: 5m',
			'meta.updateFailed' => ({required Object p}) => 'Cập nhật thất bại: ${p}',
			'meta.samplingUnit' => 'Đơn vị thời gian lấy mẫu',
			'meta.queryResultCount' => 'Số lượng kết quả truy vấn',
			'meta.queryLimit' => ({required Object p}) => 'Hiển thị tối đa ${p} dữ liệu',
			'meta.none' => 'Không có',
			'meta.start' => 'Bắt đầu',
			'meta.pause' => 'Tạm dừng',
			'meta.reset' => 'Đặt lại',
			'meta.submit' => 'Gửi',
			'meta.user' => 'Người dùng',
			'meta.account' => 'Tài khoản',
			'meta.password' => 'Mật khẩu',
			'meta.decryptPassword' => 'Mật khẩu giải mã',
			'meta.required' => 'Bắt buộc',
			'meta.type' => 'Loại',
			'meta.path' => 'Đường dẫn',
			'meta.local' => 'Cục bộ',
			'meta.remote' => 'Từ xa',
			'meta.other' => 'Khác',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL không hợp lệ',
			'meta.urlCannotEmpty' => 'Liên kết không được để trống',
			'meta.urlTooLong' => 'URL quá dài (>8182)',
			'meta.copyUrl' => 'Sao chép liên kết',
			'meta.openUrl' => 'Mở liên kết',
			'meta.shareUrl' => 'Chia sẻ liên kết',
			'meta.speedTestUrl' => 'URL kiểm tra tốc độ',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'IP tĩnh',
			'meta.staticIPTips' => 'Bạn cần bật [TUN HijackDNS] hoặc [${_root.SettingsScreen.inboundDomainResolve}].',
			'meta.isp' => 'Nhà cung cấp VPN',
			'meta.domainSuffix' => 'Hậu tố tên miền',
			'meta.domain' => 'Tên miền',
			'meta.domainKeyword' => 'Từ khóa tên miền',
			'meta.domainRegex' => 'Regex tên miền',
			'meta.ip' => 'Địa chỉ IP',
			'meta.port' => 'Cổng',
			'meta.portRange' => 'Khoảng cổng',
			'meta.appPackage' => 'ID gói ứng dụng',
			'meta.processName' => 'Tên tiến trình',
			'meta.processPath' => 'Đường dẫn tiến trình',
			'meta.processDir' => 'Thư mục tiến trình',
			'meta.systemProxy' => 'Proxy hệ thống',
			'meta.percentage' => 'Phần trăm',
			'meta.statistics' => 'Thống kê',
			'meta.statisticsAndAnalysis' => 'Thống kê và Phân tích',
			'meta.statisticsDataDesensitize' => 'Khử nhạy dữ liệu',
			'meta.statisticsDataDesensitizeTips' => 'Tiến trình/ID gói/tên miền đích/IP đích, v.v. sẽ được thay thế bằng * và lưu sau khi khử nhạy',
			'meta.records' => 'Bản ghi',
			'meta.requestRecords' => 'Bản ghi yêu cầu',
			'meta.netInterfaces' => 'Giao diện mạng',
			'meta.netSpeed' => 'Tốc độ',
			'meta.memoryTrendChart' => 'Biểu đồ xu hướng bộ nhớ',
			'meta.goroutinesTrendChart' => 'Biểu đồ xu hướng GoRoutines',
			'meta.trafficTrendChart' => 'Biểu đồ xu hướng lưu lượng',
			'meta.trafficDistributionChart' => 'Biểu đồ phân phối lưu lượng',
			'meta.connectionChart' => 'Biểu đồ xu hướng kết nối',
			'meta.memoryChart' => 'Biểu đồ xu hướng bộ nhớ',
			'meta.trafficStatistics' => 'Thống kê lưu lượng',
			'meta.traffic' => 'Lưu lượng',
			'meta.trafficTotal' => 'Tổng lưu lượng',
			'meta.trafficProxy' => 'Lưu lượng Proxy',
			'meta.trafficDirect' => 'Lưu lượng trực tiếp',
			'meta.website' => 'Trang web',
			'meta.memory' => 'Bộ nhớ',
			'meta.outboundMode' => 'Chế độ đi',
			'meta.rule' => 'Quy tắc',
			'meta.global' => 'Toàn cầu',
			'meta.qrcode' => 'Mã QR',
			'meta.qrcodeTooLong' => 'Văn bản quá dài để hiển thị',
			'meta.qrcodeShare' => 'Chia sẻ mã QR',
			'meta.textToQrcode' => 'Văn bản sang mã QR',
			'meta.qrcodeScan' => 'Quét mã QR',
			'meta.qrcodeScanResult' => 'Kết quả quét',
			'meta.qrcodeScanFromImage' => 'Quét từ ảnh',
			'meta.qrcodeScanResultFailed' => 'Không thể phân tích ảnh, vui lòng đảm bảo ảnh chụp màn hình là mã QR hợp lệ',
			'meta.qrcodeScanResultEmpty' => 'Kết quả quét trống',
			'meta.screenshot' => 'Ảnh chụp màn hình',
			'meta.backupAndSync' => 'Sao lưu và Đồng bộ',
			'meta.autoBackup' => 'Sao lưu tự động',
			'meta.noProfileGotAutoBackup' => 'Nếu dữ liệu như [${_root.meta.myProfiles}] bị mất, bạn có thể khôi phục từ [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] hoặc các nguồn sao lưu khác (như iCloud hoặc Webdav, v.v.)',
			'meta.autoBackupAddProfile' => 'Sau khi thêm cấu hình',
			'meta.autoBackupRemoveProfile' => 'Sau khi xóa cấu hình',
			'meta.profile' => 'Cấu hình',
			'meta.currentProfile' => 'Cấu hình hiện tại',
			'meta.importAndExport' => 'Nhập và Xuất',
			'meta.import' => 'Nhập',
			'meta.importFromUrl' => 'Nhập từ URL',
			'meta.export' => 'Xuất',
			'meta.send' => 'Gửi',
			'meta.receive' => 'Nhận',
			'meta.sendConfirm' => 'Xác nhận gửi?',
			'meta.termOfUse' => 'Điều khoản dịch vụ',
			'meta.privacyPolicy' => 'Chính sách bảo mật',
			'meta.about' => 'Giới thiệu',
			'meta.name' => 'Tên',
			'meta.version' => 'Phiên bản',
			'meta.notice' => 'Thông báo',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Hành động: ${p}\nLý do: ${p1}',
			'meta.sort' => 'Sắp xếp lại',
			'meta.novice' => 'Chế độ người mới',
			'meta.willCompleteAfterRebootInstall' => 'Vui lòng khởi động lại thiết bị của bạn để hoàn tất cài đặt tiện ích hệ thống',
			'meta.willCompleteAfterRebootUninstall' => 'Vui lòng khởi động lại thiết bị của bạn để hoàn tất việc gỡ bỏ tiện ích hệ thống',
			'meta.requestNeedsUserApproval' => '1. Vui lòng [Cho phép] Karing cài đặt tiện ích hệ thống trong [Cài đặt hệ thống]-[Quyền riêng tư và Bảo mật]\n2. [Cài đặt hệ thống]-[Cài đặt chung]-[Mục đăng nhập và Tiện ích mở rộng-Tiện ích mạng] bật [karingServiceSE]\nkết nối lại sau khi hoàn thành',
			'meta.FullDiskAccessPermissionRequired' => 'Vui lòng bật quyền [karingServiceSE] trong [Cài đặt hệ thống]-[Quyền riêng tư và Bảo mật]-[Quyền truy cập toàn bộ ổ đĩa] và kết nối lại',
			'meta.tvMode' => 'Chế độ TV',
			'meta.recommended' => 'Đề xuất',
			'meta.innerError' => ({required Object p}) => 'Lỗi nội bộ: ${p}',
			'meta.logicOperation' => 'Thao tác logic',
			'meta.share' => 'Chia sẻ',
			'meta.candidateWord' => 'Từ ứng cử',
			'meta.keywordOrRegx' => 'Từ khóa/Regex',
			'meta.importFromClipboard' => 'Nhập từ Clipboard',
			'meta.exportToClipboard' => 'Xuất sang Clipboard',
			'meta.server' => 'Máy chủ',
			'meta.ads' => 'Quảng cáo',
			'meta.adsRemove' => 'Gỡ quảng cáo',
			'meta.donate' => 'Quyên góp',
			'meta.diversion' => 'Định tuyến',
			'meta.diversionRules' => 'Quy tắc định tuyến',
			'meta.diversionCustomGroup' => 'Nhóm phân luồng tùy chỉnh',
			'meta.urlTestCustomGroup' => 'Tự động chọn tùy chỉnh',
			'meta.setting' => 'Cài đặt',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Đồng bộ LAN',
			'meta.lanSyncNotQuitTips' => 'Không thoát giao diện này trước khi đồng bộ hoàn tất',
			'meta.deviceNoSpace' => 'Không đủ không gian đĩa',
			'meta.hideSystemApp' => 'Ẩn ứng dụng hệ thống',
			'meta.hideAppIcon' => 'Ẩn biểu tượng ứng dụng',
			'meta.hideDockIcon' => 'Ẩn biểu tượng Dock',
			'meta.remark' => 'Ghi chú',
			'meta.remarkExist' => 'Ghi chú đã tồn tại, vui lòng sử dụng tên khác',
			'meta.remarkCannotEmpty' => 'Ghi chú không được để trống',
			'meta.remarkTooLong' => 'Ghi chú tối đa 32 ký tự',
			'meta.openDir' => 'Mở thư mục tệp',
			'meta.fileChoose' => 'Chọn tệp',
			'meta.filePathCannotEmpty' => 'Đường dẫn tệp không được để trống',
			'meta.fileNotExist' => ({required Object p}) => 'Tệp không tồn tại: ${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Loại tệp không hợp lệ: ${p}',
			'meta.uwpExemption' => 'Miễn trừ cách ly mạng UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Lấy cấu hình',
			'meta.addProfile' => 'Thêm cấu hình',
			'meta.myProfiles' => 'Cấu hình của tôi',
			'meta.profileEdit' => 'Sửa cấu hình',
			'meta.profileEditUrlExist' => 'URL đã tồn tại, vui lòng sử dụng URL khác',
			'meta.profileEditReloadAfterProfileUpdate' => 'Tải lại sau khi cập nhật cấu hình',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Bắt đầu kiểm tra độ trễ sau khi cấu hình tự động cập nhật',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN cần được kết nối, và bật [Tải lại sau khi cập nhật cấu hình]',
			'meta.profileEditTestLatencyAutoRemove' => 'Tự động loại bỏ máy chủ kiểm tra độ trễ thất bại',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Thử tối đa 3 lần',
			'meta.profileImport' => 'Nhập tệp cấu hình',
			'meta.profileAddUrlOrContent' => 'Thêm liên kết cấu hình',
			'meta.profileExists' => 'Cấu hình đã tồn tại, vui lòng không thêm lặp lại',
			'meta.profileUrlOrContent' => 'Liên kết/Nội dung cấu hình',
			'meta.profileUrlOrContentHit' => 'Liên kết/Nội dung cấu hình [Bắt buộc] (Hỗ trợ Clash, V2ray (hỗ trợ hàng loạt), Stash, Karing, Sing-box, Shadowsocks, liên kết Sub)',
			'meta.profileUrlOrContentCannotEmpty' => 'Liên kết cấu hình không được để trống',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Định dạng sai, vui lòng sửa lại và thêm lại: ${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Thêm thất bại: ${p}, vui lòng thử sửa đổi [UserAgent] và thử lại, hoặc sử dụng trình duyệt tích hợp của thiết bị để mở liên kết cấu hình và nhập tệp cấu hình đã tải xuống vào ứng dụng này',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Thêm thất bại: ${p}, vui lòng bật proxy hoặc sửa đổi nút proxy hiện tại và thử lại',
			'meta.profileAddParseFailed' => 'Phân tích cấu hình thất bại',
			'meta.profileAddNoServerAvaliable' => 'Không có máy chủ khả dụng, hãy đảm bảo liên kết hoặc tệp cấu hình hợp lệ; nếu cấu hình của bạn từ GitHub, vui lòng lấy liên kết từ nút [Raw] trên trang',
			'meta.profileAddWrapSuccess' => 'Tạo cấu hình thành công, vui lòng đi tới [${_root.meta.myProfiles}] để xem',
			'diversionRulesKeep' => 'Giữ [${_root.meta.isp}] ${_root.meta.diversionRules}',
			'diversionCustomGroupPreset' => 'Cài đặt sẵn [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Lưu ý: Các mục được bật sẽ được thêm/ghi đè vào [${_root.meta.diversionCustomGroup}] và [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'Lưu ý: Sau khi thêm, bạn có thể cần điều chỉnh thứ tự thủ công, nếu không phân luồng mới thêm có thể không có hiệu lực',
			'rulesetEnableTips' => 'Mẹo: Sau khi bật các tùy chọn, vui lòng đi tới [${_root.meta.diversionRules}] để thiết lập các quy tắc liên quan, nếu không chúng sẽ không có hiệu lực',
			'ispUserAgentTips' => '[${_root.meta.isp}] sẽ gửi dữ liệu của các loại gói đăng ký khác nhau dựa trên [UserAgent] trong yêu cầu [HTTP]',
			'ispDiversionTips' => '[${_root.meta.isp}] cung cấp các quy tắc phân luồng lưu lượng; các gói đăng ký loại [V2Ray] không hỗ trợ quy tắc phân luồng lưu lượng',
			'isp.bind' => 'Liên kết với [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'Hủy liên kết [${p}]',
			'isp.faq' => ({required Object p}) => 'Câu hỏi thường gặp [${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram [${p}]',
			'isp.follow' => ({required Object p}) => 'Theo dõi [${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] không hợp lệ hoặc hết hạn',
			'permission.camera' => 'Máy ảnh',
			'permission.screen' => 'Ghi màn hình',
			'permission.appQuery' => 'Lấy danh sách ứng dụng',
			'permission.request' => ({required Object p}) => 'Bật quyền [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'Vui lòng bật quyền [${p}]',
			'tls.insecure' => 'Bỏ qua xác minh chứng chỉ',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Bật phân đoạn TLS',
			'tls.fragmentSize' => 'Kích thước phân đoạn TLS',
			'tls.fragmentSleep' => 'Thời gian chờ phân đoạn TLS',
			_ => null,
		} ?? switch (path) {
			'tls.mixedCaseSNIEnable' => 'Bật SNI hỗn hợp TLS',
			'tls.paddingEnable' => 'Bật TLS Padding',
			'tls.paddingSize' => 'Kích thước TLS Padding',
			'outboundRuleMode.currentSelected' => 'Đã chọn hiện tại',
			'outboundRuleMode.urltest' => 'Tự động chọn',
			'outboundRuleMode.direct' => 'Trực tiếp',
			'outboundRuleMode.block' => 'Chặn',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Cập nhật cấu hình',
			'theme.light' => 'Sáng',
			'theme.dark' => 'Tối',
			'theme.auto' => 'Tự động',
			'downloadProxyStrategy' => 'Kênh tải xuống',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Kết nối với máy chủ DNS thông qua máy chủ proxy để giải quyết tên miền\n[${_root.dnsProxyResolveMode.direct}]: Kết nối trực tiếp với máy chủ DNS để giải quyết tên miền\n[${_root.dnsProxyResolveMode.fakeip}]: Máy chủ proxy thay mặt bạn giải quyết tên miền; nếu bạn ngắt kết nối VPN, ứng dụng của bạn có thể cần được khởi động lại; chỉ hiệu quả cho lưu lượng đến [TUN]',
			'routeFinal' => 'cuối cùng',
			'protocolSniff' => 'Đánh hơi giao thức',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Vui lòng sử dụng [${p}]',
			'turnOffPrivateDirect' => 'Vui lòng bật [Kết nối trực tiếp mạng nội bộ] trước',
			'targetConnectFailed' => ({required Object p}) => 'Kết nối với [${p}] thất bại. Vui lòng đảm bảo các thiết bị đang ở cùng mạng LAN',
			'appleTVSync' => 'Đồng bộ cấu hình lõi hiện tại sang Apple TV - Karing',
			'appleTVSyncDone' => 'Đồng bộ hoàn tất. Vui lòng đi tới Apple TV - Karing để bắt đầu kết nối/khởi động lại kết nối',
			'appleTVRemoveCoreConfig' => 'Xóa cấu hình lõi Apple TV - Karing',
			'appleTVRemoveCoreConfigDone' => 'Đã xóa cấu hình lõi Apple TV - Karing; dịch vụ VPN đã ngắt kết nối',
			'appleTVUrlInvalid' => 'URL không hợp lệ, vui lòng mở Apple TV - Karing và quét mã QR được hiển thị bởi Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV: Karing[${p}] không có chức năng này, vui lòng nâng cấp và thử lại',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'Phiên bản chính của lõi không khớp, vui lòng nâng cấp [${p}] và thử lại',
			'remoteProfileEditConfirm' => 'Sau khi cập nhật cấu hình, các thay đổi nút sẽ được khôi phục. Tiếp tục?',
			'mustBeValidHttpsURL' => 'Phải là URL https hợp lệ',
			'fileNotExistReinstall' => ({required Object p}) => 'Tệp bị thiếu [${p}], vui lòng cài đặt lại',
			'noNetworkConnect' => 'Không có kết nối Internet',
			'sudoPassword' => 'mật khẩu sudo (yêu cầu cho chế độ TUN)',
			'turnOffNetworkBeforeInstall' => 'Khuyến nghị chuyển sang [Chế độ máy bay] trước khi cài đặt bản cập nhật',
			'latencyTestResolveIP' => 'Khi kiểm tra thủ công, giải quyết IP đầu ra',
			'latencyTestConcurrency' => 'Độ song song',
			'edgeRuntimeNotInstalled' => 'Thiết bị hiện tại chưa cài đặt Edge WebView2 runtime, nên không thể hiển thị trang. Vui lòng tải xuống và cài đặt Edge WebView2 runtime (x64), khởi động lại ứng dụng và thử lại.',
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
