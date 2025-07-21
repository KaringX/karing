// ignore_for_file: unused_catch_stack

import 'package:flutter/material.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/assets_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/webview_helper.dart';
import 'package:karing/screens/widgets/framework.dart';

class UserAgreementScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "UserAgreementScreen");
  }

  const UserAgreementScreen({super.key});

  @override
  State<UserAgreementScreen> createState() => _UserAgreementScreenState();
}

class _UserAgreementScreenState
    extends LasyRenderingState<UserAgreementScreen> {
  String _res = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    var setting = SettingManager.getConfig();
    String termOfUse = AppUtils.getTermsOfServiceUrl();
    return PopScope(
        canPop: false,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.zero,
            child: AppBar(),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(tcontext.UserAgreementScreen.privacyFirst,
                            style: const TextStyle(
                              fontSize: ThemeConfig.kFontSizeListItem,
                              fontWeight: ThemeConfig.kFontWeightListItem,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          height: windowSize.height * 0.68,
                          child: FutureBuilder(
                            future: getData(),
                            builder: (BuildContext context,
                                AsyncSnapshot<String> snapshot) {
                              String data =
                                  snapshot.hasData ? snapshot.data! : "";
                              return Text.rich(
                                TextSpan(
                                  text: data,
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 45.0,
                          child: ElevatedButton(
                            autofocus: setting.ui.tvMode,
                            child: Text(
                                tcontext.UserAgreementScreen.agreeAndContinue),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (termOfUse.isNotEmpty) ...[
                              InkWell(
                                  child: Text(
                                    tcontext.meta.termOfUse,
                                    style: const TextStyle(
                                        color: Colors.blueAccent),
                                  ),
                                  onTap: () async {
                                    await WebviewHelper.loadUrl(
                                        context,
                                        AppUtils.getTermsOfServiceUrl(),
                                        "termOfUse",
                                        title: tcontext.meta.termOfUse,
                                        useInappWebViewForPC: true);
                                  }),
                              const SizedBox(
                                width: 60,
                              )
                            ],
                            InkWell(
                                child: Text(
                                  tcontext.meta.privacyPolicy,
                                  style:
                                      const TextStyle(color: Colors.blueAccent),
                                ),
                                onTap: () async {
                                  var remoteConfig =
                                      RemoteConfigManager.getConfig();
                                  bool ok = await WebviewHelper.loadUrl(
                                      context,
                                      remoteConfig.privacyPolicy,
                                      "privacyPolicy",
                                      title: tcontext.meta.privacyPolicy,
                                      useInappWebViewForPC: true);

                                  if (!ok) {
                                    if (!context.mounted) {
                                      return;
                                    }
                                    GroupHelper.showPrivacyPolicy(context);
                                  }
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Future<String> getData() async {
    if (_res.isNotEmpty) {
      return _res;
    }

    _res = await AssetsUtils.loadUserAgreement();
    return _res;
  }
}
