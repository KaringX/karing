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
class TranslationsId with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsId({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.id,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <id>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsId _root = this; // ignore: unused_field

	@override 
	TranslationsId $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsId(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$AboutScreen$id AboutScreen = _Translations$AboutScreen$id._(_root);
	@override late final _Translations$BackupAndSyncWebdavScreen$id BackupAndSyncWebdavScreen = _Translations$BackupAndSyncWebdavScreen$id._(_root);
	@override late final _Translations$DiversionGroupCustomEditScreen$id DiversionGroupCustomEditScreen = _Translations$DiversionGroupCustomEditScreen$id._(_root);
	@override late final _Translations$DiversionRuleDetectScreen$id DiversionRuleDetectScreen = _Translations$DiversionRuleDetectScreen$id._(_root);
	@override late final _Translations$DiversionRulesScreen$id DiversionRulesScreen = _Translations$DiversionRulesScreen$id._(_root);
	@override late final _Translations$DnsSettingsScreen$id DnsSettingsScreen = _Translations$DnsSettingsScreen$id._(_root);
	@override late final _Translations$FileContentViewerScreen$id FileContentViewerScreen = _Translations$FileContentViewerScreen$id._(_root);
	@override late final _Translations$HomeScreen$id HomeScreen = _Translations$HomeScreen$id._(_root);
	@override late final _Translations$LaunchFailedScreen$id LaunchFailedScreen = _Translations$LaunchFailedScreen$id._(_root);
	@override late final _Translations$MyProfilesMergeScreen$id MyProfilesMergeScreen = _Translations$MyProfilesMergeScreen$id._(_root);
	@override late final _Translations$NetCheckScreen$id NetCheckScreen = _Translations$NetCheckScreen$id._(_root);
	@override late final _Translations$NetConnectionsFilterScreen$id NetConnectionsFilterScreen = _Translations$NetConnectionsFilterScreen$id._(_root);
	@override late final _Translations$NetConnectionsScreen$id NetConnectionsScreen = _Translations$NetConnectionsScreen$id._(_root);
	@override late final _Translations$PerAppAndroidScreen$id PerAppAndroidScreen = _Translations$PerAppAndroidScreen$id._(_root);
	@override late final _Translations$RegionSettingsScreen$id RegionSettingsScreen = _Translations$RegionSettingsScreen$id._(_root);
	@override late final _Translations$ServerSelectScreen$id ServerSelectScreen = _Translations$ServerSelectScreen$id._(_root);
	@override late final _Translations$SettingsScreen$id SettingsScreen = _Translations$SettingsScreen$id._(_root);
	@override late final _Translations$UserAgreementScreen$id UserAgreementScreen = _Translations$UserAgreementScreen$id._(_root);
	@override late final _Translations$VersionUpdateScreen$id VersionUpdateScreen = _Translations$VersionUpdateScreen$id._(_root);
	@override late final _Translations$loginScreen$id loginScreen = _Translations$loginScreen$id._(_root);
	@override late final _Translations$CommonWidget$id CommonWidget = _Translations$CommonWidget$id._(_root);
	@override late final _Translations$main$id main = _Translations$main$id._(_root);
	@override late final _Translations$meta$id meta = _Translations$meta$id._(_root);
	@override String get diversionRulesKeep => 'Pertahankan [${_root.meta.isp}]${_root.meta.diversionRules}';
	@override String get diversionCustomGroupPreset => 'Preset [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'Perhatian: item yang diaktifkan akan ditambahkan/menimpa [${_root.meta.diversionCustomGroup}] dan [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'Perhatian: setelah ditambahkan, Anda mungkin perlu menyesuaikan urutan secara manual, jika tidak routing baru mungkin tidak berlaku';
	@override String get rulesetEnableTips => 'Tip: setelah mengaktifkan opsi, silakan buka [${_root.meta.diversionRules}] untuk mengatur aturan terkait, jika tidak maka tidak akan berlaku';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] akan mengirimkan data jenis langganan yang berbeda berdasarkan [UserAgent] dalam permintaan [HTTP]';
	@override String get ispDiversionTips => 'Aturan routing yang disediakan oleh [${_root.meta.isp}]; langganan tipe [V2Ray] tidak mendukung aturan routing';
	@override late final _Translations$isp$id isp = _Translations$isp$id._(_root);
	@override late final _Translations$permission$id permission = _Translations$permission$id._(_root);
	@override late final _Translations$tls$id tls = _Translations$tls$id._(_root);
	@override late final _Translations$outboundRuleMode$id outboundRuleMode = _Translations$outboundRuleMode$id._(_root);
	@override late final _Translations$dnsProxyResolveMode$id dnsProxyResolveMode = _Translations$dnsProxyResolveMode$id._(_root);
	@override late final _Translations$proxyStrategy$id proxyStrategy = _Translations$proxyStrategy$id._(_root);
	@override late final _Translations$reloadReason$id reloadReason = _Translations$reloadReason$id._(_root);
	@override late final _Translations$theme$id theme = _Translations$theme$id._(_root);
	@override String get downloadProxyStrategy => 'Kanal unduhan';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: resolusi domain dilakukan dengan menghubungkan server DNS melalui server proxy\n[${_root.dnsProxyResolveMode.direct}]: resolusi domain dilakukan dengan menghubungkan server DNS secara langsung\n[${_root.dnsProxyResolveMode.fakeip}]: domain diresolusikan oleh server proxy; jika koneksi VPN diputus, aplikasi Anda mungkin perlu dimulai ulang; hanya berlaku untuk trafik inbound [TUN]';
	@override String get routeFinal => 'final';
	@override String get protocolSniff => 'Deteksi protokol';
	@override String sendOrReceiveNotMatch({required Object p}) => 'Silakan gunakan [${p}]';
	@override String get turnOffPrivateDirect => 'Silakan aktifkan [Jaringan privat langsung] terlebih dahulu';
	@override String targetConnectFailed({required Object p}) => 'Gagal terhubung ke [${p}], pastikan perangkat berada dalam LAN yang sama';
	@override String get appleTVSync => 'Sinkronkan konfigurasi inti saat ini ke Apple TV - Karing';
	@override String get appleTVSyncDone => 'Sinkronisasi selesai, silakan buka Apple TV - Karing untuk mengaktifkan koneksi/menyambung ulang';
	@override String get appleTVRemoveCoreConfig => 'Hapus konfigurasi inti Apple TV - Karing';
	@override String get appleTVRemoveCoreConfigDone => 'File konfigurasi inti Apple TV - Karing telah dihapus; layanan VPN telah diputuskan';
	@override String get appleTVUrlInvalid => 'URL tidak valid, silakan buka Apple TV - Karing dan pindai kode QR yang ditampilkan Karing';
	@override String appleTV404({required Object p}) => 'AppleTV: Karing [${p}] tidak memiliki fungsi ini, silakan perbarui lalu coba lagi';
	@override String appleCoreVersionNotMatch({required Object p}) => 'Versi mayor inti tidak cocok, silakan perbarui [${p}] lalu coba lagi';
	@override String get remoteProfileEditConfirm => 'Setelah konfigurasi diperbarui, perubahan node akan dipulihkan, lanjutkan?';
	@override String get continueConnectConfirm => 'Lanjutkan koneksi?';
	@override String get mustBeValidHttpsURL => 'Harus berupa URL https yang valid';
	@override String fileNotExistReinstall({required Object p}) => 'File hilang [${p}], silakan instal ulang';
	@override String get noNetworkConnect => 'Tidak ada koneksi jaringan';
	@override String get sudoPassword => 'Kata sandi sudo (diperlukan untuk mode TUN)';
	@override String get turnOffNetworkBeforeInstall => 'Disarankan beralih ke [Mode pesawat] sebelum memasang pembaruan';
	@override String get latencyTestResolveIP => 'Saat deteksi manual, resolusikan juga IP keluar';
	@override String get latencyTestConcurrency => 'Jumlah konkurensi';
	@override String get edgeRuntimeNotInstalled => 'Perangkat saat ini belum menginstal runtime Edge WebView2 sehingga halaman tidak dapat ditampilkan. Silakan unduh dan instal runtime Edge WebView2 (x64), lalu mulai ulang aplikasi';
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
		'id': 'Bahasa Indonesia',
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
class _Translations$AboutScreen$id implements Translations$AboutScreen$en {
	_Translations$AboutScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'Referensi instalasi';
	@override String get installTime => 'Waktu instalasi';
	@override String get versionChannel => 'Kanal pembaruan otomatis';
	@override String get updateWhenConnected => 'Periksa pembaruan setelah terhubung';
	@override String get autoDownloadPkg => 'Unduh paket pembaruan secara otomatis';
	@override String get disableAppImproveData => 'Data peningkatan aplikasi';
	@override String get disableUAReportTip => 'Mengaktifkan [${_root.AboutScreen.disableAppImproveData}] membantu kami meningkatkan stabilitas dan kegunaan produk. Kami tidak akan mengumpulkan data privasi pribadi apa pun; setelah dinonaktifkan, aplikasi tidak akan lagi mengumpulkan data apa pun';
	@override String get devOptions => 'Opsi pengembang';
	@override String get enableDebugLog => 'Aktifkan log debug';
	@override String get viewFilsContent => 'Lihat file';
	@override String get enablePprof => 'Aktifkan pprof';
	@override String get pprofPanel => 'Panel pprof';
	@override String get allowRemoteAccessPprof => 'Izinkan akses jarak jauh ke ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'Izinkan akses jarak jauh ke ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'Gunakan konfigurasi sing-box asli';
}

// Path: BackupAndSyncWebdavScreen
class _Translations$BackupAndSyncWebdavScreen$id implements Translations$BackupAndSyncWebdavScreen$en {
	_Translations$BackupAndSyncWebdavScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'Alamat server';
	@override String get webdavRequired => 'Tidak boleh kosong';
	@override String get webdavLoginFailed => 'Login gagal:';
	@override String get webdavListFailed => 'Gagal mendapatkan daftar file:';
}

// Path: DiversionGroupCustomEditScreen
class _Translations$DiversionGroupCustomEditScreen$id implements Translations$DiversionGroupCustomEditScreen$en {
	_Translations$DiversionGroupCustomEditScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => '[Domain] tidak valid:${p}';
	@override String invalidIpCidr({required Object p}) => '[IP Cidr] tidak valid:${p}';
	@override String invalid({required Object p0, required Object p}) => '[${p0}] tidak valid:${p}';
	@override String invalidRuleSet({required Object p}) => '[Rule Set] tidak valid:${p}, URL harus berupa URL https yang valid, dan file biner dengan ekstensi .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => '[Rule Set(build-in)] tidak valid:${p}, formatnya geosite:xxx atau geoip:xxx atau acl:xxx, dan xxx harus berupa nama aturan yang valid';
	@override String invalidPackageId({required Object p}) => '[${_root.meta.appPackage}] tidak valid:${p}';
	@override String get setDiversionRule => 'Tip: setelah menyimpan, silakan buka [${_root.meta.diversionRules}] untuk mengatur aturan terkait, jika tidak maka tidak akan berlaku';
}

// Path: DiversionRuleDetectScreen
class _Translations$DiversionRuleDetectScreen$id implements Translations$DiversionRuleDetectScreen$en {
	_Translations$DiversionRuleDetectScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deteksi aturan routing';
	@override String get rule => 'Aturan:';
	@override String get outbound => 'Server proxy:';
}

// Path: DiversionRulesScreen
class _Translations$DiversionRulesScreen$id implements Translations$DiversionRulesScreen$en {
	_Translations$DiversionRulesScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'Tip: aturan dicocokkan dari atas ke bawah. Jika tidak ada aturan yang cocok, maka gunakan [final]';
}

// Path: DnsSettingsScreen
class _Translations$DnsSettingsScreen$id implements Translations$DnsSettingsScreen$en {
	_Translations$DnsSettingsScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP tidak boleh kosong';
	@override String get urlCanNotEmpty => 'URL tidak boleh kosong';
	@override String error({required Object p}) => 'Tipe tidak didukung:${p}';
	@override String get dnsDesc => 'Kolom pertama data latensi adalah latensi kueri langsung;\nKolom kedua: jika [[Lalu lintas proxy]解析 melalui server proxy] diaktifkan, data latensi adalah latensi kueri yang diteruskan melalui server proxy saat ini; jika tidak diaktifkan, data latensi adalah latensi kueri langsung';
}

// Path: FileContentViewerScreen
class _Translations$FileContentViewerScreen$id implements Translations$FileContentViewerScreen$en {
	_Translations$FileContentViewerScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lihat isi file';
	@override String get clearFileContent => 'Konfirmasi hapus isi file?';
	@override String get clearFileContentTips => 'Konfirmasi hapus isi file konfigurasi? Menghapus isi file konfigurasi dapat menyebabkan kehilangan data atau fungsi aplikasi tidak normal, harap lakukan dengan hati-hati';
}

// Path: HomeScreen
class _Translations$HomeScreen$id implements Translations$HomeScreen$en {
	_Translations$HomeScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String invalidServer({required Object p}) => '[${p}] sudah tidak valid, silakan pilih server lagi';
	@override String disabledServer({required Object p}) => '[${p}] telah dinonaktifkan, silakan pilih server lagi';
	@override String get expiredServer => 'Tidak ada server yang tersedia: konfigurasi mungkin telah kedaluwarsa atau dinonaktifkan';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'Port proxy SOCKS:${sp}, port proxy HTTP(S):${hp}';
	@override String get myLinkEmpty => 'Silakan atur [Tautan cepat] terlebih dahulu sebelum digunakan';
	@override String tooMuchServers({required Object p, required Object p1}) => 'Server proxy [${p}>${p1}] terlalu banyak, koneksi mungkin gagal karena keterbatasan memori sistem';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'Server proxy [${p}>${p1}] terlalu banyak, dapat menyebabkan koneksi lambat atau gagal tersambung';
}

// Path: LaunchFailedScreen
class _Translations$LaunchFailedScreen$id implements Translations$LaunchFailedScreen$en {
	_Translations$LaunchFailedScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'Gagal memulai aplikasi [nama proses tidak valid], silakan instal ulang aplikasi ke direktori terpisah';
	@override String get invalidProfile => 'Gagal memulai aplikasi [gagal mengakses file konfigurasi], silakan instal ulang aplikasi';
	@override String get invalidVersion => 'Gagal memulai aplikasi [versi tidak valid], silakan instal ulang aplikasi';
	@override String get systemVersionLow => 'Gagal memulai aplikasi [versi sistem terlalu rendah]';
	@override String get invalidInstallPath => 'Jalur instalasi tidak valid, silakan instal ulang ke jalur yang valid';
}

// Path: MyProfilesMergeScreen
class _Translations$MyProfilesMergeScreen$id implements Translations$MyProfilesMergeScreen$en {
	_Translations$MyProfilesMergeScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'Gabungkan konfigurasi';
	@override String get profilesMergeTarget => 'Konfigurasi target';
	@override String get profilesMergeSource => 'Konfigurasi sumber';
	@override String get profilesMergeTips => 'Tip: informasi routing dari konfigurasi sumber akan dibuang';
}

// Path: NetCheckScreen
class _Translations$NetCheckScreen$id implements Translations$NetCheckScreen$en {
	_Translations$NetCheckScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pemeriksaan jaringan';
	@override String get warn => 'Perhatian: karena dipengaruhi lingkungan jaringan dan aturan routing, hasil pengujian tidak sepenuhnya setara dengan hasil penggunaan sebenarnya';
	@override String get invalidDomain => 'Domain tidak valid';
	@override String get connectivity => 'Konektivitas jaringan';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'Semua tes koneksi IPv4 [${p}] gagal';
	@override String get connectivityTestIpv4Ok => 'Koneksi IPv4 berhasil';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'Semua tes koneksi IPv6 [${p}] gagal, jaringan Anda mungkin tidak mendukung IPv6';
	@override String get connectivityTestIpv6Ok => 'Koneksi IPv6 berhasil';
	@override String get connectivityTestOk => 'Jaringan telah terhubung ke internet';
	@override String get connectivityTestFailed => 'Jaringan belum terhubung ke internet';
	@override String get remoteRulesetsDownloadOk => 'Semua berhasil diunduh';
	@override String get remoteRulesetsDownloadNotOk => 'Sedang diunduh atau unduhan gagal';
	@override String get outbound => 'Server proxy';
	@override String outboundOk({required Object p}) => '[${p}] berhasil terhubung';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] gagal terhubung\nGalat:[${p2}]';
	@override String get dnsServer => 'Server DNS';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Resolusi domain [${p1}] berhasil\nAturan DNS:[${p2}]\nLatensi:[${p3} ms]\nAlamat:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => 'Resolusi domain [${p1}] gagal\nAturan:[${p2}]\nGalat:[${p3}]';
	@override String get host => 'Koneksi HTTP';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nAturan routing:[${p2}]\nServer proxy:[${p3}]';
	@override String get hostConnectionOk => 'Koneksi berhasil';
	@override String hostConnectionFailed({required Object p}) => 'Koneksi gagal:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _Translations$NetConnectionsFilterScreen$id implements Translations$NetConnectionsFilterScreen$en {
	_Translations$NetConnectionsFilterScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'Domain/IP';
	@override String get app => 'Aplikasi';
	@override String get rule => 'Aturan';
	@override String get chain => 'Outbound';
}

// Path: NetConnectionsScreen
class _Translations$NetConnectionsScreen$id implements Translations$NetConnectionsScreen$en {
	_Translations$NetConnectionsScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'Disalin sebagai format CSV';
	@override String get selectType => 'Pilih tipe routing';
	@override String get loopbackWarning => 'Kemungkinan terjadi loopback jaringan. Periksa pengaturan adaptor jaringan';
}

// Path: PerAppAndroidScreen
class _Translations$PerAppAndroidScreen$id implements Translations$PerAppAndroidScreen$en {
	_Translations$PerAppAndroidScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proxy per aplikasi';
	@override String get whiteListMode => 'Mode daftar putih';
	@override String get whiteListModeTip => 'Setelah diaktifkan: hanya aplikasi yang dicentang yang diproksi; jika tidak diaktifkan: hanya aplikasi yang tidak dicentang yang diproksi';
}

// Path: RegionSettingsScreen
class _Translations$RegionSettingsScreen$id implements Translations$RegionSettingsScreen$en {
	_Translations$RegionSettingsScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Negara dan wilayah';
	@override String get Regions => 'Tip: silakan atur negara atau wilayah tempat Anda berada dengan benar, jika tidak dapat menyebabkan kesalahan routing';
}

// Path: ServerSelectScreen
class _Translations$ServerSelectScreen$id implements Translations$ServerSelectScreen$en {
	_Translations$ServerSelectScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pilih server';
	@override String get autoSelectServer => 'Pilih server dengan latensi terendah secara otomatis';
	@override String get recentUse => 'Terakhir digunakan';
	@override String get myFav => 'Favorit saya';
	@override String selectLocal({required Object p}) => 'Server yang dipilih adalah alamat lokal dan mungkin tidak dapat digunakan dengan benar:${p}';
	@override String get selectRequireEnableIPv6 => 'Server yang dipilih adalah alamat IPv6, perlu [Aktifkan IPv6]';
	@override String get selectDisabled => 'Server ini telah dinonaktifkan';
	@override String get error404 => 'Terjadi kesalahan saat pemeriksaan latensi, silakan periksa apakah ada konfigurasi dengan isi yang sama';
}

// Path: SettingsScreen
class _Translations$SettingsScreen$id implements Translations$SettingsScreen$en {
	_Translations$SettingsScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'Dapatkan trafik';
	@override String get tutorial => 'Panduan penggunaan';
	@override String get commonlyUsedRulesets => 'Rule set yang umum dipakai';
	@override String get htmlBoard => 'Panel online';
	@override String get dnsLeakDetection => 'Deteksi kebocoran DNS';
	@override String get proxyLeakDetection => 'Deteksi kebocoran proxy';
	@override String get speedTest => 'Uji kecepatan';
	@override String get rulesetDirectDownlad => 'Unduh Rule Set langsung';
	@override String get hideUnusedDiversionGroup => 'Sembunyikan aturan routing yang tidak diaktifkan';
	@override String get disableISPDiversionGroup => 'Nonaktifkan [${_root.meta.isp}]${_root.meta.diversionRules}';
	@override String get portSettingRule => 'Berdasarkan aturan';
	@override String get portSettingDirectAll => 'Semua langsung';
	@override String get portSettingProxyAll => 'Semua melalui proxy';
	@override String get portSettingControl => 'Kontrol dan sinkronisasi';
	@override String get portSettingCluster => 'Layanan klaster';
	@override String get modifyPort => 'Ubah port';
	@override String get modifyPortOccupied => 'Port sudah digunakan, silakan gunakan port lain';
	@override String get ipStrategyTips => 'Sebelum mengaktifkan, pastikan jaringan Anda sudah mendukung IPv6, jika tidak beberapa trafik mungkin tidak bisa diakses dengan benar';
	@override String get tunAppendHttpProxy => 'Tambahkan proxy HTTP ke VPN';
	@override String get tunAppendHttpProxyTips => 'Beberapa aplikasi akan melewati perangkat kartu jaringan virtual dan langsung terhubung ke proxy HTTP';
	@override String get tunAllowBypassHttpProxyDomain => 'Izinkan domain untuk melewati proxy HTTP';
	@override String get dnsEnableRule => 'Aktifkan aturan routing DNS';
	@override String get dnsEnableProxyResolveMode => 'Kanal resolusi [${_root.meta.trafficProxy}]';
	@override String get dnsEnableClientSubnet => 'Aktifkan ECS untuk [${_root.meta.trafficDirect}]';
	@override String get dnsTestDomain => 'Domain uji';
	@override String get dnsTestDomainInvalid => 'Domain tidak valid';
	@override String get dnsTypeOutbound => 'Server proxy';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'Server DNS';
	@override String get dnsEnableRuleTips => 'Setelah diaktifkan, nama domain akan menggunakan server DNS yang sesuai untuk resolusi berdasarkan aturan routing';
	@override String get dnsEnableFakeIpTips => 'Setelah FakeIP diaktifkan, jika koneksi VPN diputus, aplikasi Anda mungkin perlu dimulai ulang; fitur ini memerlukan [Mode TUN]';
	@override String get dnsTypeOutboundTips => 'Digunakan untuk resolusi domain [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'Digunakan untuk resolusi domain [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'Digunakan untuk resolusi domain [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'Digunakan untuk resolusi domain [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'Atur server secara otomatis';
	@override String get dnsResetServer => 'Reset server';
	@override String get dnsEnableStaticIPForResolver => 'Prioritaskan resolusi statis';
	@override String get dnsEnableStaticIPForResolverTips => 'Efektif mencegah server DNS sendiri terkontaminasi saat melakukan resolusi';
	@override String get inboundDomainResolve => 'Resolusi domain inbound';
	@override String get privateDirect => 'Jaringan privat langsung';
	@override String inboundDomainResolveTips({required Object p}) => 'Beberapa domain tanpa aturan routing perlu diresolusikan terlebih dahulu agar dapat cocok dengan aturan routing berbasis IP; fitur ini memengaruhi permintaan inbound pada port proxy [${p}]';
	@override String get useRomoteRes => 'Gunakan sumber daya jarak jauh';
	@override String get autoAppendRegion => 'Tambahkan aturan dasar secara otomatis';
	@override String get autoSelect => 'Pilih otomatis';
	@override String get autoSelectServerIgnorePerProxyServer => 'Abaikan server proxy [depan/berantai]';
	@override String get autoSelectServerInterval => 'Interval pemeriksaan latensi';
	@override String get autoSelectSelectedHealthCheckInterval => 'Interval pemeriksaan kesehatan server saat ini';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'Uji ulang saat jaringan berubah';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'Perbarui server saat ini setelah tes latensi manual';
	@override String get autoSelectServerIntervalTips => 'Semakin pendek interval pemeriksaan latensi, semakin cepat data latensi server diperbarui, tetapi akan menggunakan lebih banyak sumber daya dan baterai lebih cepat';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'Jika pemeriksaan gagal maka node akan diganti; jika saat pergantian node tidak ditemukan node yang tersedia, maka grup tersebut akan diperiksa ulang latensinya';
	@override String get autoSelectServerFavFirst => 'Prioritaskan [Favorit saya]';
	@override String get autoSelectServerFavFirstTips => 'Jika daftar [Favorit saya] tidak kosong, maka server di [Favorit saya] akan digunakan';
	@override String get autoSelectServerFilter => 'Saring server tidak valid';
	@override String autoSelectServerFilterTips({required Object p}) => 'Server yang gagal dalam pemeriksaan latensi akan difilter; jika setelah penyaringan tidak ada server yang tersedia, maka gunakan [${p}] server pertama';
	@override String get autoSelectServerLimitedNum => 'Batas jumlah server';
	@override String get autoSelectServerLimitedNumTips => 'Server yang melebihi jumlah ini akan difilter';
	@override String get numInvalid => 'Angka tidak valid';
	@override String get hideInvalidServer => 'Sembunyikan server tidak valid';
	@override String get sortServer => 'Urutkan server';
	@override String get sortServerTips => 'Urutkan berdasarkan latensi dari rendah ke tinggi';
	@override String get selectServerHideRecommand => 'Sembunyikan [Rekomendasi]';
	@override String get selectServerHideRecent => 'Sembunyikan [Terakhir digunakan]';
	@override String get selectServerHideFav => 'Sembunyikan [Favorit saya]';
	@override String get homeScreen => 'Layar utama';
	@override String get theme => 'Tema';
	@override String get widgetsAlpha => 'Transparansi widget';
	@override String get widgetsEmpty => 'Tidak ada widget yang tersedia';
	@override String get backgroundImage => 'Gambar latar belakang';
	@override String get myLink => 'Tautan cepat';
	@override String get autoConnectAfterLaunch => 'Hubungkan otomatis setelah mulai';
	@override String get autoConnectAtBoot => 'Hubungkan otomatis saat sistem menyala';
	@override String get autoConnectAtBootTips => 'Memerlukan dukungan sistem, dan pada beberapa sistem mungkin juga perlu mengaktifkan [Startup otomatis]';
	@override String get hideAfterLaunch => 'Sembunyikan jendela setelah mulai';
	@override String get autoSetSystemProxy => 'Atur proxy sistem secara otomatis setelah terhubung';
	@override String get bypassSystemProxy => 'Izinkan domain untuk melewati proxy sistem';
	@override String get disconnectWhenQuit => 'Putuskan koneksi saat keluar aplikasi';
	@override String get autoAddToFirewall => 'Tambahkan aturan firewall secara otomatis';
	@override String get excludeFromRecent => 'Sembunyikan dari [Tugas terbaru]';
	@override String get wakeLock => 'Wake lock';
	@override String get hideVpn => 'Sembunyikan ikon VPN';
	@override String get hideVpnTips => 'Mengaktifkan IPv6 akan membuat fitur ini tidak berlaku';
	@override String get allowBypass => 'Izinkan aplikasi melewati VPN';
	@override String get overrideAndroidVPN => 'Timpa Android VPN';
	@override String get importSuccess => 'Impor berhasil';
	@override String get rewriteConfirm => 'File ini akan menimpa konfigurasi lokal yang sudah ada, lanjutkan?';
	@override String get mergePerapp => 'Gabungkan daftar lokal [${_root.PerAppAndroidScreen.title}]';
	@override String get networkShare => 'Berbagi jaringan';
	@override String get chainProxy => 'Proxy berantai';
	@override String get frontProxy => 'Proxy depan';
	@override String frontProxyTips({required Object p}) => 'Data->server proxy berantai [beberapa server proxy: dari atas ke bawah]->server proxy [${p}]->server tujuan';
	@override String postProxyTips({required Object p}) => 'Data->server proxy [${p}]->server proxy berantai [beberapa server proxy: dari atas ke bawah]->server tujuan';
	@override String get allowOtherHostsConnect => 'Izinkan host lain terhubung';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'Port proxy SOCKS:${sp}, port proxy HTTP(S):${hp}';
	@override String get allowOtherHostsConnectWarn => 'Karena keterbatasan sistem, setelah diaktifkan, aplikasi di perangkat ini yang mengakses jaringan melalui HTTP mungkin tidak dapat terhubung dengan normal';
	@override String get tunAutoRoute => 'Rute otomatis';
	@override String get tunDefaultRoute => 'Rute default';
	@override String get tunAutoRedirect => 'Pengalihan otomatis';
	@override String get tunStrictRoute => 'Rute ketat';
	@override String get tunStrictRouteTips => 'Jika setelah berbagi perangkat lain tidak bisa tersambung ke perangkat ini, coba matikan sakelar ini';
	@override String get tunRouteExclude => 'Kecualikan rute';
	@override String get tunRouteExcludeTips => 'Trafik dari segmen alamat yang dikecualikan tidak akan lagi masuk ke TUN';
	@override String get tunRouteExcludeMulticast => 'Multicast';
	@override String get loopbackAddress => 'Alamat loopback';
	@override String get enableCluster => 'Aktifkan klaster proxy Socks/Http';
	@override String get clusterAllowOtherHostsConnect => 'Izinkan host lain terhubung ke klaster proxy';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'Alamat antarmuka klaster: http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'Autentikasi klaster proxy';
	@override String get tunMode => 'Mode TUN';
	@override String get tuni4Address => 'Alamat IP';
	@override String get tunModeTips => 'Mode TUN akan mengambil alih semua trafik sistem [dalam mode ini tidak perlu mengaktifkan proxy sistem]';
	@override String get tunModeRunAsAdmin => 'Mode TUN memerlukan hak administrator sistem, silakan mulai ulang aplikasi sebagai administrator';
	@override String get tunStack => 'Stack jaringan';
	@override String get tunHijackTips => 'Setelah dimatikan, permintaan DNS dari TUN akan langsung diteruskan ke server DNS terkait';
	@override String get launchAtStartup => 'Jalankan saat startup';
	@override String get quitWhenSwitchSystemUser => 'Keluar saat mengganti pengguna sistem';
	@override String get handleScheme => 'Panggilan skema sistem';
	@override String get portableMode => 'Mode portabel';
	@override String get portableModeDisableTips => 'Untuk keluar dari mode portabel, tutup [karing], lalu hapus folder [profiles] secara manual di direktori yang sama dengan [karing.exe]';
	@override String get accessibility => 'Aksesibilitas';
	@override String get handleKaringScheme => 'Tangani panggilan karing://';
	@override String get handleClashScheme => 'Tangani panggilan clash://';
	@override String get handleSingboxScheme => 'Tangani panggilan sing-box://';
	@override String get alwayOnVPN => 'Selalu aktifkan koneksi';
	@override String get disconnectAfterSleep => 'Putuskan koneksi setelah sistem tidur';
	@override String get removeSystemVPNConfig => 'Hapus konfigurasi VPN sistem';
	@override String get timeConnectOrDisconnect => 'Hubungkan/putuskan koneksi terjadwal';
	@override String get timeConnectOrDisconnectTips => 'VPN harus dalam keadaan terhubung agar berlaku; setelah diaktifkan, [Tidur otomatis] akan tidak berlaku';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'Interval koneksi/putus koneksi tidak boleh kurang dari ${p} menit';
	@override String get disableFontScaler => 'Nonaktifkan penskalaan font';
	@override String get autoOrientation => 'Ikuti rotasi layar';
	@override String get restartTakesEffect => 'Berlaku setelah restart';
	@override String get reconnectTakesEffect => 'Berlaku setelah tersambung ulang';
	@override String get resetSettings => 'Reset pengaturan';
	@override String get cleanCache => 'Bersihkan cache';
	@override String get cleanCacheDone => 'Pembersihan selesai';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'Versi pembaruan ${p}';
	@override String get follow => 'Ikuti kami';
	@override String get contactUs => 'Hubungi kami';
	@override String get supportUs => 'Dukung kami';
	@override String get rateInApp => 'Beri nilai';
	@override String get rateInAppStore => 'Beri nilai di App Store';
}

// Path: UserAgreementScreen
class _Translations$UserAgreementScreen$id implements Translations$UserAgreementScreen$en {
	_Translations$UserAgreementScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'Privasi Anda sangat penting';
	@override String get agreeAndContinue => 'Setujui dan lanjutkan';
}

// Path: VersionUpdateScreen
class _Translations$VersionUpdateScreen$id implements Translations$VersionUpdateScreen$en {
	_Translations$VersionUpdateScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'Versi baru [${p}] siap';
	@override String get update => 'Mulai ulang untuk memperbarui';
	@override String get cancel => 'Jangan perbarui sekarang';
}

// Path: loginScreen
class _Translations$loginScreen$id implements Translations$loginScreen$en {
	_Translations$loginScreen$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get provider => 'penyedia VPN';
	@override String get providerName => 'Kode/alias/URL ${_root.loginScreen.provider}';
	@override String get providerNameRequired => 'Masukkan kode/alias/URL ${_root.loginScreen.provider}';
	@override String get unsupportedProvider => '${_root.loginScreen.provider} tidak didukung';
	@override String get unsupportedProviderType => 'Tipe ${_root.loginScreen.provider} tidak didukung';
	@override String get unActivedProvider => 'Fitur pengikatan penyedia belum diaktifkan';
	@override String providerLoginSupportRequired({required Object p}) => 'Untuk kode/alias, hubungi ${_root.loginScreen.provider} Anda\nUntuk integrasi ${_root.loginScreen.provider}, lihat: ${p}';
	@override String get providerDisclaimer => 'Penafian: ${_root.loginScreen.provider} adalah layanan pihak ketiga dan tidak terkait dengan aplikasi ini';
}

// Path: CommonWidget
class _Translations$CommonWidget$id implements Translations$CommonWidget$en {
	_Translations$CommonWidget$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'Jika [VPN selalu aktif] telah diaktifkan, matikan [VPN selalu aktif] lalu coba sambungkan lagi';
	@override String get resetPort => 'Silakan ubah port ke port lain yang tersedia atau tutup aplikasi yang menggunakan port tersebut';
}

// Path: main
class _Translations$main$id implements Translations$main$en {
	_Translations$main$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _Translations$main$tray$id tray = _Translations$main$tray$id._(_root);
}

// Path: meta
class _Translations$meta$id implements Translations$meta$en {
	_Translations$meta$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get enable => 'Aktifkan';
	@override String get disable => 'Nonaktifkan';
	@override String get bydefault => 'Default';
	@override String get filter => 'Filter';
	@override String get filterMethod => 'Metode filter';
	@override String get include => 'Sertakan';
	@override String get exclude => 'Kecualikan';
	@override String get all => 'Semua';
	@override String get prefer => 'Prioritaskan';
	@override String get only => 'Hanya';
	@override String get open => 'Buka';
	@override String get close => 'Tutup';
	@override String get quit => 'Keluar';
	@override String get add => 'Tambahkan';
	@override String get addSuccess => 'Berhasil ditambahkan';
	@override String addFailed({required Object p}) => 'Gagal menambahkan:${p}';
	@override String get remove => 'Hapus';
	@override String get removeConfirm => 'Konfirmasi hapus?';
	@override String get removed => 'Telah dihapus';
	@override String get edit => 'Edit';
	@override String get view => 'Lihat';
	@override String get more => 'Lainnya';
	@override String get tips => 'Tip';
	@override String get selectAll => 'Pilih semua';
	@override String get copy => 'Salin';
	@override String get paste => 'Tempel';
	@override String get cut => 'Potong';
	@override String get save => 'Simpan';
	@override String get ok => 'OK';
	@override String get cancel => 'Batal';
	@override String get feedback => 'Umpan balik';
	@override String get feedbackContent => 'Isi umpan balik';
	@override String get feedbackContentHit => 'Wajib diisi, maksimum 500 karakter';
	@override String get feedbackContentCannotEmpty => 'Isi umpan balik tidak boleh kosong';
	@override String get faq => 'Pertanyaan umum';
	@override String get htmlTools => 'Kumpulan alat HTML';
	@override String get download => 'Unduh';
	@override String get upload => 'Unggah';
	@override String get downloadSpeed => 'Kecepatan unduh';
	@override String get uploadSpeed => 'Kecepatan unggah';
	@override String get loading => 'Memuat...';
	@override String get convert => 'Konversi';
	@override String get check => 'Periksa';
	@override String get detect => 'Deteksi';
	@override String get cache => 'Cache';
	@override String get days => 'hari';
	@override String get hours => 'jam';
	@override String get minutes => 'menit';
	@override String get seconds => 'detik';
	@override String get milliseconds => 'milidetik';
	@override String get tolerance => 'Toleransi';
	@override String get dateTimePeriod => 'Rentang waktu';
	@override String get protocol => 'Protokol';
	@override String get search => 'Cari';
	@override String get custom => 'Kustom';
	@override String get inbound => 'Inbound';
	@override String get outbound => 'Outbound';
	@override String get destination => 'Tujuan';
	@override String get outletIpByCurrentSelected => 'IP keluar';
	@override String get outletIpByDirect => 'IP keluar:${_root.outboundRuleMode.direct}';
	@override String get connect => 'Hubungkan';
	@override String get disconnect => 'Putuskan';
	@override String get reconnect => 'Hubungkan ulang';
	@override String get connected => 'Terhubung';
	@override String get disconnected => 'Tidak terhubung';
	@override String get connecting => 'Menghubungkan';
	@override String get connectTimeout => 'Waktu koneksi habis';
	@override String get timeout => 'Waktu habis';
	@override String get timeoutDuration => 'Durasi waktu habis';
	@override String get runDuration => 'Durasi berjalan';
	@override String get latency => 'Latensi';
	@override String get latencyTest => 'Tes latensi';
	@override String get language => 'Bahasa';
	@override String get next => 'Berikutnya';
	@override String get done => 'Selesai';
	@override String get apply => 'Terapkan';
	@override String get refresh => 'Segarkan';
	@override String get retry => 'Coba lagi?';
	@override String get update => 'Perbarui';
	@override String get updateInterval => 'Interval pembaruan';
	@override String get updateInterval5mTips => 'Minimum:5m';
	@override String updateFailed({required Object p}) => 'Pembaruan gagal:${p}';
	@override String get samplingUnit => 'Unit waktu sampling';
	@override String get queryResultCount => 'Jumlah hasil kueri';
	@override String queryLimit({required Object p}) => 'Maksimal menampilkan data ${p}';
	@override String get none => 'Tidak ada';
	@override String get start => 'Mulai';
	@override String get pause => 'Jeda';
	@override String get reset => 'Reset';
	@override String get submit => 'Kirim';
	@override String get user => 'Pengguna';
	@override String get account => 'Akun';
	@override String get password => 'Kata sandi';
	@override String get decryptPassword => 'Kata sandi dekripsi';
	@override String get overwriteOutboundDns => 'DNS: Timpa [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get required => 'Wajib';
	@override String get type => 'Tipe';
	@override String get path => 'Jalur';
	@override String get local => 'Lokal';
	@override String get remote => 'Jarak jauh';
	@override String get other => 'Lainnya';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL tidak valid';
	@override String get urlCannotEmpty => 'URL tidak boleh kosong';
	@override String get urlTooLong => 'URL terlalu panjang (>8182)';
	@override String get copyUrl => 'Salin tautan';
	@override String get openUrl => 'Buka tautan';
	@override String get shareUrl => 'Bagikan tautan';
	@override String get speedTestUrl => 'URL uji kecepatan';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'IP statis';
	@override String get staticIPTips => 'Perlu mengaktifkan [TUN HijackDNS] atau [${_root.SettingsScreen.inboundDomainResolve}]';
	@override String get isp => _root.loginScreen.provider;
	@override String get domainSuffix => 'Akhiran domain';
	@override String get domain => 'Domain';
	@override String get domainKeyword => 'Kata kunci domain';
	@override String get domainRegex => 'Regex domain';
	@override String get ip => 'IP';
	@override String get port => 'Port';
	@override String get portRange => 'Rentang port';
	@override String get appPackage => 'ID paket aplikasi';
	@override String get processName => 'Nama proses';
	@override String get processPath => 'Jalur proses';
	@override String get processDir => 'Direktori proses';
	@override String get systemProxy => 'Proxy sistem';
	@override String get percentage => 'Persentase';
	@override String get statistics => 'Statistik';
	@override String get statisticsAndAnalysis => 'Statistik dan analisis';
	@override String get statisticsDataDesensitize => 'Anonimisasi data';
	@override String get statisticsDataDesensitizeTips => 'Proses/ID paket/domain tujuan/IP tujuan, dan lainnya akan disamarkan dengan * sebelum disimpan';
	@override String get records => 'Catatan';
	@override String get requestRecords => 'Catatan permintaan';
	@override String get netInterfaces => 'Antarmuka jaringan';
	@override String get netSpeed => 'Kecepatan';
	@override String get memoryTrendChart => 'Grafik tren memori';
	@override String get goroutinesTrendChart => 'Grafik tren GoRoutines';
	@override String get trafficTrendChart => 'Grafik tren trafik';
	@override String get trafficDistributionChart => 'Grafik distribusi trafik';
	@override String get connectionChart => 'Grafik tren koneksi';
	@override String get memoryChart => 'Grafik tren memori';
	@override String get trafficStatistics => 'Statistik trafik';
	@override String get traffic => 'Trafik';
	@override String get trafficTotal => 'Total trafik';
	@override String get trafficProxy => 'Trafik proxy';
	@override String get trafficDirect => 'Trafik langsung';
	@override String get website => 'Situs resmi';
	@override String get memory => 'Memori';
	@override String get outboundMode => 'Mode outbound';
	@override String get rule => 'Aturan';
	@override String get global => 'Global';
	@override String get qrcode => 'Kode QR';
	@override String get qrcodeTooLong => 'Teks terlalu panjang, tidak dapat ditampilkan';
	@override String get qrcodeShare => 'Bagikan kode QR';
	@override String get textToQrcode => 'Teks ke kode QR';
	@override String get qrcodeScan => 'Pindai kode QR';
	@override String get qrcodeScanResult => 'Hasil pemindaian';
	@override String get qrcodeScanFromImage => 'Buka gambar kode QR';
	@override String get qrcodeScanResultFailed => 'Gagal mengurai gambar, pastikan tangkapan layar adalah kode QR yang valid';
	@override String get qrcodeScanResultEmpty => 'Hasil pemindaian kosong';
	@override String get screenshot => 'Tangkapan layar';
	@override String get backupAndSync => 'Cadangan dan sinkronisasi';
	@override String get autoBackup => 'Cadangan otomatis';
	@override String get noProfileGotAutoBackup => 'Jika data seperti [${_root.meta.myProfiles}] hilang, Anda dapat memulihkannya dari [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] atau sumber cadangan lain (misalnya iCloud atau Webdav)';
	@override String get autoBackupAddProfile => 'Setelah menambahkan konfigurasi';
	@override String get autoBackupRemoveProfile => 'Setelah menghapus konfigurasi';
	@override String get profile => 'Konfigurasi';
	@override String get currentProfile => 'Konfigurasi saat ini';
	@override String get importAndExport => 'Impor/Ekspor';
	@override String get import => 'Impor';
	@override String get importFromUrl => 'Impor dari URL';
	@override String get export => 'Ekspor';
	@override String get send => 'Kirim';
	@override String get receive => 'Terima';
	@override String get sendConfirm => 'Konfirmasi kirim?';
	@override String get termOfUse => 'Ketentuan penggunaan';
	@override String get privacyPolicy => 'Kebijakan privasi';
	@override String get about => 'Tentang';
	@override String get name => 'Nama';
	@override String get version => 'Versi';
	@override String get notice => 'Notifikasi';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'Tindakan:${p}\nAlasan:${p1}';
	@override String get sort => 'Urutkan';
	@override String get novice => 'Mode pemula';
	@override String get willCompleteAfterRebootInstall => 'Silakan mulai ulang perangkat untuk menyelesaikan instalasi ekstensi sistem';
	@override String get willCompleteAfterRebootUninstall => 'Silakan mulai ulang perangkat untuk menyelesaikan pencopotan ekstensi sistem';
	@override String get requestNeedsUserApproval => '1. Di [Pengaturan Sistem]-[Privasi & Keamanan], [Izinkan] Karing memasang ekstensi sistem\n2. Di [Pengaturan Sistem]-[Umum]-[Item Login & Ekstensi]-[Ekstensi Jaringan], aktifkan [karingServiceSE]\nSetelah selesai, sambungkan ulang\n3. Di [Pengaturan Sistem]-[Umum]-[Item Login & Ekstensi]-[Ekstensi], aktifkan [karingServiceSE]\nSetelah selesai, sambungkan ulang';
	@override String get FullDiskAccessPermissionRequired => 'Silakan aktifkan izin [karingServiceSE] di [Pengaturan Sistem]-[Privasi & Keamanan]-[Akses Disk Penuh], lalu sambungkan ulang';
	@override String get tvMode => 'Mode TV';
	@override String get recommended => 'Direkomendasikan';
	@override String innerError({required Object p}) => 'Galat internal:${p}';
	@override String get logicOperation => 'Operasi logika';
	@override String get share => 'Bagikan';
	@override String get candidateWord => 'Kata kandidat';
	@override String get keywordOrRegx => 'Kata kunci/regex';
	@override String get importFromClipboard => 'Impor dari papan klip';
	@override String get exportToClipboard => 'Ekspor ke papan klip';
	@override String get server => 'Server';
	@override String get ads => 'Iklan';
	@override String get adsRemove => 'Hapus iklan';
	@override String get donate => 'Donasi';
	@override String get diversion => 'Routing';
	@override String get diversionRules => 'Aturan routing';
	@override String get diversionCustomGroup => 'Grup routing kustom';
	@override String get urlTestCustomGroup => 'Pilih otomatis kustom';
	@override String get setting => 'Pengaturan';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'Sinkronisasi LAN';
	@override String get lanSyncNotQuitTips => 'Jangan keluar dari halaman ini sebelum sinkronisasi selesai';
	@override String get deviceNoSpace => 'Ruang disk tidak cukup';
	@override String get hideSystemApp => 'Sembunyikan aplikasi sistem';
	@override String get hideAppIcon => 'Sembunyikan ikon aplikasi';
	@override String get hideDockIcon => 'Sembunyikan ikon Dock';
	@override String get remark => 'Catatan';
	@override String get remarkExist => 'Catatan sudah ada, silakan gunakan nama lain';
	@override String get remarkCannotEmpty => 'Catatan tidak boleh kosong';
	@override String get remarkTooLong => 'Catatan maksimal 32 karakter';
	@override String get openDir => 'Buka direktori file';
	@override String get fileChoose => 'Pilih file';
	@override String get filePathCannotEmpty => 'Jalur file tidak boleh kosong';
	@override String fileNotExist({required Object p}) => 'File tidak ada:${p}';
	@override String fileTypeInvalid({required Object p}) => 'Tipe file tidak valid:${p}';
	@override String get uwpExemption => 'Pengecualian isolasi jaringan UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'Dapatkan konfigurasi';
	@override String get addProfile => 'Tambahkan konfigurasi';
	@override String get myProfiles => 'Konfigurasi saya';
	@override String get profileEdit => 'Edit konfigurasi';
	@override String get profileEditUrlExist => 'URL sudah ada, silakan gunakan URL lain';
	@override String get profileEditReloadAfterProfileUpdate => 'Muat ulang setelah konfigurasi diperbarui';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'Mulai tes latensi setelah pembaruan konfigurasi otomatis';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN harus dalam keadaan terhubung, dan [Muat ulang setelah konfigurasi diperbarui] harus diaktifkan';
	@override String get profileEditTestLatencyAutoRemove => 'Hapus otomatis server yang gagal tes latensi';
	@override String get profileEditTestLatencyAutoRemoveTips => 'Maksimal coba 3 kali';
	@override String get profileImport => 'Impor file konfigurasi';
	@override String get profileAddUrlOrContent => 'Tambahkan tautan konfigurasi';
	@override String get profileExists => 'Konfigurasi sudah ada, jangan tambahkan dua kali';
	@override String get profileUrlOrContent => 'Tautan/isi konfigurasi';
	@override String get profileUrlOrContentHit => 'Tautan/isi konfigurasi [wajib] (mendukung Clash,V2ray(mendukung batch),Stash,Karing,Sing-box,Shadowsocks,Sub,Github configuration link)';
	@override String get profileUrlOrContentCannotEmpty => 'Tautan konfigurasi tidak boleh kosong';
	@override String profileAddFailedFormatException({required Object p}) => 'Format salah, silakan koreksi lalu tambahkan lagi:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'Penambahan gagal:${p}, coba ubah [UserAgent] lalu ulangi, atau buka tautan konfigurasi dengan browser bawaan perangkat, lalu impor file konfigurasi yang diunduh browser ke aplikasi ini';
	@override String profileAddFailedHandshakeException({required Object p}) => 'Penambahan gagal:${p}, silakan aktifkan proxy atau ganti node proxy saat ini lalu coba lagi';
	@override String get profileAddParseFailed => 'Gagal mengurai konfigurasi';
	@override String get profileAddNoServerAvaliable => 'Tidak ada server yang tersedia, pastikan tautan atau file konfigurasi valid; jika konfigurasi Anda berasal dari GitHub, gunakan alamat tautan dari tombol [Raw] di halaman';
	@override String get profileAddWrapSuccess => 'Konfigurasi berhasil dibuat, silakan lihat di [${_root.meta.myProfiles}]';
}

// Path: isp
class _Translations$isp$id implements Translations$isp$en {
	_Translations$isp$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get bind => 'Ikat ke [${_root.meta.isp}]';
	@override String unbind({required Object p}) => 'Lepaskan ikatan [${p}]';
	@override String faq({required Object p}) => 'Pertanyaan umum [${p}]';
	@override String customerService({required Object p}) => 'Layanan pelanggan [${p}]';
	@override String follow({required Object p}) => 'Ikuti [${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] tidak valid atau telah kedaluwarsa';
}

// Path: permission
class _Translations$permission$id implements Translations$permission$en {
	_Translations$permission$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get camera => 'Kamera';
	@override String get screen => 'Perekaman layar';
	@override String get appQuery => 'Dapatkan daftar aplikasi';
	@override String request({required Object p}) => 'Aktifkan izin [${p}]';
	@override String requestNeed({required Object p}) => 'Silakan aktifkan izin [${p}]';
}

// Path: tls
class _Translations$tls$id implements Translations$tls$en {
	_Translations$tls$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'Lewati verifikasi sertifikat';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'Aktifkan fragmentasi TLS';
	@override String get fragmentSize => 'Ukuran fragmentasi TLS';
	@override String get fragmentSleep => 'Tidur fragmentasi TLS';
	@override String get mixedCaseSNIEnable => 'Aktifkan mixed-case SNI TLS';
	@override String get paddingEnable => 'Aktifkan padding TLS';
	@override String get paddingSize => 'Ukuran padding TLS';
}

// Path: outboundRuleMode
class _Translations$outboundRuleMode$id implements Translations$outboundRuleMode$en {
	_Translations$outboundRuleMode$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'Pilihan saat ini';
	@override String get urltest => 'Pilih otomatis';
	@override String get direct => 'Langsung';
	@override String get block => 'Blokir';
}

// Path: dnsProxyResolveMode
class _Translations$dnsProxyResolveMode$id implements Translations$dnsProxyResolveMode$en {
	_Translations$dnsProxyResolveMode$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _Translations$proxyStrategy$id implements Translations$proxyStrategy$en {
	_Translations$proxyStrategy$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _Translations$reloadReason$id implements Translations$reloadReason$en {
	_Translations$reloadReason$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'Pembaruan konfigurasi';
}

// Path: theme
class _Translations$theme$id implements Translations$theme$en {
	_Translations$theme$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get light => 'Terang';
	@override String get dark => 'Gelap';
	@override String get auto => 'Otomatis';
}

// Path: main.tray
class _Translations$main$tray$id implements Translations$main$tray$en {
	_Translations$main$tray$id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'Buka';
	@override String get menuExit => 'Keluar';
}

/// The flat map containing all translations for locale <id>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsId {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'Referensi instalasi',
			'AboutScreen.installTime' => 'Waktu instalasi',
			'AboutScreen.versionChannel' => 'Kanal pembaruan otomatis',
			'AboutScreen.updateWhenConnected' => 'Periksa pembaruan setelah terhubung',
			'AboutScreen.autoDownloadPkg' => 'Unduh paket pembaruan secara otomatis',
			'AboutScreen.disableAppImproveData' => 'Data peningkatan aplikasi',
			'AboutScreen.disableUAReportTip' => 'Mengaktifkan [${_root.AboutScreen.disableAppImproveData}] membantu kami meningkatkan stabilitas dan kegunaan produk. Kami tidak akan mengumpulkan data privasi pribadi apa pun; setelah dinonaktifkan, aplikasi tidak akan lagi mengumpulkan data apa pun',
			'AboutScreen.devOptions' => 'Opsi pengembang',
			'AboutScreen.enableDebugLog' => 'Aktifkan log debug',
			'AboutScreen.viewFilsContent' => 'Lihat file',
			'AboutScreen.enablePprof' => 'Aktifkan pprof',
			'AboutScreen.pprofPanel' => 'Panel pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'Izinkan akses jarak jauh ke ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'Izinkan akses jarak jauh ke ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'Gunakan konfigurasi sing-box asli',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'Alamat server',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'Tidak boleh kosong',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'Login gagal:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'Gagal mendapatkan daftar file:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => '[Domain] tidak valid:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => '[IP Cidr] tidak valid:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => '[${p0}] tidak valid:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => '[Rule Set] tidak valid:${p}, URL harus berupa URL https yang valid, dan file biner dengan ekstensi .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => '[Rule Set(build-in)] tidak valid:${p}, formatnya geosite:xxx atau geoip:xxx atau acl:xxx, dan xxx harus berupa nama aturan yang valid',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => '[${_root.meta.appPackage}] tidak valid:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'Tip: setelah menyimpan, silakan buka [${_root.meta.diversionRules}] untuk mengatur aturan terkait, jika tidak maka tidak akan berlaku',
			'DiversionRuleDetectScreen.title' => 'Deteksi aturan routing',
			'DiversionRuleDetectScreen.rule' => 'Aturan:',
			'DiversionRuleDetectScreen.outbound' => 'Server proxy:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'Tip: aturan dicocokkan dari atas ke bawah. Jika tidak ada aturan yang cocok, maka gunakan [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP tidak boleh kosong',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL tidak boleh kosong',
			'DnsSettingsScreen.error' => ({required Object p}) => 'Tipe tidak didukung:${p}',
			'DnsSettingsScreen.dnsDesc' => 'Kolom pertama data latensi adalah latensi kueri langsung;\nKolom kedua: jika [[Lalu lintas proxy]解析 melalui server proxy] diaktifkan, data latensi adalah latensi kueri yang diteruskan melalui server proxy saat ini; jika tidak diaktifkan, data latensi adalah latensi kueri langsung',
			'FileContentViewerScreen.title' => 'Lihat isi file',
			'FileContentViewerScreen.clearFileContent' => 'Konfirmasi hapus isi file?',
			'FileContentViewerScreen.clearFileContentTips' => 'Konfirmasi hapus isi file konfigurasi? Menghapus isi file konfigurasi dapat menyebabkan kehilangan data atau fungsi aplikasi tidak normal, harap lakukan dengan hati-hati',
			'HomeScreen.invalidServer' => ({required Object p}) => '[${p}] sudah tidak valid, silakan pilih server lagi',
			'HomeScreen.disabledServer' => ({required Object p}) => '[${p}] telah dinonaktifkan, silakan pilih server lagi',
			'HomeScreen.expiredServer' => 'Tidak ada server yang tersedia: konfigurasi mungkin telah kedaluwarsa atau dinonaktifkan',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'Port proxy SOCKS:${sp}, port proxy HTTP(S):${hp}',
			'HomeScreen.myLinkEmpty' => 'Silakan atur [Tautan cepat] terlebih dahulu sebelum digunakan',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'Server proxy [${p}>${p1}] terlalu banyak, koneksi mungkin gagal karena keterbatasan memori sistem',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'Server proxy [${p}>${p1}] terlalu banyak, dapat menyebabkan koneksi lambat atau gagal tersambung',
			'LaunchFailedScreen.invalidProcess' => 'Gagal memulai aplikasi [nama proses tidak valid], silakan instal ulang aplikasi ke direktori terpisah',
			'LaunchFailedScreen.invalidProfile' => 'Gagal memulai aplikasi [gagal mengakses file konfigurasi], silakan instal ulang aplikasi',
			'LaunchFailedScreen.invalidVersion' => 'Gagal memulai aplikasi [versi tidak valid], silakan instal ulang aplikasi',
			'LaunchFailedScreen.systemVersionLow' => 'Gagal memulai aplikasi [versi sistem terlalu rendah]',
			'LaunchFailedScreen.invalidInstallPath' => 'Jalur instalasi tidak valid, silakan instal ulang ke jalur yang valid',
			'MyProfilesMergeScreen.profilesMerge' => 'Gabungkan konfigurasi',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'Konfigurasi target',
			'MyProfilesMergeScreen.profilesMergeSource' => 'Konfigurasi sumber',
			'MyProfilesMergeScreen.profilesMergeTips' => 'Tip: informasi routing dari konfigurasi sumber akan dibuang',
			'NetCheckScreen.title' => 'Pemeriksaan jaringan',
			'NetCheckScreen.warn' => 'Perhatian: karena dipengaruhi lingkungan jaringan dan aturan routing, hasil pengujian tidak sepenuhnya setara dengan hasil penggunaan sebenarnya',
			'NetCheckScreen.invalidDomain' => 'Domain tidak valid',
			'NetCheckScreen.connectivity' => 'Konektivitas jaringan',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'Semua tes koneksi IPv4 [${p}] gagal',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'Koneksi IPv4 berhasil',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'Semua tes koneksi IPv6 [${p}] gagal, jaringan Anda mungkin tidak mendukung IPv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'Koneksi IPv6 berhasil',
			'NetCheckScreen.connectivityTestOk' => 'Jaringan telah terhubung ke internet',
			'NetCheckScreen.connectivityTestFailed' => 'Jaringan belum terhubung ke internet',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'Semua berhasil diunduh',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'Sedang diunduh atau unduhan gagal',
			'NetCheckScreen.outbound' => 'Server proxy',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] berhasil terhubung',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] gagal terhubung\nGalat:[${p2}]',
			'NetCheckScreen.dnsServer' => 'Server DNS',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => 'Resolusi domain [${p1}] berhasil\nAturan DNS:[${p2}]\nLatensi:[${p3} ms]\nAlamat:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => 'Resolusi domain [${p1}] gagal\nAturan:[${p2}]\nGalat:[${p3}]',
			'NetCheckScreen.host' => 'Koneksi HTTP',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nAturan routing:[${p2}]\nServer proxy:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'Koneksi berhasil',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'Koneksi gagal:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'Domain/IP',
			'NetConnectionsFilterScreen.app' => 'Aplikasi',
			'NetConnectionsFilterScreen.rule' => 'Aturan',
			'NetConnectionsFilterScreen.chain' => 'Outbound',
			'NetConnectionsScreen.copyAsCSV' => 'Disalin sebagai format CSV',
			'NetConnectionsScreen.selectType' => 'Pilih tipe routing',
			'NetConnectionsScreen.loopbackWarning' => 'Kemungkinan terjadi loopback jaringan. Periksa pengaturan adaptor jaringan',
			'PerAppAndroidScreen.title' => 'Proxy per aplikasi',
			'PerAppAndroidScreen.whiteListMode' => 'Mode daftar putih',
			'PerAppAndroidScreen.whiteListModeTip' => 'Setelah diaktifkan: hanya aplikasi yang dicentang yang diproksi; jika tidak diaktifkan: hanya aplikasi yang tidak dicentang yang diproksi',
			'RegionSettingsScreen.title' => 'Negara dan wilayah',
			'RegionSettingsScreen.Regions' => 'Tip: silakan atur negara atau wilayah tempat Anda berada dengan benar, jika tidak dapat menyebabkan kesalahan routing',
			'ServerSelectScreen.title' => 'Pilih server',
			'ServerSelectScreen.autoSelectServer' => 'Pilih server dengan latensi terendah secara otomatis',
			'ServerSelectScreen.recentUse' => 'Terakhir digunakan',
			'ServerSelectScreen.myFav' => 'Favorit saya',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'Server yang dipilih adalah alamat lokal dan mungkin tidak dapat digunakan dengan benar:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'Server yang dipilih adalah alamat IPv6, perlu [Aktifkan IPv6]',
			'ServerSelectScreen.selectDisabled' => 'Server ini telah dinonaktifkan',
			'ServerSelectScreen.error404' => 'Terjadi kesalahan saat pemeriksaan latensi, silakan periksa apakah ada konfigurasi dengan isi yang sama',
			'SettingsScreen.getTranffic' => 'Dapatkan trafik',
			'SettingsScreen.tutorial' => 'Panduan penggunaan',
			'SettingsScreen.commonlyUsedRulesets' => 'Rule set yang umum dipakai',
			'SettingsScreen.htmlBoard' => 'Panel online',
			'SettingsScreen.dnsLeakDetection' => 'Deteksi kebocoran DNS',
			'SettingsScreen.proxyLeakDetection' => 'Deteksi kebocoran proxy',
			'SettingsScreen.speedTest' => 'Uji kecepatan',
			'SettingsScreen.rulesetDirectDownlad' => 'Unduh Rule Set langsung',
			'SettingsScreen.hideUnusedDiversionGroup' => 'Sembunyikan aturan routing yang tidak diaktifkan',
			'SettingsScreen.disableISPDiversionGroup' => 'Nonaktifkan [${_root.meta.isp}]${_root.meta.diversionRules}',
			'SettingsScreen.portSettingRule' => 'Berdasarkan aturan',
			'SettingsScreen.portSettingDirectAll' => 'Semua langsung',
			'SettingsScreen.portSettingProxyAll' => 'Semua melalui proxy',
			'SettingsScreen.portSettingControl' => 'Kontrol dan sinkronisasi',
			'SettingsScreen.portSettingCluster' => 'Layanan klaster',
			'SettingsScreen.modifyPort' => 'Ubah port',
			'SettingsScreen.modifyPortOccupied' => 'Port sudah digunakan, silakan gunakan port lain',
			'SettingsScreen.ipStrategyTips' => 'Sebelum mengaktifkan, pastikan jaringan Anda sudah mendukung IPv6, jika tidak beberapa trafik mungkin tidak bisa diakses dengan benar',
			'SettingsScreen.tunAppendHttpProxy' => 'Tambahkan proxy HTTP ke VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'Beberapa aplikasi akan melewati perangkat kartu jaringan virtual dan langsung terhubung ke proxy HTTP',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'Izinkan domain untuk melewati proxy HTTP',
			'SettingsScreen.dnsEnableRule' => 'Aktifkan aturan routing DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => 'Kanal resolusi [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsEnableClientSubnet' => 'Aktifkan ECS untuk [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTestDomain' => 'Domain uji',
			'SettingsScreen.dnsTestDomainInvalid' => 'Domain tidak valid',
			'SettingsScreen.dnsTypeOutbound' => 'Server proxy',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'Server DNS',
			'SettingsScreen.dnsEnableRuleTips' => 'Setelah diaktifkan, nama domain akan menggunakan server DNS yang sesuai untuk resolusi berdasarkan aturan routing',
			'SettingsScreen.dnsEnableFakeIpTips' => 'Setelah FakeIP diaktifkan, jika koneksi VPN diputus, aplikasi Anda mungkin perlu dimulai ulang; fitur ini memerlukan [Mode TUN]',
			'SettingsScreen.dnsTypeOutboundTips' => 'Digunakan untuk resolusi domain [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'Digunakan untuk resolusi domain [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'Digunakan untuk resolusi domain [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'Digunakan untuk resolusi domain [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'Atur server secara otomatis',
			'SettingsScreen.dnsResetServer' => 'Reset server',
			'SettingsScreen.dnsEnableStaticIPForResolver' => 'Prioritaskan resolusi statis',
			'SettingsScreen.dnsEnableStaticIPForResolverTips' => 'Efektif mencegah server DNS sendiri terkontaminasi saat melakukan resolusi',
			'SettingsScreen.inboundDomainResolve' => 'Resolusi domain inbound',
			'SettingsScreen.privateDirect' => 'Jaringan privat langsung',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'Beberapa domain tanpa aturan routing perlu diresolusikan terlebih dahulu agar dapat cocok dengan aturan routing berbasis IP; fitur ini memengaruhi permintaan inbound pada port proxy [${p}]',
			'SettingsScreen.useRomoteRes' => 'Gunakan sumber daya jarak jauh',
			'SettingsScreen.autoAppendRegion' => 'Tambahkan aturan dasar secara otomatis',
			'SettingsScreen.autoSelect' => 'Pilih otomatis',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'Abaikan server proxy [depan/berantai]',
			'SettingsScreen.autoSelectServerInterval' => 'Interval pemeriksaan latensi',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'Interval pemeriksaan kesehatan server saat ini',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'Uji ulang saat jaringan berubah',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'Perbarui server saat ini setelah tes latensi manual',
			'SettingsScreen.autoSelectServerIntervalTips' => 'Semakin pendek interval pemeriksaan latensi, semakin cepat data latensi server diperbarui, tetapi akan menggunakan lebih banyak sumber daya dan baterai lebih cepat',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'Jika pemeriksaan gagal maka node akan diganti; jika saat pergantian node tidak ditemukan node yang tersedia, maka grup tersebut akan diperiksa ulang latensinya',
			'SettingsScreen.autoSelectServerFavFirst' => 'Prioritaskan [Favorit saya]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'Jika daftar [Favorit saya] tidak kosong, maka server di [Favorit saya] akan digunakan',
			'SettingsScreen.autoSelectServerFilter' => 'Saring server tidak valid',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'Server yang gagal dalam pemeriksaan latensi akan difilter; jika setelah penyaringan tidak ada server yang tersedia, maka gunakan [${p}] server pertama',
			'SettingsScreen.autoSelectServerLimitedNum' => 'Batas jumlah server',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'Server yang melebihi jumlah ini akan difilter',
			'SettingsScreen.numInvalid' => 'Angka tidak valid',
			'SettingsScreen.hideInvalidServer' => 'Sembunyikan server tidak valid',
			'SettingsScreen.sortServer' => 'Urutkan server',
			'SettingsScreen.sortServerTips' => 'Urutkan berdasarkan latensi dari rendah ke tinggi',
			'SettingsScreen.selectServerHideRecommand' => 'Sembunyikan [Rekomendasi]',
			'SettingsScreen.selectServerHideRecent' => 'Sembunyikan [Terakhir digunakan]',
			'SettingsScreen.selectServerHideFav' => 'Sembunyikan [Favorit saya]',
			'SettingsScreen.homeScreen' => 'Layar utama',
			'SettingsScreen.theme' => 'Tema',
			'SettingsScreen.widgetsAlpha' => 'Transparansi widget',
			'SettingsScreen.widgetsEmpty' => 'Tidak ada widget yang tersedia',
			'SettingsScreen.backgroundImage' => 'Gambar latar belakang',
			'SettingsScreen.myLink' => 'Tautan cepat',
			'SettingsScreen.autoConnectAfterLaunch' => 'Hubungkan otomatis setelah mulai',
			'SettingsScreen.autoConnectAtBoot' => 'Hubungkan otomatis saat sistem menyala',
			'SettingsScreen.autoConnectAtBootTips' => 'Memerlukan dukungan sistem, dan pada beberapa sistem mungkin juga perlu mengaktifkan [Startup otomatis]',
			'SettingsScreen.hideAfterLaunch' => 'Sembunyikan jendela setelah mulai',
			'SettingsScreen.autoSetSystemProxy' => 'Atur proxy sistem secara otomatis setelah terhubung',
			'SettingsScreen.bypassSystemProxy' => 'Izinkan domain untuk melewati proxy sistem',
			'SettingsScreen.disconnectWhenQuit' => 'Putuskan koneksi saat keluar aplikasi',
			'SettingsScreen.autoAddToFirewall' => 'Tambahkan aturan firewall secara otomatis',
			'SettingsScreen.excludeFromRecent' => 'Sembunyikan dari [Tugas terbaru]',
			'SettingsScreen.wakeLock' => 'Wake lock',
			'SettingsScreen.hideVpn' => 'Sembunyikan ikon VPN',
			'SettingsScreen.hideVpnTips' => 'Mengaktifkan IPv6 akan membuat fitur ini tidak berlaku',
			'SettingsScreen.allowBypass' => 'Izinkan aplikasi melewati VPN',
			'SettingsScreen.overrideAndroidVPN' => 'Timpa Android VPN',
			'SettingsScreen.importSuccess' => 'Impor berhasil',
			'SettingsScreen.rewriteConfirm' => 'File ini akan menimpa konfigurasi lokal yang sudah ada, lanjutkan?',
			'SettingsScreen.mergePerapp' => 'Gabungkan daftar lokal [${_root.PerAppAndroidScreen.title}]',
			'SettingsScreen.networkShare' => 'Berbagi jaringan',
			'SettingsScreen.chainProxy' => 'Proxy berantai',
			'SettingsScreen.frontProxy' => 'Proxy depan',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Data->server proxy berantai [beberapa server proxy: dari atas ke bawah]->server proxy [${p}]->server tujuan',
			'SettingsScreen.postProxyTips' => ({required Object p}) => 'Data->server proxy [${p}]->server proxy berantai [beberapa server proxy: dari atas ke bawah]->server tujuan',
			'SettingsScreen.allowOtherHostsConnect' => 'Izinkan host lain terhubung',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'Port proxy SOCKS:${sp}, port proxy HTTP(S):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'Karena keterbatasan sistem, setelah diaktifkan, aplikasi di perangkat ini yang mengakses jaringan melalui HTTP mungkin tidak dapat terhubung dengan normal',
			'SettingsScreen.tunAutoRoute' => 'Rute otomatis',
			'SettingsScreen.tunDefaultRoute' => 'Rute default',
			'SettingsScreen.tunAutoRedirect' => 'Pengalihan otomatis',
			'SettingsScreen.tunStrictRoute' => 'Rute ketat',
			'SettingsScreen.tunStrictRouteTips' => 'Jika setelah berbagi perangkat lain tidak bisa tersambung ke perangkat ini, coba matikan sakelar ini',
			'SettingsScreen.tunRouteExclude' => 'Kecualikan rute',
			'SettingsScreen.tunRouteExcludeTips' => 'Trafik dari segmen alamat yang dikecualikan tidak akan lagi masuk ke TUN',
			'SettingsScreen.tunRouteExcludeMulticast' => 'Multicast',
			'SettingsScreen.loopbackAddress' => 'Alamat loopback',
			'SettingsScreen.enableCluster' => 'Aktifkan klaster proxy Socks/Http',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'Izinkan host lain terhubung ke klaster proxy',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'Alamat antarmuka klaster: http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'Autentikasi klaster proxy',
			'SettingsScreen.tunMode' => 'Mode TUN',
			'SettingsScreen.tuni4Address' => 'Alamat IP',
			'SettingsScreen.tunModeTips' => 'Mode TUN akan mengambil alih semua trafik sistem [dalam mode ini tidak perlu mengaktifkan proxy sistem]',
			'SettingsScreen.tunModeRunAsAdmin' => 'Mode TUN memerlukan hak administrator sistem, silakan mulai ulang aplikasi sebagai administrator',
			'SettingsScreen.tunStack' => 'Stack jaringan',
			'SettingsScreen.tunHijackTips' => 'Setelah dimatikan, permintaan DNS dari TUN akan langsung diteruskan ke server DNS terkait',
			'SettingsScreen.launchAtStartup' => 'Jalankan saat startup',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'Keluar saat mengganti pengguna sistem',
			'SettingsScreen.handleScheme' => 'Panggilan skema sistem',
			'SettingsScreen.portableMode' => 'Mode portabel',
			'SettingsScreen.portableModeDisableTips' => 'Untuk keluar dari mode portabel, tutup [karing], lalu hapus folder [profiles] secara manual di direktori yang sama dengan [karing.exe]',
			'SettingsScreen.accessibility' => 'Aksesibilitas',
			'SettingsScreen.handleKaringScheme' => 'Tangani panggilan karing://',
			'SettingsScreen.handleClashScheme' => 'Tangani panggilan clash://',
			'SettingsScreen.handleSingboxScheme' => 'Tangani panggilan sing-box://',
			'SettingsScreen.alwayOnVPN' => 'Selalu aktifkan koneksi',
			'SettingsScreen.disconnectAfterSleep' => 'Putuskan koneksi setelah sistem tidur',
			'SettingsScreen.removeSystemVPNConfig' => 'Hapus konfigurasi VPN sistem',
			'SettingsScreen.timeConnectOrDisconnect' => 'Hubungkan/putuskan koneksi terjadwal',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN harus dalam keadaan terhubung agar berlaku; setelah diaktifkan, [Tidur otomatis] akan tidak berlaku',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'Interval koneksi/putus koneksi tidak boleh kurang dari ${p} menit',
			'SettingsScreen.disableFontScaler' => 'Nonaktifkan penskalaan font',
			'SettingsScreen.autoOrientation' => 'Ikuti rotasi layar',
			'SettingsScreen.restartTakesEffect' => 'Berlaku setelah restart',
			'SettingsScreen.reconnectTakesEffect' => 'Berlaku setelah tersambung ulang',
			'SettingsScreen.resetSettings' => 'Reset pengaturan',
			'SettingsScreen.cleanCache' => 'Bersihkan cache',
			'SettingsScreen.cleanCacheDone' => 'Pembersihan selesai',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'Versi pembaruan ${p}',
			'SettingsScreen.follow' => 'Ikuti kami',
			'SettingsScreen.contactUs' => 'Hubungi kami',
			'SettingsScreen.supportUs' => 'Dukung kami',
			'SettingsScreen.rateInApp' => 'Beri nilai',
			'SettingsScreen.rateInAppStore' => 'Beri nilai di App Store',
			'UserAgreementScreen.privacyFirst' => 'Privasi Anda sangat penting',
			'UserAgreementScreen.agreeAndContinue' => 'Setujui dan lanjutkan',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'Versi baru [${p}] siap',
			'VersionUpdateScreen.update' => 'Mulai ulang untuk memperbarui',
			'VersionUpdateScreen.cancel' => 'Jangan perbarui sekarang',
			'loginScreen.provider' => 'penyedia VPN',
			'loginScreen.providerName' => 'Kode/alias/URL ${_root.loginScreen.provider}',
			'loginScreen.providerNameRequired' => 'Masukkan kode/alias/URL ${_root.loginScreen.provider}',
			'loginScreen.unsupportedProvider' => '${_root.loginScreen.provider} tidak didukung',
			'loginScreen.unsupportedProviderType' => 'Tipe ${_root.loginScreen.provider} tidak didukung',
			'loginScreen.unActivedProvider' => 'Fitur pengikatan penyedia belum diaktifkan',
			'loginScreen.providerLoginSupportRequired' => ({required Object p}) => 'Untuk kode/alias, hubungi ${_root.loginScreen.provider} Anda\nUntuk integrasi ${_root.loginScreen.provider}, lihat: ${p}',
			'loginScreen.providerDisclaimer' => 'Penafian: ${_root.loginScreen.provider} adalah layanan pihak ketiga dan tidak terkait dengan aplikasi ini',
			'CommonWidget.diableAlwayOnVPN' => 'Jika [VPN selalu aktif] telah diaktifkan, matikan [VPN selalu aktif] lalu coba sambungkan lagi',
			'CommonWidget.resetPort' => 'Silakan ubah port ke port lain yang tersedia atau tutup aplikasi yang menggunakan port tersebut',
			'main.tray.menuOpen' => 'Buka',
			'main.tray.menuExit' => 'Keluar',
			'meta.enable' => 'Aktifkan',
			'meta.disable' => 'Nonaktifkan',
			'meta.bydefault' => 'Default',
			'meta.filter' => 'Filter',
			'meta.filterMethod' => 'Metode filter',
			'meta.include' => 'Sertakan',
			'meta.exclude' => 'Kecualikan',
			'meta.all' => 'Semua',
			'meta.prefer' => 'Prioritaskan',
			'meta.only' => 'Hanya',
			'meta.open' => 'Buka',
			'meta.close' => 'Tutup',
			'meta.quit' => 'Keluar',
			'meta.add' => 'Tambahkan',
			'meta.addSuccess' => 'Berhasil ditambahkan',
			'meta.addFailed' => ({required Object p}) => 'Gagal menambahkan:${p}',
			'meta.remove' => 'Hapus',
			'meta.removeConfirm' => 'Konfirmasi hapus?',
			'meta.removed' => 'Telah dihapus',
			'meta.edit' => 'Edit',
			'meta.view' => 'Lihat',
			'meta.more' => 'Lainnya',
			'meta.tips' => 'Tip',
			'meta.selectAll' => 'Pilih semua',
			'meta.copy' => 'Salin',
			'meta.paste' => 'Tempel',
			'meta.cut' => 'Potong',
			'meta.save' => 'Simpan',
			'meta.ok' => 'OK',
			'meta.cancel' => 'Batal',
			'meta.feedback' => 'Umpan balik',
			'meta.feedbackContent' => 'Isi umpan balik',
			'meta.feedbackContentHit' => 'Wajib diisi, maksimum 500 karakter',
			'meta.feedbackContentCannotEmpty' => 'Isi umpan balik tidak boleh kosong',
			'meta.faq' => 'Pertanyaan umum',
			'meta.htmlTools' => 'Kumpulan alat HTML',
			'meta.download' => 'Unduh',
			'meta.upload' => 'Unggah',
			'meta.downloadSpeed' => 'Kecepatan unduh',
			'meta.uploadSpeed' => 'Kecepatan unggah',
			'meta.loading' => 'Memuat...',
			'meta.convert' => 'Konversi',
			'meta.check' => 'Periksa',
			'meta.detect' => 'Deteksi',
			'meta.cache' => 'Cache',
			'meta.days' => 'hari',
			'meta.hours' => 'jam',
			'meta.minutes' => 'menit',
			'meta.seconds' => 'detik',
			'meta.milliseconds' => 'milidetik',
			'meta.tolerance' => 'Toleransi',
			'meta.dateTimePeriod' => 'Rentang waktu',
			'meta.protocol' => 'Protokol',
			'meta.search' => 'Cari',
			'meta.custom' => 'Kustom',
			'meta.inbound' => 'Inbound',
			'meta.outbound' => 'Outbound',
			'meta.destination' => 'Tujuan',
			'meta.outletIpByCurrentSelected' => 'IP keluar',
			'meta.outletIpByDirect' => 'IP keluar:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'Hubungkan',
			'meta.disconnect' => 'Putuskan',
			'meta.reconnect' => 'Hubungkan ulang',
			'meta.connected' => 'Terhubung',
			'meta.disconnected' => 'Tidak terhubung',
			'meta.connecting' => 'Menghubungkan',
			'meta.connectTimeout' => 'Waktu koneksi habis',
			'meta.timeout' => 'Waktu habis',
			'meta.timeoutDuration' => 'Durasi waktu habis',
			'meta.runDuration' => 'Durasi berjalan',
			'meta.latency' => 'Latensi',
			'meta.latencyTest' => 'Tes latensi',
			'meta.language' => 'Bahasa',
			'meta.next' => 'Berikutnya',
			'meta.done' => 'Selesai',
			'meta.apply' => 'Terapkan',
			'meta.refresh' => 'Segarkan',
			'meta.retry' => 'Coba lagi?',
			'meta.update' => 'Perbarui',
			'meta.updateInterval' => 'Interval pembaruan',
			'meta.updateInterval5mTips' => 'Minimum:5m',
			'meta.updateFailed' => ({required Object p}) => 'Pembaruan gagal:${p}',
			'meta.samplingUnit' => 'Unit waktu sampling',
			'meta.queryResultCount' => 'Jumlah hasil kueri',
			'meta.queryLimit' => ({required Object p}) => 'Maksimal menampilkan data ${p}',
			'meta.none' => 'Tidak ada',
			'meta.start' => 'Mulai',
			'meta.pause' => 'Jeda',
			'meta.reset' => 'Reset',
			'meta.submit' => 'Kirim',
			'meta.user' => 'Pengguna',
			'meta.account' => 'Akun',
			'meta.password' => 'Kata sandi',
			'meta.decryptPassword' => 'Kata sandi dekripsi',
			'meta.overwriteOutboundDns' => 'DNS: Timpa [${_root.SettingsScreen.dnsTypeOutbound}]',
			'meta.required' => 'Wajib',
			'meta.type' => 'Tipe',
			'meta.path' => 'Jalur',
			'meta.local' => 'Lokal',
			'meta.remote' => 'Jarak jauh',
			'meta.other' => 'Lainnya',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL tidak valid',
			'meta.urlCannotEmpty' => 'URL tidak boleh kosong',
			'meta.urlTooLong' => 'URL terlalu panjang (>8182)',
			'meta.copyUrl' => 'Salin tautan',
			'meta.openUrl' => 'Buka tautan',
			'meta.shareUrl' => 'Bagikan tautan',
			'meta.speedTestUrl' => 'URL uji kecepatan',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'IP statis',
			'meta.staticIPTips' => 'Perlu mengaktifkan [TUN HijackDNS] atau [${_root.SettingsScreen.inboundDomainResolve}]',
			'meta.isp' => _root.loginScreen.provider,
			'meta.domainSuffix' => 'Akhiran domain',
			'meta.domain' => 'Domain',
			'meta.domainKeyword' => 'Kata kunci domain',
			'meta.domainRegex' => 'Regex domain',
			'meta.ip' => 'IP',
			'meta.port' => 'Port',
			'meta.portRange' => 'Rentang port',
			'meta.appPackage' => 'ID paket aplikasi',
			'meta.processName' => 'Nama proses',
			'meta.processPath' => 'Jalur proses',
			'meta.processDir' => 'Direktori proses',
			'meta.systemProxy' => 'Proxy sistem',
			'meta.percentage' => 'Persentase',
			'meta.statistics' => 'Statistik',
			'meta.statisticsAndAnalysis' => 'Statistik dan analisis',
			'meta.statisticsDataDesensitize' => 'Anonimisasi data',
			'meta.statisticsDataDesensitizeTips' => 'Proses/ID paket/domain tujuan/IP tujuan, dan lainnya akan disamarkan dengan * sebelum disimpan',
			'meta.records' => 'Catatan',
			'meta.requestRecords' => 'Catatan permintaan',
			'meta.netInterfaces' => 'Antarmuka jaringan',
			'meta.netSpeed' => 'Kecepatan',
			'meta.memoryTrendChart' => 'Grafik tren memori',
			'meta.goroutinesTrendChart' => 'Grafik tren GoRoutines',
			'meta.trafficTrendChart' => 'Grafik tren trafik',
			'meta.trafficDistributionChart' => 'Grafik distribusi trafik',
			'meta.connectionChart' => 'Grafik tren koneksi',
			'meta.memoryChart' => 'Grafik tren memori',
			'meta.trafficStatistics' => 'Statistik trafik',
			'meta.traffic' => 'Trafik',
			'meta.trafficTotal' => 'Total trafik',
			'meta.trafficProxy' => 'Trafik proxy',
			'meta.trafficDirect' => 'Trafik langsung',
			'meta.website' => 'Situs resmi',
			'meta.memory' => 'Memori',
			'meta.outboundMode' => 'Mode outbound',
			'meta.rule' => 'Aturan',
			'meta.global' => 'Global',
			'meta.qrcode' => 'Kode QR',
			'meta.qrcodeTooLong' => 'Teks terlalu panjang, tidak dapat ditampilkan',
			'meta.qrcodeShare' => 'Bagikan kode QR',
			'meta.textToQrcode' => 'Teks ke kode QR',
			'meta.qrcodeScan' => 'Pindai kode QR',
			'meta.qrcodeScanResult' => 'Hasil pemindaian',
			'meta.qrcodeScanFromImage' => 'Buka gambar kode QR',
			'meta.qrcodeScanResultFailed' => 'Gagal mengurai gambar, pastikan tangkapan layar adalah kode QR yang valid',
			'meta.qrcodeScanResultEmpty' => 'Hasil pemindaian kosong',
			'meta.screenshot' => 'Tangkapan layar',
			'meta.backupAndSync' => 'Cadangan dan sinkronisasi',
			'meta.autoBackup' => 'Cadangan otomatis',
			'meta.noProfileGotAutoBackup' => 'Jika data seperti [${_root.meta.myProfiles}] hilang, Anda dapat memulihkannya dari [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] atau sumber cadangan lain (misalnya iCloud atau Webdav)',
			'meta.autoBackupAddProfile' => 'Setelah menambahkan konfigurasi',
			'meta.autoBackupRemoveProfile' => 'Setelah menghapus konfigurasi',
			'meta.profile' => 'Konfigurasi',
			'meta.currentProfile' => 'Konfigurasi saat ini',
			'meta.importAndExport' => 'Impor/Ekspor',
			'meta.import' => 'Impor',
			'meta.importFromUrl' => 'Impor dari URL',
			'meta.export' => 'Ekspor',
			'meta.send' => 'Kirim',
			'meta.receive' => 'Terima',
			'meta.sendConfirm' => 'Konfirmasi kirim?',
			'meta.termOfUse' => 'Ketentuan penggunaan',
			'meta.privacyPolicy' => 'Kebijakan privasi',
			'meta.about' => 'Tentang',
			'meta.name' => 'Nama',
			'meta.version' => 'Versi',
			'meta.notice' => 'Notifikasi',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'Tindakan:${p}\nAlasan:${p1}',
			'meta.sort' => 'Urutkan',
			'meta.novice' => 'Mode pemula',
			'meta.willCompleteAfterRebootInstall' => 'Silakan mulai ulang perangkat untuk menyelesaikan instalasi ekstensi sistem',
			'meta.willCompleteAfterRebootUninstall' => 'Silakan mulai ulang perangkat untuk menyelesaikan pencopotan ekstensi sistem',
			'meta.requestNeedsUserApproval' => '1. Di [Pengaturan Sistem]-[Privasi & Keamanan], [Izinkan] Karing memasang ekstensi sistem\n2. Di [Pengaturan Sistem]-[Umum]-[Item Login & Ekstensi]-[Ekstensi Jaringan], aktifkan [karingServiceSE]\nSetelah selesai, sambungkan ulang\n3. Di [Pengaturan Sistem]-[Umum]-[Item Login & Ekstensi]-[Ekstensi], aktifkan [karingServiceSE]\nSetelah selesai, sambungkan ulang',
			'meta.FullDiskAccessPermissionRequired' => 'Silakan aktifkan izin [karingServiceSE] di [Pengaturan Sistem]-[Privasi & Keamanan]-[Akses Disk Penuh], lalu sambungkan ulang',
			'meta.tvMode' => 'Mode TV',
			'meta.recommended' => 'Direkomendasikan',
			'meta.innerError' => ({required Object p}) => 'Galat internal:${p}',
			'meta.logicOperation' => 'Operasi logika',
			'meta.share' => 'Bagikan',
			'meta.candidateWord' => 'Kata kandidat',
			'meta.keywordOrRegx' => 'Kata kunci/regex',
			'meta.importFromClipboard' => 'Impor dari papan klip',
			'meta.exportToClipboard' => 'Ekspor ke papan klip',
			'meta.server' => 'Server',
			'meta.ads' => 'Iklan',
			'meta.adsRemove' => 'Hapus iklan',
			'meta.donate' => 'Donasi',
			'meta.diversion' => 'Routing',
			'meta.diversionRules' => 'Aturan routing',
			'meta.diversionCustomGroup' => 'Grup routing kustom',
			'meta.urlTestCustomGroup' => 'Pilih otomatis kustom',
			'meta.setting' => 'Pengaturan',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'Sinkronisasi LAN',
			'meta.lanSyncNotQuitTips' => 'Jangan keluar dari halaman ini sebelum sinkronisasi selesai',
			'meta.deviceNoSpace' => 'Ruang disk tidak cukup',
			'meta.hideSystemApp' => 'Sembunyikan aplikasi sistem',
			'meta.hideAppIcon' => 'Sembunyikan ikon aplikasi',
			'meta.hideDockIcon' => 'Sembunyikan ikon Dock',
			'meta.remark' => 'Catatan',
			'meta.remarkExist' => 'Catatan sudah ada, silakan gunakan nama lain',
			'meta.remarkCannotEmpty' => 'Catatan tidak boleh kosong',
			'meta.remarkTooLong' => 'Catatan maksimal 32 karakter',
			'meta.openDir' => 'Buka direktori file',
			'meta.fileChoose' => 'Pilih file',
			'meta.filePathCannotEmpty' => 'Jalur file tidak boleh kosong',
			'meta.fileNotExist' => ({required Object p}) => 'File tidak ada:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'Tipe file tidak valid:${p}',
			'meta.uwpExemption' => 'Pengecualian isolasi jaringan UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'Dapatkan konfigurasi',
			'meta.addProfile' => 'Tambahkan konfigurasi',
			'meta.myProfiles' => 'Konfigurasi saya',
			'meta.profileEdit' => 'Edit konfigurasi',
			'meta.profileEditUrlExist' => 'URL sudah ada, silakan gunakan URL lain',
			'meta.profileEditReloadAfterProfileUpdate' => 'Muat ulang setelah konfigurasi diperbarui',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'Mulai tes latensi setelah pembaruan konfigurasi otomatis',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN harus dalam keadaan terhubung, dan [Muat ulang setelah konfigurasi diperbarui] harus diaktifkan',
			'meta.profileEditTestLatencyAutoRemove' => 'Hapus otomatis server yang gagal tes latensi',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'Maksimal coba 3 kali',
			'meta.profileImport' => 'Impor file konfigurasi',
			'meta.profileAddUrlOrContent' => 'Tambahkan tautan konfigurasi',
			'meta.profileExists' => 'Konfigurasi sudah ada, jangan tambahkan dua kali',
			'meta.profileUrlOrContent' => 'Tautan/isi konfigurasi',
			'meta.profileUrlOrContentHit' => 'Tautan/isi konfigurasi [wajib] (mendukung Clash,V2ray(mendukung batch),Stash,Karing,Sing-box,Shadowsocks,Sub,Github configuration link)',
			'meta.profileUrlOrContentCannotEmpty' => 'Tautan konfigurasi tidak boleh kosong',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'Format salah, silakan koreksi lalu tambahkan lagi:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'Penambahan gagal:${p}, coba ubah [UserAgent] lalu ulangi, atau buka tautan konfigurasi dengan browser bawaan perangkat, lalu impor file konfigurasi yang diunduh browser ke aplikasi ini',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'Penambahan gagal:${p}, silakan aktifkan proxy atau ganti node proxy saat ini lalu coba lagi',
			'meta.profileAddParseFailed' => 'Gagal mengurai konfigurasi',
			'meta.profileAddNoServerAvaliable' => 'Tidak ada server yang tersedia, pastikan tautan atau file konfigurasi valid; jika konfigurasi Anda berasal dari GitHub, gunakan alamat tautan dari tombol [Raw] di halaman',
			'meta.profileAddWrapSuccess' => 'Konfigurasi berhasil dibuat, silakan lihat di [${_root.meta.myProfiles}]',
			'diversionRulesKeep' => 'Pertahankan [${_root.meta.isp}]${_root.meta.diversionRules}',
			'diversionCustomGroupPreset' => 'Preset [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'Perhatian: item yang diaktifkan akan ditambahkan/menimpa [${_root.meta.diversionCustomGroup}] dan [${_root.meta.diversionRules}]',
			_ => null,
		} ?? switch (path) {
			'diversionCustomGroupAddTips' => 'Perhatian: setelah ditambahkan, Anda mungkin perlu menyesuaikan urutan secara manual, jika tidak routing baru mungkin tidak berlaku',
			'rulesetEnableTips' => 'Tip: setelah mengaktifkan opsi, silakan buka [${_root.meta.diversionRules}] untuk mengatur aturan terkait, jika tidak maka tidak akan berlaku',
			'ispUserAgentTips' => '[${_root.meta.isp}] akan mengirimkan data jenis langganan yang berbeda berdasarkan [UserAgent] dalam permintaan [HTTP]',
			'ispDiversionTips' => 'Aturan routing yang disediakan oleh [${_root.meta.isp}]; langganan tipe [V2Ray] tidak mendukung aturan routing',
			'isp.bind' => 'Ikat ke [${_root.meta.isp}]',
			'isp.unbind' => ({required Object p}) => 'Lepaskan ikatan [${p}]',
			'isp.faq' => ({required Object p}) => 'Pertanyaan umum [${p}]',
			'isp.customerService' => ({required Object p}) => 'Layanan pelanggan [${p}]',
			'isp.follow' => ({required Object p}) => 'Ikuti [${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] tidak valid atau telah kedaluwarsa',
			'permission.camera' => 'Kamera',
			'permission.screen' => 'Perekaman layar',
			'permission.appQuery' => 'Dapatkan daftar aplikasi',
			'permission.request' => ({required Object p}) => 'Aktifkan izin [${p}]',
			'permission.requestNeed' => ({required Object p}) => 'Silakan aktifkan izin [${p}]',
			'tls.insecure' => 'Lewati verifikasi sertifikat',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'Aktifkan fragmentasi TLS',
			'tls.fragmentSize' => 'Ukuran fragmentasi TLS',
			'tls.fragmentSleep' => 'Tidur fragmentasi TLS',
			'tls.mixedCaseSNIEnable' => 'Aktifkan mixed-case SNI TLS',
			'tls.paddingEnable' => 'Aktifkan padding TLS',
			'tls.paddingSize' => 'Ukuran padding TLS',
			'outboundRuleMode.currentSelected' => 'Pilihan saat ini',
			'outboundRuleMode.urltest' => 'Pilih otomatis',
			'outboundRuleMode.direct' => 'Langsung',
			'outboundRuleMode.block' => 'Blokir',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'Pembaruan konfigurasi',
			'theme.light' => 'Terang',
			'theme.dark' => 'Gelap',
			'theme.auto' => 'Otomatis',
			'downloadProxyStrategy' => 'Kanal unduhan',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: resolusi domain dilakukan dengan menghubungkan server DNS melalui server proxy\n[${_root.dnsProxyResolveMode.direct}]: resolusi domain dilakukan dengan menghubungkan server DNS secara langsung\n[${_root.dnsProxyResolveMode.fakeip}]: domain diresolusikan oleh server proxy; jika koneksi VPN diputus, aplikasi Anda mungkin perlu dimulai ulang; hanya berlaku untuk trafik inbound [TUN]',
			'routeFinal' => 'final',
			'protocolSniff' => 'Deteksi protokol',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'Silakan gunakan [${p}]',
			'turnOffPrivateDirect' => 'Silakan aktifkan [Jaringan privat langsung] terlebih dahulu',
			'targetConnectFailed' => ({required Object p}) => 'Gagal terhubung ke [${p}], pastikan perangkat berada dalam LAN yang sama',
			'appleTVSync' => 'Sinkronkan konfigurasi inti saat ini ke Apple TV - Karing',
			'appleTVSyncDone' => 'Sinkronisasi selesai, silakan buka Apple TV - Karing untuk mengaktifkan koneksi/menyambung ulang',
			'appleTVRemoveCoreConfig' => 'Hapus konfigurasi inti Apple TV - Karing',
			'appleTVRemoveCoreConfigDone' => 'File konfigurasi inti Apple TV - Karing telah dihapus; layanan VPN telah diputuskan',
			'appleTVUrlInvalid' => 'URL tidak valid, silakan buka Apple TV - Karing dan pindai kode QR yang ditampilkan Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV: Karing [${p}] tidak memiliki fungsi ini, silakan perbarui lalu coba lagi',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'Versi mayor inti tidak cocok, silakan perbarui [${p}] lalu coba lagi',
			'remoteProfileEditConfirm' => 'Setelah konfigurasi diperbarui, perubahan node akan dipulihkan, lanjutkan?',
			'continueConnectConfirm' => 'Lanjutkan koneksi?',
			'mustBeValidHttpsURL' => 'Harus berupa URL https yang valid',
			'fileNotExistReinstall' => ({required Object p}) => 'File hilang [${p}], silakan instal ulang',
			'noNetworkConnect' => 'Tidak ada koneksi jaringan',
			'sudoPassword' => 'Kata sandi sudo (diperlukan untuk mode TUN)',
			'turnOffNetworkBeforeInstall' => 'Disarankan beralih ke [Mode pesawat] sebelum memasang pembaruan',
			'latencyTestResolveIP' => 'Saat deteksi manual, resolusikan juga IP keluar',
			'latencyTestConcurrency' => 'Jumlah konkurensi',
			'edgeRuntimeNotInstalled' => 'Perangkat saat ini belum menginstal runtime Edge WebView2 sehingga halaman tidak dapat ditampilkan. Silakan unduh dan instal runtime Edge WebView2 (x64), lalu mulai ulang aplikasi',
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
			'locales.id' => 'Bahasa Indonesia',
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
