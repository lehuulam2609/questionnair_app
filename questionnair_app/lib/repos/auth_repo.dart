abstract class AuthRepo {
  String get userId;

  bool get isFromLogin;

  String getAuthToken();

  Future<bool> saveAuthToken(String authToken);

  String getRefreshToken();

  Future<bool> saveRefreshToken(String refreshToken);

  void saveResetPasswordToken(String resetPasswordToken);

  Future<bool> handleUnAuthorized();

  Future<bool> checkAuth();

  bool checkLogin();

  Future<bool> saveIsLogin(bool isLogin);

  bool checkFCMRegister();

  Future<bool> setFCMToken(String token);

  String? getFCMToken();

  Future<bool> clearFCMToken();

  Future<void> logout();

  Future<bool> saveInitCalendarGrant(bool status);

  bool? getInitCalendarGrant();
}
