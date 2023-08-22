import 'package:e_gift_card_store/app/constants/dummy/game_card_dummy_list.dart';
import 'package:flutter/material.dart';

import '../../../constants/dummy/top_up_card_dummy_list.dart';
import '../../../constants/resources/app_dimens.dart';
import '../../../widgets/game_card_item_widget.dart';
import 'home_screen_horizontal_list_section_view.dart';

class HorizontalGiftCardSectionView extends StatelessWidget {
  final String? title;
  final Function(GiftCardItemVo item)? onItemClick;

  const HorizontalGiftCardSectionView({
    this.title,
    this.onItemClick,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenHorizontalListSectionView(
      title: title ?? "",
      itemList: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: gameCardDummyList
            .take(5)
            .map(
              (item) => Container(
                width: 114,
                margin: const EdgeInsets.only(right: AppDimens.marginMedium2),
                child: GameCardItemWidget(
                    item: item, onClick: () => onItemClick!(item)),
              ),
            )
            .toList(),
      ),
    );
  }
}
