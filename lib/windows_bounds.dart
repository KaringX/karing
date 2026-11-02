import 'dart:ui';

import 'package:flutter_single_instance/flutter_single_instance.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:screen_retriever/screen_retriever.dart';

class WindowBounds {
  static bool _windowBoundsDirty = false;

  // Restores the window to its last saved position/size
  static Future<bool> loadWindowBounds() async {
    final windowConfig = SettingManager.getConfig().window;
    if (windowConfig.width <= 0 || windowConfig.height <= 0) {
      return false;
    }
    if (windowConfig.x < 0) {
      windowConfig.x = 0;
    }
    if (windowConfig.y < 0) {
      windowConfig.y = 0;
    }
    if (windowConfig.width < SettingConfigItemWindow.kMinWindowSize.width) {
      windowConfig.width = SettingConfigItemWindow.kMinWindowSize.width;
    }
    if (windowConfig.height < SettingConfigItemWindow.kMinWindowSize.height) {
      windowConfig.height = SettingConfigItemWindow.kMinWindowSize.height;
    }
    final bounds = Rect.fromLTWH(
      windowConfig.x,
      windowConfig.y,
      windowConfig.width,
      windowConfig.height,
    );
    try {
      final displays = await screenRetriever.getAllDisplays();
      final fitsAnyDisplay = displays.any((display) {
        final visiblePosition = display.visiblePosition ?? Offset.zero;
        final visibleSize = display.visibleSize ?? display.size;
        return (visiblePosition & visibleSize).overlaps(bounds);
      });
      if (!fitsAnyDisplay) {
        return false;
      }
    } catch (err) {
      return false;
    }

    await windowManager.setBounds(bounds);
    return true;
  }

  static Future<void> saveWindowBounds() async {
    if (!_windowBoundsDirty) {
      return;
    }
    _windowBoundsDirty = false;
    await SettingManager.save();
  }

  static Future<void> updateWindowBounds() async {
    if (!PlatformUtils.isPC()) {
      return;
    }
    final bounds = await windowManager.getBounds();
    if (bounds.width < SettingConfigItemWindow.kMinWindowSize.width - 1 ||
        bounds.height < SettingConfigItemWindow.kMinWindowSize.height - 1) {
      return;
    }
    if (bounds.left <= -SettingConfigItemWindow.kMinWindowSize.width - 1 ||
        bounds.top <= -SettingConfigItemWindow.kMinWindowSize.height - 1) {
      return;
    }
    final windowConfig = SettingManager.getConfig().window;
    windowConfig.x = bounds.left;
    windowConfig.y = bounds.top;
    windowConfig.width = bounds.width;
    windowConfig.height = bounds.height;
    _windowBoundsDirty = true;
  }
}
