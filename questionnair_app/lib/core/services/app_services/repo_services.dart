import 'dart:developer';
import 'package:get/get.dart';
import 'package:questionnair_app/core/services/twilio_service.dart';

class RepoServices {
  static Future<void> initServices() async {
    log('Starting repo services ...', name: 'RepoServices');
    Get.lazyPut<TwilioService>(() => TwilioServiceImpl(), fenix: true);
    log('All repo services started! ✅', name: 'RepoServices');
  }
}
