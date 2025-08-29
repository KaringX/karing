// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/sheet.dart';
import 'package:karing/screens/widgets/text_field.dart';

class GroupItemText extends StatelessWidget {
  const GroupItemText({
    super.key,
    required this.options,
  });

  final GroupItemTextOptions options;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: options.onPush,
      onLongPress: options.onLongPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          options.child ?? SizedBox.shrink(),
          options.child != null
              ? SizedBox(
                  width: 5,
                )
              : SizedBox.shrink(),
          if ((options.tips != null) && options.tips!.isNotEmpty) ...[
            InkWell(
                onTap: () {
                  DialogUtils.showAlertDialog(context, options.tips!);
                },
                child: Tooltip(
                  message: options.tips,
                  child: const Icon(
                    Icons.info_outlined,
                    size: 26,
                  ),
                )),
            const SizedBox(
              width: 5,
            )
          ],
          Expanded(
            flex: ((1 - options.textWidthPercent) * 10).toInt(),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                options.name,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Expanded(
            flex: ((options.textWidthPercent) * 10).toInt(),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                options.text ?? "",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: options.textStyle ?? TextStyle(color: options.textColor),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}

class GroupItemTextField extends StatelessWidget {
  const GroupItemTextField({
    super.key,
    required this.options,
  });

  final GroupItemTextFieldOptions options;

  @override
  Widget build(BuildContext context) {
    var controller = options.controller ?? TextEditingController();
    controller.value = controller.value.copyWith(text: options.text);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if ((options.tips != null) && options.tips!.isNotEmpty) ...[
          InkWell(
              onTap: () {
                DialogUtils.showAlertDialog(context, options.tips!);
              },
              child: Tooltip(
                message: options.tips,
                child: const Icon(
                  Icons.info_outlined,
                  size: 26,
                ),
              )),
          const SizedBox(
            width: 5,
          )
        ],
        Expanded(
          flex: ((1 - options.textWidthPercent) * 10).toInt(),
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              options.name,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Expanded(
          flex: ((options.textWidthPercent) * 10).toInt(),
          child: Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextFieldEx(
              style: options.textStyle,
              readOnly: options.readOnly,
              controller: controller,
              textInputAction: options.textInputAction,
              obscureText: options.obscureText,
              decoration: InputDecoration(
                hintText: options.hint,
                errorText: options.errorText,
                border: InputBorder.none,
              ),
              textAlign: TextAlign.right,
              keyboardType: options.keyboardType,
              inputFormatters: options.inputFormatters,
              focusNode: options.focusNode,
              autocorrect: false,
              enableSuggestions:
                  true, //Non-English input methods cannot be used after disabling
              autofocus: options.autoFocus,
              onChanged: options.onChanged,
              enabled: options.enabled,
              onSubmitted: options.onSubmitted,
              title: options.name,
            ),
          ),
        ),
      ],
    );
  }
}

class GroupItemSwitch extends StatelessWidget {
  const GroupItemSwitch({
    super.key,
    required this.options,
  });

  final GroupItemSwitchOptions options;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if ((options.tips != null) && options.tips!.isNotEmpty) ...[
          InkWell(
              onTap: () {
                DialogUtils.showAlertDialog(context, options.tips!);
              },
              child: Tooltip(
                message: options.tips,
                child: const Icon(
                  Icons.info_outlined,
                  size: 26,
                ),
              )),
          const SizedBox(
            width: 5,
          )
        ],
        if (options.reddot == true) ...[
          Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ))
        ],
        Expanded(
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              options.name,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        SizedBox(
          width: 60,
          child: Switch.adaptive(
            value: options.switchValue ?? false,
            activeColor: ThemeDefine.kColorGreenBright,
            onChanged: options.onSwitch,
          ),
        ),
      ],
    );
  }
}

class GroupItemPush extends StatelessWidget {
  const GroupItemPush({
    super.key,
    required this.options,
  });

  final GroupItemPushOptions options;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: options.onPush,
      onLongPress: options.onLongPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if ((options.tips != null) && options.tips!.isNotEmpty) ...[
            InkWell(
                onTap: () {
                  DialogUtils.showAlertDialog(context, options.tips!);
                },
                child: Tooltip(
                  message: options.tips,
                  child: const Icon(
                    Icons.info_outlined,
                    size: 26,
                  ),
                )),
            const SizedBox(
              width: 5,
            )
          ],
          if (options.reddot == true) ...[
            Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: options.reddotColor ?? Colors.red,
                  shape: BoxShape.circle,
                ))
          ],
          if (options.icon != null) ...[
            Icon(
              options.icon,
              size: 26,
            ),
            const SizedBox(
              width: 5,
            )
          ],
          Expanded(
            flex: ((1 - options.textWidthPercent) * 10).toInt(),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                options.name,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Expanded(
            flex: (options.textWidthPercent * 10).toInt(),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                options.text ?? "",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: options.textStyle ?? TextStyle(color: options.textColor),
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 14,
          ),
        ],
      ),
    );
  }
}

class GroupItemTimerIntervalPicker extends StatelessWidget {
  const GroupItemTimerIntervalPicker({
    super.key,
    required this.options,
  });

  final GroupItemTimerIntervalPickerOptions options;

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    return InkWell(
      onTap: options.onPicker == null
          ? null
          : () async {
              DialogUtilsResult<Duration>? result =
                  await DialogUtils.showTimeIntervalPickerDialog(
                      context, options.duration,
                      showDays: options.showDays,
                      showHours: options.showHours,
                      showMinutes: options.showMinutes,
                      showSeconds: options.showSeconds,
                      showDisable: options.showDisable);
              if (result != null) {
                options.duration = result.data;
              }

              options.onPicker!(result == null, options.duration);
            },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if ((options.tips != null) && options.tips!.isNotEmpty) ...[
            InkWell(
                onTap: () {
                  DialogUtils.showAlertDialog(context, options.tips!);
                },
                child: Tooltip(
                  message: options.tips,
                  child: const Icon(
                    Icons.info_outlined,
                    size: 26,
                  ),
                )),
            const SizedBox(
              width: 5,
            )
          ],
          if (options.reddot == true) ...[
            Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ))
          ],
          Expanded(
            flex: 8,
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                options.name,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                _duratingToString(options.duration, tcontext.meta.disable),
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }

  String _duratingToString(Duration? duration, String disable) {
    String ret = "";
    if (duration != null) {
      if (duration.inDays > 0) {
        ret = "${duration.inDays} d";
      } else if (duration.inHours > 0) {
        ret = "${duration.inHours} h";
      } else if (duration.inMinutes > 0) {
        ret = "${duration.inMinutes} m";
      } else if (duration.inSeconds > 0) {
        ret = "${duration.inSeconds} s";
      }
    } else {
      ret = disable;
    }

    return ret;
  }
}

class GroupItemStringPicker extends StatelessWidget {
  const GroupItemStringPicker({
    super.key,
    required this.options,
  });

  final GroupItemStringPickerOptions options;

  @override
  Widget build(BuildContext context) {
    String selectedText = options.selected ?? "";
    var widgets = [];
    if (options.tupleStrings != null) {
      for (var key in options.tupleStrings!) {
        if (options.selected == key.item1) {
          selectedText = key.item2;
        }
        widgets.add(ListTile(
          title: Text(
            key.item2,
            style: TextStyle(
                color: options.selected == key.item1
                    ? ThemeDefine.kColorBlue
                    : null),
          ),
          onTap: () async {
            Navigator.pop(context);
            options.selected = key.item1;
            options.onPicker?.call(options.selected);
          },
        ));
      }
    } else if (options.strings != null) {
      for (var key in options.strings!) {
        widgets.add(ListTile(
          title: Text(
            key ?? "",
            style: TextStyle(
                color: options.selected == key ? ThemeDefine.kColorBlue : null),
          ),
          onTap: () async {
            Navigator.pop(context);
            options.selected = key;
            options.onPicker?.call(options.selected);
          },
        ));
      }
    }
    return InkWell(
        onTap: options.onPicker == null
            ? null
            : () {
                showSheetWidgets(context: context, widgets: widgets);
              },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if ((options.tips != null) && options.tips!.isNotEmpty) ...[
              InkWell(
                  onTap: () {
                    DialogUtils.showAlertDialog(context, options.tips!);
                  },
                  child: Tooltip(
                    message: options.tips,
                    child: const Icon(
                      Icons.info_outlined,
                      size: 26,
                    ),
                  )),
              const SizedBox(
                width: 5,
              )
            ],
            if (options.reddot == true) ...[
              Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ))
            ],
            Expanded(
              flex: ((1 - options.textWidthPercent) * 10).toInt(),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  options.name,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Expanded(
              flex: (options.textWidthPercent * 10).toInt(),
              child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    selectedText,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  )),
            ),
            Icon(
              Icons.arrow_drop_down,
              size: 16,
            ),
          ],
        ));
  }
}
