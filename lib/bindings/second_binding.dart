import 'package:get/get.dart';
import 'package:home_getx/controller/second_controller.dart';

class SecondBinding implements Bindings {
  @override
  void dependencies() {
   Get.put(SecondController());
  }

}