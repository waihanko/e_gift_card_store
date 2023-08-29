import 'package:e_gift_card_store/app/widgets/buttons/custom_icon_button.dart';
import 'package:e_gift_card_store/app/widgets/buttons/primary_button_widget.dart';
import 'package:e_gift_card_store/app/widgets/rounded_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    Key? key,
    this.onChanged,
    this.onSubmit,
    this.onClear,
    required this.controller,
    this.inputFormState = InputFormState.idle,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.search,
    this.isShowClearButton = false,
    this.textInputFormatter,
    this.suffixIcon,
  }) : super(key: key);

  final Function(String)? onChanged;
  final Function(String)? onSubmit;
  final Function? onClear;
  final bool isShowClearButton;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final TextEditingController controller;
  final List<TextInputFormatter>? textInputFormatter;
  final Widget? suffixIcon;
  final InputFormState? inputFormState;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 48,
        minWidth: double.infinity,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(AppDimens.marginXLarge),
        ),
      ),
      child: TextField(
        controller: controller,
        textInputAction: textInputAction,
        maxLines: 1,
        keyboardType: textInputType,
        cursorColor: ThemeData().iconTheme.color,
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(
          fontSize: AppDimens.textRegular2X,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        inputFormatters: textInputFormatter ?? [],
        onSubmitted: (value)=> onSubmit?.call(value),
        onChanged: (value) {
          if (onChanged != null) onChanged?.call(value);
        },
        decoration: InputDecoration(
          suffixIcon:  Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              isShowClearButton? RoundedIconWidget(
                onClickIcon: ()=> onClear?.call(),
                icon: const Icon(
                  Icons.cancel,
                  color: AppColors.kGrey,
                ),
                contentPadding: 4,
                backgroundColor: Colors.transparent,
              ):const SizedBox(),
              const SizedBox(
                width: AppDimens.marginSmall,
              ),
              CustomIconButton(child: Icon(Icons.search_rounded), onPressed: ()=>{}),
              const SizedBox(
                width: AppDimens.marginSmall,
              ),
            ],
          ),
          fillColor: Colors.white,
          filled: true,
          isDense: true,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppDimens.marginCardMedium2,
            vertical: AppDimens.marginMedium,
          ),
          hintText: "Search Cards",
          hintStyle: GoogleFonts.manrope(
            fontSize: AppDimens.textRegular,
            fontWeight: FontWeight.w400,
            color: AppColors.kGrey,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                AppDimens.marginXLarge,
              ),
            ),
            borderSide:
                BorderSide(color: AppColors.kGrey, width: 0.5),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                AppDimens.marginXLarge,
              ),
            ),
            borderSide: BorderSide(
              color: AppColors.kGrey,
              width: 0.5,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                AppDimens.marginXLarge,
              ),
            ),
            borderSide: BorderSide(
              color: AppColors.kGrey,
              width: 0.5,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                AppDimens.marginXLarge,
              ),
            ),
            borderSide: BorderSide(
              color: Colors.red,
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}

enum InputFormState { idle, error }
