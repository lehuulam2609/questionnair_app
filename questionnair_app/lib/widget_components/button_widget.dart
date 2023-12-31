import 'package:flutter/material.dart';
import '../utils/app_style.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.caption,
      this.onSubmitted,
      this.isPrimary = false,
      this.widthButton = 0,
      this.borderRadius = 35,
      this.borderSideWidth,
      this.height = 49,
      this.isLoading = false,
      this.fontWeight = FontWeight.w600,
      this.textSize = 16});

  final String caption;
  final bool isPrimary;
  final Function()? onSubmitted;
  final double widthButton;
  final double borderRadius;
  final double? borderSideWidth;
  final double height;
  final bool isLoading;
  final double textSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
        ignoring: isLoading,
        child: SizedBox(
          height: height,
          width: widthButton,
          child: ElevatedButton(
            onPressed: onSubmitted,
            style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  side: borderSideWidth != null
                      ? BorderSide(
                          color: AppColor.blue26519F,
                          width: borderSideWidth!,
                        )
                      : BorderSide.none,
                ),
                backgroundColor:
                    isPrimary ? AppColor.blue26519F : AppColor.greyF8F7F6,
                foregroundColor:
                    isPrimary ? AppColor.greyF8F7F6 : AppColor.blue26519F),
            child: isLoading
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    caption,
                    style: TextStyle(
                      color: isPrimary ? AppColor.white : AppColor.blue26519F,
                      fontSize: textSize,
                      fontWeight: fontWeight,
                      fontFamily: TextStyles.getFontFamily(),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
          ),
        ));
  }
}
