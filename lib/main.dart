import 'package:flutter/material.dart';

import 'app/constants/resources/app_colors.dart';
import 'app/features/home/home_screen.dart';

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
      theme: ThemeData(
         colorScheme:  const ColorScheme.dark().copyWith(
           background: AppColors.primaryColor,
           secondary: AppColors.secondaryButtonColor,
         ),
         floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(
           backgroundColor: AppColors.primaryButtonColor,
           foregroundColor: Colors.white
         ),
         appBarTheme: const AppBarTheme().copyWith(color: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
