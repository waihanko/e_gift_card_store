import 'package:e_gift_card_store/app/constants/resources/app_colors.dart';
import 'package:e_gift_card_store/app/constants/resources/app_dimens.dart';
import 'package:e_gift_card_store/app/widgets/rounded_icon_widget.dart';
import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/dummy/categories_dummy.dart';

class CategoriesDialog extends StatefulWidget {
  final String? title;
  final List<GiftCardCatego> categoryList;

  const CategoriesDialog({
    Key? key,
    this.title, required this.categoryList ,
  }) : super(key: key);

  @override
  CategoriesDialogState createState() => CategoriesDialogState();
}

class CategoriesDialogState extends State<CategoriesDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimens.marginMedium2),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppDimens.marginMedium),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(AppDimens.marginMedium2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextViewWidget(
                        widget.title ?? "",
                        textAlign: TextAlign.start,
                        textSize: AppDimens.textRegular2X,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(
                        height: AppDimens.marginMedium2,
                      ),
                      Container(height: 0.3, color: AppColors.primaryButtonColor,),
                      Container(
                        constraints: BoxConstraints(
                          minWidth: double.infinity,
                          maxHeight: MediaQuery.of(context).size.height * 0.7,
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Material(
                            child: InkWell(
                              onTap: ()=> print("Click $index"),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: AppDimens.marginCardMedium2, horizontal: AppDimens.marginMedium),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(widget.categoryList[index].iconLink, width: 20),
                                    SizedBox(width: AppDimens.marginMedium,),
                                    TextViewWidget(widget.categoryList[index].name, fontWeight: FontWeight.w500, textSize: AppDimens.textMedium,),
                                    Spacer(),
                                    TextViewWidget(widget.categoryList[index].totalNumber, textColor: AppColors.secondaryTextColor, textSize: AppDimens.textMedium),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          itemCount: widget.categoryList.length,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              top: 0,
              child: RoundedIconWidget(
                icon: Icon(
                  Icons.cancel_outlined,
                  color: AppColors.primaryButtonColor,
                  size: 22,
                ),
                onClickIcon: () => Navigator.of(context).pop(),
                backgroundColor: Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
