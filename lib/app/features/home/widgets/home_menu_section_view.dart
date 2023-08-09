import 'package:flutter/material.dart';

import '../../../constants/resources/app_colors.dart';
import '../../../constants/resources/app_dimens.dart';
import '../home_screen.dart';
import 'menu_item_widget.dart';

class HomeMenuSectionView extends StatelessWidget {
  const HomeMenuSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.marginXLarge,
        vertical: AppDimens.marginCardMedium2,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuItemWidget(
                backgroundColor: AppColors.secondaryColor,
                text: "Game Card" * 3,
                menuIcon: Icons.add_card,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.secondaryColor,
                text: "Game Card",
                menuIcon: Icons.add_card,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.secondaryColor,
                text: "Game Card",
                menuIcon: Icons.add_card,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.secondaryColor,
                text: "Game Card",
                menuIcon: Icons.add_card,
              ),
            ],
          ),
          SizedBox(
            height: AppDimens.marginLarge,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuItemWidget(
                backgroundColor: AppColors.secondaryColor,
                text: "Game Card" * 3,
                menuIcon: Icons.add_card,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.secondaryColor,
                text: "Game Card",
                menuIcon: Icons.add_card,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.secondaryColor,
                text: "Game Card",
                menuIcon: Icons.add_card,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.secondaryColor,
                text: "Game Card",
                menuIcon: Icons.add_card,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
