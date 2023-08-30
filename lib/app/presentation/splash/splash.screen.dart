import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants/resources/app_colors.dart';
import '../../constants/resources/app_images.dart';
import '../../constants/typography/app_typography.dart';
import '../../infrastructure/routes.dart';
import '../../theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    1.5.seconds.delay(() {
      Get.offNamed(Routes.walkthrough);
    });
    super.initState();
  }
  ThemeService theme = Get.find<ThemeService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300.h,
          ),
          SizedBox(
            height: 37.5.h,
          ),
          Text(
            'Pixlify',
            style: AppTypography.h2Bold.copyWith(color: theme.primaryTextColor),
          ),
          SizedBox(
            height: 200.h,
          ),
          SpinKitCircle(
            color: AppColors.kRed,
            size: 67.5.w,
          ),
        ],
      ),
    );
  }
}
