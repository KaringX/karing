import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:karing/app/utils/analytics_utils.dart';

class AppRouteObserver extends RouteObserver<ModalRoute<dynamic>> {
  static final AppRouteObserver instance = AppRouteObserver();
  final Map<int, void Function()> _onRouteChanged = {};
  final List<int> _routeStack = [];

  void onRouteChanged(int hashcode, void Function()? callback) {
    if (callback != null) {
      _onRouteChanged[hashcode] = callback;
    } else {
      _onRouteChanged.remove(hashcode);
    }
  }

  void pushRoute(int hashcode) {
    _routeStack.add(hashcode);
  }

  void popRoute(int hashcode) {
    _routeStack.remove(hashcode);
    Future.delayed(const Duration(milliseconds: 1), () async {
      routeChanged();
    });
  }

  int? currentRoute() => _routeStack.isNotEmpty ? _routeStack.last : null;

  void routeChanged() {
    _onRouteChanged.forEach((key, value) {
      value();
    });
  }

  void _sendScreenView(
      String action, Route<dynamic> route, Route<dynamic>? preRoute) {
    if (route.settings.name != null) {
      AnalyticsUtils.logEvent(
              analyticsEventType: analyticsEventTypeApp,
              name: "screen_view",
              parameters: {
                "action": action,
                "name": route.settings.name,
                "pre_name":
                    preRoute != null ? preRoute.settings.name ?? "" : null
              },
              repeatable: true)
          .catchError(
        (Object error) {},
        test: (Object error) => error is PlatformException,
      );
    }
  }

  bool routeFilter(Route<dynamic>? route) => route is PageRoute;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (routeFilter(route)) {
      routeChanged();
      _sendScreenView("push", route, previousRoute);
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if ((newRoute != null) && routeFilter(newRoute)) {
      routeChanged();
      _sendScreenView("replace", newRoute, oldRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if ((previousRoute != null) &&
        routeFilter(previousRoute) &&
        routeFilter(route)) {
      routeChanged();
      _sendScreenView("pop", previousRoute, route);
    }
  }
}
