import 'package:getx_scaffold/getx_scaffold.dart';

class DiscoverController extends GetxController with BaseControllerMixin {
  DiscoverController();

  @override
  String get builderId => 'discover';

  _initData() {
    updateUi();
  }

  @override
  void onInit() {
    super.onInit();
    _initData();
  }
}
