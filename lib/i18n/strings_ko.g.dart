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
class TranslationsKo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsKo _root = this; // ignore: unused_field

	@override 
	TranslationsKo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKo(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenKo AboutScreen = _TranslationsAboutScreenKo._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenKo BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenKo._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenKo DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenKo._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenKo DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenKo._(_root);
	@override late final _TranslationsDiversionRulesScreenKo DiversionRulesScreen = _TranslationsDiversionRulesScreenKo._(_root);
	@override late final _TranslationsDnsSettingsScreenKo DnsSettingsScreen = _TranslationsDnsSettingsScreenKo._(_root);
	@override late final _TranslationsFileContentViewerScreenKo FileContentViewerScreen = _TranslationsFileContentViewerScreenKo._(_root);
	@override late final _TranslationsHomeScreenKo HomeScreen = _TranslationsHomeScreenKo._(_root);
	@override late final _TranslationsLaunchFailedScreenKo LaunchFailedScreen = _TranslationsLaunchFailedScreenKo._(_root);
	@override late final _TranslationsMyProfilesMergeScreenKo MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenKo._(_root);
	@override late final _TranslationsNetCheckScreenKo NetCheckScreen = _TranslationsNetCheckScreenKo._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenKo NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenKo._(_root);
	@override late final _TranslationsNetConnectionsScreenKo NetConnectionsScreen = _TranslationsNetConnectionsScreenKo._(_root);
	@override late final _TranslationsPerAppAndroidScreenKo PerAppAndroidScreen = _TranslationsPerAppAndroidScreenKo._(_root);
	@override late final _TranslationsRegionSettingsScreenKo RegionSettingsScreen = _TranslationsRegionSettingsScreenKo._(_root);
	@override late final _TranslationsServerSelectScreenKo ServerSelectScreen = _TranslationsServerSelectScreenKo._(_root);
	@override late final _TranslationsSettingsScreenKo SettingsScreen = _TranslationsSettingsScreenKo._(_root);
	@override late final _TranslationsUserAgreementScreenKo UserAgreementScreen = _TranslationsUserAgreementScreenKo._(_root);
	@override late final _TranslationsVersionUpdateScreenKo VersionUpdateScreen = _TranslationsVersionUpdateScreenKo._(_root);
	@override late final _TranslationsCommonWidgetKo CommonWidget = _TranslationsCommonWidgetKo._(_root);
	@override late final _TranslationsMainKo main = _TranslationsMainKo._(_root);
	@override late final _TranslationsMetaKo meta = _TranslationsMetaKo._(_root);
	@override String get diversionRulesKeep => '[${_root.meta.isp}]의 ${_root.meta.diversionRules} 유지';
	@override String get diversionCustomGroupPreset => '사전 설정 [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => '참고: 활성화된 항목은 [${_root.meta.diversionCustomGroup}] 및 [${_root.meta.diversionRules}]에 추가/덮어쓰기됩니다';
	@override String get diversionCustomGroupAddTips => '참고: 추가 후 순서를 수동으로 조정해야 할 수 있습니다. 그렇지 않으면 새로 추가된 분류가 적용되지 않을 수 있습니다';
	@override String get rulesetEnableTips => '팁: 옵션을 켠 후 [${_root.meta.diversionRules}]로 이동하여 관련 규칙을 설정하십시오. 그렇지 않으면 적용되지 않습니다';
	@override String get ispUserAgentTips => '[${_root.meta.isp}]는 [HTTP] 요청의 [UserAgent]에 따라 다양한 구독 유형의 데이터를 전송합니다';
	@override String get ispDiversionTips => '[${_root.meta.isp}]는 트래픽 분류 규칙을 제공합니다. [V2Ray] 유형 구독은 트래픽 분류 규칙을 지원하지 않습니다';
	@override late final _TranslationsIspKo isp = _TranslationsIspKo._(_root);
	@override late final _TranslationsPermissionKo permission = _TranslationsPermissionKo._(_root);
	@override late final _TranslationsTlsKo tls = _TranslationsTlsKo._(_root);
	@override late final _TranslationsOutboundRuleModeKo outboundRuleMode = _TranslationsOutboundRuleModeKo._(_root);
	@override late final _TranslationsDnsProxyResolveModeKo dnsProxyResolveMode = _TranslationsDnsProxyResolveModeKo._(_root);
	@override late final _TranslationsProxyStrategyKo proxyStrategy = _TranslationsProxyStrategyKo._(_root);
	@override late final _TranslationsReloadReasonKo reloadReason = _TranslationsReloadReasonKo._(_root);
	@override late final _TranslationsThemeKo theme = _TranslationsThemeKo._(_root);
	@override String get downloadProxyStrategy => '다운로드 채널';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: 프록시 서버를 통해 DNS 서버에 연결하여 도메인 이름 확인\n[${_root.dnsProxyResolveMode.direct}]: DNS 서버에 직접 연결하여 도메인 이름 확인\n[${_root.dnsProxyResolveMode.fakeip}]: 프록시 서버가 대신 도메인 이름을 확인합니다. VPN 연결을 끊으면 앱을 다시 시작해야 할 수 있습니다. [TUN] 수신 트래픽에만 유효합니다';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => '프로토콜 스니핑';
	@override String sendOrReceiveNotMatch({required Object p}) => '[${p}]를 사용하십시오';
	@override String get turnOffPrivateDirect => '먼저 [개인 네트워크 직접 연결]을 활성화하십시오';
	@override String targetConnectFailed({required Object p}) => '[${p}] 연결 실패. 장치가 동일한 LAN에 있는지 확인하십시오';
	@override String get appleTVSync => '현재 코어 구성을 Apple TV - Karing으로 동기화';
	@override String get appleTVSyncDone => '동기화가 완료되었습니다. Apple TV - Karing으로 이동하여 연결 시작/재시작하십시오';
	@override String get appleTVRemoveCoreConfig => 'Apple TV - Karing 코어 구성 삭제';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing 코어 구성 삭제됨. VPN 서비스 연결 끊김';
	@override String get appleTVUrlInvalid => '유효하지 않은 URL입니다. Apple TV - Karing을 열고 Karing에 표시된 QR 코드를 스캔하십시오';
	@override String appleTV404({required Object p}) => 'AppleTV: Karing[${p}]에 이 기능이 없습니다. 업그레이드 후 다시 시도하십시오';
	@override String appleCoreVersionNotMatch({required Object p}) => '코어 주 버전이 일치하지 않습니다. [${p}]로 업그레이드 후 다시 시도하십시오';
	@override String get remoteProfileEditConfirm => '프로필 업데이트 후 노드 변경 사항이 복원됩니다. 계속하시겠습니까?';
	@override String get mustBeValidHttpsURL => '유효한 https URL이어야 합니다';
	@override String fileNotExistReinstall({required Object p}) => '파일 [${p}]이 누락되었습니다. 다시 설치하십시오';
	@override String get noNetworkConnect => '인터넷 연결 없음';
	@override String get sudoPassword => 'sudo 비밀번호 (TUN 모드에 필요)';
	@override String get turnOffNetworkBeforeInstall => '업데이트를 설치하기 전에 [비행기 모드]로 전환하는 것이 좋습니다';
	@override String get latencyTestResolveIP => '수동 확인 시 출력 IP 확인';
	@override String get latencyTestConcurrency => '병렬성';
	@override String get edgeRuntimeNotInstalled => '현재 장치에 Edge WebView2 런타임이 설치되어 있지 않아 페이지를 표시할 수 없습니다. Edge WebView2 런타임(x64)을 다운로드하여 설치하고 앱을 다시 시작한 후 다시 시도하십시오.';
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
class _TranslationsAboutScreenKo implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get installRefer => '설치 리퍼러';
	@override String get installTime => '설치 시간';
	@override String get versionChannel => '자동 업데이트 채널';
	@override String get updateWhenConnected => '연결 후 업데이트를 확인하세요';
	@override String get autoDownloadPkg => '업데이트 패키지 자동 다운로드';
	@override String get disableAppImproveData => '앱 개선 데이터';
	@override String get disableUAReportTip => '[${_root.AboutScreen.disableAppImproveData}]를 활성화하면 제품의 안정성과 사용성을 개선하는 데 도움이 됩니다. 당사는 개인 정보를 수집하지 않습니다. 비활성화하면 앱에서 어떠한 데이터도 수집하지 않습니다.';
	@override String get devOptions => '개발자 옵션';
	@override String get enableDebugLog => '디버그 로그 활성화';
	@override String get viewFilsContent => '파일 보기';
	@override String get enablePprof => 'pprof 활성화';
	@override String get pprofPanel => 'pprof 패널';
	@override String get allowRemoteAccessPprof => '${_root.AboutScreen.pprofPanel}에 대한 원격 액세스 허용';
	@override String get allowRemoteAccessHtmlBoard => '${_root.SettingsScreen.htmlBoard}에 대한 원격 액세스 허용';
	@override String get useOriginalSBProfile => '원본 sing-box 프로필 사용';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenKo implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => '서버 URL';
	@override String get webdavRequired => '비워둘 수 없습니다';
	@override String get webdavLoginFailed => '로그인 실패:';
	@override String get webdavListFailed => '파일 목록을 가져오지 못했습니다:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenKo implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => '유효하지 않은 [도메인]: ${p}';
	@override String invalidIpCidr({required Object p}) => '유효하지 않은 [IP Cidr]: ${p}';
	@override String invalid({required Object p0, required Object p}) => '유효하지 않은 [${p0}]: ${p}';
	@override String invalidRuleSet({required Object p}) => '유효하지 않은 [규칙 세트]: ${p}. URL은 유효한 https URL이어야 하며 .srs/.json 확장자를 가진 바이너리 파일이어야 합니다';
	@override String invalidRuleSetBuildIn({required Object p}) => '유효하지 않은 [규칙 세트(내장)]: ${p}. 형식은 geosite:xxx, geoip:xxx 또는 acl:xxx여야 하며 xxx는 유효한 규칙 이름이어야 합니다';
	@override String invalidPackageId({required Object p}) => '유효하지 않은 [${_root.meta.appPackage}]: ${p}';
	@override String get setDiversionRule => '팁: 저장 후 [${_root.meta.diversionRules}]로 이동하여 관련 규칙을 설정하십시오. 그렇지 않으면 적용되지 않습니다.';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenKo implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '분류 규칙 감지';
	@override String get rule => '규칙:';
	@override String get outbound => '프록시 서버:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenKo implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => '팁: 규칙을 위에서 아래로 일치시켜 보십시오. 일치하는 규칙이 없으면 [final]을 사용합니다';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenKo implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP는 비워둘 수 없습니다';
	@override String get urlCanNotEmpty => 'URL은 비워둘 수 없습니다';
	@override String error({required Object p}) => '지원되지 않는 유형: ${p}';
	@override String get dnsDesc => '지연 시간 데이터의 첫 번째 열은 직접 연결 쿼리 지연 시간입니다.\n두 번째 열: [[프록시 트래픽] 프록시 서버를 통해 DNS 확인]을 켭니다. 지연 시간 데이터는 현재 프록시 서버를 통해 전달된 쿼리 지연 시간입니다. 꺼져 있는 경우: 지연 시간 데이터는 직접 연결 쿼리 지연 시간입니다';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenKo implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '파일 내용 뷰어';
	@override String get clearFileContent => '파일 내용을 삭제하시겠습니까?';
	@override String get clearFileContentTips => '프로필 파일 내용을 삭제하시겠습니까? 프로필 파일을 삭제하면 데이터 손실이나 앱의 비정상적인 작동이 발생할 수 있습니다. 주의해서 진행하십시오.';
}

// Path: HomeScreen
class _TranslationsHomeScreenKo implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => '서버를 선택하십시오';
	@override String get invalidServer => '은(는) 유효하지 않습니다. 다시 선택하십시오';
	@override String get disabledServer => '은(는) 비활성화되었습니다. 다시 선택하십시오';
	@override String get expiredServer => '사용 가능한 서버가 없습니다. 프로필이 만료되었거나 비활성화되었을 수 있습니다';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}';
	@override String get myLinkEmpty => '사용하기 전에 [바로가기 링크]를 설정하십시오';
	@override String tooMuchServers({required Object p, required Object p1}) => '프록시 서버가 너무 많습니다 [${p}>${p1}]. 시스템 메모리 제한으로 인해 연결이 실패할 수 있습니다';
	@override String tooMuchServers2({required Object p, required Object p1}) => '프록시 서버가 너무 많습니다 [${p}>${p1}]. 연결이 느려지거나 액세스할 수 없게 될 수 있습니다';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenKo implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => '앱을 시작할 수 없습니다 [유효하지 않은 프로세스 이름]. 앱을 별도의 디렉토리에 다시 설치하십시오';
	@override String get invalidProfile => '앱을 시작할 수 없습니다 [프로필 액세스 실패]. 앱을 다시 설치하십시오';
	@override String get invalidVersion => '앱을 시작할 수 없습니다 [유효하지 않은 버전]. 앱을 다시 설치하십시오';
	@override String get systemVersionLow => '앱을 시작할 수 없습니다 [시스템 버전이 너무 낮음]';
	@override String get invalidInstallPath => '설치 경로가 유효하지 않습니다. 유효한 경로에 다시 설치하십시오';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenKo implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => '프로필 병합';
	@override String get profilesMergeTarget => '대상 프로필';
	@override String get profilesMergeSource => '원본 프로필';
	@override String get profilesMergeTips => '팁: 원본 프로필의 분류 설정은 무시됩니다';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenKo implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '네트워크 확인';
	@override String get warn => '참고: 네트워크 환경 및 분류 규칙의 영향으로 테스트 결과가 실제 결과와 완전히 일치하지 않을 수 있습니다.';
	@override String get invalidDomain => '유효하지 않은 도메인 이름';
	@override String get connectivity => '네트워크 연결성';
	@override String connectivityTestIpv4AllFailed({required Object p}) => '모든 IPv4 연결 테스트 [${p}]가 실패했습니다';
	@override String get connectivityTestIpv4Ok => 'IPv4 연결 성공';
	@override String connectivityTestIpv6AllFailed({required Object p}) => '모든 IPv6 연결 테스트 [${p}]가 실패했습니다. 네트워크가 IPv6를 지원하지 않을 수 있습니다';
	@override String get connectivityTestIpv6Ok => 'IPv6 연결 성공';
	@override String get connectivityTestOk => '네트워크가 인터넷에 연결되어 있습니다';
	@override String get connectivityTestFailed => '네트워크가 아직 인터넷에 연결되지 않았습니다';
	@override String get remoteRulesetsDownloadOk => '모두 성공적으로 다운로드되었습니다';
	@override String get remoteRulesetsDownloadNotOk => '다운로드 중이거나 다운로드 실패';
	@override String get outbound => '프록시 서버';
	@override String outboundOk({required Object p}) => '[${p}] 연결 성공';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] 연결 실패\n오류: [${p2}]';
	@override String get dnsServer => 'DNS 서버';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]에 대한 DNS 쿼리 성공\nDNS 규칙: [${p2}]\n지연 시간: [${p3} ms]\n주소: [${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]에 대한 DNS 쿼리 성공\nDNS 규칙: [${p2}]\n오류: [${p3}]';
	@override String get host => 'HTTP 연결';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\n분류 규칙: [${p2}]\n프록시 서버: [${p3}]';
	@override String get hostConnectionOk => '연결 성공';
	@override String hostConnectionFailed({required Object p}) => '연결 실패: [${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenKo implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get hostIp => '도메인/IP';
	@override String get app => '앱';
	@override String get rule => '규칙';
	@override String get chain => '아웃바운드';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenKo implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'CSV 형식으로 복사됨';
	@override String get selectType => '분류 유형 선택';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenKo implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '앱별 프록시';
	@override String get whiteListMode => '화이트리스트 모드';
	@override String get whiteListModeTip => '켜져 있는 경우: 선택한 앱만 프록시를 통과합니다. 꺼져 있는 경우: 선택하지 않은 앱만 프록시를 통과합니다';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenKo implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '국가 또는 지역';
	@override String get Regions => '팁: 현재 국가 또는 지역을 올바르게 설정하십시오. 그렇지 않으면 네트워크 분류 문제가 발생할 수 있습니다';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenKo implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '서버 선택';
	@override String get autoSelectServer => '지연 시간이 가장 낮은 서버 자동 선택';
	@override String get recentUse => '최근 사용';
	@override String get myFav => '즐겨찾기';
	@override String selectLocal({required Object p}) => '선택한 서버가 로컬 주소이며 정상적으로 작동하지 않을 수 있습니다: ${p}';
	@override String get selectRequireEnableIPv6 => '선택한 서버가 IPv6 주소이며 [IPv6 활성화]가 필요합니다';
	@override String get selectDisabled => '이 서버는 비활성화되었습니다';
	@override String get error404 => '지연 시간 감지 중 오류가 발생했습니다. 동일한 내용의 구성이 있는지 확인하십시오';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenKo implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => '트래픽 가져오기';
	@override String get tutorial => '튜토리얼';
	@override String get commonlyUsedRulesets => '자주 사용하는 규칙 세트';
	@override String get htmlBoard => '온라인 패널';
	@override String get dnsLeakDetection => 'DNS 누출 감지';
	@override String get proxyLeakDetection => '프록시 누출 감지';
	@override String get speedTest => '속도 테스트';
	@override String get rulesetDirectDownlad => '규칙 세트 직접 다운로드';
	@override String get hideUnusedDiversionGroup => '사용하지 않는 분류 그룹 숨기기';
	@override String get disableISPDiversionGroup => '[${_root.meta.isp}]의 ${_root.meta.diversionRules} 비활성화';
	@override String get portSettingRule => '규칙 기반';
	@override String get portSettingDirectAll => '모두 직접 연결';
	@override String get portSettingProxyAll => '모두 프록시';
	@override String get portSettingControl => '제어 및 동기화';
	@override String get portSettingCluster => '클러스터 서비스';
	@override String get modifyPort => '포트 수정';
	@override String get modifyPortOccupied => '포트가 이미 사용 중입니다. 다른 포트를 사용하십시오';
	@override String get ipStrategyTips => '활성화하기 전에 네트워크가 IPv6를 지원하는지 확인하십시오. 그렇지 않으면 일부 트래픽에 정상적으로 액세스할 수 없습니다.';
	@override String get tunAppendHttpProxy => 'VPN에 HTTP 프록시 추가';
	@override String get tunAppendHttpProxyTips => '일부 앱은 가상 NIC 장치를 우회하여 HTTP 프록시에 직접 연결합니다';
	@override String get tunAllowBypassHttpProxyDomain => 'HTTP 프록시 우회가 허용된 도메인';
	@override String get dnsEnableRule => 'DNS 분류 규칙 활성화';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] 확인 채널';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] ECS 활성화';
	@override String get dnsTestDomain => '테스트 도메인';
	@override String get dnsTestDomainInvalid => '유효하지 않은 도메인';
	@override String get dnsTypeOutbound => '프록시 서버';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS 서버';
	@override String get dnsEnableRuleTips => '활성화하면 도메인 이름이 분류 규칙에 따라 확인을 위해 해당 DNS 서버를 선택합니다';
	@override String get dnsEnableFakeIpTips => 'FakeIP를 활성화한 후 VPN 연결을 끊으면 앱을 다시 시작해야 할 수 있습니다. 이 기능은 [TUN 모드] 활성화가 필요합니다';
	@override String get dnsTypeOutboundTips => '[${_root.SettingsScreen.dnsTypeOutbound}]에 대한 도메인 이름 확인';
	@override String get dnsTypeDirectTips => '[${_root.meta.trafficDirect}]에 대한 도메인 이름 확인';
	@override String get dnsTypeProxyTips => '[${_root.meta.trafficProxy}]에 대한 도메인 이름 확인';
	@override String get dnsTypeResolverTips => '[${_root.SettingsScreen.dnsTypeResolver}]에 대한 도메인 이름 확인';
	@override String get dnsAutoSetServer => '자동 서버 설정';
	@override String get dnsResetServer => '서버 리셋';
	@override String get inboundDomainResolve => '수신 도메인 이름 확인';
	@override String get privateDirect => '개인 네트워크 직접 연결';
	@override String inboundDomainResolveTips({required Object p}) => '분류 규칙이 구성되지 않은 일부 도메인 이름은 IP 기반 분류 규칙과 일치시키기 전에 확인해야 합니다. 이 기능은 프록시 포트 [${p}]로의 수신 요청에 영향을 미칩니다';
	@override String get useRomoteRes => '원격 리소스 사용';
	@override String get autoAppendRegion => '기본 규칙 자동 추가';
	@override String get autoSelect => '자동 선택';
	@override String get autoSelectServerIgnorePerProxyServer => '[Front/Chain] 프록시 서버 무시';
	@override String get autoSelectServerInterval => '지연 시간 확인 간격';
	@override String get autoSelectSelectedHealthCheckInterval => '현재 서버 상태 확인 간격';
	@override String get autoSelectServerReTestIfNetworkUpdate => '네트워크 변경 시 지연 시간 다시 확인';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => '수동 지연 시간 확인 후 현재 서버 업데이트';
	@override String get autoSelectServerIntervalTips => '간격이 짧을수록 서버 지연 시간 데이터가 더 적시에 업데이트되지만 더 많은 리소스를 차지하고 전력을 소모합니다';
	@override String get autoSelectSelectedHealthCheckIntervalTips => '확인에 실패하면 서버가 전환됩니다. 전환 시 사용 가능한 서버를 찾지 못하면 그룹에서 지연 시간을 다시 확인합니다';
	@override String get autoSelectServerFavFirst => '[즐겨찾기] 우선 사용';
	@override String get autoSelectServerFavFirstTips => '[즐겨찾기] 목록이 비어 있지 않으면 [즐겨찾기]의 서버를 사용합니다';
	@override String get autoSelectServerFilter => '유효하지 않은 서버 필터링';
	@override String autoSelectServerFilterTips({required Object p}) => '지연 시간 확인에 실패한 서버는 필터링됩니다. 필터링 후 사용 가능한 서버가 없으면 대신 처음 [${p}]개의 서버가 사용됩니다';
	@override String get autoSelectServerLimitedNum => '최대 서버 수';
	@override String get autoSelectServerLimitedNumTips => '이 수를 초과하는 서버는 필터링됩니다';
	@override String get numInvalid => '유효하지 않은 숫자';
	@override String get hideInvalidServer => '유효하지 않은 서버 숨기기';
	@override String get sortServer => '서버 정렬';
	@override String get sortServerTips => '지연 시간이 낮은 순서대로 정렬';
	@override String get selectServerHideRecommand => '[추천] 숨기기';
	@override String get selectServerHideRecent => '[최근 사용] 숨기기';
	@override String get selectServerHideFav => '[즐겨찾기] 숨기기';
	@override String get homeScreen => '홈 화면';
	@override String get theme => '테마';
	@override String get widgetsAlpha => '위젯 투명도';
	@override String get widgetsEmpty => '사용 가능한 위젯 없음';
	@override String get backgroundImage => '배경 이미지';
	@override String get myLink => '바로가기 링크';
	@override String get autoConnectAfterLaunch => '실행 후 자동 연결';
	@override String get autoConnectAtBoot => '시스템 시작 시 자동 연결';
	@override String get autoConnectAtBootTips => '시스템 지원이 필요합니다. 일부 시스템에서는 [자동 실행] 활성화도 필요할 수 있습니다.';
	@override String get hideAfterLaunch => '시작 후 창 숨기기';
	@override String get autoSetSystemProxy => '연결 시 시스템 프록시 자동 설정';
	@override String get bypassSystemProxy => '시스템 프록시 우회가 허용된 도메인';
	@override String get disconnectWhenQuit => '앱 종료 시 연결 끊기';
	@override String get autoAddToFirewall => '방화벽 규칙 자동 추가';
	@override String get excludeFromRecent => '[최근 작업]에서 숨기기';
	@override String get wakeLock => '절전 모드 방지';
	@override String get hideVpn => 'VPN 아이콘 숨기기';
	@override String get hideVpnTips => 'IPv6를 활성화하면 이 기능이 실패합니다';
	@override String get allowBypass => '앱의 VPN 우회 허용';
	@override String get importSuccess => '가져오기 성공';
	@override String get rewriteConfirm => '이 파일은 기존 로컬 구성을 덮어씁니다. 계속하시겠습니까?';
	@override String get mergePerapp => '로컬 [${_root.PerAppAndroidScreen.title}] 목록 병합';
	@override String get networkShare => '네트워크 공유';
	@override String get frontProxy => 'Front/Chain 프록시';
	@override String frontProxyTips({required Object p}) => '데이터 -> Front/Chain 프록시 서버 [여러 서버: 위에서 아래로] -> 프록시 서버 [${p}] -> 대상 서버';
	@override String get allowOtherHostsConnect => '다른 기기의 연결 허용';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}';
	@override String get allowOtherHostsConnectWarn => '시스템 제한으로 인해 이 기능을 활성화하면 http를 사용하여 네트워크에 액세스하는 이 기기의 앱이 네트워크에 제대로 연결되지 않을 수 있습니다.';
	@override String get tunAutoRoute => '자동 경로';
	@override String get tunAutoRedirect => '자동 리디렉션';
	@override String get tunStrictRoute => '엄격한 경로';
	@override String get tunStrictRouteTips => '공유를 켠 후 다른 기기에서 이 기기에 액세스할 수 없는 경우 이 스위치를 꺼 보십시오';
	@override String get loopbackAddress => '루프백 주소';
	@override String get enableCluster => 'Socks/Http 프록시 클러스터 활성화';
	@override String get clusterAllowOtherHostsConnect => '다른 기기의 클러스터 연결 허용';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => '프록시 클러스터 인증';
	@override String get tunMode => 'TUN 모드';
	@override String get tuni4Address => 'IP 주소';
	@override String get tunModeTips => 'TUN 모드는 시스템의 모든 트래픽을 처리합니다 [이 모드에서는 시스템 프록시를 끈 상태로 둘 수 있습니다]';
	@override String get tunModeRunAsAdmin => 'TUN 모드는 시스템 관리자 권한이 필요합니다. 관리자 권한으로 앱을 다시 시작하십시오';
	@override String get tunStack => '스택';
	@override String get tunHijackTips => '종료 후 TUN의 DNS 요청은 해당 DNS 서버로 직접 전달됩니다';
	@override String get launchAtStartup => '시작 시 실행';
	@override String get quitWhenSwitchSystemUser => '시스템 사용자 전환 시 앱 종료';
	@override String get handleScheme => '시스템 스킴 호출';
	@override String get portableMode => '포터블 모드';
	@override String get portableModeDisableTips => '포터블 모드를 종료해야 하는 경우 [karing]을 종료하고 [karing.exe]와 동일한 디렉토리에 있는 [profiles] 폴더를 수동으로 삭제하십시오';
	@override String get accessibility => '접근성';
	@override String get handleKaringScheme => 'karing:// 호출 처리';
	@override String get handleClashScheme => 'clash:// 호출 처리';
	@override String get handleSingboxScheme => 'sing-box:// 호출 처리';
	@override String get alwayOnVPN => '상시 연결';
	@override String get disconnectAfterSleep => '시스템 절전 모드 후 연결 끊기';
	@override String get removeSystemVPNConfig => '시스템 VPN 구성 삭제';
	@override String get timeConnectOrDisconnect => '예약된 연결/연결 끊기';
	@override String get timeConnectOrDisconnectTips => '효과를 보려면 VPN이 연결되어 있어야 합니다. 켜져 있으면 [자동 절전]이 비활성화됩니다';
	@override String timeConnectAndDisconnectInterval({required Object p}) => '연결/연결 끊기 간격은 ${p}분 이상이어야 합니다';
	@override String get disableFontScaler => '글꼴 크기 조정 비활성화 (재시작 시 적용)';
	@override String get autoOrientation => '화면에 맞춰 회전';
	@override String get restartTakesEffect => '재시작 시 적용됩니다';
	@override String get reconnectTakesEffect => '재연결 시 적용됩니다';
	@override String get resetSettings => '설정 리셋';
	@override String get cleanCache => '캐시 삭제';
	@override String get cleanCacheDone => '삭제 완료';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => '${p} 버전으로 업데이트';
	@override String get follow => '팔로우하기';
	@override String get contactUs => '문의하기';
	@override String get supportUs => '후원하기';
	@override String get rateInAppStore => 'AppStore에서 평가하기';
	@override String get rateInApp => '평가하기';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenKo implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => '개인 정보 보호 우선';
	@override String get agreeAndContinue => '동의 및 계속';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenKo implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => '새 버전 [${p}]이 준비되었습니다';
	@override String get update => '재시작하여 업데이트';
	@override String get cancel => '나중에';
}

// Path: CommonWidget
class _TranslationsCommonWidgetKo implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => '[항상 VPN 연결]이 켜져 있는 경우 끄고 다시 연결해 보십시오';
	@override String get resetPort => '포트를 사용 가능한 다른 포트로 변경하거나 포트를 사용 중인 애플리케이션을 종료하십시오.';
}

// Path: main
class _TranslationsMainKo implements TranslationsMainEn {
	_TranslationsMainKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayKo tray = _TranslationsMainTrayKo._(_root);
}

// Path: meta
class _TranslationsMetaKo implements TranslationsMetaEn {
	_TranslationsMetaKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get enable => '활성화';
	@override String get disable => '비활성화';
	@override String get bydefault => '기본값';
	@override String get filter => '필터';
	@override String get filterMethod => '필터 방법';
	@override String get include => '포함';
	@override String get exclude => '제외';
	@override String get all => '모두';
	@override String get prefer => '선호';
	@override String get only => '전용';
	@override String get open => '열기';
	@override String get close => '닫기';
	@override String get quit => '종료';
	@override String get add => '추가';
	@override String get addSuccess => '성공적으로 추가됨';
	@override String addFailed({required Object p}) => '추가 실패: ${p}';
	@override String get remove => '삭제';
	@override String get removeConfirm => '정말로 삭제하시겠습니까?';
	@override String get edit => '편집';
	@override String get view => '보기';
	@override String get more => '더 보기';
	@override String get tips => '정보';
	@override String get copy => '복사';
	@override String get save => '저장';
	@override String get ok => '확인';
	@override String get cancel => '취소';
	@override String get feedback => '피드백';
	@override String get feedbackContent => '피드백 내용';
	@override String get feedbackContentHit => '필수, 최대 500자';
	@override String get feedbackContentCannotEmpty => '피드백 내용은 비워둘 수 없습니다';
	@override String get faq => '자주 묻는 질문';
	@override String get htmlTools => 'HTML 도구 세트';
	@override String get download => '다운로드';
	@override String get upload => '업로드';
	@override String get downloadSpeed => '다운로드 속도';
	@override String get uploadSpeed => '업로드 속도';
	@override String get loading => '로드 중...';
	@override String get convert => '변환';
	@override String get check => '확인';
	@override String get detect => '감지';
	@override String get cache => '캐시';
	@override String get days => '일';
	@override String get hours => '시간';
	@override String get minutes => '분';
	@override String get seconds => '초';
	@override String get milliseconds => '밀리초';
	@override String get tolerance => '허용 오차';
	@override String get dateTimePeriod => '기간';
	@override String get protocol => '프로토콜';
	@override String get search => '검색';
	@override String get custom => '사용자 정의';
	@override String get inbound => '인바운드';
	@override String get outbound => '아웃바운드';
	@override String get destination => '대상';
	@override String get outletIpByCurrentSelected => '출구 IP';
	@override String get outletIpByDirect => 'IP: ${_root.outboundRuleMode.direct}';
	@override String get connect => '연결';
	@override String get disconnect => '연결 끊기';
	@override String get reconnect => '재연결';
	@override String get connected => '연결됨';
	@override String get disconnected => '연결 끊김';
	@override String get connecting => '연결 중';
	@override String get connectTimeout => '연결 시간 초과';
	@override String get timeout => '시간 초과';
	@override String get timeoutDuration => '시간 초과 기간';
	@override String get runDuration => '실행 기간';
	@override String get latency => '지연 시간';
	@override String get latencyTest => '지연 시간 확인';
	@override String get language => '언어';
	@override String get next => '다음';
	@override String get done => '완료';
	@override String get apply => '적용';
	@override String get refresh => '새로고침';
	@override String get retry => '다시 시도하시겠습니까?';
	@override String get update => '업데이트';
	@override String get updateInterval => '업데이트 간격';
	@override String get updateInterval5mTips => '최소: 5분';
	@override String updateFailed({required Object p}) => '업데이트 실패: ${p}';
	@override String get samplingUnit => '샘플링 시간 단위';
	@override String get queryResultCount => '쿼리 결과 수';
	@override String queryLimit({required Object p}) => '최대 ${p}개의 데이터 표시';
	@override String get none => '없음';
	@override String get start => '시작';
	@override String get pause => '일시 중지';
	@override String get reset => '리셋';
	@override String get submit => '제출';
	@override String get user => '사용자';
	@override String get account => '계정';
	@override String get password => '비밀번호';
	@override String get required => '필수';
	@override String get type => '유형';
	@override String get path => '경로';
	@override String get local => '로컬';
	@override String get remote => '원격';
	@override String get other => '기타';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => '유효하지 않은 URL';
	@override String get urlCannotEmpty => '링크는 비워둘 수 없습니다';
	@override String get urlTooLong => 'URL이 너무 깁니다 (>8182)';
	@override String get copyUrl => '링크 복사';
	@override String get openUrl => '링크 열기';
	@override String get shareUrl => '링크 공유';
	@override String get speedTestUrl => '속도 테스트 URL';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => '고정 IP';
	@override String get staticIPTips => '[TUN HijackDNS] 또는 [${_root.SettingsScreen.inboundDomainResolve}]를 활성화해야 합니다.';
	@override String get isp => 'VPN 제공업체';
	@override String get domainSuffix => '도메인 접미사';
	@override String get domain => '도메인';
	@override String get domainKeyword => '도메인 키워드';
	@override String get domainRegex => '도메인 정규식';
	@override String get ip => 'IP 주소';
	@override String get port => '포트';
	@override String get portRange => '포트 범위';
	@override String get appPackage => '앱 패키지 ID';
	@override String get processName => '프로세스 이름';
	@override String get processPath => '프로세스 경로';
	@override String get processDir => '프로세스 디렉토리';
	@override String get systemProxy => '시스템 프록시';
	@override String get percentage => '백분율';
	@override String get statistics => '통계';
	@override String get statisticsAndAnalysis => '통계 및 분석';
	@override String get statisticsDataDesensitize => '데이터 비식별화';
	@override String get statisticsDataDesensitizeTips => '프로세스 ID, 패키지 ID, 대상 도메인 이름, 대상 IP 등은 비식별화 후 *로 대체되어 저장됩니다';
	@override String get records => '기록';
	@override String get requestRecords => '요청 기록';
	@override String get netInterfaces => '네트워크 인터페이스';
	@override String get netSpeed => '속도';
	@override String get memoryTrendChart => '메모리 추세 차트';
	@override String get goroutinesTrendChart => 'GoRoutines 추세 차트';
	@override String get trafficTrendChart => '트래픽 추세 차트';
	@override String get trafficDistributionChart => '트래픽 분포 차트';
	@override String get connectionChart => '연결 추세 차트';
	@override String get memoryChart => '메모리 추세 차트';
	@override String get trafficStatistics => '트래픽 통계';
	@override String get traffic => '트래픽';
	@override String get trafficTotal => '총 트래픽';
	@override String get trafficProxy => '프록시 트래픽';
	@override String get trafficDirect => '직접 트래픽';
	@override String get website => '웹사이트';
	@override String get memory => '메모리';
	@override String get outboundMode => '아웃바운드 모드';
	@override String get rule => '규칙';
	@override String get global => '글로벌';
	@override String get qrcode => 'QR 코드';
	@override String get qrcodeTooLong => '텍스트가 너무 길어서 표시할 수 없습니다';
	@override String get qrcodeShare => 'QR 코드 공유';
	@override String get textToQrcode => '텍스트를 QR 코드로 변환';
	@override String get qrcodeScan => 'QR 코드 스캔';
	@override String get qrcodeScanResult => '스캔 결과';
	@override String get qrcodeScanFromImage => '이미지에서 스캔';
	@override String get qrcodeScanResultFailed => '이미지 분석 실패. 스크린샷이 유효한 QR 코드인지 확인하십시오';
	@override String get qrcodeScanResultEmpty => '스캔 결과가 비어 있습니다';
	@override String get screenshot => '스크린샷';
	@override String get backupAndSync => '백업 및 동기화';
	@override String get autoBackup => '자동 백업';
	@override String get noProfileGotAutoBackup => '[${_root.meta.myProfiles}]과 같은 데이터가 손실된 경우 [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] 또는 다른 백업 소스(iCloud, Webdav 등)에서 복원할 수 있습니다';
	@override String get autoBackupAddProfile => '프로필 추가 후';
	@override String get autoBackupRemoveProfile => '프로필 삭제 후';
	@override String get profile => '프로필';
	@override String get currentProfile => '현재 프로필';
	@override String get importAndExport => '가져오기 및 내보내기';
	@override String get import => '가져오기';
	@override String get importFromUrl => 'URL에서 가져오기';
	@override String get export => '내보내기';
	@override String get send => '보내기';
	@override String get receive => '받기';
	@override String get sendConfirm => '보내기를 확인하시겠습니까?';
	@override String get termOfUse => '이용 약관';
	@override String get privacyPolicy => '개인정보 처리방침';
	@override String get about => '정보';
	@override String get name => '이름';
	@override String get version => '버전';
	@override String get notice => '공지사항';
	@override String appNotifyWithReason({required Object p, required Object p1}) => '동작: ${p}\n사유: ${p1}';
	@override String get sort => '순서 재정렬';
	@override String get novice => '초보자 모드';
	@override String get willCompleteAfterRebootInstall => '시스템 확장 프로그램 설치를 완료하려면 장치를 재시작하십시오';
	@override String get willCompleteAfterRebootUninstall => '시스템 확장 프로그램 삭제를 완료하려면 장치를 재시작하십시오';
	@override String get requestNeedsUserApproval => '1. [시스템 설정]-[개인정보 보호 및 보안]에서 Karing이 시스템 확장 프로그램을 설치하도록 [허용]하십시오\n2. [시스템 설정]-[일반]-[로그인 항목 및 확장 프로그램-네트워크 확장 프로그램]에서 [karingServiceSE]를 켭니다\n완료 후 다시 연결하십시오';
	@override String get FullDiskAccessPermissionRequired => '[시스템 설정]-[개인정보 보호 및 보안]-[전체 디스크 액세스 권한]에서 [karingServiceSE] 권한을 활성화하고 다시 연결하십시오';
	@override String get tvMode => 'TV 모드';
	@override String get recommended => '추천';
	@override String innerError({required Object p}) => '내부 오류: ${p}';
	@override String get logicOperation => '논리 연산';
	@override String get share => '공유';
	@override String get candidateWord => '후보 단어';
	@override String get keywordOrRegx => '키워드/정규식';
	@override String get importFromClipboard => '클립보드에서 가져오기';
	@override String get exportToClipboard => '클립보드로 내보내기';
	@override String get server => '서버';
	@override String get ads => '광고';
	@override String get adsRemove => '광고 제거';
	@override String get donate => '후원';
	@override String get diversion => '라우팅';
	@override String get diversionRules => '라우팅 규칙';
	@override String get diversionCustomGroup => '사용자 정의 분류 그룹';
	@override String get urlTestCustomGroup => '사용자 정의 자동 선택';
	@override String get setting => '설정';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN 동기화';
	@override String get lanSyncNotQuitTips => '동기화가 완료될 때까지 이 화면을 닫지 마십시오';
	@override String get deviceNoSpace => '디스크 공간 부족';
	@override String get hideSystemApp => '시스템 앱 숨기기';
	@override String get hideAppIcon => '앱 아이콘 숨기기';
	@override String get hideDockIcon => 'Dock 아이콘 숨기기';
	@override String get remark => '메모';
	@override String get remarkExist => '메모가 이미 존재합니다. 다른 이름을 사용하십시오';
	@override String get remarkCannotEmpty => '메모는 비워둘 수 없습니다';
	@override String get remarkTooLong => '메모는 최대 32자까지 가능합니다';
	@override String get openDir => '파일 디렉토리 열기';
	@override String get fileChoose => '파일 선택';
	@override String get filePathCannotEmpty => '파일 경로는 비워둘 수 없습니다';
	@override String fileNotExist({required Object p}) => '파일이 존재하지 않습니다: ${p}';
	@override String fileTypeInvalid({required Object p}) => '유효하지 않은 파일 유형: ${p}';
	@override String get uwpExemption => 'UWP 네트워크 격리 예외';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => '프로필 가져오기';
	@override String get addProfile => '프로필 추가';
	@override String get myProfiles => '내 프로필';
	@override String get profileEdit => '프로필 편집';
	@override String get profileEditUrlExist => 'URL이 이미 존재합니다. 다른 URL을 사용하십시오';
	@override String get profileEditReloadAfterProfileUpdate => '프로필 업데이트 후 다시 로드';
	@override String get profileEditTestLatencyAfterProfileUpdate => '프로필 자동 업데이트 후 지연 시간 테스트 시작';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN이 연결되어 있어야 하며 [프로필 업데이트 후 다시 로드]가 켜져 있어야 합니다';
	@override String get profileEditTestLatencyAutoRemove => '지연 시간 테스트 실패 서버 자동 제거';
	@override String get profileEditTestLatencyAutoRemoveTips => '최대 3회 시도';
	@override String get profileImport => '프로필 파일 가져오기';
	@override String get profileAddUrlOrContent => '프로필 링크 추가';
	@override String get profileExists => '프로필이 이미 존재합니다. 중복해서 추가하지 마십시오';
	@override String get profileUrlOrContent => '프로필 링크/내용';
	@override String get profileUrlOrContentHit => '프로필 링크/내용 [필수] (Clash, V2ray(일괄 지원), Stash, Karing, Sing-box, Shadowsocks, Sub 프로필 링크 지원)';
	@override String get profileUrlOrContentCannotEmpty => '프로필 링크는 비워둘 수 없습니다';
	@override String profileAddFailedFormatException({required Object p}) => '형식이 잘못되었습니다. 수정 후 다시 추가하십시오: ${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => '추가 실패: ${p}. [UserAgent]를 수정하고 다시 시도하거나, 장치 내장 브라우저를 사용하여 구성 링크를 열고 브라우저에서 다운로드한 구성 파일을 이 앱으로 가져오십시오';
	@override String profileAddFailedHandshakeException({required Object p}) => '추가 실패: ${p}. 프록시를 켜거나 현재 프록시 노드를 수정하고 다시 시도하십시오';
	@override String get profileAddParseFailed => '프로필 분석 실패';
	@override String get profileAddNoServerAvaliable => '사용 가능한 서버가 없습니다. 구성 링크 또는 파일이 유효한지 확인하십시오. 구성이 GitHub인 경우 페이지의 [Raw] 버튼에서 링크를 가져오십시오';
	@override String get profileAddWrapSuccess => '구성이 성공적으로 생성되었습니다. [${_root.meta.myProfiles}]로 이동하여 확인하십시오';
}

// Path: isp
class _TranslationsIspKo implements TranslationsIspEn {
	_TranslationsIspKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get bind => '[${_root.meta.isp}]에 바인딩 ';
	@override String unbind({required Object p}) => '바인딩 해제 [${p}]';
	@override String faq({required Object p}) => '자주 묻는 질문 [${p}]';
	@override String customerService({required Object p}) => 'Telegram [${p}]';
	@override String follow({required Object p}) => '팔로우 [${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}]가 유효하지 않거나 만료되었습니다';
}

// Path: permission
class _TranslationsPermissionKo implements TranslationsPermissionEn {
	_TranslationsPermissionKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get camera => '카메라';
	@override String get screen => '화면 녹화';
	@override String get appQuery => '앱 목록 가져오기';
	@override String request({required Object p}) => '[${p}] 권한 켜기';
	@override String requestNeed({required Object p}) => '[${p}] 권한을 켜주십시오';
}

// Path: tls
class _TranslationsTlsKo implements TranslationsTlsEn {
	_TranslationsTlsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get insecure => '인증서 확인 건너뛰기';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'TLS 조각화 활성화';
	@override String get fragmentSize => 'TLS 조각 크기';
	@override String get fragmentSleep => 'TLS 조각 대기 시간';
	@override String get mixedCaseSNIEnable => 'TLS 혼합 케이스 SNI 활성화';
	@override String get paddingEnable => 'TLS 패딩 활성화';
	@override String get paddingSize => 'TLS 패딩 크기';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeKo implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => '현재 선택됨';
	@override String get urltest => '자동 선택';
	@override String get direct => '직접 연결';
	@override String get block => '차단';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeKo implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyKo implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonKo implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => '프로필 업데이트';
}

// Path: theme
class _TranslationsThemeKo implements TranslationsThemeEn {
	_TranslationsThemeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get light => '라이트';
	@override String get dark => '다크';
	@override String get auto => '자동';
}

// Path: main.tray
class _TranslationsMainTrayKo implements TranslationsMainTrayEn {
	_TranslationsMainTrayKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => '열기';
	@override String get menuExit => '종료';
}

/// The flat map containing all translations for locale <ko>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsKo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => '설치 리퍼러',
			'AboutScreen.installTime' => '설치 시간',
			'AboutScreen.versionChannel' => '자동 업데이트 채널',
			'AboutScreen.updateWhenConnected' => '연결 후 업데이트를 확인하세요',
			'AboutScreen.autoDownloadPkg' => '업데이트 패키지 자동 다운로드',
			'AboutScreen.disableAppImproveData' => '앱 개선 데이터',
			'AboutScreen.disableUAReportTip' => '[${_root.AboutScreen.disableAppImproveData}]를 활성화하면 제품의 안정성과 사용성을 개선하는 데 도움이 됩니다. 당사는 개인 정보를 수집하지 않습니다. 비활성화하면 앱에서 어떠한 데이터도 수집하지 않습니다.',
			'AboutScreen.devOptions' => '개발자 옵션',
			'AboutScreen.enableDebugLog' => '디버그 로그 활성화',
			'AboutScreen.viewFilsContent' => '파일 보기',
			'AboutScreen.enablePprof' => 'pprof 활성화',
			'AboutScreen.pprofPanel' => 'pprof 패널',
			'AboutScreen.allowRemoteAccessPprof' => '${_root.AboutScreen.pprofPanel}에 대한 원격 액세스 허용',
			'AboutScreen.allowRemoteAccessHtmlBoard' => '${_root.SettingsScreen.htmlBoard}에 대한 원격 액세스 허용',
			'AboutScreen.useOriginalSBProfile' => '원본 sing-box 프로필 사용',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => '서버 URL',
			'BackupAndSyncWebdavScreen.webdavRequired' => '비워둘 수 없습니다',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => '로그인 실패:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => '파일 목록을 가져오지 못했습니다:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => '유효하지 않은 [도메인]: ${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => '유효하지 않은 [IP Cidr]: ${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => '유효하지 않은 [${p0}]: ${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => '유효하지 않은 [규칙 세트]: ${p}. URL은 유효한 https URL이어야 하며 .srs/.json 확장자를 가진 바이너리 파일이어야 합니다',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => '유효하지 않은 [규칙 세트(내장)]: ${p}. 형식은 geosite:xxx, geoip:xxx 또는 acl:xxx여야 하며 xxx는 유효한 규칙 이름이어야 합니다',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => '유효하지 않은 [${_root.meta.appPackage}]: ${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => '팁: 저장 후 [${_root.meta.diversionRules}]로 이동하여 관련 규칙을 설정하십시오. 그렇지 않으면 적용되지 않습니다.',
			'DiversionRuleDetectScreen.title' => '분류 규칙 감지',
			'DiversionRuleDetectScreen.rule' => '규칙:',
			'DiversionRuleDetectScreen.outbound' => '프록시 서버:',
			'DiversionRulesScreen.diversionRulesMatchTips' => '팁: 규칙을 위에서 아래로 일치시켜 보십시오. 일치하는 규칙이 없으면 [final]을 사용합니다',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP는 비워둘 수 없습니다',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL은 비워둘 수 없습니다',
			'DnsSettingsScreen.error' => ({required Object p}) => '지원되지 않는 유형: ${p}',
			'DnsSettingsScreen.dnsDesc' => '지연 시간 데이터의 첫 번째 열은 직접 연결 쿼리 지연 시간입니다.\n두 번째 열: [[프록시 트래픽] 프록시 서버를 통해 DNS 확인]을 켭니다. 지연 시간 데이터는 현재 프록시 서버를 통해 전달된 쿼리 지연 시간입니다. 꺼져 있는 경우: 지연 시간 데이터는 직접 연결 쿼리 지연 시간입니다',
			'FileContentViewerScreen.title' => '파일 내용 뷰어',
			'FileContentViewerScreen.clearFileContent' => '파일 내용을 삭제하시겠습니까?',
			'FileContentViewerScreen.clearFileContentTips' => '프로필 파일 내용을 삭제하시겠습니까? 프로필 파일을 삭제하면 데이터 손실이나 앱의 비정상적인 작동이 발생할 수 있습니다. 주의해서 진행하십시오.',
			'HomeScreen.toSelectServer' => '서버를 선택하십시오',
			'HomeScreen.invalidServer' => '은(는) 유효하지 않습니다. 다시 선택하십시오',
			'HomeScreen.disabledServer' => '은(는) 비활성화되었습니다. 다시 선택하십시오',
			'HomeScreen.expiredServer' => '사용 가능한 서버가 없습니다. 프로필이 만료되었거나 비활성화되었을 수 있습니다',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}',
			'HomeScreen.myLinkEmpty' => '사용하기 전에 [바로가기 링크]를 설정하십시오',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => '프록시 서버가 너무 많습니다 [${p}>${p1}]. 시스템 메모리 제한으로 인해 연결이 실패할 수 있습니다',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => '프록시 서버가 너무 많습니다 [${p}>${p1}]. 연결이 느려지거나 액세스할 수 없게 될 수 있습니다',
			'LaunchFailedScreen.invalidProcess' => '앱을 시작할 수 없습니다 [유효하지 않은 프로세스 이름]. 앱을 별도의 디렉토리에 다시 설치하십시오',
			'LaunchFailedScreen.invalidProfile' => '앱을 시작할 수 없습니다 [프로필 액세스 실패]. 앱을 다시 설치하십시오',
			'LaunchFailedScreen.invalidVersion' => '앱을 시작할 수 없습니다 [유효하지 않은 버전]. 앱을 다시 설치하십시오',
			'LaunchFailedScreen.systemVersionLow' => '앱을 시작할 수 없습니다 [시스템 버전이 너무 낮음]',
			'LaunchFailedScreen.invalidInstallPath' => '설치 경로가 유효하지 않습니다. 유효한 경로에 다시 설치하십시오',
			'MyProfilesMergeScreen.profilesMerge' => '프로필 병합',
			'MyProfilesMergeScreen.profilesMergeTarget' => '대상 프로필',
			'MyProfilesMergeScreen.profilesMergeSource' => '원본 프로필',
			'MyProfilesMergeScreen.profilesMergeTips' => '팁: 원본 프로필의 분류 설정은 무시됩니다',
			'NetCheckScreen.title' => '네트워크 확인',
			'NetCheckScreen.warn' => '참고: 네트워크 환경 및 분류 규칙의 영향으로 테스트 결과가 실제 결과와 완전히 일치하지 않을 수 있습니다.',
			'NetCheckScreen.invalidDomain' => '유효하지 않은 도메인 이름',
			'NetCheckScreen.connectivity' => '네트워크 연결성',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => '모든 IPv4 연결 테스트 [${p}]가 실패했습니다',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'IPv4 연결 성공',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => '모든 IPv6 연결 테스트 [${p}]가 실패했습니다. 네트워크가 IPv6를 지원하지 않을 수 있습니다',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'IPv6 연결 성공',
			'NetCheckScreen.connectivityTestOk' => '네트워크가 인터넷에 연결되어 있습니다',
			'NetCheckScreen.connectivityTestFailed' => '네트워크가 아직 인터넷에 연결되지 않았습니다',
			'NetCheckScreen.remoteRulesetsDownloadOk' => '모두 성공적으로 다운로드되었습니다',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => '다운로드 중이거나 다운로드 실패',
			'NetCheckScreen.outbound' => '프록시 서버',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] 연결 성공',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] 연결 실패\n오류: [${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS 서버',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]에 대한 DNS 쿼리 성공\nDNS 규칙: [${p2}]\n지연 시간: [${p3} ms]\n주소: [${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]에 대한 DNS 쿼리 성공\nDNS 규칙: [${p2}]\n오류: [${p3}]',
			'NetCheckScreen.host' => 'HTTP 연결',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\n분류 규칙: [${p2}]\n프록시 서버: [${p3}]',
			'NetCheckScreen.hostConnectionOk' => '연결 성공',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => '연결 실패: [${p}]',
			'NetConnectionsFilterScreen.hostIp' => '도메인/IP',
			'NetConnectionsFilterScreen.app' => '앱',
			'NetConnectionsFilterScreen.rule' => '규칙',
			'NetConnectionsFilterScreen.chain' => '아웃바운드',
			'NetConnectionsScreen.copyAsCSV' => 'CSV 형식으로 복사됨',
			'NetConnectionsScreen.selectType' => '분류 유형 선택',
			'PerAppAndroidScreen.title' => '앱별 프록시',
			'PerAppAndroidScreen.whiteListMode' => '화이트리스트 모드',
			'PerAppAndroidScreen.whiteListModeTip' => '켜져 있는 경우: 선택한 앱만 프록시를 통과합니다. 꺼져 있는 경우: 선택하지 않은 앱만 프록시를 통과합니다',
			'RegionSettingsScreen.title' => '국가 또는 지역',
			'RegionSettingsScreen.Regions' => '팁: 현재 국가 또는 지역을 올바르게 설정하십시오. 그렇지 않으면 네트워크 분류 문제가 발생할 수 있습니다',
			'ServerSelectScreen.title' => '서버 선택',
			'ServerSelectScreen.autoSelectServer' => '지연 시간이 가장 낮은 서버 자동 선택',
			'ServerSelectScreen.recentUse' => '최근 사용',
			'ServerSelectScreen.myFav' => '즐겨찾기',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => '선택한 서버가 로컬 주소이며 정상적으로 작동하지 않을 수 있습니다: ${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => '선택한 서버가 IPv6 주소이며 [IPv6 활성화]가 필요합니다',
			'ServerSelectScreen.selectDisabled' => '이 서버는 비활성화되었습니다',
			'ServerSelectScreen.error404' => '지연 시간 감지 중 오류가 발생했습니다. 동일한 내용의 구성이 있는지 확인하십시오',
			'SettingsScreen.getTranffic' => '트래픽 가져오기',
			'SettingsScreen.tutorial' => '튜토리얼',
			'SettingsScreen.commonlyUsedRulesets' => '자주 사용하는 규칙 세트',
			'SettingsScreen.htmlBoard' => '온라인 패널',
			'SettingsScreen.dnsLeakDetection' => 'DNS 누출 감지',
			'SettingsScreen.proxyLeakDetection' => '프록시 누출 감지',
			'SettingsScreen.speedTest' => '속도 테스트',
			'SettingsScreen.rulesetDirectDownlad' => '규칙 세트 직접 다운로드',
			'SettingsScreen.hideUnusedDiversionGroup' => '사용하지 않는 분류 그룹 숨기기',
			'SettingsScreen.disableISPDiversionGroup' => '[${_root.meta.isp}]의 ${_root.meta.diversionRules} 비활성화',
			'SettingsScreen.portSettingRule' => '규칙 기반',
			'SettingsScreen.portSettingDirectAll' => '모두 직접 연결',
			'SettingsScreen.portSettingProxyAll' => '모두 프록시',
			'SettingsScreen.portSettingControl' => '제어 및 동기화',
			'SettingsScreen.portSettingCluster' => '클러스터 서비스',
			'SettingsScreen.modifyPort' => '포트 수정',
			'SettingsScreen.modifyPortOccupied' => '포트가 이미 사용 중입니다. 다른 포트를 사용하십시오',
			'SettingsScreen.ipStrategyTips' => '활성화하기 전에 네트워크가 IPv6를 지원하는지 확인하십시오. 그렇지 않으면 일부 트래픽에 정상적으로 액세스할 수 없습니다.',
			'SettingsScreen.tunAppendHttpProxy' => 'VPN에 HTTP 프록시 추가',
			'SettingsScreen.tunAppendHttpProxyTips' => '일부 앱은 가상 NIC 장치를 우회하여 HTTP 프록시에 직접 연결합니다',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'HTTP 프록시 우회가 허용된 도메인',
			'SettingsScreen.dnsEnableRule' => 'DNS 분류 규칙 활성화',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] 확인 채널',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] ECS 활성화',
			'SettingsScreen.dnsTestDomain' => '테스트 도메인',
			'SettingsScreen.dnsTestDomainInvalid' => '유효하지 않은 도메인',
			'SettingsScreen.dnsTypeOutbound' => '프록시 서버',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS 서버',
			'SettingsScreen.dnsEnableRuleTips' => '활성화하면 도메인 이름이 분류 규칙에 따라 확인을 위해 해당 DNS 서버를 선택합니다',
			'SettingsScreen.dnsEnableFakeIpTips' => 'FakeIP를 활성화한 후 VPN 연결을 끊으면 앱을 다시 시작해야 할 수 있습니다. 이 기능은 [TUN 모드] 활성화가 필요합니다',
			'SettingsScreen.dnsTypeOutboundTips' => '[${_root.SettingsScreen.dnsTypeOutbound}]에 대한 도메인 이름 확인',
			'SettingsScreen.dnsTypeDirectTips' => '[${_root.meta.trafficDirect}]에 대한 도메인 이름 확인',
			'SettingsScreen.dnsTypeProxyTips' => '[${_root.meta.trafficProxy}]에 대한 도메인 이름 확인',
			'SettingsScreen.dnsTypeResolverTips' => '[${_root.SettingsScreen.dnsTypeResolver}]에 대한 도메인 이름 확인',
			'SettingsScreen.dnsAutoSetServer' => '자동 서버 설정',
			'SettingsScreen.dnsResetServer' => '서버 리셋',
			'SettingsScreen.inboundDomainResolve' => '수신 도메인 이름 확인',
			'SettingsScreen.privateDirect' => '개인 네트워크 직접 연결',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => '분류 규칙이 구성되지 않은 일부 도메인 이름은 IP 기반 분류 규칙과 일치시키기 전에 확인해야 합니다. 이 기능은 프록시 포트 [${p}]로의 수신 요청에 영향을 미칩니다',
			'SettingsScreen.useRomoteRes' => '원격 리소스 사용',
			'SettingsScreen.autoAppendRegion' => '기본 규칙 자동 추가',
			'SettingsScreen.autoSelect' => '자동 선택',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => '[Front/Chain] 프록시 서버 무시',
			'SettingsScreen.autoSelectServerInterval' => '지연 시간 확인 간격',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => '현재 서버 상태 확인 간격',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => '네트워크 변경 시 지연 시간 다시 확인',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => '수동 지연 시간 확인 후 현재 서버 업데이트',
			'SettingsScreen.autoSelectServerIntervalTips' => '간격이 짧을수록 서버 지연 시간 데이터가 더 적시에 업데이트되지만 더 많은 리소스를 차지하고 전력을 소모합니다',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => '확인에 실패하면 서버가 전환됩니다. 전환 시 사용 가능한 서버를 찾지 못하면 그룹에서 지연 시간을 다시 확인합니다',
			'SettingsScreen.autoSelectServerFavFirst' => '[즐겨찾기] 우선 사용',
			'SettingsScreen.autoSelectServerFavFirstTips' => '[즐겨찾기] 목록이 비어 있지 않으면 [즐겨찾기]의 서버를 사용합니다',
			'SettingsScreen.autoSelectServerFilter' => '유효하지 않은 서버 필터링',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => '지연 시간 확인에 실패한 서버는 필터링됩니다. 필터링 후 사용 가능한 서버가 없으면 대신 처음 [${p}]개의 서버가 사용됩니다',
			'SettingsScreen.autoSelectServerLimitedNum' => '최대 서버 수',
			'SettingsScreen.autoSelectServerLimitedNumTips' => '이 수를 초과하는 서버는 필터링됩니다',
			'SettingsScreen.numInvalid' => '유효하지 않은 숫자',
			'SettingsScreen.hideInvalidServer' => '유효하지 않은 서버 숨기기',
			'SettingsScreen.sortServer' => '서버 정렬',
			'SettingsScreen.sortServerTips' => '지연 시간이 낮은 순서대로 정렬',
			'SettingsScreen.selectServerHideRecommand' => '[추천] 숨기기',
			'SettingsScreen.selectServerHideRecent' => '[최근 사용] 숨기기',
			'SettingsScreen.selectServerHideFav' => '[즐겨찾기] 숨기기',
			'SettingsScreen.homeScreen' => '홈 화면',
			'SettingsScreen.theme' => '테마',
			'SettingsScreen.widgetsAlpha' => '위젯 투명도',
			'SettingsScreen.widgetsEmpty' => '사용 가능한 위젯 없음',
			'SettingsScreen.backgroundImage' => '배경 이미지',
			'SettingsScreen.myLink' => '바로가기 링크',
			'SettingsScreen.autoConnectAfterLaunch' => '실행 후 자동 연결',
			'SettingsScreen.autoConnectAtBoot' => '시스템 시작 시 자동 연결',
			'SettingsScreen.autoConnectAtBootTips' => '시스템 지원이 필요합니다. 일부 시스템에서는 [자동 실행] 활성화도 필요할 수 있습니다.',
			'SettingsScreen.hideAfterLaunch' => '시작 후 창 숨기기',
			'SettingsScreen.autoSetSystemProxy' => '연결 시 시스템 프록시 자동 설정',
			'SettingsScreen.bypassSystemProxy' => '시스템 프록시 우회가 허용된 도메인',
			'SettingsScreen.disconnectWhenQuit' => '앱 종료 시 연결 끊기',
			'SettingsScreen.autoAddToFirewall' => '방화벽 규칙 자동 추가',
			'SettingsScreen.excludeFromRecent' => '[최근 작업]에서 숨기기',
			'SettingsScreen.wakeLock' => '절전 모드 방지',
			'SettingsScreen.hideVpn' => 'VPN 아이콘 숨기기',
			'SettingsScreen.hideVpnTips' => 'IPv6를 활성화하면 이 기능이 실패합니다',
			'SettingsScreen.allowBypass' => '앱의 VPN 우회 허용',
			'SettingsScreen.importSuccess' => '가져오기 성공',
			'SettingsScreen.rewriteConfirm' => '이 파일은 기존 로컬 구성을 덮어씁니다. 계속하시겠습니까?',
			'SettingsScreen.mergePerapp' => '로컬 [${_root.PerAppAndroidScreen.title}] 목록 병합',
			'SettingsScreen.networkShare' => '네트워크 공유',
			'SettingsScreen.frontProxy' => 'Front/Chain 프록시',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => '데이터 -> Front/Chain 프록시 서버 [여러 서버: 위에서 아래로] -> 프록시 서버 [${p}] -> 대상 서버',
			'SettingsScreen.allowOtherHostsConnect' => '다른 기기의 연결 허용',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => '시스템 제한으로 인해 이 기능을 활성화하면 http를 사용하여 네트워크에 액세스하는 이 기기의 앱이 네트워크에 제대로 연결되지 않을 수 있습니다.',
			'SettingsScreen.tunAutoRoute' => '자동 경로',
			'SettingsScreen.tunAutoRedirect' => '자동 리디렉션',
			'SettingsScreen.tunStrictRoute' => '엄격한 경로',
			'SettingsScreen.tunStrictRouteTips' => '공유를 켠 후 다른 기기에서 이 기기에 액세스할 수 없는 경우 이 스위치를 꺼 보십시오',
			'SettingsScreen.loopbackAddress' => '루프백 주소',
			'SettingsScreen.enableCluster' => 'Socks/Http 프록시 클러스터 활성화',
			'SettingsScreen.clusterAllowOtherHostsConnect' => '다른 기기의 클러스터 연결 허용',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => '프록시 클러스터 인증',
			'SettingsScreen.tunMode' => 'TUN 모드',
			'SettingsScreen.tuni4Address' => 'IP 주소',
			'SettingsScreen.tunModeTips' => 'TUN 모드는 시스템의 모든 트래픽을 처리합니다 [이 모드에서는 시스템 프록시를 끈 상태로 둘 수 있습니다]',
			'SettingsScreen.tunModeRunAsAdmin' => 'TUN 모드는 시스템 관리자 권한이 필요합니다. 관리자 권한으로 앱을 다시 시작하십시오',
			'SettingsScreen.tunStack' => '스택',
			'SettingsScreen.tunHijackTips' => '종료 후 TUN의 DNS 요청은 해당 DNS 서버로 직접 전달됩니다',
			'SettingsScreen.launchAtStartup' => '시작 시 실행',
			'SettingsScreen.quitWhenSwitchSystemUser' => '시스템 사용자 전환 시 앱 종료',
			'SettingsScreen.handleScheme' => '시스템 스킴 호출',
			'SettingsScreen.portableMode' => '포터블 모드',
			'SettingsScreen.portableModeDisableTips' => '포터블 모드를 종료해야 하는 경우 [karing]을 종료하고 [karing.exe]와 동일한 디렉토리에 있는 [profiles] 폴더를 수동으로 삭제하십시오',
			'SettingsScreen.accessibility' => '접근성',
			'SettingsScreen.handleKaringScheme' => 'karing:// 호출 처리',
			'SettingsScreen.handleClashScheme' => 'clash:// 호출 처리',
			'SettingsScreen.handleSingboxScheme' => 'sing-box:// 호출 처리',
			'SettingsScreen.alwayOnVPN' => '상시 연결',
			'SettingsScreen.disconnectAfterSleep' => '시스템 절전 모드 후 연결 끊기',
			'SettingsScreen.removeSystemVPNConfig' => '시스템 VPN 구성 삭제',
			'SettingsScreen.timeConnectOrDisconnect' => '예약된 연결/연결 끊기',
			'SettingsScreen.timeConnectOrDisconnectTips' => '효과를 보려면 VPN이 연결되어 있어야 합니다. 켜져 있으면 [자동 절전]이 비활성화됩니다',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => '연결/연결 끊기 간격은 ${p}분 이상이어야 합니다',
			'SettingsScreen.disableFontScaler' => '글꼴 크기 조정 비활성화 (재시작 시 적용)',
			'SettingsScreen.autoOrientation' => '화면에 맞춰 회전',
			'SettingsScreen.restartTakesEffect' => '재시작 시 적용됩니다',
			'SettingsScreen.reconnectTakesEffect' => '재연결 시 적용됩니다',
			'SettingsScreen.resetSettings' => '설정 리셋',
			'SettingsScreen.cleanCache' => '캐시 삭제',
			'SettingsScreen.cleanCacheDone' => '삭제 완료',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => '${p} 버전으로 업데이트',
			'SettingsScreen.follow' => '팔로우하기',
			'SettingsScreen.contactUs' => '문의하기',
			'SettingsScreen.supportUs' => '후원하기',
			'SettingsScreen.rateInAppStore' => 'AppStore에서 평가하기',
			'SettingsScreen.rateInApp' => '평가하기',
			'UserAgreementScreen.privacyFirst' => '개인 정보 보호 우선',
			'UserAgreementScreen.agreeAndContinue' => '동의 및 계속',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => '새 버전 [${p}]이 준비되었습니다',
			'VersionUpdateScreen.update' => '재시작하여 업데이트',
			'VersionUpdateScreen.cancel' => '나중에',
			'CommonWidget.diableAlwayOnVPN' => '[항상 VPN 연결]이 켜져 있는 경우 끄고 다시 연결해 보십시오',
			'CommonWidget.resetPort' => '포트를 사용 가능한 다른 포트로 변경하거나 포트를 사용 중인 애플리케이션을 종료하십시오.',
			'main.tray.menuOpen' => '열기',
			'main.tray.menuExit' => '종료',
			'meta.enable' => '활성화',
			'meta.disable' => '비활성화',
			'meta.bydefault' => '기본값',
			'meta.filter' => '필터',
			'meta.filterMethod' => '필터 방법',
			'meta.include' => '포함',
			'meta.exclude' => '제외',
			'meta.all' => '모두',
			'meta.prefer' => '선호',
			'meta.only' => '전용',
			'meta.open' => '열기',
			'meta.close' => '닫기',
			'meta.quit' => '종료',
			'meta.add' => '추가',
			'meta.addSuccess' => '성공적으로 추가됨',
			'meta.addFailed' => ({required Object p}) => '추가 실패: ${p}',
			'meta.remove' => '삭제',
			'meta.removeConfirm' => '정말로 삭제하시겠습니까?',
			'meta.edit' => '편집',
			'meta.view' => '보기',
			'meta.more' => '더 보기',
			'meta.tips' => '정보',
			'meta.copy' => '복사',
			'meta.save' => '저장',
			'meta.ok' => '확인',
			'meta.cancel' => '취소',
			'meta.feedback' => '피드백',
			'meta.feedbackContent' => '피드백 내용',
			'meta.feedbackContentHit' => '필수, 최대 500자',
			'meta.feedbackContentCannotEmpty' => '피드백 내용은 비워둘 수 없습니다',
			'meta.faq' => '자주 묻는 질문',
			'meta.htmlTools' => 'HTML 도구 세트',
			'meta.download' => '다운로드',
			'meta.upload' => '업로드',
			'meta.downloadSpeed' => '다운로드 속도',
			'meta.uploadSpeed' => '업로드 속도',
			'meta.loading' => '로드 중...',
			'meta.convert' => '변환',
			'meta.check' => '확인',
			'meta.detect' => '감지',
			'meta.cache' => '캐시',
			'meta.days' => '일',
			'meta.hours' => '시간',
			'meta.minutes' => '분',
			'meta.seconds' => '초',
			'meta.milliseconds' => '밀리초',
			'meta.tolerance' => '허용 오차',
			'meta.dateTimePeriod' => '기간',
			'meta.protocol' => '프로토콜',
			'meta.search' => '검색',
			'meta.custom' => '사용자 정의',
			'meta.inbound' => '인바운드',
			'meta.outbound' => '아웃바운드',
			'meta.destination' => '대상',
			'meta.outletIpByCurrentSelected' => '출구 IP',
			'meta.outletIpByDirect' => 'IP: ${_root.outboundRuleMode.direct}',
			'meta.connect' => '연결',
			'meta.disconnect' => '연결 끊기',
			'meta.reconnect' => '재연결',
			'meta.connected' => '연결됨',
			'meta.disconnected' => '연결 끊김',
			'meta.connecting' => '연결 중',
			'meta.connectTimeout' => '연결 시간 초과',
			'meta.timeout' => '시간 초과',
			'meta.timeoutDuration' => '시간 초과 기간',
			'meta.runDuration' => '실행 기간',
			'meta.latency' => '지연 시간',
			'meta.latencyTest' => '지연 시간 확인',
			'meta.language' => '언어',
			'meta.next' => '다음',
			'meta.done' => '완료',
			'meta.apply' => '적용',
			'meta.refresh' => '새로고침',
			'meta.retry' => '다시 시도하시겠습니까?',
			'meta.update' => '업데이트',
			'meta.updateInterval' => '업데이트 간격',
			'meta.updateInterval5mTips' => '최소: 5분',
			'meta.updateFailed' => ({required Object p}) => '업데이트 실패: ${p}',
			'meta.samplingUnit' => '샘플링 시간 단위',
			'meta.queryResultCount' => '쿼리 결과 수',
			'meta.queryLimit' => ({required Object p}) => '최대 ${p}개의 데이터 표시',
			'meta.none' => '없음',
			'meta.start' => '시작',
			'meta.pause' => '일시 중지',
			'meta.reset' => '리셋',
			'meta.submit' => '제출',
			'meta.user' => '사용자',
			'meta.account' => '계정',
			'meta.password' => '비밀번호',
			'meta.required' => '필수',
			'meta.type' => '유형',
			'meta.path' => '경로',
			'meta.local' => '로컬',
			'meta.remote' => '원격',
			'meta.other' => '기타',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => '유효하지 않은 URL',
			'meta.urlCannotEmpty' => '링크는 비워둘 수 없습니다',
			'meta.urlTooLong' => 'URL이 너무 깁니다 (>8182)',
			'meta.copyUrl' => '링크 복사',
			'meta.openUrl' => '링크 열기',
			'meta.shareUrl' => '링크 공유',
			'meta.speedTestUrl' => '속도 테스트 URL',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => '고정 IP',
			'meta.staticIPTips' => '[TUN HijackDNS] 또는 [${_root.SettingsScreen.inboundDomainResolve}]를 활성화해야 합니다.',
			'meta.isp' => 'VPN 제공업체',
			'meta.domainSuffix' => '도메인 접미사',
			'meta.domain' => '도메인',
			'meta.domainKeyword' => '도메인 키워드',
			'meta.domainRegex' => '도메인 정규식',
			'meta.ip' => 'IP 주소',
			'meta.port' => '포트',
			'meta.portRange' => '포트 범위',
			'meta.appPackage' => '앱 패키지 ID',
			'meta.processName' => '프로세스 이름',
			'meta.processPath' => '프로세스 경로',
			'meta.processDir' => '프로세스 디렉토리',
			'meta.systemProxy' => '시스템 프록시',
			'meta.percentage' => '백분율',
			'meta.statistics' => '통계',
			'meta.statisticsAndAnalysis' => '통계 및 분석',
			'meta.statisticsDataDesensitize' => '데이터 비식별화',
			'meta.statisticsDataDesensitizeTips' => '프로세스 ID, 패키지 ID, 대상 도메인 이름, 대상 IP 등은 비식별화 후 *로 대체되어 저장됩니다',
			'meta.records' => '기록',
			'meta.requestRecords' => '요청 기록',
			'meta.netInterfaces' => '네트워크 인터페이스',
			'meta.netSpeed' => '속도',
			'meta.memoryTrendChart' => '메모리 추세 차트',
			'meta.goroutinesTrendChart' => 'GoRoutines 추세 차트',
			'meta.trafficTrendChart' => '트래픽 추세 차트',
			'meta.trafficDistributionChart' => '트래픽 분포 차트',
			'meta.connectionChart' => '연결 추세 차트',
			'meta.memoryChart' => '메모리 추세 차트',
			'meta.trafficStatistics' => '트래픽 통계',
			'meta.traffic' => '트래픽',
			'meta.trafficTotal' => '총 트래픽',
			'meta.trafficProxy' => '프록시 트래픽',
			'meta.trafficDirect' => '직접 트래픽',
			'meta.website' => '웹사이트',
			'meta.memory' => '메모리',
			'meta.outboundMode' => '아웃바운드 모드',
			'meta.rule' => '규칙',
			'meta.global' => '글로벌',
			'meta.qrcode' => 'QR 코드',
			'meta.qrcodeTooLong' => '텍스트가 너무 길어서 표시할 수 없습니다',
			'meta.qrcodeShare' => 'QR 코드 공유',
			'meta.textToQrcode' => '텍스트를 QR 코드로 변환',
			'meta.qrcodeScan' => 'QR 코드 스캔',
			'meta.qrcodeScanResult' => '스캔 결과',
			'meta.qrcodeScanFromImage' => '이미지에서 스캔',
			'meta.qrcodeScanResultFailed' => '이미지 분석 실패. 스크린샷이 유효한 QR 코드인지 확인하십시오',
			'meta.qrcodeScanResultEmpty' => '스캔 결과가 비어 있습니다',
			'meta.screenshot' => '스크린샷',
			'meta.backupAndSync' => '백업 및 동기화',
			'meta.autoBackup' => '자동 백업',
			'meta.noProfileGotAutoBackup' => '[${_root.meta.myProfiles}]과 같은 데이터가 손실된 경우 [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] 또는 다른 백업 소스(iCloud, Webdav 등)에서 복원할 수 있습니다',
			'meta.autoBackupAddProfile' => '프로필 추가 후',
			'meta.autoBackupRemoveProfile' => '프로필 삭제 후',
			'meta.profile' => '프로필',
			'meta.currentProfile' => '현재 프로필',
			'meta.importAndExport' => '가져오기 및 내보내기',
			'meta.import' => '가져오기',
			'meta.importFromUrl' => 'URL에서 가져오기',
			'meta.export' => '내보내기',
			'meta.send' => '보내기',
			'meta.receive' => '받기',
			'meta.sendConfirm' => '보내기를 확인하시겠습니까?',
			'meta.termOfUse' => '이용 약관',
			'meta.privacyPolicy' => '개인정보 처리방침',
			'meta.about' => '정보',
			'meta.name' => '이름',
			'meta.version' => '버전',
			'meta.notice' => '공지사항',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => '동작: ${p}\n사유: ${p1}',
			'meta.sort' => '순서 재정렬',
			'meta.novice' => '초보자 모드',
			'meta.willCompleteAfterRebootInstall' => '시스템 확장 프로그램 설치를 완료하려면 장치를 재시작하십시오',
			'meta.willCompleteAfterRebootUninstall' => '시스템 확장 프로그램 삭제를 완료하려면 장치를 재시작하십시오',
			'meta.requestNeedsUserApproval' => '1. [시스템 설정]-[개인정보 보호 및 보안]에서 Karing이 시스템 확장 프로그램을 설치하도록 [허용]하십시오\n2. [시스템 설정]-[일반]-[로그인 항목 및 확장 프로그램-네트워크 확장 프로그램]에서 [karingServiceSE]를 켭니다\n완료 후 다시 연결하십시오',
			'meta.FullDiskAccessPermissionRequired' => '[시스템 설정]-[개인정보 보호 및 보안]-[전체 디스크 액세스 권한]에서 [karingServiceSE] 권한을 활성화하고 다시 연결하십시오',
			'meta.tvMode' => 'TV 모드',
			'meta.recommended' => '추천',
			'meta.innerError' => ({required Object p}) => '내부 오류: ${p}',
			'meta.logicOperation' => '논리 연산',
			'meta.share' => '공유',
			'meta.candidateWord' => '후보 단어',
			'meta.keywordOrRegx' => '키워드/정규식',
			'meta.importFromClipboard' => '클립보드에서 가져오기',
			'meta.exportToClipboard' => '클립보드로 내보내기',
			'meta.server' => '서버',
			'meta.ads' => '광고',
			'meta.adsRemove' => '광고 제거',
			'meta.donate' => '후원',
			'meta.diversion' => '라우팅',
			'meta.diversionRules' => '라우팅 규칙',
			'meta.diversionCustomGroup' => '사용자 정의 분류 그룹',
			'meta.urlTestCustomGroup' => '사용자 정의 자동 선택',
			'meta.setting' => '설정',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN 동기화',
			'meta.lanSyncNotQuitTips' => '동기화가 완료될 때까지 이 화면을 닫지 마십시오',
			'meta.deviceNoSpace' => '디스크 공간 부족',
			'meta.hideSystemApp' => '시스템 앱 숨기기',
			'meta.hideAppIcon' => '앱 아이콘 숨기기',
			'meta.hideDockIcon' => 'Dock 아이콘 숨기기',
			'meta.remark' => '메모',
			'meta.remarkExist' => '메모가 이미 존재합니다. 다른 이름을 사용하십시오',
			'meta.remarkCannotEmpty' => '메모는 비워둘 수 없습니다',
			'meta.remarkTooLong' => '메모는 최대 32자까지 가능합니다',
			'meta.openDir' => '파일 디렉토리 열기',
			'meta.fileChoose' => '파일 선택',
			'meta.filePathCannotEmpty' => '파일 경로는 비워둘 수 없습니다',
			'meta.fileNotExist' => ({required Object p}) => '파일이 존재하지 않습니다: ${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => '유효하지 않은 파일 유형: ${p}',
			'meta.uwpExemption' => 'UWP 네트워크 격리 예외',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => '프로필 가져오기',
			'meta.addProfile' => '프로필 추가',
			'meta.myProfiles' => '내 프로필',
			'meta.profileEdit' => '프로필 편집',
			'meta.profileEditUrlExist' => 'URL이 이미 존재합니다. 다른 URL을 사용하십시오',
			'meta.profileEditReloadAfterProfileUpdate' => '프로필 업데이트 후 다시 로드',
			'meta.profileEditTestLatencyAfterProfileUpdate' => '프로필 자동 업데이트 후 지연 시간 테스트 시작',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN이 연결되어 있어야 하며 [프로필 업데이트 후 다시 로드]가 켜져 있어야 합니다',
			'meta.profileEditTestLatencyAutoRemove' => '지연 시간 테스트 실패 서버 자동 제거',
			'meta.profileEditTestLatencyAutoRemoveTips' => '최대 3회 시도',
			'meta.profileImport' => '프로필 파일 가져오기',
			'meta.profileAddUrlOrContent' => '프로필 링크 추가',
			'meta.profileExists' => '프로필이 이미 존재합니다. 중복해서 추가하지 마십시오',
			'meta.profileUrlOrContent' => '프로필 링크/내용',
			'meta.profileUrlOrContentHit' => '프로필 링크/내용 [필수] (Clash, V2ray(일괄 지원), Stash, Karing, Sing-box, Shadowsocks, Sub 프로필 링크 지원)',
			'meta.profileUrlOrContentCannotEmpty' => '프로필 링크는 비워둘 수 없습니다',
			'meta.profileAddFailedFormatException' => ({required Object p}) => '형식이 잘못되었습니다. 수정 후 다시 추가하십시오: ${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => '추가 실패: ${p}. [UserAgent]를 수정하고 다시 시도하거나, 장치 내장 브라우저를 사용하여 구성 링크를 열고 브라우저에서 다운로드한 구성 파일을 이 앱으로 가져오십시오',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => '추가 실패: ${p}. 프록시를 켜거나 현재 프록시 노드를 수정하고 다시 시도하십시오',
			'meta.profileAddParseFailed' => '프로필 분석 실패',
			'meta.profileAddNoServerAvaliable' => '사용 가능한 서버가 없습니다. 구성 링크 또는 파일이 유효한지 확인하십시오. 구성이 GitHub인 경우 페이지의 [Raw] 버튼에서 링크를 가져오십시오',
			'meta.profileAddWrapSuccess' => '구성이 성공적으로 생성되었습니다. [${_root.meta.myProfiles}]로 이동하여 확인하십시오',
			'diversionRulesKeep' => '[${_root.meta.isp}]의 ${_root.meta.diversionRules} 유지',
			'diversionCustomGroupPreset' => '사전 설정 [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => '참고: 활성화된 항목은 [${_root.meta.diversionCustomGroup}] 및 [${_root.meta.diversionRules}]에 추가/덮어쓰기됩니다',
			'diversionCustomGroupAddTips' => '참고: 추가 후 순서를 수동으로 조정해야 할 수 있습니다. 그렇지 않으면 새로 추가된 분류가 적용되지 않을 수 있습니다',
			'rulesetEnableTips' => '팁: 옵션을 켠 후 [${_root.meta.diversionRules}]로 이동하여 관련 규칙을 설정하십시오. 그렇지 않으면 적용되지 않습니다',
			'ispUserAgentTips' => '[${_root.meta.isp}]는 [HTTP] 요청의 [UserAgent]에 따라 다양한 구독 유형의 데이터를 전송합니다',
			'ispDiversionTips' => '[${_root.meta.isp}]는 트래픽 분류 규칙을 제공합니다. [V2Ray] 유형 구독은 트래픽 분류 규칙을 지원하지 않습니다',
			'isp.bind' => '[${_root.meta.isp}]에 바인딩 ',
			'isp.unbind' => ({required Object p}) => '바인딩 해제 [${p}]',
			'isp.faq' => ({required Object p}) => '자주 묻는 질문 [${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram [${p}]',
			'isp.follow' => ({required Object p}) => '팔로우 [${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}]가 유효하지 않거나 만료되었습니다',
			'permission.camera' => '카메라',
			'permission.screen' => '화면 녹화',
			'permission.appQuery' => '앱 목록 가져오기',
			'permission.request' => ({required Object p}) => '[${p}] 권한 켜기',
			'permission.requestNeed' => ({required Object p}) => '[${p}] 권한을 켜주십시오',
			'tls.insecure' => '인증서 확인 건너뛰기',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'TLS 조각화 활성화',
			'tls.fragmentSize' => 'TLS 조각 크기',
			'tls.fragmentSleep' => 'TLS 조각 대기 시간',
			'tls.mixedCaseSNIEnable' => 'TLS 혼합 케이스 SNI 활성화',
			'tls.paddingEnable' => 'TLS 패딩 활성화',
			'tls.paddingSize' => 'TLS 패딩 크기',
			_ => null,
		} ?? switch (path) {
			'outboundRuleMode.currentSelected' => '현재 선택됨',
			'outboundRuleMode.urltest' => '자동 선택',
			'outboundRuleMode.direct' => '직접 연결',
			'outboundRuleMode.block' => '차단',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => '프로필 업데이트',
			'theme.light' => '라이트',
			'theme.dark' => '다크',
			'theme.auto' => '자동',
			'downloadProxyStrategy' => '다운로드 채널',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: 프록시 서버를 통해 DNS 서버에 연결하여 도메인 이름 확인\n[${_root.dnsProxyResolveMode.direct}]: DNS 서버에 직접 연결하여 도메인 이름 확인\n[${_root.dnsProxyResolveMode.fakeip}]: 프록시 서버가 대신 도메인 이름을 확인합니다. VPN 연결을 끊으면 앱을 다시 시작해야 할 수 있습니다. [TUN] 수신 트래픽에만 유효합니다',
			'routeFinal' => 'final',
			'protocolSniff' => '프로토콜 스니핑',
			'sendOrReceiveNotMatch' => ({required Object p}) => '[${p}]를 사용하십시오',
			'turnOffPrivateDirect' => '먼저 [개인 네트워크 직접 연결]을 활성화하십시오',
			'targetConnectFailed' => ({required Object p}) => '[${p}] 연결 실패. 장치가 동일한 LAN에 있는지 확인하십시오',
			'appleTVSync' => '현재 코어 구성을 Apple TV - Karing으로 동기화',
			'appleTVSyncDone' => '동기화가 완료되었습니다. Apple TV - Karing으로 이동하여 연결 시작/재시작하십시오',
			'appleTVRemoveCoreConfig' => 'Apple TV - Karing 코어 구성 삭제',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - Karing 코어 구성 삭제됨. VPN 서비스 연결 끊김',
			'appleTVUrlInvalid' => '유효하지 않은 URL입니다. Apple TV - Karing을 열고 Karing에 표시된 QR 코드를 스캔하십시오',
			'appleTV404' => ({required Object p}) => 'AppleTV: Karing[${p}]에 이 기능이 없습니다. 업그레이드 후 다시 시도하십시오',
			'appleCoreVersionNotMatch' => ({required Object p}) => '코어 주 버전이 일치하지 않습니다. [${p}]로 업그레이드 후 다시 시도하십시오',
			'remoteProfileEditConfirm' => '프로필 업데이트 후 노드 변경 사항이 복원됩니다. 계속하시겠습니까?',
			'mustBeValidHttpsURL' => '유효한 https URL이어야 합니다',
			'fileNotExistReinstall' => ({required Object p}) => '파일 [${p}]이 누락되었습니다. 다시 설치하십시오',
			'noNetworkConnect' => '인터넷 연결 없음',
			'sudoPassword' => 'sudo 비밀번호 (TUN 모드에 필요)',
			'turnOffNetworkBeforeInstall' => '업데이트를 설치하기 전에 [비행기 모드]로 전환하는 것이 좋습니다',
			'latencyTestResolveIP' => '수동 확인 시 출력 IP 확인',
			'latencyTestConcurrency' => '병렬성',
			'edgeRuntimeNotInstalled' => '현재 장치에 Edge WebView2 런타임이 설치되어 있지 않아 페이지를 표시할 수 없습니다. Edge WebView2 런타임(x64)을 다운로드하여 설치하고 앱을 다시 시작한 후 다시 시도하십시오.',
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
