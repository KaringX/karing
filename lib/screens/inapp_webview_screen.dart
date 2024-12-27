// ignore_for_file: use_build_context_synchronously

import 'dart:collection';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/antdesign.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:url_launcher/url_launcher.dart';

class InAppWebViewScreen extends StatefulWidget {
  static RouteSettings routSettings() {
    return RouteSettings(name: "InAppWebViewScreen");
  }

  static bool _available = false;
  static bool _enableWebViewEnvironmentDebug = kDebugMode;
  static WebViewEnvironment? _webViewEnvironment;
  static int _webViewEnvironmentRef = 0;
  static String? _defaultUserAgent;
  static String _defaultUserAgentWithKaring = "";
  static Future<void> init() async {
    if (Platform.isWindows) {
      final availableVersion = await WebViewEnvironment.getAvailableVersion();
      _available = availableVersion != null;
    } else if (Platform.isAndroid || Platform.isIOS || Platform.isMacOS) {
      if (Platform.isAndroid) {
        await InAppWebViewController.setWebContentsDebuggingEnabled(
            _enableWebViewEnvironmentDebug);
      }
      _available = true;
    }
    if (Platform.isAndroid || Platform.isIOS || Platform.isMacOS) {
      _defaultUserAgent = await InAppWebViewController.getDefaultUserAgent();
      if (Platform.isAndroid) {
        _defaultUserAgent = _defaultUserAgent!.replaceFirst("; wv)", ")");
      } else if (Platform.isIOS || Platform.isMacOS) {
        _defaultUserAgent = "$_defaultUserAgent Safari/605.1.15";
      }
      _defaultUserAgentWithKaring =
          "$_defaultUserAgent Karing/${AppUtils.getBuildinVersion()}";
    } else {
      late String userAgent;
      String edgeVer = "131";
      if (Platform.isWindows) {
        userAgent =
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/$edgeVer.0.0.0 Safari/537.36 Edg/$edgeVer.0.0.0";
      } else {
        userAgent =
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/$edgeVer.0.0.0 Safari/537.36";
      }
      _defaultUserAgentWithKaring =
          "$userAgent Karing/${AppUtils.getBuildinVersion()}";
    }
  }

  static Future<void> setProxy(String ip, int port) async {
    if (Platform.isAndroid) {
      ProxyController proxyController = ProxyController.instance();
      await proxyController.clearProxyOverride();
      await proxyController.setProxyOverride(
          settings: ProxySettings(
        proxyRules: [ProxyRule(url: "$ip:$port")],
      ));
    }
  }

  static Future<void> clearProxy() async {
    if (Platform.isAndroid) {
      ProxyController proxyController = ProxyController.instance();
      await proxyController.clearProxyOverride();
    }
  }

  static Future<void> setWebViewEnvironmentDebug(bool enable) async {
    _enableWebViewEnvironmentDebug = enable;
    if (Platform.isAndroid) {
      await InAppWebViewController.setWebContentsDebuggingEnabled(
          _enableWebViewEnvironmentDebug);
    }
  }

  static Future<bool> makeSureEnvironmentCreated() async {
    if (!_available) {
      return false;
    }
    if (Platform.isWindows) {
      _webViewEnvironment ??= await WebViewEnvironment.create(
          settings: WebViewEnvironmentSettings(
              additionalBrowserArguments: _enableWebViewEnvironmentDebug
                  ? '--enable-features=msEdgeDevToolsWdpRemoteDebugging'
                  : null,
              userDataFolder: await PathUtils.webviewCacheDir()));
      return _webViewEnvironment != null;
    } else if (Platform.isAndroid || Platform.isIOS || Platform.isMacOS) {
      return true;
    }
    return false;
  }

  static addRef() {
    if (Platform.isWindows) {
      _webViewEnvironmentRef += 1;
    }
  }

  static delRef() async {
    if (Platform.isWindows) {
      _webViewEnvironmentRef -= 1;
      if (_webViewEnvironmentRef < 0) {
        _webViewEnvironmentRef = 0;
      }
      if (_webViewEnvironmentRef == 0) {
        var webViewEnvironment = _webViewEnvironment;
        _webViewEnvironment = null;
        await webViewEnvironment?.dispose();
      }
    }
  }

  static bool isAvailable() {
    return _available;
  }

  static bool hasActiveWebview() {
    return _webViewEnvironmentRef > 0;
  }

  final String title;
  final String url;
  final bool enableDebug;
  final bool showGoBackGoForward;
  final bool showOpenExternal;
  final bool setJSWindowObject;
  final bool appendKaringToUseragent;
  final String appendMoreKaringToUseragent;
  final Map<String, Function> javaScriptHandlers;
  final dynamic javaScriptHandlerArgument;
  const InAppWebViewScreen({
    super.key,
    required this.title,
    required this.url,
    this.enableDebug = kDebugMode,
    this.showGoBackGoForward = false,
    this.showOpenExternal = false,
    this.setJSWindowObject = false,
    this.appendKaringToUseragent = false,
    this.appendMoreKaringToUseragent = "",
    this.javaScriptHandlers = const {},
    this.javaScriptHandlerArgument,
  });

  @override
  State<InAppWebViewScreen> createState() => _InAppWebViewScreenState();
}

class _InAppWebViewScreenState extends State<InAppWebViewScreen> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? _webViewController;
  late InAppWebViewSettings _settings;
  PullToRefreshController? _pullToRefreshController;

  // late ContextMenu _contextMenu;
  String _url = "";
  double _progress = 0;

  @override
  void initState() {
    super.initState();
    String useragent = InAppWebViewScreen._defaultUserAgentWithKaring;
    if (widget.appendMoreKaringToUseragent.isNotEmpty) {
      useragent =
          "${InAppWebViewScreen._defaultUserAgentWithKaring} ${widget.appendMoreKaringToUseragent}";
    }
    _settings = InAppWebViewSettings(
      isInspectable: widget.enableDebug,
      mediaPlaybackRequiresUserGesture: false,
      allowsInlineMediaPlayback: true,
      //iframeAllow: "camera; microphone",
      iframeAllowFullscreen: false,
      userAgent: widget.appendKaringToUseragent
          ? useragent
          : InAppWebViewScreen._defaultUserAgent,
    );
    /* _contextMenu = ContextMenu(
        menuItems: [
          ContextMenuItem(
              id: 1,
              title: "Special",
              action: () async {
                print("Menu item Special clicked!");
                print(await webViewController?.getSelectedText());
                await webViewController?.clearFocus();
              })
        ],
        settings: ContextMenuSettings(hideDefaultSystemContextMenuItems: false),
        onCreateContextMenu: (hitTestResult) async {
          print("onCreateContextMenu");
          print(hitTestResult.extra);
          print(await webViewController?.getSelectedText());
        },
        onHideContextMenu: () {
          print("onHideContextMenu");
        },
        onContextMenuActionItemClicked: (contextMenuItemClicked) async {
          var id = contextMenuItemClicked.id;
          print("onContextMenuActionItemClicked: " +
              id.toString() +
              " " +
              contextMenuItemClicked.title);
        });*/

    _pullToRefreshController = ![TargetPlatform.iOS, TargetPlatform.android]
            .contains(defaultTargetPlatform)
        ? null
        : PullToRefreshController(
            settings: PullToRefreshSettings(
              color: Colors.blue,
            ),
            onRefresh: () async {
              if (defaultTargetPlatform == TargetPlatform.android) {
                _webViewController?.reload();
              } else if (defaultTargetPlatform == TargetPlatform.iOS) {
                _webViewController?.loadUrl(
                    urlRequest:
                        URLRequest(url: await _webViewController?.getUrl()));
              }
            },
          );
    InAppWebViewScreen.addRef();
  }

  @override
  void dispose() {
    resetJavaScriptHandler();
    _webViewController?.dispose();
    InAppWebViewScreen.delRef();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size windowSize = MediaQuery.of(context).size;
    final tcontext = Translations.of(context);
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.zero,
          child: AppBar(),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const SizedBox(
                          width: 50,
                          height: 30,
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            size: 26,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: windowSize.width -
                            50 * (widget.showGoBackGoForward ? 4 : 2) -
                            50 * (widget.showOpenExternal ? 1 : 0),
                        child: Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: ThemeConfig.kFontWeightTitle,
                              fontSize: ThemeConfig.kFontSizeTitle),
                        ),
                      ),
                      Row(children: [
                        widget.showGoBackGoForward
                            ? InkWell(
                                onTap: () async {
                                  _webViewController?.goBack();
                                },
                                child: const SizedBox(
                                  width: 50,
                                  height: 30,
                                  child: Icon(
                                    Icons.arrow_back,
                                    size: 26,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink(),
                        widget.showGoBackGoForward
                            ? InkWell(
                                onTap: () async {
                                  _webViewController?.goForward();
                                },
                                child: const SizedBox(
                                  width: 50,
                                  height: 30,
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 26,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink(),
                        InkWell(
                          onTap: () async {
                            _webViewController?.reload();
                          },
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              Icons.refresh,
                              size: 26,
                            ),
                          ),
                        ),
                        widget.showOpenExternal
                            ? InkWell(
                                onTap: () async {
                                  UrlLauncherUtils.loadUrl(widget.url);
                                },
                                child: const SizedBox(
                                  width: 50,
                                  height: 30,
                                  child: Icon(
                                    AntDesign.export_outline,
                                    size: 26,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink(),
                      ]),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: InAppWebViewScreen.isAvailable() || !Platform.isWindows
                      ? Stack(
                          children: [
                            FutureBuilder(
                              future: InAppWebViewScreen
                                  .makeSureEnvironmentCreated(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<bool> snapshot) {
                                return snapshot.hasData && snapshot.data!
                                    ? InAppWebView(
                                        key: webViewKey,
                                        webViewEnvironment: InAppWebViewScreen
                                            ._webViewEnvironment,
                                        initialUrlRequest:
                                            URLRequest(url: WebUri(widget.url)),
                                        // initialUrlRequest:
                                        // URLRequest(url: WebUri(Uri.base.toString().replaceFirst("/#/", "/") + 'page.html')),
                                        // initialFile: "assets/index.html",
                                        initialUserScripts:
                                            UnmodifiableListView(
                                                widget.setJSWindowObject
                                                    ? [
                                                        //for js: window.flutter_inappwebview
                                                        UserScript(
                                                            source:
                                                                "window.addEventListener('DOMContentLoaded', function(event) {window.karing = window.flutter_inappwebview;});",
                                                            injectionTime:
                                                                UserScriptInjectionTime
                                                                    .AT_DOCUMENT_START)
                                                      ]
                                                    : []),
                                        initialSettings: _settings,
                                        //contextMenu: _contextMenu,
                                        pullToRefreshController:
                                            _pullToRefreshController,
                                        onWebViewCreated: (controller) async {
                                          _webViewController = controller;
                                          setJavaScriptHandler();
                                        },
                                        onLoadStart: (controller, url) async {
                                          _url = url.toString();
                                        },
                                        onPermissionRequest:
                                            (controller, request) async {
                                          //https://webcamtests.com/
                                          final Set<PermissionResourceType>
                                              values = {
                                            PermissionResourceType.CAMERA,
                                            PermissionResourceType
                                                .CAMERA_AND_MICROPHONE,
                                            PermissionResourceType.GEOLOCATION,
                                            PermissionResourceType.MICROPHONE,
                                          };
                                          Set<PermissionResourceType>
                                              intersection =
                                              values.intersection(
                                                  request.resources.toSet());
                                          if (intersection.isNotEmpty) {
                                            return PermissionResponse(
                                                resources: request.resources,
                                                action: PermissionResponseAction
                                                    .DENY);
                                          }
                                          return PermissionResponse(
                                              resources: request.resources,
                                              action: PermissionResponseAction
                                                  .GRANT);
                                        },
                                        shouldOverrideUrlLoading: (controller,
                                            navigationAction) async {
                                          var uri =
                                              navigationAction.request.url!;

                                          if (![
                                            "http",
                                            "https",
                                            "file",
                                            "chrome",
                                            "data",
                                            "javascript",
                                            "about"
                                          ].contains(uri.scheme)) {
                                            if (await canLaunchUrl(uri)) {
                                              await launchUrl(
                                                uri,
                                              );

                                              return NavigationActionPolicy
                                                  .CANCEL;
                                            }
                                          }

                                          return NavigationActionPolicy.ALLOW;
                                        },
                                        onLoadStop: (controller, url) async {
                                          _pullToRefreshController
                                              ?.endRefreshing();
                                          _url = url.toString();
                                        },
                                        onReceivedError:
                                            (controller, request, error) {
                                          _pullToRefreshController
                                              ?.endRefreshing();
                                        },
                                        onProgressChanged:
                                            (controller, progress) {
                                          if (progress == 100) {
                                            _pullToRefreshController
                                                ?.endRefreshing();
                                          }
                                          setState(() {
                                            _progress = progress / 100;
                                          });
                                        },
                                        onUpdateVisitedHistory:
                                            (controller, url, isReload) {
                                          _url = url.toString();
                                        },
                                        onConsoleMessage:
                                            (controller, consoleMessage) {
                                          if (kDebugMode) {
                                            print(consoleMessage);
                                          }
                                        },
                                      )
                                    : const SizedBox.shrink();
                              },
                            ),
                            _progress < 1.0
                                ? LinearProgressIndicator(value: _progress)
                                : Container(),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    tcontext.edgeRuntimeNotInstalled,
                                    style: const TextStyle(
                                      fontSize:
                                          ThemeConfig.kFontSizeListSubItem,
                                      color: Colors.red,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  SizedBox(
                                      height: 45.0,
                                      child: ElevatedButton.icon(
                                        label: Text(tcontext.download),
                                        onPressed: () async {
                                          AnalyticsUtils.logEvent(
                                              analyticsEventType:
                                                  analyticsEventTypeUA,
                                              name: 'IAW_download',
                                              repeatable: false);
                                          String url =
                                              "https://developer.microsoft.com/en-us/microsoft-edge/webview2?cs=530857304&form=MA13LH#download";
                                          if (SettingManager.getConfig()
                                                  .languageTag
                                                  .toLowerCase() ==
                                              "zh-cn") {
                                            url =
                                                "https://developer.microsoft.com/zh-cn/microsoft-edge/webview2?cs=530857304&form=MA13LH#download";
                                          }
                                          await UrlLauncherUtils.loadUrl(url);
                                        },
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                ),
              ],
            ),
          ),
        ));
  }

  void setJavaScriptHandler() {
    if (!widget.setJSWindowObject) {
      return;
    }
    /*
    window.karing.callHandler('close').then(function(result) {
        console.log(result);
        return result;
    }).catch(function() {
        var event = new Event('error');
        self.dispatchEvent(event);
        if (self.onerror != null) {
          self.onerror(event);
        }
    });
    window.karing.callHandler('version').then(function(result) {
        console.log(result);
        return result;
    }).catch(function() {
        var event = new Event('error');
        self.dispatchEvent(event);
        if (self.onerror != null) {
          self.onerror(event);
        }
    });
    window.karing.callHandler('openUrl', 'karing://install-config?url=dHJvamFuOi8vNDFiZWM0OTItY2Q3OS00YjU3LTlhMTUtN2QyYmIwMGZjZmNhQDE2My4xMjMuMTkyLjU3OjQ0Mz9hbGxvd0luc2VjdXJlPTEjJUYwJTlGJTg3JUJBJUYwJTlGJTg3JUI4JTIwX1VTXyVFNyVCRSU4RSVFNSU5QiVCRHx0cm9qYW46Ly9hOGY1NGY0ZS0xZDlkLTQ0ZTQtOWVmNy01MGVlN2JhODk1NjFAamsuamtrLmtpc3NraXNzLnBybzoxODg3P2FsbG93SW5zZWN1cmU9MSMlRjAlOUYlODclQjAlRjAlOUYlODclQjclMjBfS1JfJUU5JTlGJUE5JUU1JTlCJUJE#testname').then(function(result) {
        console.log(result);
        return result;
    }).catch(function() {
        var event = new Event('error');
        self.dispatchEvent(event);
        if (self.onerror != null) {
          self.onerror(event);
        }
    });
     window.karing.callHandler('openUrl', 'karing://disconnect').then(function(result) {
        console.log(result);
        return result;
    }).catch(function() {
        var event = new Event('error');
        self.dispatchEvent(event);
        if (self.onerror != null) {
          self.onerror(event);
        }
    });
    */
    /*_webViewController?.addJavaScriptHandler(
      handlerName: '*',
      callback: (arguments) async {
        return "Unimplemented";
      },
    );*/
    _webViewController?.addJavaScriptHandler(
      handlerName: 'close',
      callback: (arguments) async {
        Navigator.pop(context);
      },
    );
    _webViewController?.addJavaScriptHandler(
      handlerName: 'version',
      callback: (arguments) async {
        return AppUtils.getBuildinVersion();
      },
    );
    /*_webViewController?.addJavaScriptHandler(
      handlerName: 'openUrl',
      callback: (arguments) async {
        if (arguments.length != 1) {
          return "arguments length != 1";
        }
        try {
          String url = arguments[0] as String;
          ReturnResultError? err = await SchemeHandler.handle(context, url);
          return err != null ? err.message : "";
        } catch (err) {
          return err.toString();
        }
      },
    );*/
    widget.javaScriptHandlers.forEach((key, value) {
      _webViewController?.addJavaScriptHandler(
        handlerName: key,
        callback: (arguments) {
          return value(
              context, _url, widget.javaScriptHandlerArgument, arguments);
        },
      );
    });
  }

  void resetJavaScriptHandler() {
    if (!widget.setJSWindowObject) {
      return;
    }
    _webViewController?.removeJavaScriptHandler(handlerName: 'close');
    _webViewController?.removeJavaScriptHandler(handlerName: 'version');
    //_webViewController?.removeJavaScriptHandler(handlerName: 'openUrl');
    widget.javaScriptHandlers.forEach((key, value) {
      _webViewController?.removeJavaScriptHandler(handlerName: key);
    });
  }
}
