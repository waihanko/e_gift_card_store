import 'package:e_gift_card_store/app/constants/resources/app_colors.dart';
import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/dummy/dummy.dart';
import '../../constants/routing/screen_route.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/search_field_widget.dart';
import '../../widgets/special_deal_item_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchEditingController = TextEditingController();
  bool isShowDataView = false;
  bool isShowClearButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchViewAppBarWidget(
        child: SearchFieldWidget(
          controller: searchEditingController,
          isShowClearButton: isShowClearButton,
          onChanged: (value) {
            setState(() {
              isShowClearButton = value.isNotEmpty;
              if (value.isEmpty) {
                isShowDataView = false;
              }
            });
          },
          onSubmit: (value) => onSearchSubmitted(value),
          onClear: () {
            setState(() {
              searchEditingController.clear();
              isShowDataView = false;
            });
          },
        ),
      ),
      body: isShowDataView
          ? SearchDataSectionView()
          : Container(
              padding: EdgeInsets.all(AppDimens.marginCardMedium2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const TextViewWidget("Recent Searches"),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => {},
                        child: const TextViewWidget(
                          "Clear All",
                          textColor: AppColors.kTextColor,
                          textSize: AppDimens.textMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppDimens.marginMedium,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    children: ["Mobile", "PUBG", "Stream"]
                        .map(
                          (item) => GestureDetector(
                            onTap: () {
                              setState(() {
                                searchEditingController.value =
                                    searchEditingController.value.copyWith(
                                  text: item,
                                  selection: TextSelection(
                                      baseOffset: item.length,
                                      extentOffset: item.length),
                                  composing: TextRange.empty,
                                );
                                onSearchSubmitted(item);
                              });
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.all(AppDimens.marginMedium),
                              margin:
                                  const EdgeInsets.all(AppDimens.marginSmall),
                              decoration: const BoxDecoration(
                                color: AppColors.kSecondary,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(AppDimens.marginMedium),
                                ),
                              ),
                              child: TextViewWidget(
                                item,
                                textSize: AppDimens.textMedium,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
    );
  }

  onSearchSubmitted(String value) {
    setState(() {
      isShowDataView = true;
    });
  }
}

class SearchDataSectionView extends StatefulWidget {
  const SearchDataSectionView({
    super.key,
  });

  @override
  State<SearchDataSectionView> createState() => _SearchDataSectionViewState();
}

class _SearchDataSectionViewState extends State<SearchDataSectionView> {
  String? _selectedLanguage;

  final List<String> _languages = ['Gift Cards', 'Top-Up'];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          delegate: SectionHeaderDelegate(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.marginCardMedium2),
              child: Row(
                children: _languages
                    .map(
                      (language) => Padding(
                        padding: const EdgeInsets.only(
                            right: AppDimens.marginCardMedium),
                        child: Theme(
                          data: ThemeData().copyWith(),
                          child: ChoiceChip(
                            backgroundColor: AppColors.kSecondary,
                            selectedColor: AppColors.kLightRed,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                AppDimens.marginCardMedium2,
                              ),
                            ),
                            label: TextViewWidget(
                              language,
                              fontWeight: FontWeight.w600,
                              textSize: AppDimens.textMedium,
                              textColor: (_selectedLanguage == language)
                                  ? AppColors.kRed
                                  : AppColors.kDark,
                            ),
                            selected: _selectedLanguage == language,
                            onSelected: (selected) {
                              if (selected) {
                                setState(() {
                                  _selectedLanguage = language;
                                });
                              }
                            },
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          pinned: true,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return InkWell(
                onTap:()=> ScreenRoute.goToGiftCardDetailScreen(gameCardDummyList[index], context),
                child: Container(
                  padding: EdgeInsets.all( AppDimens.marginCardMedium2),
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(AppDimens.marginMedium),
                          color: AppColors.kSecondary,
                          image: DecorationImage(
                              image: AssetImage(
                                gameCardDummyList[index].imageUrl,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: AppDimens.marginMedium,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextViewWidget("${gameCardDummyList[index].name}", fontWeight: FontWeight.w600, textSize: AppDimens.textMedium,),
                            SizedBox(height: AppDimens .marginSmall,),
                            TextViewWidget("Global", textSize: AppDimens.textMedium, textColor: AppColors.kTextColor,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            childCount: gameCardDummyList.length,
          ),
        ) 
      ],
    );
  }
}

class SearchViewAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final Widget child;

  const SearchViewAppBarWidget({super.key, required this.child});

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
        title: child,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72.0);
}

class SectionHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  SectionHeaderDelegate({required this.child, this.height = 50});

  @override
  Widget build(context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: AppColors.kPrimary,
      alignment: Alignment.center,
      child: child,
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
