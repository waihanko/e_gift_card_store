import 'package:get/get.dart';

import '../../../presentation/landing_page/controller/landing_page.controller.dart';


class LandingPageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingPageController>(
      () => LandingPageController(),
    );
  }
}
