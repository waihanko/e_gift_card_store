import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:e_gift_card_store/app/widgets/buttons/primary_button_widget.dart';
import 'package:e_gift_card_store/app/widgets/rounded_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants/resources/app_colors.dart';
import '../../constants/typography/app_typography.dart';
import '../../infrastructure/routes.dart';
import '../../theme.dart';
import 'controllers/walkthrough.controller.dart';

class WalkthroughScreen extends StatelessWidget {
  const WalkthroughScreen({Key? key}) : super(key: key);

  ThemeService get theme => Get.find<ThemeService>();

  @override
  Widget build(BuildContext context) {
    return GetX<WalkthroughController>(
      init: WalkthroughController(),
      builder: (controller) {
        return Scaffold(
          body: Align(
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                PageView(
                  controller: controller.pageController,
                  onPageChanged: (page) =>
                      controller.changeCurrentPageIndex(page.toDouble()),
                  children: const [
                    WalkthroughScreenOne(),
                    WalkthroughScreenTwo(),
                    WalkthroughScreenThree(),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    color: AppColors.kWhite,
                    height: 86.h,
                    padding: const EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                          controller: controller.pageController,
                          effect: ExpandingDotsEffect(
                              activeDotColor: AppColors.kRed,
                              dotColor: AppColors.kSecondary,
                              dotHeight: 12.h,
                              dotWidth: 12.h),
                          count: 3,
                        ),
                        InkWell(
                          onTap: () => controller.end? Get.offNamed(Routes.landingPage): controller.onPageChanged(1),
                          child: AnimatedContainer(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: AppColors.kRed,
                            ),
                            duration: 300.milliseconds,
                            width: controller.end ? 120.w : 46.w,
                            height: 46.w,
                            child: controller.end
                                ? Center(
                              child: Text(
                                'GET STARTED',
                                maxLines: 1,
                                style: (AppTypography.BodyLBold).copyWith(
                                  color: AppColors.kPrimary,
                                ),
                              ),
                            )
                                :  Icon(
                              Icons.navigate_next_rounded,
                              size: 32.w,
                              color: AppColors.kPrimary,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

/// First screen of the initial walkthrough
class WalkthroughScreenOne extends StatelessWidget {
  const WalkthroughScreenOne({super.key});

  WalkthroughController get controller => Get.find<WalkthroughController>();

  ThemeService get theme => Get.find<ThemeService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}

class WalkthroughScreenTwo extends StatelessWidget {
  const WalkthroughScreenTwo({super.key});

  WalkthroughController get controller => Get.find<WalkthroughController>();

  ThemeService get theme => Get.find<ThemeService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
    );
  }
}

class WalkthroughScreenThree extends StatelessWidget {
  const WalkthroughScreenThree({super.key});

  WalkthroughController get controller => Get.find<WalkthroughController>();

  ThemeService get theme => Get.find<ThemeService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
    );
  }
}
