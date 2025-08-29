// ignore_for_file: use_build_context_synchronously, empty_catches

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/auto_conf_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/text_field.dart';
import 'package:tuple/tuple.dart';

class AddProfileByLinkOrContentScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "AddProfileByLinkOrContentScreen");
  }

  static int pushed = 0;
  final String urlOrContent;
  final String? name;
  final String? ispId;
  final String? ispUser;
  final bool? autoAdd;

  const AddProfileByLinkOrContentScreen({
    super.key,
    required this.urlOrContent,
    this.name,
    this.ispId,
    this.ispUser,
    this.autoAdd,
  });

  @override
  State<AddProfileByLinkOrContentScreen> createState() =>
      _AddProfileByLinkOrContentScreenState();
}

class _AddProfileByLinkOrContentScreenState
    extends LasyRenderingState<AddProfileByLinkOrContentScreen>
    with AfterLayoutMixin {
  final _textControllerLink = TextEditingController();
  final _textControllerRemark = TextEditingController();
  bool _loading = false;
  bool _keepDiversionRules = false;
  String _compatible = "";
  ProxyFilter _proxyFilter = ProxyFilter();
  ProxyStrategy _downloadMode = ProxyStrategy.preferProxy;
  Duration? _updateTimeInterval = const Duration(hours: 12);
  bool _testLatencyAutoRemove = false;
  @override
  void initState() {
    ++AddProfileByLinkOrContentScreen.pushed;
    String name = widget.name != null ? widget.name!.trim() : "";
    String urlOrContent = widget.urlOrContent.trim();
    _textControllerLink.text = urlOrContent;
    if (name.isNotEmpty) {
      _textControllerRemark.text = name;
    } else if (urlOrContent.isNotEmpty) {
      updateRemarkByText();
    }
    _compatible = HttpUtils.getUserAgentsString();
    super.initState();
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    if (widget.autoAdd == true) {
      onAdd(context);
    }
  }

  @override
  void dispose() {
    --AddProfileByLinkOrContentScreen.pushed;
    _textControllerLink.dispose();
    _textControllerRemark.dispose();
    super.dispose();
  }

  void updateRemarkByText() {
    if (_textControllerRemark.text.trim().isEmpty) {
      ReturnResult<String> result =
          ProxyConfUtils.getUrlFromQRContent(_textControllerLink.text.trim());
      if (result.data != null) {
        Uri? url = Uri.tryParse(result.data!);
        if (url != null) {
          String? remarks;
          try {
            do {
              if (url.fragment.isNotEmpty) {
                remarks = url.fragment;
                break;
              }
              remarks = url.queryParameters['remarks'];
              if (remarks != null) {
                break;
              }
              remarks = url.queryParameters['name'];
              if (remarks != null) {
                break;
              }
            } while (false);

            if (remarks == null || remarks.isEmpty) {
              remarks = url.host;
            }
            remarks = Uri.decodeComponent(remarks);
            _textControllerRemark.value =
                _textControllerRemark.value.copyWith(text: remarks);
            setState(() {});
          } catch (err) {}
        }
      }
    }
  }

  static ReturnResultError? validAddSubscription(
      BuildContext context, String remark, String url) {
    final tcontext = Translations.of(context);
    if (url.isEmpty) {
      return ReturnResultError(tcontext.meta.profileUrlOrContentCannotEmpty);
    }
    /*const kUrlMaxLen = 8182;
    if ((url.startsWith("https://") || url.startsWith("http://")) &&
        url.length > kUrlMaxLen) {
      return ReturnResultError(
          tcontext.meta.urlTooLong);
    }*/
    if (ServerManager.hasGroupByUrlOrPath(url)) {
      return ReturnResultError(tcontext.meta.profileExists);
    }
    if (remark.isEmpty) {
      return ReturnResultError(tcontext.meta.remarkCannotEmpty);
    }
    if (remark.length > kRemarkMaxLength) {
      return ReturnResultError(tcontext.meta.remarkTooLong);
    }
    if (ServerManager.hasGroupByRemark(remark)) {
      return ReturnResultError(tcontext.meta.remarkExist);
    }

    return null;
  }

  Future<void> onAdd(BuildContext context) async {
    final tcontext = Translations.of(context);

    String remark = _textControllerRemark.text.trim();
    String url = _textControllerLink.text.trim();
    ReturnResultError? error = validAddSubscription(context, remark, url);
    if (error != null) {
      DialogUtils.showAlertDialog(context, error.message);
      return;
    }
    _loading = true;
    setState(() {});

    error = await ServerManager.addRemoteConfig(
      "",
      remark,
      url,
      SubscriptionLinkType.unknown,
      _compatible,
      _proxyFilter,
      [],
      _keepDiversionRules,
      false,
      _testLatencyAutoRemove,
      _downloadMode,
      _updateTimeInterval,
      ispId: widget.ispId,
      ispUser: widget.ispUser,
    );

    if (!mounted) {
      return;
    }
    _loading = false;
    setState(() {});
    if (error == null) {
      await DialogUtils.showAlertDialog(context, tcontext.meta.addSuccess);
      if (!mounted) {
        return;
      }
      Navigator.pop(context, true);
      return;
    }
    if (!mounted) {
      return;
    }
    String err = error.message;
    if (error.message.contains("download profile failed:")) {
      if (error.message.contains("401") || error.message.contains("403")) {
        err = tcontext.meta
            .profileAddFailedThenDownloadAndImport(p: error.message);
      } else if (error.message.contains("HandshakeException:")) {
        err =
            tcontext.meta.profileAddFailedHandshakeException(p: error.message);
      }
    } else {
      if (error.message.contains("FormatException:")) {
        err = tcontext.meta.profileAddFailedFormatException(p: error.message);
      } /*else if (error.message.contains("Unexpected character")) {}*/ //clash
    }

    DialogUtils.showAlertDialog(context, err,
        showCopy: true, showFAQ: true, withVersion: true);
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
                Row(
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
                        tcontext.meta.profileAddUrlOrContent,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    _loading
                        ? const Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              SizedBox(
                                width: 26,
                                height: 26,
                                child: RepaintBoundary(
                                  child:
                                      CircularProgressIndicator(strokeWidth: 2),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              )
                            ],
                          )
                        : InkWell(
                            onTap: () async {
                              await onAdd(context);
                            },
                            child: Tooltip(
                                message: tcontext.meta.save,
                                child: const SizedBox(
                                  width: 50,
                                  height: 30,
                                  child: Icon(
                                    Icons.done,
                                    size: 26,
                                  ),
                                )),
                          ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(children: [
                    FutureBuilder(
                      future: getGroupOptions(),
                      builder: (BuildContext context,
                          AsyncSnapshot<List<GroupItem>> snapshot) {
                        List<GroupItem> data =
                            snapshot.hasData ? snapshot.data! : [];
                        return Column(
                            children:
                                GroupItemCreator.createGroups(context, data));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                      child: SingleChildScrollView(
                        child: TextFieldEx(
                          textInputAction: TextInputAction.next,
                          maxLines: PlatformUtils.isPC() ? 12 : 4,
                          controller: _textControllerLink,
                          decoration: InputDecoration(
                              labelText: tcontext.meta.profileUrlOrContent,
                              hintText: tcontext.meta.profileUrlOrContentHit),
                          onChanged: (text) {
                            updateRemarkByText();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                      child: TextFieldEx(
                        textInputAction: TextInputAction.done,
                        controller: _textControllerRemark,
                        decoration: InputDecoration(
                          labelText: tcontext.meta.remark,
                          hintText: tcontext.meta.required,
                          prefixIcon: const Icon(Icons.edit_note_outlined),
                        ),
                        onSubmitted: (String? text) {
                          FocusScope.of(context).nextFocus();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 200,
                    )
                  ]),
                )),
              ],
            ),
          ),
        ));
  }

  Future<List<GroupItem>> getGroupOptions() async {
    final tcontext = Translations.of(context);
    List<Tuple2<String, String>> tupleStrings = [
      Tuple2(
          ProxyStrategy.preferProxy.name, tcontext.proxyStrategy.perferProxy),
      Tuple2(
          ProxyStrategy.preferDirect.name, tcontext.proxyStrategy.perferDirect),
      Tuple2(ProxyStrategy.onlyProxy.name, tcontext.proxyStrategy.onlyProxy),
      Tuple2(ProxyStrategy.onlyDirect.name, tcontext.proxyStrategy.onlyDirect),
    ];

    List<GroupItem> groupOptions = [];
    List<GroupItemOptions> options = [
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.meta.userAgent,
              text: HttpUtils.getUserAgentsStringShort(_compatible),
              textWidthPercent: 0.5,
              tips: tcontext.ispUserAgentTips,
              onPush: _loading
                  ? null
                  : () async {
                      onTapUserAgent();
                    })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.meta.filter,
              onPush: _loading
                  ? null
                  : () async {
                      onTapFilter();
                    })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.diversionRulesKeep,
              tips: tcontext.ispDiversionTips,
              switchValue: _keepDiversionRules,
              onSwitch: _loading
                  ? null
                  : (bool value) async {
                      _keepDiversionRules = value;
                      setState(() {});
                    })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: tcontext.downloadProxyStrategy,
              tips: tcontext.SettingsScreen.ipStrategyTips,
              selected: _downloadMode.name,
              tupleStrings: tupleStrings,
              onPicker: _loading
                  ? null
                  : (String? selected) async {
                      if (selected == null || selected == _downloadMode.name) {
                        return;
                      }
                      if (selected == ProxyStrategy.preferProxy.name) {
                        _downloadMode = ProxyStrategy.preferProxy;
                      } else if (selected == ProxyStrategy.preferDirect.name) {
                        _downloadMode = ProxyStrategy.preferDirect;
                      } else if (selected == ProxyStrategy.onlyProxy.name) {
                        _downloadMode = ProxyStrategy.onlyProxy;
                      } else if (selected == ProxyStrategy.onlyDirect.name) {
                        _downloadMode = ProxyStrategy.onlyDirect;
                      } else {
                        _downloadMode = ProxyStrategy.preferProxy;
                      }

                      setState(() {});
                    })),
      GroupItemOptions(
          timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
              name: tcontext.meta.updateInterval,
              tips: tcontext.meta.updateInterval5mTips,
              duration: _updateTimeInterval,
              showSeconds: false,
              onPicker: _loading
                  ? null
                  : (bool canceled, Duration? duration) async {
                      if (canceled) {
                        return;
                      }
                      if (duration != null && duration.inMinutes < 5) {
                        duration = const Duration(minutes: 5);
                      }
                      _updateTimeInterval = duration;
                      setState(() {});
                    })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.meta.profileEditTestLatencyAutoRemove,
              tips: tcontext.meta.profileEditTestLatencyAutoRemoveTips,
              switchValue: _testLatencyAutoRemove,
              onSwitch: _loading
                  ? null
                  : (bool value) async {
                      _testLatencyAutoRemove = value;
                      setState(() {});
                    })),
    ];
    groupOptions.add(GroupItem(options: options));
    return groupOptions;
  }

  void onTapUserAgent() async {
    _compatible = await GroupHelper.showUserAgent(context, _compatible);
    setState(() {});
  }

  void onTapFilter() async {
    _proxyFilter = await GroupHelper.showProxyFilter(context, _proxyFilter);
    setState(() {});
  }
}
