import 'package:e_gift_card_store/app/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

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
    GiftCardItemVo(name, imageUrl);
  }
}
