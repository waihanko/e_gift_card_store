import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:e_gift_card_store/app/widgets/rounded_icon_widget.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/resources/app_colors.dart';
import '../../widgets/list_item/notification_category_list_item.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColors.kBlue,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(72.0),
        child: AppBar(
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 72,
          title: const TextViewWidget(
            "Message",
            textSize: AppDimens.textRegular2X,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: AppDimens.marginMedium2),
        children: [
          NotificationCategoryListItem(
            text: "Promotion",
            backgroundColor: TransparentColors.kPurple,
            icon: Icons.volume_up_rounded,
            onclick: () => print("Promotion"),
          ),
          NotificationCategoryListItem(
            text: "Notification",
            backgroundColor: TransparentColors.kYellow,
            icon: Icons.circle_notifications_rounded,
            onclick: () => print("Notification"),
          ),
          NotificationCategoryListItem(
            text: "Live Chat",
            backgroundColor: TransparentColors.kGreen,
            icon: Icons.chat_rounded,
            onclick: () => print("Live Chat"),
          ),
        ],
      ),
    );
  }
}
