import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:e_gift_card_store/app/features/home/home_screen.dart';
import 'package:e_gift_card_store/app/features/item_category/item_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import '../constants/resources/app_colors.dart';
import 'notification/notification_screen.dart';
import 'profile/profile_screen.dart';
import 'shopping_cart/shopping_cart_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int currentSelectedIndex = 0;
  List<Widget> screens=[
    HomeScreen(),
    NotificationScreen(),
    ItemCategoryScreen(),
    ShoppingCartScreen(),
    ProfileScreen(),
  ];
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        bottomNavigationBar: SnakeNavigationBar.color(
          behaviour: SnakeBarBehaviour.floating,
      padding: const EdgeInsets.all(AppDimens.marginCardMedium),
      snakeViewColor: AppColors.secondaryButtonColor,
      selectedItemColor: AppColors.selectedIconColor,
      currentIndex: currentSelectedIndex,
      height: 58,
      snakeShape: SnakeShape.circle,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      onTap: (index) => setState(() => currentSelectedIndex = index),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'tickets',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_outlined),
          activeIcon: Icon(Icons.notifications_rounded),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit) ,
          activeIcon: Icon(Icons.ac_unit),),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
          activeIcon: Icon(Icons.shopping_cart_rounded),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          activeIcon: Icon(Icons.account_circle_rounded),),
      ],
    ),
      body: screens[currentSelectedIndex],
    );
  }
}
