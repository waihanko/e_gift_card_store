import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        padding: EdgeInsets.symmetric(horizontal: AppDimens.marginExtraSmall.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 54.w,
              height: 54.h,
              child: RoundedIconWidget(
                backgroundColor: backgroundColor,
                icon: SvgPicture.asset(
                  iconName,
                  height: 22.r,
                ),
                onClickIcon: () => onTapMenu?.call(),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            TextViewWidget(
              text,
              textSize: AppDimens.textSmall.sp,
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
