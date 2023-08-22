import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';
import '../features/gift_card_item_list/gift_card_detail_screen.dart';

class UserReviewSectionView extends StatelessWidget {
  const UserReviewSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.marginCardMedium2,
          vertical: AppDimens.marginCardMedium2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TextViewWidget(
                "User Reviews",
                textSize: AppDimens.textRegular,
                fontWeight: FontWeight.w600,
              ),
              Spacer(),
              Column(
                children: [
                  TextViewWidget(
                    "5210",
                    textSize: AppDimens.textRegular,
                    fontWeight: FontWeight.w600,
                  ),
                  TextViewWidget(
                    "Reviews",
                    fontWeight: FontWeight.w500,
                    textSize: AppDimens.textSmall,
                    textColor: AppColors.secondaryTextColor,
                  ),
                ],
              ),
              SizedBox(
                width: AppDimens.marginSmall,
              ),
              Container(
                width: 0.5,
                color: AppColors.secondaryTextColor,
                height: 30,
              ),
              SizedBox(
                width: AppDimens.marginSmall,
              ),
              Column(
                children: [
                  TextViewWidget(
                    "4.5",
                    textSize: AppDimens.textRegular,
                    fontWeight: FontWeight.w600,
                  ),
                  TextViewWidget(
                    "Reviews",
                    fontWeight: FontWeight.w500,
                    textSize: AppDimens.textSmall,
                    textColor: AppColors.secondaryTextColor,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: AppDimens.marginCardMedium2,
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) =>
            const UserReviewListItem(),
            itemCount: 8,
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextViewWidget(
                  "View More",
                  textSize: AppDimens.textMedium,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
