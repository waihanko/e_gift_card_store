import 'package:flutter/material.dart';
import '../../constants/resources/app_colors.dart';
import '../../constants/resources/app_dimens.dart';
import '../../widgets/rounded_icon_widget.dart';
import '../../widgets/text_view_widget.dart';

class GiftCardDetailScreen extends StatefulWidget {
  final String title;

  const GiftCardDetailScreen({super.key, required this.title});

  @override
  State<GiftCardDetailScreen> createState() => _GiftCardDetailScreenState();
}

class _GiftCardDetailScreenState extends State<GiftCardDetailScreen>
    with TickerProviderStateMixin {
  late ScrollController _controller;
  bool sliverActionsHidden = false;
  double opacity = 0;
  final List<GlobalKey<State<StatefulWidget>>> dataKey = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  void scrollListener() {
    setState(() {
      opacity =((_controller.position.pixels)/ (MediaQuery.sizeOf(context).height * 0.2) ).clamp(0.0, 1.0);
    });
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      extendBody: true,
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
          "Mobile Legend Diamond",
          textColor: AppColors.primaryTextColor.withOpacity(opacity),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(28),
          child: TabBar(
              indicatorColor: AppColors.secondaryButtonColor,
              controller: tabController,
              unselectedLabelColor: AppColors.secondaryTextColor,
              dividerColor: Colors.transparent,
              onTap: (index) => {
                tabController.index = index,
                print(tabController.index),
                    Scrollable.ensureVisible(dataKey[index].currentContext!,
                        duration: const Duration(milliseconds: 600))
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
                Tab(height: 28, text: "Part 4"),
              ]),
        ),
      ),
      body: CustomScrollView(
        controller: _controller,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            key: dataKey[0],
            toolbarHeight: MediaQuery.sizeOf(context).height * 0.2,
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
                    padding: EdgeInsets.all(AppDimens.marginCardMedium2),
                    child: Column(
                      children: [
                        SizedBox(
                            height:
                                kToolbarHeight + AppDimens.marginCardMedium),
                        Row(
                          children: [
                            Container(
                              width: 86,
                              height: 120,
                              color: AppColors.secondaryButtonColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                    // color: AppColors.primaryColor,
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
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 500,
              color: Colors.yellow,
              child: Center(child: Text("Section 1")),
            ),
            Container(
              key: dataKey[1],
              height: 500,
              color: Colors.red,
              child: Center(child: Text("Section 2")),
            ),
            Container(
              key: dataKey[2],
              height: 500,
              color: Colors.green,
              child: Center(child: Text("Section 3")),
            ),
            Container(
              key: dataKey[3],
              height: 500,
              color: Colors.grey,
              child: Center(child: Text("Section 4")),
            ),
          ]))
        ],
      ),
    );
  }
}
