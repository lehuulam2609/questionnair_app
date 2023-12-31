import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHelper {

  /// Message
  static void showError(String text, {String? title, int? time}) {
    Get.closeAllSnackbars();
    Get.closeCurrentSnackbar().then(
      (_) => Get.snackbar(
        title ?? '', //  title ?? LanguageKey.error.tr,
        text,
        duration: Duration(seconds: time ?? 3),
        colorText: Colors.white,
        backgroundColor: (title ?? '').toLowerCase().contains('success')
            ? Colors.green
            : Colors.black.withOpacity(0.5),
        animationDuration: const Duration(milliseconds: 400),
      ),
    );
  }
}
