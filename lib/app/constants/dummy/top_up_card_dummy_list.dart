import 'dart:ui';

import 'package:e_gift_card_store/app/core/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

List<GiftCardItemVo> topUpCardDummyList = [
  GiftCardItemVo(
      "MOBILE LEGEND", "assets/images/top_up_dummy/mobile_legend.png"),
  GiftCardItemVo(
      "FORZA HORIZON 5", "assets/images/top_up_dummy/forza_horizon.png"),
  GiftCardItemVo("EGGY PARTY", "assets/images/top_up_dummy/eggy_go.png"),
  GiftCardItemVo("CS GO", "assets/images/top_up_dummy/cs_go.png"),
  GiftCardItemVo("CALL OF DUTY", "assets/images/top_up_dummy/call_of_duty.png"),
];

class GiftCardItemVo {
  final String name;
  final String imageUrl;
  List<Color>? bgColor;
  Color? textColor;

  GiftCardItemVo(this.name, this.imageUrl) {
    AppUtils.updatePaletteGenerator(imageUrl).then((paletteGenerator) {
      bgColor = [
        Color.lerp(paletteGenerator.dominantColor?.color, Colors.white, 0.4)!,
        Color.lerp(paletteGenerator.dominantColor?.color, Colors.grey, 0.1)!
      ];
      textColor = AppUtils.getTextColor(paletteGenerator.dominantColor?.color);
    });
  }

  GiftCardItemVo.normal(this.name, this.imageUrl) {
    GiftCardItemVo(name,imageUrl);
  }
}
