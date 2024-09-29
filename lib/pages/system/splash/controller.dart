import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:getx_scaffold/getx_scaffold.dart';

class SplashController extends GetxController with BaseControllerMixin {
  SplashController();

  @override
  String get builderId => 'splash';

  @override
  void onInit() {
    super.onInit();

    init();
  }

  void init() {
    Future.delayed(const Duration(seconds: 3), () {
      FlutterNativeSplash.remove();
    });
  }
}
