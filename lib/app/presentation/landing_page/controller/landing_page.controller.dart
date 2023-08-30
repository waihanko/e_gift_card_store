import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/home_screen.dart';
import '../../item_category/item_category_screen.dart';
import '../../notification/notification_screen.dart';
import '../../profile/profile_screen.dart';
import '../../shopping_cart/shopping_cart_screen.dart';

class LandingPageController extends GetxController {
  final pages = const <Widget>[
    HomeScreen(),
    NotificationScreen(),
    ItemCategoryScreen(),
    ShoppingCartScreen(),
    ProfileScreen(),
  ];

  int get currentIndex => _currentIndex.value;
  final RxInt _currentIndex = 0.obs;

  void setPage(int index) => _currentIndex.value = index;
}
