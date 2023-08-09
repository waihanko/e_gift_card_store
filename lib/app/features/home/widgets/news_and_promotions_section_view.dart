import 'package:flutter/material.dart';

import '../../../constants/resources/app_dimens.dart';
import 'home_screen_horizontal_list_section_view.dart';
import '../../../widgets/news_and_promotion_item_widget.dart';

class NewsAndPromotionsSectionView extends StatelessWidget {
  const NewsAndPromotionsSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenHorizontalListSectionView(
      title:   "News & Promotions",
      itemList: Row(
        children: List.generate(5, (index) =>  Container(
          margin: EdgeInsets.only(right: AppDimens.marginMedium2),
          width: 240,
          child: NewsAndPromotionItemWidget(),
        ),)
      ),
    );
  }
}
