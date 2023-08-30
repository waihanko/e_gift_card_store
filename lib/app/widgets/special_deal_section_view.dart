import 'package:e_gift_card_store/app/presentation/special_deals/special_deals_list_screen.dart';
import 'package:flutter/material.dart';
import '../constants/dummy/dummy.dart';
import '../presentation/home/components/home_screen_horizontal_list_section_view.dart';
import 'special_deal_item_widget.dart';

class SpecialDealSectionView extends StatelessWidget {
  const SpecialDealSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenHorizontalListSectionView(
      title: "Special Deals",
      isShowMore: true,
      itemList: Row(
        children: specialDealDummyList.map((item) =>  SpecialDealItemWidget(item: item)).toList()
      ),
      onClickShowMore: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SpecialDealsListScreen(),
        ),
      ),
    );
  }
}
