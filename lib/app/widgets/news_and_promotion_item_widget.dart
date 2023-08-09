import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';

class NewsAndPromotionItemWidget extends StatelessWidget {
  const NewsAndPromotionItemWidget({
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
          color: AppColors.secondaryColor,
        ),
        const SizedBox(
          height: AppDimens.marginMedium,
        ),
        TextViewWidget(
          "Undrawn RX Reedem Undrawn RX Reedem" * 3,
          textSize: AppDimens.textSmall,
          fontWeight: FontWeight.w700,
          textAlign: TextAlign.start,
          maxLines: 3,
        ),
      ],
    );
  }
}
