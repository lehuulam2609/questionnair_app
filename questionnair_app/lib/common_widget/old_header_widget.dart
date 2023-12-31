import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/utils/app_style.dart';

class OldHeaderWidget extends StatelessWidget {
  const OldHeaderWidget({
    Key? key,
    this.title = '',
    this.action,
  }) : super(key: key);
  final String? title;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
            color: AppColor.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: Get.back,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
            ),
          ),
          SizedBox(width: action != null ? 30 : 0),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title!,
                style: TextStyles.semiBoldTextStyle(
                  color: AppColor.black151515,
                  fontFamily: NameFont.hiragino,
                  size: 17,
                  height: 1.5,
                ),
              ),
            ),
          ),
          SizedBox(width: action != null ? 70 : 40, child: action),
        ],
      ),
    );
  }
}
