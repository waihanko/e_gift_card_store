//ignore: must_be_immutable
import 'package:flutter/material.dart';

import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';
import 'rounded_icon_widget.dart';
import 'package:collection/collection.dart';

import 'text_view_widget.dart';

//ignore: must_be_immutable
class ScrollableTabWidget extends StatefulWidget {
  final String title;
  final Widget header;
  final List<Widget> tabBarView;
  final List<String> tabs;
  late List<GlobalKey<State<StatefulWidget>>> dataKey;

  ScrollableTabWidget({
    super.key,
    required this.title,
    required this.header,
    required this.tabBarView,
    required this.tabs,
  }):assert(tabs.length == tabBarView.length, "Tab bar  and Tab Bar View length must be same") {
    dataKey = List.generate(
      tabs.length,
          (index) => GlobalKey(),
    );
  }

  @override
  State<ScrollableTabWidget> createState() => _ScrollableTabWidgetStates();
}

class _ScrollableTabWidgetStates extends State<ScrollableTabWidget> {
  late ScrollController _controller;
  BuildContext? tabContext;
  double opacity = 0;
  late double toolBarHeight = 140;
  late List<double> itemStartPoint;

  void scrollListener() {
    setState(() {
      opacity = (_controller.position.pixels / toolBarHeight).clamp(0.0, 1.0);
    });

    List<double> heightOfWidget = widget.dataKey
        .mapIndexed((index, item) =>
    ((item.currentContext?.findRenderObject() as RenderBox)
        .size
        .height))
        .toList();

    double previousValue = 0.0;
    itemStartPoint = [
      0.0,
      ...heightOfWidget.map((value) {
        double newValue = previousValue + value;
        previousValue = newValue;
        return newValue + toolBarHeight;
      })
    ];

    int? index = itemStartPoint
        .lastIndexWhere((value) => _controller.position.pixels >= value);

    DefaultTabController.of(tabContext!).animateTo(index < 0 ? 0 : index,
        duration: const Duration(milliseconds: 300));
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(scrollListener);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.tabs.length,
      child: Builder(builder: (context) {
        tabContext = context;
        return Scaffold(
          extendBody: false,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: AppColors.primaryColor.withOpacity(opacity),
            surfaceTintColor: Colors.transparent,
            bottomOpacity: opacity,
            centerTitle: true,
            iconTheme: IconThemeData(
                color: opacity < 0.5 ? AppColors.primaryColor : Colors.black),
            actions: const [
              RoundedIconWidget(
                icon: Icon(
                  Icons.favorite_outline_rounded,
                ),
                backgroundColor: Colors.transparent,
              )
            ],
            title: TextViewWidget(
              widget.title,
              textColor: AppColors.primaryTextColor.withOpacity(opacity),
              maxLines: 1,
              textSize: AppDimens.textMedium,
              fontWeight: FontWeight.bold,
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(28),
              child: TabBar(
                  indicatorColor: AppColors.secondaryButtonColor,
                  unselectedLabelColor: AppColors.secondaryTextColor,
                  dividerColor: Colors.transparent,
                  isScrollable: true,
                  onTap: (index) {
                    _controller.position.animateTo(
                      itemStartPoint[index],
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  },
                  tabs: widget.tabs
                      .map(
                        (e) => Tab(
                      text: e,
                    ),
                  )
                      .toList()),
            ),
          ),
          body: CustomScrollView(
            controller: _controller,
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                toolbarHeight: toolBarHeight,
                automaticallyImplyLeading: false,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: widget.header,
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.tabBarView
                      .mapIndexed(
                        (index, item) => SizedBox(
                      key: widget.dataKey[index],
                      child: item,
                    ),
                  )
                      .toList(),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}