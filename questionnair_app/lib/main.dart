import 'package:flutter/material.dart';
import 'package:questionnair_app/utils/app_constant.dart';
import 'my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runMyApp(
    zipcodeIP: ZipcodeIP.develop,
    hospitalVideoAds: AdsVideoSource.devMediumHospital,
    pharmacyVideoAds: AdsVideoSource.devMediumPharmacy,
    testflightLink: AppConstant.stagingTestflightLink,
  );
}
