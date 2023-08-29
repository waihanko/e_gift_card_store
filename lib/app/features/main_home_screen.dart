import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:e_gift_card_store/app/constants/resources/app_images.dart';
import 'package:e_gift_card_store/app/constants/resources/app_strings.dart';
import 'package:e_gift_card_store/app/features/home/home_screen.dart';
import 'package:e_gift_card_store/app/features/item_category/item_category_screen.dart';
import 'package:e_gift_card_store/app/widgets/rounded_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  List<Widget> screens = [
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
      bottomNavigationBar: getBottomNavStyle2(),
      body: screens[currentSelectedIndex],
    );
  }

  getBottomNavStyle1() {
    return SnakeNavigationBar.color(
      elevation: 2,
      behaviour: SnakeBarBehaviour.floating,
      padding: const EdgeInsets.all(AppDimens.marginCardMedium),
      snakeViewColor: AppColors.secondaryButtonColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.iconColor,
      currentIndex: currentSelectedIndex,
      height: 58,
      backgroundColor: AppColors.primaryColor,
      snakeShape: SnakeShape.circle,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      onTap: (index) => setState(() => currentSelectedIndex = index),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppImages.icHome),
          activeIcon: SvgPicture.asset(AppImages.icHome),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_outlined),
          activeIcon: Icon(Icons.notifications_rounded),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit),
          activeIcon: Icon(Icons.ac_unit),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          activeIcon: Icon(Icons.shopping_cart_rounded),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          activeIcon: Icon(Icons.account_circle_rounded),
        ),
      ],
    );
  }

  getBottomNavStyle2() {
    return BottomNavigationBar(
      currentIndex: currentSelectedIndex,
      enableFeedback: false,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontSize: 0),
      onTap: (index) => setState(() {
        currentSelectedIndex = index;
      }),
      items: [
        BottomNavigationBarItem(
          icon: RoundedIconWidget(
              icon: SvgPicture.asset(
                AppImages.icHome,
                width: 20,
              ),
              backgroundColor: Colors.transparent,
              onClickIcon: () => {
                    setState(() => currentSelectedIndex = 0),
                  }),
          activeIcon: RoundedIconWidget(
            icon: SvgPicture.asset(
              AppImages.icHomeActive,
              width: 20,
            ),
            backgroundColor: AppColors.secondaryButtonColor,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: RoundedIconWidget(
              icon: SvgPicture.asset(
                AppImages.icNoti,
                width: 20,
              ),
              backgroundColor: Colors.transparent,
              onClickIcon: () => {
                    setState(() => currentSelectedIndex = 1),
                  }),
          activeIcon: RoundedIconWidget(
            icon: SvgPicture.asset(
              AppImages.icNotiActive,
              width: 20,
            ),
            backgroundColor: AppColors.secondaryButtonColor,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: RoundedIconWidget(
              icon: Icon(
                Icons.ac_unit,
                color: Colors.black,
              ),
              backgroundColor: Colors.transparent,
              onClickIcon: () => {
                    setState(() => currentSelectedIndex = 2),
                  }),
          activeIcon: RoundedIconWidget(
            icon: Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
            backgroundColor: AppColors.secondaryButtonColor,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: RoundedIconWidget(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              backgroundColor: Colors.transparent,
              onClickIcon: () => {
                    setState(() => currentSelectedIndex = 3),
                  }),
          activeIcon: RoundedIconWidget(
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
            ),
            backgroundColor: AppColors.secondaryButtonColor,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: RoundedIconWidget(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
              ),
              backgroundColor: Colors.transparent,
              onClickIcon: () => {
                    setState(() => currentSelectedIndex = 4),
                  }),
          activeIcon: RoundedIconWidget(
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
            ),
            backgroundColor: AppColors.secondaryButtonColor,
          ),
          label: '',
        ),
      ],
    );
  }
}
