import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';
import '../constants/dummy/vos/gift_card_item_vo.dart';
import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';

class GiftTopUpItemWidget extends StatelessWidget {
  final Function? onClick;
  final GiftCardItemVo? item;

  const GiftTopUpItemWidget({
    this.item,
    this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick?.call(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 120,
              height: 120,
              color: AppColors.kSecondary,
              child: Image.asset(
                item?.imageUrl ?? "",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: AppDimens.marginMedium,
          ),
          TextViewWidget(
            item?.name ?? "",
            textSize: AppDimens.textSmall,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.start,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
