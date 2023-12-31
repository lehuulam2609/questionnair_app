/// Environment of the app
class AppEnvironment {
  AppEnvironment._({
    required this.apiBaseUrl,
    required this.webSocketHostUrl,
    required this.zipcodeIP,
    required this.testflightLink,
    required this.adsVideoHospital,
    required this.adsVideoPharmacy,
  });

  String? apiBaseUrl;
  String? webSocketHostUrl;
  String? zipcodeIP;
  String? testflightLink;
  String? adsVideoHospital;
  String? adsVideoPharmacy;

  factory AppEnvironment.live({
    required String apiBaseUrl,
    required String webSocketHostUrl,
    required String zipcodeIP,
    required String testflightLink,
    required String adsVideoHospital,
    required String adsVideoPharmacy,
  }) {
    return AppEnvironment._(
      apiBaseUrl: apiBaseUrl,
      webSocketHostUrl: webSocketHostUrl,
      zipcodeIP: zipcodeIP,
      testflightLink: testflightLink,
      adsVideoHospital: adsVideoHospital,
      adsVideoPharmacy: adsVideoPharmacy,
    );
  }
}
