import 'package:get/get.dart';
// import 'package:somuse_app_client/pages/index.dart';
import 'index.dart';

/// 主界面依赖
class MainBinding implements Bindings {
  @override
  void dependencies() {
    // 在controller中设置onJumpToPage方法中的index
    /// Get.lazyPut<HomeController>(() => HomeController());
    Get.put(MainController());

    // Get.put(CreationController());

    ///Get.put(ProfileController());
  }
}
