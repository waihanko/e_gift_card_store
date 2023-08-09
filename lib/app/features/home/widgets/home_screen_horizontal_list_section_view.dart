import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../../../constants/resources/app_dimens.dart';

class HomeScreenHorizontalListSectionView extends StatelessWidget {
  final String title;
  final Widget itemList;
  const HomeScreenHorizontalListSectionView({super.key, required this.title, required this.itemList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.marginXLarge),
          child: TextViewWidget(
            title,
            textSize: AppDimens.textRegular,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: AppDimens.marginMedium2,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppDimens.marginXLarge,
              right: AppDimens.marginCardMedium2,
            ),
            child: itemList,
          ),
        )
      ],
    );
  }
}
