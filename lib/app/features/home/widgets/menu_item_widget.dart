import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/resources/app_dimens.dart';
import '../../../widgets/rounded_icon_widget.dart';
import '../../../widgets/text_view_widget.dart';

class MenuItemWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final String iconName;
  final Function? onTapMenu;

  const MenuItemWidget({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.iconName,
    this.onTapMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppDimens.marginExtraSmall),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 54,
              height: 54,
              child: RoundedIconWidget(
                backgroundColor: backgroundColor,
                icon: SvgPicture.asset(
                  iconName,
                  height: 22,
                ),
                onClickIcon: () => onTapMenu?.call(),
              ),
            ),
            SizedBox(
              height: AppDimens.marginMedium,
            ),
            TextViewWidget(
              text,
              textSize: AppDimens.textSmall,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
