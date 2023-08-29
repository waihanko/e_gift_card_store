import 'package:e_gift_card_store/app/constants/resources/app_images.dart';
import 'package:e_gift_card_store/app/features/gift_topup_item_list/gift_top_up_list_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants/resources/app_colors.dart';
import '../../../constants/resources/app_dimens.dart';
import '../../../constants/routing/screen_route.dart';
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
                backgroundColor: TransparentColors.kBlue,
                text: "Game Cards",
                iconName: AppAssets.gameCardsIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("Game Cards", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kRed,
                text: "Gift Cards",
                iconName: AppAssets.giftCardsIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("Gift Cards", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kGreen,
                text: "CD-Keys",
                iconName: AppAssets.cdKeyIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("CD-Keys", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kBlue,
                text: "Game Consoles",
                iconName: AppAssets.gameConsoleIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("Game Consoles", context),
              ),
            ],
          ),
          const SizedBox(
            height: AppDimens.marginCardMedium2,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuItemWidget(
                backgroundColor: TransparentColors.kYellow,
                text: "Shopping",
                iconName: AppAssets.shoppingIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("Shopping", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kPurple,
                text: "Music",
                iconName: AppAssets.musicIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("Music", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kRed,
                text: "Direct Top-Up",
                iconName: AppAssets.directTopUpIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftTopUpItemListScreen("Direct Top-Up", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kBlue,
                text: "Mobile Recharge",
                iconName: AppAssets.mobileRechargeIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftTopUpItemListScreen("Mobile Recharge", context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
