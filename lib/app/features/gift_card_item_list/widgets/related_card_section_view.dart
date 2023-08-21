import 'package:flutter/material.dart';

import '../../../constants/resources/app_dimens.dart';
import '../../../widgets/game_card_item_widget.dart';
import '../../../widgets/text_view_widget.dart';

class RelatedCardSectionView extends StatelessWidget {
  const RelatedCardSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: AppDimens.marginLarge,
            top: AppDimens.marginCardMedium
          ),
          child: TextViewWidget(
            "Related Card",
            textSize: AppDimens.textRegular2X,
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
              left: AppDimens.marginLarge,
              right: AppDimens.marginCardMedium,
            ),
            child: Row(
              children: List.generate(5, (index) =>  Container(
                width: 114,
                margin: const EdgeInsets.only(right: AppDimens.marginMedium2),
                child: const GameCardItemWidget(),
              ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: AppDimens.marginMedium2,
        ),
      ],
    );
  }
}
