import 'package:flutter/material.dart';
import 'package:getx_scaffold/getx_scaffold.dart';
import 'package:sliver_app_bar_builder/sliver_app_bar_builder.dart';

import 'index.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  // final _plugins = initializePlugins(
  //   knobsSidePanel: true,
  //   contentsSidePanel: true,
  //   initialDeviceFrameData: DeviceFrameData(
  //     device: Devices.ios.iPhone13ProMax,
  //   ),
  // );

  // 主视图
  Widget _buildView() {
    return CustomScrollView(
      slivers: [
        SliverAppBarBuilder(
          barHeight: 30,
          pinned: true,
          leadingActions: [
            (context, expandRatio, barHeight, overlapsContent) {
              return const SizedBox();
            }
          ],
          initialContentHeight: 150,
          initialBarHeight: 40,
          // backgroundColorBar: Colors.blue,
          backgroundColorAll: Colors.white,
          contentBuilder: (context, expandRatio, contentHeight, centerPadding,
              overlapsContent) {
            return Container(
              alignment: Alignment.centerLeft,
              height: 60,
              transform:
                  Matrix4.translationValues(10 + (1 - expandRatio) * 40, 0, 0),
              child: Text(
                'Xue丶',
                style: TextStyle(
                  fontSize: 22 + expandRatio * 10,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      id: "profile",
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.amber,
          body: _buildView(),
        );
      },
    );
    // return GetBuilder<ProfileController>(
    //   init: ProfileController(),
    //   id: "profile",
    //   builder: (_) {
    //     return Scaffold(
    //       body: CustomScrollView(
    //         slivers: [
    //           SliverAppBarBuilder(
    //             barHeight: 60,
    //             pinned: true,
    //             leadingActions: [
    //               (context, expandRatio, barHeight, overlapsContent) {
    //                 return SizedBox(
    //                   height: barHeight,
    //                   child: const BackButton(),
    //                 );
    //               }
    //             ],
    //             initialContentHeight: 150,
    //             initialBarHeight: 40,
    //             contentBuilder: (context, expandRatio, contentHeight,
    //                 centerPadding, overlapsContent) {
    //               return Container(
    //                 alignment: Alignment.centerLeft,
    //                 height: 60,
    //                 transform: Matrix4.translationValues(
    //                     10 + (1 - expandRatio) * 40, 0, 0),
    //                 child: Text(
    //                   'My Title',
    //                   style: TextStyle(
    //                     fontSize: 22 + expandRatio * 10,
    //                     color: Colors.white,
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //               );
    //             },
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
