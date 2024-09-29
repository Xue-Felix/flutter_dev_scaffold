import 'package:flutter/material.dart';
import 'package:getx_scaffold/getx_scaffold.dart';

import 'index.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const _CategoryViewGetX();
  }
}

class _CategoryViewGetX extends GetView<CategoryController> {
  const _CategoryViewGetX();

  // 主视图
  Widget _buildView() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      color: controller.color,
      height: ScreenUtil().setHeight(100),
      child: Center(
        child: [
          ButtonX("Category", onPressed: () {
            controller.setPageColor();
          }),
        ].toColumn(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      init: CategoryController(),
      id: "category",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Category"),
          ),
          body: _buildView(),
        );
      },
    );
  }
}
