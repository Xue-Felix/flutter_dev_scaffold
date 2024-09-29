import 'package:flutter/material.dart';
import 'package:getx_scaffold/getx_scaffold.dart';
import 'package:flutter_dev_scaffold/common/routers/index.dart';
import 'package:flutter_dev_scaffold/pages/index.dart';

class DiscoverPage extends GetView<DiscoverController> {
  const DiscoverPage({super.key});

  // 主视图
  Widget _buildView() {
    String image01 =
        "http://gips0.baidu.com/it/u=1690853528,2506870245&fm=3028&app=3028&f=JPEG&fmt=auto?w=1024&h=1024"; // 图片地址

    String image02 =
        "http://gips3.baidu.com/it/u=1821127123,1149655687&fm=3028&app=3028&f=JPEG&fmt=auto?w=720&h=1280"; // 图片地址

    List images = [image01, image02];

    return Center(
      child: [
        const Text("Discover Page"),
        ...images.map(
          (image) => Hero(
            tag: image,
            child: ImageX.url(
              image,
              width: 140.w,
              height: 140.h,
              radius: 10.w,
            ).paddingOnly(top: 20.w).onTap(() {
              Get.toNamed(RouteNames.easy_record_appDetail,
                  parameters: {"imageUrl": image, "heroTag": image});
            }),
          ),
        ),
      ].toColumn(mainAxisAlignment: MainAxisAlignment.start),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DiscoverController>(
      init: DiscoverController(),
      id: "discover",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
              title: const Text("discover"),
              leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Get.back();
                  })),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
