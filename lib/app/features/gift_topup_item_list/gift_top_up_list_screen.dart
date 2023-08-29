import 'package:flutter/material.dart';
import '../../constants/dummy/dummy.dart';
import '../../constants/resources/app_dimens.dart';
import '../../widgets/categories_dialog.dart';
import '../../widgets/choose_categories_sticky_widget.dart';
import '../../widgets/gift_top_up_item_widget.dart';
import '../../widgets/primary_app_bar_widget.dart';

class GiftTopUpItemListScreen extends StatefulWidget {
  final String title;

  const GiftTopUpItemListScreen({this.title = "", super.key});

  @override
  State<GiftTopUpItemListScreen> createState() =>
      _GiftTopUpItemListScreenState();
}

class _GiftTopUpItemListScreenState extends State<GiftTopUpItemListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBarWidget(title: widget.title),
      body: CustomScrollView(
        slivers: [
          ChooseCategoriesStickyWidget(
            title: widget.title,
            onClick: () => dialogBuilder(
              context,
              widget.title,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.marginCardMedium2,
                vertical: AppDimens.marginCardMedium2),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GiftTopUpItemWidget(
                    item: topUpCardDummyList[index],
                    onClick: () => {},
                  );
                },
                childCount: topUpCardDummyList.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: AppDimens.marginSmall,
                crossAxisSpacing: AppDimens.marginMedium,
                childAspectRatio: 0.6,
              ),
            ),
          )
        ],
      ),
    );
  }
}

Future<void> dialogBuilder(
  BuildContext context,
  String title,
) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return CategoriesDialog(
        title: title,
        categoryList: gameTopUpCategoDummy,
      );
    },
  );
}
