import 'package:flutter/material.dart';

import '../../../constants/dummy/dummy.dart';
import '../../../constants/resources/app_dimens.dart';
import 'home_screen_horizontal_list_section_view.dart';
import '../../../widgets/platform_item_widget.dart';

class PlatformItemSectionView extends StatelessWidget {
  const PlatformItemSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenHorizontalListSectionView(
      itemList: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: newsAndPromotionDummyList.reversed.map((item) =>  Container(
            width: 240,
            margin: EdgeInsets.only(right: AppDimens.marginMedium2),
            child: PlatformItemWidget(giftCardItemVo: item),
          )).toList()
      ),
      title:  "Platform Items",
    );
  }
}
