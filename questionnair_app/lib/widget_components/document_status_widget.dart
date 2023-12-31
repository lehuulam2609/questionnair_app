import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/language/language.dart';
import 'package:questionnair_app/utils/app_style.dart';

class DocumentStatusWidget extends StatelessWidget {
  const DocumentStatusWidget({
    Key? key,
    required this.title,
    required this.isDone,
    this.onTap,
  }) : super(key: key);

  final String title;
  final bool isDone;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColor.greyAAA69F,
        ),
        color: AppColor.white,
      ),
      child: Material(
        color: AppColor.transparent,
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyles.semiBoldTextStyle(
                    color: AppColor.blue26519F,
                    size: 16,
                    height: 1.3,
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.5, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColor.greyF8F7F6,
                ),
                child: Text(
                  isDone
                      ? LanguageKey.registerMedical.tr
                      : LanguageKey.basicInformationPlaceHolder.tr,
                  style: TextStyles.lightTextStyle(
                    color: isDone ? AppColor.blue41C2D0 : AppColor.greyAAA69F,
                    size: 16,
                    height: 1.3,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.arrow_forward_ios,
                size: 13,
              ),
            ],
          ).paddingSymmetric(horizontal: 20, vertical: 12),
        ),
      ),
    );
  }
}
