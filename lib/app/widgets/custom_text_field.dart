import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.width = double.infinity,
    this.onChanged,
    this.hint,
    required this.controller,
    this.isPassword = false,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.isEnabled = true,
    this.maxLine = 1,
    this.textInputFormatter,
    this.suffixIcon,
    this.prefixIcon,
    this.inputFormState = InputFormState.idle,
  }) : super(key: key);

  final double width;
  final int maxLine;
  final Function(String)? onChanged;
  final String? hint;
  final bool isPassword;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool isEnabled;
  final TextEditingController controller;
  final List<TextInputFormatter>? textInputFormatter;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final InputFormState? inputFormState;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 56,
        minWidth: width,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(AppDimens.marginMedium),
        ),
      ),
      child: TextField(
        readOnly: !isEnabled,
        controller: controller,
        textInputAction: textInputAction,
        obscureText: isPassword,
        maxLines: maxLine,
        keyboardType: textInputType,
        cursorColor: AppColors.primaryColor,
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(
          fontSize: AppDimens.textRegular2X,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        inputFormatters: textInputFormatter ?? [],
        onChanged: (value) {
          if (onChanged != null) onChanged!(value);
        },
        decoration: getTextFieldDecoration(prefixIcon, suffixIcon, hint),
      ),
    );
  }
}

enum InputFormState { idle, error }

InputDecoration getTextFieldDecoration(
    [Widget? prefixIcon, Widget? suffixIcon, String? hint]) {
  return InputDecoration(
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    fillColor: Colors.white,
    filled: true,
    isDense: true,
    border: InputBorder.none,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: AppDimens.marginCardMedium,
      vertical: AppDimens.marginCardMedium2,
    ),
    hintText: hint,
    hintStyle: const TextStyle(
      fontSize: AppDimens.textRegular2X,
      fontWeight: FontWeight.w400,
      color: AppColors.secondaryTextColor,
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          AppDimens.marginMedium,
        ),
      ),
      borderSide: BorderSide(color: AppColors.secondaryTextColor, width: 1.5),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          AppDimens.marginMedium,
        ),
      ),
      borderSide: BorderSide(
        color: AppColors.secondaryTextColor,
        width: 1.5,
      ),
    ),
    disabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          AppDimens.marginMedium,
        ),
      ),
      borderSide: BorderSide(
        color: AppColors.secondaryTextColor,
        width: 0.2,
      ),
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          AppDimens.marginMedium,
        ),
      ),
      borderSide: BorderSide(
        color: Colors.red,
        width: 0.3,
      ),
    ),
  );
}
