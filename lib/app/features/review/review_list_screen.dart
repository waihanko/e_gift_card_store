import 'package:e_gift_card_store/app/widgets/rating_bar_widget.dart';
import 'package:flutter/material.dart';
import '../../constants/dummy/dummy.dart';
import '../../constants/resources/app_colors.dart';
import '../../constants/resources/app_dimens.dart';
import 'components/user_review_list_item.dart';
import '../../widgets/primary_app_bar_widget.dart';
import '../../widgets/text_view_widget.dart';
import 'components/review_progress_bar.dart';

class ReviewListScreen extends StatelessWidget {
  const ReviewListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBarWidget(title: "Reviews"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppDimens.marginMedium,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimens.marginMedium2 * 2),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextViewWidget(
                          "4.99",
                          textSize: AppDimens.textHeading2X,
                          fontWeight: FontWeight.w900,
                        ),
                        SizedBox(height: AppDimens.marginMedium,),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                            child: RatingBarWidget(rate: 4, iconSize: AppDimens.marginCardMedium2)),
                        SizedBox(height: AppDimens.marginMedium,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                  ),
                  SizedBox(width: AppDimens.marginXLarge,),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReviewProgressBar(number: "5", currentRateProgress: 0.5),
                        SizedBox(height: AppDimens.marginExtraSmall,),
                        ReviewProgressBar(number: "4", currentRateProgress: 0.2),
                        SizedBox(height: AppDimens.marginExtraSmall,),
                        ReviewProgressBar(number: "3", currentRateProgress: 0.9),
                        SizedBox(height: AppDimens.marginExtraSmall,),
                        ReviewProgressBar(number: "2", currentRateProgress: 0.5),
                        SizedBox(height: AppDimens.marginExtraSmall,),
                        ReviewProgressBar(number: "1", currentRateProgress: 1),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: AppDimens.marginXLarge,),
            Container(height: 12, color: AppColors.kSecondary, ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium2, vertical: AppDimens.marginXLarge,),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  UserReviewListItem(item: reviewDummyList[index]),
              itemCount: reviewDummyList.length,
            ),
          ],
        ),
      ),
    );
  }
}
