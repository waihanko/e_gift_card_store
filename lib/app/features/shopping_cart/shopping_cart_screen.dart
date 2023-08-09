import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/resources/app_colors.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(72.0),
        child: AppBar(
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 72,
          title: const TextViewWidget(
            "Shopping Cart",
            textSize: AppDimens.textRegular2X,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(AppDimens.marginCardMedium),
            width: double.infinity,
            height: 120,
            color: AppColors.secondaryColor,
          ),
          Container(
            margin: EdgeInsets.all(AppDimens.marginCardMedium),
            width: double.infinity,
            height: 120,
            color: AppColors.secondaryColor,
          ),
          Container(
            margin: EdgeInsets.all(AppDimens.marginCardMedium),
            width: double.infinity,
            height: 120,
            color: AppColors.secondaryColor,
          ),
        ],
      ),
    );
  }
}
