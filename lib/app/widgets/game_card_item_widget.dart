import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';

class GameCardItemWidget extends StatelessWidget {
  final Function? onClick;
  const GameCardItemWidget({
    this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onClick?.call(),
      child: Column(
        children: [
          Container(
            width: 114,
            height: 140,
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
          )
        ],
      ),
    );
  }
}
