import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/resources/app_colors.dart';

class ThemeService extends GetxService {
  bool get isDarkMode => _isDarkMode.value;
  final _isDarkMode = false.obs;

  void changeTheme() {
    _isDarkMode.value = !_isDarkMode.value;
    Get.changeThemeMode(_isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
    _isDarkMode.refresh();
  }

  Color get primaryTextColor =>
      isDarkMode ? AppColors.kDark : AppColors.kDark;
}
