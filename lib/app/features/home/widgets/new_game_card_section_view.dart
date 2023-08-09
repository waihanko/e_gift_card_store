import 'package:flutter/material.dart';

import '../../../constants/resources/app_dimens.dart';
import '../../../widgets/game_card_item_widget.dart';
import 'home_screen_horizontal_list_section_view.dart';

class NewGameCardSectionView extends StatelessWidget {
  const NewGameCardSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenHorizontalListSectionView(
      title: "New Game Card",
      itemList: Row(
        children: List.generate(5, (index) =>  Container(
          width: 114,
          margin: const EdgeInsets.only(right: AppDimens.marginMedium2),
          child: const GameCardItemWidget(),
        ),
        ),
      ),
    );
  }
}
