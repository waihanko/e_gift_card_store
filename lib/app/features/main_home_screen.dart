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
      bottomNavigationBar: getBottomNavStyle2(),
      body: screens[currentSelectedIndex],
    );
  }

  getBottomNavStyle1() {
    return SnakeNavigationBar.color(
      elevation: 2,
      behaviour: SnakeBarBehaviour.floating,
      padding: const EdgeInsets.all(AppDimens.marginCardMedium),
      snakeViewColor: AppColors.kRed,
      selectedItemColor: AppColors.kPrimary,
      unselectedItemColor: AppColors.kDark,
      currentIndex: currentSelectedIndex,
      height: 58,
      backgroundColor: AppColors.kPrimary,
      snakeShape: SnakeShape.circle,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      onTap: (index) => setState(() => currentSelectedIndex = index),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssets.kHomeIcon),
          activeIcon: SvgPicture.asset(AppAssets.kHomeActiveIcon),
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
          label: '',
          icon: RoundedIconWidget(
              icon: SvgPicture.asset(AppAssets.kHomeIcon),
              backgroundColor: Colors.transparent,
              onClickIcon: () => {
                    setState(() => currentSelectedIndex = 0),
                  }),
          activeIcon: RoundedIconWidget(
            icon: SvgPicture.asset(AppAssets.kHomeActiveIcon),
            backgroundColor: AppColors.kRed,
          ),
        ),
        BottomNavigationBarItem(
          icon: RoundedIconWidget(
              icon: SvgPicture.asset(AppAssets.kNotiIcon),
              backgroundColor: Colors.transparent,
              onClickIcon: () => {
                    setState(() => currentSelectedIndex = 1),
                  }),
          activeIcon: RoundedIconWidget(
            icon: SvgPicture.asset(
              AppAssets.kNotiActiveIcon,
            ),
            backgroundColor: AppColors.kRed,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: RoundedIconWidget(
              icon: SvgPicture.asset(AppAssets.kCategoIcon),
              backgroundColor: Colors.transparent,
              onClickIcon: () => {
                setState(() => currentSelectedIndex = 2),
              }),
          activeIcon: RoundedIconWidget(
            icon: SvgPicture.asset(
              AppAssets.kCategoActiveIcon,
            ),
            backgroundColor: AppColors.kRed,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: RoundedIconWidget(
              icon: SvgPicture.asset(AppAssets.kShoppingCartIcon),
              backgroundColor: Colors.transparent,
              onClickIcon: () => {
                    setState(() => currentSelectedIndex = 3),
                  }),
          activeIcon: RoundedIconWidget(
            icon: SvgPicture.asset(AppAssets.kShoppingCartActiveIcon),
            backgroundColor: AppColors.kRed,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: RoundedIconWidget(
              icon: SvgPicture.asset(AppAssets.kProfileIcon),
              backgroundColor: Colors.transparent,
              onClickIcon: () => {
                    setState(() => currentSelectedIndex = 4),
                  }),
          activeIcon: RoundedIconWidget(
            icon: SvgPicture.asset(AppAssets.kProfileActiveIcon),
            backgroundColor: AppColors.kRed,
          ),
          label: '',
        ),
      ],
    );
  }
}
