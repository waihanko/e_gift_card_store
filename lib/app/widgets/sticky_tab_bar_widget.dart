import 'package:e_gift_card_store/app/widgets/sticky_header_catego_delegate.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';

class StickyTabBarWidget extends StatefulWidget {
  const StickyTabBarWidget({
    super.key,
  });

  @override
  State<StickyTabBarWidget> createState() => _StickyTabBarWidgetState();
}

class _StickyTabBarWidgetState extends State<StickyTabBarWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return SliverPersistentHeader(
      delegate: StickyHeaderCategoDelegate(
          child: ColoredBox(
            color: Colors.white,
            child: TabBar(
                indicatorColor: AppColors.kRed,
                controller: tabController,
                unselectedLabelColor: AppColors.kTextColor,
                dividerColor: Colors.white,
                tabs: [
                  Tab(height: 48, text: "CARD",),
                  Tab(height: 48, text: "DIRECT TOPUP"),
                ]),
          ),
          height: 48),
      pinned: true,
    );
  }
}
