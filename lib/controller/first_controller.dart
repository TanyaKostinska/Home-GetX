import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstController extends GetxController {
  final RxBool isLightTheme = true.obs;
  final RxBool isCircle = false.obs;


  void changeTheme() {
    isLightTheme.value = !isLightTheme.value;
    Get.changeTheme(isLightTheme.value ? ThemeData.light() : ThemeData.dark());
  }

  changeCirce() {
    isCircle.toggle();
  }


}
