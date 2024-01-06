import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:home_getx/bindings/second_binding.dart';
import 'package:home_getx/controller/first_controller.dart';
import 'package:home_getx/page/second_screen.dart';

class FirstScreen extends GetView<FirstController> {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('GetX')),
      ),
      body: Column(
        children: [
          const SizedBox(height: 150),
          Obx(
            () => InkWell(
              child: Container(
                color: controller.isCircle.value
                    ? Colors.black38
                    : Colors.blueGrey,
                height: controller.isCircle.value ? 100 : 200,
                width: controller.isCircle.value ? 100 : 200,
              ),
              onTap: () => controller.changeCirce(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: OutlinedButton(
              onPressed: () => controller.changeTheme(),
              child: const Center(child: Text('Press me')),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () =>
                Get.to(const SecondScreen(), binding: SecondBinding()),
            child: const Text('Go To'),
          ),
          const SizedBox(height: 50),
          Text('Hello'.tr, style: Get.theme.textTheme.displaySmall),
        ],
      ),
    );
  }
}
