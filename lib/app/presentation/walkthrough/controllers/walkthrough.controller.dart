import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/routes.dart';

class WalkthroughController extends GetxController {
  bool get end => _currentPageIndex.value == 2;

  PageController get pageController => _pageController;
  final RxDouble _currentPageIndex = 0.0.obs;

  final _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );


  void onPageChanged(int controlPage) {
    double indexMoveTo = _currentPageIndex.value + controlPage;
    if (indexMoveTo > 2 || indexMoveTo < 0) return;
    changeCurrentPageIndex(indexMoveTo);
    pageController.animateToPage(_currentPageIndex.toInt(),
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  void changeCurrentPageIndex(double pageIndex) {
    _currentPageIndex.value = pageIndex;
  }
}
