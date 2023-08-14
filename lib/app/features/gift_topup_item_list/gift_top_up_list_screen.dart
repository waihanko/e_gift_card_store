import 'package:e_gift_card_store/app/widgets/game_card_item_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/dummy/categories_dummy.dart';
import '../../constants/resources/app_dimens.dart';
import '../../widgets/categories_dialog.dart';
import '../../widgets/choose_sticky_categories_widget.dart';
import '../../widgets/primary_app_bar_widget.dart';
class GiftTopUpItemListScreen extends StatefulWidget {
  final String title;

  const GiftTopUpItemListScreen({this.title = "", super.key});

  @override
  State<GiftTopUpItemListScreen> createState() => _GiftTopUpItemListScreenState();
}

class _GiftTopUpItemListScreenState extends State<GiftTopUpItemListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBarWidget(title: widget.title),
      body: CustomScrollView(
        slivers: [
          ChooseStickyCategoriesWidget(title: widget.title, onClick: ()=> dialogBuilder(context, widget.title)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.marginCardMedium2,
                vertical: AppDimens.marginCardMedium2),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const GameCardItemWidget();
                },
                childCount: 10,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: AppDimens.marginSmall,
                crossAxisSpacing: AppDimens.marginMedium,
                childAspectRatio: 0.5,
              ),
            ),
          )
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
