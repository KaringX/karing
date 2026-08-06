import 'dart:convert';
import 'dart:io';

import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/private/app_url_utils_private.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/did.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/i18n/strings.g.dart';

enum BoardProviderType {
  v2board(name: "v2board"),
  xboard(name: "xboard"),
  sspanel(name: "sspanel");

  const BoardProviderType({required this.name});
  final String name;

  static bool support(String name) {
    return {v2board.name, xboard.name, sspanel.name}.contains(name);
  }
}

class BoardProviderConfigError {
  int code;
  String? msg;
  BoardProviderConfigError({this.code = 0, this.msg});
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    code = map["code"] ?? 0;
    msg = map["msg"];
  }
}

class BoardProviderConfig {
  BoardProviderType type;
  String id;
  String name;
  List<String> names = [];
  String domain;
  List<String> domains = [];
  String userAgent;
  String urltestUrl;
  bool xhwid;
  bool web = true;
  bool overwrite = true;
  bool overwriteDns = true;
  List<String> outboundDns = const [];
  String version;
  String userAgreement;
  String clientServiceUrl;
  String faqUrl;
  String subscriptionChannelUrl;
  String loginUrl;
  String bindJs;
  String? registerUrl;
  String forgotPasswordUrl;
  String planUrl;
  String homeUrl;
  String appIconUrl;

  //benefits begin
  bool panelLogin = true;
  bool highlightPin = false;
  bool logoBranding = false;
  bool renewalReminder = false;
  bool hideRecommendMenu = false;
  bool hideSubscriptionLink = false;
  bool hideNodeDetails = false;
  bool partialPanelRenewal = false;
  bool unbanSubscription = true;
  bool customSpell = false;
  bool notificationPush = false;
  //benefits end
  String botCookie;
  DateTime? lastUpdated;
  BoardProviderConfig({
    this.type = BoardProviderType.v2board,
    this.id = '',
    this.name = '',
    this.names = const [],
    this.domain = '',
    this.domains = const [],
    this.userAgent = '',
    this.urltestUrl = '',
    this.xhwid = false,
    this.web = true,
    this.overwrite = true,
    this.overwriteDns = true,
    this.outboundDns = const [],
    this.version = '',
    this.userAgreement = '',
    this.clientServiceUrl = '',
    this.faqUrl = '',
    this.subscriptionChannelUrl = '',
    this.loginUrl = '',
    this.bindJs = '',
    this.registerUrl,
    this.forgotPasswordUrl = '',
    this.planUrl = '',
    this.homeUrl = '',
    this.appIconUrl = '',
    this.panelLogin = true,
    this.highlightPin = false,
    this.logoBranding = false,
    this.renewalReminder = false,
    this.hideRecommendMenu = false,
    this.hideSubscriptionLink = false,
    this.hideNodeDetails = false,
    this.partialPanelRenewal = false,
    this.unbanSubscription = true,
    this.customSpell = false,
    this.notificationPush = false,
    this.botCookie = '', //'cf_clearance',
    this.lastUpdated,
  });

  Map<String, dynamic> toJson() => {
    'type': type.name,
    'id': id,
    'name': name,
    'names': names,
    'domain': domain,
    'domains': domains,
    'user_agent': userAgent,
    'urltest_url': urltestUrl,
    'xhwid': xhwid,
    'web': web,
    'overwrite': overwrite,
    'overwrite_dns': overwriteDns,
    'outbound_dns': outboundDns,
    'version': version,
    'user_agreement': userAgreement,
    'client_service_url': clientServiceUrl,
    'faq': faqUrl,
    'subscription_channel_url': subscriptionChannelUrl,
    'login_url': loginUrl,
    'bind_js': bindJs,
    'register_url': registerUrl,
    'forgot_password_url': forgotPasswordUrl,
    'plan_url': planUrl,
    'home_url': homeUrl,
    'app_icon_url': appIconUrl,
    'panel_login': panelLogin,
    'highlight_pin': highlightPin,
    'logo_branding': logoBranding,
    'renewal_reminder': renewalReminder,
    'hide_recommend_menu': hideRecommendMenu,
    'hide_subscription_link': hideSubscriptionLink,
    'hide_node_details': hideNodeDetails,
    'partial_panel_renewal': partialPanelRenewal,
    'unban_subscription': unbanSubscription,
    'custom_spell': customSpell,
    'notification_push': notificationPush,
    'bot_cookie': botCookie,
    //'last_updated': lastUpdated?.microsecondsSinceEpoch,
  };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    final type_ = map["type"] ?? "";
    type = BoardProviderType.values.firstWhere(
      (e) => e.name == type_,
      orElse: () => BoardProviderType.v2board,
    );
    id = map["id"] ?? map["pid"] ?? "";
    name = map["name"] ?? "";
    names = List<String>.from(map["names"] ?? map["nicknames"] ?? []);
    if (name.isNotEmpty && !names.contains(name)) {
      names.add(name);
    }
    domain = map["domain"] ?? "";
    domains = List<String>.from(map["domains"] ?? []);
    userAgent = map["user_agent"] ?? "";
    urltestUrl = map["urltest_url"] ?? "";
    xhwid = map["xhwid"] ?? false;
    web = map["web"] ?? true;
    overwrite = map["overwrite"] ?? true;
    overwriteDns = map["overwrite_dns"] ?? true;
    final dns = map["outbound_dns"];
    if (dns != null) {
      if (dns is String && dns.isNotEmpty) {
        outboundDns = dns.split(",");
      } else if (dns is List) {
        outboundDns = List<String>.from(dns);
      }
    }
    version = map["version"] ?? "";
    userAgreement = map["user_agreement"] ?? "";
    clientServiceUrl = map["client_service_url"] ?? "";
    faqUrl = map["faq"] ?? "";
    subscriptionChannelUrl = map["subscription_channel_url"] ?? "";
    loginUrl = map["login_url"] ?? "";
    bindJs = map["bind_js"] ?? "";
    registerUrl = map["register_url"];
    forgotPasswordUrl = map["forgot_password_url"] ?? "";
    planUrl = map["plan_url"] ?? "";
    homeUrl = map["home_url"] ?? "";
    appIconUrl = map["app_icon_url"] ?? "";
    panelLogin = map["panel_login"] ?? true;
    highlightPin = map["highlight_pin"] ?? false;
    logoBranding = map["logo_branding"] ?? false;
    renewalReminder = map["renewal_reminder"] ?? false;
    hideRecommendMenu = map["hide_recommend_menu"] ?? false;
    hideSubscriptionLink = map["hide_subscription_link"] ?? false;
    hideNodeDetails = map["hide_node_details"] ?? false;
    partialPanelRenewal = map["partial_panel_renewal"] ?? false;
    unbanSubscription = map["unban_subscription"] ?? true;
    customSpell = map["custom_spell"] ?? false;
    notificationPush = map["notification_push"] ?? false;

    botCookie = map["bot_cookie"] ?? ""; //"cf_clearance";
    // lastUpdated = map["last_updated"] != null
    //     ? DateTime.fromMicrosecondsSinceEpoch(map["last_updated"])
    //    : null;
  }
}

class BoardProviderManager {
  static final List<void Function()> onEventProvidersBinded = [];
  static final List<void Function()> onEventProvidersUnBinded = [];
  static List<BoardProviderConfig> _providers = [];
  static final Map<String, BoardProviderType> _providerTypeCache = {};
  static final Set<String> _notifyProviderIntegrationCache = {};
  static bool _saving = false;

  static String get unknownProviderId => "000";
  static String get unknownProviderIdPrefix => "${unknownProviderId}_";
  static void clear() {
    _providers.clear();
    _providerTypeCache.clear();
    _notifyProviderIntegrationCache.clear();
    for (var callback in onEventProvidersUnBinded) {
      callback();
    }
  }

  static List<BoardProviderConfig> getProviders() {
    return _providers;
  }

  static BoardProviderConfig? getBindedProvider() {
    return _providers.isEmpty ? null : _providers.first;
  }

  static void setBindedProvider(String providerId) {
    int index = _providers.indexWhere((item) => item.id == providerId);
    if (index <= 0) {
      return;
    }
    _providers.insert(0, _providers.removeAt(index));
    for (var callback in onEventProvidersBinded) {
      callback();
    }
  }

  static Future<ReturnResult<BoardProviderType>> getProviderTypeById(
    Uri uri,
  ) async {
    if (uri.host.isEmpty) {
      return ReturnResult(
        error: ReturnResultError("getProviderTypeById: uri.host is empty"),
      );
    }

    final type = _providerTypeCache[uri.host];
    if (type != null) {
      return ReturnResult(data: type);
    }
    final urlSSpanel = "https://${uri.host}/auth/login";
    final urlV2OrXboard = "https://${uri.host}/#/login";

    var result = await HttpUtils.httpGetRequest(
      urlSSpanel,
      null,
      null,
      const Duration(seconds: 10),
      null,
      null,
      checkStatuscode: false,
    );
    if (result.error == null) {
      if (result.data!.item1 == 200 &&
          result.data!.item2.contains("SSPanel-UIM")) {
        _providerTypeCache[uri.host] = BoardProviderType.sspanel;
        return ReturnResult(data: BoardProviderType.sspanel);
      }
      String content = result.data!.item2.length > 512
          ? result.data!.item2.substring(0, 512)
          : result.data!.item2;
      return ReturnResult(
        error: ReturnResultError(
          "${t.loginScreen.unsupportedProvider}: ${Uri.decodeComponent(uri.toString())}\n$content",
        ),
      );
    }
    result = await HttpUtils.httpGetRequest(
      urlV2OrXboard,
      null,
      null,
      const Duration(seconds: 10),
      null,
      null,
      checkStatuscode: false,
    );
    if (result.error != null || result.data!.item1 != 200) {
      return ReturnResult(error: result.error);
    }
    if (result.data!.item2.contains("/Xboard/")) {
      _providerTypeCache[uri.host] = BoardProviderType.xboard;
      return ReturnResult(data: BoardProviderType.xboard);
    }
    if (result.data!.item2.contains("/auth/login")) {
      //sspanel
      String content = result.data!.item2.length > 512
          ? result.data!.item2.substring(0, 512)
          : result.data!.item2;
      return ReturnResult(
        error: ReturnResultError(
          "${t.loginScreen.unsupportedProvider}: ${Uri.decodeComponent(uri.toString())}\n$content",
        ),
      );
    }
    _providerTypeCache[uri.host] = BoardProviderType.v2board;
    return ReturnResult(data: BoardProviderType.v2board);
  }

  static BoardProviderConfig? getProviderById(String id) {
    if (id.isEmpty) {
      return null;
    }

    for (final provider in _providers) {
      if (provider.id == id) {
        return provider;
      }
    }
    return null;
  }

  static Future<ReturnResult<BoardProviderConfig>> getProviderByUri(
    Uri uri,
  ) async {
    final result = await BoardProviderManager.getProviderTypeById(uri);
    if (result.error != null) {
      return ReturnResult(error: result.error);
    }
    final providerType = result.data!;
    final name = "${uri.scheme}://${Uri.decodeComponent(uri.host)}";
    for (final provider in _providers) {
      if (provider.type == providerType && provider.name == name) {
        return ReturnResult(data: provider);
      }
    }
    Set<String> ids = {};
    for (final provider in _providers) {
      ids.add(provider.id);
    }
    var id = "";
    for (int i = 0; ; i++) {
      id = "$unknownProviderIdPrefix$i";
      if (!ids.contains(id)) {
        break;
      }
    }
    final provider = BoardProviderConfig(
      type: providerType,
      id: id,
      name: name,
      domain: uri.host,
      web: false,
    );

    _providers.add(provider);
    await _save();
    return ReturnResult(data: provider);
  }

  static Future<ReturnResult<BoardProviderConfig>> getProvider(
    String name,
  ) async {
    if (name.isEmpty) {
      return ReturnResult(
        error: ReturnResultError("getProvider: name is empty"),
      );
    }

    for (final provider in _providers) {
      if (provider.names.contains(name)) {
        if (provider.lastUpdated != null &&
            DateTime.now().difference(provider.lastUpdated!) <=
                const Duration(hours: 1)) {
          return ReturnResult(data: provider);
        }
        break;
      }
    }
    var headers = {
      HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
    };
    final urlAndbody = BoardProviderPrivate.getBycodeUrlAndBody(
      app: AppUtils.getName(),
      version: AppUtils.getBuildinVersion(),
      did: await Did.getDid(),
      code: name,
    );
    var result = await HttpUtils.httpPostRequest(
      urlAndbody.item1,
      null,
      headers,
      urlAndbody.item3,
      const Duration(seconds: 10),
      null,
      null,
      null,
      checkStatuscode: false,
    );

    if (result.error != null && urlAndbody.item2.isNotEmpty) {
      result = await HttpUtils.httpPostRequest(
        urlAndbody.item2,
        null,
        headers,
        urlAndbody.item3,
        const Duration(seconds: 10),
        null,
        null,
        null,
        checkStatuscode: false,
      );
    }
    if (result.error != null) {
      for (final provider in _providers) {
        if (provider.names.contains(name)) {
          return ReturnResult(data: provider);
        }
      }
      return ReturnResult(error: ReturnResultError(result.error!.message));
    }

    if (result.data!.item1 != 200) {
      final updated = _providers
          .where((element) => element.names.contains(name))
          .isNotEmpty;
      _providers.removeWhere((element) => element.names.contains(name));
      if (updated) {
        await _save();
      }
      return ReturnResult(
        error: ReturnResultError(
          result.data!.item1 == 410
              ? "${t.loginScreen.unsupportedProvider}: $name"
              : "getProvider $name: http statuscode ${result.data!.item1} ${result.data!.item2}",
        ),
      );
    }

    final decodedBody = jsonDecode(result.data!.item2);
    BoardProviderConfig config = BoardProviderConfig();
    BoardProviderConfigError error = BoardProviderConfigError();
    error.fromJson(decodedBody);
    config.fromJson(decodedBody);
    if (error.code != 0) {
      final updated = _providers
          .where((element) => element.names.contains(name))
          .isNotEmpty;
      _providers.removeWhere((element) => element.names.contains(name));
      if (updated) {
        await _save();
      }
      return ReturnResult(
        error: ReturnResultError(
          error.msg ?? "getProvider $name: error code ${error.code}",
        ),
      );
    }
    if (config.id.isEmpty) {
      return ReturnResult(
        error: ReturnResultError(
          error.msg ?? "getProvider $name: invalid provider config, empty id",
        ),
      );
    }
    if (!config.names.contains(name)) {
      config.names.add(name);
    }

    var updated = _providers
        .where((element) => element.id == config.id)
        .isEmpty;

    config.lastUpdated = DateTime.now();
    if (updated) {
      _providers.add(config);
    } else {
      updated = true;
      for (var i = 0; i < _providers.length; i++) {
        if (_providers[i].id == config.id) {
          _providers[i] = config;
          break;
        }
      }
    }

    await _save();

    return ReturnResult(data: config);
  }

  static Future<void> notifyProviderIntegration(
    String id,
    String domain,
    String type,
  ) async {
    if (!id.startsWith(BoardProviderManager.unknownProviderIdPrefix)) {
      return;
    }
    final cacheKey = "$id|$domain|$type";
    if (_notifyProviderIntegrationCache.contains(cacheKey)) {
      return;
    }
    var headers = {
      HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
    };
    final urlAndbody = BoardProviderPrivate.getNotifyIntegrationUrlAndBody(
      app: AppUtils.getName(),
      version: AppUtils.getBuildinVersion(),
      did: await Did.getDid(),
      url: "https://$domain",
      type: type,
    );
    final result = await HttpUtils.httpPostRequest(
      urlAndbody.item1,
      null,
      headers,
      urlAndbody.item3,
      const Duration(seconds: 10),
      null,
      null,
      null,
      checkStatuscode: false,
    );
    if (result.error == null && result.data!.item1 == 200) {
      _notifyProviderIntegrationCache.add(cacheKey);
    }
  }

  static Future<void> init() async {
    await _load();
  }

  static Future<void> _save() async {
    if (_saving) {
      return;
    }
    _saving = true;
    final file = File(await PathUtils.providersConfigFilePath());
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String content = encoder.convert(_providers);
    await file.writeAsString(content);
    _saving = false;
  }

  static Future<void> _load() async {
    _providers = [];
    final file = File(await PathUtils.providersConfigFilePath());
    if (await file.exists()) {
      try {
        String content = await file.readAsString();
        List<dynamic> jsonData = jsonDecode(content);
        _providers = jsonData.map((item) {
          var config = BoardProviderConfig();
          config.fromJson(item);
          return config;
        }).toList();
      } catch (e) {}
    } else {
      await _loadFroRemoteISPConfig();
      await _save();
    }
  }

  static Future<void> _loadFroRemoteISPConfig() async {
    final config = await RemoteISPConfigManager.loadConfig();
    if (config.id.isEmpty) {
      return;
    }
    BoardProviderConfig provider = BoardProviderConfig(
      id: config.id,
      name: config.name,
      homeUrl: config.home,
      loginUrl: config.connect,
      faqUrl: config.faq,
      planUrl: config.getTranffic,
      clientServiceUrl: config.customerService,
      subscriptionChannelUrl: config.follow,
    );
    _providers.add(provider);
  }
}
