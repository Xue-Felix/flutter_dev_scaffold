import 'package:flutter/material.dart';
import 'package:getx_scaffold/getx_scaffold.dart';

import 'index.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  // 主视图
  Widget _buildView() {
    return <Widget>[
      Wrap(children: [
        // Container(height: 100.w, color: Colors.red),
        Flex(direction: Axis.horizontal, children: [
          Flexible(
              child: Container(
            height: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(100, 100, 111, 0.2),
                  offset: Offset(0, 7), // X: 0px, Y: 7px
                  blurRadius: 29, // 模糊半径
                  spreadRadius: 0, // 扩散半径
                ),
              ],
              gradient: const LinearGradient(
                begin: Alignment.centerLeft, // 从左开始
                end: Alignment.centerRight, // 到右结束
                colors: [
                  Color.fromARGB(255, 173, 83, 137), // rgb(173, 83, 137)
                  Color.fromARGB(255, 60, 16, 83), // rgb(60, 16, 83)
                ],
              ),
            ),
            child: Center(
              child: Center(
                  child: TextX(
                "身份证登记",
                color: Colors.white,
                size: 16.sp,
                weight: FontWeight.bold,
              )),
            ),
          )),
          SizedBox(width: 10.w),
          Flexible(
              child: Container(
            height: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(100, 100, 111, 0.2),
                  offset: Offset(0, 7), // X: 0px, Y: 7px
                  blurRadius: 29, // 模糊半径
                  spreadRadius: 0, // 扩散半径
                ),
              ],
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(21, 153, 87, 1),
                  Color.fromRGBO(21, 87, 153, 1),
                ],
              ),
            ),
            child: Center(
                child: TextX(
              "无证件登记",
              color: Colors.white,
              size: 16.sp,
              weight: FontWeight.bold,
            )),
          )),
        ]).padding(
          left: 10.w,
          right: 10.w,
          top: 10.w,
        ),
        Flex(direction: Axis.horizontal, children: [
          Flexible(
              child: Container(
            height: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(100, 100, 111, 0.2),
                  offset: Offset(0, 7), // X: 0px, Y: 7px
                  blurRadius: 29, // 模糊半径
                  spreadRadius: 0, // 扩散半径
                ),
              ],
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(22, 191, 253, 1.0),
                  Color.fromRGBO(203, 48, 102, 1.0),
                ],
              ),
            ),
            child: Center(
              child: Center(
                  child: TextX(
                "拍照登记",
                color: Colors.white,
                size: 16.sp,
                weight: FontWeight.bold,
              )),
            ),
          )),
          SizedBox(width: 10.w),
          Flexible(
              child: Container(
            height: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(100, 100, 111, 0.2),
                  offset: Offset(0, 7), // X: 0px, Y: 7px
                  blurRadius: 29, // 模糊半径
                  spreadRadius: 0, // 扩散半径
                ),
              ],
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(195, 55, 100, 1.0),
                  Color.fromRGBO(29, 38, 113, 1.0),
                ],
              ),
            ),
            child: Center(
                child: TextX(
              "输入登记",
              color: Colors.white,
              size: 16.sp,
              weight: FontWeight.bold,
            )),
          )),
        ]).padding(left: 10.w, right: 10.w, top: 10.w)
      ])
    ].toColumn();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      init: RegisterController(),
      id: "register",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("信息登记"), centerTitle: true),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
