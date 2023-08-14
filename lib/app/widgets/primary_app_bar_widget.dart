import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../constants/resources/app_dimens.dart';

class PrimaryAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const PrimaryAppBarWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(72.0),
      child: AppBar(
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 72,
        centerTitle: true,
        leading: ModalRoute.of(context)?.canPop == true
            ? Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              )
            : null,
        title: TextViewWidget(
          title,
          textSize: AppDimens.textRegular2X,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>  const Size.fromHeight(72.0);
}
