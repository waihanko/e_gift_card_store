import 'package:e_gift_card_store/app/widgets/sticky_header_catego_delegate.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';

class ChooseStickyCategoriesWidget extends StatelessWidget {
  const ChooseStickyCategoriesWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: StickyHeaderCategoDelegate(
          child: Container(
            color: AppColors.primaryColor,
            child: Align(
              child: Material(
                child: InkWell(
                  onTap: () => {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimens.marginMedium2,
                      vertical: AppDimens.marginMedium,
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.format_list_bulleted_outlined),
                        const SizedBox(
                          width: AppDimens.marginMedium,
                        ),
                        TextViewWidget(title)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          height: 48),
      pinned: true,
    );
  }
}
