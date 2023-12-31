import 'dart:io';
import 'package:flutter/cupertino.dart';

class NameFont {
  static const cairo = 'Cairo';
  static const roboto = 'Roboto';
  static const hiragino = 'Hiragino';
  static const pingFang = 'PingFang';
  static const notoSansJP = 'NotoSansJP';
  static const sanFrancisco = '.SF Pro Text';
}

class TextStyles {
  static TextStyle boldTextStyle(
          {double? size,
          Color? color,
          double height = 1.0,
          String fontFamily = NameFont.hiragino}) =>
      TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w700,
        color: color,
        height: height,
        fontFamily: getFontFamily(),
      );

  static String getFontFamily() {
    if (Platform.isAndroid) {
      return NameFont.roboto;
    }
    /// Update using system font ios (.SF Pro Text)
    return NameFont.sanFrancisco;
  }

  static TextStyle semiBoldTextStyle(
          {double? size,
          Color? color,
          double height = 1.5,
          String fontFamily = NameFont.hiragino}) =>
      TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w600,
        color: color,
        height: height,
        fontFamily: getFontFamily(),
      );

  static TextStyle normalTextStyle(
          {double? size,
          Color? color,
          double height = 1.1,
          String fontFamily = NameFont.hiragino}) =>
      TextStyle(
        fontSize: size,
        fontWeight: FontWeight.normal,
        color: color,
        height: height,
        fontFamily: getFontFamily(),
      );

  static TextStyle lightTextStyle(
          {double? size,
          Color? color,
          double height = 1.5,
          String fontFamily = NameFont.hiragino}) =>
      TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w300,
        color: color,
        height: height,
        fontFamily: getFontFamily(),
      );

  static TextStyle mediumTextStyle(
          {double? size,
          Color? color,
          double height = 1.1,
          String fontFamily = NameFont.hiragino}) =>
      TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w500,
        color: color,
        height: height,
        fontFamily: getFontFamily(),
      );
}

class AppColor {
  static const Color primary = Color(0xFF086E6B);
  static const Color white = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF5F5F5);
  static const Color grey = Color(0xFF1C1C1E);
  static const Color transparent = Color(0x00000000);
  static const Color grey333333 = Color(0xFF333333);
  static const Color grey8C8C8C = Color(0xFF8C8C8C);
  static const Color greyC7C7C7 = Color(0xFFC7C7C7);
  static const Color greyC7C7CC = Color(0xFFC7C7CC);
  static const Color greyAAA69F = Color(0xFFAAA69F);
  static const Color grey4E4C49 = Color(0xFF4E4C49);
  static const Color greyF8F7F6 = Color(0xFFF8F7F6);
  static const Color greyD9D7D3 = Color(0xFFD9D7D3);
  static const Color greyA5A5A5 = Color(0xFFA5A5A5);
  static const Color greyF8F8F8 = Color(0xFFF8F8F8);
  static const Color greyEBEBEB = Color(0xFFEBEBEB);
  static const Color greyC8C8C8 = Color(0xFFC8C8C8);
  static const Color grey9797979 = Color(0xFF979797);
  static const Color blue = Color(0xFF2F9ED4);
  static const Color black = Color(0xFF000000);
  static const Color black151515 = Color(0xFF151515);
  static const Color black221714 = Color(0xFF221714);
  static const Color redD23654 = Color(0xFFD23654);
  static const Color redFF3B30 = Color(0xFFFF3B30);
  static const Color black96 = Color.fromRGBO(0, 0, 0, 0.96);
  static const Color black80 = Color.fromRGBO(0, 0, 0, 0.80);
  static const Color black60 = Color.fromRGBO(0, 0, 0, 0.6);
  static const Color black50 = Color.fromRGBO(0, 0, 0, 0.5);
  static const Color black38 = Color.fromRGBO(0, 0, 0, 0.38);
  static const Color blueDamselfly = Color(0xFF2F9ED4);
  static const Color blueC1E2F2 = Color(0xFFC1E2F2);
  static const Color blue3478F6 = Color(0xFF3478F6);
  static const Color blue26519F = Color(0xFF26519F);
  static const Color blue41C2D0 = Color(0xFF41C2D0);
  static const Color blueECF8F9 = Color(0xFFECF8F9);
  static const Color green408435 = Color(0xFF408435);
  static const Color blue44B8C5 = Color(0xFF44B8C5);
  static const Color ffF9F9F9 = Color(0xFFF9F9F9);
  static const Color ff007AFF = Color(0xFF007AFF);
  static const Color ffF20B0B = Color(0xFFF20B0B);
  static const Color ff32B14E = Color(0xFF32B14E);
  static const Color ff292D32 = Color(0xFF292D32);
  static const Color ffDCDCDC = Color(0xFFDCDCDC);
  static const Color ff9A9A9A = Color(0xFF9A9A9A);
  static const Color ff666666 = Color(0xFF666666);
  static const Color ff1C1C1E = Color(0XFF1C1C1E);
  static const Color color212121 = Color(0xFF212121);
  static const Color color999999 = Color(0xff999999);
  static const Color color666666 = Color(0xff666666);
  static const Color color424242 = Color(0xff666666);
  static const Color colorF5F5F5 = Color(0xffF5F5F5);
  static const Color color1C1C1E = Color(0xff1C1C1E);
  static const Color color3C3C43 = Color(0xff3C3C43);
  static const Color color007AFF = Color(0xff007AFF);
  static const Color color767680 = Color(0xff767680);
  static const Color colorA6D2E8 = Color(0xffA6D2E8);
  static const Color colorACD8EE = Color(0xffACD8EE);
  static const Color colorFF0000 = Color(0xffFF0000);
  static const Color color008000 = Color(0xff008000);
  static const Color colorD9D9D9 = Color(0xffD9D9D9);
  static const Color color787880 = Color(0xff787880);
  static const Color colorEEF9FE = Color(0xffEEF9FE);
  static const Color colorD42F43 = Color(0xffD42F43);
  static const Color blue2F5496 = Color(0xFF2F5496);
  static const Color blue282341 = Color(0xFF282341);
  static const Color colorD3D7E0 = Color(0xFFD3D7E0);
  static const Color color0CE148 = Color(0xFF0CE148);
  static const Color colorD42F57 = Color(0xFFD42F57);
  static const Color colorE8382E = Color(0xFFE8382E);
  static const Color colorF8F8F9 = Color(0xFFF8F8F9);
  static const Color colorA4B5D5 = Color(0xFFA4B5D5);
  static const Color color0075E3 = Color(0xFF0075E3);
  static const Color color37D8E1 = Color(0xff37D8E1);
  static const Color color1199B8 = Color(0xFF1199B8);
  static const Color colorEDEBE6 = Color(0xFFEDEBE6);
  static const Color colorE60012 = Color(0xFFE60012);
  static const Color color7A7472 = Color(0xFF7A7472);
  static const Color color084BA6 = Color(0xFF084BA6);
  static const Color colorE2E2E4 = Color(0xFFE2E2E4);
  static const Color color9E9E9E = Color(0xFF9E9E9E);
}
