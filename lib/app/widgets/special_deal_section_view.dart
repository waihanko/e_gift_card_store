import 'package:e_gift_card_store/app/features/special_deals/special_deals_list_screen.dart';
import 'package:flutter/material.dart';
import '../features/home/widgets/home_screen_horizontal_list_section_view.dart';
import 'special_deal_item_widget.dart';

class SpecialDealSectionView extends StatelessWidget {
  const SpecialDealSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenHorizontalListSectionView(
      title: "Special Deals",
      isShowMore: true,
      itemList: Row(
        children: List.generate(
          5,
          (index) => const SpecialDealItemWidget(),
        ),
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
