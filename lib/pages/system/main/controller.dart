import 'package:getx_scaffold/getx_scaffold.dart';

class MainController extends GetxController with BaseControllerMixin {
  @override
  String get builderId => 'main';

  MainController();

  @override
  void onInit() {
    super.onInit();

    initData();
  }

  initData() {
    updateUi();
  }
}
