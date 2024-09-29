import 'package:flutter/material.dart';
import 'package:getx_scaffold/getx_scaffold.dart';
import 'package:flutter_dev_scaffold/common/index.dart';

import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  // 主视图
  Widget _buildView() {
    return Center(
      child: [
        const Text("SplashPage"),
        const ButtonX('To Main').onTap(() {
          Get.toNamed(RouteNames.main);
        }),
        const ButtonX('To Home').onTap(() {
          Get.toNamed(RouteNames.home);
        }),
        const ButtonX('去登记').onTap(() {
          Get.toNamed(RouteNames.systemRegister);
        }),
      ].toColumn(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return DoublePressBackWidget(
          child: Scaffold(
            appBar: AppBar(
              title: const Text("SplashPage"),
              centerTitle: true,
              elevation: 1,
            ),
            // floatingActionButton: _buildFloatingActionButton(),
            body: _buildView(),
          ),
        );
      },
    );
  }
}
