import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/dummy/dummy.dart';
import '../../constants/resources/app_colors.dart';
import '../../widgets/buttons/primary_button_widget.dart';
import '../../widgets/rounded_icon_widget.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColors.kBlue,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(72.0),
        child: AppBar(
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 72,
          title: const TextViewWidget(
            "Shopping Cart",
            textSize: AppDimens.textRegular2X,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: false,
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.marginCardMedium2,
            vertical: AppDimens.marginMedium2),
        child: Row(
          children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextViewWidget(
                  r"US $150",
                  fontWeight: FontWeight.w700,
                  maxLines: 1,
                  textSize: AppDimens.textRegular2X,
                  textColor: AppColors.kRed,
                ),
                SizedBox(
                  height: AppDimens.marginMedium,
                ),
                TextViewWidget(
                  r"SEAGM Credits 1.625",
                  fontWeight: FontWeight.w500,
                  maxLines: 1,
                  textSize: AppDimens.textSmall,
                  textColor: AppColors.kTextColor,
                ),
              ],
            ),
            Spacer(),
            PrimaryButtonWidget(
              text: "CHECKOUT",
              onPressed: () => {},
            )
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: AppDimens.marginCardMedium, bottom: 120),
        itemCount: shoppingCartDummyList.length,
        itemBuilder: (BuildContext context, int index) {
          var category = shoppingCartDummyList.keys.elementAt(index);
          var items = shoppingCartDummyList[category]!;

          return Container(
            color: AppColors.kPrimary,
            margin: const EdgeInsets.only(bottom: AppDimens.marginCardMedium2),
            padding: const EdgeInsets.all(AppDimens.marginCardMedium2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextViewWidget(
                  category,
                  fontWeight: FontWeight.w600,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: AppDimens.marginCardMedium2,
                ),
                ListView.separated(
                  padding: EdgeInsets.only(top: AppDimens.marginCardMedium),
                  separatorBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(
                        vertical: AppDimens.marginCardMedium2),
                    width: double.infinity,
                    height: 1,
                    color: AppColors.kSecondary,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = items[index];
                    return Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    AppDimens.marginMedium),
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextViewWidget(
                                  item.name,
                                  fontWeight: FontWeight.w500,
                                  maxLines: 1,
                                  textSize: AppDimens.textMedium,
                                ),
                                const SizedBox(
                                  height: AppDimens.marginSmall,
                                ),
                                const TextViewWidget(
                                  r"Discount : 2.0%",
                                  fontWeight: FontWeight.w700,
                                  maxLines: 1,
                                  textSize: AppDimens.textSmall,
                                  textColor: Colors.green,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 52,
                            ),
                            Expanded(
                              child: TextViewWidget(
                                r"US $150",
                                fontWeight: FontWeight.w700,
                                maxLines: 1,
                                textSize: AppDimens.textMedium,
                                textColor: AppColors.kRed,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.kSecondary,
                                  borderRadius: BorderRadius.circular(
                                      AppDimens.marginCardMedium2)),
                              child: const Row(
                                children: [
                                  RoundedIconWidget(
                                      icon: Icon(
                                        Icons.remove,
                                        size: 18,
                                      ),
                                      contentPadding: AppDimens.marginMedium),
                                  TextViewWidget(
                                    "10",
                                    fontWeight: FontWeight.w600,
                                  ),
                                  RoundedIconWidget(
                                      icon: Icon(
                                        Icons.add,
                                        size: 18,
                                      ),
                                      contentPadding: AppDimens.marginMedium),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
