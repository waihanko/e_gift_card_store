import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme.dart';
import 'components/custom_bottom_bar.dart';
import 'controller/landing_page.controller.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({Key? key}) : super(key: key);

  ThemeService get theme => Get.find<ThemeService>();

  @override
  Widget build(BuildContext context) {
    return GetX<LandingPageController>(
      init: LandingPageController(),
      initState: (_) {},
      builder: (controller) {
        return WillPopScope(
          onWillPop: () async {
            controller.setPage(0);
            return false;
          },
          child: Scaffold(
            body: controller.pages[controller.currentIndex],
            bottomNavigationBar: const CustomBottomBar(),
          ),
        );
      },
    );
  }
}
//
// getBottomNavStyle1() {
//   return SnakeNavigationBar.color(
//     elevation: 2,
//     behaviour: SnakeBarBehaviour.floating,
//     padding: const EdgeInsets.all(AppDimens.marginCardMedium),
//     snakeViewColor: AppColors.kRed,
//     selectedItemColor: AppColors.kPrimary,
//     unselectedItemColor: AppColors.kDark,
//     currentIndex: currentSelectedIndex,
//     height: 58,
//     backgroundColor: AppColors.kPrimary,
//     snakeShape: SnakeShape.circle,
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.all(Radius.circular(100)),
//     ),
//     onTap: (index) => setState(() => currentSelectedIndex = index),
//     items: [
//       BottomNavigationBarItem(
//         icon: SvgPicture.asset(Images.kHomeIcon),
//         activeIcon: SvgPicture.asset(Images.kHomeActiveIcon),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.notifications_none_outlined),
//         activeIcon: Icon(Icons.notifications_rounded),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.ac_unit),
//         activeIcon: Icon(Icons.ac_unit),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.shopping_cart_outlined),
//         activeIcon: Icon(Icons.shopping_cart_rounded),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.account_circle_outlined),
//         activeIcon: Icon(Icons.account_circle_rounded),
//       ),
//     ],
//   );
// }

