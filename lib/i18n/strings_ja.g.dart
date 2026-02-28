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
class TranslationsJa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenJa AboutScreen = _TranslationsAboutScreenJa._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenJa BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenJa._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenJa DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenJa._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenJa DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenJa._(_root);
	@override late final _TranslationsDiversionRulesScreenJa DiversionRulesScreen = _TranslationsDiversionRulesScreenJa._(_root);
	@override late final _TranslationsDnsSettingsScreenJa DnsSettingsScreen = _TranslationsDnsSettingsScreenJa._(_root);
	@override late final _TranslationsFileContentViewerScreenJa FileContentViewerScreen = _TranslationsFileContentViewerScreenJa._(_root);
	@override late final _TranslationsHomeScreenJa HomeScreen = _TranslationsHomeScreenJa._(_root);
	@override late final _TranslationsLaunchFailedScreenJa LaunchFailedScreen = _TranslationsLaunchFailedScreenJa._(_root);
	@override late final _TranslationsMyProfilesMergeScreenJa MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenJa._(_root);
	@override late final _TranslationsNetCheckScreenJa NetCheckScreen = _TranslationsNetCheckScreenJa._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenJa NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenJa._(_root);
	@override late final _TranslationsNetConnectionsScreenJa NetConnectionsScreen = _TranslationsNetConnectionsScreenJa._(_root);
	@override late final _TranslationsPerAppAndroidScreenJa PerAppAndroidScreen = _TranslationsPerAppAndroidScreenJa._(_root);
	@override late final _TranslationsRegionSettingsScreenJa RegionSettingsScreen = _TranslationsRegionSettingsScreenJa._(_root);
	@override late final _TranslationsServerSelectScreenJa ServerSelectScreen = _TranslationsServerSelectScreenJa._(_root);
	@override late final _TranslationsSettingsScreenJa SettingsScreen = _TranslationsSettingsScreenJa._(_root);
	@override late final _TranslationsUserAgreementScreenJa UserAgreementScreen = _TranslationsUserAgreementScreenJa._(_root);
	@override late final _TranslationsVersionUpdateScreenJa VersionUpdateScreen = _TranslationsVersionUpdateScreenJa._(_root);
	@override late final _TranslationsCommonWidgetJa CommonWidget = _TranslationsCommonWidgetJa._(_root);
	@override late final _TranslationsMainJa main = _TranslationsMainJa._(_root);
	@override late final _TranslationsMetaJa meta = _TranslationsMetaJa._(_root);
	@override String get diversionRulesKeep => '[${_root.meta.isp}] の ${_root.meta.diversionRules} を保持する';
	@override String get diversionCustomGroupPreset => 'プリセット [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => '注意: 有効にされた項目は [${_root.meta.diversionCustomGroup}] および [${_root.meta.diversionRules}] に追加/上書きされます';
	@override String get diversionCustomGroupAddTips => '注意: 追加後、手動で順序を調整する必要がある場合があります。そうしないと、新しく追加された分流が有効にならない場合があります';
	@override String get rulesetEnableTips => 'ヒント: オプションをオンにした後、[${_root.meta.diversionRules}] に移動して関連するルールを設定してください。設定しないと有効になりません';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] は、[HTTP] リクエストの [UserAgent] に基づいて、さまざまなサブスクリプションタイプのデータを送信します';
	@override String get ispDiversionTips => '[${_root.meta.isp}] はトラフィック分流ルールを提供します。[V2Ray] タイプのサブスクリプションはトラフィック分流ルールをサポートしていません';
	@override late final _TranslationsIspJa isp = _TranslationsIspJa._(_root);
	@override late final _TranslationsPermissionJa permission = _TranslationsPermissionJa._(_root);
	@override late final _TranslationsTlsJa tls = _TranslationsTlsJa._(_root);
	@override late final _TranslationsOutboundRuleModeJa outboundRuleMode = _TranslationsOutboundRuleModeJa._(_root);
	@override late final _TranslationsDnsProxyResolveModeJa dnsProxyResolveMode = _TranslationsDnsProxyResolveModeJa._(_root);
	@override late final _TranslationsProxyStrategyJa proxyStrategy = _TranslationsProxyStrategyJa._(_root);
	@override late final _TranslationsReloadReasonJa reloadReason = _TranslationsReloadReasonJa._(_root);
	@override late final _TranslationsThemeJa theme = _TranslationsThemeJa._(_root);
	@override String get downloadProxyStrategy => 'ダウンロードチャネル';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: プロキシサーバー経由で DNS サーバーに接続し、ドメイン名を解決します\n[${_root.dnsProxyResolveMode.direct}]: DNS サーバーに直接接続し、ドメイン名を解決します\n[${_root.dnsProxyResolveMode.fakeip}]: プロキシサーバーがあなたに代わってドメイン名を解決します。VPN 接続を切断すると、アプリの再起動が必要になる場合があります。[TUN] の着信トラフィックにのみ有効です';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'プロトコル嗅ぎ取り';
	@override String sendOrReceiveNotMatch({required Object p}) => '[${p}] を使用してください';
	@override String get turnOffPrivateDirect => '最初に [プライベートネットワークの直接接続] を有効にしてください';
	@override String targetConnectFailed({required Object p}) => '[${p}] への接続に失敗しました。デバイスが同じ LAN 内にあることを確認してください';
	@override String get appleTVSync => '現在のコア構成を Apple TV - Karing に同期する';
	@override String get appleTVSyncDone => '同期が完了しました。Apple TV - Karing に移動して接続を開始/再起動してください';
	@override String get appleTVRemoveCoreConfig => 'Apple TV - Karing コア構成を削除する';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing コア構成が削除されました。VPN サービスが切断されました';
	@override String get appleTVUrlInvalid => 'URL が無効です。Apple TV - Karing を開き、Karing に表示されている QR コードをスキャンしてください';
	@override String appleTV404({required Object p}) => 'AppleTV: Karing[${p}] にはこの機能がありません。アップグレードして再試行してください';
	@override String appleCoreVersionNotMatch({required Object p}) => 'コアのメジャーバージョンが一致しません。[${p}] にアップグレードして再試行してください';
	@override String get remoteProfileEditConfirm => 'プロファイル更新後、ノードの変更は復元されます。続行しますか？';
	@override String get mustBeValidHttpsURL => '有効な https URL である必要があります';
	@override String fileNotExistReinstall({required Object p}) => 'ファイル [${p}] が見つかりません。再インストールしてください';
	@override String get noNetworkConnect => 'インターネット接続がありません';
	@override String get sudoPassword => 'sudo パスワード (TUN モードで必要)';
	@override String get turnOffNetworkBeforeInstall => '更新プログラムをインストールする前に [機内モード] に切り替えることをお勧めします';
	@override String get latencyTestResolveIP => '手動チェック時に、出力 IP を解決する';
	@override String get latencyTestConcurrency => '並行性';
	@override String get edgeRuntimeNotInstalled => '現在のデバイスに Edge WebView2 ランタイムがインストールされていないため、ページを表示できません。Edge WebView2 ランタイム (x64) をダウンロードしてインストールし、アプリを再起動してからもう一度お試しください。';
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
class _TranslationsAboutScreenJa implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'インストールリファラー';
	@override String get installTime => 'インストール時間';
	@override String get versionChannel => '自動更新チャネル';
	@override String get updateWhenConnected => '接続後にアップデートを確認する';
	@override String get autoDownloadPkg => '更新パッケージを自動的にダウンロードする';
	@override String get disableAppImproveData => 'アプリ改善データ';
	@override String get disableUAReportTip => '[${_root.AboutScreen.disableAppImproveData}] を有効にすると、製品の安定性と使いやすさの向上に役立ちます。個人情報は収集しません。無効にすると、アプリによるデータの収集が停止されます。';
	@override String get devOptions => '開発者向けオプション';
	@override String get enableDebugLog => 'デバッグログを有効にする';
	@override String get viewFilsContent => 'ファイルを表示';
	@override String get enablePprof => 'pprof を有効にする';
	@override String get pprofPanel => 'pprof パネル';
	@override String get allowRemoteAccessPprof => '${_root.AboutScreen.pprofPanel} へのリモートアクセスを許可する';
	@override String get allowRemoteAccessHtmlBoard => '${_root.SettingsScreen.htmlBoard} へのリモートアクセスを許可する';
	@override String get useOriginalSBProfile => 'オリジナルの sing-box プロファイルを使用する';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenJa implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'サーバー URL';
	@override String get webdavRequired => '空にすることはできません';
	@override String get webdavLoginFailed => 'ログインに失敗しました:';
	@override String get webdavListFailed => 'ファイルリストの取得に失敗しました:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenJa implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => '無効な [ドメイン]: ${p}';
	@override String invalidIpCidr({required Object p}) => '無効な [IP Cidr]: ${p}';
	@override String invalid({required Object p0, required Object p}) => '無効な [${p0}]: ${p}';
	@override String invalidRuleSet({required Object p}) => '無効な [ルールセット]: ${p}。URL は有効な https URL であり、拡張子が .srs/.json のバイナリファイルである必要があります';
	@override String invalidRuleSetBuildIn({required Object p}) => '無効な [ルールセット (内蔵)]: ${p}。形式は geosite:xxx、geoip:xxx、または acl:xxx である必要があり、xxx は有効なルール名である必要があります';
	@override String invalidPackageId({required Object p}) => '無効な [${_root.meta.appPackage}]: ${p}';
	@override String get setDiversionRule => 'ヒント: 保存後、[${_root.meta.diversionRules}] に移動して関連するルールを設定してください。設定しないと有効になりません。';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenJa implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '分流ルールの検出';
	@override String get rule => 'ルール:';
	@override String get outbound => 'プロキシサーバー:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenJa implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'ヒント: ルールを上から下に一致させてみてください。一致するルールがない場合は [final] を使用します';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenJa implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP を空にすることはできません';
	@override String get urlCanNotEmpty => 'URL を空にすることはできません';
	@override String error({required Object p}) => 'サポートされていないタイプ: ${p}';
	@override String get dnsDesc => '遅延データの最初の列は直接接続のクエリ遅延です。\n2番目の列: [[プロキシトラフィック] プロキシサーバー経由で DNS を解決する] をオンにする: 遅延データは現在のプロキシサーバー経由で転送されたクエリ遅延です。オフの場合: 遅延データは直接接続のクエリ遅延です';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenJa implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ファイル内容ビューアー';
	@override String get clearFileContent => 'ファイルの内容を消去してもよろしいですか？';
	@override String get clearFileContentTips => 'プロファイルファイルの内容を消去してもよろしいですか？プロファイルファイルを消去すると、データが失われたり、アプリが正常に動作しなくなったりする可能性があります。慎重に行ってください。';
}

// Path: HomeScreen
class _TranslationsHomeScreenJa implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'サーバーを選択してください';
	@override String get invalidServer => 'は無効です。再選択してください';
	@override String get disabledServer => 'は無効になっています。再選択してください';
	@override String get expiredServer => '利用可能なサーバーがありません。プロファイルが期限切れか無効になっている可能性があります';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}';
	@override String get myLinkEmpty => '使用する前に [ショートカットリンク] を設定してください';
	@override String tooMuchServers({required Object p, required Object p1}) => 'プロキシサーバーが多すぎます [${p}>${p1}]。システムのメモリ制限により接続が失敗する可能性があります';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'プロキシサーバーが多すぎます [${p}>${p1}]。接続が遅くなったり、アクセスできなくなったりする可能性があります';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenJa implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'アプリを起動できませんでした [無効なプロセス名]。アプリを別のディレクトリに再インストールしてください';
	@override String get invalidProfile => 'アプリを起動できませんでした [プロファイルへのアクセスに失敗しました]。アプリを再インストールしてください';
	@override String get invalidVersion => 'アプリを起動できませんでした [無効なバージョン]。アプリを再インストールしてください';
	@override String get systemVersionLow => 'アプリを起動できませんでした [システムバージョンが低すぎます]';
	@override String get invalidInstallPath => 'インストールパスが無効です。有効なパスに再インストールしてください';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenJa implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'プロファイルの結合';
	@override String get profilesMergeTarget => 'ターゲットプロファイル';
	@override String get profilesMergeSource => 'ソースプロファイル';
	@override String get profilesMergeTips => 'ヒント: ソースプロファイルの分流設定は破棄されます';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenJa implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ネットワークチェック';
	@override String get warn => '注意: ネットワーク環境や分流ルールの影響により、テスト結果は実際の環境と完全に一致するわけではありません。';
	@override String get invalidDomain => '無効なドメイン名';
	@override String get connectivity => 'ネットワーク接続性';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'IPv4 接続テスト [${p}] はすべて失敗しました';
	@override String get connectivityTestIpv4Ok => 'IPv4 接続成功';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'IPv6 接続テスト [${p}] はすべて失敗しました。ネットワークが IPv6 をサポートしていない可能性があります';
	@override String get connectivityTestIpv6Ok => 'IPv6 接続成功';
	@override String get connectivityTestOk => 'ネットワークはインターネットに接続されています';
	@override String get connectivityTestFailed => 'ネットワークはまだインターネットに接続されていません';
	@override String get remoteRulesetsDownloadOk => 'すべて正常にダウンロードされました';
	@override String get remoteRulesetsDownloadNotOk => 'ダウンロード中またはダウンロード失敗';
	@override String get outbound => 'プロキシサーバー';
	@override String outboundOk({required Object p}) => '[${p}] への接続成功';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] への接続に失敗しました\nエラー: [${p2}]';
	@override String get dnsServer => 'DNS サーバー';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] の DNS クエリ成功\nDNS ルール: [${p2}]\nレイテンシ: [${p3} ms]\nアドレス: [${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}] の DNS クエリ成功\nDNS ルール: [${p2}]\nエラー: [${p3}]';
	@override String get host => 'HTTP 接続';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\n分流ルール: [${p2}]\nプロキシサーバー: [${p3}]';
	@override String get hostConnectionOk => '接続成功';
	@override String hostConnectionFailed({required Object p}) => '接続失敗: [${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenJa implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'ドメイン/IP';
	@override String get app => 'アプリ';
	@override String get rule => 'ルール';
	@override String get chain => '送信';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenJa implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'CSV 形式でコピーしました';
	@override String get selectType => '分流タイプを選択';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenJa implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'アプリごとのプロキシ';
	@override String get whiteListMode => 'ホワイトリストモード';
	@override String get whiteListModeTip => 'オンの場合: チェックされたアプリのみがプロキシを経由します。オフの場合: チェックされていないアプリのみがプロキシを経由します';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenJa implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '国または地域';
	@override String get Regions => 'ヒント: 現在の国または地域を正しく設定してください。正しく設定しないと、ネットワーク分流の問題が発生する可能性があります';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenJa implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'サーバーを選択';
	@override String get autoSelectServer => '最もレイテンシの低いサーバーを自動的に選択する';
	@override String get recentUse => '最近使用したサーバー';
	@override String get myFav => 'お気に入り';
	@override String selectLocal({required Object p}) => '選択されたサーバーはローカルアドレスであり、正常に動作しない可能性があります: ${p}';
	@override String get selectRequireEnableIPv6 => '選択されたサーバーは IPv6 アドレスであり、[IPv6 を有効にする] が必要です';
	@override String get selectDisabled => 'このサーバーは無効になっています';
	@override String get error404 => 'レイテンシ検出でエラーが発生しました。同じ内容の構成が存在するかどうかを確認してください';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenJa implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'トラフィックを取得';
	@override String get tutorial => 'チュートリアル';
	@override String get commonlyUsedRulesets => 'よく使われるルールセット';
	@override String get htmlBoard => 'オンラインパネル';
	@override String get dnsLeakDetection => 'DNS 漏洩検出';
	@override String get proxyLeakDetection => 'プロキシ漏洩検出';
	@override String get speedTest => 'スピードテスト';
	@override String get rulesetDirectDownlad => 'ルールセットの直接ダウンロード';
	@override String get hideUnusedDiversionGroup => '未使用の分流グループを非表示にする';
	@override String get disableISPDiversionGroup => '[${_root.meta.isp}] の ${_root.meta.diversionRules} を無効にする';
	@override String get portSettingRule => 'ルールベース';
	@override String get portSettingDirectAll => 'すべて直接接続';
	@override String get portSettingProxyAll => 'すべてプロキシ';
	@override String get portSettingControl => '制御と同期';
	@override String get portSettingCluster => 'クラスターサービス';
	@override String get modifyPort => 'ポートを変更';
	@override String get modifyPortOccupied => 'ポートが使用されています。別のポートを使用してください';
	@override String get ipStrategyTips => '有効にする前に、ネットワークが IPv6 をサポートしていることを確認してください。サポートされていない場合、一部のトラフィックに正常にアクセスできなくなります。';
	@override String get tunAppendHttpProxy => 'VPN に HTTP プロキシを追加する';
	@override String get tunAppendHttpProxyTips => '一部のアプリは仮想 NIC デバイスをバイパスして HTTP プロキシに直接接続します';
	@override String get tunAllowBypassHttpProxyDomain => 'HTTP プロキシのバイパスを許可するドメイン';
	@override String get dnsEnableRule => 'DNS 分流ルールを有効にする';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] 解決チャネル';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] ECS を有効にする';
	@override String get dnsTestDomain => 'テストドメイン';
	@override String get dnsTestDomainInvalid => '無効なドメイン';
	@override String get dnsTypeOutbound => 'プロキシサーバー';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS サーバー';
	@override String get dnsEnableRuleTips => '有効にすると、ドメイン名は分流ルールに従って解決のために対応する DNS サーバーを選択します';
	@override String get dnsEnableFakeIpTips => 'FakeIP を有効にした後、VPN 接続を切断すると、アプリの再起動が必要になる場合があります。この機能には [TUN モード] の有効化が必要です';
	@override String get dnsTypeOutboundTips => '[${_root.SettingsScreen.dnsTypeOutbound}] のドメイン名解決';
	@override String get dnsTypeDirectTips => '[${_root.meta.trafficDirect}] のドメイン名解決';
	@override String get dnsTypeProxyTips => '[${_root.meta.trafficProxy}] のドメイン名解決';
	@override String get dnsTypeResolverTips => '[${_root.SettingsScreen.dnsTypeResolver}] のドメイン名解決';
	@override String get dnsAutoSetServer => 'サーバーを自動設定';
	@override String get dnsResetServer => 'サーバーをリセット';
	@override String get dnsEnableStaticIPForResolver => '静的IP解決を優先する';
	@override String get dnsEnableStaticIPForResolverTips => '解決中にDNSサーバー自体が汚染されるのを効果的に防ぐ';
	@override String get inboundDomainResolve => '着信ドメイン名を解決する';
	@override String get privateDirect => 'プライベートネットワークの直接接続';
	@override String inboundDomainResolveTips({required Object p}) => '分流ルールが設定されていない一部のドメイン名は、IP ベースの分流ルールに一致させる前に解決する必要があります。この機能はプロキシポート [${p}] への着信リクエストに影響します';
	@override String get useRomoteRes => 'リモートリソースを使用する';
	@override String get autoAppendRegion => '基本ルールを自動的に追加する';
	@override String get autoSelect => '自動選択';
	@override String get autoSelectServerIgnorePerProxyServer => '[Front/Chain] プロキシサーバーを無視する';
	@override String get autoSelectServerInterval => 'レイテンシチェックの間隔';
	@override String get autoSelectSelectedHealthCheckInterval => '現在のサーバーのヘルスチェック間隔';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'ネットワーク変更時にレイテンシを再チェックする';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => '手動レイテンシチェック後に現在のサーバーを更新する';
	@override String get autoSelectServerIntervalTips => '間隔が短いほど、サーバーのレイテンシデータはタイムリーに更新されますが、より多くのリソースを占有し、電力を消費します';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'チェックが失敗するとサーバーが切り替わります。切り替え時に利用可能なサーバーが見つからない場合、グループはレイテンシを再チェックします';
	@override String get autoSelectServerFavFirst => '[お気に入り] を優先的に使用する';
	@override String get autoSelectServerFavFirstTips => '[お気に入り] リストが空でない場合は、[お気に入り] 内のサーバーを使用します';
	@override String get autoSelectServerFilter => '無効なサーバーをフィルタリングする';
	@override String autoSelectServerFilterTips({required Object p}) => 'レイテンシチェックに失敗したサーバーはフィルタリングされます。フィルタリング後に利用可能なサーバーがない場合は、代わりに最初の [${p}] 台のサーバーが使用されます';
	@override String get autoSelectServerLimitedNum => '最大サーバー数';
	@override String get autoSelectServerLimitedNumTips => 'この数を超えるサーバーはフィルタリングされます';
	@override String get numInvalid => '無効な数値';
	@override String get hideInvalidServer => '無効なサーバーを非表示にする';
	@override String get sortServer => 'サーバーのソート';
	@override String get sortServerTips => 'レイテンシの低い順にソートする';
	@override String get selectServerHideRecommand => '[おすすめ] を非表示にする';
	@override String get selectServerHideRecent => '[最近使用] を非表示にする';
	@override String get selectServerHideFav => '[お気に入り] を非表示にする';
	@override String get homeScreen => 'ホーム画面';
	@override String get theme => 'テーマ';
	@override String get widgetsAlpha => 'ウィジェットの透明度';
	@override String get widgetsEmpty => '利用可能なウィジェットはありません';
	@override String get backgroundImage => '背景画像';
	@override String get myLink => 'ショートカットリンク';
	@override String get autoConnectAfterLaunch => '起動後に自動接続する';
	@override String get autoConnectAtBoot => 'システム起動時に自動接続する';
	@override String get autoConnectAtBootTips => 'システムのサポートが必要です。一部のシステムでは [自動起動] の有効化も必要になる場合があります。';
	@override String get hideAfterLaunch => '起動後にウィンドウを非表示にする';
	@override String get autoSetSystemProxy => '接続時にシステムプロキシを自動的に設定する';
	@override String get bypassSystemProxy => 'システムプロキシのバイパスを許可するドメイン';
	@override String get disconnectWhenQuit => 'アプリ終了時に切断する';
	@override String get autoAddToFirewall => 'ファイアウォールルールを自動的に追加する';
	@override String get excludeFromRecent => '[最近のタスク] から非表示にする';
	@override String get wakeLock => 'スリープ防止';
	@override String get hideVpn => 'VPN アイコンを非表示にする';
	@override String get hideVpnTips => 'IPv6 を有効にすると、この機能は失敗します';
	@override String get allowBypass => 'アプリが VPN をバイパスすることを許可する';
	@override String get importSuccess => 'インポートに成功しました';
	@override String get rewriteConfirm => 'このファイルは既存のローカル構成を上書きします。続行しますか？';
	@override String get mergePerapp => 'ローカルの [${_root.PerAppAndroidScreen.title}] リストを結合する';
	@override String get networkShare => 'ネットワーク共有';
	@override String get frontProxy => 'Front/Chain プロキシ';
	@override String frontProxyTips({required Object p}) => 'データ -> Front/Chain プロキシサーバー [複数のサーバー: 上から下へ] -> プロキシサーバー [${p}] -> ターゲットサーバー';
	@override String get allowOtherHostsConnect => '他からの接続を許可する';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}';
	@override String get allowOtherHostsConnectWarn => 'システムの制限により、これを有効にすると、http を使用してネットワークにアクセスするこのデバイス上のアプリが正常にネットワークに接続できなくなる可能性があります。';
	@override String get tunAutoRoute => '自動ルート';
	@override String get tunAutoRedirect => '自動リダイレクト';
	@override String get tunStrictRoute => '厳格なルート';
	@override String get tunStrictRouteTips => '共有をオンにした後、他のデバイスからこのデバイスにアクセスできない場合は、このスイッチをオフにしてみてください';
	@override String get loopbackAddress => 'ループバックアドレス';
	@override String get enableCluster => 'Socks/Http プロキシクラスターを有効にする';
	@override String get clusterAllowOtherHostsConnect => '他からのクラスターへの接続を許可する';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'プロキシクラスター認証';
	@override String get tunMode => 'TUN モード';
	@override String get tuni4Address => 'IP アドレス';
	@override String get tunModeTips => 'TUN モードはシステムのすべてのトラフィックを引き受けます [このモードでは、システムプロキシを無効のままにできます]';
	@override String get tunModeRunAsAdmin => 'TUN モードにはシステム管理者権限が必要です。アプリを管理者として再起動してください';
	@override String get tunStack => 'スタック';
	@override String get tunHijackTips => '終了後、TUN からの DNS リクエストは対応する DNS サーバーに直接転送されます';
	@override String get launchAtStartup => '起動時に実行する';
	@override String get quitWhenSwitchSystemUser => 'システムユーザー切り替え時にアプリを終了する';
	@override String get handleScheme => 'システムスキームの呼び出し';
	@override String get portableMode => 'ポータブルモード';
	@override String get portableModeDisableTips => 'ポータブルモードを終了する必要がある場合は、[karing] を終了し、[karing.exe] と同じディレクトリにある [profiles] フォルダを手動で削除してください';
	@override String get accessibility => 'アクセシビリティ';
	@override String get handleKaringScheme => 'karing:// 呼び出しを処理する';
	@override String get handleClashScheme => 'clash:// 呼び出しを処理する';
	@override String get handleSingboxScheme => 'sing-box:// 呼び出しを処理する';
	@override String get alwayOnVPN => '常時接続';
	@override String get disconnectAfterSleep => 'システムスリープ後に切断する';
	@override String get removeSystemVPNConfig => 'システム VPN 構成を削除する';
	@override String get timeConnectOrDisconnect => '接続/切断のスケジュール';
	@override String get timeConnectOrDisconnectTips => '有効にするには VPN が接続されている必要があります。オンにすると [自動スリープ] は無効になります';
	@override String timeConnectAndDisconnectInterval({required Object p}) => '接続/切断の間隔は ${p} 分以上である必要があります';
	@override String get disableFontScaler => 'フォントスケーリングを無効にする (再起動で有効)';
	@override String get autoOrientation => '画面に合わせて回転する';
	@override String get restartTakesEffect => '再起動で有効になります';
	@override String get reconnectTakesEffect => '再接続で有効になります';
	@override String get resetSettings => '設定をリセット';
	@override String get cleanCache => 'キャッシュをクリア';
	@override String get cleanCacheDone => 'クリア完了';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'バージョン ${p} に更新';
	@override String get follow => 'フォローする';
	@override String get contactUs => 'お問い合わせ';
	@override String get supportUs => '支援する';
	@override String get rateInAppStore => 'AppStore で評価する';
	@override String get rateInApp => '評価する';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenJa implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'プライバシーを最優先に';
	@override String get agreeAndContinue => '同意して続行';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenJa implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => '新バージョン [${p}] の準備ができました';
	@override String get update => '再起動して更新';
	@override String get cancel => '今はしない';
}

// Path: CommonWidget
class _TranslationsCommonWidgetJa implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => '[常に VPN を接続] がオンの場合は、オフにしてから再接続を試してください';
	@override String get resetPort => 'ポートを利用可能な別のポートに変更するか、ポートを使用しているアプリケーションを終了してください。';
}

// Path: main
class _TranslationsMainJa implements TranslationsMainEn {
	_TranslationsMainJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayJa tray = _TranslationsMainTrayJa._(_root);
}

// Path: meta
class _TranslationsMetaJa implements TranslationsMetaEn {
	_TranslationsMetaJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get enable => '有効';
	@override String get disable => '無効';
	@override String get bydefault => 'デフォルト';
	@override String get filter => 'フィルター';
	@override String get filterMethod => 'フィルター方法';
	@override String get include => '含む';
	@override String get exclude => '除外';
	@override String get all => 'すべて';
	@override String get prefer => '優先';
	@override String get only => 'のみ';
	@override String get open => '開く';
	@override String get close => '閉じる';
	@override String get quit => '終了';
	@override String get add => '追加';
	@override String get addSuccess => '追加に成功しました';
	@override String addFailed({required Object p}) => '追加に失敗しました: ${p}';
	@override String get remove => '削除';
	@override String get removeConfirm => '本当に削除しますか？';
	@override String get edit => '編集';
	@override String get view => '表示';
	@override String get more => 'もっと見る';
	@override String get tips => '情報';
	@override String get copy => 'コピー';
	@override String get paste => '貼り付け';
	@override String get cut => '切り取り';
	@override String get save => '保存';
	@override String get ok => 'OK';
	@override String get cancel => 'キャンセル';
	@override String get feedback => 'フィードバック';
	@override String get feedbackContent => 'フィードバック内容';
	@override String get feedbackContentHit => '必須、最大500文字';
	@override String get feedbackContentCannotEmpty => 'フィードバック内容は空にできません';
	@override String get faq => 'よくある質問';
	@override String get htmlTools => 'HTML ツールセット';
	@override String get download => 'ダウンロード';
	@override String get upload => 'アップロード';
	@override String get downloadSpeed => 'ダウンロード速度';
	@override String get uploadSpeed => 'アップロード速度';
	@override String get loading => '読み込み中...';
	@override String get convert => '変換';
	@override String get check => 'チェック';
	@override String get detect => '検出';
	@override String get cache => 'キャッシュ';
	@override String get days => '日';
	@override String get hours => '時間';
	@override String get minutes => '分';
	@override String get seconds => '秒';
	@override String get milliseconds => 'ミリ秒';
	@override String get tolerance => '許容範囲';
	@override String get dateTimePeriod => '期間';
	@override String get protocol => 'プロトコル';
	@override String get search => '検索';
	@override String get custom => 'カスタム';
	@override String get inbound => '着信';
	@override String get outbound => '送信';
	@override String get destination => '送信先';
	@override String get outletIpByCurrentSelected => '出口 IP';
	@override String get outletIpByDirect => 'IP: ${_root.outboundRuleMode.direct}';
	@override String get connect => '接続';
	@override String get disconnect => '切断';
	@override String get reconnect => '再接続';
	@override String get connected => '接続済み';
	@override String get disconnected => '未接続';
	@override String get connecting => '接続中';
	@override String get connectTimeout => '接続タイムアウト';
	@override String get timeout => 'タイムアウト';
	@override String get timeoutDuration => 'タイムアウト時間';
	@override String get runDuration => '実行時間';
	@override String get latency => 'レイテンシ';
	@override String get latencyTest => 'レイテンシチェック';
	@override String get language => '言語';
	@override String get next => '次へ';
	@override String get done => '完了';
	@override String get apply => '適用';
	@override String get refresh => '更新';
	@override String get retry => '再試行しますか？';
	@override String get update => '更新';
	@override String get updateInterval => '更新間隔';
	@override String get updateInterval5mTips => '最小: 5分';
	@override String updateFailed({required Object p}) => '更新に失敗しました: ${p}';
	@override String get samplingUnit => 'サンプリング時間単位';
	@override String get queryResultCount => 'クエリ結果数';
	@override String queryLimit({required Object p}) => '${p} 件までのデータを表示';
	@override String get none => 'なし';
	@override String get start => '開始';
	@override String get pause => '一時停止';
	@override String get reset => 'リセット';
	@override String get submit => '送信';
	@override String get user => 'ユーザー';
	@override String get account => 'アカウント';
	@override String get password => 'パスワード';
	@override String get decryptPassword => '複号化パスワード';
	@override String get required => '必須';
	@override String get type => 'タイプ';
	@override String get path => 'パス';
	@override String get local => 'ローカル';
	@override String get remote => 'リモート';
	@override String get other => 'その他';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => '無効な URL';
	@override String get urlCannotEmpty => 'リンクを空にすることはできません';
	@override String get urlTooLong => 'URL が長すぎます (>8182)';
	@override String get copyUrl => 'リンクをコピー';
	@override String get openUrl => 'リンクを開く';
	@override String get shareUrl => 'リンクを共有';
	@override String get speedTestUrl => 'スピードテスト URL';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => '静的 IP';
	@override String get staticIPTips => '[TUN HijackDNS] または [${_root.SettingsScreen.inboundDomainResolve}] を有効にする必要があります。';
	@override String get isp => 'VPN プロバイダー';
	@override String get domainSuffix => 'ドメインサフィックス';
	@override String get domain => 'ドメイン';
	@override String get domainKeyword => 'ドメインキーワード';
	@override String get domainRegex => 'ドメイン正規表現';
	@override String get ip => 'IP アドレス';
	@override String get port => 'ポート';
	@override String get portRange => 'ポート範囲';
	@override String get appPackage => 'アプリパッケージ ID';
	@override String get processName => 'プロセス名';
	@override String get processPath => 'プロセスパス';
	@override String get processDir => 'プロセスディレクトリ';
	@override String get systemProxy => 'システムプロキシ';
	@override String get percentage => 'パーセンテージ';
	@override String get statistics => '統計';
	@override String get statisticsAndAnalysis => '統計と分析';
	@override String get statisticsDataDesensitize => 'データの匿名化';
	@override String get statisticsDataDesensitizeTips => 'プロセス ID、パッケージ ID、ターゲットドメイン名、ターゲット IP などは、匿名化後に * に置き換えられて保存されます';
	@override String get records => '記録';
	@override String get requestRecords => 'リクエスト記録';
	@override String get netInterfaces => 'ネットワークインターフェース';
	@override String get netSpeed => '速度';
	@override String get memoryTrendChart => 'メモリ傾向チャート';
	@override String get goroutinesTrendChart => 'GoRoutines 傾向チャート';
	@override String get trafficTrendChart => 'トラフィック傾向チャート';
	@override String get trafficDistributionChart => 'トラフィック分布チャート';
	@override String get connectionChart => '接続傾向チャート';
	@override String get memoryChart => 'メモリ傾向チャート';
	@override String get trafficStatistics => 'トラフィック統計';
	@override String get traffic => 'トラフィック';
	@override String get trafficTotal => '総トラフィック';
	@override String get trafficProxy => 'プロキシトラフィック';
	@override String get trafficDirect => '直接トラフィック';
	@override String get website => 'ウェブサイト';
	@override String get memory => 'メモリ';
	@override String get outboundMode => '送信モード';
	@override String get rule => 'ルール';
	@override String get global => 'グローバル';
	@override String get qrcode => 'QR コード';
	@override String get qrcodeTooLong => 'テキストが長すぎて表示できません';
	@override String get qrcodeShare => 'QR コードを共有';
	@override String get textToQrcode => 'テキストを QR コードに変換';
	@override String get qrcodeScan => 'QR コードをスキャン';
	@override String get qrcodeScanResult => 'スキャン結果';
	@override String get qrcodeScanFromImage => '画像からスキャン';
	@override String get qrcodeScanResultFailed => '画像の解析に失敗しました。スクリーンショットが有効な QR コードであることを確認してください';
	@override String get qrcodeScanResultEmpty => 'スキャン結果が空です';
	@override String get screenshot => 'スクリーンショット';
	@override String get backupAndSync => 'バックアップと同期';
	@override String get autoBackup => '自動バックアップ';
	@override String get noProfileGotAutoBackup => '[${_root.meta.myProfiles}] などのデータが失われた場合は、[${_root.meta.backupAndSync}-${_root.meta.autoBackup}] またはその他のバックアップソース (iCloud や Webdav など) から復元できます';
	@override String get autoBackupAddProfile => 'プロファイル追加後';
	@override String get autoBackupRemoveProfile => 'プロファイル削除後';
	@override String get profile => 'プロファイル';
	@override String get currentProfile => '現在のプロファイル';
	@override String get importAndExport => 'インポートとエクスポート';
	@override String get import => 'インポート';
	@override String get importFromUrl => 'URL からインポート';
	@override String get export => 'エクスポート';
	@override String get send => '送信';
	@override String get receive => '受信';
	@override String get sendConfirm => '送信を確認しますか？';
	@override String get termOfUse => '利用規約';
	@override String get privacyPolicy => 'プライバシーポリシー';
	@override String get about => '詳細';
	@override String get name => '名前';
	@override String get version => 'バージョン';
	@override String get notice => 'お知らせ';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'アクション: ${p}\n理由: ${p1}';
	@override String get sort => '並べ替え';
	@override String get novice => '初心者モード';
	@override String get willCompleteAfterRebootInstall => 'システム拡張機能のインストールを完了するには、デバイスを再起動してください';
	@override String get willCompleteAfterRebootUninstall => 'システム拡張機能のアンインストールを完了するには、デバイスを再起動してください';
	@override String get requestNeedsUserApproval => '1. [システム設定] - [プライバシーとセキュリティ] で、Karing によるシステム拡張機能のインストールを [許可] してください\n2. [システム設定] - [一般] - [ログイン項目と拡張機能 - ネットワーク拡張機能] で [karingServiceSE] をオンにします\n完了後に再接続してください';
	@override String get FullDiskAccessPermissionRequired => '[システム設定] - [プライバシーとセキュリティ] - [フルディスクアクセス] で [karingServiceSE] 権限を有効にして、再接続してください';
	@override String get tvMode => 'TV モード';
	@override String get recommended => 'おすすめ';
	@override String innerError({required Object p}) => '内部エラー: ${p}';
	@override String get logicOperation => '論理演算';
	@override String get share => '共有';
	@override String get candidateWord => '候補単語';
	@override String get keywordOrRegx => 'キーワード/正規表現';
	@override String get importFromClipboard => 'クリップボードからインポート';
	@override String get exportToClipboard => 'クリップボードにエクスポート';
	@override String get server => 'サーバー';
	@override String get ads => '広告';
	@override String get adsRemove => '広告を削除';
	@override String get donate => '寄付';
	@override String get diversion => 'ルーティング';
	@override String get diversionRules => 'ルーティングルール';
	@override String get diversionCustomGroup => 'カスタム分流グループ';
	@override String get urlTestCustomGroup => 'カスタム自動選択';
	@override String get setting => '設定';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN 同期';
	@override String get lanSyncNotQuitTips => '同期が完了するまでこの画面を閉じないでください';
	@override String get deviceNoSpace => 'ディスク容量が不足しています';
	@override String get hideSystemApp => 'システムアプリを非表示にする';
	@override String get hideAppIcon => 'アプリのアイコンを非表示にする';
	@override String get hideDockIcon => 'Dock アイコンを非表示にする';
	@override String get remark => '備考';
	@override String get remarkExist => '備考が既に存在します。別の名前を使用してください';
	@override String get remarkCannotEmpty => '備考を空にすることはできません';
	@override String get remarkTooLong => '備考は最大32文字です';
	@override String get openDir => 'ファイルディレクトリを開く';
	@override String get fileChoose => 'ファイルを選択';
	@override String get filePathCannotEmpty => 'ファイルパスを空にすることはできません';
	@override String fileNotExist({required Object p}) => 'ファイルが存在しません: ${p}';
	@override String fileTypeInvalid({required Object p}) => '無効なファイルタイプ: ${p}';
	@override String get uwpExemption => 'UWP ネットワーク分離免除';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'プロファイルを取得';
	@override String get addProfile => 'プロファイルを追加';
	@override String get myProfiles => 'マイプロファイル';
	@override String get profileEdit => 'プロファイルを編集';
	@override String get profileEditUrlExist => 'URL が既に存在します。別の URL を使用してください';
	@override String get profileEditReloadAfterProfileUpdate => 'プロファイル更新後にリロードする';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'プロファイルの自動更新後にレイテンシテストを開始する';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN が接続されており、[プロファイル更新後にリロードする] がオンになっている必要があります';
	@override String get profileEditTestLatencyAutoRemove => 'レイテンシテストに失敗したサーバーを自動的に削除する';
	@override String get profileEditTestLatencyAutoRemoveTips => '最大3回試行します';
	@override String get profileImport => 'プロファイルファイルをインポート';
	@override String get profileAddUrlOrContent => 'プロファイルリンクを追加';
	@override String get profileExists => 'プロファイルが既に存在します。重複して追加しないでください';
	@override String get profileUrlOrContent => 'プロファイルリンク/内容';
	@override String get profileUrlOrContentHit => 'プロファイルリンク/内容 [必須] (Clash、V2ray (一括対応)、Stash、Karing、Sing-box、Shadowsocks、サブプロファイルリンクに対応)';
	@override String get profileUrlOrContentCannotEmpty => 'プロファイルリンクを空にすることはできません';
	@override String profileAddFailedFormatException({required Object p}) => '形式が正しくありません。修正して再度追加してください: ${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => '追加に失敗しました: ${p}。[UserAgent] を変更して再試行するか、デバイス内蔵のブラウザを使用して設定リンクを開き、ブラウザでダウンロードした設定ファイルをこのアプリにインポートしてください';
	@override String profileAddFailedHandshakeException({required Object p}) => '追加に失敗しました: ${p}。プロキシをオンにするか、現在のプロキシノードを変更して再試行してください';
	@override String get profileAddParseFailed => 'プロファイルの解析に失敗しました';
	@override String get profileAddNoServerAvaliable => '利用可能なサーバーがありません。設定リンクまたは設定ファイルが有効であることを確認してください。設定が GitHub の場合は、ページ上の [Raw] ボタンからリンクを取得してください';
	@override String get profileAddWrapSuccess => '構成が正常に生成されました。[${_root.meta.myProfiles}] に移動して確認してください';
}

// Path: isp
class _TranslationsIspJa implements TranslationsIspEn {
	_TranslationsIspJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get bind => '[${_root.meta.isp}] にバインドする';
	@override String unbind({required Object p}) => 'バインド解除 [${p}]';
	@override String faq({required Object p}) => 'よくある質問 [${p}]';
	@override String customerService({required Object p}) => 'Telegram [${p}]';
	@override String follow({required Object p}) => 'フォロー [${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] が無効または期限切れです';
}

// Path: permission
class _TranslationsPermissionJa implements TranslationsPermissionEn {
	_TranslationsPermissionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get camera => 'カメラ';
	@override String get screen => '画面収録';
	@override String get appQuery => 'アプリリストを取得';
	@override String request({required Object p}) => '[${p}] 権限をオンにする';
	@override String requestNeed({required Object p}) => '[${p}] 権限をオンにしてください';
}

// Path: tls
class _TranslationsTlsJa implements TranslationsTlsEn {
	_TranslationsTlsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get insecure => '証明書の検証をスキップする';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'TLS フラグメントを有効にする';
	@override String get fragmentSize => 'TLS フラグメントサイズ';
	@override String get fragmentSleep => 'TLS フラグメントスリープ';
	@override String get mixedCaseSNIEnable => 'TLS 混合ケース SNI を有効にする';
	@override String get paddingEnable => 'TLS パディングを有効にする';
	@override String get paddingSize => 'TLS パディングサイズ';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeJa implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => '現在の選択';
	@override String get urltest => '自動選択';
	@override String get direct => '直接接続';
	@override String get block => 'ブロック';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeJa implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyJa implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonJa implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'プロファイル更新';
}

// Path: theme
class _TranslationsThemeJa implements TranslationsThemeEn {
	_TranslationsThemeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get light => 'ライト';
	@override String get dark => 'ダーク';
	@override String get auto => '自動';
}

// Path: main.tray
class _TranslationsMainTrayJa implements TranslationsMainTrayEn {
	_TranslationsMainTrayJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => '開く';
	@override String get menuExit => '終了';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'インストールリファラー',
			'AboutScreen.installTime' => 'インストール時間',
			'AboutScreen.versionChannel' => '自動更新チャネル',
			'AboutScreen.updateWhenConnected' => '接続後にアップデートを確認する',
			'AboutScreen.autoDownloadPkg' => '更新パッケージを自動的にダウンロードする',
			'AboutScreen.disableAppImproveData' => 'アプリ改善データ',
			'AboutScreen.disableUAReportTip' => '[${_root.AboutScreen.disableAppImproveData}] を有効にすると、製品の安定性と使いやすさの向上に役立ちます。個人情報は収集しません。無効にすると、アプリによるデータの収集が停止されます。',
			'AboutScreen.devOptions' => '開発者向けオプション',
			'AboutScreen.enableDebugLog' => 'デバッグログを有効にする',
			'AboutScreen.viewFilsContent' => 'ファイルを表示',
			'AboutScreen.enablePprof' => 'pprof を有効にする',
			'AboutScreen.pprofPanel' => 'pprof パネル',
			'AboutScreen.allowRemoteAccessPprof' => '${_root.AboutScreen.pprofPanel} へのリモートアクセスを許可する',
			'AboutScreen.allowRemoteAccessHtmlBoard' => '${_root.SettingsScreen.htmlBoard} へのリモートアクセスを許可する',
			'AboutScreen.useOriginalSBProfile' => 'オリジナルの sing-box プロファイルを使用する',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'サーバー URL',
			'BackupAndSyncWebdavScreen.webdavRequired' => '空にすることはできません',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'ログインに失敗しました:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'ファイルリストの取得に失敗しました:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => '無効な [ドメイン]: ${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => '無効な [IP Cidr]: ${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => '無効な [${p0}]: ${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => '無効な [ルールセット]: ${p}。URL は有効な https URL であり、拡張子が .srs/.json のバイナリファイルである必要があります',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => '無効な [ルールセット (内蔵)]: ${p}。形式は geosite:xxx、geoip:xxx、または acl:xxx である必要があり、xxx は有効なルール名である必要があります',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => '無効な [${_root.meta.appPackage}]: ${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'ヒント: 保存後、[${_root.meta.diversionRules}] に移動して関連するルールを設定してください。設定しないと有効になりません。',
			'DiversionRuleDetectScreen.title' => '分流ルールの検出',
			'DiversionRuleDetectScreen.rule' => 'ルール:',
			'DiversionRuleDetectScreen.outbound' => 'プロキシサーバー:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'ヒント: ルールを上から下に一致させてみてください。一致するルールがない場合は [final] を使用します',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP を空にすることはできません',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL を空にすることはできません',
			'DnsSettingsScreen.error' => ({required Object p}) => 'サポートされていないタイプ: ${p}',
			'DnsSettingsScreen.dnsDesc' => '遅延データの最初の列は直接接続のクエリ遅延です。\n2番目の列: [[プロキシトラフィック] プロキシサーバー経由で DNS を解決する] をオンにする: 遅延データは現在のプロキシサーバー経由で転送されたクエリ遅延です。オフの場合: 遅延データは直接接続のクエリ遅延です',
			'FileContentViewerScreen.title' => 'ファイル内容ビューアー',
			'FileContentViewerScreen.clearFileContent' => 'ファイルの内容を消去してもよろしいですか？',
			'FileContentViewerScreen.clearFileContentTips' => 'プロファイルファイルの内容を消去してもよろしいですか？プロファイルファイルを消去すると、データが失われたり、アプリが正常に動作しなくなったりする可能性があります。慎重に行ってください。',
			'HomeScreen.toSelectServer' => 'サーバーを選択してください',
			'HomeScreen.invalidServer' => 'は無効です。再選択してください',
			'HomeScreen.disabledServer' => 'は無効になっています。再選択してください',
			'HomeScreen.expiredServer' => '利用可能なサーバーがありません。プロファイルが期限切れか無効になっている可能性があります',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}',
			'HomeScreen.myLinkEmpty' => '使用する前に [ショートカットリンク] を設定してください',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'プロキシサーバーが多すぎます [${p}>${p1}]。システムのメモリ制限により接続が失敗する可能性があります',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'プロキシサーバーが多すぎます [${p}>${p1}]。接続が遅くなったり、アクセスできなくなったりする可能性があります',
			'LaunchFailedScreen.invalidProcess' => 'アプリを起動できませんでした [無効なプロセス名]。アプリを別のディレクトリに再インストールしてください',
			'LaunchFailedScreen.invalidProfile' => 'アプリを起動できませんでした [プロファイルへのアクセスに失敗しました]。アプリを再インストールしてください',
			'LaunchFailedScreen.invalidVersion' => 'アプリを起動できませんでした [無効なバージョン]。アプリを再インストールしてください',
			'LaunchFailedScreen.systemVersionLow' => 'アプリを起動できませんでした [システムバージョンが低すぎます]',
			'LaunchFailedScreen.invalidInstallPath' => 'インストールパスが無効です。有効なパスに再インストールしてください',
			'MyProfilesMergeScreen.profilesMerge' => 'プロファイルの結合',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'ターゲットプロファイル',
			'MyProfilesMergeScreen.profilesMergeSource' => 'ソースプロファイル',
			'MyProfilesMergeScreen.profilesMergeTips' => 'ヒント: ソースプロファイルの分流設定は破棄されます',
			'NetCheckScreen.title' => 'ネットワークチェック',
			'NetCheckScreen.warn' => '注意: ネットワーク環境や分流ルールの影響により、テスト結果は実際の環境と完全に一致するわけではありません。',
			'NetCheckScreen.invalidDomain' => '無効なドメイン名',
			'NetCheckScreen.connectivity' => 'ネットワーク接続性',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'IPv4 接続テスト [${p}] はすべて失敗しました',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'IPv4 接続成功',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'IPv6 接続テスト [${p}] はすべて失敗しました。ネットワークが IPv6 をサポートしていない可能性があります',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'IPv6 接続成功',
			'NetCheckScreen.connectivityTestOk' => 'ネットワークはインターネットに接続されています',
			'NetCheckScreen.connectivityTestFailed' => 'ネットワークはまだインターネットに接続されていません',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'すべて正常にダウンロードされました',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'ダウンロード中またはダウンロード失敗',
			'NetCheckScreen.outbound' => 'プロキシサーバー',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] への接続成功',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] への接続に失敗しました\nエラー: [${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS サーバー',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] の DNS クエリ成功\nDNS ルール: [${p2}]\nレイテンシ: [${p3} ms]\nアドレス: [${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}] の DNS クエリ成功\nDNS ルール: [${p2}]\nエラー: [${p3}]',
			'NetCheckScreen.host' => 'HTTP 接続',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\n分流ルール: [${p2}]\nプロキシサーバー: [${p3}]',
			'NetCheckScreen.hostConnectionOk' => '接続成功',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => '接続失敗: [${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'ドメイン/IP',
			'NetConnectionsFilterScreen.app' => 'アプリ',
			'NetConnectionsFilterScreen.rule' => 'ルール',
			'NetConnectionsFilterScreen.chain' => '送信',
			'NetConnectionsScreen.copyAsCSV' => 'CSV 形式でコピーしました',
			'NetConnectionsScreen.selectType' => '分流タイプを選択',
			'PerAppAndroidScreen.title' => 'アプリごとのプロキシ',
			'PerAppAndroidScreen.whiteListMode' => 'ホワイトリストモード',
			'PerAppAndroidScreen.whiteListModeTip' => 'オンの場合: チェックされたアプリのみがプロキシを経由します。オフの場合: チェックされていないアプリのみがプロキシを経由します',
			'RegionSettingsScreen.title' => '国または地域',
			'RegionSettingsScreen.Regions' => 'ヒント: 現在の国または地域を正しく設定してください。正しく設定しないと、ネットワーク分流の問題が発生する可能性があります',
			'ServerSelectScreen.title' => 'サーバーを選択',
			'ServerSelectScreen.autoSelectServer' => '最もレイテンシの低いサーバーを自動的に選択する',
			'ServerSelectScreen.recentUse' => '最近使用したサーバー',
			'ServerSelectScreen.myFav' => 'お気に入り',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => '選択されたサーバーはローカルアドレスであり、正常に動作しない可能性があります: ${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => '選択されたサーバーは IPv6 アドレスであり、[IPv6 を有効にする] が必要です',
			'ServerSelectScreen.selectDisabled' => 'このサーバーは無効になっています',
			'ServerSelectScreen.error404' => 'レイテンシ検出でエラーが発生しました。同じ内容の構成が存在するかどうかを確認してください',
			'SettingsScreen.getTranffic' => 'トラフィックを取得',
			'SettingsScreen.tutorial' => 'チュートリアル',
			'SettingsScreen.commonlyUsedRulesets' => 'よく使われるルールセット',
			'SettingsScreen.htmlBoard' => 'オンラインパネル',
			'SettingsScreen.dnsLeakDetection' => 'DNS 漏洩検出',
			'SettingsScreen.proxyLeakDetection' => 'プロキシ漏洩検出',
			'SettingsScreen.speedTest' => 'スピードテスト',
			'SettingsScreen.rulesetDirectDownlad' => 'ルールセットの直接ダウンロード',
			'SettingsScreen.hideUnusedDiversionGroup' => '未使用の分流グループを非表示にする',
			'SettingsScreen.disableISPDiversionGroup' => '[${_root.meta.isp}] の ${_root.meta.diversionRules} を無効にする',
			'SettingsScreen.portSettingRule' => 'ルールベース',
			'SettingsScreen.portSettingDirectAll' => 'すべて直接接続',
			'SettingsScreen.portSettingProxyAll' => 'すべてプロキシ',
			'SettingsScreen.portSettingControl' => '制御と同期',
			'SettingsScreen.portSettingCluster' => 'クラスターサービス',
			'SettingsScreen.modifyPort' => 'ポートを変更',
			'SettingsScreen.modifyPortOccupied' => 'ポートが使用されています。別のポートを使用してください',
			'SettingsScreen.ipStrategyTips' => '有効にする前に、ネットワークが IPv6 をサポートしていることを確認してください。サポートされていない場合、一部のトラフィックに正常にアクセスできなくなります。',
			'SettingsScreen.tunAppendHttpProxy' => 'VPN に HTTP プロキシを追加する',
			'SettingsScreen.tunAppendHttpProxyTips' => '一部のアプリは仮想 NIC デバイスをバイパスして HTTP プロキシに直接接続します',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'HTTP プロキシのバイパスを許可するドメイン',
			'SettingsScreen.dnsEnableRule' => 'DNS 分流ルールを有効にする',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] 解決チャネル',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] ECS を有効にする',
			'SettingsScreen.dnsTestDomain' => 'テストドメイン',
			'SettingsScreen.dnsTestDomainInvalid' => '無効なドメイン',
			'SettingsScreen.dnsTypeOutbound' => 'プロキシサーバー',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS サーバー',
			'SettingsScreen.dnsEnableRuleTips' => '有効にすると、ドメイン名は分流ルールに従って解決のために対応する DNS サーバーを選択します',
			'SettingsScreen.dnsEnableFakeIpTips' => 'FakeIP を有効にした後、VPN 接続を切断すると、アプリの再起動が必要になる場合があります。この機能には [TUN モード] の有効化が必要です',
			'SettingsScreen.dnsTypeOutboundTips' => '[${_root.SettingsScreen.dnsTypeOutbound}] のドメイン名解決',
			'SettingsScreen.dnsTypeDirectTips' => '[${_root.meta.trafficDirect}] のドメイン名解決',
			'SettingsScreen.dnsTypeProxyTips' => '[${_root.meta.trafficProxy}] のドメイン名解決',
			'SettingsScreen.dnsTypeResolverTips' => '[${_root.SettingsScreen.dnsTypeResolver}] のドメイン名解決',
			'SettingsScreen.dnsAutoSetServer' => 'サーバーを自動設定',
			'SettingsScreen.dnsResetServer' => 'サーバーをリセット',
			'SettingsScreen.dnsEnableStaticIPForResolver' => '静的IP解決を優先する',
			'SettingsScreen.dnsEnableStaticIPForResolverTips' => '解決中にDNSサーバー自体が汚染されるのを効果的に防ぐ',
			'SettingsScreen.inboundDomainResolve' => '着信ドメイン名を解決する',
			'SettingsScreen.privateDirect' => 'プライベートネットワークの直接接続',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => '分流ルールが設定されていない一部のドメイン名は、IP ベースの分流ルールに一致させる前に解決する必要があります。この機能はプロキシポート [${p}] への着信リクエストに影響します',
			'SettingsScreen.useRomoteRes' => 'リモートリソースを使用する',
			'SettingsScreen.autoAppendRegion' => '基本ルールを自動的に追加する',
			'SettingsScreen.autoSelect' => '自動選択',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => '[Front/Chain] プロキシサーバーを無視する',
			'SettingsScreen.autoSelectServerInterval' => 'レイテンシチェックの間隔',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => '現在のサーバーのヘルスチェック間隔',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'ネットワーク変更時にレイテンシを再チェックする',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => '手動レイテンシチェック後に現在のサーバーを更新する',
			'SettingsScreen.autoSelectServerIntervalTips' => '間隔が短いほど、サーバーのレイテンシデータはタイムリーに更新されますが、より多くのリソースを占有し、電力を消費します',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'チェックが失敗するとサーバーが切り替わります。切り替え時に利用可能なサーバーが見つからない場合、グループはレイテンシを再チェックします',
			'SettingsScreen.autoSelectServerFavFirst' => '[お気に入り] を優先的に使用する',
			'SettingsScreen.autoSelectServerFavFirstTips' => '[お気に入り] リストが空でない場合は、[お気に入り] 内のサーバーを使用します',
			'SettingsScreen.autoSelectServerFilter' => '無効なサーバーをフィルタリングする',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'レイテンシチェックに失敗したサーバーはフィルタリングされます。フィルタリング後に利用可能なサーバーがない場合は、代わりに最初の [${p}] 台のサーバーが使用されます',
			'SettingsScreen.autoSelectServerLimitedNum' => '最大サーバー数',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'この数を超えるサーバーはフィルタリングされます',
			'SettingsScreen.numInvalid' => '無効な数値',
			'SettingsScreen.hideInvalidServer' => '無効なサーバーを非表示にする',
			'SettingsScreen.sortServer' => 'サーバーのソート',
			'SettingsScreen.sortServerTips' => 'レイテンシの低い順にソートする',
			'SettingsScreen.selectServerHideRecommand' => '[おすすめ] を非表示にする',
			'SettingsScreen.selectServerHideRecent' => '[最近使用] を非表示にする',
			'SettingsScreen.selectServerHideFav' => '[お気に入り] を非表示にする',
			'SettingsScreen.homeScreen' => 'ホーム画面',
			'SettingsScreen.theme' => 'テーマ',
			'SettingsScreen.widgetsAlpha' => 'ウィジェットの透明度',
			'SettingsScreen.widgetsEmpty' => '利用可能なウィジェットはありません',
			'SettingsScreen.backgroundImage' => '背景画像',
			'SettingsScreen.myLink' => 'ショートカットリンク',
			'SettingsScreen.autoConnectAfterLaunch' => '起動後に自動接続する',
			'SettingsScreen.autoConnectAtBoot' => 'システム起動時に自動接続する',
			'SettingsScreen.autoConnectAtBootTips' => 'システムのサポートが必要です。一部のシステムでは [自動起動] の有効化も必要になる場合があります。',
			'SettingsScreen.hideAfterLaunch' => '起動後にウィンドウを非表示にする',
			'SettingsScreen.autoSetSystemProxy' => '接続時にシステムプロキシを自動的に設定する',
			'SettingsScreen.bypassSystemProxy' => 'システムプロキシのバイパスを許可するドメイン',
			'SettingsScreen.disconnectWhenQuit' => 'アプリ終了時に切断する',
			'SettingsScreen.autoAddToFirewall' => 'ファイアウォールルールを自動的に追加する',
			'SettingsScreen.excludeFromRecent' => '[最近のタスク] から非表示にする',
			'SettingsScreen.wakeLock' => 'スリープ防止',
			'SettingsScreen.hideVpn' => 'VPN アイコンを非表示にする',
			'SettingsScreen.hideVpnTips' => 'IPv6 を有効にすると、この機能は失敗します',
			'SettingsScreen.allowBypass' => 'アプリが VPN をバイパスすることを許可する',
			'SettingsScreen.importSuccess' => 'インポートに成功しました',
			'SettingsScreen.rewriteConfirm' => 'このファイルは既存のローカル構成を上書きします。続行しますか？',
			'SettingsScreen.mergePerapp' => 'ローカルの [${_root.PerAppAndroidScreen.title}] リストを結合する',
			'SettingsScreen.networkShare' => 'ネットワーク共有',
			'SettingsScreen.frontProxy' => 'Front/Chain プロキシ',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'データ -> Front/Chain プロキシサーバー [複数のサーバー: 上から下へ] -> プロキシサーバー [${p}] -> ターゲットサーバー',
			'SettingsScreen.allowOtherHostsConnect' => '他からの接続を許可する',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'システムの制限により、これを有効にすると、http を使用してネットワークにアクセスするこのデバイス上のアプリが正常にネットワークに接続できなくなる可能性があります。',
			'SettingsScreen.tunAutoRoute' => '自動ルート',
			'SettingsScreen.tunAutoRedirect' => '自動リダイレクト',
			'SettingsScreen.tunStrictRoute' => '厳格なルート',
			'SettingsScreen.tunStrictRouteTips' => '共有をオンにした後、他のデバイスからこのデバイスにアクセスできない場合は、このスイッチをオフにしてみてください',
			'SettingsScreen.loopbackAddress' => 'ループバックアドレス',
			'SettingsScreen.enableCluster' => 'Socks/Http プロキシクラスターを有効にする',
			'SettingsScreen.clusterAllowOtherHostsConnect' => '他からのクラスターへの接続を許可する',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'プロキシクラスター認証',
			'SettingsScreen.tunMode' => 'TUN モード',
			'SettingsScreen.tuni4Address' => 'IP アドレス',
			'SettingsScreen.tunModeTips' => 'TUN モードはシステムのすべてのトラフィックを引き受けます [このモードでは、システムプロキシを無効のままにできます]',
			'SettingsScreen.tunModeRunAsAdmin' => 'TUN モードにはシステム管理者権限が必要です。アプリを管理者として再起動してください',
			'SettingsScreen.tunStack' => 'スタック',
			'SettingsScreen.tunHijackTips' => '終了後、TUN からの DNS リクエストは対応する DNS サーバーに直接転送されます',
			'SettingsScreen.launchAtStartup' => '起動時に実行する',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'システムユーザー切り替え時にアプリを終了する',
			'SettingsScreen.handleScheme' => 'システムスキームの呼び出し',
			'SettingsScreen.portableMode' => 'ポータブルモード',
			'SettingsScreen.portableModeDisableTips' => 'ポータブルモードを終了する必要がある場合は、[karing] を終了し、[karing.exe] と同じディレクトリにある [profiles] フォルダを手動で削除してください',
			'SettingsScreen.accessibility' => 'アクセシビリティ',
			'SettingsScreen.handleKaringScheme' => 'karing:// 呼び出しを処理する',
			'SettingsScreen.handleClashScheme' => 'clash:// 呼び出しを処理する',
			'SettingsScreen.handleSingboxScheme' => 'sing-box:// 呼び出しを処理する',
			'SettingsScreen.alwayOnVPN' => '常時接続',
			'SettingsScreen.disconnectAfterSleep' => 'システムスリープ後に切断する',
			'SettingsScreen.removeSystemVPNConfig' => 'システム VPN 構成を削除する',
			'SettingsScreen.timeConnectOrDisconnect' => '接続/切断のスケジュール',
			'SettingsScreen.timeConnectOrDisconnectTips' => '有効にするには VPN が接続されている必要があります。オンにすると [自動スリープ] は無効になります',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => '接続/切断の間隔は ${p} 分以上である必要があります',
			'SettingsScreen.disableFontScaler' => 'フォントスケーリングを無効にする (再起動で有効)',
			'SettingsScreen.autoOrientation' => '画面に合わせて回転する',
			'SettingsScreen.restartTakesEffect' => '再起動で有効になります',
			'SettingsScreen.reconnectTakesEffect' => '再接続で有効になります',
			'SettingsScreen.resetSettings' => '設定をリセット',
			'SettingsScreen.cleanCache' => 'キャッシュをクリア',
			'SettingsScreen.cleanCacheDone' => 'クリア完了',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'バージョン ${p} に更新',
			'SettingsScreen.follow' => 'フォローする',
			'SettingsScreen.contactUs' => 'お問い合わせ',
			'SettingsScreen.supportUs' => '支援する',
			'SettingsScreen.rateInAppStore' => 'AppStore で評価する',
			'SettingsScreen.rateInApp' => '評価する',
			'UserAgreementScreen.privacyFirst' => 'プライバシーを最優先に',
			'UserAgreementScreen.agreeAndContinue' => '同意して続行',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => '新バージョン [${p}] の準備ができました',
			'VersionUpdateScreen.update' => '再起動して更新',
			'VersionUpdateScreen.cancel' => '今はしない',
			'CommonWidget.diableAlwayOnVPN' => '[常に VPN を接続] がオンの場合は、オフにしてから再接続を試してください',
			'CommonWidget.resetPort' => 'ポートを利用可能な別のポートに変更するか、ポートを使用しているアプリケーションを終了してください。',
			'main.tray.menuOpen' => '開く',
			'main.tray.menuExit' => '終了',
			'meta.enable' => '有効',
			'meta.disable' => '無効',
			'meta.bydefault' => 'デフォルト',
			'meta.filter' => 'フィルター',
			'meta.filterMethod' => 'フィルター方法',
			'meta.include' => '含む',
			'meta.exclude' => '除外',
			'meta.all' => 'すべて',
			'meta.prefer' => '優先',
			'meta.only' => 'のみ',
			'meta.open' => '開く',
			'meta.close' => '閉じる',
			'meta.quit' => '終了',
			'meta.add' => '追加',
			'meta.addSuccess' => '追加に成功しました',
			'meta.addFailed' => ({required Object p}) => '追加に失敗しました: ${p}',
			'meta.remove' => '削除',
			'meta.removeConfirm' => '本当に削除しますか？',
			'meta.edit' => '編集',
			'meta.view' => '表示',
			'meta.more' => 'もっと見る',
			'meta.tips' => '情報',
			'meta.copy' => 'コピー',
			'meta.paste' => '貼り付け',
			'meta.cut' => '切り取り',
			'meta.save' => '保存',
			'meta.ok' => 'OK',
			'meta.cancel' => 'キャンセル',
			'meta.feedback' => 'フィードバック',
			'meta.feedbackContent' => 'フィードバック内容',
			'meta.feedbackContentHit' => '必須、最大500文字',
			'meta.feedbackContentCannotEmpty' => 'フィードバック内容は空にできません',
			'meta.faq' => 'よくある質問',
			'meta.htmlTools' => 'HTML ツールセット',
			'meta.download' => 'ダウンロード',
			'meta.upload' => 'アップロード',
			'meta.downloadSpeed' => 'ダウンロード速度',
			'meta.uploadSpeed' => 'アップロード速度',
			'meta.loading' => '読み込み中...',
			'meta.convert' => '変換',
			'meta.check' => 'チェック',
			'meta.detect' => '検出',
			'meta.cache' => 'キャッシュ',
			'meta.days' => '日',
			'meta.hours' => '時間',
			'meta.minutes' => '分',
			'meta.seconds' => '秒',
			'meta.milliseconds' => 'ミリ秒',
			'meta.tolerance' => '許容範囲',
			'meta.dateTimePeriod' => '期間',
			'meta.protocol' => 'プロトコル',
			'meta.search' => '検索',
			'meta.custom' => 'カスタム',
			'meta.inbound' => '着信',
			'meta.outbound' => '送信',
			'meta.destination' => '送信先',
			'meta.outletIpByCurrentSelected' => '出口 IP',
			'meta.outletIpByDirect' => 'IP: ${_root.outboundRuleMode.direct}',
			'meta.connect' => '接続',
			'meta.disconnect' => '切断',
			'meta.reconnect' => '再接続',
			'meta.connected' => '接続済み',
			'meta.disconnected' => '未接続',
			'meta.connecting' => '接続中',
			'meta.connectTimeout' => '接続タイムアウト',
			'meta.timeout' => 'タイムアウト',
			'meta.timeoutDuration' => 'タイムアウト時間',
			'meta.runDuration' => '実行時間',
			'meta.latency' => 'レイテンシ',
			'meta.latencyTest' => 'レイテンシチェック',
			'meta.language' => '言語',
			'meta.next' => '次へ',
			'meta.done' => '完了',
			'meta.apply' => '適用',
			'meta.refresh' => '更新',
			'meta.retry' => '再試行しますか？',
			'meta.update' => '更新',
			'meta.updateInterval' => '更新間隔',
			'meta.updateInterval5mTips' => '最小: 5分',
			'meta.updateFailed' => ({required Object p}) => '更新に失敗しました: ${p}',
			'meta.samplingUnit' => 'サンプリング時間単位',
			'meta.queryResultCount' => 'クエリ結果数',
			'meta.queryLimit' => ({required Object p}) => '${p} 件までのデータを表示',
			'meta.none' => 'なし',
			'meta.start' => '開始',
			'meta.pause' => '一時停止',
			'meta.reset' => 'リセット',
			'meta.submit' => '送信',
			'meta.user' => 'ユーザー',
			'meta.account' => 'アカウント',
			'meta.password' => 'パスワード',
			'meta.decryptPassword' => '複号化パスワード',
			'meta.required' => '必須',
			'meta.type' => 'タイプ',
			'meta.path' => 'パス',
			'meta.local' => 'ローカル',
			'meta.remote' => 'リモート',
			'meta.other' => 'その他',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => '無効な URL',
			'meta.urlCannotEmpty' => 'リンクを空にすることはできません',
			'meta.urlTooLong' => 'URL が長すぎます (>8182)',
			'meta.copyUrl' => 'リンクをコピー',
			'meta.openUrl' => 'リンクを開く',
			'meta.shareUrl' => 'リンクを共有',
			'meta.speedTestUrl' => 'スピードテスト URL',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => '静的 IP',
			'meta.staticIPTips' => '[TUN HijackDNS] または [${_root.SettingsScreen.inboundDomainResolve}] を有効にする必要があります。',
			'meta.isp' => 'VPN プロバイダー',
			'meta.domainSuffix' => 'ドメインサフィックス',
			'meta.domain' => 'ドメイン',
			'meta.domainKeyword' => 'ドメインキーワード',
			'meta.domainRegex' => 'ドメイン正規表現',
			'meta.ip' => 'IP アドレス',
			'meta.port' => 'ポート',
			'meta.portRange' => 'ポート範囲',
			'meta.appPackage' => 'アプリパッケージ ID',
			'meta.processName' => 'プロセス名',
			'meta.processPath' => 'プロセスパス',
			'meta.processDir' => 'プロセスディレクトリ',
			'meta.systemProxy' => 'システムプロキシ',
			'meta.percentage' => 'パーセンテージ',
			'meta.statistics' => '統計',
			'meta.statisticsAndAnalysis' => '統計と分析',
			'meta.statisticsDataDesensitize' => 'データの匿名化',
			'meta.statisticsDataDesensitizeTips' => 'プロセス ID、パッケージ ID、ターゲットドメイン名、ターゲット IP などは、匿名化後に * に置き換えられて保存されます',
			'meta.records' => '記録',
			'meta.requestRecords' => 'リクエスト記録',
			'meta.netInterfaces' => 'ネットワークインターフェース',
			'meta.netSpeed' => '速度',
			'meta.memoryTrendChart' => 'メモリ傾向チャート',
			'meta.goroutinesTrendChart' => 'GoRoutines 傾向チャート',
			'meta.trafficTrendChart' => 'トラフィック傾向チャート',
			'meta.trafficDistributionChart' => 'トラフィック分布チャート',
			'meta.connectionChart' => '接続傾向チャート',
			'meta.memoryChart' => 'メモリ傾向チャート',
			'meta.trafficStatistics' => 'トラフィック統計',
			'meta.traffic' => 'トラフィック',
			'meta.trafficTotal' => '総トラフィック',
			'meta.trafficProxy' => 'プロキシトラフィック',
			'meta.trafficDirect' => '直接トラフィック',
			'meta.website' => 'ウェブサイト',
			'meta.memory' => 'メモリ',
			'meta.outboundMode' => '送信モード',
			'meta.rule' => 'ルール',
			'meta.global' => 'グローバル',
			'meta.qrcode' => 'QR コード',
			'meta.qrcodeTooLong' => 'テキストが長すぎて表示できません',
			'meta.qrcodeShare' => 'QR コードを共有',
			'meta.textToQrcode' => 'テキストを QR コードに変換',
			'meta.qrcodeScan' => 'QR コードをスキャン',
			'meta.qrcodeScanResult' => 'スキャン結果',
			'meta.qrcodeScanFromImage' => '画像からスキャン',
			'meta.qrcodeScanResultFailed' => '画像の解析に失敗しました。スクリーンショットが有効な QR コードであることを確認してください',
			'meta.qrcodeScanResultEmpty' => 'スキャン結果が空です',
			'meta.screenshot' => 'スクリーンショット',
			'meta.backupAndSync' => 'バックアップと同期',
			'meta.autoBackup' => '自動バックアップ',
			'meta.noProfileGotAutoBackup' => '[${_root.meta.myProfiles}] などのデータが失われた場合は、[${_root.meta.backupAndSync}-${_root.meta.autoBackup}] またはその他のバックアップソース (iCloud や Webdav など) から復元できます',
			'meta.autoBackupAddProfile' => 'プロファイル追加後',
			'meta.autoBackupRemoveProfile' => 'プロファイル削除後',
			'meta.profile' => 'プロファイル',
			'meta.currentProfile' => '現在のプロファイル',
			'meta.importAndExport' => 'インポートとエクスポート',
			'meta.import' => 'インポート',
			'meta.importFromUrl' => 'URL からインポート',
			'meta.export' => 'エクスポート',
			'meta.send' => '送信',
			'meta.receive' => '受信',
			'meta.sendConfirm' => '送信を確認しますか？',
			'meta.termOfUse' => '利用規約',
			'meta.privacyPolicy' => 'プライバシーポリシー',
			'meta.about' => '詳細',
			'meta.name' => '名前',
			'meta.version' => 'バージョン',
			'meta.notice' => 'お知らせ',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'アクション: ${p}\n理由: ${p1}',
			'meta.sort' => '並べ替え',
			'meta.novice' => '初心者モード',
			'meta.willCompleteAfterRebootInstall' => 'システム拡張機能のインストールを完了するには、デバイスを再起動してください',
			'meta.willCompleteAfterRebootUninstall' => 'システム拡張機能のアンインストールを完了するには、デバイスを再起動してください',
			'meta.requestNeedsUserApproval' => '1. [システム設定] - [プライバシーとセキュリティ] で、Karing によるシステム拡張機能のインストールを [許可] してください\n2. [システム設定] - [一般] - [ログイン項目と拡張機能 - ネットワーク拡張機能] で [karingServiceSE] をオンにします\n完了後に再接続してください',
			'meta.FullDiskAccessPermissionRequired' => '[システム設定] - [プライバシーとセキュリティ] - [フルディスクアクセス] で [karingServiceSE] 権限を有効にして、再接続してください',
			'meta.tvMode' => 'TV モード',
			'meta.recommended' => 'おすすめ',
			'meta.innerError' => ({required Object p}) => '内部エラー: ${p}',
			'meta.logicOperation' => '論理演算',
			'meta.share' => '共有',
			'meta.candidateWord' => '候補単語',
			'meta.keywordOrRegx' => 'キーワード/正規表現',
			'meta.importFromClipboard' => 'クリップボードからインポート',
			'meta.exportToClipboard' => 'クリップボードにエクスポート',
			'meta.server' => 'サーバー',
			'meta.ads' => '広告',
			'meta.adsRemove' => '広告を削除',
			'meta.donate' => '寄付',
			'meta.diversion' => 'ルーティング',
			'meta.diversionRules' => 'ルーティングルール',
			'meta.diversionCustomGroup' => 'カスタム分流グループ',
			'meta.urlTestCustomGroup' => 'カスタム自動選択',
			'meta.setting' => '設定',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN 同期',
			'meta.lanSyncNotQuitTips' => '同期が完了するまでこの画面を閉じないでください',
			'meta.deviceNoSpace' => 'ディスク容量が不足しています',
			'meta.hideSystemApp' => 'システムアプリを非表示にする',
			'meta.hideAppIcon' => 'アプリのアイコンを非表示にする',
			'meta.hideDockIcon' => 'Dock アイコンを非表示にする',
			'meta.remark' => '備考',
			'meta.remarkExist' => '備考が既に存在します。別の名前を使用してください',
			'meta.remarkCannotEmpty' => '備考を空にすることはできません',
			'meta.remarkTooLong' => '備考は最大32文字です',
			'meta.openDir' => 'ファイルディレクトリを開く',
			'meta.fileChoose' => 'ファイルを選択',
			'meta.filePathCannotEmpty' => 'ファイルパスを空にすることはできません',
			'meta.fileNotExist' => ({required Object p}) => 'ファイルが存在しません: ${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => '無効なファイルタイプ: ${p}',
			'meta.uwpExemption' => 'UWP ネットワーク分離免除',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'プロファイルを取得',
			'meta.addProfile' => 'プロファイルを追加',
			'meta.myProfiles' => 'マイプロファイル',
			'meta.profileEdit' => 'プロファイルを編集',
			'meta.profileEditUrlExist' => 'URL が既に存在します。別の URL を使用してください',
			'meta.profileEditReloadAfterProfileUpdate' => 'プロファイル更新後にリロードする',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'プロファイルの自動更新後にレイテンシテストを開始する',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN が接続されており、[プロファイル更新後にリロードする] がオンになっている必要があります',
			'meta.profileEditTestLatencyAutoRemove' => 'レイテンシテストに失敗したサーバーを自動的に削除する',
			'meta.profileEditTestLatencyAutoRemoveTips' => '最大3回試行します',
			'meta.profileImport' => 'プロファイルファイルをインポート',
			'meta.profileAddUrlOrContent' => 'プロファイルリンクを追加',
			'meta.profileExists' => 'プロファイルが既に存在します。重複して追加しないでください',
			'meta.profileUrlOrContent' => 'プロファイルリンク/内容',
			'meta.profileUrlOrContentHit' => 'プロファイルリンク/内容 [必須] (Clash、V2ray (一括対応)、Stash、Karing、Sing-box、Shadowsocks、サブプロファイルリンクに対応)',
			'meta.profileUrlOrContentCannotEmpty' => 'プロファイルリンクを空にすることはできません',
			'meta.profileAddFailedFormatException' => ({required Object p}) => '形式が正しくありません。修正して再度追加してください: ${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => '追加に失敗しました: ${p}。[UserAgent] を変更して再試行するか、デバイス内蔵のブラウザを使用して設定リンクを開き、ブラウザでダウンロードした設定ファイルをこのアプリにインポートしてください',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => '追加に失敗しました: ${p}。プロキシをオンにするか、現在のプロキシノードを変更して再試行してください',
			'meta.profileAddParseFailed' => 'プロファイルの解析に失敗しました',
			'meta.profileAddNoServerAvaliable' => '利用可能なサーバーがありません。設定リンクまたは設定ファイルが有効であることを確認してください。設定が GitHub の場合は、ページ上の [Raw] ボタンからリンクを取得してください',
			'meta.profileAddWrapSuccess' => '構成が正常に生成されました。[${_root.meta.myProfiles}] に移動して確認してください',
			'diversionRulesKeep' => '[${_root.meta.isp}] の ${_root.meta.diversionRules} を保持する',
			'diversionCustomGroupPreset' => 'プリセット [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => '注意: 有効にされた項目は [${_root.meta.diversionCustomGroup}] および [${_root.meta.diversionRules}] に追加/上書きされます',
			'diversionCustomGroupAddTips' => '注意: 追加後、手動で順序を調整する必要がある場合があります。そうしないと、新しく追加された分流が有効にならない場合があります',
			'rulesetEnableTips' => 'ヒント: オプションをオンにした後、[${_root.meta.diversionRules}] に移動して関連するルールを設定してください。設定しないと有効になりません',
			'ispUserAgentTips' => '[${_root.meta.isp}] は、[HTTP] リクエストの [UserAgent] に基づいて、さまざまなサブスクリプションタイプのデータを送信します',
			'ispDiversionTips' => '[${_root.meta.isp}] はトラフィック分流ルールを提供します。[V2Ray] タイプのサブスクリプションはトラフィック分流ルールをサポートしていません',
			'isp.bind' => '[${_root.meta.isp}] にバインドする',
			'isp.unbind' => ({required Object p}) => 'バインド解除 [${p}]',
			'isp.faq' => ({required Object p}) => 'よくある質問 [${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram [${p}]',
			'isp.follow' => ({required Object p}) => 'フォロー [${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] が無効または期限切れです',
			'permission.camera' => 'カメラ',
			'permission.screen' => '画面収録',
			'permission.appQuery' => 'アプリリストを取得',
			'permission.request' => ({required Object p}) => '[${p}] 権限をオンにする',
			'permission.requestNeed' => ({required Object p}) => '[${p}] 権限をオンにしてください',
			'tls.insecure' => '証明書の検証をスキップする',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'TLS フラグメントを有効にする',
			_ => null,
		} ?? switch (path) {
			'tls.fragmentSize' => 'TLS フラグメントサイズ',
			'tls.fragmentSleep' => 'TLS フラグメントスリープ',
			'tls.mixedCaseSNIEnable' => 'TLS 混合ケース SNI を有効にする',
			'tls.paddingEnable' => 'TLS パディングを有効にする',
			'tls.paddingSize' => 'TLS パディングサイズ',
			'outboundRuleMode.currentSelected' => '現在の選択',
			'outboundRuleMode.urltest' => '自動選択',
			'outboundRuleMode.direct' => '直接接続',
			'outboundRuleMode.block' => 'ブロック',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'プロファイル更新',
			'theme.light' => 'ライト',
			'theme.dark' => 'ダーク',
			'theme.auto' => '自動',
			'downloadProxyStrategy' => 'ダウンロードチャネル',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: プロキシサーバー経由で DNS サーバーに接続し、ドメイン名を解決します\n[${_root.dnsProxyResolveMode.direct}]: DNS サーバーに直接接続し、ドメイン名を解決します\n[${_root.dnsProxyResolveMode.fakeip}]: プロキシサーバーがあなたに代わってドメイン名を解決します。VPN 接続を切断すると、アプリの再起動が必要になる場合があります。[TUN] の着信トラフィックにのみ有効です',
			'routeFinal' => 'final',
			'protocolSniff' => 'プロトコル嗅ぎ取り',
			'sendOrReceiveNotMatch' => ({required Object p}) => '[${p}] を使用してください',
			'turnOffPrivateDirect' => '最初に [プライベートネットワークの直接接続] を有効にしてください',
			'targetConnectFailed' => ({required Object p}) => '[${p}] への接続に失敗しました。デバイスが同じ LAN 内にあることを確認してください',
			'appleTVSync' => '現在のコア構成を Apple TV - Karing に同期する',
			'appleTVSyncDone' => '同期が完了しました。Apple TV - Karing に移動して接続を開始/再起動してください',
			'appleTVRemoveCoreConfig' => 'Apple TV - Karing コア構成を削除する',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - Karing コア構成が削除されました。VPN サービスが切断されました',
			'appleTVUrlInvalid' => 'URL が無効です。Apple TV - Karing を開き、Karing に表示されている QR コードをスキャンしてください',
			'appleTV404' => ({required Object p}) => 'AppleTV: Karing[${p}] にはこの機能がありません。アップグレードして再試行してください',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'コアのメジャーバージョンが一致しません。[${p}] にアップグレードして再試行してください',
			'remoteProfileEditConfirm' => 'プロファイル更新後、ノードの変更は復元されます。続行しますか？',
			'mustBeValidHttpsURL' => '有効な https URL である必要があります',
			'fileNotExistReinstall' => ({required Object p}) => 'ファイル [${p}] が見つかりません。再インストールしてください',
			'noNetworkConnect' => 'インターネット接続がありません',
			'sudoPassword' => 'sudo パスワード (TUN モードで必要)',
			'turnOffNetworkBeforeInstall' => '更新プログラムをインストールする前に [機内モード] に切り替えることをお勧めします',
			'latencyTestResolveIP' => '手動チェック時に、出力 IP を解決する',
			'latencyTestConcurrency' => '並行性',
			'edgeRuntimeNotInstalled' => '現在のデバイスに Edge WebView2 ランタイムがインストールされていないため、ページを表示できません。Edge WebView2 ランタイム (x64) をダウンロードしてインストールし、アプリを再起動してからもう一度お試しください。',
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
