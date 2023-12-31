import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:questionnair_app/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.textController,
    this.index = 0,
    this.focusNode,
    this.onSubmitted,
    this.onChanged,
    required this.isLatestTextField,
    this.textInputType,
    this.enabled = true,
    this.opacityBorderAndFilled = 1,
    this.maxLength,
    this.inputFormatters,
    this.isObscured,
    this.scrollPadding,
    this.onTap,
  }) : super(key: key);

  final String hintText;
  final TextEditingController textController;
  final int index;
  final FocusNode? focusNode;
  final Function? onSubmitted;
  final Function(String value)? onChanged;
  final bool isLatestTextField;
  final TextInputType? textInputType;
  final bool? enabled;
  final double opacityBorderAndFilled;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isObscured;
  final EdgeInsets? scrollPadding;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.lightTextStyle(
        color: AppColor.black151515,
        size: 16,
        height: Platform.isIOS ? 1 : 1.1,
      ),
      focusNode: focusNode,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      controller: textController,
      enabled: enabled,
      onChanged: (value) {
        if (maxLength != null && value.length >= maxLength!) {
          textController.clearComposing();
        }
        onChanged?.call(value);
      },
      scrollPadding: scrollPadding ?? EdgeInsets.zero,
      onFieldSubmitted: (_) {
        if (onSubmitted != null) onSubmitted!.call();
      },
      obscureText: isObscured ?? false,
      textInputAction:
          isLatestTextField ? TextInputAction.done : TextInputAction.next,
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        fillColor: AppColor.greyF8F7F6.withOpacity(opacityBorderAndFilled),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColor.ffDCDCDC.withOpacity(opacityBorderAndFilled)),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColor.ffDCDCDC.withOpacity(
              opacityBorderAndFilled,
            ),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColor.ffDCDCDC.withOpacity(opacityBorderAndFilled)),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: hintText,
        hintStyle: TextStyles.normalTextStyle(
          color: AppColor.black.withOpacity(.38),
          fontFamily: NameFont.roboto,
          size: 16,
          height: 1,
        ),
        
      ),
    );
  }
}
