import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../constants/dummy/top_up_card_dummy_list.dart';
import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';

class PlatformItemWidget extends StatelessWidget {
  final GiftCardItemVo giftCardItemVo;

  const PlatformItemWidget({
    required this.giftCardItemVo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 240,
          height: 114,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.marginCardMedium),
            color: AppColors.secondaryColor,
            image: DecorationImage(
              image: AssetImage(giftCardItemVo.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: AppDimens.marginMedium,
        ),
        TextViewWidget(
          "Platform Item Name ##",
          maxLines: 2,
          textSize: AppDimens.textRegular,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: AppDimens.marginMedium,
        ),
        TextViewWidget(
          "${giftCardItemVo.name}",
          maxLines: 2,
          textSize: AppDimens.textSmall,
          fontWeight: FontWeight.w700,
          textAlign: TextAlign.start,
        )
      ],
    );
  }
}
