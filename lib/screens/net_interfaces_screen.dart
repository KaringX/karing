// ignore_for_file: empty_catches

import 'package:flutter/material.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';

class NetInterfacesScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "NetInterfacesScreen");
  }

  const NetInterfacesScreen({super.key});

  @override
  State<NetInterfacesScreen> createState() => _NetInterfacesScreenState();
}

class _NetInterfacesScreenState
    extends LasyRenderingState<NetInterfacesScreen> {
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
                        tcontext.netInterfaces,
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
                child: FutureBuilder(
                  future: NetworkUtils.getInterfaces(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<NetInterfacesInfo>> snapshot) {
                    List<NetInterfacesInfo> data =
                        snapshot.hasData ? snapshot.data! : [];
                    return _loadListView(context, data);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loadListView(BuildContext context, List<NetInterfacesInfo> list) {
    Size windowSize = MediaQuery.of(context).size;
    return Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          itemCount: list.length,
          itemExtent: ThemeConfig.kListItemHeight2,
          itemBuilder: (BuildContext context, int index) {
            var current = list[index];
            return createWidget(current, index, windowSize);
          },
        ));
  }

  Widget createWidget(NetInterfacesInfo current, int index, Size windowSize) {
    const double padding = 4;
    const double leftWidth = 30;
    double rightWidth = windowSize.width - leftWidth - padding * 2;
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      child: Material(
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: padding,
            ),
            width: double.infinity,
            height: ThemeConfig.kListItemHeight,
            child: Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: leftWidth,
                      child: Text(
                        (index + 1).toString(),
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: rightWidth,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text(
                              current.name,
                              style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem,
                              ),
                            ),
                          ]),
                          Row(children: [
                            Text(
                              current.address,
                              style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem,
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
