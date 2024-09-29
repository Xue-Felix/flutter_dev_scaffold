import 'package:getx_scaffold/getx_scaffold.dart';
import 'package:flutter_dev_scaffold/common/routers/observers.dart';
import 'package:flutter_dev_scaffold/pages/index.dart';

import 'names.dart';

class RoutePages {
  static final RouteObserver<Route> observer = RouteObservers();

  static final NavigatorObserver navigatorObserverProfile =
      NavigatorObservers();

  static final NavigatorObserver navigatorObserverDiscovery =
      NavigatorObservers();

  static List<String> history = [];
  static List<String> navigatorHistory = [];

  // 列表
  static List<GetPage> list = [
    // 首页
    GetPage(
      name: RouteNames.main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    // Splash
    GetPage(
      name: RouteNames.systemSplash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RouteNames.systemRegister,
      page: () => const RegisterPage(),
    ),
    // Home
    GetPage(
      name: RouteNames.home,
      page: () => const HomePage(),
    ),
  ];
}
