import 'package:e_gift_card_store/app/constants/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/resources/app_dimens.dart';
import '../../widgets/rounded_icon_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height * 0.45;
    return Scaffold(
        body: CustomScrollView(
      // physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          stretch: true,
          toolbarHeight: screenHeight < 180 ? screenHeight * 1.5 : screenHeight,
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.only(
                  top: AppDimens.marginXXLarge,
                  left: AppDimens.marginCardMedium2,
                  right: AppDimens.marginCardMedium2,
                  bottom: AppDimens.marginCardMedium),
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 24),
                    decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius:
                            BorderRadius.circular(AppDimens.marginCardMedium2)),
                    // color: AppColors.primaryColor,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: AppDimens.marginCardMedium2),
                      height: 54,
                      decoration: BoxDecoration(
                          color: AppColors.secondaryTextColor,
                          borderRadius: BorderRadius.circular(
                              AppDimens.marginCardMedium2)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            HomeMenuSectionView(),
            SizedBox(height: AppDimens.marginLarge,),
            NewGameCardSectionView(),
            SizedBox(height: AppDimens.marginXLarge,),
            NewGameTopUpSectionView(),
            SizedBox(height: AppDimens.marginXLarge,),
            NewsAndPromotionsSectionView(),
            SizedBox(height: AppDimens.marginLarge,),
            PlatformItemSectionView(),
          ]),
        )
      ],
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class HomeMenuSectionView extends StatelessWidget {
  const HomeMenuSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.marginXLarge,
          vertical: AppDimens.marginCardMedium2),
      child: Column(
        children: [
          Row(
            children: [
              MenuItemWidget(),
              MenuItemWidget(),
              MenuItemWidget(),
              MenuItemWidget(),
            ],
          ),
          SizedBox(
            height: AppDimens.marginLarge,
          ),
          Row(
            children: [
              MenuItemWidget(),
              MenuItemWidget(),
              MenuItemWidget(),
              MenuItemWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.green,
        child: Column(
          children: [
            RoundedIconWidget(
              icon: Icon(
                Icons.ac_unit_outlined,
                size: 28,
              ),
            ),
            SizedBox(
              height: AppDimens.marginMedium,
            ),
            Text("Game Card"),
          ],
        ),
      ),
    );
  }
}

class NewGameCardSectionView extends StatelessWidget {
  const NewGameCardSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimens.marginXLarge),
          child: Text("New Game Card"),
        ),
        const SizedBox(height: AppDimens.marginCardMedium,),
        SizedBox(
          height: 220,
          child: ListView.builder(
            itemCount: 5,
            padding: EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium2),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: AppDimens.marginCardMedium),
              child: SizedBox(
                width: 114,
                child: Column(
                  children: [
                    Container(
                      width: 114,
                      height: 140,
                      color: Colors.red,
                    ),
                    SizedBox(height: AppDimens.marginMedium,),
                    Text("Undrawn RX Reedem Undrawn RX Reedem", maxLines: 3,)
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class NewGameTopUpSectionView extends StatelessWidget {
  const NewGameTopUpSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimens.marginXLarge),
          child: Text("New Game TopUp"),
        ),
        const SizedBox(height: AppDimens.marginCardMedium,),
        SizedBox(
          height: 180,
          child: ListView.builder(
            itemCount: 5,
            padding: EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium2),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: AppDimens.marginCardMedium),
              child: SizedBox(
                width: 114,
                child: Column(
                  children: [
                    Container(
                      width: 114,
                      height: 114,
                      color: Colors.yellow,
                    ),
                    SizedBox(height: AppDimens.marginMedium,),
                    Text("Undrawn RX Reedem Undrawn RX Reedem", maxLines: 2,)
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class NewsAndPromotionsSectionView extends StatelessWidget {
  const NewsAndPromotionsSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimens.marginXLarge),
          child: Text("News & Promotions"),
        ),
        const SizedBox(height: AppDimens.marginCardMedium,),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 5,
            padding: EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium2),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: AppDimens.marginCardMedium),
              child: SizedBox(
                width: 240,
                child: Column(
                  children: [
                    Container(
                      width: 240,
                      height: 114,
                      color: Colors.green,
                    ),
                    SizedBox(height: AppDimens.marginMedium,),
                    Text("Undrawn RX Reedem Undrawn RX Reedem", maxLines: 2,),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class PlatformItemSectionView extends StatelessWidget {
  const PlatformItemSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimens.marginXLarge),
          child: Text("Platform Items"),
        ),
        const SizedBox(height: AppDimens.marginCardMedium,),
        SizedBox(
          height: 280,
          child: ListView.builder(
            itemCount: 5,
            padding: EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium2),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: AppDimens.marginCardMedium),
              child: SizedBox(
                width: 240,
                child: Column(
                  children: [
                    Container(
                      width: 240,
                      height: 114,
                      color: Colors.green,
                    ),
                    SizedBox(height: AppDimens.marginMedium,),
                    Text("Undrawn RX Reedem Undrawn RX Reedem", maxLines: 2,),
                    SizedBox(height: AppDimens.marginSmall,),
                    Text("Undrawn RX Reedem Undrawn RX Reedem", maxLines: 2,)
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
