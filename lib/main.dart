import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_getx/bindings/first_bunding.dart';
import 'page/first_screen.dart';
import 'translation/translation.dart';

void main() {
  runApp(const GetXHome());
}

class GetXHome extends StatelessWidget {
  const GetXHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
      initialBinding: FirstBinding(),
      translations: Translat(),
      locale: const Locale('eng'),
    );
  }
}
