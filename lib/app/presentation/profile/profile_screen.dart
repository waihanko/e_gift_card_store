import 'dart:math';

import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:e_gift_card_store/app/widgets/rounded_icon_widget.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/dummy/dummy.dart';
import '../../constants/resources/app_colors.dart';
import 'components/profile_menu_list_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColors.kWhite,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretch: true,
            toolbarHeight: 0.23.sh,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: AppColors.kSecondary,
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppDimens.marginLarge.w),
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
                                  AppDimens.marginMedium.verticalSpace,
                                  TextViewWidget(
                                    "WAIHANKO.DEV@GMAIL.COM",
                                    textColor: AppColors.kDark,
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
                                      icon: Icon(Icons.person,size:  24.r),
                                      contentPadding:
                                          AppDimens.marginCardMedium.r),
                                  AppDimens.marginMedium.horizontalSpace,
                                  Icon(Icons.navigate_next_rounded,size:  24.r)
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
                      decoration: BoxDecoration(
                        color: AppColors.kPrimary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppDimens.marginXLarge.r),
                          topRight: Radius.circular(AppDimens.marginXLarge.r),
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
                color: AppColors.kPrimary,
                child: Column(
                  children: [
                    AppDimens.marginSmall.verticalSpace,
                    Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: AppDimens.marginCardMedium2.w,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.list_alt_rounded,
                            size: 18.r,
                          ),
                          AppDimens.marginCardMedium.horizontalSpace,
                          const TextViewWidget(
                            "My Orders",
                            fontWeight: FontWeight.w600,
                            textSize: AppDimens.textMedium,
                          ),
                          const Spacer(),
                          Icon(Icons.navigate_next_rounded, size: 18.r,)
                        ],
                      ),
                    ),
                    AppDimens.marginCardMedium.verticalSpace,
                    Container(
                      height: 0.1,
                      color: AppColors.kDark,
                    ),
                    AppDimens.marginCardMedium.verticalSpace,
                    Row(
                      children: orderStatus
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
                                    textColor: AppColors.kTextColor,
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    AppDimens.marginCardMedium2.verticalSpace,
                  ],
                ),
              ),
              AppDimens.marginMedium.verticalSpace,
              Container(
                color: AppColors.kPrimary,
                padding: EdgeInsets.symmetric(vertical: AppDimens.marginSmall.h),
                child: const Column(
                  children: [
                    ProfileMenuListItem(
                      iconName: Icons.account_balance_rounded,
                      menuName: "My Account",
                    ),
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
              AppDimens.marginMedium.verticalSpace,
              Container(
                color: AppColors.kPrimary,
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
              AppDimens.marginMedium.verticalSpace,
              Container(
                color: AppColors.kPrimary,
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

