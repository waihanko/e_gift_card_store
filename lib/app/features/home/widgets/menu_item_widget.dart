import 'package:flutter/material.dart';

import '../../../constants/resources/app_dimens.dart';
import '../../../widgets/rounded_icon_widget.dart';
import '../../../widgets/text_view_widget.dart';

class MenuItemWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final IconData menuIcon;

  const MenuItemWidget({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.menuIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.marginMedium),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedIconWidget(
              backgroundColor: backgroundColor,
              icon: Icon(
                menuIcon,
                size: 28,
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
