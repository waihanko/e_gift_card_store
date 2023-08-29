import 'package:e_gift_card_store/app/constants/routing/screen_route.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../constants/dummy/dummy.dart';
import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';
import 'list_item/user_review_list_item.dart';

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
                    textColor: AppColors.kTextColor,
                  ),
                ],
              ),
              SizedBox(
                width: AppDimens.marginSmall,
              ),
              Container(
                width: 0.5,
                color: AppColors.kTextColor,
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
                    textColor: AppColors.kTextColor,
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
             UserReviewListItem(item: reviewDummyList[index]),
            itemCount: reviewDummyList.length,
          ),
           Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: ()=> ScreenRoute.goToReviewListScreen(context),
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
            ),
          )
        ],
      ),
    );
  }
}
