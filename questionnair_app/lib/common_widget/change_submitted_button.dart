import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/language/language.dart';
import 'package:questionnair_app/utils/app_style.dart';

class ChangeSubmittedButton extends StatelessWidget {
  const ChangeSubmittedButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final Function? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 10,
        ),
        height: 48,
        width: double.maxFinite,
        child: ElevatedButton(
          focusNode: FocusNode(
            skipTraversal: true,
            canRequestFocus: false,
          ),
          onPressed: onPressed != null
              ? () {
                  FocusScope.of(context).unfocus();
                  onPressed!(context);
                }
              : null,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
          child: Text(
            LanguageKey.registerChange.tr,
            style: TextStyles.semiBoldTextStyle(
              size: 16,
              fontFamily: NameFont.hiragino,
              color: AppColor.white,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
