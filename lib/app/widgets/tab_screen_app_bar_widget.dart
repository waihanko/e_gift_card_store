import 'package:flutter/material.dart';

import '../constants/resources/app_dimens.dart';
import 'text_view_widget.dart';

class TabScreenAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TabScreenAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(72.0),
      child: AppBar(
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 72,
        title: const TextViewWidget(
          "Item Category",
          textSize: AppDimens.textRegular2X,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72.0);
}
