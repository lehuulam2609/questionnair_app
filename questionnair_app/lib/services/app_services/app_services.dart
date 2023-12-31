import 'dart:developer';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:questionnair_app/core/services/language_services.dart';
import 'package:questionnair_app/repos/auth_repo.dart';
import 'package:questionnair_app/services/api/api.dart';
import 'package:questionnair_app/services/local_storage/auth_local_storage.dart';
import 'package:questionnair_app/services/repositories/auth_repo_iml.dart';

class AppServices {
  static Future<void> initServices() async {
    log('Starting services ...', name: 'AppServices');
    await Get.putAsync<SharedPreferences>(() async {
      return await SharedPreferences.getInstance();
    });

    await Get.putAsync(() async {
      return await LanguageService(sharedPreferences: Get.find()).init();
    });

    Get.put<AuthLocalStorage>(AuthLocalStorageIpml(sharedPref: Get.find()));
    Get.put<AuthRepo>(AuthRepoImpl(authLocalStorage: Get.find()));
    Get.put<DioApi>(DioApi(authRepo: Get.find()));

    log('All services started! ✅', name: 'AppServices');
  }
}
