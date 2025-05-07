import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/log.dart';

class AppLifecycleStateNofity {
  static int _hashCode = 0;

  static final Map<int, void Function()> _onStateResumed = {};
  static final Map<int, void Function()> _onStateInactive = {};
  static final Map<int, void Function()> _onStatePaused = {};
  static bool _isPaused = false;

  static void init() {}
  static void uninit() {
    _onStateResumed.clear();
    _onStateInactive.clear();
    _onStatePaused.clear();
  }

  static void onStateResumed(int? hashcode, void Function()? callback) {
    if (hashcode == null) {
      if (callback != null) {
        _onStateResumed[_hashCode++] = callback;
      }
    } else {
      if (callback != null) {
        _onStateResumed[hashcode] = callback;
      } else {
        _onStateResumed.remove(hashcode);
      }
    }
  }

  static void onSatetInactive(int? hashcode, void Function()? callback) {
    if (hashcode == null) {
      if (callback != null) {
        _onStateInactive[_hashCode++] = callback;
      }
    } else {
      if (callback != null) {
        _onStateInactive[hashcode] = callback;
      } else {
        _onStateInactive.remove(hashcode);
      }
    }
  }

  static void onStatePaused(int? hashcode, void Function()? callback) {
    if (hashcode == null) {
      if (callback != null) {
        _onStatePaused[_hashCode++] = callback;
      }
    } else {
      if (callback != null) {
        _onStatePaused[hashcode] = callback;
      } else {
        _onStatePaused.remove(hashcode);
      }
    }
  }

  static void stateLaunch(bool launchAtStartup) {
    AnalyticsUtils.logEvent(
      analyticsEventType: analyticsEventTypeActive,
      name: 'app_state',
      parameters: {"state": "launch", "launch_at_startup": launchAtStartup},
    );

    if (launchAtStartup) {
      Log.d("stateLaunch:launch_at_startup");
    } else {
      Log.d("stateLaunch");
    }
  }

  static void stateResumed(String detail) {
    if (_isPaused) {
      AnalyticsUtils.logEvent(
          analyticsEventType: analyticsEventTypeActive,
          name: 'app_state',
          parameters: {"state": "resumed", "detail": detail},
          repeatable: false);
    }
    _isPaused = false;
    Log.d("stateResumed:$detail");

    Future.delayed(const Duration(milliseconds: 10), () async {
      _onStateResumed.forEach((key, value) {
        value();
      });
    });
  }

  static void stateInactive(String detail) {
    Future.delayed(const Duration(milliseconds: 10), () {
      _onStateInactive.forEach((key, value) {
        value();
      });
    });
  }

  static void statePaused(String detail) {
    if (!_isPaused) {
      AnalyticsUtils.logEvent(
          analyticsEventType: analyticsEventTypeActive,
          name: 'app_state',
          parameters: {"state": "paused", "detail": detail},
          repeatable: false);
    }
    _isPaused = true;
    Log.d("statePaused:$detail");

    Future.delayed(const Duration(milliseconds: 10), () async {
      _onStatePaused.forEach((key, value) {
        value();
      });
    });
  }

  static bool isPaused() {
    return _isPaused;
  }
}
