// ignore_for_file: constant_identifier_names

import 'package:flutter/services.dart';
import 'package:hotkey_manager/hotkey_manager.dart';

enum ChipType { action, delete }

enum CommonCardType { plain, filled }
//
// extension CommonCardTypeExt on CommonCardType {
//   CommonCardType get variant => CommonCardType.plain;
// }

enum KeyboardModifier {
  alt([
    PhysicalKeyboardKey.altLeft,
    PhysicalKeyboardKey.altRight,
  ]),
  capsLock([
    PhysicalKeyboardKey.capsLock,
  ]),
  control([
    PhysicalKeyboardKey.controlLeft,
    PhysicalKeyboardKey.controlRight,
  ]),
  fn([
    PhysicalKeyboardKey.fn,
  ]),
  meta([
    PhysicalKeyboardKey.metaLeft,
    PhysicalKeyboardKey.metaRight,
  ]),
  shift([
    PhysicalKeyboardKey.shiftLeft,
    PhysicalKeyboardKey.shiftRight,
  ]);

  final List<PhysicalKeyboardKey> physicalKeys;

  const KeyboardModifier(this.physicalKeys);
}

extension KeyboardModifierExt on KeyboardModifier {
  HotKeyModifier toHotKeyModifier() {
    return switch (this) {
      KeyboardModifier.alt => HotKeyModifier.alt,
      KeyboardModifier.capsLock => HotKeyModifier.capsLock,
      KeyboardModifier.control => HotKeyModifier.control,
      KeyboardModifier.fn => HotKeyModifier.fn,
      KeyboardModifier.meta => HotKeyModifier.meta,
      KeyboardModifier.shift => HotKeyModifier.shift,
    };
  }
}

enum FontFamily {
  twEmoji("Twemoji"),
  jetBrainsMono("JetBrainsMono"),
  icon("Icons");

  final String value;

  const FontFamily(this.value);
}
