import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';
import '../features/home/widgets/home_screen_horizontal_list_section_view.dart';

class SpecialDealSectionView extends StatelessWidget {
  const SpecialDealSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenHorizontalListSectionView(
      title: "Special Deals",
      itemList: Row(
        children: List.generate(5, (index) =>
            Container(
              width: MediaQuery.sizeOf(context).width * 0.6,
              color: AppColors.secondaryColor,
              margin: const EdgeInsets.only(right: AppDimens.marginMedium2),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    height: 72,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: AppDimens.marginMedium,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: AppDimens.marginCardMedium,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppDimens.marginSmall +
                                    AppDimens.marginExtraSmall,
                                vertical: AppDimens.marginExtraSmall),
                            decoration: BoxDecoration(
                                color: AppColors.promoBgColor,
                                borderRadius: BorderRadius.circular(
                                    AppDimens.marginMedium)),
                            child: TextViewWidget(
                              "- 2.0%",
                              textSize: AppDimens.textSmall,
                              fontWeight: FontWeight.w900,
                              textAlign: TextAlign.right,
                              textColor: AppColors.selectedIconColor,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextViewWidget(
                          "US \$72.68",
                          textSize: AppDimens.textMedium,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(
                        width: AppDimens.marginCardMedium,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.marginCardMedium,
                  )
                ],
              ),
            ),
        ),
      ),
    );
  }
}
