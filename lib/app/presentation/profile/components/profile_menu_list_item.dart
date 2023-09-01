import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/resources/app_dimens.dart';
import '../../../widgets/text_view_widget.dart';

class ProfileMenuListItem extends StatelessWidget {
  final IconData iconName;
  final String menuName;

  const ProfileMenuListItem({
    super.key,
    required this.iconName,
    required this.menuName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppDimens.marginCardMedium2.w,
          vertical: AppDimens.marginCardMedium2.h),
      child: Row(
        children: [
          Icon(
            iconName,
            size: 18.r,
          ),
          AppDimens.marginCardMedium.horizontalSpace,
          TextViewWidget(
            menuName,
            fontWeight: FontWeight.w600,
            textSize: AppDimens.textMedium,
          ),
          const Spacer(),
          Icon(Icons.navigate_next_rounded,  size: 18.r,
          )
        ],
      ),
    );
  }
}
