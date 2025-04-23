import 'package:flutter/material.dart';

class AppTextStyleTheme extends ThemeExtension<AppTextStyleTheme> {
  static const String _fontFamily = 'Poppins';

  final TextStyle titleH1Bold;
  final TextStyle titleH1SemiBold;
  final TextStyle titleH1Medium;
  final TextStyle titleH1Regular;
  final TextStyle titleH2Bold;
  final TextStyle titleH2SemiBold;
  final TextStyle titleH2Medium;
  final TextStyle titleH2Regular;
  final TextStyle titleH3Bold;
  final TextStyle titleH3SemiBold;
  final TextStyle titleH3Medium;
  final TextStyle titleH3Regular;
  final TextStyle titleH4Bold;
  final TextStyle titleH4SemiBold;
  final TextStyle titleH4Medium;
  final TextStyle titleH4Regular;
  final TextStyle textSubtitleBold;
  final TextStyle textSubtitleSemiBold;
  final TextStyle textSubtitleMedium;
  final TextStyle textSubtitleRegular;
  final TextStyle textLargeBold;
  final TextStyle textLargeSemiBold;
  final TextStyle textLargeMedium;
  final TextStyle textLargeRegular;
  final TextStyle textMediumBold;
  final TextStyle textMediumSemiBold;
  final TextStyle textMediumMedium;
  final TextStyle textMediumRegular;
  final TextStyle textSmallBold;
  final TextStyle textSmallSemiBold;
  final TextStyle textSmallMedium;
  final TextStyle textSmallRegular;
  final TextStyle textCaptionBold;
  final TextStyle textCaptionSemiBold;
  final TextStyle textCaptionMedium;
  final TextStyle textCaptionRegular;

  AppTextStyleTheme({
    this.titleH1Bold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 26,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH1SemiBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 26,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH1Medium = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 26,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH1Regular = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 26,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH2Bold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH2SemiBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH2Medium = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH2Regular = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH3Bold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 22,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH3SemiBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 22,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH3Medium = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH3Regular = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 22,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH4Bold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH4SemiBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH4Medium = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.titleH4Regular = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textSubtitleBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textSubtitleSemiBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textSubtitleMedium = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textSubtitleRegular = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textLargeBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textLargeSemiBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textLargeMedium = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textLargeRegular = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textMediumBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textMediumSemiBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textMediumMedium = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textMediumRegular = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textSmallBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textSmallSemiBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textSmallMedium = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textSmallRegular = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textCaptionBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 10,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textCaptionSemiBold = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 10,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textCaptionMedium = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 10,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: Colors.black,
    ),
    this.textCaptionRegular = const TextStyle(
      fontFamily: _fontFamily,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
  });

  factory AppTextStyleTheme.light() {
    return AppTextStyleTheme();
  }

  @override
  ThemeExtension<AppTextStyleTheme> copyWith({
    TextStyle? headline1,
    TextStyle? headline2,
  }) {
    return AppTextStyleTheme(
      titleH1Bold: titleH1Bold,
      titleH1SemiBold: titleH1SemiBold,
      titleH1Medium: titleH1Medium,
      titleH1Regular: titleH1Regular,
      titleH2Bold: titleH2Bold,
      titleH2SemiBold: titleH2SemiBold,
      titleH2Medium: titleH2Medium,
      titleH2Regular: titleH2Regular,
      titleH3Bold: titleH3Bold,
      titleH3SemiBold: titleH3SemiBold,
      titleH3Medium: titleH3Medium,
      titleH3Regular: titleH3Regular,
      titleH4Bold: titleH4Bold,
      titleH4SemiBold: titleH4SemiBold,
      titleH4Medium: titleH4Medium,
      titleH4Regular: titleH4Regular,
      textSubtitleBold: textSubtitleBold,
      textSubtitleSemiBold: textSubtitleSemiBold,
      textSubtitleMedium: textSubtitleMedium,
      textSubtitleRegular: textSubtitleRegular,
      textLargeBold: textLargeBold,
      textLargeSemiBold: textLargeSemiBold,
      textLargeMedium: textLargeMedium,
      textLargeRegular: textLargeRegular,
      textMediumBold: textMediumBold,
      textMediumSemiBold: textMediumSemiBold,
      textMediumMedium: textMediumMedium,
      textMediumRegular: textMediumRegular,
      textSmallBold: textSmallBold,
      textSmallSemiBold: textSmallSemiBold,
      textSmallMedium: textSmallMedium,
      textSmallRegular: textSmallRegular,
      textCaptionBold: textCaptionBold,
      textCaptionSemiBold: textCaptionSemiBold,
      textCaptionMedium: textCaptionMedium,
      textCaptionRegular: textCaptionRegular,
    );
  }

  @override
  ThemeExtension<AppTextStyleTheme> lerp(
    covariant ThemeExtension<AppTextStyleTheme>? other,
    double t,
  ) {
    if (other == null) {
      return this;
    }
    return AppTextStyleTheme();
  }
}
