import 'package:e_gift_card_store/app/core/utils/app_utils.dart';
import 'package:e_gift_card_store/app/features/gift_topup_item_list/gift_top_up_detail_screen.dart';
import 'package:flutter/material.dart';

import '../../features/gift_card_item_list/gift_card_detail_screen.dart';
import '../../features/gift_card_item_list/gift_card_item_list_screen.dart';
import '../../features/gift_topup_item_list/gift_top_up_list_screen.dart';
import '../dummy/top_up_card_dummy_list.dart';

class ScreenRoute {
  static goToGiftCardDetailScreen(GiftCardItemVo itemVo, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GiftCardDetailScreen2(
          item: itemVo,
          bgColor: itemVo.bgColor,
        ),
      ),
    );
  }

  static goToGiftTopUpDetailScreen(
      GiftCardItemVo itemVo, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              GiftTopUpDetailScreen(item: itemVo, bgColor: itemVo.bgColor)),
    );
  }

  static goToGiftCardItemListScreen(String title, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => GiftCardItemListScreen(title: title)),
    );
  }

  static goToGiftTopUpItemListScreen(String title, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => GiftTopUpItemListScreen(title: title)),
    );
  }
}
