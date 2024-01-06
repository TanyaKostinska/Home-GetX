import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_getx/controller/second_controller.dart';

class SecondScreen extends GetView<SecondController> {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Column(
        children: [
          const AnimatedOpacity(opacity: 0.5, duration: Duration(seconds: 3)),
          const SizedBox(height: 150),
          Obx(
            () => InkWell(
              child: Center(
                child: Container(
                  color: controller.isSquare.value ? Colors.indigo : Colors.blue,
                  height: controller.isSquare.value ? 250 : 300,
                  width: controller.isSquare.value ? 250 : 300,
                ),
              ),
              onTap: () => controller.changeSquare(),
            ),
          ),
        ],
      ),
    );
  }
}
