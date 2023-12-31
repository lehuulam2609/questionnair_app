import 'package:flutter/material.dart';
import 'package:questionnair_app/language/language.dart';
import 'package:get/get.dart';

class SubmitButton extends StatelessWidget {
  final Function onTap;
  final String? title;
  final bool isEnable;

  const SubmitButton({
    super.key,
    required this.onTap,
    this.title,
    required this.isEnable,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isEnable == true) {
          onTap();
        }
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: isEnable ? Colors.blue : Colors.grey,
        ),
        alignment: Alignment.center,
        child: Text(
          title ?? LanguageKey.addQuestionnair.tr,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
