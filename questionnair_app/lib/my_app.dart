import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/core/theme/app_theme.dart';
import 'package:questionnair_app/language/language.dart';
import 'package:questionnair_app/services/app_services/api_services.dart';
import 'package:questionnair_app/services/app_services/app_services.dart';
import 'package:questionnair_app/services/app_services/repo_services.dart';
import 'package:questionnair_app/utils/app_constant.dart';
import 'package:questionnair_app/utils/app_enum.dart';
import 'package:questionnair_app/utils/app_routes.dart';

Future<void> runMyApp({
  String? flavorEnv,
  AppFlavor debugType = AppFlavor.staging,
  required String zipcodeIP,
  required String hospitalVideoAds,
  required String pharmacyVideoAds,
  required String testflightLink,
}) async {
  try {
    await AppServices.initServices();
    await ApiServices.initServices();
    await RepoServices.initServices();
  } catch (_) {}

  late String initRoute = RoutesName.questionnair;

// Set landscape orientation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    GetMaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale(LocaleKey.en, CountryKey.us),
      ],
      locale: const Locale(LocaleKey.en, CountryKey.us),
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      initialRoute: initRoute,
      getPages: AppRoutes.mainRoutes,
      theme: AppThemes.lightTheme,
      translations: Language(),
    ),
  );
}
