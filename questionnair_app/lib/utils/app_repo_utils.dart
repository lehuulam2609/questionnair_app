import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:questionnair_app/language/language.dart';
import 'package:questionnair_app/utils/app_constant.dart';

extension ResponseX on Response {
  bool get isSuccess => statusCode == 200;

  bool get isCreated => statusCode == 201;

  bool get isAccepted => statusCode == 202;

  bool get isNoContent => statusCode == 204;
}

class DataError implements Exception {
  DataError({
    this.code,
    this.message = '',
  });

  final int? code;
  final String message;

  factory DataError.defaultApiError() => DataError(
        code: defaultErrorCode,
        message: LanguageKey.defaultApiError.tr,
      );

  static int defaultErrorCode = -1;
  static int timeoutErrorCode = -2;
  static int cancelErrorCode = -3;
  static int otherErrorCode = -4;

  static Either<DataError, T> handleDioError<T>(DioException dioError) {
    try {
      switch (dioError.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return Left(DataError(
            code: timeoutErrorCode,
            message: LanguageKey.apiTimeoutError.tr,
          ));
        case DioExceptionType.badResponse:
          if (dioError.response?.statusCode == 401) {
            return Left(DataError(
              code: 401,
              message: LanguageKey.code401.tr,
            ));
          }
          String? message = _handleStatusCode(dioError);
          return Left(
            DataError(
              code: dioError.response?.statusCode,
              message: message ?? LanguageKey.defaultApiError.tr,
            ),
          );
        case DioExceptionType.cancel:
          return Left(DataError(
            code: cancelErrorCode,
            message: LanguageKey.apiCancelError.tr,
          ));
        case DioExceptionType.badCertificate:
        case DioExceptionType.connectionError:
        case DioExceptionType.unknown:
          return Left(DataError(
            code: otherErrorCode,
            message: LanguageKey.apiOtherError.tr,
          ));
      }
    } catch (e) {
      return Left(DataError.defaultApiError());
    }
  }

  static String? _handleStatusCode(DioException dioError) {
    String? message;
    String? responseCode = dioError.response?.data?['code'];
    String? responseMessage = dioError.response?.data?["message"];
    switch (responseCode) {
      case ErrorCodeConstant.ee000:
        message = LanguageKey.ee000Message.tr;
        break;
      case ErrorCodeConstant.ee001:
        message = LanguageKey.ee001Message.tr;
        break;
      case ErrorCodeConstant.ee002:
        message = LanguageKey.ee002Message.tr;
        break;
      case ErrorCodeConstant.ee003:
        message = ErrorCodeConstant.ee003;
        break;
      case ErrorCodeConstant.ee004:
        message = LanguageKey.ee004Message.tr;
        break;
      case ErrorCodeConstant.ee005:
        message = LanguageKey.ee005Message.tr;
        break;
      case ErrorCodeConstant.ee006:
        message = LanguageKey.ee006Message.tr;
        break;
      case ErrorCodeConstant.ee007:
        message = ErrorCodeConstant.ee007;
        break;
      case ErrorCodeConstant.ee008:
        message = LanguageKey.ee008Message.tr;
        break;
      case ErrorCodeConstant.ee009:
        message = LanguageKey.ee009Message.tr;
        break;
      case ErrorCodeConstant.ee010:
        message = LanguageKey.ee010Message.tr;
        break;
      case ErrorCodeConstant.ee011:
        message = LanguageKey.ee011Message.tr;
        break;
      case ErrorCodeConstant.ee012:
        message = LanguageKey.ee012Message.tr;
        break;
      case ErrorCodeConstant.ee013:
        message = LanguageKey.ee013Message.tr;
        break;
      case ErrorCodeConstant.ee014:
        message = LanguageKey.ee014Message.tr;
        break;
      case ErrorCodeConstant.ee015:
        message = LanguageKey.ee015Message.tr;
        break;
      case ErrorCodeConstant.ee016:
        message = LanguageKey.ee016Message.tr;
        break;
      case ErrorCodeConstant.ee017:
        message = LanguageKey.ee017Message.tr;
        break;
      case ErrorCodeConstant.ee018:
        message = LanguageKey.ee018Message.tr;
        break;
      case ErrorCodeConstant.ee022:
        message = LanguageKey.ee022Message.tr;
        break;
      // case ErrorCodeConstant.ee026:
      //   message = LanguageKey.ee026Message.tr;
      //   break;
      // case ErrorCodeConstant.ee032:
      //   message = LanguageKey.ee032Message.tr;
      //   break;
      case ErrorCodeConstant.ee033:
        message = LanguageKey.ee033Message.tr;
        break;
      // case ErrorCodeConstant.ee035:
      //   message = LanguageKey.ee035Message.tr;
      //   break;
      case ErrorCodeConstant.ee043:
        message = LanguageKey.ee043Message.tr;
        break;
      case ErrorCodeConstant.ee074:
        message = LanguageKey.ee074Message.tr;
        break;
      case ErrorCodeConstant.ee075:
        message = LanguageKey.ee075MessageDefault.tr;
        break;
      case ErrorCodeConstant.ee078:
        message = LanguageKey.ee078Message.tr;
        break;
      case ErrorCodeConstant.ee080:
        message = LanguageKey.ee080Message.tr;
        break;
      case ErrorCodeConstant.ee081:
        message = LanguageKey.ee081Message.tr;
        break;
      case ErrorCodeConstant.ee092:
        message = LanguageKey.ee092Message.tr;
        break;
      default:
        if (responseMessage == ErrorCodeConstant.ee021) {
          message = responseMessage;
          break;
        }
        message = LanguageKey.defaultApiError.tr;
    }
    return message;
  }
}
