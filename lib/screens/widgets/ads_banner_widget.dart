import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' as google;
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/private/ads_private.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/sentry_utils.dart';

class AdsBannerWidget extends StatefulWidget {
  static int adHeight = google.AdSize.banner.height;
  final bool fixedHeight;
  final double adWidth;
  final String bannerName;
  const AdsBannerWidget({
    super.key,
    required this.fixedHeight,
    required this.adWidth,
    this.bannerName = "",
  });
  static double getRealHeight(bool fixedHeight, bool showAd, int adHeight) {
    double height = 0;
    if (Platform.isAndroid || Platform.isIOS) {
      if (fixedHeight || showAd) {
        height = adHeight.toDouble() + 4.0;
      }
    } else {
      height = 20;
    }
    return height;
  }

  static bool getEnable() {
    var settingConfig = SettingManager.getConfig();
    var remoteConfig = RemoteConfigManager.getConfig();
    if (remoteConfig.adManualEnable && settingConfig.ads.bannerEnable) {
      return PlatformUtils.isMobile();
    }
    if (AdsPrivate.getEnable()) {
      String rewardAdExpireTime =
          settingConfig.ads.getBannerRewardAdExpire(settingConfig.languageTag);
      String shareExpireTime =
          settingConfig.ads.getBannerShareExpire(settingConfig.languageTag);

      return rewardAdExpireTime.isEmpty && shareExpireTime.isEmpty;
    }

    return false;
  }

  @override
  State<AdsBannerWidget> createState() => _AdsBannerWidgetState();
}

class _AdsBannerWidgetState extends State<AdsBannerWidget> {
  late google.AdSize adSize;

  bool _googleBannerAdIsLoading = false;
  bool _googleBannerAdIsLoaded = false;
  google.BannerAd? _googleBannerAd;
  bool _clicked = false;

  @override
  void initState() {
    adSize = google.AdSize(
        height: AdsBannerWidget.adHeight, width: widget.adWidth.toInt());
    AppLifecycleStateNofity.onStateResumed(hashCode, () async {
      if (AdsBannerWidget.getEnable()) {
        _loadGoogleBannerAd(false);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    AppLifecycleStateNofity.onStateResumed(hashCode, null);
    _disposeGoogleBannerAd();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool googleAd = isGoogleAdReady();

    double height = AdsBannerWidget.getRealHeight(
        widget.fixedHeight, googleAd, adSize.height);

    return Container(
        height: height,
        alignment: Alignment.center,
        child: AdsBannerWidget.getEnable()
            ? Stack(
                children: [
                  Visibility(
                      visible: googleAd,
                      child: Positioned(
                          child: googleAd
                              ? google.AdWidget(ad: _googleBannerAd!)
                              : const SizedBox.shrink())),
                ],
              )
            : null);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (AdsBannerWidget.getEnable()) {
      _loadGoogleBannerAd(true);
    }
  }

  bool isGoogleAdReady() {
    return _googleBannerAdIsLoaded && _googleBannerAd != null;
  }

  void _disposeGoogleBannerAd() {
    _googleBannerAd?.dispose();
    _googleBannerAd = null;
    _googleBannerAdIsLoaded = false;
    _googleBannerAdIsLoading = false;
  }

  Future<void> _loadGoogleBannerAd(bool forceReload) async {
    if (!mounted) {
      return;
    }
    if (_clicked) {
      return;
    }

    try {
      if (_googleBannerAdIsLoading) {
        return;
      }
      if (!forceReload) {
        if (_googleBannerAd != null) {
          return;
        }
      }
      _googleBannerAd?.dispose();
      _googleBannerAd = null;
      _googleBannerAdIsLoaded = false;
      _googleBannerAdIsLoading = true;

      setState(() {});
      var adUnitId =
          AdsPrivate.getAdID(AdType.googleBannerAd, name: widget.bannerName);
      var googleBannerAd = google.BannerAd(
        adUnitId: adUnitId,
        size: adSize,
        request: const google.AdRequest(),
        listener: google.BannerAdListener(
          onAdLoaded: (google.Ad ad) {
            if (!mounted) {
              ad.dispose();
              return;
            }

            _googleBannerAd = ad as google.BannerAd;
            _googleBannerAdIsLoaded = true;
            _googleBannerAdIsLoading = false;
            setState(() {});
          },
          onAdFailedToLoad: (google.Ad ad, google.LoadAdError error) {
            ad.dispose();
            if (!mounted) {
              return;
            }
            _googleBannerAdIsLoaded = false;
            _googleBannerAdIsLoading = false;
            setState(() {});
          },
          onAdClicked: (ad) {
            if (!mounted) {
              return;
            }
            _clicked = true;
            _disposeGoogleBannerAd();
            setState(() {});
          },
        ),
      );
      await googleBannerAd.load();
    } catch (err, stacktrace) {
      SentryUtils.captureException(
          'AdsRewardWidget._loadGoogleBannerAd.exception', [], err, stacktrace);
    }
  }
}

class AdsRewardError {
  final int code;
  final String message;
  AdsRewardError(this.code, this.message);
  @override
  String toString() {
    return 'code: $code, message: $message';
  }
}

class AdsRewardWidget {
  static void loadGoogleRewardedAd(Function(AdsRewardError? err) callback) {
    try {
      var adUnitId = AdsPrivate.getAdID(AdType.googleRewardedAd);
      google.RewardedAd.load(
          adUnitId: adUnitId,
          request: const google.AdRequest(),
          rewardedAdLoadCallback: google.RewardedAdLoadCallback(
            onAdLoaded: (ad) {
              ad.fullScreenContentCallback = google.FullScreenContentCallback(
                onAdShowedFullScreenContent: (ad) {},
                onAdImpression: (ad) {},
                onAdFailedToShowFullScreenContent: (ad, err) {
                  ad.dispose();
                  callback(AdsRewardError(err.code, err.message));
                },
                onAdDismissedFullScreenContent: (ad) {
                  ad.dispose();
                },
                onAdClicked: (ad) {},
              );

              ad.show(onUserEarnedReward: (google.AdWithoutView ad,
                  google.RewardItem rewardItem) async {
                ad.dispose();
                callback(null);
              });
            },
            onAdFailedToLoad: (google.LoadAdError error) {
              callback(AdsRewardError(error.code, error.message));
            },
          ));
    } catch (err, stacktrace) {
      callback(AdsRewardError(-1, err.toString()));
      SentryUtils.captureException(
          'AdsRewardWidget.loadGoogleRewardedAd.exception',
          [],
          err,
          stacktrace);
    }
  }
}
