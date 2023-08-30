import 'package:e_gift_card_store/app/infrastructure/routes.dart';
import 'package:e_gift_card_store/app/presentation/home/home_screen.dart';
import 'package:e_gift_card_store/app/presentation/splash/splash.screen.dart';
import 'package:e_gift_card_store/app/presentation/walkthrough/walkthrough.screen.dart';
import 'package:get/get.dart';

import '../presentation/auth_wrapper/auth_wrapper.screen.dart';
import '../presentation/landing_page/landing_page_screen.dart';
import 'bindings/controllers/auth_wrapper_controller_binding.dart';
import 'bindings/controllers/landing_page_controller_binding.dart';
import 'bindings/controllers/walkthrough_controller_binding.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.landingPage,
      page: () => const LandingPageScreen(),
      binding: LandingPageControllerBinding(),
    ),
    GetPage(
      name: Routes.authWrapper,
      page: () => const AuthWrapperScreen(),
      binding: AuthWrapperControllerBinding(),
    ),
    GetPage(
      name: Routes.walkthrough,
      page: () => const WalkthroughScreen(),
      binding: WalkthroughControllerBinding(),
    ),
  ];
}
