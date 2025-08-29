import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/ruleset_codes_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/listview_multi_parts_builder.dart';
import 'package:karing/screens/multi_select_screen.dart';
import 'package:karing/screens/packageid_multi_select_android_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/text_field.dart';
import 'package:path/path.dart' as path;
import 'package:tuple/tuple.dart';

class DiversionGroupCustomEditOptions {
  bool showLogicOperations = false;
  String? ruleSetBuildIn;
  String? ruleSet;
  String? package;
  String? processName;
  String? processPath;
  String? processDir;
  String? domainSuffix;
  String? domain;
  String? domainKeyword;
  String? domainRegex;
  String? ipCidr;
  String? networkType;
  String? network;
  String? wifiSsid;
  String? wifiBssid;
  String? port;
  String? portRange;
  String? protocol;
}

class DiversionGroupCustomEditScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "DiversionGroupCustomEditScreen");
  }

  final String name;
  final DiversionGroupCustomEditOptions options;

  const DiversionGroupCustomEditScreen({
    super.key,
    required this.name,
    required this.options,
  });

  @override
  State<DiversionGroupCustomEditScreen> createState() =>
      _DiversionGroupCustomEditScreenState();
}

enum LogicOperations { or, and }

class _DiversionGroupCustomEditScreenState
    extends LasyRenderingState<DiversionGroupCustomEditScreen> {
  LogicOperations? _logicOperation;
  final List<PackageInfoEx> _installedApps = [];

  final List<ListViewMultiPartsItem> _listViewParts = [];

  final _textControllerLinkRuleSetBuildIn = TextEditingController();
  final _textControllerLinkRuleSet = TextEditingController();
  final _textControllerLinkPackage = TextEditingController();
  final _textControllerLinkProcessName = TextEditingController();
  final _textControllerLinkProcessPath = TextEditingController();
  final _textControllerLinkProcessDir = TextEditingController();

  final _textControllerLinkDomainSuffix = TextEditingController();
  final _textControllerLinkDomain = TextEditingController();
  final _textControllerLinkDomainKeyword = TextEditingController();
  final _textControllerLinkDomainRegex = TextEditingController();
  final _textControllerLinkIpCidr = TextEditingController();

  final _textControllerLinkNetworkType = TextEditingController();
  final _textControllerLinkWifiSsid = TextEditingController();
  final _textControllerLinkWifiBSsid = TextEditingController();
  final _textControllerLinkNetwork = TextEditingController();
  final _textControllerLinkPort = TextEditingController();
  final _textControllerLinkPortRange = TextEditingController();
  final _textControllerLinkProtocol = TextEditingController();

  List<String>? _sitecodes;
  List<String>? _ipcodes;
  List<String>? _aclcodes;

  @override
  void initState() {
    super.initState();

    ServerDiversionGroupItem diversionItem =
        ServerManager.getDiversionCustomGroup();
    for (var group in diversionItem.groups) {
      if (group.name != widget.name) {
        continue;
      }
      _initTextController(group);
      _buildData(group);
      break;
    }
  }

  int sort(Tuple2<String, String> a, Tuple2<String, String> b) {
    return a.item2.compareTo(b.item2);
  }

  void _initTextController(DiversionRulesGroup group) {
    if (widget.options.ruleSetBuildIn != null) {
      if (group.ruleSetBuildIn.isNotEmpty) {
        _textControllerLinkRuleSetBuildIn.text =
            group.ruleSetBuildIn.join("\n");
        _textControllerLinkRuleSetBuildIn.text += "\n";
      }
      if (widget.options.ruleSetBuildIn!.isNotEmpty &&
          !group.ruleSetBuildIn.contains(widget.options.ruleSetBuildIn!)) {
        _textControllerLinkRuleSetBuildIn.text += widget.options.ruleSet!;
        _textControllerLinkRuleSetBuildIn.text += "\n";
      }
    }
    if (widget.options.ruleSet != null) {
      if (group.ruleSet.isNotEmpty) {
        _textControllerLinkRuleSet.text = group.ruleSet.join("\n");
        _textControllerLinkRuleSet.text += "\n";
      }
      if (widget.options.ruleSet!.isNotEmpty &&
          !group.ruleSet.contains(widget.options.ruleSet!)) {
        _textControllerLinkRuleSet.text += widget.options.ruleSet!;
        _textControllerLinkRuleSet.text += "\n";
      }
    }

    if (Platform.isAndroid) {
      if (widget.options.package != null) {
        if (group.package.isNotEmpty) {
          _textControllerLinkPackage.text = group.package.join("\n");
          _textControllerLinkPackage.text += "\n";
        }
        if (widget.options.package!.isNotEmpty &&
            !group.package.contains(widget.options.package)) {
          _textControllerLinkPackage.text += widget.options.package!;
          _textControllerLinkPackage.text += "\n";
        }
      }
    }
    if (PlatformUtils.isPC()) {
      if (widget.options.processName != null) {
        if (group.processName.isNotEmpty) {
          _textControllerLinkProcessName.text = group.processName.join("\n");
          _textControllerLinkProcessName.text += "\n";
        }
        if (widget.options.processName!.isNotEmpty &&
            !group.processName.contains(widget.options.processName)) {
          _textControllerLinkProcessName.text += widget.options.processName!;
          _textControllerLinkProcessName.text += "\n";
        }
      }

      if (widget.options.processPath != null) {
        if (group.processPath.isNotEmpty) {
          _textControllerLinkProcessPath.text = group.processPath.join("\n");
          _textControllerLinkProcessPath.text += "\n";
        }
        if (widget.options.processPath!.isNotEmpty &&
            !group.processPath.contains(widget.options.processPath)) {
          _textControllerLinkProcessPath.text += widget.options.processPath!;
          _textControllerLinkProcessPath.text += "\n";
        }
      }
      if (widget.options.processDir != null) {
        if (group.processDir.isNotEmpty) {
          _textControllerLinkProcessDir.text = group.processDir.join("\n");
          _textControllerLinkProcessDir.text += "\n";
        }
        if (widget.options.processDir!.isNotEmpty &&
            !group.processDir.contains(widget.options.processDir)) {
          _textControllerLinkProcessDir.text += widget.options.processDir!;
          _textControllerLinkProcessDir.text += "\n";
        }
      }
    }
    if (widget.options.domainSuffix != null) {
      if (group.domainSuffix.isNotEmpty) {
        _textControllerLinkDomainSuffix.text = group.domainSuffix.join("\n");
        _textControllerLinkDomainSuffix.text += "\n";
      }
      if (widget.options.domainSuffix!.isNotEmpty &&
          !group.domainSuffix.contains(widget.options.domainSuffix)) {
        _textControllerLinkDomainSuffix.text = group.domainSuffix.join("\n");
        _textControllerLinkDomainSuffix.text += "\n";
      }
    }
    if (widget.options.domain != null) {
      if (group.domain.isNotEmpty) {
        _textControllerLinkDomain.text = group.domain.join("\n");
        _textControllerLinkDomain.text += "\n";
      }
      if (widget.options.domain!.isNotEmpty &&
          !group.domain.contains(widget.options.domain)) {
        _textControllerLinkDomain.text += widget.options.domain!;
        _textControllerLinkDomain.text += "\n";
      }
    }
    if (widget.options.domainKeyword != null) {
      if (group.domainKeyword.isNotEmpty) {
        _textControllerLinkDomainKeyword.text = group.domainKeyword.join("\n");
        _textControllerLinkDomainKeyword.text += "\n";
      }
      if (widget.options.domainKeyword!.isNotEmpty &&
          !group.domainKeyword.contains(widget.options.domainKeyword)) {
        _textControllerLinkDomainKeyword.text += widget.options.domainKeyword!;
        _textControllerLinkDomainKeyword.text += "\n";
      }
    }
    if (widget.options.domainRegex != null) {
      if (group.domainRegex.isNotEmpty) {
        _textControllerLinkDomainRegex.text = group.domainRegex.join("\n");
        _textControllerLinkDomainRegex.text += "\n";
      }
      if (widget.options.domainRegex!.isNotEmpty &&
          !group.domainRegex.contains(widget.options.domainRegex)) {
        _textControllerLinkDomainRegex.text += widget.options.domainRegex!;
        _textControllerLinkDomainRegex.text += "\n";
      }
    }
    if (widget.options.ipCidr != null) {
      String ipcidr = widget.options.ipCidr!.contains(":")
          ? "${widget.options.ipCidr}/128"
          : "${widget.options.ipCidr}/32";
      if (group.ipCidr.isNotEmpty) {
        _textControllerLinkIpCidr.text = group.ipCidr.join("\n");
        _textControllerLinkIpCidr.text += "\n";
      }
      if (widget.options.ipCidr!.isNotEmpty && !group.ipCidr.contains(ipcidr)) {
        _textControllerLinkIpCidr.text += ipcidr;
        _textControllerLinkIpCidr.text += "\n";
      }
    }
    if (widget.options.networkType != null) {
      if (group.networkType.isNotEmpty) {
        _textControllerLinkNetworkType.text = group.networkType.join("\n");
        _textControllerLinkNetworkType.text += "\n";
      }
      if (widget.options.networkType!.isNotEmpty &&
          !group.networkType.contains(widget.options.networkType)) {
        _textControllerLinkNetworkType.text += widget.options.networkType!;
        _textControllerLinkNetworkType.text += "\n";
      }
    }
    if (widget.options.network != null) {
      if (group.network.isNotEmpty) {
        _textControllerLinkNetwork.text = group.network.join("\n");
        _textControllerLinkNetwork.text += "\n";
      }
      if (widget.options.network!.isNotEmpty &&
          !group.network.contains(widget.options.network)) {
        _textControllerLinkNetwork.text += widget.options.network!;
        _textControllerLinkNetwork.text += "\n";
      }
    }
    if (widget.options.wifiSsid != null) {
      if (group.wifiSsid.isNotEmpty) {
        _textControllerLinkWifiSsid.text = group.wifiSsid.join("\n");
        _textControllerLinkWifiSsid.text += "\n";
      }
      if (widget.options.wifiSsid!.isNotEmpty &&
          !group.wifiSsid.contains(widget.options.wifiSsid)) {
        _textControllerLinkWifiSsid.text += widget.options.wifiSsid!;
        _textControllerLinkWifiSsid.text += "\n";
      }
    }
    if (widget.options.wifiBssid != null) {
      if (group.wifiBssid.isNotEmpty) {
        _textControllerLinkWifiBSsid.text = group.wifiBssid.join("\n");
        _textControllerLinkWifiBSsid.text += "\n";
      }
      if (widget.options.wifiBssid!.isNotEmpty &&
          !group.wifiBssid.contains(widget.options.wifiBssid)) {
        _textControllerLinkWifiBSsid.text += widget.options.wifiBssid!;
        _textControllerLinkWifiBSsid.text += "\n";
      }
    }

    if (widget.options.protocol != null) {
      if (group.protocol.isNotEmpty) {
        _textControllerLinkProtocol.text = group.protocol.join("\n");
        _textControllerLinkProtocol.text += "\n";
      }
      if (widget.options.protocol!.isNotEmpty &&
          !group.protocol.contains(widget.options.protocol!)) {
        _textControllerLinkProtocol.text += widget.options.protocol!;
        _textControllerLinkProtocol.text += "\n";
      }
    }
    if (widget.options.port != null) {
      if (group.port.isNotEmpty) {
        _textControllerLinkPort.text = group.port.join("\n");
        _textControllerLinkPort.text += "\n";
      }
      if (widget.options.port!.isNotEmpty &&
          !group.port.contains(int.tryParse(widget.options.port!))) {
        _textControllerLinkPort.text += widget.options.port!;
        _textControllerLinkPort.text += "\n";
      }
    }
    if (widget.options.portRange != null) {
      if (group.portRange.isNotEmpty) {
        _textControllerLinkPortRange.text = group.portRange.join("\n");
        _textControllerLinkPortRange.text += "\n";
      }
      if (widget.options.portRange!.isNotEmpty &&
          !group.portRange.contains(widget.options.portRange!)) {
        _textControllerLinkPortRange.text += widget.options.portRange!;
        _textControllerLinkPortRange.text += "\n";
      }
    }
  }

  void _buildData(DiversionRulesGroup group) {
    _listViewParts.clear();

    _logicOperation = group.or ? LogicOperations.or : LogicOperations.and;
    if (widget.options.ruleSetBuildIn != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        return createTextFieldWithSelect(
            _textControllerLinkRuleSetBuildIn,
            "Rule Set(build-in)",
            "geosite:fackbook\ngeoip:fackbook\nacl:Fackbook", () async {
          List<String> selectedData =
              convertToList(_textControllerLinkRuleSetBuildIn.text);
          return await Navigator.push(
              context,
              MaterialPageRoute(
                  settings: MultiSelectScreen.routSettings(),
                  builder: (context) => MultiSelectScreen(
                        title: 'Rule Set(build-in)',
                        getData: () async {
                          _sitecodes ??= await RulesetCodesUtils.siteCodes();
                          _ipcodes ??= await RulesetCodesUtils.ipCodes();
                          _aclcodes ??= await RulesetCodesUtils.aclCodes();
                          List<Tuple2<String, String>> allData = [];
                          for (var code in _sitecodes!) {
                            allData
                                .add(Tuple2("geosite:$code", "geosite:$code"));
                          }
                          for (var code in _ipcodes!) {
                            allData.add(Tuple2("geoip:$code", "geoip:$code"));
                          }
                          for (var code in _aclcodes!) {
                            allData.add(Tuple2("acl:$code", "acl:$code"));
                          }
                          return allData;
                        },
                        selectedData: selectedData,
                      )));
        });
      };
      _listViewParts.add(item);
    }
    if (widget.options.ruleSet != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        return createTextField(_textControllerLinkRuleSet, "Rule Set",
            "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-category-ads-all.srs\nhttps://raw.githubusercontent.com/Toperlock/sing-box-geosite/main/wechat.json");
      };
      _listViewParts.add(item);
    }
    if (Platform.isAndroid) {
      if (widget.options.package != null) {
        ListViewMultiPartsItem item = ListViewMultiPartsItem();
        item.creator = (data, index, bindNO) {
          final tcontext = Translations.of(context);
          return createTextFieldWithSelect(
              _textControllerLinkPackage,
              tcontext.meta.appPackage,
              "com.google.chrome\ncom.facebook.katana", () async {
            List<String> selectedData =
                convertToList(_textControllerLinkPackage.text);

            return await Navigator.push(
                context,
                MaterialPageRoute(
                    settings: PackageIdMultiSelectAndroidScreen.routSettings(),
                    builder: (context) => PackageIdMultiSelectAndroidScreen(
                          installedApps: _installedApps,
                          selectedData: selectedData,
                        )));
          });
        };
        _listViewParts.add(item);
      }
    }
    if (PlatformUtils.isPC()) {
      if (widget.options.processName != null) {
        ListViewMultiPartsItem item = ListViewMultiPartsItem();
        item.creator = (data, index, bindNO) {
          final tcontext = Translations.of(context);
          String processName = Platform.isWindows
              ? "Telegram.exe\nchrome.com"
              : "Google Chrome Helper\nCode Helper";
          if (Platform.isWindows) {
            return createTextFieldWithSelect(_textControllerLinkProcessName,
                tcontext.meta.processName, processName, () async {
              try {
                List<String> extensions = Platform.isWindows ? ["exe"] : [""];
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: extensions,
                );
                if (result != null) {
                  String filePath = result.files.first.path!;
                  return [path.basename(filePath)];
                }
              } catch (err, stacktrace) {
                if (!mounted) {
                  return null;
                }
                DialogUtils.showAlertDialog(context, err.toString(),
                    showCopy: true, showFAQ: true, withVersion: true);
              }
              return null;
            });
          }

          return createTextField(_textControllerLinkProcessName,
              tcontext.meta.processName, processName);
        };
        _listViewParts.add(item);
      }

      if (widget.options.processPath != null) {
        ListViewMultiPartsItem item = ListViewMultiPartsItem();
        item.creator = (data, index, bindNO) {
          final tcontext = Translations.of(context);
          String processPath = Platform.isWindows
              ? "C:\\Program Files (x86)\\Telegram Desktop\\Telegram.exe\nC:\\Program Files\\Google\\Chrome\\Application\\chrome.exe"
              : "/Applications/Google Chrome.app/Contents/Frameworks/Google Chrome Framework.framework/Versions/130.0.6723.92/Helpers/Google Chrome Helper.app/Contents/MacOS/Google Chrome Helper\n/Applications/Visual Studio Code.app/Contents/Frameworks/Code Helper.app/Contents/MacOS/Code Helper";
          if (Platform.isWindows) {
            return createTextFieldWithSelect(_textControllerLinkProcessPath,
                tcontext.meta.processPath, processPath, () async {
              try {
                List<String> extensions = Platform.isWindows ? ["exe"] : [""];
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: extensions,
                );
                if (result != null) {
                  String filePath = result.files.first.path!;
                  return [filePath];
                }
              } catch (err, stacktrace) {
                if (!mounted) {
                  return null;
                }
                DialogUtils.showAlertDialog(context, err.toString(),
                    showCopy: true, showFAQ: true, withVersion: true);
              }
              return null;
            });
          }

          return createTextField(_textControllerLinkProcessPath,
              tcontext.meta.processPath, processPath);
        };
        _listViewParts.add(item);
      }

      if (widget.options.processDir != null) {
        ListViewMultiPartsItem item = ListViewMultiPartsItem();
        item.creator = (data, index, bindNO) {
          final tcontext = Translations.of(context);
          String processDir = Platform.isWindows
              ? "C:\\Program Files (x86)\\Telegram Desktop\nC:\\Program Files\\Google\\Chrome"
              : "/Applications/Google Chrome.app\n/Applications/Visual Studio Code.app";
          if (Platform.isMacOS) {
            return createTextFieldWithSelect(_textControllerLinkProcessDir,
                tcontext.meta.processDir, processDir, () async {
              try {
                List<String> extensions = ["app"];
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: extensions,
                );
                if (result != null) {
                  String filePath = result.files.first.path!;
                  final dirs = ["/Applications/", "/Users/"];
                  for (var dir in dirs) {
                    int index = filePath.indexOf(dir);
                    if (index > 0) {
                      filePath = filePath.substring(index);
                      break;
                    }
                  }

                  return [filePath];
                }
              } catch (err, stacktrace) {
                if (!mounted) {
                  return null;
                }
                DialogUtils.showAlertDialog(context, err.toString(),
                    showCopy: true, showFAQ: true, withVersion: true);
              }
              return null;
            });
          } else {
            return createTextFieldWithSelect(_textControllerLinkProcessDir,
                tcontext.meta.processDir, processDir, () async {
              try {
                String? result = await FilePicker.platform.getDirectoryPath(
                  dialogTitle: tcontext.meta.processDir,
                  lockParentWindow: false,
                );
                if (result != null) {
                  return [result];
                }
              } catch (err, stacktrace) {
                if (!mounted) {
                  return null;
                }
                DialogUtils.showAlertDialog(context, err.toString(),
                    showCopy: true, showFAQ: true, withVersion: true);
              }
              return null;
            });
          }

          //return createTextField(_textControllerLinkProcessDir,
          //  tcontext.meta.processDir, processDir);
        };
        _listViewParts.add(item);
      }
    }
    if (widget.options.domainSuffix != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        final tcontext = Translations.of(context);
        return createTextField(_textControllerLinkDomainSuffix,
            tcontext.meta.domainSuffix, ".google.com\n.facebook.com");
      };
      _listViewParts.add(item);
    }
    if (widget.options.domain != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        final tcontext = Translations.of(context);
        return createTextField(_textControllerLinkDomain, tcontext.meta.domain,
            "ads.google.com\nad.facebook.com");
      };
      _listViewParts.add(item);
    }
    if (widget.options.domainKeyword != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        final tcontext = Translations.of(context);
        return createTextField(_textControllerLinkDomainKeyword,
            tcontext.meta.domainKeyword, "google\nfacebook");
      };
      _listViewParts.add(item);
    }
    if (widget.options.domainRegex != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        final tcontext = Translations.of(context);
        return createTextField(_textControllerLinkDomainRegex,
            tcontext.meta.domainRegex, "^google\\..+\n^facebook\\..+");
      };
      _listViewParts.add(item);
    }
    if (widget.options.ipCidr != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        return createTextField(_textControllerLinkIpCidr, "IP Cidr",
            "178.0.55.32/32\n2001:4860:4860::8888/128");
      };
      _listViewParts.add(item);
    }
    if (widget.options.networkType != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        return createTextFieldWithSelect(_textControllerLinkNetworkType,
            "Network Type", "wifi\ncellular\nethernet\nother", () async {
          List<String> selectedData =
              convertToList(_textControllerLinkNetworkType.text);
          return await Navigator.push(
              context,
              MaterialPageRoute(
                  settings: MultiSelectScreen.routSettings(),
                  builder: (context) => MultiSelectScreen(
                        title: 'Network Type',
                        getData: () async {
                          return [
                            const Tuple2("wifi", "wifi"),
                            const Tuple2("cellular", "cellular"),
                            const Tuple2("ethernet", "ethernet"),
                            const Tuple2("other", "other"),
                          ];
                        },
                        selectedData: selectedData,
                      )));
        });
      };
      _listViewParts.add(item);
    }
    if (widget.options.network != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        return createTextFieldWithSelect(
            _textControllerLinkNetwork, "Network", "tcp\nudp", () async {
          List<String> selectedData =
              convertToList(_textControllerLinkNetwork.text);
          return await Navigator.push(
              context,
              MaterialPageRoute(
                  settings: MultiSelectScreen.routSettings(),
                  builder: (context) => MultiSelectScreen(
                        title: 'Network',
                        getData: () async {
                          return [
                            const Tuple2("tcp", "tcp"),
                            const Tuple2("udp", "udp"),
                          ];
                        },
                        selectedData: selectedData,
                      )));
        });
      };
      _listViewParts.add(item);
    }

    /* if (widget.options.wifiSsid != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        final tcontext = Translations.of(context);
        return createTextField(
            _textControllerLinkWifiSsid, "WIFI SSID", "My WIFI\nWifi ssid");
      };
      _listViewParts.add(item);
    }
    if (widget.options.wifiBssid != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        final tcontext = Translations.of(context);
        return createTextField(_textControllerLinkWifiBSsid, "WIFI BSSid",
            "00:00:00:00:00:00\n0f:0f:0f:0f:0f:0f");
      };
      _listViewParts.add(item);
    }*/
    if (widget.options.port != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        final tcontext = Translations.of(context);
        return createTextField(_textControllerLinkPort, tcontext.meta.port,
            "443\n53\n"); //:3500\n4500:\n20000:25000\n
      };
      _listViewParts.add(item);
    }
    if (widget.options.portRange != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        final tcontext = Translations.of(context);
        return createTextField(_textControllerLinkPortRange,
            tcontext.meta.portRange, ":3500\n4500:\n20000:25000\n");
      };
      _listViewParts.add(item);
    }
    if (widget.options.protocol != null) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        return createTextFieldWithSelect(
            _textControllerLinkProtocol, "Protocol", "quic\nhttp", () async {
          List<String> selectedData =
              convertToList(_textControllerLinkProtocol.text);
          return await Navigator.push(
              context,
              MaterialPageRoute(
                  settings: MultiSelectScreen.routSettings(),
                  builder: (context) => MultiSelectScreen(
                        title: 'Protocol',
                        getData: () async {
                          return [
                            const Tuple2("http", "http"),
                            const Tuple2("tls", "tls"),
                            const Tuple2("quic", "quic"),
                            const Tuple2("stun", "stun"),
                            const Tuple2("dns", "dns"),
                            const Tuple2("bittorrent", "bittorrent"),
                            const Tuple2("dtls", "dtls"),
                            const Tuple2("ssh", "ssh"),
                            const Tuple2("rdp", "rdp"),
                          ];
                        },
                        selectedData: selectedData,
                      )));
        });
      };
      _listViewParts.add(item);
    }
  }

  @override
  void dispose() {
    _installedApps.clear();
    _listViewParts.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    return PopScope(
        canPop: true,
        onPopInvokedWithResult: (didPop, result) {},
        child: Scaffold(
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
                            widget.name,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: ThemeConfig.kFontWeightTitle,
                                fontSize: ThemeConfig.kFontSizeTitle),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            onTapSave();
                          },
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              Icons.done_outlined,
                              size: 26,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      tcontext.DiversionGroupCustomEditScreen.setDiversionRule,
                      style: const TextStyle(
                        fontSize: ThemeConfig.kFontSizeListSubItem,
                        fontWeight: ThemeConfig.kFontWeightListSubItem,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (widget.options.showLogicOperations) ...[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        children: [
                          Text(tcontext.meta.logicOperation),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 120,
                            child: ListTile(
                              title: const Text('OR'),
                              horizontalTitleGap: 5,
                              leading: Radio(
                                value: LogicOperations.or,
                                groupValue: _logicOperation,
                                onChanged: (LogicOperations? value) {
                                  _logicOperation = value;
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 130,
                            child: ListTile(
                              title: const Text('AND'),
                              horizontalTitleGap: 5,
                              leading: Radio(
                                value: LogicOperations.and,
                                groupValue: _logicOperation,
                                onChanged: (LogicOperations? value) {
                                  _logicOperation = value;
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                  Expanded(
                    child: ListViewMultiPartsBuilder.build(_listViewParts),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget createTextField(
      TextEditingController textControllerLink, String label, String hint) {
    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: SingleChildScrollView(
          child: TextFieldEx(
            textInputAction: TextInputAction.newline,
            maxLines: 6,
            controller: textControllerLink,
            decoration: InputDecoration(labelText: label, hintText: hint),
            onChanged: (text) {},
          ),
        ),
      ),
    );
  }

  Widget createTextFieldWithSelect(
      TextEditingController textControllerLink,
      String label,
      String hint,
      Future<List<String>?> Function()? getSelected) {
    Size windowSize = MediaQuery.of(context).size;
    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            children: [
              SizedBox(
                width: windowSize.width - 10 * 2 - 50,
                child: SingleChildScrollView(
                  child: TextFieldEx(
                    textInputAction: TextInputAction.newline,
                    maxLines: 6,
                    controller: textControllerLink,
                    decoration:
                        InputDecoration(labelText: label, hintText: hint),
                    onChanged: (text) {},
                  ),
                ),
              ),
              InkWell(
                onTap: getSelected == null
                    ? null
                    : () async {
                        List<String>? selected = await getSelected();
                        if (selected == null || selected.isEmpty) {
                          return;
                        }
                        List<String> text =
                            convertToList(textControllerLink.text);
                        for (var textItem in selected) {
                          if (!text.contains(textItem)) {
                            text.add(textItem);
                          }
                        }
                        textControllerLink.text = text.join("\n");
                      },
                child: const SizedBox(
                  width: 50,
                  height: 30,
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 26,
                  ),
                ),
              ),
            ],
          )),
    );
  }

  void onTapSave() async {
    final tcontext = Translations.of(context);

    ServerDiversionGroupItem diversionItem =
        ServerManager.getDiversionCustomGroup();
    var sitecodesHashCode = await RulesetCodesUtils.siteCodesHashCode();
    var ipcodesHashCode = await RulesetCodesUtils.ipCodesHashCode();
    var aclcodesHashCode = await RulesetCodesUtils.aclCodesHashCode();
    if (!mounted) {
      return;
    }
    for (var group in diversionItem.groups) {
      if (group.name != widget.name) {
        continue;
      }
      DiversionRulesGroup newGroup = group.clone();

      if (widget.options.ruleSetBuildIn != null) {
        newGroup.ruleSetBuildIn =
            convertToList(_textControllerLinkRuleSetBuildIn.text);
        for (var ruleSet in newGroup.ruleSetBuildIn) {
          List<String> parts = ruleSet.split(":");
          if (parts.length != 2) {
            DialogUtils.showAlertDialog(
                context,
                tcontext.DiversionGroupCustomEditScreen.invalidRuleSetBuildIn(
                    p: ruleSet));
            return;
          }

          switch (parts[0]) {
            case "geosite":
              if (!sitecodesHashCode.contains(parts[1].hashCode)) {
                DialogUtils.showAlertDialog(
                    context,
                    tcontext.DiversionGroupCustomEditScreen
                        .invalidRuleSetBuildIn(p: ruleSet));
                return;
              }
              break;
            case "geoip":
              if (!ipcodesHashCode.contains(parts[1].hashCode)) {
                DialogUtils.showAlertDialog(
                    context,
                    tcontext.DiversionGroupCustomEditScreen
                        .invalidRuleSetBuildIn(p: ruleSet));
                return;
              }
              break;
            case "acl":
              if (!aclcodesHashCode.contains(parts[1].hashCode)) {
                DialogUtils.showAlertDialog(
                    context,
                    tcontext.DiversionGroupCustomEditScreen
                        .invalidRuleSetBuildIn(p: ruleSet));
                return;
              }
              break;
            default:
              DialogUtils.showAlertDialog(
                  context,
                  tcontext.DiversionGroupCustomEditScreen.invalidRuleSetBuildIn(
                      p: ruleSet));
              return;
          }
        }
      }
      if (widget.options.ruleSet != null) {
        newGroup.ruleSet = convertToList(_textControllerLinkRuleSet.text);
        for (var ruleSet in newGroup.ruleSet) {
          Uri? nruleSet = Uri.tryParse(ruleSet);
          if (nruleSet == null || !nruleSet.isScheme("https")) {
            DialogUtils.showAlertDialog(
                context,
                tcontext.DiversionGroupCustomEditScreen.invalidRuleSet(
                    p: ruleSet));
            return;
          }
          List<String> paths = nruleSet.path.split("/");
          if (paths.isEmpty) {
            DialogUtils.showAlertDialog(
                context,
                tcontext.DiversionGroupCustomEditScreen.invalidRuleSet(
                    p: ruleSet));
            return;
          }
          const String kSrs = ".srs";
          const String kJson = ".json";
          String path = paths[paths.length - 1];
          if (path.isEmpty || !path.endsWith(kSrs) && !path.endsWith(kJson)) {
            DialogUtils.showAlertDialog(
                context,
                tcontext.DiversionGroupCustomEditScreen.invalidRuleSet(
                    p: ruleSet));
            return;
          }
        }
      }
      if (Platform.isAndroid) {
        if (widget.options.package != null) {
          newGroup.package = convertToList(_textControllerLinkPackage.text);
          for (int i = 0; i < newGroup.package.length; i++) {
            if (newGroup.package[i].contains(RegExp(r':|\"|{|}|\[|\]|/')) ||
                !newGroup.package[i].contains(".")) {
              DialogUtils.showAlertDialog(
                  context,
                  tcontext.DiversionGroupCustomEditScreen.invalidPackageId(
                      p: newGroup.package[i]));
              return;
            }
          }
        }
      }
      if (PlatformUtils.isPC()) {
        if (widget.options.processName != null) {
          newGroup.processName =
              convertToList(_textControllerLinkProcessName.text);
        }

        if (widget.options.processPath != null) {
          newGroup.processPath =
              convertToList(_textControllerLinkProcessPath.text);
        }

        if (widget.options.processDir != null) {
          newGroup.processDir =
              convertToList(_textControllerLinkProcessDir.text);
        }
      }

      for (var ruleSet in newGroup.ruleSet) {
        ServerDiversionGroupRuleSetItem item =
            ServerDiversionGroupRuleSetItem();
        item.type = "remote";
        item.tag = ruleSet;
        item.format = ruleSet.endsWith(".json") ? "source" : "binary";
        item.url = ruleSet;
        if (!ServerManager.getDiversionGroupConfig()
            .ruleSetItems
            .contains(item)) {
          ServerManager.getDiversionGroupConfig().ruleSetItems.add(item);
        }
      }
      if (widget.options.domainSuffix != null) {
        newGroup.domainSuffix =
            convertToList(_textControllerLinkDomainSuffix.text);
      }
      if (widget.options.domain != null) {
        newGroup.domain = convertToList(_textControllerLinkDomain.text);
        for (var domain in newGroup.domain) {
          if (!NetworkUtils.isDomain(domain, false)) {
            DialogUtils.showAlertDialog(
                context,
                tcontext.DiversionGroupCustomEditScreen.invalidDomain(
                    p: domain));
            return;
          }
        }
      }
      if (widget.options.domainKeyword != null) {
        newGroup.domainKeyword =
            convertToList(_textControllerLinkDomainKeyword.text);
      }
      if (widget.options.domainRegex != null) {
        newGroup.domainRegex =
            convertToList(_textControllerLinkDomainRegex.text);
        /*for (var regx in newGroup.domainRegex) {
          try {
            var _ = RegExp(regx);
          } catch (err, stacktrace) {
            DialogUtils.showAlertDialog(
                context,
                tcontext.DiversionGroupCustomEditScreen.invalidDomain(p: regx)
                );
            return;
          }
        }*/
      }
      if (widget.options.ipCidr != null) {
        newGroup.ipCidr = convertToList(_textControllerLinkIpCidr.text);
        for (var ipCidr in newGroup.ipCidr) {
          if (!NetworkUtils.isIpv4WithMask(ipCidr) &&
              !NetworkUtils.isIpv6WithMask(ipCidr)) {
            DialogUtils.showAlertDialog(
                context,
                tcontext.DiversionGroupCustomEditScreen.invalidIpCidr(
                    p: ipCidr));
            return;
          }
        }
      }
      if (widget.options.network != null) {
        newGroup.network = convertToList(_textControllerLinkNetwork.text);
      }
      if (widget.options.networkType != null) {
        newGroup.networkType =
            convertToList(_textControllerLinkNetworkType.text);
      }
      if (widget.options.wifiSsid != null) {
        newGroup.wifiSsid = convertToList(_textControllerLinkWifiSsid.text);
      }
      if (widget.options.wifiBssid != null) {
        newGroup.wifiBssid = convertToList(_textControllerLinkWifiBSsid.text);
      }
      if (widget.options.port != null) {
        newGroup.port.clear();
        List<String> ports = convertToList(_textControllerLinkPort.text);
        for (var port in ports) {
          int? nport = int.tryParse(port);
          if (nport == null || nport < 0 || nport >= 65536) {
            DialogUtils.showAlertDialog(context,
                tcontext.DiversionGroupCustomEditScreen.invalidPort(p: port));
            return;
          }
          newGroup.port.add(nport);
        }
      }
      if (widget.options.portRange != null) {
        newGroup.portRange = convertToList(_textControllerLinkPortRange.text);
      }
      if (widget.options.protocol != null) {
        newGroup.protocol = convertToList(_textControllerLinkProtocol.text);
      }

      group.or = _logicOperation == LogicOperations.or;
      group.ruleSetBuildIn = newGroup.ruleSetBuildIn;
      group.ruleSet = newGroup.ruleSet;
      group.package = newGroup.package;
      group.processName = newGroup.processName;
      group.processPath = newGroup.processPath;
      group.processDir = newGroup.processDir;
      group.domainSuffix = newGroup.domainSuffix;
      group.domain = newGroup.domain;
      group.domainKeyword = newGroup.domainKeyword;
      group.domainRegex = newGroup.domainRegex;
      group.ipCidr = newGroup.ipCidr;
      group.ipVersion = newGroup.ipVersion;
      group.network = newGroup.network;
      group.networkType = newGroup.networkType;
      group.wifiSsid = newGroup.wifiSsid;
      group.wifiBssid = newGroup.wifiBssid;
      group.port = newGroup.port;
      group.portRange = newGroup.portRange;
      group.protocol = newGroup.protocol;

      ServerManager.saveDiversionGroupConfig();
      ServerManager.setDirty(true);
      break;
    }

    Navigator.pop(context);
  }

  List<String> convertToList(String text) {
    if (text.isEmpty) {
      return [];
    }
    List<String> list = text.split("\n").toSet().toList();

    for (int i = 0; i < list.length; i++) {
      list[i] = list[i].trim();
      if (list[i].isEmpty) {
        list.removeAt(i);
        i--;
      }
    }
    return list;
  }
}
