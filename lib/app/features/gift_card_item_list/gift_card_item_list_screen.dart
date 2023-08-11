import 'package:e_gift_card_store/app/widgets/game_card_item_widget.dart';
import 'package:e_gift_card_store/app/widgets/tab_screen_app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/resources/app_dimens.dart';
import '../../widgets/text_view_widget.dart';

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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(72.0),
        child: AppBar(
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 72,
          centerTitle: true,
          title:  TextViewWidget(
            widget.title,
            textSize: AppDimens.textRegular2X,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium2),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return GameCardItemWidget();
                },
                childCount: 10,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
