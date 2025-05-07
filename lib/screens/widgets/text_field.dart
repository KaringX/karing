import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:flutter/services.dart';

class TextFieldEx extends TextField {
  static bool popupEdit = false;
  const TextFieldEx({
    super.key,
    super.controller,
    super.focusNode,
    super.undoController,
    super.decoration = const InputDecoration(),
    TextInputType? keyboardType,
    super.textInputAction,
    super.textCapitalization = TextCapitalization.none,
    super.style,
    super.strutStyle,
    super.textAlign = TextAlign.start,
    super.textAlignVertical,
    super.textDirection,
    super.readOnly = false,
    @Deprecated(
      'Use `contextMenuBuilder` instead. '
      'This feature was deprecated after v3.3.0-0.5.pre.',
    )
    //super.toolbarOptions,
    super.showCursor,
    super.autofocus = false,
    super.statesController,
    super.obscuringCharacter = '•',
    super.obscureText = false,
    super.autocorrect = true,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    super.enableSuggestions = true,
    super.maxLines = 1,
    super.minLines,
    super.expands = false,
    super.maxLength,
    super.maxLengthEnforcement,
    super.onChanged,
    super.onEditingComplete,
    super.onSubmitted,
    super.onAppPrivateCommand,
    super.inputFormatters,
    super.enabled,
    super.ignorePointers,
    super.cursorWidth = 2.0,
    super.cursorHeight,
    super.cursorRadius,
    super.cursorOpacityAnimates,
    super.cursorColor,
    super.cursorErrorColor,
    super.selectionHeightStyle = ui.BoxHeightStyle.tight,
    super.selectionWidthStyle = ui.BoxWidthStyle.tight,
    super.keyboardAppearance,
    super.scrollPadding = const EdgeInsets.all(20.0),
    super.dragStartBehavior = DragStartBehavior.start,
    bool? enableInteractiveSelection,
    super.selectionControls,
    super.onTap,
    super.onTapAlwaysCalled = false,
    super.onTapOutside,
    super.mouseCursor,
    super.buildCounter,
    super.scrollController,
    super.scrollPhysics,
    super.autofillHints = const <String>[],
    super.contentInsertionConfiguration,
    super.clipBehavior = Clip.hardEdge,
    super.restorationId,
    super.scribbleEnabled = true,
    super.enableIMEPersonalizedLearning = true,
    super.canRequestFocus = true,
    super.spellCheckConfiguration,
    super.magnifierConfiguration,
    this.title,
  });
  @override
  State<TextFieldEx> createState() => _TextFieldExState();
  final String? title;
}

class _TextFieldExState<T> extends State<TextFieldEx> {
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _focusNode.onKeyEvent = ((_, event) {
      final keys = HardwareKeyboard.instance.logicalKeysPressed;
      final key = event.logicalKey;
      if (!keys.contains(key)) {
        return KeyEventResult.ignored;
      }
      if (key == LogicalKeyboardKey.arrowUp) {
        FocusScope.of(context).focusInDirection(TraversalDirection.up);
        return KeyEventResult.handled;
      } else if (key == LogicalKeyboardKey.arrowDown) {
        FocusScope.of(context).focusInDirection(TraversalDirection.down);
        return KeyEventResult.handled;
      } else if (key == LogicalKeyboardKey.arrowLeft) {
        FocusScope.of(context).focusInDirection(TraversalDirection.left);
        return KeyEventResult.handled;
      } else if (key == LogicalKeyboardKey.arrowRight) {
        FocusScope.of(context).focusInDirection(TraversalDirection.right);
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: !TextFieldEx.popupEdit
            ? null
            : () async {
                await showTextFieldInputDialog();
              },
        child: TextField(
          controller: widget.controller,
          focusNode: TextFieldEx.popupEdit ? _focusNode : widget.focusNode,
          undoController: TextFieldEx.popupEdit ? null : widget.undoController,
          decoration: widget.decoration,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          textCapitalization: widget.textCapitalization,
          style: widget.style,
          strutStyle: widget.strutStyle,
          textAlign: widget.textAlign,
          textAlignVertical: widget.textAlignVertical,
          textDirection: widget.textDirection,
          readOnly: TextFieldEx.popupEdit || widget.readOnly,
          //toolbarOptions: widget.toolbarOptions,
          showCursor: widget.showCursor,
          autofocus: TextFieldEx.popupEdit ? false : widget.autofocus,
          statesController: widget.statesController,
          obscuringCharacter: widget.obscuringCharacter,
          obscureText: widget.obscureText,
          autocorrect: widget.autocorrect,
          smartDashesType: widget.smartDashesType,
          smartQuotesType: widget.smartQuotesType,
          enableSuggestions: widget.enableSuggestions,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          expands: widget.expands,
          maxLength: widget.maxLength,
          maxLengthEnforcement: widget.maxLengthEnforcement,
          onChanged: TextFieldEx.popupEdit ? null : widget.onChanged,
          onEditingComplete: widget.onEditingComplete,
          onSubmitted: TextFieldEx.popupEdit ? null : widget.onSubmitted,
          onAppPrivateCommand: widget.onAppPrivateCommand,
          inputFormatters: widget.inputFormatters,
          enabled: widget.enabled,
          ignorePointers: widget.ignorePointers,
          cursorWidth: widget.cursorWidth,
          cursorHeight: widget.cursorHeight,
          cursorRadius: widget.cursorRadius,
          cursorOpacityAnimates: widget.cursorOpacityAnimates,
          cursorColor: widget.cursorColor,
          cursorErrorColor: widget.cursorErrorColor,
          selectionHeightStyle: widget.selectionHeightStyle,
          selectionWidthStyle: widget.selectionWidthStyle,
          keyboardAppearance: widget.keyboardAppearance,
          scrollPadding: widget.scrollPadding,
          dragStartBehavior: widget.dragStartBehavior,
          enableInteractiveSelection: widget.enableInteractiveSelection,
          selectionControls: widget.selectionControls,
          onTap: TextFieldEx.popupEdit
              ? () async {
                  await showTextFieldInputDialog();
                }
              : widget.onTap,
          onTapAlwaysCalled:
              TextFieldEx.popupEdit ? true : widget.onTapAlwaysCalled,
          onTapOutside: widget.onTapOutside,
          mouseCursor: widget.mouseCursor,
          buildCounter: widget.buildCounter,
          scrollController: widget.scrollController,
          scrollPhysics: widget.scrollPhysics,
          autofillHints: widget.autofillHints,
          contentInsertionConfiguration: widget.contentInsertionConfiguration,
          clipBehavior: widget.clipBehavior,
          restorationId: widget.restorationId,
          scribbleEnabled: widget.scribbleEnabled,
          enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
          canRequestFocus:
              TextFieldEx.popupEdit ? true : widget.canRequestFocus,
          spellCheckConfiguration: widget.spellCheckConfiguration,
          magnifierConfiguration: widget.magnifierConfiguration,
        ));
  }

  Future<String?> showTextFieldInputDialog() async {
    if (!context.mounted) {
      return null;
    }
    final tcontext = Translations.of(context);

    return showDialog(
        context: context,
        barrierDismissible: false,
        routeSettings: const RouteSettings(name: "showTextFieldInputDialog"),
        builder: (context) {
          return SimpleDialog(
            title: Text(
              widget.title ?? "",
              style: const TextStyle(
                fontSize: ThemeConfig.kFontSizeListSubItem,
              ),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextField(
                  controller: widget.controller,
                  focusNode: widget.focusNode,
                  undoController: widget.undoController,
                  decoration: widget.decoration,
                  keyboardType: widget.keyboardType,
                  textInputAction: widget.textInputAction,
                  textCapitalization: widget.textCapitalization,
                  style: widget.style,
                  strutStyle: widget.strutStyle,
                  textAlign: widget.textAlign,
                  textAlignVertical: widget.textAlignVertical,
                  textDirection: widget.textDirection,
                  readOnly: false,
                  toolbarOptions: widget.toolbarOptions,
                  showCursor: widget.showCursor,
                  autofocus: true,
                  statesController: widget.statesController,
                  obscuringCharacter: widget.obscuringCharacter,
                  obscureText: widget.obscureText,
                  autocorrect: widget.autocorrect,
                  smartDashesType: widget.smartDashesType,
                  smartQuotesType: widget.smartQuotesType,
                  enableSuggestions: widget.enableSuggestions,
                  maxLines: widget.maxLines,
                  minLines: widget.minLines,
                  expands: widget.expands,
                  maxLength: widget.maxLength,
                  maxLengthEnforcement: widget.maxLengthEnforcement,
                  onChanged: widget.onChanged,
                  onEditingComplete: () {
                    FocusScope.of(context)
                        .focusInDirection(TraversalDirection.down);
                  },
                  onSubmitted: widget.onSubmitted,
                  onAppPrivateCommand: widget.onAppPrivateCommand,
                  inputFormatters: widget.inputFormatters,
                  enabled: true,
                  ignorePointers: widget.ignorePointers,
                  cursorWidth: widget.cursorWidth,
                  cursorHeight: widget.cursorHeight,
                  cursorRadius: widget.cursorRadius,
                  cursorOpacityAnimates: widget.cursorOpacityAnimates,
                  cursorColor: widget.cursorColor,
                  cursorErrorColor: widget.cursorErrorColor,
                  selectionHeightStyle: widget.selectionHeightStyle,
                  selectionWidthStyle: widget.selectionWidthStyle,
                  keyboardAppearance: widget.keyboardAppearance,
                  scrollPadding: widget.scrollPadding,
                  dragStartBehavior: widget.dragStartBehavior,
                  enableInteractiveSelection: widget.enableInteractiveSelection,
                  selectionControls: widget.selectionControls,
                  onTap: widget.onTap,
                  onTapAlwaysCalled: widget.onTapAlwaysCalled,
                  onTapOutside: widget.onTapOutside,
                  mouseCursor: widget.mouseCursor,
                  buildCounter: widget.buildCounter,
                  scrollController: widget.scrollController,
                  scrollPhysics: widget.scrollPhysics,
                  autofillHints: widget.autofillHints,
                  contentInsertionConfiguration:
                      widget.contentInsertionConfiguration,
                  clipBehavior: widget.clipBehavior,
                  restorationId: widget.restorationId,
                  scribbleEnabled: widget.scribbleEnabled,
                  enableIMEPersonalizedLearning:
                      widget.enableIMEPersonalizedLearning,
                  canRequestFocus: true,
                  spellCheckConfiguration: widget.spellCheckConfiguration,
                  magnifierConfiguration: widget.magnifierConfiguration,
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
                        Navigator.pop(context);
                      }),
                ],
              )
            ],
          );
        });
  }
}
