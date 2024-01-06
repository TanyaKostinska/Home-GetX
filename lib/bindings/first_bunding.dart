import 'package:get/get.dart';
import 'package:home_getx/controller/first_controller.dart';


class FirstBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(FirstController());
  }


}

