import 'package:flutter/material.dart';

import '../../constants/resources/app_colors.dart';
import '../../constants/resources/app_dimens.dart';
import '../text_view_widget.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final Color bgColor;
  final Color borderColor;
  final Color textColor;
  final String text;
  final VoidCallback onPressed;
  final bool isTextAllCap;
  final double borderRadius;

  const PrimaryButtonWidget({
    this.bgColor = AppColors.kRed,
    this.textColor = Colors.white,
    this.borderColor = Colors.transparent,
    required this.text,
    required this.onPressed,
    this.isTextAllCap = false,
    this.borderRadius = AppDimens.marginXXLarge,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: bgColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius), // <-- Radius
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.marginCardMedium,
          vertical: AppDimens.marginCardMedium,
        ), // Adjust padding as needed
      ),
      child: TextViewWidget(
        isTextAllCap ? text.toUpperCase() : text,
        textColor: textColor,
        textSize: AppDimens.textMedium,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
