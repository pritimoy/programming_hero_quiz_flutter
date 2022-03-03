import 'package:flutter/material.dart';

class AppConstant {
  static Color get primaryColor => Color(0xFF010233);
  static BoxDecoration get smallRectDecoration => const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 0),
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      );
}

class WColors {
  static Color get greyText => Color(0xff86868B);

  static Color get greyBackground => Color(0x1686868B);
}

class WFont {
  // ignore: non_constant_identifier_names
  static String get FFLight => "SF_UIFont";

  // ignore: non_constant_identifier_names
  static String get FFRegular => "SF_RegFont";

  // ignore: non_constant_identifier_names
  static String get FFBold => "SF_UIFont_Bold";

  static double get dialogTitleSize => 18;

  static double get subtitleTextSize => 16;

  static double get bodyTextSize => 14;
  static double get buttonTextSize => 15;

  static double get smallTextSize => 11.5;

  static double get largeTextSize => 20;

  static double get xLargeTextSize => 22;

  static double get xxLargeTextSize => 25;

  static double get xxxLargeTextSize => 41;
}

class AppTextStyle {
  static TextStyle get largeBoldWhiteTextStyle => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: WFont.largeTextSize);

  static TextStyle get largeBoldWhiteTextStyleU =>
      largeBoldWhiteTextStyle.copyWith(decoration: TextDecoration.underline);

  static TextStyle get largeBoldBlackTextStyle =>
      largeBoldWhiteTextStyle.copyWith(
        color: Colors.black87,
      );
  static TextStyle get largeBoldBlueTextStyle =>
      largeBoldWhiteTextStyle.copyWith(
        color: AppConstant.primaryColor,
      );

  static TextStyle get largeNormalBlackTextStyle => largeBoldWhiteTextStyle
      .copyWith(color: Colors.black87, fontWeight: FontWeight.w400);

  static TextStyle get largeNormalGrayTextStyle => largeBoldWhiteTextStyle
      .copyWith(color: WColors.greyText, fontWeight: FontWeight.w400);

  static TextStyle get xLargeBoldWhiteTextStyle => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: WFont.xLargeTextSize,
      );

  static TextStyle get xLargeBoldBlackTextStyle =>
      xLargeBoldWhiteTextStyle.copyWith(
        color: Colors.black87,
      );

  static TextStyle get xLargeNormalBlackTextStyle => xLargeBoldWhiteTextStyle
      .copyWith(color: Colors.black87, fontWeight: FontWeight.w500);

  static TextStyle get xLargeNormalGrayTextStyle => xLargeBoldWhiteTextStyle
      .copyWith(color: WColors.greyText, fontWeight: FontWeight.w500);

  static TextStyle get xxLargeBoldWhiteTextStyle => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: WFont.xxLargeTextSize);
  static TextStyle get xxxLargeBoldWhitTextStyle =>
      xxLargeBoldWhiteTextStyle.copyWith(
        fontSize: WFont.xxxLargeTextSize,
      );

  static TextStyle get xxLargeBoldBlackTextStyle =>
      xxLargeBoldWhiteTextStyle.copyWith(
        color: Colors.black87,
      );

  static TextStyle get xxLargeNormalBlackTextStyle =>
      xxLargeBoldWhiteTextStyle.copyWith(
        color: Colors.black87,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bodyBoldWhiteTextStyle => TextStyle(
        color: Colors.white,
        fontSize: WFont.bodyTextSize,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get bodyBoldBlackTestStyle =>
      bodyBoldWhiteTextStyle.copyWith(color: Colors.black87);
  static TextStyle get xBodyBoldBlueTestStyle =>
      bodyBoldWhiteTextStyle.copyWith(
        color: AppConstant.primaryColor,
      );
  static TextStyle get bodySamiBoldBlackTestStyle => bodyBoldWhiteTextStyle
      .copyWith(color: Colors.black87, fontWeight: FontWeight.w500);

  static TextStyle get bodyNormalBlackTestStyle => bodyBoldWhiteTextStyle
      .copyWith(color: Colors.black87, fontWeight: FontWeight.normal);

  static TextStyle get bodySemiBoldBlackTestStyle => bodyBoldWhiteTextStyle
      .copyWith(color: Colors.black87, fontWeight: FontWeight.w600);

  static TextStyle get bodySemiBoldGrayTestStyle => bodyBoldWhiteTextStyle
      .copyWith(color: WColors.greyText, fontWeight: FontWeight.w600);

  static TextStyle get bodyNormalGrayTestStyle => bodyBoldWhiteTextStyle
      .copyWith(color: WColors.greyText, fontWeight: FontWeight.w500);
  static TextStyle get bodyNormalWhiteTestStyle => bodyBoldWhiteTextStyle
      .copyWith(color: Colors.white, fontWeight: FontWeight.w500);
  static TextStyle get bodyNormalBlueTestStyle => bodyBoldWhiteTextStyle
      .copyWith(color: AppConstant.primaryColor, fontWeight: FontWeight.w500);

  static TextStyle get bodyBoldBlueTestStyle => bodyBoldWhiteTextStyle.copyWith(
      color: AppConstant.primaryColor, fontWeight: FontWeight.w500);

  static TextStyle get smallBoldBlackTextStyle => TextStyle(
        color: Colors.black87,
        fontSize: WFont.smallTextSize,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get smallBoldWhiteTextStyle =>
      smallBoldBlackTextStyle.copyWith(
        color: Colors.white,
      );

  static TextStyle get smallBlackTextStyle =>
      smallBoldBlackTextStyle.copyWith(fontWeight: FontWeight.normal);

  static TextStyle get buttonBoldWhiteTextStyle => TextStyle(
        color: Colors.white,
        fontSize: WFont.buttonTextSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get buttonBoldTextStyle => TextStyle(
        fontSize: WFont.buttonTextSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get buttonBoldBlackTextStyle =>
      buttonBoldWhiteTextStyle.copyWith(
        color: Colors.black87,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get buttonBoldBlueTextStyle =>
      buttonBoldWhiteTextStyle.copyWith(
        color: AppConstant.primaryColor,
        fontWeight: FontWeight.w600,
      );
}