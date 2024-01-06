import 'package:get/get.dart';

class SecondController extends GetxController {
  final RxBool isSquare = false.obs;

  changeSquare() {
    isSquare.toggle();
  }


}