import 'package:flutter/material.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/utils/http_utils.dart';
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

class MyProfilesEditScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "MyProfilesEditScreen");
  }

  final String groupid;
  const MyProfilesEditScreen({super.key, required this.groupid});

  @override
  State<MyProfilesEditScreen> createState() => _MyProfilesEditScreenState();
}

class _MyProfilesEditScreenState
    extends LasyRenderingState<MyProfilesEditScreen> {
  final _textControllerRemark = TextEditingController();
  final _textControllerUrl = TextEditingController();
  ProxyStrategy _proxyStrategy = ProxyStrategy.preferProxy;
  Duration? _updateTimeInterval = const Duration(hours: 12);
  String _compatible = "";
  ProxyFilter _proxyFilter = ProxyFilter();
  bool _keepDiversionRules = false;
  bool _reloadAfterProfileUpdate = true;
  bool _testLatencyAfterProfileUpdate = false;
  bool _testLatencyAutoRemove = false;

  @override
  void initState() {
    super.initState();
    ServerConfigGroupItem? item = ServerManager.getByGroupId(widget.groupid);
    if (item != null) {
      _textControllerRemark.value = _textControllerRemark.value.copyWith(
        text: item.remark,
      );
      _textControllerUrl.value = _textControllerUrl.value.copyWith(
        text: item.urlOrPath,
      );
      _proxyStrategy = item.proxyStrategy;
      _updateTimeInterval = item.updateDuration;
      _compatible = item.userAgentCompatible;
      _proxyFilter = item.proxyFilter;
      _keepDiversionRules = item.keepDiversionRules;
      _reloadAfterProfileUpdate = item.reloadAfterProfileUpdate;
      _testLatencyAfterProfileUpdate = item.testLatencyAfterProfileUpdate;
      _testLatencyAutoRemove = item.testLatencyAutoRemove;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    ServerConfigGroupItem? item = ServerManager.getByGroupId(widget.groupid);
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
                      tcontext.meta.profileEdit,
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
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                    child: Column(
                      children: [
                        TextFieldEx(
                          controller: _textControllerRemark,
                          textInputAction: item != null && item.isRemote()
                              ? TextInputAction.next
                              : TextInputAction.done,
                          decoration: InputDecoration(
                            labelText: tcontext.meta.remark,
                            hintText: tcontext.meta.remark,
                          ),
                        ),
                        if (item != null && item.isRemote()) ...[
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldEx(
                            maxLines: 4,
                            controller: _textControllerUrl,
                            decoration: InputDecoration(
                              labelText: tcontext.meta.url,
                              hintText: tcontext.meta.url,
                            ),
                          )
                        ],
                        const SizedBox(
                          height: 20,
                        ),
                        FutureBuilder(
                          future: getGroupOptions(),
                          builder: (BuildContext context,
                              AsyncSnapshot<List<GroupItem>> snapshot) {
                            List<GroupItem> data =
                                snapshot.hasData ? snapshot.data! : [];
                            return Column(
                                children: GroupItemCreator.createGroups(
                                    context, data));
                          },
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapSave() {
    ServerConfigGroupItem? item = ServerManager.getByGroupId(widget.groupid);
    if (item == null) {
      Navigator.pop(context);
      return;
    }

    String remarkText = _textControllerRemark.text.trim();
    String urlText = _textControllerUrl.text.trim();
    if (item.remark == remarkText &&
        item.urlOrPath == urlText &&
        item.proxyStrategy == _proxyStrategy &&
        item.updateDuration == _updateTimeInterval &&
        item.userAgentCompatible == _compatible &&
        item.proxyFilter.method == _proxyFilter.method &&
        item.proxyFilter.keywordOrRegx == _proxyFilter.keywordOrRegx &&
        item.keepDiversionRules == _keepDiversionRules &&
        item.reloadAfterProfileUpdate == _reloadAfterProfileUpdate &&
        item.testLatencyAfterProfileUpdate == _testLatencyAfterProfileUpdate &&
        item.testLatencyAutoRemove == _testLatencyAutoRemove) {
      Navigator.pop(context);
      return;
    }
    String? err = checkRemark(item.remark, remarkText);
    if (err != null) {
      DialogUtils.showAlertDialog(context, err);
      return;
    }

    err = checkUrl(item.urlOrPath, urlText);
    if (err != null) {
      DialogUtils.showAlertDialog(context, err);
      return;
    }
    bool dirty = item.remark != remarkText;
    item.proxyStrategy = _proxyStrategy;
    item.updateDuration = _updateTimeInterval;
    item.userAgentCompatible = _compatible;
    item.proxyFilter = _proxyFilter;
    item.keepDiversionRules = _keepDiversionRules;
    item.reloadAfterProfileUpdate = _reloadAfterProfileUpdate;
    item.testLatencyAfterProfileUpdate = _testLatencyAfterProfileUpdate;
    item.testLatencyAutoRemove = _testLatencyAutoRemove;

    ServerManager.modifyRemark(item.groupid, remarkText);
    ServerManager.modifyUrl(item.groupid, urlText);

    if (dirty) {
      ServerManager.setDirty(true);
    }

    Navigator.pop(context, true);
  }

  String? checkRemark(String oldRemark, String remark) {
    final tcontext = Translations.of(context);
    remark = remark.trim();
    if (oldRemark == remark) {
      return null;
    }
    if (remark.isEmpty) {
      return tcontext.meta.remarkCannotEmpty;
    }
    if (remark.length > kRemarkMaxLength) {
      return tcontext.meta.remarkTooLong;
    }
    if (ServerManager.hasGroupByRemark(remark)) {
      return tcontext.meta.remarkExist;
    }
    return null;
  }

  String? checkUrl(String oldUrl, String url) {
    final tcontext = Translations.of(context);
    if (oldUrl == url) {
      return null;
    }
    Uri? uri = Uri.tryParse(url);
    if (uri == null || (uri.scheme != 'http' && uri.scheme != 'https')) {
      return tcontext.meta.urlInvalid;
    }
    if (ServerManager.hasGroupByUrlOrPath(url)) {
      return tcontext.meta.profileEditUrlExist;
    }
    return null;
  }

  Future<List<GroupItem>> getGroupOptions() async {
    ServerConfigGroupItem? item = ServerManager.getByGroupId(widget.groupid);
    if (item == null) {
      return [];
    }
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
      if (item.isRemote()) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.userAgent,
                text: HttpUtils.getUserAgentsStringShort(_compatible),
                textWidthPercent: 0.5,
                tips: tcontext.ispUserAgentTips,
                onPush: () async {
                  onTapUserAgent();
                }))
      ],
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.meta.filter,
              onPush: () async {
                onTapFilter();
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.diversionRulesKeep,
              tips: tcontext.ispDiversionTips,
              switchValue: _keepDiversionRules,
              onSwitch: (bool value) async {
                _keepDiversionRules = value;
                setState(() {});
              })),
      if (item.isRemote()) ...[
        GroupItemOptions(
            stringPickerOptions: GroupItemStringPickerOptions(
                name: tcontext.downloadProxyStrategy,
                tips: tcontext.SettingsScreen.ipStrategyTips,
                selected: _proxyStrategy.name,
                tupleStrings: tupleStrings,
                onPicker: (String? selected) async {
                  if (selected == null || selected == _proxyStrategy.name) {
                    return;
                  }
                  if (selected == ProxyStrategy.preferProxy.name) {
                    _proxyStrategy = ProxyStrategy.preferProxy;
                  } else if (selected == ProxyStrategy.preferDirect.name) {
                    _proxyStrategy = ProxyStrategy.preferDirect;
                  } else if (selected == ProxyStrategy.onlyProxy.name) {
                    _proxyStrategy = ProxyStrategy.onlyProxy;
                  } else if (selected == ProxyStrategy.onlyDirect.name) {
                    _proxyStrategy = ProxyStrategy.onlyDirect;
                  } else {
                    _proxyStrategy = ProxyStrategy.preferProxy;
                  }

                  setState(() {});
                })),
        GroupItemOptions(
            timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
                name: tcontext.meta.updateInterval,
                tips: tcontext.meta.updateInterval5mTips,
                duration: _updateTimeInterval,
                onPicker: (bool canceled, Duration? duration) async {
                  if (canceled) {
                    return;
                  }
                  if (duration != null) {
                    if (duration.inDays > 365) {
                      duration = const Duration(days: 365);
                    }
                    if (duration.inMinutes < 5) {
                      duration = const Duration(minutes: 5);
                    }
                  }

                  _updateTimeInterval = duration;
                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.meta.profileEditReloadAfterProfileUpdate,
                switchValue: _reloadAfterProfileUpdate,
                onSwitch: (bool value) async {
                  _reloadAfterProfileUpdate = value;
                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.meta.profileEditTestLatencyAfterProfileUpdate,
                tips:
                    tcontext.meta.profileEditTestLatencyAfterProfileUpdateTips,
                switchValue: _testLatencyAfterProfileUpdate,
                onSwitch: (bool value) async {
                  _testLatencyAfterProfileUpdate = value;
                  setState(() {});
                }))
      ],
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.meta.profileEditTestLatencyAutoRemove,
              tips: tcontext.meta.profileEditTestLatencyAutoRemoveTips,
              switchValue: _testLatencyAutoRemove,
              onSwitch: (bool value) async {
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
