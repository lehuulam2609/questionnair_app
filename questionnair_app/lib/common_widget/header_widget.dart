import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/utils/app_style.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    this.canBack = true,
    this.title = '',
    this.action,
    this.imageTitle,
    this.onTap,
  }) : super(key: key);
  final bool canBack;
  final String title;
  final Widget? action;
  final Widget? imageTitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            canBack
                ? Material(
                    color: AppColor.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: onTap ?? Get.back,
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
            if (action != null && canBack) const SizedBox(width: 30),
            if (action != null && !canBack) const SizedBox(width: 70),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: imageTitle ??
                    Text(
                      title,
                      style: TextStyles.semiBoldTextStyle(
                        color: AppColor.black151515,
                        fontFamily: NameFont.hiragino,
                        size: 18,
                        height: 1,
                      ),
                    ).paddingSymmetric(vertical: 8),
              ),
            ),
            SizedBox(
              width: action != null
                  ? 70
                  : canBack
                      ? 40
                      : 0,
              child: action,
            ),
          ],
        ),
      ),
    );
  }
}
