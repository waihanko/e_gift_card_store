import 'package:e_gift_card_store/app/constants/dummy/dummy.dart';
import 'package:e_gift_card_store/app/constants/resources/app_images.dart';
import 'package:e_gift_card_store/app/constants/routing/screen_route.dart';
import 'package:e_gift_card_store/app/widgets/rounded_icon_widget.dart';
import 'package:e_gift_card_store/app/widgets/scrollable_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import '../../constants/dummy/vos/gift_card_item_vo.dart';
import '../../constants/resources/app_colors.dart';
import '../../constants/resources/app_dimens.dart';
import '../../widgets/buttons/custom_icon_button.dart';
import '../../widgets/buttons/primary_button_widget.dart';
import '../../widgets/text_view_widget.dart';
import '../../widgets/user_reviews_section_view.dart';
import '../home/components/horizontal_gift_card_section_view.dart';

class GiftCardDetailScreen2 extends StatefulWidget {
  const GiftCardDetailScreen2({
    super.key,
    required this.item,
    required this.bgColor,
  });

  final GiftCardItemVo item;
  final List<Color>? bgColor;

  @override
  State<GiftCardDetailScreen2> createState() => _GiftCardDetailScreen2State();
}

class _GiftCardDetailScreen2State extends State<GiftCardDetailScreen2> {
  late PaletteGenerator paletteGenerator;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableTabWidget(
      title: widget.item.name,
      bottomBar: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.marginCardMedium2,
            vertical: AppDimens.marginCardMedium),
        decoration: BoxDecoration(gradient: Gradients.bottomBarBg),
        child: Row(
          children: [
             CustomIconButton(
               bgColor: AppColors.kPrimary,
              borderColor: AppColors.kLightRed,
              foregroundColor: AppColors.kDark,
              child: const Icon(Icons.shopping_cart_outlined),
               onPressed: ()=>{},
            ),
            const SizedBox(
              width: AppDimens.marginCardMedium2,
            ),
            Expanded(
              child: PrimaryButtonWidget(
                  text: "ADD TO CART",
                  onPressed: () => {},
                  bgColor: AppColors.kYellow),
            ),
            const SizedBox(
              width: AppDimens.marginCardMedium,
            ),
            Expanded(
              child: PrimaryButtonWidget(
                text: "BUY NOW",
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
      header: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      Images.bgItemDetail,
                    ),
                    fit: BoxFit.cover),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: widget.bgColor ?? [],
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
                    const SizedBox(
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
                          const SizedBox(
                            height: AppDimens.marginCardMedium2,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 16,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      Images.myanmarFlag,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: AppDimens.marginMedium,
                              ),
                              TextViewWidget(
                                "Myanmar",
                                textColor: widget.item.textColor,
                                textSize: AppDimens.textSmall,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: AppDimens.marginMedium,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.flag_circle_sharp,
                                size: 20,
                              ),
                              const SizedBox(
                                width: AppDimens.marginMedium,
                              ),
                              TextViewWidget(
                                "Instant Delivery",
                                textColor: widget.item.textColor,
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
      tabs: detailTabMenu,
      tabBarView: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.marginCardMedium2,
                  vertical: AppDimens.marginMedium),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => _settingModalBottomSheet(context, widget.item),
                    child: Row(
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
                        const SizedBox(
                          width: AppDimens.marginCardMedium,
                        ),
                        Flexible(
                          child: TextViewWidget(
                            widget.item.name * 12,
                            fontWeight: FontWeight.w600,
                            maxLines: 2,
                            textSize: AppDimens.textMedium,
                          ),
                        ),
                        const SizedBox(
                          width: AppDimens.marginMedium,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppDimens.marginMedium,
                              vertical: AppDimens.marginExtraSmall),
                          decoration: BoxDecoration(
                              color: AppColors.kSecondary,
                              borderRadius: BorderRadius.circular(
                                  AppDimens.marginMedium2)),
                          child: const TextViewWidget(
                            "x 1",
                            fontWeight: FontWeight.w500,
                            textSize: AppDimens.textMedium,
                          ),
                        ),
                        const Icon(
                          Icons.chevron_right_rounded,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppDimens.marginCardMedium2,
                  ),
                  Container(
                    height: 0.1,
                    color: AppColors.kDark,
                  ),
                  const SizedBox(
                    height: AppDimens.marginMedium2,
                  ),
                  const Row(
                    children: [
                      TextViewWidget(
                        "Total",
                        fontWeight: FontWeight.w600,
                        textSize: AppDimens.textRegular2X,
                      ),
                      Spacer(),
                      TextViewWidget(
                        "US\$ 150",
                        fontWeight: FontWeight.w800,
                        textSize: AppDimens.textRegular,
                        textColor: AppColors.kRed,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppDimens.marginMedium2,
                  ),
                  const Row(
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
                  const Row(
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
              padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.marginCardMedium2,
                  vertical: AppDimens.marginCardMedium2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextViewWidget(
                    "About ${widget.item.name}",
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
                  const SizedBox(
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
              padding: const EdgeInsets.symmetric(
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
            const UserReviewSectionView(),
            Container(
              height: AppDimens.marginMedium,
              color: AppColors.kSecondary,
            ),
            const SizedBox(
              height: AppDimens.marginCardMedium2,
            )
          ],
        ),
        Column(
          children: [
            HorizontalGiftCardSectionView(
                title: "Related Cards",
                onItemClick: (item) =>
                    ScreenRoute.goToGiftCardDetailScreen(item, context)),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ],
    );
  }
}

void _settingModalBottomSheet(context, GiftCardItemVo item) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppDimens.marginCardMedium2))),
    builder: (context) => DraggableScrollableSheet(
      initialChildSize: 0.8,
      minChildSize: 0.8,
      maxChildSize: 0.8,
      expand: false,
      builder: (_, controller) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: AppDimens.marginCardMedium2,
              top: AppDimens.marginSmall,
            ),
            child: Row(
              children: [
                const TextViewWidget(
                  "Please select",
                  fontWeight: FontWeight.w600,
                ),
                const Spacer(),
                RoundedIconWidget(
                    icon: const Icon(Icons.close_rounded),
                    onClickIcon: () => Navigator.pop(context),
                    backgroundColor: Colors.transparent),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.marginCardMedium2,
              vertical: AppDimens.marginMedium,
            ),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimens.marginMedium),
                    color: AppColors.kSecondary,
                    image: DecorationImage(
                      image: AssetImage(
                        item.imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: AppDimens.marginCardMedium,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextViewWidget(
                        item.name,
                        fontWeight: FontWeight.w600,
                        maxLines: 1,
                        textSize: AppDimens.textMedium,
                      ),
                      const SizedBox(
                        height: AppDimens.marginSmall,
                      ),
                      const TextViewWidget(
                        r"US $150",
                        fontWeight: FontWeight.w700,
                        maxLines: 1,
                        textSize: AppDimens.textMedium,
                        textColor: AppColors.kRed,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(AppDimens.marginCardMedium2),
              controller: controller,
              itemCount: 12,
              itemBuilder: (_, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: AppDimens.marginCardMedium),
                  padding: const EdgeInsets.all(AppDimens.marginCardMedium),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.kSecondary),
                      borderRadius:
                          BorderRadius.circular(AppDimens.marginMedium)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextViewWidget(
                              item.name,
                              fontWeight: FontWeight.w600,
                              maxLines: 1,
                              textSize: AppDimens.textMedium,
                            ),
                            (index != 1)
                                ? const Column(
                                    children: [
                                      SizedBox(
                                        height: AppDimens.marginMedium,
                                      ),
                                      TextViewWidget(
                                        r"Discount : 2.0%",
                                        fontWeight: FontWeight.w700,
                                        maxLines: 1,
                                        textSize: AppDimens.textSmall,
                                        textColor: Colors.green,
                                      ),
                                    ],
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                      TextViewWidget(
                        "US ${150 + index}",
                        fontWeight: FontWeight.w700,
                        maxLines: 1,
                        textSize: AppDimens.textMedium,
                        textColor: AppColors.kRed,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium2),
            child: Row(
              children: [
                const TextViewWidget(
                  "Purchase Quantity",
                  fontWeight: FontWeight.w600,
                ),
                const Spacer(),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: AppDimens.marginMedium),
                  decoration: BoxDecoration(
                      color: AppColors.kSecondary,
                      borderRadius:
                          BorderRadius.circular(AppDimens.marginCardMedium2)),
                  child: const Row(
                    children: [
                      RoundedIconWidget(
                          icon: Icon(Icons.remove),
                          contentPadding: AppDimens.marginMedium),
                      TextViewWidget(
                        "10",
                        fontWeight: FontWeight.w600,
                      ),
                      RoundedIconWidget(
                          icon: Icon(Icons.add),
                          contentPadding: AppDimens.marginMedium),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium2),
            width: double.infinity,
            child: PrimaryButtonWidget(
              text: "CONFIRM",
              onPressed: () => {},
            ),
          ),
          const SizedBox(
            height: AppDimens.marginCardMedium,
          )
        ],
      ),
    ),
  );
}
