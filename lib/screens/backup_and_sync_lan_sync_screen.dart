// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_scheme_actions.dart';
import 'package:karing/app/utils/backup_and_sync_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/qrcode_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:path/path.dart' as path;
import 'package:vpn_service/vpn_service.dart';
import 'package:tuple/tuple.dart';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';

class BackupAndSyncLanSyncScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "BackupAndSyncLanSyncScreen");
  }

  final String? title;
  final bool? syncUpload;
  const BackupAndSyncLanSyncScreen(
      {super.key, required this.title, required this.syncUpload});

  @override
  State<BackupAndSyncLanSyncScreen> createState() =>
      _BackupAndSyncLanSyncScreenState();
}

class _BackupAndSyncLanSyncScreenState
    extends LasyRenderingState<BackupAndSyncLanSyncScreen> {
  Image? _image;
  String? _zipPath;
  HttpServer? _server;
  Map<String, Tuple2<String, Function(HttpRequest httpRequest)>> _router = {};

  @override
  void initState() {
    start();
    super.initState();
  }

  @override
  void dispose() {
    stop();
    if (_zipPath != null) {
      FileUtils.deletePath(_zipPath!);
    }

    super.dispose();
  }

  Future<void> start() async {
    try {
      if (widget.syncUpload != true) {
        String dir = await PathUtils.cacheDir();
        if (!mounted) {
          return;
        }
        _zipPath = path.join(dir, BackupAndSyncUtils.getZipFileName());
        ReturnResultError? error =
            await ServerManager.backupToZip(context, _zipPath!);
        if (error != null) {
          if (!mounted) {
            return;
          }
          DialogUtils.showAlertDialog(context, error.message,
              showCopy: true, showFAQ: true, withVersion: true);
          return;
        }
      }
      var proxy = SettingManager.getConfig().proxy;
      var ports = [
        proxy.mixedRulePort,
        proxy.mixedDirectPort,
        proxy.mixedForwordPort,
        proxy.controlPort,
        proxy.clusterPort,
      ];
      var listenPort = await NetworkUtils.getAvaliablePort(ports);
      if (listenPort == 0) {
        if (!mounted) {
          return;
        }
        DialogUtils.showAlertDialog(
            context, "BackupAndSyncLanSyncScreen.getAvaliablePort failed",
            showCopy: true, showFAQ: true, withVersion: true);
        return;
      }

      if (Platform.isWindows) {
        FlutterVpnService.firewallAddPorts(
            [listenPort], PathUtils.getExeName());
      }

      List<String> ips = [];
      var addrs = await NetworkUtils.getInterfaces();
      for (var addr in addrs) {
        if (addr.type != InternetAddressType.IPv4) {
          continue;
        }
        addr.name = addr.name.toLowerCase();
        if (addr.name.contains("VMWare".toLowerCase()) ||
            addr.name.contains("VirtualBox".toLowerCase()) ||
            addr.name.contains("VPN".toLowerCase()) ||
            addr.name.contains("tun".toLowerCase())) {
          continue;
        }
        ips.add(addr.address);
      }

      String action = (widget.syncUpload == true
          ? AppSchemeActions.syncUploadAction()
          : AppSchemeActions.syncDownloadAction());

      String url =
          "karing://$action/?ips=${Uri.encodeComponent(ips.join(","))}&port=$listenPort";
      if (widget.syncUpload != true) {
        url += "&filename=${Uri.encodeComponent(path.basename(_zipPath!))}";
      }
      _image = QrcodeUtils.toImage(url).data;

      _server =
          await HttpServer.bind(SettingConfigItemProxy.hostNetwork, listenPort);
      _server!.listen((req) async {
        switch (req.method) {
          case "GET":
          case "POST":
            await _routing(path: req.uri.path, httpRequest: req);
            break;
          default:
            req.response.statusCode = HttpStatus.methodNotAllowed;
            req.response.close();
        }
      });

      _onRouting("/", "GET", (HttpRequest httpRequest) async {
        httpRequest.response.statusCode = HttpStatus.ok;
        httpRequest.response.close();
      });
      if (widget.syncUpload == true) {
        _onRouting("/${AppSchemeActions.syncUploadAction()}", "POST",
            (HttpRequest httpRequest) async {
          String dir = await PathUtils.cacheDir();
          var contentType =
              MediaType.parse(httpRequest.headers.value('content-type')!);
          var boundary = contentType.parameters['boundary']!;
          var transformer = MimeMultipartTransformer(boundary);
          var parts = await transformer.bind(httpRequest).toList();
          String err = "";
          String zipPath = "";
          if (parts.length == 1) {
            var part = parts[0];
            var contentDisp = part.headers['content-disposition']!;
            var filename = _extractFilename(contentDisp);
            if (filename != null) {
              var filepath = path.join(dir, filename);
              try {
                await _saveFile(part, filepath);
                zipPath = filepath;
              } catch (e) {
                err = e.toString();
              }
            } else {
              err = "filename is empty";
            }
          } else {
            err = "too much files";
          }
          httpRequest.response.statusCode = HttpStatus.ok;
          httpRequest.response.write('{"error":"$err"}');
          httpRequest.response.close();
          if (zipPath.isNotEmpty) {
            restoreFromZip(zipPath);
          }
        });
      } else {
        _onRouting("/${AppSchemeActions.syncDownloadAction()}", "GET",
            (HttpRequest httpRequest) async {
          var file = File(_zipPath!);
          bool found = await file.exists();
          if (!found) {
            _sendNotFound(httpRequest.response);
            return;
          }
          var stream = file.openRead();
          await stream.pipe(httpRequest.response).catchError((e) {});
          httpRequest.response.close();
        });
      }
      setState(() {});
    } catch (err, stacktrace) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
      return;
    }
  }

  Future<void> _saveFile(MimeMultipart part, String filename) async {
    var file = File(filename);
    await file.create(recursive: true);
    await part.pipe(file.openWrite());
  }

  String? _extractFilename(String contentDisposition) {
    return RegExp('filename="([^"]*)"')
        .firstMatch(contentDisposition)
        ?.group(1);
  }

  _sendNotFound(HttpResponse response) {
    response.statusCode = HttpStatus.notFound;
    response.close();
  }

  Future<void> stop() async {
    _router = {};
    if (_server != null) {
      await _server!.close();
      _server = null;
    }
  }

  _onRouting(String routing, String method,
      Function(HttpRequest httpRequest) callback) {
    _router[routing] = Tuple2(method, callback);
  }

  _routing({String? path, HttpRequest? httpRequest}) {
    if (httpRequest == null) {
      return;
    }
    var result = _router[path];
    if (result == null || result.item1 != httpRequest.method) {
      _sendNotFound(httpRequest.response);
      return;
    }
    try {
      result.item2.call(httpRequest);
    } catch (err) {
      Future.delayed(const Duration(microseconds: 10), () async {
        if (!mounted) {
          return;
        }
        DialogUtils.showAlertDialog(context, err.toString(),
            showCopy: true, showFAQ: true, withVersion: true);
      });
    }
  }

  Future<void> restoreFromZip(String zipPath) async {
    await GroupHelper.backupRestoreFromZip(context, zipPath, confirm: true);
    await FileUtils.deletePath(zipPath);
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
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
                      width: windowSize.width - 50 * 2,
                      child: Text(
                        widget.title!,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Column(children: [
                      Text(
                        tcontext.meta.lanSyncNotQuitTips,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightListSubItem,
                            fontSize: ThemeConfig.kFontSizeListSubItem),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        color: Colors.white,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: _image ?? const SizedBox.shrink()),
                      ),
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
