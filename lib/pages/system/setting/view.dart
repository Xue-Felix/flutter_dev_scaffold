import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SettingPage extends GetView<SettingController> {
  const SettingPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("SettingPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
      init: SettingController(),
      id: "setting",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("setting")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
