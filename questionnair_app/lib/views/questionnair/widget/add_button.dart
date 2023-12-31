import 'package:flutter/material.dart';
import 'package:questionnair_app/language/language.dart';
import 'package:get/get.dart';

class AddButton extends StatelessWidget {
  final Function onTap;
  final String? title;
  final bool? isNoSafe;
  const AddButton({
    super.key,
    required this.onTap,
    this.title,
    this.isNoSafe = false,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: isNoSafe != true,
      child: Container(
        margin: isNoSafe == true
            ? const EdgeInsets.symmetric(horizontal: 0, vertical: 10)
            : const EdgeInsets.only(top: 20, bottom: 16, left: 16, right: 16),
        height: 50,
        color: Colors.white.withOpacity(0.0),
        alignment: Alignment.centerLeft,
        child: InkWell(
          onTap: () {
            onTap();
          },
          child: Row(
            children: [
              const Icon(
                Icons.add,
                color: Colors.blue,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title ?? LanguageKey.addQuestionnair.tr,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
