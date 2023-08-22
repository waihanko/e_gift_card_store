import 'package:flutter/material.dart';

import '../../../constants/dummy/game_card_dummy_list.dart';
import '../../../constants/dummy/top_up_card_dummy_list.dart';
import '../../../constants/resources/app_dimens.dart';
import '../../../widgets/gift_top_up_item_widget.dart';
import 'home_screen_horizontal_list_section_view.dart';

class HorizontalGiftTopUpSectionView extends StatelessWidget {
  final String? title;
  final Function(GiftCardItemVo item)? onItemClick;

  const HorizontalGiftTopUpSectionView({
    Key? key,
    this.title,
    this.onItemClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenHorizontalListSectionView(
      title: "New Game TopUp",
      itemList: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: topUpCardDummyList
            .take(5)
            .map(
              (item) => Container(
                width: 114,
                margin: const EdgeInsets.only(right: AppDimens.marginMedium2),
                child: GiftTopUpItemWidget(item: item, onClick: () => onItemClick!(item)),
              ),
            )
            .toList(),
      ),
    );
  }
}
