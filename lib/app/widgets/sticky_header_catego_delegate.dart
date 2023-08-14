import 'package:flutter/material.dart';

class StickyHeaderCategoDelegate extends SliverPersistentHeaderDelegate {
  StickyHeaderCategoDelegate({
    required this.child,
    required this.height,
  });

  final double height;
  final Widget child;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  bool shouldRebuild(StickyHeaderCategoDelegate oldDelegate) {
    return true;
  }
}
