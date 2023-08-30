import 'package:e_gift_card_store/app/constants/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                iconName: Images.gameCardsIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("Game Cards", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kRed,
                text: "Gift Cards",
                iconName: Images.giftCardsIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("Gift Cards", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kGreen,
                text: "CD-Keys",
                iconName: Images.cdKeyIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("CD-Keys", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kBlue,
                text: "Game Consoles",
                iconName: Images.gameConsoleIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("Game Consoles", context),
              ),
            ],
          ),
          SizedBox(
            height: AppDimens.marginCardMedium2.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuItemWidget(
                backgroundColor: TransparentColors.kYellow,
                text: "Shopping",
                iconName: Images.shoppingIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("Shopping", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kPurple,
                text: "Music",
                iconName: Images.musicIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftCardItemListScreen("Music", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kRed,
                text: "Direct Top-Up",
                iconName: Images.directTopUpIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftTopUpItemListScreen("Direct Top-Up", context),
              ),
              MenuItemWidget(
                backgroundColor: TransparentColors.kBlue,
                text: "Mobile Recharge",
                iconName: Images.mobileRechargeIcon,
                onTapMenu:()=>  ScreenRoute.goToGiftTopUpItemListScreen("Mobile Recharge", context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
