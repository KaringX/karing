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
class TranslationsTh with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTh({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.th,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <th>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTh _root = this; // ignore: unused_field

	@override 
	TranslationsTh $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTh(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAboutScreenTh AboutScreen = _TranslationsAboutScreenTh._(_root);
	@override late final _TranslationsBackupAndSyncWebdavScreenTh BackupAndSyncWebdavScreen = _TranslationsBackupAndSyncWebdavScreenTh._(_root);
	@override late final _TranslationsDiversionGroupCustomEditScreenTh DiversionGroupCustomEditScreen = _TranslationsDiversionGroupCustomEditScreenTh._(_root);
	@override late final _TranslationsDiversionRuleDetectScreenTh DiversionRuleDetectScreen = _TranslationsDiversionRuleDetectScreenTh._(_root);
	@override late final _TranslationsDiversionRulesScreenTh DiversionRulesScreen = _TranslationsDiversionRulesScreenTh._(_root);
	@override late final _TranslationsDnsSettingsScreenTh DnsSettingsScreen = _TranslationsDnsSettingsScreenTh._(_root);
	@override late final _TranslationsFileContentViewerScreenTh FileContentViewerScreen = _TranslationsFileContentViewerScreenTh._(_root);
	@override late final _TranslationsHomeScreenTh HomeScreen = _TranslationsHomeScreenTh._(_root);
	@override late final _TranslationsLaunchFailedScreenTh LaunchFailedScreen = _TranslationsLaunchFailedScreenTh._(_root);
	@override late final _TranslationsMyProfilesMergeScreenTh MyProfilesMergeScreen = _TranslationsMyProfilesMergeScreenTh._(_root);
	@override late final _TranslationsNetCheckScreenTh NetCheckScreen = _TranslationsNetCheckScreenTh._(_root);
	@override late final _TranslationsNetConnectionsFilterScreenTh NetConnectionsFilterScreen = _TranslationsNetConnectionsFilterScreenTh._(_root);
	@override late final _TranslationsNetConnectionsScreenTh NetConnectionsScreen = _TranslationsNetConnectionsScreenTh._(_root);
	@override late final _TranslationsPerAppAndroidScreenTh PerAppAndroidScreen = _TranslationsPerAppAndroidScreenTh._(_root);
	@override late final _TranslationsRegionSettingsScreenTh RegionSettingsScreen = _TranslationsRegionSettingsScreenTh._(_root);
	@override late final _TranslationsServerSelectScreenTh ServerSelectScreen = _TranslationsServerSelectScreenTh._(_root);
	@override late final _TranslationsSettingsScreenTh SettingsScreen = _TranslationsSettingsScreenTh._(_root);
	@override late final _TranslationsUserAgreementScreenTh UserAgreementScreen = _TranslationsUserAgreementScreenTh._(_root);
	@override late final _TranslationsVersionUpdateScreenTh VersionUpdateScreen = _TranslationsVersionUpdateScreenTh._(_root);
	@override late final _TranslationsCommonWidgetTh CommonWidget = _TranslationsCommonWidgetTh._(_root);
	@override late final _TranslationsMainTh main = _TranslationsMainTh._(_root);
	@override late final _TranslationsMetaTh meta = _TranslationsMetaTh._(_root);
	@override String get diversionRulesKeep => 'เก็บ [${_root.meta.isp}] ${_root.meta.diversionRules}';
	@override String get diversionCustomGroupPreset => 'ตั้งค่า [${_root.meta.diversionCustomGroup}]';
	@override String get diversionCustomGroupPresetTips => 'หมายเหตุ: รายการที่เปิดใช้งานจะถูกเพิ่ม/เขียนทับไปยัง [${_root.meta.diversionCustomGroup}] และ [${_root.meta.diversionRules}]';
	@override String get diversionCustomGroupAddTips => 'หมายเหตุ: หลังจากเพิ่ม คุณอาจต้องปรับเปลี่ยนการจัดลำดับด้วยตนเอง มิฉะนั้นการเปลี่ยนเส้นทางที่เพิ่มใหม่อาจไม่ทำให้เกิดผล';
	@override String get rulesetEnableTips => 'เคล็ดลับ: หลังจากเปิดใช้งานตัวเลือก โปรดไปที่ [${_root.meta.diversionRules}] เพื่อตั้งค่ากฎที่เกี่ยวข้อง มิฉะนั้นจะไม่มีผล';
	@override String get ispUserAgentTips => '[${_root.meta.isp}] จะส่งข้อมูลของประเภทการสมัครสมาชิกที่แตกต่างกันตามที่ [UserAgent] ใน [HTTP] ขอ';
	@override String get ispDiversionTips => '[${_root.meta.isp}] ให้กฎการเปลี่ยนเส้นทางปริมาณการใช้ข้อมูล ประเภท [V2Ray] ไม่รองรับกฎการเปลี่ยนเส้นทางปริมาณการใช้ข้อมูล';
	@override late final _TranslationsIspTh isp = _TranslationsIspTh._(_root);
	@override late final _TranslationsPermissionTh permission = _TranslationsPermissionTh._(_root);
	@override late final _TranslationsTlsTh tls = _TranslationsTlsTh._(_root);
	@override late final _TranslationsOutboundRuleModeTh outboundRuleMode = _TranslationsOutboundRuleModeTh._(_root);
	@override late final _TranslationsDnsProxyResolveModeTh dnsProxyResolveMode = _TranslationsDnsProxyResolveModeTh._(_root);
	@override late final _TranslationsProxyStrategyTh proxyStrategy = _TranslationsProxyStrategyTh._(_root);
	@override late final _TranslationsReloadReasonTh reloadReason = _TranslationsReloadReasonTh._(_root);
	@override late final _TranslationsThemeTh theme = _TranslationsThemeTh._(_root);
	@override String get downloadProxyStrategy => 'ช่องทางดาวน์โหลด';
	@override String get dnsProxyResolveModeTips => '[${_root.dnsProxyResolveMode.proxy}]: เชื่อมต่อกับเซิร์ฟเวอร์ DNS ผ่านเซิร์ฟเวอร์พร็อกซีเพื่อแก้ไขชื่อโดเมน\n[${_root.dnsProxyResolveMode.direct}]: เชื่อมต่อโดยตรงกับเซิร์ฟเวอร์ DNS เพื่อแก้ไขชื่อโดเมน\n[${_root.dnsProxyResolveMode.fakeip}]: เซิร์ฟเวอร์พร็อกซีแก้ไขชื่อโดเมนแทนคุณ หากคุณตัดการเชื่อมต่อ VPN แอปของคุณอาจต้องเริ่มต้นใหม่ มีผลเฉพาะ [TUN] การรับส่งข้อมูลขาเข้า';
	@override String get routeFinal => 'ขั้นสุดท้าย';
	@override String get protocolSniff => 'Protocol Sniff';
	@override String sendOrReceiveNotMatch({required Object p}) => 'โปรดใช้ [${p}]';
	@override String get turnOffPrivateDirect => 'โปรดเปิดใช้ [การเชื่อมต่อเครือข่ายส่วนตัวโดยตรง] ก่อน';
	@override String targetConnectFailed({required Object p}) => 'ล้มเหลวในการเชื่อมต่อกับ [${p}] โปรดตรวจสอบให้แน่ใจว่าอุปกรณ์อยู่ใน LAN เดียวกัน';
	@override String get appleTVSync => 'ซิงค์การกำหนดค่าแกนปัจจุบันไปยัง Apple TV - Karing';
	@override String get appleTVSyncDone => 'การซิงค์เสร็จสิ้น โปรดไปที่ Apple TV - Karing เพื่อเริ่มการเชื่อมต่อ/เชื่อมต่อใหม่';
	@override String get appleTVRemoveCoreConfig => 'ลบการกำหนดค่าแกน Apple TV - Karing';
	@override String get appleTVRemoveCoreConfigDone => 'การกำหนดค่าแกน Apple TV - Karing ถูกลบแล้ว บริการ VPN ตัดการเชื่อมต่อแล้ว';
	@override String get appleTVUrlInvalid => 'URL ไม่ถูกต้อง โปรดเปิด Apple TV - Karing และสแกน QR code ที่แสดงโดย Karing';
	@override String appleTV404({required Object p}) => 'AppleTV:Karing[${p}] ไม่มีฟังก์ชันนี้ โปรดอัปเกรดและลองใหม่';
	@override String appleCoreVersionNotMatch({required Object p}) => 'เวอร์ชันแกนหลักไม่ตรงกัน โปรดอัปเกรด [${p}] และลองใหม่';
	@override String get remoteProfileEditConfirm => 'หลังจากอัปเดตโปรไฟล์ การเปลี่ยนแปลงโหนดจะถูกคืนค่า ดำเนินการต่อ?';
	@override String get mustBeValidHttpsURL => 'ต้องเป็น URL https ที่ถูกต้อง';
	@override String fileNotExistReinstall({required Object p}) => 'ไฟล์ที่หายไป [${p}] โปรดติดตั้งใหม่';
	@override String get noNetworkConnect => 'ไม่มีการเชื่อมต่ออินเทอร์เน็ต';
	@override String get sudoPassword => 'รหัสผ่าน sudo (จำเป็นสำหรับโหมด TUN)';
	@override String get turnOffNetworkBeforeInstall => 'ขอแนะนำให้เปลี่ยนไปเป็น [Airplane Mode] ก่อนติดตั้งอัปเดต';
	@override String get latencyTestResolveIP => 'เมื่อตรวจสอบด้วยตนเอง ให้แก้ IP เอาท์เล็ต';
	@override String get latencyTestConcurrency => 'ความพร้อมใช้งานพร้อมกัน';
	@override String get edgeRuntimeNotInstalled => 'อุปกรณ์ปัจจุบันยังไม่ได้ติดตั้งรันไทม์ Edge WebView2 ดังนั้นหน้าจึงไม่สามารถแสดงผลได้ โปรดดาวน์โหลดและติดตั้ง Edge WebView2 runtime (x64) รีสตาร์ทแอปและลองใหม่';
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
class _TranslationsAboutScreenTh implements TranslationsAboutScreenEn {
	_TranslationsAboutScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get installRefer => 'ลิงก์การติดตั้ง';
	@override String get installTime => 'เวลาติดตั้ง';
	@override String get versionChannel => 'ช่องอัปเดตอัตโนมัติ';
	@override String get updateWhenConnected => 'ตรวจสอบอัปเดตหลังเชื่อมต่อ';
	@override String get autoDownloadPkg => 'ดาวน์โหลดแพ็คเก็จอัปเดตอัตโนมัติ';
	@override String get disableAppImproveData => 'ข้อมูลการปรับปรุงแอปพลิเคชัน';
	@override String get disableUAReportTip => 'การเปิดใช้ [${_root.AboutScreen.disableAppImproveData}] ช่วยให้เราปรับปรุงความเสถียรและการใช้งานของผลิตภัณฑ์ เราไม่เก็บข้อมูลส่วนตัว การปิดใช้งานจะป้องกันแอปจากการเก็บข้อมูลใดๆ';
	@override String get devOptions => 'ตัวเลือกนักพัฒนา';
	@override String get enableDebugLog => 'เปิดใช้งานบันทึกการแก้จุดบกพร่อง';
	@override String get viewFilsContent => 'ดูไฟล์';
	@override String get enablePprof => 'เปิดใช้งาน pprof';
	@override String get pprofPanel => 'แผงควบคุม pprof';
	@override String get allowRemoteAccessPprof => 'อนุญาตการเข้าถึงระยะไกล ${_root.AboutScreen.pprofPanel}';
	@override String get allowRemoteAccessHtmlBoard => 'อนุญาตการเข้าถึงระยะไกล ${_root.SettingsScreen.htmlBoard}';
	@override String get useOriginalSBProfile => 'ใช้โปรไฟล์ sing-box เดิม';
}

// Path: BackupAndSyncWebdavScreen
class _TranslationsBackupAndSyncWebdavScreenTh implements TranslationsBackupAndSyncWebdavScreenEn {
	_TranslationsBackupAndSyncWebdavScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get webdavServerUrl => 'URL เซิร์ฟเวอร์';
	@override String get webdavRequired => 'ไม่สามารถว่างเปล่า';
	@override String get webdavLoginFailed => 'การเข้าสู่ระบบล้มเหลว:';
	@override String get webdavListFailed => 'ล้มเหลวในการรับรายการไฟล์:';
}

// Path: DiversionGroupCustomEditScreen
class _TranslationsDiversionGroupCustomEditScreenTh implements TranslationsDiversionGroupCustomEditScreenEn {
	_TranslationsDiversionGroupCustomEditScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String invalidDomain({required Object p}) => 'ชื่อโดเมนไม่ถูกต้อง [Domain]:${p}';
	@override String invalidIpCidr({required Object p}) => '[IP Cidr] ไม่ถูกต้อง:${p}';
	@override String invalid({required Object p0, required Object p}) => '[${p0}] ไม่ถูกต้อง:${p}';
	@override String invalidRuleSet({required Object p}) => 'ชุดกฎ [Rule Set] ไม่ถูกต้อง:${p} URL ต้องเป็น https ที่ถูกต้องและไฟล์ไบนารีที่มีนามสกุล .srs/.json';
	@override String invalidRuleSetBuildIn({required Object p}) => '[Rule Set(build-in)] ไม่ถูกต้อง:${p} รูปแบบคือ geosite:xxx หรือ geoip:xxx หรือ acl:xxx และ xxx ควรเป็นชื่อกฎที่ถูกต้อง';
	@override String invalidPackageId({required Object p}) => '[${_root.meta.appPackage}] ไม่ถูกต้อง:${p}';
	@override String get setDiversionRule => 'เคล็ดลับ: หลังจากบันทึก โปรดไปที่ [${_root.meta.diversionRules}] เพื่อตั้งค่ากฎที่เกี่ยวข้อง มิฉะนั้นจะไม่มีผล';
}

// Path: DiversionRuleDetectScreen
class _TranslationsDiversionRuleDetectScreenTh implements TranslationsDiversionRuleDetectScreenEn {
	_TranslationsDiversionRuleDetectScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ตรวจจับกฎการเปลี่ยนเส้นทาง';
	@override String get rule => 'กฎ:';
	@override String get outbound => 'เซิร์ฟเวอร์พร็อกซี:';
}

// Path: DiversionRulesScreen
class _TranslationsDiversionRulesScreenTh implements TranslationsDiversionRulesScreenEn {
	_TranslationsDiversionRulesScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get diversionRulesMatchTips => 'เคล็ดลับ: พยายามจับคู่กฎจากบนลงล่าง หากไม่มีกฎที่ตรงกัน ให้ใช้ [final]';
}

// Path: DnsSettingsScreen
class _TranslationsDnsSettingsScreenTh implements TranslationsDnsSettingsScreenEn {
	_TranslationsDnsSettingsScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get ispCanNotEmpty => 'ISP ไม่สามารถว่างเปล่า';
	@override String get urlCanNotEmpty => 'URL ไม่สามารถว่างเปล่า';
	@override String error({required Object p}) => 'ประเภทที่ไม่รองรับ:${p}';
	@override String get dnsDesc => 'คอลัมน์แรกของข้อมูลความล่าช้าคือความล่าช้าของการสอบถามการเชื่อมต่อโดยตรง\nคอลัมน์ที่สอง: เปิด [[Proxy Traffic]Resolve DNS through proxy server]: ข้อมูลความล่าช้าคือความล่าช้าของการสอบถามที่ส่งต่อผ่านเซิร์ฟเวอร์พร็อกซีปัจจุบัน หากเปิด [[Proxy Traffic]Resolve DNS through proxy server]: ข้อมูลความล่าช้าคือความล่าช้าของการเชื่อมต่อโดยตรง';
}

// Path: FileContentViewerScreen
class _TranslationsFileContentViewerScreenTh implements TranslationsFileContentViewerScreenEn {
	_TranslationsFileContentViewerScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โปรแกรมดูเนื้อหาไฟล์';
	@override String get clearFileContent => 'คุณแน่ใจไหมว่าต้องการล้างเนื้อหาของไฟล์?';
	@override String get clearFileContentTips => 'คุณแน่ใจไหมว่าต้องการล้างเนื้อหาของไฟล์โปรไฟล์? การล้างไฟล์โปรไฟล์อาจทำให้เสียข้อมูลหรือฟังก์ชันแอปพลิเคชันผิดปกติ โปรดดำเนินการด้วยความระมัดระวัง';
}

// Path: HomeScreen
class _TranslationsHomeScreenTh implements TranslationsHomeScreenEn {
	_TranslationsHomeScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get toSelectServer => 'โปรดเลือกเซิร์ฟเวอร์';
	@override String get invalidServer => 'ไม่ถูกต้อง โปรดเลือกอีกครั้ง';
	@override String get disabledServer => 'ถูกปิดใช้งาน โปรดเลือกอีกครั้ง';
	@override String get expiredServer => 'ไม่มีเซิร์ฟเวอร์ที่พร้อมใช้งาน โปรไฟล์อาจหมดอายุหรือถูกปิดใช้งาน';
	@override String systemProxyTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get myLinkEmpty => 'โปรดตั้งค่า [ลิงก์ลัด] ก่อนใช้งาน';
	@override String tooMuchServers({required Object p, required Object p1}) => 'เซิร์ฟเวอร์พร็อกซีมากเกินไป [${p}>${p1}] การเชื่อมต่ออาจล้มเหลวเนื่องจากข้อจำกัดหน่วยความจำของระบบ';
	@override String tooMuchServers2({required Object p, required Object p1}) => 'เซิร์ฟเวอร์พร็อกซีมากเกินไป [${p}>${p1}] อาจทำให้การเชื่อมต่อช้าหรือไม่สามารถเข้าถึงได้';
}

// Path: LaunchFailedScreen
class _TranslationsLaunchFailedScreenTh implements TranslationsLaunchFailedScreenEn {
	_TranslationsLaunchFailedScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get invalidProcess => 'แอปไม่สามารถเริ่มต้น [ชื่อกระบวนการไม่ถูกต้อง] โปรดติดตั้งแอปใหม่ในไดเรกทอรีแยกต่างหาก';
	@override String get invalidProfile => 'แอปไม่สามารถเริ่มต้น [ไม่สามารถเข้าถึงโปรไฟล์] โปรดติดตั้งแอปใหม่';
	@override String get invalidVersion => 'แอปไม่สามารถเริ่มต้น [เวอร์ชันไม่ถูกต้อง] โปรดติดตั้งแอปใหม่';
	@override String get systemVersionLow => 'แอปไม่สามารถเริ่มต้น [เวอร์ชันของระบบต่ำเกินไป]';
	@override String get invalidInstallPath => '경로ติดตั้งไม่ถูกต้อง โปรดติดตั้งใหม่ในเส้นทางที่ถูกต้อง';
}

// Path: MyProfilesMergeScreen
class _TranslationsMyProfilesMergeScreenTh implements TranslationsMyProfilesMergeScreenEn {
	_TranslationsMyProfilesMergeScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get profilesMerge => 'รวมโปรไฟล์';
	@override String get profilesMergeTarget => 'โปรไฟล์เป้าหมาย';
	@override String get profilesMergeSource => 'โปรไฟล์ต้นทาง';
	@override String get profilesMergeTips => 'เคล็ดลับ: การเปลี่ยนเส้นทางของโปรไฟล์ต้นทางจะถูกยกเลิก';
}

// Path: NetCheckScreen
class _TranslationsNetCheckScreenTh implements TranslationsNetCheckScreenEn {
	_TranslationsNetCheckScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ตรวจสอบเครือข่าย';
	@override String get warn => 'หมายเหตุ: เนื่องจากอิทธิพลของสภาพแวดล้อมเครือข่ายและกฎการเปลี่ยนเส้นทาง ผลการทดสอบไม่เทียบเท่าอย่างสมบูรณ์';
	@override String get invalidDomain => 'ชื่อโดเมนไม่ถูกต้อง';
	@override String get connectivity => 'การเชื่อมต่อเครือข่าย';
	@override String connectivityTestIpv4AllFailed({required Object p}) => 'การทดสอบการเชื่อมต่อ Ipv4 [${p}] ล้มเหลวทั้งหมด';
	@override String get connectivityTestIpv4Ok => 'การเชื่อมต่อ Ipv4 สำเร็จ';
	@override String connectivityTestIpv6AllFailed({required Object p}) => 'การทดสอบการเชื่อมต่อ Ipv6 [${p}] ล้มเหลวทั้งหมด เครือข่ายของคุณอาจไม่รองรับ ipv6';
	@override String get connectivityTestIpv6Ok => 'การเชื่อมต่อ Ipv6 สำเร็จ';
	@override String get connectivityTestOk => 'เครือข่ายเชื่อมต่อกับอินเทอร์เน็ต';
	@override String get connectivityTestFailed => 'เครือข่ายยังไม่เชื่อมต่อกับอินเทอร์เน็ต';
	@override String get remoteRulesetsDownloadOk => 'ดาวน์โหลดสำเร็จทั้งหมด';
	@override String get remoteRulesetsDownloadNotOk => 'กำลังดาวน์โหลดหรือดาวน์โหลดล้มเหลว';
	@override String get outbound => 'เซิร์ฟเวอร์พร็อกซี';
	@override String outboundOk({required Object p}) => '[${p}] การเชื่อมต่อสำเร็จ';
	@override String outboundFailed({required Object p1, required Object p2}) => '[${p1}] การเชื่อมต่อล้มเหลว\nข้อผิดพลาด:[${p2}]';
	@override String get dnsServer => 'เซิร์ฟเวอร์ DNS';
	@override String dnsOk({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]การสอบถาม DNS สำเร็จ\nกฎ DNS:[${p2}]\nความล่าช้า:[${p3} ms]\nที่อยู่:[${p4}]';
	@override String dnsFailed({required Object p1, required Object p2, required Object p3}) => '[${p1}]การสอบถาม DNS สำเร็จ\nกฎ DNS:[${p2}]\nข้อผิดพลาด:[${p3}]';
	@override String get host => 'การเชื่อมต่อ HTTP';
	@override String hostConnection({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nกฎการเปลี่ยนเส้นทาง:[${p2}]\nเซิร์ฟเวอร์พร็อกซี:[${p3}]';
	@override String get hostConnectionOk => 'การเชื่อมต่อสำเร็จ';
	@override String hostConnectionFailed({required Object p}) => 'การเชื่อมต่อล้มเหลว:[${p}]';
}

// Path: NetConnectionsFilterScreen
class _TranslationsNetConnectionsFilterScreenTh implements TranslationsNetConnectionsFilterScreenEn {
	_TranslationsNetConnectionsFilterScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get hostIp => 'โดเมน/IP';
	@override String get app => 'แอป';
	@override String get rule => 'กฎ';
	@override String get chain => 'Outbound';
}

// Path: NetConnectionsScreen
class _TranslationsNetConnectionsScreenTh implements TranslationsNetConnectionsScreenEn {
	_TranslationsNetConnectionsScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get copyAsCSV => 'คัดลอกไปยังรูปแบบ CSV';
	@override String get selectType => 'เลือกประเภทการเปลี่ยนเส้นทาง';
}

// Path: PerAppAndroidScreen
class _TranslationsPerAppAndroidScreenTh implements TranslationsPerAppAndroidScreenEn {
	_TranslationsPerAppAndroidScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'พร็อกซีต่อแอป';
	@override String get whiteListMode => 'โหมดรายการอนุญาต';
	@override String get whiteListModeTip => 'เมื่อเปิดใช้งาน: เฉพาะแอปที่ได้ตรวจสอบเท่านั้นจะใช้พร็อกซี เมื่อไม่เปิดใช้งาน: เฉพาะแอปที่ไม่ได้ตรวจสอบเท่านั้นจะใช้พร็อกซี';
}

// Path: RegionSettingsScreen
class _TranslationsRegionSettingsScreenTh implements TranslationsRegionSettingsScreenEn {
	_TranslationsRegionSettingsScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ประเทศหรือภูมิภาค';
	@override String get Regions => 'เคล็ดลับ: โปรดตั้งค่าประเทศหรือภูมิภาคปัจจุบันของคุณให้ถูกต้อง มิฉะนั้นอาจทำให้เกิดปัญหาการเปลี่ยนเส้นทางเครือข่าย';
}

// Path: ServerSelectScreen
class _TranslationsServerSelectScreenTh implements TranslationsServerSelectScreenEn {
	_TranslationsServerSelectScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เลือกเซิร์ฟเวอร์';
	@override String get autoSelectServer => 'เลือกเซิร์ฟเวอร์ที่มีความล่าช้าต่ำสุดโดยอัตโนมัติ';
	@override String get recentUse => 'ใช้เมื่อเร็ว ๆ นี้';
	@override String get myFav => 'รายการโปรด';
	@override String selectLocal({required Object p}) => 'เซิร์ฟเวอร์ที่เลือกคือที่อยู่ในเครื่องและอาจไม่ทำงานอย่างถูกต้อง:${p}';
	@override String get selectRequireEnableIPv6 => 'เซิร์ฟเวอร์ที่เลือกคือที่อยู่ IPv6 และต้องการ [เปิดใช้งาน IPv6]';
	@override String get selectDisabled => 'เซิร์ฟเวอร์นี้ถูกปิดใช้งาน';
	@override String get error404 => 'การตรวจจับความล่าช้าพบข้อผิดพลาด โปรดตรวจสอบว่ามีการกำหนดค่าด้วยเนื้อหาเดียวกันหรือไม่';
}

// Path: SettingsScreen
class _TranslationsSettingsScreenTh implements TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get getTranffic => 'รับปริมาณการใช้ข้อมูล';
	@override String get tutorial => 'บทช่วยสอน';
	@override String get commonlyUsedRulesets => 'ชุดกฎที่ใช้งานทั่วไป';
	@override String get htmlBoard => 'แผงออนไลน์';
	@override String get dnsLeakDetection => 'การตรวจจับการรั่วไหล DNS';
	@override String get proxyLeakDetection => 'การตรวจจับการรั่วไหลของพร็อกซี';
	@override String get speedTest => 'ทดสอบความเร็ว';
	@override String get rulesetDirectDownlad => 'ดาวน์โหลดชุดกฎโดยตรง';
	@override String get hideUnusedDiversionGroup => 'ซ่อนกฎการเปลี่ยนเส้นทางที่ไม่ใช้งาน';
	@override String get disableISPDiversionGroup => 'ปิดใช้งาน [${_root.meta.isp}] ${_root.meta.diversionRules}';
	@override String get portSettingRule => 'ตามกฎ';
	@override String get portSettingDirectAll => 'โดยตรงทั้งหมด';
	@override String get portSettingProxyAll => 'พร็อกซีทั้งหมด';
	@override String get portSettingControl => 'ควบคุมและซิงค์';
	@override String get portSettingCluster => 'บริการคลัสเตอร์';
	@override String get modifyPort => 'แก้ไขพอร์ต';
	@override String get modifyPortOccupied => 'พอร์ตถูกใช้งาน โปรดใช้พอร์ตอื่น';
	@override String get ipStrategyTips => 'ก่อนที่จะเปิดใช้งาน โปรดยืนยันว่าเครือข่ายของคุณรองรับ IPv6 มิฉะนั้นการเข้าถึงบางส่วนของปริมาณการใช้ข้อมูลอาจไม่ได้';
	@override String get tunAppendHttpProxy => 'เพิ่มพร็อกซี HTTP ไปยัง VPN';
	@override String get tunAppendHttpProxyTips => 'แอปบางตัวจะข้ามอุปกรณ์ NIC เสมือนและเชื่อมต่อโดยตรงกับพร็อกซี HTTP';
	@override String get tunAllowBypassHttpProxyDomain => 'โดเมนที่อนุญาตให้ข้าม HTTP proxy';
	@override String get dnsEnableRule => 'เปิดใช้งานกฎการเปลี่ยนเส้นทาง DNS';
	@override String get dnsEnableProxyResolveMode => '[${_root.meta.trafficProxy}] ช่องสัญญาณแก้ไข';
	@override String get dnsEnableClientSubnet => '[${_root.meta.trafficDirect}] เปิดใช้งาน ECS';
	@override String get dnsTestDomain => 'โดเมนทดสอบ';
	@override String get dnsTestDomainInvalid => 'โดเมนไม่ถูกต้อง';
	@override String get dnsTypeOutbound => 'เซิร์ฟเวอร์พร็อกซี';
	@override String get dnsTypeDirect => _root.meta.trafficDirect;
	@override String get dnsTypeProxy => _root.meta.trafficProxy;
	@override String get dnsTypeResolver => 'เซิร์ฟเวอร์ DNS';
	@override String get dnsEnableRuleTips => 'หลังจากเปิดใช้งาน ชื่อโดเมนจะเลือกเซิร์ฟเวอร์ DNS ที่ตรงกันเพื่อแก้ไขตามกฎการเปลี่ยนเส้นทาง';
	@override String get dnsEnableFakeIpTips => 'หลังจากเปิดใช้งาน FakeIP หากคุณตัดการเชื่อมต่อจาก VPN แอปของคุณอาจต้องเริ่มต้นใหม่ คุณสมบัตินี้จำเป็นต้อง [เปิดใช้งานโหมด TUN]';
	@override String get dnsTypeOutboundTips => 'การแก้ไขชื่อโดเมนสำหรับ [${_root.SettingsScreen.dnsTypeOutbound}]';
	@override String get dnsTypeDirectTips => 'การแก้ไขชื่อโดเมนสำหรับ [${_root.meta.trafficDirect}]';
	@override String get dnsTypeProxyTips => 'การแก้ไขชื่อโดเมนสำหรับ [${_root.meta.trafficProxy}]';
	@override String get dnsTypeResolverTips => 'การแก้ไขชื่อโดเมนสำหรับ [${_root.SettingsScreen.dnsTypeResolver}]';
	@override String get dnsAutoSetServer => 'ตั้งค่าเซิร์ฟเวอร์อัตโนมัติ';
	@override String get dnsResetServer => 'รีเซ็ตเซิร์ฟเวอร์';
	@override String get dnsEnableStaticIPForResolver => 'ส่วนแบบสถิตสำหรับ IP';
	@override String get dnsEnableStaticIPForResolverTips => 'ป้องกันเซิร์ฟเวอร์ DNS เองจากการปนเปื้อนในระหว่างการแก้ไข';
	@override String get inboundDomainResolve => 'แก้ไขชื่อโดเมนขาเข้า';
	@override String get privateDirect => 'การเชื่อมต่อเครือข่ายส่วนตัวโดยตรง';
	@override String inboundDomainResolveTips({required Object p}) => 'ชื่อโดเมนบางชื่อที่ไม่มีกฎการเปลี่ยนเส้นทางที่กำหนดค่าไว้จำเป็นต้องแก้ไขก่อนจึงจะสามารถโจมตีกฎการเปลี่ยนเส้นทางที่ใช้ IP ได้ คุณสมบัตินี้ส่งผลกระทบต่อคำขอขาเข้าไปยังพอร์ตพร็อกซี [${p}]';
	@override String get useRomoteRes => 'ใช้ทรัพยากรระยะไกล';
	@override String get autoAppendRegion => 'อัปเปนด์กฎพื้นฐานโดยอัตโนมัติ';
	@override String get autoSelect => 'เลือกอัตโนมัติ';
	@override String get autoSelectServerIgnorePerProxyServer => 'ละเว้น [Front/Chaine] เซิร์ฟเวอร์พร็อกซี';
	@override String get autoSelectServerInterval => 'ช่วงเวลาการตรวจสอบความล่าช้า';
	@override String get autoSelectSelectedHealthCheckInterval => 'ช่วงเวลาการตรวจสอบสุขภาพของเซิร์ฟเวอร์ปัจจุบัน';
	@override String get autoSelectServerReTestIfNetworkUpdate => 'ตรวจสอบความล่าช้าอีกครั้งเมื่อเครือข่ายเปลี่ยนแปลง';
	@override String get autoSelectServerUpdateCurrentServerAfterManualUrltest => 'อัปเดตเซิร์ฟเวอร์ปัจจุบันหลังจากตรวจสอบความล่าช้าด้วยตนเอง';
	@override String get autoSelectServerIntervalTips => 'ช่วงเวลายิ่งสั้นเท่าใด การอัปเดตข้อมูลความล่าช้าของเซิร์ฟเวอร์ก็ยิ่งทันเวลา ซึ่งจะใช้ทรัพยากรมากขึ้นและใช้พลังงานมากขึ้น';
	@override String get autoSelectSelectedHealthCheckIntervalTips => 'หากการตรวจสอบล้มเหลว เซิร์ฟเวอร์จะเปลี่ยน หากไม่พบเซิร์ฟเวอร์ที่พร้อมใช้งานเมื่อเปลี่ยนเซิร์ฟเวอร์ กลุ่มจะตรวจสอบความล่าช้าอีกครั้ง';
	@override String get autoSelectServerFavFirst => 'Pri-ใช้ [รายการโปรด]';
	@override String get autoSelectServerFavFirstTips => 'หากรายการ [My Favs] ไม่ว่าง ให้ใช้เซิร์ฟเวอร์ใน [My Favs]';
	@override String get autoSelectServerFilter => 'ตัวกรองเซิร์ฟเวอร์ที่ไม่ถูกต้อง';
	@override String autoSelectServerFilterTips({required Object p}) => 'การตรวจสอบความล่าช้าของเซิร์ฟเวอร์ที่ล้มเหลวจะถูกกรอง หากไม่มีเซิร์ฟเวอร์ที่พร้อมใช้งานหลังจากการกรอง เซิร์ฟเวอร์ [${p}] ตัวแรกจะถูกใช้แทน';
	@override String get autoSelectServerLimitedNum => 'จำนวนเซิร์ฟเวอร์สูงสุด';
	@override String get autoSelectServerLimitedNumTips => 'เซิร์ฟเวอร์ที่เกินจำนวนนี้จะถูกกรอง';
	@override String get numInvalid => 'หมายเลขไม่ถูกต้อง';
	@override String get hideInvalidServer => 'ซ่อนเซิร์ฟเวอร์ที่ไม่ถูกต้อง';
	@override String get sortServer => 'การเรียงลำดับเซิร์ฟเวอร์';
	@override String get sortServerTips => 'เรียงลำดับตามความล่าช้าจากต่ำไปสูง';
	@override String get selectServerHideRecommand => 'ซ่อน [แนะนำ]';
	@override String get selectServerHideRecent => 'ซ่อน [ใช้เมื่อเร็ว ๆ นี้]';
	@override String get selectServerHideFav => 'ซ่อน [รายการโปรด]';
	@override String get homeScreen => 'หน้าแรก';
	@override String get theme => 'ธีม';
	@override String get widgetsAlpha => 'อัลฟ่าวิดเจ็ต';
	@override String get widgetsEmpty => 'ไม่มีวิดเจ็ตพร้อมใช้งาน';
	@override String get backgroundImage => 'รูปภาพพื้นหลัง';
	@override String get myLink => 'ลิงก์ลัด';
	@override String get autoConnectAfterLaunch => 'เชื่อมต่ออัตโนมัติหลังเปิดตัว';
	@override String get autoConnectAtBoot => 'เชื่อมต่ออัตโนมัติหลังเริ่มต้นระบบ';
	@override String get autoConnectAtBootTips => 'ต้องการการสนับสนุนระบบ ระบบบางระบบอาจต้องการ [เริ่มต้นอัตโนมัติ] ที่จะเปิดใช้งาน';
	@override String get hideAfterLaunch => 'ซ่อนหน้าต่างหลังเริ่มต้น';
	@override String get autoSetSystemProxy => 'ตั้งค่าพร็อกซีของระบบโดยอัตโนมัติเมื่อเชื่อมต่อ';
	@override String get bypassSystemProxy => 'ชื่อโดเมนที่อนุญาตให้ข้ามพร็อกซีของระบบ';
	@override String get disconnectWhenQuit => 'ตัดการเชื่อมต่อเมื่อออกจากแอป';
	@override String get autoAddToFirewall => 'เพิ่มกฎไฟร์วอลล์โดยอัตโนมัติ';
	@override String get excludeFromRecent => 'ซ่อนจาก [งานล่าสุด]';
	@override String get wakeLock => 'Wake Lock';
	@override String get hideVpn => 'ซ่อนไอคอน VPN';
	@override String get hideVpnTips => 'การเปิดใช้งาน IPv6 จะทำให้ฟังก์ชันนี้ล้มเหลว';
	@override String get allowBypass => 'อนุญาตให้แอปข้าม VPN';
	@override String get importSuccess => 'นำเข้าสำเร็จ';
	@override String get rewriteConfirm => 'ไฟล์นี้จะเขียนทับการกำหนดค่าในเครื่องที่มีอยู่ คุณต้องการดำเนินการต่อหรือไม่?';
	@override String get mergePerapp => 'รวม [${_root.PerAppAndroidScreen.title}] รายการท้องถิ่น';
	@override String get networkShare => 'การแบ่งปันเครือข่าย';
	@override String get frontProxy => 'Front/Chain Proxy';
	@override String frontProxyTips({required Object p}) => 'Data->Front/Chaine Proxy Server [Multiple Proxy Servers: Top to Bottom]->Proxy Server [${p}]->Target Server';
	@override String get allowOtherHostsConnect => 'อนุญาตให้ผู้อื่นเชื่อมต่อ';
	@override String allowOtherHostsConnectTips({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}';
	@override String get allowOtherHostsConnectWarn => 'เนื่องจากข้อจำกัดของระบบ หลังจากเปิดใช้งานนี้ แอปพลิเคชันบนอุปกรณ์นี้ที่ใช้ http เพื่อเข้าถึงเครือข่ายอาจไม่สามารถเชื่อมต่อกับเครือข่ายได้อย่างถูกต้อง';
	@override String get tunAutoRoute => 'เส้นทางอัตโนมัติ';
	@override String get tunAutoRedirect => 'เปลี่ยนเส้นทางอัตโนมัติ';
	@override String get tunStrictRoute => 'เส้นทางที่เคร่งครัด';
	@override String get tunStrictRouteTips => 'หากหลังจากเปิดการแชร์ผู้อื่นไม่สามารถเข้าถึงอุปกรณ์นี้ได้ โปรดปิดสวิตช์นี้';
	@override String get loopbackAddress => 'ที่อยู่ Loopback';
	@override String get enableCluster => 'เปิดใช้งานคลัสเตอร์ Socks/Http Proxy';
	@override String get clusterAllowOtherHostsConnect => 'อนุญาตให้ผู้อื่นเชื่อมต่อกับคลัสเตอร์';
	@override String clusterAllowOtherHostsConnectTips({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies';
	@override String get clusterAuth => 'การรับรองความถูกต้องของคลัสเตอร์พร็อกซี';
	@override String get tunMode => 'โหมด TUN';
	@override String get tuni4Address => 'ที่อยู่ IP';
	@override String get tunModeTips => 'โหมด TUN จะเข้าครอบครองปริมาณการใช้ข้อมูลทั้งหมดของระบบ [ในโหมดนี้ คุณสามารถปล่อยให้พร็อกซีของระบบไม่เปิดใช้งาน]';
	@override String get tunModeRunAsAdmin => 'โหมด TUN ต้องการสิทธิ์ผู้ดูแลระบบ โปรดรีสตาร์ทแอปพลิเคชันเป็นผู้ดูแลระบบ';
	@override String get tunStack => 'แล้งเข้า';
	@override String get tunHijackTips => 'หลังจากปิด คำขอ DNS จาก TUN จะถูกส่งต่อโดยตรงไปยังเซิร์ฟเวอร์ DNS ที่ตรงกัน';
	@override String get launchAtStartup => 'เปิดใช้งานเมื่อเริ่มต้น';
	@override String get quitWhenSwitchSystemUser => 'ออกจากแอปเมื่อสลับผู้ใช้ระบบ';
	@override String get handleScheme => 'โทรระบบ Scheme';
	@override String get portableMode => 'โหมดพกพา';
	@override String get portableModeDisableTips => 'หากคุณต้องการออกจากโหมดพกพา โปรดออกจาก [karing] และลบโฟลเดอร์ [profiles] ด้วยตนเองในไดเรกทอรีเดียวกับ [karing.exe]';
	@override String get accessibility => 'การเข้าถึง';
	@override String get handleKaringScheme => 'จัดการการโทร karing://';
	@override String get handleClashScheme => 'จัดการการโทร clash://';
	@override String get handleSingboxScheme => 'จัดการการโทร sing-box://';
	@override String get alwayOnVPN => 'การเชื่อมต่อที่เปิดอยู่เสมอ';
	@override String get disconnectAfterSleep => 'ตัดการเชื่อมต่อหลังการนอนหลับของระบบ';
	@override String get removeSystemVPNConfig => 'ลบการกำหนดค่า VPN ของระบบ';
	@override String get timeConnectOrDisconnect => 'เชื่อมต่อ/ตัดการเชื่อมต่อตามกำหนดเวลา';
	@override String get timeConnectOrDisconnectTips => 'VPN ต้องเชื่อมต่อเพื่อให้มีผล หลังจากเปิดใช้งาน [การนอนหลับอัตโนมัติ] จะถูกปิดใช้งาน';
	@override String timeConnectAndDisconnectInterval({required Object p}) => 'ช่วงเวลาการเชื่อมต่อ/ตัดการเชื่อมต่อไม่สามารถน้อยกว่า ${p} นาที';
	@override String get disableFontScaler => 'ปิดใช้งานการปรับขนาดแบบอักษร (รีสตาร์ทจะสร้างผล)';
	@override String get autoOrientation => 'หมุนพร้อมกับหน้าจอ';
	@override String get restartTakesEffect => 'รีสตาร์ทจะสร้างผล';
	@override String get reconnectTakesEffect => 'เชื่อมต่อใหม่จะสร้างผล';
	@override String get resetSettings => 'รีเซ็ตการตั้งค่า';
	@override String get cleanCache => 'ล้างแคช';
	@override String get cleanCacheDone => 'ล้างเสร็จแล้ว';
	@override String get appleTestFlight => 'Apple TestFlight';
	@override String get appleAppStore => 'Apple AppStore';
	@override String hasNewVersion({required Object p}) => 'อัปเดตเวอร์ชัน ${p}';
	@override String get follow => 'ติดตามเรา';
	@override String get contactUs => 'ติดต่อเรา';
	@override String get supportUs => 'สนับสนุนเรา';
	@override String get rateInApp => 'ให้คะแนนเรา';
	@override String get rateInAppStore => 'ให้คะแนนเราใน AppStore';
}

// Path: UserAgreementScreen
class _TranslationsUserAgreementScreenTh implements TranslationsUserAgreementScreenEn {
	_TranslationsUserAgreementScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get privacyFirst => 'ความเป็นส่วนตัวของคุณมาก่อน';
	@override String get agreeAndContinue => 'ยอมรับและดำเนินการต่อ';
}

// Path: VersionUpdateScreen
class _TranslationsVersionUpdateScreenTh implements TranslationsVersionUpdateScreenEn {
	_TranslationsVersionUpdateScreenTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String versionReady({required Object p}) => 'เวอร์ชันใหม่ [${p}] พร้อมแล้ว';
	@override String get update => 'รีสตาร์ทเพื่ออัปเดต';
	@override String get cancel => 'ไม่ใช่ตอนนี้';
}

// Path: CommonWidget
class _TranslationsCommonWidgetTh implements TranslationsCommonWidgetEn {
	_TranslationsCommonWidgetTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get diableAlwayOnVPN => 'หากเปิดใช้งาน [การเชื่อมต่อที่เปิดอยู่เสมอ] โปรดปิดใช้งาน [การเชื่อมต่อที่เปิดอยู่เสมอ] และลองเชื่อมต่ออีกครั้ง';
	@override String get resetPort => 'โปรดเปลี่ยนพอร์ตเป็นพอร์ตอื่นที่พร้อมใช้งาน หรือปิดแอปพลิเคชันที่ใช้พอร์ต';
}

// Path: main
class _TranslationsMainTh implements TranslationsMainEn {
	_TranslationsMainTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainTrayTh tray = _TranslationsMainTrayTh._(_root);
}

// Path: meta
class _TranslationsMetaTh implements TranslationsMetaEn {
	_TranslationsMetaTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get enable => 'เปิดใช้งาน';
	@override String get disable => 'ปิดใช้งาน';
	@override String get bydefault => 'ค่าเริ่มต้น';
	@override String get filter => 'ตัวกรอง';
	@override String get filterMethod => 'วิธีการกรอง';
	@override String get include => 'รวม';
	@override String get exclude => 'ยกเว้น';
	@override String get all => 'ทั้งหมด';
	@override String get prefer => 'ตั้งค่าที่ต้องการ';
	@override String get only => 'เพียงอย่างไร';
	@override String get open => 'เปิด';
	@override String get close => 'ปิด';
	@override String get quit => 'ออก';
	@override String get add => 'เพิ่ม';
	@override String get addSuccess => 'เพิ่มเสร็จแล้ว';
	@override String addFailed({required Object p}) => 'เพิ่มล้มเหลว:${p}';
	@override String get remove => 'ลบ';
	@override String get removeConfirm => 'คุณแน่ใจไหมว่าต้องการลบ?';
	@override String get edit => 'แก้ไข';
	@override String get view => 'มุมมอง';
	@override String get more => 'เพิ่มเติม';
	@override String get tips => 'ข้อมูล';
	@override String get copy => 'คัดลอก';
	@override String get paste => 'วาง';
	@override String get cut => 'ตัด';
	@override String get save => 'บันทึก';
	@override String get ok => 'ตกลง';
	@override String get cancel => 'ยกเลิก';
	@override String get feedback => 'ข้อเสนอแนะ';
	@override String get feedbackContent => 'เนื้อหาความเห็น';
	@override String get feedbackContentHit => 'จำเป็นต้องมี สูงสุด 500 อักขระ';
	@override String get feedbackContentCannotEmpty => 'เนื้อหาความเห็นไม่สามารถว่างเปล่า';
	@override String get faq => 'คำถามที่พบบ่อย';
	@override String get htmlTools => 'ชุดเครื่องมือ HTML';
	@override String get download => 'ดาวน์โหลด';
	@override String get upload => 'อัพโหลด';
	@override String get downloadSpeed => 'ความเร็วดาวน์โหลด';
	@override String get uploadSpeed => 'ความเร็วในการอัพโหลด';
	@override String get loading => 'กำลังโหลด...';
	@override String get convert => 'แปลง';
	@override String get check => 'ตรวจสอบ';
	@override String get detect => 'ตรวจจับ';
	@override String get cache => 'แคช';
	@override String get days => 'วัน';
	@override String get hours => 'ชั่วโมง';
	@override String get minutes => 'นาที';
	@override String get seconds => 'วินาที';
	@override String get milliseconds => 'มิลลิวินาที';
	@override String get tolerance => 'ความอดทน';
	@override String get dateTimePeriod => 'ช่วงเวลา';
	@override String get protocol => 'โปรโตคอล';
	@override String get search => 'ค้นหา';
	@override String get custom => 'ที่กำหนดเอง';
	@override String get inbound => 'Inbound';
	@override String get outbound => 'Outbound';
	@override String get destination => 'ปลายทาง';
	@override String get outletIpByCurrentSelected => 'IP';
	@override String get outletIpByDirect => 'IP:${_root.outboundRuleMode.direct}';
	@override String get connect => 'เชื่อมต่อ';
	@override String get disconnect => 'ตัดการเชื่อมต่อ';
	@override String get reconnect => 'เชื่อมต่อใหม่';
	@override String get connected => 'เชื่อมต่อแล้ว';
	@override String get disconnected => 'ตัดการเชื่อมต่อแล้ว';
	@override String get connecting => 'กำลังเชื่อมต่อ';
	@override String get connectTimeout => 'ไม่สามารถเชื่อมต่อได้';
	@override String get timeout => 'หมดเวลา';
	@override String get timeoutDuration => 'ระยะเวลาหมดเวลา';
	@override String get runDuration => 'ระยะเวลาการทำงาน';
	@override String get latency => 'ความล่าช้า';
	@override String get latencyTest => 'ตรวจสอบความล่าช้า';
	@override String get language => 'ภาษา';
	@override String get next => 'ถัดไป';
	@override String get done => 'เสร็จแล้ว';
	@override String get apply => 'ใช้';
	@override String get refresh => 'รีเฟรช';
	@override String get retry => 'ลองใหม่?';
	@override String get update => 'อัปเดต';
	@override String get updateInterval => 'ช่วงเวลาการอัปเดต';
	@override String get updateInterval5mTips => 'ขั้นต่ำ: 5 นาที';
	@override String updateFailed({required Object p}) => 'อัปเดตล้มเหลว:${p}';
	@override String get samplingUnit => 'หน่วยเวลาการสุ่มตัวอย่าง';
	@override String get queryResultCount => 'จำนวนผลการค้นหา';
	@override String queryLimit({required Object p}) => 'แสดงข้อมูล ${p} อย่างไรก็ตาม';
	@override String get none => 'ไม่มี';
	@override String get start => 'เริ่ม';
	@override String get pause => 'หยุดชั่วคราว';
	@override String get reset => 'รีเซ็ต';
	@override String get submit => 'ยืนยัน';
	@override String get user => 'ผู้ใช้';
	@override String get account => 'บัญชี';
	@override String get password => 'รหัสผ่าน';
	@override String get decryptPassword => 'รหัสผ่านถอดรหัส';
	@override String get required => 'จำเป็น';
	@override String get type => 'ประเภท';
	@override String get path => 'เส้นทาง';
	@override String get local => 'ส่วนท้องถิ่น';
	@override String get remote => 'ระยะไกล';
	@override String get other => 'อื่น ๆ';
	@override String get dns => 'DNS';
	@override String get url => 'URL';
	@override String get urlInvalid => 'URL ไม่ถูกต้อง';
	@override String get urlCannotEmpty => 'ลิงก์ไม่สามารถว่างเปล่า';
	@override String get urlTooLong => 'URL ยาวเกินไป (>8182)';
	@override String get copyUrl => 'คัดลอกลิงก์';
	@override String get openUrl => 'เปิดลิงก์';
	@override String get shareUrl => 'แบ่งปันลิงก์';
	@override String get speedTestUrl => 'URL ทดสอบความเร็ว';
	@override String get tls => 'TLS';
	@override String get userAgent => 'UserAgent';
	@override String get staticIP => 'IP แบบคงที่';
	@override String get staticIPTips => 'คุณต้องเปิดใช้งาน [TUN HijackDNS] หรือ [${_root.SettingsScreen.inboundDomainResolve}]';
	@override String get isp => 'ผู้ให้บริการ VPN';
	@override String get domainSuffix => 'คำต่อท้ายโดเมน';
	@override String get domain => 'โดเมน';
	@override String get domainKeyword => 'คำหลักของโดเมน';
	@override String get domainRegex => 'Regex โดเมน';
	@override String get ip => 'IP';
	@override String get port => 'พอร์ต';
	@override String get portRange => 'ช่วงพอร์ต';
	@override String get appPackage => 'ID แพ็คเก็จแอป';
	@override String get processName => 'ชื่อกระบวนการ';
	@override String get processPath => 'เส้นทางกระบวนการ';
	@override String get processDir => 'ไดเรกทอรีกระบวนการ';
	@override String get systemProxy => 'พร็อกซีของระบบ';
	@override String get percentage => 'เปอร์เซ็นต์';
	@override String get statistics => 'สถิติ';
	@override String get statisticsAndAnalysis => 'สถิติและการวิเคราะห์';
	@override String get statisticsDataDesensitize => 'การปลอมตัวข้อมูล';
	@override String get statisticsDataDesensitizeTips => 'ID กระบวนการ/แพ็คเก็จ/ชื่อโดเมนเป้าหมาย/IP เป้าหมาย เป็นต้น จะถูกแทนที่ด้วย * และถูกบันทึกหลังการปลอมตัว';
	@override String get records => 'บันทึก';
	@override String get requestRecords => 'บันทึกคำขอ';
	@override String get netInterfaces => 'อินเทอร์เฟซเครือข่าย';
	@override String get netSpeed => 'ความเร็ว';
	@override String get memoryTrendChart => 'แผนภูมิแนวโน้มหน่วยความจำ';
	@override String get goroutinesTrendChart => 'แผนภูมิแนวโน้ม GoRoutines';
	@override String get trafficTrendChart => 'แผนภูมิแนวโน้มการรับส่งข้อมูล';
	@override String get trafficDistributionChart => 'แผนภูมิการกระจายปริมาณการใช้ข้อมูล';
	@override String get connectionChart => 'แผนภูมิแนวโน้มการเชื่อมต่อ';
	@override String get memoryChart => 'แผนภูมิแนวโน้มหน่วยความจำ';
	@override String get trafficStatistics => 'สถิติการรับส่งข้อมูล';
	@override String get traffic => 'ปริมาณการใช้ข้อมูล';
	@override String get trafficTotal => 'ปริมาณการใช้ข้อมูลทั้งหมด';
	@override String get trafficProxy => 'พร็อกซีการรับส่งข้อมูล';
	@override String get trafficDirect => 'ปริมาณการใช้ข้อมูลโดยตรง';
	@override String get website => 'เว็บไซต์';
	@override String get memory => 'หน่วยความจำ';
	@override String get outboundMode => 'โหมด Outbound';
	@override String get rule => 'กฎ';
	@override String get global => 'ทั่วโลก';
	@override String get qrcode => 'รหัส QR';
	@override String get qrcodeTooLong => 'ข้อความยาวเกินไปในการแสดง';
	@override String get qrcodeShare => 'แบ่งปันรหัส QR';
	@override String get textToQrcode => 'ข้อความเป็นรหัส QR';
	@override String get qrcodeScan => 'สแกน QR Code';
	@override String get qrcodeScanResult => 'ผลการสแกน';
	@override String get qrcodeScanFromImage => 'สแกนจากภาพ';
	@override String get qrcodeScanResultFailed => 'ล้มเหลวในการแยกวิเคราะห์ภาพ โปรดตรวจสอบให้แน่ใจว่าหน้าจอสแกนเป็นรหัส QR ที่ถูกต้อง';
	@override String get qrcodeScanResultEmpty => 'ผลการสแกนว่างเปล่า';
	@override String get screenshot => 'ภาพหน้าจอ';
	@override String get backupAndSync => 'การสำรองข้อมูลและการซิงค์';
	@override String get autoBackup => 'การสำรองข้อมูลอัตโนมัติ';
	@override String get noProfileGotAutoBackup => 'หากข้อมูลเช่น [${_root.meta.myProfiles}] หายไป คุณสามารถคืนค่าจาก [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] หรือแหล่งสำรองข้อมูลอื่น ๆ (เช่น iCloud หรือ Webdav เป็นต้น)';
	@override String get autoBackupAddProfile => 'หลังจากเพิ่มโปรไฟล์';
	@override String get autoBackupRemoveProfile => 'หลังจากลบโปรไฟล์';
	@override String get profile => 'โปรไฟล์';
	@override String get currentProfile => 'โปรไฟล์ปัจจุบัน';
	@override String get importAndExport => 'นำเข้าและส่งออก';
	@override String get import => 'นำเข้า';
	@override String get importFromUrl => 'นำเข้าจาก URL';
	@override String get export => 'ส่งออก';
	@override String get send => 'ส่ง';
	@override String get receive => 'รับ';
	@override String get sendConfirm => 'ยืนยันการส่ง?';
	@override String get termOfUse => 'เงื่อนไขการให้บริการ';
	@override String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';
	@override String get about => 'เกี่ยวกับ';
	@override String get name => 'ชื่อ';
	@override String get version => 'เวอร์ชัน';
	@override String get notice => 'ประกาศ';
	@override String appNotifyWithReason({required Object p, required Object p1}) => 'การกระทำ:${p}\nเหตุผล:${p1}';
	@override String get sort => 'เรียงลำดับ';
	@override String get novice => 'โหมดมือใหม่';
	@override String get willCompleteAfterRebootInstall => 'โปรดรีสตาร์ทอุปกรณ์ของคุณเพื่อให้การติดตั้งส่วนขยายระบบสำเร็จ';
	@override String get willCompleteAfterRebootUninstall => 'โปรดรีสตาร์ทอุปกรณ์ของคุณเพื่อให้การถอนการติดตั้งส่วนขยายของระบบสำเร็จ';
	@override String get requestNeedsUserApproval => '1. โปรดคลิก [อนุญาต] Karing ให้ติดตั้งส่วนขยายระบบใน [System Settings]-[Privacy and Security]\n2. [System Settings]-[General]-[Login Items Extensions]-[Network Extension] เปิดใช้งาน [karingServiceSE]\nเชื่อมต่อใหม่หลังจากเสร็จสิ้น';
	@override String get FullDiskAccessPermissionRequired => 'โปรดเปิดใช้งานสิทธิ์ [karingServiceSE] ใน [System Settings]-[Privacy and Security]-[Full Disk Access Permission] และเชื่อมต่อใหม่';
	@override String get tvMode => 'โหมด TV';
	@override String get recommended => 'แนะนำ';
	@override String innerError({required Object p}) => 'ข้อผิดพลาดภายใน:${p}';
	@override String get logicOperation => 'การดำเนินการเชิงตรรกะ';
	@override String get share => 'แบ่งปัน';
	@override String get candidateWord => 'คำผู้สมัคร';
	@override String get keywordOrRegx => 'คำหลัก/ปกติ';
	@override String get importFromClipboard => 'นำเข้าจากคลิปบอร์ด';
	@override String get exportToClipboard => 'ส่งออกไปยังคลิปบอร์ด';
	@override String get server => 'เซิร์ฟเวอร์';
	@override String get ads => 'โฆษณา';
	@override String get adsRemove => 'ลบโฆษณา';
	@override String get donate => 'บริจาค';
	@override String get diversion => 'การเปลี่ยนเส้นทาง';
	@override String get diversionRules => 'กฎการเปลี่ยนเส้นทาง';
	@override String get diversionCustomGroup => 'กลุ่มปลี่ยนเส้นทางแบบกำหนดเอง';
	@override String get urlTestCustomGroup => 'เลือกอัตโนมัติแบบกำหนดเอง';
	@override String get setting => 'การตั้งค่า';
	@override String get iCloud => 'iCloud';
	@override String get appleTV => 'Apple TV';
	@override String get webdav => 'Webdav';
	@override String get lanSync => 'การซิงค์ LAN';
	@override String get lanSyncNotQuitTips => 'อย่าออกจากอินเทอร์เฟซนี้ก่อนที่การซิงค์จะเสร็จสิ้น';
	@override String get deviceNoSpace => 'พื้นที่ดิสก์ไม่เพียงพอ';
	@override String get hideSystemApp => 'ซ่อนแอปของระบบ';
	@override String get hideAppIcon => 'ซ่อนไอคอนแอป';
	@override String get hideDockIcon => 'ซ่อนไอคอน Dock';
	@override String get remark => 'หมายเหตุ';
	@override String get remarkExist => 'หมายเหตุมีอยู่แล้ว โปรดใช้ชื่ออื่น';
	@override String get remarkCannotEmpty => 'หมายเหตุไม่สามารถว่างเปล่า';
	@override String get remarkTooLong => 'หมายเหตุสูงสุด 32 อักขระ';
	@override String get openDir => 'เปิดไดเรกทอรีไฟล์';
	@override String get fileChoose => 'เลือกไฟล์';
	@override String get filePathCannotEmpty => 'เส้นทางไฟล์ไม่สามารถว่างเปล่า';
	@override String fileNotExist({required Object p}) => 'ไฟล์ไม่มีอยู่:${p}';
	@override String fileTypeInvalid({required Object p}) => 'ประเภทไฟล์ไม่ถูกต้อง:${p}';
	@override String get uwpExemption => 'ยกเว้นการแยกเครือข่าย UWP';
	@override String get rulesetGeoSite => 'GeoSite';
	@override String get rulesetGeoIp => 'GeoIP';
	@override String get rulesetAcl => 'ACL';
	@override String get getProfile => 'รับโปรไฟล์';
	@override String get addProfile => 'เพิ่มโปรไฟล์';
	@override String get myProfiles => 'โปรไฟล์ของฉัน';
	@override String get profileEdit => 'แก้ไขโปรไฟล์';
	@override String get profileEditUrlExist => 'URL มีอยู่แล้ว โปรดใช้ URL อื่น';
	@override String get profileEditReloadAfterProfileUpdate => 'โหลดใหม่หลังอัปเดตโปรไฟล์';
	@override String get profileEditTestLatencyAfterProfileUpdate => 'เริ่มการทดสอบความล่าช้าหลังอัปเดตโปรไฟล์โดยอัตโนมัติ';
	@override String get profileEditTestLatencyAfterProfileUpdateTips => 'VPN จำเป็นต้องเชื่อมต่อ และ [โหลดใหม่หลังอัปเดตโปรไฟล์] เปิดใช้งาน';
	@override String get profileEditTestLatencyAutoRemove => 'ลบเซิร์ฟเวอร์ที่ไม่ผ่านการทดสอบความล่าช้าโดยอัตโนมัติ';
	@override String get profileEditTestLatencyAutoRemoveTips => 'ลองสูงสุด 3 ครั้ง';
	@override String get profileImport => 'นำเข้าไฟล์โปรไฟล์';
	@override String get profileAddUrlOrContent => 'เพิ่มลิงก์โปรไฟล์';
	@override String get profileExists => 'โปรไฟล์มีอยู่แล้ว โปรดห้ามเพิ่มซ้ำ';
	@override String get profileUrlOrContent => 'ลิงก์/เนื้อหาโปรไฟล์';
	@override String get profileUrlOrContentHit => 'ลิงก์/เนื้อหาโปรไฟล์ [จำเป็น] (รองรับ Clash,V2ray(สนับสนุนแบบชุด),Stash,Karing,Sing-box,Shadowsocks,ลิงก์โปรไฟล์ย่อย)';
	@override String get profileUrlOrContentCannotEmpty => 'ลิงก์โปรไฟล์ไม่สามารถว่างเปล่า';
	@override String profileAddFailedFormatException({required Object p}) => 'รูปแบบไม่ถูกต้อง โปรดแก้ไขและเพิ่มอีกครั้ง:${p}';
	@override String profileAddFailedThenDownloadAndImport({required Object p}) => 'เพิ่มล้มเหลว: ${p} โปรดลองแก้ไข [UserAgent] และลองใหม่ หรือใช้เบราว์เซอร์ในตัวของอุปกรณ์เพื่อเปิดลิงก์การกำหนดค่า และนำเข้าไฟล์การกำหนดค่าที่ดาวน์โหลดโดยเบราว์เซอร์เข้าสู่แอปพลิเคชันนี้';
	@override String profileAddFailedHandshakeException({required Object p}) => 'เพิ่มล้มเหลว: ${p} โปรดเปิดพร็อกซีหรือแก้ไขโหนดพร็อกซีปัจจุบันและลองใหม่';
	@override String get profileAddParseFailed => 'การแยกวิเคราะห์โปรไฟล์ล้มเหลว';
	@override String get profileAddNoServerAvaliable => 'ไม่มีเซิร์ฟเวอร์ที่พร้อมใช้งาน ตรวจสอบให้แน่ใจว่าลิงก์โปรไฟล์หรือไฟล์โปรไฟล์ถูกต้อง หากโปรไฟล์ของคุณมาจาก GitHub โปรดรับลิงก์จากปุ่ม [Raw] ในหน้า';
	@override String get profileAddWrapSuccess => 'โปรไฟล์สร้างสำเร็จ โปรดไปที่ [${_root.meta.myProfiles}] เพื่อดู';
}

// Path: isp
class _TranslationsIspTh implements TranslationsIspEn {
	_TranslationsIspTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get bind => 'ผูกไว้กับ [${_root.meta.isp}] ';
	@override String unbind({required Object p}) => 'ยกเลิกการผูก[${p}]';
	@override String faq({required Object p}) => 'คำถามที่พบบ่อย[${p}]';
	@override String customerService({required Object p}) => 'Telegram[${p}]';
	@override String follow({required Object p}) => 'ติดตาม[${p}]';
	@override String get invalidOrExpired => '[${_root.meta.isp}] ไม่ถูกต้องหรือหมดอายุ';
}

// Path: permission
class _TranslationsPermissionTh implements TranslationsPermissionEn {
	_TranslationsPermissionTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get camera => 'กล้อง';
	@override String get screen => 'การบันทึกหน้าจอ';
	@override String get appQuery => 'รับรายการแอปพลิเคชัน';
	@override String request({required Object p}) => 'เปิดใช้งาน [${p}] สิทธิ์';
	@override String requestNeed({required Object p}) => 'โปรดเปิดใช้งาน [${p}] สิทธิ์';
}

// Path: tls
class _TranslationsTlsTh implements TranslationsTlsEn {
	_TranslationsTlsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get insecure => 'ข้ามการตรวจสอบใบรับรอง';
	@override String get affectProtocolTips => 'vless, vmess, trojan';
	@override String get fragmentEnable => 'เปิดใช้งาน TLS Fragment';
	@override String get fragmentSize => 'ขนาด TLS Fragment';
	@override String get fragmentSleep => 'TLS Fragment Sleep';
	@override String get mixedCaseSNIEnable => 'เปิดใช้งาน TLS Mixed SNI';
	@override String get paddingEnable => 'เปิดใช้งาน TLS Padding';
	@override String get paddingSize => 'ขนาด TLS Padding';
}

// Path: outboundRuleMode
class _TranslationsOutboundRuleModeTh implements TranslationsOutboundRuleModeEn {
	_TranslationsOutboundRuleModeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get currentSelected => 'เลือกปัจจุบัน';
	@override String get urltest => 'เลือกอัตโนมัติ';
	@override String get direct => 'ตรง';
	@override String get block => 'บล็อก';
}

// Path: dnsProxyResolveMode
class _TranslationsDnsProxyResolveModeTh implements TranslationsDnsProxyResolveModeEn {
	_TranslationsDnsProxyResolveModeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get proxy => _root.outboundRuleMode.currentSelected;
	@override String get direct => _root.outboundRuleMode.direct;
	@override String get fakeip => 'FakeIP';
}

// Path: proxyStrategy
class _TranslationsProxyStrategyTh implements TranslationsProxyStrategyEn {
	_TranslationsProxyStrategyTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get perferProxy => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}';
	@override String get perferDirect => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}';
	@override String get onlyProxy => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}';
	@override String get onlyDirect => '${_root.meta.only} ${_root.outboundRuleMode.direct}';
}

// Path: reloadReason
class _TranslationsReloadReasonTh implements TranslationsReloadReasonEn {
	_TranslationsReloadReasonTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get latencyTest => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}';
	@override String get profileUpdate => 'อัปเดตโปรไฟล์';
}

// Path: theme
class _TranslationsThemeTh implements TranslationsThemeEn {
	_TranslationsThemeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get light => 'สว่าง';
	@override String get dark => 'มืด';
	@override String get auto => 'อัตโนมัติ';
}

// Path: main.tray
class _TranslationsMainTrayTh implements TranslationsMainTrayEn {
	_TranslationsMainTrayTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get menuOpen => 'เปิด';
	@override String get menuExit => 'ออก';
}

/// The flat map containing all translations for locale <th>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTh {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'AboutScreen.installRefer' => 'ลิงก์การติดตั้ง',
			'AboutScreen.installTime' => 'เวลาติดตั้ง',
			'AboutScreen.versionChannel' => 'ช่องอัปเดตอัตโนมัติ',
			'AboutScreen.updateWhenConnected' => 'ตรวจสอบอัปเดตหลังเชื่อมต่อ',
			'AboutScreen.autoDownloadPkg' => 'ดาวน์โหลดแพ็คเก็จอัปเดตอัตโนมัติ',
			'AboutScreen.disableAppImproveData' => 'ข้อมูลการปรับปรุงแอปพลิเคชัน',
			'AboutScreen.disableUAReportTip' => 'การเปิดใช้ [${_root.AboutScreen.disableAppImproveData}] ช่วยให้เราปรับปรุงความเสถียรและการใช้งานของผลิตภัณฑ์ เราไม่เก็บข้อมูลส่วนตัว การปิดใช้งานจะป้องกันแอปจากการเก็บข้อมูลใดๆ',
			'AboutScreen.devOptions' => 'ตัวเลือกนักพัฒนา',
			'AboutScreen.enableDebugLog' => 'เปิดใช้งานบันทึกการแก้จุดบกพร่อง',
			'AboutScreen.viewFilsContent' => 'ดูไฟล์',
			'AboutScreen.enablePprof' => 'เปิดใช้งาน pprof',
			'AboutScreen.pprofPanel' => 'แผงควบคุม pprof',
			'AboutScreen.allowRemoteAccessPprof' => 'อนุญาตการเข้าถึงระยะไกล ${_root.AboutScreen.pprofPanel}',
			'AboutScreen.allowRemoteAccessHtmlBoard' => 'อนุญาตการเข้าถึงระยะไกล ${_root.SettingsScreen.htmlBoard}',
			'AboutScreen.useOriginalSBProfile' => 'ใช้โปรไฟล์ sing-box เดิม',
			'BackupAndSyncWebdavScreen.webdavServerUrl' => 'URL เซิร์ฟเวอร์',
			'BackupAndSyncWebdavScreen.webdavRequired' => 'ไม่สามารถว่างเปล่า',
			'BackupAndSyncWebdavScreen.webdavLoginFailed' => 'การเข้าสู่ระบบล้มเหลว:',
			'BackupAndSyncWebdavScreen.webdavListFailed' => 'ล้มเหลวในการรับรายการไฟล์:',
			'DiversionGroupCustomEditScreen.invalidDomain' => ({required Object p}) => 'ชื่อโดเมนไม่ถูกต้อง [Domain]:${p}',
			'DiversionGroupCustomEditScreen.invalidIpCidr' => ({required Object p}) => '[IP Cidr] ไม่ถูกต้อง:${p}',
			'DiversionGroupCustomEditScreen.invalid' => ({required Object p0, required Object p}) => '[${p0}] ไม่ถูกต้อง:${p}',
			'DiversionGroupCustomEditScreen.invalidRuleSet' => ({required Object p}) => 'ชุดกฎ [Rule Set] ไม่ถูกต้อง:${p} URL ต้องเป็น https ที่ถูกต้องและไฟล์ไบนารีที่มีนามสกุล .srs/.json',
			'DiversionGroupCustomEditScreen.invalidRuleSetBuildIn' => ({required Object p}) => '[Rule Set(build-in)] ไม่ถูกต้อง:${p} รูปแบบคือ geosite:xxx หรือ geoip:xxx หรือ acl:xxx และ xxx ควรเป็นชื่อกฎที่ถูกต้อง',
			'DiversionGroupCustomEditScreen.invalidPackageId' => ({required Object p}) => '[${_root.meta.appPackage}] ไม่ถูกต้อง:${p}',
			'DiversionGroupCustomEditScreen.setDiversionRule' => 'เคล็ดลับ: หลังจากบันทึก โปรดไปที่ [${_root.meta.diversionRules}] เพื่อตั้งค่ากฎที่เกี่ยวข้อง มิฉะนั้นจะไม่มีผล',
			'DiversionRuleDetectScreen.title' => 'ตรวจจับกฎการเปลี่ยนเส้นทาง',
			'DiversionRuleDetectScreen.rule' => 'กฎ:',
			'DiversionRuleDetectScreen.outbound' => 'เซิร์ฟเวอร์พร็อกซี:',
			'DiversionRulesScreen.diversionRulesMatchTips' => 'เคล็ดลับ: พยายามจับคู่กฎจากบนลงล่าง หากไม่มีกฎที่ตรงกัน ให้ใช้ [final]',
			'DnsSettingsScreen.ispCanNotEmpty' => 'ISP ไม่สามารถว่างเปล่า',
			'DnsSettingsScreen.urlCanNotEmpty' => 'URL ไม่สามารถว่างเปล่า',
			'DnsSettingsScreen.error' => ({required Object p}) => 'ประเภทที่ไม่รองรับ:${p}',
			'DnsSettingsScreen.dnsDesc' => 'คอลัมน์แรกของข้อมูลความล่าช้าคือความล่าช้าของการสอบถามการเชื่อมต่อโดยตรง\nคอลัมน์ที่สอง: เปิด [[Proxy Traffic]Resolve DNS through proxy server]: ข้อมูลความล่าช้าคือความล่าช้าของการสอบถามที่ส่งต่อผ่านเซิร์ฟเวอร์พร็อกซีปัจจุบัน หากเปิด [[Proxy Traffic]Resolve DNS through proxy server]: ข้อมูลความล่าช้าคือความล่าช้าของการเชื่อมต่อโดยตรง',
			'FileContentViewerScreen.title' => 'โปรแกรมดูเนื้อหาไฟล์',
			'FileContentViewerScreen.clearFileContent' => 'คุณแน่ใจไหมว่าต้องการล้างเนื้อหาของไฟล์?',
			'FileContentViewerScreen.clearFileContentTips' => 'คุณแน่ใจไหมว่าต้องการล้างเนื้อหาของไฟล์โปรไฟล์? การล้างไฟล์โปรไฟล์อาจทำให้เสียข้อมูลหรือฟังก์ชันแอปพลิเคชันผิดปกติ โปรดดำเนินการด้วยความระมัดระวัง',
			'HomeScreen.toSelectServer' => 'โปรดเลือกเซิร์ฟเวอร์',
			'HomeScreen.invalidServer' => 'ไม่ถูกต้อง โปรดเลือกอีกครั้ง',
			'HomeScreen.disabledServer' => 'ถูกปิดใช้งาน โปรดเลือกอีกครั้ง',
			'HomeScreen.expiredServer' => 'ไม่มีเซิร์ฟเวอร์ที่พร้อมใช้งาน โปรไฟล์อาจหมดอายุหรือถูกปิดใช้งาน',
			'HomeScreen.systemProxyTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'HomeScreen.myLinkEmpty' => 'โปรดตั้งค่า [ลิงก์ลัด] ก่อนใช้งาน',
			'HomeScreen.tooMuchServers' => ({required Object p, required Object p1}) => 'เซิร์ฟเวอร์พร็อกซีมากเกินไป [${p}>${p1}] การเชื่อมต่ออาจล้มเหลวเนื่องจากข้อจำกัดหน่วยความจำของระบบ',
			'HomeScreen.tooMuchServers2' => ({required Object p, required Object p1}) => 'เซิร์ฟเวอร์พร็อกซีมากเกินไป [${p}>${p1}] อาจทำให้การเชื่อมต่อช้าหรือไม่สามารถเข้าถึงได้',
			'LaunchFailedScreen.invalidProcess' => 'แอปไม่สามารถเริ่มต้น [ชื่อกระบวนการไม่ถูกต้อง] โปรดติดตั้งแอปใหม่ในไดเรกทอรีแยกต่างหาก',
			'LaunchFailedScreen.invalidProfile' => 'แอปไม่สามารถเริ่มต้น [ไม่สามารถเข้าถึงโปรไฟล์] โปรดติดตั้งแอปใหม่',
			'LaunchFailedScreen.invalidVersion' => 'แอปไม่สามารถเริ่มต้น [เวอร์ชันไม่ถูกต้อง] โปรดติดตั้งแอปใหม่',
			'LaunchFailedScreen.systemVersionLow' => 'แอปไม่สามารถเริ่มต้น [เวอร์ชันของระบบต่ำเกินไป]',
			'LaunchFailedScreen.invalidInstallPath' => '경로ติดตั้งไม่ถูกต้อง โปรดติดตั้งใหม่ในเส้นทางที่ถูกต้อง',
			'MyProfilesMergeScreen.profilesMerge' => 'รวมโปรไฟล์',
			'MyProfilesMergeScreen.profilesMergeTarget' => 'โปรไฟล์เป้าหมาย',
			'MyProfilesMergeScreen.profilesMergeSource' => 'โปรไฟล์ต้นทาง',
			'MyProfilesMergeScreen.profilesMergeTips' => 'เคล็ดลับ: การเปลี่ยนเส้นทางของโปรไฟล์ต้นทางจะถูกยกเลิก',
			'NetCheckScreen.title' => 'ตรวจสอบเครือข่าย',
			'NetCheckScreen.warn' => 'หมายเหตุ: เนื่องจากอิทธิพลของสภาพแวดล้อมเครือข่ายและกฎการเปลี่ยนเส้นทาง ผลการทดสอบไม่เทียบเท่าอย่างสมบูรณ์',
			'NetCheckScreen.invalidDomain' => 'ชื่อโดเมนไม่ถูกต้อง',
			'NetCheckScreen.connectivity' => 'การเชื่อมต่อเครือข่าย',
			'NetCheckScreen.connectivityTestIpv4AllFailed' => ({required Object p}) => 'การทดสอบการเชื่อมต่อ Ipv4 [${p}] ล้มเหลวทั้งหมด',
			'NetCheckScreen.connectivityTestIpv4Ok' => 'การเชื่อมต่อ Ipv4 สำเร็จ',
			'NetCheckScreen.connectivityTestIpv6AllFailed' => ({required Object p}) => 'การทดสอบการเชื่อมต่อ Ipv6 [${p}] ล้มเหลวทั้งหมด เครือข่ายของคุณอาจไม่รองรับ ipv6',
			'NetCheckScreen.connectivityTestIpv6Ok' => 'การเชื่อมต่อ Ipv6 สำเร็จ',
			'NetCheckScreen.connectivityTestOk' => 'เครือข่ายเชื่อมต่อกับอินเทอร์เน็ต',
			'NetCheckScreen.connectivityTestFailed' => 'เครือข่ายยังไม่เชื่อมต่อกับอินเทอร์เน็ต',
			'NetCheckScreen.remoteRulesetsDownloadOk' => 'ดาวน์โหลดสำเร็จทั้งหมด',
			'NetCheckScreen.remoteRulesetsDownloadNotOk' => 'กำลังดาวน์โหลดหรือดาวน์โหลดล้มเหลว',
			'NetCheckScreen.outbound' => 'เซิร์ฟเวอร์พร็อกซี',
			'NetCheckScreen.outboundOk' => ({required Object p}) => '[${p}] การเชื่อมต่อสำเร็จ',
			'NetCheckScreen.outboundFailed' => ({required Object p1, required Object p2}) => '[${p1}] การเชื่อมต่อล้มเหลว\nข้อผิดพลาด:[${p2}]',
			'NetCheckScreen.dnsServer' => 'เซิร์ฟเวอร์ DNS',
			'NetCheckScreen.dnsOk' => ({required Object p1, required Object p2, required Object p3, required Object p4}) => '[${p1}]การสอบถาม DNS สำเร็จ\nกฎ DNS:[${p2}]\nความล่าช้า:[${p3} ms]\nที่อยู่:[${p4}]',
			'NetCheckScreen.dnsFailed' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]การสอบถาม DNS สำเร็จ\nกฎ DNS:[${p2}]\nข้อผิดพลาด:[${p3}]',
			'NetCheckScreen.host' => 'การเชื่อมต่อ HTTP',
			'NetCheckScreen.hostConnection' => ({required Object p1, required Object p2, required Object p3}) => '[${p1}]\nกฎการเปลี่ยนเส้นทาง:[${p2}]\nเซิร์ฟเวอร์พร็อกซี:[${p3}]',
			'NetCheckScreen.hostConnectionOk' => 'การเชื่อมต่อสำเร็จ',
			'NetCheckScreen.hostConnectionFailed' => ({required Object p}) => 'การเชื่อมต่อล้มเหลว:[${p}]',
			'NetConnectionsFilterScreen.hostIp' => 'โดเมน/IP',
			'NetConnectionsFilterScreen.app' => 'แอป',
			'NetConnectionsFilterScreen.rule' => 'กฎ',
			'NetConnectionsFilterScreen.chain' => 'Outbound',
			'NetConnectionsScreen.copyAsCSV' => 'คัดลอกไปยังรูปแบบ CSV',
			'NetConnectionsScreen.selectType' => 'เลือกประเภทการเปลี่ยนเส้นทาง',
			'PerAppAndroidScreen.title' => 'พร็อกซีต่อแอป',
			'PerAppAndroidScreen.whiteListMode' => 'โหมดรายการอนุญาต',
			'PerAppAndroidScreen.whiteListModeTip' => 'เมื่อเปิดใช้งาน: เฉพาะแอปที่ได้ตรวจสอบเท่านั้นจะใช้พร็อกซี เมื่อไม่เปิดใช้งาน: เฉพาะแอปที่ไม่ได้ตรวจสอบเท่านั้นจะใช้พร็อกซี',
			'RegionSettingsScreen.title' => 'ประเทศหรือภูมิภาค',
			'RegionSettingsScreen.Regions' => 'เคล็ดลับ: โปรดตั้งค่าประเทศหรือภูมิภาคปัจจุบันของคุณให้ถูกต้อง มิฉะนั้นอาจทำให้เกิดปัญหาการเปลี่ยนเส้นทางเครือข่าย',
			'ServerSelectScreen.title' => 'เลือกเซิร์ฟเวอร์',
			'ServerSelectScreen.autoSelectServer' => 'เลือกเซิร์ฟเวอร์ที่มีความล่าช้าต่ำสุดโดยอัตโนมัติ',
			'ServerSelectScreen.recentUse' => 'ใช้เมื่อเร็ว ๆ นี้',
			'ServerSelectScreen.myFav' => 'รายการโปรด',
			'ServerSelectScreen.selectLocal' => ({required Object p}) => 'เซิร์ฟเวอร์ที่เลือกคือที่อยู่ในเครื่องและอาจไม่ทำงานอย่างถูกต้อง:${p}',
			'ServerSelectScreen.selectRequireEnableIPv6' => 'เซิร์ฟเวอร์ที่เลือกคือที่อยู่ IPv6 และต้องการ [เปิดใช้งาน IPv6]',
			'ServerSelectScreen.selectDisabled' => 'เซิร์ฟเวอร์นี้ถูกปิดใช้งาน',
			'ServerSelectScreen.error404' => 'การตรวจจับความล่าช้าพบข้อผิดพลาด โปรดตรวจสอบว่ามีการกำหนดค่าด้วยเนื้อหาเดียวกันหรือไม่',
			'SettingsScreen.getTranffic' => 'รับปริมาณการใช้ข้อมูล',
			'SettingsScreen.tutorial' => 'บทช่วยสอน',
			'SettingsScreen.commonlyUsedRulesets' => 'ชุดกฎที่ใช้งานทั่วไป',
			'SettingsScreen.htmlBoard' => 'แผงออนไลน์',
			'SettingsScreen.dnsLeakDetection' => 'การตรวจจับการรั่วไหล DNS',
			'SettingsScreen.proxyLeakDetection' => 'การตรวจจับการรั่วไหลของพร็อกซี',
			'SettingsScreen.speedTest' => 'ทดสอบความเร็ว',
			'SettingsScreen.rulesetDirectDownlad' => 'ดาวน์โหลดชุดกฎโดยตรง',
			'SettingsScreen.hideUnusedDiversionGroup' => 'ซ่อนกฎการเปลี่ยนเส้นทางที่ไม่ใช้งาน',
			'SettingsScreen.disableISPDiversionGroup' => 'ปิดใช้งาน [${_root.meta.isp}] ${_root.meta.diversionRules}',
			'SettingsScreen.portSettingRule' => 'ตามกฎ',
			'SettingsScreen.portSettingDirectAll' => 'โดยตรงทั้งหมด',
			'SettingsScreen.portSettingProxyAll' => 'พร็อกซีทั้งหมด',
			'SettingsScreen.portSettingControl' => 'ควบคุมและซิงค์',
			'SettingsScreen.portSettingCluster' => 'บริการคลัสเตอร์',
			'SettingsScreen.modifyPort' => 'แก้ไขพอร์ต',
			'SettingsScreen.modifyPortOccupied' => 'พอร์ตถูกใช้งาน โปรดใช้พอร์ตอื่น',
			'SettingsScreen.ipStrategyTips' => 'ก่อนที่จะเปิดใช้งาน โปรดยืนยันว่าเครือข่ายของคุณรองรับ IPv6 มิฉะนั้นการเข้าถึงบางส่วนของปริมาณการใช้ข้อมูลอาจไม่ได้',
			'SettingsScreen.tunAppendHttpProxy' => 'เพิ่มพร็อกซี HTTP ไปยัง VPN',
			'SettingsScreen.tunAppendHttpProxyTips' => 'แอปบางตัวจะข้ามอุปกรณ์ NIC เสมือนและเชื่อมต่อโดยตรงกับพร็อกซี HTTP',
			'SettingsScreen.tunAllowBypassHttpProxyDomain' => 'โดเมนที่อนุญาตให้ข้าม HTTP proxy',
			'SettingsScreen.dnsEnableRule' => 'เปิดใช้งานกฎการเปลี่ยนเส้นทาง DNS',
			'SettingsScreen.dnsEnableProxyResolveMode' => '[${_root.meta.trafficProxy}] ช่องสัญญาณแก้ไข',
			'SettingsScreen.dnsEnableClientSubnet' => '[${_root.meta.trafficDirect}] เปิดใช้งาน ECS',
			'SettingsScreen.dnsTestDomain' => 'โดเมนทดสอบ',
			'SettingsScreen.dnsTestDomainInvalid' => 'โดเมนไม่ถูกต้อง',
			'SettingsScreen.dnsTypeOutbound' => 'เซิร์ฟเวอร์พร็อกซี',
			'SettingsScreen.dnsTypeDirect' => _root.meta.trafficDirect,
			'SettingsScreen.dnsTypeProxy' => _root.meta.trafficProxy,
			'SettingsScreen.dnsTypeResolver' => 'เซิร์ฟเวอร์ DNS',
			'SettingsScreen.dnsEnableRuleTips' => 'หลังจากเปิดใช้งาน ชื่อโดเมนจะเลือกเซิร์ฟเวอร์ DNS ที่ตรงกันเพื่อแก้ไขตามกฎการเปลี่ยนเส้นทาง',
			'SettingsScreen.dnsEnableFakeIpTips' => 'หลังจากเปิดใช้งาน FakeIP หากคุณตัดการเชื่อมต่อจาก VPN แอปของคุณอาจต้องเริ่มต้นใหม่ คุณสมบัตินี้จำเป็นต้อง [เปิดใช้งานโหมด TUN]',
			'SettingsScreen.dnsTypeOutboundTips' => 'การแก้ไขชื่อโดเมนสำหรับ [${_root.SettingsScreen.dnsTypeOutbound}]',
			'SettingsScreen.dnsTypeDirectTips' => 'การแก้ไขชื่อโดเมนสำหรับ [${_root.meta.trafficDirect}]',
			'SettingsScreen.dnsTypeProxyTips' => 'การแก้ไขชื่อโดเมนสำหรับ [${_root.meta.trafficProxy}]',
			'SettingsScreen.dnsTypeResolverTips' => 'การแก้ไขชื่อโดเมนสำหรับ [${_root.SettingsScreen.dnsTypeResolver}]',
			'SettingsScreen.dnsAutoSetServer' => 'ตั้งค่าเซิร์ฟเวอร์อัตโนมัติ',
			'SettingsScreen.dnsResetServer' => 'รีเซ็ตเซิร์ฟเวอร์',
			'SettingsScreen.dnsEnableStaticIPForResolver' => 'ส่วนแบบสถิตสำหรับ IP',
			'SettingsScreen.dnsEnableStaticIPForResolverTips' => 'ป้องกันเซิร์ฟเวอร์ DNS เองจากการปนเปื้อนในระหว่างการแก้ไข',
			'SettingsScreen.inboundDomainResolve' => 'แก้ไขชื่อโดเมนขาเข้า',
			'SettingsScreen.privateDirect' => 'การเชื่อมต่อเครือข่ายส่วนตัวโดยตรง',
			'SettingsScreen.inboundDomainResolveTips' => ({required Object p}) => 'ชื่อโดเมนบางชื่อที่ไม่มีกฎการเปลี่ยนเส้นทางที่กำหนดค่าไว้จำเป็นต้องแก้ไขก่อนจึงจะสามารถโจมตีกฎการเปลี่ยนเส้นทางที่ใช้ IP ได้ คุณสมบัตินี้ส่งผลกระทบต่อคำขอขาเข้าไปยังพอร์ตพร็อกซี [${p}]',
			'SettingsScreen.useRomoteRes' => 'ใช้ทรัพยากรระยะไกล',
			'SettingsScreen.autoAppendRegion' => 'อัปเปนด์กฎพื้นฐานโดยอัตโนมัติ',
			'SettingsScreen.autoSelect' => 'เลือกอัตโนมัติ',
			'SettingsScreen.autoSelectServerIgnorePerProxyServer' => 'ละเว้น [Front/Chaine] เซิร์ฟเวอร์พร็อกซี',
			'SettingsScreen.autoSelectServerInterval' => 'ช่วงเวลาการตรวจสอบความล่าช้า',
			'SettingsScreen.autoSelectSelectedHealthCheckInterval' => 'ช่วงเวลาการตรวจสอบสุขภาพของเซิร์ฟเวอร์ปัจจุบัน',
			'SettingsScreen.autoSelectServerReTestIfNetworkUpdate' => 'ตรวจสอบความล่าช้าอีกครั้งเมื่อเครือข่ายเปลี่ยนแปลง',
			'SettingsScreen.autoSelectServerUpdateCurrentServerAfterManualUrltest' => 'อัปเดตเซิร์ฟเวอร์ปัจจุบันหลังจากตรวจสอบความล่าช้าด้วยตนเอง',
			'SettingsScreen.autoSelectServerIntervalTips' => 'ช่วงเวลายิ่งสั้นเท่าใด การอัปเดตข้อมูลความล่าช้าของเซิร์ฟเวอร์ก็ยิ่งทันเวลา ซึ่งจะใช้ทรัพยากรมากขึ้นและใช้พลังงานมากขึ้น',
			'SettingsScreen.autoSelectSelectedHealthCheckIntervalTips' => 'หากการตรวจสอบล้มเหลว เซิร์ฟเวอร์จะเปลี่ยน หากไม่พบเซิร์ฟเวอร์ที่พร้อมใช้งานเมื่อเปลี่ยนเซิร์ฟเวอร์ กลุ่มจะตรวจสอบความล่าช้าอีกครั้ง',
			'SettingsScreen.autoSelectServerFavFirst' => 'Pri-ใช้ [รายการโปรด]',
			'SettingsScreen.autoSelectServerFavFirstTips' => 'หากรายการ [My Favs] ไม่ว่าง ให้ใช้เซิร์ฟเวอร์ใน [My Favs]',
			'SettingsScreen.autoSelectServerFilter' => 'ตัวกรองเซิร์ฟเวอร์ที่ไม่ถูกต้อง',
			'SettingsScreen.autoSelectServerFilterTips' => ({required Object p}) => 'การตรวจสอบความล่าช้าของเซิร์ฟเวอร์ที่ล้มเหลวจะถูกกรอง หากไม่มีเซิร์ฟเวอร์ที่พร้อมใช้งานหลังจากการกรอง เซิร์ฟเวอร์ [${p}] ตัวแรกจะถูกใช้แทน',
			'SettingsScreen.autoSelectServerLimitedNum' => 'จำนวนเซิร์ฟเวอร์สูงสุด',
			'SettingsScreen.autoSelectServerLimitedNumTips' => 'เซิร์ฟเวอร์ที่เกินจำนวนนี้จะถูกกรอง',
			'SettingsScreen.numInvalid' => 'หมายเลขไม่ถูกต้อง',
			'SettingsScreen.hideInvalidServer' => 'ซ่อนเซิร์ฟเวอร์ที่ไม่ถูกต้อง',
			'SettingsScreen.sortServer' => 'การเรียงลำดับเซิร์ฟเวอร์',
			'SettingsScreen.sortServerTips' => 'เรียงลำดับตามความล่าช้าจากต่ำไปสูง',
			'SettingsScreen.selectServerHideRecommand' => 'ซ่อน [แนะนำ]',
			'SettingsScreen.selectServerHideRecent' => 'ซ่อน [ใช้เมื่อเร็ว ๆ นี้]',
			'SettingsScreen.selectServerHideFav' => 'ซ่อน [รายการโปรด]',
			'SettingsScreen.homeScreen' => 'หน้าแรก',
			'SettingsScreen.theme' => 'ธีม',
			'SettingsScreen.widgetsAlpha' => 'อัลฟ่าวิดเจ็ต',
			'SettingsScreen.widgetsEmpty' => 'ไม่มีวิดเจ็ตพร้อมใช้งาน',
			'SettingsScreen.backgroundImage' => 'รูปภาพพื้นหลัง',
			'SettingsScreen.myLink' => 'ลิงก์ลัด',
			'SettingsScreen.autoConnectAfterLaunch' => 'เชื่อมต่ออัตโนมัติหลังเปิดตัว',
			'SettingsScreen.autoConnectAtBoot' => 'เชื่อมต่ออัตโนมัติหลังเริ่มต้นระบบ',
			'SettingsScreen.autoConnectAtBootTips' => 'ต้องการการสนับสนุนระบบ ระบบบางระบบอาจต้องการ [เริ่มต้นอัตโนมัติ] ที่จะเปิดใช้งาน',
			'SettingsScreen.hideAfterLaunch' => 'ซ่อนหน้าต่างหลังเริ่มต้น',
			'SettingsScreen.autoSetSystemProxy' => 'ตั้งค่าพร็อกซีของระบบโดยอัตโนมัติเมื่อเชื่อมต่อ',
			'SettingsScreen.bypassSystemProxy' => 'ชื่อโดเมนที่อนุญาตให้ข้ามพร็อกซีของระบบ',
			'SettingsScreen.disconnectWhenQuit' => 'ตัดการเชื่อมต่อเมื่อออกจากแอป',
			'SettingsScreen.autoAddToFirewall' => 'เพิ่มกฎไฟร์วอลล์โดยอัตโนมัติ',
			'SettingsScreen.excludeFromRecent' => 'ซ่อนจาก [งานล่าสุด]',
			'SettingsScreen.wakeLock' => 'Wake Lock',
			'SettingsScreen.hideVpn' => 'ซ่อนไอคอน VPN',
			'SettingsScreen.hideVpnTips' => 'การเปิดใช้งาน IPv6 จะทำให้ฟังก์ชันนี้ล้มเหลว',
			'SettingsScreen.allowBypass' => 'อนุญาตให้แอปข้าม VPN',
			'SettingsScreen.importSuccess' => 'นำเข้าสำเร็จ',
			'SettingsScreen.rewriteConfirm' => 'ไฟล์นี้จะเขียนทับการกำหนดค่าในเครื่องที่มีอยู่ คุณต้องการดำเนินการต่อหรือไม่?',
			'SettingsScreen.mergePerapp' => 'รวม [${_root.PerAppAndroidScreen.title}] รายการท้องถิ่น',
			'SettingsScreen.networkShare' => 'การแบ่งปันเครือข่าย',
			'SettingsScreen.frontProxy' => 'Front/Chain Proxy',
			'SettingsScreen.frontProxyTips' => ({required Object p}) => 'Data->Front/Chaine Proxy Server [Multiple Proxy Servers: Top to Bottom]->Proxy Server [${p}]->Target Server',
			'SettingsScreen.allowOtherHostsConnect' => 'อนุญาตให้ผู้อื่นเชื่อมต่อ',
			'SettingsScreen.allowOtherHostsConnectTips' => ({required Object sp, required Object hp}) => 'socks:${sp},http(s):${hp}',
			'SettingsScreen.allowOtherHostsConnectWarn' => 'เนื่องจากข้อจำกัดของระบบ หลังจากเปิดใช้งานนี้ แอปพลิเคชันบนอุปกรณ์นี้ที่ใช้ http เพื่อเข้าถึงเครือข่ายอาจไม่สามารถเชื่อมต่อกับเครือข่ายได้อย่างถูกต้อง',
			'SettingsScreen.tunAutoRoute' => 'เส้นทางอัตโนมัติ',
			'SettingsScreen.tunAutoRedirect' => 'เปลี่ยนเส้นทางอัตโนมัติ',
			'SettingsScreen.tunStrictRoute' => 'เส้นทางที่เคร่งครัด',
			'SettingsScreen.tunStrictRouteTips' => 'หากหลังจากเปิดการแชร์ผู้อื่นไม่สามารถเข้าถึงอุปกรณ์นี้ได้ โปรดปิดสวิตช์นี้',
			'SettingsScreen.loopbackAddress' => 'ที่อยู่ Loopback',
			'SettingsScreen.enableCluster' => 'เปิดใช้งานคลัสเตอร์ Socks/Http Proxy',
			'SettingsScreen.clusterAllowOtherHostsConnect' => 'อนุญาตให้ผู้อื่นเชื่อมต่อกับคลัสเตอร์',
			'SettingsScreen.clusterAllowOtherHostsConnectTips' => ({required Object ip, required Object port}) => 'http://${ip}:${port}/get_proxies',
			'SettingsScreen.clusterAuth' => 'การรับรองความถูกต้องของคลัสเตอร์พร็อกซี',
			'SettingsScreen.tunMode' => 'โหมด TUN',
			'SettingsScreen.tuni4Address' => 'ที่อยู่ IP',
			'SettingsScreen.tunModeTips' => 'โหมด TUN จะเข้าครอบครองปริมาณการใช้ข้อมูลทั้งหมดของระบบ [ในโหมดนี้ คุณสามารถปล่อยให้พร็อกซีของระบบไม่เปิดใช้งาน]',
			'SettingsScreen.tunModeRunAsAdmin' => 'โหมด TUN ต้องการสิทธิ์ผู้ดูแลระบบ โปรดรีสตาร์ทแอปพลิเคชันเป็นผู้ดูแลระบบ',
			'SettingsScreen.tunStack' => 'แล้งเข้า',
			'SettingsScreen.tunHijackTips' => 'หลังจากปิด คำขอ DNS จาก TUN จะถูกส่งต่อโดยตรงไปยังเซิร์ฟเวอร์ DNS ที่ตรงกัน',
			'SettingsScreen.launchAtStartup' => 'เปิดใช้งานเมื่อเริ่มต้น',
			'SettingsScreen.quitWhenSwitchSystemUser' => 'ออกจากแอปเมื่อสลับผู้ใช้ระบบ',
			'SettingsScreen.handleScheme' => 'โทรระบบ Scheme',
			'SettingsScreen.portableMode' => 'โหมดพกพา',
			'SettingsScreen.portableModeDisableTips' => 'หากคุณต้องการออกจากโหมดพกพา โปรดออกจาก [karing] และลบโฟลเดอร์ [profiles] ด้วยตนเองในไดเรกทอรีเดียวกับ [karing.exe]',
			'SettingsScreen.accessibility' => 'การเข้าถึง',
			'SettingsScreen.handleKaringScheme' => 'จัดการการโทร karing://',
			'SettingsScreen.handleClashScheme' => 'จัดการการโทร clash://',
			'SettingsScreen.handleSingboxScheme' => 'จัดการการโทร sing-box://',
			'SettingsScreen.alwayOnVPN' => 'การเชื่อมต่อที่เปิดอยู่เสมอ',
			'SettingsScreen.disconnectAfterSleep' => 'ตัดการเชื่อมต่อหลังการนอนหลับของระบบ',
			'SettingsScreen.removeSystemVPNConfig' => 'ลบการกำหนดค่า VPN ของระบบ',
			'SettingsScreen.timeConnectOrDisconnect' => 'เชื่อมต่อ/ตัดการเชื่อมต่อตามกำหนดเวลา',
			'SettingsScreen.timeConnectOrDisconnectTips' => 'VPN ต้องเชื่อมต่อเพื่อให้มีผล หลังจากเปิดใช้งาน [การนอนหลับอัตโนมัติ] จะถูกปิดใช้งาน',
			'SettingsScreen.timeConnectAndDisconnectInterval' => ({required Object p}) => 'ช่วงเวลาการเชื่อมต่อ/ตัดการเชื่อมต่อไม่สามารถน้อยกว่า ${p} นาที',
			'SettingsScreen.disableFontScaler' => 'ปิดใช้งานการปรับขนาดแบบอักษร (รีสตาร์ทจะสร้างผล)',
			'SettingsScreen.autoOrientation' => 'หมุนพร้อมกับหน้าจอ',
			'SettingsScreen.restartTakesEffect' => 'รีสตาร์ทจะสร้างผล',
			'SettingsScreen.reconnectTakesEffect' => 'เชื่อมต่อใหม่จะสร้างผล',
			'SettingsScreen.resetSettings' => 'รีเซ็ตการตั้งค่า',
			'SettingsScreen.cleanCache' => 'ล้างแคช',
			'SettingsScreen.cleanCacheDone' => 'ล้างเสร็จแล้ว',
			'SettingsScreen.appleTestFlight' => 'Apple TestFlight',
			'SettingsScreen.appleAppStore' => 'Apple AppStore',
			'SettingsScreen.hasNewVersion' => ({required Object p}) => 'อัปเดตเวอร์ชัน ${p}',
			'SettingsScreen.follow' => 'ติดตามเรา',
			'SettingsScreen.contactUs' => 'ติดต่อเรา',
			'SettingsScreen.supportUs' => 'สนับสนุนเรา',
			'SettingsScreen.rateInApp' => 'ให้คะแนนเรา',
			'SettingsScreen.rateInAppStore' => 'ให้คะแนนเราใน AppStore',
			'UserAgreementScreen.privacyFirst' => 'ความเป็นส่วนตัวของคุณมาก่อน',
			'UserAgreementScreen.agreeAndContinue' => 'ยอมรับและดำเนินการต่อ',
			'VersionUpdateScreen.versionReady' => ({required Object p}) => 'เวอร์ชันใหม่ [${p}] พร้อมแล้ว',
			'VersionUpdateScreen.update' => 'รีสตาร์ทเพื่ออัปเดต',
			'VersionUpdateScreen.cancel' => 'ไม่ใช่ตอนนี้',
			'CommonWidget.diableAlwayOnVPN' => 'หากเปิดใช้งาน [การเชื่อมต่อที่เปิดอยู่เสมอ] โปรดปิดใช้งาน [การเชื่อมต่อที่เปิดอยู่เสมอ] และลองเชื่อมต่ออีกครั้ง',
			'CommonWidget.resetPort' => 'โปรดเปลี่ยนพอร์ตเป็นพอร์ตอื่นที่พร้อมใช้งาน หรือปิดแอปพลิเคชันที่ใช้พอร์ต',
			'main.tray.menuOpen' => 'เปิด',
			'main.tray.menuExit' => 'ออก',
			'meta.enable' => 'เปิดใช้งาน',
			'meta.disable' => 'ปิดใช้งาน',
			'meta.bydefault' => 'ค่าเริ่มต้น',
			'meta.filter' => 'ตัวกรอง',
			'meta.filterMethod' => 'วิธีการกรอง',
			'meta.include' => 'รวม',
			'meta.exclude' => 'ยกเว้น',
			'meta.all' => 'ทั้งหมด',
			'meta.prefer' => 'ตั้งค่าที่ต้องการ',
			'meta.only' => 'เพียงอย่างไร',
			'meta.open' => 'เปิด',
			'meta.close' => 'ปิด',
			'meta.quit' => 'ออก',
			'meta.add' => 'เพิ่ม',
			'meta.addSuccess' => 'เพิ่มเสร็จแล้ว',
			'meta.addFailed' => ({required Object p}) => 'เพิ่มล้มเหลว:${p}',
			'meta.remove' => 'ลบ',
			'meta.removeConfirm' => 'คุณแน่ใจไหมว่าต้องการลบ?',
			'meta.edit' => 'แก้ไข',
			'meta.view' => 'มุมมอง',
			'meta.more' => 'เพิ่มเติม',
			'meta.tips' => 'ข้อมูล',
			'meta.copy' => 'คัดลอก',
			'meta.paste' => 'วาง',
			'meta.cut' => 'ตัด',
			'meta.save' => 'บันทึก',
			'meta.ok' => 'ตกลง',
			'meta.cancel' => 'ยกเลิก',
			'meta.feedback' => 'ข้อเสนอแนะ',
			'meta.feedbackContent' => 'เนื้อหาความเห็น',
			'meta.feedbackContentHit' => 'จำเป็นต้องมี สูงสุด 500 อักขระ',
			'meta.feedbackContentCannotEmpty' => 'เนื้อหาความเห็นไม่สามารถว่างเปล่า',
			'meta.faq' => 'คำถามที่พบบ่อย',
			'meta.htmlTools' => 'ชุดเครื่องมือ HTML',
			'meta.download' => 'ดาวน์โหลด',
			'meta.upload' => 'อัพโหลด',
			'meta.downloadSpeed' => 'ความเร็วดาวน์โหลด',
			'meta.uploadSpeed' => 'ความเร็วในการอัพโหลด',
			'meta.loading' => 'กำลังโหลด...',
			'meta.convert' => 'แปลง',
			'meta.check' => 'ตรวจสอบ',
			'meta.detect' => 'ตรวจจับ',
			'meta.cache' => 'แคช',
			'meta.days' => 'วัน',
			'meta.hours' => 'ชั่วโมง',
			'meta.minutes' => 'นาที',
			'meta.seconds' => 'วินาที',
			'meta.milliseconds' => 'มิลลิวินาที',
			'meta.tolerance' => 'ความอดทน',
			'meta.dateTimePeriod' => 'ช่วงเวลา',
			'meta.protocol' => 'โปรโตคอล',
			'meta.search' => 'ค้นหา',
			'meta.custom' => 'ที่กำหนดเอง',
			'meta.inbound' => 'Inbound',
			'meta.outbound' => 'Outbound',
			'meta.destination' => 'ปลายทาง',
			'meta.outletIpByCurrentSelected' => 'IP',
			'meta.outletIpByDirect' => 'IP:${_root.outboundRuleMode.direct}',
			'meta.connect' => 'เชื่อมต่อ',
			'meta.disconnect' => 'ตัดการเชื่อมต่อ',
			'meta.reconnect' => 'เชื่อมต่อใหม่',
			'meta.connected' => 'เชื่อมต่อแล้ว',
			'meta.disconnected' => 'ตัดการเชื่อมต่อแล้ว',
			'meta.connecting' => 'กำลังเชื่อมต่อ',
			'meta.connectTimeout' => 'ไม่สามารถเชื่อมต่อได้',
			'meta.timeout' => 'หมดเวลา',
			'meta.timeoutDuration' => 'ระยะเวลาหมดเวลา',
			'meta.runDuration' => 'ระยะเวลาการทำงาน',
			'meta.latency' => 'ความล่าช้า',
			'meta.latencyTest' => 'ตรวจสอบความล่าช้า',
			'meta.language' => 'ภาษา',
			'meta.next' => 'ถัดไป',
			'meta.done' => 'เสร็จแล้ว',
			'meta.apply' => 'ใช้',
			'meta.refresh' => 'รีเฟรช',
			'meta.retry' => 'ลองใหม่?',
			'meta.update' => 'อัปเดต',
			'meta.updateInterval' => 'ช่วงเวลาการอัปเดต',
			'meta.updateInterval5mTips' => 'ขั้นต่ำ: 5 นาที',
			'meta.updateFailed' => ({required Object p}) => 'อัปเดตล้มเหลว:${p}',
			'meta.samplingUnit' => 'หน่วยเวลาการสุ่มตัวอย่าง',
			'meta.queryResultCount' => 'จำนวนผลการค้นหา',
			'meta.queryLimit' => ({required Object p}) => 'แสดงข้อมูล ${p} อย่างไรก็ตาม',
			'meta.none' => 'ไม่มี',
			'meta.start' => 'เริ่ม',
			'meta.pause' => 'หยุดชั่วคราว',
			'meta.reset' => 'รีเซ็ต',
			'meta.submit' => 'ยืนยัน',
			'meta.user' => 'ผู้ใช้',
			'meta.account' => 'บัญชี',
			'meta.password' => 'รหัสผ่าน',
			'meta.decryptPassword' => 'รหัสผ่านถอดรหัส',
			'meta.required' => 'จำเป็น',
			'meta.type' => 'ประเภท',
			'meta.path' => 'เส้นทาง',
			'meta.local' => 'ส่วนท้องถิ่น',
			'meta.remote' => 'ระยะไกล',
			'meta.other' => 'อื่น ๆ',
			'meta.dns' => 'DNS',
			'meta.url' => 'URL',
			'meta.urlInvalid' => 'URL ไม่ถูกต้อง',
			'meta.urlCannotEmpty' => 'ลิงก์ไม่สามารถว่างเปล่า',
			'meta.urlTooLong' => 'URL ยาวเกินไป (>8182)',
			'meta.copyUrl' => 'คัดลอกลิงก์',
			'meta.openUrl' => 'เปิดลิงก์',
			'meta.shareUrl' => 'แบ่งปันลิงก์',
			'meta.speedTestUrl' => 'URL ทดสอบความเร็ว',
			'meta.tls' => 'TLS',
			'meta.userAgent' => 'UserAgent',
			'meta.staticIP' => 'IP แบบคงที่',
			'meta.staticIPTips' => 'คุณต้องเปิดใช้งาน [TUN HijackDNS] หรือ [${_root.SettingsScreen.inboundDomainResolve}]',
			'meta.isp' => 'ผู้ให้บริการ VPN',
			'meta.domainSuffix' => 'คำต่อท้ายโดเมน',
			'meta.domain' => 'โดเมน',
			'meta.domainKeyword' => 'คำหลักของโดเมน',
			'meta.domainRegex' => 'Regex โดเมน',
			'meta.ip' => 'IP',
			'meta.port' => 'พอร์ต',
			'meta.portRange' => 'ช่วงพอร์ต',
			'meta.appPackage' => 'ID แพ็คเก็จแอป',
			'meta.processName' => 'ชื่อกระบวนการ',
			'meta.processPath' => 'เส้นทางกระบวนการ',
			'meta.processDir' => 'ไดเรกทอรีกระบวนการ',
			'meta.systemProxy' => 'พร็อกซีของระบบ',
			'meta.percentage' => 'เปอร์เซ็นต์',
			'meta.statistics' => 'สถิติ',
			'meta.statisticsAndAnalysis' => 'สถิติและการวิเคราะห์',
			'meta.statisticsDataDesensitize' => 'การปลอมตัวข้อมูล',
			'meta.statisticsDataDesensitizeTips' => 'ID กระบวนการ/แพ็คเก็จ/ชื่อโดเมนเป้าหมาย/IP เป้าหมาย เป็นต้น จะถูกแทนที่ด้วย * และถูกบันทึกหลังการปลอมตัว',
			'meta.records' => 'บันทึก',
			'meta.requestRecords' => 'บันทึกคำขอ',
			'meta.netInterfaces' => 'อินเทอร์เฟซเครือข่าย',
			'meta.netSpeed' => 'ความเร็ว',
			'meta.memoryTrendChart' => 'แผนภูมิแนวโน้มหน่วยความจำ',
			'meta.goroutinesTrendChart' => 'แผนภูมิแนวโน้ม GoRoutines',
			'meta.trafficTrendChart' => 'แผนภูมิแนวโน้มการรับส่งข้อมูล',
			'meta.trafficDistributionChart' => 'แผนภูมิการกระจายปริมาณการใช้ข้อมูล',
			'meta.connectionChart' => 'แผนภูมิแนวโน้มการเชื่อมต่อ',
			'meta.memoryChart' => 'แผนภูมิแนวโน้มหน่วยความจำ',
			'meta.trafficStatistics' => 'สถิติการรับส่งข้อมูล',
			'meta.traffic' => 'ปริมาณการใช้ข้อมูล',
			'meta.trafficTotal' => 'ปริมาณการใช้ข้อมูลทั้งหมด',
			'meta.trafficProxy' => 'พร็อกซีการรับส่งข้อมูล',
			'meta.trafficDirect' => 'ปริมาณการใช้ข้อมูลโดยตรง',
			'meta.website' => 'เว็บไซต์',
			'meta.memory' => 'หน่วยความจำ',
			'meta.outboundMode' => 'โหมด Outbound',
			'meta.rule' => 'กฎ',
			'meta.global' => 'ทั่วโลก',
			'meta.qrcode' => 'รหัส QR',
			'meta.qrcodeTooLong' => 'ข้อความยาวเกินไปในการแสดง',
			'meta.qrcodeShare' => 'แบ่งปันรหัส QR',
			'meta.textToQrcode' => 'ข้อความเป็นรหัส QR',
			'meta.qrcodeScan' => 'สแกน QR Code',
			'meta.qrcodeScanResult' => 'ผลการสแกน',
			'meta.qrcodeScanFromImage' => 'สแกนจากภาพ',
			'meta.qrcodeScanResultFailed' => 'ล้มเหลวในการแยกวิเคราะห์ภาพ โปรดตรวจสอบให้แน่ใจว่าหน้าจอสแกนเป็นรหัส QR ที่ถูกต้อง',
			'meta.qrcodeScanResultEmpty' => 'ผลการสแกนว่างเปล่า',
			'meta.screenshot' => 'ภาพหน้าจอ',
			'meta.backupAndSync' => 'การสำรองข้อมูลและการซิงค์',
			'meta.autoBackup' => 'การสำรองข้อมูลอัตโนมัติ',
			'meta.noProfileGotAutoBackup' => 'หากข้อมูลเช่น [${_root.meta.myProfiles}] หายไป คุณสามารถคืนค่าจาก [${_root.meta.backupAndSync}-${_root.meta.autoBackup}] หรือแหล่งสำรองข้อมูลอื่น ๆ (เช่น iCloud หรือ Webdav เป็นต้น)',
			'meta.autoBackupAddProfile' => 'หลังจากเพิ่มโปรไฟล์',
			'meta.autoBackupRemoveProfile' => 'หลังจากลบโปรไฟล์',
			'meta.profile' => 'โปรไฟล์',
			'meta.currentProfile' => 'โปรไฟล์ปัจจุบัน',
			'meta.importAndExport' => 'นำเข้าและส่งออก',
			'meta.import' => 'นำเข้า',
			'meta.importFromUrl' => 'นำเข้าจาก URL',
			'meta.export' => 'ส่งออก',
			'meta.send' => 'ส่ง',
			'meta.receive' => 'รับ',
			'meta.sendConfirm' => 'ยืนยันการส่ง?',
			'meta.termOfUse' => 'เงื่อนไขการให้บริการ',
			'meta.privacyPolicy' => 'นโยบายความเป็นส่วนตัว',
			'meta.about' => 'เกี่ยวกับ',
			'meta.name' => 'ชื่อ',
			'meta.version' => 'เวอร์ชัน',
			'meta.notice' => 'ประกาศ',
			'meta.appNotifyWithReason' => ({required Object p, required Object p1}) => 'การกระทำ:${p}\nเหตุผล:${p1}',
			'meta.sort' => 'เรียงลำดับ',
			'meta.novice' => 'โหมดมือใหม่',
			'meta.willCompleteAfterRebootInstall' => 'โปรดรีสตาร์ทอุปกรณ์ของคุณเพื่อให้การติดตั้งส่วนขยายระบบสำเร็จ',
			'meta.willCompleteAfterRebootUninstall' => 'โปรดรีสตาร์ทอุปกรณ์ของคุณเพื่อให้การถอนการติดตั้งส่วนขยายของระบบสำเร็จ',
			'meta.requestNeedsUserApproval' => '1. โปรดคลิก [อนุญาต] Karing ให้ติดตั้งส่วนขยายระบบใน [System Settings]-[Privacy and Security]\n2. [System Settings]-[General]-[Login Items Extensions]-[Network Extension] เปิดใช้งาน [karingServiceSE]\nเชื่อมต่อใหม่หลังจากเสร็จสิ้น',
			'meta.FullDiskAccessPermissionRequired' => 'โปรดเปิดใช้งานสิทธิ์ [karingServiceSE] ใน [System Settings]-[Privacy and Security]-[Full Disk Access Permission] และเชื่อมต่อใหม่',
			'meta.tvMode' => 'โหมด TV',
			'meta.recommended' => 'แนะนำ',
			'meta.innerError' => ({required Object p}) => 'ข้อผิดพลาดภายใน:${p}',
			'meta.logicOperation' => 'การดำเนินการเชิงตรรกะ',
			'meta.share' => 'แบ่งปัน',
			'meta.candidateWord' => 'คำผู้สมัคร',
			'meta.keywordOrRegx' => 'คำหลัก/ปกติ',
			'meta.importFromClipboard' => 'นำเข้าจากคลิปบอร์ด',
			'meta.exportToClipboard' => 'ส่งออกไปยังคลิปบอร์ด',
			'meta.server' => 'เซิร์ฟเวอร์',
			'meta.ads' => 'โฆษณา',
			'meta.adsRemove' => 'ลบโฆษณา',
			'meta.donate' => 'บริจาค',
			'meta.diversion' => 'การเปลี่ยนเส้นทาง',
			'meta.diversionRules' => 'กฎการเปลี่ยนเส้นทาง',
			'meta.diversionCustomGroup' => 'กลุ่มปลี่ยนเส้นทางแบบกำหนดเอง',
			'meta.urlTestCustomGroup' => 'เลือกอัตโนมัติแบบกำหนดเอง',
			'meta.setting' => 'การตั้งค่า',
			'meta.iCloud' => 'iCloud',
			'meta.appleTV' => 'Apple TV',
			'meta.webdav' => 'Webdav',
			'meta.lanSync' => 'การซิงค์ LAN',
			'meta.lanSyncNotQuitTips' => 'อย่าออกจากอินเทอร์เฟซนี้ก่อนที่การซิงค์จะเสร็จสิ้น',
			'meta.deviceNoSpace' => 'พื้นที่ดิสก์ไม่เพียงพอ',
			'meta.hideSystemApp' => 'ซ่อนแอปของระบบ',
			'meta.hideAppIcon' => 'ซ่อนไอคอนแอป',
			'meta.hideDockIcon' => 'ซ่อนไอคอน Dock',
			'meta.remark' => 'หมายเหตุ',
			'meta.remarkExist' => 'หมายเหตุมีอยู่แล้ว โปรดใช้ชื่ออื่น',
			'meta.remarkCannotEmpty' => 'หมายเหตุไม่สามารถว่างเปล่า',
			'meta.remarkTooLong' => 'หมายเหตุสูงสุด 32 อักขระ',
			'meta.openDir' => 'เปิดไดเรกทอรีไฟล์',
			'meta.fileChoose' => 'เลือกไฟล์',
			'meta.filePathCannotEmpty' => 'เส้นทางไฟล์ไม่สามารถว่างเปล่า',
			'meta.fileNotExist' => ({required Object p}) => 'ไฟล์ไม่มีอยู่:${p}',
			'meta.fileTypeInvalid' => ({required Object p}) => 'ประเภทไฟล์ไม่ถูกต้อง:${p}',
			'meta.uwpExemption' => 'ยกเว้นการแยกเครือข่าย UWP',
			'meta.rulesetGeoSite' => 'GeoSite',
			'meta.rulesetGeoIp' => 'GeoIP',
			'meta.rulesetAcl' => 'ACL',
			'meta.getProfile' => 'รับโปรไฟล์',
			'meta.addProfile' => 'เพิ่มโปรไฟล์',
			'meta.myProfiles' => 'โปรไฟล์ของฉัน',
			'meta.profileEdit' => 'แก้ไขโปรไฟล์',
			'meta.profileEditUrlExist' => 'URL มีอยู่แล้ว โปรดใช้ URL อื่น',
			'meta.profileEditReloadAfterProfileUpdate' => 'โหลดใหม่หลังอัปเดตโปรไฟล์',
			'meta.profileEditTestLatencyAfterProfileUpdate' => 'เริ่มการทดสอบความล่าช้าหลังอัปเดตโปรไฟล์โดยอัตโนมัติ',
			'meta.profileEditTestLatencyAfterProfileUpdateTips' => 'VPN จำเป็นต้องเชื่อมต่อ และ [โหลดใหม่หลังอัปเดตโปรไฟล์] เปิดใช้งาน',
			'meta.profileEditTestLatencyAutoRemove' => 'ลบเซิร์ฟเวอร์ที่ไม่ผ่านการทดสอบความล่าช้าโดยอัตโนมัติ',
			'meta.profileEditTestLatencyAutoRemoveTips' => 'ลองสูงสุด 3 ครั้ง',
			'meta.profileImport' => 'นำเข้าไฟล์โปรไฟล์',
			'meta.profileAddUrlOrContent' => 'เพิ่มลิงก์โปรไฟล์',
			'meta.profileExists' => 'โปรไฟล์มีอยู่แล้ว โปรดห้ามเพิ่มซ้ำ',
			'meta.profileUrlOrContent' => 'ลิงก์/เนื้อหาโปรไฟล์',
			'meta.profileUrlOrContentHit' => 'ลิงก์/เนื้อหาโปรไฟล์ [จำเป็น] (รองรับ Clash,V2ray(สนับสนุนแบบชุด),Stash,Karing,Sing-box,Shadowsocks,ลิงก์โปรไฟล์ย่อย)',
			'meta.profileUrlOrContentCannotEmpty' => 'ลิงก์โปรไฟล์ไม่สามารถว่างเปล่า',
			'meta.profileAddFailedFormatException' => ({required Object p}) => 'รูปแบบไม่ถูกต้อง โปรดแก้ไขและเพิ่มอีกครั้ง:${p}',
			'meta.profileAddFailedThenDownloadAndImport' => ({required Object p}) => 'เพิ่มล้มเหลว: ${p} โปรดลองแก้ไข [UserAgent] และลองใหม่ หรือใช้เบราว์เซอร์ในตัวของอุปกรณ์เพื่อเปิดลิงก์การกำหนดค่า และนำเข้าไฟล์การกำหนดค่าที่ดาวน์โหลดโดยเบราว์เซอร์เข้าสู่แอปพลิเคชันนี้',
			'meta.profileAddFailedHandshakeException' => ({required Object p}) => 'เพิ่มล้มเหลว: ${p} โปรดเปิดพร็อกซีหรือแก้ไขโหนดพร็อกซีปัจจุบันและลองใหม่',
			'meta.profileAddParseFailed' => 'การแยกวิเคราะห์โปรไฟล์ล้มเหลว',
			'meta.profileAddNoServerAvaliable' => 'ไม่มีเซิร์ฟเวอร์ที่พร้อมใช้งาน ตรวจสอบให้แน่ใจว่าลิงก์โปรไฟล์หรือไฟล์โปรไฟล์ถูกต้อง หากโปรไฟล์ของคุณมาจาก GitHub โปรดรับลิงก์จากปุ่ม [Raw] ในหน้า',
			'meta.profileAddWrapSuccess' => 'โปรไฟล์สร้างสำเร็จ โปรดไปที่ [${_root.meta.myProfiles}] เพื่อดู',
			'diversionRulesKeep' => 'เก็บ [${_root.meta.isp}] ${_root.meta.diversionRules}',
			'diversionCustomGroupPreset' => 'ตั้งค่า [${_root.meta.diversionCustomGroup}]',
			'diversionCustomGroupPresetTips' => 'หมายเหตุ: รายการที่เปิดใช้งานจะถูกเพิ่ม/เขียนทับไปยัง [${_root.meta.diversionCustomGroup}] และ [${_root.meta.diversionRules}]',
			'diversionCustomGroupAddTips' => 'หมายเหตุ: หลังจากเพิ่ม คุณอาจต้องปรับเปลี่ยนการจัดลำดับด้วยตนเอง มิฉะนั้นการเปลี่ยนเส้นทางที่เพิ่มใหม่อาจไม่ทำให้เกิดผล',
			'rulesetEnableTips' => 'เคล็ดลับ: หลังจากเปิดใช้งานตัวเลือก โปรดไปที่ [${_root.meta.diversionRules}] เพื่อตั้งค่ากฎที่เกี่ยวข้อง มิฉะนั้นจะไม่มีผล',
			'ispUserAgentTips' => '[${_root.meta.isp}] จะส่งข้อมูลของประเภทการสมัครสมาชิกที่แตกต่างกันตามที่ [UserAgent] ใน [HTTP] ขอ',
			'ispDiversionTips' => '[${_root.meta.isp}] ให้กฎการเปลี่ยนเส้นทางปริมาณการใช้ข้อมูล ประเภท [V2Ray] ไม่รองรับกฎการเปลี่ยนเส้นทางปริมาณการใช้ข้อมูล',
			'isp.bind' => 'ผูกไว้กับ [${_root.meta.isp}] ',
			'isp.unbind' => ({required Object p}) => 'ยกเลิกการผูก[${p}]',
			'isp.faq' => ({required Object p}) => 'คำถามที่พบบ่อย[${p}]',
			'isp.customerService' => ({required Object p}) => 'Telegram[${p}]',
			'isp.follow' => ({required Object p}) => 'ติดตาม[${p}]',
			'isp.invalidOrExpired' => '[${_root.meta.isp}] ไม่ถูกต้องหรือหมดอายุ',
			'permission.camera' => 'กล้อง',
			'permission.screen' => 'การบันทึกหน้าจอ',
			'permission.appQuery' => 'รับรายการแอปพลิเคชัน',
			'permission.request' => ({required Object p}) => 'เปิดใช้งาน [${p}] สิทธิ์',
			'permission.requestNeed' => ({required Object p}) => 'โปรดเปิดใช้งาน [${p}] สิทธิ์',
			'tls.insecure' => 'ข้ามการตรวจสอบใบรับรอง',
			'tls.affectProtocolTips' => 'vless, vmess, trojan',
			'tls.fragmentEnable' => 'เปิดใช้งาน TLS Fragment',
			_ => null,
		} ?? switch (path) {
			'tls.fragmentSize' => 'ขนาด TLS Fragment',
			'tls.fragmentSleep' => 'TLS Fragment Sleep',
			'tls.mixedCaseSNIEnable' => 'เปิดใช้งาน TLS Mixed SNI',
			'tls.paddingEnable' => 'เปิดใช้งาน TLS Padding',
			'tls.paddingSize' => 'ขนาด TLS Padding',
			'outboundRuleMode.currentSelected' => 'เลือกปัจจุบัน',
			'outboundRuleMode.urltest' => 'เลือกอัตโนมัติ',
			'outboundRuleMode.direct' => 'ตรง',
			'outboundRuleMode.block' => 'บล็อก',
			'dnsProxyResolveMode.proxy' => _root.outboundRuleMode.currentSelected,
			'dnsProxyResolveMode.direct' => _root.outboundRuleMode.direct,
			'dnsProxyResolveMode.fakeip' => 'FakeIP',
			'proxyStrategy.perferProxy' => '${_root.meta.prefer} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.perferDirect' => '${_root.meta.prefer} ${_root.outboundRuleMode.direct}',
			'proxyStrategy.onlyProxy' => '${_root.meta.only} ${_root.outboundRuleMode.currentSelected}',
			'proxyStrategy.onlyDirect' => '${_root.meta.only} ${_root.outboundRuleMode.direct}',
			'reloadReason.latencyTest' => '${_root.meta.latencyTest}-${_root.meta.profileEditTestLatencyAutoRemove}',
			'reloadReason.profileUpdate' => 'อัปเดตโปรไฟล์',
			'theme.light' => 'สว่าง',
			'theme.dark' => 'มืด',
			'theme.auto' => 'อัตโนมัติ',
			'downloadProxyStrategy' => 'ช่องทางดาวน์โหลด',
			'dnsProxyResolveModeTips' => '[${_root.dnsProxyResolveMode.proxy}]: เชื่อมต่อกับเซิร์ฟเวอร์ DNS ผ่านเซิร์ฟเวอร์พร็อกซีเพื่อแก้ไขชื่อโดเมน\n[${_root.dnsProxyResolveMode.direct}]: เชื่อมต่อโดยตรงกับเซิร์ฟเวอร์ DNS เพื่อแก้ไขชื่อโดเมน\n[${_root.dnsProxyResolveMode.fakeip}]: เซิร์ฟเวอร์พร็อกซีแก้ไขชื่อโดเมนแทนคุณ หากคุณตัดการเชื่อมต่อ VPN แอปของคุณอาจต้องเริ่มต้นใหม่ มีผลเฉพาะ [TUN] การรับส่งข้อมูลขาเข้า',
			'routeFinal' => 'ขั้นสุดท้าย',
			'protocolSniff' => 'Protocol Sniff',
			'sendOrReceiveNotMatch' => ({required Object p}) => 'โปรดใช้ [${p}]',
			'turnOffPrivateDirect' => 'โปรดเปิดใช้ [การเชื่อมต่อเครือข่ายส่วนตัวโดยตรง] ก่อน',
			'targetConnectFailed' => ({required Object p}) => 'ล้มเหลวในการเชื่อมต่อกับ [${p}] โปรดตรวจสอบให้แน่ใจว่าอุปกรณ์อยู่ใน LAN เดียวกัน',
			'appleTVSync' => 'ซิงค์การกำหนดค่าแกนปัจจุบันไปยัง Apple TV - Karing',
			'appleTVSyncDone' => 'การซิงค์เสร็จสิ้น โปรดไปที่ Apple TV - Karing เพื่อเริ่มการเชื่อมต่อ/เชื่อมต่อใหม่',
			'appleTVRemoveCoreConfig' => 'ลบการกำหนดค่าแกน Apple TV - Karing',
			'appleTVRemoveCoreConfigDone' => 'การกำหนดค่าแกน Apple TV - Karing ถูกลบแล้ว บริการ VPN ตัดการเชื่อมต่อแล้ว',
			'appleTVUrlInvalid' => 'URL ไม่ถูกต้อง โปรดเปิด Apple TV - Karing และสแกน QR code ที่แสดงโดย Karing',
			'appleTV404' => ({required Object p}) => 'AppleTV:Karing[${p}] ไม่มีฟังก์ชันนี้ โปรดอัปเกรดและลองใหม่',
			'appleCoreVersionNotMatch' => ({required Object p}) => 'เวอร์ชันแกนหลักไม่ตรงกัน โปรดอัปเกรด [${p}] และลองใหม่',
			'remoteProfileEditConfirm' => 'หลังจากอัปเดตโปรไฟล์ การเปลี่ยนแปลงโหนดจะถูกคืนค่า ดำเนินการต่อ?',
			'mustBeValidHttpsURL' => 'ต้องเป็น URL https ที่ถูกต้อง',
			'fileNotExistReinstall' => ({required Object p}) => 'ไฟล์ที่หายไป [${p}] โปรดติดตั้งใหม่',
			'noNetworkConnect' => 'ไม่มีการเชื่อมต่ออินเทอร์เน็ต',
			'sudoPassword' => 'รหัสผ่าน sudo (จำเป็นสำหรับโหมด TUN)',
			'turnOffNetworkBeforeInstall' => 'ขอแนะนำให้เปลี่ยนไปเป็น [Airplane Mode] ก่อนติดตั้งอัปเดต',
			'latencyTestResolveIP' => 'เมื่อตรวจสอบด้วยตนเอง ให้แก้ IP เอาท์เล็ต',
			'latencyTestConcurrency' => 'ความพร้อมใช้งานพร้อมกัน',
			'edgeRuntimeNotInstalled' => 'อุปกรณ์ปัจจุบันยังไม่ได้ติดตั้งรันไทม์ Edge WebView2 ดังนั้นหน้าจึงไม่สามารถแสดงผลได้ โปรดดาวน์โหลดและติดตั้ง Edge WebView2 runtime (x64) รีสตาร์ทแอปและลองใหม่',
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
