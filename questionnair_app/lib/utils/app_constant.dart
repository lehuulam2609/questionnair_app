import 'package:flutter/material.dart';

class LocaleConstants {
  static const Locale ja = Locale(LocaleKey.ja, CountryKey.ja);
  static const Locale en = Locale(LocaleKey.en, CountryKey.us);
}

class LocaleKey {
  static const String en = "en";
  static const String ja = "ja";
}

class CountryKey {
  static const String us = "US";
  static const String ja = "JA";
}

class ZipcodeIP {
  static const String production = "https://adsearch-api.kuronekoyamato.co.jp";
  static const String develop = "https://com-dev03.kuronekoyamato.co.jp";
}

class AdsVideoSource {
  static const String devSmallHospital =
      "https://dev-public-access.s3.ap-northeast-1.amazonaws.com/03_shinsatsumae_FIX_1016_small.mp4";
  static const String devMediumHospital =
      "https://dev-public-access.s3.ap-northeast-1.amazonaws.com/03_shinsatsumae_FIX_1016_medium.mp4";
  static const String devSmallPharmacy =
      "https://dev-public-access.s3.ap-northeast-1.amazonaws.com/04_hukuyaku_FIX_1016_small.mp4";
  static const String devMediumPharmacy =
      "https://dev-public-access.s3.ap-northeast-1.amazonaws.com/04_hukuyaku_FIX_1016_medium.mp4";
  static const String stagingSmallHospital =
      "https://staging-public-access.s3.ap-northeast-1.amazonaws.com/03_shinsatsumae_FIX_1016_small.mp4";
  static const String stagingMediumHospital =
      "https://staging-public-access.s3.ap-northeast-1.amazonaws.com/03_shinsatsumae_FIX_1016_medium.mp4";
  static const String stagingSmallPharmacy =
      "https://staging-public-access.s3.ap-northeast-1.amazonaws.com/04_hukuyaku_FIX_1016_small.mp4";
  static const String stagingMediumPharmacy =
      "https://staging-public-access.s3.ap-northeast-1.amazonaws.com/04_hukuyaku_FIX_1016_medium.mp4";
}

class DateConstant {
  static const String dateFormatyyyyMMddEEE = 'yyyy/MM/dd(EEE)';
  static const String dateFormatyyyyMMdd2 = 'yyyyMMdd';
  static const String dateFormatyyyyMdE = 'yyyy/M/d(E)';
  static const String dateFormatyMd = 'y年M月d日';
  static const String dateFormatyMMMM = 'yMMMM';
  static const String dateFormatyyyyMMdd = 'yyyy-MM-dd';
  static const String dateFormatHHmm = 'HH:mm';
  static const String dateFormatyyyyMMddHHmm = 'yyyy-MM-dd HH:mm';
  static const String dateFormatyyyyMMddHHmWithSplash = 'yyyy/MM/dd H:mm';
  static const String dateFormatMdEHHmm = 'M/d(E) HH:mm';
  static const String dateFormatyyyyMdEHHmm = 'yyyy/MM/dd(E) HH:mm-';
  static const String dateFormatyyyyMdEHHmmV2 = 'yyyy/M/dE HH:mm';
  static const String dateFormatyyyyMMddWithSplash = 'yyyy/MM/dd';
  static const String dateFormatMMyy = 'MM/yy';
  static const String dateFormatGoogleCalendar = 'yyyyMMdd\'T\'HHmmss';
  static const String dateFormatOutLookCalendar = 'yyyy-MM-dd\'T\'HH:mm:ss';

  /// set the time before the meeting time start to user can go to waiting room
  /// unit: minute
  static const int timeBeforeGoWaitingView = 15;
}

class RegexConstant {
  static RegExp uppercaseRegex = RegExp(r'(?=.*[A-Z])');
  static RegExp lowercaseRegex = RegExp('(?=.*[a-z])');
  static RegExp numberRegex = RegExp(r'(?=.*\d)');
  static RegExp specialLetterRegex = RegExp(r'(?=.*[!#$%&*+-./=?@^_`{|}])');
  static RegExp otherSpecialLetterRegex = RegExp(
    r'[^\w\s!#$%&*+\-./=?@^_`{|}]',
  );
  static RegExp allSpecialLetterRegex = RegExp(
      r'''[^\w\s\u4E00-\u9FFF\u3040-\u309F\u30A0-\u30FF\u2160-\u217F]''');
  static RegExp passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*()\-_=+{};:,<.>。・：ー？’]).*$');
  static RegExp loginPasswordRegex = RegExp(
      r'''^(?:(?=.*[A-Z])(?=.*[a-z])(?=.*\d)|(?=.*[A-Z])(?=.*[a-z])(?=.*[\W_])|(?=.*[A-Z])(?=.*\d)(?=.*[\W_])|(?=.*[a-z])(?=.*\d)(?=.*[\W_])).+$''');
  static RegExp emailRegex =
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  static RegExp customEmailRegex = RegExp(
      r'''^[0-9A-Za-z!#$%&\'*+\-./=?^_`{|}~]+@[0-9A-Za-z_-]+(\.[A-Za-z]+)+$''');
  static RegExp postalCodeRegex = RegExp(r'^\d{3}(-)?\d{4}$');
  static RegExp phoneRegex = RegExp(r'^(070|080|090)\d{8}$');
  static RegExp regexCompany = RegExp(r'^[a-zA-Z0-9]{0,20}$');
  static RegExp regexEmployee = RegExp(r'^\d{8}$');
  static RegExp creditCardRegex = RegExp(r'\d{4}');
  static RegExp haftWidthKatakana = RegExp(r'[ｧ-ﾝﾞﾟ]');
  static RegExp nameKanjiRegex = RegExp(
      r'''^([\u3000]|[\uFF01-\uFF5E]|[\uFF10-\uFF19]|[\uFF21-\uFF3A\uFF41-\uFF5A]|[\u2160-\u2188]|[\uFF01-\uFF0F\uFF1A-\uFF20\uFF3B-\uFF40\uFF5B-\uFF65]|[\u3040-\u309F]|[\u30A0-\u30FF]|[\u4E00-\u9FFF]|[\uF900-\uFAFF]|[\uE000-\uF8FF])*$''');
  static RegExp nameKanaRegex = RegExp(
      r'''^([\u3000]|[\uFF01-\uFF0F\uFF1A-\uFF20\uFF3B-\uFF40\uFF5B-\uFF65]|[\u30A0-\u30FF]|[\uE000-\uF8FF])*$''');
  static RegExp addressRegex = RegExp(
      r'''^([\u0020-\u007E\u3000-\u303F\u3040-\u309F\u30A0-\u30FF\uFF01-\uFF5E\u4E00-\u9FAF\u3400-\u4DBF\u2160-\u2188])*$''');
  static RegExp addressIssueRegex = RegExp(r'''^[0-9]{1,5}$''');
}

class StringConstant {
  static const String kanjiFNamePlaceHolder = '白瀬';
  static const String kanjiLNamePlaceHolder = '剛志';
  static const String katakanaFNamePlaceHolder = 'シロセ';
  static const String katakanaLNamePlaceHolder = 'ツヨシ';
  static const String dobPlaceHolder = 'YYYY年MM月DD日';
  static const String postalCodePlaceHolder = 'ハイフンなし７桁';
  static const String prefecturePlaceHolder = '東京都';
  static const String municipalityPlaceHolder = '渋谷区';
  static const String townAndAddressPlaceHolder = '元代々木町5-15-3';
  static const String buildingPlaceHolder = 'メゾン元代々木602';
  static const String receivedAddressPlaceHolder = '元代々木町40-8';
  static const String phonePlaceHolder = 'ハイフンなしで携帯電話番号を入力';
  static const String otpWrong = 'record not found';
  static const String otpExpired = 'verify code is expired';
  static const String expiredCard = 'Card has expired';
}

// Env file
class EnvFileName {
  static const environment = ".env";
}

//Patient type
class PatientTypeNotification {
  static const hospital = "hospital";
  static const parmacity = "parmacity";
}

class SharePrefKeys {
  final String language = "language";
  final String countryCode = "country_code";
  final String refreshToken = 'refreshToken';
  final String authToken = 'authToken';
  final String onBoarding = 'onBoarding';
  final String isLogin = 'is_login';
  final String fcmDeviceToken = 'fcm_token';
  final String deviceID = 'device_id';
  final String fcmExpiredTime = 'fcm_expired_time';
  final String calendarGrant = 'calendar_grant';
  final String autoCancelDialogReadID = 'autoCancelDialogReadID';
}

class FirebaseConfigKey {
  final String appLinks = "app_links";
  final String iosVersion = 'app_version_ios';
  final String androidVersion = 'app_version_android';
}

class AppConstant {
  static SharePrefKeys sharePrefKeys = SharePrefKeys();
  static LocaleKey localeKey = LocaleKey();
  static LocaleConstants localeConstants = LocaleConstants();
  static FirebaseConfigKey firebaseConfig = FirebaseConfigKey();
  static const linkCHPlayGoogleCal =
      'https://play.google.com/store/apps/details?id=com.google.android.calendar';
  static const linkCHPlayOutlookCal =
      'https://play.google.com/store/apps/details?id=com.microsoft.office.outlook';
  static const linkAppStoreGoogleCal =
      'https://apps.apple.com/app/google-calendar/id909319292';
  static const linkAppStoreOutlookCal =
      'https://apps.apple.com/app/outlook/id951937596';

  static const linkCHPlay = 'https://play.google.com/store/apps/details?id=';

  // link to IOS
  static const stagingTestflightLink =
      'https://testflight.apple.com/join/523mNE7S';
  static const prodTestflightLink =
      'https://testflight.apple.com/join/atVzEuHb';
  static const prodCustomerTestflightLink =
      'https://testflight.apple.com/join/lFr5LVrX';
}

class MessageTypeWss {
  static int textMessage = 1;
  static int binaryMessage = 2;
  static int connectMessage = 7;
  static int closeMessage = 8;
  static int pingMessage = 9;
  static int pongMessage = 10;
}

class ErrorCodeConstant {
  static const String ee000 = "EE000";
  static const String ee001 = "EE001";
  static const String ee002 = "EE002";
  static const String ee003 = "EE003";
  static const String ee004 = "EE004";
  static const String ee005 = "EE005";
  static const String ee006 = "EE006";
  static const String ee007 = "EE007";
  static const String ee008 = "EE008";
  static const String ee009 = "EE009";
  static const String ee010 = "EE010";
  static const String ee011 = "EE011";
  static const String ee012 = "EE012";
  static const String ee013 = "EE013";
  static const String ee014 = "EE014";
  static const String ee015 = "EE015";
  static const String ee016 = "EE016";
  static const String ee017 = "EE017";
  static const String ee018 = "EE018";
  static const String ee021 = "EE021";
  static const String ee022 = "EE022";
  static const String ee025 = "EE025";
  static const String ee026 = "EE026";
  static const String ee032 = "EE032";
  static const String ee033 = "EE033";
  static const String ee035 = "EE035";
  static const String ee043 = "EE043";
  static const String ee074 = "EE074";
  static const String ee075 = "EE075";
  static const String ee078 = "EE078";
  static const String ee080 = "EE080";
  static const String ee081 = "EE081";
  static const String ee092 = "EE092";
}

class AppointmentStatusConstant {
  static const String done = "done";
  static const String canceling = "canceling";
  static const String canceled = "canceled";
  static const String waiting = "waiting";
  static const String processing = "processing";
  static const String confirmed = "confirmed";
  static const String pending = "pending";
  static const String paid = "paid";
}

class UnitConstant {
  static const int mbSize = 1024;
  static const int kbSize = 1024;
  static const double fractionFileSize = 1000 / 1024;

  static const int maxAllowedDocumentCount = 6;

  /*
  1 MB = 1 * (1000 * 1000) / (1024 * 1024) MiB
  10 MB = 10 * maxSizeUploadFilePerFile MiB
  */
  static const double mbToMibBytes =
      mbSize * kbSize * fractionFileSize * fractionFileSize;
}

class NumberConstant {
  static const int maxItemRowZipCodeShow = 3;
}

class AppLinkConstant {
  static const String termLink = "https://www.mymedica.jp/legal";
  static const String privacyLink = "https://www.mymedica.jp/privacy/";
  static const String transactionsLawLink = "https://www.mymedica.jp/notice/";
}
