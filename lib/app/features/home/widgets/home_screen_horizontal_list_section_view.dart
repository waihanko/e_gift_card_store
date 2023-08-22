import 'package:e_gift_card_store/app/widgets/rounded_icon_widget.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../../../constants/resources/app_colors.dart';
import '../../../constants/resources/app_dimens.dart';

class HomeScreenHorizontalListSectionView extends StatelessWidget {
  final String title;
  final Widget itemList;
  final bool isShowMore;
  final Function? onClickShowMore;

  const HomeScreenHorizontalListSectionView({
    super.key,
    required this.title,
    required this.itemList,
    this.onClickShowMore,
    this.isShowMore = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppDimens.marginLarge),
          child: Row(
            children: [
              TextViewWidget(
                title,
                textSize: AppDimens.textRegular,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              isShowMore
                  ? RoundedIconWidget(
                      icon: const Icon(
                        Icons.navigate_next_rounded,
                        color: AppColors.primaryButtonColor,
                      ),
                      backgroundColor: Colors.transparent,
                      contentPadding: 0,
                      onClickIcon: () => onClickShowMore?.call(),
                    )
                  : const SizedBox()
            ],
          ),
        ),
        const SizedBox(
          height: AppDimens.marginMedium2,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppDimens.marginLarge,
              right: AppDimens.marginCardMedium2,
            ),
            child: itemList,
          ),
        )
      ],
    );
  }
}
