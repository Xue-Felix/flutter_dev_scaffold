import 'package:flutter/material.dart';
import 'package:getx_scaffold/getx_scaffold.dart';

class CategoryController extends GetxController with BaseControllerMixin {
  CategoryController();
  Color color = Colors.blue;

  @override
  String get builderId => 'category';

  _initData() {
    // update(["category"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  setPageColor() {
    if (color == Colors.blue) {
      color = Colors.red;
    } else {
      color = Colors.blue;
    }
    updateUi();
  }
}
