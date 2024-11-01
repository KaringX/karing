import 'package:flutter/material.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/group_item.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';

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
  Duration? _updateTimeInterval = const Duration(hours: 12);
  String _compatible = "";
  ProxyFilter _proxyFilter = ProxyFilter();
  bool _enableDiversionRules = false;
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
      _updateTimeInterval = item.updateDuration;
      _compatible = item.userAgentCompatible;
      _proxyFilter = item.proxyFilter;
      _enableDiversionRules = item.enableDiversionRules;
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
                      tcontext.MyProfilesEditScreen.title,
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
                        TextField(
                          controller: _textControllerRemark,
                          textInputAction: TextInputAction.done,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            labelText: tcontext.remark,
                            hintText: tcontext.remark,
                          ),
                        ),
                        item != null && item.isRemote()
                            ? const SizedBox(
                                height: 20,
                              )
                            : const SizedBox.shrink(),
                        item != null && item.isRemote()
                            ? TextField(
                                maxLines: 4,
                                controller: _textControllerUrl,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  labelText: tcontext.url,
                                  hintText: tcontext.url,
                                ),
                              )
                            : const SizedBox.shrink(),
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

    String? remarkText = Text(_textControllerRemark.text).data;
    String? urlText = Text(_textControllerUrl.text).data;
    if (remarkText == null || urlText == null) {
      Navigator.pop(context);
      return;
    }
    remarkText = remarkText.trim();
    urlText = urlText.trim();
    if (item.remark == remarkText &&
        item.urlOrPath == urlText &&
        item.updateDuration == _updateTimeInterval &&
        item.userAgentCompatible == _compatible &&
        item.proxyFilter.method == _proxyFilter.method &&
        item.proxyFilter.keywordOrRegx == _proxyFilter.keywordOrRegx &&
        item.enableDiversionRules == _enableDiversionRules &&
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
    item.updateDuration = _updateTimeInterval;
    item.userAgentCompatible = _compatible;
    item.proxyFilter = _proxyFilter;
    item.enableDiversionRules = _enableDiversionRules;
    item.reloadAfterProfileUpdate = _reloadAfterProfileUpdate;
    item.testLatencyAfterProfileUpdate = _testLatencyAfterProfileUpdate;
    item.testLatencyAutoRemove = _testLatencyAutoRemove;

    ServerManager.modifyRemark(item.groupid, remarkText);
    ServerManager.modifyUrl(item.groupid, urlText);

    ServerManager.setDirty(dirty);
    Navigator.pop(context, true);
  }

  String? checkRemark(String oldRemark, String remark) {
    final tcontext = Translations.of(context);
    remark = remark.trim();
    if (oldRemark == remark) {
      return null;
    }
    if (remark.isEmpty) {
      return tcontext.remarkCannotEmpty;
    }
    if (remark.length > kRemarkMaxLength) {
      return tcontext.remarkTooLong;
    }
    if (ServerManager.hasGroupByRemark(remark)) {
      return tcontext.remarkExist;
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
      return tcontext.urlInvalid;
    }
    if (ServerManager.hasGroupByUrlOrPath(url)) {
      return tcontext.MyProfilesEditScreen.urlExist;
    }
    return null;
  }

  Future<List<GroupItem>> getGroupOptions() async {
    ServerConfigGroupItem? item = ServerManager.getByGroupId(widget.groupid);
    if (item == null) {
      return [];
    }
    final tcontext = Translations.of(context);
    List<GroupItem> groupOptions = [];
    List<GroupItemOptions> options = [
      item.isRemote()
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.userAgent,
                  text: HttpUtils.getUserAgentsStringShort(_compatible),
                  textWidthPercent: 0.24,
                  tips: tcontext.ispUserAgentTips,
                  onPush: () async {
                    onTapUserAgent();
                  }))
          : GroupItemOptions(),
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
      item.isRemote()
          ? GroupItemOptions(
              timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
                  name: tcontext.MyProfilesEditScreen.updateTimerInterval,
                  tips: tcontext.MyProfilesEditScreen.updateTimerIntervalTips,
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
                  }))
          : GroupItemOptions(),
      item.isRemote()
          ? GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.MyProfilesEditScreen.reloadAfterProfileUpdate,
                  switchValue: _reloadAfterProfileUpdate,
                  onSwitch: (bool value) async {
                    _reloadAfterProfileUpdate = value;
                    setState(() {});
                  }))
          : GroupItemOptions(),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.MyProfilesEditScreen.testLatencyAfterProfileUpdate,
              tips: tcontext
                  .MyProfilesEditScreen.testLatencyAfterProfileUpdateTips,
              switchValue: _testLatencyAfterProfileUpdate,
              onSwitch: (bool value) async {
                _testLatencyAfterProfileUpdate = value;
                setState(() {});
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.MyProfilesEditScreen.testLatencyAutoRemove,
              tips: tcontext.MyProfilesEditScreen.testLatencyAutoRemoveTips,
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
