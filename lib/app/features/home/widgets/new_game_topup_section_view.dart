import 'package:flutter/material.dart';

import '../../../constants/resources/app_dimens.dart';
import '../../../widgets/game_top_up_item_widget.dart';
import 'home_screen_horizontal_list_section_view.dart';

class NewGameTopUpSectionView extends StatelessWidget {
  const NewGameTopUpSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenHorizontalListSectionView(
      title: "New Game TopUp",
      itemList: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          3,
          (index) => Container(
            width: 114,
            margin: const EdgeInsets.only(right: AppDimens.marginMedium2),
            child: const GameTopUpItemWidget(),
          ),
        ),
      ),
    );
  }
}
