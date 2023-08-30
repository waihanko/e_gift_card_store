import 'package:flutter/material.dart';

import '../../../constants/resources/app_colors.dart';
import '../../../constants/resources/app_dimens.dart';
import '../../../widgets/rounded_icon_widget.dart';
import '../../../widgets/text_view_widget.dart';

class NotificationCategoryListItem extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final IconData icon;
  final VoidCallback onclick;
  const NotificationCategoryListItem({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.icon,
    required this.onclick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppDimens.marginCardMedium,
        right: AppDimens.marginCardMedium,
        bottom: AppDimens.marginMedium2,
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.kPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.marginMedium2),
          ),
        ),
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              RoundedIconWidget(
                icon: Icon(
                  icon,
                  size: 28,
                ),
                backgroundColor: backgroundColor,
              ),
              const SizedBox(
                width: AppDimens.marginMedium2,
              ),
              TextViewWidget(
                text,
                fontWeight: FontWeight.w700,
                textSize: AppDimens.textRegular2X,
              )
            ],
          ),
        ),
        onPressed: onclick,
      ),
    );
  }
}
