import 'package:e_gift_card_store/app/constants/resources/app_colors.dart';
import 'package:e_gift_card_store/app/features/home/widgets/horizontal_gift_card_section_view.dart';
import 'package:e_gift_card_store/app/features/home/widgets/horizontal_gift_topup_section_view.dart';
import 'package:e_gift_card_store/app/features/home/widgets/news_and_promotions_section_view.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/resources/app_dimens.dart';
import '../../constants/routing/screen_route.dart';
import '../../widgets/section_view_banner.dart';
import '../../widgets/special_deal_section_view.dart';
import 'widgets/home_menu_section_view.dart';
import 'widgets/platorm_item_section_view.dart';

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
                    const SectionViewBanner(),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: AppDimens.marginCardMedium2),
                        height: 48,
                        child: OutlinedButton(
                          child: const Stack(
                            children: [
                              Positioned(
                                top: 0,
                                bottom: 0,
                                left: AppDimens.marginCardMedium,
                                child: Icon(Icons.search_rounded),
                              ),
                              Center(child: TextViewWidget("Search"))
                            ],
                          ),
                          onPressed: ()=> ScreenRoute.goToSearchScreen(context),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                HomeMenuSectionView(),
                SizedBox(
                  height: AppDimens.marginLarge,
                ),
                SpecialDealSectionView(),
                SizedBox(
                  height: AppDimens.marginXXLarge,
                ),
                HorizontalGiftCardSectionView(
                  title: "New Game Cards",
                  onItemClick: (item) =>
                      ScreenRoute.goToGiftCardDetailScreen(item, context),
                ),
                SizedBox(
                  height: AppDimens.marginXXLarge,
                ),
                HorizontalGiftTopUpSectionView(
                    title: "New Game TopUp",
                    onItemClick: (item) =>
                        ScreenRoute.goToGiftTopUpDetailScreen(item, context)),
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
