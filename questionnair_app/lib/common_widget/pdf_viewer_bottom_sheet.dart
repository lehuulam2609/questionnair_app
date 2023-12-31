import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:questionnair_app/language/language.dart';
import 'package:questionnair_app/utils/app_style.dart';

class PDFViewerBottomSheet extends StatelessWidget {
  const PDFViewerBottomSheet({
    Key? key,
    required this.child,
    required this.name,
    this.onRemove,
    this.onReplace,
  }) : super(key: key);
  final Widget child;
  final String name;
  final Function()? onRemove;
  final Function()? onReplace;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
        color: AppColor.white,
      ),
      margin: const EdgeInsets.only(top: 67),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: Get.back,
              child: Text(
                LanguageKey.cancel.tr,
                style: TextStyles.lightTextStyle(
                  color: AppColor.blue26519F,
                  size: 16,
                ),
              ).paddingOnly(right: 19, top: 16),
            ),
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              name,
              style: TextStyles.semiBoldTextStyle(
                size: 20,
                color: AppColor.black221714,
              ),
            ).paddingSymmetric(horizontal: 16),
          ),
          const SizedBox(height: 20),
          Expanded(child: child),
          Container(
            height: 74,
            alignment: Alignment.topCenter,
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: AppColor.colorF8F8F9,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
                border: Border.all(color: AppColor.greyD9D7D3),
              ),
              child: Material(
                color: AppColor.transparent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    onRemove != null
                        ? Expanded(
                            child: InkWell(
                              onTap: onRemove,
                              child: Center(
                                child: Text(
                                  LanguageKey.delete.tr,
                                  textAlign: TextAlign.center,
                                  style: TextStyles.lightTextStyle(
                                    fontFamily: NameFont.hiragino,
                                    size: 16,
                                    height: 1.5,
                                    color: AppColor.colorD42F43,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                    onRemove != null && onReplace != null
                        ? const VerticalDivider(
                            width: 0,
                            thickness: 1,
                            color: AppColor.ffDCDCDC,
                          )
                        : const SizedBox.shrink(),
                    onReplace != null
                        ? Expanded(
                            child: InkWell(
                              onTap: onReplace,
                              child: Center(
                                child: Text(
                                  LanguageKey.takeAnotherImage.tr,
                                  textAlign: TextAlign.center,
                                  style: TextStyles.lightTextStyle(
                                    fontFamily: NameFont.hiragino,
                                    size: 16,
                                    height: 1.5,
                                    color: AppColor.blue26519F,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
