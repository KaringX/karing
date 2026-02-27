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
class TranslationsTr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenTr AboutScreen = _TranslationsAboutScreenTr._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenTr BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenTr._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenTr DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenTr._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenTr DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenTr._(_root);
	@override late final _TranslationsDiversionRulesScreenTr DiversionRulesScreen = _TranslationsDiversionRulesScreenTr._(_root);
	@override late final _TranslationsDnsSettingsScreenTr DnsSettingsScreen = _TranslationsDnsSettingsScreenTr._(_root);
	@override late final _TranslationsFileContentViewerScreenTr FileContentViewerScreen = _TranslationsFileContentViewerScreenTr._(_root);
	@override late final _TranslationsHomeScreenTr HomeScreen = _TranslationsHomeScreenTr._(_root);
	@override late final _TranslationsLaunchFailedScreenTr LaunchFailedScreen = _TranslationsLaunchFailedScreenTr._(_root);
	@override late final _TranslationsMyProfilesMergeScreenTr MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenTr._(_root);
	@override late final _TranslationsNetCheckScreenTr NetCheckScreen = _TranslationsNetCheckScreenTr._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenTr NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenTr._(_root);
	@override late final _TranslationsNetConnectionsScreenTr NetConnectionsScreen = _TranslationsNetConnectionsScreenTr._(_root);
	@override late final _TranslationsPerAppAndroidScreenTr PerAppAndroidScreen = _TranslationsPerAppAndroidScreenTr._(_root);
	@override late final _TranslationsRegionSettingsScreenTr RegionSettingsScreen = _TranslationsRegionSettingsScreenTr._(_root);
	@override late final _TranslationsServerSelectScreenTr ServerSelectScreen = _TranslationsServerSelectScreenTr._(_root);
	@override late final _TranslationsSettingsScreenTr SettingsScreen = _TranslationsSettingsScreenTr._(_root);
	@override late final _TranslationsUserAgreementScreenTr UserAgreementScreen = _TranslationsUserAgreementScreenTr._(_root);
	@override late final _TranslationsVersionUpdateScreenTr VersionUpdateScreen = _TranslationsVersionUpdateScreenTr._(_root);
	@override late final _TranslationsCommonWidgetTr CommonWidget = _TranslationsCommonWidgetTr._(_root);
	@override late final _TranslationsMainTr main = _TranslationsMainTr._(_root);
	@override late final _TranslationsMetaTr meta = _TranslationsMetaTr._(_root);
	@override String get diversionRulesKeep => '[${_root.meta.isp}] ${_root.meta.diversionRules} Koru';
	@override String get diversionCustomGroupPreset => 'Ön ayar [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Not: Etkinleştirilen öğeler [${_root.meta.diversionCustomGroup}] ve [${_root.meta.diversionRules}] bölümlerine eklenecek/üzerine yazılacaktır';
	@override String get diversionCustomGroupAddTips => 'Not: Ekledikten sonra sırayı manuel olarak ayarlamanız gerekebilir, aksi takdirde yeni eklenen yönlendirme etkili olmayabilir';
	@override String get rulesetEnableTips => 'İpucu: Seçenekleri açtıktan sonra ilgili kuralları ayarlamak için lütfen [${_root.meta.diversionRules}] bölümüne gidin, aksi takdirde etkili olmayacaktır';
	@override String get ispUserAgentTips => '[${_root.meta.isp}], [HTTP] isteğindeki [UserAgent] değerine göre farklı abonelik türlerinde veriler gönderecektir';
	@override String get ispDiversionTips => '[${_root.meta.isp}] trafik yönlendirme kuralları sağlar; [V2Ray] türü abonelikler trafik yönlendirme kurallarını desteklemez';
	@override late final _TranslationsIspTr isp = _TranslationsIspTr._(_root);
	@override late final _TranslationsPermissionTr permission = _TranslationsPermissionTr._(_root);
	@override late final _TranslationsTlsTr tls = _TranslationsTlsTr._(_root);
	@override late final _TranslationsOutboundRuleModeTr outboundRuleMode = _TranslationsOutboundRuleModeTr._(_root);
	@override late final _TranslationsDnsProxyResolveModeTr dnsProxyResolveMode = _TranslationsDnsProxyResolveModeTr._(_root);
	@override late final _TranslationsProxyStrategyTr proxyStrategy = _TranslationsProxyStrategyTr._(_root);
	@override late final _TranslationsReloadReasonTr reloadReason = _TranslationsReloadReasonTr._(_root);
	@override late final _TranslationsThemeTr theme = _TranslationsThemeTr._(_root);
	@override String get downloadProxyStrategy => 'İndirme Kanalı';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: Alan adını çözümlemek için proxy sunucusu üzerinden DNS sunucusuna bağlanın\n[${_root.dnsProxyResolveMode.direct}]: Alan adını çözümlemek için doğrudan DNS sunucusuna bağlanın\n[${_root.dnsProxyResolveMode.fakeip}]: Proxy sunucusu sizin adınıza alan adını çözümler; VPN bağlantısını keserseniz uygulamanızın yeniden başlatılması gerekebilir; yalnızca [TUN] gelen trafiği için geçerlidir';
	@override String get routeFinal => 'varsayılan';
	@override String get protocolSniff => 'Protokol Koklama';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Lütfen [${p}] kullanın';
	@override String get turnOffPrivateDirect => 'Lütfen önce [Özel ağ doğrudan bağlantısı] seçeneğini açın';
	@override String targetConnectFailed({required Object p}) => '[${p}] bağlantısı başarısız oldu. Lütfen cihazların aynı LAN\'da olduğundan emin olun';
	@override String get appleTVSync => 'Mevcut çekirdek yapılandırmasını Apple TV - Karing ile senkronize et';
	@override String get appleTVSyncDone => 'Senkronizasyon tamamlandı. Bağlantıyı başlatmak/yeniden başlatmak için lütfen Apple TV - Karing\'e gidin';
	@override String get appleTVRemoveCoreConfig => 'Apple TV - Karing Çekirdek Yapılandırmasını Sil';
	@override String get appleTVRemoveCoreConfigDone => 'Apple TV - Karing\'in Çekirdek Yapılandırması silindi; VPN hizmeti bağlantısı kesildi';
	@override String get appleTVUrlInvalid => 'Geçersiz URL, lütfen Apple TV - Karing\'i açın ve Karing tarafından görüntülenen QR kodunu tarayın';
	@override String appleTV404({required Object p}) => 'AppleTV: Karing[${p}] bu işleve sahip değil, lütfen yükseltin ve tekrar deneyin';
	@override String appleCoreVersionNotMatch({required Object p}) => 'Çekirdek ana sürümü uyuşmuyor, lütfen [${p}] sürümüne yükseltin ve tekrar deneyin';
	@override String get remoteProfileEditConfirm => 'Profil güncellendikten sonra düğüm değişiklikleri geri yüklenecektir. Devam edilsin mi?';
	@override String get mustBeValidHttpsURL => 'Geçerli bir https URL\'si olmalıdır';
	@override String fileNotExistReinstall({required Object p}) => 'Dosya eksik [${p}], lütfen yeniden yükleyin';
	@override String get noNetworkConnect => 'İnternet bağlantısı yok';
	@override String get sudoPassword => 'sudo şifresi (TUN modu için gereklidir)';
	@override String get turnOffNetworkBeforeInstall => 'Güncellemeyi yüklemeden önce [Uçak Modu]na geçmeniz önerilir';
	@override String get latencyTestResolveIP => 'Manuel olarak kontrol ederken çıkış IP\'sini çözümle';
	@override String get latencyTestConcurrency => 'Eşzamanlılık';
	@override String get edgeRuntimeNotInstalled => 'Mevcut cihazda Edge WebView2 çalışma zamanı yüklü değil, bu nedenle sayfa görüntülenemiyor. Lütfen Edge WebView2 çalışma zamanını (x64) indirip yükleyin, uygulamayı yeniden başlatın ve tekrar deneyin.';
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
class _TranslationsAboutScreenTr implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Kurulum Referansı';
	@override String get installTime => 'Kurulum Zamanı';
	@override String get versionChannel => 'Otomatik Güncelleme Kanalı';
	@override String get updateWhenConnected => 'Bağlantı kurulduktan sonra güncellemeleri kontrol edin';
	@override String get autoDownloadPkg => 'Güncelleme Paketlerini Otomatik İndir';
	@override String get disableAppImproveData => 'Uygulama İyileştirme Verileri';
	@override String get disableUAReportTip => '[${_root.AboutScreen.disableAppImproveData}] özelliğinin etkinleştirilmesi, ürün kararlılığını ve kullanılabilirliğini iyileştirmemize yardımcı olur; herhangi bir kişisel gizlilik verisi toplamıyoruz. Devre dışı bırakılması, uygulamanın herhangi bir veri toplamasını engeller.';
	@override String get devOptions => 'Geliştirici Seçenekleri';
	@override String get enableDebugLog => 'Hata Ayıklama Günlüğünü Etkinleştir';
	@override String get viewFilsContent => 'Dosyaları Görüntüle';
	@override String get enablePprof => 'pprof\'u Etkinleştir';
	@override String get pprofPanel => 'pprof Paneli';
	@override String get allowRemoteAccessPprof => '${_root.AboutScreen.pprofPanel} paneline uzaktan erişime izin ver';
	@override String get allowRemoteAccessHtmlBoard => '${_root.SettingsScreen.htmlBoard} paneline uzaktan erişime izin ver';
	@override String get useOriginalSBProfile => 'Orijinal sing-box Profilini kullan';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenTr implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Sunucu URL\'si';
	@override String get webdavRequired => 'Boş bırakılamaz';
	@override String get webdavLoginFailed => 'Giriş başarısız:';
	@override String get webdavListFailed => 'Dosya listesi alınamadı:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenTr implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'Geçersiz [Alan Adı]: ${p}';
	@override String invalidIpCidr({required Object p}) => 'Geçersiz [IP Cidr]: ${p}';
	@override String invalid({required Object p0, required Object p}) => 'Geçersiz [${p0}]: ${p}';
	@override String invalidRuleSet({required Object p}) => 'Geçersiz [Kural Kümesi]: ${p}, URL geçerli bir https URL\'si ve .srs/.json dosya uzantısına sahip bir ikili dosya olmalıdır';
	@override String invalidRuleSetBuildIn({required Object p}) => 'Geçersiz [Yerleşik Kural Kümesi]: ${p}, format geosite:xxx veya geoip:xxx veya acl:xxx olmalıdır ve xxx geçerli bir kural adı olmalıdır';
	@override String invalidPackageId({required Object p}) => 'Geçersiz [${_root.meta.appPackage}]: ${p}';
	@override String get setDiversionRule => 'İpucu: Kaydettikten sonra, ilgili kuralları ayarlamak için lütfen [${_root.meta.diversionRules}] bölümüne gidin, aksi takdirde etkili olmayacaktır';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenTr implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yönlendirme Kuralı Tespiti';
	@override String get rule => 'Kural:';
	@override String get outbound => 'Proxy Sunucusu:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenTr implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'İpucu: Kuralları yukarıdan aşağıya eşleştirmeyi deneyin. Hiçbir kural eşleşmezse [varsayılan] kullanın';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenTr implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'Sağlayıcı boş bırakılamaz';
	@override String get urlCanNotEmpty => 'URL boş bırakılamaz';
	@override String error({required Object p}) => 'Desteklenmeyen tür: ${p}';
	@override String get dnsDesc => 'Gecikme verilerinin ilk sütunu doğrudan bağlantı sorgu gecikmesidir;\nİkinci sütun: [[Proxy Trafiği] DNS\'i proxy sunucusu üzerinden çöz] seçeneğini açın: gecikme verileri, mevcut proxy sunucusu üzerinden iletilen sorgu gecikmesidir; kapalıysa: gecikme verileri doğrudan bağlantı sorgu gecikmesidir';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenTr implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dosya İçeriği Görüntüleyici';
	@override String get clearFileContent => 'Dosya içeriğini temizlemek istediğinizden emin misiniz?';
	@override String get clearFileContentTips => 'Profil dosyası içeriğini temizlemek istediğinizden emin misiniz? Profil dosyasının temizlenmesi veri kaybına veya anormal uygulama işlevlerine neden olabilir, lütfen dikkatli olun';
}

// Path: HomeScreen
class _TranslationsHomeScreenTr implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'Lütfen bir Sunucu Seçin';
	@override String get invalidServer => 'geçersiz, lütfen tekrar seçin';
	@override String get disabledServer => 'devre dışı, lütfen tekrar seçin';
	@override String get expiredServer => 'Kullanılabilir sunucu yok, profillerin süresi dolmuş veya devre dışı bırakılmış olabilir';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}';
	@override String get myLinkEmpty => 'Lütfen kullanmadan önce [Kısayol Bağlantısı] kurulumunu yapın';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Çok fazla proxy sunucusu [${p}>${p1}] var ve sistem bellek sınırlamaları nedeniyle bağlantı başarısız olabilir';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Çok fazla proxy sunucusu [${p}>${p1}] olması yavaş veya erişilemeyen bağlantılara neden olabilir';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenTr implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'Uygulama başlatılamadı [Geçersiz işlem adı], lütfen uygulamayı ayrı bir dizine yeniden yükleyin';
	@override String get invalidProfile => 'Uygulama başlatılamadı [Profile erişilemedi], lütfen uygulamayı yeniden yükleyin';
	@override String get invalidVersion => 'Uygulama başlatılamadı [Geçersiz sürüm], lütfen uygulamayı yeniden yükleyin';
	@override String get systemVersionLow => 'Uygulama başlatılamadı [sistem sürümü çok düşük]';
	@override String get invalidInstallPath => 'Kurulum yolu geçersiz, lütfen geçerli bir yola yeniden yükleyin';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenTr implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Profilleri Birleştir';
	@override String get profilesMergeTarget => 'Hedef Profil';
	@override String get profilesMergeSource => 'Kaynak Profiller';
	@override String get profilesMergeTips => 'İpucu: Kaynak profillerin yönlendirmesi atılacaktır';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenTr implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ağ Kontrolü';
	@override String get warn => 'Not: Ağ ortamı ve yönlendirme kurallarının etkisi nedeniyle, test sonuçları gerçek sonuçlarla tamamen eşdeğer değildir.';
	@override String get invalidDomain => 'Geçersiz Alan Adı';
	@override String get connectivity => 'Ağ Bağlantısı';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'IPv4 Bağlantı testi [${p}] başarısız oldu';
	@override String get connectivityTestIpv4Ok => 'IPv4 bağlantısı başarılı';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'IPv6 Bağlantı testi [${p}] başarısız oldu, ağınız IPv6\'yı desteklemiyor olabilir';
	@override String get connectivityTestIpv6Ok => 'IPv6 bağlantısı başarılı';
	@override String get connectivityTestOk => 'Ağ internete bağlı';
	@override String get connectivityTestFailed => 'Ağ henüz internete bağlı değil';
	@override String get remoteRulesetsDownloadOk => 'Hepsi başarıyla indirildi';
	@override String get remoteRulesetsDownloadNotOk => 'İndiriliyor veya indirme başarısız oldu';
	@override String get outbound => 'Proxy Sunucusu';
	@override String outboundOk({required Object p}) => '[${p}] bağlantısı başarılı';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] bağlantısı başarısız oldu\nHata: [${p2}]';
	@override String get dnsServer => 'DNS Sunucusu';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS sorgusu başarılı\nDNS Kuralı: [${p2}]\nGecikme: [${p3} ms]\nAdres: [${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS sorgusu başarılı\nDNS Kuralı: [${p2}]\nHata: [${p3}]';
	@override String get host => 'HTTP Bağlantısı';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nYönlendirme Kuralı: [${p2}]\nProxy Sunucusu: [${p3}]';
	@override String get hostConnectionOk => 'bağlantı başarılı';
	@override String hostConnectionFailed({required Object p}) => 'bağlantı başarısız: [${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenTr implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Alan Adı/IP';
	@override String get app => 'Uygulama';
	@override String get rule => 'Kural';
	@override String get chain => 'Giden';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenTr implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'CSV formatına kopyalandı';
	@override String get selectType => 'Yönlendirme Türünü Seçin';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenTr implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uygulama Başına Proxy';
	@override String get whiteListMode => 'Beyaz Liste Modu';
	@override String get whiteListModeTip => 'Etkinleştirildiğinde: yalnızca işaretli olan uygulamalar proxy üzerinden geçer; etkinleştirilmediğinde: yalnızca işaretli olmayan uygulamalar proxy üzerinden geçer';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenTr implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ülke veya Bölge';
	@override String get Regions => 'İpucu: Lütfen mevcut ülkenizi veya bölgenizi doğru ayarlayın, aksi takdirde ağ yönlendirme sorunlarına neden olabilir';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenTr implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sunucu Seç';
	@override String get autoSelectServer => 'En düşük gecikmeye sahip sunucuyu otomatik seç';
	@override String get recentUse => 'Son Kullanılanlar';
	@override String get myFav => 'Favorilerim';
	@override String selectLocal({required Object p}) => 'Seçilen sunucu yerel bir adrestir ve düzgün çalışmayabilir: ${p}';
	@override String get selectRequireEnableIPv6 => 'Seçilen sunucu bir IPv6 adresidir ve [IPv6\'yı Etkinleştir] gerektirir';
	@override String get selectDisabled => 'Bu sunucu devre dışı bırakıldı';
	@override String get error404 => 'Gecikme tespiti bir hatayla karşılaştı, lütfen aynı içeriğe sahip bir yapılandırma olup olmadığını kontrol edin';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenTr implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Trafik Bilgisi Al';
	@override String get tutorial => 'Eğitici';
	@override String get commonlyUsedRulesets => 'Sık Kullanılan Kural Kümesi';
	@override String get htmlBoard => 'Çevrimiçi Panel';
	@override String get dnsLeakDetection => 'DNS Sızıntısı Tespiti';
	@override String get proxyLeakDetection => 'Proxy Sızıntısı Tespiti';
	@override String get speedTest => 'Hız Testi';
	@override String get rulesetDirectDownlad => 'Kural Kümesi Doğrudan İndirme';
	@override String get hideUnusedDiversionGroup => 'Kullanılmayan Yönlendirme Kurallarını Gizle';
	@override String get disableISPDiversionGroup => '[${_root.meta.isp}] ${_root.meta.diversionRules} Devre Dışı Bırak';
	@override String get portSettingRule => 'Kural Tabanlı';
	@override String get portSettingDirectAll => 'Hepsini Doğrudan Bağla';
	@override String get portSettingProxyAll => 'Hepsini Proxy ile Bağla';
	@override String get portSettingControl => 'Kontrol ve Senkronizasyon';
	@override String get portSettingCluster => 'Küme Servisi';
	@override String get modifyPort => 'Bağlantı Noktasını Değiştir';
	@override String get modifyPortOccupied => 'Bağlantı noktası dolu, lütfen başka bir bağlantı noktası kullanın';
	@override String get ipStrategyTips => 'Etkinleştirmeden önce lütfen ağınızın IPv6\'yı desteklediğini onaylayın, aksi takdirde bazı trafiklere normal şekilde erişilemez.';
	@override String get tunAppendHttpProxy => 'VPN\'e HTTP Proxy Ekle';
	@override String get tunAppendHttpProxyTips => 'Bazı uygulamalar sanal NIC aygıtını atlayacak ve doğrudan HTTP proxy\'sine bağlanacaktır';
	@override String get tunAllowBypassHttpProxyDomain => 'HTTP proxy\'sini atlamasına izin verilen alan adları';
	@override String get dnsEnableRule => 'DNS Yönlendirme kurallarını etkinleştir';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] Çözümleme Kanalı';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] ECS\'yi Etkinleştir';
	@override String get dnsTestDomain => 'Test Alan Adı';
	@override String get dnsTestDomainInvalid => 'Geçersiz Alan Adı';
	@override String get dnsTypeOutbound => 'Proxy Sunucusu';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'DNS Sunucusu';
	@override String get dnsEnableRuleTips => 'Etkinleştirildikten sonra alan adı, yönlendirme kurallarına göre çözümleme için ilgili DNS sunucusunu seçecektir';
	@override String get dnsEnableFakeIpTips => 'FakeIP\'yi etkinleştirdikten sonra, VPN bağlantısını keserseniz uygulamanızın yeniden başlatılması gerekebilir; bu özellik [TUN modu] etkinleştirilmesini gerektirir';
	@override String get dnsTypeOutboundTips => '[${_root.SettingsScreen.dnsTypeOutbound}] için alan adı çözümlemesi';
	@override String get dnsTypeDirectTips => '[${_root.meta.trafficDirect}] için alan adı çözümlemesi';
	@override String get dnsTypeProxyTips => '[${_root.meta.trafficProxy}] için alan adı çözümlemesi';
	@override String get dnsTypeResolverTips => '[${_root.SettingsScreen.dnsTypeResolver}] için alan adı çözümlemesi';
	@override String get dnsAutoSetServer => 'Otomatik Sunucu Kurulumu';
	@override String get dnsResetServer => 'Sunucuyu Sıfırla';
	@override String get inboundDomainResolve => 'Gelen Alan Adlarını Çözümle';
	@override String get privateDirect => 'Özel Ağ Doğrudan Bağlantısı';
	@override String inboundDomainResolveTips({required Object p}) => 'Yönlendirme kurallarıyla yapılandırılmamış bazı alan adlarının, IP tabanlı yönlendirme kurallarına ulaşabilmesi için çözümlenmesi gerekir; bu özellik proxy bağlantı noktasına [${p}] gelen istekleri etkiler';
	@override String get useRomoteRes => 'Uzak Kaynakları Kullan';
	@override String get autoAppendRegion => 'Temel kuralları otomatik ekle';
	@override String get autoSelect => 'Otomatik Seç';
	@override String get autoSelectServerIgnorePerProxyServer => '[Ön/Zincir] Proxy Sunucularını Yoksay';
	@override String get autoSelectServerInterval => 'Gecikme Kontrolü Aralığı';
	@override String get autoSelectSelectedHealthCheckInterval => 'Mevcut sunucu sağlık kontrolü aralığı';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Ağ Değiştiğinde Gecikmeyi Yeniden Kontrol Et';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Manuel Gecikme Kontrolünden Sonra Mevcut Sunucuyu Güncelle';
	@override String get autoSelectServerIntervalTips => 'Zaman aralığı ne kadar kısa olursa, sunucu gecikme verileri o kadar zamanında güncellenir, bu da daha fazla kaynak işgal eder ve daha fazla güç tüketir';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Kontrol başarısız olursa sunucu değiştirilir; sunucu değiştirilirken kullanılabilir sunucu bulunamazsa grup gecikmeyi yeniden kontrol eder';
	@override String get autoSelectServerFavFirst => 'Öncelikli Kullan [Favorilerim]';
	@override String get autoSelectServerFavFirstTips => '[Favorilerim] listesi boş değilse, [Favorilerim] içindeki sunucuları kullan';
	@override String get autoSelectServerFilter => 'Geçersiz Sunucuları Filtrele';
	@override String autoSelectServerFilterTips({required Object p}) => 'Başarısız olan sunucu gecikme kontrolleri filtrelenecektir; filtrelemeden sonra kullanılabilir sunucu kalmazsa bunun yerine ilk [${p}] sunucu kullanılacaktır';
	@override String get autoSelectServerLimitedNum => 'Maksimum sunucu sayısı';
	@override String get autoSelectServerLimitedNumTips => 'Bu sayıyı aşan sunucular filtrelenecektir';
	@override String get numInvalid => 'Geçersiz numara';
	@override String get hideInvalidServer => 'Geçersiz Sunucuları Gizle';
	@override String get sortServer => 'Sunucu Sıralaması';
	@override String get sortServerTips => 'Gecikmeye göre düşükten yükseğe sırala';
	@override String get selectServerHideRecommand => '[Önerilen] öğesini gizle';
	@override String get selectServerHideRecent => '[Son Kullanılanlar] öğesini gizle';
	@override String get selectServerHideFav => '[Favorilerim] öğesini gizle';
	@override String get homeScreen => 'Ana Ekran';
	@override String get theme => 'Tema';
	@override String get widgetsAlpha => 'Widget Şeffaflığı';
	@override String get widgetsEmpty => 'Kullanılabilir Widget Yok';
	@override String get backgroundImage => 'Arka Plan Resmi';
	@override String get myLink => 'Kısayol Bağlantısı';
	@override String get autoConnectAfterLaunch => 'Başlattıktan sonra Otomatik Bağlan';
	@override String get autoConnectAtBoot => 'Sistem Başladıktan sonra Otomatik Bağlan';
	@override String get autoConnectAtBootTips => 'Sistem desteği gereklidir; bazı sistemler [otomatik başlatma] özelliğinin etkinleştirilmesini de gerektirebilir.';
	@override String get hideAfterLaunch => 'Başlattıktan sonra pencereyi gizle';
	@override String get autoSetSystemProxy => 'Bağlandığında Otomatik Sistem Proxy Ayarla';
	@override String get bypassSystemProxy => 'Sistem proxy\'sini atlamasına izin verilen alan adları';
	@override String get disconnectWhenQuit => 'Uygulamadan Çıkıldığında Bağlantıyı Kes';
	@override String get autoAddToFirewall => 'Güvenlik Duvarı Kurallarını Otomatik Ekle';
	@override String get excludeFromRecent => '[Son Görevler] listesinden gizle';
	@override String get wakeLock => 'Uyanık Kalma Kilidi';
	@override String get hideVpn => 'VPN Simgesini Gizle';
	@override String get hideVpnTips => 'IPv6\'nın etkinleştirilmesi bu işlevin başarısız olmasına neden olur';
	@override String get allowBypass => 'Uygulamaların VPN\'i Atlamasına İzin Ver';
	@override String get importSuccess => 'İçe Aktarma Başarılı';
	@override String get rewriteConfirm => 'Bu dosya mevcut yerel yapılandırmanın üzerine yazılacaktır. Devam etmek istiyor musunuz?';
	@override String get mergePerapp => 'Yerel [${_root.PerAppAndroidScreen.title}] listelerini birleştir';
	@override String get networkShare => 'Ağ Paylaşımı';
	@override String get frontProxy => 'Ön/Zincir Proxy';
	@override String frontProxyTips({required Object p}) => 'Veri -> Ön/Zincir Proxy Sunucusu [Birden Çok Proxy Sunucusu: Yukarıdan Aşağıya] -> Proxy Sunucusu [${p}] -> Hedef Sunucu';
	@override String get allowOtherHostsConnect => 'Diğerlerinin Bağlanmasına İzin Ver';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}';
	@override String get allowOtherHostsConnectWarn => 'Sistem kısıtlamaları nedeniyle, bu etkinleştirildikten sonra bu cihazdaki ağa erişmek için http kullanan uygulamalar ağa düzgün şekilde bağlanamayabilir.';
	@override String get tunAutoRoute => 'Otomatik Rota';
	@override String get tunAutoRedirect => 'Otomatik Yönlendirme';
	@override String get tunStrictRoute => 'Sıkı Rota';
	@override String get tunStrictRouteTips => 'Paylaşımı açtıktan sonra başkaları bu cihaza erişemiyorsa lütfen bu anahtarı kapatmayı deneyin';
	@override String get loopbackAddress => 'Geri Döngü Adresi';
	@override String get enableCluster => 'Socks/Http Proxy Kümesini Etkinleştir';
	@override String get clusterAllowOtherHostsConnect => 'Başkalarının Kümeye Bağlanmasına İzin Ver';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Proxy Kümesi Kimlik Doğrulaması';
	@override String get tunMode => 'TUN Modu';
	@override String get tuni4Address => 'IP adresi';
	@override String get tunModeTips => 'TUN modu sistemin tüm trafiğini üstlenecektir [Bu modda sistem proxy\'sini devre dışı bırakabilirsiniz]';
	@override String get tunModeRunAsAdmin => 'TUN modu sistem yöneticisi izinleri gerektirir, lütfen uygulamayı yönetici olarak yeniden başlatın';
	@override String get tunStack => 'Ağ Yığını';
	@override String get tunHijackTips => 'Kapattıktan sonra TUN\'dan gelen DNS istekleri doğrudan ilgili DNS sunucusuna iletilecektir';
	@override String get launchAtStartup => 'Başlangıçta Çalıştır';
	@override String get quitWhenSwitchSystemUser => 'Sistem Kullanıcısı Değiştiğinde Uygulamadan Çık';
	@override String get handleScheme => 'Sistem Şeması Çağrısı';
	@override String get portableMode => 'Taşınabilir Mod';
	@override String get portableModeDisableTips => 'Taşınabilir moddan çıkmanız gerekiyorsa lütfen [karing]\'den çıkın ve [karing.exe] ile aynı dizindeki [profiles] klasörünü manuel olarak silin';
	@override String get accessibility => 'Erişilebilirlik';
	@override String get handleKaringScheme => 'karing:// Çağrısını Yönet';
	@override String get handleClashScheme => 'clash:// Çağrısını Yönet';
	@override String get handleSingboxScheme => 'sing-box:// Çağrısını Yönet';
	@override String get alwayOnVPN => 'Her Zaman Açık Bağlantı';
	@override String get disconnectAfterSleep => 'Sistem uykusundan sonra bağlantıyı kes';
	@override String get removeSystemVPNConfig => 'Sistem VPN yapılandırmasını sil';
	@override String get timeConnectOrDisconnect => 'Planlanmış bağlantı/kesilme';
	@override String get timeConnectOrDisconnectTips => 'Etkili olması için VPN bağlı olmalıdır; açıldıktan sonra [Otomatik Uyku] devre dışı bırakılacaktır';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Bağlantı/kesilme aralığı ${p} dakikadan az olamaz';
	@override String get disableFontScaler => 'Yazı tipi ölçeklendirmeyi devre dışı bırak (Yeniden başlatma gerekir)';
	@override String get autoOrientation => 'Ekranla birlikte döndür';
	@override String get restartTakesEffect => 'Yeniden başlatma gerekir';
	@override String get reconnectTakesEffect => 'Yeniden bağlanma gerekir';
	@override String get resetSettings => 'Ayarları Sıfırla';
	@override String get cleanCache => 'Önbelleği Temizle';
	@override String get cleanCacheDone => 'Temizleme tamamlandı';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => '${p} sürümüne güncelle';
	@override String get follow => 'Bizi Takip Edin';
	@override String get contactUs => 'Bize Ulaşın';
	@override String get supportUs => 'Bizi Destekleyin';
	@override String get rateInApp => 'Bizi Oylayın';
	@override String get rateInAppStore => 'AppStore\'da Bizi Oylayın';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenTr implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Gizliliğiniz Önce Gelir';
	@override String get agreeAndContinue => 'Kabul Et ve Devam Et';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenTr implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'Yeni sürüm [${p}] hazır';
	@override String get update => 'Güncellemek İçin Yeniden Başlat';
	@override String get cancel => 'Şimdi Değil';
}

// Path: CommonWidget
class _TranslationsCommonWidgetTr implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => '[Her Zaman Açık VPN] açıksa lütfen kapatın ve tekrar bağlanmayı deneyin';
	@override String get resetPort => 'Lütfen bağlantı noktasını kullanılabilir başka bir bağlantı noktasına değiştirin veya bağlantı noktasını işgal eden uygulamayı kapatın.';
}

// Path: main
class _TranslationsMainTr implements TranslationsMainEn {
	_TranslationsMainTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayTr tray = _TranslationsMainTrayTr._(_root);
}

// Path: meta
class _TranslationsMetaTr implements TranslationsMetaEn {
	_TranslationsMetaTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Etkinleştir';
	@override String get disable => 'Devre Dışı Bırak';
	@override String get bydefault => 'Varsayılan';
	@override String get filter => 'Filtre';
	@override String get filterMethod => 'Filtreleme Yöntemi';
	@override String get include => 'Dahil Et';
	@override String get exclude => 'Hariç Tut';
	@override String get all => 'Hepsi';
	@override String get prefer => 'Tercih Et';
	@override String get only => 'Sadece';
	@override String get open => 'Aç';
	@override String get close => 'Kapat';
	@override String get quit => 'Çık';
	@override String get add => 'Ekle';
	@override String get addSuccess => 'Başarıyla eklendi';
	@override String addFailed({required Object p}) => 'Ekleme başarısız: ${p}';
	@override String get remove => 'Kaldır';
	@override String get removeConfirm => 'Silmek istediğinizden emin misiniz?';
	@override String get edit => 'Düzenle';
	@override String get view => 'Görüntüle';
	@override String get more => 'Daha Fazla';
	@override String get tips => 'Bilgi';
	@override String get copy => 'Kopyala';
	@override String get paste => 'Yapıştır';
	@override String get cut => 'Kesmek';
	@override String get save => 'Kaydet';
	@override String get ok => 'Tamam';
	@override String get cancel => 'İptal';
	@override String get feedback => 'Geri Bildirim';
	@override String get feedbackContent => 'Geri Bildirim İçeriği';
	@override String get feedbackContentHit => 'Gerekli, en fazla 500 karakter';
	@override String get feedbackContentCannotEmpty => 'Geri bildirim içeriği boş olamaz';
	@override String get faq => 'SSS';
	@override String get htmlTools => 'HTML Araç Takımı';
	@override String get download => 'İndir';
	@override String get upload => 'Yükle';
	@override String get downloadSpeed => 'İndirme Hızı';
	@override String get uploadSpeed => 'Yükleme Hızı';
	@override String get loading => 'Yükleniyor...';
	@override String get convert => 'Dönüştür';
	@override String get check => 'Kontrol Et';
	@override String get detect => 'Tespit Et';
	@override String get cache => 'Önbellek';
	@override String get days => 'Gün';
	@override String get hours => 'Saat';
	@override String get minutes => 'Dakika';
	@override String get seconds => 'Saniye';
	@override String get milliseconds => 'Milisaniye';
	@override String get tolerance => 'Tolerans';
	@override String get dateTimePeriod => 'Zaman aralığı';
	@override String get protocol => 'Protokol';
	@override String get search => 'Ara';
	@override String get custom => 'Özel';
	@override String get inbound => 'Gelen';
	@override String get outbound => 'Giden';
	@override String get destination => 'Hedef';
	@override String get outletIpByCurrentSelected => 'Çıkış IP\'si';
	@override String get outletIpByDirect => 'IP: ${_root.outboundRuleMode.direct}';
	@override String get connect => 'Bağlan';
	@override String get disconnect => 'Bağlantıyı Kes';
	@override String get reconnect => 'Yeniden Bağlan';
	@override String get connected => 'Bağlandı';
	@override String get disconnected => 'Bağlantı Kesildi';
	@override String get connecting => 'Bağlanıyor';
	@override String get connectTimeout => 'Bağlantı Zaman Aşımı';
	@override String get timeout => 'Zaman Aşımı';
	@override String get timeoutDuration => 'Zaman Aşımı Süresi';
	@override String get runDuration => 'Çalışma Süresi';
	@override String get latency => 'Gecikme';
	@override String get latencyTest => 'Gecikme Kontrolleri';
	@override String get language => 'Dil';
	@override String get next => 'Sonraki';
	@override String get done => 'Bitti';
	@override String get apply => 'Uygula';
	@override String get refresh => 'Yenile';
	@override String get retry => 'Tekrar dene?';
	@override String get update => 'Güncelle';
	@override String get updateInterval => 'Güncelleme aralığı';
	@override String get updateInterval5mTips => 'Minimum: 5dk';
	@override String updateFailed({required Object p}) => 'Güncelleme başarısız: ${p}';
	@override String get samplingUnit => 'Örnekleme Zaman Birimi';
	@override String get queryResultCount => 'Sorgu Sonuç Sayısı';
	@override String queryLimit({required Object p}) => '${p} veriye kadar görüntüle';
	@override String get none => 'Hiçbiri';
	@override String get start => 'Başlat';
	@override String get pause => 'Duraklat';
	@override String get reset => 'Sıfırla';
	@override String get submit => 'Gönder';
	@override String get user => 'Kullanıcı';
	@override String get account => 'Hesap';
	@override String get password => 'Şifre';
	@override String get required => 'Gerekli';
	@override String get type => 'Tür';
	@override String get path => 'Yol';
	@override String get local => 'Yerel';
	@override String get remote => 'Uzak';
	@override String get other => 'Diğer';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'Geçersiz URL';
	@override String get urlCannotEmpty => 'Bağlantı boş olamaz';
	@override String get urlTooLong => 'URL çok uzun (>8182)';
	@override String get copyUrl => 'Bağlantıyı Kopyala';
	@override String get openUrl => 'Bağlantıyı Aç';
	@override String get shareUrl => 'Bağlantıyı Paylaş';
	@override String get speedTestUrl => 'Hız Testi URL\'si';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'Statik IP';
	@override String get staticIPTips => '[TUN HijackDNS] veya [${_root.SettingsScreen.inboundDomainResolve}] etkinleştirmeniz gerekir.';
	@override String get isp => 'VPN Sağlayıcı';
	@override String get domainSuffix => 'Alan Adı Son eki';
	@override String get domain => 'Alan Adı';
	@override String get domainKeyword => 'Alan Adı Anahtar Kelimesi';
	@override String get domainRegex => 'Alan Adı Regex';
	@override String get ip => 'IP Adresi';
	@override String get port => 'Bağlantı Noktası';
	@override String get portRange => 'Bağlantı noktası aralığı';
	@override String get appPackage => 'Uygulama Paket Kimliği';
	@override String get processName => 'İşlem Adı';
	@override String get processPath => 'İşlem Yolu';
	@override String get processDir => 'İşlem Dizini';
	@override String get systemProxy => 'Sistem Proxy';
	@override String get percentage => 'Yüzde';
	@override String get statistics => 'İstatistikler';
	@override String get statisticsAndAnalysis => 'İstatistikler ve Analiz';
	@override String get statisticsDataDesensitize => 'Veri Duyarsızlaştırma';
	@override String get statisticsDataDesensitizeTips => 'İşlem/paket kimliği/hedef alan adı/hedef IP vb. duyarsızlaştırmadan sonra * ile değiştirilecek ve kaydedilecektir';
	@override String get records => 'Kayıtlar';
	@override String get requestRecords => 'İstek Kayıtları';
	@override String get netInterfaces => 'Ağ Arayüzleri';
	@override String get netSpeed => 'Hız';
	@override String get memoryTrendChart => 'Bellek Eğilimi grafiği';
	@override String get goroutinesTrendChart => 'GoRoutines Eğilimi grafiği';
	@override String get trafficTrendChart => 'Trafik Eğilimi Grafiği';
	@override String get trafficDistributionChart => 'Trafik Dağılım Grafiği';
	@override String get connectionChart => 'Bağlantı Eğilimi Grafiği';
	@override String get memoryChart => 'Bellek Eğilimi grafiği';
	@override String get trafficStatistics => 'Trafik istatistikleri';
	@override String get traffic => 'Trafik';
	@override String get trafficTotal => 'Toplam Trafik';
	@override String get trafficProxy => 'Proxy Trafiği';
	@override String get trafficDirect => 'Doğrudan Trafik';
	@override String get website => 'Web sitesi';
	@override String get memory => 'Bellek';
	@override String get outboundMode => 'Giden Modu';
	@override String get rule => 'Kural';
	@override String get global => 'Global';
	@override String get qrcode => 'QR Kodu';
	@override String get qrcodeTooLong => 'Metin görüntülenebilmesi için çok uzun';
	@override String get qrcodeShare => 'QR Kodunu Paylaş';
	@override String get textToQrcode => 'Metni QR Koduna Dönüştür';
	@override String get qrcodeScan => 'QR Kodunu Tara';
	@override String get qrcodeScanResult => 'Tarama Sonucu';
	@override String get qrcodeScanFromImage => 'Görüntüden Tara';
	@override String get qrcodeScanResultFailed => 'Görüntü ayrıştırılamadı, lütfen ekran görüntüsünün geçerli bir QR kodu olduğundan emin olun';
	@override String get qrcodeScanResultEmpty => 'Tarama Sonucu boş';
	@override String get screenshot => 'Ekran Görüntüsü';
	@override String get backupAndSync => 'Yedekleme ve Senkronizasyon';
	@override String get autoBackup => 'Otomatik yedekleme';
	@override String get noProfileGotAutoBackup => '[${_root.meta.myProfiles}] gibi veriler kaybolursa, bunları [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] veya diğer yedekleme kaynaklarından (iCloud veya Webdav vb. gibi) geri yükleyebilirsiniz';
	@override String get autoBackupAddProfile => 'Profili ekledikten sonra';
	@override String get autoBackupRemoveProfile => 'Profili sildikten sonra';
	@override String get profile => 'Profil';
	@override String get currentProfile => 'Mevcut Profil';
	@override String get importAndExport => 'İçe ve Dışa Aktar';
	@override String get import => 'İçe Aktar';
	@override String get importFromUrl => 'URL\'den içe aktar';
	@override String get export => 'Dışa Aktar';
	@override String get send => 'Gönder';
	@override String get receive => 'Al';
	@override String get sendConfirm => 'Göndermeyi onayla?';
	@override String get termOfUse => 'Hizmet Şartları';
	@override String get privacyPolicy => 'Gizlilik Politikası';
	@override String get about => 'Hakkında';
	@override String get name => 'Ad';
	@override String get version => 'Sürüm';
	@override String get notice => 'Bildirim';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Eylem: ${p}\nNeden: ${p1}';
	@override String get sort => 'Yeniden Sırala';
	@override String get novice => 'Acemi Modu';
	@override String get willCompleteAfterRebootInstall => 'Sistem genişletme kurulumunu tamamlamak için lütfen cihazınızı yeniden başlatın';
	@override String get willCompleteAfterRebootUninstall => 'Sistem genişletme kaldırma işlemini tamamlamak için lütfen cihazınızı yeniden başlatın';
	@override String get requestNeedsUserApproval => '1. Lütfen [Sistem Ayarları]-[Gizlilik ve Güvenlik] bölümünden Karing\'in sistem uzantılarını yüklemesine [İzin Verin]\n2. [Sistem Ayarları]-[Genel]-[Giriş Öğeleri Uzantıları]-[Ağ Uzantısı] bölümünden [karingServiceSE] etkinleştirin\ntamamladıktan sonra yeniden bağlanın';
	@override String get FullDiskAccessPermissionRequired => 'Lütfen [Sistem Ayarları]-[Gizlilik ve Güvenlik]-[Tam Disk Erişimi İzni] bölümünden [karingServiceSE] iznini etkinleştirin ve yeniden bağlanın';
	@override String get tvMode => 'TV Modu';
	@override String get recommended => 'Önerilen';
	@override String innerError({required Object p}) => 'İç Hata: ${p}';
	@override String get logicOperation => 'Mantık İşlemi';
	@override String get share => 'Paylaş';
	@override String get candidateWord => 'Aday Kelimeler';
	@override String get keywordOrRegx => 'Anahtar Kelimeler/Regex';
	@override String get importFromClipboard => 'Panodan İçe Aktar';
	@override String get exportToClipboard => 'Panoya Dışa Aktar';
	@override String get server => 'Sunucu';
	@override String get ads => 'Reklamlar';
	@override String get adsRemove => 'Reklamları kaldır';
	@override String get donate => 'Bağış Yap';
	@override String get diversion => 'Yönlendirme';
	@override String get diversionRules => 'Yönlendirme Kuralları';
	@override String get diversionCustomGroup => 'Özel Yönlendirme Grubu';
	@override String get urlTestCustomGroup => 'Özel Otomatik Seçim';
	@override String get setting => 'Ayarlar';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'LAN Senkronizasyonu';
	@override String get lanSyncNotQuitTips => 'Senkronizasyon tamamlanmadan bu arayüzden çıkmayın';
	@override String get deviceNoSpace => 'Yeterli disk alanı yok';
	@override String get hideSystemApp => 'Sistem Uygulamalarını Gizle';
	@override String get hideAppIcon => 'Uygulama Simgelerini Gizle';
	@override String get hideDockIcon => 'Dock Simgesini Gizle';
	@override String get remark => 'Açıklama';
	@override String get remarkExist => 'Açıklama zaten mevcut, lütfen başka bir ad kullanın';
	@override String get remarkCannotEmpty => 'Açıklama boş olamaz';
	@override String get remarkTooLong => '32 karaktere kadar açıklamalar';
	@override String get openDir => 'Dosya Dizinini Aç';
	@override String get fileChoose => 'Dosya Seç';
	@override String get filePathCannotEmpty => 'Dosya yolu boş olamaz';
	@override String fileNotExist({required Object p}) => 'Dosya mevcut değil: ${p}';
	@override String fileTypeInvalid({required Object p}) => 'Geçersiz dosya türü: ${p}';
	@override String get uwpExemption => 'UWP Ağ İzolasyonu Muafiyetleri';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Profil Al';
	@override String get addProfile => 'Profil Ekle';
	@override String get myProfiles => 'Profillerim';
	@override String get profileEdit => 'Profili Düzenle';
	@override String get profileEditUrlExist => 'URL zaten mevcut, lütfen başka bir URL kullanın';
	@override String get profileEditReloadAfterProfileUpdate => 'Profil güncellemesinden sonra yeniden yükle';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Profil otomatik güncellemesinden sonra gecikme testlerini başlat';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN bağlı olmalı ve [Profil güncellemesinden sonra yeniden yükle] Etkinleştirilmelidir';
	@override String get profileEditTestLatencyAutoRemove => 'Gecikme testlerinde başarısız olan sunucuları otomatik olarak kaldır';
	@override String get profileEditTestLatencyAutoRemoveTips => 'En fazla 3 kez dene';
	@override String get profileImport => 'Profil Dosyasını İçe Aktar';
	@override String get profileAddUrlOrContent => 'Profil Bağlantısı Ekle';
	@override String get profileExists => 'Profil zaten mevcut, lütfen tekrar eklemeyin';
	@override String get profileUrlOrContent => 'Profil Bağlantısı/İçeriği';
	@override String get profileUrlOrContentHit => 'Profil Bağlantısı/İçeriği [Gerekli] (Clash, V2ray (toplu destekli), Stash, Karing, Sing-box, Shadowsocks, Sub Profil bağlantılarını destekler)';
	@override String get profileUrlOrContentCannotEmpty => 'Profil Bağlantısı boş olamaz';
	@override String profileAddFailedFormatException({required Object p}) => 'Format yanlış, lütfen düzeltin ve tekrar ekleyin: ${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Ekleme başarısız oldu: ${p}, lütfen [UserAgent]\'ı değiştirmeyi deneyin ve tekrar deneyin veya yapılandırma bağlantısını açmak ve tarayıcı tarafından indirilen yapılandırma dosyasını bu uygulamaya aktarmak için cihazın yerleşik tarayıcısını kullanın';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Ekleme başarısız oldu: ${p}, lütfen proxy\'yi açın veya mevcut proxy düğümünü değiştirin ve tekrar deneyin';
	@override String get profileAddParseFailed => 'Profil Ayrıştırma başarısız oldu';
	@override String get profileAddNoServerAvaliable => 'Kullanılabilir sunucu yok, Profil Bağlantısının veya Profil Dosyasının geçerli olduğundan emin olun; Profiliniz GitHub\'dan geliyorsa lütfen bağlantıyı sayfadaki [Raw] düğmesinden alın';
	@override String get profileAddWrapSuccess => 'Profil başarıyla oluşturuldu, görüntülemek için lütfen [${_root.meta.myProfiles}] bölümüne gidin';
}

// Path: isp
class _TranslationsIspTr implements TranslationsIspEn {
	_TranslationsIspTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get bind => '[${_root.meta.isp}]\'e Bağla';
	@override String unbind({required Object p}) => 'Bağlantıyı Kes [${p}]';
	@override String faq({required Object p}) => 'SSS [${p}]';
	@override String customerService({required Object p}) => 'Telegram [${p}]';
	@override String follow({required Object p}) => 'Takip Et [${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] Geçersiz veya süresi dolmuş';
}

// Path: permission
class _TranslationsPermissionTr implements TranslationsPermissionEn {
	_TranslationsPermissionTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Kamera';
	@override String get screen => 'Ekran Kaydı';
	@override String get appQuery => 'Uygulama Listesini Al';
	@override String request({required Object p}) => '[${p}] iznini aç';
	@override String requestNeed({required Object p}) => 'Lütfen [${p}] iznini açın';
}

// Path: tls
class _TranslationsTlsTr implements TranslationsTlsEn {
	_TranslationsTlsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Sertifika Doğrulamasını Atla';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'TLS Parçalamayı Etkinleştir';
	@override String get fragmentSize => 'TLS Parça Boyutu';
	@override String get fragmentSleep => 'TLS Parça Bekleme Süresi';
	@override String get mixedCaseSNIEnable => 'TLS Karışık SNI\'yı Etkinleştir';
	@override String get paddingEnable => 'TLS Padding\'i Etkinleştir';
	@override String get paddingSize => 'TLS Padding Boyutu';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeTr implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Şu An Seçili';
	@override String get urltest => 'Otomatik Seç';
	@override String get direct => 'Doğrudan';
	@override String get block => 'Engelle';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeTr implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyTr implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonTr implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Profil Güncellemesi';
}

// Path: theme
class _TranslationsThemeTr implements TranslationsThemeEn {
	_TranslationsThemeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get light => 'Açık';
	@override String get dark => 'Koyu';
	@override String get auto => 'Otomatik';
}

// Path: main.tray
class _TranslationsMainTrayTr implements TranslationsMainTrayEn {
	_TranslationsMainTrayTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Aç';
	@override String get menuExit => 'Çıkış';
}

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Kurulum Referansı',
			'AboutScreen.installTime' => 'Kurulum Zamanı',
			'AboutScreen.versionChannel' => 'Otomatik Güncelleme Kanalı',
			'AboutScreen.updateWhenConnected' => 'Bağlantı kurulduktan sonra güncellemeleri kontrol edin',
			'AboutScreen.autoDownloadPkg' => 'Güncelleme Paketlerini Otomatik İndir',
			'AboutScreen.disableAppImproveData' => 'Uygulama İyileştirme Verileri',
			'AboutScreen.disableUAReportTip' => '[${_root.AboutScreen.disableAppImproveData}] özelliğinin etkinleştirilmesi, ürün kararlılığını ve kullanılabilirliğini iyileştirmemize yardımcı olur; herhangi bir kişisel gizlilik verisi toplamıyoruz. Devre dışı bırakılması, uygulamanın herhangi bir veri toplamasını engeller.',
			'AboutScreen.devOptions' => 'Geliştirici Seçenekleri',
			'AboutScreen.enableDebugLog' => 'Hata Ayıklama Günlüğünü Etkinleştir',
			'AboutScreen.viewFilsContent' => 'Dosyaları Görüntüle',
			'AboutScreen.enablePprof' => 'pprof\'u Etkinleştir',
			'AboutScreen.pprofPanel' => 'pprof Paneli',
			'AboutScreen.allowRemoteAccessPprof' => '${_root.AboutScreen.pprofPanel} paneline uzaktan erişime izin ver',
			'AboutScreen.allowRemoteAccessHtmlBoard' => '${_root.SettingsScreen.htmlBoard} paneline uzaktan erişime izin ver',
			'AboutScreen.useOriginalSBProfile' => 'Orijinal sing-box Profilini kullan',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'Sunucu URL\'si',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Boş bırakılamaz',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Giriş başarısız:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Dosya listesi alınamadı:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'Geçersiz [Alan Adı]: ${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => 'Geçersiz [IP Cidr]: ${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => 'Geçersiz [${p0}]: ${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'Geçersiz [Kural Kümesi]: ${p}, URL geçerli bir https URL\'si ve .srs/.json dosya uzantısına sahip bir ikili dosya olmalıdır',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => 'Geçersiz [Yerleşik Kural Kümesi]: ${p}, format geosite:xxx veya geoip:xxx veya acl:xxx olmalıdır ve xxx geçerli bir kural adı olmalıdır',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => 'Geçersiz [${_root.meta.appPackage}]: ${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'İpucu: Kaydettikten sonra, ilgili kuralları ayarlamak için lütfen [${_root.meta.diversionRules}] bölümüne gidin, aksi takdirde etkili olmayacaktır',
			'DiversionRuleDetectScreen.title' => 'Yönlendirme Kuralı Tespiti',
			'DiversionRuleDetectScreen.rule' => 'Kural:',
			'DiversionRuleDetectScreen.outbound' => 'Proxy Sunucusu:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'İpucu: Kuralları yukarıdan aşağıya eşleştirmeyi deneyin. Hiçbir kural eşleşmezse [varsayılan] kullanın',
			'DnsSettingsScreen.ispCanNotEmpty' => 'Sağlayıcı boş bırakılamaz',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL boş bırakılamaz',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Desteklenmeyen tür: ${p}',
			'DnsSettingsScreen.dnsDesc' => 'Gecikme verilerinin ilk sütunu doğrudan bağlantı sorgu gecikmesidir;\nİkinci sütun: [[Proxy Trafiği] DNS\'i proxy sunucusu üzerinden çöz] seçeneğini açın: gecikme verileri, mevcut proxy sunucusu üzerinden iletilen sorgu gecikmesidir; kapalıysa: gecikme verileri doğrudan bağlantı sorgu gecikmesidir',
			'FileContentViewerScreen.title' => 'Dosya İçeriği Görüntüleyici',
			'FileContentViewerScreen.clearFileContent' => 'Dosya içeriğini temizlemek istediğinizden emin misiniz?',
			'FileContentViewerScreen.clearFileContentTips' => 'Profil dosyası içeriğini temizlemek istediğinizden emin misiniz? Profil dosyasının temizlenmesi veri kaybına veya anormal uygulama işlevlerine neden olabilir, lütfen dikkatli olun',
			'HomeScreen.toSelectServer' => 'Lütfen bir Sunucu Seçin',
			'HomeScreen.invalidServer' => 'geçersiz, lütfen tekrar seçin',
			'HomeScreen.disabledServer' => 'devre dışı, lütfen tekrar seçin',
			'HomeScreen.expiredServer' => 'Kullanılabilir sunucu yok, profillerin süresi dolmuş veya devre dışı bırakılmış olabilir',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}',
			'HomeScreen.myLinkEmpty' => 'Lütfen kullanmadan önce [Kısayol Bağlantısı] kurulumunu yapın',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Çok fazla proxy sunucusu [${p}>${p1}] var ve sistem bellek sınırlamaları nedeniyle bağlantı başarısız olabilir',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Çok fazla proxy sunucusu [${p}>${p1}] olması yavaş veya erişilemeyen bağlantılara neden olabilir',
			'LaunchFailedScreen.invalidProcess' => 'Uygulama başlatılamadı [Geçersiz işlem adı], lütfen uygulamayı ayrı bir dizine yeniden yükleyin',
			'LaunchFailedScreen.invalidProfile' => 'Uygulama başlatılamadı [Profile erişilemedi], lütfen uygulamayı yeniden yükleyin',
			'LaunchFailedScreen.invalidVersion' => 'Uygulama başlatılamadı [Geçersiz sürüm], lütfen uygulamayı yeniden yükleyin',
			'LaunchFailedScreen.systemVersionLow' => 'Uygulama başlatılamadı [sistem sürümü çok düşük]',
			'LaunchFailedScreen.invalidInstallPath' => 'Kurulum yolu geçersiz, lütfen geçerli bir yola yeniden yükleyin',
			'MyProfilesMergeScreen.profilesMerge' => 'Profilleri Birleştir',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Hedef Profil',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Kaynak Profiller',
			'MyProfilesMergeScreen.profilesMergeTips' => 'İpucu: Kaynak profillerin yönlendirmesi atılacaktır',
			'NetCheckScreen.title' => 'Ağ Kontrolü',
			'NetCheckScreen.warn' => 'Not: Ağ ortamı ve yönlendirme kurallarının etkisi nedeniyle, test sonuçları gerçek sonuçlarla tamamen eşdeğer değildir.',
			'NetCheckScreen.invalidDomain' => 'Geçersiz Alan Adı',
			'NetCheckScreen.connectivity' => 'Ağ Bağlantısı',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'IPv4 Bağlantı testi [${p}] başarısız oldu',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'IPv4 bağlantısı başarılı',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'IPv6 Bağlantı testi [${p}] başarısız oldu, ağınız IPv6\'yı desteklemiyor olabilir',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'IPv6 bağlantısı başarılı',
			'NetCheckScreen.connectivityTestOk' => 'Ağ internete bağlı',
			'NetCheckScreen.connectivityTestFailed' => 'Ağ henüz internete bağlı değil',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Hepsi başarıyla indirildi',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'İndiriliyor veya indirme başarısız oldu',
			'NetCheckScreen.outbound' => 'Proxy Sunucusu',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] bağlantısı başarılı',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] bağlantısı başarısız oldu\nHata: [${p2}]',
			'NetCheckScreen.dnsServer' => 'DNS Sunucusu',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}] DNS sorgusu başarılı\nDNS Kuralı: [${p2}]\nGecikme: [${p3} ms]\nAdres: [${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}] DNS sorgusu başarılı\nDNS Kuralı: [${p2}]\nHata: [${p3}]',
			'NetCheckScreen.host' => 'HTTP Bağlantısı',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nYönlendirme Kuralı: [${p2}]\nProxy Sunucusu: [${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'bağlantı başarılı',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'bağlantı başarısız: [${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Alan Adı/IP',
			'NetConnectionsFilterScreen.app' => 'Uygulama',
			'NetConnectionsFilterScreen.rule' => 'Kural',
			'NetConnectionsFilterScreen.chain' => 'Giden',
			'NetConnectionsScreen.copyAsCSV' => 'CSV formatına kopyalandı',
			'NetConnectionsScreen.selectType' => 'Yönlendirme Türünü Seçin',
			'PerAppAndroidScreen.title' => 'Uygulama Başına Proxy',
			'PerAppAndroidScreen.whiteListMode' => 'Beyaz Liste Modu',
			'PerAppAndroidScreen.whiteListModeTip' => 'Etkinleştirildiğinde: yalnızca işaretli olan uygulamalar proxy üzerinden geçer; etkinleştirilmediğinde: yalnızca işaretli olmayan uygulamalar proxy üzerinden geçer',
			'RegionSettingsScreen.title' => 'Ülke veya Bölge',
			'RegionSettingsScreen.Regions' => 'İpucu: Lütfen mevcut ülkenizi veya bölgenizi doğru ayarlayın, aksi takdirde ağ yönlendirme sorunlarına neden olabilir',
			'ServerSelectScreen.title' => 'Sunucu Seç',
			'ServerSelectScreen.autoSelectServer' => 'En düşük gecikmeye sahip sunucuyu otomatik seç',
			'ServerSelectScreen.recentUse' => 'Son Kullanılanlar',
			'ServerSelectScreen.myFav' => 'Favorilerim',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Seçilen sunucu yerel bir adrestir ve düzgün çalışmayabilir: ${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Seçilen sunucu bir IPv6 adresidir ve [IPv6\'yı Etkinleştir] gerektirir',
			'ServerSelectScreen.selectDisabled' => 'Bu sunucu devre dışı bırakıldı',
			'ServerSelectScreen.error404' => 'Gecikme tespiti bir hatayla karşılaştı, lütfen aynı içeriğe sahip bir yapılandırma olup olmadığını kontrol edin',
			'SettingsScreen.getTranffic' => 'Trafik Bilgisi Al',
			'SettingsScreen.tutorial' => 'Eğitici',
			'SettingsScreen.commonlyUsedRulesets' => 'Sık Kullanılan Kural Kümesi',
			'SettingsScreen.htmlBoard' => 'Çevrimiçi Panel',
			'SettingsScreen.dnsLeakDetection' => 'DNS Sızıntısı Tespiti',
			'SettingsScreen.proxyLeakDetection' => 'Proxy Sızıntısı Tespiti',
			'SettingsScreen.speedTest' => 'Hız Testi',
			'SettingsScreen.rulesetDirectDownlad' => 'Kural Kümesi Doğrudan İndirme',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Kullanılmayan Yönlendirme Kurallarını Gizle',
			'SettingsScreen.disableISPDiversionGroup' => '[${_root.meta.isp}] ${_root.meta.diversionRules} Devre Dışı Bırak',
			'SettingsScreen.portSettingRule' => 'Kural Tabanlı',
			'SettingsScreen.portSettingDirectAll' => 'Hepsini Doğrudan Bağla',
			'SettingsScreen.portSettingProxyAll' => 'Hepsini Proxy ile Bağla',
			'SettingsScreen.portSettingControl' => 'Kontrol ve Senkronizasyon',
			'SettingsScreen.portSettingCluster' => 'Küme Servisi',
			'SettingsScreen.modifyPort' => 'Bağlantı Noktasını Değiştir',
			'SettingsScreen.modifyPortOccupied' => 'Bağlantı noktası dolu, lütfen başka bir bağlantı noktası kullanın',
			'SettingsScreen.ipStrategyTips' => 'Etkinleştirmeden önce lütfen ağınızın IPv6\'yı desteklediğini onaylayın, aksi takdirde bazı trafiklere normal şekilde erişilemez.',
			'SettingsScreen.tunAppendHttpProxy' => 'VPN\'e HTTP Proxy Ekle',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Bazı uygulamalar sanal NIC aygıtını atlayacak ve doğrudan HTTP proxy\'sine bağlanacaktır',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'HTTP proxy\'sini atlamasına izin verilen alan adları',
			'SettingsScreen.dnsEnableRule' => 'DNS Yönlendirme kurallarını etkinleştir',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] Çözümleme Kanalı',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] ECS\'yi Etkinleştir',
			'SettingsScreen.dnsTestDomain' => 'Test Alan Adı',
			'SettingsScreen.dnsTestDomainInvalid' => 'Geçersiz Alan Adı',
			'SettingsScreen.dnsTypeOutbound' => 'Proxy Sunucusu',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'DNS Sunucusu',
			'SettingsScreen.dnsEnableRuleTips' => 'Etkinleştirildikten sonra alan adı, yönlendirme kurallarına göre çözümleme için ilgili DNS sunucusunu seçecektir',
			'SettingsScreen.dnsEnableFakeIpTips' => 'FakeIP\'yi etkinleştirdikten sonra, VPN bağlantısını keserseniz uygulamanızın yeniden başlatılması gerekebilir; bu özellik [TUN modu] etkinleştirilmesini gerektirir',
			'SettingsScreen.dnsTypeOutboundTips' => '[${_root.SettingsScreen.dnsTypeOutbound}] için alan adı çözümlemesi',
			'SettingsScreen.dnsTypeDirectTips' => '[${_root.meta.trafficDirect}] için alan adı çözümlemesi',
			'SettingsScreen.dnsTypeProxyTips' => '[${_root.meta.trafficProxy}] için alan adı çözümlemesi',
			'SettingsScreen.dnsTypeResolverTips' => '[${_root.SettingsScreen.dnsTypeResolver}] için alan adı çözümlemesi',
			'SettingsScreen.dnsAutoSetServer' => 'Otomatik Sunucu Kurulumu',
			'SettingsScreen.dnsResetServer' => 'Sunucuyu Sıfırla',
			'SettingsScreen.inboundDomainResolve' => 'Gelen Alan Adlarını Çözümle',
			'SettingsScreen.privateDirect' => 'Özel Ağ Doğrudan Bağlantısı',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Yönlendirme kurallarıyla yapılandırılmamış bazı alan adlarının, IP tabanlı yönlendirme kurallarına ulaşabilmesi için çözümlenmesi gerekir; bu özellik proxy bağlantı noktasına [${p}] gelen istekleri etkiler',
			'SettingsScreen.useRomoteRes' => 'Uzak Kaynakları Kullan',
			'SettingsScreen.autoAppendRegion' => 'Temel kuralları otomatik ekle',
			'SettingsScreen.autoSelect' => 'Otomatik Seç',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => '[Ön/Zincir] Proxy Sunucularını Yoksay',
			'SettingsScreen.autoSelectServerInterval' => 'Gecikme Kontrolü Aralığı',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Mevcut sunucu sağlık kontrolü aralığı',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Ağ Değiştiğinde Gecikmeyi Yeniden Kontrol Et',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Manuel Gecikme Kontrolünden Sonra Mevcut Sunucuyu Güncelle',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Zaman aralığı ne kadar kısa olursa, sunucu gecikme verileri o kadar zamanında güncellenir, bu da daha fazla kaynak işgal eder ve daha fazla güç tüketir',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Kontrol başarısız olursa sunucu değiştirilir; sunucu değiştirilirken kullanılabilir sunucu bulunamazsa grup gecikmeyi yeniden kontrol eder',
			'SettingsScreen.autoSelectServerFavFirst' => 'Öncelikli Kullan [Favorilerim]',
			'SettingsScreen.autoSelectServerFavFirstTips' => '[Favorilerim] listesi boş değilse, [Favorilerim] içindeki sunucuları kullan',
			'SettingsScreen.autoSelectServerFilter' => 'Geçersiz Sunucuları Filtrele',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Başarısız olan sunucu gecikme kontrolleri filtrelenecektir; filtrelemeden sonra kullanılabilir sunucu kalmazsa bunun yerine ilk [${p}] sunucu kullanılacaktır',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Maksimum sunucu sayısı',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Bu sayıyı aşan sunucular filtrelenecektir',
			'SettingsScreen.numInvalid' => 'Geçersiz numara',
			'SettingsScreen.hideInvalidServer' => 'Geçersiz Sunucuları Gizle',
			'SettingsScreen.sortServer' => 'Sunucu Sıralaması',
			'SettingsScreen.sortServerTips' => 'Gecikmeye göre düşükten yükseğe sırala',
			'SettingsScreen.selectServerHideRecommand' => '[Önerilen] öğesini gizle',
			'SettingsScreen.selectServerHideRecent' => '[Son Kullanılanlar] öğesini gizle',
			'SettingsScreen.selectServerHideFav' => '[Favorilerim] öğesini gizle',
			'SettingsScreen.homeScreen' => 'Ana Ekran',
			'SettingsScreen.theme' => 'Tema',
			'SettingsScreen.widgetsAlpha' => 'Widget Şeffaflığı',
			'SettingsScreen.widgetsEmpty' => 'Kullanılabilir Widget Yok',
			'SettingsScreen.backgroundImage' => 'Arka Plan Resmi',
			'SettingsScreen.myLink' => 'Kısayol Bağlantısı',
			'SettingsScreen.autoConnectAfterLaunch' => 'Başlattıktan sonra Otomatik Bağlan',
			'SettingsScreen.autoConnectAtBoot' => 'Sistem Başladıktan sonra Otomatik Bağlan',
			'SettingsScreen.autoConnectAtBootTips' => 'Sistem desteği gereklidir; bazı sistemler [otomatik başlatma] özelliğinin etkinleştirilmesini de gerektirebilir.',
			'SettingsScreen.hideAfterLaunch' => 'Başlattıktan sonra pencereyi gizle',
			'SettingsScreen.autoSetSystemProxy' => 'Bağlandığında Otomatik Sistem Proxy Ayarla',
			'SettingsScreen.bypassSystemProxy' => 'Sistem proxy\'sini atlamasına izin verilen alan adları',
			'SettingsScreen.disconnectWhenQuit' => 'Uygulamadan Çıkıldığında Bağlantıyı Kes',
			'SettingsScreen.autoAddToFirewall' => 'Güvenlik Duvarı Kurallarını Otomatik Ekle',
			'SettingsScreen.excludeFromRecent' => '[Son Görevler] listesinden gizle',
			'SettingsScreen.wakeLock' => 'Uyanık Kalma Kilidi',
			'SettingsScreen.hideVpn' => 'VPN Simgesini Gizle',
			'SettingsScreen.hideVpnTips' => 'IPv6\'nın etkinleştirilmesi bu işlevin başarısız olmasına neden olur',
			'SettingsScreen.allowBypass' => 'Uygulamaların VPN\'i Atlamasına İzin Ver',
			'SettingsScreen.importSuccess' => 'İçe Aktarma Başarılı',
			'SettingsScreen.rewriteConfirm' => 'Bu dosya mevcut yerel yapılandırmanın üzerine yazılacaktır. Devam etmek istiyor musunuz?',
			'SettingsScreen.mergePerapp' => 'Yerel [${_root.PerAppAndroidScreen.title}] listelerini birleştir',
			'SettingsScreen.networkShare' => 'Ağ Paylaşımı',
			'SettingsScreen.frontProxy' => 'Ön/Zincir Proxy',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Veri -> Ön/Zincir Proxy Sunucusu [Birden Çok Proxy Sunucusu: Yukarıdan Aşağıya] -> Proxy Sunucusu [${p}] -> Hedef Sunucu',
			'SettingsScreen.allowOtherHostsConnect' => 'Diğerlerinin Bağlanmasına İzin Ver',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks: ${sp}, http(s): ${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Sistem kısıtlamaları nedeniyle, bu etkinleştirildikten sonra bu cihazdaki ağa erişmek için http kullanan uygulamalar ağa düzgün şekilde bağlanamayabilir.',
			'SettingsScreen.tunAutoRoute' => 'Otomatik Rota',
			'SettingsScreen.tunAutoRedirect' => 'Otomatik Yönlendirme',
			'SettingsScreen.tunStrictRoute' => 'Sıkı Rota',
			'SettingsScreen.tunStrictRouteTips' => 'Paylaşımı açtıktan sonra başkaları bu cihaza erişemiyorsa lütfen bu anahtarı kapatmayı deneyin',
			'SettingsScreen.loopbackAddress' => 'Geri Döngü Adresi',
			'SettingsScreen.enableCluster' => 'Socks/Http Proxy Kümesini Etkinleştir',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Başkalarının Kümeye Bağlanmasına İzin Ver',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Proxy Kümesi Kimlik Doğrulaması',
			'SettingsScreen.tunMode' => 'TUN Modu',
			'SettingsScreen.tuni4Address' => 'IP adresi',
			'SettingsScreen.tunModeTips' => 'TUN modu sistemin tüm trafiğini üstlenecektir [Bu modda sistem proxy\'sini devre dışı bırakabilirsiniz]',
			'SettingsScreen.tunModeRunAsAdmin' => 'TUN modu sistem yöneticisi izinleri gerektirir, lütfen uygulamayı yönetici olarak yeniden başlatın',
			'SettingsScreen.tunStack' => 'Ağ Yığını',
			'SettingsScreen.tunHijackTips' => 'Kapattıktan sonra TUN\'dan gelen DNS istekleri doğrudan ilgili DNS sunucusuna iletilecektir',
			'SettingsScreen.launchAtStartup' => 'Başlangıçta Çalıştır',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Sistem Kullanıcısı Değiştiğinde Uygulamadan Çık',
			'SettingsScreen.handleScheme' => 'Sistem Şeması Çağrısı',
			'SettingsScreen.portableMode' => 'Taşınabilir Mod',
			'SettingsScreen.portableModeDisableTips' => 'Taşınabilir moddan çıkmanız gerekiyorsa lütfen [karing]\'den çıkın ve [karing.exe] ile aynı dizindeki [profiles] klasörünü manuel olarak silin',
			'SettingsScreen.accessibility' => 'Erişilebilirlik',
			'SettingsScreen.handleKaringScheme' => 'karing:// Çağrısını Yönet',
			'SettingsScreen.handleClashScheme' => 'clash:// Çağrısını Yönet',
			'SettingsScreen.handleSingboxScheme' => 'sing-box:// Çağrısını Yönet',
			'SettingsScreen.alwayOnVPN' => 'Her Zaman Açık Bağlantı',
			'SettingsScreen.disconnectAfterSleep' => 'Sistem uykusundan sonra bağlantıyı kes',
			'SettingsScreen.removeSystemVPNConfig' => 'Sistem VPN yapılandırmasını sil',
			'SettingsScreen.timeConnectOrDisconnect' => 'Planlanmış bağlantı/kesilme',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'Etkili olması için VPN bağlı olmalıdır; açıldıktan sonra [Otomatik Uyku] devre dışı bırakılacaktır',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'Bağlantı/kesilme aralığı ${p} dakikadan az olamaz',
			'SettingsScreen.disableFontScaler' => 'Yazı tipi ölçeklendirmeyi devre dışı bırak (Yeniden başlatma gerekir)',
			'SettingsScreen.autoOrientation' => 'Ekranla birlikte döndür',
			'SettingsScreen.restartTakesEffect' => 'Yeniden başlatma gerekir',
			'SettingsScreen.reconnectTakesEffect' => 'Yeniden bağlanma gerekir',
			'SettingsScreen.resetSettings' => 'Ayarları Sıfırla',
			'SettingsScreen.cleanCache' => 'Önbelleği Temizle',
			'SettingsScreen.cleanCacheDone' => 'Temizleme tamamlandı',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => '${p} sürümüne güncelle',
			'SettingsScreen.follow' => 'Bizi Takip Edin',
			'SettingsScreen.contactUs' => 'Bize Ulaşın',
			'SettingsScreen.supportUs' => 'Bizi Destekleyin',
			'SettingsScreen.rateInApp' => 'Bizi Oylayın',
			'SettingsScreen.rateInAppStore' => 'AppStore\'da Bizi Oylayın',
			'UserAgreementScreen.privacyFirst' => 'Gizliliğiniz Önce Gelir',
			'UserAgreementScreen.agreeAndContinue' => 'Kabul Et ve Devam Et',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'Yeni sürüm [${p}] hazır',
			'VersionUpdateScreen.update' => 'Güncellemek İçin Yeniden Başlat',
			'VersionUpdateScreen.cancel' => 'Şimdi Değil',
			'CommonWidget.diableAlwayOnVPN' => '[Her Zaman Açık VPN] açıksa lütfen kapatın ve tekrar bağlanmayı deneyin',
			'CommonWidget.resetPort' => 'Lütfen bağlantı noktasını kullanılabilir başka bir bağlantı noktasına değiştirin veya bağlantı noktasını işgal eden uygulamayı kapatın.',
			'main.tray.menuOpen' => 'Aç',
			'main.tray.menuExit' => 'Çıkış',
			'meta.enable' => 'Etkinleştir',
			'meta.disable' => 'Devre Dışı Bırak',
			'meta.bydefault' => 'Varsayılan',
			'meta.filter' => 'Filtre',
			'meta.filterMethod' => 'Filtreleme Yöntemi',
			'meta.include' => 'Dahil Et',
			'meta.exclude' => 'Hariç Tut',
			'meta.all' => 'Hepsi',
			'meta.prefer' => 'Tercih Et',
			'meta.only' => 'Sadece',
			'meta.open' => 'Aç',
			'meta.close' => 'Kapat',
			'meta.quit' => 'Çık',
			'meta.add' => 'Ekle',
			'meta.addSuccess' => 'Başarıyla eklendi',
			'meta.addFailed' => ({required Object p}) => 'Ekleme başarısız: ${p}',
			'meta.remove' => 'Kaldır',
			'meta.removeConfirm' => 'Silmek istediğinizden emin misiniz?',
			'meta.edit' => 'Düzenle',
			'meta.view' => 'Görüntüle',
			'meta.more' => 'Daha Fazla',
			'meta.tips' => 'Bilgi',
			'meta.copy' => 'Kopyala',
			'meta.paste' => 'Yapıştır',
			'meta.cut' => 'Kesmek',
			'meta.save' => 'Kaydet',
			'meta.ok' => 'Tamam',
			'meta.cancel' => 'İptal',
			'meta.feedback' => 'Geri Bildirim',
			'meta.feedbackContent' => 'Geri Bildirim İçeriği',
			'meta.feedbackContentHit' => 'Gerekli, en fazla 500 karakter',
			'meta.feedbackContentCannotEmpty' => 'Geri bildirim içeriği boş olamaz',
			'meta.faq' => 'SSS',
			'meta.htmlTools' => 'HTML Araç Takımı',
			'meta.download' => 'İndir',
			'meta.upload' => 'Yükle',
			'meta.downloadSpeed' => 'İndirme Hızı',
			'meta.uploadSpeed' => 'Yükleme Hızı',
			'meta.loading' => 'Yükleniyor...',
			'meta.convert' => 'Dönüştür',
			'meta.check' => 'Kontrol Et',
			'meta.detect' => 'Tespit Et',
			'meta.cache' => 'Önbellek',
			'meta.days' => 'Gün',
			'meta.hours' => 'Saat',
			'meta.minutes' => 'Dakika',
			'meta.seconds' => 'Saniye',
			'meta.milliseconds' => 'Milisaniye',
			'meta.tolerance' => 'Tolerans',
			'meta.dateTimePeriod' => 'Zaman aralığı',
			'meta.protocol' => 'Protokol',
			'meta.search' => 'Ara',
			'meta.custom' => 'Özel',
			'meta.inbound' => 'Gelen',
			'meta.outbound' => 'Giden',
			'meta.destination' => 'Hedef',
			'meta.outletIpByCurrentSelected' => 'Çıkış IP\'si',
			'meta.outletIpByDirect' => 'IP: ${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Bağlan',
			'meta.disconnect' => 'Bağlantıyı Kes',
			'meta.reconnect' => 'Yeniden Bağlan',
			'meta.connected' => 'Bağlandı',
			'meta.disconnected' => 'Bağlantı Kesildi',
			'meta.connecting' => 'Bağlanıyor',
			'meta.connectTimeout' => 'Bağlantı Zaman Aşımı',
			'meta.timeout' => 'Zaman Aşımı',
			'meta.timeoutDuration' => 'Zaman Aşımı Süresi',
			'meta.runDuration' => 'Çalışma Süresi',
			'meta.latency' => 'Gecikme',
			'meta.latencyTest' => 'Gecikme Kontrolleri',
			'meta.language' => 'Dil',
			'meta.next' => 'Sonraki',
			'meta.done' => 'Bitti',
			'meta.apply' => 'Uygula',
			'meta.refresh' => 'Yenile',
			'meta.retry' => 'Tekrar dene?',
			'meta.update' => 'Güncelle',
			'meta.updateInterval' => 'Güncelleme aralığı',
			'meta.updateInterval5mTips' => 'Minimum: 5dk',
			'meta.updateFailed' => ({required Object p}) => 'Güncelleme başarısız: ${p}',
			'meta.samplingUnit' => 'Örnekleme Zaman Birimi',
			'meta.queryResultCount' => 'Sorgu Sonuç Sayısı',
			'meta.queryLimit' => ({required Object p}) => '${p} veriye kadar görüntüle',
			'meta.none' => 'Hiçbiri',
			'meta.start' => 'Başlat',
			'meta.pause' => 'Duraklat',
			'meta.reset' => 'Sıfırla',
			'meta.submit' => 'Gönder',
			'meta.user' => 'Kullanıcı',
			'meta.account' => 'Hesap',
			'meta.password' => 'Şifre',
			'meta.required' => 'Gerekli',
			'meta.type' => 'Tür',
			'meta.path' => 'Yol',
			'meta.local' => 'Yerel',
			'meta.remote' => 'Uzak',
			'meta.other' => 'Diğer',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'Geçersiz URL',
			'meta.urlCannotEmpty' => 'Bağlantı boş olamaz',
			'meta.urlTooLong' => 'URL çok uzun (>8182)',
			'meta.copyUrl' => 'Bağlantıyı Kopyala',
			'meta.openUrl' => 'Bağlantıyı Aç',
			'meta.shareUrl' => 'Bağlantıyı Paylaş',
			'meta.speedTestUrl' => 'Hız Testi URL\'si',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'Statik IP',
			'meta.staticIPTips' => '[TUN HijackDNS] veya [${_root.SettingsScreen.inboundDomainResolve}] etkinleştirmeniz gerekir.',
			'meta.isp' => 'VPN Sağlayıcı',
			'meta.domainSuffix' => 'Alan Adı Son eki',
			'meta.domain' => 'Alan Adı',
			'meta.domainKeyword' => 'Alan Adı Anahtar Kelimesi',
			'meta.domainRegex' => 'Alan Adı Regex',
			'meta.ip' => 'IP Adresi',
			'meta.port' => 'Bağlantı Noktası',
			'meta.portRange' => 'Bağlantı noktası aralığı',
			'meta.appPackage' => 'Uygulama Paket Kimliği',
			'meta.processName' => 'İşlem Adı',
			'meta.processPath' => 'İşlem Yolu',
			'meta.processDir' => 'İşlem Dizini',
			'meta.systemProxy' => 'Sistem Proxy',
			'meta.percentage' => 'Yüzde',
			'meta.statistics' => 'İstatistikler',
			'meta.statisticsAndAnalysis' => 'İstatistikler ve Analiz',
			'meta.statisticsDataDesensitize' => 'Veri Duyarsızlaştırma',
			'meta.statisticsDataDesensitizeTips' => 'İşlem/paket kimliği/hedef alan adı/hedef IP vb. duyarsızlaştırmadan sonra * ile değiştirilecek ve kaydedilecektir',
			'meta.records' => 'Kayıtlar',
			'meta.requestRecords' => 'İstek Kayıtları',
			'meta.netInterfaces' => 'Ağ Arayüzleri',
			'meta.netSpeed' => 'Hız',
			'meta.memoryTrendChart' => 'Bellek Eğilimi grafiği',
			'meta.goroutinesTrendChart' => 'GoRoutines Eğilimi grafiği',
			'meta.trafficTrendChart' => 'Trafik Eğilimi Grafiği',
			'meta.trafficDistributionChart' => 'Trafik Dağılım Grafiği',
			'meta.connectionChart' => 'Bağlantı Eğilimi Grafiği',
			'meta.memoryChart' => 'Bellek Eğilimi grafiği',
			'meta.trafficStatistics' => 'Trafik istatistikleri',
			'meta.traffic' => 'Trafik',
			'meta.trafficTotal' => 'Toplam Trafik',
			'meta.trafficProxy' => 'Proxy Trafiği',
			'meta.trafficDirect' => 'Doğrudan Trafik',
			'meta.website' => 'Web sitesi',
			'meta.memory' => 'Bellek',
			'meta.outboundMode' => 'Giden Modu',
			'meta.rule' => 'Kural',
			'meta.global' => 'Global',
			'meta.qrcode' => 'QR Kodu',
			'meta.qrcodeTooLong' => 'Metin görüntülenebilmesi için çok uzun',
			'meta.qrcodeShare' => 'QR Kodunu Paylaş',
			'meta.textToQrcode' => 'Metni QR Koduna Dönüştür',
			'meta.qrcodeScan' => 'QR Kodunu Tara',
			'meta.qrcodeScanResult' => 'Tarama Sonucu',
			'meta.qrcodeScanFromImage' => 'Görüntüden Tara',
			'meta.qrcodeScanResultFailed' => 'Görüntü ayrıştırılamadı, lütfen ekran görüntüsünün geçerli bir QR kodu olduğundan emin olun',
			'meta.qrcodeScanResultEmpty' => 'Tarama Sonucu boş',
			'meta.screenshot' => 'Ekran Görüntüsü',
			'meta.backupAndSync' => 'Yedekleme ve Senkronizasyon',
			'meta.autoBackup' => 'Otomatik yedekleme',
			'meta.noProfileGotAutoBackup' => '[${_root.meta.myProfiles}] gibi veriler kaybolursa, bunları [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] veya diğer yedekleme kaynaklarından (iCloud veya Webdav vb. gibi) geri yükleyebilirsiniz',
			'meta.autoBackupAddProfile' => 'Profili ekledikten sonra',
			'meta.autoBackupRemoveProfile' => 'Profili sildikten sonra',
			'meta.profile' => 'Profil',
			'meta.currentProfile' => 'Mevcut Profil',
			'meta.importAndExport' => 'İçe ve Dışa Aktar',
			'meta.import' => 'İçe Aktar',
			'meta.importFromUrl' => 'URL\'den içe aktar',
			'meta.export' => 'Dışa Aktar',
			'meta.send' => 'Gönder',
			'meta.receive' => 'Al',
			'meta.sendConfirm' => 'Göndermeyi onayla?',
			'meta.termOfUse' => 'Hizmet Şartları',
			'meta.privacyPolicy' => 'Gizlilik Politikası',
			'meta.about' => 'Hakkında',
			'meta.name' => 'Ad',
			'meta.version' => 'Sürüm',
			'meta.notice' => 'Bildirim',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Eylem: ${p}\nNeden: ${p1}',
			'meta.sort' => 'Yeniden Sırala',
			'meta.novice' => 'Acemi Modu',
			'meta.willCompleteAfterRebootInstall' => 'Sistem genişletme kurulumunu tamamlamak için lütfen cihazınızı yeniden başlatın',
			'meta.willCompleteAfterRebootUninstall' => 'Sistem genişletme kaldırma işlemini tamamlamak için lütfen cihazınızı yeniden başlatın',
			'meta.requestNeedsUserApproval' => '1. Lütfen [Sistem Ayarları]-[Gizlilik ve Güvenlik] bölümünden Karing\'in sistem uzantılarını yüklemesine [İzin Verin]\n2. [Sistem Ayarları]-[Genel]-[Giriş Öğeleri Uzantıları]-[Ağ Uzantısı] bölümünden [karingServiceSE] etkinleştirin\ntamamladıktan sonra yeniden bağlanın',
			'meta.FullDiskAccessPermissionRequired' => 'Lütfen [Sistem Ayarları]-[Gizlilik ve Güvenlik]-[Tam Disk Erişimi İzni] bölümünden [karingServiceSE] iznini etkinleştirin ve yeniden bağlanın',
			'meta.tvMode' => 'TV Modu',
			'meta.recommended' => 'Önerilen',
			'meta.innerError' => ({required Object p}) => 'İç Hata: ${p}',
			'meta.logicOperation' => 'Mantık İşlemi',
			'meta.share' => 'Paylaş',
			'meta.candidateWord' => 'Aday Kelimeler',
			'meta.keywordOrRegx' => 'Anahtar Kelimeler/Regex',
			'meta.importFromClipboard' => 'Panodan İçe Aktar',
			'meta.exportToClipboard' => 'Panoya Dışa Aktar',
			'meta.server' => 'Sunucu',
			'meta.ads' => 'Reklamlar',
			'meta.adsRemove' => 'Reklamları kaldır',
			'meta.donate' => 'Bağış Yap',
			'meta.diversion' => 'Yönlendirme',
			'meta.diversionRules' => 'Yönlendirme Kuralları',
			'meta.diversionCustomGroup' => 'Özel Yönlendirme Grubu',
			'meta.urlTestCustomGroup' => 'Özel Otomatik Seçim',
			'meta.setting' => 'Ayarlar',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'LAN Senkronizasyonu',
			'meta.lanSyncNotQuitTips' => 'Senkronizasyon tamamlanmadan bu arayüzden çıkmayın',
			'meta.deviceNoSpace' => 'Yeterli disk alanı yok',
			'meta.hideSystemApp' => 'Sistem Uygulamalarını Gizle',
			'meta.hideAppIcon' => 'Uygulama Simgelerini Gizle',
			'meta.hideDockIcon' => 'Dock Simgesini Gizle',
			'meta.remark' => 'Açıklama',
			'meta.remarkExist' => 'Açıklama zaten mevcut, lütfen başka bir ad kullanın',
			'meta.remarkCannotEmpty' => 'Açıklama boş olamaz',
			'meta.remarkTooLong' => '32 karaktere kadar açıklamalar',
			'meta.openDir' => 'Dosya Dizinini Aç',
			'meta.fileChoose' => 'Dosya Seç',
			'meta.filePathCannotEmpty' => 'Dosya yolu boş olamaz',
			'meta.fileNotExist' => ({required Object p}) => 'Dosya mevcut değil: ${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Geçersiz dosya türü: ${p}',
			'meta.uwpExemption' => 'UWP Ağ İzolasyonu Muafiyetleri',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Profil Al',
			'meta.addProfile' => 'Profil Ekle',
			'meta.myProfiles' => 'Profillerim',
			'meta.profileEdit' => 'Profili Düzenle',
			'meta.profileEditUrlExist' => 'URL zaten mevcut, lütfen başka bir URL kullanın',
			'meta.profileEditReloadAfterProfileUpdate' => 'Profil güncellemesinden sonra yeniden yükle',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Profil otomatik güncellemesinden sonra gecikme testlerini başlat',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN bağlı olmalı ve [Profil güncellemesinden sonra yeniden yükle] Etkinleştirilmelidir',
			'meta.profileEditTestLatencyAutoRemove' => 'Gecikme testlerinde başarısız olan sunucuları otomatik olarak kaldır',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'En fazla 3 kez dene',
			'meta.profileImport' => 'Profil Dosyasını İçe Aktar',
			'meta.profileAddUrlOrContent' => 'Profil Bağlantısı Ekle',
			'meta.profileExists' => 'Profil zaten mevcut, lütfen tekrar eklemeyin',
			'meta.profileUrlOrContent' => 'Profil Bağlantısı/İçeriği',
			'meta.profileUrlOrContentHit' => 'Profil Bağlantısı/İçeriği [Gerekli] (Clash, V2ray (toplu destekli), Stash, Karing, Sing-box, Shadowsocks, Sub Profil bağlantılarını destekler)',
			'meta.profileUrlOrContentCannotEmpty' => 'Profil Bağlantısı boş olamaz',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Format yanlış, lütfen düzeltin ve tekrar ekleyin: ${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Ekleme başarısız oldu: ${p}, lütfen [UserAgent]\'ı değiştirmeyi deneyin ve tekrar deneyin veya yapılandırma bağlantısını açmak ve tarayıcı tarafından indirilen yapılandırma dosyasını bu uygulamaya aktarmak için cihazın yerleşik tarayıcısını kullanın',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Ekleme başarısız oldu: ${p}, lütfen proxy\'yi açın veya mevcut proxy düğümünü değiştirin ve tekrar deneyin',
			'meta.profileAddParseFailed' => 'Profil Ayrıştırma başarısız oldu',
			'meta.profileAddNoServerAvaliable' => 'Kullanılabilir sunucu yok, Profil Bağlantısının veya Profil Dosyasının geçerli olduğundan emin olun; Profiliniz GitHub\'dan geliyorsa lütfen bağlantıyı sayfadaki [Raw] düğmesinden alın',
			'meta.profileAddWrapSuccess' => 'Profil başarıyla oluşturuldu, görüntülemek için lütfen [${_root.meta.myProfiles}] bölümüne gidin',
			'diversionRulesKeep' => '[${_root.meta.isp}] ${_root.meta.diversionRules} Koru',
			'diversionCustomGroupPreset' => 'Ön ayar [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Not: Etkinleştirilen öğeler [${_root.meta.diversionCustomGroup}] ve [${_root.meta.diversionRules}] bölümlerine eklenecek/üzerine yazılacaktır',
			'diversionCustomGroupAddTips' => 'Not: Ekledikten sonra sırayı manuel olarak ayarlamanız gerekebilir, aksi takdirde yeni eklenen yönlendirme etkili olmayabilir',
			'rulesetEnableTips' => 'İpucu: Seçenekleri açtıktan sonra ilgili kuralları ayarlamak için lütfen [${_root.meta.diversionRules}] bölümüne gidin, aksi takdirde etkili olmayacaktır',
			'ispUserAgentTips' => '[${_root.meta.isp}], [HTTP] isteğindeki [UserAgent] değerine göre farklı abonelik türlerinde veriler gönderecektir',
			'ispDiversionTips' => '[${_root.meta.isp}] trafik yönlendirme kuralları sağlar; [V2Ray] türü abonelikler trafik yönlendirme kurallarını desteklemez',
			'isp.bind' => '[${_root.meta.isp}]\'e Bağla',
			'isp.unbind' => ({required Object p}) => 'Bağlantıyı Kes [${p}]',
			'isp.faq' => ({required Object p}) => 'SSS [${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram [${p}]',
			'isp.follow' => ({required Object p}) => 'Takip Et [${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] Geçersiz veya süresi dolmuş',
			'permission.camera' => 'Kamera',
			'permission.screen' => 'Ekran Kaydı',
			'permission.appQuery' => 'Uygulama Listesini Al',
			'permission.request' => ({required Object p}) => '[${p}] iznini aç',
			'permission.requestNeed' => ({required Object p}) => 'Lütfen [${p}] iznini açın',
			'tls.insecure' => 'Sertifika Doğrulamasını Atla',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'TLS Parçalamayı Etkinleştir',
			'tls.fragmentSize' => 'TLS Parça Boyutu',
			'tls.fragmentSleep' => 'TLS Parça Bekleme Süresi',
			'tls.mixedCaseSNIEnable' => 'TLS Karışık SNI\'yı Etkinleştir',
			_ => null,
		} ?? switch (path) {
			'tls.paddingEnable' => 'TLS Padding\'i Etkinleştir',
			'tls.paddingSize' => 'TLS Padding Boyutu',
			'outboundRuleMode.currentSelected' => 'Şu An Seçili',
			'outboundRuleMode.urltest' => 'Otomatik Seç',
			'outboundRuleMode.direct' => 'Doğrudan',
			'outboundRuleMode.block' => 'Engelle',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Profil Güncellemesi',
			'theme.light' => 'Açık',
			'theme.dark' => 'Koyu',
			'theme.auto' => 'Otomatik',
			'downloadProxyStrategy' => 'İndirme Kanalı',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: Alan adını çözümlemek için proxy sunucusu üzerinden DNS sunucusuna bağlanın\n[${_root.dnsProxyResolveMode.direct}]: Alan adını çözümlemek için doğrudan DNS sunucusuna bağlanın\n[${_root.dnsProxyResolveMode.fakeip}]: Proxy sunucusu sizin adınıza alan adını çözümler; VPN bağlantısını keserseniz uygulamanızın yeniden başlatılması gerekebilir; yalnızca [TUN] gelen trafiği için geçerlidir',
			'routeFinal' => 'varsayılan',
			'protocolSniff' => 'Protokol Koklama',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Lütfen [${p}] kullanın',
			'turnOffPrivateDirect' => 'Lütfen önce [Özel ağ doğrudan bağlantısı] seçeneğini açın',
			'targetConnectFailed' => ({required Object p}) => '[${p}] bağlantısı başarısız oldu. Lütfen cihazların aynı LAN\'da olduğundan emin olun',
			'appleTVSync' => 'Mevcut çekirdek yapılandırmasını Apple TV - Karing ile senkronize et',
			'appleTVSyncDone' => 'Senkronizasyon tamamlandı. Bağlantıyı başlatmak/yeniden başlatmak için lütfen Apple TV - Karing\'e gidin',
			'appleTVRemoveCoreConfig' => 'Apple TV - Karing Çekirdek Yapılandırmasını Sil',
			'appleTVRemoveCoreConfigDone' => 'Apple TV - Karing\'in Çekirdek Yapılandırması silindi; VPN hizmeti bağlantısı kesildi',
			'appleTVUrlInvalid' => 'Geçersiz URL, lütfen Apple TV - Karing\'i açın ve Karing tarafından görüntülenen QR kodunu tarayın',
			'appleTV404' => ({required Object p}) => 'AppleTV: Karing[${p}] bu işleve sahip değil, lütfen yükseltin ve tekrar deneyin',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'Çekirdek ana sürümü uyuşmuyor, lütfen [${p}] sürümüne yükseltin ve tekrar deneyin',
			'remoteProfileEditConfirm' => 'Profil güncellendikten sonra düğüm değişiklikleri geri yüklenecektir. Devam edilsin mi?',
			'mustBeValidHttpsURL' => 'Geçerli bir https URL\'si olmalıdır',
			'fileNotExistReinstall' => ({required Object p}) => 'Dosya eksik [${p}], lütfen yeniden yükleyin',
			'noNetworkConnect' => 'İnternet bağlantısı yok',
			'sudoPassword' => 'sudo şifresi (TUN modu için gereklidir)',
			'turnOffNetworkBeforeInstall' => 'Güncellemeyi yüklemeden önce [Uçak Modu]na geçmeniz önerilir',
			'latencyTestResolveIP' => 'Manuel olarak kontrol ederken çıkış IP\'sini çözümle',
			'latencyTestConcurrency' => 'Eşzamanlılık',
			'edgeRuntimeNotInstalled' => 'Mevcut cihazda Edge WebView2 çalışma zamanı yüklü değil, bu nedenle sayfa görüntülenemiyor. Lütfen Edge WebView2 çalışma zamanını (x64) indirip yükleyin, uygulamayı yeniden başlatın ve tekrar deneyin.',
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
