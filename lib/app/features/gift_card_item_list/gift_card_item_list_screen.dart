import 'package:e_gift_card_store/app/constants/dummy/dummy.dart';
import 'package:e_gift_card_store/app/widgets/game_card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import '../../constants/dummy/categories_dummy.dart';
import '../../constants/resources/app_dimens.dart';
import '../../widgets/categories_dialog.dart';
import '../../widgets/choose_categories_sticky_widget.dart';
import '../../widgets/primary_app_bar_widget.dart';
import 'gift_card_detail_screen.dart';
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
          ChooseCategoriesStickyWidget(title: widget.title, onClick: ()=> dialogBuilder(context, widget.title)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.marginCardMedium2,
                vertical: AppDimens.marginCardMedium2),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GameCardItemWidget(onClick: ()=> goToGiftCardDetailScreen("Binance Gift Card", context),);
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
      return CategoriesDialog(title: title, categoryList: giftCardCategoDummy,);
    },
  );
}


goToGiftCardDetailScreen(String title, BuildContext context) {
  updatePaletteGenerator(dummyItemImage).then((value) => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => GiftCardDetailScreen2(title: title, colorValue : value)),
  ));

}

Future<PaletteGenerator> updatePaletteGenerator (String imagePath)async
{
  var paletteGenerator = await PaletteGenerator.fromImageProvider(
    Image.asset(imagePath).image,
  );
  return paletteGenerator;
}