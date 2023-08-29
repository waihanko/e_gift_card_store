import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';

class UserReviewListItem extends StatelessWidget {
  const UserReviewListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: AppDimens.marginXLarge),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
                color: AppColors.kSecondary, shape: BoxShape.circle),
          ),
          SizedBox(
            width: AppDimens.marginCardMedium,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextViewWidget(
                            "User Name",
                            lineHeight: 2,
                            fontWeight: FontWeight.w600,
                            textSize: AppDimens.textMedium,
                          ),
                          TextViewWidget(
                            "12/2/2023",
                            fontWeight: FontWeight.w400,
                            textSize: AppDimens.textSmall,
                            textColor: AppColors.kTextColor,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color: AppColors.kRed,
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: AppColors.kRed,
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: AppColors.kRed,
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: AppColors.kRed,
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: AppColors.kRed,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimens.marginCardMedium,
                ),
                TextViewWidget(
                  "Nice! Better" * 30,
                  fontWeight: FontWeight.w300,
                  textSize: AppDimens.textMedium,
                  lineHeight: 1.6,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
