import 'package:e_gift_card_store/app/constants/resources/app_images.dart';
import 'package:flutter/material.dart';

import '../../../constants/resources/app_colors.dart';
import '../../../constants/resources/app_dimens.dart';
import '../../gift_card_item_list/gift_card_item_list_screen.dart';
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
                onTapMenu:()=>  goToGiftCardItemListScreen("Game Cards", context),
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimRedBgColor,
                text: "Gift Cards",
                iconName: AppImages.giftCardsIcon,
                onTapMenu:()=>  goToGiftCardItemListScreen("Gift Cards", context),
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimGreenBgColor,
                text: "CD-Keys",
                iconName: AppImages.cdKeyIcon,
                onTapMenu:()=>  goToGiftCardItemListScreen("CD-Keys", context),
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimBlueBgColor,
                text: "Game Consoles",
                iconName: AppImages.gameConsoleIcon,
                onTapMenu:()=>  goToGiftCardItemListScreen("Game Consoles", context),
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
                onTapMenu:()=>  goToGiftCardItemListScreen("Shopping", context),
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimPurpleBgColor,
                text: "Music",
                iconName: AppImages.musicIcon,
                onTapMenu:()=>  goToGiftCardItemListScreen("Music", context),
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimRedBgColor,
                text: "Direct Top-Up",
                iconName: AppImages.directTopUpIcon,
                onTapMenu:()=>  goToGiftCardItemListScreen("Direct Top-Up", context),
              ),
              MenuItemWidget(
                backgroundColor: AppColors.dimBlueBgColor,
                text: "Mobile Recharge",
                iconName: AppImages.mobileRechargeIcon,
                onTapMenu:()=>  goToGiftCardItemListScreen("Mobile Recharge", context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  goToGiftCardItemListScreen(String title, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GiftCardItemListScreen(title: title)),
    );
  }

}
