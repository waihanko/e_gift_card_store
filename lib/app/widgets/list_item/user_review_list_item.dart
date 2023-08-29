import 'package:e_gift_card_store/app/constants/dummy/vos/review_item_vo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constants/resources/app_colors.dart';
import '../../constants/resources/app_dimens.dart';
import '../../constants/resources/app_images.dart';
import '../text_view_widget.dart';

class UserReviewListItem extends StatelessWidget {
  final ReviewItemVo item;


  const UserReviewListItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: AppDimens.marginXLarge),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
                color: AppColors.kSecondary, shape: BoxShape.circle),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(AppAssets.kProfilePic),
            ),
          ),
          const SizedBox(
            width: AppDimens.marginCardMedium,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextViewWidget(
                            item.userName,
                            lineHeight: 2,
                            fontWeight: FontWeight.w600,
                            textSize: AppDimens.textMedium,
                          ),
                          TextViewWidget(
                            item.date,
                            fontWeight: FontWeight.w400,
                            textSize: AppDimens.textSmall,
                            textColor: AppColors.kTextColor,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    RatingBar.builder(
                      itemSize: AppDimens.marginMedium2,
                      initialRating: item.rate,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: AppColors.kRed,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppDimens.marginCardMedium,
                ),
                TextViewWidget(
                  item.review,
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
