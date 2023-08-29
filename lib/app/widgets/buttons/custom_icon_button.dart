import 'package:flutter/material.dart';

import '../../constants/resources/app_colors.dart';
import '../../constants/resources/app_dimens.dart';
import '../text_view_widget.dart';

class CustomIconButton extends StatelessWidget {
  final Color bgColor;
  final Color borderColor;
  final Color foregroundColor;
  final VoidCallback onPressed;
  final double borderRadius;
  final Widget? child;

  const CustomIconButton({
    this.bgColor = AppColors.kRed,
    this.foregroundColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.child,
    required this.onPressed,
    this.borderRadius = AppDimens.marginXXLarge,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: bgColor,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius), // <-- Radius
        ),
      ),
      child: child??const SizedBox(),
    );
  }
}
