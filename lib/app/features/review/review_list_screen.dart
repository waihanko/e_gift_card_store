import 'package:e_gift_card_store/app/widgets/user_reviews_section_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constants/dummy/dummy.dart';
import '../../constants/resources/app_colors.dart';
import '../../constants/resources/app_dimens.dart';
import '../../widgets/list_item/user_review_list_item.dart';
import '../../widgets/primary_app_bar_widget.dart';
import '../../widgets/text_view_widget.dart';

class ReviewListScreen extends StatelessWidget {
  const ReviewListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBarWidget(title: "Reviews"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.marginCardMedium2,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      TextViewWidget(
                        "4.5",
                        textSize: AppDimens.textHeading1X,
                        fontWeight: FontWeight.w900,
                      ),
                      RatingBar.builder(
                        itemSize: AppDimens.marginMedium2,
                        initialRating: 4.0,
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
                      Row(
                        children: [
                          TextViewWidget(
                            "5123",
                            fontWeight: FontWeight.w900,
                            textSize: AppDimens.textSmall,
                          ),
                          TextViewWidget(
                            "Reviews",
                            textSize: AppDimens.textSmall,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.kTextColor,
                          ),
                        ],
                      ),
                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}
