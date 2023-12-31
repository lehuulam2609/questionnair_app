import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/language/language.dart';
import 'package:questionnair_app/utils/app_style.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    super.key,
    required this.title,
    required this.message,
    this.onTap,
    this.borderRadius,
    this.messageColor,
  });

  final String title;
  final String message;
  final Function()? onTap;
  final BorderRadius? borderRadius;
  final Color? messageColor;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(15),
      ),
      backgroundColor: AppColor.ffDCDCDC,
      child: Wrap(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 19,
                  bottom: 4,
                ),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyles.semiBoldTextStyle(
                    color: AppColor.black.withOpacity(.96),
                    size: 17,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyles.lightTextStyle(
                    color: messageColor ?? AppColor.black.withOpacity(.5),
                    size: 13,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Divider(height: 0, thickness: 1),
              InkWell(
                borderRadius: borderRadius ??
                    const BorderRadius.vertical(bottom: Radius.circular(15)),
                onTap: onTap,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 11),
                  width: double.maxFinite,
                  child: Text(
                    LanguageKey.okUpperCase.tr,
                    style: TextStyles.lightTextStyle(
                      color: AppColor.ff007AFF,
                      fontFamily: NameFont.hiragino,
                      size: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
