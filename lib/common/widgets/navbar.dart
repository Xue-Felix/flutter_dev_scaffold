import 'package:flutter/material.dart';
import 'package:getx_scaffold/getx_scaffold.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:easy_record_app/pages/index.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: const DiscoverPage(),
          item: ItemConfig(
            icon: IconX.icon(
              AntdIcon.home,
              size: 24.sp,
            ),
            title: "Discover",
          ),
        ),
        PersistentTabConfig(
          screen: const CategoryPage(),
          item: ItemConfig(
            icon: const Icon(Icons.category),
            title: "Category",
          ),
        ),
        PersistentTabConfig(
          screen: const ProfilePage(),
          item: ItemConfig(
            icon: const Icon(Icons.settings),
            title: "Profile",
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) => PersistentTabView(
        tabs: _tabs(),
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      );
}
