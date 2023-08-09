import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/resources/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(72.0),
        child: AppBar(
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 72,
          title: const TextViewWidget(
            "Profile",
            textSize: AppDimens.textRegular2X,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
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
