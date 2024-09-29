import 'package:flutter_dev_scaffold/common/routers/pages.dart';
import 'package:getx_scaffold/getx_scaffold.dart';

/// 记录路由的变化
class RouteObservers<R extends Route<dynamic>> extends RouteObserver<R> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    var name = route.settings.name ?? '';

    if (name.isNotEmpty) RoutePages.history.add(name);
    Logger.d('didPush：$name');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    var name = route.settings.name ?? '';
    Logger.d('didPop：$name');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null) {
      var index = RoutePages.history.indexWhere((element) {
        return element == oldRoute?.settings.name;
      });
      var name = newRoute.settings.name ?? '';
      if (name.isNotEmpty) {
        if (index > 0) {
          RoutePages.history[index] = name;
        } else {
          RoutePages.history.add(name);
        }
      }
    }
    debugPrint('didReplace');
    debugPrint(RoutePages.history.toString());
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    RoutePages.history.remove(route.settings.name);
    debugPrint('didRemove');
    debugPrint(RoutePages.history.toString());
  }
}

class NavigatorObservers extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    String name = route.settings.name ?? "";
    RoutePages.navigatorHistory.remove(name);
    Logger.d('navigator pop $name');
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    String name = route.settings.name ?? "";
    RoutePages.navigatorHistory.add(name);
    Logger.d('navigator push $name');
  }
}
