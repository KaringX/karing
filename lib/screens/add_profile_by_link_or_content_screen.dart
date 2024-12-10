// ignore_for_file: use_build_context_synchronously, empty_catches

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
import 'package:karing/screens/group_item.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';

class AddProfileByLinkOrContentScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "AddProfileByLinkOrContentScreen");
  }

  static int pushed = 0;
  final String? name;
  final String linkUrl;
  final String? ispName;
  final String? ispUrl;
  final String? ispFaq;
  const AddProfileByLinkOrContentScreen(
      {super.key,
      required this.name,
      required this.linkUrl,
      this.ispName,
      this.ispUrl,
      this.ispFaq});

  @override
  State<AddProfileByLinkOrContentScreen> createState() =>
      _AddProfileByLinkOrContentScreenState();
}

class _AddProfileByLinkOrContentScreenState
    extends LasyRenderingState<AddProfileByLinkOrContentScreen> {
  String _name = "";
  String linkUrl = "";
  final _textControllerLink = TextEditingController();
  final _textControllerRemark = TextEditingController();
  bool _loading = false;
  bool _enableDiversionRules = false;
  String _compatible = "";
  ProxyFilter _proxyFilter = ProxyFilter();

  Duration? _updateTimeInterval = const Duration(hours: 12);
  @override
  void initState() {
    ++AddProfileByLinkOrContentScreen.pushed;
    _name = widget.name != null ? widget.name!.trim() : "";
    if (_name.isEmpty) {
      _name = widget.ispName != null ? widget.ispName!.trim() : "";
    }
    linkUrl = widget.linkUrl.trim();
    _textControllerLink.text = linkUrl;
    if (_name.isNotEmpty) {
      _textControllerRemark.text = _name;
    } else if (linkUrl.isNotEmpty) {
      updateRemarkByText();
    }
    _compatible = HttpUtils.getUserAgentsString();
    super.initState();
  }

  @override
  void dispose() {
    --AddProfileByLinkOrContentScreen.pushed;
    _textControllerLink.dispose();
    _textControllerRemark.dispose();
    super.dispose();
  }

  void updateRemarkByText() {
    Text urlText = Text(_textControllerLink.text);
    Text remarkText = Text(_textControllerRemark.text);
    if (remarkText.data!.trim().isEmpty) {
      ReturnResult<String> result =
          ProxyConfUtils.getUrlFromQRContent(urlText.data!.trim());
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
      return ReturnResultError(
          tcontext.AddProfileByLinkOrContentScreen.subscriptionCannotEmpty);
    }
    /*const kUrlMaxLen = 8182;
    if ((url.startsWith("https://") || url.startsWith("http://")) &&
        url.length > kUrlMaxLen) {
      return ReturnResultError(
          tcontext.AddProfileByLinkOrContentScreen.invalidUrl);
    }*/
    if (ServerManager.hasGroupByUrlOrPath(url)) {
      return ReturnResultError(
          tcontext.AddProfileByLinkOrContentScreen.configExist);
    }
    if (remark.isEmpty) {
      return ReturnResultError(tcontext.remarkCannotEmpty);
    }
    if (remark.length > kRemarkMaxLength) {
      return ReturnResultError(tcontext.remarkTooLong);
    }
    if (ServerManager.hasGroupByRemark(remark)) {
      return ReturnResultError(tcontext.remarkExist);
    }

    return null;
  }

  Future<void> onAdd(BuildContext context) async {
    final tcontext = Translations.of(context);
    Text urlText = Text(_textControllerLink.text);
    Text remarkText = Text(_textControllerRemark.text);
    String remark = remarkText.data!.trim();
    String url = urlText.data!.trim();
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
        _enableDiversionRules,
        _updateTimeInterval,
        ispName: widget.ispName,
        ispUrl: widget.ispUrl,
        ispFaq: widget.ispFaq);

    if (!mounted) {
      return;
    }
    _loading = false;
    if (error == null) {
      await DialogUtils.showAlertDialog(context, tcontext.addSuccess);
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
        err = tcontext.AddProfileByLinkOrContentScreen
            .addFailedThenDownloadAndImport(p: error.message);
      } else if (error.message.contains("HandshakeException:")) {
        err = tcontext.AddProfileByLinkOrContentScreen
            .addFailedHandshakeException(p: error.message);
      }
    } else {
      if (error.message.contains("FormatException:")) {
        err = tcontext.AddProfileByLinkOrContentScreen.addFailedFormatException(
            p: error.message);
      } /*else if (error.message.contains("Unexpected character")) {}*/ //clash
    }

    setState(() {});
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
                        tcontext.AddProfileByLinkOrContentScreen.title,
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
                            child: const SizedBox(
                              width: 50,
                              height: 30,
                              child: Icon(
                                Icons.done,
                                size: 26,
                              ),
                            ),
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
                        child: TextField(
                          textInputAction: TextInputAction.next,
                          maxLines: PlatformUtils.isPC() ? 12 : 4,
                          controller: _textControllerLink,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              labelText: tcontext
                                  .AddProfileByLinkOrContentScreen
                                  .profileLinkContent,
                              hintText: tcontext.AddProfileByLinkOrContentScreen
                                  .profileLinkContentHit),
                          onChanged: (text) {
                            updateRemarkByText();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                      child: TextField(
                        textInputAction: TextInputAction.done,
                        controller: _textControllerRemark,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          labelText: tcontext.remark,
                          hintText: tcontext.required,
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
    List<GroupItem> groupOptions = [];
    List<GroupItemOptions> options = [
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.userAgent,
              text: HttpUtils.getUserAgentsStringShort(_compatible),
              textWidthPercent: 0.24,
              tips: tcontext.ispUserAgentTips,
              onPush: () async {
                onTapUserAgent();
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.filter,
              onPush: () async {
                onTapFilter();
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.diversionRulesEnable,
              tips: tcontext.ispDiversionTips,
              switchValue: _enableDiversionRules,
              onSwitch: (bool value) async {
                _enableDiversionRules = value;
                setState(() {});
              })),
      GroupItemOptions(
          timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
              name:
                  tcontext.AddProfileByLinkOrContentScreen.updateTimerInterval,
              tips: tcontext
                  .AddProfileByLinkOrContentScreen.updateTimerIntervalTips,
              duration: _updateTimeInterval,
              onPicker: (bool canceled, Duration? duration) async {
                if (canceled) {
                  return;
                }
                if (duration != null && duration.inMinutes < 5) {
                  duration = const Duration(minutes: 5);
                }
                _updateTimeInterval = duration;

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
