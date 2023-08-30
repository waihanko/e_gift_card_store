import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infrastructure/routes.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:   FloatingActionButton(
        onPressed: ()=> Get.toNamed(Routes.landingPage),
    ),
      body: Container(
        color: Colors.red,

      ),
    );
  }
}
