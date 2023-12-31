import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:questionnair_app/language/language.dart';
import 'package:questionnair_app/utils/app_style.dart';

class DownloadSelectionBottomSheet extends StatelessWidget {
  const DownloadSelectionBottomSheet({
    Key? key,
    this.openFile,
    this.downloadFile,
  }) : super(key: key);

  final Function()? openFile;
  final Function()? downloadFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.greyC7C7CC,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: AppColor.white.withOpacity(.36),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                const SizedBox(height: 13),
                Text(
                  LanguageKey.documentBilling.tr,
                  style: TextStyles.lightTextStyle(
                      size: 13,
                      height: 16 / 13,
                      color: AppColor.black,
                      fontFamily: NameFont.hiragino),
                ),
                Text(
                  LanguageKey.downloadDes.tr,
                  style: TextStyles.lightTextStyle(
                      size: 13,
                      height: 16 / 13,
                      color: AppColor.color3C3C43.withOpacity(.6),
                      fontFamily: NameFont.hiragino),
                ),
                const SizedBox(height: 15),
                const Divider(height: 0, thickness: 1),
                Material(
                  color: AppColor.transparent,
                  child: InkWell(
                    onTap: openFile,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        alignment: Alignment.center,
                        width: double.maxFinite,
                        child: Text(
                          LanguageKey.openFile.tr,
                          style: TextStyles.lightTextStyle(
                            size: 20,
                            height: 1.2,
                            color: AppColor.blue3478F6,
                            fontFamily: NameFont.hiragino,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(height: 0, thickness: 1),
                Material(
                  color: AppColor.transparent,
                  child: InkWell(
                    onTap: downloadFile,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        alignment: Alignment.center,
                        width: double.maxFinite,
                        child: Text(
                          LanguageKey.downloadFile.tr,
                          style: TextStyles.lightTextStyle(
                            size: 20,
                            height: 1.2,
                            color: AppColor.blue3478F6,
                            fontFamily: NameFont.hiragino,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            alignment: Alignment.center,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Material(
              color: AppColor.transparent,
              child: InkWell(
                onTap: Get.back,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    child: Text(
                      LanguageKey.cancel.tr,
                      style: TextStyles.semiBoldTextStyle(
                          size: 20,
                          height: 1.2,
                          color: AppColor.blue3478F6,
                          fontFamily: NameFont.hiragino),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 26),
        ],
      ),
    );
  }
}
