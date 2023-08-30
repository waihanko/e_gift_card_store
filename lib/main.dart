import '../app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/constants/resources/app_colors.dart';
import 'app/constants/resources/app_dimens.dart';
import 'app/infrastructure/navigation.dart';
import 'app/infrastructure/routes.dart';
import 'app/intial_binding.dart';

void main() async {
  await Get.putAsync<ThemeService>(() async => ThemeService());
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        useInheritedMediaQuery: true,
        builder: (context, _) {
          return GetMaterialApp(
            title: 'Gift Card Store',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: const ColorScheme.light().copyWith(
                background: AppColors.kPrimary,
                secondary: AppColors.kGrey,
                onSecondary: AppColors.kPrimary,
                outline: AppColors.kPrimary,
              ),
              bottomSheetTheme: BottomSheetThemeData().copyWith(
                surfaceTintColor: AppColors.kPrimary,
              ),
              outlinedButtonTheme: OutlinedButtonThemeData(
                style: ButtonStyle().copyWith(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.kSecondary),
                  iconColor: MaterialStateProperty.all<Color>(AppColors.kDark),
                ),
              ),
              floatingActionButtonTheme: const FloatingActionButtonThemeData()
                  .copyWith(
                      backgroundColor: AppColors.kGrey,
                      foregroundColor: Colors.white),
              iconTheme: IconThemeData().copyWith(
                color: AppColors.kDark,
              ),
              appBarTheme: const AppBarTheme().copyWith(
                  color: AppColors.kPrimary,
                  iconTheme: IconThemeData().copyWith(
                    color: AppColors.kDark,
                  )),
              dialogTheme: DialogTheme().copyWith(
                  iconColor: AppColors.kPrimary,
                  contentTextStyle:
                      TextStyle().copyWith(color: AppColors.kPrimary)),
              tabBarTheme: TabBarTheme(
                  labelColor: AppColors.kRed,
                  labelStyle: GoogleFonts.manrope(
                      fontSize: AppDimens.textMedium,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kRed),
                  unselectedLabelStyle: GoogleFonts.manrope(
                      fontSize: AppDimens.textMedium,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kPrimary)),
              useMaterial3: true,
            ),
            themeMode: Get.find<ThemeService>().isDarkMode
                ? ThemeMode.dark
                : ThemeMode.light,
            getPages: Nav.routes,
            initialRoute: Routes.splash,
            initialBinding: InitialBindings(),
          );
        });
  }
}
