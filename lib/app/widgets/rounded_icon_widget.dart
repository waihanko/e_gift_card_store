import 'package:flutter/material.dart';

import '../constants/resources/app_colors.dart';

class RoundedIconWidget extends StatelessWidget {
  final Widget icon;
  final Function? onClickIcon;
  final Color splashColor;
  final Color highlightColor;
  final Color backgroundColor;
  final double contentPadding;

  const RoundedIconWidget({
    Key? key,
    required this.icon,
    this.backgroundColor = AppColors.secondaryColor,
    this.splashColor = AppColors.primaryColor,
    this.highlightColor = AppColors.primaryColor,
    this.contentPadding = 12.0,
    this.onClickIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: ()=> onClickIcon?.call(),
      elevation: 0,
      constraints: const BoxConstraints(), //removes empty spaces around of icon
      shape: const CircleBorder(), //circular button
      // splashColor: splashColor.withOpacity(0.2),
      // highlightColor: highlightColor.withOpacity(0.2) ,
      // focusColor: highlightColor.withOpacity(0.2) ,
      // hoverColor: highlightColor.withOpacity(0.2) ,
      highlightElevation: 0,
      fillColor: backgroundColor,
      padding:  EdgeInsets.all(contentPadding),
      child: icon,
    );
  }
}
