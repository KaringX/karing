// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_item.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';

class GroupScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings(String viewTag) {
    return RouteSettings(name: "GroupScreen:$viewTag");
  }

  final String title;
  final Future<List<GroupItem>> Function(BuildContext context) getOptions;
  final bool hasReturn;
  final Future<bool> Function(BuildContext context)? onDone;
  final String? tipsIfNoOnDone;
  const GroupScreen(
      {super.key,
      required this.title,
      required this.getOptions,
      this.hasReturn = true,
      this.onDone,
      this.tipsIfNoOnDone});

  @override
  State<GroupScreen> createState() => GroupScreenState();
}

class GroupScreenState extends LasyRenderingState<GroupScreen> {
  //final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //_focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size windowSize = MediaQuery.of(context).size;
    /*return KeyboardListener(
        focusNode: _focusNode,
        onKeyEvent: (KeyEvent event) {
          if (event is KeyDownEvent) {
            switch (event.logicalKey) {
              case LogicalKeyboardKey.arrowDown:
                break;
              case LogicalKeyboardKey.arrowLeft:
                break;
              case LogicalKeyboardKey.arrowRight:
                break;
              case LogicalKeyboardKey.arrowUp:
                break;
              case LogicalKeyboardKey.enter: //KEY_UP
                //FocusScope.of(context).requestFocus(_focusNode);
                break;
            }
          } else if (event is KeyUpEvent) {}
        },
        child:*/
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
                    !widget.hasReturn
                        ? const SizedBox(
                            width: 50,
                          )
                        : InkWell(
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
                        widget.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    widget.onDone != null
                        ? InkWell(
                            onTap: () async {
                              if (await widget.onDone!(context)) {
                                Navigator.pop(context, true);
                              }
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
                        : widget.tipsIfNoOnDone != null &&
                                widget.tipsIfNoOnDone!.isNotEmpty
                            ? Tooltip(
                                message: widget.tipsIfNoOnDone,
                                child: InkWell(
                                  onTap: () {
                                    DialogUtils.showAlertDialog(
                                        context, widget.tipsIfNoOnDone!);
                                  },
                                  child: const SizedBox(
                                      width: 50,
                                      height: 30,
                                      child: Icon(
                                        Icons.info_outlined,
                                        size: 20,
                                      )),
                                ))
                            : const SizedBox(
                                width: 50,
                              ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: FutureBuilder(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //);
  }

  Future<List<GroupItem>> getGroupOptions() async {
    var groups = await widget.getOptions(context);
    for (var group in groups) {
      for (var option in group.options) {
        if ((option.switchOptions != null) &&
            (option.switchOptions!.onSwitch != null)) {
          var callback = option.switchOptions!.onSwitch;
          option.switchOptions!.onSwitch = (bool value) async {
            await callback!(value);
            if (!mounted) {
              return;
            }
            setState(() {});
          };
        } else if ((option.pushOptions != null) &&
            (option.pushOptions!.onPush != null)) {
          var callback = option.pushOptions!.onPush;
          option.pushOptions!.onPush = () async {
            await callback!();
            if (!mounted) {
              return;
            }
            setState(() {});
          };
        } else if ((option.timerPickerOptions != null) &&
            (option.timerPickerOptions!.onPicker != null)) {
          var callback = option.timerPickerOptions!.onPicker;
          option.timerPickerOptions!.onPicker = (Duration? value) async {
            await callback!(value);
            if (!mounted) {
              return;
            }
            setState(() {});
          };
        } else if ((option.timerIntervalPickerOptions != null) &&
            (option.timerIntervalPickerOptions!.onPicker != null)) {
          var callback = option.timerIntervalPickerOptions!.onPicker;
          option.timerIntervalPickerOptions!.onPicker =
              (bool canceled, Duration? value) async {
            await callback!(canceled, value);
            if (!mounted) {
              return;
            }
            setState(() {});
          };
        } else if ((option.stringPickerOptions != null) &&
            (option.stringPickerOptions!.onPicker != null)) {
          var callback = option.stringPickerOptions!.onPicker;
          option.stringPickerOptions!.onPicker = (String? value) async {
            await callback!(value);
            if (!mounted) {
              return;
            }
            setState(() {});
          };
        }
      }
    }

    return groups;
  }
}
