import 'dart:io';

import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/vpn_action_handler.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:tray_manager/tray_manager.dart';

/*
class TrayConnected {
  Future<void> Function()? onOpen;
  Future<void> Function()? onExit;
  TrayIcon? _trayIcon;
  Menu? _menu;

  MenuItem? _menuItemDisconnect;

  MenuItem? _menuItemOpen;
  MenuItem? _menuItemExit;
  void init({
    Future<void> Function()? onOpen,
    Future<void> Function()? onExit,
  }) {
    this.onOpen = onOpen;
    this.onExit = onExit;
    try {
      _trayIcon = TrayIcon.create();
      if (_trayIcon == null) {
        Log.w(" Tray Icon creation failed");
        return;
      }
      _trayIcon!.icon = ImageAsset.fromAsset(_getIcon());

      _trayIcon!.addListener((event) {
        if (event is TrayIconClickedEvent) {
          onOpen?.call();
        } else if (event is TrayIconRightClickedEvent) {
          _trayIcon!.closeContextMenu();
          _updateTrayMenu();
          _trayIcon!.openContextMenu();
        }
      });

      if (!Platform.isLinux) {
        _trayIcon!.setTooltip(AppUtils.getName());
      }

      _intiTrayMenu();
      _updateTrayMenu();
    } catch (e) {
      Log.e("Tray Icon initialization exception: $e");
    }
  }

  void dispose() {
    _trayIcon?.dispose();
    _menu?.dispose();
    _menuItemDisconnect?.dispose();

    _menuItemOpen?.dispose();
    _menuItemExit?.dispose();
  }

  void setIconVisible(bool visible) {
    _trayIcon?.setVisible(visible);
  }

  void setIconTitle(String title) {
    _trayIcon?.setTitle(title);
  }

  String _getIcon() {
    if (Platform.isWindows) {
      return 'assets/images/tray.ico';
    }
    return 'assets/images/tray.png';
  }

  void _intiTrayMenu() {
    if (_trayIcon == null) {
      return;
    }
    _menu = Menu.create();

    if (_menu == null) {
      Log.w("Tray Menu creation failed");
      return;
    }

    _menuItemDisconnect = MenuItem.createWithLabelAndType(
      t.meta.disconnect,
      MenuItemType.normal,
    )!;

    _menuItemOpen = MenuItem.createWithLabelAndType(
      t.main.tray.menuOpen,
      MenuItemType.normal,
    )!;
    _menuItemExit = MenuItem.createWithLabelAndType(
      t.main.tray.menuExit,
      MenuItemType.normal,
    )!;

    _menuItemDisconnect!.addListener((event) {
      if (event is MenuItemClickedEvent) {
        VpnActionHandler.vpnDisconnect?.call("menu", false);
      }
    });

    _menuItemOpen!.addListener((event) async {
      if (event is MenuItemClickedEvent) {
        await onOpen?.call();
      }
    });
    _menuItemExit!.addListener((event) async {
      if (event is MenuItemClickedEvent) {
        await onExit?.call();
      }
    });

    _menu!.addItem(_menuItemDisconnect!);
    _menu!.addSeparator();

    _menu!.addItem(_menuItemOpen!);
    _menu!.addItem(_menuItemExit!);

    _trayIcon!.setContextMenu(_menu);
  }

  void _updateTrayMenu() {}
}

class TrayDisconnected {
  Future<void> Function()? onOpen;
  Future<void> Function()? onExit;
  TrayIcon? _trayIcon;
  Menu? _menu;

  MenuItem? _menuItemConnect;

  MenuItem? _menuItemOpen;
  MenuItem? _menuItemExit;
  void init({
    Future<void> Function()? onOpen,
    Future<void> Function()? onExit,
  }) {
    this.onOpen = onOpen;
    this.onExit = onExit;
    try {
      _trayIcon = TrayIcon.create();
      if (_trayIcon == null) {
        Log.w(" Tray Icon creation failed");
        return;
      }
      _trayIcon!.icon = ImageAsset.fromAsset(_getIcon());

      _trayIcon!.addListener((event) {
        if (event is TrayIconClickedEvent) {
          onOpen?.call();
        } else if (event is TrayIconRightClickedEvent) {
          _trayIcon!.closeContextMenu();
          _updateTrayMenu();
          _trayIcon!.openContextMenu();
        }
      });

      if (!Platform.isLinux) {
        _trayIcon!.setTooltip(AppUtils.getName());
      }

      _intiTrayMenu();
      _updateTrayMenu();
    } catch (e) {
      Log.e("Tray Icon initialization exception: $e");
    }
  }

  void dispose() {
    _trayIcon?.dispose();
    _menu?.dispose();
    _menuItemConnect?.dispose();

    _menuItemOpen?.dispose();
    _menuItemExit?.dispose();
  }

  void setIconVisible(bool visible) {
    _trayIcon?.setVisible(visible);
  }

  void setIconTitle(String title) {
    _trayIcon?.setTitle(title);
  }

  String _getIcon() {
    if (Platform.isWindows) {
      return 'assets/images/grey_tray.ico';
    }
    return 'assets/images/grey_tray.png';
  }

  void _intiTrayMenu() {
    if (_trayIcon == null) {
      return;
    }
    _menu = Menu.create();

    if (_menu == null) {
      Log.w("Tray Menu creation failed");
      return;
    }

    _menuItemConnect = MenuItem.createWithLabelAndType(
      t.meta.connect,
      MenuItemType.normal,
    )!;

    _menuItemOpen = MenuItem.createWithLabelAndType(
      t.main.tray.menuOpen,
      MenuItemType.normal,
    )!;
    _menuItemExit = MenuItem.createWithLabelAndType(
      t.main.tray.menuExit,
      MenuItemType.normal,
    )!;

    _menuItemConnect!.addListener((event) {
      if (event is MenuItemClickedEvent) {
        VpnActionHandler.vpnConnect?.call("menu", false);
      }
    });

    _menuItemOpen!.addListener((event) async {
      if (event is MenuItemClickedEvent) {
        await onOpen?.call();
      }
    });
    _menuItemExit!.addListener((event) async {
      if (event is MenuItemClickedEvent) {
        await onExit?.call();
      }
    });

    _menu!.addItem(_menuItemConnect!);
    _menu!.addSeparator();

    _menu!.addItem(_menuItemOpen!);
    _menu!.addItem(_menuItemExit!);

    _trayIcon!.setContextMenu(_menu);
  }

  void _updateTrayMenu() {}
}

class Tray {
  TrayConnected? trayConnected;
  TrayDisconnected? trayDisconnected;

  void init({
    Future<void> Function()? onOpen,
    Future<void> Function()? onExit,
  }) {
    if (!PlatformUtils.isPC()) {
      return;
    }
    trayConnected = TrayConnected();
    trayDisconnected = TrayDisconnected();
    trayConnected!.init(onOpen: onOpen, onExit: onExit);
    trayDisconnected!.init(onOpen: onOpen, onExit: onExit);

    trayConnected!.setIconVisible(false);
    trayDisconnected!.setIconVisible(true);
  }

  void dispose() {
    trayConnected?.dispose();
    trayDisconnected?.dispose();
    trayConnected = null;
    trayDisconnected = null;
  }

  void setIconDisconneted(bool disconnected) {
    if (disconnected) {
      trayConnected?.setIconVisible(false);
      trayDisconnected?.setIconVisible(true);
    } else {
      trayConnected?.setIconVisible(true);
      trayDisconnected?.setIconVisible(false);
    }
  }

  void setIconTitleForConnected(String title) {
    trayConnected?.setIconTitle(title);
  }

  void setIconTitleForDisconnected(String title) {
    trayDisconnected?.setIconTitle(title);
  }
}
*/
