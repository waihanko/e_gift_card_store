import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/resources/app_colors.dart';
import '../../../constants/resources/app_images.dart';
import '../../../widgets/rounded_icon_widget.dart';
import '../controller/landing_page.controller.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  LandingPageController get controller => Get.find<LandingPageController>();

  @override
  Widget build(BuildContext context) {
    return Obx(()=> BottomNavigationBar(
        currentIndex: controller.currentIndex,
        enableFeedback: false,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 0),
        onTap: (index) {
          if (controller.currentIndex != 0) {
            controller.setPage(0);
          }
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: RoundedIconWidget(
                icon: SvgPicture.asset(Images.kHomeIcon),
                backgroundColor: Colors.transparent,
                onClickIcon: () {
                  controller.setPage(0);
                }),
            activeIcon: RoundedIconWidget(
              icon: SvgPicture.asset(Images.kHomeActiveIcon),
              backgroundColor: AppColors.kRed,
            ),
          ),
          BottomNavigationBarItem(
            icon: RoundedIconWidget(
                icon: SvgPicture.asset(Images.kNotiIcon),
                backgroundColor: Colors.transparent,
                onClickIcon: () {
                  controller.setPage(1);
                }),
            activeIcon: RoundedIconWidget(
              icon: SvgPicture.asset(
                Images.kNotiActiveIcon,
              ),
              backgroundColor: AppColors.kRed,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: RoundedIconWidget(
                icon: SvgPicture.asset(Images.kCategoIcon),
                backgroundColor: Colors.transparent,
                onClickIcon: () {
                  controller.setPage(2);
                }),
            activeIcon: RoundedIconWidget(
              icon: SvgPicture.asset(
                Images.kCategoActiveIcon,
              ),
              backgroundColor: AppColors.kRed,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: RoundedIconWidget(
                icon: SvgPicture.asset(Images.kShoppingCartIcon),
                backgroundColor: Colors.transparent,
                onClickIcon: () {
                  controller.setPage(3);
                }),
            activeIcon: RoundedIconWidget(
              icon: SvgPicture.asset(Images.kShoppingCartActiveIcon),
              backgroundColor: AppColors.kRed,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: RoundedIconWidget(
                icon: SvgPicture.asset(Images.kProfileIcon),
                backgroundColor: Colors.transparent,
                onClickIcon: () {
                  controller.setPage(4);
                }),
            activeIcon: RoundedIconWidget(
              icon: SvgPicture.asset(Images.kProfileActiveIcon),
              backgroundColor: AppColors.kRed,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
