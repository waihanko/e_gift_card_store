import 'package:flutter/material.dart';

import '../../constants/resources/app_colors.dart';
import '../../constants/resources/app_dimens.dart';
import '../../widgets/tab_screen_app_bar_widget.dart';
import '../../widgets/text_view_widget.dart';

class ItemCategoryScreen extends StatefulWidget {
  const ItemCategoryScreen({super.key});

  @override
  State<ItemCategoryScreen> createState() => _ItemCategoryScreenState();
}

class _ItemCategoryScreenState extends State<ItemCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TabScreenAppBarWidget(),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(AppDimens.marginCardMedium),
            width: double.infinity,
            height: 120,
            color: AppColors.secondaryColor,
          ),
          Container(
            margin: EdgeInsets.all(AppDimens.marginCardMedium),
            width: double.infinity,
            height: 120,
            color: AppColors.secondaryColor,
          ),
          Container(
            margin: EdgeInsets.all(AppDimens.marginCardMedium),
            width: double.infinity,
            height: 120,
            color: AppColors.secondaryColor,
          ),
        ],
      ),
    );
  }
}

