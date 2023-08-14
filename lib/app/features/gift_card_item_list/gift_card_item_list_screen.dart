import 'package:e_gift_card_store/app/constants/resources/app_colors.dart';
import 'package:e_gift_card_store/app/widgets/game_card_item_widget.dart';
import 'package:e_gift_card_store/app/widgets/rounded_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants/resources/app_dimens.dart';
import '../../widgets/sticky_header_catego_delegate.dart';
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
          SliverPersistentHeader(delegate: StickyHeaderCategoDelegate(
            height: 24,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: AppDimens.marginMedium2),
              color: Theme.of(context).canvasColor,
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: ()=> print("Hello"),
                  enableFeedback: true,
                  splashColor: AppColors.secondaryColor,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.list_rounded),
                      SizedBox(width: AppDimens.marginCardMedium,),
                      TextViewWidget("Hello", lineHeight: 0,fontWeight: FontWeight.w500,)
                    ],
                  ),
                ),
              ),
            )
          ),
          pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium2, vertical: AppDimens.marginCardMedium2),
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

