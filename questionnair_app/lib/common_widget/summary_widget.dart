import 'package:flutter/material.dart';
import 'package:questionnair_app/utils/app_style.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({
    Key? key,
    required this.content,
    this.filled = true,
    this.onTap,
  }) : super(key: key);
  final String content;
  final bool? filled;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 48,
          minWidth: 264,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            width: 2,
            color: AppColor.blue41C2D0,
          ),
          color: filled! ? AppColor.blueECF8F9 : null,
        ),
        child: Text(
          content,
          style: TextStyles.semiBoldTextStyle(
            size: 16,
            color: AppColor.blue41C2D0,
            height: 1.5,
            fontFamily: NameFont.hiragino,
          ),
          maxLines: null,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
