import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

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
    super.keyboardType,
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
    super.stylusHandwritingEnabled = true,
    super.enableIMEPersonalizedLearning = true,
    super.canRequestFocus = true,
    super.spellCheckConfiguration,
    super.magnifierConfiguration,
    this.title,
    this.autocompleteCandidates,
  });
  @override
  State<TextFieldEx> createState() => _TextFieldExState();
  final String? title;
  final List<String>? autocompleteCandidates;
}

class _TextFieldExState<T> extends State<TextFieldEx> {
  final _focusNode = FocusNode();
  TextEditingController? _typeAheadController;
  bool _editing = false;
  static const _nativeInput = MethodChannel('com.nebula.karing/tv_text_input');

  bool get _useNativeInput =>
      !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

  List<String> _getAutocompleteSuggestions(String pattern) {
    final List<String> candidates =
        widget.autocompleteCandidates ?? const <String>[];
    final String keyword = pattern.trim().toLowerCase();
    if (candidates.isEmpty || keyword.isEmpty) {
      return const <String>[];
    }
    return candidates
        .where((String item) => item.toLowerCase().contains(keyword))
        .take(20)
        .toList(growable: false);
  }

  Widget _buildInputField({
    required TextEditingController? controller,
    required FocusNode? focusNode,
    required UndoHistoryController? undoController,
    required bool readOnly,
    required bool autofocus,
    required ValueChanged<String>? onChanged,
    required VoidCallback? onEditingComplete,
    required ValueChanged<String>? onSubmitted,
    required bool enabled,
    required GestureTapCallback? onTap,
    required bool onTapAlwaysCalled,
    required bool canRequestFocus,
    required bool useAutocomplete,
  }) {
    Widget buildTextField(
      TextEditingController? resolvedController,
      FocusNode? resolvedFocusNode,
    ) {
      return TextField(
        controller: resolvedController,
        focusNode: resolvedFocusNode,
        undoController: undoController,
        decoration: widget.decoration,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        textCapitalization: widget.textCapitalization,
        style: widget.style,
        strutStyle: widget.strutStyle,
        textAlign: widget.textAlign,
        textAlignVertical: widget.textAlignVertical,
        textDirection: widget.textDirection,
        readOnly: readOnly,
        //toolbarOptions: widget.toolbarOptions,
        showCursor: widget.showCursor,
        autofocus: autofocus,
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
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onSubmitted: onSubmitted,
        onAppPrivateCommand: widget.onAppPrivateCommand,
        inputFormatters: widget.inputFormatters,
        enabled: enabled,
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
        onTap: onTap,
        onTapAlwaysCalled: onTapAlwaysCalled,
        onTapOutside: widget.onTapOutside,
        mouseCursor: widget.mouseCursor,
        buildCounter: widget.buildCounter,
        scrollController: widget.scrollController,
        scrollPhysics: widget.scrollPhysics,
        autofillHints: widget.autofillHints,
        contentInsertionConfiguration: widget.contentInsertionConfiguration,
        clipBehavior: widget.clipBehavior,
        restorationId: widget.restorationId,
        stylusHandwritingEnabled: widget.stylusHandwritingEnabled,
        enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
        canRequestFocus: canRequestFocus,
        spellCheckConfiguration: widget.spellCheckConfiguration,
        magnifierConfiguration: widget.magnifierConfiguration,
      );
    }

    if (!useAutocomplete) {
      return buildTextField(controller, focusNode);
    }

    return TypeAheadField<String>(
      hideOnEmpty: true,
      hideOnUnfocus: true,
      controller: controller,
      focusNode: focusNode,
      suggestionsCallback: _getAutocompleteSuggestions,
      itemBuilder: (BuildContext context, String suggestion) {
        return ListTile(title: Text(suggestion));
      },
      onSelected: (String suggestion) {
        final TextEditingController? effectiveController =
            controller ?? _typeAheadController;
        if (effectiveController != null) {
          effectiveController.value = TextEditingValue(
            text: suggestion,
            selection: TextSelection.collapsed(offset: suggestion.length),
          );
        }
        onChanged?.call(suggestion);
      },
      builder:
          (
            BuildContext context,
            TextEditingController typeAheadController,
            FocusNode typeAheadFocusNode,
          ) {
            _typeAheadController = typeAheadController;
            return buildTextField(
              controller ?? typeAheadController,
              focusNode ?? typeAheadFocusNode,
            );
          },
    );
  }

  @override
  void initState() {
    super.initState();

    _focusNode.onKeyEvent = ((_, event) {
      final keys = HardwareKeyboard.instance.logicalKeysPressed;
      final key = event.logicalKey;
      if (!keys.contains(key)) {
        return KeyEventResult.ignored;
      }
      if (TextFieldEx.popupEdit &&
          (key == LogicalKeyboardKey.select ||
              key == LogicalKeyboardKey.enter ||
              key == LogicalKeyboardKey.numpadEnter)) {
        if (event is KeyDownEvent) {
          showTextFieldInputDialog();
        }
        return KeyEventResult.handled;
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
    final bool useAutocomplete =
        (widget.autocompleteCandidates?.isNotEmpty ?? false) &&
        !TextFieldEx.popupEdit;
    return InkWell(
      onTap: !TextFieldEx.popupEdit
          ? null
          : () async {
              await showTextFieldInputDialog();
            },
      child: _buildInputField(
        controller: widget.controller,
        focusNode: TextFieldEx.popupEdit ? _focusNode : widget.focusNode,
        undoController: TextFieldEx.popupEdit && !_useNativeInput
            ? null
            : widget.undoController,
        readOnly: TextFieldEx.popupEdit || widget.readOnly,
        autofocus: TextFieldEx.popupEdit ? false : widget.autofocus,
        onChanged: TextFieldEx.popupEdit && !_useNativeInput
            ? null
            : widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
        onSubmitted: TextFieldEx.popupEdit ? null : widget.onSubmitted,
        enabled: widget.enabled ?? true,
        onTap: TextFieldEx.popupEdit
            ? () async {
                await showTextFieldInputDialog();
              }
            : widget.onTap,
        onTapAlwaysCalled: TextFieldEx.popupEdit
            ? true
            : widget.onTapAlwaysCalled,
        canRequestFocus: TextFieldEx.popupEdit ? true : widget.canRequestFocus,
        useAutocomplete: useAutocomplete,
      ),
    );
  }

  Future<void> showTextFieldInputDialog() async {
    if (!mounted || _editing || widget.readOnly || widget.enabled == false) {
      return;
    }
    _editing = true;
    try {
      if (_useNativeInput) {
        final editable = _focusNode.context
            ?.findAncestorStateOfType<EditableTextState>();
        if (editable != null) {
          final controller = editable.widget.controller;
          final initialValue = editable.textEditingValue;
          try {
            final result = await _nativeInput.invokeMapMethod<String, dynamic>(
              'edit',
              {
                'configuration': editable.textInputConfiguration.toJson(),
                'value': initialValue.toJSON(),
                'title': widget.title ?? widget.decoration?.labelText ?? '',
                'hint': widget.decoration?.hintText ?? '',
                'suggestions': widget.obscureText
                    ? const <String>[]
                    : widget.autocompleteCandidates ?? const <String>[],
              },
            );
            if (result != null &&
                mounted &&
                editable.mounted &&
                !widget.readOnly &&
                widget.enabled != false &&
                identical(controller, editable.widget.controller) &&
                editable.textEditingValue == initialValue) {
              // Preserve the field's formatters, length limit and onChanged.
              // Confirming an edit must not submit the enclosing form.
              editable.userUpdateTextEditingValue(
                TextEditingValue.fromJSON(result),
                SelectionChangedCause.keyboard,
              );
            }
            return;
          } on MissingPluginException {
            // Keep the existing editor when the native bridge is unavailable.
          } on PlatformException {
            // An unavailable Activity must not leave the field locked.
          }
        }
      }
      if (mounted) {
        await _showFlutterInputDialog();
      }
    } finally {
      _editing = false;
    }
  }

  Future<void> _showFlutterInputDialog() async {
    final tcontext = Translations.of(context);
    await showDialog(
      context: context,
      barrierDismissible: false,
      routeSettings: const RouteSettings(name: "showTextFieldInputDialog"),
      builder: (context) {
        return SimpleDialog(
          title: Text(
            widget.title ?? "",
            style: const TextStyle(fontSize: ThemeConfig.kFontSizeListSubItem),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: _buildInputField(
                controller: widget.controller,
                focusNode: widget.focusNode,
                // On Android the outer field already tracks the shared value.
                undoController: _useNativeInput ? null : widget.undoController,
                readOnly: false,
                autofocus: true,
                onChanged: widget.onChanged,
                onEditingComplete: () {
                  FocusScope.of(context)
                      .focusInDirection(TraversalDirection.down);
                },
                onSubmitted: widget.onSubmitted,
                enabled: true,
                onTap: widget.onTap,
                onTapAlwaysCalled: widget.onTapAlwaysCalled,
                canRequestFocus: true,
                useAutocomplete:
                    widget.autocompleteCandidates?.isNotEmpty ?? false,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text(tcontext.meta.ok),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
