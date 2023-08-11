import 'dart:math';

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
      backgroundColor: AppColors.screenBgColor,
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
                      color: AppColors.secondaryColor,
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
                                    textColor: AppColors.primaryTextColor,
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
              delegate: SliverChildListDelegate.fixed(
            [
              Container(
                color: AppColors.primaryColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.marginCardMedium2,
                          vertical: AppDimens.marginSmall),
                      child: Row(
                        children: [
                          Icon(Icons.list_alt_rounded),
                          SizedBox(
                            width: AppDimens.marginCardMedium,
                          ),
                          TextViewWidget(
                            "My Orders",
                            fontWeight: FontWeight.w600,
                          ),
                          Spacer(),
                          Icon(Icons.navigate_next_rounded)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppDimens.marginCardMedium,
                    ),
                    Container(
                      height: 0.1,
                      color: AppColors.iconColor,
                    ),
                    SizedBox(
                      height: AppDimens.marginCardMedium,
                    ),
                    Row(
                      children:
                          ["Wait Send", "Sending", "Completed", "Refunded"]
                              .map(
                                (item) => Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextViewWidget(
                                        "${Random().nextInt(100)}",
                                        fontWeight: FontWeight.bold,
                                        textSize: AppDimens.textHeading1X,
                                      ),
                                      const SizedBox(
                                        height: AppDimens.marginMedium,
                                      ),
                                      TextViewWidget(
                                        item,
                                        textSize: AppDimens.textSmall,
                                        textColor: AppColors.secondaryTextColor,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                    ),
                    const SizedBox(
                      height: AppDimens.marginCardMedium2,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppDimens.marginCardMedium,
              ),
              Container(
                color: AppColors.primaryColor,
                padding:
                    const EdgeInsets.symmetric(vertical: AppDimens.marginSmall),
                child: Column(
                  children: [
                    ProfileMenuListItem(
                        iconName: Icons.account_balance_rounded,
                        menuName: "My Account"),
                    ProfileMenuListItem(
                        iconName: Icons.stars_rounded, menuName: "My Stars"),
                    ProfileMenuListItem(
                        iconName: Icons.credit_card, menuName: "My Cards"),
                    ProfileMenuListItem(
                        iconName: Icons.airplane_ticket_outlined,
                        menuName: "My Coupon"),
                    ProfileMenuListItem(
                        iconName: Icons.favorite_outline_rounded,
                        menuName: "My Favourite"),
                  ],
                ),
              ),
              const SizedBox(
                height: AppDimens.marginCardMedium,
              ),
              Container(
                color: AppColors.primaryColor,
                padding:
                    const EdgeInsets.symmetric(vertical: AppDimens.marginSmall),
                child: Column(
                  children: [
                    ProfileMenuListItem(
                        iconName: Icons.translate_rounded,
                        menuName: "Language/Currency"),
                    ProfileMenuListItem(
                        iconName: Icons.settings, menuName: "Setting"),
                  ],
                ),
              ),
              const SizedBox(
                height: AppDimens.marginCardMedium,
              ),
              Container(
                color: AppColors.primaryColor,
                padding:
                    const EdgeInsets.symmetric(vertical: AppDimens.marginSmall),
                child: const ProfileMenuListItem(
                  iconName: Icons.lightbulb_circle_rounded,
                  menuName: "About",
                ),
              ),
              const SizedBox(
                height: 120,
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class ProfileMenuListItem extends StatelessWidget {
  final IconData iconName;
  final String menuName;

  const ProfileMenuListItem({
    super.key,
    required this.iconName,
    required this.menuName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.marginCardMedium2,
          vertical: AppDimens.marginCardMedium2),
      child: Row(
        children: [
          Icon(iconName),
          SizedBox(
            width: AppDimens.marginCardMedium,
          ),
          TextViewWidget(
            menuName,
            fontWeight: FontWeight.w600,
          ),
          Spacer(),
          Icon(Icons.navigate_next_rounded)
        ],
      ),
    );
  }
}
