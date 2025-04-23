import 'package:flutter/material.dart';

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  final Color black;
  final Color white;

  final Color primary;
  final Color darkPrimary;
  final Color lightPrimary;
  final Color secondary;
  final Color lightGrey;
  final Color mediumGrey;
  final Color darkGrey;
  final Color errorRed;

  AppColorTheme({
    this.black = const Color(0xff000000),
    this.white = const Color(0xffffffff),
    this.primary = const Color(0xff96D9C9),
    this.lightPrimary = const Color(0xffEAF7F4),
    this.darkPrimary = const Color(0xff1BA587),
    this.secondary = const Color(0xff9DCEFF),
    this.lightGrey = const Color(0xffE1E1E1),
    this.mediumGrey = const Color(0xffADA4A5),
    this.darkGrey = const Color(0xff7B6F72),
    this.errorRed = const Color(0xffE85B74),
  });

  factory AppColorTheme.light() {
    return AppColorTheme();
  }

  factory AppColorTheme.dark() {
    return AppColorTheme();
  }

  @override
  ThemeExtension<AppColorTheme> copyWith({
    Color? primary,
    Color? darkPrimary,
    Color? lightPrimary,
    Color? secondary,
    Color? lightGrey,
    Color? mediumGrey,
    Color? darkGrey,
    Color? errorRed,
  }) {
    return AppColorTheme(
      primary: primary ?? this.primary,
      darkPrimary: darkPrimary ?? this.darkPrimary,
      lightPrimary: lightPrimary ?? this.lightPrimary,
      secondary: secondary ?? this.secondary,
      lightGrey: lightGrey ?? this.lightGrey,
      mediumGrey: mediumGrey ?? this.mediumGrey,
      darkGrey: darkGrey ?? this.darkGrey,
      errorRed: errorRed ?? this.errorRed,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(
    covariant ThemeExtension<AppColorTheme>? other,
    double t,
  ) {
    if (other == null) {
      return this;
    }
    return AppColorTheme();
  }
}
