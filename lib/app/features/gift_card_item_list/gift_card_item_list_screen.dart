import 'package:e_gift_card_store/app/widgets/game_card_item_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/resources/app_dimens.dart';
import '../../widgets/choose_sticky_categories_widget.dart';
import '../../widgets/primary_app_bar_widget.dart';
class GiftCardItemListScreen extends StatefulWidget {
  final String title;

  const GiftCardItemListScreen({this.title = "", super.key});

  @override
  State<GiftCardItemListScreen> createState() => _GiftCardItemListScreenState();
}

class _GiftCardItemListScreenState extends State<GiftCardItemListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBarWidget(title: widget.title),
      body: CustomScrollView(
        slivers: [
          ChooseStickyCategoriesWidget(title: widget.title),
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

