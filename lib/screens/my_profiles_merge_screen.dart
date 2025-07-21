// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/group_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';

class MyProfilesMergeScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "MyProfilesMergeScreen");
  }

  const MyProfilesMergeScreen({super.key});

  @override
  State<MyProfilesMergeScreen> createState() => MyProfilesMergeScreenState();
}

class MyProfilesMergeScreenState
    extends LasyRenderingState<MyProfilesMergeScreen> {
  ServerConfigGroupItem? _target;
  final List<ServerConfigGroupItem> _sources = [];
  final List<ServerConfigGroupItem> _selectedSources = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
                        tcontext.MyProfilesMergeScreen.profilesMerge,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    _selectedSources.isNotEmpty
                        ? InkWell(
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
                        : const SizedBox(
                            width: 50,
                          )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FutureBuilder(
                future: getGroupOptions(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<GroupItem>> snapshot) {
                  List<GroupItem> data = snapshot.hasData ? snapshot.data! : [];
                  return Column(
                      children: GroupItemCreator.createGroups(context, data));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(children: [
                    Text(
                      tcontext.MyProfilesMergeScreen.profilesMergeSource,
                      style: const TextStyle(
                        fontSize: ThemeConfig.kFontSizeListItem,
                      ),
                    ),
                    Text(
                      tcontext.MyProfilesMergeScreen.profilesMergeTips,
                      style: const TextStyle(
                        fontSize: ThemeConfig.kFontSizeListSubItem,
                      ),
                    ),
                  ])),
              Expanded(
                child: Scrollbar(
                    thumbVisibility: true,
                    child: ListView.separated(
                      itemCount: _sources.length,
                      itemBuilder: (BuildContext context, int index) {
                        ServerConfigGroupItem current = _sources[index];
                        return createWidgetTarget(current, windowSize);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(
                          height: 1,
                          thickness: 0.3,
                        );
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<List<GroupItem>> getGroupOptions() async {
    final tcontext = Translations.of(context);
    List<GroupItem> groupOptions = [];
    List<GroupItemOptions> options = [
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.MyProfilesMergeScreen.profilesMergeTarget,
              text: _target != null ? _target!.remark : "",
              onPush: () async {
                onTapTargetProfile();
              })),
    ];
    groupOptions.add(GroupItem(options: options));
    return groupOptions;
  }

  Widget createWidgetTarget(ServerConfigGroupItem group, Size windowSize) {
    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          width: double.infinity,
          height: 66,
          child: Row(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Checkbox(
                          tristate: true,
                          value: _selectedSources.contains(group),
                          onChanged: (bool? value) {
                            if (value == true) {
                              _selectedSources.add(group);
                            } else {
                              _selectedSources.remove(group);
                            }
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          width: windowSize.width - 80,
                          child: Text(
                            group.remark,
                            style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapTargetProfile() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [];
      for (var group in ServerManager.getConfig().items) {
        if (group.isRemote()) {
          continue;
        }
        if (group.groupid == ServerManager.getCustomGroupId()) {
          continue;
        }
        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: group.remark,
                onPush: () async {
                  _target = group;
                  _sources.clear();
                  for (var group in ServerManager.getConfig().items) {
                    if (group.isRemote()) {
                      continue;
                    }
                    if (group.groupid == ServerManager.getCustomGroupId()) {
                      continue;
                    }
                    if (group.groupid == _target!.groupid) {
                      continue;
                    }
                    _sources.add(group);
                  }
                  Navigator.pop(context);
                  setState(() {});
                })));
      }

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("profilesMergeTarget"),
            builder: (context) => GroupScreen(
                  title: tcontext.MyProfilesMergeScreen.profilesMergeTarget,
                  getOptions: getOptions,
                )));
  }

  void onTapSave() async {
    List<String> sources = [];
    for (var i in _selectedSources) {
      sources.add(i.groupid);
    }

    bool hasEnable = await ServerManager.mergeGroup(sources, _target!.groupid);
    if (hasEnable) {
      ServerManager.setDirty(true);
    }
    Navigator.pop(context);
  }
}
