import 'package:e_gift_card_store/app/presentation/home/home_screen.dart';
import 'package:e_gift_card_store/app/presentation/intro/intro_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/auth_wrapper.controller.dart';
/// Root for wrapping the entire app in auth state.
class AuthWrapperScreen extends StatelessWidget {
  const AuthWrapperScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX<AuthWrapperController>(
      init: AuthWrapperController(),
      initState: (_) {},
      builder: (controller) {
        if (!controller.signedIn) {
          return const IntroScreen();
        }
        return const HomeScreen();
      },
    );
  }
}
