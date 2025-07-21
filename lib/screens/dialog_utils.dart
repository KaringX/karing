// ignore_for_file: empty_catches

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/dropdown.dart';
import 'package:tuple/tuple.dart';
import 'package:vpn_service/vpn_service.dart';

//flutter showdialog setstate https://stackoverflow.com/questions/58977815/flutter-setstate-on-showdialog
class DialogUtilsResult<T> {
  DialogUtilsResult(this.data);
  T? data;
}

class DialogUtils {
  static Future<void> Function(BuildContext context, String text)? faqCallback;

  static Future<void> showAlertDialog(BuildContext context, String text,
      {bool showCopy = false,
      bool showFAQ = false,
      bool withVersion = false}) async {
    if (!context.mounted) {
      return;
    }
    double width = 60;
    if (showCopy) {
      width = 20;
    }
    if (withVersion) {
      text = "${AppUtils.getBuildinVersion()}\n$text";
    }

    const int kMaxLength = 1024;
    if (text.length > kMaxLength) {
      text = text.substring(0,
          kMaxLength); //android https://www.cnblogs.com/yyhimmy/p/12583251.html
    }

    if (showFAQ && Platform.isAndroid) {
      String version = await FlutterVpnService.getSystemVersion();
      int? v = int.tryParse(version);
      if (v != null && v == 27) {
        //android 8.1 flutter_inappwebview_android exception:AbstractMethodError: abstract method "void android.webkit.WebSettings.setSafeBrowsingEnabled(boolean)"
        showFAQ = false;
      }
      if (!context.mounted) {
        return;
      }
    }

    final tcontext = Translations.of(context);
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      routeSettings: const RouteSettings(name: "showAlertDialog"),
      builder: (context) {
        return SimpleDialog(
          title: Text(
            tcontext.meta.tips,
            style: const TextStyle(
              fontSize: ThemeConfig.kFontSizeListSubItem,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: ThemeConfig.kFontSizeListSubItem,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text(tcontext.meta.ok),
                  onPressed: () {
                    if (!context.mounted) {
                      return;
                    }
                    Navigator.pop(context);
                  },
                ),
                if (showCopy) ...[
                  SizedBox(
                    width: width,
                  ),
                  ElevatedButton(
                    child: Text(tcontext.meta.copy),
                    onPressed: () async {
                      try {
                        await Clipboard.setData(ClipboardData(text: text));
                      } catch (e) {}
                    },
                  )
                ],
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            if (showFAQ) ...[
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: ElevatedButton(
                    child: Text(tcontext.meta.faq),
                    onPressed: () async {
                      await faqCallback?.call(context, text);
                    },
                  ))
            ],
          ],
        );
      },
    );
  }

  static Future<bool?> showConfirmDialog(
      BuildContext context, String text) async {
    if (!context.mounted) {
      return null;
    }
    final tcontext = Translations.of(context);
    return await showDialog<bool>(
        context: context,
        routeSettings: const RouteSettings(name: "showConfirmDialog"),
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text(
              text,
              style: const TextStyle(
                fontSize: ThemeConfig.kFontSizeListSubItem,
              ),
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text(tcontext.meta.ok),
                    onPressed: () {
                      if (!context.mounted) {
                        return;
                      }
                      Navigator.pop(context, true);
                    },
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  ElevatedButton(
                    child: Text(tcontext.meta.cancel),
                    onPressed: () {
                      if (!context.mounted) {
                        return;
                      }
                      Navigator.pop(context, false);
                    },
                  ),
                ],
              )
            ],
          );
        });
  }

  static Future<String?> showTextInputDialog(
      BuildContext context,
      String title,
      String text,
      String? labelText,
      TextInputType? keyboardType,
      List<TextInputFormatter>? inputFormatters,
      bool Function(String) callback) async {
    if (!context.mounted) {
      return null;
    }
    final tcontext = Translations.of(context);
    final textController = TextEditingController();
    textController.value = textController.value.copyWith(
      text: text,
    );
    return showDialog(
        context: context,
        barrierDismissible: false,
        routeSettings: const RouteSettings(name: "showTextInputDialog"),
        builder: (context) {
          return SimpleDialog(
            title: Text(
              title,
              style: const TextStyle(
                fontSize: ThemeConfig.kFontSizeListSubItem,
              ),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  controller: textController,
                  keyboardType: keyboardType,
                  inputFormatters: inputFormatters,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    labelText: labelText,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      child: Text(tcontext.meta.ok),
                      onPressed: () {
                        if (!context.mounted) {
                          return;
                        }

                        if (callback(textController.text)) {
                          Navigator.pop(context, textController.text);
                        }
                      }),
                  const SizedBox(
                    width: 60,
                  ),
                  ElevatedButton(
                    child: Text(tcontext.meta.cancel),
                    onPressed: () {
                      if (!context.mounted) {
                        return;
                      }
                      Navigator.pop(context, null);
                    },
                  ),
                ],
              )
            ],
          );
        });
  }

  static Future<Tuple2<int, int>?> showTextIntRangeInputDialog(
      BuildContext context,
      String title,
      Tuple2<int, int>? labelText,
      bool Function(Tuple2<int, int>) callback) async {
    if (!context.mounted) {
      return null;
    }
    final tcontext = Translations.of(context);
    final textControllerL = TextEditingController();
    final textControllerR = TextEditingController();
    textControllerL.value = textControllerL.value.copyWith(
      text: labelText != null ? labelText.item1.toString() : "",
    );
    textControllerR.value = textControllerR.value.copyWith(
      text: labelText != null ? labelText.item2.toString() : "",
    );
    return showDialog(
        context: context,
        barrierDismissible: false,
        routeSettings: const RouteSettings(name: "showTextIntRangeInputDialog"),
        builder: (context) {
          return SimpleDialog(
            title: Text(
              title,
              style: const TextStyle(
                fontSize: ThemeConfig.kFontSizeListSubItem,
              ),
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: SizedBox(
                        width: 100,
                        child: TextField(
                          controller: textControllerL,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.end,
                        ),
                      )),
                  const Text(
                    "-",
                    style: TextStyle(
                      fontSize: ThemeConfig.kFontSizeListSubItem,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                        controller: textControllerR,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textInputAction: TextInputAction.done,
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      child: Text(tcontext.meta.ok),
                      onPressed: () {
                        if (!context.mounted) {
                          return;
                        }

                        if (textControllerL.text.isNotEmpty &&
                            textControllerR.text.isNotEmpty &&
                            callback(Tuple2(int.parse(textControllerL.text),
                                int.parse(textControllerR.text)))) {
                          Navigator.pop(
                              context,
                              Tuple2(int.parse(textControllerL.text),
                                  int.parse(textControllerR.text)));
                        }
                      }),
                  const SizedBox(
                    width: 60,
                  ),
                  ElevatedButton(
                    child: Text(tcontext.meta.cancel),
                    onPressed: () {
                      if (!context.mounted) {
                        return;
                      }
                      Navigator.pop(context, null);
                    },
                  ),
                ],
              )
            ],
          );
        });
  }

  static Future<int?> showIntInputDialog(BuildContext context, String title,
      int? value, int? min, int? max) async {
    String mm = (min != null && max != null) ? "$min-$max" : "";
    String? text = await DialogUtils.showTextInputDialog(context, title,
        value != null ? value.toString() : "", mm, TextInputType.number, [
      FilteringTextInputFormatter.digitsOnly,
    ], (text) {
      text = text.trim();
      int? p = int.tryParse(text);
      if (p == null) {
        return false;
      }
      if (min != null) {
        if (p < min) {
          return false;
        }
      }
      if (max != null) {
        if (p > max) {
          return false;
        }
      }

      return true;
    });
    if (text == null) {
      return null;
    }
    return int.tryParse(text);
  }

  static Future<Tuple2<int, int>?> showIntRangeInputDialog(BuildContext context,
      String title, Tuple2<int, int>? value, int min, int max) async {
    return await DialogUtils.showTextIntRangeInputDialog(context, title, value,
        (tuple2) {
      if (tuple2.item1 < min ||
          tuple2.item2 > max ||
          tuple2.item1 > tuple2.item2) {
        return false;
      }
      return true;
    });
  }

  static Future<DialogUtilsResult<Duration>?> showTimeIntervalPickerDialog(
    BuildContext context,
    Duration? duration, {
    bool showDays = true,
    bool showHours = true,
    bool showMinutes = true,
    bool showSeconds = true,
    bool showDisable = true,
  }) async {
    if (!context.mounted) {
      return null;
    }
    final tcontext = Translations.of(context);
    final textController = TextEditingController();
    String days = "d(${tcontext.meta.days})";
    String hours = "h(${tcontext.meta.hours})";
    String minutes = "m(${tcontext.meta.minutes})";
    String seconds = "s(${tcontext.meta.seconds})";
    List<String> data = [];

    if (showDays) {
      data.add(days);
    }
    if (showHours) {
      data.add(hours);
    }
    if (showMinutes) {
      data.add(minutes);
    }
    if (showSeconds) {
      data.add(seconds);
    }
    if (showDisable) {
      data.add(tcontext.meta.disable);
    }
    String selected = data.first;
    if (duration != null) {
      if (duration.inDays > 0) {
        selected = days;
        textController.value =
            textController.value.copyWith(text: duration.inDays.toString());
      } else if (duration.inHours > 0) {
        selected = hours;
        textController.value =
            textController.value.copyWith(text: duration.inHours.toString());
      } else if (duration.inMinutes > 0) {
        selected = minutes;
        textController.value =
            textController.value.copyWith(text: duration.inMinutes.toString());
      } else if (duration.inSeconds > 0) {
        selected = seconds;
        textController.value =
            textController.value.copyWith(text: duration.inSeconds.toString());
      }
    } else {
      selected = tcontext.meta.disable;
      textController.value = textController.value.copyWith(text: "");
    }

    return showDialog(
        context: context,
        barrierDismissible: false,
        routeSettings:
            const RouteSettings(name: "showTimeIntervalPickerDialog"),
        builder: (context) {
          return SimpleDialog(
            title: const Text(
              "",
              style: TextStyle(
                fontSize: ThemeConfig.kFontSizeListSubItem,
              ),
            ),
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          textInputAction: TextInputAction.done,
                          controller: textController,
                          textAlign: TextAlign.end,
                        ),
                      ),
                      const SizedBox(width: 10),
                      DropdownButtonEx(
                        menuWidth: 200,
                        value: selected,
                        items: _buildDropButtonList(data),
                        onChanged: (String? sel) {
                          selected = sel ?? data.first;
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: Text(tcontext.meta.ok),
                          onPressed: () {
                            if (!context.mounted) {
                              return;
                            }
                            int? value = int.tryParse(textController.text);
                            if (value == null) {
                              Navigator.pop(context, null);
                              return;
                            }
                            Duration? duration;
                            if (selected == days) {
                              duration = Duration(days: value);
                            } else if (selected == hours) {
                              duration = Duration(hours: value);
                            } else if (selected == minutes) {
                              duration = Duration(minutes: value);
                            } else if (selected == seconds) {
                              duration = Duration(seconds: value);
                            } else if (selected == tcontext.meta.disable) {}

                            Navigator.pop(context, DialogUtilsResult(duration));
                          }),
                      const SizedBox(
                        width: 60,
                      ),
                      ElevatedButton(
                        child: Text(tcontext.meta.cancel),
                        onPressed: () {
                          if (!context.mounted) {
                            return;
                          }
                          Navigator.pop(context, null);
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          );
        });
  }

  static Future<DialogUtilsResult<String>?> showStringPickerDialog(
      BuildContext context,
      String title,
      List<String> strings,
      String? selected) async {
    if (!context.mounted) {
      return null;
    }
    final tcontext = Translations.of(context);
    final textController = TextEditingController();

    textController.value = textController.value.copyWith(text: selected ?? "");

    return showDialog(
        context: context,
        barrierDismissible: false,
        routeSettings: const RouteSettings(name: "showStringPickerDialog"),
        builder: (context) {
          return SimpleDialog(
            title: Text(
              title,
              style: const TextStyle(
                fontSize: ThemeConfig.kFontSizeListSubItem,
              ),
            ),
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButtonEx(
                        menuWidth: 200,
                        value: selected,
                        items: _buildDropButtonList(strings),
                        onChanged: (String? sel) {
                          selected = sel ?? strings.first;
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: Text(tcontext.meta.ok),
                          onPressed: () {
                            if (!context.mounted) {
                              return;
                            }
                            Navigator.pop(context, DialogUtilsResult(selected));
                          }),
                      const SizedBox(
                        width: 60,
                      ),
                      ElevatedButton(
                        child: Text(tcontext.meta.cancel),
                        onPressed: () {
                          if (!context.mounted) {
                            return;
                          }
                          Navigator.pop(context, null);
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          );
        });
  }

  static List<DropdownMenuItem<String>> _buildDropButtonList(
      List<String> data) {
    return data.map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  static Future<void> showLoadingDialog(BuildContext context,
      {String? text}) async {
    if (!context.mounted) {
      return;
    }
    final tcontext = Translations.of(context);
    return showDialog(
      context: context,
      routeSettings: const RouteSettings(name: "showLoadingDialog"),
      barrierDismissible: false,
      builder: (context) {
        return SimpleDialog(children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              const RepaintBoundary(
                child: CircularProgressIndicator(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Text(text ?? tcontext.meta.loading),
              )
            ],
          ),
        ]);
      },
    );
  }

  static Future<void> showQRContentDialog(
      BuildContext context, String text) async {
    if (!context.mounted) {
      return;
    }
    final tcontext = Translations.of(context);
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      routeSettings: const RouteSettings(name: "showQRContentDialog"),
      builder: (context) {
        return SimpleDialog(
          title: Text(
            tcontext.meta.qrcodeScanResult,
            style: const TextStyle(
              fontSize: ThemeConfig.kFontSizeListSubItem,
            ),
          ),
          children: [
            Column(mainAxisSize: MainAxisSize.min, children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: ThemeConfig.kFontSizeListSubItem,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                child: Text(tcontext.meta.add),
                onPressed: () {
                  if (!context.mounted) {
                    return;
                  }
                  Navigator.pop(context);
                },
              ),
            ])
          ],
        );
      },
    );
  }
}
