import 'package:e_gift_card_store/app/widgets/game_card_item_widget.dart';
import 'package:e_gift_card_store/app/widgets/special_deal_section_view.dart';
import 'package:flutter/material.dart';

import '../../constants/dummy/categories_dummy.dart';
import '../../constants/resources/app_dimens.dart';
import '../../widgets/categories_dialog.dart';
import '../../widgets/choose_categories_sticky_widget.dart';
import '../../widgets/primary_app_bar_widget.dart';
import '../../widgets/special_deal_item_widget.dart';
import '../../widgets/sticky_tab_bar_widget.dart';
class SpecialDealsListScreen extends StatefulWidget {

  const SpecialDealsListScreen({super.key});

  @override
  State<SpecialDealsListScreen> createState() => _SpecialDealsListScreenState();
}

class _SpecialDealsListScreenState extends State<SpecialDealsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBarWidget(title: "Special Deals"),
      body: CustomScrollView(
        slivers: [
          StickyTabBarWidget(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium2, vertical: AppDimens.marginMedium),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return  SpecialDealItemWidget(isFromHome: false,);
                },
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> dialogBuilder(BuildContext context, String title,) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return CategoriesDialog(title: title, categoryList: gameTopUpCategoDummy);
    },
  );
}
