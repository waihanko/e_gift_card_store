import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/constants/resources/app_colors.dart';
import 'app/features/home/home_screen.dart';
import 'app/features/main_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark().copyWith(
          background: AppColors.primaryColor,
          secondary: AppColors.primaryButtonColor,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle().copyWith(
            backgroundColor: MaterialStateProperty.all<Color>(  AppColors.secondaryColor),
            iconColor:MaterialStateProperty.all<Color>(  AppColors.iconColor),
          )
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData()
            .copyWith(
                backgroundColor: AppColors.primaryButtonColor,
                foregroundColor: Colors.white),
        iconTheme: IconThemeData().copyWith(
          color: AppColors.iconColor,
        ),
        appBarTheme: const AppBarTheme().copyWith(
            color: AppColors.primaryColor,
            iconTheme: IconThemeData().copyWith(
              color: AppColors.iconColor,
            )),
        dialogTheme: DialogTheme().copyWith(
            iconColor: AppColors.primaryColor,
            contentTextStyle:
                TextStyle().copyWith(color: AppColors.primaryColor)),
        tabBarTheme: TabBarTheme(
          labelColor: AppColors.secondaryButtonColor,
          labelStyle: GoogleFonts.manrope(
            fontSize: AppDimens.textMedium,
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryButtonColor
          ),
          unselectedLabelStyle:  GoogleFonts.manrope(
            fontSize: AppDimens.textMedium,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor
        )
        ),
        useMaterial3: true,
      ),
      home: const MainHomeScreen(),
    );
  }
}
