import 'package:e_gift_card_store/app/widgets/text_view_widget.dart';
import 'package:flutter/material.dart';

import '../constants/dummy/top_up_card_dummy_list.dart';
import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';

class SpecialDealItemWidget extends StatelessWidget {
  final bool isFromHome;
  final GiftCardItemVo? item;

  const SpecialDealItemWidget({
    this.isFromHome = true,
    this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(AppDimens.marginMedium)),
        color: AppColors.secondaryColor,
      ),
      margin: isFromHome
          ? const EdgeInsets.only(right: AppDimens.marginMedium2)
          : const EdgeInsets.only(bottom: AppDimens.marginMedium2),
      child: Column(
        children: [
          Container(
            height: 72,
            padding: EdgeInsets.symmetric(horizontal: AppDimens.marginCardMedium),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: item?.bgColor??[AppColors.secondaryColor, AppColors.secondaryColor,]
              ),
              borderRadius: BorderRadius.circular(AppDimens.marginMedium)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius:
                    const BorderRadius.all(Radius.circular(AppDimens.marginMedium)),
                    image: DecorationImage(
                        image: AssetImage(item?.imageUrl ?? ""),
                        fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: AppDimens.marginMedium,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextViewWidget(
                        "${(item?.name??"")}",
                        textSize: AppDimens.textMedium,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.start,
                        textColor: item?.textColor,
                        maxLines: 2,
                      ),
                      SizedBox(height: AppDimens.marginSmall,),
                      TextViewWidget(
                        "${item?.name}",
                        textSize: AppDimens.textMedium,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.start,
                        textColor: item?.textColor?.withOpacity(0.5),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: AppDimens.marginMedium,
          ),
          Row(
            children: [
              const SizedBox(
                width: AppDimens.marginCardMedium,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal:
                            AppDimens.marginSmall + AppDimens.marginExtraSmall,
                        vertical: AppDimens.marginExtraSmall),
                    decoration: BoxDecoration(
                      color: AppColors.promoBgColor,
                      borderRadius: BorderRadius.circular(
                        AppDimens.marginMedium,
                      ),
                    ),
                    child: TextViewWidget(
                      "- 2.0%",
                      textSize: AppDimens.textSmall,
                      fontWeight: FontWeight.w900,
                      textAlign: TextAlign.right,
                      textColor: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextViewWidget(
                  "US \$72.68",
                  textSize: AppDimens.textMedium,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(
                width: AppDimens.marginCardMedium,
              ),
            ],
          ),
          const SizedBox(
            height: AppDimens.marginCardMedium,
          )
        ],
      ),
    );
  }
}
