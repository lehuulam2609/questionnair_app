// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:questionnair_app/repos/auth_repo.dart';
import 'package:questionnair_app/services/local_storage/auth_local_storage.dart';

class AuthRepoImpl implements AuthRepo {
  AuthLocalStorage authLocalStorage;

  AuthRepoImpl({required this.authLocalStorage});

  @override
  void saveResetPasswordToken(String resetPasswordToken) {
    // _resetPasswordToken = resetPasswordToken;
  }

  @override
  Future<bool> handleUnAuthorized() {
    return authLocalStorage.handleUnAuthorized();
  }

  @override
  bool checkLogin() {
    return authLocalStorage.getIsLogin();
  }

  @override
  Future<bool> saveIsLogin(bool isLogin) {
    // _isFromLogin = isLogin;
    return authLocalStorage.saveIsLogin(isLogin);
  }

  @override
  String getRefreshToken() {
    final refreshToken = authLocalStorage.getRefreshToken() ?? '';
    return refreshToken;
  }

  @override
  Future<bool> saveRefreshToken(String refreshToken) async {
    return await authLocalStorage.saveRefreshToken(refreshToken);
  }

  @override
  bool checkFCMRegister() {
    return authLocalStorage.checkFCMRegister();
  }

  @override
  String? getFCMToken() {
    return authLocalStorage.getFCMToken();
  }

  @override
  Future<bool> setFCMToken(String token) async {
    return await authLocalStorage.saveFCMToken(token);
  }

  @override
  Future<bool> clearFCMToken() async {
    return await authLocalStorage.clearFCMToken();
  }

  @override
  Future<void> logout() async {
    await handleUnAuthorized();
    await saveIsLogin(false);
  }

  @override
  bool? getInitCalendarGrant() {
    return authLocalStorage.getInitCalendarGrant();
  }

  @override
  Future<bool> saveInitCalendarGrant(bool status) {
    return authLocalStorage.saveInitCalendarGrant(status);
  }
  
  @override
  Future<bool> checkAuth() {
    // TODO: implement checkAuth
    throw UnimplementedError();
  }
  
  @override
  String getAuthToken() {
    // TODO: implement getAuthToken
    throw UnimplementedError();
  }
  
  @override
  Future<bool> saveAuthToken(String authToken) {
    // TODO: implement saveAuthToken
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement isFromLogin
  bool get isFromLogin => throw UnimplementedError();
  
  @override
  // TODO: implement userId
  String get userId => throw UnimplementedError();
}
