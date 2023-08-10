import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:e_gift_card_store/app/widgets/rounded_icon_widget.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/resources/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretch: true,
            toolbarHeight: MediaQuery.sizeOf(context).height * 0.2,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: AppColors.dimBlueBgColor,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppDimens.marginLarge),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextViewWidget(
                                    "Wai Han Ko",
                                    fontWeight: FontWeight.w800,
                                    textSize: AppDimens.textRegular2X,
                                  ),
                                  SizedBox(
                                    height: AppDimens.marginMedium,
                                  ),
                                  TextViewWidget(
                                    "WAIHANKO.DEV@GMAIL.COM",
                                    textColor: AppColors.secondaryTextColor,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  RoundedIconWidget(
                                      icon: Icon(Icons.person),
                                      contentPadding:
                                          AppDimens.marginCardMedium),
                                  SizedBox(
                                    width: AppDimens.marginMedium,
                                  ),
                                  Icon(Icons.navigate_next_rounded)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
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
                        color:  AppColors.darkBgColor,
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
            delegate: SliverChildListDelegate.fixed(
              [
                Container( color: AppColors.darkBgColor,
                padding: EdgeInsets.all(AppDimens.marginMedium),
                child: Row(
                  children: [
                    Icon(Icons.list_alt_rounded, color: AppColors.primaryButtonColor,)
                  ],
                ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
