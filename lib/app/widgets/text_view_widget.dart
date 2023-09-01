import 'package:e_gift_card_store/app/constants/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/resources/app_dimens.dart';

class TextViewWidget extends StatelessWidget {
  final String text;
  final double? textSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final TextOverflow? textOverflow;
  final TextDecoration? textDecoration;
  final double? lineHeight;

  const TextViewWidget(
    this.text, {
    Key? key,
    this.textSize,
    this.fontWeight = FontWeight.normal,
    this.textColor = AppColors.kDark,
    this.textAlign = TextAlign.start,
    this.letterSpacing = 0.0,
    this.textOverflow = TextOverflow.ellipsis,
    this.textDecoration = TextDecoration.none,
    this.maxLines,
    this.lineHeight = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.manrope(
        fontSize: (textSize??AppDimens.textRegular).sp,
        color: textColor,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        decoration: textDecoration,
        height: lineHeight,
      ),
      maxLines: maxLines,
      overflow: maxLines != null? textOverflow : TextOverflow.visible,
    );
  }
}
