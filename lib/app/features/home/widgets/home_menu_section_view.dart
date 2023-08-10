import 'package:e_gift_card_store/app/constants/resources/app_images.dart';
import 'package:e_gift_card_store/app/constants/resources/app_strings.dart';
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
                backgroundColor: AppColors.dimBlueBgColor,
                text: "Game Cards",
                iconName: AppImages.gameCardsIcon,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimRedBgColor,
                text: "Gift Card",
                iconName: AppImages.giftCardsIcon,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimGreenBgColor,
                text: "CD-Keys",
                iconName: AppImages.cdKeyIcon,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimBlueBgColor,
                text: "Game Console",
                iconName: AppImages.gameConsoleIcon,
              ),
            ],
          ),
          SizedBox(
            height: AppDimens.marginCardMedium2,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuItemWidget(
                backgroundColor: AppColors.dimYellowBgColor,
                text: "Shopping",
                iconName: AppImages.shoppingIcon,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimPurpleBgColor,
                text: "Music",
                iconName: AppImages.musicIcon,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimRedBgColor,
                text: "Direct Top-Up",
                iconName: AppImages.directTopUpIcon,
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimBlueBgColor,
                text: "Mobile Recharge",
                iconName: AppImages.mobileRechargeIcon,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
