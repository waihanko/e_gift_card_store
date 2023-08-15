import 'package:e_gift_card_store/app/constants/resources/app_colors.dart';
import 'package:e_gift_card_store/app/features/home/widgets/news_and_promotions_section_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/resources/app_dimens.dart';
import '../../widgets/game_card_item_widget.dart';
import '../../widgets/game_top_up_item_widget.dart';
import 'widgets/home_menu_section_view.dart';
import 'widgets/new_game_card_section_view.dart';
import 'widgets/new_game_topup_section_view.dart';
import '../../widgets/news_and_promotion_item_widget.dart';
import '../../widgets/platform_item_widget.dart';
import 'widgets/platorm_item_section_view.dart';
import '../../widgets/rounded_icon_widget.dart';
import '../../widgets/special_deal_section_view.dart';
import '../../widgets/text_view_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height * 0.5;
    return Scaffold(
      body: CustomScrollView(
        // physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretch: true,
            toolbarHeight:
                screenHeight < 180 ? screenHeight * 1.5 : screenHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.only(
                  top: AppDimens.marginXXLarge,
                  left: AppDimens.marginCardMedium2,
                  right: AppDimens.marginCardMedium2,
                  bottom: AppDimens.marginCardMedium,
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 24),
                      decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(
                              AppDimens.marginCardMedium2)),
                      // color: AppColors.primaryColor,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: AppDimens.marginCardMedium2),
                        height: 48,
                        decoration: BoxDecoration(
                            color: AppColors.placeHolderColor,
                            borderRadius:
                                BorderRadius.circular(AppDimens.marginXLarge)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                HomeMenuSectionView(),
                SizedBox(
                  height: AppDimens.marginLarge,
                ),
                SpecialDealSectionView(),
                SizedBox(
                  height: AppDimens.marginXXLarge,
                ),
                NewGameCardSectionView(),
                SizedBox(
                  height: AppDimens.marginXXLarge,
                ),
                NewGameTopUpSectionView(),
                SizedBox(
                  height: AppDimens.marginXXLarge,
                ),
                NewsAndPromotionsSectionView(),
                SizedBox(
                  height: AppDimens.marginXXLarge,
                ),
                PlatformItemSectionView(),
                SizedBox(
                  height: 140,
                )
              ],
            ),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
