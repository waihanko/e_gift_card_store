import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class AppUtils {
  static Future<PaletteGenerator> updatePaletteGenerator(
      String imagePath) async {
    var paletteGenerator = await PaletteGenerator.fromImageProvider(
      Image.asset(imagePath).image,
    );
    return paletteGenerator;
  }

  static Color getTextColor(Color? color) {
    final luminance = color?.computeLuminance();
    return (luminance??0) > 0.5 ? Colors.black : Colors.white;
  }

}

