import 'dart:io';
import 'package:collection/collection.dart';

import 'package:karing/app/modules/remote_config.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/utils/install_referrer_utils.dart';

abstract class AppleUtils {
  static String getTestFlightUrl() {
    final config = RemoteConfigManager.getConfig();
    final name = InstallReferrerUtils.getAppleTestFlightName();
    return _findChannelByName(config.channels, name)?.url ?? "";
  }

  static String getAppStoreUrl() {
    final config = RemoteConfigManager.getConfig();
    final name = InstallReferrerUtils.getAppleAppstoreName();
    return _findChannelByName(config.channels, name)?.url ?? "";
  }

  static Future<String> getRateUrl() async {
    if (Platform.isIOS || Platform.isMacOS) {
      final config = RemoteConfigManager.getConfig();
      final channelName = await InstallReferrerUtils.getString();
      return _findChannelByNameAndPlatfom(
                  config.channels, channelName, Platform.operatingSystem)
              ?.rateUrl ??
          "";
    }
    return "";
  }

  static RemoteConfigChannel? _findChannelByName(
      List<RemoteConfigChannel> channels, String name) {
    return channels.firstWhereOrNull((channel) => channel.channel == name);
  }

  static RemoteConfigChannel? _findChannelByNameAndPlatfom(
      List<RemoteConfigChannel> channels, String name, String platform) {
    return channels.firstWhereOrNull((channel) =>
        (channel.channel == name) && (channel.platform == platform));
  }
}
