import 'package:e_gift_card_store/app/constants/resources/app_images.dart';
import 'package:e_gift_card_store/app/constants/routing/screen_route.dart';
import 'package:e_gift_card_store/app/widgets/scrollable_tab_widget.dart';
import 'package:e_gift_card_store/app/widgets/user_reviews_section_view.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import '../../constants/dummy/vos/gift_card_item_vo.dart';
import '../../constants/resources/app_colors.dart';
import '../../constants/resources/app_dimens.dart';
import '../../widgets/text_view_widget.dart';
import '../home/widgets/horizontal_gift_topup_section_view.dart';

class GiftTopUpDetailScreen extends StatefulWidget {
  const GiftTopUpDetailScreen({
    super.key,
    required this.item,
    required this.bgColor,
  });

  final GiftCardItemVo item;
  final List<Color>? bgColor;

  @override
  State<GiftTopUpDetailScreen> createState() => _GiftTopUpDetailScreenState();
}

class _GiftTopUpDetailScreenState extends State<GiftTopUpDetailScreen> {
  late PaletteGenerator paletteGenerator;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableTabWidget(
        title: widget.item.name,
        header: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                        AppAssets.bgItemDetail,
                      ),
                      fit: BoxFit.cover),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: widget.bgColor??[],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(AppDimens.marginCardMedium2),
              child: Column(
                children: [
                  const SizedBox(
                      height: kToolbarHeight + AppDimens.marginCardMedium),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 86,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage(
                                widget.item.imageUrl,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: AppDimens.marginCardMedium,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextViewWidget(
                              widget.item.name,
                              textColor: widget.item.textColor,
                              fontWeight: FontWeight.w600,
                              textSize: AppDimens.textRegular2X,
                              maxLines: 2,
                            ),
                            SizedBox(
                              height: AppDimens.marginCardMedium2,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 16,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        AppAssets.myanmarFlag,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: AppDimens.marginMedium,
                                ),
                                TextViewWidget(
                                  "Myanmar",
                                  textColor:  widget.item.textColor,
                                  textSize: AppDimens.textSmall,
                                )
                              ],
                            ),
                            SizedBox(
                              height: AppDimens.marginMedium,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.flag_circle_sharp,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: AppDimens.marginMedium,
                                ),
                                TextViewWidget(
                                  "Instant Delivery",
                                  textColor:  widget.item.textColor,
                                  textSize: AppDimens.textSmall,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -2,
              left: 0,
              right: 0,
              child: Container(
                height: 14,
                decoration: const BoxDecoration(
                  color: AppColors.kPrimary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppDimens.marginXLarge),
                    topRight: Radius.circular(AppDimens.marginXLarge),
                  ),
                ),
              ),
            )
          ],
        ),
        tabs: [
          "Description",
          "Instruction",
          "Reviews",
          "Related"
        ],
        tabBarView: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimens.marginCardMedium2,
                    vertical: AppDimens.marginMedium),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppDimens.marginMedium),
                            color: AppColors.kSecondary,
                            image: DecorationImage(
                                image: AssetImage(
                                  widget.item.imageUrl,
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: AppDimens.marginCardMedium,
                        ),
                        Flexible(
                          child: TextViewWidget(
                            widget.item.name * 12,
                            fontWeight: FontWeight.w600,
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: AppDimens.marginCardMedium,
                    ),
                    Container(
                      height: 0.1,
                      color: AppColors.kDark,
                    ),
                    const SizedBox(
                      height: AppDimens.marginCardMedium,
                    ),
                    Row(
                      children: [
                        TextViewWidget(
                          "Total",
                          fontWeight: FontWeight.w600,
                          textSize: AppDimens.textRegular2X,
                        ),
                        Spacer(),
                        TextViewWidget(
                          "US\$ 150",
                          fontWeight: FontWeight.w600,
                          textSize: AppDimens.textRegular2X,
                          textColor: AppColors.kRed,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppDimens.marginCardMedium,
                    ),
                    Row(
                      children: [
                        TextViewWidget(
                          "Seagm Credit",
                          textSize: AppDimens.textMedium,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            TextViewWidget(
                              "425",
                              textSize: AppDimens.textMedium,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppDimens.marginMedium,
                    ),
                    Row(
                      children: [
                        TextViewWidget(
                          "Discount",
                          textSize: AppDimens.textMedium,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            TextViewWidget(
                              "US\$ 0.04(4.0%)",
                              textSize: AppDimens.textMedium,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppDimens.marginMedium,
                    ),
                  ],
                ),
              ),
              Container(
                height: AppDimens.marginMedium,
                color: AppColors.kSecondary,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimens.marginCardMedium2,
                    vertical: AppDimens.marginCardMedium2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextViewWidget(
                      "About ${widget.item.name}",
                      fontWeight: FontWeight.w600,
                      textSize: AppDimens.textRegular2X,
                    ),
                    const SizedBox(
                      height: AppDimens.marginMedium,
                    ),
                    TextViewWidget(
                      "Discover the perfect present for any occasion with our versatile gift cards. Whether it's a birthday, anniversary, or just to show you care, our gift cards let them pick their favorite items from our wide selection. From fashion to gadgets, they'll find something special that's just right for them. It's the ultimate way to make someone's day memorable" *
                          3,
                      lineHeight: 1.5,
                      textSize: AppDimens.textMedium,
                      fontWeight: FontWeight.w500,
                      textColor: AppColors.kGrey,
                    ),
                    SizedBox(
                      height: AppDimens.marginCardMedium,
                    )
                  ],
                ),
              ),
              Container(
                height: AppDimens.marginMedium,
                color: AppColors.kSecondary,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimens.marginCardMedium2,
                    vertical: AppDimens.marginCardMedium2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextViewWidget(
                      "How to redeem ${widget.item.name}?",
                      textSize: AppDimens.textRegular,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(
                      height: AppDimens.marginMedium,
                    ),
                    TextViewWidget(
                      "Discover the perfect present for any occasion with our versatile gift cards. Whether it's a birthday, anniversary, or just to show you care, our gift cards let them pick their favorite items from our wide selection. From fashion to gadgets, they'll find something special that's just right for them. It's the ultimate way to make someone's day memorable" *
                          3,
                      lineHeight: 1.5,
                      textSize: AppDimens.textMedium,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              Container(
                height: AppDimens.marginMedium,
                color: AppColors.kSecondary,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserReviewSectionView(),
              Container(
                height: AppDimens.marginMedium,
                color: AppColors.kSecondary,
              ),
              SizedBox(
                height: AppDimens.marginCardMedium2,
              )
            ],
          ),
          HorizontalGiftTopUpSectionView(
              title: "Related Cards",
              onItemClick: (item) =>
                  ScreenRoute.goToGiftTopUpDetailScreen(item, context)),
        ]);
  }
}


Color getTextColor(Color color) {
  final luminance = color.computeLuminance();
  return luminance > 0.5 ? Colors.black : Colors.white;
}
