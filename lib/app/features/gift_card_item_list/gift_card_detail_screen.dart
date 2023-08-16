import 'package:flutter/material.dart';
import '../../constants/resources/app_colors.dart';
import '../../constants/resources/app_dimens.dart';
import '../../widgets/rounded_icon_widget.dart';
import '../../widgets/text_view_widget.dart';
import 'package:collection/collection.dart';

class GiftCardDetailScreen extends StatefulWidget {
  final String title;

  const GiftCardDetailScreen({super.key, required this.title});

  @override
  State<GiftCardDetailScreen> createState() => _GiftCardDetailScreenStates();
}

class _GiftCardDetailScreenStates extends State<GiftCardDetailScreen>
    with TickerProviderStateMixin {
  late ScrollController _controller;
  bool sliverActionsHidden = false;
  BuildContext? tabContext;
  double opacity = 0;
  double toolBarHeight = 150;
  double tempDynamicHeight = 200;
  late List<double> itemStartPoint;
  final List<GlobalKey<State<StatefulWidget>>> dataKey = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  void scrollListener() {
    setState(() {
      opacity = (_controller.position.pixels / toolBarHeight).clamp(0.0, 1.0);
    });

    List<double> heightOfWidget = dataKey
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
      length: 4,
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
            actions: [
              RoundedIconWidget(
                icon: Icon(
                  Icons.favorite_outline_rounded,
                ),
                backgroundColor: Colors.transparent,
              )
            ],
            title: TextViewWidget(
              "Scroll Tabs",
              textColor: AppColors.primaryTextColor.withOpacity(opacity),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(28),
              child: TabBar(
                  indicatorColor: AppColors.secondaryButtonColor,
                  unselectedLabelColor: AppColors.secondaryTextColor,
                  dividerColor: Colors.transparent,
                  onTap: (index) {
                    _controller.position.animateTo(
                      itemStartPoint[index],
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  },
                  tabs: const [
                    Tab(
                      height: 28,
                      text: "Part 1",
                    ),
                    Tab(
                      height: 28,
                      text: "Part 2",
                    ),
                    Tab(
                      height: 28,
                      text: "Part 3",
                    ),
                    Tab(
                      height: 28,
                      text: "Part 4",
                    ),
                  ]),
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
                  background: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/test.png",
                                ),
                                fit: BoxFit.cover)),
                        // color: AppColors.primaryColor,
                      ),
                      Container(
                        padding: EdgeInsets.all(AppDimens.marginCardMedium2),
                        child: Column(
                          children: [
                            SizedBox(
                                height: kToolbarHeight +
                                    AppDimens.marginCardMedium),
                            Row(
                              children: [
                                Container(
                                  width: 86,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/img.png",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: -2,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 14,
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppDimens.marginXLarge),
                              topRight: Radius.circular(AppDimens.marginXLarge),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tempDynamicHeight = tempDynamicHeight + 40;
                        });
                      },
                      child: Container(
                        key: dataKey[0],
                        height: tempDynamicHeight,
                        color: Colors.white,
                        child: Center(
                            child: TextViewWidget(
                          "Part 1",
                          textSize: AppDimens.textHeading2X,
                        )),
                      ),
                    ),
                    Container(
                      key: dataKey[1],
                      height: 120,
                      color: Color(0xFF6F85B7),
                      child: Center(
                          child: TextViewWidget(
                        "Part 2",
                        textSize: AppDimens.textHeading2X,
                      )),
                    ),
                    Container(
                      key: dataKey[2],
                      height: 600,
                      color: Color(0xFF94B498),
                      child: Center(
                          child: TextViewWidget(
                        "Part 3",
                        textSize: AppDimens.textHeading2X,
                      )),
                    ),
                    Container(
                      key: dataKey[3],
                      height: 800,
                      color: Color(0xFFA2B5BB),
                      child: Center(
                          child: TextViewWidget(
                        "Part 4",
                        textSize: AppDimens.textHeading2X,
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
