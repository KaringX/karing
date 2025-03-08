import 'package:flutter/widgets.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/screens/widgets/routes.dart';

abstract class LasyRenderingStatefulWidget extends StatefulWidget {
  const LasyRenderingStatefulWidget({super.key});
}

abstract class LasyRenderingState<T extends LasyRenderingStatefulWidget>
    extends State<T> {
  late int _hashCode;
  bool _needRedraw = false;
  @override
  void initState() {
    super.initState();
    _hashCode = Object.hashAll([this, this]);
    AppLifecycleStateNofity.onStateResumed(_hashCode, () async {
      _tryRedraw("onStateResumed");
    });
    AppRouteObserver.instance.pushRoute(hashCode);
    AppRouteObserver.instance.onRouteChanged(hashCode, () {
      _tryRedraw("onRouteChanged");
    });
  }

  @override
  void dispose() {
    AppLifecycleStateNofity.onStateResumed(_hashCode, null);
    AppRouteObserver.instance.onRouteChanged(hashCode, null);
    AppRouteObserver.instance.popRoute(hashCode);

    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    if (!mounted) {
      return;
    }
    _needRedraw = true;
    if (AppLifecycleStateNofity.isPaused()) {
      _print("delay redraw by paused:${T.toString()} $hashCode ");
      return;
    }
    if (hashCode != AppRouteObserver.instance.currentRoute()) {
      _print("delay redraw by route:${T.toString()} $hashCode");
      return;
    }
    _print("redraw by setState:${T.toString()} $hashCode");
    _needRedraw = false;
    super.setState(fn);
  }

  void _tryRedraw(String from) {
    if (!mounted) {
      return;
    }
    if (hashCode != AppRouteObserver.instance.currentRoute()) {
      return;
    }
    if (!_needRedraw) {
      return;
    }
    _print("redraw by route $from :${T.toString()} $hashCode");
    _needRedraw = false;
    setState(() {});
  }

  void _print(Object? object) {
    //print(object);
  }
}
