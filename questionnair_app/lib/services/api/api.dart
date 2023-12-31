import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/io.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/repos/auth_repo.dart';
import 'package:questionnair_app/utils/app_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' as getx;

abstract class Api {
  String baseApiUrl = getx.Get.find<AppEnvironment>().apiBaseUrl ?? '';
  AuthRepo authRepo;
  Api(this.authRepo);

  Map<String, String> header = {};

  Future<Map<String, String>> getHeader() async {
    Map<String, String> header = {
      "Access-Control-Allow-Credentials": "true",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "*",
      "Access-Control-Allow-Headers": "*",
    };
    final token = authRepo.getAuthToken();
    if (token.isNotEmpty) {
      header.addAll({"Authorization": "Bearer $token"});
    }
    return header;
  }

  void handleUnAuthorized() {
    // default implementation, can be overrided
    // getx.Get.offAllNamed(RoutesName.invitationCode);
  }

  Future<bool> checkBadInternet() async {
    try {
      final ConnectivityResult result =
          await Connectivity().checkConnectivity();
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        return false;
      }
      return true;
    } catch (e) {
      return true;
    }
  }
}

class DioApi extends Api {
  DioApi({required AuthRepo authRepo}) : super(authRepo) {
    if (!kReleaseMode) {
      dio.interceptors.addAll([
        LogInterceptor(
            requestBody: true,
            responseBody: true,
            responseHeader: true,
            logPrint: (obj) {
              debugPrint(obj.toString());
            }),
      ]);
    }
  }

  Dio dio = DioApi._getDio();

  static Dio _getDio() {
    Dio dio = Dio();

    HttpClientAdapter clientAdapter;
    clientAdapter = IOHttpClientAdapter();
    (clientAdapter as IOHttpClientAdapter).onHttpClientCreate = (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    dio.httpClientAdapter = clientAdapter;
    dio.options.headers = {
      "Access-Control-Allow-Credentials": "true",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "*",
      "Access-Control-Allow-Headers": "*",
      'timezone': DateTime.now().timeZoneOffset.inHours,
    };

    final String baseApiUrl = getx.Get.find<AppEnvironment>().apiBaseUrl ?? '';
    dio.options.baseUrl = '$baseApiUrl/user-v1/';

    dio.options.receiveDataWhenStatusError = true;
    dio.options.receiveTimeout = const Duration(seconds: 25);
    dio.options.connectTimeout = const Duration(seconds: 25);
    dio.options.sendTimeout = const Duration(seconds: 25);
    dio.options.contentType = 'application/json';
    dio.interceptors
        .add(InterceptorsWrapper(onError: (DioException e, handler) async {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
        case DioExceptionType.unknown:
          return handler.next(e);
        case DioExceptionType.badResponse:

          if (e.response?.statusCode == HttpStatus.unauthorized) {
            final refreshToken = getx.Get.find<AuthRepo>().getRefreshToken();

            if (refreshToken.isNotEmpty) {
              final accessToken = getx.Get.find<AuthRepo>().getAuthToken();
              e.requestOptions.headers['Authorization'] = 'Bearer $accessToken';
              // Repeat the request with the updated header
              try {
                return handler.resolve(await dio.fetch(e.requestOptions));
              } catch (error) {
                if (!handler.isCompleted) {
                  return handler.reject(DioException(
                    requestOptions: e.requestOptions,
                    error: error,
                  ));
                }
              }
            } else {
              // getx.Get.offAllNamed(RoutesName.login);
            }
          }
          return handler.next(e);
      }
    }, onRequest: (options, handler) {
      return handler.next(options);
    }));

    return dio;
  }
}

Dio dioApiUploadFile() {
  Dio dio = DioApi._getDio();
  dio.options.receiveTimeout = const Duration(minutes: 6);
  dio.options.connectTimeout = const Duration(minutes: 6);
  dio.options.sendTimeout = const Duration(minutes: 6);
  if (!kReleaseMode) {
    dio.interceptors.addAll([
      LogInterceptor(
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          logPrint: (obj) {
            debugPrint(obj.toString());
          }),
    ]);
  }
  return dio;
}
